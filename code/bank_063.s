; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $063", ROMX[$4000], BANK[$63]

	dec c                                            ; $4000: $0d
	inc bc                                           ; $4001: $03
	rra                                              ; $4002: $1f
	rlca                                             ; $4003: $07
	cpl                                              ; $4004: $2f
	rra                                              ; $4005: $1f
	cp a                                             ; $4006: $bf
	ld a, a                                          ; $4007: $7f
	rst $38                                          ; $4008: $ff
	rst $38                                          ; $4009: $ff
	cp a                                             ; $400a: $bf
	ld a, a                                          ; $400b: $7f
	sbc a                                            ; $400c: $9f
	ccf                                              ; $400d: $3f
	scf                                              ; $400e: $37
	ld c, $bf                                        ; $400f: $0e $bf
	nop                                              ; $4011: $00
	rst $38                                          ; $4012: $ff
	ret nz                                           ; $4013: $c0

	rra                                              ; $4014: $1f
	add hl, sp                                       ; $4015: $39
	rlc a                                            ; $4016: $cb $07
	ld sp, $7403                                     ; $4018: $31 $03 $74
	adc a                                            ; $401b: $8f
	or [hl]                                          ; $401c: $b6
	rst GetHLinHL                                          ; $401d: $cf
	add b                                            ; $401e: $80
	jp nc, $e3ef                                     ; $401f: $d2 $ef $e3

	rst $38                                          ; $4022: $ff
	ld [hl], c                                       ; $4023: $71
	rst SubAFromDE                                          ; $4024: $df
	cp c                                             ; $4025: $b9
	rst AddAOntoHL                                          ; $4026: $ef
	db $fd                                           ; $4027: $fd
	rst SubAFromBC                                          ; $4028: $e7
	rst $38                                          ; $4029: $ff
	rra                                              ; $402a: $1f
	db $fd                                           ; $402b: $fd
	rrca                                             ; $402c: $0f
	db $ec                                           ; $402d: $ec
	rst SubAFromDE                                          ; $402e: $df
	db $fc                                           ; $402f: $fc
	sbc a                                            ; $4030: $9f
	or $1d                                           ; $4031: $f6 $1d
	sub $3d                                          ; $4033: $d6 $3d
	or $3d                                           ; $4035: $f6 $3d
	and $3d                                          ; $4037: $e6 $3d
	and [hl]                                         ; $4039: $a6
	ld a, l                                          ; $403a: $7d
	and $7d                                          ; $403b: $e6 $7d
	db $e4                                           ; $403d: $e4
	sbc e                                            ; $403e: $9b
	ld sp, hl                                        ; $403f: $f9
	and h                                            ; $4040: $a4
	ld sp, hl                                        ; $4041: $f9
	jr nz, jr_063_40bf                               ; $4042: $20 $7b

	cp $89                                           ; $4044: $fe $89
	and b                                            ; $4046: $a0
	ld sp, hl                                        ; $4047: $f9
	ld h, d                                          ; $4048: $62
	ld sp, hl                                        ; $4049: $f9
	and d                                            ; $404a: $a2
	ld a, c                                          ; $404b: $79
	ldh [c], a                                       ; $404c: $e2
	cp c                                             ; $404d: $b9
	db $e4                                           ; $404e: $e4
	cp e                                             ; $404f: $bb
	push de                                          ; $4050: $d5
	cp e                                             ; $4051: $bb
	pop af                                           ; $4052: $f1
	sbc a                                            ; $4053: $9f
	or e                                             ; $4054: $b3
	sbc a                                            ; $4055: $9f
	cp d                                             ; $4056: $ba
	rra                                              ; $4057: $1f
	ld a, [hl+]                                      ; $4058: $2a
	rra                                              ; $4059: $1f
	ld e, e                                          ; $405a: $5b
	ld c, $53                                        ; $405b: $0e $53
	db $20, $94                                      ; $405d: $20 $94
	ldh [c], a                                       ; $405f: $e2
	rst $38                                          ; $4060: $ff
	add b                                            ; $4061: $80
	rst $38                                          ; $4062: $ff
	ld e, $f7                                        ; $4063: $1e $f7
	inc sp                                           ; $4065: $33
	rst AddAOntoHL                                          ; $4066: $ef
	rst FarCall                                          ; $4067: $f7
	ld e, a                                          ; $4068: $5f
	ld e, [hl]                                       ; $4069: $5e
	ld h, a                                          ; $406a: $67
	jr nz, @+$4d                                     ; $406b: $20 $4b

	ld h, b                                          ; $406d: $60
	ld a, a                                          ; $406e: $7f
	adc b                                            ; $406f: $88
	ld [hl], e                                       ; $4070: $73
	ld e, [hl]                                       ; $4071: $5e
	sbc l                                            ; $4072: $9d
	sbc a                                            ; $4073: $9f
	ld e, $67                                        ; $4074: $1e $67
	ld h, b                                          ; $4076: $60
	dec sp                                           ; $4077: $3b
	add b                                            ; $4078: $80
	sbc h                                            ; $4079: $9c
	rra                                              ; $407a: $1f
	db $fc                                           ; $407b: $fc
	rst SubAFromDE                                          ; $407c: $df
	ld e, a                                          ; $407d: $5f
	add b                                            ; $407e: $80
	ld e, e                                          ; $407f: $5b
	and b                                            ; $4080: $a0
	sbc d                                            ; $4081: $9a
	add $7f                                          ; $4082: $c6 $7f
	rst SubAFromDE                                          ; $4084: $df
	rst $38                                          ; $4085: $ff
	ldh [$7b], a                                     ; $4086: $e0 $7b
	cp [hl]                                          ; $4088: $be
	ld a, a                                          ; $4089: $7f
	cp $98                                           ; $408a: $fe $98
	ld a, $fb                                        ; $408c: $3e $fb
	ei                                               ; $408e: $fb
	cp [hl]                                          ; $408f: $be
	ld a, $00                                        ; $4090: $3e $00
	add b                                            ; $4092: $80
	ld c, e                                          ; $4093: $4b
	and b                                            ; $4094: $a0
	sbc [hl]                                         ; $4095: $9e
	ld sp, $9e7b                                     ; $4096: $31 $7b $9e
	cp [hl]                                          ; $4099: $be
	rst $38                                          ; $409a: $ff
	rst $38                                          ; $409b: $ff
	rst $38                                          ; $409c: $ff
	sbc c                                            ; $409d: $99
	rra                                              ; $409e: $1f
	or a                                             ; $409f: $b7
	scf                                              ; $40a0: $37
	rra                                              ; $40a1: $1f
	rra                                              ; $40a2: $1f
	nop                                              ; $40a3: $00
	cp [hl]                                          ; $40a4: $be
	ccf                                              ; $40a5: $3f
	ld e, $74                                        ; $40a6: $1e $74
	ld d, a                                          ; $40a8: $57
	and b                                            ; $40a9: $a0
	sbc h                                            ; $40aa: $9c
	ld h, a                                          ; $40ab: $67
	rst $38                                          ; $40ac: $ff
	rst SubAFromDE                                          ; $40ad: $df
	ld [hl], e                                       ; $40ae: $73
	and b                                            ; $40af: $a0
	sbc h                                            ; $40b0: $9c
	rra                                              ; $40b1: $1f
	or $dd                                           ; $40b2: $f6 $dd
	inc de                                           ; $40b4: $13
	and b                                            ; $40b5: $a0
	ld a, a                                          ; $40b6: $7f
	cp $99                                           ; $40b7: $fe $99
	inc a                                            ; $40b9: $3c
	rst $38                                          ; $40ba: $ff
	pop bc                                           ; $40bb: $c1
	ld a, $be                                        ; $40bc: $3e $be
	cp a                                             ; $40be: $bf

jr_063_40bf:
	daa                                              ; $40bf: $27
	and b                                            ; $40c0: $a0
	sub a                                            ; $40c1: $97
	nop                                              ; $40c2: $00
	cp a                                             ; $40c3: $bf
	rrca                                             ; $40c4: $0f
	ccf                                              ; $40c5: $3f
	jr nz, @+$41                                     ; $40c6: $20 $3f

	rra                                              ; $40c8: $1f
	ld e, $bf                                        ; $40c9: $1e $bf
	dec hl                                           ; $40cb: $2b
	ld [hl], h                                       ; $40cc: $74
	cpl                                              ; $40cd: $2f
	and b                                            ; $40ce: $a0
	ld a, a                                          ; $40cf: $7f
	ld b, b                                          ; $40d0: $40
	sbc [hl]                                         ; $40d1: $9e
	db $fd                                           ; $40d2: $fd
	ld l, a                                          ; $40d3: $6f
	and b                                            ; $40d4: $a0
	rst $38                                          ; $40d5: $ff
	sbc d                                            ; $40d6: $9a
	inc sp                                           ; $40d7: $33
	ld [de], a                                       ; $40d8: $12
	ld e, $0c                                        ; $40d9: $1e $0c
	inc e                                            ; $40db: $1c
	cp l                                             ; $40dc: $bd
	nop                                              ; $40dd: $00
	nop                                              ; $40de: $00
	add b                                            ; $40df: $80
	ldh [c], a                                       ; $40e0: $e2
	adc [hl]                                         ; $40e1: $8e
	pop bc                                           ; $40e2: $c1
	rst $38                                          ; $40e3: $ff
	di                                               ; $40e4: $f3
	ei                                               ; $40e5: $fb
	db $fc                                           ; $40e6: $fc
	rst $38                                          ; $40e7: $ff
	xor $ff                                          ; $40e8: $ee $ff
	rst FarCall                                          ; $40ea: $f7
	rst SubAFromHL                                          ; $40eb: $d7
	db $fc                                           ; $40ec: $fc
	adc [hl]                                         ; $40ed: $8e
	ld a, [$ee9b]                                    ; $40ee: $fa $9b $ee
	cp a                                             ; $40f1: $bf
	push bc                                          ; $40f2: $c5
	ld l, a                                          ; $40f3: $6f
	ldh [$9d], a                                     ; $40f4: $e0 $9d
	ld e, $08                                        ; $40f6: $1e $08
	rla                                              ; $40f8: $17
	ldh [$9b], a                                     ; $40f9: $e0 $9b
	ccf                                              ; $40fb: $3f
	ld e, $1e                                        ; $40fc: $1e $1e
	inc c                                            ; $40fe: $0c
	inc de                                           ; $40ff: $13
	ldh [$df], a                                     ; $4100: $e0 $df
	rra                                              ; $4102: $1f
	ld [hl], e                                       ; $4103: $73
	sbc $37                                          ; $4104: $de $37
	ldh [$bf], a                                     ; $4106: $e0 $bf
	ld bc, $5598                                     ; $4108: $01 $98 $55
	cp e                                             ; $410b: $bb
	ld d, l                                          ; $410c: $55
	cp e                                             ; $410d: $bb
	ld de, $93ff                                     ; $410e: $11 $ff $93
	ld [hl], e                                       ; $4111: $73
	cp $93                                           ; $4112: $fe $93
	ld d, e                                          ; $4114: $53
	rst $38                                          ; $4115: $ff
	ld c, e                                          ; $4116: $4b
	cp $ae                                           ; $4117: $fe $ae
	cp $f7                                           ; $4119: $fe $f7
	cp $5f                                           ; $411b: $fe $5f
	cp $5b                                           ; $411d: $fe $5b
	rst $38                                          ; $411f: $ff
	ld [hl], a                                       ; $4120: $77
	cp $97                                           ; $4121: $fe $97
	ld e, d                                          ; $4123: $5a
	rst $38                                          ; $4124: $ff
	ld e, b                                          ; $4125: $58
	rst $38                                          ; $4126: $ff
	ret c                                            ; $4127: $d8

	rst $38                                          ; $4128: $ff
	ret c                                            ; $4129: $d8

	db $fd                                           ; $412a: $fd
	ld a, e                                          ; $412b: $7b
	cp $80                                           ; $412c: $fe $80
	db $dd                                           ; $412e: $dd
	ld d, h                                          ; $412f: $54
	db $dd                                           ; $4130: $dd
	ld d, h                                          ; $4131: $54
	call c, $dc54                                    ; $4132: $dc $54 $dc
	ld b, h                                          ; $4135: $44
	call c, $fd44                                    ; $4136: $dc $44 $fd
	ld b, h                                          ; $4139: $44
	db $fd                                           ; $413a: $fd
	ld c, h                                          ; $413b: $4c
	rst $38                                          ; $413c: $ff
	ld c, [hl]                                       ; $413d: $4e
	cp $4e                                           ; $413e: $fe $4e
	cp $2e                                           ; $4140: $fe $2e
	rst $38                                          ; $4142: $ff
	cp h                                             ; $4143: $bc
	rst $38                                          ; $4144: $ff
	db $fd                                           ; $4145: $fd
	rst SubAFromBC                                          ; $4146: $e7
	ld d, d                                          ; $4147: $52
	cp a                                             ; $4148: $bf
	inc de                                           ; $4149: $13
	rst $38                                          ; $414a: $ff
	dec sp                                           ; $414b: $3b
	rst AddAOntoHL                                          ; $414c: $ef
	add b                                            ; $414d: $80
	dec sp                                           ; $414e: $3b
	cp $3b                                           ; $414f: $fe $3b
	xor $7f                                          ; $4151: $ee $7f
	add $7f                                          ; $4153: $c6 $7f
	sbc [hl]                                         ; $4155: $9e
	rst FarCall                                          ; $4156: $f7
	or e                                             ; $4157: $b3
	rst SubAFromBC                                          ; $4158: $e7
	ld [hl], e                                       ; $4159: $73
	rst AddAOntoHL                                          ; $415a: $ef
	rst SubAFromDE                                          ; $415b: $df
	ld a, l                                          ; $415c: $7d
	ld e, [hl]                                       ; $415d: $5e
	add hl, de                                       ; $415e: $19
	ld d, $92                                        ; $415f: $16 $92
	ld a, [de]                                       ; $4161: $1a
	ld c, $88                                        ; $4162: $0e $88
	ret nz                                           ; $4164: $c0

	add b                                            ; $4165: $80
	add b                                            ; $4166: $80
	ret nz                                           ; $4167: $c0

	ld h, b                                          ; $4168: $60
	ret nz                                           ; $4169: $c0

	ld b, b                                          ; $416a: $40
	ldh [$f0], a                                     ; $416b: $e0 $f0
	add b                                            ; $416d: $80
	ld h, b                                          ; $416e: $60
	jr c, jr_063_41e1                                ; $416f: $38 $70

	inc a                                            ; $4171: $3c
	ld a, b                                          ; $4172: $78
	ld a, h                                          ; $4173: $7c
	ld a, $57                                        ; $4174: $3e $57
	ccf                                              ; $4176: $3f
	ld d, e                                          ; $4177: $53
	ccf                                              ; $4178: $3f
	sub e                                            ; $4179: $93
	ccf                                              ; $417a: $3f
	or a                                             ; $417b: $b7
	dec de                                           ; $417c: $1b
	or l                                             ; $417d: $b5
	dec de                                           ; $417e: $1b
	ld e, l                                          ; $417f: $5d
	sbc e                                            ; $4180: $9b
	ld c, e                                          ; $4181: $4b
	sbc l                                            ; $4182: $9d
	xor d                                            ; $4183: $aa
	ld e, l                                          ; $4184: $5d
	xor l                                            ; $4185: $ad
	ld e, [hl]                                       ; $4186: $5e
	dec c                                            ; $4187: $0d
	cp $7a                                           ; $4188: $fe $7a
	rst SubAFromHL                                          ; $418a: $d7
	ld [hl], d                                       ; $418b: $72
	rst SubAFromDE                                          ; $418c: $df
	sub a                                            ; $418d: $97
	ld [hl], e                                       ; $418e: $73
	rst SubAFromDE                                          ; $418f: $df
	ei                                               ; $4190: $fb
	adc $fb                                          ; $4191: $ce $fb
	adc $ff                                          ; $4193: $ce $ff
	ld b, [hl]                                       ; $4195: $46
	ld a, e                                          ; $4196: $7b
	cp $9b                                           ; $4197: $fe $9b
	ld [bc], a                                       ; $4199: $02
	rst $38                                          ; $419a: $ff
	ld bc, $bcff                                     ; $419b: $01 $ff $bc
	ld h, a                                          ; $419e: $67
	add hl, bc                                       ; $419f: $09
	inc c                                            ; $41a0: $0c
	ld e, $1e                                        ; $41a1: $1e $1e
	add b                                            ; $41a3: $80
	db $10                                           ; $41a4: $10
	inc c                                            ; $41a5: $0c
	nop                                              ; $41a6: $00
	db $ed                                           ; $41a7: $ed
	ld d, e                                          ; $41a8: $53
	ld [hl], l                                       ; $41a9: $75
	db $db                                           ; $41aa: $db
	jr c, @+$01                                      ; $41ab: $38 $ff

	cp h                                             ; $41ad: $bc
	rst SubAFromBC                                          ; $41ae: $e7
	sbc $73                                          ; $41af: $de $73
	rst $38                                          ; $41b1: $ff
	ld sp, $1eff                                     ; $41b2: $31 $ff $1e
	rst $38                                          ; $41b5: $ff
	dec sp                                           ; $41b6: $3b
	rst SubAFromBC                                          ; $41b7: $e7
	inc sp                                           ; $41b8: $33
	rst SubAFromBC                                          ; $41b9: $e7
	ld d, $de                                        ; $41ba: $16 $de
	ld e, $98                                        ; $41bc: $1e $98
	ld d, $13                                        ; $41be: $16 $13
	ld a, [de]                                       ; $41c0: $1a
	ld c, $08                                        ; $41c1: $0e $08
	rst $38                                          ; $41c3: $ff
	sbc [hl]                                         ; $41c4: $9e
	ld bc, $01be                                     ; $41c5: $01 $be $01
	inc bc                                           ; $41c8: $03
	ld b, $80                                        ; $41c9: $06 $80
	ld bc, $030d                                     ; $41cb: $01 $0d $03
	rra                                              ; $41ce: $1f
	rlca                                             ; $41cf: $07
	cpl                                              ; $41d0: $2f
	rra                                              ; $41d1: $1f
	cp a                                             ; $41d2: $bf
	ld a, a                                          ; $41d3: $7f
	rst $38                                          ; $41d4: $ff
	rst $38                                          ; $41d5: $ff
	cp a                                             ; $41d6: $bf
	ld a, a                                          ; $41d7: $7f
	sbc a                                            ; $41d8: $9f
	ccf                                              ; $41d9: $3f
	scf                                              ; $41da: $37
	ld c, $bf                                        ; $41db: $0e $bf
	nop                                              ; $41dd: $00
	rst $38                                          ; $41de: $ff
	ret nz                                           ; $41df: $c0

	rra                                              ; $41e0: $1f

jr_063_41e1:
	add hl, sp                                       ; $41e1: $39
	rlc a                                            ; $41e2: $cb $07
	ld sp, $7403                                     ; $41e4: $31 $03 $74
	adc a                                            ; $41e7: $8f
	cp [hl]                                          ; $41e8: $be
	rst JumpTable                                          ; $41e9: $c7
	add b                                            ; $41ea: $80
	jp c, $efe7                                      ; $41eb: $da $e7 $ef

	di                                               ; $41ee: $f3
	ld [hl], l                                       ; $41ef: $75
	db $db                                           ; $41f0: $db
	cp c                                             ; $41f1: $b9
	rst AddAOntoHL                                          ; $41f2: $ef
	db $fd                                           ; $41f3: $fd
	ld h, a                                          ; $41f4: $67
	rst $38                                          ; $41f5: $ff
	rra                                              ; $41f6: $1f
	db $fd                                           ; $41f7: $fd
	adc a                                            ; $41f8: $8f
	db $ec                                           ; $41f9: $ec
	rst SubAFromDE                                          ; $41fa: $df
	db $fc                                           ; $41fb: $fc
	sbc a                                            ; $41fc: $9f
	or $1d                                           ; $41fd: $f6 $1d
	sub $3d                                          ; $41ff: $d6 $3d
	or $3d                                           ; $4201: $f6 $3d
	and $3d                                          ; $4203: $e6 $3d
	and [hl]                                         ; $4205: $a6
	ld a, l                                          ; $4206: $7d
	and $7d                                          ; $4207: $e6 $7d
	db $e4                                           ; $4209: $e4
	sbc e                                            ; $420a: $9b
	ld sp, hl                                        ; $420b: $f9
	and h                                            ; $420c: $a4
	ld sp, hl                                        ; $420d: $f9
	jr nz, jr_063_428b                               ; $420e: $20 $7b

	cp $89                                           ; $4210: $fe $89
	and b                                            ; $4212: $a0
	ld sp, hl                                        ; $4213: $f9
	ld h, d                                          ; $4214: $62
	ld sp, hl                                        ; $4215: $f9
	and d                                            ; $4216: $a2
	ld a, c                                          ; $4217: $79
	ldh [c], a                                       ; $4218: $e2
	cp c                                             ; $4219: $b9
	db $e4                                           ; $421a: $e4
	cp e                                             ; $421b: $bb
	push de                                          ; $421c: $d5
	cp e                                             ; $421d: $bb
	pop af                                           ; $421e: $f1
	sbc a                                            ; $421f: $9f
	or e                                             ; $4220: $b3
	sbc a                                            ; $4221: $9f
	cp d                                             ; $4222: $ba
	rra                                              ; $4223: $1f
	ld a, [hl+]                                      ; $4224: $2a
	rra                                              ; $4225: $1f
	ld e, e                                          ; $4226: $5b
	ld c, $53                                        ; $4227: $0e $53
	jr nz, @-$6a                                     ; $4229: $20 $94

	add d                                            ; $422b: $82
	rst $38                                          ; $422c: $ff
	add b                                            ; $422d: $80
	rst $38                                          ; $422e: $ff
	ld e, $e7                                        ; $422f: $1e $e7
	inc sp                                           ; $4231: $33
	rst FarCall                                          ; $4232: $f7
	rst SubAFromBC                                          ; $4233: $e7
	ld e, e                                          ; $4234: $5b
	ld e, [hl]                                       ; $4235: $5e
	ld h, a                                          ; $4236: $67
	jr nz, jr_063_428c                               ; $4237: $20 $53

	ld h, b                                          ; $4239: $60
	sbc h                                            ; $423a: $9c
	jr @+$01                                         ; $423b: $18 $ff

	ld [$e077], sp                                   ; $423d: $08 $77 $e0
	sbc e                                            ; $4240: $9b
	sub $06                                          ; $4241: $d6 $06
	sbc b                                            ; $4243: $98
	ld e, $67                                        ; $4244: $1e $67
	ld h, b                                          ; $4246: $60
	ld b, e                                          ; $4247: $43
	add b                                            ; $4248: $80
	sbc b                                            ; $4249: $98
	rrca                                             ; $424a: $0f
	db $ec                                           ; $424b: $ec
	rra                                              ; $424c: $1f
	db $fc                                           ; $424d: $fc
	rst SubAFromDE                                          ; $424e: $df
	or $9d                                           ; $424f: $f6 $9d
	ld h, a                                          ; $4251: $67
	add b                                            ; $4252: $80
	ld l, e                                          ; $4253: $6b
	and b                                            ; $4254: $a0
	ld a, e                                          ; $4255: $7b
	sbc [hl]                                         ; $4256: $9e
	ld l, e                                          ; $4257: $6b
	and b                                            ; $4258: $a0
	cp a                                             ; $4259: $bf
	rst $38                                          ; $425a: $ff
	rst $38                                          ; $425b: $ff
	sbc b                                            ; $425c: $98
	ld a, $f7                                        ; $425d: $3e $f7
	rst FarCall                                          ; $425f: $f7
	cp [hl]                                          ; $4260: $be
	ld a, $0e                                        ; $4261: $3e $0e
	add b                                            ; $4263: $80
	ld h, e                                          ; $4264: $63
	and b                                            ; $4265: $a0
	sbc h                                            ; $4266: $9c
	rst AddAOntoHL                                          ; $4267: $ef
	cp h                                             ; $4268: $bc
	rst $38                                          ; $4269: $ff
	ld h, e                                          ; $426a: $63
	and b                                            ; $426b: $a0
	cp a                                             ; $426c: $bf
	rst $38                                          ; $426d: $ff
	rst SubAFromDE                                          ; $426e: $df
	sbc c                                            ; $426f: $99
	rra                                              ; $4270: $1f
	or a                                             ; $4271: $b7
	scf                                              ; $4272: $37
	rra                                              ; $4273: $1f
	rra                                              ; $4274: $1f
	ld c, $be                                        ; $4275: $0e $be
	nop                                              ; $4277: $00
	ld bc, $3774                                     ; $4278: $01 $74 $37
	and b                                            ; $427b: $a0
	sbc h                                            ; $427c: $9c
	rra                                              ; $427d: $1f
	or $dd                                           ; $427e: $f6 $dd
	inc de                                           ; $4280: $13
	and b                                            ; $4281: $a0
	sbc e                                            ; $4282: $9b
	inc a                                            ; $4283: $3c
	rst $38                                          ; $4284: $ff
	pop bc                                           ; $4285: $c1
	cp a                                             ; $4286: $bf
	rla                                              ; $4287: $17
	and b                                            ; $4288: $a0
	sbc h                                            ; $4289: $9c
	rrca                                             ; $428a: $0f

jr_063_428b:
	cp a                                             ; $428b: $bf

jr_063_428c:
	jr nz, @+$71                                     ; $428c: $20 $6f

	and b                                            ; $428e: $a0
	db $fd                                           ; $428f: $fd
	sbc h                                            ; $4290: $9c
	inc sp                                           ; $4291: $33
	db $10                                           ; $4292: $10
	ld d, $bc                                        ; $4293: $16 $bc
	inc b                                            ; $4295: $04
	ld c, $00                                        ; $4296: $0e $00
	add b                                            ; $4298: $80
	ldh [c], a                                       ; $4299: $e2
	adc [hl]                                         ; $429a: $8e
	pop bc                                           ; $429b: $c1
	rst $38                                          ; $429c: $ff
	di                                               ; $429d: $f3
	ei                                               ; $429e: $fb
	db $fc                                           ; $429f: $fc
	rst $38                                          ; $42a0: $ff
	xor $ff                                          ; $42a1: $ee $ff
	rst FarCall                                          ; $42a3: $f7
	rst SubAFromHL                                          ; $42a4: $d7
	db $fc                                           ; $42a5: $fc
	adc [hl]                                         ; $42a6: $8e
	ld a, [$ee9b]                                    ; $42a7: $fa $9b $ee
	cp a                                             ; $42aa: $bf
	push bc                                          ; $42ab: $c5
	ld a, e                                          ; $42ac: $7b
	ldh [$9c], a                                     ; $42ad: $e0 $9c
	ld [de], a                                       ; $42af: $12
	ld e, $0e                                        ; $42b0: $1e $0e
	inc de                                           ; $42b2: $13
	ldh [$9a], a                                     ; $42b3: $e0 $9a
	inc de                                           ; $42b5: $13
	rra                                              ; $42b6: $1f
	ld e, $1e                                        ; $42b7: $1e $1e
	inc c                                            ; $42b9: $0c
	dec de                                           ; $42ba: $1b
	ldh [$9c], a                                     ; $42bb: $e0 $9c
	inc sp                                           ; $42bd: $33
	ccf                                              ; $42be: $3f
	ld e, $77                                        ; $42bf: $1e $77
	sbc $7e                                          ; $42c1: $de $7e
	inc d                                            ; $42c3: $14
	scf                                              ; $42c4: $37
	ldh [$be], a                                     ; $42c5: $e0 $be
	add c                                            ; $42c7: $81
	rst SubAFromDE                                          ; $42c8: $df
	ld d, l                                          ; $42c9: $55
	sbc [hl]                                         ; $42ca: $9e
	ld de, $93de                                     ; $42cb: $11 $de $93
	sbc e                                            ; $42ce: $9b
	ld d, e                                          ; $42cf: $53
	ld c, e                                          ; $42d0: $4b
	cp e                                             ; $42d1: $bb
	cp e                                             ; $42d2: $bb
	call c, $9bff                                    ; $42d3: $dc $ff $9b
	cp $ae                                           ; $42d6: $fe $ae
	rst FarCall                                          ; $42d8: $f7
	ld e, a                                          ; $42d9: $5f
	sbc $5b                                          ; $42da: $de $5b
	sbc l                                            ; $42dc: $9d
	ld e, d                                          ; $42dd: $5a
	ld e, b                                          ; $42de: $58
	sbc $fe                                          ; $42df: $de $fe
	call c, $ddff                                    ; $42e1: $dc $ff $dd
	ret c                                            ; $42e4: $d8

	sbc $54                                          ; $42e5: $de $54
	sbc c                                            ; $42e7: $99
	ld b, h                                          ; $42e8: $44
	rst $38                                          ; $42e9: $ff
	db $fd                                           ; $42ea: $fd
	db $fd                                           ; $42eb: $fd
	db $dd                                           ; $42ec: $dd
	db $dd                                           ; $42ed: $dd
	sbc $dc                                          ; $42ee: $de $dc
	rst SubAFromDE                                          ; $42f0: $df
	ld b, h                                          ; $42f1: $44
	sbc d                                            ; $42f2: $9a
	ld c, h                                          ; $42f3: $4c
	ld c, [hl]                                       ; $42f4: $4e
	ld c, [hl]                                       ; $42f5: $4e
	ld l, $bc                                        ; $42f6: $2e $bc
	sbc $fd                                          ; $42f8: $de $fd
	ld a, a                                          ; $42fa: $7f
	call nc, $de7b                                   ; $42fb: $d4 $7b $de
	sbc h                                            ; $42fe: $9c
	rst SubAFromBC                                          ; $42ff: $e7
	ld d, d                                          ; $4300: $52
	inc de                                           ; $4301: $13
	sbc $3b                                          ; $4302: $de $3b
	rst SubAFromDE                                          ; $4304: $df
	ld a, a                                          ; $4305: $7f
	add b                                            ; $4306: $80
	rst $38                                          ; $4307: $ff
	cp a                                             ; $4308: $bf
	rst $38                                          ; $4309: $ff
	rst AddAOntoHL                                          ; $430a: $ef
	xor $fe                                          ; $430b: $ee $fe
	add $9e                                          ; $430d: $c6 $9e
	cp [hl]                                          ; $430f: $be
	rst FarCall                                          ; $4310: $f7
	rst SubAFromBC                                          ; $4311: $e7
	ld l, a                                          ; $4312: $6f
	add hl, de                                       ; $4313: $19
	sub d                                            ; $4314: $92
	ld c, $c0                                        ; $4315: $0e $c0
	add b                                            ; $4317: $80
	ld [hl], e                                       ; $4318: $73
	rst FarCall                                          ; $4319: $f7
	ld e, [hl]                                       ; $431a: $5e
	ld d, $1a                                        ; $431b: $16 $1a
	adc b                                            ; $431d: $88

jr_063_431e:
	add b                                            ; $431e: $80
	ret nz                                           ; $431f: $c0

	ld h, b                                          ; $4320: $60
	ld b, b                                          ; $4321: $40
	ldh a, [$38]                                     ; $4322: $f0 $38
	inc a                                            ; $4324: $3c
	ld a, h                                          ; $4325: $7c
	add b                                            ; $4326: $80
	ld d, a                                          ; $4327: $57
	ld d, e                                          ; $4328: $53
	ret nz                                           ; $4329: $c0

	ldh [$60], a                                     ; $432a: $e0 $60
	ld [hl], b                                       ; $432c: $70
	ld a, b                                          ; $432d: $78
	ld a, $3f                                        ; $432e: $3e $3f
	ccf                                              ; $4330: $3f
	sub e                                            ; $4331: $93
	or a                                             ; $4332: $b7
	or l                                             ; $4333: $b5
	ld e, l                                          ; $4334: $5d
	ld c, e                                          ; $4335: $4b
	xor d                                            ; $4336: $aa
	xor l                                            ; $4337: $ad
	dec c                                            ; $4338: $0d
	ccf                                              ; $4339: $3f
	dec de                                           ; $433a: $1b
	dec de                                           ; $433b: $1b
	sbc e                                            ; $433c: $9b
	sbc l                                            ; $433d: $9d
	ld e, l                                          ; $433e: $5d
	ld e, [hl]                                       ; $433f: $5e
	cp $7a                                           ; $4340: $fe $7a
	ld [hl], d                                       ; $4342: $72
	ld [hl], e                                       ; $4343: $73
	ei                                               ; $4344: $fb
	ei                                               ; $4345: $fb
	sbc $ff                                          ; $4346: $de $ff
	adc [hl]                                         ; $4348: $8e
	rst SubAFromHL                                          ; $4349: $d7
	rst SubAFromDE                                          ; $434a: $df
	rst SubAFromDE                                          ; $434b: $df
	adc $ce                                          ; $434c: $ce $ce
	ld b, [hl]                                       ; $434e: $46
	ld b, [hl]                                       ; $434f: $46
	ld [bc], a                                       ; $4350: $02
	rst $38                                          ; $4351: $ff
	rst $38                                          ; $4352: $ff
	ld h, a                                          ; $4353: $67
	add hl, bc                                       ; $4354: $09
	inc c                                            ; $4355: $0c
	ld e, $1e                                        ; $4356: $1e $1e
	inc c                                            ; $4358: $0c
	ld bc, $98fc                                     ; $4359: $01 $fc $98
	stop                                             ; $435c: $10 $00
	db $ed                                           ; $435e: $ed
	ld [hl], l                                       ; $435f: $75
	jr c, jr_063_431e                                ; $4360: $38 $bc

	sbc $de                                          ; $4362: $de $de
	rst $38                                          ; $4364: $ff
	add b                                            ; $4365: $80
	ld d, e                                          ; $4366: $53
	db $db                                           ; $4367: $db
	rst AddAOntoHL                                          ; $4368: $ef
	rst $38                                          ; $4369: $ff
	ld [hl], e                                       ; $436a: $73
	ld sp, $1f1c                                     ; $436b: $31 $1c $1f
	rst SubAFromBC                                          ; $436e: $e7
	rst SubAFromBC                                          ; $436f: $e7
	sbc $98                                          ; $4370: $de $98
	inc de                                           ; $4372: $13
	ld c, $00                                        ; $4373: $0e $00
	ld bc, $1633                                     ; $4375: $01 $33 $16
	ld e, $16                                        ; $4378: $1e $16
	ld a, [de]                                       ; $437a: $1a
	ld [rRAMG], sp                                   ; $437b: $08 $00 $00
	ld bc, $0603                                     ; $437e: $01 $03 $06
	dec c                                            ; $4381: $0d
	rra                                              ; $4382: $1f

jr_063_4383:
	cpl                                              ; $4383: $2f
	cp a                                             ; $4384: $bf
	sbc [hl]                                         ; $4385: $9e
	rst $38                                          ; $4386: $ff
	ld [hl], a                                       ; $4387: $77
	or $9d                                           ; $4388: $f6 $9d
	rlca                                             ; $438a: $07
	rra                                              ; $438b: $1f
	ld a, e                                          ; $438c: $7b
	ld a, b                                          ; $438d: $78
	add b                                            ; $438e: $80
	sbc a                                            ; $438f: $9f
	scf                                              ; $4390: $37
	cp a                                             ; $4391: $bf
	rst $38                                          ; $4392: $ff
	rra                                              ; $4393: $1f
	swap c                                           ; $4394: $cb $31
	ld a, a                                          ; $4396: $7f
	ccf                                              ; $4397: $3f
	ld c, $00                                        ; $4398: $0e $00
	ret nz                                           ; $439a: $c0

	add hl, sp                                       ; $439b: $39
	rlca                                             ; $439c: $07
	inc bc                                           ; $439d: $03
	ld [hl], h                                       ; $439e: $74
	cp [hl]                                          ; $439f: $be
	jp c, Jump_063_75ef                              ; $43a0: $da $ef $75

	cp c                                             ; $43a3: $b9
	db $fd                                           ; $43a4: $fd
	rst $38                                          ; $43a5: $ff
	adc a                                            ; $43a6: $8f
	rst JumpTable                                          ; $43a7: $c7
	rst SubAFromBC                                          ; $43a8: $e7
	di                                               ; $43a9: $f3
	db $db                                           ; $43aa: $db
	rst AddAOntoHL                                          ; $43ab: $ef
	ld h, a                                          ; $43ac: $67
	rra                                              ; $43ad: $1f
	sub e                                            ; $43ae: $93
	db $fd                                           ; $43af: $fd
	db $ec                                           ; $43b0: $ec
	db $fc                                           ; $43b1: $fc
	or $d6                                           ; $43b2: $f6 $d6
	or $e6                                           ; $43b4: $f6 $e6
	and [hl]                                         ; $43b6: $a6
	adc a                                            ; $43b7: $8f
	rst SubAFromDE                                          ; $43b8: $df
	sbc a                                            ; $43b9: $9f
	dec e                                            ; $43ba: $1d
	sbc $3d                                          ; $43bb: $de $3d
	sub l                                            ; $43bd: $95
	ld a, l                                          ; $43be: $7d
	and $e4                                          ; $43bf: $e6 $e4
	and h                                            ; $43c1: $a4
	jr nz, jr_063_43e4                               ; $43c2: $20 $20

	and b                                            ; $43c4: $a0
	ld h, d                                          ; $43c5: $62
	and d                                            ; $43c6: $a2
	ld a, l                                          ; $43c7: $7d
	db $db                                           ; $43c8: $db
	ld sp, hl                                        ; $43c9: $f9
	adc [hl]                                         ; $43ca: $8e
	ld a, c                                          ; $43cb: $79
	ldh [c], a                                       ; $43cc: $e2
	db $e4                                           ; $43cd: $e4
	push de                                          ; $43ce: $d5
	pop af                                           ; $43cf: $f1
	or e                                             ; $43d0: $b3
	cp d                                             ; $43d1: $ba
	ld a, [hl+]                                      ; $43d2: $2a
	ld e, e                                          ; $43d3: $5b
	cp c                                             ; $43d4: $b9
	cp e                                             ; $43d5: $bb
	cp e                                             ; $43d6: $bb
	sbc a                                            ; $43d7: $9f
	sbc a                                            ; $43d8: $9f
	rra                                              ; $43d9: $1f
	rra                                              ; $43da: $1f
	ld c, $4f                                        ; $43db: $0e $4f
	jr nz, @-$61                                     ; $43dd: $20 $9d

	add d                                            ; $43df: $82
	add b                                            ; $43e0: $80
	ld a, e                                          ; $43e1: $7b
	dec c                                            ; $43e2: $0d
	sbc [hl]                                         ; $43e3: $9e

jr_063_43e4:
	ld e, a                                          ; $43e4: $5f
	ld [hl], a                                       ; $43e5: $77
	jr nz, jr_063_4383                               ; $43e6: $20 $9b

	ld e, $7f                                        ; $43e8: $1e $7f
	di                                               ; $43ea: $f3
	ld e, [hl]                                       ; $43eb: $5e
	ld [hl], a                                       ; $43ec: $77
	jr nz, jr_063_443e                               ; $43ed: $20 $4f

	ld h, b                                          ; $43ef: $60
	sbc l                                            ; $43f0: $9d
	jr jr_063_43f3                                   ; $43f1: $18 $00

jr_063_43f3:
	ld a, e                                          ; $43f3: $7b
	ldh [$9e], a                                     ; $43f4: $e0 $9e
	sbc [hl]                                         ; $43f6: $9e
	ld [hl], a                                       ; $43f7: $77
	ld h, b                                          ; $43f8: $60
	sbc e                                            ; $43f9: $9b
	ld e, $3f                                        ; $43fa: $1e $3f
	inc sp                                           ; $43fc: $33
	ld e, $77                                        ; $43fd: $1e $77
	ld h, b                                          ; $43ff: $60
	daa                                              ; $4400: $27
	add b                                            ; $4401: $80
	sbc e                                            ; $4402: $9b
	rrca                                             ; $4403: $0f
	rra                                              ; $4404: $1f
	rst SubAFromDE                                          ; $4405: $df
	sbc l                                            ; $4406: $9d
	ld [hl], a                                       ; $4407: $77
	add b                                            ; $4408: $80
	ld d, a                                          ; $4409: $57
	and b                                            ; $440a: $a0
	ld a, a                                          ; $440b: $7f
	sbc a                                            ; $440c: $9f
	sbc [hl]                                         ; $440d: $9e
	ldh [c], a                                       ; $440e: $e2
	ld a, e                                          ; $440f: $7b
	and b                                            ; $4410: $a0
	sbc h                                            ; $4411: $9c
	rst $38                                          ; $4412: $ff
	ei                                               ; $4413: $fb
	cp [hl]                                          ; $4414: $be
	ld a, e                                          ; $4415: $7b
	and b                                            ; $4416: $a0
	rst $38                                          ; $4417: $ff
	sbc e                                            ; $4418: $9b
	ld a, $fb                                        ; $4419: $3e $fb
	ld a, $80                                        ; $441b: $3e $80
	ld d, e                                          ; $441d: $53
	and b                                            ; $441e: $a0
	sbc h                                            ; $441f: $9c
	rst SubAFromBC                                          ; $4420: $e7
	ld a, a                                          ; $4421: $7f
	inc sp                                           ; $4422: $33
	ld [hl], a                                       ; $4423: $77
	and b                                            ; $4424: $a0
	sbc h                                            ; $4425: $9c
	rst $38                                          ; $4426: $ff
	or a                                             ; $4427: $b7
	rra                                              ; $4428: $1f
	ld a, e                                          ; $4429: $7b
	and b                                            ; $442a: $a0
	rst $38                                          ; $442b: $ff
	sbc h                                            ; $442c: $9c
	rra                                              ; $442d: $1f
	scf                                              ; $442e: $37
	rra                                              ; $442f: $1f
	cp $1f                                           ; $4430: $fe $1f
	and b                                            ; $4432: $a0
	sbc l                                            ; $4433: $9d
	rra                                              ; $4434: $1f
	db $dd                                           ; $4435: $dd
	dec hl                                           ; $4436: $2b
	and b                                            ; $4437: $a0
	ld a, a                                          ; $4438: $7f
	db $f4                                           ; $4439: $f4
	ld [hl], e                                       ; $443a: $73
	and b                                            ; $443b: $a0
	sbc l                                            ; $443c: $9d
	inc a                                            ; $443d: $3c

jr_063_443e:
	pop bc                                           ; $443e: $c1
	dec hl                                           ; $443f: $2b
	and b                                            ; $4440: $a0
	sbc [hl]                                         ; $4441: $9e
	cp a                                             ; $4442: $bf
	ld l, a                                          ; $4443: $6f
	and b                                            ; $4444: $a0
	sbc l                                            ; $4445: $9d
	rlca                                             ; $4446: $07
	jr nz, jr_063_44c0                               ; $4447: $20 $77

	and b                                            ; $4449: $a0
	sub a                                            ; $444a: $97
	ld bc, $042e                                     ; $444b: $01 $2e $04
	ld c, $00                                        ; $444e: $0e $00
	nop                                              ; $4450: $00
	add b                                            ; $4451: $80
	ldh [c], a                                       ; $4452: $e2
	ld a, [$c19d]                                    ; $4453: $fa $9d $c1
	rst $38                                          ; $4456: $ff
	ld a, d                                          ; $4457: $7a
	ld d, e                                          ; $4458: $53
	sub b                                            ; $4459: $90
	rst SubAFromHL                                          ; $445a: $d7
	adc [hl]                                         ; $445b: $8e
	sbc e                                            ; $445c: $9b
	cp a                                             ; $445d: $bf
	di                                               ; $445e: $f3
	db $fc                                           ; $445f: $fc
	xor $f7                                          ; $4460: $ee $f7
	db $fc                                           ; $4462: $fc
	ld a, [$c5ee]                                    ; $4463: $fa $ee $c5
	nop                                              ; $4466: $00
	inc sp                                           ; $4467: $33
	inc c                                            ; $4468: $0c
	ld l, a                                          ; $4469: $6f
	ldh [$9d], a                                     ; $446a: $e0 $9d
	ld [de], a                                       ; $446c: $12
	inc c                                            ; $446d: $0c
	dec hl                                           ; $446e: $2b
	ldh [$9d], a                                     ; $446f: $e0 $9d
	rra                                              ; $4471: $1f
	ld e, $73                                        ; $4472: $1e $73
	ldh [$9d], a                                     ; $4474: $e0 $9d
	inc de                                           ; $4476: $13
	ld e, $77                                        ; $4477: $1e $77
	rst SubAFromDE                                          ; $4479: $df
	scf                                              ; $447a: $37
	ldh [$7b], a                                     ; $447b: $e0 $7b
	sub c                                            ; $447d: $91
	ld [hl], a                                       ; $447e: $77
	ldh [$7b], a                                     ; $447f: $e0 $7b
	ld sp, hl                                        ; $4481: $f9
	dec sp                                           ; $4482: $3b
	ldh [$be], a                                     ; $4483: $e0 $be
	ld bc, $5598                                     ; $4485: $01 $98 $55
	cp e                                             ; $4488: $bb
	ld d, l                                          ; $4489: $55
	cp e                                             ; $448a: $bb
	ld de, $93ff                                     ; $448b: $11 $ff $93
	ld [hl], e                                       ; $448e: $73
	cp $93                                           ; $448f: $fe $93
	ld d, e                                          ; $4491: $53
	rst $38                                          ; $4492: $ff
	ld c, e                                          ; $4493: $4b
	cp $ae                                           ; $4494: $fe $ae
	cp $f7                                           ; $4496: $fe $f7
	cp $5f                                           ; $4498: $fe $5f
	cp $5b                                           ; $449a: $fe $5b
	rst $38                                          ; $449c: $ff
	ld [hl], a                                       ; $449d: $77
	cp $97                                           ; $449e: $fe $97
	ld e, d                                          ; $44a0: $5a
	rst $38                                          ; $44a1: $ff
	ld e, b                                          ; $44a2: $58
	rst $38                                          ; $44a3: $ff
	ret c                                            ; $44a4: $d8

	rst $38                                          ; $44a5: $ff
	ret c                                            ; $44a6: $d8

	db $fd                                           ; $44a7: $fd
	ld a, e                                          ; $44a8: $7b
	cp $80                                           ; $44a9: $fe $80
	db $dd                                           ; $44ab: $dd
	ld d, h                                          ; $44ac: $54
	db $dd                                           ; $44ad: $dd
	ld d, h                                          ; $44ae: $54
	call c, $dc54                                    ; $44af: $dc $54 $dc
	ld b, h                                          ; $44b2: $44
	call c, $fd44                                    ; $44b3: $dc $44 $fd
	ld b, h                                          ; $44b6: $44
	db $fd                                           ; $44b7: $fd
	ld c, h                                          ; $44b8: $4c
	rst $38                                          ; $44b9: $ff
	ld c, [hl]                                       ; $44ba: $4e
	cp $4e                                           ; $44bb: $fe $4e
	cp $2e                                           ; $44bd: $fe $2e
	rst $38                                          ; $44bf: $ff

jr_063_44c0:
	cp h                                             ; $44c0: $bc
	rst $38                                          ; $44c1: $ff
	db $fd                                           ; $44c2: $fd
	rst SubAFromBC                                          ; $44c3: $e7
	ld d, d                                          ; $44c4: $52
	cp a                                             ; $44c5: $bf
	inc de                                           ; $44c6: $13
	rst $38                                          ; $44c7: $ff
	dec sp                                           ; $44c8: $3b
	rst AddAOntoHL                                          ; $44c9: $ef
	add b                                            ; $44ca: $80
	dec sp                                           ; $44cb: $3b
	xor $3b                                          ; $44cc: $ee $3b
	cp $7f                                           ; $44ce: $fe $7f
	add $7f                                          ; $44d0: $c6 $7f
	add [hl]                                         ; $44d2: $86
	rst $38                                          ; $44d3: $ff
	sbc [hl]                                         ; $44d4: $9e
	rst FarCall                                          ; $44d5: $f7
	inc sp                                           ; $44d6: $33
	rst SubAFromBC                                          ; $44d7: $e7
	rst FarCall                                          ; $44d8: $f7
	ld a, a                                          ; $44d9: $7f
	ld e, [hl]                                       ; $44da: $5e
	add hl, de                                       ; $44db: $19
	ld d, $92                                        ; $44dc: $16 $92
	ld a, [de]                                       ; $44de: $1a
	ld c, $88                                        ; $44df: $0e $88
	ret nz                                           ; $44e1: $c0

	add b                                            ; $44e2: $80
	add b                                            ; $44e3: $80
	ret nz                                           ; $44e4: $c0

	ld h, b                                          ; $44e5: $60
	ret nz                                           ; $44e6: $c0

	ld b, b                                          ; $44e7: $40
	ldh [$f0], a                                     ; $44e8: $e0 $f0
	add b                                            ; $44ea: $80
	ld h, b                                          ; $44eb: $60
	jr c, jr_063_455e                                ; $44ec: $38 $70

	inc a                                            ; $44ee: $3c
	ld a, b                                          ; $44ef: $78
	ld a, h                                          ; $44f0: $7c
	ld a, $57                                        ; $44f1: $3e $57
	ccf                                              ; $44f3: $3f
	ld d, e                                          ; $44f4: $53
	ccf                                              ; $44f5: $3f
	sub e                                            ; $44f6: $93
	ccf                                              ; $44f7: $3f
	or a                                             ; $44f8: $b7
	dec de                                           ; $44f9: $1b
	or l                                             ; $44fa: $b5
	dec de                                           ; $44fb: $1b
	ld e, l                                          ; $44fc: $5d
	sbc e                                            ; $44fd: $9b
	ld c, e                                          ; $44fe: $4b

Call_063_44ff:
	sbc l                                            ; $44ff: $9d
	xor d                                            ; $4500: $aa
	ld e, l                                          ; $4501: $5d
	xor l                                            ; $4502: $ad
	ld e, [hl]                                       ; $4503: $5e
	dec c                                            ; $4504: $0d
	cp $7a                                           ; $4505: $fe $7a
	rst SubAFromHL                                          ; $4507: $d7
	ld [hl], d                                       ; $4508: $72
	rst SubAFromDE                                          ; $4509: $df
	sub a                                            ; $450a: $97
	ld [hl], e                                       ; $450b: $73
	rst SubAFromDE                                          ; $450c: $df
	ei                                               ; $450d: $fb
	adc $fb                                          ; $450e: $ce $fb
	adc $ff                                          ; $4510: $ce $ff
	ld b, [hl]                                       ; $4512: $46
	ld a, e                                          ; $4513: $7b
	cp $9b                                           ; $4514: $fe $9b
	ld [bc], a                                       ; $4516: $02
	rst $38                                          ; $4517: $ff
	ld bc, $bcff                                     ; $4518: $01 $ff $bc
	ld h, a                                          ; $451b: $67
	add hl, bc                                       ; $451c: $09
	inc c                                            ; $451d: $0c
	ld e, $1e                                        ; $451e: $1e $1e
	add b                                            ; $4520: $80
	db $10                                           ; $4521: $10
	inc c                                            ; $4522: $0c
	nop                                              ; $4523: $00
	db $ed                                           ; $4524: $ed
	ld d, e                                          ; $4525: $53
	ld [hl], l                                       ; $4526: $75
	db $db                                           ; $4527: $db
	jr c, @-$0f                                      ; $4528: $38 $ef

	cp h                                             ; $452a: $bc
	rst SubAFromBC                                          ; $452b: $e7
	sbc $7f                                          ; $452c: $de $7f
	rst $38                                          ; $452e: $ff
	ld sp, $18ff                                     ; $452f: $31 $ff $18
	rst $38                                          ; $4532: $ff
	ld e, $e7                                        ; $4533: $1e $e7
	inc sp                                           ; $4535: $33
	rst SubAFromBC                                          ; $4536: $e7
	ld d, $de                                        ; $4537: $16 $de
	ld e, $98                                        ; $4539: $1e $98
	ld d, $13                                        ; $453b: $16 $13
	ld a, [de]                                       ; $453d: $1a
	ld c, $08                                        ; $453e: $0e $08
	rst $38                                          ; $4540: $ff
	sbc [hl]                                         ; $4541: $9e
	ld bc, $01be                                     ; $4542: $01 $be $01
	inc bc                                           ; $4545: $03
	ld b, $80                                        ; $4546: $06 $80
	ld bc, $030d                                     ; $4548: $01 $0d $03
	rra                                              ; $454b: $1f
	rlca                                             ; $454c: $07
	cpl                                              ; $454d: $2f
	rra                                              ; $454e: $1f
	cp a                                             ; $454f: $bf
	ld a, a                                          ; $4550: $7f
	rst $38                                          ; $4551: $ff
	rst $38                                          ; $4552: $ff
	cp a                                             ; $4553: $bf
	ld a, a                                          ; $4554: $7f
	sbc a                                            ; $4555: $9f
	ccf                                              ; $4556: $3f
	scf                                              ; $4557: $37
	ld c, $bf                                        ; $4558: $0e $bf
	nop                                              ; $455a: $00
	rst $38                                          ; $455b: $ff
	ret nz                                           ; $455c: $c0

	rra                                              ; $455d: $1f

jr_063_455e:
	add hl, sp                                       ; $455e: $39
	rlc a                                            ; $455f: $cb $07
	ld sp, $7403                                     ; $4561: $31 $03 $74
	adc a                                            ; $4564: $8f
	cp [hl]                                          ; $4565: $be
	rst JumpTable                                          ; $4566: $c7
	add b                                            ; $4567: $80
	jp c, $efe7                                      ; $4568: $da $e7 $ef

	di                                               ; $456b: $f3
	ld [hl], l                                       ; $456c: $75
	db $db                                           ; $456d: $db
	cp c                                             ; $456e: $b9
	rst AddAOntoHL                                          ; $456f: $ef
	db $fd                                           ; $4570: $fd
	ld h, a                                          ; $4571: $67
	rst $38                                          ; $4572: $ff
	rra                                              ; $4573: $1f
	db $fd                                           ; $4574: $fd
	rrca                                             ; $4575: $0f
	db $ec                                           ; $4576: $ec
	rst SubAFromDE                                          ; $4577: $df
	db $fc                                           ; $4578: $fc
	sbc a                                            ; $4579: $9f
	or $1d                                           ; $457a: $f6 $1d
	sub $3d                                          ; $457c: $d6 $3d
	or $3d                                           ; $457e: $f6 $3d
	rst SubAFromBC                                          ; $4580: $e7
	inc a                                            ; $4581: $3c
	and a                                            ; $4582: $a7
	ld a, h                                          ; $4583: $7c
	and $7d                                          ; $4584: $e6 $7d
	db $e4                                           ; $4586: $e4
	sbc e                                            ; $4587: $9b
	ld sp, hl                                        ; $4588: $f9
	and h                                            ; $4589: $a4
	ld sp, hl                                        ; $458a: $f9
	jr nz, jr_063_4608                               ; $458b: $20 $7b

	cp $89                                           ; $458d: $fe $89
	and b                                            ; $458f: $a0
	ld sp, hl                                        ; $4590: $f9
	ld h, d                                          ; $4591: $62
	ld sp, hl                                        ; $4592: $f9
	and d                                            ; $4593: $a2
	ld a, c                                          ; $4594: $79
	ldh [c], a                                       ; $4595: $e2
	cp c                                             ; $4596: $b9
	db $e4                                           ; $4597: $e4
	cp e                                             ; $4598: $bb
	push de                                          ; $4599: $d5
	cp e                                             ; $459a: $bb
	pop af                                           ; $459b: $f1
	sbc a                                            ; $459c: $9f
	or e                                             ; $459d: $b3
	sbc a                                            ; $459e: $9f
	cp d                                             ; $459f: $ba
	rra                                              ; $45a0: $1f
	ld a, [hl+]                                      ; $45a1: $2a
	rra                                              ; $45a2: $1f
	ld e, e                                          ; $45a3: $5b
	ld c, $53                                        ; $45a4: $0e $53
	jr nz, @-$6a                                     ; $45a6: $20 $94

	add d                                            ; $45a8: $82
	rst $38                                          ; $45a9: $ff
	add b                                            ; $45aa: $80
	rst $38                                          ; $45ab: $ff
	nop                                              ; $45ac: $00
	rst $38                                          ; $45ad: $ff
	ld a, $e7                                        ; $45ae: $3e $e7
	di                                               ; $45b0: $f3
	ld e, a                                          ; $45b1: $5f
	ld e, [hl]                                       ; $45b2: $5e
	ld h, a                                          ; $45b3: $67
	jr nz, jr_063_4601                               ; $45b4: $20 $4b

	ld h, b                                          ; $45b6: $60
	cp a                                             ; $45b7: $bf
	rst $38                                          ; $45b8: $ff
	rst $38                                          ; $45b9: $ff
	ld a, e                                          ; $45ba: $7b
	ld e, h                                          ; $45bb: $5c
	sbc l                                            ; $45bc: $9d
	sbc [hl]                                         ; $45bd: $9e
	ld e, $67                                        ; $45be: $1e $67
	ld h, b                                          ; $45c0: $60
	dec sp                                           ; $45c1: $3b
	add b                                            ; $45c2: $80
	sbc d                                            ; $45c3: $9a
	rra                                              ; $45c4: $1f
	db $fc                                           ; $45c5: $fc
	rst SubAFromDE                                          ; $45c6: $df
	or $9d                                           ; $45c7: $f6 $9d
	ld h, a                                          ; $45c9: $67
	add b                                            ; $45ca: $80
	ld h, e                                          ; $45cb: $63
	and b                                            ; $45cc: $a0
	sbc d                                            ; $45cd: $9a
	xor $7f                                          ; $45ce: $ee $7f
	cp $7f                                           ; $45d0: $fe $7f
	jp nz, $a073                                     ; $45d2: $c2 $73 $a0

	ld a, e                                          ; $45d5: $7b
	sbc [hl]                                         ; $45d6: $9e
	rst SubAFromDE                                          ; $45d7: $df
	ei                                               ; $45d8: $fb
	sbc e                                            ; $45d9: $9b
	cp [hl]                                          ; $45da: $be
	ld a, $0e                                        ; $45db: $3e $0e
	add b                                            ; $45dd: $80
	ld d, e                                          ; $45de: $53
	and b                                            ; $45df: $a0
	sbc h                                            ; $45e0: $9c
	ld [hl], e                                       ; $45e1: $73
	rst $38                                          ; $45e2: $ff
	ccf                                              ; $45e3: $3f
	ld l, e                                          ; $45e4: $6b
	and b                                            ; $45e5: $a0
	ld a, a                                          ; $45e6: $7f
	cp $99                                           ; $45e7: $fe $99
	rra                                              ; $45e9: $1f
	or a                                             ; $45ea: $b7
	scf                                              ; $45eb: $37
	rra                                              ; $45ec: $1f
	rra                                              ; $45ed: $1f
	ld c, $be                                        ; $45ee: $0e $be
	nop                                              ; $45f0: $00
	ld bc, $5774                                     ; $45f1: $01 $74 $57
	and b                                            ; $45f4: $a0
	sbc [hl]                                         ; $45f5: $9e
	rst SubAFromBC                                          ; $45f6: $e7
	ld l, e                                          ; $45f7: $6b
	and b                                            ; $45f8: $a0
	sbc h                                            ; $45f9: $9c
	rra                                              ; $45fa: $1f
	or $dd                                           ; $45fb: $f6 $dd
	inc de                                           ; $45fd: $13
	and b                                            ; $45fe: $a0
	sbc h                                            ; $45ff: $9c
	inc a                                            ; $4600: $3c

jr_063_4601:
	rst $38                                          ; $4601: $ff
	pop bc                                           ; $4602: $c1
	inc de                                           ; $4603: $13
	and b                                            ; $4604: $a0
	sbc h                                            ; $4605: $9c
	rlca                                             ; $4606: $07
	cp a                                             ; $4607: $bf

jr_063_4608:
	jr nz, jr_063_4671                               ; $4608: $20 $67

	and b                                            ; $460a: $a0
	rst $38                                          ; $460b: $ff
	sbc h                                            ; $460c: $9c
	cpl                                              ; $460d: $2f
	ld [bc], a                                       ; $460e: $02
	nop                                              ; $460f: $00
	cp h                                             ; $4610: $bc
	ld c, $00                                        ; $4611: $0e $00
	nop                                              ; $4613: $00
	add b                                            ; $4614: $80
	ldh [c], a                                       ; $4615: $e2
	add a                                            ; $4616: $87
	pop bc                                           ; $4617: $c1
	rst $38                                          ; $4618: $ff
	di                                               ; $4619: $f3
	ei                                               ; $461a: $fb
	db $fc                                           ; $461b: $fc
	rst $38                                          ; $461c: $ff
	xor $ff                                          ; $461d: $ee $ff
	rst FarCall                                          ; $461f: $f7
	rst SubAFromHL                                          ; $4620: $d7
	db $fc                                           ; $4621: $fc
	adc [hl]                                         ; $4622: $8e
	ld a, [$ee9b]                                    ; $4623: $fa $9b $ee
	cp a                                             ; $4626: $bf
	push bc                                          ; $4627: $c5
	nop                                              ; $4628: $00
	nop                                              ; $4629: $00
	inc sp                                           ; $462a: $33
	ld [de], a                                       ; $462b: $12
	ld e, $0e                                        ; $462c: $1e $0e
	inc c                                            ; $462e: $0c
	inc de                                           ; $462f: $13
	ldh [$9c], a                                     ; $4630: $e0 $9c
	rra                                              ; $4632: $1f
	ld e, $1e                                        ; $4633: $1e $1e
	ld [hl], e                                       ; $4635: $73
	rst SubAFromDE                                          ; $4636: $df
	cpl                                              ; $4637: $2f
	ldh [$9b], a                                     ; $4638: $e0 $9b
	ld [hl-], a                                      ; $463a: $32
	ld [de], a                                       ; $463b: $12
	ccf                                              ; $463c: $3f
	ld e, $6f                                        ; $463d: $1e $6f
	sbc $37                                          ; $463f: $de $37
	ldh [$b8], a                                     ; $4641: $e0 $b8
	ld bc, $5598                                     ; $4643: $01 $98 $55
	cp e                                             ; $4646: $bb
	ld d, l                                          ; $4647: $55
	cp e                                             ; $4648: $bb
	ld de, $93ff                                     ; $4649: $11 $ff $93
	ld [hl], e                                       ; $464c: $73
	cp $93                                           ; $464d: $fe $93
	ld d, e                                          ; $464f: $53
	rst $38                                          ; $4650: $ff
	ld c, e                                          ; $4651: $4b
	cp $ae                                           ; $4652: $fe $ae
	cp $f7                                           ; $4654: $fe $f7
	cp $5f                                           ; $4656: $fe $5f
	cp $5b                                           ; $4658: $fe $5b
	rst $38                                          ; $465a: $ff
	ld [hl], a                                       ; $465b: $77
	cp $97                                           ; $465c: $fe $97
	ld e, d                                          ; $465e: $5a
	rst $38                                          ; $465f: $ff
	ld e, b                                          ; $4660: $58
	rst $38                                          ; $4661: $ff
	ret c                                            ; $4662: $d8

	rst $38                                          ; $4663: $ff
	ret c                                            ; $4664: $d8

	db $fd                                           ; $4665: $fd
	ld a, e                                          ; $4666: $7b
	cp $80                                           ; $4667: $fe $80
	db $dd                                           ; $4669: $dd
	ld d, h                                          ; $466a: $54
	db $dd                                           ; $466b: $dd
	ld d, h                                          ; $466c: $54
	call c, $dc54                                    ; $466d: $dc $54 $dc
	ld b, h                                          ; $4670: $44

jr_063_4671:
	call c, $fd44                                    ; $4671: $dc $44 $fd
	ld b, h                                          ; $4674: $44
	db $fd                                           ; $4675: $fd
	ld c, h                                          ; $4676: $4c
	rst $38                                          ; $4677: $ff
	ld c, [hl]                                       ; $4678: $4e
	cp $4e                                           ; $4679: $fe $4e
	cp $2e                                           ; $467b: $fe $2e
	rst $38                                          ; $467d: $ff
	cp h                                             ; $467e: $bc
	rst $38                                          ; $467f: $ff
	db $fd                                           ; $4680: $fd
	rst SubAFromBC                                          ; $4681: $e7
	ld d, d                                          ; $4682: $52
	cp a                                             ; $4683: $bf
	inc de                                           ; $4684: $13
	rst $38                                          ; $4685: $ff
	dec sp                                           ; $4686: $3b
	rst AddAOntoHL                                          ; $4687: $ef
	add b                                            ; $4688: $80
	dec sp                                           ; $4689: $3b
	xor $3b                                          ; $468a: $ee $3b
	cp $7f                                           ; $468c: $fe $7f
	rst JumpTable                                          ; $468e: $c7
	ld a, a                                          ; $468f: $7f
	add e                                            ; $4690: $83
	rst $38                                          ; $4691: $ff
	adc [hl]                                         ; $4692: $8e
	rst FarCall                                          ; $4693: $f7
	inc sp                                           ; $4694: $33
	rst SubAFromBC                                          ; $4695: $e7
	rst FarCall                                          ; $4696: $f7
	ld a, a                                          ; $4697: $7f
	ld e, [hl]                                       ; $4698: $5e
	add hl, de                                       ; $4699: $19
	ld d, $92                                        ; $469a: $16 $92
	ld a, [de]                                       ; $469c: $1a
	ld c, $88                                        ; $469d: $0e $88
	ret nz                                           ; $469f: $c0

	add b                                            ; $46a0: $80
	add b                                            ; $46a1: $80
	ret nz                                           ; $46a2: $c0

	ld h, b                                          ; $46a3: $60
	ret nz                                           ; $46a4: $c0

	ld b, b                                          ; $46a5: $40
	ldh [$f0], a                                     ; $46a6: $e0 $f0
	add b                                            ; $46a8: $80
	ld h, b                                          ; $46a9: $60
	jr c, jr_063_471c                                ; $46aa: $38 $70

	inc a                                            ; $46ac: $3c
	ld a, b                                          ; $46ad: $78
	ld a, h                                          ; $46ae: $7c
	ld a, $57                                        ; $46af: $3e $57
	ccf                                              ; $46b1: $3f
	ld d, e                                          ; $46b2: $53
	ccf                                              ; $46b3: $3f
	sub e                                            ; $46b4: $93
	ccf                                              ; $46b5: $3f
	or a                                             ; $46b6: $b7
	dec de                                           ; $46b7: $1b
	or l                                             ; $46b8: $b5
	dec de                                           ; $46b9: $1b
	ld e, l                                          ; $46ba: $5d
	sbc e                                            ; $46bb: $9b
	ld c, e                                          ; $46bc: $4b
	sbc l                                            ; $46bd: $9d
	xor d                                            ; $46be: $aa
	ld e, l                                          ; $46bf: $5d
	xor l                                            ; $46c0: $ad
	ld e, [hl]                                       ; $46c1: $5e
	dec c                                            ; $46c2: $0d
	cp $7a                                           ; $46c3: $fe $7a
	rst SubAFromHL                                          ; $46c5: $d7
	ld [hl], d                                       ; $46c6: $72
	rst SubAFromDE                                          ; $46c7: $df
	sub a                                            ; $46c8: $97
	ld [hl], e                                       ; $46c9: $73
	rst SubAFromDE                                          ; $46ca: $df
	ei                                               ; $46cb: $fb
	adc $fb                                          ; $46cc: $ce $fb
	adc $ff                                          ; $46ce: $ce $ff
	ld b, [hl]                                       ; $46d0: $46
	ld a, e                                          ; $46d1: $7b
	cp $9b                                           ; $46d2: $fe $9b
	ld [bc], a                                       ; $46d4: $02
	rst $38                                          ; $46d5: $ff
	ld bc, $bcff                                     ; $46d6: $01 $ff $bc
	ld h, a                                          ; $46d9: $67
	add hl, bc                                       ; $46da: $09
	inc c                                            ; $46db: $0c
	ld e, $1e                                        ; $46dc: $1e $1e
	add b                                            ; $46de: $80
	db $10                                           ; $46df: $10
	inc c                                            ; $46e0: $0c
	nop                                              ; $46e1: $00
	db $ed                                           ; $46e2: $ed
	ld d, e                                          ; $46e3: $53
	ld [hl], l                                       ; $46e4: $75
	db $db                                           ; $46e5: $db
	jr c, @-$0f                                      ; $46e6: $38 $ef

	cp h                                             ; $46e8: $bc
	rst SubAFromBC                                          ; $46e9: $e7
	sbc $7f                                          ; $46ea: $de $7f
	rst $38                                          ; $46ec: $ff
	ld [hl], c                                       ; $46ed: $71
	rst $38                                          ; $46ee: $ff
	sbc b                                            ; $46ef: $98
	rst $38                                          ; $46f0: $ff
	ld e, $e7                                        ; $46f1: $1e $e7
	inc sp                                           ; $46f3: $33
	rst SubAFromBC                                          ; $46f4: $e7
	ld d, $de                                        ; $46f5: $16 $de
	ld e, $98                                        ; $46f7: $1e $98
	ld d, $13                                        ; $46f9: $16 $13
	ld a, [de]                                       ; $46fb: $1a

jr_063_46fc:
	ld c, $08                                        ; $46fc: $0e $08
	rst $38                                          ; $46fe: $ff
	sbc [hl]                                         ; $46ff: $9e
	ld bc, $01be                                     ; $4700: $01 $be $01
	inc bc                                           ; $4703: $03
	ld b, $80                                        ; $4704: $06 $80
	ld bc, $030d                                     ; $4706: $01 $0d $03
	rra                                              ; $4709: $1f
	rlca                                             ; $470a: $07
	cpl                                              ; $470b: $2f
	rra                                              ; $470c: $1f
	cp a                                             ; $470d: $bf
	ld a, a                                          ; $470e: $7f
	rst $38                                          ; $470f: $ff
	rst $38                                          ; $4710: $ff
	cp a                                             ; $4711: $bf
	ld a, a                                          ; $4712: $7f
	sbc a                                            ; $4713: $9f
	ccf                                              ; $4714: $3f
	scf                                              ; $4715: $37
	ld c, $bf                                        ; $4716: $0e $bf
	nop                                              ; $4718: $00
	rst $38                                          ; $4719: $ff
	ret nz                                           ; $471a: $c0

	rra                                              ; $471b: $1f

jr_063_471c:
	add hl, sp                                       ; $471c: $39
	rlc a                                            ; $471d: $cb $07
	ld sp, $7403                                     ; $471f: $31 $03 $74
	adc a                                            ; $4722: $8f
	cp [hl]                                          ; $4723: $be
	rst JumpTable                                          ; $4724: $c7
	add b                                            ; $4725: $80
	jp c, $efe7                                      ; $4726: $da $e7 $ef

	di                                               ; $4729: $f3
	ld [hl], l                                       ; $472a: $75
	db $db                                           ; $472b: $db
	cp c                                             ; $472c: $b9
	rst AddAOntoHL                                          ; $472d: $ef
	db $fd                                           ; $472e: $fd
	ld h, a                                          ; $472f: $67
	rst $38                                          ; $4730: $ff
	rra                                              ; $4731: $1f
	db $fd                                           ; $4732: $fd
	rrca                                             ; $4733: $0f
	db $ec                                           ; $4734: $ec
	rst SubAFromDE                                          ; $4735: $df
	db $fc                                           ; $4736: $fc
	sbc a                                            ; $4737: $9f
	or $1d                                           ; $4738: $f6 $1d
	sub $3d                                          ; $473a: $d6 $3d
	or $3d                                           ; $473c: $f6 $3d
	and $3d                                          ; $473e: $e6 $3d
	and [hl]                                         ; $4740: $a6
	ld a, l                                          ; $4741: $7d
	and $7d                                          ; $4742: $e6 $7d
	db $e4                                           ; $4744: $e4
	sbc e                                            ; $4745: $9b
	ld sp, hl                                        ; $4746: $f9
	and h                                            ; $4747: $a4
	ld sp, hl                                        ; $4748: $f9
	jr nz, jr_063_47c6                               ; $4749: $20 $7b

	cp $89                                           ; $474b: $fe $89
	and b                                            ; $474d: $a0
	ld sp, hl                                        ; $474e: $f9
	ld h, d                                          ; $474f: $62
	ld sp, hl                                        ; $4750: $f9
	and d                                            ; $4751: $a2
	ld a, c                                          ; $4752: $79
	ldh [c], a                                       ; $4753: $e2
	cp c                                             ; $4754: $b9
	db $e4                                           ; $4755: $e4
	cp e                                             ; $4756: $bb
	push de                                          ; $4757: $d5
	cp e                                             ; $4758: $bb
	pop af                                           ; $4759: $f1
	sbc a                                            ; $475a: $9f
	or e                                             ; $475b: $b3
	sbc a                                            ; $475c: $9f
	cp d                                             ; $475d: $ba
	rra                                              ; $475e: $1f
	ld a, [hl+]                                      ; $475f: $2a
	rra                                              ; $4760: $1f
	ld e, e                                          ; $4761: $5b
	ld c, $4b                                        ; $4762: $0e $4b
	jr nz, jr_063_46fc                               ; $4764: $20 $96

	add b                                            ; $4766: $80
	rst $38                                          ; $4767: $ff
	nop                                              ; $4768: $00
	rst $38                                          ; $4769: $ff
	ld a, $f7                                        ; $476a: $3e $f7
	di                                               ; $476c: $f3
	ld c, a                                          ; $476d: $4f
	ld e, [hl]                                       ; $476e: $5e
	ld h, a                                          ; $476f: $67
	jr nz, jr_063_47bd                               ; $4770: $20 $4b

	ld h, b                                          ; $4772: $60
	cp a                                             ; $4773: $bf
	rst $38                                          ; $4774: $ff
	rst $38                                          ; $4775: $ff
	sbc d                                            ; $4776: $9a
	rra                                              ; $4777: $1f
	rst FarCall                                          ; $4778: $f7
	inc sp                                           ; $4779: $33
	adc [hl]                                         ; $477a: $8e
	ld e, $67                                        ; $477b: $1e $67
	ld h, b                                          ; $477d: $60
	dec sp                                           ; $477e: $3b
	add b                                            ; $477f: $80
	sbc d                                            ; $4780: $9a
	rra                                              ; $4781: $1f
	db $fc                                           ; $4782: $fc
	rst SubAFromDE                                          ; $4783: $df
	or $9d                                           ; $4784: $f6 $9d
	ld h, a                                          ; $4786: $67
	add b                                            ; $4787: $80
	ld h, e                                          ; $4788: $63
	and b                                            ; $4789: $a0
	sbc b                                            ; $478a: $98
	xor $7f                                          ; $478b: $ee $7f
	cp $7f                                           ; $478d: $fe $7f
	add a                                            ; $478f: $87
	rst $38                                          ; $4790: $ff
	add c                                            ; $4791: $81
	ld [hl], e                                       ; $4792: $73
	cp [hl]                                          ; $4793: $be
	sbc b                                            ; $4794: $98
	ld a, $fb                                        ; $4795: $3e $fb
	ei                                               ; $4797: $fb
	cp [hl]                                          ; $4798: $be
	ld a, $0e                                        ; $4799: $3e $0e
	add b                                            ; $479b: $80
	ld d, e                                          ; $479c: $53
	and b                                            ; $479d: $a0
	sbc d                                            ; $479e: $9a
	ld [hl], e                                       ; $479f: $73
	rst $38                                          ; $47a0: $ff
	ccf                                              ; $47a1: $3f
	rst $38                                          ; $47a2: $ff
	ld a, b                                          ; $47a3: $78
	ld [hl], e                                       ; $47a4: $73

Call_063_47a5:
	add b                                            ; $47a5: $80
	ld a, e                                          ; $47a6: $7b
	sbc [hl]                                         ; $47a7: $9e
	sbc d                                            ; $47a8: $9a
	or a                                             ; $47a9: $b7
	scf                                              ; $47aa: $37
	rra                                              ; $47ab: $1f
	rra                                              ; $47ac: $1f
	ld c, $be                                        ; $47ad: $0e $be
	nop                                              ; $47af: $00
	ld bc, $3774                                     ; $47b0: $01 $74 $37
	and b                                            ; $47b3: $a0
	sbc h                                            ; $47b4: $9c
	rra                                              ; $47b5: $1f
	or $dd                                           ; $47b6: $f6 $dd
	inc de                                           ; $47b8: $13
	and b                                            ; $47b9: $a0
	sbc h                                            ; $47ba: $9c
	inc a                                            ; $47bb: $3c
	rst $38                                          ; $47bc: $ff

jr_063_47bd:
	pop bc                                           ; $47bd: $c1
	inc de                                           ; $47be: $13
	and b                                            ; $47bf: $a0
	sbc h                                            ; $47c0: $9c
	rlca                                             ; $47c1: $07
	cp a                                             ; $47c2: $bf
	jr nz, jr_063_482c                               ; $47c3: $20 $67

	and b                                            ; $47c5: $a0

jr_063_47c6:
	rst $38                                          ; $47c6: $ff
	sbc [hl]                                         ; $47c7: $9e
	ld l, $bb                                        ; $47c8: $2e $bb
	inc bc                                           ; $47ca: $03
	inc c                                            ; $47cb: $0c
	nop                                              ; $47cc: $00
	nop                                              ; $47cd: $00
	add b                                            ; $47ce: $80
	ldh [c], a                                       ; $47cf: $e2
	adc b                                            ; $47d0: $88
	pop bc                                           ; $47d1: $c1
	rst $38                                          ; $47d2: $ff
	di                                               ; $47d3: $f3
	ei                                               ; $47d4: $fb
	db $fc                                           ; $47d5: $fc
	rst $38                                          ; $47d6: $ff
	xor $ff                                          ; $47d7: $ee $ff
	rst FarCall                                          ; $47d9: $f7
	rst SubAFromHL                                          ; $47da: $d7
	db $fc                                           ; $47db: $fc
	adc [hl]                                         ; $47dc: $8e
	ld a, [$ee9b]                                    ; $47dd: $fa $9b $ee
	cp a                                             ; $47e0: $bf
	push bc                                          ; $47e1: $c5
	nop                                              ; $47e2: $00
	nop                                              ; $47e3: $00
	ccf                                              ; $47e4: $3f
	ld e, $1f                                        ; $47e5: $1e $1f
	ld c, $77                                        ; $47e7: $0e $77
	call nc, $e01f                                   ; $47e9: $d4 $1f $e0
	sbc h                                            ; $47ec: $9c
	ccf                                              ; $47ed: $3f
	rra                                              ; $47ee: $1f
	ld e, $73                                        ; $47ef: $1e $73
	rst SubAFromDE                                          ; $47f1: $df
	rra                                              ; $47f2: $1f
	ldh [$df], a                                     ; $47f3: $e0 $df
	rra                                              ; $47f5: $1f
	ld [hl], a                                       ; $47f6: $77
	sbc $37                                          ; $47f7: $de $37
	ldh [$ef], a                                     ; $47f9: $e0 $ef
	ld [bc], a                                       ; $47fb: $02
	rst FarCall                                          ; $47fc: $f7
	rst SubAFromDE                                          ; $47fd: $df
	ld bc, $0280                                     ; $47fe: $01 $80 $02
	inc bc                                           ; $4801: $03
	dec b                                            ; $4802: $05
	ld b, $0a                                        ; $4803: $06 $0a
	dec c                                            ; $4805: $0d
	dec d                                            ; $4806: $15
	ld a, [de]                                       ; $4807: $1a
	add hl, hl                                       ; $4808: $29
	ld [hl], $3b                                     ; $4809: $36 $3b
	inc h                                            ; $480b: $24
	ld d, e                                          ; $480c: $53
	ld l, h                                          ; $480d: $6c
	halt                                             ; $480e: $76
	ld c, c                                          ; $480f: $49
	ld l, [hl]                                       ; $4810: $6e
	ld e, c                                          ; $4811: $59
	ld c, h                                          ; $4812: $4c
	ld a, e                                          ; $4813: $7b
	dec l                                            ; $4814: $2d
	dec sp                                           ; $4815: $3b
	add hl, hl                                       ; $4816: $29
	ccf                                              ; $4817: $3f
	ld de, $1517                                     ; $4818: $11 $17 $15
	rla                                              ; $481b: $17
	dec b                                            ; $481c: $05
	rlca                                             ; $481d: $07
	ld [bc], a                                       ; $481e: $02
	sbc d                                            ; $481f: $9a
	inc bc                                           ; $4820: $03
	ld [bc], a                                       ; $4821: $02
	inc bc                                           ; $4822: $03
	ld bc, $eb01                                     ; $4823: $01 $01 $eb
	db $db                                           ; $4826: $db
	ld bc, $03dd                                     ; $4827: $01 $dd $03
	adc a                                            ; $482a: $8f
	inc b                                            ; $482b: $04

jr_063_482c:
	rlca                                             ; $482c: $07
	add hl, bc                                       ; $482d: $09
	ld c, $17                                        ; $482e: $0e $17
	ld a, [de]                                       ; $4830: $1a
	rla                                              ; $4831: $17
	ld a, [de]                                       ; $4832: $1a
	ld d, $1b                                        ; $4833: $16 $1b
	inc de                                           ; $4835: $13
	rra                                              ; $4836: $1f
	dec de                                           ; $4837: $1b
	rra                                              ; $4838: $1f
	dec c                                            ; $4839: $0d
	rrca                                             ; $483a: $0f
	cpl                                              ; $483b: $2f
	jp nc, $da7f                                     ; $483c: $d2 $7f $da

	add b                                            ; $483f: $80

jr_063_4840:
	dec bc                                           ; $4840: $0b
	inc c                                            ; $4841: $0c
	inc e                                            ; $4842: $1c
	inc de                                           ; $4843: $13
	inc de                                           ; $4844: $13
	dec c                                            ; $4845: $0d
	ld h, $3b                                        ; $4846: $26 $3b
	ld c, l                                          ; $4848: $4d
	halt                                             ; $4849: $76
	ld c, [hl]                                       ; $484a: $4e
	ld a, c                                          ; $484b: $79
	sbc c                                            ; $484c: $99
	rst FarCall                                          ; $484d: $f7
	or [hl]                                          ; $484e: $b6
	rst AddAOntoHL                                          ; $484f: $ef
	di                                               ; $4850: $f3
	db $fc                                           ; $4851: $fc
	sbc a                                            ; $4852: $9f
	ldh [$f6], a                                     ; $4853: $e0 $f6
	add hl, bc                                       ; $4855: $09
	ld l, l                                          ; $4856: $6d
	sub d                                            ; $4857: $92
	adc h                                            ; $4858: $8c
	ld [hl+], a                                      ; $4859: $22
	ld c, d                                          ; $485a: $4a
	inc b                                            ; $485b: $04
	ret c                                            ; $485c: $d8

	inc b                                            ; $485d: $04
	add hl, de                                       ; $485e: $19
	sub a                                            ; $485f: $97
	add h                                            ; $4860: $84
	ld de, $b28c                                     ; $4861: $11 $8c $b2
	dec c                                            ; $4864: $0d
	or d                                             ; $4865: $b2
	dec c                                            ; $4866: $0d
	or b                                             ; $4867: $b0
	inc sp                                           ; $4868: $33
	ret nz                                           ; $4869: $c0

	ldh [$d5], a                                     ; $486a: $e0 $d5
	add b                                            ; $486c: $80
	db $dd                                           ; $486d: $dd
	sub $9d                                          ; $486e: $d6 $9d
	adc [hl]                                         ; $4870: $8e
	xor c                                            ; $4871: $a9
	xor $d8                                          ; $4872: $ee $d8
	rst $38                                          ; $4874: $ff
	ld [$48ef], sp                                   ; $4875: $08 $ef $48
	rst GetHLinHL                                          ; $4878: $cf
	ret c                                            ; $4879: $d8

	rrca                                             ; $487a: $0f
	sbc b                                            ; $487b: $98
	sbc a                                            ; $487c: $9f
	jr jr_063_489e                                   ; $487d: $18 $1f

	ld e, e                                          ; $487f: $5b
	ld e, a                                          ; $4880: $5f
	sbc l                                            ; $4881: $9d
	rst $38                                          ; $4882: $ff
	dec a                                            ; $4883: $3d
	rst FarCall                                          ; $4884: $f7
	ld a, l                                          ; $4885: $7d
	rst $38                                          ; $4886: $ff
	db $fd                                           ; $4887: $fd
	rst JumpTable                                          ; $4888: $c7
	rst $38                                          ; $4889: $ff
	add d                                            ; $488a: $82
	rst $38                                          ; $488b: $ff
	sbc [hl]                                         ; $488c: $9e
	add d                                            ; $488d: $82
	di                                               ; $488e: $f3
	rst SubAFromDE                                          ; $488f: $df
	inc bc                                           ; $4890: $03
	add b                                            ; $4891: $80
	rra                                              ; $4892: $1f
	inc e                                            ; $4893: $1c
	ld a, b                                          ; $4894: $78
	ld h, a                                          ; $4895: $67
	rlca                                             ; $4896: $07
	ld hl, sp-$01                                    ; $4897: $f8 $ff
	rlca                                             ; $4899: $07
	jr @+$01                                         ; $489a: $18 $ff

Call_063_489c:
	rst AddAOntoHL                                          ; $489c: $ef
	ld [hl], b                                       ; $489d: $70

jr_063_489e:
	sub e                                            ; $489e: $93
	db $ec                                           ; $489f: $ec
	ld sp, $26ce                                     ; $48a0: $31 $ce $26
	rst SubAFromDE                                          ; $48a3: $df
	ld [hl], d                                       ; $48a4: $72
	dec a                                            ; $48a5: $3d
	sub [hl]                                         ; $48a6: $96
	pop hl                                           ; $48a7: $e1
	ld l, a                                          ; $48a8: $6f
	add b                                            ; $48a9: $80
	sub [hl]                                         ; $48aa: $96
	ld b, b                                          ; $48ab: $40
	ld a, [hl+]                                      ; $48ac: $2a
	sub b                                            ; $48ad: $90
	ld c, b                                          ; $48ae: $48
	ld [hl+], a                                      ; $48af: $22
	jr z, jr_063_4840                                ; $48b0: $28 $8e

	ld b, d                                          ; $48b2: $42
	adc b                                            ; $48b3: $88
	ld b, b                                          ; $48b4: $40
	ld d, c                                          ; $48b5: $51
	adc b                                            ; $48b6: $88
	inc de                                           ; $48b7: $13
	adc b                                            ; $48b8: $88
	ld [de], a                                       ; $48b9: $12
	adc c                                            ; $48ba: $89
	ld [hl], $89                                     ; $48bb: $36 $89
	or a                                             ; $48bd: $b7
	adc c                                            ; $48be: $89
	rst SubAFromBC                                          ; $48bf: $e7
	sbc c                                            ; $48c0: $99
	xor d                                            ; $48c1: $aa
	db $dd                                           ; $48c2: $dd
	ldh [$c1], a                                     ; $48c3: $e0 $c1
	add [hl]                                         ; $48c5: $86
	ld e, h                                          ; $48c6: $5c
	rst FarCall                                          ; $48c7: $f7
	ld e, [hl]                                       ; $48c8: $5e
	push af                                          ; $48c9: $f5
	ld b, e                                          ; $48ca: $43
	di                                               ; $48cb: $f3
	and c                                            ; $48cc: $a1
	pop hl                                           ; $48cd: $e1
	cp b                                             ; $48ce: $b8
	ld hl, sp-$48                                    ; $48cf: $f8 $b8

jr_063_48d1:
	cp b                                             ; $48d1: $b8
	and b                                            ; $48d2: $a0
	cp h                                             ; $48d3: $bc
	xor c                                            ; $48d4: $a9
	or l                                             ; $48d5: $b5
	or d                                             ; $48d6: $b2
	sbc d                                            ; $48d7: $9a
	db $dd                                           ; $48d8: $dd
	adc l                                            ; $48d9: $8d
	rst JumpTable                                          ; $48da: $c7
	ld b, e                                          ; $48db: $43
	ld a, l                                          ; $48dc: $7d
	add hl, sp                                       ; $48dd: $39
	add e                                            ; $48de: $83
	cp d                                             ; $48df: $ba
	cp $7c                                           ; $48e0: $fe $7c
	jr jr_063_48e4                                   ; $48e2: $18 $00

jr_063_48e4:
	nop                                              ; $48e4: $00
	nop                                              ; $48e5: $00

jr_063_48e6:
	inc b                                            ; $48e6: $04
	add b                                            ; $48e7: $80
	inc b                                            ; $48e8: $04
	ld [bc], a                                       ; $48e9: $02
	ld [bc], a                                       ; $48ea: $02
	ld bc, $0103                                     ; $48eb: $01 $03 $01
	inc bc                                           ; $48ee: $03
	ld sp, hl                                        ; $48ef: $f9
	ei                                               ; $48f0: $fb
	ccf                                              ; $48f1: $3f
	rst $38                                          ; $48f2: $ff
	rst GetHLinHL                                          ; $48f3: $cf
	ccf                                              ; $48f4: $3f
	ld d, $ef                                        ; $48f5: $16 $ef
	rst $38                                          ; $48f7: $ff
	rst $38                                          ; $48f8: $ff
	db $e4                                           ; $48f9: $e4
	inc bc                                           ; $48fa: $03
	ld h, $18                                        ; $48fb: $26 $18
	nop                                              ; $48fd: $00
	jr jr_063_48e6                                   ; $48fe: $18 $e6

	nop                                              ; $4900: $00
	ld c, $ff                                        ; $4901: $0e $ff
	ret c                                            ; $4903: $d8

	daa                                              ; $4904: $27
	rst GetHLinHL                                          ; $4905: $cf
	jr nz, jr_063_489e                               ; $4906: $20 $96

	call $c520                                       ; $4908: $cd $20 $c5
	jr nz, jr_063_48d1                               ; $490b: $20 $c4

	ld hl, $2144                                     ; $490d: $21 $44 $21
	ld b, b                                          ; $4910: $40
	ld a, e                                          ; $4911: $7b
	cp $91                                           ; $4912: $fe $91
	ld [hl], h                                       ; $4914: $74
	ld hl, $3166                                     ; $4915: $21 $66 $31
	ld b, [hl]                                       ; $4918: $46
	ld sp, $3956                                     ; $4919: $31 $56 $39
	ld d, [hl]                                       ; $491c: $56
	cp c                                             ; $491d: $b9
	ld l, d                                          ; $491e: $6a
	sbc l                                            ; $491f: $9d
	xor b                                            ; $4920: $a8
	rst SubAFromDE                                          ; $4921: $df
	ldh [$bf], a                                     ; $4922: $e0 $bf
	add b                                            ; $4924: $80
	cp c                                             ; $4925: $b9
	add b                                            ; $4926: $80
	di                                               ; $4927: $f3
	ldh [rAUD2ENV], a                                ; $4928: $e0 $17
	rlca                                             ; $492a: $07
	db $db                                           ; $492b: $db
	adc c                                            ; $492c: $89
	db $db                                           ; $492d: $db
	ld b, c                                          ; $492e: $41
	ei                                               ; $492f: $fb
	pop hl                                           ; $4930: $e1
	adc a                                            ; $4931: $8f
	ld c, $f2                                        ; $4932: $0e $f2
	rst $38                                          ; $4934: $ff
	ld a, e                                          ; $4935: $7b
	or a                                             ; $4936: $b7
	ld e, $ff                                        ; $4937: $1e $ff
	ccf                                              ; $4939: $3f
	rst $38                                          ; $493a: $ff
	xor [hl]                                         ; $493b: $ae
	dec sp                                           ; $493c: $3b
	ld l, d                                          ; $493d: $6a
	dec de                                           ; $493e: $1b
	db $db                                           ; $493f: $db
	ld [hl], d                                       ; $4940: $72
	ld a, [$8052]                                    ; $4941: $fa $52 $80
	sbc h                                            ; $4944: $9c
	add b                                            ; $4945: $80
	ld b, b                                          ; $4946: $40
	ld b, b                                          ; $4947: $40
	db $dd                                           ; $4948: $dd
	ld h, b                                          ; $4949: $60
	add b                                            ; $494a: $80
	jr nz, jr_063_49ad                               ; $494b: $20 $60

	ldh [$a0], a                                     ; $494d: $e0 $a0
	nop                                              ; $494f: $00
	ret nz                                           ; $4950: $c0

	ld a, a                                          ; $4951: $7f
	rst $38                                          ; $4952: $ff
	jp nz, $29e1                                     ; $4953: $c2 $e1 $29

	add $42                                          ; $4956: $c6 $42
	add c                                            ; $4958: $81
	nop                                              ; $4959: $00
	db $fc                                           ; $495a: $fc
	ldh [$f3], a                                     ; $495b: $e0 $f3
	ret c                                            ; $495d: $d8

	inc a                                            ; $495e: $3c
	adc $17                                          ; $495f: $ce $17
	ld bc, $c13b                                     ; $4961: $01 $3b $c1
	db $10                                           ; $4964: $10
	reti                                             ; $4965: $d9


	ldh [rAUD3LEN], a                                ; $4966: $e0 $1b
	db $fc                                           ; $4968: $fc
	ld h, d                                          ; $4969: $62
	add [hl]                                         ; $496a: $86
	rra                                              ; $496b: $1f
	ld a, b                                          ; $496c: $78
	rlca                                             ; $496d: $07
	ld a, [hl]                                       ; $496e: $7e
	ld bc, $1229                                     ; $496f: $01 $29 $12
	inc h                                            ; $4972: $24
	add hl, bc                                       ; $4973: $09
	sub d                                            ; $4974: $92
	inc h                                            ; $4975: $24
	add l                                            ; $4976: $85
	ld [hl-], a                                      ; $4977: $32
	ld a, [hl+]                                      ; $4978: $2a
	sub c                                            ; $4979: $91
	ld d, [hl]                                       ; $497a: $56
	adc c                                            ; $497b: $89
	sub e                                            ; $497c: $93
	call z, $c6a9                                    ; $497d: $cc $a9 $c6
	ld e, h                                          ; $4980: $5c
	rst SubAFromBC                                          ; $4981: $e7
	ld l, d                                          ; $4982: $6a
	rst FarCall                                          ; $4983: $f7
	ldh [$c1], a                                     ; $4984: $e0 $c1
	add b                                            ; $4986: $80
	ldh [$f7], a                                     ; $4987: $e0 $f7
	ld h, c                                          ; $4989: $61
	dec hl                                           ; $498a: $2b
	pop hl                                           ; $498b: $e1
	db $eb                                           ; $498c: $eb
	ld hl, $e3ef                                     ; $498d: $21 $ef $e3
	ld l, $23                                        ; $4990: $2e $23
	rst $38                                          ; $4992: $ff
	ld h, d                                          ; $4993: $62
	ld a, $f3                                        ; $4994: $3e $f3
	cp $77                                           ; $4996: $fe $77
	ccf                                              ; $4998: $3f
	ld [hl], $1e                                     ; $4999: $36 $1e
	ld d, $1c                                        ; $499b: $16 $1c
	or $fc                                           ; $499d: $f6 $fc
	cp a                                             ; $499f: $bf
	sbc [hl]                                         ; $49a0: $9e
	sbc a                                            ; $49a1: $9f
	dec bc                                           ; $49a2: $0b
	db $db                                           ; $49a3: $db
	adc c                                            ; $49a4: $89
	rst GetHLinHL                                          ; $49a5: $cf
	sbc [hl]                                         ; $49a6: $9e
	add l                                            ; $49a7: $85
	pop af                                           ; $49a8: $f1
	rst SubAFromDE                                          ; $49a9: $df
	ret nz                                           ; $49aa: $c0

	add b                                            ; $49ab: $80
	sub b                                            ; $49ac: $90

jr_063_49ad:
	ld [hl], b                                       ; $49ad: $70
	ld h, h                                          ; $49ae: $64
	sbc h                                            ; $49af: $9c
	sbc d                                            ; $49b0: $9a
	ld h, [hl]                                       ; $49b1: $66
	ld h, l                                          ; $49b2: $65
	sbc e                                            ; $49b3: $9b
	ld a, [de]                                       ; $49b4: $1a
	push hl                                          ; $49b5: $e5
	adc h                                            ; $49b6: $8c
	ld [hl], e                                       ; $49b7: $73
	and [hl]                                         ; $49b8: $a6
	reti                                             ; $49b9: $d9


	ld d, e                                          ; $49ba: $53
	db $ec                                           ; $49bb: $ec
	ld l, c                                          ; $49bc: $69
	or [hl]                                          ; $49bd: $b6
	inc [hl]                                         ; $49be: $34
	sbc e                                            ; $49bf: $9b
	jp c, $850d                                      ; $49c0: $da $0d $85

	adc $3d                                          ; $49c3: $ce $3d
	and $1a                                          ; $49c5: $e6 $1a
	ld [hl], a                                       ; $49c7: $77
	adc d                                            ; $49c8: $8a
	ccf                                              ; $49c9: $3f
	ld b, [hl]                                       ; $49ca: $46
	sub b                                            ; $49cb: $90
	sbc a                                            ; $49cc: $9f
	scf                                              ; $49cd: $37
	ld c, a                                          ; $49ce: $4f
	db $d3                                           ; $49cf: $d3
	cpl                                              ; $49d0: $2f
	ld b, e                                          ; $49d1: $43
	cp a                                             ; $49d2: $bf
	ld hl, $31df                                     ; $49d3: $21 $df $31
	rst SubAFromDE                                          ; $49d6: $df
	ld b, c                                          ; $49d7: $41
	rst $38                                          ; $49d8: $ff
	ld c, c                                          ; $49d9: $49
	rst $38                                          ; $49da: $ff
	ldh [$c1], a                                     ; $49db: $e0 $c1
	add b                                            ; $49dd: $80
	set 7, b                                         ; $49de: $cb $f8
	adc $f0                                          ; $49e0: $ce $f0
	call c, $fe64                                    ; $49e2: $dc $64 $fe
	ld c, h                                          ; $49e5: $4c

jr_063_49e6:
	ldh [$5c], a                                     ; $49e6: $e0 $5c

jr_063_49e8:
	add $fe                                          ; $49e8: $c6 $fe
	jp $8fb0                                         ; $49ea: $c3 $b0 $8f


	nop                                              ; $49ed: $00
	cp $f8                                           ; $49ee: $fe $f8
	ccf                                              ; $49f0: $3f
	ld b, $0f                                        ; $49f1: $06 $0f
	ld bc, $0127                                     ; $49f3: $01 $27 $01
	rra                                              ; $49f6: $1f
	ld de, $88cf                                     ; $49f7: $11 $cf $88
	rst $38                                          ; $49fa: $ff
	cp $ff                                           ; $49fb: $fe $ff
	sbc [hl]                                         ; $49fd: $9e
	inc bc                                           ; $49fe: $03
	rst SubAFromBC                                          ; $49ff: $e7
	ld a, d                                          ; $4a00: $7a
	and [hl]                                         ; $4a01: $a6
	add b                                            ; $4a02: $80
	ret nz                                           ; $4a03: $c0

	jr nz, jr_063_49e6                               ; $4a04: $20 $e0

	jr nz, jr_063_49e8                               ; $4a06: $20 $e0

	sub b                                            ; $4a08: $90
	ld [hl], b                                       ; $4a09: $70
	ret nc                                           ; $4a0a: $d0

	jr nc, @-$36                                     ; $4a0b: $30 $c8

	jr c, @+$6a                                      ; $4a0d: $38 $68

	sbc b                                            ; $4a0f: $98
	ld h, h                                          ; $4a10: $64
	sbc h                                            ; $4a11: $9c
	or h                                             ; $4a12: $b4
	ld c, h                                          ; $4a13: $4c
	or h                                             ; $4a14: $b4
	ld c, h                                          ; $4a15: $4c
	ret nc                                           ; $4a16: $d0

	inc l                                            ; $4a17: $2c
	ld e, d                                          ; $4a18: $5a
	and [hl]                                         ; $4a19: $a6
	ld e, d                                          ; $4a1a: $5a
	and [hl]                                         ; $4a1b: $a6
	ld [$aa96], a                                    ; $4a1c: $ea $96 $aa
	sub $bd                                          ; $4a1f: $d6 $bd
	db $d3                                           ; $4a21: $d3
	adc b                                            ; $4a22: $88
	dec a                                            ; $4a23: $3d
	db $d3                                           ; $4a24: $d3
	dec h                                            ; $4a25: $25
	db $db                                           ; $4a26: $db
	ld h, [hl]                                       ; $4a27: $66
	reti                                             ; $4a28: $d9


jr_063_4a29:
	halt                                             ; $4a29: $76
	ret                                              ; $4a2a: $c9


	halt                                             ; $4a2b: $76
	ret                                              ; $4a2c: $c9


	ld e, e                                          ; $4a2d: $5b
	db $ec                                           ; $4a2e: $ec
	ld e, e                                          ; $4a2f: $5b
	db $ec                                           ; $4a30: $ec
	ld e, d                                          ; $4a31: $5a
	db $ed                                           ; $4a32: $ed
	ld d, d                                          ; $4a33: $52
	db $ed                                           ; $4a34: $ed
	ld [hl], d                                       ; $4a35: $72
	db $ed                                           ; $4a36: $ed
	pop hl                                           ; $4a37: $e1
	ld a, [hl]                                       ; $4a38: $7e
	push hl                                          ; $4a39: $e5
	ld a, e                                          ; $4a3a: $7b
	cp $9a                                           ; $4a3b: $fe $9a
	db $e4                                           ; $4a3d: $e4
	ld a, a                                          ; $4a3e: $7f
	db $e4                                           ; $4a3f: $e4
	ld a, a                                          ; $4a40: $7f
	ldh [c], a                                       ; $4a41: $e2
	ld a, e                                          ; $4a42: $7b
	cp $9c                                           ; $4a43: $fe $9c
	ldh a, [c]                                       ; $4a45: $f2
	ld a, a                                          ; $4a46: $7f
	ld [hl], d                                       ; $4a47: $72
	sbc $ff                                          ; $4a48: $de $ff
	adc b                                            ; $4a4a: $88
	ld h, a                                          ; $4a4b: $67
	db $e3                                           ; $4a4c: $e3
	cp a                                             ; $4a4d: $bf
	sub d                                            ; $4a4e: $92
	ld a, a                                          ; $4a4f: $7f
	ld a, $ff                                        ; $4a50: $3e $ff
	rst SubAFromBC                                          ; $4a52: $e7
	db $fd                                           ; $4a53: $fd
	ret z                                            ; $4a54: $c8

	ld hl, sp+$50                                    ; $4a55: $f8 $50
	ldh a, [$a0]                                     ; $4a57: $f0 $a0
	ldh [$ce], a                                     ; $4a59: $e0 $ce
	or b                                             ; $4a5b: $b0
	sbc l                                            ; $4a5c: $9d
	ret nc                                           ; $4a5d: $d0

	sbc a                                            ; $4a5e: $9f
	push hl                                          ; $4a5f: $e5
	ld h, l                                          ; $4a60: $65
	ret nz                                           ; $4a61: $c0

	cp l                                             ; $4a62: $bd
	jr nc, jr_063_4a29                               ; $4a63: $30 $c4

	ld [$833c], sp                                   ; $4a65: $08 $3c $83
	inc c                                            ; $4a68: $0c
	ldh a, [rIF]                                     ; $4a69: $f0 $0f
	ld [hl-], a                                      ; $4a6b: $32
	dec a                                            ; $4a6c: $3d
	inc b                                            ; $4a6d: $04
	dec bc                                           ; $4a6e: $0b
	nop                                              ; $4a6f: $00
	rlca                                             ; $4a70: $07
	pop hl                                           ; $4a71: $e1
	ld bc, $0099                                     ; $4a72: $01 $99 $00
	inc bc                                           ; $4a75: $03
	ld bc, $0307                                     ; $4a76: $01 $07 $03
	rst $38                                          ; $4a79: $ff
	and $3f                                          ; $4a7a: $e6 $3f
	ld e, $9f                                        ; $4a7c: $1e $9f
	ld b, $8f                                        ; $4a7e: $06 $8f
	ld [bc], a                                       ; $4a80: $02
	adc a                                            ; $4a81: $8f
	ld bc, $738f                                     ; $4a82: $01 $8f $73
	ld a, b                                          ; $4a85: $78
	db $dd                                           ; $4a86: $dd

jr_063_4a87:
	add b                                            ; $4a87: $80
	ld a, a                                          ; $4a88: $7f

jr_063_4a89:
	ld [hl], h                                       ; $4a89: $74
	add b                                            ; $4a8a: $80
	ret nz                                           ; $4a8b: $c0

	ld b, b                                          ; $4a8c: $40
	ret nz                                           ; $4a8d: $c0

	ld b, b                                          ; $4a8e: $40
	and b                                            ; $4a8f: $a0
	ld h, b                                          ; $4a90: $60
	ld h, b                                          ; $4a91: $60
	and b                                            ; $4a92: $a0
	ld h, b                                          ; $4a93: $60
	and b                                            ; $4a94: $a0
	ld d, b                                          ; $4a95: $50
	or b                                             ; $4a96: $b0
	or b                                             ; $4a97: $b0
	ld d, b                                          ; $4a98: $50
	or b                                             ; $4a99: $b0
	ld d, b                                          ; $4a9a: $50
	xor b                                            ; $4a9b: $a8
	ld e, b                                          ; $4a9c: $58
	jr jr_063_4a87                                   ; $4a9d: $18 $e8

	jr jr_063_4a89                                   ; $4a9f: $18 $e8

	inc b                                            ; $4aa1: $04
	db $fc                                           ; $4aa2: $fc
	inc b                                            ; $4aa3: $04
	db $fc                                           ; $4aa4: $fc
	add h                                            ; $4aa5: $84
	db $fc                                           ; $4aa6: $fc
	add b                                            ; $4aa7: $80
	db $fc                                           ; $4aa8: $fc
	add d                                            ; $4aa9: $82
	add e                                            ; $4aaa: $83
	cp $92                                           ; $4aab: $fe $92
	cp $d2                                           ; $4aad: $fe $d2
	cp $c2                                           ; $4aaf: $fe $c2
	cp $e9                                           ; $4ab1: $fe $e9
	cp a                                             ; $4ab3: $bf
	xor c                                            ; $4ab4: $a9
	cp a                                             ; $4ab5: $bf
	xor c                                            ; $4ab6: $a9
	rra                                              ; $4ab7: $1f
	sub c                                            ; $4ab8: $91
	rra                                              ; $4ab9: $1f
	sub l                                            ; $4aba: $95
	cp a                                             ; $4abb: $bf
	sub l                                            ; $4abc: $95
	ccf                                              ; $4abd: $3f
	sub l                                            ; $4abe: $95
	ccf                                              ; $4abf: $3f
	ld d, l                                          ; $4ac0: $55
	ccf                                              ; $4ac1: $3f
	ld [hl], b                                       ; $4ac2: $70
	rra                                              ; $4ac3: $1f
	ld [hl], b                                       ; $4ac4: $70
	rra                                              ; $4ac5: $1f
	ld a, [hl-]                                      ; $4ac6: $3a
	ld l, e                                          ; $4ac7: $6b
	cp $99                                           ; $4ac8: $fe $99
	ld a, [$fa5f]                                    ; $4aca: $fa $5f $fa
	cp a                                             ; $4acd: $bf
	ld [$7b3f], a                                    ; $4ace: $ea $3f $7b
	cp $9d                                           ; $4ad1: $fe $9d
	ld a, a                                          ; $4ad3: $7f
	jp z, $fe7b                                      ; $4ad4: $ca $7b $fe

	sbc c                                            ; $4ad7: $99
	set 7, a                                         ; $4ad8: $cb $ff
	db $db                                           ; $4ada: $db
	ld a, a                                          ; $4adb: $7f
	rst SubAFromDE                                          ; $4adc: $df
	rst $38                                          ; $4add: $ff
	reti                                             ; $4ade: $d9


	add b                                            ; $4adf: $80
	ld a, e                                          ; $4ae0: $7b
	and e                                            ; $4ae1: $a3
	ld a, e                                          ; $4ae2: $7b
	cp $d9                                           ; $4ae3: $fe $d9
	ret nz                                           ; $4ae5: $c0

	db $dd                                           ; $4ae6: $dd
	add b                                            ; $4ae7: $80
	ei                                               ; $4ae8: $fb
	dec h                                            ; $4ae9: $25
	nop                                              ; $4aea: $00
	rst SubAFromDE                                          ; $4aeb: $df
	sbc c                                            ; $4aec: $99
	sub e                                            ; $4aed: $93
	call z, $9199                                    ; $4aee: $cc $99 $91
	adc b                                            ; $4af1: $88
	adc b                                            ; $4af2: $88
	ld de, $1199                                     ; $4af3: $11 $99 $11
	adc b                                            ; $4af6: $88
	adc b                                            ; $4af7: $88
	ld [hl+], a                                      ; $4af8: $22
	sub c                                            ; $4af9: $91
	ld a, e                                          ; $4afa: $7b
	ei                                               ; $4afb: $fb
	sbc [hl]                                         ; $4afc: $9e
	inc sp                                           ; $4afd: $33
	ld [hl], a                                       ; $4afe: $77
	ei                                               ; $4aff: $fb
	sbc [hl]                                         ; $4b00: $9e
	ld [hl+], a                                      ; $4b01: $22
	ld [hl], e                                       ; $4b02: $73
	pop af                                           ; $4b03: $f1
	rst SubAFromDE                                          ; $4b04: $df
	sbc c                                            ; $4b05: $99
	sbc b                                            ; $4b06: $98
	ld de, $2222                                     ; $4b07: $11 $22 $22
	sbc c                                            ; $4b0a: $99
	and d                                            ; $4b0b: $a2
	ld [hl+], a                                      ; $4b0c: $22
	sbc c                                            ; $4b0d: $99
	jp c, $8001                                      ; $4b0e: $da $01 $80

	db $e4                                           ; $4b11: $e4
	rra                                              ; $4b12: $1f
	ld h, h                                          ; $4b13: $64
	sbc a                                            ; $4b14: $9f
	ld h, [hl]                                       ; $4b15: $66
	sbc a                                            ; $4b16: $9f
	and [hl]                                         ; $4b17: $a6
	rst SubAFromDE                                          ; $4b18: $df
	ld b, e                                          ; $4b19: $43
	ld a, a                                          ; $4b1a: $7f
	ld b, e                                          ; $4b1b: $43
	ld a, a                                          ; $4b1c: $7f
	and e                                            ; $4b1d: $a3
	cp [hl]                                          ; $4b1e: $be
	sub c                                            ; $4b1f: $91
	sbc a                                            ; $4b20: $9f
	adc c                                            ; $4b21: $89
	adc a                                            ; $4b22: $8f
	ld c, l                                          ; $4b23: $4d
	ld c, a                                          ; $4b24: $4f
	rrca                                             ; $4b25: $0f
	rrca                                             ; $4b26: $0f
	dec bc                                           ; $4b27: $0b
	rrca                                             ; $4b28: $0f
	ld [de], a                                       ; $4b29: $12
	rra                                              ; $4b2a: $1f
	ld [de], a                                       ; $4b2b: $12
	rra                                              ; $4b2c: $1f
	ld b, $1f                                        ; $4b2d: $06 $1f
	ld [hl], $97                                     ; $4b2f: $36 $97
	cpl                                              ; $4b31: $2f
	inc h                                            ; $4b32: $24
	ccf                                              ; $4b33: $3f
	inc b                                            ; $4b34: $04
	ccf                                              ; $4b35: $3f
	ld l, l                                          ; $4b36: $6d
	ld e, a                                          ; $4b37: $5f
	ld l, c                                          ; $4b38: $69
	ld a, e                                          ; $4b39: $7b
	cp $80                                           ; $4b3a: $fe $80
	add hl, sp                                       ; $4b3c: $39
	ld c, a                                          ; $4b3d: $4f
	ei                                               ; $4b3e: $fb
	adc a                                            ; $4b3f: $8f
	db $dd                                           ; $4b40: $dd
	xor a                                            ; $4b41: $af
	db $db                                           ; $4b42: $db
	xor l                                            ; $4b43: $ad
	sub a                                            ; $4b44: $97
	push af                                          ; $4b45: $f5
	sub h                                            ; $4b46: $94
	rst FarCall                                          ; $4b47: $f7
	and d                                            ; $4b48: $a2
	db $e3                                           ; $4b49: $e3
	and d                                            ; $4b4a: $a2
	db $e3                                           ; $4b4b: $e3
	db $fd                                           ; $4b4c: $fd
	cp $c5                                           ; $4b4d: $fe $c5
	add $95                                          ; $4b4f: $c6 $95
	sub [hl]                                         ; $4b51: $96
	adc d                                            ; $4b52: $8a
	db $fd                                           ; $4b53: $fd
	call nz, $c4ff                                   ; $4b54: $c4 $ff $c4
	rst $38                                          ; $4b57: $ff
	ldh [c], a                                       ; $4b58: $e2
	cp a                                             ; $4b59: $bf
	di                                               ; $4b5a: $f3
	add b                                            ; $4b5b: $80
	sbc a                                            ; $4b5c: $9f
	ld sp, hl                                        ; $4b5d: $f9
	cp a                                             ; $4b5e: $bf
	db $fd                                           ; $4b5f: $fd
	rst JumpTable                                          ; $4b60: $c7
	rst $38                                          ; $4b61: $ff
	dec sp                                           ; $4b62: $3b
	rst FarCall                                          ; $4b63: $f7
	ld h, h                                          ; $4b64: $64
	rst $38                                          ; $4b65: $ff
	cp [hl]                                          ; $4b66: $be
	and e                                            ; $4b67: $a3
	ld [hl], $8b                                     ; $4b68: $36 $8b
	add b                                            ; $4b6a: $80
	call z, $c080                                    ; $4b6b: $cc $80 $c0
	ret nz                                           ; $4b6e: $c0

	pop hl                                           ; $4b6f: $e1
	ret nz                                           ; $4b70: $c0

	and b                                            ; $4b71: $a0
	ldh [$b0], a                                     ; $4b72: $e0 $b0
	ldh [$98], a                                     ; $4b74: $e0 $98
	ldh a, [rAUD3LEVEL]                              ; $4b76: $f0 $1c
	ld hl, sp+$36                                    ; $4b78: $f8 $36
	call c, $b780                                    ; $4b7a: $dc $80 $b7
	ld e, [hl]                                       ; $4b7d: $5e
	sub a                                            ; $4b7e: $97
	ld e, a                                          ; $4b7f: $5f
	ld d, a                                          ; $4b80: $57
	rra                                              ; $4b81: $1f
	ld d, l                                          ; $4b82: $55
	rra                                              ; $4b83: $1f
	ld [hl], $1f                                     ; $4b84: $36 $1f
	ld d, $3f                                        ; $4b86: $16 $3f
	dec l                                            ; $4b88: $2d
	ccf                                              ; $4b89: $3f
	ld l, l                                          ; $4b8a: $6d
	dec a                                            ; $4b8b: $3d
	dec l                                            ; $4b8c: $2d
	ld a, l                                          ; $4b8d: $7d
	dec l                                            ; $4b8e: $2d
	ld a, l                                          ; $4b8f: $7d
	ld l, h                                          ; $4b90: $6c
	ld a, l                                          ; $4b91: $7d
	ld d, a                                          ; $4b92: $57
	ld a, a                                          ; $4b93: $7f
	xor h                                            ; $4b94: $ac
	rst SubAFromDE                                          ; $4b95: $df
	add $ff                                          ; $4b96: $c6 $ff
	ld h, a                                          ; $4b98: $67
	db $fd                                           ; $4b99: $fd
	ld [hl], e                                       ; $4b9a: $73
	sub e                                            ; $4b9b: $93
	rst SubAFromDE                                          ; $4b9c: $df
	dec a                                            ; $4b9d: $3d
	rst AddAOntoHL                                          ; $4b9e: $ef
	cp a                                             ; $4b9f: $bf
	db $e3                                           ; $4ba0: $e3
	rst SubAFromDE                                          ; $4ba1: $df
	ld [hl], b                                       ; $4ba2: $70
	rst $38                                          ; $4ba3: $ff
	inc sp                                           ; $4ba4: $33
	rst $38                                          ; $4ba5: $ff
	adc c                                            ; $4ba6: $89
	rst $38                                          ; $4ba7: $ff
	cp h                                             ; $4ba8: $bc
	cp a                                             ; $4ba9: $bf
	ld [hl], $70                                     ; $4baa: $36 $70
	ld hl, sp-$08                                    ; $4bac: $f8 $f8
	sub d                                            ; $4bae: $92
	add b                                            ; $4baf: $80
	ldh a, [rLCDC]                                   ; $4bb0: $f0 $40
	ld [hl-], a                                      ; $4bb2: $32
	rst $38                                          ; $4bb3: $ff
	add hl, sp                                       ; $4bb4: $39
	rst AddAOntoHL                                          ; $4bb5: $ef
	inc a                                            ; $4bb6: $3c
	rst AddAOntoHL                                          ; $4bb7: $ef
	sbc a                                            ; $4bb8: $9f
	di                                               ; $4bb9: $f3
	rst SubAFromDE                                          ; $4bba: $df
	ld a, h                                          ; $4bbb: $7c
	ld a, e                                          ; $4bbc: $7b
	db $e4                                           ; $4bbd: $e4
	sub a                                            ; $4bbe: $97
	ld hl, sp-$21                                    ; $4bbf: $f8 $df
	sbc [hl]                                         ; $4bc1: $9e
	rst $38                                          ; $4bc2: $ff

jr_063_4bc3:
	ld a, e                                          ; $4bc3: $7b
	dec bc                                           ; $4bc4: $0b
	ld e, b                                          ; $4bc5: $58
	db $e3                                           ; $4bc6: $e3
	cp h                                             ; $4bc7: $bc
	ccf                                              ; $4bc8: $3f
	inc bc                                           ; $4bc9: $03
	rlca                                             ; $4bca: $07
	rrca                                             ; $4bcb: $0f
	ld c, $80                                        ; $4bcc: $0e $80
	ld bc, $011f                                     ; $4bce: $01 $1f $01
	rra                                              ; $4bd1: $1f
	inc bc                                           ; $4bd2: $03
	ccf                                              ; $4bd3: $3f
	rlca                                             ; $4bd4: $07
	ld l, a                                          ; $4bd5: $6f
	rra                                              ; $4bd6: $1f
	cp a                                             ; $4bd7: $bf
	ld a, a                                          ; $4bd8: $7f
	cp $ff                                           ; $4bd9: $fe $ff
	rst $38                                          ; $4bdb: $ff
	add $fb                                          ; $4bdc: $c6 $fb

jr_063_4bde:
	ld b, $fc                                        ; $4bde: $06 $fc
	rlca                                             ; $4be0: $07
	or $0d                                           ; $4be1: $f6 $0d
	ei                                               ; $4be3: $fb
	inc c                                            ; $4be4: $0c
	db $fc                                           ; $4be5: $fc
	ld a, [de]                                       ; $4be6: $1a
	ldh a, [c]                                       ; $4be7: $f2
	jr c, jr_063_4bc3                                ; $4be8: $38 $d9

	ld d, b                                          ; $4bea: $50
	sbc h                                            ; $4beb: $9c
	sub c                                            ; $4bec: $91
	add b                                            ; $4bed: $80
	ld hl, sp-$0b                                    ; $4bee: $f8 $f5
	add hl, hl                                       ; $4bf0: $29
	rst $38                                          ; $4bf1: $ff
	add hl, hl                                       ; $4bf2: $29
	rst $38                                          ; $4bf3: $ff
	xor c                                            ; $4bf4: $a9
	rst $38                                          ; $4bf5: $ff
	db $eb                                           ; $4bf6: $eb
	rst $38                                          ; $4bf7: $ff
	ei                                               ; $4bf8: $fb
	rst $38                                          ; $4bf9: $ff
	rst SubAFromDE                                          ; $4bfa: $df
	ld a, a                                          ; $4bfb: $7f
	push de                                          ; $4bfc: $d5
	ld a, a                                          ; $4bfd: $7f
	push af                                          ; $4bfe: $f5
	ld e, a                                          ; $4bff: $5f
	pop af                                           ; $4c00: $f1
	ld e, a                                          ; $4c01: $5f
	pop de                                           ; $4c02: $d1
	ld a, a                                          ; $4c03: $7f
	pop de                                           ; $4c04: $d1
	ld a, a                                          ; $4c05: $7f
	push hl                                          ; $4c06: $e5
	ld a, e                                          ; $4c07: $7b
	push af                                          ; $4c08: $f5
	ld l, e                                          ; $4c09: $6b
	ld d, a                                          ; $4c0a: $57
	db $eb                                           ; $4c0b: $eb
	db $eb                                           ; $4c0c: $eb
	add b                                            ; $4c0d: $80
	rst SubAFromHL                                          ; $4c0e: $d7
	db $eb                                           ; $4c0f: $eb
	rst SubAFromHL                                          ; $4c10: $d7
	sub a                                            ; $4c11: $97
	rst AddAOntoHL                                          ; $4c12: $ef
	rst SubAFromHL                                          ; $4c13: $d7
	xor a                                            ; $4c14: $af
	call z, $29bf                                    ; $4c15: $cc $bf $29
	rst SubAFromDE                                          ; $4c18: $df
	or [hl]                                          ; $4c19: $b6
	ld e, d                                          ; $4c1a: $5a
	sbc e                                            ; $4c1b: $9b
	ld [hl], a                                       ; $4c1c: $77
	ld e, h                                          ; $4c1d: $5c
	or h                                             ; $4c1e: $b4
	inc l                                            ; $4c1f: $2c
	or h                                             ; $4c20: $b4
	ld [hl], l                                       ; $4c21: $75
	dec l                                            ; $4c22: $2d
	dec d                                            ; $4c23: $15
	ld l, l                                          ; $4c24: $6d
	ret c                                            ; $4c25: $d8

	ld l, b                                          ; $4c26: $68
	ld e, b                                          ; $4c27: $58
	add sp, $7b                                      ; $4c28: $e8 $7b
	bit 7, h                                         ; $4c2a: $cb $7c
	call z, Call_063_689b                            ; $4c2c: $cc $9b $68
	ret c                                            ; $4c2f: $d8

	add sp, -$28                                     ; $4c30: $e8 $d8
	inc bc                                           ; $4c32: $03
	nop                                              ; $4c33: $00
	ld c, a                                          ; $4c34: $4f
	nop                                              ; $4c35: $00
	sub a                                            ; $4c36: $97
	inc bc                                           ; $4c37: $03
	rst $38                                          ; $4c38: $ff

jr_063_4c39:
	inc a                                            ; $4c39: $3c
	rst FarCall                                          ; $4c3a: $f7
	and $a7                                          ; $4c3b: $e6 $a7
	ld [hl], $87                                     ; $4c3d: $36 $87
	ld h, e                                          ; $4c3f: $63
	nop                                              ; $4c40: $00
	ld c, e                                          ; $4c41: $4b
	jr nz, jr_063_4bde                               ; $4c42: $20 $9a

	jr nc, @+$01                                     ; $4c44: $30 $ff

	adc e                                            ; $4c46: $8b
	rst $38                                          ; $4c47: $ff
	ld bc, $2023                                     ; $4c48: $01 $23 $20
	sbc [hl]                                         ; $4c4b: $9e
	adc b                                            ; $4c4c: $88
	ld a, e                                          ; $4c4d: $7b
	ld e, $9b                                        ; $4c4e: $1e $9b
	sbc h                                            ; $4c50: $9c
	dec hl                                           ; $4c51: $2b
	ld e, e                                          ; $4c52: $5b
	di                                               ; $4c53: $f3
	cp h                                             ; $4c54: $bc
	add hl, sp                                       ; $4c55: $39
	ld bc, $0f05                                     ; $4c56: $01 $05 $0f
	ld c, $9e                                        ; $4c59: $0e $9e
	ld bc, $8003                                     ; $4c5b: $01 $03 $80
	ld e, a                                          ; $4c5e: $5f
	add b                                            ; $4c5f: $80
	sub h                                            ; $4c60: $94
	sbc a                                            ; $4c61: $9f
	db $fd                                           ; $4c62: $fd
	or a                                             ; $4c63: $b7
	rst $38                                          ; $4c64: $ff
	jp $00ff                                         ; $4c65: $c3 $ff $00


	rst $38                                          ; $4c68: $ff
	inc a                                            ; $4c69: $3c
	rst SubAFromBC                                          ; $4c6a: $e7
	or $5f                                           ; $4c6b: $f6 $5f
	add b                                            ; $4c6d: $80
	ld [bc], a                                       ; $4c6e: $02
	add b                                            ; $4c6f: $80
	ld l, a                                          ; $4c70: $6f
	ld h, b                                          ; $4c71: $60
	sbc [hl]                                         ; $4c72: $9e
	sbc $63                                          ; $4c73: $de $63
	ld h, b                                          ; $4c75: $60
	ld a, a                                          ; $4c76: $7f
	ld a, h                                          ; $4c77: $7c
	cpl                                              ; $4c78: $2f
	ld h, b                                          ; $4c79: $60
	sbc h                                            ; $4c7a: $9c
	ldh a, [rIE]                                     ; $4c7b: $f0 $ff
	inc a                                            ; $4c7d: $3c
	ld a, e                                          ; $4c7e: $7b
	ld b, h                                          ; $4c7f: $44
	ld a, a                                          ; $4c80: $7f
	and d                                            ; $4c81: $a2
	sbc e                                            ; $4c82: $9b
	ld a, b                                          ; $4c83: $78
	rst GetHLinHL                                          ; $4c84: $cf
	rst AddAOntoHL                                          ; $4c85: $ef
	di                                               ; $4c86: $f3
	cp h                                             ; $4c87: $bc
	ccf                                              ; $4c88: $3f
	inc bc                                           ; $4c89: $03
	dec b                                            ; $4c8a: $05
	dec c                                            ; $4c8b: $0d
	inc c                                            ; $4c8c: $0c
	inc bc                                           ; $4c8d: $03
	ld h, b                                          ; $4c8e: $60
	dec sp                                           ; $4c8f: $3b
	ld h, b                                          ; $4c90: $60
	sbc d                                            ; $4c91: $9a
	inc c                                            ; $4c92: $0c
	rst $38                                          ; $4c93: $ff

jr_063_4c94:
	or d                                             ; $4c94: $b2
	rst FarCall                                          ; $4c95: $f7
	db $e4                                           ; $4c96: $e4
	inc bc                                           ; $4c97: $03
	ld h, b                                          ; $4c98: $60
	rra                                              ; $4c99: $1f
	ld h, b                                          ; $4c9a: $60
	ld a, l                                          ; $4c9b: $7d

Call_063_4c9c:
	ldh [$9e], a                                     ; $4c9c: $e0 $9e
	ld bc, $6017                                     ; $4c9e: $01 $17 $60
	ld a, [hl]                                       ; $4ca1: $7e
	ld a, h                                          ; $4ca2: $7c
	sbc l                                            ; $4ca3: $9d
	rst GetHLinHL                                          ; $4ca4: $cf
	call z, $e065                                    ; $4ca5: $cc $65 $e0
	ld a, a                                          ; $4ca8: $7f
	ld h, b                                          ; $4ca9: $60
	sbc h                                            ; $4caa: $9c
	dec e                                            ; $4cab: $1d
	ld bc, $111b                                     ; $4cac: $01 $1b $11
	ldh [$9a], a                                     ; $4caf: $e0 $9a
	ld c, b                                          ; $4cb1: $48
	nop                                              ; $4cb2: $00
	ld a, h                                          ; $4cb3: $7c
	jr c, jr_063_4cce                                ; $4cb4: $38 $18

	cp [hl]                                          ; $4cb6: $be
	jr c, jr_063_4c39                                ; $4cb7: $38 $80

	ldh [c], a                                       ; $4cb9: $e2
	sub e                                            ; $4cba: $93
	add c                                            ; $4cbb: $81
	ei                                               ; $4cbc: $fb
	rst SubAFromBC                                          ; $4cbd: $e7
	rst $38                                          ; $4cbe: $ff
	cp $ff                                           ; $4cbf: $fe $ff
	add sp, -$05                                     ; $4cc1: $e8 $fb
	ret z                                            ; $4cc3: $c8

	ld sp, hl                                        ; $4cc4: $f9
	adc b                                            ; $4cc5: $88
	ei                                               ; $4cc6: $fb
	cp a                                             ; $4cc7: $bf
	ld a, a                                          ; $4cc8: $7f
	rst $38                                          ; $4cc9: $ff
	sbc e                                            ; $4cca: $9b
	jr c, jr_063_4c94                                ; $4ccb: $38 $c7

	rst JumpTable                                          ; $4ccd: $c7

jr_063_4cce:
	nop                                              ; $4cce: $00
	cp a                                             ; $4ccf: $bf
	ld c, b                                          ; $4cd0: $48
	ld a, h                                          ; $4cd1: $7c
	sbc l                                            ; $4cd2: $9d
	jr c, jr_063_4d11                                ; $4cd3: $38 $3c

	ld a, e                                          ; $4cd5: $7b
	sbc $27                                          ; $4cd6: $de $27
	ldh [$97], a                                     ; $4cd8: $e0 $97
	ld c, h                                          ; $4cda: $4c
	nop                                              ; $4cdb: $00
	ld a, [hl]                                       ; $4cdc: $7e
	inc a                                            ; $4cdd: $3c
	ld a, [hl]                                       ; $4cde: $7e
	inc a                                            ; $4cdf: $3c
	jr jr_063_4cf2                                   ; $4ce0: $18 $10

	rrca                                             ; $4ce2: $0f
	ldh [$7f], a                                     ; $4ce3: $e0 $7f
	rst SubAFromDE                                          ; $4ce5: $df
	daa                                              ; $4ce6: $27
	ldh [$80], a                                     ; $4ce7: $e0 $80
	add d                                            ; $4ce9: $82
	add a                                            ; $4cea: $87
	nop                                              ; $4ceb: $00
	ld bc, $0202                                     ; $4cec: $01 $02 $02
	dec b                                            ; $4cef: $05
	inc b                                            ; $4cf0: $04
	ld a, [bc]                                       ; $4cf1: $0a

jr_063_4cf2:
	ld a, [bc]                                       ; $4cf2: $0a
	nop                                              ; $4cf3: $00
	ld bc, $0303                                     ; $4cf4: $01 $03 $03
	ld b, $07                                        ; $4cf7: $06 $07
	dec c                                            ; $4cf9: $0d
	dec c                                            ; $4cfa: $0d
	dec d                                            ; $4cfb: $15
	dec d                                            ; $4cfc: $15
	rla                                              ; $4cfd: $17
	dec de                                           ; $4cfe: $1b
	dec bc                                           ; $4cff: $0b
	cpl                                              ; $4d00: $2f
	ld h, $26                                        ; $4d01: $26 $26
	sbc $1b                                          ; $4d03: $de $1b
	rst SubAFromDE                                          ; $4d05: $df
	rla                                              ; $4d06: $17
	adc h                                            ; $4d07: $8c
	scf                                              ; $4d08: $37
	ccf                                              ; $4d09: $3f
	ccf                                              ; $4d0a: $3f
	add hl, hl                                       ; $4d0b: $29
	dec [hl]                                         ; $4d0c: $35
	db $dd                                           ; $4d0d: $dd
	scf                                              ; $4d0e: $37
	daa                                              ; $4d0f: $27
	dec h                                            ; $4d10: $25

jr_063_4d11:
	scf                                              ; $4d11: $37
	ld [hl], $3e                                     ; $4d12: $36 $3e
	ld a, $ee                                        ; $4d14: $3e $ee
	inc a                                            ; $4d16: $3c
	inc a                                            ; $4d17: $3c
	ld a, $2e                                        ; $4d18: $3e $2e
	cpl                                              ; $4d1a: $2f
	db $dd                                           ; $4d1b: $dd
	dec [hl]                                         ; $4d1c: $35
	sbc e                                            ; $4d1d: $9b
	cpl                                              ; $4d1e: $2f
	dec hl                                           ; $4d1f: $2b
	cpl                                              ; $4d20: $2f
	ccf                                              ; $4d21: $3f
	db $dd                                           ; $4d22: $dd
	cpl                                              ; $4d23: $2f
	rst SubAFromDE                                          ; $4d24: $df
	dec [hl]                                         ; $4d25: $35
	rst SubAFromDE                                          ; $4d26: $df
	ld sp, $3f9b                                     ; $4d27: $31 $9b $3f
	dec sp                                           ; $4d2a: $3b
	ld a, [de]                                       ; $4d2b: $1a
	ld [de], a                                       ; $4d2c: $12
	db $dd                                           ; $4d2d: $dd
	ld d, $9c                                        ; $4d2e: $16 $9c
	ld sp, $1535                                     ; $4d30: $31 $35 $15
	call c, $de1d                                    ; $4d33: $dc $1d $de

Call_063_4d36:
	ld d, $df                                        ; $4d36: $16 $df
	ld e, $de                                        ; $4d38: $1e $de
	ld a, [de]                                       ; $4d3a: $1a
	reti                                             ; $4d3b: $d9


	dec e                                            ; $4d3c: $1d
	rst SubAFromDE                                          ; $4d3d: $df
	add hl, de                                       ; $4d3e: $19
	rst SubAFromDE                                          ; $4d3f: $df
	inc de                                           ; $4d40: $13
	sbc e                                            ; $4d41: $9b
	rla                                              ; $4d42: $17
	rra                                              ; $4d43: $1f
	add hl, de                                       ; $4d44: $19
	rla                                              ; $4d45: $17
	jp c, $8e1f                                      ; $4d46: $da $1f $8e

	add hl, de                                       ; $4d49: $19
	rrca                                             ; $4d4a: $0f
	dec l                                            ; $4d4b: $2d
	ccf                                              ; $4d4c: $3f
	ld e, $5b                                        ; $4d4d: $1e $5b
	ld a, e                                          ; $4d4f: $7b
	ld a, [hl]                                       ; $4d50: $7e
	ld [hl], l                                       ; $4d51: $75
	ld de, $2333                                     ; $4d52: $11 $33 $23
	inc hl                                           ; $4d55: $23
	ld h, [hl]                                       ; $4d56: $66
	ld b, [hl]                                       ; $4d57: $46
	ld b, a                                          ; $4d58: $47
	ld c, a                                          ; $4d59: $4f
	db $ec                                           ; $4d5a: $ec
	sbc h                                            ; $4d5b: $9c
	inc bc                                           ; $4d5c: $03
	inc c                                            ; $4d5d: $0c
	ccf                                              ; $4d5e: $3f
	ld l, a                                          ; $4d5f: $6f
	ld hl, sp-$80                                    ; $4d60: $f8 $80
	rrca                                             ; $4d62: $0f
	ccf                                              ; $4d63: $3f
	pop bc                                           ; $4d64: $c1
	inc c                                            ; $4d65: $0c
	cp e                                             ; $4d66: $bb
	ld a, h                                          ; $4d67: $7c
	ld d, b                                          ; $4d68: $50
	and h                                            ; $4d69: $a4
	ld c, e                                          ; $4d6a: $4b
	sub [hl]                                         ; $4d6b: $96
	rst $38                                          ; $4d6c: $ff
	rst $38                                          ; $4d6d: $ff
	ld [hl], a                                       ; $4d6e: $77
	call z, Call_063_64b0                            ; $4d6f: $cc $b0 $64
	res 2, a                                         ; $4d72: $cb $97
	xor c                                            ; $4d74: $a9
	ld [hl], a                                       ; $4d75: $77
	xor d                                            ; $4d76: $aa
	ld e, [hl]                                       ; $4d77: $5e
	or l                                             ; $4d78: $b5
	ld [hl], l                                       ; $4d79: $75
	db $ed                                           ; $4d7a: $ed
	db $ed                                           ; $4d7b: $ed
	xor [hl]                                         ; $4d7c: $ae
	ld a, b                                          ; $4d7d: $78
	or l                                             ; $4d7e: $b5
	ld h, c                                          ; $4d7f: $61
	jp z, $8a9c                                      ; $4d80: $ca $9c $8a

	ld [de], a                                       ; $4d83: $12
	ld [de], a                                       ; $4d84: $12
	ldh [$c1], a                                     ; $4d85: $e0 $c1
	rst SubAFromDE                                          ; $4d87: $df
	jp nc, $d5de                                     ; $4d88: $d2 $de $d5

	sbc d                                            ; $4d8b: $9a
	ld d, a                                          ; $4d8c: $57
	ld d, [hl]                                       ; $4d8d: $56
	ld d, [hl]                                       ; $4d8e: $56
	rst $38                                          ; $4d8f: $ff
	rst $38                                          ; $4d90: $ff
	sbc $fe                                          ; $4d91: $de $fe
	sub d                                            ; $4d93: $92
	db $fc                                           ; $4d94: $fc
	db $fd                                           ; $4d95: $fd
	db $fd                                           ; $4d96: $fd
	ld e, l                                          ; $4d97: $5d
	ld e, l                                          ; $4d98: $5d
	ld e, c                                          ; $4d99: $59
	ld e, e                                          ; $4d9a: $5b
	ld d, e                                          ; $4d9b: $53
	rst SubAFromHL                                          ; $4d9c: $d7
	rst FarCall                                          ; $4d9d: $f7
	rst $38                                          ; $4d9e: $ff
	ei                                               ; $4d9f: $fb
	ei                                               ; $4da0: $fb
	sbc $ff                                          ; $4da1: $de $ff
	ld a, a                                          ; $4da3: $7f
	rst AddAOntoHL                                          ; $4da4: $ef
	sbc [hl]                                         ; $4da5: $9e
	cp b                                             ; $4da6: $b8
	pop af                                           ; $4da7: $f1
	sub d                                            ; $4da8: $92
	jr nz, @+$1a                                     ; $4da9: $20 $18

	db $f4                                           ; $4dab: $f4
	ld a, [hl+]                                      ; $4dac: $2a
	dec d                                            ; $4dad: $15
	or $3e                                           ; $4dae: $f6 $3e
	rra                                              ; $4db0: $1f
	jr nz, jr_063_4dcb                               ; $4db1: $20 $18

	db $fc                                           ; $4db3: $fc
	ld a, $1f                                        ; $4db4: $3e $1f
	sbc $ff                                          ; $4db6: $de $ff
	sub a                                            ; $4db8: $97
	ld hl, sp-$40                                    ; $4db9: $f8 $c0
	nop                                              ; $4dbb: $00
	rlca                                             ; $4dbc: $07
	inc a                                            ; $4dbd: $3c
	db $e3                                           ; $4dbe: $e3
	sbc a                                            ; $4dbf: $9f
	ld a, a                                          ; $4dc0: $7f
	ld [hl], a                                       ; $4dc1: $77
	ld hl, sp-$75                                    ; $4dc2: $f8 $8b
	ccf                                              ; $4dc4: $3f
	db $fc                                           ; $4dc5: $fc
	ldh [$80], a                                     ; $4dc6: $e0 $80
	rst FarCall                                          ; $4dc8: $f7
	rst FarCall                                          ; $4dc9: $f7
	or [hl]                                          ; $4dca: $b6

jr_063_4dcb:
	cp d                                             ; $4dcb: $ba
	ei                                               ; $4dcc: $fb
	db $eb                                           ; $4dcd: $eb
	xor l                                            ; $4dce: $ad
	and l                                            ; $4dcf: $a5
	ld [$4908], sp                                   ; $4dd0: $08 $08 $49
	ld b, l                                          ; $4dd3: $45
	inc b                                            ; $4dd4: $04
	inc d                                            ; $4dd5: $14
	ld d, d                                          ; $4dd6: $52
	ld e, d                                          ; $4dd7: $5a
	ldh [$c1], a                                     ; $4dd8: $e0 $c1
	add e                                            ; $4dda: $83
	rst FarCall                                          ; $4ddb: $f7
	rst AddAOntoHL                                          ; $4ddc: $ef
	rst $38                                          ; $4ddd: $ff
	ld [hl], e                                       ; $4dde: $73
	ld a, e                                          ; $4ddf: $7b
	ei                                               ; $4de0: $fb
	db $fd                                           ; $4de1: $fd
	rst $38                                          ; $4de2: $ff
	ld l, a                                          ; $4de3: $6f
	ld [hl], l                                       ; $4de4: $75
	ld [hl], h                                       ; $4de5: $74
	cp $fe                                           ; $4de6: $fe $fe
	sbc $df                                          ; $4de8: $de $df
	set 5, a                                         ; $4dea: $cb $ef
	rst SubAFromBC                                          ; $4dec: $e7
	di                                               ; $4ded: $f3
	pop af                                           ; $4dee: $f1
	ldh [$e0], a                                     ; $4def: $e0 $e0
	ret nz                                           ; $4df1: $c0

	ret nz                                           ; $4df2: $c0

	adc a                                            ; $4df3: $8f
	add l                                            ; $4df4: $85
	add d                                            ; $4df5: $82
	ld bc, $99eb                                     ; $4df6: $01 $eb $99
	ccf                                              ; $4df9: $3f
	jp $411c                                         ; $4dfa: $c3 $1c $41


	ld e, $38                                        ; $4dfd: $1e $38
	ld a, e                                          ; $4dff: $7b
	ld hl, sp-$24                                    ; $4e00: $f8 $dc
	rst $38                                          ; $4e02: $ff
	sub a                                            ; $4e03: $97
	rlca                                             ; $4e04: $07
	nop                                              ; $4e05: $00
	nop                                              ; $4e06: $00
	rst $38                                          ; $4e07: $ff
	ld bc, $fffc                                     ; $4e08: $01 $fc $ff
	ld a, e                                          ; $4e0b: $7b
	ld [hl], a                                       ; $4e0c: $77
	ld hl, sp-$75                                    ; $4e0d: $f8 $8b
	rst $38                                          ; $4e0f: $ff
	inc bc                                           ; $4e10: $03
	nop                                              ; $4e11: $00
	add h                                            ; $4e12: $84
	ld l, l                                          ; $4e13: $6d
	or l                                             ; $4e14: $b5
	or [hl]                                          ; $4e15: $b6
	jp c, $254b                                      ; $4e16: $da $4b $25

	or h                                             ; $4e19: $b4
	ret                                              ; $4e1a: $c9


	sub d                                            ; $4e1b: $92
	ld c, d                                          ; $4e1c: $4a
	ld c, c                                          ; $4e1d: $49
	dec h                                            ; $4e1e: $25
	or h                                             ; $4e1f: $b4
	jp c, Jump_063_7f5b                              ; $4e20: $da $5b $7f

	ldh [$c1], a                                     ; $4e23: $e0 $c1
	sub e                                            ; $4e25: $93
	adc b                                            ; $4e26: $88
	db $d3                                           ; $4e27: $d3
	push hl                                          ; $4e28: $e5
	cp b                                             ; $4e29: $b8
	adc $de                                          ; $4e2a: $ce $de
	rst $38                                          ; $4e2c: $ff
	cp a                                             ; $4e2d: $bf

jr_063_4e2e:
	db $fd                                           ; $4e2e: $fd
	ld a, a                                          ; $4e2f: $7f

jr_063_4e30:
	ccf                                              ; $4e30: $3f
	jr jr_063_4e30                                   ; $4e31: $18 $fd

	sub a                                            ; $4e33: $97
	add b                                            ; $4e34: $80
	rst $38                                          ; $4e35: $ff
	rst SubAFromDE                                          ; $4e36: $df
	ldh [$e0], a                                     ; $4e37: $e0 $e0
	ld [hl], b                                       ; $4e39: $70
	ld [bc], a                                       ; $4e3a: $02
	rlca                                             ; $4e3b: $07
	sbc $80                                          ; $4e3c: $de $80
	sbc l                                            ; $4e3e: $9d
	ld b, b                                          ; $4e3f: $40
	jr nz, jr_063_4e2e                               ; $4e40: $20 $ec

	sbc c                                            ; $4e42: $99
	add a                                            ; $4e43: $87
	rst AddAOntoHL                                          ; $4e44: $ef
	rra                                              ; $4e45: $1f
	rst $38                                          ; $4e46: $ff
	rra                                              ; $4e47: $1f
	rst $38                                          ; $4e48: $ff
	ld a, e                                          ; $4e49: $7b
	ld hl, sp-$6f                                    ; $4e4a: $f8 $91
	add sp, -$0a                                     ; $4e4c: $e8 $f6
	db $f4                                           ; $4e4e: $f4
	or $f3                                           ; $4e4f: $f6 $f3
	scf                                              ; $4e51: $37
	ld a, c                                          ; $4e52: $79
	add hl, de                                       ; $4e53: $19
	ld b, $e3                                        ; $4e54: $06 $e3
	dec e                                            ; $4e56: $1d
	ld b, $c1                                        ; $4e57: $06 $c1
	rst FarCall                                          ; $4e59: $f7
	ld [hl], a                                       ; $4e5a: $77
	ld hl, sp-$74                                    ; $4e5b: $f8 $8c
	db $fd                                           ; $4e5d: $fd
	cp $3f                                           ; $4e5e: $fe $3f
	db $e4                                           ; $4e60: $e4
	or d                                             ; $4e61: $b2
	ret c                                            ; $4e62: $d8

	ld a, l                                          ; $4e63: $7d
	ld [hl], l                                       ; $4e64: $75
	ld [hl], $ba                                     ; $4e65: $36 $ba
	ld a, [hl+]                                      ; $4e67: $2a
	rra                                              ; $4e68: $1f
	ld c, a                                          ; $4e69: $4f
	daa                                              ; $4e6a: $27
	sub e                                            ; $4e6b: $93
	adc e                                            ; $4e6c: $8b
	call $f765                                       ; $4e6d: $cd $65 $f7
	ldh [$c1], a                                     ; $4e70: $e0 $c1
	sbc l                                            ; $4e72: $9d
	or l                                             ; $4e73: $b5
	dec de                                           ; $4e74: $1b
	ld a, e                                          ; $4e75: $7b
	sub d                                            ; $4e76: $92
	sbc b                                            ; $4e77: $98
	rra                                              ; $4e78: $1f
	ld a, $bc                                        ; $4e79: $3e $bc
	rst $38                                          ; $4e7b: $ff
	cp [hl]                                          ; $4e7c: $be
	ldh a, [$e0]                                     ; $4e7d: $f0 $e0
	db $fd                                           ; $4e7f: $fd
	sbc h                                            ; $4e80: $9c
	jr c, jr_063_4eb6                                ; $4e81: $38 $33

	rst GetHLinHL                                          ; $4e83: $cf
	ld [hl], e                                       ; $4e84: $73
	ld e, c                                          ; $4e85: $59
	rst SubAFromBC                                          ; $4e86: $e7
	sbc c                                            ; $4e87: $99
	add b                                            ; $4e88: $80
	ret nz                                           ; $4e89: $c0

	ldh [$f8], a                                     ; $4e8a: $e0 $f8
	db $fc                                           ; $4e8c: $fc
	cp $7b                                           ; $4e8d: $fe $7b
	ld hl, sp-$66                                    ; $4e8f: $f8 $9a
	ld b, b                                          ; $4e91: $40
	and b                                            ; $4e92: $a0
	ld e, b                                          ; $4e93: $58
	ld d, h                                          ; $4e94: $54
	jp z, $ea75                                      ; $4e95: $ca $75 $ea

	rst SubAFromDE                                          ; $4e98: $df
	db $fc                                           ; $4e99: $fc
	adc c                                            ; $4e9a: $89
	cp $ff                                           ; $4e9b: $fe $ff
	jp z, $9aaa                                      ; $4e9d: $ca $aa $9a

	ld a, h                                          ; $4ea0: $7c
	sbc h                                            ; $4ea1: $9c
	inc l                                            ; $4ea2: $2c
	ld b, [hl]                                       ; $4ea3: $46
	adc a                                            ; $4ea4: $8f
	rst $38                                          ; $4ea5: $ff
	ld a, a                                          ; $4ea6: $7f
	ccf                                              ; $4ea7: $3f
	ccf                                              ; $4ea8: $3f
	rra                                              ; $4ea9: $1f
	sbc a                                            ; $4eaa: $9f
	sbc a                                            ; $4eab: $9f
	ld c, a                                          ; $4eac: $4f
	sbc a                                            ; $4ead: $9f
	db $eb                                           ; $4eae: $eb
	di                                               ; $4eaf: $f3
	pop hl                                           ; $4eb0: $e1
	sbc $f0                                          ; $4eb1: $de $f0
	sbc [hl]                                         ; $4eb3: $9e
	ld hl, sp-$20                                    ; $4eb4: $f8 $e0

jr_063_4eb6:
	pop bc                                           ; $4eb6: $c1
	rst SubAFromDE                                          ; $4eb7: $df
	adc e                                            ; $4eb8: $8b
	sub d                                            ; $4eb9: $92
	xor c                                            ; $4eba: $a9
	xor l                                            ; $4ebb: $ad
	sbc $da                                          ; $4ebc: $de $da
	ld c, d                                          ; $4ebe: $4a
	dec l                                            ; $4ebf: $2d
	pop de                                           ; $4ec0: $d1
	pop de                                           ; $4ec1: $d1
	db $d3                                           ; $4ec2: $d3
	db $d3                                           ; $4ec3: $d3
	ld l, e                                          ; $4ec4: $6b
	ld l, a                                          ; $4ec5: $6f
	ld a, a                                          ; $4ec6: $7f
	ld a, d                                          ; $4ec7: $7a
	ld c, e                                          ; $4ec8: $4b
	rst SubAFromDE                                          ; $4ec9: $df
	rra                                              ; $4eca: $1f
	sbc $0d                                          ; $4ecb: $de $0d
	ld a, l                                          ; $4ecd: $7d
	or h                                             ; $4ece: $b4
	rst SubAFromDE                                          ; $4ecf: $df
	dec de                                           ; $4ed0: $1b
	rst SubAFromDE                                          ; $4ed1: $df
	add hl, bc                                       ; $4ed2: $09
	sbc l                                            ; $4ed3: $9d
	inc c                                            ; $4ed4: $0c
	inc b                                            ; $4ed5: $04
	ld a, d                                          ; $4ed6: $7a
	ld c, c                                          ; $4ed7: $49
	di                                               ; $4ed8: $f3
	sbc h                                            ; $4ed9: $9c
	ret nz                                           ; $4eda: $c0

	ld hl, sp-$08                                    ; $4edb: $f8 $f8
	sbc $f0                                          ; $4edd: $de $f0
	ld a, c                                          ; $4edf: $79
	cp $96                                           ; $4ee0: $fe $96
	add sp, -$38                                     ; $4ee2: $e8 $c8
	sub b                                            ; $4ee4: $90
	ld [hl], b                                       ; $4ee5: $70
	sub b                                            ; $4ee6: $90
	jr nz, @+$22                                     ; $4ee7: $20 $20

	ldh [$f0], a                                     ; $4ee9: $e0 $f0
	ld [hl], a                                       ; $4eeb: $77
	rst AddAOntoHL                                          ; $4eec: $ef
	ld a, a                                          ; $4eed: $7f
	ld c, a                                          ; $4eee: $4f
	sub h                                            ; $4eef: $94
	ld h, b                                          ; $4ef0: $60
	ldh a, [$08]                                     ; $4ef1: $f0 $08
	jr jr_063_4f65                                   ; $4ef3: $18 $70

	ldh a, [$c8]                                     ; $4ef5: $f0 $c8
	and h                                            ; $4ef7: $a4
	db $fc                                           ; $4ef8: $fc
	cp $fe                                           ; $4ef9: $fe $fe
	sbc $ff                                          ; $4efb: $de $ff
	sub e                                            ; $4efd: $93
	db $fd                                           ; $4efe: $fd
	db $fc                                           ; $4eff: $fc
	sub h                                            ; $4f00: $94
	sub d                                            ; $4f01: $92
	jp z, Jump_063_7549                              ; $4f02: $ca $49 $75

	ld c, a                                          ; $4f05: $4f
	ld h, l                                          ; $4f06: $65
	db $f4                                           ; $4f07: $f4
	call c, $db58                                    ; $4f08: $dc $58 $db
	ld d, b                                          ; $4f0b: $50
	sbc [hl]                                         ; $4f0c: $9e
	db $fc                                           ; $4f0d: $fc
	ld [hl], a                                       ; $4f0e: $77
	ret                                              ; $4f0f: $c9


	sbc $f0                                          ; $4f10: $de $f0
	rst SubAFromDE                                          ; $4f12: $df
	ld c, b                                          ; $4f13: $48
	rst SubAFromDE                                          ; $4f14: $df
	jr z, @-$63                                      ; $4f15: $28 $9b

	and h                                            ; $4f17: $a4
	sub h                                            ; $4f18: $94
	sub h                                            ; $4f19: $94
	or $dd                                           ; $4f1a: $f6 $dd
	ld hl, sp+$73                                    ; $4f1c: $f8 $73
	daa                                              ; $4f1e: $27
	sbc $ff                                          ; $4f1f: $de $ff
	sbc [hl]                                         ; $4f21: $9e
	db $fc                                           ; $4f22: $fc
	ld a, e                                          ; $4f23: $7b
	or b                                             ; $4f24: $b0
	sbc [hl]                                         ; $4f25: $9e
	rrca                                             ; $4f26: $0f
	ld [hl], a                                       ; $4f27: $77
	ld b, $de                                        ; $4f28: $06 $de
	add b                                            ; $4f2a: $80
	rst SubAFromDE                                          ; $4f2b: $df
	ld [hl], b                                       ; $4f2c: $70
	add c                                            ; $4f2d: $81
	cp b                                             ; $4f2e: $b8
	or a                                             ; $4f2f: $b7
	reti                                             ; $4f30: $d9


	db $fd                                           ; $4f31: $fd
	rst $38                                          ; $4f32: $ff
	ret z                                            ; $4f33: $c8

	ret nz                                           ; $4f34: $c0

	ret nz                                           ; $4f35: $c0

	ldh [$e1], a                                     ; $4f36: $e0 $e1
	pop af                                           ; $4f38: $f1
	or c                                             ; $4f39: $b1
	ld a, a                                          ; $4f3a: $7f
	ld c, b                                          ; $4f3b: $48
	add b                                            ; $4f3c: $80
	ldh [$f8], a                                     ; $4f3d: $e0 $f8
	call nz, $e2e2                                   ; $4f3f: $c4 $e2 $e2
	pop af                                           ; $4f42: $f1
	pop af                                           ; $4f43: $f1
	add b                                            ; $4f44: $80
	jr nz, jr_063_4f4f                               ; $4f45: $20 $08

	inc a                                            ; $4f47: $3c
	ld e, $1e                                        ; $4f48: $1e $1e
	rrca                                             ; $4f4a: $0f
	rrca                                             ; $4f4b: $0f
	ld a, e                                          ; $4f4c: $7b
	push de                                          ; $4f4d: $d5
	sub d                                            ; $4f4e: $92

jr_063_4f4f:
	ld [hl], e                                       ; $4f4f: $73
	ld [hl], a                                       ; $4f50: $77
	ld a, a                                          ; $4f51: $7f
	ld a, a                                          ; $4f52: $7f
	rst $38                                          ; $4f53: $ff
	rrca                                             ; $4f54: $0f
	rra                                              ; $4f55: $1f
	sbc a                                            ; $4f56: $9f
	adc a                                            ; $4f57: $8f
	adc h                                            ; $4f58: $8c
	sbc b                                            ; $4f59: $98
	ld hl, sp-$38                                    ; $4f5a: $f8 $c8
	ld a, [hl-]                                      ; $4f5c: $3a
	ret nz                                           ; $4f5d: $c0

	ld a, d                                          ; $4f5e: $7a
	ld b, $7f                                        ; $4f5f: $06 $7f
	ld l, d                                          ; $4f61: $6a
	ld [hl], e                                       ; $4f62: $73
	ld hl, sp-$64                                    ; $4f63: $f8 $9c

jr_063_4f65:
	ret nz                                           ; $4f65: $c0

	ld h, b                                          ; $4f66: $60
	ld d, b                                          ; $4f67: $50
	ld [hl+], a                                      ; $4f68: $22
	nop                                              ; $4f69: $00
	sbc $99                                          ; $4f6a: $de $99
	sbc b                                            ; $4f6c: $98
	cp e                                             ; $4f6d: $bb
	sbc c                                            ; $4f6e: $99
	ld b, h                                          ; $4f6f: $44
	adc b                                            ; $4f70: $88
	adc b                                            ; $4f71: $88
	ld d, l                                          ; $4f72: $55
	call z, $fb7b                                    ; $4f73: $cc $7b $fb
	sbc [hl]                                         ; $4f76: $9e
	ld de, $fb77                                     ; $4f77: $11 $77 $fb
	sbc l                                            ; $4f7a: $9d
	ld [hl+], a                                      ; $4f7b: $22
	rst $38                                          ; $4f7c: $ff
	ld [hl], e                                       ; $4f7d: $73
	ei                                               ; $4f7e: $fb
	sbc [hl]                                         ; $4f7f: $9e
	rst $38                                          ; $4f80: $ff
	ld a, e                                          ; $4f81: $7b
	pop af                                           ; $4f82: $f1
	rst SubAFromDE                                          ; $4f83: $df
	rst $38                                          ; $4f84: $ff
	sbc e                                            ; $4f85: $9b
	sbc c                                            ; $4f86: $99
	ld de, $eebb                                     ; $4f87: $11 $bb $ee
	rlc c                                            ; $4f8a: $cb $01
	add b                                            ; $4f8c: $80
	call $cd32                                       ; $4f8d: $cd $32 $cd
	ld [hl-], a                                      ; $4f90: $32
	ld d, h                                          ; $4f91: $54
	cp e                                             ; $4f92: $bb
	ld d, [hl]                                       ; $4f93: $56
	cp c                                             ; $4f94: $b9
	ld e, e                                          ; $4f95: $5b
	cp l                                             ; $4f96: $bd
	ld l, h                                          ; $4f97: $6c
	sbc a                                            ; $4f98: $9f
	ld l, $df                                        ; $4f99: $2e $df
	ld d, a                                          ; $4f9b: $57
	db $ed                                           ; $4f9c: $ed
	daa                                              ; $4f9d: $27
	cp $d3                                           ; $4f9e: $fe $d3
	rst $38                                          ; $4fa0: $ff
	ld a, a                                          ; $4fa1: $7f
	rst $38                                          ; $4fa2: $ff
	ld a, a                                          ; $4fa3: $7f
	db $fc                                           ; $4fa4: $fc
	dec l                                            ; $4fa5: $2d
	or $37                                           ; $4fa6: $f6 $37
	ldh [c], a                                       ; $4fa8: $e2
	halt                                             ; $4fa9: $76
	and a                                            ; $4faa: $a7
	ld a, a                                          ; $4fab: $7f
	adc d                                            ; $4fac: $8a
	or l                                             ; $4fad: $b5
	db $ed                                           ; $4fae: $ed

jr_063_4faf:
	cp b                                             ; $4faf: $b8
	xor $bc                                          ; $4fb0: $ee $bc
	sbc $af                                          ; $4fb2: $de $af
	rst SubAFromHL                                          ; $4fb4: $d7
	xor [hl]                                         ; $4fb5: $ae
	sub $bf                                          ; $4fb6: $d6 $bf
	db $fd                                           ; $4fb8: $fd
	sub a                                            ; $4fb9: $97
	db $fd                                           ; $4fba: $fd
	sub a                                            ; $4fbb: $97
	push af                                          ; $4fbc: $f5
	sub a                                            ; $4fbd: $97
	or c                                             ; $4fbe: $b1
	rst SubAFromHL                                          ; $4fbf: $d7
	or l                                             ; $4fc0: $b5
	db $d3                                           ; $4fc1: $d3
	ld [hl], a                                       ; $4fc2: $77
	cp $80                                           ; $4fc3: $fe $80
	or a                                             ; $4fc5: $b7
	db $d3                                           ; $4fc6: $d3
	or d                                             ; $4fc7: $b2
	rst SubAFromHL                                          ; $4fc8: $d7
	cp d                                             ; $4fc9: $ba
	rst SubAFromHL                                          ; $4fca: $d7
	ld a, [$b4d7]                                    ; $4fcb: $fa $d7 $b4
	ld c, e                                          ; $4fce: $4b
	sbc c                                            ; $4fcf: $99
	ld l, a                                          ; $4fd0: $6f
	and b                                            ; $4fd1: $a0
	ld a, a                                          ; $4fd2: $7f
	and h                                            ; $4fd3: $a4
	ld a, a                                          ; $4fd4: $7f
	ld [hl], $ff                                     ; $4fd5: $36 $ff
	sbc e                                            ; $4fd7: $9b
	rst $38                                          ; $4fd8: $ff
	db $dd                                           ; $4fd9: $dd
	rst FarCall                                          ; $4fda: $f7
	rst AddAOntoHL                                          ; $4fdb: $ef
	ei                                               ; $4fdc: $fb
	rst $38                                          ; $4fdd: $ff
	call c, $1fff                                    ; $4fde: $dc $ff $1f
	rst FarCall                                          ; $4fe1: $f7
	ld [hl-], a                                      ; $4fe2: $32
	db $ed                                           ; $4fe3: $ed
	add b                                            ; $4fe4: $80
	ld h, a                                          ; $4fe5: $67
	rst $38                                          ; $4fe6: $ff
	db $dd                                           ; $4fe7: $dd
	db $d3                                           ; $4fe8: $d3
	ld e, c                                          ; $4fe9: $59
	ld c, a                                          ; $4fea: $4f
	ld a, [bc]                                       ; $4feb: $0a
	adc a                                            ; $4fec: $8f
	nop                                              ; $4fed: $00
	call c, $8080                                    ; $4fee: $dc $80 $80
	ret nz                                           ; $4ff1: $c0

	ldh [rLCDC], a                                   ; $4ff2: $e0 $40
	ld [hl], b                                       ; $4ff4: $70
	jr nz, jr_063_4faf                               ; $4ff5: $20 $b8

	ld [hl], b                                       ; $4ff7: $70
	call c, $ddf8                                    ; $4ff8: $dc $f8 $dd
	cp $57                                           ; $4ffb: $fe $57
	rst $38                                          ; $4ffd: $ff
	ld d, [hl]                                       ; $4ffe: $56
	rst $38                                          ; $4fff: $ff
	ld c, d                                          ; $5000: $4a
	rst $38                                          ; $5001: $ff
	ld l, d                                          ; $5002: $6a
	rst SubAFromDE                                          ; $5003: $df
	ld a, a                                          ; $5004: $7f
	cp $80                                           ; $5005: $fe $80
	ld [$ee5f], a                                    ; $5007: $ea $5f $ee
	ld e, a                                          ; $500a: $5f
	rst SubAFromHL                                          ; $500b: $d7
	ld l, a                                          ; $500c: $6f
	rst FarCall                                          ; $500d: $f7
	ld l, a                                          ; $500e: $6f
	xor h                                            ; $500f: $ac
	ld a, a                                          ; $5010: $7f
	ld l, $fb                                        ; $5011: $2e $fb
	sub a                                            ; $5013: $97
	db $fd                                           ; $5014: $fd
	rst SubAFromHL                                          ; $5015: $d7
	rst $38                                          ; $5016: $ff
	ld l, a                                          ; $5017: $6f
	cp $77                                           ; $5018: $fe $77
	rst SubAFromDE                                          ; $501a: $df
	cp a                                             ; $501b: $bf
	xor $ff                                          ; $501c: $ee $ff
	ld [hl], e                                       ; $501e: $73
	rst $38                                          ; $501f: $ff
	add b                                            ; $5020: $80
	cp $00                                           ; $5021: $fe $00
	ret c                                            ; $5023: $d8

	nop                                              ; $5024: $00
	add b                                            ; $5025: $80
	cp $98                                           ; $5026: $fe $98
	inc b                                            ; $5028: $04
	nop                                              ; $5029: $00
	add [hl]                                         ; $502a: $86
	nop                                              ; $502b: $00
	ld c, $08                                        ; $502c: $0e $08
	inc b                                            ; $502e: $04
	db $f4                                           ; $502f: $f4
	add b                                            ; $5030: $80
	ret nz                                           ; $5031: $c0

	nop                                              ; $5032: $00
	ld hl, sp-$20                                    ; $5033: $f8 $e0
	rst $38                                          ; $5035: $ff
	reti                                             ; $5036: $d9


	pop af                                           ; $5037: $f1
	ret nz                                           ; $5038: $c0

	ldh [$c0], a                                     ; $5039: $e0 $c0
	ret nc                                           ; $503b: $d0

	ret nz                                           ; $503c: $c0

	ret c                                            ; $503d: $d8

	ret nz                                           ; $503e: $c0

	xor h                                            ; $503f: $ac
	ldh [$1f], a                                     ; $5040: $e0 $1f
	di                                               ; $5042: $f3
	sub d                                            ; $5043: $92
	rst $38                                          ; $5044: $ff
	ld c, c                                          ; $5045: $49
	rst $38                                          ; $5046: $ff
	ld a, $f7                                        ; $5047: $3e $f7
	rst $38                                          ; $5049: $ff
	db $eb                                           ; $504a: $eb
	rst $38                                          ; $504b: $ff
	db $10                                           ; $504c: $10
	rst $38                                          ; $504d: $ff
	jr @+$01                                         ; $504e: $18 $ff

	adc a                                            ; $5050: $8f
	ld a, $ef                                        ; $5051: $3e $ef
	ld h, a                                          ; $5053: $67
	ld e, e                                          ; $5054: $5b
	ld c, l                                          ; $5055: $4d
	ld a, a                                          ; $5056: $7f
	ld a, [hl-]                                      ; $5057: $3a
	daa                                              ; $5058: $27
	ld [hl-], a                                      ; $5059: $32
	rra                                              ; $505a: $1f
	inc d                                            ; $505b: $14
	rra                                              ; $505c: $1f
	nop                                              ; $505d: $00
	inc sp                                           ; $505e: $33
	nop                                              ; $505f: $00
	inc bc                                           ; $5060: $03
	ld a, e                                          ; $5061: $7b
	cp $9e                                           ; $5062: $fe $9e
	rlca                                             ; $5064: $07
	ld [hl], e                                       ; $5065: $73
	cp $8c                                           ; $5066: $fe $8c
	rrca                                             ; $5068: $0f
	ld bc, $030f                                     ; $5069: $01 $0f $03
	rra                                              ; $506c: $1f
	rlca                                             ; $506d: $07
	rra                                              ; $506e: $1f
	rrca                                             ; $506f: $0f
	ccf                                              ; $5070: $3f
	rra                                              ; $5071: $1f
	rst $38                                          ; $5072: $ff
	ccf                                              ; $5073: $3f
	rst $38                                          ; $5074: $ff
	db $fd                                           ; $5075: $fd
	rst $38                                          ; $5076: $ff
	add hl, sp                                       ; $5077: $39
	ccf                                              ; $5078: $3f
	nop                                              ; $5079: $00
	rra                                              ; $507a: $1f
	ld a, e                                          ; $507b: $7b
	db $ec                                           ; $507c: $ec
	add b                                            ; $507d: $80
	ld c, $0f                                        ; $507e: $0e $0f
	ld [de], a                                       ; $5080: $12
	rla                                              ; $5081: $17
	ld c, b                                          ; $5082: $48
	ld hl, sp+$54                                    ; $5083: $f8 $54
	db $fc                                           ; $5085: $fc
	push de                                          ; $5086: $d5
	db $fd                                           ; $5087: $fd
	db $fc                                           ; $5088: $fc
	db $fc                                           ; $5089: $fc
	db $f4                                           ; $508a: $f4
	db $fc                                           ; $508b: $fc
	or a                                             ; $508c: $b7
	rst $38                                          ; $508d: $ff
	call $dc7d                                       ; $508e: $cd $7d $dc
	db $f4                                           ; $5091: $f4
	db $fc                                           ; $5092: $fc
	ld h, h                                          ; $5093: $64
	db $fc                                           ; $5094: $fc
	ld d, h                                          ; $5095: $54
	db $f4                                           ; $5096: $f4
	ld l, h                                          ; $5097: $6c
	db $fc                                           ; $5098: $fc
	ld c, h                                          ; $5099: $4c
	call c, $cc74                                    ; $509a: $dc $74 $cc
	sub l                                            ; $509d: $95
	inc [hl]                                         ; $509e: $34
	or h                                             ; $509f: $b4
	ld c, h                                          ; $50a0: $4c
	call c, $bf7c                                    ; $50a1: $dc $7c $bf
	ld a, a                                          ; $50a4: $7f
	rst AddAOntoHL                                          ; $50a5: $ef
	rst $38                                          ; $50a6: $ff
	xor l                                            ; $50a7: $ad
	ld a, e                                          ; $50a8: $7b
	cp $8c                                           ; $50a9: $fe $8c
	add hl, hl                                       ; $50ab: $29
	rst $38                                          ; $50ac: $ff
	add hl, hl                                       ; $50ad: $29

jr_063_50ae:
	xor a                                            ; $50ae: $af
	add hl, hl                                       ; $50af: $29
	xor l                                            ; $50b0: $ad
	ld bc, $2bad                                     ; $50b1: $01 $ad $2b
	sub l                                            ; $50b4: $95
	dec bc                                           ; $50b5: $0b
	sub l                                            ; $50b6: $95
	add c                                            ; $50b7: $81
	sub l                                            ; $50b8: $95
	sub c                                            ; $50b9: $91
	sub l                                            ; $50ba: $95
	sub l                                            ; $50bb: $95
	sub c                                            ; $50bc: $91
	pop de                                           ; $50bd: $d1
	ld a, e                                          ; $50be: $7b
	cp $9d                                           ; $50bf: $fe $9d
	db $db                                           ; $50c1: $db
	sub c                                            ; $50c2: $91
	dec sp                                           ; $50c3: $3b
	nop                                              ; $50c4: $00
	sub d                                            ; $50c5: $92
	nop                                              ; $50c6: $00
	rst $38                                          ; $50c7: $ff
	rra                                              ; $50c8: $1f
	push af                                          ; $50c9: $f5
	ld [hl-], a                                      ; $50ca: $32
	rst $38                                          ; $50cb: $ff
	ld a, l                                          ; $50cc: $7d
	di                                               ; $50cd: $f3
	reti                                             ; $50ce: $d9


	ld e, a                                          ; $50cf: $5f
	ld c, d                                          ; $50d0: $4a
	rst GetHLinHL                                          ; $50d1: $cf
	nop                                              ; $50d2: $00
	ld e, e                                          ; $50d3: $5b
	ld h, b                                          ; $50d4: $60
	ld a, a                                          ; $50d5: $7f
	add sp, $7f                                      ; $50d6: $e8 $7f
	cp $9a                                           ; $50d8: $fe $9a
	inc a                                            ; $50da: $3c
	ld l, a                                          ; $50db: $6f
	ld h, a                                          ; $50dc: $67
	ld a, e                                          ; $50dd: $7b
	ccf                                              ; $50de: $3f
	ld d, a                                          ; $50df: $57
	ld h, b                                          ; $50e0: $60
	ld c, e                                          ; $50e1: $4b
	add b                                            ; $50e2: $80
	sbc h                                            ; $50e3: $9c
	ld [hl], h                                       ; $50e4: $74
	db $fc                                           ; $50e5: $fc
	db $e4                                           ; $50e6: $e4
	ld c, a                                          ; $50e7: $4f
	add b                                            ; $50e8: $80
	ld d, e                                          ; $50e9: $53
	and b                                            ; $50ea: $a0
	sbc [hl]                                         ; $50eb: $9e
	rst $38                                          ; $50ec: $ff
	ld a, e                                          ; $50ed: $7b
	and b                                            ; $50ee: $a0
	sbc h                                            ; $50ef: $9c
	ld a, h                                          ; $50f0: $7c
	rst $38                                          ; $50f1: $ff
	add b                                            ; $50f2: $80
	ld [hl], e                                       ; $50f3: $73
	or [hl]                                          ; $50f4: $b6
	sbc d                                            ; $50f5: $9a
	rrca                                             ; $50f6: $0f
	ei                                               ; $50f7: $fb
	ld a, [de]                                       ; $50f8: $1a
	rst $38                                          ; $50f9: $ff
	ld a, h                                          ; $50fa: $7c
	ld h, e                                          ; $50fb: $63
	and b                                            ; $50fc: $a0
	rst SubAFromDE                                          ; $50fd: $df
	rst $38                                          ; $50fe: $ff
	ld l, a                                          ; $50ff: $6f
	and b                                            ; $5100: $a0
	sub [hl]                                         ; $5101: $96
	nop                                              ; $5102: $00
	ld a, a                                          ; $5103: $7f
	nop                                              ; $5104: $00
	ld a, a                                          ; $5105: $7f
	rra                                              ; $5106: $1f
	ld [hl], a                                       ; $5107: $77
	halt                                             ; $5108: $76
	ccf                                              ; $5109: $3f
	inc e                                            ; $510a: $1c
	inc hl                                           ; $510b: $23
	and b                                            ; $510c: $a0
	ld a, a                                          ; $510d: $7f
	jr nz, jr_063_50ae                               ; $510e: $20 $9e

	call nc, $a003                                   ; $5110: $d4 $03 $a0
	ld [hl], a                                       ; $5113: $77
	or [hl]                                          ; $5114: $b6
	sbc c                                            ; $5115: $99
	dec c                                            ; $5116: $0d
	rst $38                                          ; $5117: $ff
	ld b, $ff                                        ; $5118: $06 $ff
	ld a, b                                          ; $511a: $78
	db $fd                                           ; $511b: $fd
	scf                                              ; $511c: $37
	and b                                            ; $511d: $a0
	sbc d                                            ; $511e: $9a
	ld c, $7f                                        ; $511f: $0e $7f
	ld h, c                                          ; $5121: $61
	ccf                                              ; $5122: $3f
	ld e, $1b                                        ; $5123: $1e $1b
	and b                                            ; $5125: $a0
	ld a, a                                          ; $5126: $7f
	ld b, b                                          ; $5127: $40
	sbc [hl]                                         ; $5128: $9e
	db $ec                                           ; $5129: $ec
	ld e, a                                          ; $512a: $5f
	and b                                            ; $512b: $a0
	rst $38                                          ; $512c: $ff
	sbc d                                            ; $512d: $9a
	ld bc, $1f00                                     ; $512e: $01 $00 $1f
	ld c, $05                                        ; $5131: $0e $05
	cp $7f                                           ; $5133: $fe $7f
	call nc, $9deb                                   ; $5135: $d4 $eb $9d
	ret nz                                           ; $5138: $c0

	add b                                            ; $5139: $80
	halt                                             ; $513a: $76
	ld [de], a                                       ; $513b: $12
	rst SubAFromBC                                          ; $513c: $e7
	rst SubAFromDE                                          ; $513d: $df
	ld bc, $c003                                     ; $513e: $01 $03 $c0
	rlca                                             ; $5141: $07
	ret nz                                           ; $5142: $c0

	rst SubAFromDE                                          ; $5143: $df
	rrca                                             ; $5144: $0f
	sbc l                                            ; $5145: $9d
	rlca                                             ; $5146: $07
	dec b                                            ; $5147: $05
	rla                                              ; $5148: $17
	ret nz                                           ; $5149: $c0

	inc de                                           ; $514a: $13
	cp [hl]                                          ; $514b: $be
	ld [hl], e                                       ; $514c: $73
	ret nz                                           ; $514d: $c0

	ld [hl], e                                       ; $514e: $73
	cp [hl]                                          ; $514f: $be
	daa                                              ; $5150: $27
	ret nz                                           ; $5151: $c0

	ld [hl], a                                       ; $5152: $77
	cp [hl]                                          ; $5153: $be
	jp hl                                            ; $5154: $e9


	rst SubAFromHL                                          ; $5155: $d7
	ld bc, $cd80                                     ; $5156: $01 $80 $cd
	ld [hl-], a                                      ; $5159: $32
	call Call_063_5432                               ; $515a: $cd $32 $54
	cp e                                             ; $515d: $bb
	ld d, [hl]                                       ; $515e: $56
	cp c                                             ; $515f: $b9
	ld e, e                                          ; $5160: $5b
	cp l                                             ; $5161: $bd
	ld l, h                                          ; $5162: $6c
	sbc a                                            ; $5163: $9f
	ld l, $df                                        ; $5164: $2e $df
	ld d, a                                          ; $5166: $57
	rst AddAOntoHL                                          ; $5167: $ef
	daa                                              ; $5168: $27
	rst $38                                          ; $5169: $ff
	db $d3                                           ; $516a: $d3
	cp $7f                                           ; $516b: $fe $7f
	rst $38                                          ; $516d: $ff
	ld a, a                                          ; $516e: $7f
	db $fc                                           ; $516f: $fc
	dec l                                            ; $5170: $2d
	or $37                                           ; $5171: $f6 $37
	ldh [c], a                                       ; $5173: $e2
	halt                                             ; $5174: $76
	and a                                            ; $5175: $a7
	ld a, a                                          ; $5176: $7f
	adc d                                            ; $5177: $8a
	or l                                             ; $5178: $b5
	db $ed                                           ; $5179: $ed

jr_063_517a:
	cp b                                             ; $517a: $b8
	xor $bc                                          ; $517b: $ee $bc
	sbc $af                                          ; $517d: $de $af
	rst SubAFromHL                                          ; $517f: $d7
	xor [hl]                                         ; $5180: $ae
	sub $bf                                          ; $5181: $d6 $bf
	db $fd                                           ; $5183: $fd
	sub a                                            ; $5184: $97
	db $fd                                           ; $5185: $fd
	sub a                                            ; $5186: $97
	push af                                          ; $5187: $f5
	sub a                                            ; $5188: $97
	or c                                             ; $5189: $b1
	rst SubAFromHL                                          ; $518a: $d7
	or l                                             ; $518b: $b5
	db $d3                                           ; $518c: $d3
	ld [hl], a                                       ; $518d: $77
	cp $80                                           ; $518e: $fe $80
	or a                                             ; $5190: $b7
	db $d3                                           ; $5191: $d3
	or d                                             ; $5192: $b2
	rst SubAFromHL                                          ; $5193: $d7
	cp d                                             ; $5194: $ba
	rst SubAFromHL                                          ; $5195: $d7
	ld a, [$b4d7]                                    ; $5196: $fa $d7 $b4
	ld c, e                                          ; $5199: $4b
	sbc c                                            ; $519a: $99
	ld l, a                                          ; $519b: $6f
	and b                                            ; $519c: $a0
	ld a, a                                          ; $519d: $7f
	and h                                            ; $519e: $a4
	ld a, a                                          ; $519f: $7f
	ld [hl], $ff                                     ; $51a0: $36 $ff
	sbc e                                            ; $51a2: $9b
	rst $38                                          ; $51a3: $ff
	db $dd                                           ; $51a4: $dd
	rst FarCall                                          ; $51a5: $f7
	rst AddAOntoHL                                          ; $51a6: $ef
	ei                                               ; $51a7: $fb
	rst $38                                          ; $51a8: $ff
	ccf                                              ; $51a9: $3f
	rst FarCall                                          ; $51aa: $f7
	inc hl                                           ; $51ab: $23
	rst JumpTable                                          ; $51ac: $c7
	ld h, [hl]                                       ; $51ad: $66
	db $ed                                           ; $51ae: $ed
	add b                                            ; $51af: $80
	ld l, a                                          ; $51b0: $6f
	rst $38                                          ; $51b1: $ff
	db $fd                                           ; $51b2: $fd
	di                                               ; $51b3: $f3
	ld e, c                                          ; $51b4: $59
	ld c, [hl]                                       ; $51b5: $4e
	ld a, [bc]                                       ; $51b6: $0a
	add b                                            ; $51b7: $80
	nop                                              ; $51b8: $00
	ret nz                                           ; $51b9: $c0

	add b                                            ; $51ba: $80
	add b                                            ; $51bb: $80
	ret nz                                           ; $51bc: $c0

	ldh [rLCDC], a                                   ; $51bd: $e0 $40
	ld [hl], b                                       ; $51bf: $70
	jr nz, jr_063_517a                               ; $51c0: $20 $b8

	ld [hl], b                                       ; $51c2: $70
	call c, $ddf8                                    ; $51c3: $dc $f8 $dd
	cp $57                                           ; $51c6: $fe $57
	rst $38                                          ; $51c8: $ff
	ld d, [hl]                                       ; $51c9: $56
	rst $38                                          ; $51ca: $ff
	ld c, d                                          ; $51cb: $4a
	rst $38                                          ; $51cc: $ff
	ld l, d                                          ; $51cd: $6a
	rst SubAFromDE                                          ; $51ce: $df
	ld a, a                                          ; $51cf: $7f
	cp $80                                           ; $51d0: $fe $80
	ld [$ee5f], a                                    ; $51d2: $ea $5f $ee
	ld e, a                                          ; $51d5: $5f
	rst SubAFromHL                                          ; $51d6: $d7
	ld l, a                                          ; $51d7: $6f
	rst FarCall                                          ; $51d8: $f7
	ld l, a                                          ; $51d9: $6f
	xor h                                            ; $51da: $ac
	ld a, a                                          ; $51db: $7f
	ld l, $fb                                        ; $51dc: $2e $fb
	sub a                                            ; $51de: $97
	rst $38                                          ; $51df: $ff
	rst SubAFromHL                                          ; $51e0: $d7
	cp $6f                                           ; $51e1: $fe $6f
	cp $77                                           ; $51e3: $fe $77
	rst SubAFromDE                                          ; $51e5: $df
	cp a                                             ; $51e6: $bf
	xor $ff                                          ; $51e7: $ee $ff
	ld [hl], e                                       ; $51e9: $73
	rst $38                                          ; $51ea: $ff
	add b                                            ; $51eb: $80
	cp $00                                           ; $51ec: $fe $00
	ret c                                            ; $51ee: $d8

	nop                                              ; $51ef: $00
	add b                                            ; $51f0: $80
	cp $98                                           ; $51f1: $fe $98
	inc b                                            ; $51f3: $04
	nop                                              ; $51f4: $00
	ld b, $00                                        ; $51f5: $06 $00
	ld c, $08                                        ; $51f7: $0e $08
	inc b                                            ; $51f9: $04
	db $f4                                           ; $51fa: $f4
	add b                                            ; $51fb: $80
	ret nz                                           ; $51fc: $c0

	nop                                              ; $51fd: $00
	ld hl, sp-$20                                    ; $51fe: $f8 $e0
	rst $38                                          ; $5200: $ff
	reti                                             ; $5201: $d9


	pop af                                           ; $5202: $f1
	ret nz                                           ; $5203: $c0

	ldh [$c0], a                                     ; $5204: $e0 $c0
	ret nc                                           ; $5206: $d0

	ret nz                                           ; $5207: $c0

	ret c                                            ; $5208: $d8

	ret nz                                           ; $5209: $c0

	xor h                                            ; $520a: $ac
	ldh [$1f], a                                     ; $520b: $e0 $1f
	di                                               ; $520d: $f3
	sub d                                            ; $520e: $92
	rst $38                                          ; $520f: $ff
	ld c, c                                          ; $5210: $49
	rst $38                                          ; $5211: $ff
	ld a, $f7                                        ; $5212: $3e $f7
	rst $38                                          ; $5214: $ff
	db $eb                                           ; $5215: $eb
	rst $38                                          ; $5216: $ff
	ld a, [hl]                                       ; $5217: $7e
	rst $38                                          ; $5218: $ff
	ld h, a                                          ; $5219: $67
	rst SubAFromBC                                          ; $521a: $e7
	sub c                                            ; $521b: $91
	rst JumpTable                                          ; $521c: $c7
	rst GetHLinHL                                          ; $521d: $cf
	call Call_063_5e7b                               ; $521e: $cd $7b $5e
	ld a, a                                          ; $5221: $7f
	ld a, [hl-]                                      ; $5222: $3a
	daa                                              ; $5223: $27
	ld [hl-], a                                      ; $5224: $32
	rra                                              ; $5225: $1f
	inc d                                            ; $5226: $14
	ld bc, $0300                                     ; $5227: $01 $00 $03
	ld [hl], e                                       ; $522a: $73
	cp $9e                                           ; $522b: $fe $9e
	rlca                                             ; $522d: $07
	ld [hl], e                                       ; $522e: $73
	cp $8c                                           ; $522f: $fe $8c
	rrca                                             ; $5231: $0f
	ld bc, $030f                                     ; $5232: $01 $0f $03
	rra                                              ; $5235: $1f
	rlca                                             ; $5236: $07
	rra                                              ; $5237: $1f
	rrca                                             ; $5238: $0f
	ccf                                              ; $5239: $3f
	rra                                              ; $523a: $1f
	rst $38                                          ; $523b: $ff
	ccf                                              ; $523c: $3f
	rst $38                                          ; $523d: $ff
	db $fd                                           ; $523e: $fd
	rst $38                                          ; $523f: $ff
	add hl, sp                                       ; $5240: $39
	ccf                                              ; $5241: $3f
	nop                                              ; $5242: $00
	rra                                              ; $5243: $1f
	ld a, e                                          ; $5244: $7b
	db $ec                                           ; $5245: $ec
	add b                                            ; $5246: $80
	ld c, $0f                                        ; $5247: $0e $0f
	ld [de], a                                       ; $5249: $12
	rla                                              ; $524a: $17
	ld c, b                                          ; $524b: $48
	ld hl, sp+$54                                    ; $524c: $f8 $54
	db $fc                                           ; $524e: $fc
	push de                                          ; $524f: $d5
	db $fd                                           ; $5250: $fd
	db $fc                                           ; $5251: $fc
	db $fc                                           ; $5252: $fc
	db $f4                                           ; $5253: $f4
	db $fc                                           ; $5254: $fc
	or a                                             ; $5255: $b7
	rst $38                                          ; $5256: $ff
	call $dcfd                                       ; $5257: $cd $fd $dc
	ld [hl], h                                       ; $525a: $74
	db $fc                                           ; $525b: $fc
	ld h, h                                          ; $525c: $64
	db $fc                                           ; $525d: $fc
	ld d, h                                          ; $525e: $54
	db $f4                                           ; $525f: $f4
	ld l, h                                          ; $5260: $6c
	db $fc                                           ; $5261: $fc
	ld c, h                                          ; $5262: $4c
	call c, $cc74                                    ; $5263: $dc $74 $cc
	sub l                                            ; $5266: $95
	inc [hl]                                         ; $5267: $34
	or h                                             ; $5268: $b4
	ld c, h                                          ; $5269: $4c
	call c, $bf7c                                    ; $526a: $dc $7c $bf
	ld a, a                                          ; $526d: $7f
	rst AddAOntoHL                                          ; $526e: $ef
	rst $38                                          ; $526f: $ff
	xor l                                            ; $5270: $ad
	ld a, e                                          ; $5271: $7b
	cp $8c                                           ; $5272: $fe $8c
	add hl, hl                                       ; $5274: $29
	rst $38                                          ; $5275: $ff
	add hl, hl                                       ; $5276: $29
	xor a                                            ; $5277: $af
	add hl, hl                                       ; $5278: $29
	xor l                                            ; $5279: $ad
	ld bc, $2bad                                     ; $527a: $01 $ad $2b
	sub l                                            ; $527d: $95
	dec bc                                           ; $527e: $0b
	sub l                                            ; $527f: $95
	add c                                            ; $5280: $81
	sub l                                            ; $5281: $95
	sub c                                            ; $5282: $91
	sub l                                            ; $5283: $95
	sub l                                            ; $5284: $95
	sub c                                            ; $5285: $91
	pop de                                           ; $5286: $d1
	ld a, e                                          ; $5287: $7b
	cp $9d                                           ; $5288: $fe $9d
	db $db                                           ; $528a: $db
	sub c                                            ; $528b: $91
	ld b, e                                          ; $528c: $43
	nop                                              ; $528d: $00
	sub b                                            ; $528e: $90

jr_063_528f:
	inc e                                            ; $528f: $1c
	rst $38                                          ; $5290: $ff
	ld c, $ff                                        ; $5291: $0e $ff
	rra                                              ; $5293: $1f
	di                                               ; $5294: $f3
	ld [hl-], a                                      ; $5295: $32
	db $fd                                           ; $5296: $fd
	ld a, a                                          ; $5297: $7f
	di                                               ; $5298: $f3
	reti                                             ; $5299: $d9


	ld c, [hl]                                       ; $529a: $4e
	ld a, [bc]                                       ; $529b: $0a
	ret nz                                           ; $529c: $c0

	nop                                              ; $529d: $00
	ld h, e                                          ; $529e: $63
	ld h, b                                          ; $529f: $60
	sub [hl]                                         ; $52a0: $96
	db $10                                           ; $52a1: $10
	rst $38                                          ; $52a2: $ff
	nop                                              ; $52a3: $00
	rst $38                                          ; $52a4: $ff
	inc a                                            ; $52a5: $3c
	rst SubAFromBC                                          ; $52a6: $e7
	ld h, a                                          ; $52a7: $67
	ei                                               ; $52a8: $fb
	rst SubAFromDE                                          ; $52a9: $df
	ld c, a                                          ; $52aa: $4f
	ld h, b                                          ; $52ab: $60
	ld d, e                                          ; $52ac: $53
	add b                                            ; $52ad: $80
	sbc [hl]                                         ; $52ae: $9e
	ld a, l                                          ; $52af: $7d
	ld a, e                                          ; $52b0: $7b
	add b                                            ; $52b1: $80
	sbc [hl]                                         ; $52b2: $9e
	db $e4                                           ; $52b3: $e4
	ld c, a                                          ; $52b4: $4f
	add b                                            ; $52b5: $80
	ld c, d                                          ; $52b6: $4a
	ld h, b                                          ; $52b7: $60
	sbc [hl]                                         ; $52b8: $9e
	db $ed                                           ; $52b9: $ed
	ld b, [hl]                                       ; $52ba: $46
	ld h, b                                          ; $52bb: $60
	ld b, e                                          ; $52bc: $43
	add b                                            ; $52bd: $80
	sbc [hl]                                         ; $52be: $9e
	sbc h                                            ; $52bf: $9c
	ld a, e                                          ; $52c0: $7b
	sbc b                                            ; $52c1: $98
	ld [hl], a                                       ; $52c2: $77
	cp $99                                           ; $52c3: $fe $99
	rrca                                             ; $52c5: $0f
	ei                                               ; $52c6: $fb
	ld a, [de]                                       ; $52c7: $1a
	cp $7c                                           ; $52c8: $fe $7c
	sbc b                                            ; $52ca: $98
	ld c, a                                          ; $52cb: $4f
	add b                                            ; $52cc: $80
	ld [hl], e                                       ; $52cd: $73
	cp $99                                           ; $52ce: $fe $99
	ld a, a                                          ; $52d0: $7f
	ccf                                              ; $52d1: $3f
	rst AddAOntoHL                                          ; $52d2: $ef
	xor $7f                                          ; $52d3: $ee $7f
	inc a                                            ; $52d5: $3c
	inc hl                                           ; $52d6: $23
	add b                                            ; $52d7: $80
	ld a, a                                          ; $52d8: $7f
	nop                                              ; $52d9: $00
	sbc [hl]                                         ; $52da: $9e
	call nc, $8057                                   ; $52db: $d4 $57 $80
	inc hl                                           ; $52de: $23
	and b                                            ; $52df: $a0
	sbc h                                            ; $52e0: $9c
	dec e                                            ; $52e1: $1d
	rst $38                                          ; $52e2: $ff
	ld b, $2b                                        ; $52e3: $06 $2b
	and b                                            ; $52e5: $a0
	sbc d                                            ; $52e6: $9a
	ld e, $ff                                        ; $52e7: $1e $ff
	pop bc                                           ; $52e9: $c1
	ld a, a                                          ; $52ea: $7f
	ld a, $1b                                        ; $52eb: $3e $1b
	and b                                            ; $52ed: $a0
	ld a, a                                          ; $52ee: $7f
	jr nz, jr_063_528f                               ; $52ef: $20 $9e

	db $ec                                           ; $52f1: $ec
	ld e, a                                          ; $52f2: $5f
	and b                                            ; $52f3: $a0
	rst $38                                          ; $52f4: $ff
	ld a, a                                          ; $52f5: $7f
	sub $9c                                          ; $52f6: $d6 $9c
	jr jr_063_5302                                   ; $52f8: $18 $08

	dec b                                            ; $52fa: $05
	cp $7f                                           ; $52fb: $fe $7f
	call nc, $9ded                                   ; $52fd: $d4 $ed $9d
	ld b, b                                          ; $5300: $40
	nop                                              ; $5301: $00

jr_063_5302:
	sbc $80                                          ; $5302: $de $80
	db $e4                                           ; $5304: $e4
	ld a, a                                          ; $5305: $7f
	ret nz                                           ; $5306: $c0

	sbc d                                            ; $5307: $9a
	add hl, de                                       ; $5308: $19
	add hl, bc                                       ; $5309: $09
	rrca                                             ; $530a: $0f
	rlca                                             ; $530b: $07
	inc b                                            ; $530c: $04
	inc hl                                           ; $530d: $23
	ret nz                                           ; $530e: $c0

	ld a, c                                          ; $530f: $79
	ld a, [hl]                                       ; $5310: $7e
	inc de                                           ; $5311: $13
	cp a                                             ; $5312: $bf
	ld [hl], e                                       ; $5313: $73
	ret nz                                           ; $5314: $c0

	ld a, a                                          ; $5315: $7f
	cp a                                             ; $5316: $bf
	sbc [hl]                                         ; $5317: $9e
	rlca                                             ; $5318: $07
	ld [hl], a                                       ; $5319: $77
	ld a, h                                          ; $531a: $7c
	db $ed                                           ; $531b: $ed
	ld a, a                                          ; $531c: $7f
	ret nz                                           ; $531d: $c0

	ld [hl], a                                       ; $531e: $77
	cp [hl]                                          ; $531f: $be
	rra                                              ; $5320: $1f
	cp l                                             ; $5321: $bd
	ld l, a                                          ; $5322: $6f
	ret nz                                           ; $5323: $c0

	ld a, e                                          ; $5324: $7b
	cp a                                             ; $5325: $bf
	cpl                                              ; $5326: $2f
	ld a, a                                          ; $5327: $7f
	ld [hl], e                                       ; $5328: $73
	ret nz                                           ; $5329: $c0

	rra                                              ; $532a: $1f
	cp [hl]                                          ; $532b: $be
	db $ed                                           ; $532c: $ed
	ld bc, $cd80                                     ; $532d: $01 $80 $cd
	ld [hl-], a                                      ; $5330: $32
	call Call_063_5432                               ; $5331: $cd $32 $54
	cp e                                             ; $5334: $bb
	ld d, [hl]                                       ; $5335: $56
	cp c                                             ; $5336: $b9
	ld e, e                                          ; $5337: $5b
	cp l                                             ; $5338: $bd
	ld l, h                                          ; $5339: $6c
	sbc a                                            ; $533a: $9f
	ld l, $df                                        ; $533b: $2e $df
	ld d, a                                          ; $533d: $57
	db $ed                                           ; $533e: $ed
	daa                                              ; $533f: $27
	rst $38                                          ; $5340: $ff
	db $d3                                           ; $5341: $d3
	cp $7f                                           ; $5342: $fe $7f
	rst $38                                          ; $5344: $ff
	ld a, a                                          ; $5345: $7f
	db $fc                                           ; $5346: $fc
	dec l                                            ; $5347: $2d
	or $37                                           ; $5348: $f6 $37
	ldh [c], a                                       ; $534a: $e2
	halt                                             ; $534b: $76
	and a                                            ; $534c: $a7
	ld a, a                                          ; $534d: $7f
	adc d                                            ; $534e: $8a
	or l                                             ; $534f: $b5
	db $ed                                           ; $5350: $ed

jr_063_5351:
	cp b                                             ; $5351: $b8
	xor $bc                                          ; $5352: $ee $bc
	sbc $af                                          ; $5354: $de $af
	rst SubAFromHL                                          ; $5356: $d7
	xor [hl]                                         ; $5357: $ae
	sub $bf                                          ; $5358: $d6 $bf
	db $fd                                           ; $535a: $fd
	sub a                                            ; $535b: $97
	db $fd                                           ; $535c: $fd
	sub a                                            ; $535d: $97
	push af                                          ; $535e: $f5
	sub a                                            ; $535f: $97
	or c                                             ; $5360: $b1
	rst SubAFromHL                                          ; $5361: $d7
	or l                                             ; $5362: $b5
	db $d3                                           ; $5363: $d3
	ld [hl], a                                       ; $5364: $77
	cp $80                                           ; $5365: $fe $80
	or a                                             ; $5367: $b7
	db $d3                                           ; $5368: $d3
	or d                                             ; $5369: $b2
	rst SubAFromHL                                          ; $536a: $d7
	cp d                                             ; $536b: $ba
	rst SubAFromHL                                          ; $536c: $d7
	ld a, [$b4d7]                                    ; $536d: $fa $d7 $b4
	ld c, e                                          ; $5370: $4b
	sbc c                                            ; $5371: $99
	ld l, a                                          ; $5372: $6f
	and b                                            ; $5373: $a0
	ld a, a                                          ; $5374: $7f
	and h                                            ; $5375: $a4
	ld a, a                                          ; $5376: $7f
	ld [hl], $ff                                     ; $5377: $36 $ff
	sbc e                                            ; $5379: $9b
	rst $38                                          ; $537a: $ff
	db $dd                                           ; $537b: $dd
	rst FarCall                                          ; $537c: $f7
	rst AddAOntoHL                                          ; $537d: $ef
	ei                                               ; $537e: $fb
	rst $38                                          ; $537f: $ff
	sbc a                                            ; $5380: $9f
	rst FarCall                                          ; $5381: $f7
	inc sp                                           ; $5382: $33
	rst SubAFromBC                                          ; $5383: $e7
	ld h, [hl]                                       ; $5384: $66
	db $ed                                           ; $5385: $ed
	add b                                            ; $5386: $80
	ld l, a                                          ; $5387: $6f
	rst $38                                          ; $5388: $ff
	db $dd                                           ; $5389: $dd
	ld d, e                                          ; $538a: $53
	add hl, de                                       ; $538b: $19
	ld c, $0a                                        ; $538c: $0e $0a
	add b                                            ; $538e: $80
	nop                                              ; $538f: $00
	ret nz                                           ; $5390: $c0

	add b                                            ; $5391: $80
	add b                                            ; $5392: $80
	ret nz                                           ; $5393: $c0

	ldh [rLCDC], a                                   ; $5394: $e0 $40
	ld [hl], b                                       ; $5396: $70
	jr nz, jr_063_5351                               ; $5397: $20 $b8

	ld [hl], b                                       ; $5399: $70
	call c, $ddf8                                    ; $539a: $dc $f8 $dd
	cp $57                                           ; $539d: $fe $57
	rst $38                                          ; $539f: $ff
	ld d, [hl]                                       ; $53a0: $56
	rst $38                                          ; $53a1: $ff
	ld c, d                                          ; $53a2: $4a
	rst $38                                          ; $53a3: $ff
	ld l, d                                          ; $53a4: $6a
	rst SubAFromDE                                          ; $53a5: $df
	ld a, a                                          ; $53a6: $7f
	cp $80                                           ; $53a7: $fe $80
	ld [$ee5f], a                                    ; $53a9: $ea $5f $ee
	ld e, a                                          ; $53ac: $5f
	rst SubAFromHL                                          ; $53ad: $d7
	ld l, a                                          ; $53ae: $6f
	rst FarCall                                          ; $53af: $f7
	ld l, a                                          ; $53b0: $6f
	xor h                                            ; $53b1: $ac
	ld a, a                                          ; $53b2: $7f
	ld l, $fb                                        ; $53b3: $2e $fb
	sub a                                            ; $53b5: $97
	db $fd                                           ; $53b6: $fd
	rst SubAFromHL                                          ; $53b7: $d7
	rst $38                                          ; $53b8: $ff
	ld l, a                                          ; $53b9: $6f
	cp $77                                           ; $53ba: $fe $77
	rst SubAFromDE                                          ; $53bc: $df
	cp a                                             ; $53bd: $bf
	xor $ff                                          ; $53be: $ee $ff

Jump_063_53c0:
	ld [hl], e                                       ; $53c0: $73
	rst $38                                          ; $53c1: $ff
	add b                                            ; $53c2: $80
	cp $00                                           ; $53c3: $fe $00
	ret c                                            ; $53c5: $d8

	nop                                              ; $53c6: $00
	add b                                            ; $53c7: $80
	cp $98                                           ; $53c8: $fe $98
	inc b                                            ; $53ca: $04
	nop                                              ; $53cb: $00
	ld b, $00                                        ; $53cc: $06 $00
	ld c, $08                                        ; $53ce: $0e $08
	inc b                                            ; $53d0: $04
	db $f4                                           ; $53d1: $f4
	add b                                            ; $53d2: $80
	ret nz                                           ; $53d3: $c0

	nop                                              ; $53d4: $00
	ld hl, sp-$20                                    ; $53d5: $f8 $e0
	rst $38                                          ; $53d7: $ff
	reti                                             ; $53d8: $d9


	pop af                                           ; $53d9: $f1
	ret nz                                           ; $53da: $c0

	ldh [$c0], a                                     ; $53db: $e0 $c0
	ret nc                                           ; $53dd: $d0

	ret nz                                           ; $53de: $c0

	ret c                                            ; $53df: $d8

	ret nz                                           ; $53e0: $c0

	xor h                                            ; $53e1: $ac
	ldh [$1f], a                                     ; $53e2: $e0 $1f
	di                                               ; $53e4: $f3
	sub d                                            ; $53e5: $92
	rst $38                                          ; $53e6: $ff
	ld c, c                                          ; $53e7: $49
	rst $38                                          ; $53e8: $ff
	ld a, $f7                                        ; $53e9: $3e $f7
	rst $38                                          ; $53eb: $ff
	db $eb                                           ; $53ec: $eb
	rst $38                                          ; $53ed: $ff
	inc a                                            ; $53ee: $3c
	rst $38                                          ; $53ef: $ff
	ld a, a                                          ; $53f0: $7f
	rst SubAFromBC                                          ; $53f1: $e7
	sub c                                            ; $53f2: $91
	rst SubAFromBC                                          ; $53f3: $e7
	rst GetHLinHL                                          ; $53f4: $cf
	call Call_063_5e7b                               ; $53f5: $cd $7b $5e
	ld a, a                                          ; $53f8: $7f
	ld a, [hl-]                                      ; $53f9: $3a
	daa                                              ; $53fa: $27
	ld [hl-], a                                      ; $53fb: $32
	rra                                              ; $53fc: $1f
	inc d                                            ; $53fd: $14
	ld bc, $0300                                     ; $53fe: $01 $00 $03
	ld [hl], e                                       ; $5401: $73
	cp $9e                                           ; $5402: $fe $9e
	rlca                                             ; $5404: $07
	ld [hl], e                                       ; $5405: $73
	cp $8c                                           ; $5406: $fe $8c
	rrca                                             ; $5408: $0f
	ld bc, $030f                                     ; $5409: $01 $0f $03
	rra                                              ; $540c: $1f
	rlca                                             ; $540d: $07
	rra                                              ; $540e: $1f
	rrca                                             ; $540f: $0f
	ccf                                              ; $5410: $3f
	rra                                              ; $5411: $1f
	rst $38                                          ; $5412: $ff
	ccf                                              ; $5413: $3f
	rst $38                                          ; $5414: $ff

jr_063_5415:
	db $fd                                           ; $5415: $fd
	rst $38                                          ; $5416: $ff
	add hl, sp                                       ; $5417: $39
	ccf                                              ; $5418: $3f
	nop                                              ; $5419: $00
	rra                                              ; $541a: $1f
	ld a, e                                          ; $541b: $7b
	db $ec                                           ; $541c: $ec
	add b                                            ; $541d: $80
	ld c, $0f                                        ; $541e: $0e $0f
	ld [de], a                                       ; $5420: $12
	rla                                              ; $5421: $17
	ld c, b                                          ; $5422: $48
	ld hl, sp+$54                                    ; $5423: $f8 $54
	db $fc                                           ; $5425: $fc
	push de                                          ; $5426: $d5
	db $fd                                           ; $5427: $fd
	db $fc                                           ; $5428: $fc
	db $fc                                           ; $5429: $fc
	db $f4                                           ; $542a: $f4
	db $fc                                           ; $542b: $fc
	or a                                             ; $542c: $b7
	rst $38                                          ; $542d: $ff
	call $dcfd                                       ; $542e: $cd $fd $dc
	ld [hl], h                                       ; $5431: $74

Call_063_5432:
	db $fc                                           ; $5432: $fc
	ld h, h                                          ; $5433: $64
	db $fc                                           ; $5434: $fc
	ld d, h                                          ; $5435: $54
	db $f4                                           ; $5436: $f4
	ld l, h                                          ; $5437: $6c
	db $fc                                           ; $5438: $fc
	ld c, h                                          ; $5439: $4c
	call c, $cc74                                    ; $543a: $dc $74 $cc
	sub l                                            ; $543d: $95
	inc [hl]                                         ; $543e: $34
	or h                                             ; $543f: $b4
	ld c, h                                          ; $5440: $4c
	call c, $bf7c                                    ; $5441: $dc $7c $bf
	ld a, a                                          ; $5444: $7f
	rst AddAOntoHL                                          ; $5445: $ef
	rst $38                                          ; $5446: $ff
	xor l                                            ; $5447: $ad
	ld a, e                                          ; $5448: $7b
	cp $8c                                           ; $5449: $fe $8c
	add hl, hl                                       ; $544b: $29
	rst $38                                          ; $544c: $ff
	add hl, hl                                       ; $544d: $29
	xor a                                            ; $544e: $af
	add hl, hl                                       ; $544f: $29
	xor l                                            ; $5450: $ad
	ld bc, $2bad                                     ; $5451: $01 $ad $2b
	sub l                                            ; $5454: $95
	dec bc                                           ; $5455: $0b
	sub l                                            ; $5456: $95
	add c                                            ; $5457: $81
	sub l                                            ; $5458: $95
	sub c                                            ; $5459: $91

jr_063_545a:
	sub l                                            ; $545a: $95
	sub l                                            ; $545b: $95
	sub c                                            ; $545c: $91
	pop de                                           ; $545d: $d1
	ld a, e                                          ; $545e: $7b
	cp $9d                                           ; $545f: $fe $9d
	db $db                                           ; $5461: $db
	sub c                                            ; $5462: $91
	ld b, e                                          ; $5463: $43
	nop                                              ; $5464: $00
	sub e                                            ; $5465: $93
	sbc h                                            ; $5466: $9c
	rst $38                                          ; $5467: $ff
	ld b, $ff                                        ; $5468: $06 $ff
	rra                                              ; $546a: $1f
	ldh a, [$33]                                     ; $546b: $f0 $33
	rst $38                                          ; $546d: $ff
	ld a, l                                          ; $546e: $7d
	di                                               ; $546f: $f3
	reti                                             ; $5470: $d9


	ld c, [hl]                                       ; $5471: $4e
	ld a, e                                          ; $5472: $7b
	nop                                              ; $5473: $00
	ld c, e                                          ; $5474: $4b
	jr nz, jr_063_5415                               ; $5475: $20 $9e

	ld [hl], d                                       ; $5477: $72
	ld [hl], e                                       ; $5478: $73
	jr nz, jr_063_545a                               ; $5479: $20 $df

	add b                                            ; $547b: $80
	ld h, e                                          ; $547c: $63
	jr nz, @+$65                                     ; $547d: $20 $63

	ld b, b                                          ; $547f: $40
	sub h                                            ; $5480: $94
	db $10                                           ; $5481: $10
	rst $38                                          ; $5482: $ff
	nop                                              ; $5483: $00
	rst $38                                          ; $5484: $ff
	jr c, @+$01                                      ; $5485: $38 $ff

	ld a, [hl]                                       ; $5487: $7e
	rst SubAFromBC                                          ; $5488: $e7
	rst JumpTable                                          ; $5489: $c7
	ld a, e                                          ; $548a: $7b
	ccf                                              ; $548b: $3f
	ld d, a                                          ; $548c: $57
	ld b, b                                          ; $548d: $40
	ld b, e                                          ; $548e: $43
	ld h, b                                          ; $548f: $60
	sbc [hl]                                         ; $5490: $9e
	db $e4                                           ; $5491: $e4
	ld c, a                                          ; $5492: $4f
	ld h, b                                          ; $5493: $60
	ld b, d                                          ; $5494: $42
	ld b, b                                          ; $5495: $40
	sbc h                                            ; $5496: $9c
	cp $d3                                           ; $5497: $fe $d3
	rst $38                                          ; $5499: $ff
	ld d, [hl]                                       ; $549a: $56
	ld b, b                                          ; $549b: $40
	ld b, e                                          ; $549c: $43
	ld h, b                                          ; $549d: $60
	sbc [hl]                                         ; $549e: $9e
	call c, $987b                                    ; $549f: $dc $7b $98
	ld [hl], a                                       ; $54a2: $77
	cp $99                                           ; $54a3: $fe $99
	rrca                                             ; $54a5: $0f
	ei                                               ; $54a6: $fb
	dec de                                           ; $54a7: $1b
	cp $7c                                           ; $54a8: $fe $7c
	sbc b                                            ; $54aa: $98
	cpl                                              ; $54ab: $2f
	ld h, b                                          ; $54ac: $60
	ld a, d                                          ; $54ad: $7a
	add b                                            ; $54ae: $80
	rst SubAFromDE                                          ; $54af: $df
	add b                                            ; $54b0: $80
	sbc [hl]                                         ; $54b1: $9e
	add h                                            ; $54b2: $84
	ld d, a                                          ; $54b3: $57
	ld h, b                                          ; $54b4: $60
	rst SubAFromDE                                          ; $54b5: $df
	rst $38                                          ; $54b6: $ff
	ld [hl], a                                       ; $54b7: $77
	ld h, b                                          ; $54b8: $60
	ld l, a                                          ; $54b9: $6f
	cp $9a                                           ; $54ba: $fe $9a
	ccf                                              ; $54bc: $3f
	rst AddAOntoHL                                          ; $54bd: $ef
	xor $7f                                          ; $54be: $ee $7f
	inc a                                            ; $54c0: $3c
	inc hl                                           ; $54c1: $23
	ld h, b                                          ; $54c2: $60
	ld a, [hl]                                       ; $54c3: $7e
	ret nz                                           ; $54c4: $c0

	sbc [hl]                                         ; $54c5: $9e
	call nc, Call_063_6057                           ; $54c6: $d4 $57 $60
	inc hl                                           ; $54c9: $23
	add b                                            ; $54ca: $80
	sbc h                                            ; $54cb: $9c
	ld c, $ff                                        ; $54cc: $0e $ff
	inc bc                                           ; $54ce: $03
	ld [hl], a                                       ; $54cf: $77
	add b                                            ; $54d0: $80
	dec sp                                           ; $54d1: $3b
	and b                                            ; $54d2: $a0
	sbc h                                            ; $54d3: $9c
	inc e                                            ; $54d4: $1c
	rst $38                                          ; $54d5: $ff
	jp $a013                                         ; $54d6: $c3 $13 $a0


	ld a, a                                          ; $54d9: $7f
	nop                                              ; $54da: $00
	sbc [hl]                                         ; $54db: $9e
	db $ec                                           ; $54dc: $ec
	ld e, a                                          ; $54dd: $5f
	and b                                            ; $54de: $a0
	rst $38                                          ; $54df: $ff
	ld a, a                                          ; $54e0: $7f
	sub $7d                                          ; $54e1: $d6 $7d
	sub a                                            ; $54e3: $97
	sbc [hl]                                         ; $54e4: $9e
	dec b                                            ; $54e5: $05
	cp $7f                                           ; $54e6: $fe $7f
	call nc, $9eed                                   ; $54e8: $d4 $ed $9e
	ld b, b                                          ; $54eb: $40
	ld a, e                                          ; $54ec: $7b
	ld [hl], $76                                     ; $54ed: $36 $76
	sub d                                            ; $54ef: $92
	rst SubAFromBC                                          ; $54f0: $e7
	ld a, a                                          ; $54f1: $7f
	ret nz                                           ; $54f2: $c0

	sbc e                                            ; $54f3: $9b
	dec e                                            ; $54f4: $1d
	add hl, bc                                       ; $54f5: $09
	rlca                                             ; $54f6: $07
	ld b, $27                                        ; $54f7: $06 $27
	ret nz                                           ; $54f9: $c0

	sbc [hl]                                         ; $54fa: $9e
	ld h, b                                          ; $54fb: $60
	ld [hl], l                                       ; $54fc: $75
	ld a, $0b                                        ; $54fd: $3e $0b
	ret nz                                           ; $54ff: $c0

	sbc d                                            ; $5500: $9a
	inc e                                            ; $5501: $1c
	ld [$070f], sp                                   ; $5502: $08 $0f $07
	dec b                                            ; $5505: $05
	dec de                                           ; $5506: $1b
	ret nz                                           ; $5507: $c0

	ld [hl], a                                       ; $5508: $77
	cp [hl]                                          ; $5509: $be
	rra                                              ; $550a: $1f
	cp h                                             ; $550b: $bc
	ld [hl], e                                       ; $550c: $73
	ret nz                                           ; $550d: $c0

	ld a, a                                          ; $550e: $7f
	cp a                                             ; $550f: $bf
	ld a, e                                          ; $5510: $7b
	cp [hl]                                          ; $5511: $be
	dec hl                                           ; $5512: $2b
	ret nz                                           ; $5513: $c0

	rst SubAFromDE                                          ; $5514: $df
	ret nz                                           ; $5515: $c0

	ld [hl], e                                       ; $5516: $73
	cp [hl]                                          ; $5517: $be
	db $eb                                           ; $5518: $eb
	sbc $01                                          ; $5519: $de $01
	add b                                            ; $551b: $80
	call $cd32                                       ; $551c: $cd $32 $cd
	ld [hl-], a                                      ; $551f: $32
	ld d, h                                          ; $5520: $54
	cp e                                             ; $5521: $bb
	ld d, [hl]                                       ; $5522: $56
	cp c                                             ; $5523: $b9
	ld e, e                                          ; $5524: $5b
	cp l                                             ; $5525: $bd
	ld l, h                                          ; $5526: $6c
	sbc a                                            ; $5527: $9f
	ld l, $df                                        ; $5528: $2e $df
	ld d, a                                          ; $552a: $57
	db $ed                                           ; $552b: $ed
	daa                                              ; $552c: $27
	cp $d3                                           ; $552d: $fe $d3
	rst $38                                          ; $552f: $ff
	ld a, a                                          ; $5530: $7f
	rst $38                                          ; $5531: $ff
	ld a, a                                          ; $5532: $7f
	db $fc                                           ; $5533: $fc
	dec l                                            ; $5534: $2d
	or $37                                           ; $5535: $f6 $37
	ldh [c], a                                       ; $5537: $e2
	halt                                             ; $5538: $76
	and a                                            ; $5539: $a7
	ld a, a                                          ; $553a: $7f
	adc d                                            ; $553b: $8a
	or l                                             ; $553c: $b5
	db $ed                                           ; $553d: $ed

jr_063_553e:
	cp b                                             ; $553e: $b8
	xor $bc                                          ; $553f: $ee $bc
	sbc $af                                          ; $5541: $de $af
	rst SubAFromHL                                          ; $5543: $d7
	xor [hl]                                         ; $5544: $ae
	sub $bf                                          ; $5545: $d6 $bf
	db $fd                                           ; $5547: $fd
	sub a                                            ; $5548: $97
	db $fd                                           ; $5549: $fd
	sub a                                            ; $554a: $97
	push af                                          ; $554b: $f5
	sub a                                            ; $554c: $97
	or c                                             ; $554d: $b1
	rst SubAFromHL                                          ; $554e: $d7
	or l                                             ; $554f: $b5
	db $d3                                           ; $5550: $d3
	ld [hl], a                                       ; $5551: $77
	cp $80                                           ; $5552: $fe $80
	or a                                             ; $5554: $b7
	db $d3                                           ; $5555: $d3
	or d                                             ; $5556: $b2
	rst SubAFromHL                                          ; $5557: $d7
	cp d                                             ; $5558: $ba
	rst SubAFromHL                                          ; $5559: $d7
	ld a, [$b4d7]                                    ; $555a: $fa $d7 $b4
	ld c, e                                          ; $555d: $4b
	sbc c                                            ; $555e: $99
	ld l, a                                          ; $555f: $6f
	and b                                            ; $5560: $a0
	ld a, a                                          ; $5561: $7f
	and h                                            ; $5562: $a4
	ld a, a                                          ; $5563: $7f
	ld [hl], $ff                                     ; $5564: $36 $ff
	sbc e                                            ; $5566: $9b
	rst $38                                          ; $5567: $ff
	db $dd                                           ; $5568: $dd
	rst FarCall                                          ; $5569: $f7
	rst AddAOntoHL                                          ; $556a: $ef
	ei                                               ; $556b: $fb
	rst $38                                          ; $556c: $ff
	sbc [hl]                                         ; $556d: $9e
	rst FarCall                                          ; $556e: $f7
	inc sp                                           ; $556f: $33
	rst SubAFromBC                                          ; $5570: $e7
	ld h, [hl]                                       ; $5571: $66
	db $ed                                           ; $5572: $ed
	add b                                            ; $5573: $80
	rst AddAOntoHL                                          ; $5574: $ef
	rst $38                                          ; $5575: $ff
	ld e, l                                          ; $5576: $5d
	ld d, e                                          ; $5577: $53
	add hl, de                                       ; $5578: $19
	ld c, $0a                                        ; $5579: $0e $0a
	add b                                            ; $557b: $80
	nop                                              ; $557c: $00
	ret nz                                           ; $557d: $c0

	add b                                            ; $557e: $80
	add b                                            ; $557f: $80
	ret nz                                           ; $5580: $c0

	ldh [rLCDC], a                                   ; $5581: $e0 $40
	ld [hl], b                                       ; $5583: $70
	jr nz, jr_063_553e                               ; $5584: $20 $b8

	ld [hl], b                                       ; $5586: $70
	call c, $ddf8                                    ; $5587: $dc $f8 $dd
	cp $57                                           ; $558a: $fe $57
	rst $38                                          ; $558c: $ff
	ld d, [hl]                                       ; $558d: $56
	rst $38                                          ; $558e: $ff
	ld c, d                                          ; $558f: $4a
	rst $38                                          ; $5590: $ff
	ld l, d                                          ; $5591: $6a
	rst SubAFromDE                                          ; $5592: $df
	ld a, a                                          ; $5593: $7f
	cp $80                                           ; $5594: $fe $80
	ld [$ee5f], a                                    ; $5596: $ea $5f $ee
	ld e, a                                          ; $5599: $5f
	rst SubAFromHL                                          ; $559a: $d7
	ld l, a                                          ; $559b: $6f
	rst FarCall                                          ; $559c: $f7
	ld l, a                                          ; $559d: $6f
	xor h                                            ; $559e: $ac
	ld a, a                                          ; $559f: $7f
	ld l, $fb                                        ; $55a0: $2e $fb
	sub a                                            ; $55a2: $97
	db $fd                                           ; $55a3: $fd
	rst SubAFromHL                                          ; $55a4: $d7
	rst $38                                          ; $55a5: $ff
	ld l, a                                          ; $55a6: $6f
	cp $77                                           ; $55a7: $fe $77
	rst SubAFromDE                                          ; $55a9: $df
	cp a                                             ; $55aa: $bf
	xor $ff                                          ; $55ab: $ee $ff
	ld [hl], e                                       ; $55ad: $73
	rst $38                                          ; $55ae: $ff
	add b                                            ; $55af: $80
	cp $00                                           ; $55b0: $fe $00
	ret c                                            ; $55b2: $d8

	nop                                              ; $55b3: $00
	add b                                            ; $55b4: $80
	cp $98                                           ; $55b5: $fe $98
	inc b                                            ; $55b7: $04
	nop                                              ; $55b8: $00
	ld b, $00                                        ; $55b9: $06 $00
	ld c, $08                                        ; $55bb: $0e $08
	inc b                                            ; $55bd: $04
	db $f4                                           ; $55be: $f4
	add b                                            ; $55bf: $80
	ret nz                                           ; $55c0: $c0

	nop                                              ; $55c1: $00
	ld hl, sp-$20                                    ; $55c2: $f8 $e0
	rst $38                                          ; $55c4: $ff
	reti                                             ; $55c5: $d9


	pop af                                           ; $55c6: $f1
	ret nz                                           ; $55c7: $c0

	ldh [$c0], a                                     ; $55c8: $e0 $c0
	ret nc                                           ; $55ca: $d0

	ret nz                                           ; $55cb: $c0

	ret c                                            ; $55cc: $d8

	ret nz                                           ; $55cd: $c0

	xor h                                            ; $55ce: $ac
	ldh [$1f], a                                     ; $55cf: $e0 $1f
	di                                               ; $55d1: $f3
	sub d                                            ; $55d2: $92
	rst $38                                          ; $55d3: $ff
	ld c, c                                          ; $55d4: $49
	rst $38                                          ; $55d5: $ff
	ld a, $f7                                        ; $55d6: $3e $f7
	rst $38                                          ; $55d8: $ff
	db $eb                                           ; $55d9: $eb
	rst $38                                          ; $55da: $ff
	jr c, @+$01                                      ; $55db: $38 $ff

	ld a, [hl]                                       ; $55dd: $7e
	rst SubAFromBC                                          ; $55de: $e7
	sub c                                            ; $55df: $91
	rst SubAFromBC                                          ; $55e0: $e7
	rst GetHLinHL                                          ; $55e1: $cf
	call Call_063_5e7b                               ; $55e2: $cd $7b $5e
	ld a, a                                          ; $55e5: $7f
	ld a, [hl-]                                      ; $55e6: $3a
	daa                                              ; $55e7: $27
	ld [hl-], a                                      ; $55e8: $32
	rra                                              ; $55e9: $1f
	inc d                                            ; $55ea: $14
	ld bc, $0300                                     ; $55eb: $01 $00 $03
	ld [hl], e                                       ; $55ee: $73
	cp $9e                                           ; $55ef: $fe $9e
	rlca                                             ; $55f1: $07
	ld [hl], e                                       ; $55f2: $73
	cp $8c                                           ; $55f3: $fe $8c
	rrca                                             ; $55f5: $0f
	ld bc, $030f                                     ; $55f6: $01 $0f $03
	rra                                              ; $55f9: $1f
	rlca                                             ; $55fa: $07
	rra                                              ; $55fb: $1f
	rrca                                             ; $55fc: $0f
	ccf                                              ; $55fd: $3f
	rra                                              ; $55fe: $1f
	rst $38                                          ; $55ff: $ff
	ccf                                              ; $5600: $3f
	rst $38                                          ; $5601: $ff

jr_063_5602:
	db $fd                                           ; $5602: $fd
	rst $38                                          ; $5603: $ff
	add hl, sp                                       ; $5604: $39
	ccf                                              ; $5605: $3f
	nop                                              ; $5606: $00
	rra                                              ; $5607: $1f
	ld a, e                                          ; $5608: $7b
	db $ec                                           ; $5609: $ec
	add b                                            ; $560a: $80
	ld c, $0f                                        ; $560b: $0e $0f
	ld [de], a                                       ; $560d: $12
	rla                                              ; $560e: $17
	ld c, b                                          ; $560f: $48
	ld hl, sp+$54                                    ; $5610: $f8 $54
	db $fc                                           ; $5612: $fc
	push de                                          ; $5613: $d5
	db $fd                                           ; $5614: $fd
	db $fc                                           ; $5615: $fc
	db $fc                                           ; $5616: $fc
	db $f4                                           ; $5617: $f4
	db $fc                                           ; $5618: $fc
	or a                                             ; $5619: $b7
	rst $38                                          ; $561a: $ff
	call $dcfd                                       ; $561b: $cd $fd $dc
	ld [hl], h                                       ; $561e: $74
	db $fc                                           ; $561f: $fc
	ld h, h                                          ; $5620: $64
	db $fc                                           ; $5621: $fc
	ld d, h                                          ; $5622: $54
	db $f4                                           ; $5623: $f4
	ld l, h                                          ; $5624: $6c
	db $fc                                           ; $5625: $fc
	ld c, h                                          ; $5626: $4c
	call c, $cc74                                    ; $5627: $dc $74 $cc
	sub l                                            ; $562a: $95
	inc [hl]                                         ; $562b: $34
	or h                                             ; $562c: $b4
	ld c, h                                          ; $562d: $4c
	call c, $bf7c                                    ; $562e: $dc $7c $bf
	ld a, a                                          ; $5631: $7f
	rst AddAOntoHL                                          ; $5632: $ef
	rst $38                                          ; $5633: $ff
	xor l                                            ; $5634: $ad
	ld a, e                                          ; $5635: $7b
	cp $8c                                           ; $5636: $fe $8c
	add hl, hl                                       ; $5638: $29
	rst $38                                          ; $5639: $ff
	add hl, hl                                       ; $563a: $29
	xor a                                            ; $563b: $af
	add hl, hl                                       ; $563c: $29
	xor l                                            ; $563d: $ad
	ld bc, $2bad                                     ; $563e: $01 $ad $2b
	sub l                                            ; $5641: $95
	dec bc                                           ; $5642: $0b
	sub l                                            ; $5643: $95
	add c                                            ; $5644: $81
	sub l                                            ; $5645: $95
	sub c                                            ; $5646: $91

jr_063_5647:
	sub l                                            ; $5647: $95
	sub l                                            ; $5648: $95
	sub c                                            ; $5649: $91
	pop de                                           ; $564a: $d1
	ld a, e                                          ; $564b: $7b
	cp $9d                                           ; $564c: $fe $9d
	db $db                                           ; $564e: $db
	sub c                                            ; $564f: $91
	ld b, e                                          ; $5650: $43
	nop                                              ; $5651: $00
	sub e                                            ; $5652: $93
	sbc h                                            ; $5653: $9c
	rst $38                                          ; $5654: $ff
	ld b, $ff                                        ; $5655: $06 $ff
	rra                                              ; $5657: $1f
	ldh a, [$33]                                     ; $5658: $f0 $33
	rst $38                                          ; $565a: $ff
	db $fd                                           ; $565b: $fd
	di                                               ; $565c: $f3
	ld e, c                                          ; $565d: $59
	ld c, [hl]                                       ; $565e: $4e
	ld a, e                                          ; $565f: $7b
	nop                                              ; $5660: $00
	ld c, e                                          ; $5661: $4b
	jr nz, jr_063_5602                               ; $5662: $20 $9e

	ld [hl], d                                       ; $5664: $72
	ld [hl], e                                       ; $5665: $73
	jr nz, jr_063_5647                               ; $5666: $20 $df

	add b                                            ; $5668: $80
	ld h, e                                          ; $5669: $63
	jr nz, @+$65                                     ; $566a: $20 $63

	ld b, b                                          ; $566c: $40
	sbc d                                            ; $566d: $9a
	db $10                                           ; $566e: $10
	rst $38                                          ; $566f: $ff
	nop                                              ; $5670: $00
	rst $38                                          ; $5671: $ff
	jr jr_063_56ef                                   ; $5672: $18 $7b

	inc a                                            ; $5674: $3c
	sbc h                                            ; $5675: $9c
	rst JumpTable                                          ; $5676: $c7
	ld a, e                                          ; $5677: $7b
	ccf                                              ; $5678: $3f
	ld d, a                                          ; $5679: $57
	ld b, b                                          ; $567a: $40
	ld b, e                                          ; $567b: $43
	ld h, b                                          ; $567c: $60
	sbc [hl]                                         ; $567d: $9e
	db $e4                                           ; $567e: $e4
	ld c, a                                          ; $567f: $4f
	ld h, b                                          ; $5680: $60
	ld c, e                                          ; $5681: $4b
	add b                                            ; $5682: $80
	sbc d                                            ; $5683: $9a
	cp a                                             ; $5684: $bf
	rst $38                                          ; $5685: $ff
	db $fc                                           ; $5686: $fc
	rst $38                                          ; $5687: $ff
	add b                                            ; $5688: $80
	ld a, e                                          ; $5689: $7b
	or [hl]                                          ; $568a: $b6
	ld a, a                                          ; $568b: $7f
	cp $99                                           ; $568c: $fe $99
	rrca                                             ; $568e: $0f
	ei                                               ; $568f: $fb
	dec de                                           ; $5690: $1b
	cp $7c                                           ; $5691: $fe $7c
	sbc b                                            ; $5693: $98
	cpl                                              ; $5694: $2f
	add b                                            ; $5695: $80
	ld a, d                                          ; $5696: $7a
	and b                                            ; $5697: $a0
	rst SubAFromDE                                          ; $5698: $df
	add b                                            ; $5699: $80
	sbc [hl]                                         ; $569a: $9e
	add h                                            ; $569b: $84
	ld d, a                                          ; $569c: $57
	add b                                            ; $569d: $80
	rst SubAFromDE                                          ; $569e: $df
	rst $38                                          ; $569f: $ff
	ld [hl], a                                       ; $56a0: $77
	add b                                            ; $56a1: $80
	ld l, a                                          ; $56a2: $6f
	cp $9a                                           ; $56a3: $fe $9a
	ccf                                              ; $56a5: $3f
	rst AddAOntoHL                                          ; $56a6: $ef
	xor $7f                                          ; $56a7: $ee $7f
	inc a                                            ; $56a9: $3c
	inc hl                                           ; $56aa: $23
	add b                                            ; $56ab: $80
	ld a, [hl]                                       ; $56ac: $7e
	ldh [$9e], a                                     ; $56ad: $e0 $9e
	call nc, $8003                                   ; $56af: $d4 $03 $80
	ld [hl], a                                       ; $56b2: $77
	cp d                                             ; $56b3: $ba
	sbc h                                            ; $56b4: $9c
	ld c, $ff                                        ; $56b5: $0e $ff
	inc bc                                           ; $56b7: $03
	ld [hl], a                                       ; $56b8: $77
	add b                                            ; $56b9: $80
	dec sp                                           ; $56ba: $3b
	and b                                            ; $56bb: $a0
	sbc h                                            ; $56bc: $9c
	inc e                                            ; $56bd: $1c
	rst $38                                          ; $56be: $ff
	jp $a013                                         ; $56bf: $c3 $13 $a0


	ld a, a                                          ; $56c2: $7f
	jr nz, @-$60                                     ; $56c3: $20 $9e

	db $ec                                           ; $56c5: $ec
	ld e, a                                          ; $56c6: $5f
	and b                                            ; $56c7: $a0
	rst $38                                          ; $56c8: $ff
	ld a, a                                          ; $56c9: $7f
	sub $9c                                          ; $56ca: $d6 $9c
	rra                                              ; $56cc: $1f
	ld [$fe05], sp                                   ; $56cd: $08 $05 $fe
	ld a, a                                          ; $56d0: $7f
	call nc, Call_063_79eb                           ; $56d1: $d4 $eb $79
	sbc [hl]                                         ; $56d4: $9e
	db $e4                                           ; $56d5: $e4
	ld a, e                                          ; $56d6: $7b
	ret nz                                           ; $56d7: $c0

	sbc l                                            ; $56d8: $9d
	rrca                                             ; $56d9: $0f
	dec c                                            ; $56da: $0d
	inc bc                                           ; $56db: $03
	ret nz                                           ; $56dc: $c0

	rla                                              ; $56dd: $17
	ret nz                                           ; $56de: $c0

	sbc e                                            ; $56df: $9b
	add hl, de                                       ; $56e0: $19
	ld bc, $0f0f                                     ; $56e1: $01 $0f $0f
	ld [hl], a                                       ; $56e4: $77
	ld a, [hl]                                       ; $56e5: $7e
	dec hl                                           ; $56e6: $2b
	ret nz                                           ; $56e7: $c0

	dec bc                                           ; $56e8: $0b
	cp [hl]                                          ; $56e9: $be
	ld [hl], a                                       ; $56ea: $77
	ret nz                                           ; $56eb: $c0

	ld a, a                                          ; $56ec: $7f
	ld a, [hl]                                       ; $56ed: $7e
	sbc l                                            ; $56ee: $9d

jr_063_56ef:
	rrca                                             ; $56ef: $0f
	rlca                                             ; $56f0: $07
	daa                                              ; $56f1: $27
	cp [hl]                                          ; $56f2: $be
	ld [hl], a                                       ; $56f3: $77
	ret nz                                           ; $56f4: $c0

	rra                                              ; $56f5: $1f
	cp [hl]                                          ; $56f6: $be
	ldh [rSB], a                                     ; $56f7: $e0 $01
	add b                                            ; $56f9: $80
	call $cd32                                       ; $56fa: $cd $32 $cd
	ld [hl-], a                                      ; $56fd: $32
	ld d, h                                          ; $56fe: $54
	cp e                                             ; $56ff: $bb
	ld d, [hl]                                       ; $5700: $56
	cp c                                             ; $5701: $b9
	ld e, e                                          ; $5702: $5b
	cp l                                             ; $5703: $bd
	ld l, h                                          ; $5704: $6c
	sbc a                                            ; $5705: $9f
	ld l, $df                                        ; $5706: $2e $df
	ld d, a                                          ; $5708: $57
	db $ed                                           ; $5709: $ed
	daa                                              ; $570a: $27
	rst $38                                          ; $570b: $ff
	db $d3                                           ; $570c: $d3
	cp $7f                                           ; $570d: $fe $7f
	rst $38                                          ; $570f: $ff
	ld a, a                                          ; $5710: $7f
	db $fc                                           ; $5711: $fc
	dec l                                            ; $5712: $2d
	or $37                                           ; $5713: $f6 $37
	ldh [c], a                                       ; $5715: $e2
	halt                                             ; $5716: $76
	and a                                            ; $5717: $a7
	ld a, a                                          ; $5718: $7f
	adc d                                            ; $5719: $8a
	or l                                             ; $571a: $b5
	db $ed                                           ; $571b: $ed

jr_063_571c:
	cp b                                             ; $571c: $b8
	xor $bc                                          ; $571d: $ee $bc
	sbc $af                                          ; $571f: $de $af
	rst SubAFromHL                                          ; $5721: $d7
	xor [hl]                                         ; $5722: $ae
	sub $bf                                          ; $5723: $d6 $bf
	db $fd                                           ; $5725: $fd
	sub a                                            ; $5726: $97
	db $fd                                           ; $5727: $fd
	sub a                                            ; $5728: $97
	push af                                          ; $5729: $f5
	sub a                                            ; $572a: $97
	or c                                             ; $572b: $b1
	rst SubAFromHL                                          ; $572c: $d7
	or l                                             ; $572d: $b5
	db $d3                                           ; $572e: $d3
	ld [hl], a                                       ; $572f: $77
	cp $80                                           ; $5730: $fe $80
	or a                                             ; $5732: $b7
	db $d3                                           ; $5733: $d3
	or d                                             ; $5734: $b2
	rst SubAFromHL                                          ; $5735: $d7
	cp d                                             ; $5736: $ba
	rst SubAFromHL                                          ; $5737: $d7
	ld a, [$b4d7]                                    ; $5738: $fa $d7 $b4
	ld c, e                                          ; $573b: $4b
	sbc c                                            ; $573c: $99
	ld l, a                                          ; $573d: $6f
	and b                                            ; $573e: $a0
	ld a, a                                          ; $573f: $7f
	and h                                            ; $5740: $a4
	ld a, a                                          ; $5741: $7f
	ld [hl], $ff                                     ; $5742: $36 $ff
	sbc e                                            ; $5744: $9b
	rst $38                                          ; $5745: $ff
	db $dd                                           ; $5746: $dd
	rst FarCall                                          ; $5747: $f7
	rst AddAOntoHL                                          ; $5748: $ef
	rst $38                                          ; $5749: $ff
	rst $38                                          ; $574a: $ff
	ld e, $f7                                        ; $574b: $1e $f7
	inc sp                                           ; $574d: $33
	rst FarCall                                          ; $574e: $f7
	ld h, a                                          ; $574f: $67
	db $ed                                           ; $5750: $ed
	add b                                            ; $5751: $80
	xor $ff                                          ; $5752: $ee $ff
	ld e, l                                          ; $5754: $5d
	ld d, e                                          ; $5755: $53
	add hl, de                                       ; $5756: $19
	adc [hl]                                         ; $5757: $8e
	ld a, [bc]                                       ; $5758: $0a
	add b                                            ; $5759: $80
	nop                                              ; $575a: $00
	ret nz                                           ; $575b: $c0

	add b                                            ; $575c: $80
	add b                                            ; $575d: $80
	ret nz                                           ; $575e: $c0

	ldh [rLCDC], a                                   ; $575f: $e0 $40
	ld [hl], b                                       ; $5761: $70
	jr nz, jr_063_571c                               ; $5762: $20 $b8

	ld [hl], b                                       ; $5764: $70
	call c, $ddf8                                    ; $5765: $dc $f8 $dd
	cp $57                                           ; $5768: $fe $57
	rst $38                                          ; $576a: $ff
	ld d, [hl]                                       ; $576b: $56
	rst $38                                          ; $576c: $ff
	ld c, d                                          ; $576d: $4a
	rst $38                                          ; $576e: $ff
	ld l, d                                          ; $576f: $6a
	rst SubAFromDE                                          ; $5770: $df
	ld a, a                                          ; $5771: $7f
	cp $80                                           ; $5772: $fe $80
	ld [$ee5f], a                                    ; $5774: $ea $5f $ee
	ld e, a                                          ; $5777: $5f
	rst SubAFromHL                                          ; $5778: $d7
	ld l, a                                          ; $5779: $6f
	rst FarCall                                          ; $577a: $f7
	ld l, a                                          ; $577b: $6f
	xor h                                            ; $577c: $ac
	ld a, a                                          ; $577d: $7f
	ld l, $fb                                        ; $577e: $2e $fb
	sub a                                            ; $5780: $97
	db $fd                                           ; $5781: $fd
	rst SubAFromHL                                          ; $5782: $d7
	db $fc                                           ; $5783: $fc
	ld l, a                                          ; $5784: $6f
	cp $77                                           ; $5785: $fe $77
	rst SubAFromDE                                          ; $5787: $df
	cp a                                             ; $5788: $bf
	xor $ff                                          ; $5789: $ee $ff
	ld [hl], d                                       ; $578b: $72
	rst $38                                          ; $578c: $ff
	add b                                            ; $578d: $80
	cp $00                                           ; $578e: $fe $00
	ret c                                            ; $5790: $d8

	nop                                              ; $5791: $00
	add b                                            ; $5792: $80
	cp $98                                           ; $5793: $fe $98
	inc b                                            ; $5795: $04
	nop                                              ; $5796: $00
	ld b, $00                                        ; $5797: $06 $00
	ld c, $08                                        ; $5799: $0e $08
	inc b                                            ; $579b: $04
	db $f4                                           ; $579c: $f4
	add b                                            ; $579d: $80
	ret nz                                           ; $579e: $c0

	nop                                              ; $579f: $00
	ld hl, sp-$20                                    ; $57a0: $f8 $e0
	rst $38                                          ; $57a2: $ff
	reti                                             ; $57a3: $d9


	pop af                                           ; $57a4: $f1
	ret nz                                           ; $57a5: $c0

	ldh [$c0], a                                     ; $57a6: $e0 $c0
	ret nc                                           ; $57a8: $d0

	ret nz                                           ; $57a9: $c0

	ret c                                            ; $57aa: $d8

	ret nz                                           ; $57ab: $c0

	xor h                                            ; $57ac: $ac
	ldh [$1f], a                                     ; $57ad: $e0 $1f
	di                                               ; $57af: $f3
	sub d                                            ; $57b0: $92
	rst $38                                          ; $57b1: $ff
	ld c, c                                          ; $57b2: $49
	rst $38                                          ; $57b3: $ff
	ld a, $f7                                        ; $57b4: $3e $f7
	rst $38                                          ; $57b6: $ff
	db $eb                                           ; $57b7: $eb
	rst $38                                          ; $57b8: $ff
	cp h                                             ; $57b9: $bc
	rst $38                                          ; $57ba: $ff
	ld a, a                                          ; $57bb: $7f
	rst SubAFromBC                                          ; $57bc: $e7
	sub c                                            ; $57bd: $91
	rst SubAFromBC                                          ; $57be: $e7
	rst GetHLinHL                                          ; $57bf: $cf
	call Call_063_5e7b                               ; $57c0: $cd $7b $5e
	ld a, a                                          ; $57c3: $7f
	ld a, [hl-]                                      ; $57c4: $3a
	daa                                              ; $57c5: $27
	ld [hl-], a                                      ; $57c6: $32
	rra                                              ; $57c7: $1f
	inc d                                            ; $57c8: $14
	ld bc, $0300                                     ; $57c9: $01 $00 $03
	ld [hl], e                                       ; $57cc: $73
	cp $9e                                           ; $57cd: $fe $9e
	rlca                                             ; $57cf: $07
	ld [hl], e                                       ; $57d0: $73
	cp $8c                                           ; $57d1: $fe $8c
	rrca                                             ; $57d3: $0f
	ld bc, $030f                                     ; $57d4: $01 $0f $03
	rra                                              ; $57d7: $1f
	rlca                                             ; $57d8: $07
	rra                                              ; $57d9: $1f
	rrca                                             ; $57da: $0f
	ccf                                              ; $57db: $3f
	rra                                              ; $57dc: $1f
	rst $38                                          ; $57dd: $ff
	ccf                                              ; $57de: $3f
	rst $38                                          ; $57df: $ff
	db $fd                                           ; $57e0: $fd
	rst $38                                          ; $57e1: $ff
	add hl, sp                                       ; $57e2: $39
	ccf                                              ; $57e3: $3f
	nop                                              ; $57e4: $00
	rra                                              ; $57e5: $1f
	ld a, e                                          ; $57e6: $7b
	db $ec                                           ; $57e7: $ec
	add b                                            ; $57e8: $80
	ld c, $0f                                        ; $57e9: $0e $0f
	ld [de], a                                       ; $57eb: $12
	rla                                              ; $57ec: $17
	ld c, b                                          ; $57ed: $48
	ld hl, sp+$54                                    ; $57ee: $f8 $54
	db $fc                                           ; $57f0: $fc
	push de                                          ; $57f1: $d5
	db $fd                                           ; $57f2: $fd
	db $fc                                           ; $57f3: $fc
	db $fc                                           ; $57f4: $fc
	db $f4                                           ; $57f5: $f4
	db $fc                                           ; $57f6: $fc
	or a                                             ; $57f7: $b7
	rst $38                                          ; $57f8: $ff
	call $dcfd                                       ; $57f9: $cd $fd $dc
	ld [hl], h                                       ; $57fc: $74
	db $fc                                           ; $57fd: $fc
	ld h, h                                          ; $57fe: $64
	db $fc                                           ; $57ff: $fc
	ld d, h                                          ; $5800: $54
	db $f4                                           ; $5801: $f4
	ld l, h                                          ; $5802: $6c
	db $fc                                           ; $5803: $fc
	ld c, h                                          ; $5804: $4c
	call c, $cc74                                    ; $5805: $dc $74 $cc
	sub l                                            ; $5808: $95
	inc [hl]                                         ; $5809: $34
	or h                                             ; $580a: $b4
	ld c, h                                          ; $580b: $4c
	call c, $bf7c                                    ; $580c: $dc $7c $bf
	ld a, a                                          ; $580f: $7f
	rst AddAOntoHL                                          ; $5810: $ef
	rst $38                                          ; $5811: $ff
	xor l                                            ; $5812: $ad
	ld a, e                                          ; $5813: $7b
	cp $8c                                           ; $5814: $fe $8c
	add hl, hl                                       ; $5816: $29
	rst $38                                          ; $5817: $ff
	add hl, hl                                       ; $5818: $29
	xor a                                            ; $5819: $af
	add hl, hl                                       ; $581a: $29
	xor l                                            ; $581b: $ad
	ld bc, $2bad                                     ; $581c: $01 $ad $2b
	sub l                                            ; $581f: $95
	dec bc                                           ; $5820: $0b

jr_063_5821:
	sub l                                            ; $5821: $95
	add c                                            ; $5822: $81
	sub l                                            ; $5823: $95
	sub c                                            ; $5824: $91
	sub l                                            ; $5825: $95
	sub l                                            ; $5826: $95
	sub c                                            ; $5827: $91
	pop de                                           ; $5828: $d1
	ld a, e                                          ; $5829: $7b
	cp $9d                                           ; $582a: $fe $9d
	db $db                                           ; $582c: $db
	sub c                                            ; $582d: $91
	ld b, e                                          ; $582e: $43
	nop                                              ; $582f: $00
	sub e                                            ; $5830: $93
	sbc [hl]                                         ; $5831: $9e
	rst $38                                          ; $5832: $ff
	ld b, $ff                                        ; $5833: $06 $ff
	rra                                              ; $5835: $1f
	ldh a, [c]                                       ; $5836: $f2
	inc sp                                           ; $5837: $33
	db $fd                                           ; $5838: $fd
	rst $38                                          ; $5839: $ff
	di                                               ; $583a: $f3
	ld e, c                                          ; $583b: $59
	ld c, [hl]                                       ; $583c: $4e
	ld a, e                                          ; $583d: $7b
	nop                                              ; $583e: $00
	inc sp                                           ; $583f: $33
	jr nz, jr_063_5821                               ; $5840: $20 $df

	add b                                            ; $5842: $80
	ld h, e                                          ; $5843: $63
	jr nz, jr_063_58a9                               ; $5844: $20 $63

	ld b, b                                          ; $5846: $40
	sub h                                            ; $5847: $94
	sub b                                            ; $5848: $90
	rst $38                                          ; $5849: $ff
	nop                                              ; $584a: $00
	rst $38                                          ; $584b: $ff
	jr c, @+$01                                      ; $584c: $38 $ff

	ld a, [hl]                                       ; $584e: $7e
	rst SubAFromBC                                          ; $584f: $e7
	rst JumpTable                                          ; $5850: $c7
	ld a, e                                          ; $5851: $7b
	ccf                                              ; $5852: $3f
	ld d, a                                          ; $5853: $57
	ld b, b                                          ; $5854: $40
	ld b, e                                          ; $5855: $43
	ld h, b                                          ; $5856: $60
	sbc [hl]                                         ; $5857: $9e
	db $e4                                           ; $5858: $e4
	ld c, a                                          ; $5859: $4f
	ld h, b                                          ; $585a: $60
	ld b, d                                          ; $585b: $42
	ld b, b                                          ; $585c: $40
	sbc h                                            ; $585d: $9c
	cp $d3                                           ; $585e: $fe $d3
	rst $38                                          ; $5860: $ff
	ld d, [hl]                                       ; $5861: $56
	ld b, b                                          ; $5862: $40
	ld c, e                                          ; $5863: $4b
	ld h, b                                          ; $5864: $60
	sbc h                                            ; $5865: $9c
	ei                                               ; $5866: $fb
	rst $38                                          ; $5867: $ff
	rst SubAFromDE                                          ; $5868: $df
	ld a, e                                          ; $5869: $7b
	sbc b                                            ; $586a: $98
	ld [hl], a                                       ; $586b: $77
	cp $99                                           ; $586c: $fe $99
	rrca                                             ; $586e: $0f
	ei                                               ; $586f: $fb
	dec de                                           ; $5870: $1b
	cp $7c                                           ; $5871: $fe $7c
	sbc b                                            ; $5873: $98
	ld d, a                                          ; $5874: $57
	ld h, b                                          ; $5875: $60
	sbc h                                            ; $5876: $9c
	sbc $bf                                          ; $5877: $de $bf
	rst AddAOntoHL                                          ; $5879: $ef
	ld e, [hl]                                       ; $587a: $5e
	add b                                            ; $587b: $80
	rst SubAFromDE                                          ; $587c: $df
	add b                                            ; $587d: $80
	sbc [hl]                                         ; $587e: $9e
	add h                                            ; $587f: $84
	ld d, a                                          ; $5880: $57
	ld h, b                                          ; $5881: $60
	rst SubAFromDE                                          ; $5882: $df
	rst $38                                          ; $5883: $ff
	sbc h                                            ; $5884: $9c
	ld [hl], b                                       ; $5885: $70
	rst $38                                          ; $5886: $ff
	add b                                            ; $5887: $80
	ld l, e                                          ; $5888: $6b
	add $9a                                          ; $5889: $c6 $9a
	ccf                                              ; $588b: $3f
	rst AddAOntoHL                                          ; $588c: $ef
	xor $7f                                          ; $588d: $ee $7f
	inc a                                            ; $588f: $3c
	inc hl                                           ; $5890: $23
	ld h, b                                          ; $5891: $60
	ld a, [hl]                                       ; $5892: $7e
	ret nz                                           ; $5893: $c0

	sbc [hl]                                         ; $5894: $9e
	call nc, Call_063_6057                           ; $5895: $d4 $57 $60
	inc hl                                           ; $5898: $23
	add b                                            ; $5899: $80
	sbc h                                            ; $589a: $9c
	ld c, $ff                                        ; $589b: $0e $ff
	inc bc                                           ; $589d: $03
	ld [hl], a                                       ; $589e: $77
	add b                                            ; $589f: $80
	dec sp                                           ; $58a0: $3b
	and b                                            ; $58a1: $a0
	sbc h                                            ; $58a2: $9c
	inc e                                            ; $58a3: $1c
	rst $38                                          ; $58a4: $ff
	jp $a013                                         ; $58a5: $c3 $13 $a0


	ld a, a                                          ; $58a8: $7f

jr_063_58a9:
	nop                                              ; $58a9: $00
	sbc [hl]                                         ; $58aa: $9e
	db $ec                                           ; $58ab: $ec
	ld e, a                                          ; $58ac: $5f
	and b                                            ; $58ad: $a0
	db $fd                                           ; $58ae: $fd
	sbc h                                            ; $58af: $9c
	rlca                                             ; $58b0: $07
	inc bc                                           ; $58b1: $03
	dec c                                            ; $58b2: $0d
	cp $7f                                           ; $58b3: $fe $7f
	call nc, Call_063_76e9                           ; $58b5: $d4 $e9 $76
	sub d                                            ; $58b8: $92
	push hl                                          ; $58b9: $e5
	sbc d                                            ; $58ba: $9a
	rrca                                             ; $58bb: $0f
	rlca                                             ; $58bc: $07
	rrca                                             ; $58bd: $0f
	ld c, $04                                        ; $58be: $0e $04
	inc bc                                           ; $58c0: $03
	ret nz                                           ; $58c1: $c0

	inc de                                           ; $58c2: $13
	ret nz                                           ; $58c3: $c0

	rst SubAFromDE                                          ; $58c4: $df
	rrca                                             ; $58c5: $0f
	sbc [hl]                                         ; $58c6: $9e
	rlca                                             ; $58c7: $07
	ld c, l                                          ; $58c8: $4d
	ld d, [hl]                                       ; $58c9: $56
	ld c, a                                          ; $58ca: $4f
	ret nz                                           ; $58cb: $c0

	rrca                                             ; $58cc: $0f
	cp [hl]                                          ; $58cd: $be
	ld [hl], e                                       ; $58ce: $73
	ret nz                                           ; $58cf: $c0

	dec de                                           ; $58d0: $1b
	cp [hl]                                          ; $58d1: $be
	halt                                             ; $58d2: $76
	ld [hl], d                                       ; $58d3: $72
	ld [hl], c                                       ; $58d4: $71
	call $f4ee                                       ; $58d5: $cd $ee $f4
	ld [bc], a                                       ; $58d8: $02
	db $eb                                           ; $58d9: $eb
	rst SubAFromDE                                          ; $58da: $df
	ccf                                              ; $58db: $3f
	sbc e                                            ; $58dc: $9b
	inc c                                            ; $58dd: $0c
	rrca                                             ; $58de: $0f
	inc bc                                           ; $58df: $03
	inc bc                                           ; $58e0: $03
	db $fd                                           ; $58e1: $fd
	db $db                                           ; $58e2: $db
	ld bc, $03df                                     ; $58e3: $01 $df $03
	sub c                                            ; $58e6: $91
	ld [bc], a                                       ; $58e7: $02
	inc bc                                           ; $58e8: $03
	ld b, $07                                        ; $58e9: $06 $07
	ld b, $07                                        ; $58eb: $06 $07
	ld c, $0b                                        ; $58ed: $0e $0b
	ld c, $0f                                        ; $58ef: $0e $0f
	dec c                                            ; $58f1: $0d
	rrca                                             ; $58f2: $0f
	dec e                                            ; $58f3: $1d
	rla                                              ; $58f4: $17
	ld [hl], a                                       ; $58f5: $77
	cp $99                                           ; $58f6: $fe $99
	rra                                              ; $58f8: $1f
	rla                                              ; $58f9: $17
	rra                                              ; $58fa: $1f
	dec d                                            ; $58fb: $15
	rra                                              ; $58fc: $1f
	dec d                                            ; $58fd: $15
	push hl                                          ; $58fe: $e5
	rst SubAFromDE                                          ; $58ff: $df
	ld bc, $ca7f                                     ; $5900: $01 $7f $ca
	add b                                            ; $5903: $80
	dec b                                            ; $5904: $05
	ld b, $0b                                        ; $5905: $06 $0b
	inc c                                            ; $5907: $0c
	rlca                                             ; $5908: $07
	ld [$151b], sp                                   ; $5909: $08 $1b $15
	rla                                              ; $590c: $17
	dec de                                           ; $590d: $1b
	ld h, $3b                                        ; $590e: $26 $3b
	dec l                                            ; $5910: $2d
	scf                                              ; $5911: $37
	ld l, $37                                        ; $5912: $2e $37
	ld a, [hl+]                                      ; $5914: $2a
	dec a                                            ; $5915: $3d
	dec d                                            ; $5916: $15
	ld a, [hl-]                                      ; $5917: $3a
	ld a, c                                          ; $5918: $79
	ld h, [hl]                                       ; $5919: $66
	cp e                                             ; $591a: $bb
	call nz, $2cd3                                   ; $591b: $c4 $d3 $2c
	db $d3                                           ; $591e: $d3
	db $ec                                           ; $591f: $ec
	ld a, a                                          ; $5920: $7f
	ld b, b                                          ; $5921: $40
	ld a, e                                          ; $5922: $7b
	add b                                            ; $5923: $80
	ld b, h                                          ; $5924: $44
	ld [hl], c                                       ; $5925: $71
	ld c, [hl]                                       ; $5926: $4e
	ld d, h                                          ; $5927: $54
	ld l, a                                          ; $5928: $6f
	ld d, h                                          ; $5929: $54
	ld l, a                                          ; $592a: $6f
	ld a, [hl-]                                      ; $592b: $3a
	daa                                              ; $592c: $27
	ld a, [hl+]                                      ; $592d: $2a
	scf                                              ; $592e: $37
	dec a                                            ; $592f: $3d
	inc sp                                           ; $5930: $33
	dec a                                            ; $5931: $3d
	dec hl                                           ; $5932: $2b
	inc [hl]                                         ; $5933: $34
	cpl                                              ; $5934: $2f
	dec sp                                           ; $5935: $3b
	ld h, $5b                                        ; $5936: $26 $5b
	ld h, a                                          ; $5938: $67
	ld e, e                                          ; $5939: $5b
	ld [hl], a                                       ; $593a: $77
	ld a, d                                          ; $593b: $7a
	ld d, a                                          ; $593c: $57
	ld a, d                                          ; $593d: $7a
	ld d, a                                          ; $593e: $57
	ld a, l                                          ; $593f: $7d
	ld d, a                                          ; $5940: $57
	ld [hl], l                                       ; $5941: $75
	ld e, a                                          ; $5942: $5f
	ld a, a                                          ; $5943: $7f
	cp $80                                           ; $5944: $fe $80
	ld d, l                                          ; $5946: $55
	ld a, a                                          ; $5947: $7f
	ld d, l                                          ; $5948: $55
	ld a, a                                          ; $5949: $7f
	and l                                            ; $594a: $a5
	rst $38                                          ; $594b: $ff
	xor d                                            ; $594c: $aa
	rst $38                                          ; $594d: $ff
	cp d                                             ; $594e: $ba
	rst AddAOntoHL                                          ; $594f: $ef
	cp [hl]                                          ; $5950: $be
	db $eb                                           ; $5951: $eb
	sbc [hl]                                         ; $5952: $9e
	db $eb                                           ; $5953: $eb
	xor e                                            ; $5954: $ab
	sbc $bf                                          ; $5955: $de $bf
	sub $bd                                          ; $5957: $d6 $bd
	sub $d6                                          ; $5959: $d6 $d6
	cp l                                             ; $595b: $bd
	db $eb                                           ; $595c: $eb
	cp l                                             ; $595d: $bd
	ei                                               ; $595e: $fb
	xor l                                            ; $595f: $ad
	xor l                                            ; $5960: $ad
	ld a, e                                          ; $5961: $7b
	rst SubAFromHL                                          ; $5962: $d7
	ld a, e                                          ; $5963: $7b
	ld d, [hl]                                       ; $5964: $56
	sub e                                            ; $5965: $93
	ei                                               ; $5966: $fb
	ld [hl-], a                                      ; $5967: $32
	rst $38                                          ; $5968: $ff
	ld [hl-], a                                      ; $5969: $32
	rst $38                                          ; $596a: $ff
	ld [hl], h                                       ; $596b: $74
	rst SubAFromDE                                          ; $596c: $df
	ld h, h                                          ; $596d: $64
	rst SubAFromDE                                          ; $596e: $df
	db $e4                                           ; $596f: $e4
	cp a                                             ; $5970: $bf
	jp hl                                            ; $5971: $e9


	ld [hl], a                                       ; $5972: $77
	cp $8e                                           ; $5973: $fe $8e
	rst $38                                          ; $5975: $ff
	cp c                                             ; $5976: $b9
	ld a, [hl]                                       ; $5977: $7e
	or e                                             ; $5978: $b3
	ld a, [hl]                                       ; $5979: $7e

jr_063_597a:
	or e                                             ; $597a: $b3
	ld a, h                                          ; $597b: $7c
	or a                                             ; $597c: $b7
	ld a, l                                          ; $597d: $7d
	push af                                          ; $597e: $f5
	ld a, l                                          ; $597f: $7d
	db $fd                                           ; $5980: $fd
	dec a                                            ; $5981: $3d
	db $fd                                           ; $5982: $fd
	dec a                                            ; $5983: $3d
	cp l                                             ; $5984: $bd
	inc [hl]                                         ; $5985: $34
	cpl                                              ; $5986: $2f
	ld l, b                                          ; $5987: $68
	rst SubAFromDE                                          ; $5988: $df
	rra                                              ; $5989: $1f
	add b                                            ; $598a: $80
	ld h, b                                          ; $598b: $60
	ld a, a                                          ; $598c: $7f
	db $fc                                           ; $598d: $fc
	di                                               ; $598e: $f3
	inc de                                           ; $598f: $13
	rst AddAOntoHL                                          ; $5990: $ef
	ld l, h                                          ; $5991: $6c
	sbc a                                            ; $5992: $9f
	or e                                             ; $5993: $b3
	ld a, h                                          ; $5994: $7c
	ld c, b                                          ; $5995: $48
	rst $38                                          ; $5996: $ff
	or a                                             ; $5997: $b7
	ld hl, sp-$29                                    ; $5998: $f8 $d7
	rst AddAOntoHL                                          ; $599a: $ef
	ld e, c                                          ; $599b: $59
	cp [hl]                                          ; $599c: $be
	ld l, [hl]                                       ; $599d: $6e
	pop af                                           ; $599e: $f1
	or h                                             ; $599f: $b4
	jp z, $926c                                      ; $59a0: $ca $6c $92

	ld l, c                                          ; $59a3: $69
	inc d                                            ; $59a4: $14
	ld c, c                                          ; $59a5: $49
	inc h                                            ; $59a6: $24
	jp nz, $8028                                     ; $59a7: $c2 $28 $80

	sub [hl]                                         ; $59aa: $96
	ld c, b                                          ; $59ab: $48
	adc b                                            ; $59ac: $88
	ld c, b                                          ; $59ad: $48
	jr jr_063_597a                                   ; $59ae: $18 $ca

	ld e, c                                          ; $59b0: $59
	jp z, $db4e                                      ; $59b1: $ca $4e $db

	ldh [$c1], a                                     ; $59b4: $e0 $c1
	add h                                            ; $59b6: $84
	sub c                                            ; $59b7: $91
	push af                                          ; $59b8: $f5
	sub c                                            ; $59b9: $91
	push af                                          ; $59ba: $f5
	sub b                                            ; $59bb: $90
	push af                                          ; $59bc: $f5
	sub b                                            ; $59bd: $90
	ld a, [$faa0]                                    ; $59be: $fa $a0 $fa
	cp b                                             ; $59c1: $b8
	ld [$ebba], a                                    ; $59c2: $ea $ba $eb
	ld [$ede7], a                                    ; $59c5: $ea $e7 $ed
	rst JumpTable                                          ; $59c8: $c7
	push hl                                          ; $59c9: $e5
	rst JumpTable                                          ; $59ca: $c7
	push bc                                          ; $59cb: $c5
	rst JumpTable                                          ; $59cc: $c7
	add $83                                          ; $59cd: $c6 $83
	add d                                            ; $59cf: $82
	add e                                            ; $59d0: $83
	add e                                            ; $59d1: $83
	db $dd                                           ; $59d2: $dd
	ld bc, $6a53                                     ; $59d3: $01 $53 $6a
	rst SubAFromDE                                          ; $59d6: $df
	ld bc, $19df                                     ; $59d7: $01 $df $19
	adc b                                            ; $59da: $88
	rrca                                             ; $59db: $0f
	ld c, $0f                                        ; $59dc: $0e $0f
	ld b, $fe                                        ; $59de: $06 $fe
	push af                                          ; $59e0: $f5
	dec d                                            ; $59e1: $15
	rst $38                                          ; $59e2: $ff
	jp z, $3fff                                      ; $59e3: $ca $ff $3f

	rst $38                                          ; $59e6: $ff
	rst AddAOntoHL                                          ; $59e7: $ef

jr_063_59e8:
	ldh a, [rIE]                                     ; $59e8: $f0 $ff
	nop                                              ; $59ea: $00

jr_063_59eb:
	ldh [$1f], a                                     ; $59eb: $e0 $1f
	rst $38                                          ; $59ed: $ff
	nop                                              ; $59ee: $00
	ld a, a                                          ; $59ef: $7f
	rst $38                                          ; $59f0: $ff
	adc a                                            ; $59f1: $8f
	ld a, e                                          ; $59f2: $7b
	or $89                                           ; $59f3: $f6 $89
	ld e, e                                          ; $59f5: $5b
	inc b                                            ; $59f6: $04
	sbc e                                            ; $59f7: $9b
	ld b, h                                          ; $59f8: $44
	sub h                                            ; $59f9: $94
	ld b, d                                          ; $59fa: $42
	inc h                                            ; $59fb: $24
	sub d                                            ; $59fc: $92
	inc h                                            ; $59fd: $24
	sub d                                            ; $59fe: $92
	inc b                                            ; $59ff: $04
	sub d                                            ; $5a00: $92
	ld b, $82                                        ; $5a01: $06 $82
	add [hl]                                         ; $5a03: $86
	sub d                                            ; $5a04: $92
	jp z, $0292                                      ; $5a05: $ca $92 $02

	db $db                                           ; $5a08: $db
	ld c, e                                          ; $5a09: $4b
	rst $38                                          ; $5a0a: $ff
	ldh [$c1], a                                     ; $5a0b: $e0 $c1
	add b                                            ; $5a0d: $80
	db $fc                                           ; $5a0e: $fc
	jr nc, @+$01                                     ; $5a0f: $30 $ff

	rlca                                             ; $5a11: $07
	rst $38                                          ; $5a12: $ff
	nop                                              ; $5a13: $00
	rst $38                                          ; $5a14: $ff
	add b                                            ; $5a15: $80
	rst $38                                          ; $5a16: $ff
	jr nc, jr_063_59e8                               ; $5a17: $30 $cf

	add a                                            ; $5a19: $87
	ret nz                                           ; $5a1a: $c0

	add b                                            ; $5a1b: $80
	ret nz                                           ; $5a1c: $c0

	add b                                            ; $5a1d: $80
	ld b, b                                          ; $5a1e: $40
	add b                                            ; $5a1f: $80
	ld h, b                                          ; $5a20: $60
	ret nz                                           ; $5a21: $c0

	ld h, b                                          ; $5a22: $60
	ret nz                                           ; $5a23: $c0

	and b                                            ; $5a24: $a0
	ret nz                                           ; $5a25: $c0

	or b                                             ; $5a26: $b0
	ldh [$50], a                                     ; $5a27: $e0 $50
	ldh [$50], a                                     ; $5a29: $e0 $50
	ldh a, [$e8]                                     ; $5a2b: $f0 $e8
	sbc [hl]                                         ; $5a2d: $9e
	ldh a, [$f3]                                     ; $5a2e: $f0 $f3
	db $dd                                           ; $5a30: $dd
	add b                                            ; $5a31: $80
	rst SubAFromDE                                          ; $5a32: $df

jr_063_5a33:
	cp [hl]                                          ; $5a33: $be
	add b                                            ; $5a34: $80
	ld sp, hl                                        ; $5a35: $f9
	rst JumpTable                                          ; $5a36: $c7
	ld h, e                                          ; $5a37: $63
	sbc a                                            ; $5a38: $9f
	rra                                              ; $5a39: $1f
	ldh [$c0], a                                     ; $5a3a: $e0 $c0
	rst $38                                          ; $5a3c: $ff
	dec a                                            ; $5a3d: $3d
	cp $f3                                           ; $5a3e: $fe $f3
	rrca                                             ; $5a40: $0f
	ld c, $f1                                        ; $5a41: $0e $f1
	pop af                                           ; $5a43: $f1
	ld c, $e6                                        ; $5a44: $0e $e6
	ld sp, hl                                        ; $5a46: $f9
	rra                                              ; $5a47: $1f
	rst $38                                          ; $5a48: $ff
	db $fc                                           ; $5a49: $fc
	inc bc                                           ; $5a4a: $03
	db $d3                                           ; $5a4b: $d3
	jr z, jr_063_5aa7                                ; $5a4c: $28 $59

	and h                                            ; $5a4e: $a4
	ld h, d                                          ; $5a4f: $62
	sub h                                            ; $5a50: $94
	inc h                                            ; $5a51: $24
	sub d                                            ; $5a52: $92
	ld hl, $9293                                     ; $5a53: $21 $93 $92
	jr z, jr_063_59eb                                ; $5a56: $28 $93

	inc bc                                           ; $5a58: $03
	add hl, de                                       ; $5a59: $19
	db $10                                           ; $5a5a: $10
	add hl, bc                                       ; $5a5b: $09
	sub h                                            ; $5a5c: $94
	ld c, c                                          ; $5a5d: $49
	add b                                            ; $5a5e: $80
	ld l, l                                          ; $5a5f: $6d
	inc h                                            ; $5a60: $24
	inc bc                                           ; $5a61: $03
	ld h, b                                          ; $5a62: $60
	pop hl                                           ; $5a63: $e1
	sbc h                                            ; $5a64: $9c
	ld b, $1f                                        ; $5a65: $06 $1f
	ldh [$7b], a                                     ; $5a67: $e0 $7b
	ld h, c                                          ; $5a69: $61
	sub l                                            ; $5a6a: $95
	ld bc, $06ff                                     ; $5a6b: $01 $ff $06
	cp $e0                                           ; $5a6e: $fe $e0
	pop af                                           ; $5a70: $f1
	ld [bc], a                                       ; $5a71: $02
	ld b, $08                                        ; $5a72: $06 $08
	jr c, jr_063_5a33                                ; $5a74: $38 $bd

	nop                                              ; $5a76: $00
	nop                                              ; $5a77: $00

jr_063_5a78:
	nop                                              ; $5a78: $00
	ld bc, $039c                                     ; $5a79: $01 $9c $03
	rlca                                             ; $5a7c: $07
	inc b                                            ; $5a7d: $04
	ld a, c                                          ; $5a7e: $79
	ld [hl], b                                       ; $5a7f: $70
	db $eb                                           ; $5a80: $eb
	rst SubAFromDE                                          ; $5a81: $df
	add b                                            ; $5a82: $80
	rst SubAFromDE                                          ; $5a83: $df
	ldh [$80], a                                     ; $5a84: $e0 $80
	jr nc, jr_063_5a78                               ; $5a86: $30 $f0

	ld [$b4f8], sp                                   ; $5a88: $08 $f8 $b4
	ld a, h                                          ; $5a8b: $7c
	ld l, d                                          ; $5a8c: $6a
	sbc [hl]                                         ; $5a8d: $9e
	push de                                          ; $5a8e: $d5
	rst AddAOntoHL                                          ; $5a8f: $ef
	xor d                                            ; $5a90: $aa
	ld a, a                                          ; $5a91: $7f
	dec d                                            ; $5a92: $15
	rst $38                                          ; $5a93: $ff
	ld a, [bc]                                       ; $5a94: $0a
	rst $38                                          ; $5a95: $ff
	add $ff                                          ; $5a96: $c6 $ff
	dec [hl]                                         ; $5a98: $35
	rst $38                                          ; $5a99: $ff
	xor d                                            ; $5a9a: $aa
	rra                                              ; $5a9b: $1f
	sub [hl]                                         ; $5a9c: $96
	ld c, a                                          ; $5a9d: $4f
	xor d                                            ; $5a9e: $aa
	ld b, a                                          ; $5a9f: $47
	ld c, l                                          ; $5aa0: $4d
	inc hl                                           ; $5aa1: $23
	ld d, l                                          ; $5aa2: $55
	inc sp                                           ; $5aa3: $33
	inc [hl]                                         ; $5aa4: $34
	sub a                                            ; $5aa5: $97
	sub e                                            ; $5aa6: $93

jr_063_5aa7:
	xor h                                            ; $5aa7: $ac
	sbc e                                            ; $5aa8: $9b
	xor b                                            ; $5aa9: $a8
	rst SubAFromDE                                          ; $5aaa: $df
	ld b, h                                          ; $5aab: $44
	rst $38                                          ; $5aac: $ff
	ld b, h                                          ; $5aad: $44
	inc bc                                           ; $5aae: $03
	ld h, b                                          ; $5aaf: $60
	pop hl                                           ; $5ab0: $e1
	sub e                                            ; $5ab1: $93
	ei                                               ; $5ab2: $fb
	ld c, $fb                                        ; $5ab3: $0e $fb
	inc l                                            ; $5ab5: $2c
	rst $38                                          ; $5ab6: $ff
	ld e, l                                          ; $5ab7: $5d
	rst AddAOntoHL                                          ; $5ab8: $ef
	ld l, $ce                                        ; $5ab9: $2e $ce
	ld c, h                                          ; $5abb: $4c
	adc [hl]                                         ; $5abc: $8e
	adc h                                            ; $5abd: $8c
	db $db                                           ; $5abe: $db
	inc c                                            ; $5abf: $0c
	sub d                                            ; $5ac0: $92
	ld e, $0c                                        ; $5ac1: $1e $0c
	ld a, [hl]                                       ; $5ac3: $7e
	inc [hl]                                         ; $5ac4: $34
	cp $cc                                           ; $5ac5: $fe $cc
	or $22                                           ; $5ac7: $f6 $22
	rst GetHLinHL                                          ; $5ac9: $cf
	add d                                            ; $5aca: $82
	scf                                              ; $5acb: $37
	ld bc, $7ac7                                     ; $5acc: $01 $c7 $7a
	rra                                              ; $5acf: $1f
	rst SubAFromDE                                          ; $5ad0: $df
	add b                                            ; $5ad1: $80
	sbc [hl]                                         ; $5ad2: $9e
	ld b, b                                          ; $5ad3: $40
	sbc $c0                                          ; $5ad4: $de $c0
	sbc [hl]                                         ; $5ad6: $9e
	ld h, b                                          ; $5ad7: $60
	ld a, e                                          ; $5ad8: $7b
	ld l, [hl]                                       ; $5ad9: $6e
	adc e                                            ; $5ada: $8b
	adc b                                            ; $5adb: $88
	ld hl, sp+$44                                    ; $5adc: $f8 $44
	db $fc                                           ; $5ade: $fc
	ld [hl-], a                                      ; $5adf: $32
	xor $19                                          ; $5ae0: $ee $19
	rst FarCall                                          ; $5ae2: $f7
	adc [hl]                                         ; $5ae3: $8e
	ld sp, hl                                        ; $5ae4: $f9
	rst JumpTable                                          ; $5ae5: $c7
	db $fc                                           ; $5ae6: $fc
	or e                                             ; $5ae7: $b3
	xor $98                                          ; $5ae8: $ee $98
	rst FarCall                                          ; $5aea: $f7
	ld l, h                                          ; $5aeb: $6c
	db $db                                           ; $5aec: $db
	halt                                             ; $5aed: $76
	db $ed                                           ; $5aee: $ed
	ldh [$c1], a                                     ; $5aef: $e0 $c1
	sbc e                                            ; $5af1: $9b
	ld b, b                                          ; $5af2: $40
	ret nc                                           ; $5af3: $d0

	add b                                            ; $5af4: $80
	or c                                             ; $5af5: $b1
	cp h                                             ; $5af6: $bc
	ld hl, $6363                                     ; $5af7: $21 $63 $63
	ld b, d                                          ; $5afa: $42
	ld b, d                                          ; $5afb: $42
	sbc l                                            ; $5afc: $9d
	ld [bc], a                                       ; $5afd: $02
	ld b, d                                          ; $5afe: $42
	jp c, Jump_063_7f02                              ; $5aff: $da $02 $7f

	ld hl, sp-$62                                    ; $5b02: $f8 $9e
	ld b, e                                          ; $5b04: $43
	cp a                                             ; $5b05: $bf
	ld h, e                                          ; $5b06: $63
	inc hl                                           ; $5b07: $23
	sbc l                                            ; $5b08: $9d
	ld bc, $2e33                                     ; $5b09: $01 $33 $2e
	ldh [$7f], a                                     ; $5b0c: $e0 $7f
	ld l, [hl]                                       ; $5b0e: $6e
	add d                                            ; $5b0f: $82
	and b                                            ; $5b10: $a0
	ld h, b                                          ; $5b11: $60
	ret nc                                           ; $5b12: $d0

	jr nc, jr_063_5b7d                               ; $5b13: $30 $68

	sbc b                                            ; $5b15: $98
	or h                                             ; $5b16: $b4
	ld c, h                                          ; $5b17: $4c
	ld c, b                                          ; $5b18: $48
	or h                                             ; $5b19: $b4
	and [hl]                                         ; $5b1a: $a6
	ld e, d                                          ; $5b1b: $5a
	db $f4                                           ; $5b1c: $f4
	ld [$3fd9], a                                    ; $5b1d: $ea $d9 $3f
	push af                                          ; $5b20: $f5
	rrca                                             ; $5b21: $0f
	db $fd                                           ; $5b22: $fd
	rlca                                             ; $5b23: $07
	ei                                               ; $5b24: $fb
	rlca                                             ; $5b25: $07
	rst $38                                          ; $5b26: $ff
	inc bc                                           ; $5b27: $03
	rst $38                                          ; $5b28: $ff
	inc bc                                           ; $5b29: $03
	ei                                               ; $5b2a: $fb
	rlca                                             ; $5b2b: $07
	db $fd                                           ; $5b2c: $fd
	ld [hl], e                                       ; $5b2d: $73
	cp $7d                                           ; $5b2e: $fe $7d
	add sp, -$6f                                     ; $5b30: $e8 $91

jr_063_5b32:
	cp $02                                           ; $5b32: $fe $02
	cp $00                                           ; $5b34: $fe $00
	rst FarCall                                          ; $5b36: $f7
	ld bc, $00e1                                     ; $5b37: $01 $e1 $00
	ldh [$80], a                                     ; $5b3a: $e0 $80
	ldh [$80], a                                     ; $5b3c: $e0 $80
	ld [hl], b                                       ; $5b3e: $70
	ret nz                                           ; $5b3f: $c0

	ld a, e                                          ; $5b40: $7b
	cp $81                                           ; $5b41: $fe $81
	ldh [$78], a                                     ; $5b43: $e0 $78
	ldh [$58], a                                     ; $5b45: $e0 $58
	ldh a, [$b8]                                     ; $5b47: $f0 $b8
	ldh a, [$cc]                                     ; $5b49: $f0 $cc
	ret z                                            ; $5b4b: $c8

	db $fc                                           ; $5b4c: $fc
	ld hl, sp+$7e                                    ; $5b4d: $f8 $7e
	ld a, h                                          ; $5b4f: $7c
	halt                                             ; $5b50: $76
	ld [hl], h                                       ; $5b51: $74
	jp $83c2                                         ; $5b52: $c3 $c2 $83


	add d                                            ; $5b55: $82
	inc bc                                           ; $5b56: $03
	add a                                            ; $5b57: $87
	inc b                                            ; $5b58: $04
	rrca                                             ; $5b59: $0f
	ld a, [bc]                                       ; $5b5a: $0a
	rrca                                             ; $5b5b: $0f
	inc c                                            ; $5b5c: $0c
	rra                                              ; $5b5d: $1f
	jr jr_063_5b7f                                   ; $5b5e: $18 $1f

	db $10                                           ; $5b60: $10
	ld e, e                                          ; $5b61: $5b
	cp $95                                           ; $5b62: $fe $95
	nop                                              ; $5b64: $00
	rra                                              ; $5b65: $1f
	ld [$081f], sp                                   ; $5b66: $08 $1f $08
	rrca                                             ; $5b69: $0f

jr_063_5b6a:
	nop                                              ; $5b6a: $00
	rrca                                             ; $5b6b: $0f
	inc b                                            ; $5b6c: $04
	add a                                            ; $5b6d: $87
	ld [hl], a                                       ; $5b6e: $77
	sub d                                            ; $5b6f: $92
	ld a, a                                          ; $5b70: $7f
	db $fd                                           ; $5b71: $fd
	adc e                                            ; $5b72: $8b
	ret nz                                           ; $5b73: $c0

	ld b, b                                          ; $5b74: $40
	and b                                            ; $5b75: $a0
	ld h, b                                          ; $5b76: $60
	ret nz                                           ; $5b77: $c0

	jr nz, jr_063_5b6a                               ; $5b78: $20 $f0

	db $10                                           ; $5b7a: $10
	add sp, $18                                      ; $5b7b: $e8 $18

jr_063_5b7d:
	db $f4                                           ; $5b7d: $f4
	inc c                                            ; $5b7e: $0c

jr_063_5b7f:
	ld hl, sp+$04                                    ; $5b7f: $f8 $04
	cp $02                                           ; $5b81: $fe $02
	db $fd                                           ; $5b83: $fd
	inc bc                                           ; $5b84: $03
	cp $01                                           ; $5b85: $fe $01
	ld a, d                                          ; $5b87: $7a
	add hl, hl                                       ; $5b88: $29
	cp l                                             ; $5b89: $bd
	rst $38                                          ; $5b8a: $ff
	add b                                            ; $5b8b: $80
	add b                                            ; $5b8c: $80
	ret nz                                           ; $5b8d: $c0

	ld [hl], c                                       ; $5b8e: $71
	adc d                                            ; $5b8f: $8a
	sbc [hl]                                         ; $5b90: $9e
	jr nz, @+$7d                                     ; $5b91: $20 $7b

	and b                                            ; $5b93: $a0
	ld a, a                                          ; $5b94: $7f
	sbc h                                            ; $5b95: $9c
	sbc d                                            ; $5b96: $9a
	ld hl, sp-$70                                    ; $5b97: $f8 $90
	ld hl, sp-$80                                    ; $5b99: $f8 $80
	db $e4                                           ; $5b9b: $e4
	ld a, e                                          ; $5b9c: $7b
	sub b                                            ; $5b9d: $90
	ld a, a                                          ; $5b9e: $7f
	ldh a, [$7f]                                     ; $5b9f: $f0 $7f
	db $f4                                           ; $5ba1: $f4
	sbc h                                            ; $5ba2: $9c
	ccf                                              ; $5ba3: $3f
	ldh [$1f], a                                     ; $5ba4: $e0 $1f
	ld c, c                                          ; $5ba6: $49
	add b                                            ; $5ba7: $80
	ld b, a                                          ; $5ba8: $47
	ld a, [hl-]                                      ; $5ba9: $3a
	ld a, a                                          ; $5baa: $7f
	db $fd                                           ; $5bab: $fd
	ld [hl], a                                       ; $5bac: $77
	jr c, jr_063_5b32                                ; $5bad: $38 $83

	ret nz                                           ; $5baf: $c0

	jr nc, @-$16                                     ; $5bb0: $30 $e8

	jr @-$1a                                         ; $5bb2: $18 $e4

	inc e                                            ; $5bb4: $1c
	db $f4                                           ; $5bb5: $f4
	inc c                                            ; $5bb6: $0c
	ldh a, [c]                                       ; $5bb7: $f2
	ld c, $fa                                        ; $5bb8: $0e $fa
	ld b, $f9                                        ; $5bba: $06 $f9
	rlca                                             ; $5bbc: $07
	ld sp, hl                                        ; $5bbd: $f9
	rlca                                             ; $5bbe: $07
	pop af                                           ; $5bbf: $f1

Jump_063_5bc0:
	rrca                                             ; $5bc0: $0f
	pop hl                                           ; $5bc1: $e1
	rra                                              ; $5bc2: $1f
	add c                                            ; $5bc3: $81
	ld a, a                                          ; $5bc4: $7f
	ld [bc], a                                       ; $5bc5: $02
	cp $04                                           ; $5bc6: $fe $04
	db $fc                                           ; $5bc8: $fc
	jr nc, @-$0e                                     ; $5bc9: $30 $f0

	dec e                                            ; $5bcb: $1d
	nop                                              ; $5bcc: $00
	sbc l                                            ; $5bcd: $9d
	sbc c                                            ; $5bce: $99
	call z, $99de                                    ; $5bcf: $cc $de $99
	sbc c                                            ; $5bd2: $99
	sub c                                            ; $5bd3: $91
	ld d, l                                          ; $5bd4: $55
	sbc c                                            ; $5bd5: $99
	ld de, $8888                                     ; $5bd6: $11 $88 $88
	ld e, a                                          ; $5bd9: $5f

jr_063_5bda:
	ei                                               ; $5bda: $fb
	sbc [hl]                                         ; $5bdb: $9e
	nop                                              ; $5bdc: $00
	ld l, a                                          ; $5bdd: $6f
	or $77                                           ; $5bde: $f6 $77
	rst FarCall                                          ; $5be0: $f7
	ld a, a                                          ; $5be1: $7f
	or $bf                                           ; $5be2: $f6 $bf
	xor d                                            ; $5be4: $aa
	xor d                                            ; $5be5: $aa
	sbc [hl]                                         ; $5be6: $9e
	xor d                                            ; $5be7: $aa
	dec b                                            ; $5be8: $05
	ld [bc], a                                       ; $5be9: $02
	add b                                            ; $5bea: $80
	ld l, d                                          ; $5beb: $6a
	rst SubAFromDE                                          ; $5bec: $df
	ld c, e                                          ; $5bed: $4b
	rst $38                                          ; $5bee: $ff
	ld l, e                                          ; $5bef: $6b
	cp $6f                                           ; $5bf0: $fe $6f
	rst $38                                          ; $5bf2: $ff
	ld a, a                                          ; $5bf3: $7f
	rst SubAFromDE                                          ; $5bf4: $df
	ccf                                              ; $5bf5: $3f
	db $fd                                           ; $5bf6: $fd
	cp a                                             ; $5bf7: $bf
	rst SubAFromBC                                          ; $5bf8: $e7
	sbc $fe                                          ; $5bf9: $de $fe
	cp $bc                                           ; $5bfb: $fe $bc
	cp a                                             ; $5bfd: $bf
	rst SubAFromHL                                          ; $5bfe: $d7
	rst FarCall                                          ; $5bff: $f7
	ld b, a                                          ; $5c00: $47
	ld b, e                                          ; $5c01: $43
	ld [hl+], a                                      ; $5c02: $22
	ld [hl], e                                       ; $5c03: $73
	ld h, c                                          ; $5c04: $61
	or a                                             ; $5c05: $b7
	jr nz, jr_063_5bda                               ; $5c06: $20 $d2

	sub b                                            ; $5c08: $90
	ld a, b                                          ; $5c09: $78
	sub c                                            ; $5c0a: $91
	ldh a, [$78]                                     ; $5c0b: $f0 $78
	ld hl, sp+$4c                                    ; $5c0d: $f8 $4c
	ld hl, sp+$4c                                    ; $5c0f: $f8 $4c
	db $fc                                           ; $5c11: $fc
	ld c, [hl]                                       ; $5c12: $4e
	cp $4f                                           ; $5c13: $fe $4f
	rst $38                                          ; $5c15: $ff
	ld c, c                                          ; $5c16: $49
	rst $38                                          ; $5c17: $ff
	adc c                                            ; $5c18: $89
	ld a, e                                          ; $5c19: $7b
	cp $98                                           ; $5c1a: $fe $98
	xor c                                            ; $5c1c: $a9
	rst $38                                          ; $5c1d: $ff
	and l                                            ; $5c1e: $a5
	ei                                               ; $5c1f: $fb
	rst FarCall                                          ; $5c20: $f7
	xor c                                            ; $5c21: $a9
	push hl                                          ; $5c22: $e5
	ld a, e                                          ; $5c23: $7b
	cp $80                                           ; $5c24: $fe $80
	jp hl                                            ; $5c26: $e9


	and l                                            ; $5c27: $a5
	or c                                             ; $5c28: $b1
	push hl                                          ; $5c29: $e5
	or l                                             ; $5c2a: $b5
	pop hl                                           ; $5c2b: $e1
	ld c, e                                          ; $5c2c: $4b
	rst $38                                          ; $5c2d: $ff
	ld l, l                                          ; $5c2e: $6d
	rst $38                                          ; $5c2f: $ff
	cp l                                             ; $5c30: $bd
	rst $38                                          ; $5c31: $ff
	rst $38                                          ; $5c32: $ff
	db $eb                                           ; $5c33: $eb
	rst $38                                          ; $5c34: $ff
	dec h                                            ; $5c35: $25
	rst $38                                          ; $5c36: $ff
	db $10                                           ; $5c37: $10

jr_063_5c38:
	rst $38                                          ; $5c38: $ff
	ret nz                                           ; $5c39: $c0

	ld a, a                                          ; $5c3a: $7f
	jr nz, jr_063_5c38                               ; $5c3b: $20 $fb

	ld h, b                                          ; $5c3d: $60
	pop af                                           ; $5c3e: $f1
	ldh [$a0], a                                     ; $5c3f: $e0 $a0
	ldh [rSTAT], a                                   ; $5c41: $e0 $41
	ld b, b                                          ; $5c43: $40
	jp $8080                                         ; $5c44: $c3 $80 $80


	ld b, e                                          ; $5c47: $43
	ld [bc], a                                       ; $5c48: $02
	and e                                            ; $5c49: $a3
	ld [bc], a                                       ; $5c4a: $02
	nop                                              ; $5c4b: $00
	nop                                              ; $5c4c: $00
	ld [hl-], a                                      ; $5c4d: $32
	rst $38                                          ; $5c4e: $ff
	cp e                                             ; $5c4f: $bb
	rst AddAOntoHL                                          ; $5c50: $ef
	rst $38                                          ; $5c51: $ff
	ld h, [hl]                                       ; $5c52: $66
	rst $38                                          ; $5c53: $ff
	cpl                                              ; $5c54: $2f
	rst $38                                          ; $5c55: $ff
	inc de                                           ; $5c56: $13
	rst $38                                          ; $5c57: $ff
	add a                                            ; $5c58: $87
	rst $38                                          ; $5c59: $ff
	rrca                                             ; $5c5a: $0f
	db $fc                                           ; $5c5b: $fc
	inc e                                            ; $5c5c: $1c
	db $fd                                           ; $5c5d: $fd
	ld [$0fef], sp                                   ; $5c5e: $08 $ef $0f
	rlca                                             ; $5c61: $07
	rlca                                             ; $5c62: $07
	ld b, $04                                        ; $5c63: $06 $04
	sbc h                                            ; $5c65: $9c
	add a                                            ; $5c66: $87
	inc bc                                           ; $5c67: $03
	jp $85be                                         ; $5c68: $c3 $be $85


	nop                                              ; $5c6b: $00
	ld [hl+], a                                      ; $5c6c: $22
	add b                                            ; $5c6d: $80
	rst $38                                          ; $5c6e: $ff
	ld [hl-], a                                      ; $5c6f: $32
	rst $38                                          ; $5c70: $ff
	cp d                                             ; $5c71: $ba
	rst AddAOntoHL                                          ; $5c72: $ef
	db $dd                                           ; $5c73: $dd
	ld [hl], a                                       ; $5c74: $77
	rst $38                                          ; $5c75: $ff
	ei                                               ; $5c76: $fb
	rst $38                                          ; $5c77: $ff
	sbc e                                            ; $5c78: $9b
	db $fd                                           ; $5c79: $fd
	rst JumpTable                                          ; $5c7a: $c7
	db $fc                                           ; $5c7b: $fc
	ld h, a                                          ; $5c7c: $67
	cp $f7                                           ; $5c7d: $fe $f7
	push af                                          ; $5c7f: $f5
	rst GetHLinHL                                          ; $5c80: $cf
	ld a, l                                          ; $5c81: $7d
	ret                                              ; $5c82: $c9


	cp a                                             ; $5c83: $bf
	adc l                                            ; $5c84: $8d
	cp a                                             ; $5c85: $bf
	add hl, bc                                       ; $5c86: $09
	xor $13                                          ; $5c87: $ee $13
	ld a, [hl]                                       ; $5c89: $7e
	rla                                              ; $5c8a: $17
	sbc $3f                                          ; $5c8b: $de $3f
	adc h                                            ; $5c8d: $8c
	ld a, [$ba3f]                                    ; $5c8e: $fa $3f $ba
	ld a, a                                          ; $5c91: $7f
	ld a, [$f37f]                                    ; $5c92: $fa $7f $f3
	cp $f7                                           ; $5c95: $fe $f7
	cp $b7                                           ; $5c97: $fe $b7
	cp $a5                                           ; $5c99: $fe $a5
	cp $25                                           ; $5c9b: $fe $25
	cp $26                                           ; $5c9d: $fe $26
	db $fd                                           ; $5c9f: $fd
	xor a                                            ; $5ca0: $af
	ld a, e                                          ; $5ca1: $7b
	cp $80                                           ; $5ca2: $fe $80
	ei                                               ; $5ca4: $fb
	ld a, l                                          ; $5ca5: $7d
	db $ed                                           ; $5ca6: $ed
	dec hl                                           ; $5ca7: $2b
	call $1fcb                                       ; $5ca8: $cd $cb $1f
	dec de                                           ; $5cab: $1b
	jp z, Jump_063_5fce                              ; $5cac: $ca $ce $5f

	cp $5b                                           ; $5caf: $fe $5b
	rst FarCall                                          ; $5cb1: $f7
	ld l, [hl]                                       ; $5cb2: $6e
	reti                                             ; $5cb3: $d9


	ld l, e                                          ; $5cb4: $6b
	db $fc                                           ; $5cb5: $fc
	ld [hl], a                                       ; $5cb6: $77
	call c, $ccff                                    ; $5cb7: $dc $ff $cc
	cp a                                             ; $5cba: $bf
	db $e4                                           ; $5cbb: $e4
	rst SubAFromDE                                          ; $5cbc: $df
	db $f4                                           ; $5cbd: $f4
	ld l, a                                          ; $5cbe: $6f
	db $f4                                           ; $5cbf: $f4
	ld a, a                                          ; $5cc0: $7f
	ldh a, [c]                                       ; $5cc1: $f2
	ld d, a                                          ; $5cc2: $57
	add a                                            ; $5cc3: $87
	ld a, [$fa5f]                                    ; $5cc4: $fa $5f $fa
	ld e, e                                          ; $5cc7: $5b
	cp $4f                                           ; $5cc8: $fe $4f
	cp $6f                                           ; $5cca: $fe $6f
	cp $6b                                           ; $5ccc: $fe $6b
	cp $6b                                           ; $5cce: $fe $6b
	rst $38                                          ; $5cd0: $ff
	ld h, l                                          ; $5cd1: $65
	rst $38                                          ; $5cd2: $ff
	ld [hl], l                                       ; $5cd3: $75
	rst $38                                          ; $5cd4: $ff
	ld d, l                                          ; $5cd5: $55
	rst $38                                          ; $5cd6: $ff
	ld d, c                                          ; $5cd7: $51
	rst $38                                          ; $5cd8: $ff
	pop de                                           ; $5cd9: $d1
	rst $38                                          ; $5cda: $ff
	sub c                                            ; $5cdb: $91
	ld a, e                                          ; $5cdc: $7b
	cp $8f                                           ; $5cdd: $fe $8f
	sub d                                            ; $5cdf: $92
	rst $38                                          ; $5ce0: $ff
	cp [hl]                                          ; $5ce1: $be
	rst $38                                          ; $5ce2: $ff
	rst $38                                          ; $5ce3: $ff
	db $e3                                           ; $5ce4: $e3
	rst $38                                          ; $5ce5: $ff
	ld [hl+], a                                      ; $5ce6: $22
	rst SubAFromDE                                          ; $5ce7: $df
	ld b, h                                          ; $5ce8: $44
	sbc h                                            ; $5ce9: $9c
	adc b                                            ; $5cea: $88
	jr nc, @+$12                                     ; $5ceb: $30 $10

	ld l, b                                          ; $5ced: $68
	jr nz, jr_063_5d43                               ; $5cee: $20 $53

	nop                                              ; $5cf0: $00
	ld a, a                                          ; $5cf1: $7f
	ret nz                                           ; $5cf2: $c0

	sbc d                                            ; $5cf3: $9a
	di                                               ; $5cf4: $f3
	rst $38                                          ; $5cf5: $ff
	or a                                             ; $5cf6: $b7
	cp [hl]                                          ; $5cf7: $be
	sbc $57                                          ; $5cf8: $de $57
	nop                                              ; $5cfa: $00
	ld d, e                                          ; $5cfb: $53
	jr nz, @-$66                                     ; $5cfc: $20 $98

	add b                                            ; $5cfe: $80
	rst $38                                          ; $5cff: $ff
	ret nz                                           ; $5d00: $c0

	ei                                               ; $5d01: $fb
	ldh [$f1], a                                     ; $5d02: $e0 $f1
	ld h, b                                          ; $5d04: $60
	dec hl                                           ; $5d05: $2b
	jr nz, jr_063_5d87                               ; $5d06: $20 $7f

	ldh [c], a                                       ; $5d08: $e2
	sbc b                                            ; $5d09: $98
	nop                                              ; $5d0a: $00
	rst $38                                          ; $5d0b: $ff
	rlca                                             ; $5d0c: $07
	rst $38                                          ; $5d0d: $ff
	rrca                                             ; $5d0e: $0f
	db $ed                                           ; $5d0f: $ed
	inc c                                            ; $5d10: $0c
	dec hl                                           ; $5d11: $2b
	jr nz, @-$68                                     ; $5d12: $20 $96

	dec de                                           ; $5d14: $1b
	db $fd                                           ; $5d15: $fd
	rlca                                             ; $5d16: $07
	db $fc                                           ; $5d17: $fc
	add a                                            ; $5d18: $87
	cp $e7                                           ; $5d19: $fe $e7
	push af                                          ; $5d1b: $f5
	rst $38                                          ; $5d1c: $ff
	ld d, a                                          ; $5d1d: $57
	jr nz, @+$6d                                     ; $5d1e: $20 $6b

	add b                                            ; $5d20: $80
	adc h                                            ; $5d21: $8c
	cp $7f                                           ; $5d22: $fe $7f
	db $db                                           ; $5d24: $db
	ccf                                              ; $5d25: $3f
	rst $38                                          ; $5d26: $ff
	cp a                                             ; $5d27: $bf
	db $f4                                           ; $5d28: $f4
	rst SubAFromDE                                          ; $5d29: $df
	ldh a, [rIE]                                     ; $5d2a: $f0 $ff
	or b                                             ; $5d2c: $b0
	cp a                                             ; $5d2d: $bf
	ret nc                                           ; $5d2e: $d0

	rst $38                                          ; $5d2f: $ff
	ld b, e                                          ; $5d30: $43
	ld c, a                                          ; $5d31: $4f
	cpl                                              ; $5d32: $2f
	ld a, a                                          ; $5d33: $7f
	ld h, e                                          ; $5d34: $63
	ld d, e                                          ; $5d35: $53
	add b                                            ; $5d36: $80
	ld a, a                                          ; $5d37: $7f
	add hl, sp                                       ; $5d38: $39
	sbc [hl]                                         ; $5d39: $9e
	push hl                                          ; $5d3a: $e5
	ld [hl], e                                       ; $5d3b: $73
	add b                                            ; $5d3c: $80
	cp [hl]                                          ; $5d3d: $be
	ei                                               ; $5d3e: $fb
	pop af                                           ; $5d3f: $f1
	ldh [$9a], a                                     ; $5d40: $e0 $9a
	ret nz                                           ; $5d42: $c0

jr_063_5d43:
	ld h, c                                          ; $5d43: $61
	ld h, b                                          ; $5d44: $60
	jp Jump_063_53c0                                 ; $5d45: $c3 $c0 $53


	add b                                            ; $5d48: $80
	ld a, a                                          ; $5d49: $7f
	sbc c                                            ; $5d4a: $99
	sbc h                                            ; $5d4b: $9c
	rra                                              ; $5d4c: $1f
	rst $38                                          ; $5d4d: $ff
	add c                                            ; $5d4e: $81
	ld a, e                                          ; $5d4f: $7b
	add b                                            ; $5d50: $80
	cp [hl]                                          ; $5d51: $be
	rst $38                                          ; $5d52: $ff
	rst AddAOntoHL                                          ; $5d53: $ef
	rlca                                             ; $5d54: $07
	sbc d                                            ; $5d55: $9a
	rlca                                             ; $5d56: $07
	dec c                                            ; $5d57: $0d
	dec c                                            ; $5d58: $0d
	add a                                            ; $5d59: $87
	rlca                                             ; $5d5a: $07
	ld c, e                                          ; $5d5b: $4b
	add b                                            ; $5d5c: $80
	adc [hl]                                         ; $5d5d: $8e
	inc sp                                           ; $5d5e: $33
	rst $38                                          ; $5d5f: $ff
	ei                                               ; $5d60: $fb
	db $fd                                           ; $5d61: $fd
	rra                                              ; $5d62: $1f
	db $fc                                           ; $5d63: $fc
	rlca                                             ; $5d64: $07
	cp $07                                           ; $5d65: $fe $07
	push af                                          ; $5d67: $f5
	rrca                                             ; $5d68: $0f
	db $fd                                           ; $5d69: $fd
	adc c                                            ; $5d6a: $89
	rst $38                                          ; $5d6b: $ff
	db $ed                                           ; $5d6c: $ed
	rst $38                                          ; $5d6d: $ff
	adc c                                            ; $5d6e: $89
	inc de                                           ; $5d6f: $13
	add b                                            ; $5d70: $80
	sbc [hl]                                         ; $5d71: $9e
	inc l                                            ; $5d72: $2c
	inc de                                           ; $5d73: $13
	add b                                            ; $5d74: $80
	sbc h                                            ; $5d75: $9c
	add b                                            ; $5d76: $80
	pop hl                                           ; $5d77: $e1
	jr nz, jr_063_5d8d                               ; $5d78: $20 $13

	add b                                            ; $5d7a: $80
	sbc h                                            ; $5d7b: $9c
	inc bc                                           ; $5d7c: $03
	rrca                                             ; $5d7d: $0f
	ld [$800b], sp                                   ; $5d7e: $08 $0b $80
	ld a, a                                          ; $5d81: $7f
	xor e                                            ; $5d82: $ab
	ld l, e                                          ; $5d83: $6b
	add b                                            ; $5d84: $80
	rst $38                                          ; $5d85: $ff
	sbc d                                            ; $5d86: $9a

jr_063_5d87:
	ld b, $02                                        ; $5d87: $06 $02
	inc bc                                           ; $5d89: $03
	ld bc, $bf00                                     ; $5d8a: $01 $00 $bf

jr_063_5d8d:
	ld bc, $80c0                                     ; $5d8d: $01 $c0 $80
	add b                                            ; $5d90: $80
	ldh a, [$e0]                                     ; $5d91: $f0 $e0
	db $fc                                           ; $5d93: $fc
	ldh a, [rPCM34]                                  ; $5d94: $f0 $77
	db $ec                                           ; $5d96: $ec
	ld a, l                                          ; $5d97: $7d
	db $e3                                           ; $5d98: $e3
	ld a, b                                          ; $5d99: $78
	ldh [$50], a                                     ; $5d9a: $e0 $50
	ldh [$f0], a                                     ; $5d9c: $e0 $f0
	ret nz                                           ; $5d9e: $c0

	ld hl, sp-$40                                    ; $5d9f: $f8 $c0
	ld a, $38                                        ; $5da1: $3e $38
	rst GetHLinHL                                          ; $5da3: $cf
	rst GetHLinHL                                          ; $5da4: $cf
	ld h, b                                          ; $5da5: $60
	nop                                              ; $5da6: $00
	pop hl                                           ; $5da7: $e1
	ld b, b                                          ; $5da8: $40
	pop bc                                           ; $5da9: $c1
	add b                                            ; $5daa: $80
	inc bc                                           ; $5dab: $03
	nop                                              ; $5dac: $00
	add a                                            ; $5dad: $87
	ld bc, $0f94                                     ; $5dae: $01 $94 $0f
	inc bc                                           ; $5db1: $03
	rra                                              ; $5db2: $1f
	rlca                                             ; $5db3: $07
	ld a, a                                          ; $5db4: $7f
	dec e                                            ; $5db5: $1d
	rst $38                                          ; $5db6: $ff
	ld a, c                                          ; $5db7: $79
	rst $38                                          ; $5db8: $ff
	pop hl                                           ; $5db9: $e1
	rst SubAFromBC                                          ; $5dba: $e7
	cp l                                             ; $5dbb: $bd
	rlca                                             ; $5dbc: $07
	rrca                                             ; $5dbd: $0f
	rrca                                             ; $5dbe: $0f
	rra                                              ; $5dbf: $1f
	sbc h                                            ; $5dc0: $9c
	rlca                                             ; $5dc1: $07
	ld hl, sp-$04                                    ; $5dc2: $f8 $fc
	ld l, a                                          ; $5dc4: $6f
	ldh [$9e], a                                     ; $5dc5: $e0 $9e
	add e                                            ; $5dc7: $83
	inc hl                                           ; $5dc8: $23
	ldh [$73], a                                     ; $5dc9: $e0 $73
	and b                                            ; $5dcb: $a0
	ld a, a                                          ; $5dcc: $7f
	sbc a                                            ; $5dcd: $9f
	rst SubAFromDE                                          ; $5dce: $df
	ld bc, $a017                                     ; $5dcf: $01 $17 $a0
	sbc h                                            ; $5dd2: $9c
	ret nz                                           ; $5dd3: $c0

	add e                                            ; $5dd4: $83
	add b                                            ; $5dd5: $80
	dec de                                           ; $5dd6: $1b
	ret nz                                           ; $5dd7: $c0

	sbc l                                            ; $5dd8: $9d
	ld b, $07                                        ; $5dd9: $06 $07
	db $dd                                           ; $5ddb: $dd
	inc bc                                           ; $5ddc: $03

jr_063_5ddd:
	sbc l                                            ; $5ddd: $9d
	ld bc, $27c1                                     ; $5dde: $01 $c1 $27
	ret nz                                           ; $5de1: $c0

	sub a                                            ; $5de2: $97
	ld h, b                                          ; $5de3: $60
	pop hl                                           ; $5de4: $e1
	ret nz                                           ; $5de5: $c0

	jp $c7c0                                         ; $5de6: $c3 $c0 $c7


	add c                                            ; $5de9: $81
	adc a                                            ; $5dea: $8f
	inc sp                                           ; $5deb: $33
	ret nz                                           ; $5dec: $c0

	db $fd                                           ; $5ded: $fd
	ld bc, $6a80                                     ; $5dee: $01 $80 $6a
	rst SubAFromDE                                          ; $5df1: $df
	ld c, e                                          ; $5df2: $4b
	rst $38                                          ; $5df3: $ff
	ld l, e                                          ; $5df4: $6b
	rst $38                                          ; $5df5: $ff
	ld l, a                                          ; $5df6: $6f
	cp $7f                                           ; $5df7: $fe $7f
	db $db                                           ; $5df9: $db
	ccf                                              ; $5dfa: $3f
	db $ed                                           ; $5dfb: $ed
	cp a                                             ; $5dfc: $bf
	rst SubAFromBC                                          ; $5dfd: $e7
	sbc $fe                                          ; $5dfe: $de $fe
	db $fc                                           ; $5e00: $fc
	cp h                                             ; $5e01: $bc
	cp a                                             ; $5e02: $bf
	rst SubAFromHL                                          ; $5e03: $d7
	push af                                          ; $5e04: $f5
	ld b, e                                          ; $5e05: $43
	ld b, e                                          ; $5e06: $43
	ld [hl+], a                                      ; $5e07: $22
	ld [hl], e                                       ; $5e08: $73
	ld h, c                                          ; $5e09: $61
	or b                                             ; $5e0a: $b0
	jr nz, jr_063_5ddd                               ; $5e0b: $20 $d0

	sub b                                            ; $5e0d: $90
	ld a, b                                          ; $5e0e: $78
	sub c                                            ; $5e0f: $91
	ldh a, [$78]                                     ; $5e10: $f0 $78
	ld hl, sp+$4c                                    ; $5e12: $f8 $4c
	ld hl, sp+$4c                                    ; $5e14: $f8 $4c
	db $fc                                           ; $5e16: $fc
	ld c, [hl]                                       ; $5e17: $4e
	cp $4f                                           ; $5e18: $fe $4f
	rst $38                                          ; $5e1a: $ff
	ld c, c                                          ; $5e1b: $49
	rst $38                                          ; $5e1c: $ff
	adc c                                            ; $5e1d: $89
	ld a, e                                          ; $5e1e: $7b
	cp $98                                           ; $5e1f: $fe $98
	xor c                                            ; $5e21: $a9
	rst $38                                          ; $5e22: $ff
	and l                                            ; $5e23: $a5
	ei                                               ; $5e24: $fb
	rst FarCall                                          ; $5e25: $f7
	xor c                                            ; $5e26: $a9
	push hl                                          ; $5e27: $e5
	ld a, e                                          ; $5e28: $7b
	cp $93                                           ; $5e29: $fe $93
	jp hl                                            ; $5e2b: $e9


	and l                                            ; $5e2c: $a5
	or c                                             ; $5e2d: $b1
	push hl                                          ; $5e2e: $e5
	or l                                             ; $5e2f: $b5
	pop hl                                           ; $5e30: $e1
	ld c, e                                          ; $5e31: $4b
	rst $38                                          ; $5e32: $ff
	ld l, l                                          ; $5e33: $6d
	rst $38                                          ; $5e34: $ff
	cp l                                             ; $5e35: $bd
	rst $38                                          ; $5e36: $ff
	ld a, e                                          ; $5e37: $7b
	cp l                                             ; $5e38: $bd
	add b                                            ; $5e39: $80
	dec h                                            ; $5e3a: $25
	rst $38                                          ; $5e3b: $ff
	sub b                                            ; $5e3c: $90

jr_063_5e3d:
	rst $38                                          ; $5e3d: $ff
	ret nz                                           ; $5e3e: $c0

	ld a, a                                          ; $5e3f: $7f
	jr nz, jr_063_5e3d                               ; $5e40: $20 $fb

	ld h, b                                          ; $5e42: $60
	pop af                                           ; $5e43: $f1
	ldh [$a0], a                                     ; $5e44: $e0 $a0
	ldh [rSTAT], a                                   ; $5e46: $e0 $41
	ld b, b                                          ; $5e48: $40
	jp $0380                                         ; $5e49: $c3 $80 $03


	ld [bc], a                                       ; $5e4c: $02
	inc bc                                           ; $5e4d: $03
	ld [bc], a                                       ; $5e4e: $02
	nop                                              ; $5e4f: $00
	nop                                              ; $5e50: $00
	ld [hl-], a                                      ; $5e51: $32
	rst $38                                          ; $5e52: $ff
	cp e                                             ; $5e53: $bb
	rst AddAOntoHL                                          ; $5e54: $ef
	rst $38                                          ; $5e55: $ff
	ld l, a                                          ; $5e56: $6f
	rst $38                                          ; $5e57: $ff
	ld [hl+], a                                      ; $5e58: $22
	adc h                                            ; $5e59: $8c
	rst $38                                          ; $5e5a: $ff
	ld [de], a                                       ; $5e5b: $12
	rst $38                                          ; $5e5c: $ff
	add a                                            ; $5e5d: $87
	rst $38                                          ; $5e5e: $ff
	rrca                                             ; $5e5f: $0f
	db $fc                                           ; $5e60: $fc
	inc c                                            ; $5e61: $0c
	ld sp, hl                                        ; $5e62: $f9
	ld [$07e7], sp                                   ; $5e63: $08 $e7 $07
	inc bc                                           ; $5e66: $03
	rlca                                             ; $5e67: $07
	ld b, $04                                        ; $5e68: $06 $04
	add a                                            ; $5e6a: $87
	inc bc                                           ; $5e6b: $03
	ret nz                                           ; $5e6c: $c0

	cp [hl]                                          ; $5e6d: $be
	add b                                            ; $5e6e: $80
	nop                                              ; $5e6f: $00
	ld [hl+], a                                      ; $5e70: $22
	add b                                            ; $5e71: $80
	rst $38                                          ; $5e72: $ff
	ld [hl-], a                                      ; $5e73: $32
	rst $38                                          ; $5e74: $ff
	cp d                                             ; $5e75: $ba
	rst AddAOntoHL                                          ; $5e76: $ef
	db $dd                                           ; $5e77: $dd
	ld [hl], a                                       ; $5e78: $77
	rst $38                                          ; $5e79: $ff
	inc sp                                           ; $5e7a: $33

Call_063_5e7b:
	rst $38                                          ; $5e7b: $ff
	sbc e                                            ; $5e7c: $9b
	db $fd                                           ; $5e7d: $fd
	rst JumpTable                                          ; $5e7e: $c7
	db $fc                                           ; $5e7f: $fc
	ld [hl], a                                       ; $5e80: $77
	cp $e7                                           ; $5e81: $fe $e7
	push af                                          ; $5e83: $f5
	rst GetHLinHL                                          ; $5e84: $cf
	ld a, l                                          ; $5e85: $7d
	ret                                              ; $5e86: $c9


	cp a                                             ; $5e87: $bf
	adc l                                            ; $5e88: $8d
	cp a                                             ; $5e89: $bf
	add hl, bc                                       ; $5e8a: $09
	ld l, [hl]                                       ; $5e8b: $6e
	inc de                                           ; $5e8c: $13
	ld a, [hl]                                       ; $5e8d: $7e
	rla                                              ; $5e8e: $17
	sbc $3f                                          ; $5e8f: $de $3f
	adc h                                            ; $5e91: $8c
	ld a, [$ba3f]                                    ; $5e92: $fa $3f $ba
	ld a, a                                          ; $5e95: $7f
	ld a, [$f37f]                                    ; $5e96: $fa $7f $f3
	cp $f7                                           ; $5e99: $fe $f7
	cp $b7                                           ; $5e9b: $fe $b7
	cp $a5                                           ; $5e9d: $fe $a5
	cp $25                                           ; $5e9f: $fe $25
	cp $26                                           ; $5ea1: $fe $26
	db $fd                                           ; $5ea3: $fd
	xor a                                            ; $5ea4: $af
	ld a, e                                          ; $5ea5: $7b
	cp $80                                           ; $5ea6: $fe $80
	ei                                               ; $5ea8: $fb
	ld a, l                                          ; $5ea9: $7d
	db $ed                                           ; $5eaa: $ed
	dec hl                                           ; $5eab: $2b
	call $1fcb                                       ; $5eac: $cd $cb $1f
	dec de                                           ; $5eaf: $1b
	jp z, Jump_063_5fce                              ; $5eb0: $ca $ce $5f

jr_063_5eb3:
	cp $5b                                           ; $5eb3: $fe $5b
	rst FarCall                                          ; $5eb5: $f7
	ld l, [hl]                                       ; $5eb6: $6e
	reti                                             ; $5eb7: $d9


	ld l, e                                          ; $5eb8: $6b
	db $fc                                           ; $5eb9: $fc
	ld [hl], a                                       ; $5eba: $77
	call c, $ccff                                    ; $5ebb: $dc $ff $cc
	cp a                                             ; $5ebe: $bf
	db $e4                                           ; $5ebf: $e4
	rst SubAFromDE                                          ; $5ec0: $df
	db $f4                                           ; $5ec1: $f4
	ld l, a                                          ; $5ec2: $6f
	db $f4                                           ; $5ec3: $f4
	ld a, a                                          ; $5ec4: $7f
	ldh a, [c]                                       ; $5ec5: $f2
	ld d, a                                          ; $5ec6: $57
	add a                                            ; $5ec7: $87
	ld a, [$fa5f]                                    ; $5ec8: $fa $5f $fa
	ld e, e                                          ; $5ecb: $5b
	cp $4f                                           ; $5ecc: $fe $4f
	cp $6f                                           ; $5ece: $fe $6f
	cp $6b                                           ; $5ed0: $fe $6b
	cp $6b                                           ; $5ed2: $fe $6b
	rst $38                                          ; $5ed4: $ff
	ld h, l                                          ; $5ed5: $65
	rst $38                                          ; $5ed6: $ff
	ld [hl], l                                       ; $5ed7: $75
	rst $38                                          ; $5ed8: $ff
	ld d, l                                          ; $5ed9: $55
	rst $38                                          ; $5eda: $ff
	ld d, c                                          ; $5edb: $51
	rst $38                                          ; $5edc: $ff
	pop de                                           ; $5edd: $d1
	rst $38                                          ; $5ede: $ff
	sub c                                            ; $5edf: $91
	ld a, e                                          ; $5ee0: $7b
	cp $8f                                           ; $5ee1: $fe $8f
	sub d                                            ; $5ee3: $92
	rst $38                                          ; $5ee4: $ff
	cp [hl]                                          ; $5ee5: $be
	rst $38                                          ; $5ee6: $ff
	rst $38                                          ; $5ee7: $ff
	db $e3                                           ; $5ee8: $e3
	rst $38                                          ; $5ee9: $ff
	ld [hl+], a                                      ; $5eea: $22
	rst SubAFromDE                                          ; $5eeb: $df
	ld b, h                                          ; $5eec: $44
	sbc h                                            ; $5eed: $9c
	adc b                                            ; $5eee: $88
	jr nc, jr_063_5f01                               ; $5eef: $30 $10

	ld l, b                                          ; $5ef1: $68
	jr nz, jr_063_5f47                               ; $5ef2: $20 $53

	nop                                              ; $5ef4: $00
	ld a, a                                          ; $5ef5: $7f
	ret nz                                           ; $5ef6: $c0

	sbc b                                            ; $5ef7: $98
	di                                               ; $5ef8: $f3
	rst $38                                          ; $5ef9: $ff
	or a                                             ; $5efa: $b7
	cp [hl]                                          ; $5efb: $be
	sbc $f7                                          ; $5efc: $de $f7
	ld b, a                                          ; $5efe: $47
	ld e, a                                          ; $5eff: $5f
	nop                                              ; $5f00: $00

jr_063_5f01:
	ld e, e                                          ; $5f01: $5b
	jr nz, @-$68                                     ; $5f02: $20 $96

	db $10                                           ; $5f04: $10
	rst $38                                          ; $5f05: $ff
	add b                                            ; $5f06: $80
	rst $38                                          ; $5f07: $ff
	ret nz                                           ; $5f08: $c0

	ei                                               ; $5f09: $fb
	ldh [$f1], a                                     ; $5f0a: $e0 $f1
	ld h, b                                          ; $5f0c: $60
	dec hl                                           ; $5f0d: $2b
	jr nz, jr_063_5f8f                               ; $5f0e: $20 $7f

	ldh [c], a                                       ; $5f10: $e2
	sub a                                            ; $5f11: $97
	nop                                              ; $5f12: $00
	rst $38                                          ; $5f13: $ff
	rlca                                             ; $5f14: $07
	rst $38                                          ; $5f15: $ff
	rrca                                             ; $5f16: $0f
	db $ed                                           ; $5f17: $ed
	inc c                                            ; $5f18: $0c
	rlca                                             ; $5f19: $07
	cpl                                              ; $5f1a: $2f
	jr nz, jr_063_5eb3                               ; $5f1b: $20 $96

	dec de                                           ; $5f1d: $1b
	db $fd                                           ; $5f1e: $fd
	rlca                                             ; $5f1f: $07
	db $fc                                           ; $5f20: $fc
	add a                                            ; $5f21: $87
	cp $c7                                           ; $5f22: $fe $c7
	push af                                          ; $5f24: $f5
	rst $38                                          ; $5f25: $ff
	ld d, a                                          ; $5f26: $57
	jr nz, jr_063_5f9c                               ; $5f27: $20 $73

	add b                                            ; $5f29: $80
	ld a, a                                          ; $5f2a: $7f
	ld d, [hl]                                       ; $5f2b: $56
	sbc [hl]                                         ; $5f2c: $9e
	rst $38                                          ; $5f2d: $ff
	ld l, e                                          ; $5f2e: $6b
	add b                                            ; $5f2f: $80
	sub h                                            ; $5f30: $94
	ldh a, [rIE]                                     ; $5f31: $f0 $ff
	or b                                             ; $5f33: $b0
	cp a                                             ; $5f34: $bf
	ret nc                                           ; $5f35: $d0

	rst FarCall                                          ; $5f36: $f7
	ld b, e                                          ; $5f37: $43
	ld c, a                                          ; $5f38: $4f
	cpl                                              ; $5f39: $2f
	ld [hl], a                                       ; $5f3a: $77
	ld h, e                                          ; $5f3b: $63
	ld d, e                                          ; $5f3c: $53
	add b                                            ; $5f3d: $80
	sbc [hl]                                         ; $5f3e: $9e
	db $eb                                           ; $5f3f: $eb
	ld l, e                                          ; $5f40: $6b
	add b                                            ; $5f41: $80
	cp [hl]                                          ; $5f42: $be
	ei                                               ; $5f43: $fb
	pop af                                           ; $5f44: $f1
	ldh [$9a], a                                     ; $5f45: $e0 $9a

jr_063_5f47:
	ret nz                                           ; $5f47: $c0

	ld h, c                                          ; $5f48: $61
	ld h, b                                          ; $5f49: $60
	jp Jump_063_5bc0                                 ; $5f4a: $c3 $c0 $5b


	add b                                            ; $5f4d: $80
	sbc h                                            ; $5f4e: $9c
	ld h, [hl]                                       ; $5f4f: $66
	rst $38                                          ; $5f50: $ff
	cpl                                              ; $5f51: $2f
	ld l, e                                          ; $5f52: $6b
	add b                                            ; $5f53: $80
	cp [hl]                                          ; $5f54: $be
	rst $38                                          ; $5f55: $ff
	rst AddAOntoHL                                          ; $5f56: $ef
	rlca                                             ; $5f57: $07
	sbc d                                            ; $5f58: $9a
	rlca                                             ; $5f59: $07
	dec c                                            ; $5f5a: $0d
	dec c                                            ; $5f5b: $0d
	add a                                            ; $5f5c: $87
	rlca                                             ; $5f5d: $07
	ld d, e                                          ; $5f5e: $53
	add b                                            ; $5f5f: $80
	sbc [hl]                                         ; $5f60: $9e
	rst FarCall                                          ; $5f61: $f7
	ld l, e                                          ; $5f62: $6b
	add b                                            ; $5f63: $80
	sub h                                            ; $5f64: $94
	rlca                                             ; $5f65: $07
	cp $07                                           ; $5f66: $fe $07
	push af                                          ; $5f68: $f5
	rrca                                             ; $5f69: $0f
	db $fd                                           ; $5f6a: $fd

jr_063_5f6b:
	adc c                                            ; $5f6b: $89
	rst $38                                          ; $5f6c: $ff
	db $ed                                           ; $5f6d: $ed
	rst $38                                          ; $5f6e: $ff
	adc c                                            ; $5f6f: $89
	inc de                                           ; $5f70: $13
	add b                                            ; $5f71: $80
	sbc [hl]                                         ; $5f72: $9e
	inc l                                            ; $5f73: $2c
	inc de                                           ; $5f74: $13
	add b                                            ; $5f75: $80
	sbc h                                            ; $5f76: $9c
	add b                                            ; $5f77: $80
	pop hl                                           ; $5f78: $e1
	jr nz, jr_063_5f8e                               ; $5f79: $20 $13

	add b                                            ; $5f7b: $80
	sbc h                                            ; $5f7c: $9c
	inc bc                                           ; $5f7d: $03
	rrca                                             ; $5f7e: $0f
	ld [$800b], sp                                   ; $5f7f: $08 $0b $80
	ld a, a                                          ; $5f82: $7f
	xor e                                            ; $5f83: $ab
	ld l, e                                          ; $5f84: $6b
	add b                                            ; $5f85: $80
	sbc h                                            ; $5f86: $9c
	inc c                                            ; $5f87: $0c
	inc b                                            ; $5f88: $04
	rlca                                             ; $5f89: $07
	ld a, e                                          ; $5f8a: $7b
	cp d                                             ; $5f8b: $ba
	sbc [hl]                                         ; $5f8c: $9e
	inc bc                                           ; $5f8d: $03

jr_063_5f8e:
	cp a                                             ; $5f8e: $bf

jr_063_5f8f:
	nop                                              ; $5f8f: $00
	ret nz                                           ; $5f90: $c0

	add l                                            ; $5f91: $85
	add b                                            ; $5f92: $80
	ldh a, [$e0]                                     ; $5f93: $f0 $e0
	db $fc                                           ; $5f95: $fc
	ldh a, [rPCM34]                                  ; $5f96: $f0 $77
	db $ec                                           ; $5f98: $ec
	ld a, l                                          ; $5f99: $7d
	db $e3                                           ; $5f9a: $e3
	ld a, b                                          ; $5f9b: $78

jr_063_5f9c:
	ldh [$50], a                                     ; $5f9c: $e0 $50
	ldh [$f0], a                                     ; $5f9e: $e0 $f0
	ret nz                                           ; $5fa0: $c0

	ld hl, sp-$40                                    ; $5fa1: $f8 $c0
	ld a, $38                                        ; $5fa3: $3e $38
	rst GetHLinHL                                          ; $5fa5: $cf
	rst GetHLinHL                                          ; $5fa6: $cf
	ld [hl], b                                       ; $5fa7: $70
	jr nz, jr_063_5f6b                               ; $5fa8: $20 $c1

	ld b, b                                          ; $5faa: $40
	ld bc, $83bf                                     ; $5fab: $01 $bf $83
	rlca                                             ; $5fae: $07
	sub e                                            ; $5faf: $93
	ld bc, $030f                                     ; $5fb0: $01 $0f $03
	rra                                              ; $5fb3: $1f
	rlca                                             ; $5fb4: $07
	ld a, a                                          ; $5fb5: $7f
	dec e                                            ; $5fb6: $1d
	rst $38                                          ; $5fb7: $ff
	ld a, c                                          ; $5fb8: $79
	rst $38                                          ; $5fb9: $ff
	pop hl                                           ; $5fba: $e1
	rst SubAFromBC                                          ; $5fbb: $e7
	cp l                                             ; $5fbc: $bd
	rlca                                             ; $5fbd: $07
	rrca                                             ; $5fbe: $0f
	rrca                                             ; $5fbf: $0f
	rra                                              ; $5fc0: $1f
	sbc h                                            ; $5fc1: $9c
	rlca                                             ; $5fc2: $07
	ld hl, sp-$04                                    ; $5fc3: $f8 $fc
	ld a, e                                          ; $5fc5: $7b
	ret nz                                           ; $5fc6: $c0

	ld a, e                                          ; $5fc7: $7b
	ld a, c                                          ; $5fc8: $79
	rla                                              ; $5fc9: $17
	ret nz                                           ; $5fca: $c0

	sbc h                                            ; $5fcb: $9c
	pop hl                                           ; $5fcc: $e1
	ret nz                                           ; $5fcd: $c0

Jump_063_5fce:
	add c                                            ; $5fce: $81
	rrca                                             ; $5fcf: $0f
	ret nz                                           ; $5fd0: $c0

	ld a, a                                          ; $5fd1: $7f
	cp a                                             ; $5fd2: $bf
	ld [hl], a                                       ; $5fd3: $77
	scf                                              ; $5fd4: $37
	rla                                              ; $5fd5: $17
	ret nz                                           ; $5fd6: $c0

	sbc [hl]                                         ; $5fd7: $9e
	add b                                            ; $5fd8: $80
	rrca                                             ; $5fd9: $0f

jr_063_5fda:
	ret nz                                           ; $5fda: $c0

	ld [hl], a                                       ; $5fdb: $77
	cp a                                             ; $5fdc: $bf
	ld a, a                                          ; $5fdd: $7f
	cp [hl]                                          ; $5fde: $be
	inc hl                                           ; $5fdf: $23
	ret nz                                           ; $5fe0: $c0

	sbc c                                            ; $5fe1: $99
	ldh [$e1], a                                     ; $5fe2: $e0 $e1
	ret nz                                           ; $5fe4: $c0

	jp $8740                                         ; $5fe5: $c3 $40 $87


	dec hl                                           ; $5fe8: $2b
	ret nz                                           ; $5fe9: $c0

	ld b, $02                                        ; $5fea: $06 $02
	add b                                            ; $5fec: $80
	ld l, d                                          ; $5fed: $6a
	rst SubAFromDE                                          ; $5fee: $df
	ld c, e                                          ; $5fef: $4b
	rst $38                                          ; $5ff0: $ff
	ld l, e                                          ; $5ff1: $6b
	cp $6f                                           ; $5ff2: $fe $6f
	rst $38                                          ; $5ff4: $ff
	ld a, a                                          ; $5ff5: $7f
	db $db                                           ; $5ff6: $db
	ccf                                              ; $5ff7: $3f
	db $ed                                           ; $5ff8: $ed
	cp a                                             ; $5ff9: $bf
	rst SubAFromBC                                          ; $5ffa: $e7
	sbc $fe                                          ; $5ffb: $de $fe
	db $fc                                           ; $5ffd: $fc
	cp h                                             ; $5ffe: $bc
	cp a                                             ; $5fff: $bf
	rst SubAFromHL                                          ; $6000: $d7
	push af                                          ; $6001: $f5
	ld b, e                                          ; $6002: $43
	ld b, e                                          ; $6003: $43
	ld [hl+], a                                      ; $6004: $22
	ld [hl], e                                       ; $6005: $73
	ld h, c                                          ; $6006: $61
	or b                                             ; $6007: $b0
	jr nz, jr_063_5fda                               ; $6008: $20 $d0

	sub b                                            ; $600a: $90
	ld a, b                                          ; $600b: $78
	sub c                                            ; $600c: $91
	ldh a, [$78]                                     ; $600d: $f0 $78
	ld hl, sp+$4c                                    ; $600f: $f8 $4c
	ld hl, sp+$4c                                    ; $6011: $f8 $4c
	db $fc                                           ; $6013: $fc
	ld c, [hl]                                       ; $6014: $4e
	cp $4f                                           ; $6015: $fe $4f
	rst $38                                          ; $6017: $ff
	ld c, c                                          ; $6018: $49
	rst $38                                          ; $6019: $ff
	adc c                                            ; $601a: $89
	ld a, e                                          ; $601b: $7b
	cp $98                                           ; $601c: $fe $98
	xor c                                            ; $601e: $a9
	rst $38                                          ; $601f: $ff
	and l                                            ; $6020: $a5
	ei                                               ; $6021: $fb
	rst FarCall                                          ; $6022: $f7
	xor c                                            ; $6023: $a9
	push hl                                          ; $6024: $e5
	ld a, e                                          ; $6025: $7b
	cp $80                                           ; $6026: $fe $80
	jp hl                                            ; $6028: $e9


	and l                                            ; $6029: $a5
	or c                                             ; $602a: $b1
	push hl                                          ; $602b: $e5
	or l                                             ; $602c: $b5
	pop hl                                           ; $602d: $e1
	ld c, e                                          ; $602e: $4b
	rst $38                                          ; $602f: $ff
	ld l, l                                          ; $6030: $6d
	rst $38                                          ; $6031: $ff
	cp l                                             ; $6032: $bd
	rst $38                                          ; $6033: $ff
	rst $38                                          ; $6034: $ff
	db $eb                                           ; $6035: $eb
	rst $38                                          ; $6036: $ff
	dec h                                            ; $6037: $25
	rst $38                                          ; $6038: $ff
	db $10                                           ; $6039: $10
	rst $38                                          ; $603a: $ff
	ret nz                                           ; $603b: $c0

	ld a, a                                          ; $603c: $7f
	ld h, b                                          ; $603d: $60
	ei                                               ; $603e: $fb
	ld h, b                                          ; $603f: $60
	pop af                                           ; $6040: $f1
	ldh [$a0], a                                     ; $6041: $e0 $a0
	ldh [rSTAT], a                                   ; $6043: $e0 $41
	ld b, b                                          ; $6045: $40
	jp $8080                                         ; $6046: $c3 $80 $80


	inc bc                                           ; $6049: $03
	ld [bc], a                                       ; $604a: $02
	inc bc                                           ; $604b: $03
	ld [bc], a                                       ; $604c: $02
	nop                                              ; $604d: $00
	nop                                              ; $604e: $00
	ld [hl-], a                                      ; $604f: $32
	rst $38                                          ; $6050: $ff
	cp e                                             ; $6051: $bb
	rst AddAOntoHL                                          ; $6052: $ef
	rst $38                                          ; $6053: $ff
	ld h, [hl]                                       ; $6054: $66
	rst $38                                          ; $6055: $ff
	cpl                                              ; $6056: $2f

Call_063_6057:
	rst $38                                          ; $6057: $ff
	ld [de], a                                       ; $6058: $12
	rst $38                                          ; $6059: $ff
	add a                                            ; $605a: $87
	rst $38                                          ; $605b: $ff
	rrca                                             ; $605c: $0f
	db $fc                                           ; $605d: $fc
	inc c                                            ; $605e: $0c
	ld sp, hl                                        ; $605f: $f9
	ld [$07e7], sp                                   ; $6060: $08 $e7 $07
	inc bc                                           ; $6063: $03
	rlca                                             ; $6064: $07
	ld b, $04                                        ; $6065: $06 $04
	sbc h                                            ; $6067: $9c
	add a                                            ; $6068: $87
	inc bc                                           ; $6069: $03
	ret nz                                           ; $606a: $c0

	cp [hl]                                          ; $606b: $be
	add b                                            ; $606c: $80
	nop                                              ; $606d: $00
	ld [hl+], a                                      ; $606e: $22
	add b                                            ; $606f: $80
	rst $38                                          ; $6070: $ff
	ld [hl-], a                                      ; $6071: $32
	rst $38                                          ; $6072: $ff
	cp d                                             ; $6073: $ba
	rst AddAOntoHL                                          ; $6074: $ef
	db $dd                                           ; $6075: $dd
	rst FarCall                                          ; $6076: $f7
	rst $38                                          ; $6077: $ff
	or e                                             ; $6078: $b3
	rst $38                                          ; $6079: $ff
	sbc e                                            ; $607a: $9b
	db $fd                                           ; $607b: $fd
	rst JumpTable                                          ; $607c: $c7
	db $fc                                           ; $607d: $fc
	rst FarCall                                          ; $607e: $f7
	cp $e7                                           ; $607f: $fe $e7
	push af                                          ; $6081: $f5
	rst GetHLinHL                                          ; $6082: $cf
	ld a, l                                          ; $6083: $7d
	ret                                              ; $6084: $c9


	cp a                                             ; $6085: $bf
	adc l                                            ; $6086: $8d
	cp a                                             ; $6087: $bf
	add hl, bc                                       ; $6088: $09
	ld l, [hl]                                       ; $6089: $6e
	inc de                                           ; $608a: $13
	ld a, [hl]                                       ; $608b: $7e
	rla                                              ; $608c: $17
	sbc $3f                                          ; $608d: $de $3f
	adc h                                            ; $608f: $8c
	ld a, [$ba3f]                                    ; $6090: $fa $3f $ba
	ld a, a                                          ; $6093: $7f
	ld a, [$f37f]                                    ; $6094: $fa $7f $f3
	cp $f7                                           ; $6097: $fe $f7
	cp $b7                                           ; $6099: $fe $b7
	cp $a5                                           ; $609b: $fe $a5
	cp $25                                           ; $609d: $fe $25
	cp $26                                           ; $609f: $fe $26
	db $fd                                           ; $60a1: $fd
	xor a                                            ; $60a2: $af
	ld a, e                                          ; $60a3: $7b
	cp $80                                           ; $60a4: $fe $80
	ei                                               ; $60a6: $fb
	ld a, l                                          ; $60a7: $7d
	db $ed                                           ; $60a8: $ed
	dec hl                                           ; $60a9: $2b
	call $1fcb                                       ; $60aa: $cd $cb $1f
	dec de                                           ; $60ad: $1b
	jp z, Jump_063_5fce                              ; $60ae: $ca $ce $5f

	cp $5b                                           ; $60b1: $fe $5b
	rst FarCall                                          ; $60b3: $f7
	ld l, [hl]                                       ; $60b4: $6e
	reti                                             ; $60b5: $d9


	ld l, e                                          ; $60b6: $6b
	db $fc                                           ; $60b7: $fc
	ld [hl], a                                       ; $60b8: $77
	call c, $ccff                                    ; $60b9: $dc $ff $cc
	cp a                                             ; $60bc: $bf
	db $e4                                           ; $60bd: $e4
	rst SubAFromDE                                          ; $60be: $df
	db $f4                                           ; $60bf: $f4
	ld l, a                                          ; $60c0: $6f
	db $f4                                           ; $60c1: $f4
	ld a, a                                          ; $60c2: $7f
	ldh a, [c]                                       ; $60c3: $f2
	ld d, a                                          ; $60c4: $57
	add a                                            ; $60c5: $87
	ld a, [$fa5f]                                    ; $60c6: $fa $5f $fa
	ld e, e                                          ; $60c9: $5b
	cp $4f                                           ; $60ca: $fe $4f
	cp $6f                                           ; $60cc: $fe $6f
	cp $6b                                           ; $60ce: $fe $6b
	cp $6b                                           ; $60d0: $fe $6b
	rst $38                                          ; $60d2: $ff
	ld h, l                                          ; $60d3: $65
	rst $38                                          ; $60d4: $ff
	ld [hl], l                                       ; $60d5: $75
	rst $38                                          ; $60d6: $ff
	ld d, l                                          ; $60d7: $55
	rst $38                                          ; $60d8: $ff
	ld d, c                                          ; $60d9: $51
	rst $38                                          ; $60da: $ff
	pop de                                           ; $60db: $d1
	rst $38                                          ; $60dc: $ff
	sub c                                            ; $60dd: $91
	ld a, e                                          ; $60de: $7b
	cp $8f                                           ; $60df: $fe $8f
	sub d                                            ; $60e1: $92
	rst $38                                          ; $60e2: $ff
	cp [hl]                                          ; $60e3: $be
	rst $38                                          ; $60e4: $ff
	rst $38                                          ; $60e5: $ff
	db $e3                                           ; $60e6: $e3
	rst $38                                          ; $60e7: $ff
	ld [hl+], a                                      ; $60e8: $22
	rst SubAFromDE                                          ; $60e9: $df
	ld b, h                                          ; $60ea: $44
	sbc h                                            ; $60eb: $9c
	adc b                                            ; $60ec: $88
	jr nc, jr_063_60ff                               ; $60ed: $30 $10

	ld l, b                                          ; $60ef: $68
	jr nz, jr_063_6145                               ; $60f0: $20 $53

	nop                                              ; $60f2: $00
	ld a, a                                          ; $60f3: $7f
	ret nz                                           ; $60f4: $c0

	sbc b                                            ; $60f5: $98
	di                                               ; $60f6: $f3
	rst $38                                          ; $60f7: $ff
	or a                                             ; $60f8: $b7
	cp [hl]                                          ; $60f9: $be
	sbc $f7                                          ; $60fa: $de $f7
	ld b, a                                          ; $60fc: $47
	ld e, a                                          ; $60fd: $5f
	nop                                              ; $60fe: $00

jr_063_60ff:
	ld d, e                                          ; $60ff: $53
	jr nz, @-$66                                     ; $6100: $20 $98

	add b                                            ; $6102: $80
	rst $38                                          ; $6103: $ff
	ret nz                                           ; $6104: $c0

	ei                                               ; $6105: $fb
	ldh [$f1], a                                     ; $6106: $e0 $f1
	ld h, b                                          ; $6108: $60
	dec hl                                           ; $6109: $2b
	jr nz, jr_063_618b                               ; $610a: $20 $7f

	ldh [c], a                                       ; $610c: $e2
	sub a                                            ; $610d: $97
	nop                                              ; $610e: $00
	rst $38                                          ; $610f: $ff
	rlca                                             ; $6110: $07
	rst $38                                          ; $6111: $ff
	rrca                                             ; $6112: $0f
	db $ed                                           ; $6113: $ed
	inc c                                            ; $6114: $0c
	rlca                                             ; $6115: $07
	cpl                                              ; $6116: $2f
	jr nz, @-$68                                     ; $6117: $20 $96

	dec de                                           ; $6119: $1b
	db $fd                                           ; $611a: $fd
	rlca                                             ; $611b: $07
	db $fc                                           ; $611c: $fc
	add a                                            ; $611d: $87
	cp $c7                                           ; $611e: $fe $c7
	push af                                          ; $6120: $f5
	rst $38                                          ; $6121: $ff
	ld d, a                                          ; $6122: $57
	jr nz, jr_063_6190                               ; $6123: $20 $6b

	add b                                            ; $6125: $80
	sbc h                                            ; $6126: $9c
	cp $7f                                           ; $6127: $fe $7f
	rst SubAFromDE                                          ; $6129: $df
	ld [hl], e                                       ; $612a: $73
	add b                                            ; $612b: $80
	sub h                                            ; $612c: $94
	ldh a, [rIE]                                     ; $612d: $f0 $ff
	or b                                             ; $612f: $b0
	cp a                                             ; $6130: $bf
	ret nc                                           ; $6131: $d0

	rst FarCall                                          ; $6132: $f7
	ld b, e                                          ; $6133: $43
	ld c, a                                          ; $6134: $4f
	cpl                                              ; $6135: $2f
	ld [hl], a                                       ; $6136: $77
	ld h, e                                          ; $6137: $63
	ld d, e                                          ; $6138: $53
	add b                                            ; $6139: $80
	ld a, a                                          ; $613a: $7f
	add hl, sp                                       ; $613b: $39
	sbc [hl]                                         ; $613c: $9e
	push hl                                          ; $613d: $e5
	ld [hl], e                                       ; $613e: $73
	add b                                            ; $613f: $80
	cp [hl]                                          ; $6140: $be
	ei                                               ; $6141: $fb
	pop af                                           ; $6142: $f1
	ldh [$9a], a                                     ; $6143: $e0 $9a

jr_063_6145:
	ret nz                                           ; $6145: $c0

	ld h, c                                          ; $6146: $61
	ld h, b                                          ; $6147: $60
	jp Jump_063_53c0                                 ; $6148: $c3 $c0 $53


	add b                                            ; $614b: $80
	ld a, a                                          ; $614c: $7f
	sbc c                                            ; $614d: $99
	sbc [hl]                                         ; $614e: $9e
	rra                                              ; $614f: $1f
	ld [hl], e                                       ; $6150: $73
	add b                                            ; $6151: $80
	cp [hl]                                          ; $6152: $be
	rst $38                                          ; $6153: $ff
	rst AddAOntoHL                                          ; $6154: $ef
	rlca                                             ; $6155: $07
	sbc d                                            ; $6156: $9a
	rlca                                             ; $6157: $07
	dec c                                            ; $6158: $0d
	dec c                                            ; $6159: $0d
	add a                                            ; $615a: $87
	rlca                                             ; $615b: $07
	ld d, e                                          ; $615c: $53
	add b                                            ; $615d: $80
	sbc h                                            ; $615e: $9c
	ld [hl], a                                       ; $615f: $77
	rst $38                                          ; $6160: $ff
	di                                               ; $6161: $f3
	ld [hl], e                                       ; $6162: $73
	add b                                            ; $6163: $80
	sub h                                            ; $6164: $94
	rlca                                             ; $6165: $07
	cp $07                                           ; $6166: $fe $07
	push af                                          ; $6168: $f5
	rrca                                             ; $6169: $0f
	db $fd                                           ; $616a: $fd
	adc c                                            ; $616b: $89
	rst $38                                          ; $616c: $ff
	db $ed                                           ; $616d: $ed
	rst $38                                          ; $616e: $ff
	adc c                                            ; $616f: $89
	inc de                                           ; $6170: $13
	add b                                            ; $6171: $80
	sbc [hl]                                         ; $6172: $9e
	inc l                                            ; $6173: $2c
	inc de                                           ; $6174: $13
	add b                                            ; $6175: $80
	sbc h                                            ; $6176: $9c
	add b                                            ; $6177: $80
	pop hl                                           ; $6178: $e1
	jr nz, jr_063_618e                               ; $6179: $20 $13

	add b                                            ; $617b: $80
	sbc h                                            ; $617c: $9c
	inc bc                                           ; $617d: $03
	rrca                                             ; $617e: $0f
	ld [$800b], sp                                   ; $617f: $08 $0b $80
	ld a, a                                          ; $6182: $7f
	xor e                                            ; $6183: $ab
	ld l, e                                          ; $6184: $6b
	add b                                            ; $6185: $80
	sbc h                                            ; $6186: $9c
	inc c                                            ; $6187: $0c
	inc b                                            ; $6188: $04
	inc bc                                           ; $6189: $03
	cp l                                             ; $618a: $bd

jr_063_618b:
	nop                                              ; $618b: $00
	inc bc                                           ; $618c: $03
	nop                                              ; $618d: $00

jr_063_618e:
	ret nz                                           ; $618e: $c0

	add a                                            ; $618f: $87

jr_063_6190:
	add b                                            ; $6190: $80
	ldh a, [$e0]                                     ; $6191: $f0 $e0
	db $fc                                           ; $6193: $fc
	ldh a, [rPCM34]                                  ; $6194: $f0 $77
	db $ec                                           ; $6196: $ec
	ld a, l                                          ; $6197: $7d
	db $e3                                           ; $6198: $e3
	ld a, b                                          ; $6199: $78
	ldh [$50], a                                     ; $619a: $e0 $50
	ldh [$f0], a                                     ; $619c: $e0 $f0
	ret nz                                           ; $619e: $c0

	ld hl, sp-$40                                    ; $619f: $f8 $c0
	ld a, $38                                        ; $61a1: $3e $38
	rst GetHLinHL                                          ; $61a3: $cf
	rst GetHLinHL                                          ; $61a4: $cf
	ldh [rLCDC], a                                   ; $61a5: $e0 $40
	add c                                            ; $61a7: $81
	cp [hl]                                          ; $61a8: $be
	ld bc, $0703                                     ; $61a9: $01 $03 $07
	sub e                                            ; $61ac: $93
	ld bc, $030f                                     ; $61ad: $01 $0f $03
	rra                                              ; $61b0: $1f
	rlca                                             ; $61b1: $07
	ld a, a                                          ; $61b2: $7f
	dec e                                            ; $61b3: $1d
	rst $38                                          ; $61b4: $ff
	ld a, c                                          ; $61b5: $79
	rst $38                                          ; $61b6: $ff
	pop hl                                           ; $61b7: $e1
	rst SubAFromBC                                          ; $61b8: $e7
	cp l                                             ; $61b9: $bd
	rlca                                             ; $61ba: $07
	rrca                                             ; $61bb: $0f
	rrca                                             ; $61bc: $0f
	rra                                              ; $61bd: $1f
	sbc c                                            ; $61be: $99
	rlca                                             ; $61bf: $07
	ld hl, sp-$04                                    ; $61c0: $f8 $fc
	inc c                                            ; $61c2: $0c
	inc b                                            ; $61c3: $04
	rlca                                             ; $61c4: $07
	ld a, e                                          ; $61c5: $7b
	ld a, c                                          ; $61c6: $79
	rla                                              ; $61c7: $17
	ret nz                                           ; $61c8: $c0

	sbc h                                            ; $61c9: $9c
	pop bc                                           ; $61ca: $c1
	add b                                            ; $61cb: $80
	add c                                            ; $61cc: $81
	rrca                                             ; $61cd: $0f
	ret nz                                           ; $61ce: $c0

	ld a, a                                          ; $61cf: $7f
	cp a                                             ; $61d0: $bf
	ld [hl], a                                       ; $61d1: $77
	scf                                              ; $61d2: $37
	rra                                              ; $61d3: $1f
	ret nz                                           ; $61d4: $c0

	sbc l                                            ; $61d5: $9d
	ret nz                                           ; $61d6: $c0

	add c                                            ; $61d7: $81
	cp a                                             ; $61d8: $bf
	add e                                            ; $61d9: $83
	rlca                                             ; $61da: $07
	daa                                              ; $61db: $27
	ret nz                                           ; $61dc: $c0

	sbc l                                            ; $61dd: $9d
	inc c                                            ; $61de: $0c
	rrca                                             ; $61df: $0f

jr_063_61e0:
	ld a, e                                          ; $61e0: $7b
	cp a                                             ; $61e1: $bf
	ld a, a                                          ; $61e2: $7f
	ret nz                                           ; $61e3: $c0

	ld a, a                                          ; $61e4: $7f
	cp $2b                                           ; $61e5: $fe $2b
	ret nz                                           ; $61e7: $c0

	sbc d                                            ; $61e8: $9a
	ld h, b                                          ; $61e9: $60
	pop hl                                           ; $61ea: $e1
	ret nz                                           ; $61eb: $c0

	pop bc                                           ; $61ec: $c1
	add b                                            ; $61ed: $80
	rra                                              ; $61ee: $1f
	ret nz                                           ; $61ef: $c0

	ld [bc], a                                       ; $61f0: $02
	ld [bc], a                                       ; $61f1: $02
	add b                                            ; $61f2: $80
	ld l, d                                          ; $61f3: $6a
	rst SubAFromDE                                          ; $61f4: $df
	ld c, e                                          ; $61f5: $4b
	rst $38                                          ; $61f6: $ff
	ld l, e                                          ; $61f7: $6b
	cp $6f                                           ; $61f8: $fe $6f
	rst $38                                          ; $61fa: $ff
	ld a, a                                          ; $61fb: $7f
	db $db                                           ; $61fc: $db
	ccf                                              ; $61fd: $3f
	db $ed                                           ; $61fe: $ed
	cp a                                             ; $61ff: $bf
	rst SubAFromBC                                          ; $6200: $e7
	sbc $fe                                          ; $6201: $de $fe
	rst $38                                          ; $6203: $ff
	cp h                                             ; $6204: $bc
	cp a                                             ; $6205: $bf
	rst SubAFromHL                                          ; $6206: $d7
	push af                                          ; $6207: $f5
	ld b, e                                          ; $6208: $43
	ld b, e                                          ; $6209: $43
	ld [hl+], a                                      ; $620a: $22
	ld [hl], e                                       ; $620b: $73
	ld h, c                                          ; $620c: $61
	or b                                             ; $620d: $b0
	jr nz, jr_063_61e0                               ; $620e: $20 $d0

	sub b                                            ; $6210: $90
	ld a, b                                          ; $6211: $78
	sub c                                            ; $6212: $91
	ldh a, [$78]                                     ; $6213: $f0 $78
	ld hl, sp+$4c                                    ; $6215: $f8 $4c
	ld hl, sp+$4c                                    ; $6217: $f8 $4c
	db $fc                                           ; $6219: $fc
	ld c, [hl]                                       ; $621a: $4e
	cp $4f                                           ; $621b: $fe $4f
	rst $38                                          ; $621d: $ff
	ld c, c                                          ; $621e: $49
	rst $38                                          ; $621f: $ff
	adc c                                            ; $6220: $89
	ld a, e                                          ; $6221: $7b
	cp $98                                           ; $6222: $fe $98
	xor c                                            ; $6224: $a9
	rst $38                                          ; $6225: $ff
	and l                                            ; $6226: $a5
	ei                                               ; $6227: $fb
	rst FarCall                                          ; $6228: $f7
	xor c                                            ; $6229: $a9
	push hl                                          ; $622a: $e5
	ld a, e                                          ; $622b: $7b
	cp $80                                           ; $622c: $fe $80
	jp hl                                            ; $622e: $e9


	and l                                            ; $622f: $a5
	or c                                             ; $6230: $b1
	push hl                                          ; $6231: $e5
	or l                                             ; $6232: $b5
	pop hl                                           ; $6233: $e1
	ld c, e                                          ; $6234: $4b
	rst $38                                          ; $6235: $ff
	ld l, l                                          ; $6236: $6d
	rst $38                                          ; $6237: $ff
	cp l                                             ; $6238: $bd
	rst $38                                          ; $6239: $ff
	rst $38                                          ; $623a: $ff
	db $eb                                           ; $623b: $eb
	rst $38                                          ; $623c: $ff
	dec h                                            ; $623d: $25
	rst $38                                          ; $623e: $ff
	db $10                                           ; $623f: $10
	rst $38                                          ; $6240: $ff
	ret nz                                           ; $6241: $c0

	ld a, a                                          ; $6242: $7f
	ld h, b                                          ; $6243: $60
	ei                                               ; $6244: $fb
	ldh [$f1], a                                     ; $6245: $e0 $f1
	ldh [$a0], a                                     ; $6247: $e0 $a0
	ldh [rSTAT], a                                   ; $6249: $e0 $41
	ld b, b                                          ; $624b: $40
	jp $8080                                         ; $624c: $c3 $80 $80


	inc bc                                           ; $624f: $03
	ld [bc], a                                       ; $6250: $02
	inc bc                                           ; $6251: $03
	ld [bc], a                                       ; $6252: $02
	nop                                              ; $6253: $00
	nop                                              ; $6254: $00
	ld [hl-], a                                      ; $6255: $32
	rst $38                                          ; $6256: $ff
	cp e                                             ; $6257: $bb
	rst AddAOntoHL                                          ; $6258: $ef
	rst $38                                          ; $6259: $ff
	ld h, [hl]                                       ; $625a: $66
	rst $38                                          ; $625b: $ff
	cpl                                              ; $625c: $2f
	rst $38                                          ; $625d: $ff
	ld [de], a                                       ; $625e: $12
	rst $38                                          ; $625f: $ff
	add b                                            ; $6260: $80
	rst $38                                          ; $6261: $ff
	rlca                                             ; $6262: $07
	db $fc                                           ; $6263: $fc
	inc c                                            ; $6264: $0c
	rst $38                                          ; $6265: $ff
	add hl, bc                                       ; $6266: $09
	rst AddAOntoHL                                          ; $6267: $ef
	rrca                                             ; $6268: $0f
	inc bc                                           ; $6269: $03
	rlca                                             ; $626a: $07
	ld b, $04                                        ; $626b: $06 $04
	sbc h                                            ; $626d: $9c
	add a                                            ; $626e: $87
	inc bc                                           ; $626f: $03
	ret nz                                           ; $6270: $c0

	cp [hl]                                          ; $6271: $be
	add b                                            ; $6272: $80
	nop                                              ; $6273: $00
	ld [hl+], a                                      ; $6274: $22
	add b                                            ; $6275: $80
	rst $38                                          ; $6276: $ff
	ld [hl-], a                                      ; $6277: $32
	rst $38                                          ; $6278: $ff
	cp d                                             ; $6279: $ba
	rst $38                                          ; $627a: $ff
	db $dd                                           ; $627b: $dd
	rst FarCall                                          ; $627c: $f7
	rst $38                                          ; $627d: $ff

Call_063_627e:
	inc sp                                           ; $627e: $33
	rst $38                                          ; $627f: $ff
	dec de                                           ; $6280: $1b
	db $fd                                           ; $6281: $fd
	add a                                            ; $6282: $87
	db $fc                                           ; $6283: $fc
	ld h, a                                          ; $6284: $67
	cp $f7                                           ; $6285: $fe $f7
	push af                                          ; $6287: $f5
	rst GetHLinHL                                          ; $6288: $cf
	ld a, l                                          ; $6289: $7d
	ret                                              ; $628a: $c9


	cp a                                             ; $628b: $bf
	adc l                                            ; $628c: $8d
	cp a                                             ; $628d: $bf
	add hl, bc                                       ; $628e: $09
	ld l, [hl]                                       ; $628f: $6e
	inc de                                           ; $6290: $13
	ld a, [hl]                                       ; $6291: $7e
	rla                                              ; $6292: $17
	sbc $3f                                          ; $6293: $de $3f
	adc h                                            ; $6295: $8c
	ld a, [$ba3f]                                    ; $6296: $fa $3f $ba
	ld a, a                                          ; $6299: $7f
	ld a, [$f37f]                                    ; $629a: $fa $7f $f3
	cp $f7                                           ; $629d: $fe $f7
	cp $b7                                           ; $629f: $fe $b7
	cp $a5                                           ; $62a1: $fe $a5
	cp $25                                           ; $62a3: $fe $25
	cp $26                                           ; $62a5: $fe $26
	db $fd                                           ; $62a7: $fd
	xor a                                            ; $62a8: $af

jr_063_62a9:
	ld a, e                                          ; $62a9: $7b
	cp $80                                           ; $62aa: $fe $80
	ei                                               ; $62ac: $fb
	ld a, l                                          ; $62ad: $7d
	db $ed                                           ; $62ae: $ed
	dec hl                                           ; $62af: $2b
	call $1fcb                                       ; $62b0: $cd $cb $1f
	dec de                                           ; $62b3: $1b
	jp z, Jump_063_5fce                              ; $62b4: $ca $ce $5f

	cp $5b                                           ; $62b7: $fe $5b
	rst FarCall                                          ; $62b9: $f7
	ld l, [hl]                                       ; $62ba: $6e
	reti                                             ; $62bb: $d9


	ld l, e                                          ; $62bc: $6b
	db $fc                                           ; $62bd: $fc
	ld [hl], a                                       ; $62be: $77
	call c, $ccff                                    ; $62bf: $dc $ff $cc
	cp a                                             ; $62c2: $bf
	db $e4                                           ; $62c3: $e4
	rst SubAFromDE                                          ; $62c4: $df
	db $f4                                           ; $62c5: $f4
	ld l, a                                          ; $62c6: $6f
	db $f4                                           ; $62c7: $f4
	ld a, a                                          ; $62c8: $7f
	ldh a, [c]                                       ; $62c9: $f2
	ld d, a                                          ; $62ca: $57
	add a                                            ; $62cb: $87
	ld a, [$fa5f]                                    ; $62cc: $fa $5f $fa
	ld e, e                                          ; $62cf: $5b
	cp $4f                                           ; $62d0: $fe $4f
	cp $6f                                           ; $62d2: $fe $6f
	cp $6b                                           ; $62d4: $fe $6b
	cp $6b                                           ; $62d6: $fe $6b
	rst $38                                          ; $62d8: $ff
	ld h, l                                          ; $62d9: $65
	rst $38                                          ; $62da: $ff
	ld [hl], l                                       ; $62db: $75
	rst $38                                          ; $62dc: $ff
	ld d, l                                          ; $62dd: $55
	rst $38                                          ; $62de: $ff
	ld d, c                                          ; $62df: $51
	rst $38                                          ; $62e0: $ff
	pop de                                           ; $62e1: $d1
	rst $38                                          ; $62e2: $ff
	sub c                                            ; $62e3: $91
	ld a, e                                          ; $62e4: $7b
	cp $8f                                           ; $62e5: $fe $8f
	sub d                                            ; $62e7: $92
	rst $38                                          ; $62e8: $ff
	cp [hl]                                          ; $62e9: $be
	rst $38                                          ; $62ea: $ff
	rst $38                                          ; $62eb: $ff
	db $e3                                           ; $62ec: $e3
	rst $38                                          ; $62ed: $ff
	ld [hl+], a                                      ; $62ee: $22
	rst SubAFromDE                                          ; $62ef: $df
	ld b, h                                          ; $62f0: $44
	sbc h                                            ; $62f1: $9c
	adc b                                            ; $62f2: $88
	jr nc, jr_063_6305                               ; $62f3: $30 $10

	ld l, b                                          ; $62f5: $68
	jr nz, @+$55                                     ; $62f6: $20 $53

	nop                                              ; $62f8: $00
	ld a, a                                          ; $62f9: $7f
	ret nz                                           ; $62fa: $c0

	sbc b                                            ; $62fb: $98
	di                                               ; $62fc: $f3
	rst $38                                          ; $62fd: $ff
	or a                                             ; $62fe: $b7
	cp [hl]                                          ; $62ff: $be
	sbc $f7                                          ; $6300: $de $f7
	ld b, a                                          ; $6302: $47
	ld e, a                                          ; $6303: $5f
	nop                                              ; $6304: $00

jr_063_6305:
	ld d, e                                          ; $6305: $53
	jr nz, jr_063_6387                               ; $6306: $20 $7f

	ld a, $9a                                        ; $6308: $3e $9a
	ret nz                                           ; $630a: $c0

	ei                                               ; $630b: $fb
	ldh [$71], a                                     ; $630c: $e0 $71
	ld h, b                                          ; $630e: $60
	inc hl                                           ; $630f: $23
	jr nz, jr_063_62a9                               ; $6310: $20 $97

	nop                                              ; $6312: $00
	rst $38                                          ; $6313: $ff
	rlca                                             ; $6314: $07
	rst $38                                          ; $6315: $ff
	rrca                                             ; $6316: $0f
	db $ec                                           ; $6317: $ec
	inc c                                            ; $6318: $0c
	rlca                                             ; $6319: $07
	daa                                              ; $631a: $27
	jr nz, jr_063_639c                               ; $631b: $20 $7f

	nop                                              ; $631d: $00
	sbc d                                            ; $631e: $9a
	add a                                            ; $631f: $87
	cp $e7                                           ; $6320: $fe $e7
	push af                                          ; $6322: $f5
	rst $38                                          ; $6323: $ff
	ld d, a                                          ; $6324: $57
	jr nz, jr_063_6392                               ; $6325: $20 $6b

	add b                                            ; $6327: $80
	sbc h                                            ; $6328: $9c
	cp $7f                                           ; $6329: $fe $7f
	rst SubAFromDE                                          ; $632b: $df
	ld [hl], e                                       ; $632c: $73
	add b                                            ; $632d: $80
	sub h                                            ; $632e: $94
	ldh a, [rIE]                                     ; $632f: $f0 $ff
	or b                                             ; $6331: $b0
	cp a                                             ; $6332: $bf
	ret nc                                           ; $6333: $d0

	rst FarCall                                          ; $6334: $f7
	ld b, e                                          ; $6335: $43
	ld c, a                                          ; $6336: $4f
	cpl                                              ; $6337: $2f
	ld [hl], a                                       ; $6338: $77
	ld h, e                                          ; $6339: $63
	ld d, e                                          ; $633a: $53
	add b                                            ; $633b: $80
	ld a, a                                          ; $633c: $7f
	add hl, sp                                       ; $633d: $39
	ld a, a                                          ; $633e: $7f
	ret                                              ; $633f: $c9


	ld [hl], a                                       ; $6340: $77
	add b                                            ; $6341: $80
	cp [hl]                                          ; $6342: $be
	ei                                               ; $6343: $fb
	pop af                                           ; $6344: $f1
	ldh [$9a], a                                     ; $6345: $e0 $9a
	ret nz                                           ; $6347: $c0

	ld h, c                                          ; $6348: $61
	ld h, b                                          ; $6349: $60
	jp Jump_063_53c0                                 ; $634a: $c3 $c0 $53


	add b                                            ; $634d: $80
	ld a, a                                          ; $634e: $7f
	sbc c                                            ; $634f: $99
	sbc [hl]                                         ; $6350: $9e
	rra                                              ; $6351: $1f
	ld [hl], e                                       ; $6352: $73
	add b                                            ; $6353: $80
	cp [hl]                                          ; $6354: $be
	rst $38                                          ; $6355: $ff
	rst AddAOntoHL                                          ; $6356: $ef
	rlca                                             ; $6357: $07
	sbc d                                            ; $6358: $9a
	rlca                                             ; $6359: $07
	dec c                                            ; $635a: $0d
	dec c                                            ; $635b: $0d
	add a                                            ; $635c: $87
	rlca                                             ; $635d: $07
	ld d, e                                          ; $635e: $53
	add b                                            ; $635f: $80
	sbc d                                            ; $6360: $9a
	ld [hl], a                                       ; $6361: $77
	rst $38                                          ; $6362: $ff
	di                                               ; $6363: $f3
	rst $38                                          ; $6364: $ff
	dec sp                                           ; $6365: $3b
	ld a, e                                          ; $6366: $7b
	add b                                            ; $6367: $80
	sub h                                            ; $6368: $94
	rlca                                             ; $6369: $07
	cp $07                                           ; $636a: $fe $07
	push af                                          ; $636c: $f5
	rrca                                             ; $636d: $0f
	db $fd                                           ; $636e: $fd
	adc c                                            ; $636f: $89
	rst $38                                          ; $6370: $ff
	db $ed                                           ; $6371: $ed
	rst $38                                          ; $6372: $ff
	adc c                                            ; $6373: $89
	inc de                                           ; $6374: $13
	add b                                            ; $6375: $80
	sbc [hl]                                         ; $6376: $9e
	inc l                                            ; $6377: $2c
	inc de                                           ; $6378: $13
	add b                                            ; $6379: $80
	sbc h                                            ; $637a: $9c
	add b                                            ; $637b: $80
	pop hl                                           ; $637c: $e1
	jr nz, jr_063_6392                               ; $637d: $20 $13

	add b                                            ; $637f: $80
	sbc h                                            ; $6380: $9c
	inc bc                                           ; $6381: $03
	rrca                                             ; $6382: $0f
	ld [$800b], sp                                   ; $6383: $08 $0b $80
	ld a, a                                          ; $6386: $7f

jr_063_6387:
	xor e                                            ; $6387: $ab
	ld l, e                                          ; $6388: $6b
	add b                                            ; $6389: $80
	rst $38                                          ; $638a: $ff
	ld a, a                                          ; $638b: $7f
	jp nc, $019e                                     ; $638c: $d2 $9e $01

	cp [hl]                                          ; $638f: $be
	nop                                              ; $6390: $00
	inc bc                                           ; $6391: $03

jr_063_6392:
	ret nz                                           ; $6392: $c0

	add l                                            ; $6393: $85
	add b                                            ; $6394: $80
	ldh a, [$e0]                                     ; $6395: $f0 $e0
	db $fc                                           ; $6397: $fc
	ldh a, [rPCM34]                                  ; $6398: $f0 $77
	db $ec                                           ; $639a: $ec
	ld a, l                                          ; $639b: $7d

jr_063_639c:
	db $e3                                           ; $639c: $e3
	ld a, b                                          ; $639d: $78
	ldh [$50], a                                     ; $639e: $e0 $50
	ldh [$f0], a                                     ; $63a0: $e0 $f0
	ret nz                                           ; $63a2: $c0

	ld hl, sp-$40                                    ; $63a3: $f8 $c0
	ld a, $38                                        ; $63a5: $3e $38
	rst GetHLinHL                                          ; $63a7: $cf
	rst GetHLinHL                                          ; $63a8: $cf
	nop                                              ; $63a9: $00
	nop                                              ; $63aa: $00
	pop bc                                           ; $63ab: $c1
	add b                                            ; $63ac: $80
	add c                                            ; $63ad: $81
	cp a                                             ; $63ae: $bf
	inc bc                                           ; $63af: $03
	add a                                            ; $63b0: $87
	sub e                                            ; $63b1: $93
	ld bc, $030f                                     ; $63b2: $01 $0f $03
	rra                                              ; $63b5: $1f
	rlca                                             ; $63b6: $07
	ld a, a                                          ; $63b7: $7f
	dec e                                            ; $63b8: $1d
	rst $38                                          ; $63b9: $ff
	ld a, c                                          ; $63ba: $79
	rst $38                                          ; $63bb: $ff
	pop hl                                           ; $63bc: $e1
	rst SubAFromBC                                          ; $63bd: $e7
	cp l                                             ; $63be: $bd
	rlca                                             ; $63bf: $07
	rrca                                             ; $63c0: $0f
	rrca                                             ; $63c1: $0f
	rra                                              ; $63c2: $1f
	sbc e                                            ; $63c3: $9b
	rlca                                             ; $63c4: $07
	ld hl, sp-$04                                    ; $63c5: $f8 $fc
	nop                                              ; $63c7: $00
	cp a                                             ; $63c8: $bf
	inc b                                            ; $63c9: $04
	inc bc                                           ; $63ca: $03
	ld a, e                                          ; $63cb: $7b
	cp [hl]                                          ; $63cc: $be
	rra                                              ; $63cd: $1f
	ret nz                                           ; $63ce: $c0

	sbc d                                            ; $63cf: $9a
	ld b, c                                          ; $63d0: $41
	nop                                              ; $63d1: $00
	add c                                            ; $63d2: $81
	add b                                            ; $63d3: $80
	add e                                            ; $63d4: $83
	inc de                                           ; $63d5: $13
	ret nz                                           ; $63d6: $c0

	ld a, a                                          ; $63d7: $7f
	ld a, [hl]                                       ; $63d8: $7e
	sbc $03                                          ; $63d9: $de $03
	dec de                                           ; $63db: $1b
	ret nz                                           ; $63dc: $c0

	ld a, a                                          ; $63dd: $7f
	ld a, [hl]                                       ; $63de: $7e
	sbc l                                            ; $63df: $9d
	add e                                            ; $63e0: $83
	add b                                            ; $63e1: $80

jr_063_63e2:
	rrca                                             ; $63e2: $0f
	ret nz                                           ; $63e3: $c0

	ld [hl], a                                       ; $63e4: $77
	cp [hl]                                          ; $63e5: $be
	ld a, a                                          ; $63e6: $7f
	jp c, $c01f                                      ; $63e7: $da $1f $c0

	ld a, l                                          ; $63ea: $7d
	jp nc, $879c                                     ; $63eb: $d2 $9c $87

	add c                                            ; $63ee: $81
	adc a                                            ; $63ef: $8f
	inc sp                                           ; $63f0: $33
	ret nz                                           ; $63f1: $c0

	di                                               ; $63f2: $f3
	ld bc, $6a80                                     ; $63f3: $01 $80 $6a
	rst SubAFromDE                                          ; $63f6: $df
	ld c, e                                          ; $63f7: $4b
	rst $38                                          ; $63f8: $ff
	ld l, e                                          ; $63f9: $6b
	cp $6f                                           ; $63fa: $fe $6f
	rst $38                                          ; $63fc: $ff
	ld a, a                                          ; $63fd: $7f
	db $db                                           ; $63fe: $db
	ccf                                              ; $63ff: $3f
	db $ed                                           ; $6400: $ed
	cp a                                             ; $6401: $bf
	rst SubAFromBC                                          ; $6402: $e7
	sbc $fe                                          ; $6403: $de $fe
	rst $38                                          ; $6405: $ff
	cp h                                             ; $6406: $bc
	cp a                                             ; $6407: $bf
	rst SubAFromHL                                          ; $6408: $d7
	push af                                          ; $6409: $f5
	ld b, e                                          ; $640a: $43
	ld b, e                                          ; $640b: $43
	ld [hl+], a                                      ; $640c: $22
	ld [hl], e                                       ; $640d: $73
	ld h, c                                          ; $640e: $61
	or b                                             ; $640f: $b0
	jr nz, jr_063_63e2                               ; $6410: $20 $d0

Call_063_6412:
	sub b                                            ; $6412: $90
	ld a, b                                          ; $6413: $78
	sub c                                            ; $6414: $91
	ldh a, [$78]                                     ; $6415: $f0 $78
	ld hl, sp+$4c                                    ; $6417: $f8 $4c
	ld hl, sp+$4c                                    ; $6419: $f8 $4c
	db $fc                                           ; $641b: $fc
	ld c, [hl]                                       ; $641c: $4e
	cp $4f                                           ; $641d: $fe $4f
	rst $38                                          ; $641f: $ff
	ld c, c                                          ; $6420: $49
	rst $38                                          ; $6421: $ff
	adc c                                            ; $6422: $89
	ld a, e                                          ; $6423: $7b
	cp $98                                           ; $6424: $fe $98
	xor c                                            ; $6426: $a9
	rst $38                                          ; $6427: $ff
	and l                                            ; $6428: $a5
	ei                                               ; $6429: $fb
	rst FarCall                                          ; $642a: $f7
	xor c                                            ; $642b: $a9
	push hl                                          ; $642c: $e5
	ld a, e                                          ; $642d: $7b
	cp $80                                           ; $642e: $fe $80
	jp hl                                            ; $6430: $e9


	and l                                            ; $6431: $a5
	or c                                             ; $6432: $b1
	push hl                                          ; $6433: $e5
	or l                                             ; $6434: $b5
	pop hl                                           ; $6435: $e1
	ld c, e                                          ; $6436: $4b
	rst $38                                          ; $6437: $ff
	ld l, l                                          ; $6438: $6d
	rst $38                                          ; $6439: $ff
	cp l                                             ; $643a: $bd
	rst $38                                          ; $643b: $ff
	rst $38                                          ; $643c: $ff
	db $eb                                           ; $643d: $eb
	rst $38                                          ; $643e: $ff
	ld h, l                                          ; $643f: $65
	rst $38                                          ; $6440: $ff
	db $10                                           ; $6441: $10
	rst $38                                          ; $6442: $ff
	add b                                            ; $6443: $80
	ld a, a                                          ; $6444: $7f
	ld b, b                                          ; $6445: $40
	ei                                               ; $6446: $fb
	ldh [$f1], a                                     ; $6447: $e0 $f1
	ldh [$a0], a                                     ; $6449: $e0 $a0
	ldh [rSTAT], a                                   ; $644b: $e0 $41
	ld b, b                                          ; $644d: $40
	jp $8080                                         ; $644e: $c3 $80 $80


	inc bc                                           ; $6451: $03
	ld [bc], a                                       ; $6452: $02
	inc bc                                           ; $6453: $03
	ld [bc], a                                       ; $6454: $02
	nop                                              ; $6455: $00
	nop                                              ; $6456: $00
	ld [hl-], a                                      ; $6457: $32
	rst $38                                          ; $6458: $ff
	cp e                                             ; $6459: $bb
	rst AddAOntoHL                                          ; $645a: $ef
	rst $38                                          ; $645b: $ff
	ld h, [hl]                                       ; $645c: $66
	rst $38                                          ; $645d: $ff
	daa                                              ; $645e: $27
	rst $38                                          ; $645f: $ff
	ld a, [de]                                       ; $6460: $1a
	rst $38                                          ; $6461: $ff
	add b                                            ; $6462: $80
	rst $38                                          ; $6463: $ff
	rlca                                             ; $6464: $07
	db $fc                                           ; $6465: $fc
	inc c                                            ; $6466: $0c
	rst $38                                          ; $6467: $ff
	add hl, bc                                       ; $6468: $09
	rst AddAOntoHL                                          ; $6469: $ef
	rrca                                             ; $646a: $0f
	inc bc                                           ; $646b: $03
	rlca                                             ; $646c: $07
	ld b, $04                                        ; $646d: $06 $04
	sbc h                                            ; $646f: $9c
	add a                                            ; $6470: $87
	inc bc                                           ; $6471: $03
	ret nz                                           ; $6472: $c0

	cp [hl]                                          ; $6473: $be
	add b                                            ; $6474: $80
	nop                                              ; $6475: $00
	ld [hl+], a                                      ; $6476: $22
	add b                                            ; $6477: $80
	rst $38                                          ; $6478: $ff
	ld [hl-], a                                      ; $6479: $32
	rst $38                                          ; $647a: $ff
	cp d                                             ; $647b: $ba
	rst $38                                          ; $647c: $ff
	db $dd                                           ; $647d: $dd
	ld [hl], a                                       ; $647e: $77
	rst $38                                          ; $647f: $ff
	inc sp                                           ; $6480: $33
	rst $38                                          ; $6481: $ff
	dec de                                           ; $6482: $1b
	db $fd                                           ; $6483: $fd
	add a                                            ; $6484: $87
	db $fc                                           ; $6485: $fc
	ld h, a                                          ; $6486: $67
	cp $f7                                           ; $6487: $fe $f7
	push af                                          ; $6489: $f5
	rst GetHLinHL                                          ; $648a: $cf
	ld a, l                                          ; $648b: $7d
	ret                                              ; $648c: $c9


	cp a                                             ; $648d: $bf
	adc l                                            ; $648e: $8d
	cp a                                             ; $648f: $bf
	add hl, bc                                       ; $6490: $09
	ld l, [hl]                                       ; $6491: $6e
	inc de                                           ; $6492: $13
	ld a, [hl]                                       ; $6493: $7e
	rla                                              ; $6494: $17
	sbc $3f                                          ; $6495: $de $3f
	adc h                                            ; $6497: $8c
	ld a, [$ba3f]                                    ; $6498: $fa $3f $ba
	ld a, a                                          ; $649b: $7f
	ld a, [$f37f]                                    ; $649c: $fa $7f $f3
	cp $f7                                           ; $649f: $fe $f7
	cp $b7                                           ; $64a1: $fe $b7
	cp $a5                                           ; $64a3: $fe $a5
	cp $25                                           ; $64a5: $fe $25

jr_063_64a7:
	cp $26                                           ; $64a7: $fe $26
	db $fd                                           ; $64a9: $fd

jr_063_64aa:
	xor a                                            ; $64aa: $af
	ld a, e                                          ; $64ab: $7b
	cp $80                                           ; $64ac: $fe $80
	ei                                               ; $64ae: $fb
	ld a, l                                          ; $64af: $7d

Call_063_64b0:
	db $ed                                           ; $64b0: $ed
	dec hl                                           ; $64b1: $2b
	call $1fcb                                       ; $64b2: $cd $cb $1f
	dec de                                           ; $64b5: $1b
	jp z, Jump_063_5fce                              ; $64b6: $ca $ce $5f

	cp $5b                                           ; $64b9: $fe $5b
	rst FarCall                                          ; $64bb: $f7
	ld l, [hl]                                       ; $64bc: $6e
	reti                                             ; $64bd: $d9


	ld l, e                                          ; $64be: $6b
	db $fc                                           ; $64bf: $fc
	ld [hl], a                                       ; $64c0: $77
	call c, $ccff                                    ; $64c1: $dc $ff $cc
	cp a                                             ; $64c4: $bf
	db $e4                                           ; $64c5: $e4
	rst SubAFromDE                                          ; $64c6: $df
	db $f4                                           ; $64c7: $f4
	ld l, a                                          ; $64c8: $6f
	db $f4                                           ; $64c9: $f4
	ld a, a                                          ; $64ca: $7f
	ldh a, [c]                                       ; $64cb: $f2
	ld d, a                                          ; $64cc: $57
	sub e                                            ; $64cd: $93
	ld a, [$fa5f]                                    ; $64ce: $fa $5f $fa
	ld e, e                                          ; $64d1: $5b
	cp $4f                                           ; $64d2: $fe $4f
	cp $6f                                           ; $64d4: $fe $6f
	cp $6b                                           ; $64d6: $fe $6b
	cp $6b                                           ; $64d8: $fe $6b
	ld a, e                                          ; $64da: $7b
	ld h, a                                          ; $64db: $67
	sub [hl]                                         ; $64dc: $96
	ld [hl], l                                       ; $64dd: $75
	rst $38                                          ; $64de: $ff
	ld d, l                                          ; $64df: $55
	rst $38                                          ; $64e0: $ff
	ld d, c                                          ; $64e1: $51
	rst $38                                          ; $64e2: $ff
	pop de                                           ; $64e3: $d1
	rst $38                                          ; $64e4: $ff
	sub c                                            ; $64e5: $91
	ld a, e                                          ; $64e6: $7b
	cp $8f                                           ; $64e7: $fe $8f
	sub d                                            ; $64e9: $92
	rst $38                                          ; $64ea: $ff
	cp [hl]                                          ; $64eb: $be
	rst $38                                          ; $64ec: $ff
	rst $38                                          ; $64ed: $ff
	db $e3                                           ; $64ee: $e3
	rst $38                                          ; $64ef: $ff
	ld [hl+], a                                      ; $64f0: $22
	rst SubAFromDE                                          ; $64f1: $df
	ld b, h                                          ; $64f2: $44
	sbc h                                            ; $64f3: $9c
	adc b                                            ; $64f4: $88
	jr nc, jr_063_6507                               ; $64f5: $30 $10

	ld l, b                                          ; $64f7: $68
	jr nz, @+$55                                     ; $64f8: $20 $53

	nop                                              ; $64fa: $00
	ld a, a                                          ; $64fb: $7f
	ret nz                                           ; $64fc: $c0

	sbc b                                            ; $64fd: $98
	di                                               ; $64fe: $f3
	rst $38                                          ; $64ff: $ff
	or a                                             ; $6500: $b7
	cp [hl]                                          ; $6501: $be
	sbc $f7                                          ; $6502: $de $f7
	ld b, a                                          ; $6504: $47
	ld e, a                                          ; $6505: $5f
	nop                                              ; $6506: $00

jr_063_6507:
	ld c, a                                          ; $6507: $4f
	jr nz, jr_063_64a7                               ; $6508: $20 $9d

	rst $38                                          ; $650a: $ff
	ret nz                                           ; $650b: $c0

	ld a, e                                          ; $650c: $7b
	jr nz, @-$60                                     ; $650d: $20 $9e

	ld h, b                                          ; $650f: $60
	inc hl                                           ; $6510: $23
	jr nz, jr_063_64aa                               ; $6511: $20 $97

	nop                                              ; $6513: $00
	rst $38                                          ; $6514: $ff
	rlca                                             ; $6515: $07
	rst $38                                          ; $6516: $ff
	rrca                                             ; $6517: $0f
	db $ed                                           ; $6518: $ed
	inc c                                            ; $6519: $0c
	rlca                                             ; $651a: $07
	daa                                              ; $651b: $27
	jr nz, jr_063_659d                               ; $651c: $20 $7f

	nop                                              ; $651e: $00
	sbc d                                            ; $651f: $9a
	add a                                            ; $6520: $87
	cp $e7                                           ; $6521: $fe $e7
	push af                                          ; $6523: $f5
	rst $38                                          ; $6524: $ff
	ld d, a                                          ; $6525: $57
	jr nz, jr_063_6593                               ; $6526: $20 $6b

	add b                                            ; $6528: $80
	sbc [hl]                                         ; $6529: $9e
	cp $6b                                           ; $652a: $fe $6b
	add b                                            ; $652c: $80
	sub h                                            ; $652d: $94
	ldh a, [rIE]                                     ; $652e: $f0 $ff
	or b                                             ; $6530: $b0
	cp a                                             ; $6531: $bf
	ret nc                                           ; $6532: $d0

	rst FarCall                                          ; $6533: $f7
	ld b, e                                          ; $6534: $43
	ld c, a                                          ; $6535: $4f
	cpl                                              ; $6536: $2f
	ld [hl], a                                       ; $6537: $77
	ld h, e                                          ; $6538: $63
	ld d, e                                          ; $6539: $53
	add b                                            ; $653a: $80
	ld a, a                                          ; $653b: $7f
	add hl, sp                                       ; $653c: $39
	sbc h                                            ; $653d: $9c
	and l                                            ; $653e: $a5
	rst $38                                          ; $653f: $ff
	ld [hl], b                                       ; $6540: $70
	ld [hl], a                                       ; $6541: $77
	sbc [hl]                                         ; $6542: $9e
	sbc [hl]                                         ; $6543: $9e
	ei                                               ; $6544: $fb
	cp a                                             ; $6545: $bf
	pop af                                           ; $6546: $f1
	ldh [$9a], a                                     ; $6547: $e0 $9a
	ret nz                                           ; $6549: $c0

	ld h, c                                          ; $654a: $61
	ld h, b                                          ; $654b: $60
	jp Jump_063_53c0                                 ; $654c: $c3 $c0 $53


	add b                                            ; $654f: $80
	ld a, a                                          ; $6550: $7f
	sbc c                                            ; $6551: $99
	sbc h                                            ; $6552: $9c
	rla                                              ; $6553: $17
	rst $38                                          ; $6554: $ff
	sbc b                                            ; $6555: $98
	ld a, e                                          ; $6556: $7b
	add b                                            ; $6557: $80
	cp [hl]                                          ; $6558: $be
	rst $38                                          ; $6559: $ff
	rst AddAOntoHL                                          ; $655a: $ef
	rlca                                             ; $655b: $07
	sbc d                                            ; $655c: $9a
	rlca                                             ; $655d: $07
	dec c                                            ; $655e: $0d
	dec c                                            ; $655f: $0d
	add a                                            ; $6560: $87
	rlca                                             ; $6561: $07
	ld d, e                                          ; $6562: $53
	add b                                            ; $6563: $80
	sbc [hl]                                         ; $6564: $9e
	rst FarCall                                          ; $6565: $f7
	ld l, e                                          ; $6566: $6b
	add b                                            ; $6567: $80
	sub h                                            ; $6568: $94
	rlca                                             ; $6569: $07
	cp $07                                           ; $656a: $fe $07
	push af                                          ; $656c: $f5
	rrca                                             ; $656d: $0f
	db $fd                                           ; $656e: $fd
	adc c                                            ; $656f: $89
	rst $38                                          ; $6570: $ff
	db $ed                                           ; $6571: $ed
	rst $38                                          ; $6572: $ff
	adc c                                            ; $6573: $89
	inc de                                           ; $6574: $13
	add b                                            ; $6575: $80
	sbc [hl]                                         ; $6576: $9e
	inc l                                            ; $6577: $2c
	inc de                                           ; $6578: $13
	add b                                            ; $6579: $80
	sbc h                                            ; $657a: $9c
	add b                                            ; $657b: $80
	pop hl                                           ; $657c: $e1
	jr nz, jr_063_6592                               ; $657d: $20 $13

	add b                                            ; $657f: $80
	sbc h                                            ; $6580: $9c
	inc bc                                           ; $6581: $03
	rrca                                             ; $6582: $0f
	ld [$800b], sp                                   ; $6583: $08 $0b $80
	ld a, a                                          ; $6586: $7f
	xor e                                            ; $6587: $ab
	ld l, e                                          ; $6588: $6b
	add b                                            ; $6589: $80
	sbc h                                            ; $658a: $9c
	inc bc                                           ; $658b: $03
	ld bc, $bd05                                     ; $658c: $01 $05 $bd
	nop                                              ; $658f: $00
	inc bc                                           ; $6590: $03
	nop                                              ; $6591: $00

jr_063_6592:
	ret nz                                           ; $6592: $c0

jr_063_6593:
	adc c                                            ; $6593: $89
	add b                                            ; $6594: $80
	ldh a, [$e0]                                     ; $6595: $f0 $e0
	db $fc                                           ; $6597: $fc
	ldh a, [rPCM34]                                  ; $6598: $f0 $77
	db $ec                                           ; $659a: $ec
	ld a, l                                          ; $659b: $7d
	db $e3                                           ; $659c: $e3

jr_063_659d:
	ld a, b                                          ; $659d: $78
	ldh [$50], a                                     ; $659e: $e0 $50
	ldh [$f0], a                                     ; $65a0: $e0 $f0
	ret nz                                           ; $65a2: $c0

	ld hl, sp-$40                                    ; $65a3: $f8 $c0
	ld a, $38                                        ; $65a5: $3e $38
	rst GetHLinHL                                          ; $65a7: $cf
	rst GetHLinHL                                          ; $65a8: $cf
	add b                                            ; $65a9: $80
	cp l                                             ; $65aa: $bd
	pop bc                                           ; $65ab: $c1
	ld bc, $0783                                     ; $65ac: $01 $83 $07
	sub e                                            ; $65af: $93
	ld bc, $030f                                     ; $65b0: $01 $0f $03
	rra                                              ; $65b3: $1f
	rlca                                             ; $65b4: $07
	ld a, a                                          ; $65b5: $7f
	dec e                                            ; $65b6: $1d
	rst $38                                          ; $65b7: $ff
	ld a, c                                          ; $65b8: $79
	rst $38                                          ; $65b9: $ff
	pop hl                                           ; $65ba: $e1
	rst SubAFromBC                                          ; $65bb: $e7
	cp l                                             ; $65bc: $bd
	rlca                                             ; $65bd: $07
	rrca                                             ; $65be: $0f
	rrca                                             ; $65bf: $0f
	rra                                              ; $65c0: $1f
	sub a                                            ; $65c1: $97
	rlca                                             ; $65c2: $07
	ld hl, sp-$04                                    ; $65c3: $f8 $fc
	inc bc                                           ; $65c5: $03
	ld bc, $0307                                     ; $65c6: $01 $07 $03
	ld bc, $c00f                                     ; $65c9: $01 $0f $c0
	sbc l                                            ; $65cc: $9d
	add b                                            ; $65cd: $80
	add c                                            ; $65ce: $81
	rla                                              ; $65cf: $17
	ret nz                                           ; $65d0: $c0

	ld a, e                                          ; $65d1: $7b
	ld d, d                                          ; $65d2: $52
	ld [hl], a                                       ; $65d3: $77
	cp [hl]                                          ; $65d4: $be
	rla                                              ; $65d5: $17
	ret nz                                           ; $65d6: $c0

	ld a, a                                          ; $65d7: $7f
	cp $07                                           ; $65d8: $fe $07
	ret nz                                           ; $65da: $c0

	ld [hl], a                                       ; $65db: $77
	cp [hl]                                          ; $65dc: $be
	rla                                              ; $65dd: $17
	ret nz                                           ; $65de: $c0

	ld a, l                                          ; $65df: $7d
	jp nc, $879e                                     ; $65e0: $d2 $9e $87

	dec hl                                           ; $65e3: $2b
	ret nz                                           ; $65e4: $c0

	db $dd                                           ; $65e5: $dd
	ld [bc], a                                       ; $65e6: $02
	sbc $01                                          ; $65e7: $de $01
	rst SubAFromDE                                          ; $65e9: $df
	ld [bc], a                                       ; $65ea: $02
	add [hl]                                         ; $65eb: $86
	dec b                                            ; $65ec: $05
	inc b                                            ; $65ed: $04
	dec bc                                           ; $65ee: $0b
	add hl, bc                                       ; $65ef: $09
	ld d, $35                                        ; $65f0: $16 $35
	ld l, $1b                                        ; $65f2: $2e $1b
	inc l                                            ; $65f4: $2c
	ld l, e                                          ; $65f5: $6b
	ld e, h                                          ; $65f6: $5c
	halt                                             ; $65f7: $76
	ld e, c                                          ; $65f8: $59
	ld d, [hl]                                       ; $65f9: $56
	ld a, c                                          ; $65fa: $79
	ld d, h                                          ; $65fb: $54
	ld a, e                                          ; $65fc: $7b
	ld d, l                                          ; $65fd: $55
	ld a, d                                          ; $65fe: $7a
	ld d, c                                          ; $65ff: $51
	ld a, [hl]                                       ; $6600: $7e
	inc sp                                           ; $6601: $33
	ld a, $2b                                        ; $6602: $3e $2b
	ld l, $77                                        ; $6604: $2e $77
	cp $97                                           ; $6606: $fe $97
	dec b                                            ; $6608: $05
	rlca                                             ; $6609: $07
	dec b                                            ; $660a: $05
	rlca                                             ; $660b: $07
	ld [bc], a                                       ; $660c: $02
	inc bc                                           ; $660d: $03
	ld bc, $e001                                     ; $660e: $01 $01 $e0
	push de                                          ; $6611: $d5
	rst SubAFromDE                                          ; $6612: $df
	ld bc, $0480                                     ; $6613: $01 $80 $04
	rlca                                             ; $6616: $07
	add hl, bc                                       ; $6617: $09
	ld c, $17                                        ; $6618: $0e $17
	jr jr_063_6675                                   ; $661a: $18 $59

	ld h, [hl]                                       ; $661c: $66
	ld c, [hl]                                       ; $661d: $4e
	or c                                             ; $661e: $b1
	or c                                             ; $661f: $b1
	ld b, [hl]                                       ; $6620: $46
	ld d, l                                          ; $6621: $55
	adc b                                            ; $6622: $88
	xor c                                            ; $6623: $a9
	ld [de], a                                       ; $6624: $12
	ld d, e                                          ; $6625: $53
	inc h                                            ; $6626: $24
	and h                                            ; $6627: $a4
	ld c, c                                          ; $6628: $49
	jp nc, $a909                                     ; $6629: $d2 $09 $a9

	ld [de], a                                       ; $662c: $12
	inc h                                            ; $662d: $24
	ld [de], a                                       ; $662e: $12
	ld d, d                                          ; $662f: $52
	inc h                                            ; $6630: $24
	ld d, d                                          ; $6631: $52
	inc h                                            ; $6632: $24
	ret nz                                           ; $6633: $c0

	sub [hl]                                         ; $6634: $96
	inc h                                            ; $6635: $24
	add c                                            ; $6636: $81
	ld h, h                                          ; $6637: $64
	add l                                            ; $6638: $85
	ld h, h                                          ; $6639: $64
	cp a                                             ; $663a: $bf
	ld h, h                                          ; $663b: $64
	dec [hl]                                         ; $663c: $35
	xor $e0                                          ; $663d: $ee $e0
	pop bc                                           ; $663f: $c1
	add b                                            ; $6640: $80
	ld c, a                                          ; $6641: $4f
	ld a, b                                          ; $6642: $78
	ld c, a                                          ; $6643: $4f
	ld a, b                                          ; $6644: $78
	ld l, a                                          ; $6645: $6f
	ld e, b                                          ; $6646: $58
	ld l, a                                          ; $6647: $6f
	ld e, c                                          ; $6648: $59
	ld l, a                                          ; $6649: $6f
	ld e, c                                          ; $664a: $59
	ld l, e                                          ; $664b: $6b
	ld e, l                                          ; $664c: $5d
	rlca                                             ; $664d: $07
	dec a                                            ; $664e: $3d
	dec [hl]                                         ; $664f: $35
	cpl                                              ; $6650: $2f
	inc sp                                           ; $6651: $33
	cpl                                              ; $6652: $2f
	add hl, hl                                       ; $6653: $29
	ccf                                              ; $6654: $3f
	add hl, bc                                       ; $6655: $09
	rla                                              ; $6656: $17
	dec d                                            ; $6657: $15
	ld e, $03                                        ; $6658: $1e $03
	ld c, $0b                                        ; $665a: $0e $0b
	rrca                                             ; $665c: $0f
	dec b                                            ; $665d: $05
	ld b, $0b                                        ; $665e: $06 $0b
	sbc [hl]                                         ; $6660: $9e
	inc c                                            ; $6661: $0c
	ld b, a                                          ; $6662: $47
	ld l, b                                          ; $6663: $68
	add b                                            ; $6664: $80
	ld c, $0f                                        ; $6665: $0e $0f
	inc sp                                           ; $6667: $33
	inc a                                            ; $6668: $3c
	rst SubAFromDE                                          ; $6669: $df
	ldh [$0e], a                                     ; $666a: $e0 $0e
	pop af                                           ; $666c: $f1
	ld a, a                                          ; $666d: $7f
	add b                                            ; $666e: $80
	rst $38                                          ; $666f: $ff
	nop                                              ; $6670: $00
	rst $38                                          ; $6671: $ff
	nop                                              ; $6672: $00
	sbc [hl]                                         ; $6673: $9e
	ld h, c                                          ; $6674: $61

jr_063_6675:
	ld a, a                                          ; $6675: $7f
	add b                                            ; $6676: $80
	db $dd                                           ; $6677: $dd
	ld [hl+], a                                      ; $6678: $22
	or e                                             ; $6679: $b3
	ld b, h                                          ; $667a: $44
	ld h, l                                          ; $667b: $65

jr_063_667c:
	adc b                                            ; $667c: $88
	ld c, [hl]                                       ; $667d: $4e

jr_063_667e:
	sub c                                            ; $667e: $91
	xor d                                            ; $667f: $aa
	ld de, $2214                                     ; $6680: $11 $14 $22
	inc b                                            ; $6683: $04
	adc [hl]                                         ; $6684: $8e
	ld [hl+], a                                      ; $6685: $22
	ld a, [bc]                                       ; $6686: $0a
	inc b                                            ; $6687: $04
	adc c                                            ; $6688: $89
	ld b, h                                          ; $6689: $44
	adc c                                            ; $668a: $89
	ld b, h                                          ; $668b: $44
	add hl, de                                       ; $668c: $19
	call nz, $cd10                                   ; $668d: $c4 $10 $cd
	ld d, $cd                                        ; $6690: $16 $cd
	inc [hl]                                         ; $6692: $34
	rst GetHLinHL                                          ; $6693: $cf
	ld d, l                                          ; $6694: $55
	rst AddAOntoHL                                          ; $6695: $ef
	ldh [$c1], a                                     ; $6696: $e0 $c1
	adc d                                            ; $6698: $8a
	db $db                                           ; $6699: $db
	cp [hl]                                          ; $669a: $be
	cp e                                             ; $669b: $bb
	cp $be                                           ; $669c: $fe $be
	db $fc                                           ; $669e: $fc
	inc a                                            ; $669f: $3c
	db $ec                                           ; $66a0: $ec
	ld c, h                                          ; $66a1: $4c
	db $ec                                           ; $66a2: $ec
	ld l, [hl]                                       ; $66a3: $6e
	call nz, $c47e                                   ; $66a4: $c4 $7e $c4
	and [hl]                                         ; $66a7: $a6
	call nz, $82c6                                   ; $66a8: $c4 $c6 $82
	add d                                            ; $66ab: $82
	ld [bc], a                                       ; $66ac: $02
	add d                                            ; $66ad: $82
	db $dd                                           ; $66ae: $dd
	ld [bc], a                                       ; $66af: $02
	sbc b                                            ; $66b0: $98
	nop                                              ; $66b1: $00
	and b                                            ; $66b2: $a0
	ret nz                                           ; $66b3: $c0

	ld d, $fc                                        ; $66b4: $16 $fc
	sub a                                            ; $66b6: $97
	inc hl                                           ; $66b7: $23
	ld d, a                                          ; $66b8: $57
	ld h, h                                          ; $66b9: $64
	rst $38                                          ; $66ba: $ff
	rst SubAFromDE                                          ; $66bb: $df
	ldh a, [$80]                                     ; $66bc: $f0 $80
	ld l, h                                          ; $66be: $6c
	sbc h                                            ; $66bf: $9c
	sub d                                            ; $66c0: $92
	ld l, [hl]                                       ; $66c1: $6e
	pop hl                                           ; $66c2: $e1
	rra                                              ; $66c3: $1f

Call_063_66c4:
	ld sp, $c2cf                                     ; $66c4: $31 $cf $c2
	ccf                                              ; $66c7: $3f
	db $e3                                           ; $66c8: $e3
	inc e                                            ; $66c9: $1c
	rlca                                             ; $66ca: $07
	ld hl, sp-$09                                    ; $66cb: $f8 $f7
	ld [$02fd], sp                                   ; $66cd: $08 $fd $02
	db $fd                                           ; $66d0: $fd
	ld [bc], a                                       ; $66d1: $02
	or $09                                           ; $66d2: $f6 $09
	halt                                             ; $66d4: $76
	adc c                                            ; $66d5: $89
	ldh a, [c]                                       ; $66d6: $f2
	add hl, bc                                       ; $66d7: $09
	ld [hl-], a                                      ; $66d8: $32
	ld c, c                                          ; $66d9: $49
	sub d                                            ; $66da: $92
	ld c, c                                          ; $66db: $49
	ld d, b                                          ; $66dc: $50
	adc [hl]                                         ; $66dd: $8e
	adc c                                            ; $66de: $89
	db $10                                           ; $66df: $10
	adc c                                            ; $66e0: $89
	jr nz, jr_063_667c                               ; $66e1: $20 $99

	jr nz, jr_063_667e                               ; $66e3: $20 $99

	ld [hl+], a                                      ; $66e5: $22
	sbc c                                            ; $66e6: $99
	ld l, d                                          ; $66e7: $6a
	sbc c                                            ; $66e8: $99
	xor h                                            ; $66e9: $ac
	db $db                                           ; $66ea: $db
	adc b                                            ; $66eb: $88
	rst $38                                          ; $66ec: $ff
	adc b                                            ; $66ed: $88
	rst $38                                          ; $66ee: $ff
	ldh [$c1], a                                     ; $66ef: $e0 $c1
	sbc d                                            ; $66f1: $9a
	call z, $e600                                    ; $66f2: $cc $00 $e6
	nop                                              ; $66f5: $00
	inc sp                                           ; $66f6: $33
	ldh a, [c]                                       ; $66f7: $f2
	sbc [hl]                                         ; $66f8: $9e
	ld [$fe7b], sp                                   ; $66f9: $08 $7b $fe
	sub a                                            ; $66fc: $97
	dec c                                            ; $66fd: $0d
	nop                                              ; $66fe: $00
	rrca                                             ; $66ff: $0f
	nop                                              ; $6700: $00
	dec c                                            ; $6701: $0d
	ld [bc], a                                       ; $6702: $02
	sbc a                                            ; $6703: $9f
	ld [bc], a                                       ; $6704: $02
	ld sp, hl                                        ; $6705: $f9
	rst SubAFromDE                                          ; $6706: $df
	ld h, b                                          ; $6707: $60
	rst SubAFromDE                                          ; $6708: $df
	or b                                             ; $6709: $b0
	adc l                                            ; $670a: $8d
	add sp, -$08                                     ; $670b: $e8 $f8
	jr z, jr_063_6787                                ; $670d: $28 $78

	ld a, $7e                                        ; $670f: $3e $7e
	pop hl                                           ; $6711: $e1
	rst $38                                          ; $6712: $ff
	cp [hl]                                          ; $6713: $be
	pop bc                                           ; $6714: $c1
	ld b, b                                          ; $6715: $40
	cp a                                             ; $6716: $bf
	rra                                              ; $6717: $1f
	ldh [$e1], a                                     ; $6718: $e0 $e1
	ld e, $fe                                        ; $671a: $1e $fe

jr_063_671c:
	ld bc, $bc76                                     ; $671c: $01 $76 $bc
	sbc e                                            ; $671f: $9b
	rst SubAFromBC                                          ; $6720: $e7
	jr jr_063_671c                                   ; $6721: $18 $f9

	ld b, $77                                        ; $6723: $06 $77
	or $89                                           ; $6725: $f6 $89
	ld a, l                                          ; $6727: $7d
	add d                                            ; $6728: $82
	ld a, [hl]                                       ; $6729: $7e
	add c                                            ; $672a: $81
	ld a, a                                          ; $672b: $7f
	add b                                            ; $672c: $80
	ld a, a                                          ; $672d: $7f
	add b                                            ; $672e: $80
	ld e, $c0                                        ; $672f: $1e $c0
	ld [de], a                                       ; $6731: $12
	ret z                                            ; $6732: $c8

	inc de                                           ; $6733: $13
	ret z                                            ; $6734: $c8

	ld [bc], a                                       ; $6735: $02
	ret                                              ; $6736: $c9


	add h                                            ; $6737: $84
	ret                                              ; $6738: $c9


	xor c                                            ; $6739: $a9
	call nz, $e4ca                                   ; $673a: $c4 $ca $e4
	ldh [$c1], a                                     ; $673d: $e0 $c1
	sbc c                                            ; $673f: $99
	ld h, e                                          ; $6740: $63
	ld [bc], a                                       ; $6741: $02
	ld b, e                                          ; $6742: $43
	ld [bc], a                                       ; $6743: $02
	adc a                                            ; $6744: $8f
	ld [bc], a                                       ; $6745: $02
	ld a, c                                          ; $6746: $79
	ld a, a                                          ; $6747: $7f
	ld l, e                                          ; $6748: $6b
	cp $95                                           ; $6749: $fe $95
	inc hl                                           ; $674b: $23
	ld [bc], a                                       ; $674c: $02
	ld b, e                                          ; $674d: $43
	ld bc, $01c3                                     ; $674e: $01 $c3 $01
	add c                                            ; $6751: $81
	ld bc, $0081                                     ; $6752: $01 $81 $00
	ld [hl], l                                       ; $6755: $75
	ld l, a                                          ; $6756: $6f
	sbc l                                            ; $6757: $9d
	rra                                              ; $6758: $1f
	rrca                                             ; $6759: $0f
	rst AddAOntoHL                                          ; $675a: $ef
	rst SubAFromDE                                          ; $675b: $df
	add b                                            ; $675c: $80
	add b                                            ; $675d: $80
	ld h, b                                          ; $675e: $60
	ldh [rAUD2LOW], a                                ; $675f: $e0 $18
	ld hl, sp-$3c                                    ; $6761: $f8 $c4
	inc a                                            ; $6763: $3c
	ldh a, [c]                                       ; $6764: $f2
	ld c, $3d                                        ; $6765: $0e $3d
	jp $31ce                                         ; $6767: $c3 $ce $31


	di                                               ; $676a: $f3
	inc c                                            ; $676b: $0c
	sbc h                                            ; $676c: $9c
	ld h, e                                          ; $676d: $63
	xor $11                                          ; $676e: $ee $11
	rst FarCall                                          ; $6770: $f7
	ld [$847b], sp                                   ; $6771: $08 $7b $84
	cp b                                             ; $6774: $b8
	ld b, a                                          ; $6775: $47
	jp nc, $012d                                     ; $6776: $d2 $2d $01

	cp $85                                           ; $6779: $fe $85
	ld a, d                                          ; $677b: $7a
	sub d                                            ; $677c: $92
	sub d                                            ; $677d: $92
	ld l, l                                          ; $677e: $6d
	call Call_063_4d36                               ; $677f: $cd $36 $4d
	ld [hl-], a                                      ; $6782: $32
	ld h, [hl]                                       ; $6783: $66
	dec de                                           ; $6784: $1b
	and [hl]                                         ; $6785: $a6
	add hl, de                                       ; $6786: $19

jr_063_6787:
	ld l, e                                          ; $6787: $6b
	sbc l                                            ; $6788: $9d
	inc sp                                           ; $6789: $33
	call z, $c1e0                                    ; $678a: $cc $e0 $c1
	sbc b                                            ; $678d: $98
	scf                                              ; $678e: $37
	sbc $b7                                          ; $678f: $de $b7
	sbc $b6                                          ; $6791: $de $b6
	rst SubAFromDE                                          ; $6793: $df
	or l                                             ; $6794: $b5
	ld a, e                                          ; $6795: $7b
	cp $9d                                           ; $6796: $fe $9d
	sub l                                            ; $6798: $95
	rst $38                                          ; $6799: $ff
	ld [hl], a                                       ; $679a: $77
	cp $98                                           ; $679b: $fe $98
	ld d, l                                          ; $679d: $55
	rst $38                                          ; $679e: $ff
	ld d, h                                          ; $679f: $54
	rst $38                                          ; $67a0: $ff
	ld d, d                                          ; $67a1: $52
	rst $38                                          ; $67a2: $ff
	ld e, d                                          ; $67a3: $5a
	ld a, e                                          ; $67a4: $7b
	cp $99                                           ; $67a5: $fe $99
	ei                                               ; $67a7: $fb
	rst $38                                          ; $67a8: $ff
	db $fd                                           ; $67a9: $fd
	rst $38                                          ; $67aa: $ff
	ld e, l                                          ; $67ab: $5d
	ld e, a                                          ; $67ac: $5f
	db $e3                                           ; $67ad: $e3
	rst SubAFromDE                                          ; $67ae: $df
	add b                                            ; $67af: $80
	add b                                            ; $67b0: $80
	ld b, b                                          ; $67b1: $40
	ret nz                                           ; $67b2: $c0

	and b                                            ; $67b3: $a0
	ld h, b                                          ; $67b4: $60
	nop                                              ; $67b5: $00
	ldh [rAUD1SWEEP], a                              ; $67b6: $e0 $10
	ldh a, [rP1]                                     ; $67b8: $f0 $00
	ldh a, [$08]                                     ; $67ba: $f0 $08
	ld hl, sp+$00                                    ; $67bc: $f8 $00
	ld hl, sp+$04                                    ; $67be: $f8 $04
	db $fc                                           ; $67c0: $fc
	call nz, $a07c                                   ; $67c1: $c4 $7c $a0
	ld a, h                                          ; $67c4: $7c
	ld h, d                                          ; $67c5: $62
	cp [hl]                                          ; $67c6: $be
	ld [de], a                                       ; $67c7: $12
	cp $d0                                           ; $67c8: $fe $d0
	ld a, [hl]                                       ; $67ca: $7e
	xor c                                            ; $67cb: $a9
	ld a, a                                          ; $67cc: $7f
	ld l, c                                          ; $67cd: $69
	cp a                                             ; $67ce: $bf
	sub b                                            ; $67cf: $90
	add b                                            ; $67d0: $80
	rst $38                                          ; $67d1: $ff
	sub h                                            ; $67d2: $94
	rst $38                                          ; $67d3: $ff
	ret z                                            ; $67d4: $c8

	ld a, a                                          ; $67d5: $7f
	jp z, $257f                                      ; $67d6: $ca $7f $25

	rst $38                                          ; $67d9: $ff
	dec h                                            ; $67da: $25
	rst $38                                          ; $67db: $ff

Call_063_67dc:
	ld [de], a                                       ; $67dc: $12
	rst $38                                          ; $67dd: $ff
	ld [hl-], a                                      ; $67de: $32
	rst SubAFromDE                                          ; $67df: $df
	ld d, [hl]                                       ; $67e0: $56
	cp e                                             ; $67e1: $bb
	call $9dbb                                       ; $67e2: $cd $bb $9d
	db $eb                                           ; $67e5: $eb
	xor e                                            ; $67e6: $ab
	db $dd                                           ; $67e7: $dd
	ld c, d                                          ; $67e8: $4a
	db $dd                                           ; $67e9: $dd
	ld d, [hl]                                       ; $67ea: $56
	push bc                                          ; $67eb: $c5
	ld h, l                                          ; $67ec: $65
	add $65                                          ; $67ed: $c6 $65
	add $80                                          ; $67ef: $c6 $80
	ld b, a                                          ; $67f1: $47
	ldh [c], a                                       ; $67f2: $e2
	ld c, e                                          ; $67f3: $4b
	ldh [c], a                                       ; $67f4: $e2
	ld [hl+], a                                      ; $67f5: $22
	db $eb                                           ; $67f6: $eb
	ld h, $eb                                        ; $67f7: $26 $eb
	inc sp                                           ; $67f9: $33

jr_063_67fa:
	push hl                                          ; $67fa: $e5
	inc hl                                           ; $67fb: $23
	push af                                          ; $67fc: $f5
	inc hl                                           ; $67fd: $23
	push af                                          ; $67fe: $f5
	jr z, @-$07                                      ; $67ff: $28 $f7

	jr c, jr_063_67fa                                ; $6801: $38 $f7

	ld [hl-], a                                      ; $6803: $32
	rst $38                                          ; $6804: $ff
	ld [hl], e                                       ; $6805: $73
	cp a                                             ; $6806: $bf
	ld a, e                                          ; $6807: $7b
	xor [hl]                                         ; $6808: $ae
	dec sp                                           ; $6809: $3b
	xor [hl]                                         ; $680a: $ae
	cp c                                             ; $680b: $b9
	cpl                                              ; $680c: $2f
	dec a                                            ; $680d: $3d
	daa                                              ; $680e: $27
	dec a                                            ; $680f: $3d
	add c                                            ; $6810: $81
	daa                                              ; $6811: $27
	or l                                             ; $6812: $b5
	daa                                              ; $6813: $27
	sub [hl]                                         ; $6814: $96
	inc sp                                           ; $6815: $33
	ldh a, [c]                                       ; $6816: $f2
	inc de                                           ; $6817: $13
	or d                                             ; $6818: $b2
	ld d, c                                          ; $6819: $51
	sbc c                                            ; $681a: $99
	ld d, c                                          ; $681b: $51
	add hl, de                                       ; $681c: $19

jr_063_681d:
	ld d, b                                          ; $681d: $50
	cpl                                              ; $681e: $2f
	ld e, b                                          ; $681f: $58
	rst GetHLinHL                                          ; $6820: $cf
	ld a, [hl-]                                      ; $6821: $3a
	ld c, a                                          ; $6822: $4f
	cp d                                             ; $6823: $ba
	rrca                                             ; $6824: $0f
	ld sp, hl                                        ; $6825: $f9
	add a                                            ; $6826: $87
	db $fd                                           ; $6827: $fd
	and a                                            ; $6828: $a7
	db $fc                                           ; $6829: $fc
	and a                                            ; $682a: $a7
	db $fc                                           ; $682b: $fc
	sub e                                            ; $682c: $93
	cp $53                                           ; $682d: $fe $53
	ld a, e                                          ; $682f: $7b
	cp $9d                                           ; $6830: $fe $9d
	ld e, c                                          ; $6832: $59
	rst $38                                          ; $6833: $ff
	db $dd                                           ; $6834: $dd
	add b                                            ; $6835: $80
	ld a, a                                          ; $6836: $7f
	ld a, h                                          ; $6837: $7c
	ld a, a                                          ; $6838: $7f
	cp $9c                                           ; $6839: $fe $9c
	jr nz, jr_063_681d                               ; $683b: $20 $e0

	and b                                            ; $683d: $a0
	ld a, e                                          ; $683e: $7b
	cp $80                                           ; $683f: $fe $80
	ld d, b                                          ; $6841: $50
	ldh a, [$50]                                     ; $6842: $f0 $50
	ldh a, [$28]                                     ; $6844: $f0 $28
	ld hl, sp-$58                                    ; $6846: $f8 $a8
	ld hl, sp-$44                                    ; $6848: $f8 $bc
	db $f4                                           ; $684a: $f4
	call nc, $defc                                   ; $684b: $d4 $fc $de
	ld a, [$eabe]                                    ; $684e: $fa $be $ea
	cp e                                             ; $6851: $bb
	db $ed                                           ; $6852: $ed
	ld l, a                                          ; $6853: $6f
	push af                                          ; $6854: $f5
	call nc, $d777                                   ; $6855: $d4 $77 $d7
	ld [hl], d                                       ; $6858: $72
	db $db                                           ; $6859: $db
	ld [hl], d                                       ; $685a: $72
	ld a, [hl+]                                      ; $685b: $2a
	ei                                               ; $685c: $fb
	dec l                                            ; $685d: $2d
	ei                                               ; $685e: $fb
	xor e                                            ; $685f: $ab
	sbc l                                            ; $6860: $9d
	db $fd                                           ; $6861: $fd
	and l                                            ; $6862: $a5
	ld [hl], e                                       ; $6863: $73
	inc e                                            ; $6864: $1c
	sbc c                                            ; $6865: $99
	ld [hl], l                                       ; $6866: $75
	rst $38                                          ; $6867: $ff
	db $fd                                           ; $6868: $fd
	rra                                              ; $6869: $1f
	ei                                               ; $686a: $fb
	rlca                                             ; $686b: $07
	ld l, [hl]                                       ; $686c: $6e
	ld [bc], a                                       ; $686d: $02
	sbc h                                            ; $686e: $9c
	rst JumpTable                                          ; $686f: $c7
	add b                                            ; $6870: $80
	add c                                            ; $6871: $81
	call c, $8780                                    ; $6872: $dc $80 $87
	ld b, b                                          ; $6875: $40
	add b                                            ; $6876: $80
	ld h, b                                          ; $6877: $60
	ret nz                                           ; $6878: $c0

	ldh a, [$c0]                                     ; $6879: $f0 $c0
	ld a, b                                          ; $687b: $78
	ret nz                                           ; $687c: $c0

	ld a, b                                          ; $687d: $78
	and b                                            ; $687e: $a0
	db $fc                                           ; $687f: $fc
	and b                                            ; $6880: $a0
	db $fc                                           ; $6881: $fc
	sub b                                            ; $6882: $90
	ld a, h                                          ; $6883: $7c
	ret nc                                           ; $6884: $d0

	db $fc                                           ; $6885: $fc
	ld b, b                                          ; $6886: $40
	cp [hl]                                          ; $6887: $be
	ld h, b                                          ; $6888: $60
	cp $20                                           ; $6889: $fe $20
	sbc $30                                          ; $688b: $de $30
	ld [hl], a                                       ; $688d: $77
	inc e                                            ; $688e: $1c
	ld h, a                                          ; $688f: $67
	sbc h                                            ; $6890: $9c
	sbc l                                            ; $6891: $9d
	nop                                              ; $6892: $00
	ret nz                                           ; $6893: $c0

	ld [hl], a                                       ; $6894: $77
	sbc h                                            ; $6895: $9c
	sbc [hl]                                         ; $6896: $9e
	ld b, b                                          ; $6897: $40
	ld [hl], e                                       ; $6898: $73
	sbc d                                            ; $6899: $9a
	ld a, a                                          ; $689a: $7f

Call_063_689b:
	cp $7f                                           ; $689b: $fe $7f
	pop de                                           ; $689d: $d1
	sbc c                                            ; $689e: $99
	ldh [rSVBK], a                                   ; $689f: $e0 $70
	ldh [$30], a                                     ; $68a1: $e0 $30
	db $10                                           ; $68a3: $10
	ldh a, [rPCM34]                                  ; $68a4: $f0 $77
	cp $7f                                           ; $68a6: $fe $7f
	inc b                                            ; $68a8: $04
	sub h                                            ; $68a9: $94
	adc b                                            ; $68aa: $88
	ld a, b                                          ; $68ab: $78
	adc b                                            ; $68ac: $88
	ld a, b                                          ; $68ad: $78
	add b                                            ; $68ae: $80
	ld a, b                                          ; $68af: $78
	call nz, $c43c                                   ; $68b0: $c4 $3c $c4
	inc a                                            ; $68b3: $3c
	ret nz                                           ; $68b4: $c0

	ld a, e                                          ; $68b5: $7b
	cp $95                                           ; $68b6: $fe $95
	ldh [c], a                                       ; $68b8: $e2
	ld e, $e2                                        ; $68b9: $1e $e2
	ld e, $e0                                        ; $68bb: $1e $e0
	ld e, $e1                                        ; $68bd: $1e $e1
	rra                                              ; $68bf: $1f
	pop af                                           ; $68c0: $f1
	rrca                                             ; $68c1: $0f
	dec e                                            ; $68c2: $1d
	nop                                              ; $68c3: $00
	sbc $99                                          ; $68c4: $de $99
	sbc h                                            ; $68c6: $9c
	ld de, $8888                                     ; $68c7: $11 $88 $88
	ld [hl], e                                       ; $68ca: $73
	ei                                               ; $68cb: $fb
	sbc [hl]                                         ; $68cc: $9e
	ld de, $fb63                                     ; $68cd: $11 $63 $fb
	sbc [hl]                                         ; $68d0: $9e
	nop                                              ; $68d1: $00
	ld [hl], a                                       ; $68d2: $77
	ei                                               ; $68d3: $fb
	sbc [hl]                                         ; $68d4: $9e
	ld b, h                                          ; $68d5: $44
	ld a, e                                          ; $68d6: $7b
	db $eb                                           ; $68d7: $eb
	rst SubAFromDE                                          ; $68d8: $df
	ld de, $fc7b                                     ; $68d9: $11 $7b $fc
	sbc l                                            ; $68dc: $9d
	sbc c                                            ; $68dd: $99
	xor d                                            ; $68de: $aa
	xor e                                            ; $68df: $ab
	ld bc, $3480                                     ; $68e0: $01 $80 $34
	rst AddAOntoHL                                          ; $68e3: $ef
	inc h                                            ; $68e4: $24
	rst $38                                          ; $68e5: $ff
	inc h                                            ; $68e6: $24
	rst $38                                          ; $68e7: $ff
	sub [hl]                                         ; $68e8: $96
	rst $38                                          ; $68e9: $ff
	sub [hl]                                         ; $68ea: $96
	db $fd                                           ; $68eb: $fd
	rst GetHLinHL                                          ; $68ec: $cf
	db $fd                                           ; $68ed: $fd
	dec l                                            ; $68ee: $2d
	ld a, $17                                        ; $68ef: $3e $17
	ld a, [de]                                       ; $68f1: $1a
	rra                                              ; $68f2: $1f
	ld d, $1e                                        ; $68f3: $16 $1e
	rla                                              ; $68f5: $17
	rla                                              ; $68f6: $17
	dec de                                           ; $68f7: $1b
	rra                                              ; $68f8: $1f
	add hl, de                                       ; $68f9: $19
	dec d                                            ; $68fa: $15
	rra                                              ; $68fb: $1f
	inc de                                           ; $68fc: $13
	rra                                              ; $68fd: $1f
	ld [de], a                                       ; $68fe: $12
	rra                                              ; $68ff: $1f
	ld a, [de]                                       ; $6900: $1a
	sbc l                                            ; $6901: $9d
	rla                                              ; $6902: $17
	jr jr_063_6980                                   ; $6903: $18 $7b

	cp $9d                                           ; $6905: $fe $9d
	ld a, [de]                                       ; $6907: $1a
	dec d                                            ; $6908: $15
	ld [hl], a                                       ; $6909: $77
	cp $80                                           ; $690a: $fe $80
	ld a, [hl+]                                      ; $690c: $2a
	dec [hl]                                         ; $690d: $35
	ld l, $31                                        ; $690e: $2e $31
	ld l, $31                                        ; $6910: $2e $31
	ld a, [hl-]                                      ; $6912: $3a
	dec h                                            ; $6913: $25
	dec sp                                           ; $6914: $3b
	dec h                                            ; $6915: $25
	add hl, sp                                       ; $6916: $39
	daa                                              ; $6917: $27
	ld d, d                                          ; $6918: $52
	ld l, a                                          ; $6919: $6f
	ld d, e                                          ; $691a: $53
	ld l, [hl]                                       ; $691b: $6e
	ld d, l                                          ; $691c: $55
	ld l, [hl]                                       ; $691d: $6e
	ld b, a                                          ; $691e: $47
	ld a, h                                          ; $691f: $7c
	ld c, e                                          ; $6920: $4b
	ld a, h                                          ; $6921: $7c
	ld b, l                                          ; $6922: $45
	rst $38                                          ; $6923: $ff
	db $ed                                           ; $6924: $ed
	cp a                                             ; $6925: $bf
	rst AddAOntoHL                                          ; $6926: $ef
	cp e                                             ; $6927: $bb
	rst AddAOntoHL                                          ; $6928: $ef
	cp e                                             ; $6929: $bb
	rst $38                                          ; $692a: $ff
	add b                                            ; $692b: $80
	sbc l                                            ; $692c: $9d
	rst $38                                          ; $692d: $ff
	cp b                                             ; $692e: $b8
	rst $38                                          ; $692f: $ff
	ret z                                            ; $6930: $c8

	rst $38                                          ; $6931: $ff
	inc e                                            ; $6932: $1c
	and a                                            ; $6933: $a7
	ld h, d                                          ; $6934: $62
	rst $38                                          ; $6935: $ff
	cp $7d                                           ; $6936: $fe $7d
	ld d, [hl]                                       ; $6938: $56
	ld [de], a                                       ; $6939: $12
	ld a, [de]                                       ; $693a: $1a
	cp [hl]                                          ; $693b: $be
	inc c                                            ; $693c: $0c
	sbc h                                            ; $693d: $9c
	add b                                            ; $693e: $80
	xor d                                            ; $693f: $aa
	add b                                            ; $6940: $80
	call nc, $c080                                   ; $6941: $d4 $80 $c0
	ret nz                                           ; $6944: $c0

	ldh [$c0], a                                     ; $6945: $e0 $c0
	ldh a, [$e0]                                     ; $6947: $f0 $e0
	cp b                                             ; $6949: $b8
	ldh a, [$80]                                     ; $694a: $f0 $80
	cp h                                             ; $694c: $bc
	ld hl, sp-$52                                    ; $694d: $f8 $ae
	db $fc                                           ; $694f: $fc
	xor e                                            ; $6950: $ab
	cp $ea                                           ; $6951: $fe $ea
	rst $38                                          ; $6953: $ff
	jp nz, $caeb                                     ; $6954: $c2 $eb $ca

	db $e3                                           ; $6957: $e3
	jp nc, $c247                                     ; $6958: $d2 $47 $c2

	ld d, a                                          ; $695b: $57
	call $e557                                       ; $695c: $cd $57 $e5
	ld c, a                                          ; $695f: $4f
	adc l                                            ; $6960: $8d
	xor a                                            ; $6961: $af
	adc d                                            ; $6962: $8a
	cp [hl]                                          ; $6963: $be
	call z, $ce7f                                    ; $6964: $cc $7f $ce
	ld a, e                                          ; $6967: $7b
	xor $3b                                          ; $6968: $ee $3b
	rst $38                                          ; $696a: $ff
	sub a                                            ; $696b: $97
	ld sp, $11ff                                     ; $696c: $31 $ff $11
	rst $38                                          ; $696f: $ff
	sub b                                            ; $6970: $90
	rst $38                                          ; $6971: $ff
	ld [$baff], sp                                   ; $6972: $08 $ff $ba
	rst $38                                          ; $6975: $ff
	sbc a                                            ; $6976: $9f
	rlca                                             ; $6977: $07
	jr nz, jr_063_69ea                               ; $6978: $20 $70

	ld hl, sp-$10                                    ; $697a: $f8 $f0
	add c                                            ; $697c: $81
	ld b, b                                          ; $697d: $40
	ld h, b                                          ; $697e: $60
	nop                                              ; $697f: $00

jr_063_6980:
	pop de                                           ; $6980: $d1
	and $e2                                          ; $6981: $e6 $e2
	or a                                             ; $6983: $b7
	push af                                          ; $6984: $f5
	sbc e                                            ; $6985: $9b
	ld hl, sp-$71                                    ; $6986: $f8 $8f
	cp $f7                                           ; $6988: $fe $f7
	rst $38                                          ; $698a: $ff
	adc l                                            ; $698b: $8d
	rst $38                                          ; $698c: $ff
	inc bc                                           ; $698d: $03
	rst $38                                          ; $698e: $ff
	ld a, b                                          ; $698f: $78
	call $ffc6                                       ; $6990: $cd $c6 $ff
	cp a                                             ; $6993: $bf
	cp e                                             ; $6994: $bb
	dec l                                            ; $6995: $2d
	daa                                              ; $6996: $27
	inc [hl]                                         ; $6997: $34
	ld a, a                                          ; $6998: $7f
	jr jr_063_69da                                   ; $6999: $18 $3f

	cp l                                             ; $699b: $bd
	ld d, a                                          ; $699c: $57
	cpl                                              ; $699d: $2f
	rrca                                             ; $699e: $0f
	ld c, $94                                        ; $699f: $0e $94
	ld bc, $031d                                     ; $69a1: $01 $1d $03
	ccf                                              ; $69a4: $3f
	rlca                                             ; $69a5: $07
	ld l, a                                          ; $69a6: $6f
	rra                                              ; $69a7: $1f
	cp a                                             ; $69a8: $bf
	ld a, a                                          ; $69a9: $7f
	rst $38                                          ; $69aa: $ff
	rst GetHLinHL                                          ; $69ab: $cf
	ld a, e                                          ; $69ac: $7b
	sbc $bf                                          ; $69ad: $de $bf
	ld a, a                                          ; $69af: $7f
	rra                                              ; $69b0: $1f
	sbc l                                            ; $69b1: $9d
	ld bc, $730f                                     ; $69b2: $01 $0f $73
	cp $7f                                           ; $69b5: $fe $7f
	ld hl, sp-$80                                    ; $69b7: $f8 $80
	ld a, $03                                        ; $69b9: $3e $03
	sub l                                            ; $69bb: $95
	ld l, [hl]                                       ; $69bc: $6e
	ld b, e                                          ; $69bd: $43
	cp $22                                           ; $69be: $fe $22
	rst $38                                          ; $69c0: $ff
	and d                                            ; $69c1: $a2
	rst $38                                          ; $69c2: $ff
	pop af                                           ; $69c3: $f1
	ld a, a                                          ; $69c4: $7f
	reti                                             ; $69c5: $d9


	rst $38                                          ; $69c6: $ff
	db $ed                                           ; $69c7: $ed
	ld e, a                                          ; $69c8: $5f
	rst $38                                          ; $69c9: $ff
	ld d, e                                          ; $69ca: $53
	rst SubAFromDE                                          ; $69cb: $df
	ld [hl], l                                       ; $69cc: $75
	rst $38                                          ; $69cd: $ff
	xor c                                            ; $69ce: $a9
	rst $38                                          ; $69cf: $ff
	add hl, hl                                       ; $69d0: $29
	db $fd                                           ; $69d1: $fd
	dec hl                                           ; $69d2: $2b
	rst $38                                          ; $69d3: $ff
	inc bc                                           ; $69d4: $03
	push af                                          ; $69d5: $f5
	rrca                                             ; $69d6: $0f
	db $fd                                           ; $69d7: $fd
	add h                                            ; $69d8: $84
	ccf                                              ; $69d9: $3f

jr_063_69da:
	xor h                                            ; $69da: $ac
	ld a, a                                          ; $69db: $7f
	ld h, h                                          ; $69dc: $64
	rst $38                                          ; $69dd: $ff
	and $ff                                          ; $69de: $e6 $ff
	add $ff                                          ; $69e0: $c6 $ff
	xor $d7                                          ; $69e2: $ee $d7
	xor $d7                                          ; $69e4: $ee $d7
	xor [hl]                                         ; $69e6: $ae
	rst SubAFromHL                                          ; $69e7: $d7
	or [hl]                                          ; $69e8: $b6
	rst GetHLinHL                                          ; $69e9: $cf

jr_063_69ea:
	jp c, $dbaf                                      ; $69ea: $da $af $db

	xor [hl]                                         ; $69ed: $ae
	db $eb                                           ; $69ee: $eb
	sbc [hl]                                         ; $69ef: $9e
	ld [hl], d                                       ; $69f0: $72
	sbc [hl]                                         ; $69f1: $9e
	or d                                             ; $69f2: $b2
	ld e, [hl]                                       ; $69f3: $5e
	ld l, a                                          ; $69f4: $6f
	cp $9d                                           ; $69f5: $fe $9d
	ld [hl], $de                                     ; $69f7: $36 $de
	ld c, e                                          ; $69f9: $4b
	jr nz, jr_063_6a7b                               ; $69fa: $20 $7f

	ld h, b                                          ; $69fc: $60
	sbc b                                            ; $69fd: $98
	inc e                                            ; $69fe: $1c
	or a                                             ; $69ff: $b7
	ld [hl], d                                       ; $6a00: $72
	rst $38                                          ; $6a01: $ff
	cp $56                                           ; $6a02: $fe $56
	ld e, d                                          ; $6a04: $5a
	ld h, a                                          ; $6a05: $67
	jr nz, jr_063_6a53                               ; $6a06: $20 $4b

	ld h, b                                          ; $6a08: $60
	ld a, a                                          ; $6a09: $7f
	ldh [$99], a                                     ; $6a0a: $e0 $99
	ld a, b                                          ; $6a0c: $78
	db $ed                                           ; $6a0d: $ed
	and $bf                                          ; $6a0e: $e6 $bf
	cp a                                             ; $6a10: $bf
	cpl                                              ; $6a11: $2f
	ld h, e                                          ; $6a12: $63
	ld h, b                                          ; $6a13: $60
	dec sp                                           ; $6a14: $3b
	add b                                            ; $6a15: $80
	sbc h                                            ; $6a16: $9c
	add hl, hl                                       ; $6a17: $29
	rst $38                                          ; $6a18: $ff
	xor c                                            ; $6a19: $a9
	ld e, a                                          ; $6a1a: $5f
	add b                                            ; $6a1b: $80
	ld h, e                                          ; $6a1c: $63
	and b                                            ; $6a1d: $a0
	sbc h                                            ; $6a1e: $9c
	sbc c                                            ; $6a1f: $99
	rst $38                                          ; $6a20: $ff
	adc h                                            ; $6a21: $8c
	ld a, e                                          ; $6a22: $7b
	sbc [hl]                                         ; $6a23: $9e
	sbc [hl]                                         ; $6a24: $9e
	ret nz                                           ; $6a25: $c0

	halt                                             ; $6a26: $76
	cp $98                                           ; $6a27: $fe $98
	rst $38                                          ; $6a29: $ff
	inc a                                            ; $6a2a: $3c
	or $f6                                           ; $6a2b: $f6 $f6
	cp $3c                                           ; $6a2d: $fe $3c
	cp h                                             ; $6a2f: $bc
	ld c, a                                          ; $6a30: $4f
	and b                                            ; $6a31: $a0
	sbc d                                            ; $6a32: $9a
	add a                                            ; $6a33: $87
	rst $38                                          ; $6a34: $ff
	pop af                                           ; $6a35: $f1
	rst $38                                          ; $6a36: $ff
	inc c                                            ; $6a37: $0c
	ld [hl], e                                       ; $6a38: $73
	sbc [hl]                                         ; $6a39: $9e
	ld a, a                                          ; $6a3a: $7f
	cp $9a                                           ; $6a3b: $fe $9a
	ld a, $ef                                        ; $6a3d: $3e $ef
	rst AddAOntoHL                                          ; $6a3f: $ef
	ld a, a                                          ; $6a40: $7f
	inc a                                            ; $6a41: $3c
	dec de                                           ; $6a42: $1b
	and b                                            ; $6a43: $a0
	ld a, a                                          ; $6a44: $7f
	jr nz, @-$60                                     ; $6a45: $20 $9e

	xor e                                            ; $6a47: $ab
	inc de                                           ; $6a48: $13
	and b                                            ; $6a49: $a0
	sbc h                                            ; $6a4a: $9c

jr_063_6a4b:
	jr c, jr_063_6a4b                                ; $6a4b: $38 $fe

	jp nz, $a013                                     ; $6a4d: $c2 $13 $a0

	sbc d                                            ; $6a50: $9a
	inc e                                            ; $6a51: $1c
	rst $38                                          ; $6a52: $ff

jr_063_6a53:
	pop bc                                           ; $6a53: $c1
	ld a, a                                          ; $6a54: $7f
	ld a, $6f                                        ; $6a55: $3e $6f
	and b                                            ; $6a57: $a0
	rst $38                                          ; $6a58: $ff
	sbc h                                            ; $6a59: $9c
	call z, $6048                                    ; $6a5a: $cc $48 $60
	cp l                                             ; $6a5d: $bd
	jr nc, jr_063_6a60                               ; $6a5e: $30 $00

jr_063_6a60:
	nop                                              ; $6a60: $00
	ld [bc], a                                       ; $6a61: $02
	sub c                                            ; $6a62: $91
	ld bc, $87cb                                     ; $6a63: $01 $cb $87
	ld a, a                                          ; $6a66: $7f
	ld hl, sp+$38                                    ; $6a67: $f8 $38
	call z, $84fc                                    ; $6a69: $cc $fc $84
	db $ec                                           ; $6a6c: $ec
	add b                                            ; $6a6d: $80
	ld b, [hl]                                       ; $6a6e: $46
	add b                                            ; $6a6f: $80
	ldh [c], a                                       ; $6a70: $e2
	cp l                                             ; $6a71: $bd
	ldh a, [c]                                       ; $6a72: $f2
	jr c, jr_063_6a75                                ; $6a73: $38 $00

jr_063_6a75:
	call z, Call_063_489c                            ; $6a75: $cc $9c $48
	ld a, b                                          ; $6a78: $78
	jr nc, jr_063_6a86                               ; $6a79: $30 $0b

jr_063_6a7b:
	ldh [$df], a                                     ; $6a7b: $e0 $df
	ld a, b                                          ; $6a7d: $78
	ld [hl], e                                       ; $6a7e: $73
	rst SubAFromDE                                          ; $6a7f: $df
	daa                                              ; $6a80: $27
	ldh [$9e], a                                     ; $6a81: $e0 $9e
	db $fc                                           ; $6a83: $fc
	db $dd                                           ; $6a84: $dd
	ld a, b                                          ; $6a85: $78

jr_063_6a86:
	ld a, e                                          ; $6a86: $7b
	sbc $37                                          ; $6a87: $de $37
	ldh [$b7], a                                     ; $6a89: $e0 $b7
	ld bc, $3480                                     ; $6a8b: $01 $80 $34
	rst AddAOntoHL                                          ; $6a8e: $ef
	inc h                                            ; $6a8f: $24
	rst $38                                          ; $6a90: $ff
	inc h                                            ; $6a91: $24
	rst $38                                          ; $6a92: $ff
	sub [hl]                                         ; $6a93: $96
	rst $38                                          ; $6a94: $ff
	sub [hl]                                         ; $6a95: $96
	db $fd                                           ; $6a96: $fd
	rst GetHLinHL                                          ; $6a97: $cf
	db $fd                                           ; $6a98: $fd
	dec l                                            ; $6a99: $2d
	ld a, $17                                        ; $6a9a: $3e $17
	ld a, [de]                                       ; $6a9c: $1a
	rra                                              ; $6a9d: $1f
	ld d, $1e                                        ; $6a9e: $16 $1e
	rla                                              ; $6aa0: $17
	rla                                              ; $6aa1: $17
	dec de                                           ; $6aa2: $1b
	rra                                              ; $6aa3: $1f
	add hl, de                                       ; $6aa4: $19
	dec d                                            ; $6aa5: $15
	rra                                              ; $6aa6: $1f
	inc de                                           ; $6aa7: $13
	rra                                              ; $6aa8: $1f
	ld [de], a                                       ; $6aa9: $12
	rra                                              ; $6aaa: $1f
	ld a, [de]                                       ; $6aab: $1a
	sbc l                                            ; $6aac: $9d
	rla                                              ; $6aad: $17
	jr @+$7d                                         ; $6aae: $18 $7b

	cp $9d                                           ; $6ab0: $fe $9d
	ld a, [de]                                       ; $6ab2: $1a
	dec d                                            ; $6ab3: $15
	ld [hl], a                                       ; $6ab4: $77
	cp $80                                           ; $6ab5: $fe $80
	ld a, [hl+]                                      ; $6ab7: $2a
	dec [hl]                                         ; $6ab8: $35
	ld l, $31                                        ; $6ab9: $2e $31
	ld l, $31                                        ; $6abb: $2e $31
	ld a, [hl-]                                      ; $6abd: $3a
	dec h                                            ; $6abe: $25
	dec sp                                           ; $6abf: $3b
	dec h                                            ; $6ac0: $25
	add hl, sp                                       ; $6ac1: $39
	daa                                              ; $6ac2: $27
	ld d, d                                          ; $6ac3: $52
	ld l, a                                          ; $6ac4: $6f
	ld d, e                                          ; $6ac5: $53
	ld l, [hl]                                       ; $6ac6: $6e
	ld d, l                                          ; $6ac7: $55
	ld l, [hl]                                       ; $6ac8: $6e
	ld b, a                                          ; $6ac9: $47
	ld a, h                                          ; $6aca: $7c
	ld c, e                                          ; $6acb: $4b
	ld a, h                                          ; $6acc: $7c
	ld b, l                                          ; $6acd: $45
	rst $38                                          ; $6ace: $ff
	db $ed                                           ; $6acf: $ed
	cp a                                             ; $6ad0: $bf
	rst AddAOntoHL                                          ; $6ad1: $ef
	rst $38                                          ; $6ad2: $ff
	rst AddAOntoHL                                          ; $6ad3: $ef
	cp e                                             ; $6ad4: $bb
	rst $38                                          ; $6ad5: $ff
	adc [hl]                                         ; $6ad6: $8e
	sbc c                                            ; $6ad7: $99
	rst $38                                          ; $6ad8: $ff
	adc b                                            ; $6ad9: $88
	rst $38                                          ; $6ada: $ff
	cp h                                             ; $6adb: $bc
	rst FarCall                                          ; $6adc: $f7
	ld h, d                                          ; $6add: $62
	adc a                                            ; $6ade: $8f
	and [hl]                                         ; $6adf: $a6
	cp a                                             ; $6ae0: $bf
	ld e, $1d                                        ; $6ae1: $1e $1d
	ld d, $12                                        ; $6ae3: $16 $12
	ld a, [de]                                       ; $6ae5: $1a
	sbc h                                            ; $6ae6: $9c
	inc c                                            ; $6ae7: $0c
	db $dd                                           ; $6ae8: $dd
	add b                                            ; $6ae9: $80
	add b                                            ; $6aea: $80
	ret nz                                           ; $6aeb: $c0

	add b                                            ; $6aec: $80
	ret nz                                           ; $6aed: $c0

	ret nz                                           ; $6aee: $c0

	ldh [$c0], a                                     ; $6aef: $e0 $c0
	ldh a, [$e0]                                     ; $6af1: $f0 $e0
	cp b                                             ; $6af3: $b8
	ldh a, [$bc]                                     ; $6af4: $f0 $bc
	ld hl, sp-$52                                    ; $6af6: $f8 $ae
	db $fc                                           ; $6af8: $fc
	xor e                                            ; $6af9: $ab
	cp $ea                                           ; $6afa: $fe $ea
	rst $38                                          ; $6afc: $ff
	jp nz, $caeb                                     ; $6afd: $c2 $eb $ca

	db $e3                                           ; $6b00: $e3
	jp nc, $c247                                     ; $6b01: $d2 $47 $c2

	ld d, a                                          ; $6b04: $57
	call $e557                                       ; $6b05: $cd $57 $e5
	ld c, a                                          ; $6b08: $4f
	adc l                                            ; $6b09: $8d
	adc l                                            ; $6b0a: $8d
	xor a                                            ; $6b0b: $af
	adc d                                            ; $6b0c: $8a
	cp [hl]                                          ; $6b0d: $be
	call z, $ce7f                                    ; $6b0e: $cc $7f $ce
	ld a, e                                          ; $6b11: $7b
	xor $3b                                          ; $6b12: $ee $3b
	rst $38                                          ; $6b14: $ff
	ld sp, $11ff                                     ; $6b15: $31 $ff $11
	rst $38                                          ; $6b18: $ff
	sub b                                            ; $6b19: $90
	rst $38                                          ; $6b1a: $ff
	ld [$baff], sp                                   ; $6b1b: $08 $ff $ba
	rst $38                                          ; $6b1e: $ff
	sbc a                                            ; $6b1f: $9f
	rlca                                             ; $6b20: $07
	jr nz, jr_063_6b93                               ; $6b21: $20 $70

	ld hl, sp-$10                                    ; $6b23: $f8 $f0
	add c                                            ; $6b25: $81
	ld b, b                                          ; $6b26: $40
	ld h, b                                          ; $6b27: $60
	nop                                              ; $6b28: $00
	pop de                                           ; $6b29: $d1
	and $e2                                          ; $6b2a: $e6 $e2
	or a                                             ; $6b2c: $b7
	push af                                          ; $6b2d: $f5
	ei                                               ; $6b2e: $fb
	ld hl, sp-$71                                    ; $6b2f: $f8 $8f
	cp $87                                           ; $6b31: $fe $87
	rst $38                                          ; $6b33: $ff
	add c                                            ; $6b34: $81
	rst $38                                          ; $6b35: $ff
	ld a, b                                          ; $6b36: $78
	db $ed                                           ; $6b37: $ed
	add $9f                                          ; $6b38: $c6 $9f
	rst GetHLinHL                                          ; $6b3a: $cf
	rst $38                                          ; $6b3b: $ff
	ld a, $bb                                        ; $6b3c: $3e $bb
	inc l                                            ; $6b3e: $2c

jr_063_6b3f:
	daa                                              ; $6b3f: $27
	inc [hl]                                         ; $6b40: $34
	ccf                                              ; $6b41: $3f
	jr jr_063_6b47                                   ; $6b42: $18 $03

	cp l                                             ; $6b44: $bd
	rlca                                             ; $6b45: $07
	rlca                                             ; $6b46: $07

jr_063_6b47:
	rrca                                             ; $6b47: $0f
	ld c, $91                                        ; $6b48: $0e $91
	ld bc, $031d                                     ; $6b4a: $01 $1d $03
	ccf                                              ; $6b4d: $3f
	rlca                                             ; $6b4e: $07
	ld l, a                                          ; $6b4f: $6f
	rra                                              ; $6b50: $1f
	cp a                                             ; $6b51: $bf
	ld a, a                                          ; $6b52: $7f
	rst $38                                          ; $6b53: $ff
	rst GetHLinHL                                          ; $6b54: $cf
	rst $38                                          ; $6b55: $ff
	inc bc                                           ; $6b56: $03
	rst $38                                          ; $6b57: $ff
	cp a                                             ; $6b58: $bf
	ld a, a                                          ; $6b59: $7f
	rra                                              ; $6b5a: $1f
	sbc l                                            ; $6b5b: $9d
	ld bc, $730f                                     ; $6b5c: $01 $0f $73
	cp $7f                                           ; $6b5f: $fe $7f
	ld hl, sp-$80                                    ; $6b61: $f8 $80
	ld a, $03                                        ; $6b63: $3e $03
	sub l                                            ; $6b65: $95
	ld l, [hl]                                       ; $6b66: $6e
	ld b, e                                          ; $6b67: $43
	cp $22                                           ; $6b68: $fe $22
	rst $38                                          ; $6b6a: $ff
	and d                                            ; $6b6b: $a2
	rst $38                                          ; $6b6c: $ff
	pop af                                           ; $6b6d: $f1
	ld a, a                                          ; $6b6e: $7f
	reti                                             ; $6b6f: $d9


	rst $38                                          ; $6b70: $ff
	db $ed                                           ; $6b71: $ed
	ld e, a                                          ; $6b72: $5f
	rst $38                                          ; $6b73: $ff
	ld d, e                                          ; $6b74: $53
	rst SubAFromDE                                          ; $6b75: $df
	push af                                          ; $6b76: $f5
	rst $38                                          ; $6b77: $ff
	add hl, hl                                       ; $6b78: $29
	rst $38                                          ; $6b79: $ff
	add hl, hl                                       ; $6b7a: $29
	db $fd                                           ; $6b7b: $fd
	dec hl                                           ; $6b7c: $2b
	rst $38                                          ; $6b7d: $ff
	inc bc                                           ; $6b7e: $03
	push af                                          ; $6b7f: $f5
	rrca                                             ; $6b80: $0f
	db $fd                                           ; $6b81: $fd
	add h                                            ; $6b82: $84
	ccf                                              ; $6b83: $3f
	xor h                                            ; $6b84: $ac
	ld a, a                                          ; $6b85: $7f
	ld h, h                                          ; $6b86: $64
	rst $38                                          ; $6b87: $ff
	and $ff                                          ; $6b88: $e6 $ff
	add $ff                                          ; $6b8a: $c6 $ff
	xor $d7                                          ; $6b8c: $ee $d7
	xor $d7                                          ; $6b8e: $ee $d7
	xor [hl]                                         ; $6b90: $ae
	rst SubAFromHL                                          ; $6b91: $d7
	or [hl]                                          ; $6b92: $b6

jr_063_6b93:
	rst GetHLinHL                                          ; $6b93: $cf
	jp c, $dbaf                                      ; $6b94: $da $af $db

	xor [hl]                                         ; $6b97: $ae

jr_063_6b98:
	db $eb                                           ; $6b98: $eb
	sbc [hl]                                         ; $6b99: $9e
	ld [hl], d                                       ; $6b9a: $72
	sbc [hl]                                         ; $6b9b: $9e
	or d                                             ; $6b9c: $b2
	ld e, [hl]                                       ; $6b9d: $5e
	ld l, a                                          ; $6b9e: $6f
	cp $9d                                           ; $6b9f: $fe $9d
	ld [hl], $de                                     ; $6ba1: $36 $de
	ld d, e                                          ; $6ba3: $53
	jr nz, jr_063_6b3f                               ; $6ba4: $20 $99

	add b                                            ; $6ba6: $80
	rst SubAFromDE                                          ; $6ba7: $df
	inc a                                            ; $6ba8: $3c
	rst FarCall                                          ; $6ba9: $f7
	ld h, d                                          ; $6baa: $62
	add a                                            ; $6bab: $87
	ld a, e                                          ; $6bac: $7b

jr_063_6bad:
	ld e, $9e                                        ; $6bad: $1e $9e
	ld d, $63                                        ; $6baf: $16 $63
	jr nz, jr_063_6c06                               ; $6bb1: $20 $53

	ld h, b                                          ; $6bb3: $60
	ld a, a                                          ; $6bb4: $7f
	ld b, d                                          ; $6bb5: $42
	sub a                                            ; $6bb6: $97
	ld a, b                                          ; $6bb7: $78
	xor l                                            ; $6bb8: $ad
	add $df                                          ; $6bb9: $c6 $df
	adc a                                            ; $6bbb: $8f
	cp e                                             ; $6bbc: $bb
	ld a, $2f                                        ; $6bbd: $3e $2f
	ld h, e                                          ; $6bbf: $63
	ld h, b                                          ; $6bc0: $60
	ld b, e                                          ; $6bc1: $43
	add b                                            ; $6bc2: $80
	sbc h                                            ; $6bc3: $9c
	ld [hl], l                                       ; $6bc4: $75
	rst $38                                          ; $6bc5: $ff
	xor c                                            ; $6bc6: $a9
	ld d, a                                          ; $6bc7: $57
	add b                                            ; $6bc8: $80
	ld [hl], e                                       ; $6bc9: $73
	and b                                            ; $6bca: $a0
	sbc d                                            ; $6bcb: $9a
	cp e                                             ; $6bcc: $bb
	rst AddAOntoHL                                          ; $6bcd: $ef
	cp a                                             ; $6bce: $bf
	rst $38                                          ; $6bcf: $ff
	reti                                             ; $6bd0: $d9


	ld [hl], a                                       ; $6bd1: $77
	and b                                            ; $6bd2: $a0
	ld [hl], a                                       ; $6bd3: $77
	nop                                              ; $6bd4: $00
	ld a, e                                          ; $6bd5: $7b
	cp $99                                           ; $6bd6: $fe $99
	inc a                                            ; $6bd8: $3c
	or $f6                                           ; $6bd9: $f6 $f6
	cp [hl]                                          ; $6bdb: $be
	inc a                                            ; $6bdc: $3c
	sbc h                                            ; $6bdd: $9c
	ld e, a                                          ; $6bde: $5f
	and b                                            ; $6bdf: $a0
	sbc h                                            ; $6be0: $9c
	sbc e                                            ; $6be1: $9b
	ld hl, sp-$01                                    ; $6be2: $f8 $ff
	ld l, e                                          ; $6be4: $6b
	and b                                            ; $6be5: $a0
	cp [hl]                                          ; $6be6: $be
	rst $38                                          ; $6be7: $ff
	rst $38                                          ; $6be8: $ff
	rst $38                                          ; $6be9: $ff
	sbc c                                            ; $6bea: $99
	ld a, $6f                                        ; $6beb: $3e $6f
	ld l, a                                          ; $6bed: $6f
	ld a, a                                          ; $6bee: $7f
	ld a, $1f                                        ; $6bef: $3e $1f
	cp [hl]                                          ; $6bf1: $be
	inc bc                                           ; $6bf2: $03
	rlca                                             ; $6bf3: $07
	sub l                                            ; $6bf4: $95
	ccf                                              ; $6bf5: $3f
	and b                                            ; $6bf6: $a0
	ld [hl], a                                       ; $6bf7: $77
	jr nz, jr_063_6b98                               ; $6bf8: $20 $9e

	xor e                                            ; $6bfa: $ab
	inc de                                           ; $6bfb: $13
	and b                                            ; $6bfc: $a0
	sbc h                                            ; $6bfd: $9c

jr_063_6bfe:
	jr c, jr_063_6bfe                                ; $6bfe: $38 $fe

	jp nz, $a013                                     ; $6c00: $c2 $13 $a0

	sbc h                                            ; $6c03: $9c
	ld e, $7f                                        ; $6c04: $1e $7f

jr_063_6c06:
	ld b, c                                          ; $6c06: $41
	ld h, a                                          ; $6c07: $67
	and b                                            ; $6c08: $a0
	sbc d                                            ; $6c09: $9a
	add [hl]                                         ; $6c0a: $86
	nop                                              ; $6c0b: $00
	ld c, h                                          ; $6c0c: $4c
	ld b, b                                          ; $6c0d: $40
	nop                                              ; $6c0e: $00
	cp l                                             ; $6c0f: $bd
	jr nc, jr_063_6c12                               ; $6c10: $30 $00

jr_063_6c12:
	nop                                              ; $6c12: $00
	ld [bc], a                                       ; $6c13: $02
	sub c                                            ; $6c14: $91
	ld bc, $87cb                                     ; $6c15: $01 $cb $87
	ld a, a                                          ; $6c18: $7f
	ld hl, sp+$38                                    ; $6c19: $f8 $38
	call z, $84fc                                    ; $6c1b: $cc $fc $84
	db $ec                                           ; $6c1e: $ec
	add b                                            ; $6c1f: $80
	ld b, [hl]                                       ; $6c20: $46
	add b                                            ; $6c21: $80
	ldh [c], a                                       ; $6c22: $e2
	cp l                                             ; $6c23: $bd
	ldh a, [c]                                       ; $6c24: $f2
	jr c, jr_063_6bad                                ; $6c25: $38 $86

	ld c, h                                          ; $6c27: $4c
	sbc h                                            ; $6c28: $9c
	ld c, b                                          ; $6c29: $48
	jr c, jr_063_6c5c                                ; $6c2a: $38 $30

	rra                                              ; $6c2c: $1f
	ldh [rIE], a                                     ; $6c2d: $e0 $ff
	sbc d                                            ; $6c2f: $9a
	adc $4c                                          ; $6c30: $ce $4c
	ld a, h                                          ; $6c32: $7c
	ld a, b                                          ; $6c33: $78
	jr c, @+$75                                      ; $6c34: $38 $73

	rst SubAFromDE                                          ; $6c36: $df
	inc hl                                           ; $6c37: $23
	ldh [$df], a                                     ; $6c38: $e0 $df
	ld a, h                                          ; $6c3a: $7c
	rst SubAFromDE                                          ; $6c3b: $df
	jr c, @+$7d                                      ; $6c3c: $38 $7b

	sbc $37                                          ; $6c3e: $de $37
	ldh [$b2], a                                     ; $6c40: $e0 $b2
	ld bc, $3480                                     ; $6c42: $01 $80 $34
	rst AddAOntoHL                                          ; $6c45: $ef
	inc h                                            ; $6c46: $24
	rst $38                                          ; $6c47: $ff
	inc h                                            ; $6c48: $24
	rst $38                                          ; $6c49: $ff
	sub [hl]                                         ; $6c4a: $96
	rst $38                                          ; $6c4b: $ff
	sub [hl]                                         ; $6c4c: $96
	db $fd                                           ; $6c4d: $fd
	rst GetHLinHL                                          ; $6c4e: $cf
	db $fd                                           ; $6c4f: $fd
	dec l                                            ; $6c50: $2d
	ld a, $17                                        ; $6c51: $3e $17
	ld a, [de]                                       ; $6c53: $1a
	rra                                              ; $6c54: $1f
	ld d, $1e                                        ; $6c55: $16 $1e
	rla                                              ; $6c57: $17
	rla                                              ; $6c58: $17
	dec de                                           ; $6c59: $1b
	rra                                              ; $6c5a: $1f
	add hl, de                                       ; $6c5b: $19

jr_063_6c5c:
	dec d                                            ; $6c5c: $15
	rra                                              ; $6c5d: $1f
	inc de                                           ; $6c5e: $13
	rra                                              ; $6c5f: $1f
	ld [de], a                                       ; $6c60: $12
	rra                                              ; $6c61: $1f
	ld a, [de]                                       ; $6c62: $1a
	sbc l                                            ; $6c63: $9d
	rla                                              ; $6c64: $17
	jr @+$7d                                         ; $6c65: $18 $7b

	cp $9d                                           ; $6c67: $fe $9d
	ld a, [de]                                       ; $6c69: $1a
	dec d                                            ; $6c6a: $15
	ld [hl], a                                       ; $6c6b: $77
	cp $80                                           ; $6c6c: $fe $80
	ld a, [hl+]                                      ; $6c6e: $2a
	dec [hl]                                         ; $6c6f: $35
	ld l, $31                                        ; $6c70: $2e $31
	ld l, $31                                        ; $6c72: $2e $31
	ld a, [hl-]                                      ; $6c74: $3a
	dec h                                            ; $6c75: $25
	dec sp                                           ; $6c76: $3b
	dec h                                            ; $6c77: $25
	add hl, sp                                       ; $6c78: $39
	daa                                              ; $6c79: $27
	ld d, d                                          ; $6c7a: $52
	ld l, a                                          ; $6c7b: $6f
	ld d, e                                          ; $6c7c: $53
	ld l, [hl]                                       ; $6c7d: $6e
	ld d, l                                          ; $6c7e: $55
	ld l, [hl]                                       ; $6c7f: $6e
	ld b, a                                          ; $6c80: $47
	ld a, h                                          ; $6c81: $7c
	ld c, e                                          ; $6c82: $4b
	ld a, h                                          ; $6c83: $7c
	ld b, l                                          ; $6c84: $45
	rst $38                                          ; $6c85: $ff
	db $ed                                           ; $6c86: $ed
	cp a                                             ; $6c87: $bf
	rst AddAOntoHL                                          ; $6c88: $ef
	cp e                                             ; $6c89: $bb
	rst AddAOntoHL                                          ; $6c8a: $ef
	rst $38                                          ; $6c8b: $ff
	rst $38                                          ; $6c8c: $ff
	adc [hl]                                         ; $6c8d: $8e
	sbc c                                            ; $6c8e: $99
	rst $38                                          ; $6c8f: $ff
	adc b                                            ; $6c90: $88
	rst $38                                          ; $6c91: $ff
	cp b                                             ; $6c92: $b8
	rst FarCall                                          ; $6c93: $f7
	ld h, h                                          ; $6c94: $64
	add a                                            ; $6c95: $87
	and d                                            ; $6c96: $a2
	cp a                                             ; $6c97: $bf
	ld e, $1d                                        ; $6c98: $1e $1d
	ld d, $12                                        ; $6c9a: $16 $12
	ld a, [de]                                       ; $6c9c: $1a
	sbc h                                            ; $6c9d: $9c
	inc c                                            ; $6c9e: $0c
	db $dd                                           ; $6c9f: $dd
	add b                                            ; $6ca0: $80
	add b                                            ; $6ca1: $80
	ret nz                                           ; $6ca2: $c0

	add b                                            ; $6ca3: $80
	ret nz                                           ; $6ca4: $c0

	ret nz                                           ; $6ca5: $c0

	ldh [$c0], a                                     ; $6ca6: $e0 $c0
	ldh a, [$e0]                                     ; $6ca8: $f0 $e0
	cp b                                             ; $6caa: $b8
	ldh a, [$bc]                                     ; $6cab: $f0 $bc
	ld hl, sp-$52                                    ; $6cad: $f8 $ae
	db $fc                                           ; $6caf: $fc
	xor e                                            ; $6cb0: $ab
	cp $ea                                           ; $6cb1: $fe $ea
	rst $38                                          ; $6cb3: $ff
	jp nz, $caeb                                     ; $6cb4: $c2 $eb $ca

	db $e3                                           ; $6cb7: $e3
	jp nc, $c247                                     ; $6cb8: $d2 $47 $c2

	ld d, a                                          ; $6cbb: $57
	call $e557                                       ; $6cbc: $cd $57 $e5
	ld c, a                                          ; $6cbf: $4f
	adc l                                            ; $6cc0: $8d
	adc l                                            ; $6cc1: $8d
	xor a                                            ; $6cc2: $af
	adc d                                            ; $6cc3: $8a
	cp [hl]                                          ; $6cc4: $be
	call z, $ce7f                                    ; $6cc5: $cc $7f $ce
	ld a, e                                          ; $6cc8: $7b
	xor $3b                                          ; $6cc9: $ee $3b
	rst $38                                          ; $6ccb: $ff
	ld sp, $11ff                                     ; $6ccc: $31 $ff $11
	rst $38                                          ; $6ccf: $ff
	sub b                                            ; $6cd0: $90
	rst $38                                          ; $6cd1: $ff
	ld [$baff], sp                                   ; $6cd2: $08 $ff $ba
	rst $38                                          ; $6cd5: $ff
	sbc a                                            ; $6cd6: $9f
	rlca                                             ; $6cd7: $07
	jr nz, jr_063_6d4a                               ; $6cd8: $20 $70

	ld hl, sp-$10                                    ; $6cda: $f8 $f0
	add c                                            ; $6cdc: $81
	ld b, b                                          ; $6cdd: $40
	ld h, b                                          ; $6cde: $60
	nop                                              ; $6cdf: $00
	pop de                                           ; $6ce0: $d1
	and $e2                                          ; $6ce1: $e6 $e2
	or a                                             ; $6ce3: $b7
	push af                                          ; $6ce4: $f5
	sbc e                                            ; $6ce5: $9b
	ld hl, sp-$01                                    ; $6ce6: $f8 $ff
	cp $87                                           ; $6ce8: $fe $87
	rst $38                                          ; $6cea: $ff
	add c                                            ; $6ceb: $81
	rst $38                                          ; $6cec: $ff
	ld a, b                                          ; $6ced: $78
	rst AddAOntoHL                                          ; $6cee: $ef
	call z, $c68f                                    ; $6cef: $cc $8f $c6
	rst $38                                          ; $6cf2: $ff
	ccf                                              ; $6cf3: $3f
	cp e                                             ; $6cf4: $bb
	inc l                                            ; $6cf5: $2c
	daa                                              ; $6cf6: $27
	inc [hl]                                         ; $6cf7: $34
	ccf                                              ; $6cf8: $3f
	jr jr_063_6cfe                                   ; $6cf9: $18 $03

jr_063_6cfb:
	cp l                                             ; $6cfb: $bd
	rlca                                             ; $6cfc: $07
	rlca                                             ; $6cfd: $07

jr_063_6cfe:
	rrca                                             ; $6cfe: $0f
	ld c, $91                                        ; $6cff: $0e $91
	ld bc, $031d                                     ; $6d01: $01 $1d $03
	ccf                                              ; $6d04: $3f
	rlca                                             ; $6d05: $07
	ld l, a                                          ; $6d06: $6f
	rra                                              ; $6d07: $1f
	cp a                                             ; $6d08: $bf
	ld a, a                                          ; $6d09: $7f
	rst $38                                          ; $6d0a: $ff
	rst GetHLinHL                                          ; $6d0b: $cf
	rst $38                                          ; $6d0c: $ff
	inc bc                                           ; $6d0d: $03
	rst $38                                          ; $6d0e: $ff
	cp a                                             ; $6d0f: $bf
	ld a, a                                          ; $6d10: $7f
	rra                                              ; $6d11: $1f
	sbc l                                            ; $6d12: $9d
	ld bc, $730f                                     ; $6d13: $01 $0f $73
	cp $7f                                           ; $6d16: $fe $7f
	ld hl, sp-$80                                    ; $6d18: $f8 $80
	ld a, $03                                        ; $6d1a: $3e $03
	sub l                                            ; $6d1c: $95
	ld l, [hl]                                       ; $6d1d: $6e
	ld b, e                                          ; $6d1e: $43
	cp $22                                           ; $6d1f: $fe $22
	rst $38                                          ; $6d21: $ff
	and d                                            ; $6d22: $a2
	rst $38                                          ; $6d23: $ff
	pop af                                           ; $6d24: $f1
	ld a, a                                          ; $6d25: $7f
	reti                                             ; $6d26: $d9


	rst $38                                          ; $6d27: $ff
	db $ed                                           ; $6d28: $ed
	ld e, a                                          ; $6d29: $5f
	rst $38                                          ; $6d2a: $ff
	ld d, e                                          ; $6d2b: $53
	rst SubAFromDE                                          ; $6d2c: $df
	ld [hl], l                                       ; $6d2d: $75
	rst $38                                          ; $6d2e: $ff
	xor c                                            ; $6d2f: $a9
	rst $38                                          ; $6d30: $ff
	add hl, hl                                       ; $6d31: $29
	db $fd                                           ; $6d32: $fd
	dec hl                                           ; $6d33: $2b
	rst $38                                          ; $6d34: $ff
	inc bc                                           ; $6d35: $03
	push af                                          ; $6d36: $f5
	rrca                                             ; $6d37: $0f
	db $fd                                           ; $6d38: $fd
	add h                                            ; $6d39: $84
	ccf                                              ; $6d3a: $3f
	xor h                                            ; $6d3b: $ac
	ld a, a                                          ; $6d3c: $7f
	ld h, h                                          ; $6d3d: $64
	rst $38                                          ; $6d3e: $ff
	and $ff                                          ; $6d3f: $e6 $ff
	add $ff                                          ; $6d41: $c6 $ff
	xor $d7                                          ; $6d43: $ee $d7
	xor $d7                                          ; $6d45: $ee $d7
	xor [hl]                                         ; $6d47: $ae
	rst SubAFromHL                                          ; $6d48: $d7
	or [hl]                                          ; $6d49: $b6

jr_063_6d4a:
	rst GetHLinHL                                          ; $6d4a: $cf
	jp c, $dbaf                                      ; $6d4b: $da $af $db

	xor [hl]                                         ; $6d4e: $ae
	db $eb                                           ; $6d4f: $eb
	sbc [hl]                                         ; $6d50: $9e
	ld [hl], d                                       ; $6d51: $72
	sbc [hl]                                         ; $6d52: $9e
	or d                                             ; $6d53: $b2
	ld e, [hl]                                       ; $6d54: $5e
	ld l, a                                          ; $6d55: $6f
	cp $9d                                           ; $6d56: $fe $9d
	ld [hl], $de                                     ; $6d58: $36 $de
	ld d, e                                          ; $6d5a: $53
	jr nz, jr_063_6cfb                               ; $6d5b: $20 $9e

	add b                                            ; $6d5d: $80
	ld a, e                                          ; $6d5e: $7b
	ld h, b                                          ; $6d5f: $60
	sbc c                                            ; $6d60: $99
	inc a                                            ; $6d61: $3c
	rst FarCall                                          ; $6d62: $f7
	ldh [c], a                                       ; $6d63: $e2
	rst $38                                          ; $6d64: $ff
	ld e, [hl]                                       ; $6d65: $5e
	ld d, $63                                        ; $6d66: $16 $63
	jr nz, jr_063_6dbd                               ; $6d68: $20 $53

	ld h, b                                          ; $6d6a: $60
	cp a                                             ; $6d6b: $bf
	rst $38                                          ; $6d6c: $ff
	rst $38                                          ; $6d6d: $ff
	ld a, a                                          ; $6d6e: $7f
	ld e, h                                          ; $6d6f: $5c
	ld a, a                                          ; $6d70: $7f
	or c                                             ; $6d71: $b1
	sbc l                                            ; $6d72: $9d
	cp a                                             ; $6d73: $bf
	cpl                                              ; $6d74: $2f
	ld h, e                                          ; $6d75: $63
	ld h, b                                          ; $6d76: $60
	dec sp                                           ; $6d77: $3b
	add b                                            ; $6d78: $80
	sbc h                                            ; $6d79: $9c
	add hl, hl                                       ; $6d7a: $29
	rst $38                                          ; $6d7b: $ff
	xor c                                            ; $6d7c: $a9
	ld e, a                                          ; $6d7d: $5f
	add b                                            ; $6d7e: $80
	ld l, e                                          ; $6d7f: $6b
	and b                                            ; $6d80: $a0
	sbc [hl]                                         ; $6d81: $9e
	cp e                                             ; $6d82: $bb
	sbc $ff                                          ; $6d83: $de $ff
	ld l, a                                          ; $6d85: $6f
	and b                                            ; $6d86: $a0
	cp a                                             ; $6d87: $bf
	rst $38                                          ; $6d88: $ff
	rst $38                                          ; $6d89: $ff
	sbc c                                            ; $6d8a: $99
	inc a                                            ; $6d8b: $3c
	or $f6                                           ; $6d8c: $f6 $f6
	cp $3c                                           ; $6d8e: $fe $3c
	sbc h                                            ; $6d90: $9c
	ld d, a                                          ; $6d91: $57
	and b                                            ; $6d92: $a0
	sbc h                                            ; $6d93: $9c
	adc a                                            ; $6d94: $8f
	cp $ff                                           ; $6d95: $fe $ff
	ld l, e                                          ; $6d97: $6b
	and b                                            ; $6d98: $a0
	cp a                                             ; $6d99: $bf
	rst $38                                          ; $6d9a: $ff
	rst $38                                          ; $6d9b: $ff
	sbc c                                            ; $6d9c: $99
	ld a, $6f                                        ; $6d9d: $3e $6f
	ld l, a                                          ; $6d9f: $6f
	ld a, a                                          ; $6da0: $7f
	ld a, $1f                                        ; $6da1: $3e $1f
	cp [hl]                                          ; $6da3: $be
	inc bc                                           ; $6da4: $03
	rlca                                             ; $6da5: $07
	sub l                                            ; $6da6: $95
	scf                                              ; $6da7: $37
	and b                                            ; $6da8: $a0
	ld a, a                                          ; $6da9: $7f
	jr nz, jr_063_6d4a                               ; $6daa: $20 $9e

	xor e                                            ; $6dac: $ab
	inc de                                           ; $6dad: $13
	and b                                            ; $6dae: $a0
	sbc d                                            ; $6daf: $9a
	inc e                                            ; $6db0: $1c
	cp $c0                                           ; $6db1: $fe $c0
	cp $3e                                           ; $6db3: $fe $3e
	dec de                                           ; $6db5: $1b
	and b                                            ; $6db6: $a0
	sbc h                                            ; $6db7: $9c
	ld e, $7f                                        ; $6db8: $1e $7f
	ld b, c                                          ; $6dba: $41
	ld h, a                                          ; $6dbb: $67
	and b                                            ; $6dbc: $a0

jr_063_6dbd:
	sbc [hl]                                         ; $6dbd: $9e
	inc b                                            ; $6dbe: $04
	cp e                                             ; $6dbf: $bb
	ld c, b                                          ; $6dc0: $48
	nop                                              ; $6dc1: $00
	jr nc, jr_063_6dc4                               ; $6dc2: $30 $00

jr_063_6dc4:
	nop                                              ; $6dc4: $00
	ld [bc], a                                       ; $6dc5: $02
	sub c                                            ; $6dc6: $91
	ld bc, $87cb                                     ; $6dc7: $01 $cb $87
	ld a, a                                          ; $6dca: $7f
	ld hl, sp+$38                                    ; $6dcb: $f8 $38
	call z, $84fc                                    ; $6dcd: $cc $fc $84
	db $ec                                           ; $6dd0: $ec
	add b                                            ; $6dd1: $80
	ld b, [hl]                                       ; $6dd2: $46
	add b                                            ; $6dd3: $80
	ldh [c], a                                       ; $6dd4: $e2
	cp l                                             ; $6dd5: $bd
	ldh a, [c]                                       ; $6dd6: $f2
	jr c, jr_063_6ddd                                ; $6dd7: $38 $04

	call z, Call_063_4c9c                            ; $6dd9: $cc $9c $4c
	ld a, b                                          ; $6ddc: $78

jr_063_6ddd:
	jr nc, jr_063_6dfe                               ; $6ddd: $30 $1f

	ldh [rIE], a                                     ; $6ddf: $e0 $ff
	ld a, e                                          ; $6de1: $7b
	ldh [$df], a                                     ; $6de2: $e0 $df
	ld a, b                                          ; $6de4: $78
	ld [hl], e                                       ; $6de5: $73
	sbc $27                                          ; $6de6: $de $27
	ldh [$df], a                                     ; $6de8: $e0 $df
	ld a, h                                          ; $6dea: $7c
	sbc h                                            ; $6deb: $9c
	ld a, b                                          ; $6dec: $78
	jr c, jr_063_6e27                                ; $6ded: $38 $38

	ld a, e                                          ; $6def: $7b
	rst SubAFromDE                                          ; $6df0: $df
	scf                                              ; $6df1: $37
	ldh [$af], a                                     ; $6df2: $e0 $af
	ld bc, $3480                                     ; $6df4: $01 $80 $34
	rst AddAOntoHL                                          ; $6df7: $ef
	inc h                                            ; $6df8: $24
	rst $38                                          ; $6df9: $ff
	inc h                                            ; $6dfa: $24
	rst $38                                          ; $6dfb: $ff
	sub [hl]                                         ; $6dfc: $96
	rst $38                                          ; $6dfd: $ff

jr_063_6dfe:
	sub [hl]                                         ; $6dfe: $96
	db $fd                                           ; $6dff: $fd
	rst GetHLinHL                                          ; $6e00: $cf
	db $fd                                           ; $6e01: $fd
	dec l                                            ; $6e02: $2d
	ld a, $17                                        ; $6e03: $3e $17
	ld a, [de]                                       ; $6e05: $1a
	rra                                              ; $6e06: $1f
	ld d, $1e                                        ; $6e07: $16 $1e
	rla                                              ; $6e09: $17
	rla                                              ; $6e0a: $17
	dec de                                           ; $6e0b: $1b
	rra                                              ; $6e0c: $1f
	add hl, de                                       ; $6e0d: $19
	dec d                                            ; $6e0e: $15
	rra                                              ; $6e0f: $1f
	inc de                                           ; $6e10: $13
	rra                                              ; $6e11: $1f
	ld [de], a                                       ; $6e12: $12
	rra                                              ; $6e13: $1f
	ld a, [de]                                       ; $6e14: $1a
	sbc l                                            ; $6e15: $9d
	rla                                              ; $6e16: $17
	jr @+$7d                                         ; $6e17: $18 $7b

	cp $9d                                           ; $6e19: $fe $9d
	ld a, [de]                                       ; $6e1b: $1a
	dec d                                            ; $6e1c: $15
	ld [hl], a                                       ; $6e1d: $77
	cp $80                                           ; $6e1e: $fe $80
	ld a, [hl+]                                      ; $6e20: $2a
	dec [hl]                                         ; $6e21: $35
	ld l, $31                                        ; $6e22: $2e $31
	ld l, $31                                        ; $6e24: $2e $31
	ld a, [hl-]                                      ; $6e26: $3a

jr_063_6e27:
	dec h                                            ; $6e27: $25
	dec sp                                           ; $6e28: $3b
	dec h                                            ; $6e29: $25
	add hl, sp                                       ; $6e2a: $39
	daa                                              ; $6e2b: $27
	ld d, d                                          ; $6e2c: $52
	ld l, a                                          ; $6e2d: $6f
	ld d, e                                          ; $6e2e: $53
	ld l, [hl]                                       ; $6e2f: $6e
	ld d, l                                          ; $6e30: $55
	ld l, [hl]                                       ; $6e31: $6e
	ld b, a                                          ; $6e32: $47
	ld a, h                                          ; $6e33: $7c
	ld c, e                                          ; $6e34: $4b
	ld a, h                                          ; $6e35: $7c
	ld b, l                                          ; $6e36: $45
	rst $38                                          ; $6e37: $ff
	db $ed                                           ; $6e38: $ed
	cp a                                             ; $6e39: $bf
	rst AddAOntoHL                                          ; $6e3a: $ef
	cp e                                             ; $6e3b: $bb
	rst AddAOntoHL                                          ; $6e3c: $ef
	rst $38                                          ; $6e3d: $ff
	rst $38                                          ; $6e3e: $ff
	adc [hl]                                         ; $6e3f: $8e
	sbc c                                            ; $6e40: $99
	rst $38                                          ; $6e41: $ff
	adc b                                            ; $6e42: $88
	rst $38                                          ; $6e43: $ff
	cp b                                             ; $6e44: $b8
	rst FarCall                                          ; $6e45: $f7
	ld h, h                                          ; $6e46: $64
	and a                                            ; $6e47: $a7
	and d                                            ; $6e48: $a2
	sbc a                                            ; $6e49: $9f
	ld a, $3d                                        ; $6e4a: $3e $3d
	ld d, $12                                        ; $6e4c: $16 $12
	ld a, [de]                                       ; $6e4e: $1a
	sbc h                                            ; $6e4f: $9c
	inc c                                            ; $6e50: $0c
	db $dd                                           ; $6e51: $dd
	add b                                            ; $6e52: $80
	add b                                            ; $6e53: $80
	ret nz                                           ; $6e54: $c0

	add b                                            ; $6e55: $80
	ret nz                                           ; $6e56: $c0

	ret nz                                           ; $6e57: $c0

	ldh [$c0], a                                     ; $6e58: $e0 $c0
	ldh a, [$e0]                                     ; $6e5a: $f0 $e0
	cp b                                             ; $6e5c: $b8
	ldh a, [$bc]                                     ; $6e5d: $f0 $bc
	ld hl, sp-$52                                    ; $6e5f: $f8 $ae
	db $fc                                           ; $6e61: $fc
	xor e                                            ; $6e62: $ab
	cp $ea                                           ; $6e63: $fe $ea
	rst $38                                          ; $6e65: $ff
	jp nz, $caeb                                     ; $6e66: $c2 $eb $ca

	db $e3                                           ; $6e69: $e3
	jp nc, $c247                                     ; $6e6a: $d2 $47 $c2

	ld d, a                                          ; $6e6d: $57
	call $e557                                       ; $6e6e: $cd $57 $e5
	ld c, a                                          ; $6e71: $4f
	adc l                                            ; $6e72: $8d
	adc l                                            ; $6e73: $8d
	xor a                                            ; $6e74: $af
	adc d                                            ; $6e75: $8a
	cp [hl]                                          ; $6e76: $be
	call z, $ce7f                                    ; $6e77: $cc $7f $ce
	ld a, e                                          ; $6e7a: $7b
	xor $3b                                          ; $6e7b: $ee $3b
	rst $38                                          ; $6e7d: $ff
	ld sp, $11ff                                     ; $6e7e: $31 $ff $11
	rst $38                                          ; $6e81: $ff
	sub b                                            ; $6e82: $90
	rst $38                                          ; $6e83: $ff
	ld [$baff], sp                                   ; $6e84: $08 $ff $ba
	rst $38                                          ; $6e87: $ff
	sbc a                                            ; $6e88: $9f
	rlca                                             ; $6e89: $07
	jr nz, jr_063_6efc                               ; $6e8a: $20 $70

	ld hl, sp-$10                                    ; $6e8c: $f8 $f0
	add c                                            ; $6e8e: $81
	ld b, b                                          ; $6e8f: $40
	ld h, b                                          ; $6e90: $60
	nop                                              ; $6e91: $00
	pop de                                           ; $6e92: $d1
	and $e2                                          ; $6e93: $e6 $e2
	or a                                             ; $6e95: $b7
	push af                                          ; $6e96: $f5
	sbc e                                            ; $6e97: $9b
	ld hl, sp-$01                                    ; $6e98: $f8 $ff
	cp $8f                                           ; $6e9a: $fe $8f
	rst $38                                          ; $6e9c: $ff
	add c                                            ; $6e9d: $81
	rst $38                                          ; $6e9e: $ff
	ld a, b                                          ; $6e9f: $78
	rst AddAOntoHL                                          ; $6ea0: $ef
	call nz, $ce8f                                   ; $6ea1: $c4 $8f $ce
	rst $38                                          ; $6ea4: $ff
	ccf                                              ; $6ea5: $3f
	cp e                                             ; $6ea6: $bb
	inc l                                            ; $6ea7: $2c
	daa                                              ; $6ea8: $27
	inc [hl]                                         ; $6ea9: $34
	ccf                                              ; $6eaa: $3f
	jr jr_063_6eb0                                   ; $6eab: $18 $03

jr_063_6ead:
	cp l                                             ; $6ead: $bd
	rlca                                             ; $6eae: $07
	rlca                                             ; $6eaf: $07

jr_063_6eb0:
	rrca                                             ; $6eb0: $0f
	ld c, $91                                        ; $6eb1: $0e $91
	ld bc, $031d                                     ; $6eb3: $01 $1d $03
	ccf                                              ; $6eb6: $3f
	rlca                                             ; $6eb7: $07
	ld l, a                                          ; $6eb8: $6f
	rra                                              ; $6eb9: $1f
	cp a                                             ; $6eba: $bf
	ld a, a                                          ; $6ebb: $7f
	rst $38                                          ; $6ebc: $ff
	rst GetHLinHL                                          ; $6ebd: $cf
	rst $38                                          ; $6ebe: $ff
	inc bc                                           ; $6ebf: $03
	rst $38                                          ; $6ec0: $ff
	cp a                                             ; $6ec1: $bf
	ld a, a                                          ; $6ec2: $7f
	rra                                              ; $6ec3: $1f
	sbc l                                            ; $6ec4: $9d
	ld bc, $730f                                     ; $6ec5: $01 $0f $73
	cp $7f                                           ; $6ec8: $fe $7f
	ld hl, sp-$80                                    ; $6eca: $f8 $80
	ld a, $03                                        ; $6ecc: $3e $03
	sub l                                            ; $6ece: $95
	ld l, [hl]                                       ; $6ecf: $6e
	ld b, e                                          ; $6ed0: $43
	cp $22                                           ; $6ed1: $fe $22
	rst $38                                          ; $6ed3: $ff
	and d                                            ; $6ed4: $a2
	rst $38                                          ; $6ed5: $ff
	pop af                                           ; $6ed6: $f1
	ld a, a                                          ; $6ed7: $7f
	reti                                             ; $6ed8: $d9


	rst $38                                          ; $6ed9: $ff
	db $ed                                           ; $6eda: $ed
	ld e, a                                          ; $6edb: $5f
	rst $38                                          ; $6edc: $ff
	ld d, e                                          ; $6edd: $53
	rst SubAFromDE                                          ; $6ede: $df
	ld [hl], l                                       ; $6edf: $75
	rst $38                                          ; $6ee0: $ff
	xor c                                            ; $6ee1: $a9
	rst $38                                          ; $6ee2: $ff
	add hl, hl                                       ; $6ee3: $29
	db $fd                                           ; $6ee4: $fd
	dec hl                                           ; $6ee5: $2b
	rst $38                                          ; $6ee6: $ff
	inc bc                                           ; $6ee7: $03
	push af                                          ; $6ee8: $f5
	rrca                                             ; $6ee9: $0f
	db $fd                                           ; $6eea: $fd
	add h                                            ; $6eeb: $84
	ccf                                              ; $6eec: $3f
	xor h                                            ; $6eed: $ac
	ld a, a                                          ; $6eee: $7f
	ld h, h                                          ; $6eef: $64
	rst $38                                          ; $6ef0: $ff
	and $ff                                          ; $6ef1: $e6 $ff
	add $ff                                          ; $6ef3: $c6 $ff
	xor $d7                                          ; $6ef5: $ee $d7
	xor $d7                                          ; $6ef7: $ee $d7
	xor [hl]                                         ; $6ef9: $ae
	rst SubAFromHL                                          ; $6efa: $d7
	or [hl]                                          ; $6efb: $b6

jr_063_6efc:
	rst GetHLinHL                                          ; $6efc: $cf

jr_063_6efd:
	jp c, $dbaf                                      ; $6efd: $da $af $db

	xor [hl]                                         ; $6f00: $ae
	db $eb                                           ; $6f01: $eb
	sbc [hl]                                         ; $6f02: $9e
	ld [hl], d                                       ; $6f03: $72
	sbc [hl]                                         ; $6f04: $9e
	or d                                             ; $6f05: $b2
	ld e, [hl]                                       ; $6f06: $5e
	ld l, a                                          ; $6f07: $6f
	cp $9d                                           ; $6f08: $fe $9d
	ld [hl], $de                                     ; $6f0a: $36 $de
	ld d, e                                          ; $6f0c: $53
	jr nz, jr_063_6ead                               ; $6f0d: $20 $9e

	add b                                            ; $6f0f: $80
	ld a, e                                          ; $6f10: $7b
	ld h, b                                          ; $6f11: $60
	sbc c                                            ; $6f12: $99
	inc e                                            ; $6f13: $1c
	rst FarCall                                          ; $6f14: $f7
	ld h, d                                          ; $6f15: $62
	rst FarCall                                          ; $6f16: $f7
	sub $96                                          ; $6f17: $d6 $96
	ld h, e                                          ; $6f19: $63
	jr nz, jr_063_6f6f                               ; $6f1a: $20 $53

	ld h, b                                          ; $6f1c: $60
	cp a                                             ; $6f1d: $bf
	rst $38                                          ; $6f1e: $ff
	rst $38                                          ; $6f1f: $ff
	sbc c                                            ; $6f20: $99
	ld a, h                                          ; $6f21: $7c
	rst AddAOntoHL                                          ; $6f22: $ef
	add $af                                          ; $6f23: $c6 $af
	cp a                                             ; $6f25: $bf
	cpl                                              ; $6f26: $2f
	ld h, e                                          ; $6f27: $63
	ld h, b                                          ; $6f28: $60
	dec sp                                           ; $6f29: $3b
	add b                                            ; $6f2a: $80
	sbc h                                            ; $6f2b: $9c
	add hl, hl                                       ; $6f2c: $29
	rst $38                                          ; $6f2d: $ff
	xor c                                            ; $6f2e: $a9
	ld e, a                                          ; $6f2f: $5f
	add b                                            ; $6f30: $80
	ld l, e                                          ; $6f31: $6b
	and b                                            ; $6f32: $a0
	sbc h                                            ; $6f33: $9c
	cp e                                             ; $6f34: $bb
	rst $38                                          ; $6f35: $ff
	db $fd                                           ; $6f36: $fd
	ld l, e                                          ; $6f37: $6b
	and b                                            ; $6f38: $a0
	cp a                                             ; $6f39: $bf
	rst $38                                          ; $6f3a: $ff
	rst $38                                          ; $6f3b: $ff
	sbc c                                            ; $6f3c: $99
	inc a                                            ; $6f3d: $3c
	or $f6                                           ; $6f3e: $f6 $f6
	cp $3c                                           ; $6f40: $fe $3c
	sbc h                                            ; $6f42: $9c
	ld d, a                                          ; $6f43: $57
	and b                                            ; $6f44: $a0
	sbc d                                            ; $6f45: $9a
	adc a                                            ; $6f46: $8f
	cp $f7                                           ; $6f47: $fe $f7
	rst $38                                          ; $6f49: $ff
	adc a                                            ; $6f4a: $8f
	ld l, e                                          ; $6f4b: $6b
	ldh [c], a                                       ; $6f4c: $e2
	ld a, a                                          ; $6f4d: $7f
	cp $99                                           ; $6f4e: $fe $99
	ld a, $6f                                        ; $6f50: $3e $6f
	ld l, a                                          ; $6f52: $6f
	ld a, a                                          ; $6f53: $7f
	ld a, $1f                                        ; $6f54: $3e $1f
	cp [hl]                                          ; $6f56: $be
	inc bc                                           ; $6f57: $03
	rlca                                             ; $6f58: $07
	sub l                                            ; $6f59: $95
	scf                                              ; $6f5a: $37
	and b                                            ; $6f5b: $a0
	ld a, a                                          ; $6f5c: $7f
	jr nz, jr_063_6efd                               ; $6f5d: $20 $9e

	xor e                                            ; $6f5f: $ab
	inc de                                           ; $6f60: $13
	and b                                            ; $6f61: $a0
	sbc h                                            ; $6f62: $9c

jr_063_6f63:
	jr c, jr_063_6f63                                ; $6f63: $38 $fe

	jp nz, $a013                                     ; $6f65: $c2 $13 $a0

	sbc h                                            ; $6f68: $9c
	ld e, $7f                                        ; $6f69: $1e $7f
	ld b, c                                          ; $6f6b: $41
	ld h, a                                          ; $6f6c: $67
	and b                                            ; $6f6d: $a0
	rst $38                                          ; $6f6e: $ff

jr_063_6f6f:
	sbc h                                            ; $6f6f: $9c
	ret z                                            ; $6f70: $c8

	ld b, b                                          ; $6f71: $40
	nop                                              ; $6f72: $00
	cp l                                             ; $6f73: $bd
	jr nc, jr_063_6f76                               ; $6f74: $30 $00

jr_063_6f76:
	nop                                              ; $6f76: $00
	ld [bc], a                                       ; $6f77: $02
	sub c                                            ; $6f78: $91
	ld bc, $87cb                                     ; $6f79: $01 $cb $87
	ld a, a                                          ; $6f7c: $7f
	ld hl, sp+$38                                    ; $6f7d: $f8 $38
	call z, $84fc                                    ; $6f7f: $cc $fc $84
	db $ec                                           ; $6f82: $ec
	add b                                            ; $6f83: $80
	ld b, [hl]                                       ; $6f84: $46
	add b                                            ; $6f85: $80
	ldh [c], a                                       ; $6f86: $e2
	cp l                                             ; $6f87: $bd
	ldh a, [c]                                       ; $6f88: $f2
	jr c, jr_063_6f8b                                ; $6f89: $38 $00

jr_063_6f8b:
	ret z                                            ; $6f8b: $c8

	sbc h                                            ; $6f8c: $9c
	ld b, b                                          ; $6f8d: $40
	ld a, b                                          ; $6f8e: $78
	ld [hl], b                                       ; $6f8f: $70
	rla                                              ; $6f90: $17
	ldh [$9a], a                                     ; $6f91: $e0 $9a
	call z, Call_063_7c48                            ; $6f93: $cc $48 $7c
	ld a, b                                          ; $6f96: $78
	ld a, b                                          ; $6f97: $78
	ld [hl], e                                       ; $6f98: $73
	rst SubAFromDE                                          ; $6f99: $df
	dec hl                                           ; $6f9a: $2b
	ret nz                                           ; $6f9b: $c0

	ld a, e                                          ; $6f9c: $7b
	ldh [$6f], a                                     ; $6f9d: $e0 $6f
	sbc $37                                          ; $6f9f: $de $37
	ldh [$b9], a                                     ; $6fa1: $e0 $b9
	ld bc, $3480                                     ; $6fa3: $01 $80 $34
	rst AddAOntoHL                                          ; $6fa6: $ef
	inc h                                            ; $6fa7: $24
	rst $38                                          ; $6fa8: $ff
	inc h                                            ; $6fa9: $24
	rst $38                                          ; $6faa: $ff
	sub [hl]                                         ; $6fab: $96
	rst $38                                          ; $6fac: $ff
	sub [hl]                                         ; $6fad: $96
	db $fd                                           ; $6fae: $fd
	rst GetHLinHL                                          ; $6faf: $cf
	db $fd                                           ; $6fb0: $fd
	dec l                                            ; $6fb1: $2d
	ld a, $17                                        ; $6fb2: $3e $17
	ld a, [de]                                       ; $6fb4: $1a
	rra                                              ; $6fb5: $1f
	ld d, $1e                                        ; $6fb6: $16 $1e
	rla                                              ; $6fb8: $17
	rla                                              ; $6fb9: $17
	dec de                                           ; $6fba: $1b
	rra                                              ; $6fbb: $1f
	add hl, de                                       ; $6fbc: $19
	dec d                                            ; $6fbd: $15
	rra                                              ; $6fbe: $1f
	inc de                                           ; $6fbf: $13
	rra                                              ; $6fc0: $1f
	ld [de], a                                       ; $6fc1: $12
	rra                                              ; $6fc2: $1f
	ld a, [de]                                       ; $6fc3: $1a
	sbc l                                            ; $6fc4: $9d
	rla                                              ; $6fc5: $17
	jr @+$7d                                         ; $6fc6: $18 $7b

	cp $9d                                           ; $6fc8: $fe $9d
	ld a, [de]                                       ; $6fca: $1a
	dec d                                            ; $6fcb: $15
	ld [hl], a                                       ; $6fcc: $77
	cp $80                                           ; $6fcd: $fe $80
	ld a, [hl+]                                      ; $6fcf: $2a
	dec [hl]                                         ; $6fd0: $35
	ld l, $31                                        ; $6fd1: $2e $31
	ld l, $31                                        ; $6fd3: $2e $31
	ld a, [hl-]                                      ; $6fd5: $3a
	dec h                                            ; $6fd6: $25
	dec sp                                           ; $6fd7: $3b
	dec h                                            ; $6fd8: $25
	add hl, sp                                       ; $6fd9: $39
	daa                                              ; $6fda: $27
	ld d, d                                          ; $6fdb: $52
	ld l, a                                          ; $6fdc: $6f
	ld d, e                                          ; $6fdd: $53
	ld l, [hl]                                       ; $6fde: $6e
	ld d, l                                          ; $6fdf: $55
	ld l, [hl]                                       ; $6fe0: $6e
	ld b, a                                          ; $6fe1: $47
	ld a, h                                          ; $6fe2: $7c
	ld c, e                                          ; $6fe3: $4b
	ld a, h                                          ; $6fe4: $7c
	ld b, l                                          ; $6fe5: $45
	rst $38                                          ; $6fe6: $ff
	db $ed                                           ; $6fe7: $ed
	cp a                                             ; $6fe8: $bf
	rst AddAOntoHL                                          ; $6fe9: $ef
	cp e                                             ; $6fea: $bb
	rst AddAOntoHL                                          ; $6feb: $ef
	ei                                               ; $6fec: $fb
	rst $38                                          ; $6fed: $ff
	adc [hl]                                         ; $6fee: $8e
	cp c                                             ; $6fef: $b9
	rst $38                                          ; $6ff0: $ff
	adc [hl]                                         ; $6ff1: $8e
	rst $38                                          ; $6ff2: $ff
	cp b                                             ; $6ff3: $b8
	rst FarCall                                          ; $6ff4: $f7
	ld h, h                                          ; $6ff5: $64
	add a                                            ; $6ff6: $87
	and d                                            ; $6ff7: $a2
	cp a                                             ; $6ff8: $bf
	ld e, $3d                                        ; $6ff9: $1e $3d
	ld d, $12                                        ; $6ffb: $16 $12
	ld a, [de]                                       ; $6ffd: $1a
	sbc h                                            ; $6ffe: $9c
	inc c                                            ; $6fff: $0c
	db $dd                                           ; $7000: $dd
	add b                                            ; $7001: $80
	add b                                            ; $7002: $80
	ret nz                                           ; $7003: $c0

	add b                                            ; $7004: $80
	ret nz                                           ; $7005: $c0

	ret nz                                           ; $7006: $c0

	ldh [$c0], a                                     ; $7007: $e0 $c0
	ldh a, [$e0]                                     ; $7009: $f0 $e0
	cp b                                             ; $700b: $b8
	ldh a, [$bc]                                     ; $700c: $f0 $bc
	ld hl, sp-$52                                    ; $700e: $f8 $ae
	db $fc                                           ; $7010: $fc
	xor e                                            ; $7011: $ab
	cp $ea                                           ; $7012: $fe $ea
	rst $38                                          ; $7014: $ff
	jp nz, $caeb                                     ; $7015: $c2 $eb $ca

	db $e3                                           ; $7018: $e3
	jp nc, $c247                                     ; $7019: $d2 $47 $c2

	ld d, a                                          ; $701c: $57
	call $e557                                       ; $701d: $cd $57 $e5
	ld c, a                                          ; $7020: $4f
	adc l                                            ; $7021: $8d
	adc l                                            ; $7022: $8d
	xor a                                            ; $7023: $af
	adc d                                            ; $7024: $8a
	cp [hl]                                          ; $7025: $be
	call z, $ce7f                                    ; $7026: $cc $7f $ce
	ld a, e                                          ; $7029: $7b
	xor $3b                                          ; $702a: $ee $3b
	rst $38                                          ; $702c: $ff
	ld sp, $11ff                                     ; $702d: $31 $ff $11
	rst $38                                          ; $7030: $ff
	sub c                                            ; $7031: $91
	rst $38                                          ; $7032: $ff
	ld [$baff], sp                                   ; $7033: $08 $ff $ba
	rst $38                                          ; $7036: $ff
	sbc a                                            ; $7037: $9f
	rlca                                             ; $7038: $07
	jr nz, jr_063_70ab                               ; $7039: $20 $70

	ld hl, sp-$10                                    ; $703b: $f8 $f0
	add c                                            ; $703d: $81
	ld b, b                                          ; $703e: $40
	ld h, b                                          ; $703f: $60
	nop                                              ; $7040: $00
	pop de                                           ; $7041: $d1
	and $e2                                          ; $7042: $e6 $e2
	or a                                             ; $7044: $b7
	push af                                          ; $7045: $f5
	sbc e                                            ; $7046: $9b
	ld hl, sp-$61                                    ; $7047: $f8 $9f
	cp $e7                                           ; $7049: $fe $e7
	rst $38                                          ; $704b: $ff
	add c                                            ; $704c: $81
	rst $38                                          ; $704d: $ff
	ld a, b                                          ; $704e: $78
	rst AddAOntoHL                                          ; $704f: $ef
	call z, $c68f                                    ; $7050: $cc $8f $c6
	rst $38                                          ; $7053: $ff
	ccf                                              ; $7054: $3f
	cp e                                             ; $7055: $bb
	inc l                                            ; $7056: $2c
	daa                                              ; $7057: $27
	inc [hl]                                         ; $7058: $34
	ccf                                              ; $7059: $3f
	jr jr_063_705f                                   ; $705a: $18 $03

jr_063_705c:
	cp l                                             ; $705c: $bd
	rlca                                             ; $705d: $07
	rlca                                             ; $705e: $07

jr_063_705f:
	rrca                                             ; $705f: $0f
	ld c, $91                                        ; $7060: $0e $91
	ld bc, $031d                                     ; $7062: $01 $1d $03
	ccf                                              ; $7065: $3f
	rlca                                             ; $7066: $07
	ld l, a                                          ; $7067: $6f
	rra                                              ; $7068: $1f
	cp a                                             ; $7069: $bf
	ld a, a                                          ; $706a: $7f
	rst $38                                          ; $706b: $ff
	rst GetHLinHL                                          ; $706c: $cf
	rst $38                                          ; $706d: $ff
	inc bc                                           ; $706e: $03
	rst $38                                          ; $706f: $ff
	cp a                                             ; $7070: $bf
	ld a, a                                          ; $7071: $7f
	rra                                              ; $7072: $1f
	sbc l                                            ; $7073: $9d
	ld bc, $730f                                     ; $7074: $01 $0f $73
	cp $7f                                           ; $7077: $fe $7f
	ld hl, sp-$80                                    ; $7079: $f8 $80
	ld a, $03                                        ; $707b: $3e $03
	sub l                                            ; $707d: $95
	ld l, [hl]                                       ; $707e: $6e
	ld b, e                                          ; $707f: $43
	cp $22                                           ; $7080: $fe $22
	rst $38                                          ; $7082: $ff
	and d                                            ; $7083: $a2
	rst $38                                          ; $7084: $ff
	pop af                                           ; $7085: $f1
	ld a, a                                          ; $7086: $7f
	reti                                             ; $7087: $d9


	rst $38                                          ; $7088: $ff
	db $ed                                           ; $7089: $ed
	ld e, a                                          ; $708a: $5f
	rst $38                                          ; $708b: $ff
	ld d, e                                          ; $708c: $53
	rst SubAFromDE                                          ; $708d: $df
	ld [hl], l                                       ; $708e: $75
	rst $38                                          ; $708f: $ff
	xor c                                            ; $7090: $a9
	rst $38                                          ; $7091: $ff
	add hl, hl                                       ; $7092: $29
	db $fd                                           ; $7093: $fd
	dec hl                                           ; $7094: $2b
	rst $38                                          ; $7095: $ff
	inc bc                                           ; $7096: $03
	push af                                          ; $7097: $f5
	rrca                                             ; $7098: $0f
	db $fd                                           ; $7099: $fd
	add h                                            ; $709a: $84
	ccf                                              ; $709b: $3f
	xor h                                            ; $709c: $ac
	ld a, a                                          ; $709d: $7f
	ld h, h                                          ; $709e: $64
	rst $38                                          ; $709f: $ff
	and $ff                                          ; $70a0: $e6 $ff
	add $ff                                          ; $70a2: $c6 $ff
	xor $d7                                          ; $70a4: $ee $d7
	xor $d7                                          ; $70a6: $ee $d7
	xor [hl]                                         ; $70a8: $ae
	rst SubAFromHL                                          ; $70a9: $d7
	or [hl]                                          ; $70aa: $b6

jr_063_70ab:
	rst GetHLinHL                                          ; $70ab: $cf
	jp c, $dbaf                                      ; $70ac: $da $af $db

	xor [hl]                                         ; $70af: $ae
	db $eb                                           ; $70b0: $eb
	sbc [hl]                                         ; $70b1: $9e
	ld [hl], d                                       ; $70b2: $72
	sbc [hl]                                         ; $70b3: $9e
	or d                                             ; $70b4: $b2
	ld e, [hl]                                       ; $70b5: $5e
	ld l, a                                          ; $70b6: $6f
	cp $9d                                           ; $70b7: $fe $9d
	ld [hl], $de                                     ; $70b9: $36 $de
	ld d, e                                          ; $70bb: $53
	jr nz, jr_063_705c                               ; $70bc: $20 $9e

	add b                                            ; $70be: $80
	ld a, e                                          ; $70bf: $7b
	ld h, b                                          ; $70c0: $60
	sbc c                                            ; $70c1: $99
	inc a                                            ; $70c2: $3c
	rst FarCall                                          ; $70c3: $f7
	ldh [c], a                                       ; $70c4: $e2
	rst $38                                          ; $70c5: $ff
	ld e, [hl]                                       ; $70c6: $5e
	ld d, $63                                        ; $70c7: $16 $63
	jr nz, jr_063_711e                               ; $70c9: $20 $53

	ld h, b                                          ; $70cb: $60
	cp a                                             ; $70cc: $bf
	rst $38                                          ; $70cd: $ff
	rst $38                                          ; $70ce: $ff
	ld a, a                                          ; $70cf: $7f
	ld e, h                                          ; $70d0: $5c
	ld a, a                                          ; $70d1: $7f
	or c                                             ; $70d2: $b1
	sbc l                                            ; $70d3: $9d
	cp a                                             ; $70d4: $bf
	cpl                                              ; $70d5: $2f
	ld h, e                                          ; $70d6: $63
	ld h, b                                          ; $70d7: $60
	dec sp                                           ; $70d8: $3b
	add b                                            ; $70d9: $80
	sbc h                                            ; $70da: $9c
	add hl, hl                                       ; $70db: $29
	rst $38                                          ; $70dc: $ff
	xor c                                            ; $70dd: $a9
	ld e, a                                          ; $70de: $5f
	add b                                            ; $70df: $80
	ld l, e                                          ; $70e0: $6b
	and b                                            ; $70e1: $a0
	sbc d                                            ; $70e2: $9a
	cp e                                             ; $70e3: $bb
	rst $38                                          ; $70e4: $ff
	ld sp, hl                                        ; $70e5: $f9
	rst $38                                          ; $70e6: $ff
	cp b                                             ; $70e7: $b8
	ld a, e                                          ; $70e8: $7b
	sbc [hl]                                         ; $70e9: $9e
	cp [hl]                                          ; $70ea: $be
	rst $38                                          ; $70eb: $ff
	rst $38                                          ; $70ec: $ff
	rst $38                                          ; $70ed: $ff
	sbc c                                            ; $70ee: $99
	inc a                                            ; $70ef: $3c
	or $f6                                           ; $70f0: $f6 $f6
	cp $3c                                           ; $70f2: $fe $3c
	sbc h                                            ; $70f4: $9c
	ld [hl], e                                       ; $70f5: $73
	and b                                            ; $70f6: $a0
	ld e, d                                          ; $70f7: $5a
	ldh [$9c], a                                     ; $70f8: $e0 $9c
	sub b                                            ; $70fa: $90
	rst $38                                          ; $70fb: $ff
	add hl, bc                                       ; $70fc: $09
	ld [hl+], a                                      ; $70fd: $22
	ldh [$9a], a                                     ; $70fe: $e0 $9a
	adc a                                            ; $7100: $8f
	cp $9f                                           ; $7101: $fe $9f
	rst $38                                          ; $7103: $ff
	pop hl                                           ; $7104: $e1
	ld [hl], e                                       ; $7105: $73
	ld h, b                                          ; $7106: $60
	cp a                                             ; $7107: $bf
	rst $38                                          ; $7108: $ff
	rst $38                                          ; $7109: $ff
	sbc c                                            ; $710a: $99
	ld a, $6f                                        ; $710b: $3e $6f
	ld l, a                                          ; $710d: $6f
	ld a, a                                          ; $710e: $7f
	ld a, $1f                                        ; $710f: $3e $1f
	cp [hl]                                          ; $7111: $be
	inc bc                                           ; $7112: $03
	rlca                                             ; $7113: $07
	sub l                                            ; $7114: $95
	scf                                              ; $7115: $37
	add b                                            ; $7116: $80
	ld a, a                                          ; $7117: $7f
	nop                                              ; $7118: $00
	sbc [hl]                                         ; $7119: $9e
	xor e                                            ; $711a: $ab
	inc de                                           ; $711b: $13
	add b                                            ; $711c: $80
	sbc d                                            ; $711d: $9a

jr_063_711e:
	inc e                                            ; $711e: $1c
	cp $c0                                           ; $711f: $fe $c0
	cp $3e                                           ; $7121: $fe $3e
	ld l, a                                          ; $7123: $6f
	add b                                            ; $7124: $80
	inc sp                                           ; $7125: $33
	and b                                            ; $7126: $a0
	sbc h                                            ; $7127: $9c
	ld e, $7f                                        ; $7128: $1e $7f
	ld b, c                                          ; $712a: $41
	ld h, a                                          ; $712b: $67
	and b                                            ; $712c: $a0
	rst $38                                          ; $712d: $ff
	ld a, a                                          ; $712e: $7f
	halt                                             ; $712f: $76
	sbc [hl]                                         ; $7130: $9e
	ld [$30bd], sp                                   ; $7131: $08 $bd $30
	nop                                              ; $7134: $00
	nop                                              ; $7135: $00
	ld [bc], a                                       ; $7136: $02
	sub c                                            ; $7137: $91
	ld bc, $87cb                                     ; $7138: $01 $cb $87
	ld a, a                                          ; $713b: $7f
	ld hl, sp+$38                                    ; $713c: $f8 $38
	call z, $84fc                                    ; $713e: $cc $fc $84
	db $ec                                           ; $7141: $ec
	add b                                            ; $7142: $80
	ld b, [hl]                                       ; $7143: $46
	add b                                            ; $7144: $80
	ldh [c], a                                       ; $7145: $e2
	cp l                                             ; $7146: $bd
	ldh a, [c]                                       ; $7147: $f2
	jr c, jr_063_714a                                ; $7148: $38 $00

jr_063_714a:
	ld c, b                                          ; $714a: $48
	sbc h                                            ; $714b: $9c
	ld b, b                                          ; $714c: $40
	ld a, b                                          ; $714d: $78
	jr nc, @+$0d                                     ; $714e: $30 $0b

	ldh [$df], a                                     ; $7150: $e0 $df
	ld a, b                                          ; $7152: $78
	ld [hl], e                                       ; $7153: $73
	rst SubAFromDE                                          ; $7154: $df
	dec de                                           ; $7155: $1b
	ldh [$73], a                                     ; $7156: $e0 $73
	sbc $37                                          ; $7158: $de $37
	ldh [hDisp1_BGP], a                                     ; $715a: $e0 $92
	ld [bc], a                                       ; $715c: $02
	db $e3                                           ; $715d: $e3
	rst SubAFromDE                                          ; $715e: $df
	ld bc, $0387                                     ; $715f: $01 $87 $03
	ld [bc], a                                       ; $7162: $02
	ld [bc], a                                       ; $7163: $02
	ld bc, $0605                                     ; $7164: $01 $05 $06
	dec b                                            ; $7167: $05
	ld [bc], a                                       ; $7168: $02
	ld a, [bc]                                       ; $7169: $0a
	dec c                                            ; $716a: $0d
	ld a, [bc]                                       ; $716b: $0a
	dec c                                            ; $716c: $0d
	dec d                                            ; $716d: $15
	ld a, [de]                                       ; $716e: $1a
	dec d                                            ; $716f: $15
	dec de                                           ; $7170: $1b
	dec de                                           ; $7171: $1b
	dec d                                            ; $7172: $15
	ld a, [bc]                                       ; $7173: $0a
	rla                                              ; $7174: $17
	ld a, [hl+]                                      ; $7175: $2a
	scf                                              ; $7176: $37
	dec l                                            ; $7177: $2d
	ld [hl], $77                                     ; $7178: $36 $77
	cp $89                                           ; $717a: $fe $89
	cpl                                              ; $717c: $2f
	inc [hl]                                         ; $717d: $34
	daa                                              ; $717e: $27
	inc a                                            ; $717f: $3c
	ld h, $3d                                        ; $7180: $26 $3d
	ld h, $3d                                        ; $7182: $26 $3d
	ld l, $35                                        ; $7184: $2e $35
	ld a, [bc]                                       ; $7186: $0a
	rla                                              ; $7187: $17
	ld a, [de]                                       ; $7188: $1a
	rla                                              ; $7189: $17
	add hl, de                                       ; $718a: $19
	rla                                              ; $718b: $17
	dec d                                            ; $718c: $15
	dec de                                           ; $718d: $1b
	inc b                                            ; $718e: $04
	dec bc                                           ; $718f: $0b
	inc c                                            ; $7190: $0c
	dec bc                                           ; $7191: $0b
	ld [hl], a                                       ; $7192: $77
	sub $6f                                          ; $7193: $d6 $6f
	cp $7b                                           ; $7195: $fe $7b
	di                                               ; $7197: $f3
	sbc e                                            ; $7198: $9b
	inc c                                            ; $7199: $0c
	ld bc, $0106                                     ; $719a: $01 $06 $01
	ld a, e                                          ; $719d: $7b
	jp nz, $f37f                                     ; $719e: $c2 $7f $f3

	sbc e                                            ; $71a1: $9b
	rrca                                             ; $71a2: $0f
	ld [$080f], sp                                   ; $71a3: $08 $0f $08
	ld h, e                                          ; $71a6: $63
	rst SubAFromBC                                          ; $71a7: $e7
	ld [hl], e                                       ; $71a8: $73
	cp $67                                           ; $71a9: $fe $67
	sub $91                                          ; $71ab: $d6 $91
	inc c                                            ; $71ad: $0c
	rrca                                             ; $71ae: $0f
	dec b                                            ; $71af: $05
	rlca                                             ; $71b0: $07
	dec b                                            ; $71b1: $05
	rlca                                             ; $71b2: $07
	rlca                                             ; $71b3: $07
	ld b, $03                                        ; $71b4: $06 $03
	ld [bc], a                                       ; $71b6: $02
	inc bc                                           ; $71b7: $03
	ld [bc], a                                       ; $71b8: $02
	rlca                                             ; $71b9: $07
	inc b                                            ; $71ba: $04
	ld l, a                                          ; $71bb: $6f
	cp $77                                           ; $71bc: $fe $77
	jp nc, $fe6f                                     ; $71be: $d2 $6f $fe

	db $eb                                           ; $71c1: $eb
	ld a, a                                          ; $71c2: $7f
	db $dd                                           ; $71c3: $dd
	add a                                            ; $71c4: $87
	rra                                              ; $71c5: $1f
	db $10                                           ; $71c6: $10
	ld [hl], b                                       ; $71c7: $70
	ld c, a                                          ; $71c8: $4f
	add $b9                                          ; $71c9: $c6 $b9

jr_063_71cb:
	sbc c                                            ; $71cb: $99
	ld h, a                                          ; $71cc: $67
	rlca                                             ; $71cd: $07
	sbc h                                            ; $71ce: $9c
	rrca                                             ; $71cf: $0f
	jr c, jr_063_71f1                                ; $71d0: $38 $1f

	ld [hl], e                                       ; $71d2: $73
	inc a                                            ; $71d3: $3c
	xor a                                            ; $71d4: $af
	ld [hl], b                                       ; $71d5: $70
	ld e, h                                          ; $71d6: $5c
	ldh [$b0], a                                     ; $71d7: $e0 $b0
	ret nz                                           ; $71d9: $c0

	ldh [$80], a                                     ; $71da: $e0 $80
	ret                                              ; $71dc: $c9


	cp l                                             ; $71dd: $bd
	sub c                                            ; $71de: $91
	ld [hl-], a                                      ; $71df: $32
	ld [hl+], a                                      ; $71e0: $22
	ld h, [hl]                                       ; $71e1: $66
	sub a                                            ; $71e2: $97
	ld [bc], a                                       ; $71e3: $02
	ld b, a                                          ; $71e4: $47
	ld [bc], a                                       ; $71e5: $02
	ld c, a                                          ; $71e6: $4f
	ld b, $cf                                        ; $71e7: $06 $cf

jr_063_71e9:
	ld b, [hl]                                       ; $71e9: $46
	rst SubAFromDE                                          ; $71ea: $df
	ldh [$c1], a                                     ; $71eb: $e0 $c1
	sbc c                                            ; $71ed: $99
	rst $38                                          ; $71ee: $ff
	add b                                            ; $71ef: $80
	rst $38                                          ; $71f0: $ff

jr_063_71f1:
	add c                                            ; $71f1: $81
	rst $38                                          ; $71f2: $ff

jr_063_71f3:
	ld bc, $fe7b                                     ; $71f3: $01 $7b $fe
	adc b                                            ; $71f6: $88
	inc b                                            ; $71f7: $04
	sbc a                                            ; $71f8: $9f
	dec b                                            ; $71f9: $05
	ld c, $03                                        ; $71fa: $0e $03
	ld c, $02                                        ; $71fc: $0e $02
	inc c                                            ; $71fe: $0c
	ld [bc], a                                       ; $71ff: $02
	inc c                                            ; $7200: $0c
	ld b, $18                                        ; $7201: $06 $18
	rlca                                             ; $7203: $07
	sbc b                                            ; $7204: $98
	inc c                                            ; $7205: $0c
	or b                                             ; $7206: $b0
	jr jr_063_71e9                                   ; $7207: $18 $e0

	jr nc, jr_063_71cb                               ; $7209: $30 $c0

	ld h, b                                          ; $720b: $60
	add b                                            ; $720c: $80
	ret nz                                           ; $720d: $c0

	rst FarCall                                          ; $720e: $f7
	ld a, d                                          ; $720f: $7a
	rst SubAFromHL                                          ; $7210: $d7
	call c, $df01                                    ; $7211: $dc $01 $df
	dec e                                            ; $7214: $1d
	add b                                            ; $7215: $80
	db $e3                                           ; $7216: $e3
	rst $38                                          ; $7217: $ff
	jr @+$01                                         ; $7218: $18 $ff

	ld b, $ff                                        ; $721a: $06 $ff
	rrca                                             ; $721c: $0f
	db $fc                                           ; $721d: $fc
	ld a, a                                          ; $721e: $7f
	ldh [rIE], a                                     ; $721f: $e0 $ff
	nop                                              ; $7221: $00
	rra                                              ; $7222: $1f
	rst $38                                          ; $7223: $ff
	ld a, a                                          ; $7224: $7f
	db $fc                                           ; $7225: $fc
	rst $38                                          ; $7226: $ff
	ret nz                                           ; $7227: $c0

	rst $38                                          ; $7228: $ff
	ld [bc], a                                       ; $7229: $02
	cp $10                                           ; $722a: $fe $10
	xor [hl]                                         ; $722c: $ae
	add h                                            ; $722d: $84
	xor h                                            ; $722e: $ac
	and h                                            ; $722f: $a4
	ld e, h                                          ; $7230: $5c
	nop                                              ; $7231: $00
	ld e, h                                          ; $7232: $5c
	ld c, b                                          ; $7233: $48
	inc e                                            ; $7234: $1c
	sub d                                            ; $7235: $92
	ld [$081c], sp                                   ; $7236: $08 $1c $08
	ld e, h                                          ; $7239: $5c
	ld c, b                                          ; $723a: $48
	ld e, h                                          ; $723b: $5c
	ld c, b                                          ; $723c: $48
	sbc $cc                                          ; $723d: $de $cc
	cp $cc                                           ; $723f: $fe $cc
	rst $38                                          ; $7241: $ff
	xor $e0                                          ; $7242: $ee $e0
	pop bc                                           ; $7244: $c1
	add b                                            ; $7245: $80
	rst GetHLinHL                                          ; $7246: $cf
	add d                                            ; $7247: $82
	add a                                            ; $7248: $87
	nop                                              ; $7249: $00

jr_063_724a:
	ld [hl], e                                       ; $724a: $73
	ld h, b                                          ; $724b: $60
	reti                                             ; $724c: $d9


	ld [hl], b                                       ; $724d: $70
	sbc c                                            ; $724e: $99
	cp b                                             ; $724f: $b8
	dec e                                            ; $7250: $1d
	cp b                                             ; $7251: $b8
	inc e                                            ; $7252: $1c
	ld hl, sp+$1c                                    ; $7253: $f8 $1c
	ld [hl], h                                       ; $7255: $74
	ld e, $34                                        ; $7256: $1e $34
	ld e, $f4                                        ; $7258: $1e $f4
	ld e, $32                                        ; $725a: $1e $32
	rra                                              ; $725c: $1f
	ld [hl-], a                                      ; $725d: $32
	rrca                                             ; $725e: $0f
	ld d, d                                          ; $725f: $52
	rrca                                             ; $7260: $0f
	reti                                             ; $7261: $d9


	rlca                                             ; $7262: $07
	db $ed                                           ; $7263: $ed
	inc bc                                           ; $7264: $03
	sbc [hl]                                         ; $7265: $9e
	ld h, a                                          ; $7266: $67
	rst FarCall                                          ; $7267: $f7
	rst SubAFromDE                                          ; $7268: $df
	jr nz, jr_063_724a                               ; $7269: $20 $df

	jr nc, jr_063_71f3                               ; $726b: $30 $86

	sub b                                            ; $726d: $90
	or b                                             ; $726e: $b0
	sub b                                            ; $726f: $90
	or b                                             ; $7270: $b0
	ld e, a                                          ; $7271: $5f
	rst $38                                          ; $7272: $ff
	ld e, [hl]                                       ; $7273: $5e
	rst $38                                          ; $7274: $ff
	sub h                                            ; $7275: $94
	rst $38                                          ; $7276: $ff
	dec hl                                           ; $7277: $2b
	rst $38                                          ; $7278: $ff
	db $fc                                           ; $7279: $fc
	ccf                                              ; $727a: $3f
	rst $38                                          ; $727b: $ff
	inc bc                                           ; $727c: $03
	rst $38                                          ; $727d: $ff
	nop                                              ; $727e: $00
	ld hl, sp-$01                                    ; $727f: $f8 $ff
	rst $38                                          ; $7281: $ff
	rra                                              ; $7282: $1f
	rst $38                                          ; $7283: $ff
	ld bc, $bfdf                                     ; $7284: $01 $df $bf
	db $db                                           ; $7287: $db
	sbc e                                            ; $7288: $9b
	adc d                                            ; $7289: $8a
	add hl, bc                                       ; $728a: $09
	sbc e                                            ; $728b: $9b
	adc c                                            ; $728c: $89
	sbc c                                            ; $728d: $99
	adc b                                            ; $728e: $88
	add hl, bc                                       ; $728f: $09
	ld [$080d], sp                                   ; $7290: $08 $0d $08
	call z, $ce88                                    ; $7293: $cc $88 $ce
	add h                                            ; $7296: $84
	xor $c4                                          ; $7297: $ee $c4
	rst AddAOntoHL                                          ; $7299: $ef
	add $ef                                          ; $729a: $c6 $ef
	and $ff                                          ; $729c: $e6 $ff
	rst SubAFromBC                                          ; $729e: $e7
	ldh [$c1], a                                     ; $729f: $e0 $c1
	sbc c                                            ; $72a1: $99
	ld a, a                                          ; $72a2: $7f
	ld [bc], a                                       ; $72a3: $02
	ld a, a                                          ; $72a4: $7f
	inc bc                                           ; $72a5: $03
	cp $03                                           ; $72a6: $fe $03
	ld a, e                                          ; $72a8: $7b
	sub [hl]                                         ; $72a9: $96
	sbc l                                            ; $72aa: $9d
	ld [bc], a                                       ; $72ab: $02
	rst $38                                          ; $72ac: $ff
	ld a, e                                          ; $72ad: $7b
	ld hl, sp+$7f                                    ; $72ae: $f8 $7f
	cp $94                                           ; $72b0: $fe $94
	ld a, [hl]                                       ; $72b2: $7e
	inc bc                                           ; $72b3: $03
	ld a, a                                          ; $72b4: $7f
	inc bc                                           ; $72b5: $03
	ccf                                              ; $72b6: $3f
	ld [bc], a                                       ; $72b7: $02
	ccf                                              ; $72b8: $3f
	ld bc, $013f                    ; $72b9: $01 $3f $01
	cp a                                             ; $72bc: $bf
	cp a                                             ; $72bd: $bf
	rst $38                                          ; $72be: $ff
	rst $38                                          ; $72bf: $ff
	sbc [hl]                                         ; $72c0: $9e
	add b                                            ; $72c1: $80
	rst AddAOntoHL                                          ; $72c2: $ef
	rst SubAFromDE                                          ; $72c3: $df
	ldh [hDisp0_OBP1], a                                     ; $72c4: $e0 $87
	inc c                                            ; $72c6: $0c
	db $fc                                           ; $72c7: $fc
	pop af                                           ; $72c8: $f1
	rrca                                             ; $72c9: $0f
	ld c, $f1                                        ; $72ca: $0e $f1
	pop af                                           ; $72cc: $f1
	ld c, $8c                                        ; $72cd: $0e $8c
	di                                               ; $72cf: $f3
	db $e3                                           ; $72d0: $e3
	db $fc                                           ; $72d1: $fc
	ld hl, sp+$1f                                    ; $72d2: $f8 $1f
	db $fc                                           ; $72d4: $fc
	ld b, $7e                                        ; $72d5: $06 $7e
	db $e3                                           ; $72d7: $e3
	rra                                              ; $72d8: $1f
	ld a, c                                          ; $72d9: $79
	rlca                                             ; $72da: $07
	ld e, $01                                        ; $72db: $1e $01
	ld b, a                                          ; $72dd: $47
	cp d                                             ; $72de: $ba
	inc hl                                           ; $72df: $23
	sub c                                            ; $72e0: $91
	adc b                                            ; $72e1: $88
	call z, Call_063_66c4                            ; $72e2: $cc $c4 $66
	ld [hl], a                                       ; $72e5: $77
	sbc c                                            ; $72e6: $99
	ld hl, $107f                                     ; $72e7: $21 $7f $10
	ld a, a                                          ; $72ea: $7f
	jr jr_063_736c                                   ; $72eb: $18 $7f

	ldh [$c1], a                                     ; $72ed: $e0 $c1
	add a                                            ; $72ef: $87
	cp h                                             ; $72f0: $bc
	rst SubAFromBC                                          ; $72f1: $e7
	ld a, h                                          ; $72f2: $7c
	push bc                                          ; $72f3: $c5
	call nz, $a485                                   ; $72f4: $c4 $85 $a4
	dec b                                            ; $72f7: $05
	ldh [rTIMA], a                                   ; $72f8: $e0 $05
	ret z                                            ; $72fa: $c8

	dec b                                            ; $72fb: $05
	adc b                                            ; $72fc: $88
	adc a                                            ; $72fd: $8f
	sbc b                                            ; $72fe: $98
	adc e                                            ; $72ff: $8b
	or b                                             ; $7300: $b0
	sbc e                                            ; $7301: $9b
	ld h, b                                          ; $7302: $60
	inc [hl]                                         ; $7303: $34
	ret nz                                           ; $7304: $c0

	ld l, b                                          ; $7305: $68
	add b                                            ; $7306: $80
	ret nc                                           ; $7307: $d0

	cp a                                             ; $7308: $bf
	jr nz, @-$3e                                     ; $7309: $20 $c0

	db $dd                                           ; $730b: $dd
	add b                                            ; $730c: $80
	jp hl                                            ; $730d: $e9


	add b                                            ; $730e: $80
	ld b, b                                          ; $730f: $40
	ret nz                                           ; $7310: $c0

	and b                                            ; $7311: $a0
	ld h, b                                          ; $7312: $60
	ret nc                                           ; $7313: $d0

	or b                                             ; $7314: $b0
	ld c, b                                          ; $7315: $48
	ld hl, sp-$54                                    ; $7316: $f8 $ac
	ld a, h                                          ; $7318: $7c
	ld d, h                                          ; $7319: $54
	cp h                                             ; $731a: $bc
	xor [hl]                                         ; $731b: $ae
	ld e, [hl]                                       ; $731c: $5e
	ld d, [hl]                                       ; $731d: $56
	xor [hl]                                         ; $731e: $ae
	xor d                                            ; $731f: $aa
	sub $e9                                          ; $7320: $d6 $e9
	rst SubAFromHL                                          ; $7322: $d7
	push de                                          ; $7323: $d5
	db $eb                                           ; $7324: $eb
	ld [hl], h                                       ; $7325: $74
	db $eb                                           ; $7326: $eb
	ld [hl+], a                                      ; $7327: $22
	db $fd                                           ; $7328: $fd
	or d                                             ; $7329: $b2
	ld a, l                                          ; $732a: $7d
	sub c                                            ; $732b: $91
	ld a, [hl]                                       ; $732c: $7e
	pop de                                           ; $732d: $d1
	sub [hl]                                         ; $732e: $96
	ld a, $d9                                        ; $732f: $3e $d9
	ld a, $49                                        ; $7331: $3e $49
	cp [hl]                                          ; $7333: $be
	ld [$8cff], sp                                   ; $7334: $08 $ff $8c
	rst $38                                          ; $7337: $ff
	ldh [$c1], a                                     ; $7338: $e0 $c1
	adc l                                            ; $733a: $8d
	inc b                                            ; $733b: $04
	sbc h                                            ; $733c: $9c
	ld b, $74                                        ; $733d: $06 $74
	inc b                                            ; $733f: $04
	ret nc                                           ; $7340: $d0

	inc c                                            ; $7341: $0c
	cp b                                             ; $7342: $b8
	dec c                                            ; $7343: $0d
	jr z, jr_063_7355                                ; $7344: $28 $0f

	ld l, b                                          ; $7346: $68
	rrca                                             ; $7347: $0f
	add sp, $0f                                      ; $7348: $e8 $0f
	xor b                                            ; $734a: $a8
	rrca                                             ; $734b: $0f
	jr z, jr_063_73c9                                ; $734c: $28 $7b

	cp $7e                                           ; $734e: $fe $7e
	ldh a, [c]                                       ; $7350: $f2
	sub [hl]                                         ; $7351: $96
	db $ed                                           ; $7352: $ed
	rlca                                             ; $7353: $07
	adc l                                            ; $7354: $8d

jr_063_7355:
	rlca                                             ; $7355: $07
	ld e, $03                                        ; $7356: $1e $03
	ld a, $02                                        ; $7358: $3e $02
	ld a, [hl]                                       ; $735a: $7e
	pop af                                           ; $735b: $f1
	db $db                                           ; $735c: $db
	add b                                            ; $735d: $80
	ld a, a                                          ; $735e: $7f
	ld sp, hl                                        ; $735f: $f9
	ld a, a                                          ; $7360: $7f
	ld h, b                                          ; $7361: $60
	ld a, a                                          ; $7362: $7f
	cp $7f                                           ; $7363: $fe $7f
	db $fd                                           ; $7365: $fd
	ld a, a                                          ; $7366: $7f
	ld sp, hl                                        ; $7367: $f9
	ld a, a                                          ; $7368: $7f
	ld e, d                                          ; $7369: $5a
	add b                                            ; $736a: $80
	and b                                            ; $736b: $a0

jr_063_736c:
	ldh [$e0], a                                     ; $736c: $e0 $e0
	and b                                            ; $736e: $a0
	ldh [$a0], a                                     ; $736f: $e0 $a0
	ret nz                                           ; $7371: $c0

	and b                                            ; $7372: $a0
	ld d, b                                          ; $7373: $50
	ldh a, [$50]                                     ; $7374: $f0 $50
	ldh a, [$d0]                                     ; $7376: $f0 $d0
	ld [hl], b                                       ; $7378: $70
	ret nc                                           ; $7379: $d0

	ld [hl], b                                       ; $737a: $70
	and b                                            ; $737b: $a0
	ld [hl], b                                       ; $737c: $70
	xor b                                            ; $737d: $a8
	ld a, b                                          ; $737e: $78
	ld l, b                                          ; $737f: $68
	cp b                                             ; $7380: $b8
	ld l, b                                          ; $7381: $68
	cp b                                             ; $7382: $b8
	ret c                                            ; $7383: $d8

	cp b                                             ; $7384: $b8
	ret nc                                           ; $7385: $d0

	cp b                                             ; $7386: $b8
	or h                                             ; $7387: $b4
	call c, $83ac                                    ; $7388: $dc $ac $83
	call c, $dc6c                                    ; $738b: $dc $6c $dc
	ld e, h                                          ; $738e: $5c
	db $ec                                           ; $738f: $ec
	ld e, [hl]                                       ; $7390: $5e
	xor $b6                                          ; $7391: $ee $b6
	ld l, [hl]                                       ; $7393: $6e
	xor [hl]                                         ; $7394: $ae
	halt                                             ; $7395: $76
	ld a, d                                          ; $7396: $7a
	or [hl]                                          ; $7397: $b6
	ld d, e                                          ; $7398: $53
	cp a                                             ; $7399: $bf
	adc e                                            ; $739a: $8b
	rst $38                                          ; $739b: $ff
	ret                                              ; $739c: $c9


	rst $38                                          ; $739d: $ff
	ld a, a                                          ; $739e: $7f
	rst $38                                          ; $739f: $ff
	rlca                                             ; $73a0: $07
	rst $38                                          ; $73a1: $ff
	dec de                                           ; $73a2: $1b
	db $fc                                           ; $73a3: $fc
	rst AddAOntoHL                                          ; $73a4: $ef
	ldh a, [$63]                                     ; $73a5: $f0 $63
	ld [hl], e                                       ; $73a7: $73
	ld bc, $609e                                     ; $73a8: $01 $9e $60
	cp d                                             ; $73ab: $ba
	ldh a, [$f0]                                     ; $73ac: $f0 $f0
	ldh a, [$f0]                                     ; $73ae: $f0 $f0

jr_063_73b0:
	ldh a, [$e0]                                     ; $73b0: $f0 $e0
	ldh [$7d], a                                     ; $73b2: $e0 $7d
	dec c                                            ; $73b4: $0d
	sbc l                                            ; $73b5: $9d
	add b                                            ; $73b6: $80
	add c                                            ; $73b7: $81
	or c                                             ; $73b8: $b1
	add c                                            ; $73b9: $81
	ld bc, $0303                                     ; $73ba: $01 $03 $03
	rlca                                             ; $73bd: $07
	nop                                              ; $73be: $00
	nop                                              ; $73bf: $00
	nop                                              ; $73c0: $00
	nop                                              ; $73c1: $00
	nop                                              ; $73c2: $00
	nop                                              ; $73c3: $00
	nop                                              ; $73c4: $00
	nop                                              ; $73c5: $00
	nop                                              ; $73c6: $00
	nop                                              ; $73c7: $00
	nop                                              ; $73c8: $00

jr_063_73c9:
	ld [hl], e                                       ; $73c9: $73
	ld a, b                                          ; $73ca: $78
	ld a, a                                          ; $73cb: $7f
	add b                                            ; $73cc: $80
	sub c                                            ; $73cd: $91
	jr nz, jr_063_73b0                               ; $73ce: $20 $e0

	db $10                                           ; $73d0: $10
	ldh a, [hDisp0_WY]                                     ; $73d1: $f0 $88
	ld a, b                                          ; $73d3: $78
	add b                                            ; $73d4: $80
	ld a, b                                          ; $73d5: $78
	add h                                            ; $73d6: $84
	ld a, h                                          ; $73d7: $7c
	add b                                            ; $73d8: $80
	ld a, h                                          ; $73d9: $7c
	add d                                            ; $73da: $82
	ld a, [hl]                                       ; $73db: $7e
	ld l, a                                          ; $73dc: $6f
	cp $7c                                           ; $73dd: $fe $7c
	rst FarCall                                          ; $73df: $f7
	ld [hl], a                                       ; $73e0: $77
	cp $9c                                           ; $73e1: $fe $9c
	nop                                              ; $73e3: $00
	db $fc                                           ; $73e4: $fc
	inc b                                            ; $73e5: $04
	ld a, e                                          ; $73e6: $7b
	cp $7d                                           ; $73e7: $fe $7d
	add e                                            ; $73e9: $83
	sbc l                                            ; $73ea: $9d
	ld [$1af8], sp                                   ; $73eb: $08 $f8 $1a
	nop                                              ; $73ee: $00
	sbc [hl]                                         ; $73ef: $9e
	adc b                                            ; $73f0: $88
	call c, $9999                                    ; $73f1: $dc $99 $99
	ld b, h                                          ; $73f4: $44
	adc b                                            ; $73f5: $88
	adc b                                            ; $73f6: $88
	ld [hl+], a                                      ; $73f7: $22
	call z, $6766                                    ; $73f8: $cc $66 $67
	ei                                               ; $73fb: $fb
	ld [hl], e                                       ; $73fc: $73
	pop af                                           ; $73fd: $f1
	rst SubAFromDE                                          ; $73fe: $df
	sbc c                                            ; $73ff: $99
	ld [hl], e                                       ; $7400: $73
	ei                                               ; $7401: $fb
	sbc e                                            ; $7402: $9b
	sub c                                            ; $7403: $91
	ld [hl+], a                                      ; $7404: $22
	cp e                                             ; $7405: $bb
	cp e                                             ; $7406: $bb
	ret c                                            ; $7407: $d8

	ld bc, $6780                                     ; $7408: $01 $80 $67
	db $dd                                           ; $740b: $dd
	ld b, a                                          ; $740c: $47
	db $fd                                           ; $740d: $fd
	ld b, a                                          ; $740e: $47
	db $fc                                           ; $740f: $fc
	ld h, a                                          ; $7410: $67
	db $fc                                           ; $7411: $fc
	ld [hl], a                                       ; $7412: $77
	db $fc                                           ; $7413: $fc
	ld [hl], a                                       ; $7414: $77
	db $dd                                           ; $7415: $dd
	cp a                                             ; $7416: $bf
	rst AddAOntoHL                                          ; $7417: $ef
	rst $38                                          ; $7418: $ff
	and $6f                                          ; $7419: $e6 $6f
	ldh a, [c]                                       ; $741b: $f2
	cp a                                             ; $741c: $bf
	pop de                                           ; $741d: $d1
	or $bf                                           ; $741e: $f6 $bf
	sbc a                                            ; $7420: $9f
	adc d                                            ; $7421: $8a
	cp h                                             ; $7422: $bc
	ret c                                            ; $7423: $d8

	ld l, b                                          ; $7424: $68
	call z, $e436                                    ; $7425: $cc $36 $e4
	ld e, h                                          ; $7428: $5c
	sbc c                                            ; $7429: $99
	or [hl]                                          ; $742a: $b6
	ld e, a                                          ; $742b: $5f
	sbc [hl]                                         ; $742c: $9e
	ld e, [hl]                                       ; $742d: $5e
	sbc a                                            ; $742e: $9f
	ld d, a                                          ; $742f: $57
	ld a, e                                          ; $7430: $7b
	cp $9e                                           ; $7431: $fe $9e
	ld d, l                                          ; $7433: $55
	ld [hl], e                                       ; $7434: $73
	cp $80                                           ; $7435: $fe $80
	ld [hl], l                                       ; $7437: $75
	sbc a                                            ; $7438: $9f
	dec [hl]                                         ; $7439: $35
	rst SubAFromDE                                          ; $743a: $df
	ld a, [hl-]                                      ; $743b: $3a
	rst SubAFromDE                                          ; $743c: $df
	xor d                                            ; $743d: $aa
	ld e, a                                          ; $743e: $5f
	xor d                                            ; $743f: $aa
	ld e, a                                          ; $7440: $5f
	adc a                                            ; $7441: $8f
	ld a, a                                          ; $7442: $7f
	sbc e                                            ; $7443: $9b
	ld a, h                                          ; $7444: $7c
	xor a                                            ; $7445: $af
	ld [hl], b                                       ; $7446: $70
	rst $38                                          ; $7447: $ff
	ld b, b                                          ; $7448: $40
	ld b, h                                          ; $7449: $44
	rst $38                                          ; $744a: $ff
	ld [hl+], a                                      ; $744b: $22
	rst $38                                          ; $744c: $ff
	or e                                             ; $744d: $b3
	rst $38                                          ; $744e: $ff
	sub e                                            ; $744f: $93
	cp $d9                                           ; $7450: $fe $d9
	ld a, a                                          ; $7452: $7f
	db $fd                                           ; $7453: $fd
	rst FarCall                                          ; $7454: $f7
	rst $38                                          ; $7455: $ff
	adc [hl]                                         ; $7456: $8e
	inc sp                                           ; $7457: $33
	rst $38                                          ; $7458: $ff
	ld de, $f8ff                                     ; $7459: $11 $ff $f8
	sbc a                                            ; $745c: $9f
	call z, $9cbb                                    ; $745d: $cc $bb $9c
	rst FarCall                                          ; $7460: $f7
	ld hl, sp-$48                                    ; $7461: $f8 $b8
	ldh a, [$ac]                                     ; $7463: $f0 $ac
	ld c, b                                          ; $7465: $48
	ld a, b                                          ; $7466: $78
	ld [hl], b                                       ; $7467: $70
	ei                                               ; $7468: $fb
	add b                                            ; $7469: $80
	add b                                            ; $746a: $80
	nop                                              ; $746b: $00
	ld b, b                                          ; $746c: $40
	add b                                            ; $746d: $80
	and b                                            ; $746e: $a0
	ret nz                                           ; $746f: $c0

	ret nc                                           ; $7470: $d0

	ldh [rBCPS], a                                   ; $7471: $e0 $68
	ldh a, [$78]                                     ; $7473: $f0 $78
	db $fc                                           ; $7475: $fc
	ld l, a                                          ; $7476: $6f
	cp $2f                                           ; $7477: $fe $2f
	ld sp, hl                                        ; $7479: $f9
	xor l                                            ; $747a: $ad
	db $fc                                           ; $747b: $fc

jr_063_747c:
	or a                                             ; $747c: $b7
	ldh a, [c]                                       ; $747d: $f2
	db $eb                                           ; $747e: $eb
	pop hl                                           ; $747f: $e1
	db $dd                                           ; $7480: $dd
	ret z                                            ; $7481: $c8

	rst FarCall                                          ; $7482: $f7
	sbc h                                            ; $7483: $9c
	rst $38                                          ; $7484: $ff
	db $fc                                           ; $7485: $fc
	add hl, hl                                       ; $7486: $29
	rst FarCall                                          ; $7487: $f7
	ld sp, $ff8b                                     ; $7488: $31 $8b $ff
	jr c, jr_063_747c                                ; $748b: $38 $ef

	sbc h                                            ; $748d: $9c
	rst FarCall                                          ; $748e: $f7
	rst SubAFromDE                                          ; $748f: $df
	ld [hl], e                                       ; $7490: $73
	rst AddAOntoHL                                          ; $7491: $ef
	jr c, @+$01                                      ; $7492: $38 $ff

	jr @+$01                                         ; $7494: $18 $ff

	adc h                                            ; $7496: $8c
	rst $38                                          ; $7497: $ff
	add c                                            ; $7498: $81
	rst $38                                          ; $7499: $ff
	ld bc, $00ff                                     ; $749a: $01 $ff $00
	rrca                                             ; $749d: $0f
	cp $8b                                           ; $749e: $fe $8b
	jr jr_063_74a2                                   ; $74a0: $18 $00

jr_063_74a2:
	inc e                                            ; $74a2: $1c
	nop                                              ; $74a3: $00
	ld e, $00                                        ; $74a4: $1e $00
	inc c                                            ; $74a6: $0c
	rst $38                                          ; $74a7: $ff
	adc $7b                                          ; $74a8: $ce $7b
	rst SubAFromBC                                          ; $74aa: $e7
	cp l                                             ; $74ab: $bd
	di                                               ; $74ac: $f3
	sbc h                                            ; $74ad: $9c
	ld a, e                                          ; $74ae: $7b
	rst $38                                          ; $74af: $ff
	rst $38                                          ; $74b0: $ff
	add $ff                                          ; $74b1: $c6 $ff
	ld hl, $a273                                     ; $74b3: $21 $73 $a2
	add b                                            ; $74b6: $80
	sbc a                                            ; $74b7: $9f
	rst FarCall                                          ; $74b8: $f7
	ld a, [$f0bb]                                    ; $74b9: $fa $bb $f0
	xor [hl]                                         ; $74bc: $ae
	ld c, c                                          ; $74bd: $49
	ld a, a                                          ; $74be: $7f
	ld [hl], c                                       ; $74bf: $71
	rrca                                             ; $74c0: $0f
	ld bc, $030d                                     ; $74c1: $01 $0d $03
	rra                                              ; $74c4: $1f
	inc bc                                           ; $74c5: $03
	dec de                                           ; $74c6: $1b
	rlca                                             ; $74c7: $07
	dec a                                            ; $74c8: $3d
	rlca                                             ; $74c9: $07
	dec [hl]                                         ; $74ca: $35
	rrca                                             ; $74cb: $0f
	ld l, h                                          ; $74cc: $6c
	rra                                              ; $74cd: $1f
	db $fc                                           ; $74ce: $fc
	ld a, a                                          ; $74cf: $7f
	db $fc                                           ; $74d0: $fc
	sbc a                                            ; $74d1: $9f
	inc e                                            ; $74d2: $1c
	or a                                             ; $74d3: $b7
	ld a, [hl]                                       ; $74d4: $7e
	daa                                              ; $74d5: $27
	add b                                            ; $74d6: $80
	sbc $67                                          ; $74d7: $de $67
	ei                                               ; $74d9: $fb
	ld c, e                                          ; $74da: $4b
	cp a                                             ; $74db: $bf
	call $94f7                                       ; $74dc: $cd $f7 $94
	cp a                                             ; $74df: $bf
	jr jr_063_7551                                   ; $74e0: $18 $6f

	add hl, hl                                       ; $74e2: $29
	sbc $52                                          ; $74e3: $de $52

jr_063_74e5:
	call nz, Call_063_44ff                           ; $74e5: $c4 $ff $44
	rst $38                                          ; $74e8: $ff
	ld h, h                                          ; $74e9: $64
	rst $38                                          ; $74ea: $ff
	xor [hl]                                         ; $74eb: $ae
	rst $38                                          ; $74ec: $ff
	ld [$ba7f], a                                    ; $74ed: $ea $7f $ba
	ld a, a                                          ; $74f0: $7f
	ld a, [$da7f]                                    ; $74f1: $fa $7f $da
	ld a, a                                          ; $74f4: $7f
	ld l, d                                          ; $74f5: $6a
	add b                                            ; $74f6: $80
	rst SubAFromDE                                          ; $74f7: $df
	ld sp, hl                                        ; $74f8: $f9
	xor a                                            ; $74f9: $af
	ld sp, hl                                        ; $74fa: $f9
	adc a                                            ; $74fb: $8f
	jp hl                                            ; $74fc: $e9


	rst SubAFromDE                                          ; $74fd: $df
	reti                                             ; $74fe: $d9


	cp a                                             ; $74ff: $bf
	cp b                                             ; $7500: $b8
	rst $38                                          ; $7501: $ff
	ld a, [$3afd]                                    ; $7502: $fa $fd $3a

jr_063_7505:
	db $fd                                           ; $7505: $fd
	jr z, jr_063_7505                                ; $7506: $28 $fd

	inc l                                            ; $7508: $2c
	cp [hl]                                          ; $7509: $be
	inc l                                            ; $750a: $2c
	cp [hl]                                          ; $750b: $be
	inc [hl]                                         ; $750c: $34
	cp [hl]                                          ; $750d: $be
	sub [hl]                                         ; $750e: $96
	rst $38                                          ; $750f: $ff
	sub [hl]                                         ; $7510: $96
	rst SubAFromDE                                          ; $7511: $df
	sub [hl]                                         ; $7512: $96
	rst SubAFromDE                                          ; $7513: $df
	set 7, a                                         ; $7514: $cb $ff
	adc a                                            ; $7516: $8f
	ld c, c                                          ; $7517: $49
	rst AddAOntoHL                                          ; $7518: $ef
	ld h, h                                          ; $7519: $64
	rst $38                                          ; $751a: $ff
	inc h                                            ; $751b: $24
	rst $38                                          ; $751c: $ff
	sub d                                            ; $751d: $92
	rst $38                                          ; $751e: $ff
	ret                                              ; $751f: $c9


	rst $38                                          ; $7520: $ff
	rst $38                                          ; $7521: $ff
	sbc a                                            ; $7522: $9f
	rst $38                                          ; $7523: $ff
	ld bc, $02fe                                     ; $7524: $01 $fe $02
	ld a, [hl-]                                      ; $7527: $3a
	ldh [$98], a                                     ; $7528: $e0 $98
	ret nc                                           ; $752a: $d0

	rst FarCall                                          ; $752b: $f7
	cp b                                             ; $752c: $b8
	sbc a                                            ; $752d: $9f
	adc e                                            ; $752e: $8b
	cp a                                             ; $752f: $bf
	reti                                             ; $7530: $d9


	ld l, [hl]                                       ; $7531: $6e
	ldh [rSCX], a                                    ; $7532: $e0 $43
	nop                                              ; $7534: $00
	sub e                                            ; $7535: $93
	nop                                              ; $7536: $00
	rst $38                                          ; $7537: $ff
	jr c, @+$01                                      ; $7538: $38 $ff

	db $fc                                           ; $753a: $fc
	cp a                                             ; $753b: $bf
	sbc b                                            ; $753c: $98
	cp b                                             ; $753d: $b8
	ld [hl], b                                       ; $753e: $70
	db $ec                                           ; $753f: $ec
	ld [$7b38], sp                                   ; $7540: $08 $38 $7b
	nop                                              ; $7543: $00
	ld b, e                                          ; $7544: $43
	jr nz, jr_063_74e5                               ; $7545: $20 $9e

	add b                                            ; $7547: $80
	ld a, e                                          ; $7548: $7b

Jump_063_7549:
	sbc $9e                                          ; $7549: $de $9e
	ld bc, $2023                                     ; $754b: $01 $23 $20
	ld a, a                                          ; $754e: $7f
	db $e4                                           ; $754f: $e4
	ld a, [hl]                                       ; $7550: $7e

jr_063_7551:
	xor h                                            ; $7551: $ac
	ld a, a                                          ; $7552: $7f
	jp nz, $9f9c                                     ; $7553: $c2 $9c $9f

	cp e                                             ; $7556: $bb
	ldh a, [c]                                       ; $7557: $f2
	ld h, a                                          ; $7558: $67
	jr nz, @+$5d                                     ; $7559: $20 $5b

	add b                                            ; $755b: $80
	sbc [hl]                                         ; $755c: $9e
	call c, $807b                                    ; $755d: $dc $7b $80
	sbc [hl]                                         ; $7560: $9e
	rst SubAFromBC                                          ; $7561: $e7
	ld l, e                                          ; $7562: $6b
	add b                                            ; $7563: $80
	sbc d                                            ; $7564: $9a
	adc b                                            ; $7565: $88
	cp a                                             ; $7566: $bf
	ret c                                            ; $7567: $d8

	ld l, c                                          ; $7568: $69
	call $804b                                       ; $7569: $cd $4b $80
	sbc h                                            ; $756c: $9c
	scf                                              ; $756d: $37
	rst $38                                          ; $756e: $ff
	di                                               ; $756f: $f3
	ld [hl], e                                       ; $7570: $73
	add b                                            ; $7571: $80
	ld [hl], e                                       ; $7572: $73
	cp $98                                           ; $7573: $fe $98
	ld hl, sp+$78                                    ; $7575: $f8 $78
	db $ec                                           ; $7577: $ec
	db $ec                                           ; $7578: $ec
	or h                                             ; $7579: $b4
	ld a, b                                          ; $757a: $78
	jr nc, @+$31                                     ; $757b: $30 $2f

	add b                                            ; $757d: $80
	ld a, d                                          ; $757e: $7a
	and b                                            ; $757f: $a0
	rst SubAFromDE                                          ; $7580: $df
	ld bc, $804b                                     ; $7581: $01 $4b $80
	sbc [hl]                                         ; $7584: $9e
	adc $de                                          ; $7585: $ce $de
	rst $38                                          ; $7587: $ff
	ld [hl], a                                       ; $7588: $77
	add b                                            ; $7589: $80
	ld l, a                                          ; $758a: $6f
	cp $99                                           ; $758b: $fe $99
	ld a, b                                          ; $758d: $78
	sbc $df                                          ; $758e: $de $df
	rst FarCall                                          ; $7590: $f7
	ld a, c                                          ; $7591: $79
	ld a, a                                          ; $7592: $7f
	ld a, e                                          ; $7593: $7b
	add b                                            ; $7594: $80
	inc hl                                           ; $7595: $23
	and b                                            ; $7596: $a0
	sbc e                                            ; $7597: $9b
	ld [hl], b                                       ; $7598: $70
	db $fc                                           ; $7599: $fc
	add h                                            ; $759a: $84
	db $fc                                           ; $759b: $fc
	ld a, e                                          ; $759c: $7b
	and b                                            ; $759d: $a0
	dec hl                                           ; $759e: $2b
	ret nz                                           ; $759f: $c0

	sbc h                                            ; $75a0: $9c

jr_063_75a1:
	jr c, jr_063_75a1                                ; $75a1: $38 $fe

	add a                                            ; $75a3: $87
	ld l, a                                          ; $75a4: $6f
	ret nz                                           ; $75a5: $c0

	sub h                                            ; $75a6: $94
	inc a                                            ; $75a7: $3c
	db $10                                           ; $75a8: $10
	jr jr_063_75ab                                   ; $75a9: $18 $00

jr_063_75ab:
	and $c6                                          ; $75ab: $e6 $c6
	cp $7c                                           ; $75ad: $fe $7c
	ld a, h                                          ; $75af: $7c
	jr c, jr_063_75da                                ; $75b0: $38 $28

	cp $8d                                           ; $75b2: $fe $8d
	add hl, sp                                       ; $75b4: $39
	ld bc, $0307                                     ; $75b5: $01 $07 $03

jr_063_75b8:
	or [hl]                                          ; $75b8: $b6
	rst GetHLinHL                                          ; $75b9: $cf
	ld a, [$f5fe]                                    ; $75ba: $fa $fe $f5
	ld c, h                                          ; $75bd: $4c
	ei                                               ; $75be: $fb
	jr z, jr_063_75b8                                ; $75bf: $28 $f7

	sub c                                            ; $75c1: $91
	rst FarCall                                          ; $75c2: $f7
	ld bc, $02ef                                     ; $75c3: $01 $ef $02
	ld [hl], e                                       ; $75c6: $73
	ldh [$9e], a                                     ; $75c7: $e0 $9e
	ld b, h                                          ; $75c9: $44
	ld a, e                                          ; $75ca: $7b
	pop hl                                           ; $75cb: $e1
	sbc [hl]                                         ; $75cc: $9e
	jr nc, jr_063_75e2                               ; $75cd: $30 $13

	ldh [$73], a                                     ; $75cf: $e0 $73
	jp nz, $389e                                     ; $75d1: $c2 $9e $38

	ld a, e                                          ; $75d4: $7b
	ld c, d                                          ; $75d5: $4a
	cpl                                              ; $75d6: $2f
	ldh [$9e], a                                     ; $75d7: $e0 $9e
	ld l, b                                          ; $75d9: $68

jr_063_75da:
	ld [hl], e                                       ; $75da: $73
	ldh [c], a                                       ; $75db: $e2
	rst $38                                          ; $75dc: $ff
	ccf                                              ; $75dd: $3f
	ldh [$d1], a                                     ; $75de: $e0 $d1
	add d                                            ; $75e0: $82
	rst $38                                          ; $75e1: $ff

jr_063_75e2:
	rst SubAFromDE                                          ; $75e2: $df
	ld bc, $02de                                     ; $75e3: $01 $de $02
	sbc [hl]                                         ; $75e6: $9e
	dec b                                            ; $75e7: $05
	ld [hl], a                                       ; $75e8: $77
	ld hl, sp-$22                                    ; $75e9: $f8 $de
	inc bc                                           ; $75eb: $03
	adc l                                            ; $75ec: $8d
	rlca                                             ; $75ed: $07
	dec b                                            ; $75ee: $05

Jump_063_75ef:
	dec bc                                           ; $75ef: $0b
	dec bc                                           ; $75f0: $0b
	dec b                                            ; $75f1: $05
	dec d                                            ; $75f2: $15
	dec e                                            ; $75f3: $1d
	ld e, $0a                                        ; $75f4: $1e $0a
	rlca                                             ; $75f6: $07
	dec c                                            ; $75f7: $0d
	dec c                                            ; $75f8: $0d
	dec bc                                           ; $75f9: $0b
	dec de                                           ; $75fa: $1b
	inc de                                           ; $75fb: $13
	inc de                                           ; $75fc: $13
	rla                                              ; $75fd: $17
	dec hl                                           ; $75fe: $2b
	db $dd                                           ; $75ff: $dd
	dec sp                                           ; $7600: $3b
	sbc e                                            ; $7601: $9b
	ld a, [hl-]                                      ; $7602: $3a
	ld a, [hl+]                                      ; $7603: $2a
	dec hl                                           ; $7604: $2b
	ld [hl], $dd                                     ; $7605: $36 $dd
	ld h, $8c                                        ; $7607: $26 $8c
	daa                                              ; $7609: $27
	scf                                              ; $760a: $37
	scf                                              ; $760b: $37
	rra                                              ; $760c: $1f
	dec d                                            ; $760d: $15
	dec d                                            ; $760e: $15
	dec c                                            ; $760f: $0d
	add hl, bc                                       ; $7610: $09
	add hl, bc                                       ; $7611: $09
	dec b                                            ; $7612: $05
	rlca                                             ; $7613: $07
	inc de                                           ; $7614: $13
	dec de                                           ; $7615: $1b
	dec de                                           ; $7616: $1b
	dec bc                                           ; $7617: $0b
	rrca                                             ; $7618: $0f
	rrca                                             ; $7619: $0f
	rlca                                             ; $761a: $07
	rlca                                             ; $761b: $07
	ld [hl], a                                       ; $761c: $77
	ret                                              ; $761d: $c9


	ld a, e                                          ; $761e: $7b
	pop bc                                           ; $761f: $c1
	ld a, a                                          ; $7620: $7f
	ret nz                                           ; $7621: $c0

	ld [hl], e                                       ; $7622: $73
	pop bc                                           ; $7623: $c1
	rst SubAFromDE                                          ; $7624: $df
	ld b, $8f                                        ; $7625: $06 $8f
	ccf                                              ; $7627: $3f
	ld a, [bc]                                       ; $7628: $0a
	rlca                                             ; $7629: $07
	inc b                                            ; $762a: $04
	ld b, $0e                                        ; $762b: $06 $0e
	add hl, bc                                       ; $762d: $09
	add hl, bc                                       ; $762e: $09
	ccf                                              ; $762f: $3f
	dec c                                            ; $7630: $0d
	rlca                                             ; $7631: $07
	rlca                                             ; $7632: $07

Call_063_7633:
	dec b                                            ; $7633: $05
	dec c                                            ; $7634: $0d
	ld c, $0e                                        ; $7635: $0e $0e
	sbc $0d                                          ; $7637: $de $0d
	sbc $15                                          ; $7639: $de $15
	rst SubAFromDE                                          ; $763b: $df
	add hl, de                                       ; $763c: $19
	sbc $0a                                          ; $763d: $de $0a
	sbc $1a                                          ; $763f: $de $1a
	rst SubAFromDE                                          ; $7641: $df
	ld d, $93                                        ; $7642: $16 $93
	add hl, bc                                       ; $7644: $09
	dec hl                                           ; $7645: $2b
	dec hl                                           ; $7646: $2b
	dec sp                                           ; $7647: $3b
	ld [hl], e                                       ; $7648: $73
	ld d, e                                          ; $7649: $53
	ld d, e                                          ; $764a: $53
	db $d3                                           ; $764b: $d3
	ld d, $34                                        ; $764c: $16 $34
	inc [hl]                                         ; $764e: $34
	inc h                                            ; $764f: $24
	sbc $6c                                          ; $7650: $de $6c
	sbc h                                            ; $7652: $9c
	db $ec                                           ; $7653: $ec
	di                                               ; $7654: $f3
	jp hl                                            ; $7655: $e9


	sbc $a9                                          ; $7656: $de $a9
	sbc e                                            ; $7658: $9b
	jp nc, $1292                                     ; $7659: $d2 $92 $12

	call z, $d4dd                                    ; $765c: $cc $dd $d4
	sbc $a9                                          ; $765f: $de $a9
	add b                                            ; $7661: $80
	ld [de], a                                       ; $7662: $12
	ld d, d                                          ; $7663: $52
	inc d                                            ; $7664: $14
	dec d                                            ; $7665: $15
	inc b                                            ; $7666: $04
	inc l                                            ; $7667: $2c
	jp hl                                            ; $7668: $e9


	res 5, c                                         ; $7669: $cb $a9
	add hl, hl                                       ; $766b: $29
	ld b, e                                          ; $766c: $43
	ld b, d                                          ; $766d: $42
	ld d, d                                          ; $766e: $52
	ld d, d                                          ; $766f: $52
	ld d, $34                                        ; $7670: $16 $34
	ld bc, $0703                                     ; $7672: $01 $03 $07
	rrca                                             ; $7675: $0f
	ccf                                              ; $7676: $3f
	ld a, a                                          ; $7677: $7f
	rst $38                                          ; $7678: $ff
	rst $38                                          ; $7679: $ff
	xor l                                            ; $767a: $ad
	xor d                                            ; $767b: $aa
	cp h                                             ; $767c: $bc
	cp b                                             ; $767d: $b8
	ldh a, [$e0]                                     ; $767e: $f0 $e0
	ret nz                                           ; $7680: $c0

	sbc [hl]                                         ; $7681: $9e
	add b                                            ; $7682: $80
	reti                                             ; $7683: $d9


	rst $38                                          ; $7684: $ff
	sbc [hl]                                         ; $7685: $9e
	add b                                            ; $7686: $80
	ei                                               ; $7687: $fb
	ld l, e                                          ; $7688: $6b
	ld sp, hl                                        ; $7689: $f9
	rst FarCall                                          ; $768a: $f7
	adc a                                            ; $768b: $8f
	inc bc                                           ; $768c: $03
	dec c                                            ; $768d: $0d
	rla                                              ; $768e: $17
	dec sp                                           ; $768f: $3b
	inc [hl]                                         ; $7690: $34
	ld e, c                                          ; $7691: $59
	ld [hl], d                                       ; $7692: $72
	rst SubAFromHL                                          ; $7693: $d7
	inc bc                                           ; $7694: $03
	ld c, $18                                        ; $7695: $0e $18
	inc [hl]                                         ; $7697: $34
	dec hl                                           ; $7698: $2b
	halt                                             ; $7699: $76
	ld l, l                                          ; $769a: $6d
	jp hl                                            ; $769b: $e9


	ldh [$c1], a                                     ; $769c: $e0 $c1
	jp c, $9e0a                                      ; $769e: $da $0a $9e

	ld a, [de]                                       ; $76a1: $1a
	sbc $da                                          ; $76a2: $de $da
	rst SubAFromDE                                          ; $76a4: $df
	sbc d                                            ; $76a5: $9a
	sbc e                                            ; $76a6: $9b
	cp e                                             ; $76a7: $bb
	cp a                                             ; $76a8: $bf
	cp a                                             ; $76a9: $bf
	ld d, $de                                        ; $76aa: $16 $de
	dec d                                            ; $76ac: $15
	sbc [hl]                                         ; $76ad: $9e
	cpl                                              ; $76ae: $2f
	ld a, e                                          ; $76af: $7b
	ld l, a                                          ; $76b0: $6f
	rst SubAFromDE                                          ; $76b1: $df
	ccf                                              ; $76b2: $3f
	sbc $7f                                          ; $76b3: $de $7f
	add b                                            ; $76b5: $80
	ld hl, sp-$1d                                    ; $76b6: $f8 $e3
	add b                                            ; $76b8: $80
	jr nc, jr_063_7703                               ; $76b9: $30 $48

	ld b, b                                          ; $76bb: $40
	sub h                                            ; $76bc: $94
	and d                                            ; $76bd: $a2
	ret nc                                           ; $76be: $d0

	xor c                                            ; $76bf: $a9
	ret nc                                           ; $76c0: $d0

	call z, $8787                                    ; $76c1: $cc $87 $87
	inc bc                                           ; $76c4: $03
	ld bc, $0001                                     ; $76c5: $01 $01 $00
	ld [$51f6], sp                                   ; $76c8: $08 $f6 $51
	ld [hl], d                                       ; $76cb: $72
	ld [hl], c                                       ; $76cc: $71
	jr nc, jr_063_7700                               ; $76cd: $30 $31

	jr z, @+$16                                      ; $76cf: $28 $14

	ld [$8c8c], sp                                   ; $76d1: $08 $8c $8c
	adc [hl]                                         ; $76d4: $8e
	rst SubAFromDE                                          ; $76d5: $df
	adc $9d                                          ; $76d6: $ce $9d
	rst JumpTable                                          ; $76d8: $c7
	db $e3                                           ; $76d9: $e3
	ei                                               ; $76da: $fb
	sbc l                                            ; $76db: $9d
	ccf                                              ; $76dc: $3f
	adc $6b                                          ; $76dd: $ce $6b
	ld hl, sp-$72                                    ; $76df: $f8 $8e
	pop af                                           ; $76e1: $f1
	ld h, b                                          ; $76e2: $60
	sbc [hl]                                         ; $76e3: $9e
	ldh [$08], a                                     ; $76e4: $e0 $08
	ld l, h                                          ; $76e6: $6c
	and b                                            ; $76e7: $a0
	add a                                            ; $76e8: $87

Call_063_76e9:
	sbc c                                            ; $76e9: $99
	sbc a                                            ; $76ea: $9f
	ld h, c                                          ; $76eb: $61
	rra                                              ; $76ec: $1f
	rst FarCall                                          ; $76ed: $f7
	sbc h                                            ; $76ee: $9c
	ld h, b                                          ; $76ef: $60
	add a                                            ; $76f0: $87
	sbc c                                            ; $76f1: $99
	ldh [$c1], a                                     ; $76f2: $e0 $c1
	sbc l                                            ; $76f4: $9d
	ld e, h                                          ; $76f5: $5c
	ld e, [hl]                                       ; $76f6: $5e
	call c, $9d57                                    ; $76f7: $dc $57 $9d
	ld d, l                                          ; $76fa: $55
	cp $da                                           ; $76fb: $fe $da
	rst $38                                          ; $76fd: $ff
	sub a                                            ; $76fe: $97
	ld d, l                                          ; $76ff: $55

jr_063_7700:
	ld c, c                                          ; $7700: $49
	ld l, e                                          ; $7701: $6b
	ld l, a                                          ; $7702: $6f

jr_063_7703:
	cp $06                                           ; $7703: $fe $06
	sbc e                                            ; $7705: $9b
	ld bc, $ffde                                     ; $7706: $01 $de $ff
	add b                                            ; $7709: $80
	cp $fc                                           ; $770a: $fe $fc
	inc b                                            ; $770c: $04
	sbc d                                            ; $770d: $9a
	ld bc, $440e                                     ; $770e: $01 $0e $44
	db $10                                           ; $7711: $10
	rlca                                             ; $7712: $07
	jr jr_063_7735                                   ; $7713: $18 $20

	ld [hl], b                                       ; $7715: $70
	add c                                            ; $7716: $81
	pop af                                           ; $7717: $f1
	add e                                            ; $7718: $83
	rrca                                             ; $7719: $0f
	ld hl, sp-$1f                                    ; $771a: $f8 $e1
	rst JumpTable                                          ; $771c: $c7
	adc a                                            ; $771d: $8f
	ld a, [hl]                                       ; $771e: $7e
	ld b, h                                          ; $771f: $44
	inc l                                            ; $7720: $2c
	sub b                                            ; $7721: $90
	ld c, b                                          ; $7722: $48
	and [hl]                                         ; $7723: $a6
	ld b, c                                          ; $7724: $41
	xor b                                            ; $7725: $a8
	ld d, h                                          ; $7726: $54
	add hl, sp                                       ; $7727: $39
	inc de                                           ; $7728: $13
	ld a, [hl]                                       ; $7729: $7e
	ld b, e                                          ; $772a: $43
	ld a, a                                          ; $772b: $7f
	ld d, c                                          ; $772c: $51
	ld l, [hl]                                       ; $772d: $6e
	cp h                                             ; $772e: $bc
	sbc e                                            ; $772f: $9b
	ld l, b                                          ; $7730: $68
	inc a                                            ; $7731: $3c
	ld l, $fb                                        ; $7732: $2e $fb
	ld l, a                                          ; $7734: $6f

jr_063_7735:
	ld hl, sp-$6e                                    ; $7735: $f8 $92
	ld a, $ef                                        ; $7737: $3e $ef
	dec l                                            ; $7739: $2d
	sub $3f                                          ; $773a: $d6 $3f

Call_063_773c:
	ret nz                                           ; $773c: $c0

	nop                                              ; $773d: $00
	rst $38                                          ; $773e: $ff
	nop                                              ; $773f: $00
	and $f7                                          ; $7740: $e6 $f7
	rst $38                                          ; $7742: $ff
	rst $38                                          ; $7743: $ff
	ld [hl], a                                       ; $7744: $77
	ld hl, sp-$62                                    ; $7745: $f8 $9e
	ld sp, hl                                        ; $7747: $f9
	ldh [$c0], a                                     ; $7748: $e0 $c0
	sbc c                                            ; $774a: $99
	add b                                            ; $774b: $80
	ret nz                                           ; $774c: $c0

	ldh a, [$f6]                                     ; $774d: $f0 $f6
	jp Jump_063_7a81                                 ; $774f: $c3 $81 $7a


	ld e, b                                          ; $7752: $58
	sbc e                                            ; $7753: $9b
	add b                                            ; $7754: $80
	jr nz, jr_063_7760                               ; $7755: $20 $09

	inc bc                                           ; $7757: $03
	ld sp, hl                                        ; $7758: $f9
	sbc l                                            ; $7759: $9d
	db $10                                           ; $775a: $10
	ld hl, sp-$07                                    ; $775b: $f8 $f9
	adc a                                            ; $775d: $8f
	db $fc                                           ; $775e: $fc
	ld h, a                                          ; $775f: $67

jr_063_7760:
	ld sp, $0c18                                     ; $7760: $31 $18 $0c
	ld b, $03                                        ; $7763: $06 $03
	ld bc, $83f8                                     ; $7765: $01 $f8 $83
	ret nz                                           ; $7768: $c0

	ldh [$f0], a                                     ; $7769: $e0 $f0
	ld hl, sp-$04                                    ; $776b: $f8 $fc
	cp $f9                                           ; $776d: $fe $f9
	sub a                                            ; $776f: $97
	rst $38                                          ; $7770: $ff
	cp a                                             ; $7771: $bf
	ccf                                              ; $7772: $3f
	rst $38                                          ; $7773: $ff
	rst AddAOntoHL                                          ; $7774: $ef
	rst FarCall                                          ; $7775: $f7
	db $fd                                           ; $7776: $fd
	halt                                             ; $7777: $76
	ei                                               ; $7778: $fb
	sbc l                                            ; $7779: $9d
	ld a, b                                          ; $777a: $78
	ld sp, $f86b                                     ; $777b: $31 $6b $f8
	sub c                                            ; $777e: $91
	rst GetHLinHL                                          ; $777f: $cf
	adc $c7                                          ; $7780: $ce $c7
	inc a                                            ; $7782: $3c
	ld [hl], e                                       ; $7783: $73
	ld c, $e3                                        ; $7784: $0e $e3
	inc c                                            ; $7786: $0c
	pop af                                           ; $7787: $f1
	ld sp, $c3f8                                     ; $7788: $31 $f8 $c3
	ld a, h                                          ; $778b: $7c
	rrca                                             ; $778c: $0f
	ld a, e                                          ; $778d: $7b
	ld hl, sp-$20                                    ; $778e: $f8 $e0
	pop bc                                           ; $7790: $c1
	rst SubAFromDE                                          ; $7791: $df
	rra                                              ; $7792: $1f
	sbc l                                            ; $7793: $9d
	ld a, $be                                        ; $7794: $3e $be
	sbc $fe                                          ; $7796: $de $fe
	sub l                                            ; $7798: $95
	ld a, a                                          ; $7799: $7f
	rlca                                             ; $779a: $07
	rrca                                             ; $779b: $0f
	rra                                              ; $779c: $1f
	ld a, a                                          ; $779d: $7f
	ei                                               ; $779e: $fb
	di                                               ; $779f: $f3
	inc bc                                           ; $77a0: $03
	ld bc, $db7f                                     ; $77a1: $01 $7f $db
	ccf                                              ; $77a4: $3f
	sbc [hl]                                         ; $77a5: $9e
	rra                                              ; $77a6: $1f
	ld h, l                                          ; $77a7: $65
	or c                                             ; $77a8: $b1
	adc [hl]                                         ; $77a9: $8e
	ld e, $0c                                        ; $77aa: $1e $0c
	add c                                            ; $77ac: $81
	db $e3                                           ; $77ad: $e3
	ld h, c                                          ; $77ae: $61
	ld [bc], a                                       ; $77af: $02
	inc b                                            ; $77b0: $04
	adc b                                            ; $77b1: $88

jr_063_77b2:
	inc b                                            ; $77b2: $04
	ld [$4080], sp                                   ; $77b3: $08 $80 $40
	nop                                              ; $77b6: $00
	ld bc, $0602                                     ; $77b7: $01 $02 $06
	ld [hl], b                                       ; $77ba: $70
	ld a, [$9f97]                                    ; $77bb: $fa $97 $9f
	ei                                               ; $77be: $fb
	ld sp, hl                                        ; $77bf: $f9
	db $ec                                           ; $77c0: $ec
	and $f3                                          ; $77c1: $e6 $f3
	di                                               ; $77c3: $f3
	rst FarCall                                          ; $77c4: $f7
	ld h, a                                          ; $77c5: $67
	ld a, [de]                                       ; $77c6: $1a
	ld h, a                                          ; $77c7: $67
	ld hl, sp-$70                                    ; $77c8: $f8 $90
	ld h, b                                          ; $77ca: $60
	sub b                                            ; $77cb: $90
	ret z                                            ; $77cc: $c8

	or h                                             ; $77cd: $b4
	ld l, d                                          ; $77ce: $6a
	or a                                             ; $77cf: $b7
	db $db                                           ; $77d0: $db
	db $ed                                           ; $77d1: $ed
	ldh [rSVBK], a                                   ; $77d2: $e0 $70
	jr c, jr_063_77b2                                ; $77d4: $38 $dc

	cp [hl]                                          ; $77d6: $be
	rst SubAFromDE                                          ; $77d7: $df
	rst AddAOntoHL                                          ; $77d8: $ef
	ld h, a                                          ; $77d9: $67
	ldh [$e0], a                                     ; $77da: $e0 $e0
	ret z                                            ; $77dc: $c8

	sbc [hl]                                         ; $77dd: $9e
	and e                                            ; $77de: $a3
	jp c, $dca2                                      ; $77df: $da $a2 $dc

	ei                                               ; $77e2: $fb
	sbc $ff                                          ; $77e3: $de $ff
	adc h                                            ; $77e5: $8c
	cp a                                             ; $77e6: $bf
	ld a, a                                          ; $77e7: $7f
	rra                                              ; $77e8: $1f
	rrca                                             ; $77e9: $0f
	rrca                                             ; $77ea: $0f
	scf                                              ; $77eb: $37
	rst GetHLinHL                                          ; $77ec: $cf
	rra                                              ; $77ed: $1f
	rst $38                                          ; $77ee: $ff
	ld l, b                                          ; $77ef: $68
	inc de                                           ; $77f0: $13
	ld [$3008], sp                                   ; $77f1: $08 $08 $30
	ret nz                                           ; $77f4: $c0

	db $10                                           ; $77f5: $10
	ld h, b                                          ; $77f6: $60
	ret nz                                           ; $77f7: $c0

	add b                                            ; $77f8: $80
	ld [hl], e                                       ; $77f9: $73
	add h                                            ; $77fa: $84
	sub a                                            ; $77fb: $97
	rra                                              ; $77fc: $1f
	inc hl                                           ; $77fd: $23
	ld [hl], b                                       ; $77fe: $70
	db $fc                                           ; $77ff: $fc
	sbc a                                            ; $7800: $9f
	rst SubAFromBC                                          ; $7801: $e7
	ld [hl], c                                       ; $7802: $71
	ccf                                              ; $7803: $3f
	ld sp, hl                                        ; $7804: $f9
	sub d                                            ; $7805: $92
	ld e, $8c                                        ; $7806: $1e $8c
	call c, $3478                                    ; $7808: $dc $78 $34
	ld a, b                                          ; $780b: $78
	db $f4                                           ; $780c: $f4
	ld [$8080], a                                    ; $780d: $ea $80 $80
	ld b, b                                          ; $7810: $40
	ld b, b                                          ; $7811: $40
	ret nz                                           ; $7812: $c0

	sbc $a0                                          ; $7813: $de $a0
	rst SubAFromDE                                          ; $7815: $df
	add b                                            ; $7816: $80
	sbc $c0                                          ; $7817: $de $c0
	sbc $e0                                          ; $7819: $de $e0
	db $dd                                           ; $781b: $dd
	ld d, b                                          ; $781c: $50
	sbc [hl]                                         ; $781d: $9e
	ld l, b                                          ; $781e: $68
	sbc $a8                                          ; $781f: $de $a8
	db $dd                                           ; $7821: $dd
	ldh a, [$dd]                                     ; $7822: $f0 $dd
	ld hl, sp-$21                                    ; $7824: $f8 $df
	add sp, -$66                                     ; $7826: $e8 $9a
	ret z                                            ; $7828: $c8

	ret c                                            ; $7829: $d8

	ret c                                            ; $782a: $d8

	ld hl, sp-$08                                    ; $782b: $f8 $f8
	db $db                                           ; $782d: $db
	cp b                                             ; $782e: $b8
	rst SubAFromDE                                          ; $782f: $df
	sbc b                                            ; $7830: $98
	sbc h                                            ; $7831: $9c
	ret c                                            ; $7832: $d8

	or b                                             ; $7833: $b0
	or b                                             ; $7834: $b0
	call c, $9e30                                    ; $7835: $dc $30 $9e
	db $10                                           ; $7838: $10
	jp c, $d9d0                                      ; $7839: $da $d0 $d9

	ldh a, [$9c]                                     ; $783c: $f0 $9c
	ldh [rAUD1SWEEP], a                              ; $783e: $e0 $10
	db $10                                           ; $7840: $10
	db $dd                                           ; $7841: $dd
	ld d, b                                          ; $7842: $50
	sbc d                                            ; $7843: $9a
	ld [hl], b                                       ; $7844: $70
	ld h, b                                          ; $7845: $60
	ldh [$7f], a                                     ; $7846: $e0 $7f
	add b                                            ; $7848: $80
	ld [hl], d                                       ; $7849: $72
	db $fd                                           ; $784a: $fd
	sbc [hl]                                         ; $784b: $9e
	ldh [$da], a                                     ; $784c: $e0 $da
	rst $38                                          ; $784e: $ff
	sub e                                            ; $784f: $93
	pop bc                                           ; $7850: $c1
	ld c, $3e                                        ; $7851: $0e $3e
	add c                                            ; $7853: $81
	cpl                                              ; $7854: $2f
	or c                                             ; $7855: $b1
	add $d4                                          ; $7856: $c6 $d4
	jr nc, @-$1e                                     ; $7858: $30 $e0

	ld b, b                                          ; $785a: $40
	ld b, b                                          ; $785b: $40
	ld [hl], a                                       ; $785c: $77
	ld [hl], a                                       ; $785d: $77
	sub d                                            ; $785e: $92
	cpl                                              ; $785f: $2f
	ld c, h                                          ; $7860: $4c
	jr c, jr_063_78ab                                ; $7861: $38 $48

	inc l                                            ; $7863: $2c
	ld e, [hl]                                       ; $7864: $5e
	xor a                                            ; $7865: $af
	ld d, a                                          ; $7866: $57
	nop                                              ; $7867: $00
	inc bc                                           ; $7868: $03
	rlca                                             ; $7869: $07
	rlca                                             ; $786a: $07
	inc bc                                           ; $786b: $03
	ld l, c                                          ; $786c: $69
	sbc a                                            ; $786d: $9f
	ld c, l                                          ; $786e: $4d
	ldh a, [hDisp1_WX]                                     ; $786f: $f0 $96
	ld h, b                                          ; $7871: $60
	jr jr_063_7878                                   ; $7872: $18 $04

	ld [bc], a                                       ; $7874: $02
	add c                                            ; $7875: $81
	ld d, c                                          ; $7876: $51
	nop                                              ; $7877: $00

jr_063_7878:
	add b                                            ; $7878: $80
	ldh [$7a], a                                     ; $7879: $e0 $7a
	ld [de], a                                       ; $787b: $12
	sub l                                            ; $787c: $95
	ld a, a                                          ; $787d: $7f
	xor a                                            ; $787e: $af
	adc b                                            ; $787f: $88
	ld [hl], d                                       ; $7880: $72
	scf                                              ; $7881: $37
	ld l, c                                          ; $7882: $69
	ld e, e                                          ; $7883: $5b
	call $c245                                       ; $7884: $cd $45 $c2
	ld [hl], l                                       ; $7887: $75

jr_063_7888:
	ld [hl], e                                       ; $7888: $73
	adc e                                            ; $7889: $8b
	jr nz, jr_063_78bc                               ; $788a: $20 $30

	jr c, jr_063_78cb                                ; $788c: $38 $3d

	ld b, d                                          ; $788e: $42
	ld b, b                                          ; $788f: $40
	and b                                            ; $7890: $a0
	ldh [$60], a                                     ; $7891: $e0 $60
	jr nz, jr_063_7895                               ; $7893: $20 $00

jr_063_7895:
	add b                                            ; $7895: $80
	dec a                                            ; $7896: $3d
	ccf                                              ; $7897: $3f
	rra                                              ; $7898: $1f
	rra                                              ; $7899: $1f
	sbc a                                            ; $789a: $9f
	rst SubAFromDE                                          ; $789b: $df
	rst $38                                          ; $789c: $ff
	ld a, a                                          ; $789d: $7f
	ld [hl], a                                       ; $789e: $77
	ld b, b                                          ; $789f: $40
	rst SubAFromDE                                          ; $78a0: $df
	ld b, b                                          ; $78a1: $40
	rst SubAFromDE                                          ; $78a2: $df
	jr nz, jr_063_7918                               ; $78a3: $20 $73

	ld b, b                                          ; $78a5: $40
	ld a, e                                          ; $78a6: $7b
	ccf                                              ; $78a7: $3f
	db $dd                                           ; $78a8: $dd
	jr nz, jr_063_7888                               ; $78a9: $20 $dd

jr_063_78ab:
	db $10                                           ; $78ab: $10
	db $dd                                           ; $78ac: $dd
	ldh [$dd], a                                     ; $78ad: $e0 $dd
	ldh a, [rAUD4GO]                                 ; $78af: $f0 $23
	nop                                              ; $78b1: $00
	db $dd                                           ; $78b2: $dd
	sbc c                                            ; $78b3: $99
	sub h                                            ; $78b4: $94
	ld de, $9944                                     ; $78b5: $11 $44 $99
	adc b                                            ; $78b8: $88
	adc b                                            ; $78b9: $88
	ld b, h                                          ; $78ba: $44
	inc sp                                           ; $78bb: $33

jr_063_78bc:
	and $88                                          ; $78bc: $e6 $88
	adc b                                            ; $78be: $88
	ld de, $fb73                                     ; $78bf: $11 $73 $fb
	sbc [hl]                                         ; $78c2: $9e
	nop                                              ; $78c3: $00
	ld [hl], e                                       ; $78c4: $73
	ei                                               ; $78c5: $fb
	sbc [hl]                                         ; $78c6: $9e
	xor $7b                                          ; $78c7: $ee $7b
	db $ec                                           ; $78c9: $ec
	sub a                                            ; $78ca: $97

jr_063_78cb:
	nop                                              ; $78cb: $00
	sbc c                                            ; $78cc: $99
	sbc c                                            ; $78cd: $99
	rst $38                                          ; $78ce: $ff
	inc sp                                           ; $78cf: $33
	xor d                                            ; $78d0: $aa
	inc sp                                           ; $78d1: $33
	xor d                                            ; $78d2: $aa
	reti                                             ; $78d3: $d9


	ld bc, $a780                                     ; $78d4: $01 $80 $a7
	db $d3                                           ; $78d7: $d3
	call Call_063_47a5                               ; $78d8: $cd $a5 $47
	xor a                                            ; $78db: $af
	ld a, [de]                                       ; $78dc: $1a
	res 5, l                                         ; $78dd: $cb $ad
	ld e, [hl]                                       ; $78df: $5e
	ld a, d                                          ; $78e0: $7a
	sbc h                                            ; $78e1: $9c
	sub $b8                                          ; $78e2: $d6 $b8
	xor l                                            ; $78e4: $ad
	ldh a, [rBCPD]                                   ; $78e5: $f0 $69
	call nz, $05d0                                   ; $78e7: $c4 $d0 $05
	ld d, b                                          ; $78ea: $50
	add c                                            ; $78eb: $81
	and b                                            ; $78ec: $a0
	sub c                                            ; $78ed: $91
	and h                                            ; $78ee: $a4
	sub c                                            ; $78ef: $91
	add c                                            ; $78f0: $81
	or l                                             ; $78f1: $b5
	sub c                                            ; $78f2: $91
	cp l                                             ; $78f3: $bd
	ld c, c                                          ; $78f4: $49
	add b                                            ; $78f5: $80
	rst $38                                          ; $78f6: $ff
	call z, $a67f                                    ; $78f7: $cc $7f $a6
	ld a, a                                          ; $78fa: $7f
	sub a                                            ; $78fb: $97

jr_063_78fc:
	ld a, l                                          ; $78fc: $7d
	adc a                                            ; $78fd: $8f
	ld a, [hl]                                       ; $78fe: $7e
	xor [hl]                                         ; $78ff: $ae
	ld e, a                                          ; $7900: $5f
	scf                                              ; $7901: $37
	db $db                                           ; $7902: $db
	ccf                                              ; $7903: $3f
	push de                                          ; $7904: $d5
	ccf                                              ; $7905: $3f
	call nc, $da2d                                   ; $7906: $d4 $2d $da
	ld l, $dc                                        ; $7909: $2e $dc
	cpl                                              ; $790b: $2f
	rst SubAFromDE                                          ; $790c: $df
	ld l, e                                          ; $790d: $6b
	sbc a                                            ; $790e: $9f
	ld l, d                                          ; $790f: $6a
	sbc a                                            ; $7910: $9f
	ld l, [hl]                                       ; $7911: $6e
	sbc e                                            ; $7912: $9b
	ld l, [hl]                                       ; $7913: $6e
	sbc e                                            ; $7914: $9b
	add b                                            ; $7915: $80
	ld l, $db                                        ; $7916: $2e $db

jr_063_7918:
	ld a, [hl]                                       ; $7918: $7e
	ld a, a                                          ; $7919: $7f
	pop hl                                           ; $791a: $e1
	cp $97                                           ; $791b: $fe $97
	add sp, $6f                                      ; $791d: $e8 $6f
	sub b                                            ; $791f: $90
	push hl                                          ; $7920: $e5
	ld [de], a                                       ; $7921: $12
	sub l                                            ; $7922: $95
	ld [hl+], a                                      ; $7923: $22
	sub h                                            ; $7924: $94
	ld [hl+], a                                      ; $7925: $22
	add [hl]                                         ; $7926: $86
	jr nz, jr_063_792d                               ; $7927: $20 $04

	ld [bc], a                                       ; $7929: $02
	jr nz, jr_063_792e                               ; $792a: $20 $02

	ld [hl+], a                                      ; $792c: $22

jr_063_792d:
	ld [de], a                                       ; $792d: $12

jr_063_792e:
	xor d                                            ; $792e: $aa
	inc de                                           ; $792f: $13
	sbc $3b                                          ; $7930: $de $3b
	ld e, c                                          ; $7932: $59
	cp a                                             ; $7933: $bf
	sbc l                                            ; $7934: $9d
	add a                                            ; $7935: $87
	rst FarCall                                          ; $7936: $f7
	sbc $73                                          ; $7937: $de $73
	rst AddAOntoHL                                          ; $7939: $ef
	cp e                                             ; $793a: $bb
	rst $38                                          ; $793b: $ff
	sbc h                                            ; $793c: $9c
	rst $38                                          ; $793d: $ff
	db $e4                                           ; $793e: $e4
	rst FarCall                                          ; $793f: $f7
	ld c, a                                          ; $7940: $4f
	db $db                                           ; $7941: $db
	add hl, sp                                       ; $7942: $39
	rst FarCall                                          ; $7943: $f7
	di                                               ; $7944: $f3
	cp $5f                                           ; $7945: $fe $5f
	ld c, c                                          ; $7947: $49
	sub e                                            ; $7948: $93
	rst SubAFromDE                                          ; $7949: $df
	adc [hl]                                         ; $794a: $8e
	ld [$9580], a                                    ; $794b: $ea $80 $95
	db $dd                                           ; $794e: $dd
	ret nz                                           ; $794f: $c0

	adc e                                            ; $7950: $8b
	ldh [$f0], a                                     ; $7951: $e0 $f0
	ldh [$78], a                                     ; $7953: $e0 $78
	ldh a, [$7c]                                     ; $7955: $f0 $7c
	ld hl, sp+$3f                                    ; $7957: $f8 $3f
	ret nz                                           ; $7959: $c0

	db $fd                                           ; $795a: $fd
	ld [bc], a                                       ; $795b: $02
	db $ed                                           ; $795c: $ed
	ld [de], a                                       ; $795d: $12
	and l                                            ; $795e: $a5
	ld d, d                                          ; $795f: $52
	and h                                            ; $7960: $a4
	ld d, d                                          ; $7961: $52
	ld h, h                                          ; $7962: $64
	sub d                                            ; $7963: $92
	inc h                                            ; $7964: $24
	ld a, e                                          ; $7965: $7b
	cp $80                                           ; $7966: $fe $80
	jr z, jr_063_78fc                                ; $7968: $28 $92

	ld [hl+], a                                      ; $796a: $22
	ld a, [de]                                       ; $796b: $1a
	or e                                             ; $796c: $b3
	ld a, [de]                                       ; $796d: $1a
	ld d, l                                          ; $796e: $55
	sbc e                                            ; $796f: $9b
	reti                                             ; $7970: $d9


	sbc a                                            ; $7971: $9f
	cp c                                             ; $7972: $b9
	rst SubAFromHL                                          ; $7973: $d7
	db $dd                                           ; $7974: $dd
	rst FarCall                                          ; $7975: $f7
	rst AddAOntoHL                                          ; $7976: $ef
	ei                                               ; $7977: $fb
	rst $38                                          ; $7978: $ff
	reti                                             ; $7979: $d9


	rst $38                                          ; $797a: $ff
	xor b                                            ; $797b: $a8
	rst $38                                          ; $797c: $ff
	inc b                                            ; $797d: $04
	rst $38                                          ; $797e: $ff
	nop                                              ; $797f: $00
	rst $38                                          ; $7980: $ff
	add b                                            ; $7981: $80
	rst $38                                          ; $7982: $ff
	add b                                            ; $7983: $80
	ld b, e                                          ; $7984: $43
	add b                                            ; $7985: $80
	nop                                              ; $7986: $00
	sbc b                                            ; $7987: $98
	nop                                              ; $7988: $00
	ld b, $00                                        ; $7989: $06 $00
	rlca                                             ; $798b: $07
	inc b                                            ; $798c: $04
	ld b, $04                                        ; $798d: $06 $04
	rst FarCall                                          ; $798f: $f7
	add b                                            ; $7990: $80
	rst JumpTable                                          ; $7991: $c7
	ccf                                              ; $7992: $3f
	db $fc                                           ; $7993: $fc
	inc bc                                           ; $7994: $03
	ld e, a                                          ; $7995: $5f
	and b                                            ; $7996: $a0
	ld c, e                                          ; $7997: $4b
	and h                                            ; $7998: $a4
	dec c                                            ; $7999: $0d
	and d                                            ; $799a: $a2
	dec d                                            ; $799b: $15
	and d                                            ; $799c: $a2
	add [hl]                                         ; $799d: $86
	ld d, e                                          ; $799e: $53
	add d                                            ; $799f: $82
	ld d, c                                          ; $79a0: $51
	dec bc                                           ; $79a1: $0b
	ld de, $5913                                     ; $79a2: $11 $13 $59
	halt                                             ; $79a5: $76
	ld e, c                                          ; $79a6: $59
	jp z, $2a7d                                      ; $79a7: $ca $7d $2a

	db $fd                                           ; $79aa: $fd

jr_063_79ab:
	cp h                                             ; $79ab: $bc
	rst $38                                          ; $79ac: $ff
	cp [hl]                                          ; $79ad: $be
	db $eb                                           ; $79ae: $eb
	rst $38                                          ; $79af: $ff
	add a                                            ; $79b0: $87
	ld [hl], c                                       ; $79b1: $71
	rst $38                                          ; $79b2: $ff
	rra                                              ; $79b3: $1f
	rst $38                                          ; $79b4: $ff
	add b                                            ; $79b5: $80
	db $dd                                           ; $79b6: $dd
	ld a, $f7                                        ; $79b7: $3e $f7
	ld [hl], e                                       ; $79b9: $73
	rst AddAOntoHL                                          ; $79ba: $ef
	ld h, a                                          ; $79bb: $67
	cp l                                             ; $79bc: $bd
	ld a, [hl]                                       ; $79bd: $7e
	sub d                                            ; $79be: $92
	ld h, $3e                                        ; $79bf: $26 $3e
	inc e                                            ; $79c1: $1c
	rra                                              ; $79c2: $1f
	nop                                              ; $79c3: $00
	dec hl                                           ; $79c4: $2b
	nop                                              ; $79c5: $00
	rlca                                             ; $79c6: $07
	nop                                              ; $79c7: $00
	inc bc                                           ; $79c8: $03
	ld a, e                                          ; $79c9: $7b
	db $fc                                           ; $79ca: $fc
	add b                                            ; $79cb: $80
	ld b, $01                                        ; $79cc: $06 $01
	rrca                                             ; $79ce: $0f
	ld bc, $030f                                     ; $79cf: $01 $0f $03
	ld d, d                                          ; $79d2: $52
	ld e, a                                          ; $79d3: $5f
	jp z, $29cf                                      ; $79d4: $ca $cf $29

	rst AddAOntoHL                                          ; $79d7: $ef
	push de                                          ; $79d8: $d5
	scf                                              ; $79d9: $37
	ld l, h                                          ; $79da: $6c
	sbc a                                            ; $79db: $9f
	or [hl]                                          ; $79dc: $b6
	ld c, a                                          ; $79dd: $4f
	or d                                             ; $79de: $b2
	ld c, a                                          ; $79df: $4f
	ld a, [$da27]                                    ; $79e0: $fa $27 $da
	daa                                              ; $79e3: $27
	ld e, c                                          ; $79e4: $59
	or a                                             ; $79e5: $b7
	pop de                                           ; $79e6: $d1
	cp a                                             ; $79e7: $bf
	pop de                                           ; $79e8: $d1
	cp a                                             ; $79e9: $bf
	sub c                                            ; $79ea: $91

Call_063_79eb:
	sbc l                                            ; $79eb: $9d
	rst $38                                          ; $79ec: $ff
	ld c, e                                          ; $79ed: $4b
	ld a, e                                          ; $79ee: $7b
	cp $84                                           ; $79ef: $fe $84
	ld l, e                                          ; $79f1: $6b
	rst $38                                          ; $79f2: $ff
	ld l, $ff                                        ; $79f3: $2e $ff
	cp h                                             ; $79f5: $bc
	rst $38                                          ; $79f6: $ff
	db $fc                                           ; $79f7: $fc
	ld a, a                                          ; $79f8: $7f
	ld [$ef3f], a                                    ; $79f9: $ea $3f $ef
	sbc $fb                                          ; $79fc: $de $fb
	sub [hl]                                         ; $79fe: $96
	rst $38                                          ; $79ff: $ff
	ld a, [de]                                       ; $7a00: $1a
	db $db                                           ; $7a01: $db
	ld [hl], $fe                                     ; $7a02: $36 $fe
	daa                                              ; $7a04: $27
	cp h                                             ; $7a05: $bc
	ld l, a                                          ; $7a06: $6f
	db $fd                                           ; $7a07: $fd
	ld a, a                                          ; $7a08: $7f
	ld a, a                                          ; $7a09: $7f
	db $fd                                           ; $7a0a: $fd
	ei                                               ; $7a0b: $fb
	ld a, e                                          ; $7a0c: $7b
	cp $9b                                           ; $7a0d: $fe $9b
	db $eb                                           ; $7a0f: $eb
	db $fd                                           ; $7a10: $fd
	xor a                                            ; $7a11: $af
	ei                                               ; $7a12: $fb
	ld l, a                                          ; $7a13: $6f
	jr nz, jr_063_79ab                               ; $7a14: $20 $95

	rst $38                                          ; $7a16: $ff
	ld b, b                                          ; $7a17: $40
	rst FarCall                                          ; $7a18: $f7
	rrca                                             ; $7a19: $0f
	reti                                             ; $7a1a: $d9


	add hl, sp                                       ; $7a1b: $39
	rst $38                                          ; $7a1c: $ff
	rst $38                                          ; $7a1d: $ff
	ld e, c                                          ; $7a1e: $59
	db $d3                                           ; $7a1f: $d3
	ld b, a                                          ; $7a20: $47
	jr nz, jr_063_7a86                               ; $7a21: $20 $63

	ld b, b                                          ; $7a23: $40
	ld a, e                                          ; $7a24: $7b
	ld a, $77                                        ; $7a25: $3e $77
	ld b, b                                          ; $7a27: $40
	sbc [hl]                                         ; $7a28: $9e
	add [hl]                                         ; $7a29: $86
	ld c, e                                          ; $7a2a: $4b
	ld b, b                                          ; $7a2b: $40
	ld [hl], a                                       ; $7a2c: $77
	ld h, b                                          ; $7a2d: $60
	ld a, a                                          ; $7a2e: $7f
	db $e4                                           ; $7a2f: $e4
	ld [hl], a                                       ; $7a30: $77
	ld e, [hl]                                       ; $7a31: $5e
	sbc l                                            ; $7a32: $9d
	cp l                                             ; $7a33: $bd
	ld a, a                                          ; $7a34: $7f
	scf                                              ; $7a35: $37
	ld h, b                                          ; $7a36: $60
	ld h, e                                          ; $7a37: $63
	add b                                            ; $7a38: $80
	sbc d                                            ; $7a39: $9a
	ld e, $fb                                        ; $7a3a: $1e $fb
	sub $ff                                          ; $7a3c: $d6 $ff
	sbc d                                            ; $7a3e: $9a
	dec sp                                           ; $7a3f: $3b
	add b                                            ; $7a40: $80
	sbc b                                            ; $7a41: $98
	cp c                                             ; $7a42: $b9
	rst $38                                          ; $7a43: $ff
	sbc a                                            ; $7a44: $9f
	rst $38                                          ; $7a45: $ff
	db $f4                                           ; $7a46: $f4
	rst $38                                          ; $7a47: $ff
	ld b, b                                          ; $7a48: $40
	ld [hl], e                                       ; $7a49: $73
	sbc [hl]                                         ; $7a4a: $9e
	sbc d                                            ; $7a4b: $9a
	rra                                              ; $7a4c: $1f
	ld a, e                                          ; $7a4d: $7b
	ei                                               ; $7a4e: $fb
	rst $38                                          ; $7a4f: $ff
	sbc a                                            ; $7a50: $9f
	inc hl                                           ; $7a51: $23
	add b                                            ; $7a52: $80
	sbc d                                            ; $7a53: $9a
	nop                                              ; $7a54: $00
	jp $8000                                         ; $7a55: $c3 $00 $80


	add b                                            ; $7a58: $80
	ld b, a                                          ; $7a59: $47
	add b                                            ; $7a5a: $80
	ld a, [bc]                                       ; $7a5b: $0a
	ret nz                                           ; $7a5c: $c0

	sbc [hl]                                         ; $7a5d: $9e
	ld h, c                                          ; $7a5e: $61
	ld a, d                                          ; $7a5f: $7a
	cp [hl]                                          ; $7a60: $be
	ld a, a                                          ; $7a61: $7f
	and b                                            ; $7a62: $a0
	ld [hl], e                                       ; $7a63: $73
	jp nz, $ff99                                     ; $7a64: $c2 $99 $ff

	ld a, $f7                                        ; $7a67: $3e $f7
	ld [hl], a                                       ; $7a69: $77
	ld a, a                                          ; $7a6a: $7f
	ld a, $1b                                        ; $7a6b: $3e $1b
	ld h, b                                          ; $7a6d: $60
	sbc [hl]                                         ; $7a6e: $9e
	ld d, $03                                        ; $7a6f: $16 $03
	ld h, b                                          ; $7a71: $60
	sbc h                                            ; $7a72: $9c
	ld e, $7f                                        ; $7a73: $1e $7f
	ldh [rSCX], a                                    ; $7a75: $e0 $43
	ld h, b                                          ; $7a77: $60
	ld e, a                                          ; $7a78: $5f
	and b                                            ; $7a79: $a0
	sbc h                                            ; $7a7a: $9c
	ld e, $ff                                        ; $7a7b: $1e $ff
	ld b, c                                          ; $7a7d: $41
	ccf                                              ; $7a7e: $3f
	and b                                            ; $7a7f: $a0
	pop af                                           ; $7a80: $f1

Jump_063_7a81:
	ld h, [hl]                                       ; $7a81: $66
	nop                                              ; $7a82: $00
	rst SubAFromDE                                          ; $7a83: $df
	add hl, bc                                       ; $7a84: $09
	ld a, a                                          ; $7a85: $7f

jr_063_7a86:
	or $77                                           ; $7a86: $f6 $77
	ldh a, [c]                                       ; $7a88: $f2
	jp hl                                            ; $7a89: $e9


	ld a, d                                          ; $7a8a: $7a
	sub l                                            ; $7a8b: $95
	db $ec                                           ; $7a8c: $ec
	ld e, a                                          ; $7a8d: $5f
	ret nz                                           ; $7a8e: $c0

	sbc h                                            ; $7a8f: $9c
	rrca                                             ; $7a90: $0f
	ld b, $02                                        ; $7a91: $06 $02
	inc bc                                           ; $7a93: $03
	ret nz                                           ; $7a94: $c0

	rra                                              ; $7a95: $1f
	ret nz                                           ; $7a96: $c0

	sbc l                                            ; $7a97: $9d
	add hl, de                                       ; $7a98: $19
	add hl, bc                                       ; $7a99: $09
	sbc $0f                                          ; $7a9a: $de $0f
	rst SubAFromDE                                          ; $7a9c: $df
	ld b, $1b                                        ; $7a9d: $06 $1b
	ret nz                                           ; $7a9f: $c0

	cpl                                              ; $7aa0: $2f
	cp [hl]                                          ; $7aa1: $be
	ld e, a                                          ; $7aa2: $5f
	ret nz                                           ; $7aa3: $c0

	sbc [hl]                                         ; $7aa4: $9e
	rra                                              ; $7aa5: $1f
	inc de                                           ; $7aa6: $13
	cp a                                             ; $7aa7: $bf
	ld [hl], a                                       ; $7aa8: $77
	ret nz                                           ; $7aa9: $c0

	ld [hl], a                                       ; $7aaa: $77
	cp [hl]                                          ; $7aab: $be
	adc a                                            ; $7aac: $8f
	inc bc                                           ; $7aad: $03
	push af                                          ; $7aae: $f5
	db $dd                                           ; $7aaf: $dd
	ld bc, $0295                                     ; $7ab0: $01 $95 $02
	inc bc                                           ; $7ab3: $03
	inc bc                                           ; $7ab4: $03
	ld [bc], a                                       ; $7ab5: $02
	inc bc                                           ; $7ab6: $03
	ld [bc], a                                       ; $7ab7: $02
	dec b                                            ; $7ab8: $05
	ld b, $07                                        ; $7ab9: $06 $07
	inc b                                            ; $7abb: $04
	ld l, a                                          ; $7abc: $6f
	cp $f3                                           ; $7abd: $fe $f3
	db $db                                           ; $7abf: $db
	ld bc, $dd73                                     ; $7ac0: $01 $73 $dd
	ld a, e                                          ; $7ac3: $7b
	cp $7f                                           ; $7ac4: $fe $7f
	db $db                                           ; $7ac6: $db
	sbc [hl]                                         ; $7ac7: $9e
	dec b                                            ; $7ac8: $05
	ld a, e                                          ; $7ac9: $7b
	cp $7f                                           ; $7aca: $fe $7f
	ld a, [$fd7b]                                    ; $7acc: $fa $7b $fd
	ld a, e                                          ; $7acf: $7b
	cp $7f                                           ; $7ad0: $fe $7f
	call z, $fe77                                    ; $7ad2: $cc $77 $fe
	ld a, a                                          ; $7ad5: $7f
	ld hl, sp+$73                                    ; $7ad6: $f8 $73
	push hl                                          ; $7ad8: $e5
	sbc [hl]                                         ; $7ad9: $9e
	inc bc                                           ; $7ada: $03
	reti                                             ; $7adb: $d9


	ld bc, $dfff                                     ; $7adc: $01 $ff $df
	rrca                                             ; $7adf: $0f
	adc a                                            ; $7ae0: $8f
	ccf                                              ; $7ae1: $3f
	jr nc, jr_063_7b24                               ; $7ae2: $30 $40

	ld a, a                                          ; $7ae4: $7f
	sbc [hl]                                         ; $7ae5: $9e
	rst AddAOntoHL                                          ; $7ae6: $ef
	rst $38                                          ; $7ae7: $ff
	add c                                            ; $7ae8: $81
	ld a, a                                          ; $7ae9: $7f
	add b                                            ; $7aea: $80
	ccf                                              ; $7aeb: $3f
	rst $38                                          ; $7aec: $ff
	db $fc                                           ; $7aed: $fc
	inc bc                                           ; $7aee: $03
	rst AddAOntoHL                                          ; $7aef: $ef
	db $10                                           ; $7af0: $10
	ld [hl], a                                       ; $7af1: $77
	cp $9d                                           ; $7af2: $fe $9d
	rst SubAFromDE                                          ; $7af4: $df
	jr nz, @+$71                                     ; $7af5: $20 $6f

	cp $e9                                           ; $7af7: $fe $e9
	ld [hl], a                                       ; $7af9: $77
	sbc d                                            ; $7afa: $9a
	ld a, a                                          ; $7afb: $7f
	or h                                             ; $7afc: $b4
	add b                                            ; $7afd: $80
	rrca                                             ; $7afe: $0f
	inc c                                            ; $7aff: $0c
	ld e, $19                                        ; $7b00: $1e $19
	dec a                                            ; $7b02: $3d
	inc sp                                           ; $7b03: $33
	ld a, d                                          ; $7b04: $7a
	ld h, a                                          ; $7b05: $67
	ld [hl], l                                       ; $7b06: $75
	ld c, [hl]                                       ; $7b07: $4e
	db $eb                                           ; $7b08: $eb
	call c, $9ceb                                    ; $7b09: $dc $eb $9c
	rst SubAFromHL                                          ; $7b0c: $d7
	cp b                                             ; $7b0d: $b8
	sbc $b1                                          ; $7b0e: $de $b1
	inc l                                            ; $7b10: $2c
	di                                               ; $7b11: $f3
	add hl, sp                                       ; $7b12: $39
	and $71                                          ; $7b13: $e6 $71
	adc $63                                          ; $7b15: $ce $63
	call c, $9fe0                                    ; $7b17: $dc $e0 $9f
	pop hl                                           ; $7b1a: $e1
	sbc a                                            ; $7b1b: $9f
	jp nz, $bf80                                     ; $7b1c: $c2 $80 $bf

	call z, $9b3f                                    ; $7b1f: $cc $3f $9b
	ld a, a                                          ; $7b22: $7f
	xor h                                            ; $7b23: $ac

jr_063_7b24:
	ld a, a                                          ; $7b24: $7f
	db $e4                                           ; $7b25: $e4
	ld a, a                                          ; $7b26: $7f
	ld [hl], e                                       ; $7b27: $73
	rst $38                                          ; $7b28: $ff
	ld l, e                                          ; $7b29: $6b
	rst $38                                          ; $7b2a: $ff
	ld l, [hl]                                       ; $7b2b: $6e
	or $76                                           ; $7b2c: $f6 $76
	cp $76                                           ; $7b2e: $fe $76
	ld a, [$7eba]                                    ; $7b30: $fa $ba $7e
	xor d                                            ; $7b33: $aa
	ld a, [hl]                                       ; $7b34: $7e
	and l                                            ; $7b35: $a5
	ld a, a                                          ; $7b36: $7f
	xor h                                            ; $7b37: $ac
	ld [hl], a                                       ; $7b38: $77
	or a                                             ; $7b39: $b7
	ld a, d                                          ; $7b3a: $7a

jr_063_7b3b:
	cp e                                             ; $7b3b: $bb
	ld a, l                                          ; $7b3c: $7d
	add b                                            ; $7b3d: $80
	or l                                             ; $7b3e: $b5
	ld a, [hl]                                       ; $7b3f: $7e
	jp nc, $d1bf                                     ; $7b40: $d2 $bf $d1

	cp a                                             ; $7b43: $bf
	db $db                                           ; $7b44: $db
	cp h                                             ; $7b45: $bc
	db $ed                                           ; $7b46: $ed
	sbc [hl]                                         ; $7b47: $9e
	ld [$6bdf], a                                    ; $7b48: $ea $df $6b
	ld e, l                                          ; $7b4b: $5d
	ld l, l                                          ; $7b4c: $6d
	ld e, [hl]                                       ; $7b4d: $5e
	halt                                             ; $7b4e: $76
	ld l, a                                          ; $7b4f: $6f
	dec [hl]                                         ; $7b50: $35
	cpl                                              ; $7b51: $2f
	dec [hl]                                         ; $7b52: $35
	cpl                                              ; $7b53: $2f
	dec sp                                           ; $7b54: $3b

jr_063_7b55:
	ld [hl], $1a                                     ; $7b55: $36 $1a
	rla                                              ; $7b57: $17
	dec e                                            ; $7b58: $1d
	dec de                                           ; $7b59: $1b
	dec c                                            ; $7b5a: $0d
	dec bc                                           ; $7b5b: $0b
	ld c, $9e                                        ; $7b5c: $0e $9e
	dec c                                            ; $7b5e: $0d
	ld [hl], a                                       ; $7b5f: $77
	ld d, h                                          ; $7b60: $54
	rst SubAFromDE                                          ; $7b61: $df
	rst $38                                          ; $7b62: $ff
	add c                                            ; $7b63: $81
	ld bc, $c0ff                                     ; $7b64: $01 $ff $c0
	ccf                                              ; $7b67: $3f
	ldh [$1f], a                                     ; $7b68: $e0 $1f
	jr nc, jr_063_7b3b                               ; $7b6a: $30 $cf

	sbc b                                            ; $7b6c: $98
	rst SubAFromBC                                          ; $7b6d: $e7
	ld c, h                                          ; $7b6e: $4c
	di                                               ; $7b6f: $f3
	and [hl]                                         ; $7b70: $a6
	ld a, c                                          ; $7b71: $79
	db $d3                                           ; $7b72: $d3
	db $fc                                           ; $7b73: $fc
	add hl, hl                                       ; $7b74: $29
	cp $b4                                           ; $7b75: $fe $b4
	ld e, a                                          ; $7b77: $5f
	call c, $de2f                                    ; $7b78: $dc $2f $de
	daa                                              ; $7b7b: $27

jr_063_7b7c:
	db $ed                                           ; $7b7c: $ed
	rla                                              ; $7b7d: $17
	ld [$f717], a                                    ; $7b7e: $ea $17 $f7
	ld a, [bc]                                       ; $7b81: $0a
	ld b, a                                          ; $7b82: $47
	ld l, d                                          ; $7b83: $6a
	db $fd                                           ; $7b84: $fd
	rst SubAFromDE                                          ; $7b85: $df
	rra                                              ; $7b86: $1f
	add b                                            ; $7b87: $80
	ld [hl], b                                       ; $7b88: $70
	ld a, a                                          ; $7b89: $7f
	rst $38                                          ; $7b8a: $ff
	db $fc                                           ; $7b8b: $fc
	jp $f8ff                                         ; $7b8c: $c3 $ff $f8


	rlca                                             ; $7b8f: $07
	add b                                            ; $7b90: $80
	ld a, a                                          ; $7b91: $7f
	ld a, c                                          ; $7b92: $79
	ldh a, [$c7]                                     ; $7b93: $f0 $c7
	add b                                            ; $7b95: $80
	add h                                            ; $7b96: $84
	ld bc, $014b                     ; $7b97: $01 $4b $01
	sub l                                            ; $7b9a: $95
	inc bc                                           ; $7b9b: $03
	ld b, d                                          ; $7b9c: $42
	ld h, $0c                                        ; $7b9d: $26 $0c
	call nz, $8c15                                   ; $7b9f: $c4 $15 $8c
	ld l, e                                          ; $7ba2: $6b
	jr jr_063_7b7c                                   ; $7ba3: $18 $d7

	jr nc, jr_063_7b55                               ; $7ba5: $30 $ae

	add b                                            ; $7ba7: $80
	ld h, c                                          ; $7ba8: $61
	ld e, d                                          ; $7ba9: $5a
	rst JumpTable                                          ; $7baa: $c7
	and h                                            ; $7bab: $a4
	sbc a                                            ; $7bac: $9f
	ld c, l                                          ; $7bad: $4d

jr_063_7bae:
	dec sp                                           ; $7bae: $3b
	ld a, [hl-]                                      ; $7baf: $3a
	or $f7                                           ; $7bb0: $f6 $f7
	call z, $ff09                                    ; $7bb2: $cc $09 $ff
	rla                                              ; $7bb5: $17
	cp $7f                                           ; $7bb6: $fe $7f
	ld hl, sp-$61                                    ; $7bb8: $f8 $9f
	pop af                                           ; $7bba: $f1
	ld e, a                                          ; $7bbb: $5f
	ld [hl], b                                       ; $7bbc: $70
	ld a, [hl]                                       ; $7bbd: $7e
	ccf                                              ; $7bbe: $3f
	sbc $71                                          ; $7bbf: $de $71
	ld hl, sp+$21                                    ; $7bc1: $f8 $21
	pop af                                           ; $7bc3: $f1
	and b                                            ; $7bc4: $a0
	ld h, c                                          ; $7bc5: $61
	ld h, b                                          ; $7bc6: $60
	add b                                            ; $7bc7: $80
	sub c                                            ; $7bc8: $91
	nop                                              ; $7bc9: $00
	ldh a, [$c0]                                     ; $7bca: $f0 $c0
	jr nc, jr_063_7bae                               ; $7bcc: $30 $e0

	db $10                                           ; $7bce: $10
	ldh a, [$98]                                     ; $7bcf: $f0 $98
	ldh a, [$4c]                                     ; $7bd1: $f0 $4c
	ld hl, sp+$26                                    ; $7bd3: $f8 $26
	db $fc                                           ; $7bd5: $fc
	sub e                                            ; $7bd6: $93
	cp $4b                                           ; $7bd7: $fe $4b
	rst $38                                          ; $7bd9: $ff
	daa                                              ; $7bda: $27
	cp $13                                           ; $7bdb: $fe $13
	or a                                             ; $7bdd: $b7
	sub c                                            ; $7bde: $91
	ei                                               ; $7bdf: $fb
	ld c, b                                          ; $7be0: $48
	db $dd                                           ; $7be1: $dd
	ld b, h                                          ; $7be2: $44
	db $ec                                           ; $7be3: $ec
	jr nz, @-$0c                                     ; $7be4: $20 $f2

	sub b                                            ; $7be6: $90
	add b                                            ; $7be7: $80
	ld hl, sp-$78                                    ; $7be8: $f8 $88
	call c, $ee44                                    ; $7bea: $dc $44 $ee
	ld [hl+], a                                      ; $7bed: $22
	rst FarCall                                          ; $7bee: $f7
	sub c                                            ; $7bef: $91
	ei                                               ; $7bf0: $fb
	adc b                                            ; $7bf1: $88
	db $fd                                           ; $7bf2: $fd
	ld b, h                                          ; $7bf3: $44
	cp $42                                           ; $7bf4: $fe $42
	rst $38                                          ; $7bf6: $ff
	and c                                            ; $7bf7: $a1
	rst $38                                          ; $7bf8: $ff
	sub c                                            ; $7bf9: $91
	rst $38                                          ; $7bfa: $ff
	ret z                                            ; $7bfb: $c8

	rst $38                                          ; $7bfc: $ff
	ld h, h                                          ; $7bfd: $64
	rst $38                                          ; $7bfe: $ff
	inc sp                                           ; $7bff: $33
	rst $38                                          ; $7c00: $ff
	jr @+$01                                         ; $7c01: $18 $ff

	ld c, $ff                                        ; $7c03: $0e $ff
	inc bc                                           ; $7c05: $03
	rst $38                                          ; $7c06: $ff
	sub c                                            ; $7c07: $91
	inc c                                            ; $7c08: $0c
	ld a, h                                          ; $7c09: $7c
	dec bc                                           ; $7c0a: $0b
	jr c, @+$11                                      ; $7c0b: $38 $0f

	jr c, @+$11                                      ; $7c0d: $38 $0f

	sbc b                                            ; $7c0f: $98
	rlca                                             ; $7c10: $07
	adc $83                                          ; $7c11: $ce $83
	rst SubAFromBC                                          ; $7c13: $e7
	ld b, b                                          ; $7c14: $40
	ldh a, [rVBK]                                    ; $7c15: $f0 $4f
	ld h, d                                          ; $7c17: $62
	add b                                            ; $7c18: $80
	ldh [c], a                                       ; $7c19: $e2
	db $e3                                           ; $7c1a: $e3
	sbc $bf                                          ; $7c1b: $de $bf
	xor $dd                                          ; $7c1d: $ee $dd
	rst FarCall                                          ; $7c1f: $f7
	db $ed                                           ; $7c20: $ed
	dec sp                                           ; $7c21: $3b
	push af                                          ; $7c22: $f5
	ret                                              ; $7c23: $c9


	ld a, $e5                                        ; $7c24: $3e $e5
	sbc $31                                          ; $7c26: $de $31
	cp $08                                           ; $7c28: $fe $08
	rst $38                                          ; $7c2a: $ff
	ldh [$1f], a                                     ; $7c2b: $e0 $1f
	ld hl, sp+$07                                    ; $7c2d: $f8 $07
	db $fd                                           ; $7c2f: $fd
	jp nz, $2916                                     ; $7c30: $c2 $16 $29

	ld [hl], d                                       ; $7c33: $72
	add hl, bc                                       ; $7c34: $09
	ld a, b                                          ; $7c35: $78
	dec b                                            ; $7c36: $05
	ret z                                            ; $7c37: $c8

	adc h                                            ; $7c38: $8c
	inc h                                            ; $7c39: $24
	ret z                                            ; $7c3a: $c8

	inc h                                            ; $7c3b: $24
	sbc b                                            ; $7c3c: $98
	ld b, h                                          ; $7c3d: $44
	add hl, de                                       ; $7c3e: $19
	call nz, $8934                                   ; $7c3f: $c4 $34 $89
	ld [hl-], a                                      ; $7c42: $32
	adc c                                            ; $7c43: $89
	ld l, c                                          ; $7c44: $69
	inc de                                           ; $7c45: $13
	ld d, l                                          ; $7c46: $55
	inc sp                                           ; $7c47: $33

Call_063_7c48:
	cp e                                             ; $7c48: $bb
	ld h, a                                          ; $7c49: $67
	ld [hl], a                                       ; $7c4a: $77
	rst GetHLinHL                                          ; $7c4b: $cf
	ldh [$c1], a                                     ; $7c4c: $e0 $c1
	sub [hl]                                         ; $7c4e: $96
	dec hl                                           ; $7c4f: $2b
	ld a, [hl]                                       ; $7c50: $7e
	dec d                                            ; $7c51: $15
	rst $38                                          ; $7c52: $ff
	dec d                                            ; $7c53: $15
	rst $38                                          ; $7c54: $ff
	sub l                                            ; $7c55: $95
	rst $38                                          ; $7c56: $ff
	ld c, e                                          ; $7c57: $4b
	ld a, d                                          ; $7c58: $7a
	ld a, [hl]                                       ; $7c59: $7e
	adc e                                            ; $7c5a: $8b
	xor $ff                                          ; $7c5b: $ee $ff
	ccf                                              ; $7c5d: $3f
	rst $38                                          ; $7c5e: $ff
	or $f2                                           ; $7c5f: $f6 $f2
	cpl                                              ; $7c61: $2f
	ld [hl+], a                                      ; $7c62: $22
	rst $38                                          ; $7c63: $ff
	daa                                              ; $7c64: $27
	ld sp, hl                                        ; $7c65: $f9
	ccf                                              ; $7c66: $3f
	db $f4                                           ; $7c67: $f4
	ld a, a                                          ; $7c68: $7f
	jp nc, $90f7                                     ; $7c69: $d2 $f7 $90

	ei                                               ; $7c6c: $fb
	sub b                                            ; $7c6d: $90
	ei                                               ; $7c6e: $fb
	push af                                          ; $7c6f: $f5
	rst SubAFromDE                                          ; $7c70: $df
	rst GetHLinHL                                          ; $7c71: $cf
	add b                                            ; $7c72: $80
	sbc [hl]                                         ; $7c73: $9e
	sub a                                            ; $7c74: $97

jr_063_7c75:
	push af                                          ; $7c75: $f5
	xor $ee                                          ; $7c76: $ee $ee
	reti                                             ; $7c78: $d9


	ld e, c                                          ; $7c79: $59
	or a                                             ; $7c7a: $b7
	or [hl]                                          ; $7c7b: $b6
	ld l, a                                          ; $7c7c: $6f
	db $eb                                           ; $7c7d: $eb
	ld e, h                                          ; $7c7e: $5c
	ld c, h                                          ; $7c7f: $4c
	di                                               ; $7c80: $f3
	ccf                                              ; $7c81: $3f
	ret nz                                           ; $7c82: $c0

	ld a, a                                          ; $7c83: $7f
	add b                                            ; $7c84: $80
	cp a                                             ; $7c85: $bf
	ld b, b                                          ; $7c86: $40
	rst SubAFromHL                                          ; $7c87: $d7
	jr z, jr_063_7c75                                ; $7c88: $28 $eb

	inc d                                            ; $7c8a: $14
	call z, Call_063_6412                            ; $7c8b: $cc $12 $64
	ld a, [bc]                                       ; $7c8e: $0a
	ld h, $89                                        ; $7c8f: $26 $89
	ld [hl+], a                                      ; $7c91: $22
	sbc l                                            ; $7c92: $9d
	adc c                                            ; $7c93: $89
	ld [bc], a                                       ; $7c94: $02
	ld a, e                                          ; $7c95: $7b
	cp $7f                                           ; $7c96: $fe $7f
	ld a, [$2293]                                    ; $7c98: $fa $93 $22
	sbc c                                            ; $7c9b: $99
	ld a, [hl+]                                      ; $7c9c: $2a
	sub c                                            ; $7c9d: $91
	ld b, a                                          ; $7c9e: $47
	ld sp, $3355                                     ; $7c9f: $31 $55 $33
	jp c, $9336                                      ; $7ca2: $da $36 $93

jr_063_7ca5:
	ld a, [hl]                                       ; $7ca5: $7e
	ldh [$c1], a                                     ; $7ca6: $e0 $c1
	add [hl]                                         ; $7ca8: $86
	ld a, [hl-]                                      ; $7ca9: $3a
	rrca                                             ; $7caa: $0f
	ld a, [hl-]                                      ; $7cab: $3a
	rrca                                             ; $7cac: $0f
	sbc d                                            ; $7cad: $9a
	rrca                                             ; $7cae: $0f
	and $87                                          ; $7caf: $e6 $87
	ld h, [hl]                                       ; $7cb1: $66
	rst JumpTable                                          ; $7cb2: $c7
	inc sp                                           ; $7cb3: $33
	db $e3                                           ; $7cb4: $e3
	rra                                              ; $7cb5: $1f
	rst FarCall                                          ; $7cb6: $f7
	ret z                                            ; $7cb7: $c8

	ld hl, sp+$6b                                    ; $7cb8: $f8 $6b
	jr c, @-$13                                      ; $7cba: $38 $eb

	jr c, jr_063_7ca5                                ; $7cbc: $38 $e7

	inc a                                            ; $7cbe: $3c
	rst SubAFromBC                                          ; $7cbf: $e7
	rst $38                                          ; $7cc0: $ff
	pop bc                                           ; $7cc1: $c1
	ld [hl], d                                       ; $7cc2: $72
	xor b                                            ; $7cc3: $a8
	sbc l                                            ; $7cc4: $9d
	adc c                                            ; $7cc5: $89
	rst $38                                          ; $7cc6: $ff
	push af                                          ; $7cc7: $f5
	rst SubAFromDE                                          ; $7cc8: $df
	ret nz                                           ; $7cc9: $c0

	rst SubAFromDE                                          ; $7cca: $df
	sbc a                                            ; $7ccb: $9f
	sbc h                                            ; $7ccc: $9c
	db $fc                                           ; $7ccd: $fc
	db $e3                                           ; $7cce: $e3
	inc bc                                           ; $7ccf: $03
	sbc $ff                                          ; $7cd0: $de $ff
	sbc [hl]                                         ; $7cd2: $9e
	nop                                              ; $7cd3: $00
	ld a, e                                          ; $7cd4: $7b
	db $fd                                           ; $7cd5: $fd
	ld a, a                                          ; $7cd6: $7f
	ld hl, sp-$80                                    ; $7cd7: $f8 $80
	cp $01                                           ; $7cd9: $fe $01
	add a                                            ; $7cdb: $87
	ld a, b                                          ; $7cdc: $78
	ld sp, hl                                        ; $7cdd: $f9
	ld b, $fe                                        ; $7cde: $06 $fe
	ld bc, $4cb3                                     ; $7ce0: $01 $b3 $4c
	db $dd                                           ; $7ce3: $dd
	ld [hl+], a                                      ; $7ce4: $22
	and $11                                          ; $7ce5: $e6 $11
	ld a, e                                          ; $7ce7: $7b
	ld [$0c55], sp                                   ; $7ce8: $08 $55 $0c
	ld e, d                                          ; $7ceb: $5a
	ld b, $05                                        ; $7cec: $06 $05
	dec bc                                           ; $7cee: $0b
	rlca                                             ; $7cef: $07
	add hl, bc                                       ; $7cf0: $09
	ld a, [bc]                                       ; $7cf1: $0a
	dec h                                            ; $7cf2: $25
	ld a, [bc]                                       ; $7cf3: $0a
	dec h                                            ; $7cf4: $25
	dec bc                                           ; $7cf5: $0b
	inc h                                            ; $7cf6: $24
	ld e, c                                          ; $7cf7: $59
	sbc d                                            ; $7cf8: $9a
	ld h, $bd                                        ; $7cf9: $26 $bd
	ld b, [hl]                                       ; $7cfb: $46
	db $fd                                           ; $7cfc: $fd
	ld b, [hl]                                       ; $7cfd: $46
	ldh [$c1], a                                     ; $7cfe: $e0 $c1
	sbc l                                            ; $7d00: $9d
	sub d                                            ; $7d01: $92
	rst $38                                          ; $7d02: $ff
	ld [hl], a                                       ; $7d03: $77
	cp $9c                                           ; $7d04: $fe $9c
	ld d, d                                          ; $7d06: $52
	rst $38                                          ; $7d07: $ff
	ld d, l                                          ; $7d08: $55
	ld a, e                                          ; $7d09: $7b
	cp $96                                           ; $7d0a: $fe $96
	rst SubAFromHL                                          ; $7d0c: $d7
	rst $38                                          ; $7d0d: $ff
	ld a, a                                          ; $7d0e: $7f
	ld a, a                                          ; $7d0f: $7f
	and $22                                          ; $7d10: $e6 $22
	rst $38                                          ; $7d12: $ff
	ld [hl+], a                                      ; $7d13: $22
	rst $38                                          ; $7d14: $ff
	ld a, e                                          ; $7d15: $7b
	xor $97                                          ; $7d16: $ee $97
	ld sp, $517f                                     ; $7d18: $31 $7f $51
	db $fd                                           ; $7d1b: $fd
	ld d, c                                          ; $7d1c: $51
	push de                                          ; $7d1d: $d5
	pop de                                           ; $7d1e: $d1
	push de                                          ; $7d1f: $d5
	di                                               ; $7d20: $f3
	rst SubAFromDE                                          ; $7d21: $df
	ret nz                                           ; $7d22: $c0

	rst SubAFromDE                                          ; $7d23: $df
	ldh a, [$6f]                                     ; $7d24: $f0 $6f
	ld hl, sp-$80                                    ; $7d26: $f8 $80
	or b                                             ; $7d28: $b0
	ld [hl], b                                       ; $7d29: $70
	db $ec                                           ; $7d2a: $ec
	sbc h                                            ; $7d2b: $9c
	ld a, d                                          ; $7d2c: $7a
	and $99                                          ; $7d2d: $e6 $99
	ld a, a                                          ; $7d2f: $7f
	db $e4                                           ; $7d30: $e4
	rra                                              ; $7d31: $1f
	ld [hl], d                                       ; $7d32: $72
	adc a                                            ; $7d33: $8f
	sbc c                                            ; $7d34: $99
	ld h, a                                          ; $7d35: $67
	call z, Call_063_7633                            ; $7d36: $cc $33 $76
	sbc c                                            ; $7d39: $99
	ld a, [hl-]                                      ; $7d3a: $3a
	call Call_063_67dc                               ; $7d3b: $cd $dc $67
	xor d                                            ; $7d3e: $aa
	ld [hl], a                                       ; $7d3f: $77
	push de                                          ; $7d40: $d5
	dec sp                                           ; $7d41: $3b
	ld l, c                                          ; $7d42: $69
	sbc a                                            ; $7d43: $9f
	xor c                                            ; $7d44: $a9
	rst SubAFromDE                                          ; $7d45: $df
	or l                                             ; $7d46: $b5
	sbc d                                            ; $7d47: $9a
	rst GetHLinHL                                          ; $7d48: $cf
	ld d, h                                          ; $7d49: $54
	rst AddAOntoHL                                          ; $7d4a: $ef
	ld b, h                                          ; $7d4b: $44
	rst $38                                          ; $7d4c: $ff
	ld h, a                                          ; $7d4d: $67
	cp $81                                           ; $7d4e: $fe $81
	push bc                                          ; $7d50: $c5
	rst $38                                          ; $7d51: $ff
	adc [hl]                                         ; $7d52: $8e
	cp $90                                           ; $7d53: $fe $90
	ldh a, [$bc]                                     ; $7d55: $f0 $bc
	db $fc                                           ; $7d57: $fc
	db $fc                                           ; $7d58: $fc
	call nz, Call_063_627e                           ; $7d59: $c4 $7e $62
	ccf                                              ; $7d5c: $3f
	add hl, sp                                       ; $7d5d: $39
	ccf                                              ; $7d5e: $3f
	jr nz, jr_063_7de0                               ; $7d5f: $20 $7f

	ld b, h                                          ; $7d61: $44
	ld a, a                                          ; $7d62: $7f
	ld c, c                                          ; $7d63: $49
	ld a, a                                          ; $7d64: $7f
	ld c, d                                          ; $7d65: $4a
	ccf                                              ; $7d66: $3f
	ld a, [hl+]                                      ; $7d67: $2a
	cp a                                             ; $7d68: $bf
	xor d                                            ; $7d69: $aa
	rst $38                                          ; $7d6a: $ff
	ld [hl], l                                       ; $7d6b: $75
	rst $38                                          ; $7d6c: $ff
	rrca                                             ; $7d6d: $0f
	ld a, c                                          ; $7d6e: $79
	xor l                                            ; $7d6f: $ad
	ld a, h                                          ; $7d70: $7c
	ld h, [hl]                                       ; $7d71: $66
	sub d                                            ; $7d72: $92
	ld b, c                                          ; $7d73: $41
	ccf                                              ; $7d74: $3f
	ld hl, $203f                                     ; $7d75: $21 $3f $20
	rra                                              ; $7d78: $1f
	db $10                                           ; $7d79: $10
	rrca                                             ; $7d7a: $0f
	ld [$8487], sp                                   ; $7d7b: $08 $87 $84
	add e                                            ; $7d7e: $83
	add e                                            ; $7d7f: $83
	db $dd                                           ; $7d80: $dd
	ret nz                                           ; $7d81: $c0

	rst SubAFromDE                                          ; $7d82: $df
	ldh a, [$80]                                     ; $7d83: $f0 $80
	xor b                                            ; $7d85: $a8
	ld hl, sp-$5c                                    ; $7d86: $f8 $a4
	db $fc                                           ; $7d88: $fc
	sub d                                            ; $7d89: $92
	cp $91                                           ; $7d8a: $fe $91
	rst $38                                          ; $7d8c: $ff
	adc b                                            ; $7d8d: $88
	cp e                                             ; $7d8e: $bb
	adc b                                            ; $7d8f: $88
	cp h                                             ; $7d90: $bc
	add h                                            ; $7d91: $84
	call c, $cc84                                    ; $7d92: $dc $84 $cc
	add b                                            ; $7d95: $80
	db $ec                                           ; $7d96: $ec
	ldh [c], a                                       ; $7d97: $e2
	rst FarCall                                          ; $7d98: $f7
	ld [hl-], a                                      ; $7d99: $32

jr_063_7d9a:
	rla                                              ; $7d9a: $17
	ld [hl], c                                       ; $7d9b: $71
	rla                                              ; $7d9c: $17
	pop af                                           ; $7d9d: $f1
	rra                                              ; $7d9e: $1f
	ldh a, [c]                                       ; $7d9f: $f2
	sbc a                                            ; $7da0: $9f
	ld [hl], h                                       ; $7da1: $74
	rst FarCall                                          ; $7da2: $f7
	jr c, @-$75                                      ; $7da3: $38 $89

	rst $38                                          ; $7da5: $ff
	ld a, $bf                                        ; $7da6: $3e $bf
	ccf                                              ; $7da8: $3f
	and c                                            ; $7da9: $a1
	ccf                                              ; $7daa: $3f
	and b                                            ; $7dab: $a0
	nop                                              ; $7dac: $00
	add b                                            ; $7dad: $80
	ld b, b                                          ; $7dae: $40
	ret nz                                           ; $7daf: $c0

	ldh [$e0], a                                     ; $7db0: $e0 $e0
	sub b                                            ; $7db2: $90
	sub b                                            ; $7db3: $90
	ld b, b                                          ; $7db4: $40
	ret nz                                           ; $7db5: $c0

	ld b, b                                          ; $7db6: $40
	ret nz                                           ; $7db7: $c0

	jr nz, jr_063_7d9a                               ; $7db8: $20 $e0

	jr nz, jr_063_7e35                               ; $7dba: $20 $79

	ld a, [hl+]                                      ; $7dbc: $2a
	ld [hl], a                                       ; $7dbd: $77
	cp $7f                                           ; $7dbe: $fe $7f
	sub d                                            ; $7dc0: $92
	ld [hl], a                                       ; $7dc1: $77
	cp $9d                                           ; $7dc2: $fe $9d

jr_063_7dc4:
	ret nc                                           ; $7dc4: $d0

	ldh a, [$dd]                                     ; $7dc5: $f0 $dd
	or b                                             ; $7dc7: $b0
	rst SubAFromDE                                          ; $7dc8: $df
	and b                                            ; $7dc9: $a0
	rst SubAFromDE                                          ; $7dca: $df
	jr nz, jr_063_7dc4                               ; $7dcb: $20 $f7

	rst SubAFromDE                                          ; $7dcd: $df
	add b                                            ; $7dce: $80
	ld a, a                                          ; $7dcf: $7f
	rst SubAFromHL                                          ; $7dd0: $d7
	sub a                                            ; $7dd1: $97
	ldh a, [$30]                                     ; $7dd2: $f0 $30
	db $fc                                           ; $7dd4: $fc
	inc c                                            ; $7dd5: $0c
	cp $02                                           ; $7dd6: $fe $02
	cp $42                                           ; $7dd8: $fe $42
	ld [hl], a                                       ; $7dda: $77
	cp $9b                                           ; $7ddb: $fe $9b
	jp nz, $82be                                     ; $7ddd: $c2 $be $82

jr_063_7de0:
	ld a, [hl]                                       ; $7de0: $7e
	ld [hl], a                                       ; $7de1: $77
	cp $96                                           ; $7de2: $fe $96
	jp nz, $c23e                                     ; $7de4: $c2 $3e $c2

	cp [hl]                                          ; $7de7: $be
	ld b, c                                          ; $7de8: $41
	cp a                                             ; $7de9: $bf
	ld hl, $01df                                     ; $7dea: $21 $df $01
	ld a, d                                          ; $7ded: $7a
	add h                                            ; $7dee: $84
	sub a                                            ; $7def: $97
	add b                                            ; $7df0: $80
	rst $38                                          ; $7df1: $ff
	ld b, b                                          ; $7df2: $40
	ld a, a                                          ; $7df3: $7f
	ld b, b                                          ; $7df4: $40
	ld a, a                                          ; $7df5: $7f
	jr nz, jr_063_7e37                               ; $7df6: $20 $3f

	ld [hl], a                                       ; $7df8: $77
	cp $93                                           ; $7df9: $fe $93
	cp $f0                                           ; $7dfb: $fe $f0
	ld a, h                                          ; $7dfd: $7c
	ldh a, [rAUD3LEVEL]                              ; $7dfe: $f0 $1c
	ld [hl], b                                       ; $7e00: $70
	inc e                                            ; $7e01: $1c
	jr nc, jr_063_7e20                               ; $7e02: $30 $1c

	jr nc, jr_063_7e12                               ; $7e04: $30 $0c

	jr jr_063_7e7b                                   ; $7e06: $18 $73

	cp $97                                           ; $7e08: $fe $97
	jr c, @+$20                                      ; $7e0a: $38 $1e

	ld a, b                                          ; $7e0c: $78
	ld l, $f8                                        ; $7e0d: $2e $f8
	ld b, [hl]                                       ; $7e0f: $46
	db $fc                                           ; $7e10: $fc
	add [hl]                                         ; $7e11: $86

jr_063_7e12:
	ld a, e                                          ; $7e12: $7b
	cp $9e                                           ; $7e13: $fe $9e
	ld b, $7b                                        ; $7e15: $06 $7b
	db $fc                                           ; $7e17: $fc
	rst AddAOntoHL                                          ; $7e18: $ef
	db $dd                                           ; $7e19: $dd
	add b                                            ; $7e1a: $80
	ld a, e                                          ; $7e1b: $7b
	ld [hl], e                                       ; $7e1c: $73
	ld a, e                                          ; $7e1d: $7b
	cp $7b                                           ; $7e1e: $fe $7b

jr_063_7e20:
	ld [hl], c                                       ; $7e20: $71
	rst SubAFromDE                                          ; $7e21: $df
	jr nz, @+$6d                                     ; $7e22: $20 $6b

	ld l, [hl]                                       ; $7e24: $6e
	sbc l                                            ; $7e25: $9d
	adc b                                            ; $7e26: $88
	ld a, b                                          ; $7e27: $78
	ld [hl], a                                       ; $7e28: $77
	cp $9d                                           ; $7e29: $fe $9d
	call nz, Call_063_773c                           ; $7e2b: $c4 $3c $77
	cp $9d                                           ; $7e2e: $fe $9d
	ldh [c], a                                       ; $7e30: $e2
	ld e, $77                                        ; $7e31: $1e $77
	cp $99                                           ; $7e33: $fe $99

jr_063_7e35:
	pop hl                                           ; $7e35: $e1
	rra                                              ; $7e36: $1f

jr_063_7e37:
	pop af                                           ; $7e37: $f1
	rrca                                             ; $7e38: $0f
	pop af                                           ; $7e39: $f1
	rrca                                             ; $7e3a: $0f
	ld h, $00                                        ; $7e3b: $26 $00
	sbc h                                            ; $7e3d: $9c
	rst $38                                          ; $7e3e: $ff
	sbc c                                            ; $7e3f: $99
	sbc c                                            ; $7e40: $99
	ld a, e                                          ; $7e41: $7b
	db $fd                                           ; $7e42: $fd
	sub a                                            ; $7e43: $97
	ld de, $7799                                     ; $7e44: $11 $99 $77
	sbc c                                            ; $7e47: $99
	ld de, $1100                                     ; $7e48: $11 $00 $11
	ld [hl+], a                                      ; $7e4b: $22
	ld a, e                                          ; $7e4c: $7b
	rst FarCall                                          ; $7e4d: $f7
	sbc l                                            ; $7e4e: $9d
	sbc c                                            ; $7e4f: $99
	nop                                              ; $7e50: $00
	ld [hl], a                                       ; $7e51: $77
	ei                                               ; $7e52: $fb
	sbc [hl]                                         ; $7e53: $9e
	inc sp                                           ; $7e54: $33
	ld l, e                                          ; $7e55: $6b
	or $df                                           ; $7e56: $f6 $df
	adc b                                            ; $7e58: $88
	ld a, a                                          ; $7e59: $7f
	or $9a                                           ; $7e5a: $f6 $9a
	adc b                                            ; $7e5c: $88
	db $dd                                           ; $7e5d: $dd
	nop                                              ; $7e5e: $00
	adc b                                            ; $7e5f: $88

jr_063_7e60:
	db $dd                                           ; $7e60: $dd
	rra                                              ; $7e61: $1f
	ld bc, $a588                                     ; $7e62: $01 $88 $a5
	rst $38                                          ; $7e65: $ff
	rst SubAFromDE                                          ; $7e66: $df
	ld a, a                                          ; $7e67: $7f
	cp a                                             ; $7e68: $bf
	pop af                                           ; $7e69: $f1
	ret nz                                           ; $7e6a: $c0

	ret nz                                           ; $7e6b: $c0

	nop                                              ; $7e6c: $00
	ld a, a                                          ; $7e6d: $7f
	ld a, a                                          ; $7e6e: $7f
	add b                                            ; $7e6f: $80
	xor $1f                                          ; $7e70: $ee $1f
	or e                                             ; $7e72: $b3
	ld [hl], e                                       ; $7e73: $73
	xor $ef                                          ; $7e74: $ee $ef
	ld a, d                                          ; $7e76: $7a
	ld a, $3d                                        ; $7e77: $3e $3d
	ld e, $9e                                        ; $7e79: $1e $9e

jr_063_7e7b:
	cp c                                             ; $7e7b: $b9
	add b                                            ; $7e7c: $80
	ld a, a                                          ; $7e7d: $7f
	inc bc                                           ; $7e7e: $03
	nop                                              ; $7e7f: $00
	nop                                              ; $7e80: $00
	nop                                              ; $7e81: $00
	add b                                            ; $7e82: $80
	ldh [$80], a                                     ; $7e83: $e0 $80
	ret nz                                           ; $7e85: $c0

	ld hl, sp+$30                                    ; $7e86: $f8 $30
	rst $38                                          ; $7e88: $ff
	adc h                                            ; $7e89: $8c
	rst $38                                          ; $7e8a: $ff
	add e                                            ; $7e8b: $83
	ld a, c                                          ; $7e8c: $79
	ret nz                                           ; $7e8d: $c0

	jr c, jr_063_7ef0                                ; $7e8e: $38 $60

	db $10                                           ; $7e90: $10
	jr nc, jr_063_7e9b                               ; $7e91: $30 $08

	sbc b                                            ; $7e93: $98
	ld c, h                                          ; $7e94: $4c
	ld c, b                                          ; $7e95: $48
	inc h                                            ; $7e96: $24
	ld l, h                                          ; $7e97: $6c
	ld d, $bc                                        ; $7e98: $16 $bc
	sub d                                            ; $7e9a: $92

jr_063_7e9b:
	cp $4b                                           ; $7e9b: $fe $4b
	cp $3c                                           ; $7e9d: $fe $3c
	rst AddAOntoHL                                          ; $7e9f: $ef
	ld a, l                                          ; $7ea0: $7d
	rst JumpTable                                          ; $7ea1: $c7
	ei                                               ; $7ea2: $fb
	adc [hl]                                         ; $7ea3: $8e
	sub d                                            ; $7ea4: $92
	rra                                              ; $7ea5: $1f
	db $ec                                           ; $7ea6: $ec
	rrca                                             ; $7ea7: $0f
	ld sp, hl                                        ; $7ea8: $f9
	rst FarCall                                          ; $7ea9: $f7
	add hl, de                                       ; $7eaa: $19
	or $09                                           ; $7eab: $f6 $09
	or $8f                                           ; $7ead: $f6 $8f
	rst JumpTable                                          ; $7eaf: $c7
	adc c                                            ; $7eb0: $89
	adc a                                            ; $7eb1: $8f
	cp l                                             ; $7eb2: $bd
	ld c, $1e                                        ; $7eb3: $0e $1e
	ld a, a                                          ; $7eb5: $7f
	db $e3                                           ; $7eb6: $e3
	sbc l                                            ; $7eb7: $9d
	ld [bc], a                                       ; $7eb8: $02
	rst JumpTable                                          ; $7eb9: $c7
	ld a, e                                          ; $7eba: $7b
	cp a                                             ; $7ebb: $bf
	add b                                            ; $7ebc: $80
	adc $ff                                          ; $7ebd: $ce $ff
	adc $7b                                          ; $7ebf: $ce $7b
	jp nc, $be7f                                     ; $7ec1: $d2 $7f $be

	rst $38                                          ; $7ec4: $ff
	rst JumpTable                                          ; $7ec5: $c7
	rst $38                                          ; $7ec6: $ff
	rst $38                                          ; $7ec7: $ff
	ld [bc], a                                       ; $7ec8: $02
	db $fd                                           ; $7ec9: $fd
	inc bc                                           ; $7eca: $03
	or $79                                           ; $7ecb: $f6 $79
	adc d                                            ; $7ecd: $8a
	sbc l                                            ; $7ece: $9d
	inc [hl]                                         ; $7ecf: $34
	rst $38                                          ; $7ed0: $ff
	sub $f0                                          ; $7ed1: $d6 $f0
	db $fd                                           ; $7ed3: $fd
	ld h, c                                          ; $7ed4: $61
	ld a, e                                          ; $7ed5: $7b
	ld bc, $0387                                     ; $7ed6: $01 $87 $03
	rst $38                                          ; $7ed9: $ff
	rrca                                             ; $7eda: $0f
	jr c, jr_063_7e60                                ; $7edb: $38 $83

	db $10                                           ; $7edd: $10
	ld a, a                                          ; $7ede: $7f
	db $10                                           ; $7edf: $10
	ld a, a                                          ; $7ee0: $7f
	ld e, $e7                                        ; $7ee1: $1e $e7
	ccf                                              ; $7ee3: $3f
	di                                               ; $7ee4: $f3
	ld a, a                                          ; $7ee5: $7f
	adc c                                            ; $7ee6: $89
	rst $38                                          ; $7ee7: $ff
	push bc                                          ; $7ee8: $c5
	rst $38                                          ; $7ee9: $ff
	inc hl                                           ; $7eea: $23
	rst $38                                          ; $7eeb: $ff
	inc de                                           ; $7eec: $13
	rst $38                                          ; $7eed: $ff
	adc c                                            ; $7eee: $89
	rst SubAFromDE                                          ; $7eef: $df

jr_063_7ef0:
	ld c, h                                          ; $7ef0: $4c
	rst AddAOntoHL                                          ; $7ef1: $ef
	ld b, [hl]                                       ; $7ef2: $46
	rst AddAOntoHL                                          ; $7ef3: $ef
	dec h                                            ; $7ef4: $25
	rst FarCall                                          ; $7ef5: $f7
	inc h                                            ; $7ef6: $24
	rst FarCall                                          ; $7ef7: $f7
	ld [hl+], a                                      ; $7ef8: $22
	ld a, e                                          ; $7ef9: $7b
	cp $9d                                           ; $7efa: $fe $9d
	and d                                            ; $7efc: $a2
	rst $38                                          ; $7efd: $ff
	ld d, a                                          ; $7efe: $57
	ld h, b                                          ; $7eff: $60
	sub [hl]                                         ; $7f00: $96
	rst $38                                          ; $7f01: $ff

Jump_063_7f02:
	nop                                              ; $7f02: $00
	rst $38                                          ; $7f03: $ff
	ld e, $6b                                        ; $7f04: $1e $6b
	ld l, a                                          ; $7f06: $6f
	db $f4                                           ; $7f07: $f4
	cp $3f                                           ; $7f08: $fe $3f
	ld e, e                                          ; $7f0a: $5b
	ld h, b                                          ; $7f0b: $60
	ld c, e                                          ; $7f0c: $4b
	add b                                            ; $7f0d: $80
	sbc h                                            ; $7f0e: $9c
	rrca                                             ; $7f0f: $0f
	rst JumpTable                                          ; $7f10: $c7
	add hl, bc                                       ; $7f11: $09
	rla                                              ; $7f12: $17
	add b                                            ; $7f13: $80
	sub a                                            ; $7f14: $97
	cp $01                                           ; $7f15: $fe $01
	cp $71                                           ; $7f17: $fe $71
	cp [hl]                                          ; $7f19: $be
	cp l                                             ; $7f1a: $bd
	adc $e0                                          ; $7f1b: $ce $e0
	ld e, a                                          ; $7f1d: $5f
	add b                                            ; $7f1e: $80
	ld c, e                                          ; $7f1f: $4b
	and b                                            ; $7f20: $a0
	ld a, a                                          ; $7f21: $7f
	ld sp, hl                                        ; $7f22: $f9
	sbc [hl]                                         ; $7f23: $9e
	ccf                                              ; $7f24: $3f
	ld e, a                                          ; $7f25: $5f
	and b                                            ; $7f26: $a0
	sbc [hl]                                         ; $7f27: $9e
	ld bc, $a003                                     ; $7f28: $01 $03 $a0
	dec sp                                           ; $7f2b: $3b
	and b                                            ; $7f2c: $a0
	ld a, a                                          ; $7f2d: $7f
	cp $9d                                           ; $7f2e: $fe $9d
	db $fd                                           ; $7f30: $fd
	or [hl]                                          ; $7f31: $b6
	ld e, e                                          ; $7f32: $5b
	jr nz, jr_063_7f74                               ; $7f33: $20 $3f

	and b                                            ; $7f35: $a0
	sbc d                                            ; $7f36: $9a
	rst $38                                          ; $7f37: $ff
	pop hl                                           ; $7f38: $e1
	ld a, a                                          ; $7f39: $7f
	ld a, [hl]                                       ; $7f3a: $7e
	cp [hl]                                          ; $7f3b: $be
	daa                                              ; $7f3c: $27
	ld b, b                                          ; $7f3d: $40
	ld a, [bc]                                       ; $7f3e: $0a
	ret nz                                           ; $7f3f: $c0

	ld a, e                                          ; $7f40: $7b
	and d                                            ; $7f41: $a2
	sbc b                                            ; $7f42: $98
	dec b                                            ; $7f43: $05
	cp $fd                                           ; $7f44: $fe $fd
	cp $c8                                           ; $7f46: $fe $c8
	db $fd                                           ; $7f48: $fd
	ld [hl], c                                       ; $7f49: $71
	ld h, a                                          ; $7f4a: $67
	and b                                            ; $7f4b: $a0
	sbc d                                            ; $7f4c: $9a
	ld c, $04                                        ; $7f4d: $0e $04
	inc e                                            ; $7f4f: $1c
	inc c                                            ; $7f50: $0c
	inc c                                            ; $7f51: $0c
	cp [hl]                                          ; $7f52: $be
	ld bc, $0f03                                     ; $7f53: $01 $03 $0f
	sbc b                                            ; $7f56: $98
	inc bc                                           ; $7f57: $03
	cp a                                             ; $7f58: $bf
	rrca                                             ; $7f59: $0f
	ei                                               ; $7f5a: $fb

Jump_063_7f5b:
	rst $38                                          ; $7f5b: $ff
	ld [$773f], a                                    ; $7f5c: $ea $3f $77
	cp $8f                                           ; $7f5f: $fe $8f
	ld l, d                                          ; $7f61: $6a
	ccf                                              ; $7f62: $3f
	ld l, c                                          ; $7f63: $69
	ccf                                              ; $7f64: $3f
	ld [hl], l                                       ; $7f65: $75
	rra                                              ; $7f66: $1f
	ld [hl], l                                       ; $7f67: $75
	rra                                              ; $7f68: $1f
	inc [hl]                                         ; $7f69: $34
	rra                                              ; $7f6a: $1f
	inc e                                            ; $7f6b: $1c
	inc c                                            ; $7f6c: $0c
	inc d                                            ; $7f6d: $14
	db $10                                           ; $7f6e: $10
	inc e                                            ; $7f6f: $1c
	ld [$e013], sp                                   ; $7f70: $08 $13 $e0
	sbc e                                            ; $7f73: $9b

jr_063_7f74:
	inc d                                            ; $7f74: $14
	inc e                                            ; $7f75: $1c
	jr jr_063_7f81                                   ; $7f76: $18 $09

	rrca                                             ; $7f78: $0f
	ldh [$9c], a                                     ; $7f79: $e0 $9c
	db $10                                           ; $7f7b: $10
	add hl, de                                       ; $7f7c: $19
	ld [$e027], sp                                   ; $7f7d: $08 $27 $e0
	cpl                                              ; $7f80: $2f

jr_063_7f81:
	ld bc, $a588                                     ; $7f81: $01 $88 $a5
	rst $38                                          ; $7f84: $ff
	rst SubAFromDE                                          ; $7f85: $df
	ld a, a                                          ; $7f86: $7f
	cp a                                             ; $7f87: $bf
	pop af                                           ; $7f88: $f1
	ret nz                                           ; $7f89: $c0

	ret nz                                           ; $7f8a: $c0

	nop                                              ; $7f8b: $00
	ld a, a                                          ; $7f8c: $7f
	ld a, a                                          ; $7f8d: $7f
	adc a                                            ; $7f8e: $8f
	ldh a, [c]                                       ; $7f8f: $f2
	inc sp                                           ; $7f90: $33
	and $ee                                          ; $7f91: $e6 $ee
	ld c, h                                          ; $7f93: $4c
	ld a, [hl]                                       ; $7f94: $7e
	ld [hl], d                                       ; $7f95: $72
	ld e, $3d                                        ; $7f96: $1e $3d
	ld e, $9e                                        ; $7f98: $1e $9e
	cp c                                             ; $7f9a: $b9
	add b                                            ; $7f9b: $80
	ld a, a                                          ; $7f9c: $7f
	nop                                              ; $7f9d: $00
	nop                                              ; $7f9e: $00
	nop                                              ; $7f9f: $00
	nop                                              ; $7fa0: $00
	add b                                            ; $7fa1: $80
	ldh [$80], a                                     ; $7fa2: $e0 $80
	ret nz                                           ; $7fa4: $c0

	ld hl, sp+$30                                    ; $7fa5: $f8 $30
	rst $38                                          ; $7fa7: $ff
	adc h                                            ; $7fa8: $8c
	rst $38                                          ; $7fa9: $ff
	add e                                            ; $7faa: $83
	ld a, c                                          ; $7fab: $79
	ret nz                                           ; $7fac: $c0

	jr c, @+$62                                      ; $7fad: $38 $60

	db $10                                           ; $7faf: $10
	jr nc, jr_063_7fba                               ; $7fb0: $30 $08

	sbc b                                            ; $7fb2: $98
	ld c, h                                          ; $7fb3: $4c
	ld c, b                                          ; $7fb4: $48
	inc h                                            ; $7fb5: $24
	ld l, h                                          ; $7fb6: $6c
	ld d, $bc                                        ; $7fb7: $16 $bc
	sub d                                            ; $7fb9: $92

jr_063_7fba:
	cp $4b                                           ; $7fba: $fe $4b
	cp $3c                                           ; $7fbc: $fe $3c
	rst AddAOntoHL                                          ; $7fbe: $ef
	ld a, l                                          ; $7fbf: $7d
	rst JumpTable                                          ; $7fc0: $c7
	ei                                               ; $7fc1: $fb
	adc [hl]                                         ; $7fc2: $8e
	sub d                                            ; $7fc3: $92
	rra                                              ; $7fc4: $1f
	db $ec                                           ; $7fc5: $ec
	rrca                                             ; $7fc6: $0f
	ld sp, hl                                        ; $7fc7: $f9
	rst FarCall                                          ; $7fc8: $f7
	add hl, de                                       ; $7fc9: $19
	or $89                                           ; $7fca: $f6 $89
	halt                                             ; $7fcc: $76
	adc a                                            ; $7fcd: $8f
	rst JumpTable                                          ; $7fce: $c7
	add hl, bc                                       ; $7fcf: $09
	adc a                                            ; $7fd0: $8f
	cp l                                             ; $7fd1: $bd
	ld c, $1a                                        ; $7fd2: $0e $1a
	ld [hl], e                                       ; $7fd4: $73
	jp $0280                                         ; $7fd5: $c3 $80 $02


	rlca                                             ; $7fd8: $07
	inc bc                                           ; $7fd9: $03
	nop                                              ; $7fda: $00
	nop                                              ; $7fdb: $00
	adc $ff                                          ; $7fdc: $ce $ff
	adc $7b                                          ; $7fde: $ce $7b
	jp nc, $be7f                                     ; $7fe0: $d2 $7f $be

	rst $38                                          ; $7fe3: $ff
	rst JumpTable                                          ; $7fe4: $c7
	rst $38                                          ; $7fe5: $ff
	rst $38                                          ; $7fe6: $ff
	ld [bc], a                                       ; $7fe7: $02
	db $fd                                           ; $7fe8: $fd
	ld a, e                                          ; $7fe9: $7b
	sub [hl]                                         ; $7fea: $96
	sbc l                                            ; $7feb: $9d
	ld [hl-], a                                      ; $7fec: $32
	ld [hl], l                                       ; $7fed: $75
	ld h, [hl]                                       ; $7fee: $66
	pop af                                           ; $7fef: $f1
	sbc [hl]                                         ; $7ff0: $9e
	ldh a, [$fd]                                     ; $7ff1: $f0 $fd
	pop hl                                           ; $7ff3: $e1
	ld a, e                                          ; $7ff4: $7b
	ld bc, $8780                                     ; $7ff5: $01 $80 $87
	inc bc                                           ; $7ff8: $03
	rst $38                                          ; $7ff9: $ff
	rrca                                             ; $7ffa: $0f
	jr c, @+$12                                      ; $7ffb: $38 $10

	ld a, a                                          ; $7ffd: $7f
	db $10                                           ; $7ffe: $10
	ld a, a                                          ; $7fff: $7f
