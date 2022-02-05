; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $024", ROMX[$4000], BANK[$24]

	ld a, $02                                        ; $4000: $3e $02
	rst GetHLinHL                                          ; $4002: $cf
	rst $38                                          ; $4003: $ff
	sbc b                                            ; $4004: $98
	ei                                               ; $4005: $fb
	rst $38                                          ; $4006: $ff
	db $fd                                           ; $4007: $fd
	cp $ff                                           ; $4008: $fe $ff
	rst $38                                          ; $400a: $ff
	cp $7b                                           ; $400b: $fe $7b
	ld a, [$fe7f]                                    ; $400d: $fa $7f $fe
	sbc l                                            ; $4010: $9d
	ld a, [$d5fd]                                    ; $4011: $fa $fd $d5
	rst $38                                          ; $4014: $ff
	sub d                                            ; $4015: $92
	db $fc                                           ; $4016: $fc
	rst $38                                          ; $4017: $ff
	di                                               ; $4018: $f3
	db $fc                                           ; $4019: $fc
	rst AddAOntoHL                                          ; $401a: $ef
	ldh a, [$a9]                                     ; $401b: $f0 $a9
	ret nz                                           ; $401d: $c0

	ld [de], a                                       ; $401e: $12
	nop                                              ; $401f: $00
	inc h                                            ; $4020: $24
	ret nz                                           ; $4021: $c0

	sub [hl]                                         ; $4022: $96
	cp a                                             ; $4023: $bf
	cpl                                              ; $4024: $2f
	ld b, l                                          ; $4025: $45
	sbc h                                            ; $4026: $9c
	ld a, [hl+]                                      ; $4027: $2a
	ld d, [hl]                                       ; $4028: $56
	add hl, hl                                       ; $4029: $29
	push de                                          ; $402a: $d5
	rst $38                                          ; $402b: $ff
	sbc b                                            ; $402c: $98
	call z, $323f                                    ; $402d: $cc $3f $32
	rst GetHLinHL                                          ; $4030: $cf
	reti                                             ; $4031: $d9


	ld h, $7b                                        ; $4032: $26 $7b
	cp h                                             ; $4034: $bc
	db $fc                                           ; $4035: $fc
	ld [hl], b                                       ; $4036: $70
	ld bc, $fd07                                     ; $4037: $01 $07 $fd
	sbc h                                            ; $403a: $9c
	ld [bc], a                                       ; $403b: $02
	ld a, [hl+]                                      ; $403c: $2a
	push de                                          ; $403d: $d5
	db $d3                                           ; $403e: $d3
	rst $38                                          ; $403f: $ff
	adc d                                            ; $4040: $8a
	ld a, a                                          ; $4041: $7f
	rst $38                                          ; $4042: $ff
	ccf                                              ; $4043: $3f
	rst $38                                          ; $4044: $ff
	sbc a                                            ; $4045: $9f
	ld a, a                                          ; $4046: $7f
	rst SubAFromDE                                          ; $4047: $df
	ccf                                              ; $4048: $3f
	adc a                                            ; $4049: $8f
	ld a, a                                          ; $404a: $7f
	rst GetHLinHL                                          ; $404b: $cf
	ccf                                              ; $404c: $3f
	xor a                                            ; $404d: $af
	ld e, a                                          ; $404e: $5f
	ld b, a                                          ; $404f: $47
	cp a                                             ; $4050: $bf
	xor a                                            ; $4051: $af
	ld e, a                                          ; $4052: $5f
	add sp, -$09                                     ; $4053: $e8 $f7
	cp $7b                                           ; $4055: $fe $7b
	sub h                                            ; $4057: $94
	rst JumpTable                                          ; $4058: $c7
	rst $38                                          ; $4059: $ff
	adc e                                            ; $405a: $8b
	jp z, $e535                                      ; $405b: $ca $35 $e5

	ld a, [de]                                       ; $405e: $1a
	or b                                             ; $405f: $b0
	ld e, a                                          ; $4060: $5f
	sbc c                                            ; $4061: $99
	ld l, a                                          ; $4062: $6f
	ld h, h                                          ; $4063: $64
	cp a                                             ; $4064: $bf
	dec sp                                           ; $4065: $3b
	rst SubAFromDE                                          ; $4066: $df
	sbc a                                            ; $4067: $9f
	rst $38                                          ; $4068: $ff
	rst $38                                          ; $4069: $ff
	di                                               ; $406a: $f3
	rst $38                                          ; $406b: $ff
	ld sp, hl                                        ; $406c: $f9
	rst $38                                          ; $406d: $ff
	ld hl, sp+$7b                                    ; $406e: $f8 $7b
	ld [hl], a                                       ; $4070: $77
	ld l, a                                          ; $4071: $6f
	call $fedf                                       ; $4072: $cd $df $fe
	add d                                            ; $4075: $82
	db $fc                                           ; $4076: $fc
	sub h                                            ; $4077: $94
	db $eb                                           ; $4078: $eb
	ld c, d                                          ; $4079: $4a
	push af                                          ; $407a: $f5
	ld h, l                                          ; $407b: $65
	ei                                               ; $407c: $fb
	ld sp, $d8ff                                     ; $407d: $31 $ff $d8
	rst $38                                          ; $4080: $ff
	ld a, [hl-]                                      ; $4081: $3a
	rst $38                                          ; $4082: $ff

jr_024_4083:
	sbc $ff                                          ; $4083: $de $ff
	ld a, [rIE]                                    ; $4085: $fa $ff $ff
	ld e, a                                          ; $4088: $5f
	cp $8f                                           ; $4089: $fe $8f
	ld sp, hl                                        ; $408b: $f9
	rrca                                             ; $408c: $0f
	cp $1f                                           ; $408d: $fe $1f
	db $f4                                           ; $408f: $f4
	ld hl, sp-$60                                    ; $4090: $f8 $a0
	ret nz                                           ; $4092: $c0

	db $fd                                           ; $4093: $fd
	ld a, a                                          ; $4094: $7f
	sbc h                                            ; $4095: $9c
	sub h                                            ; $4096: $94
	and a                                            ; $4097: $a7
	ld e, a                                          ; $4098: $5f
	ld c, a                                          ; $4099: $4f
	cp a                                             ; $409a: $bf
	daa                                              ; $409b: $27

Jump_024_409c:
	rst $38                                          ; $409c: $ff
	xor a                                            ; $409d: $af
	rst $38                                          ; $409e: $ff
	and a                                            ; $409f: $a7
	rst $38                                          ; $40a0: $ff
	rst SubAFromBC                                          ; $40a1: $e7
	sbc $ff                                          ; $40a2: $de $ff
	pop af                                           ; $40a4: $f1
	push de                                          ; $40a5: $d5
	rst $38                                          ; $40a6: $ff
	ld a, a                                          ; $40a7: $7f
	and a                                            ; $40a8: $a7
	adc l                                            ; $40a9: $8d
	rst SubAFromBC                                          ; $40aa: $e7
	ld hl, sp-$52                                    ; $40ab: $f8 $ae
	ret nz                                           ; $40ad: $c0

	dec d                                            ; $40ae: $15
	ldh [$39], a                                     ; $40af: $e0 $39
	ret nz                                           ; $40b1: $c0

	ld e, [hl]                                       ; $40b2: $5e
	add b                                            ; $40b3: $80
	cp e                                             ; $40b4: $bb
	inc b                                            ; $40b5: $04
	add hl, hl                                       ; $40b6: $29
	ld d, [hl]                                       ; $40b7: $56
	ld [hl], h                                       ; $40b8: $74
	adc e                                            ; $40b9: $8b
	jr c, jr_024_4083                                ; $40ba: $38 $c7

	rst SubAFromHL                                          ; $40bc: $d7
	rst $38                                          ; $40bd: $ff
	sub [hl]                                         ; $40be: $96
	scf                                              ; $40bf: $37
	rst GetHLinHL                                          ; $40c0: $cf
	ret nc                                           ; $40c1: $d0

	cpl                                              ; $40c2: $2f
	jp nc, $c82d                                     ; $40c3: $d2 $2d $c8

	ld [hl], $7a                                     ; $40c6: $36 $7a
	cp l                                             ; $40c8: $bd
	db $fc                                           ; $40c9: $fc
	ld [hl], c                                       ; $40ca: $71
	rlca                                             ; $40cb: $07
	adc a                                            ; $40cc: $8f
	sbc d                                            ; $40cd: $9a
	db $10                                           ; $40ce: $10
	push af                                          ; $40cf: $f5
	ld c, $22                                        ; $40d0: $0e $22
	rst SubAFromDE                                          ; $40d2: $df
	scf                                              ; $40d3: $37
	jr nz, jr_024_4155                               ; $40d4: $20 $7f

	inc h                                            ; $40d6: $24
	ld [hl], a                                       ; $40d7: $77
	ld [hl+], a                                      ; $40d8: $22
	sbc h                                            ; $40d9: $9c
	ld d, a                                          ; $40da: $57
	xor a                                            ; $40db: $af
	and a                                            ; $40dc: $a7
	ld a, e                                          ; $40dd: $7b
	db $fc                                           ; $40de: $fc
	sub h                                            ; $40df: $94
	ld l, d                                          ; $40e0: $6a
	sub a                                            ; $40e1: $97
	or l                                             ; $40e2: $b5
	ld e, e                                          ; $40e3: $5b
	adc b                                            ; $40e4: $88
	rst $38                                          ; $40e5: $ff
	rlca                                             ; $40e6: $07
	rst $38                                          ; $40e7: $ff
	inc sp                                           ; $40e8: $33
	rst $38                                          ; $40e9: $ff
	cp a                                             ; $40ea: $bf
	db $dd                                           ; $40eb: $dd
	rst $38                                          ; $40ec: $ff
	ld a, a                                          ; $40ed: $7f
	ld e, a                                          ; $40ee: $5f
	sbc [hl]                                         ; $40ef: $9e
	ld hl, sp+$5f                                    ; $40f0: $f8 $5f
	ld [de], a                                       ; $40f2: $12
	ld a, a                                          ; $40f3: $7f
	or $9c                                           ; $40f4: $f6 $9c
	db $fc                                           ; $40f6: $fc
	cp $22                                           ; $40f7: $fe $22
	ld a, e                                          ; $40f9: $7b
	cpl                                              ; $40fa: $2f
	adc c                                            ; $40fb: $89
	ld l, l                                          ; $40fc: $6d
	rst SubAFromDE                                          ; $40fd: $df
	rst FarCall                                          ; $40fe: $f7
	rst AddAOntoHL                                          ; $40ff: $ef
	ld e, a                                          ; $4100: $5f
	or a                                             ; $4101: $b7
	ld [$fb1f], a                                    ; $4102: $ea $1f $fb
	rlca                                             ; $4105: $07
	ld sp, hl                                        ; $4106: $f9
	rlca                                             ; $4107: $07
	di                                               ; $4108: $f3
	rrca                                             ; $4109: $0f
	and $1f                                          ; $410a: $e6 $1f
	ld c, b                                          ; $410c: $48
	cp a                                             ; $410d: $bf
	cp a                                             ; $410e: $bf
	rst $38                                          ; $410f: $ff
	ret nz                                           ; $4110: $c0

	ldh [$be], a                                     ; $4111: $e0 $be
	ret nz                                           ; $4113: $c0

	nop                                              ; $4114: $00
	nop                                              ; $4115: $00
	call Call_024_7bff                               ; $4116: $cd $ff $7b
	ret z                                            ; $4119: $c8

	ld [hl], e                                       ; $411a: $73
	ld a, [$607e]                                    ; $411b: $fa $7e $60
	sbc [hl]                                         ; $411e: $9e
	ldh a, [c]                                       ; $411f: $f2
	ld e, d                                          ; $4120: $5a
	ld h, b                                          ; $4121: $60
	add b                                            ; $4122: $80
	rst AddAOntoHL                                          ; $4123: $ef
	rst $38                                          ; $4124: $ff
	ldh a, [rIE]                                     ; $4125: $f0 $ff
	ld a, [$e5fc]                                    ; $4127: $fa $fc $e5
	cp $9f                                           ; $412a: $fe $9f
	ldh [$78], a                                     ; $412c: $e0 $78
	add b                                            ; $412e: $80
	and e                                            ; $412f: $a3
	ret nz                                           ; $4130: $c0

	ld c, l                                          ; $4131: $4d
	add d                                            ; $4132: $82
	xor b                                            ; $4133: $a8
	rlca                                             ; $4134: $07
	ld a, d                                          ; $4135: $7a
	rlca                                             ; $4136: $07
	call $a433                                       ; $4137: $cd $33 $a4
	ld a, e                                          ; $413a: $7b
	or [hl]                                          ; $413b: $b6
	ld a, l                                          ; $413c: $7d
	cp a                                             ; $413d: $bf
	ld a, a                                          ; $413e: $7f
	ld sp, $50f8                                     ; $413f: $31 $f8 $50
	sbc h                                            ; $4142: $9c
	ldh a, [$a2]                                     ; $4143: $f0 $a2
	ldh a, [c]                                       ; $4145: $f2
	sbc $f0                                          ; $4146: $de $f0
	add b                                            ; $4148: $80
	ld hl, sp-$06                                    ; $4149: $f8 $fa
	ld sp, hl                                        ; $414b: $f9
	rst FarCall                                          ; $414c: $f7
	ldh a, [c]                                       ; $414d: $f2
	rst FarCall                                          ; $414e: $f7
	rst $38                                          ; $414f: $ff
	db $fd                                           ; $4150: $fd
	db $ed                                           ; $4151: $ed
	rst JumpTable                                          ; $4152: $c7
	rst AddAOntoHL                                          ; $4153: $ef
	rst JumpTable                                          ; $4154: $c7

jr_024_4155:
	add e                                            ; $4155: $83
	rst JumpTable                                          ; $4156: $c7
	xor $fe                                          ; $4157: $ee $fe
	db $ed                                           ; $4159: $ed
	cp $ff                                           ; $415a: $fe $ff
	ld [hl], e                                       ; $415c: $73
	pop hl                                           ; $415d: $e1
	pop hl                                           ; $415e: $e1
	ret nz                                           ; $415f: $c0

	call nz, $a0c4                                   ; $4160: $c4 $c4 $a0
	ld b, b                                          ; $4163: $40
	ld bc, $3160                                     ; $4164: $01 $60 $31
	ld c, d                                          ; $4167: $4a
	sub b                                            ; $4168: $90
	ld [hl], c                                       ; $4169: $71
	adc d                                            ; $416a: $8a
	ldh [c], a                                       ; $416b: $e2
	ld de, $13e5                                     ; $416c: $11 $e5 $13
	ld b, h                                          ; $416f: $44
	xor a                                            ; $4170: $af
	sbc a                                            ; $4171: $9f
	rst $38                                          ; $4172: $ff
	add sp, -$10                                     ; $4173: $e8 $f0
	ld b, b                                          ; $4175: $40
	add b                                            ; $4176: $80
	add b                                            ; $4177: $80
	cp a                                             ; $4178: $bf
	nop                                              ; $4179: $00
	ld b, a                                          ; $417a: $47
	sbc l                                            ; $417b: $9d
	rst $38                                          ; $417c: $ff
	ld c, a                                          ; $417d: $4f
	ld a, e                                          ; $417e: $7b
	and [hl]                                         ; $417f: $a6
	sub [hl]                                         ; $4180: $96
	rst FarCall                                          ; $4181: $f7
	ld e, a                                          ; $4182: $5f
	rst SubAFromHL                                          ; $4183: $d7
	ld e, a                                          ; $4184: $5f
	ld [hl], a                                       ; $4185: $77
	rst SubAFromDE                                          ; $4186: $df
	rst AddAOntoHL                                          ; $4187: $ef
	ld a, a                                          ; $4188: $7f
	ld a, a                                          ; $4189: $7f
	ld b, d                                          ; $418a: $42
	ret nz                                           ; $418b: $c0

	ld c, a                                          ; $418c: $4f
	and b                                            ; $418d: $a0
	sbc b                                            ; $418e: $98
	pop af                                           ; $418f: $f1
	ld hl, sp-$18                                    ; $4190: $f8 $e8
	push af                                          ; $4192: $f5
	db $f4                                           ; $4193: $f4
	ld sp, hl                                        ; $4194: $f9
	db $fc                                           ; $4195: $fc
	ld a, e                                          ; $4196: $7b
	dec e                                            ; $4197: $1d
	rst SubAFromDE                                          ; $4198: $df
	ei                                               ; $4199: $fb
	ld a, a                                          ; $419a: $7f
	jp z, $fe9b                                      ; $419b: $ca $9b $fe

	rst AddAOntoHL                                          ; $419e: $ef
	xor l                                            ; $419f: $ad
	add $57                                          ; $41a0: $c6 $57
	and b                                            ; $41a2: $a0
	sub e                                            ; $41a3: $93
	and b                                            ; $41a4: $a0
	ld e, c                                          ; $41a5: $59
	ld a, c                                          ; $41a6: $79
	add h                                            ; $41a7: $84
	ld sp, hl                                        ; $41a8: $f9
	dec b                                            ; $41a9: $05
	rst $38                                          ; $41aa: $ff
	inc bc                                           ; $41ab: $03
	ld [hl], a                                       ; $41ac: $77
	adc h                                            ; $41ad: $8c
	cp a                                             ; $41ae: $bf
	rst SubAFromDE                                          ; $41af: $df
	ld h, a                                          ; $41b0: $67
	and b                                            ; $41b1: $a0
	pop af                                           ; $41b2: $f1
	ld a, a                                          ; $41b3: $7f
	cp a                                             ; $41b4: $bf
	sbc l                                            ; $41b5: $9d
	add sp, -$08                                     ; $41b6: $e8 $f8
	db $db                                           ; $41b8: $db
	ldh a, [$dd]                                     ; $41b9: $f0 $dd
	ldh [$df], a                                     ; $41bb: $e0 $df
	ret nz                                           ; $41bd: $c0

	ccf                                              ; $41be: $3f
	and b                                            ; $41bf: $a0
	sbc l                                            ; $41c0: $9d
	push af                                          ; $41c1: $f5
	ld a, [$0277]                                    ; $41c2: $fa $77 $02
	ld l, [hl]                                       ; $41c5: $6e
	ld hl, sp+$7e                                    ; $41c6: $f8 $7e
	cp $5f                                           ; $41c8: $fe $5f
	and b                                            ; $41ca: $a0
	sub c                                            ; $41cb: $91
	nop                                              ; $41cc: $00
	ld h, c                                          ; $41cd: $61
	and h                                            ; $41ce: $a4
	ld e, c                                          ; $41cf: $59
	ld a, h                                          ; $41d0: $7c
	add c                                            ; $41d1: $81
	ei                                               ; $41d2: $fb
	ld bc, $03ff                                     ; $41d3: $01 $ff $03
	ld a, a                                          ; $41d6: $7f
	inc b                                            ; $41d7: $04
	rst $38                                          ; $41d8: $ff
	sbc a                                            ; $41d9: $9f
	daa                                              ; $41da: $27
	and b                                            ; $41db: $a0
	rst SubAFromDE                                          ; $41dc: $df
	ret c                                            ; $41dd: $d8

	rst SubAFromDE                                          ; $41de: $df
	ld hl, sp-$22                                    ; $41df: $f8 $de
	ldh a, [$df]                                     ; $41e1: $f0 $df
	or b                                             ; $41e3: $b0
	sbc h                                            ; $41e4: $9c
	db $10                                           ; $41e5: $10
	ldh [$a0], a                                     ; $41e6: $e0 $a0
	dec hl                                           ; $41e8: $2b
	and b                                            ; $41e9: $a0
	sbc [hl]                                         ; $41ea: $9e
	ld hl, sp+$75                                    ; $41eb: $f8 $75
	nop                                              ; $41ed: $00
	ccf                                              ; $41ee: $3f
	and b                                            ; $41ef: $a0
	ld l, a                                          ; $41f0: $6f
	ld b, b                                          ; $41f1: $40
	sbc [hl]                                         ; $41f2: $9e
	rst $38                                          ; $41f3: $ff
	ld a, e                                          ; $41f4: $7b
	and b                                            ; $41f5: $a0
	ld d, a                                          ; $41f6: $57
	ld b, b                                          ; $41f7: $40
	ccf                                              ; $41f8: $3f
	ret nz                                           ; $41f9: $c0

	ld a, [hl]                                       ; $41fa: $7e
	sbc h                                            ; $41fb: $9c
	ld a, a                                          ; $41fc: $7f
	cp a                                             ; $41fd: $bf
	dec hl                                           ; $41fe: $2b
	ret nz                                           ; $41ff: $c0

	sbc l                                            ; $4200: $9d
	ld e, e                                          ; $4201: $5b
	ld [hl], b                                       ; $4202: $70
	ld [hl], e                                       ; $4203: $73
	ld h, b                                          ; $4204: $60
	ld d, a                                          ; $4205: $57
	ret nz                                           ; $4206: $c0

	ld a, l                                          ; $4207: $7d
	call c, $5e7d                                    ; $4208: $dc $7d $5e
	ld a, l                                          ; $420b: $7d
	ld h, d                                          ; $420c: $62
	sbc [hl]                                         ; $420d: $9e
	cpl                                              ; $420e: $2f
	ld a, d                                          ; $420f: $7a
	sbc d                                            ; $4210: $9a
	sbc h                                            ; $4211: $9c
	ld e, a                                          ; $4212: $5f
	rst $38                                          ; $4213: $ff
	adc a                                            ; $4214: $8f
	ld de, $8a60                                     ; $4215: $11 $60 $8a
	add a                                            ; $4218: $87
	rst $38                                          ; $4219: $ff
	ld [hl], d                                       ; $421a: $72
	rst GetHLinHL                                          ; $421b: $cf
	ld l, c                                          ; $421c: $69
	rla                                              ; $421d: $17
	sbc h                                            ; $421e: $9c
	inc bc                                           ; $421f: $03
	dec b                                            ; $4220: $05
	ld [bc], a                                       ; $4221: $02
	jp z, Jump_024_7700                              ; $4222: $ca $00 $77

	ld [bc], a                                       ; $4225: $02
	cp l                                             ; $4226: $bd
	inc hl                                           ; $4227: $23
	sub [hl]                                         ; $4228: $96
	ld a, c                                          ; $4229: $79
	ld c, c                                          ; $422a: $49
	cp [hl]                                          ; $422b: $be
	add h                                            ; $422c: $84
	jp nc, Jump_024_6dff                             ; $422d: $d2 $ff $6d

	add b                                            ; $4230: $80
	sub e                                            ; $4231: $93
	ld e, a                                          ; $4232: $5f
	cp a                                             ; $4233: $bf
	rrca                                             ; $4234: $0f
	ld a, a                                          ; $4235: $7f
	ld c, a                                          ; $4236: $4f
	cp a                                             ; $4237: $bf
	and a                                            ; $4238: $a7
	rst SubAFromDE                                          ; $4239: $df
	sub a                                            ; $423a: $97
	rst AddAOntoHL                                          ; $423b: $ef
	ld h, a                                          ; $423c: $67
	rst SubAFromDE                                          ; $423d: $df
	ld d, l                                          ; $423e: $55
	nop                                              ; $423f: $00
	rst GetHLinHL                                          ; $4240: $cf
	rst $38                                          ; $4241: $ff
	rst SubAFromDE                                          ; $4242: $df
	sbc b                                            ; $4243: $98
	sbc [hl]                                         ; $4244: $9e
	adc e                                            ; $4245: $8b
	sbc $ab                                          ; $4246: $de $ab
	rst SubAFromDE                                          ; $4248: $df
	xor c                                            ; $4249: $a9
	rst SubAFromDE                                          ; $424a: $df
	xor e                                            ; $424b: $ab
	ld a, a                                          ; $424c: $7f
	ld hl, sp-$21                                    ; $424d: $f8 $df
	sbc b                                            ; $424f: $98
	rst SubAFromDE                                          ; $4250: $df
	rst $38                                          ; $4251: $ff
	rst SubAFromDE                                          ; $4252: $df
	xor b                                            ; $4253: $a8
	db $dd                                           ; $4254: $dd
	xor e                                            ; $4255: $ab
	ld l, a                                          ; $4256: $6f
	ldh a, [$df]                                     ; $4257: $f0 $df
	ret c                                            ; $4259: $d8

	rst SubAFromDE                                          ; $425a: $df
	rst $38                                          ; $425b: $ff
	rst SubAFromDE                                          ; $425c: $df
	cp l                                             ; $425d: $bd
	sbc [hl]                                         ; $425e: $9e
	cp b                                             ; $425f: $b8
	jp c, Jump_024_7fba                              ; $4260: $da $ba $7f

	ld hl, sp-$21                                    ; $4263: $f8 $df
	adc l                                            ; $4265: $8d
	rst SubAFromDE                                          ; $4266: $df
	rst $38                                          ; $4267: $ff
	sbc l                                            ; $4268: $9d
	adc b                                            ; $4269: $88
	sbc b                                            ; $426a: $98
	db $dd                                           ; $426b: $dd
	xor e                                            ; $426c: $ab
	sbc l                                            ; $426d: $9d
	adc c                                            ; $426e: $89
	sbc c                                            ; $426f: $99
	db $dd                                           ; $4270: $dd
	cp e                                             ; $4271: $bb
	rst SubAFromDE                                          ; $4272: $df
	cp b                                             ; $4273: $b8
	rst SubAFromDE                                          ; $4274: $df
	rst $38                                          ; $4275: $ff
	rst SubAFromDE                                          ; $4276: $df
	sbc a                                            ; $4277: $9f
	sbc [hl]                                         ; $4278: $9e
	adc a                                            ; $4279: $8f
	jp c, Jump_024_7faf                              ; $427a: $da $af $7f

	ld hl, sp-$21                                    ; $427d: $f8 $df
	sbc a                                            ; $427f: $9f
	rst SubAFromDE                                          ; $4280: $df
	rst $38                                          ; $4281: $ff
	rst SubAFromDE                                          ; $4282: $df
	dec [hl]                                         ; $4283: $35
	sub e                                            ; $4284: $93
	dec d                                            ; $4285: $15
	ld d, l                                          ; $4286: $55
	ld d, c                                          ; $4287: $51
	ld d, l                                          ; $4288: $55
	dec sp                                           ; $4289: $3b
	dec sp                                           ; $428a: $3b
	ld e, e                                          ; $428b: $5b
	ld e, e                                          ; $428c: $5b
	dec de                                           ; $428d: $1b
	ld e, e                                          ; $428e: $5b
	dec sp                                           ; $428f: $3b
	dec sp                                           ; $4290: $3b
	pop de                                           ; $4291: $d1
	rst $38                                          ; $4292: $ff
	inc bc                                           ; $4293: $03
	nop                                              ; $4294: $00
	db $fd                                           ; $4295: $fd
	db $ed                                           ; $4296: $ed
	ld bc, $f0d1                                     ; $4297: $01 $d1 $f0
	ld sp, hl                                        ; $429a: $f9
	sbc d                                            ; $429b: $9a
	inc e                                            ; $429c: $1c
	nop                                              ; $429d: $00
	ld a, $00                                        ; $429e: $3e $00
	ld a, a                                          ; $42a0: $7f
	ld a, e                                          ; $42a1: $7b
	cp $f6                                           ; $42a2: $fe $f6
	rst SubAFromDE                                          ; $42a4: $df
	ld bc, $03df                                     ; $42a5: $01 $df $03
	sbc [hl]                                         ; $42a8: $9e
	rlca                                             ; $42a9: $07
	ld sp, hl                                        ; $42aa: $f9
	sbc b                                            ; $42ab: $98
	db $fc                                           ; $42ac: $fc
	ld a, [hl]                                       ; $42ad: $7e
	db $fc                                           ; $42ae: $fc
	db $fc                                           ; $42af: $fc
	ld hl, sp-$08                                    ; $42b0: $f8 $f8
	pop af                                           ; $42b2: $f1
	ld h, e                                          ; $42b3: $63
	ret nc                                           ; $42b4: $d0

	sub a                                            ; $42b5: $97
	rla                                              ; $42b6: $17
	rrca                                             ; $42b7: $0f
	rra                                              ; $42b8: $1f
	ccf                                              ; $42b9: $3f
	rst $38                                          ; $42ba: $ff
	ld a, a                                          ; $42bb: $7f
	rst $38                                          ; $42bc: $ff
	rst $38                                          ; $42bd: $ff
	ld sp, hl                                        ; $42be: $f9
	sbc d                                            ; $42bf: $9a
	rst JumpTable                                          ; $42c0: $c7
	ret nz                                           ; $42c1: $c0

	rst GetHLinHL                                          ; $42c2: $cf
	ret nz                                           ; $42c3: $c0

	rst SubAFromDE                                          ; $42c4: $df
	ld a, e                                          ; $42c5: $7b
	cp $f7                                           ; $42c6: $fe $f7
	sbc c                                            ; $42c8: $99
	add b                                            ; $42c9: $80
	nop                                              ; $42ca: $00
	pop bc                                           ; $42cb: $c1
	ld bc, $03c3                                     ; $42cc: $01 $c3 $03
	ld sp, hl                                        ; $42cf: $f9
	sbc l                                            ; $42d0: $9d

jr_024_42d1:
	rrca                                             ; $42d1: $0f
	ccf                                              ; $42d2: $3f
	ld a, e                                          ; $42d3: $7b
	db $d3                                           ; $42d4: $d3
	sbc $ff                                          ; $42d5: $de $ff
	ld sp, hl                                        ; $42d7: $f9
	sbc d                                            ; $42d8: $9a
	ld c, $00                                        ; $42d9: $0e $00
	rra                                              ; $42db: $1f
	nop                                              ; $42dc: $00
	ccf                                              ; $42dd: $3f
	ld a, e                                          ; $42de: $7b
	cp $f5                                           ; $42df: $fe $f5
	sbc h                                            ; $42e1: $9c
	add b                                            ; $42e2: $80
	ld bc, $6381                                     ; $42e3: $01 $81 $63
	ret nc                                           ; $42e6: $d0

	sbc e                                            ; $42e7: $9b
	ld a, [hl]                                       ; $42e8: $7e
	ccf                                              ; $42e9: $3f
	ld a, [hl]                                       ; $42ea: $7e
	cp $77                                           ; $42eb: $fe $77
	adc [hl]                                         ; $42ed: $8e
	pop de                                           ; $42ee: $d1
	rrca                                             ; $42ef: $0f
	pop de                                           ; $42f0: $d1
	ldh a, [$7f]                                     ; $42f1: $f0 $7f
	ld c, [hl]                                       ; $42f3: $4e
	ld a, a                                          ; $42f4: $7f
	ld c, b                                          ; $42f5: $48
	ld a, a                                          ; $42f6: $7f
	ld b, h                                          ; $42f7: $44
	rst $38                                          ; $42f8: $ff
	ld a, a                                          ; $42f9: $7f
	and c                                            ; $42fa: $a1
	db $db                                           ; $42fb: $db
	ld a, a                                          ; $42fc: $7f
	sbc d                                            ; $42fd: $9a
	rlca                                             ; $42fe: $07
	rrca                                             ; $42ff: $0f
	rrca                                             ; $4300: $0f
	rra                                              ; $4301: $1f
	rra                                              ; $4302: $1f
	ld a, e                                          ; $4303: $7b
	sub h                                            ; $4304: $94
	rst SubAFromDE                                          ; $4305: $df
	cp $77                                           ; $4306: $fe $77
	jp nz, $f895                                     ; $4308: $c2 $95 $f8

	db $fc                                           ; $430b: $fc
	db $e3                                           ; $430c: $e3
	pop hl                                           ; $430d: $e1
	rst JumpTable                                          ; $430e: $c7
	jp $8783                                         ; $430f: $c3 $83 $87


	rrca                                             ; $4312: $0f
	rlca                                             ; $4313: $07
	ld a, e                                          ; $4314: $7b
	add sp, $7b                                      ; $4315: $e8 $7b
	and $7f                                          ; $4317: $e6 $7f
	cp $99                                           ; $4319: $fe $99
	cp $ff                                           ; $431b: $fe $ff
	ld hl, sp-$04                                    ; $431d: $f8 $fc
	ldh a, [$f0]                                     ; $431f: $f0 $f0
	sbc $e0                                          ; $4321: $de $e0
	sub h                                            ; $4323: $94
	ret nz                                           ; $4324: $c0

	add b                                            ; $4325: $80
	ret nz                                           ; $4326: $c0

	ret nz                                           ; $4327: $c0

	add b                                            ; $4328: $80
	nop                                              ; $4329: $00
	add b                                            ; $432a: $80
	rra                                              ; $432b: $1f
	ret nz                                           ; $432c: $c0

	rrca                                             ; $432d: $0f
	nop                                              ; $432e: $00
	ld h, e                                          ; $432f: $63
	dec de                                           ; $4330: $1b
	ld [hl], a                                       ; $4331: $77
	jr c, jr_024_42d1                                ; $4332: $38 $9d

	rlca                                             ; $4334: $07
	adc a                                            ; $4335: $8f
	ld [hl], a                                       ; $4336: $77
	cp [hl]                                          ; $4337: $be
	ld a, e                                          ; $4338: $7b
	cp h                                             ; $4339: $bc
	rst SubAFromDE                                          ; $433a: $df
	ccf                                              ; $433b: $3f
	sub a                                            ; $433c: $97
	ld a, $7f                                        ; $433d: $3e $7f
	ld a, $7e                                        ; $433f: $3e $7e
	ld hl, sp-$01                                    ; $4341: $f8 $ff
	ldh [$f0], a                                     ; $4343: $e0 $f0
	ld a, e                                          ; $4345: $7b
	rst SubAFromHL                                          ; $4346: $d7
	ld a, e                                          ; $4347: $7b
	sub $ff                                          ; $4348: $d6 $ff
	sbc d                                            ; $434a: $9a
	inc c                                            ; $434b: $0c
	ld e, $1e                                        ; $434c: $1e $1e
	ccf                                              ; $434e: $3f
	ccf                                              ; $434f: $3f
	ld a, e                                          ; $4350: $7b
	ld c, b                                          ; $4351: $48
	ld a, a                                          ; $4352: $7f
	ld b, h                                          ; $4353: $44
	rst $38                                          ; $4354: $ff
	ld [hl], a                                       ; $4355: $77
	ldh [$dd], a                                     ; $4356: $e0 $dd
	ccf                                              ; $4358: $3f
	sbc [hl]                                         ; $4359: $9e
	add e                                            ; $435a: $83
	ld [hl], a                                       ; $435b: $77
	and [hl]                                         ; $435c: $a6
	ld [hl], a                                       ; $435d: $77
	adc a                                            ; $435e: $8f
	ld [hl], e                                       ; $435f: $73
	adc [hl]                                         ; $4360: $8e
	sbc l                                            ; $4361: $9d
	db $fc                                           ; $4362: $fc
	cp $77                                           ; $4363: $fe $77
	and h                                            ; $4365: $a4
	ld [hl], e                                       ; $4366: $73
	ret nc                                           ; $4367: $d0

	ld h, a                                          ; $4368: $67
	ld [$4007], sp                                   ; $4369: $08 $07 $40
	sbc [hl]                                         ; $436c: $9e
	ld a, a                                          ; $436d: $7f
	db $d3                                           ; $436e: $d3
	ld a, h                                          ; $436f: $7c
	rst SubAFromDE                                          ; $4370: $df
	db $fc                                           ; $4371: $fc
	sub a                                            ; $4372: $97
	ld a, h                                          ; $4373: $7c
	cp $7e                                           ; $4374: $fe $7e
	ld a, [hl]                                       ; $4376: $7e
	ld a, a                                          ; $4377: $7f
	ccf                                              ; $4378: $3f
	rra                                              ; $4379: $1f
	ccf                                              ; $437a: $3f
	sbc $1f                                          ; $437b: $de $1f
	ld l, e                                          ; $437d: $6b
	ld c, h                                          ; $437e: $4c
	ld [hl], e                                       ; $437f: $73
	cp $98                                           ; $4380: $fe $98
	adc a                                            ; $4382: $8f
	add a                                            ; $4383: $87
	adc a                                            ; $4384: $8f
	rst GetHLinHL                                          ; $4385: $cf
	rst JumpTable                                          ; $4386: $c7
	jp Jump_024_7be7                                 ; $4387: $c3 $e7 $7b


	ld a, b                                          ; $438a: $78
	ld a, e                                          ; $438b: $7b
	cp $7b                                           ; $438c: $fe $7b
	sbc a                                            ; $438e: $9f
	sbc d                                            ; $438f: $9a
	ret nz                                           ; $4390: $c0

	ldh [$c0], a                                     ; $4391: $e0 $c0
	ldh [$e0], a                                     ; $4393: $e0 $e0
	ld e, [hl]                                       ; $4395: $5e
	ld b, b                                          ; $4396: $40
	ei                                               ; $4397: $fb
	ld a, a                                          ; $4398: $7f
	ld [hl], $7f                                     ; $4399: $36 $7f
	ld c, [hl]                                       ; $439b: $4e
	ld [hl], e                                       ; $439c: $73
	cp $7f                                           ; $439d: $fe $7f
	cp a                                             ; $439f: $bf
	ld [hl], e                                       ; $43a0: $73
	cp [hl]                                          ; $43a1: $be
	ld a, e                                          ; $43a2: $7b
	ld h, [hl]                                       ; $43a3: $66
	sbc $3f                                          ; $43a4: $de $3f
	ld a, a                                          ; $43a6: $7f
	ld c, d                                          ; $43a7: $4a
	ld a, a                                          ; $43a8: $7f
	ld b, [hl]                                       ; $43a9: $46
	ld a, e                                          ; $43aa: $7b
	ld l, a                                          ; $43ab: $6f
	ld a, e                                          ; $43ac: $7b
	jp z, $cc7f                                      ; $43ad: $ca $7f $cc

	ld a, e                                          ; $43b0: $7b
	ld a, [hl+]                                      ; $43b1: $2a
	call nc, $df3e                                   ; $43b2: $d4 $3e $df
	cp $77                                           ; $43b5: $fe $77
	call nc, $d57f                                   ; $43b7: $d4 $7f $d5
	ld a, e                                          ; $43ba: $7b
	sbc [hl]                                         ; $43bb: $9e
	rst SubAFromDE                                          ; $43bc: $df
	rrca                                             ; $43bd: $0f
	sbc $07                                          ; $43be: $de $07
	ld l, d                                          ; $43c0: $6a
	halt                                             ; $43c1: $76
	ld a, e                                          ; $43c2: $7b
	and b                                            ; $43c3: $a0
	rst SubAFromDE                                          ; $43c4: $df
	ret nz                                           ; $43c5: $c0

	sbc $e0                                          ; $43c6: $de $e0
	sbc [hl]                                         ; $43c8: $9e
	ldh a, [rTAC]                                    ; $43c9: $f0 $07
	ld b, b                                          ; $43cb: $40
	sub $7c                                          ; $43cc: $d6 $7c
	sbc [hl]                                         ; $43ce: $9e
	jr c, jr_024_4444                                ; $43cf: $38 $73

	ld a, [hl]                                       ; $43d1: $7e
	rst SubAFromDE                                          ; $43d2: $df
	rlca                                             ; $43d3: $07
	sbc h                                            ; $43d4: $9c
	inc bc                                           ; $43d5: $03
	ld bc, $de03                                     ; $43d6: $01 $03 $de
	ld bc, $9afa                                     ; $43d9: $01 $fa $9a
	rst FarCall                                          ; $43dc: $f7
	db $e3                                           ; $43dd: $e3
	di                                               ; $43de: $f3
	pop af                                           ; $43df: $f1
	pop af                                           ; $43e0: $f1
	db $dd                                           ; $43e1: $dd
	ld hl, sp-$64                                    ; $43e2: $f8 $9c
	db $fc                                           ; $43e4: $fc
	ld a, b                                          ; $43e5: $78
	db $fc                                           ; $43e6: $fc
	db $fd                                           ; $43e7: $fd
	ld a, a                                          ; $43e8: $7f
	ld hl, sp+$7e                                    ; $43e9: $f8 $7e
	ld a, [hl]                                       ; $43eb: $7e
	sbc $ff                                          ; $43ec: $de $ff
	sbc d                                            ; $43ee: $9a
	ld a, a                                          ; $43ef: $7f
	rra                                              ; $43f0: $1f
	ccf                                              ; $43f1: $3f
	rla                                              ; $43f2: $17
	rrca                                             ; $43f3: $0f
	ld [hl], d                                       ; $43f4: $72
	ldh [$7e], a                                     ; $43f5: $e0 $7e
	or [hl]                                          ; $43f7: $b6
	ld [hl], c                                       ; $43f8: $71
	ret z                                            ; $43f9: $c8

	ld a, l                                          ; $43fa: $7d
	jp nz, $be7d                                     ; $43fb: $c2 $7d $be

	db $fd                                           ; $43fe: $fd
	ld a, [hl]                                       ; $43ff: $7e
	add d                                            ; $4400: $82
	ld a, [hl]                                       ; $4401: $7e
	ld a, [hl]                                       ; $4402: $7e
	ld a, l                                          ; $4403: $7d
	jp z, $c67d                                      ; $4404: $ca $7d $c6

	ld h, [hl]                                       ; $4407: $66
	cp a                                             ; $4408: $bf
	ld a, a                                          ; $4409: $7f
	ld a, [hl]                                       ; $440a: $7e
	ld a, [hl]                                       ; $440b: $7e
	ld a, [hl]                                       ; $440c: $7e
	ld [hl], e                                       ; $440d: $73
	rst GetHLinHL                                          ; $440e: $cf
	sbc l                                            ; $440f: $9d
	rst $38                                          ; $4410: $ff
	rrca                                             ; $4411: $0f
	ld [hl], c                                       ; $4412: $71
	db $d3                                           ; $4413: $d3
	sub $3e                                          ; $4414: $d6 $3e
	halt                                             ; $4416: $76
	add hl, bc                                       ; $4417: $09
	sbc [hl]                                         ; $4418: $9e
	nop                                              ; $4419: $00
	sbc $03                                          ; $441a: $de $03
	ld a, a                                          ; $441c: $7f
	sub l                                            ; $441d: $95
	ld h, a                                          ; $441e: $67
	sub e                                            ; $441f: $93
	ld [hl], a                                       ; $4420: $77
	and b                                            ; $4421: $a0
	ld a, a                                          ; $4422: $7f
	ret nc                                           ; $4423: $d0

	ld a, e                                          ; $4424: $7b
	sub h                                            ; $4425: $94
	sbc $fc                                          ; $4426: $de $fc
	sbc h                                            ; $4428: $9c
	ld a, [hl]                                       ; $4429: $7e
	inc a                                            ; $442a: $3c
	ld a, [hl]                                       ; $442b: $7e
	ld [bc], a                                       ; $442c: $02
	add b                                            ; $442d: $80
	halt                                             ; $442e: $76
	add b                                            ; $442f: $80
	sbc d                                            ; $4430: $9a
	ld d, l                                          ; $4431: $55
	ld l, e                                          ; $4432: $6b
	ld a, a                                          ; $4433: $7f
	ld a, a                                          ; $4434: $7f
	ld d, l                                          ; $4435: $55
	rst FarCall                                          ; $4436: $f7
	sbc c                                            ; $4437: $99
	dec hl                                           ; $4438: $2b
	cp $df                                           ; $4439: $fe $df
	ld a, [hl]                                       ; $443b: $7e
	ld a, a                                          ; $443c: $7f
	cp $f7                                           ; $443d: $fe $f7
	sbc c                                            ; $443f: $99
	sub a                                            ; $4440: $97
	cp d                                             ; $4441: $ba
	or a                                             ; $4442: $b7
	and l                                            ; $4443: $a5

jr_024_4444:
	sub a                                            ; $4444: $97
	cp d                                             ; $4445: $ba
	rst FarCall                                          ; $4446: $f7
	sbc [hl]                                         ; $4447: $9e
	cp [hl]                                          ; $4448: $be
	sbc $fe                                          ; $4449: $de $fe
	sbc l                                            ; $444b: $9d
	db $fd                                           ; $444c: $fd
	di                                               ; $444d: $f3
	rst FarCall                                          ; $444e: $f7
	rst SubAFromDE                                          ; $444f: $df
	db $fc                                           ; $4450: $fc
	sbc h                                            ; $4451: $9c
	ret c                                            ; $4452: $d8

	db $fc                                           ; $4453: $fc
	ld a, h                                          ; $4454: $7c
	ld [hl], e                                       ; $4455: $73
	ld h, $fb                                        ; $4456: $26 $fb
	sbc d                                            ; $4458: $9a
	rst AddAOntoHL                                          ; $4459: $ef
	rst $38                                          ; $445a: $ff
	cp l                                             ; $445b: $bd
	rst $38                                          ; $445c: $ff
	db $ed                                           ; $445d: $ed
	ld h, c                                          ; $445e: $61
	ld a, [de]                                       ; $445f: $1a
	rst $38                                          ; $4460: $ff
	sbc c                                            ; $4461: $99
	db $fd                                           ; $4462: $fd
	rst $38                                          ; $4463: $ff
	ld l, a                                          ; $4464: $6f
	rst FarCall                                          ; $4465: $f7
	sbc $d6                                          ; $4466: $de $d6
	rst FarCall                                          ; $4468: $f7
	sbc d                                            ; $4469: $9a
	ld e, l                                          ; $446a: $5d
	rst $38                                          ; $446b: $ff
	rst FarCall                                          ; $446c: $f7
	rst $38                                          ; $446d: $ff
	db $dd                                           ; $446e: $dd
	ld e, e                                          ; $446f: $5b
	ldh [$99], a                                     ; $4470: $e0 $99
	rst SubAFromBC                                          ; $4472: $e7
	push hl                                          ; $4473: $e5
	and $46                                          ; $4474: $e6 $46
	ld b, a                                          ; $4476: $47
	ld b, l                                          ; $4477: $45
	rst FarCall                                          ; $4478: $f7
	sbc c                                            ; $4479: $99
	or $5e                                           ; $447a: $f6 $5e
	cp h                                             ; $447c: $bc
	cp $f6                                           ; $447d: $fe $f6
	ld e, [hl]                                       ; $447f: $5e
	rst FarCall                                          ; $4480: $f7
	pop de                                           ; $4481: $d1
	rrca                                             ; $4482: $0f
	dec de                                           ; $4483: $1b
	nop                                              ; $4484: $00
	sbc c                                            ; $4485: $99
	ld [bc], a                                       ; $4486: $02
	ld de, $3413                                     ; $4487: $11 $13 $34
	ld b, h                                          ; $448a: $44
	db $10                                           ; $448b: $10
	ld l, a                                          ; $448c: $6f
	ld a, [$019a]                                    ; $448d: $fa $9a $01
	ld de, $1113                                     ; $4490: $11 $13 $11
	ld de, $fa77                                     ; $4493: $11 $77 $fa
	sbc [hl]                                         ; $4496: $9e
	ld sp, $fa77                                     ; $4497: $31 $77 $fa
	sbc $11                                          ; $449a: $de $11
	sbc [hl]                                         ; $449c: $9e
	db $10                                           ; $449d: $10
	inc c                                            ; $449e: $0c
	ld bc, $ffdf                                     ; $449f: $01 $df $ff
	db $dd                                           ; $44a2: $dd
	push af                                          ; $44a3: $f5
	sbc d                                            ; $44a4: $9a
	pop af                                           ; $44a5: $f1
	push af                                          ; $44a6: $f5
	di                                               ; $44a7: $f3
	di                                               ; $44a8: $f3
	pop af                                           ; $44a9: $f1
	call c, $dff5                                    ; $44aa: $dc $f5 $df
	rst $38                                          ; $44ad: $ff
	rst SubAFromDE                                          ; $44ae: $df
	or l                                             ; $44af: $b5
	sbc l                                            ; $44b0: $9d
	ld de, $db55                                     ; $44b1: $11 $55 $db
	ld d, c                                          ; $44b4: $51
	ld a, a                                          ; $44b5: $7f
	ld hl, sp-$21                                    ; $44b6: $f8 $df
	or l                                             ; $44b8: $b5
	ld h, a                                          ; $44b9: $67
	ldh a, [$df]                                     ; $44ba: $f0 $df
	ld de, $55db                                     ; $44bc: $11 $db $55
	rst SubAFromDE                                          ; $44bf: $df
	rst $38                                          ; $44c0: $ff
	rst SubAFromDE                                          ; $44c1: $df
	dec e                                            ; $44c2: $1d
	sbc [hl]                                         ; $44c3: $9e
	cp b                                             ; $44c4: $b8
	sbc $ba                                          ; $44c5: $de $ba
	rst SubAFromDE                                          ; $44c7: $df
	cp e                                             ; $44c8: $bb
	rst SubAFromDE                                          ; $44c9: $df
	cp d                                             ; $44ca: $ba
	ld a, a                                          ; $44cb: $7f
	ld hl, sp-$21                                    ; $44cc: $f8 $df
	dec e                                            ; $44ce: $1d
	rst SubAFromDE                                          ; $44cf: $df
	rst $38                                          ; $44d0: $ff
	rst SubAFromDE                                          ; $44d1: $df
	jp c, $889d                                      ; $44d2: $da $9d $88

	xor d                                            ; $44d5: $aa
	db $dd                                           ; $44d6: $dd
	xor b                                            ; $44d7: $a8
	rst SubAFromDE                                          ; $44d8: $df
	xor d                                            ; $44d9: $aa
	sub a                                            ; $44da: $97
	adc d                                            ; $44db: $8a
	xor d                                            ; $44dc: $aa
	jp c, $ffda                                      ; $44dd: $da $da $ff

	rst $38                                          ; $44e0: $ff
	adc d                                            ; $44e1: $8a
	sbc d                                            ; $44e2: $9a
	db $dd                                           ; $44e3: $dd
	xor d                                            ; $44e4: $aa
	ld a, a                                          ; $44e5: $7f
	ld a, [$e077]                                    ; $44e6: $fa $77 $e0
	sbc c                                            ; $44e9: $99
	cp b                                             ; $44ea: $b8
	cp l                                             ; $44eb: $bd
	rst $38                                          ; $44ec: $ff
	rst $38                                          ; $44ed: $ff
	adc b                                            ; $44ee: $88
	adc b                                            ; $44ef: $88
	db $dd                                           ; $44f0: $dd
	db $db                                           ; $44f1: $db
	rst SubAFromDE                                          ; $44f2: $df
	reti                                             ; $44f3: $d9


	db $dd                                           ; $44f4: $dd
	db $db                                           ; $44f5: $db
	rst SubAFromDE                                          ; $44f6: $df
	ret c                                            ; $44f7: $d8

	rst SubAFromDE                                          ; $44f8: $df
	rst $38                                          ; $44f9: $ff
	sbc l                                            ; $44fa: $9d
	adc h                                            ; $44fb: $8c
	sbc h                                            ; $44fc: $9c
	db $dd                                           ; $44fd: $dd
	xor l                                            ; $44fe: $ad
	ld l, a                                          ; $44ff: $6f
	ld a, [$acdf]                                    ; $4500: $fa $df $ac
	rst SubAFromDE                                          ; $4503: $df
	rst $38                                          ; $4504: $ff
	rst SubAFromDE                                          ; $4505: $df
	ld d, h                                          ; $4506: $54
	sbc l                                            ; $4507: $9d
	add $d6                                          ; $4508: $c6 $d6
	jp c, $98c6                                      ; $450a: $da $c6 $98

	sub $56                                          ; $450d: $d6 $56
	ld d, [hl]                                       ; $450f: $56
	rst $38                                          ; $4510: $ff
	rst $38                                          ; $4511: $ff
	ld b, h                                          ; $4512: $44
	ld b, h                                          ; $4513: $44
	db $dd                                           ; $4514: $dd
	db $dd                                           ; $4515: $dd
	rst SubAFromDE                                          ; $4516: $df
	call z, $dddd                                    ; $4517: $cc $dd $dd
	rst SubAFromDE                                          ; $451a: $df
	push bc                                          ; $451b: $c5
	rst SubAFromDE                                          ; $451c: $df
	rst $38                                          ; $451d: $ff
	sbc h                                            ; $451e: $9c
	ld b, [hl]                                       ; $451f: $46
	add $6c                                          ; $4520: $c6 $6c
	sbc $6d                                          ; $4522: $de $6d
	sbc l                                            ; $4524: $9d
	ld l, h                                          ; $4525: $6c
	db $ec                                           ; $4526: $ec
	db $db                                           ; $4527: $db
	ld l, l                                          ; $4528: $6d
	rst SubAFromDE                                          ; $4529: $df
	rst $38                                          ; $452a: $ff
	rst SubAFromDE                                          ; $452b: $df
	push bc                                          ; $452c: $c5
	ld a, a                                          ; $452d: $7f
	ldh a, [$da]                                     ; $452e: $f0 $da
	ld l, h                                          ; $4530: $6c
	sbc h                                            ; $4531: $9c
	ld l, l                                          ; $4532: $6d
	ld b, l                                          ; $4533: $45
	ld b, l                                          ; $4534: $45
	ld [hl], a                                       ; $4535: $77
	ret nz                                           ; $4536: $c0

	sbc c                                            ; $4537: $99
	ld b, l                                          ; $4538: $45
	ld d, l                                          ; $4539: $55
	ld b, l                                          ; $453a: $45
	ld b, l                                          ; $453b: $45
	ld b, h                                          ; $453c: $44
	ld b, h                                          ; $453d: $44
	db $dd                                           ; $453e: $dd
	ld d, l                                          ; $453f: $55
	rst SubAFromDE                                          ; $4540: $df
	ld d, h                                          ; $4541: $54
	ld d, a                                          ; $4542: $57
	or b                                             ; $4543: $b0
	rst SubAFromDE                                          ; $4544: $df
	sub $77                                          ; $4545: $d6 $77
	or b                                             ; $4547: $b0
	rst SubAFromDE                                          ; $4548: $df
	ld l, e                                          ; $4549: $6b
	rst SubAFromDE                                          ; $454a: $df
	ld [$e29a], a                                    ; $454b: $ea $9a $e2
	ld [$e6e6], a                                    ; $454e: $ea $e6 $e6
	ldh [c], a                                       ; $4551: $e2
	sbc $ea                                          ; $4552: $de $ea
	rst SubAFromDE                                          ; $4554: $df
	db $eb                                           ; $4555: $eb
	rst SubAFromDE                                          ; $4556: $df
	rst $38                                          ; $4557: $ff
	rst SubAFromDE                                          ; $4558: $df
	ld h, [hl]                                       ; $4559: $66
	sbc [hl]                                         ; $455a: $9e
	ld [hl+], a                                      ; $455b: $22
	sbc $aa                                          ; $455c: $de $aa
	rst SubAFromDE                                          ; $455e: $df
	and [hl]                                         ; $455f: $a6
	rst SubAFromDE                                          ; $4560: $df
	xor d                                            ; $4561: $aa
	ld a, a                                          ; $4562: $7f
	ld hl, sp-$21                                    ; $4563: $f8 $df
	ld h, [hl]                                       ; $4565: $66
	rst SubAFromDE                                          ; $4566: $df
	rst $38                                          ; $4567: $ff
	rst SubAFromDE                                          ; $4568: $df
	dec sp                                           ; $4569: $3b
	ld [hl], a                                       ; $456a: $77
	ld b, $df                                        ; $456b: $06 $df
	ld [hl], a                                       ; $456d: $77
	halt                                             ; $456e: $76
	ld a, [$3bdf]                                    ; $456f: $fa $df $3b
	rst SubAFromDE                                          ; $4572: $df
	rst $38                                          ; $4573: $ff
	rst SubAFromDE                                          ; $4574: $df
	cp a                                             ; $4575: $bf
	sbc [hl]                                         ; $4576: $9e
	rra                                              ; $4577: $1f
	jp c, $9d5f                                      ; $4578: $da $5f $9d

Call_024_457b:
	dec d                                            ; $457b: $15
	ld e, a                                          ; $457c: $5f
	ld [hl], a                                       ; $457d: $77
	nop                                              ; $457e: $00
	rst SubAFromDE                                          ; $457f: $df
	ld [hl], c                                       ; $4580: $71

jr_024_4581:
	rst SubAFromHL                                          ; $4581: $d7
	ld a, e                                          ; $4582: $7b
	rst SubAFromDE                                          ; $4583: $df
	dec de                                           ; $4584: $1b
	rst SubAFromDE                                          ; $4585: $df
	rst $38                                          ; $4586: $ff
	rst SubAFromDE                                          ; $4587: $df
	ccf                                              ; $4588: $3f
	ld h, a                                          ; $4589: $67
	ldh [$7f], a                                     ; $458a: $e0 $7f
	ld hl, sp-$21                                    ; $458c: $f8 $df
	ccf                                              ; $458e: $3f
	pop bc                                           ; $458f: $c1
	rst $38                                          ; $4590: $ff
	inc bc                                           ; $4591: $03
	rst $38                                          ; $4592: $ff
	inc bc                                           ; $4593: $03
	rst $38                                          ; $4594: $ff
	inc bc                                           ; $4595: $03
	rst $38                                          ; $4596: $ff
	inc bc                                           ; $4597: $03
	rst $38                                          ; $4598: $ff
	inc bc                                           ; $4599: $03
	rst $38                                          ; $459a: $ff
	inc bc                                           ; $459b: $03
	rst $38                                          ; $459c: $ff
	inc bc                                           ; $459d: $03
	rst $38                                          ; $459e: $ff
	ret c                                            ; $459f: $d8

	rst $38                                          ; $45a0: $ff
	rst SubAFromDE                                          ; $45a1: $df
	db $fd                                           ; $45a2: $fd
	sbc l                                            ; $45a3: $9d
	rst $38                                          ; $45a4: $ff
	ei                                               ; $45a5: $fb
	inc bc                                           ; $45a6: $03
	db $db                                           ; $45a7: $db
	sub $ff                                          ; $45a8: $d6 $ff
	inc bc                                           ; $45aa: $03
	nop                                              ; $45ab: $00
	db $ed                                           ; $45ac: $ed
	ld d, b                                          ; $45ad: $50
	ld [bc], a                                       ; $45ae: $02
	pop bc                                           ; $45af: $c1
	rst $38                                          ; $45b0: $ff
	pop de                                           ; $45b1: $d1
	rst $38                                          ; $45b2: $ff
	pop de                                           ; $45b3: $d1
	db $fc                                           ; $45b4: $fc
	sub h                                            ; $45b5: $94
	ccf                                              ; $45b6: $3f
	ld e, $3c                                        ; $45b7: $1e $3c
	ld e, $3c                                        ; $45b9: $1e $3c
	inc e                                            ; $45bb: $1c
	jr c, @+$1a                                      ; $45bc: $38 $18

	jr c, jr_024_45d0                                ; $45be: $38 $10

	jr nc, jr_024_4581                               ; $45c0: $30 $bf

	ld bc, $9301                                     ; $45c2: $01 $01 $93
	ld bc, $070f                                     ; $45c5: $01 $0f $07
	rrca                                             ; $45c8: $0f
	ld c, $1c                                        ; $45c9: $0e $1c
	inc e                                            ; $45cb: $1c
	inc a                                            ; $45cc: $3c
	jr c, jr_024_463f                                ; $45cd: $38 $70

	ld a, b                                          ; $45cf: $78

jr_024_45d0:
	ld a, b                                          ; $45d0: $78
	call c, $9df0                                    ; $45d1: $dc $f0 $9d
	jp $fd81                                         ; $45d4: $c3 $81 $fd


	sbc d                                            ; $45d7: $9a
	jr jr_024_4616                                   ; $45d8: $18 $3c

	ld a, [hl]                                       ; $45da: $7e
	ld a, [hl]                                       ; $45db: $7e
	rst $38                                          ; $45dc: $ff
	ld a, e                                          ; $45dd: $7b
	db $fd                                           ; $45de: $fd
	ld [hl], e                                       ; $45df: $73
	ret nz                                           ; $45e0: $c0

	sbc [hl]                                         ; $45e1: $9e
	ld a, h                                          ; $45e2: $7c
	sbc $3c                                          ; $45e3: $de $3c
	sbc e                                            ; $45e5: $9b
	inc e                                            ; $45e6: $1c
	inc c                                            ; $45e7: $0c
	inc e                                            ; $45e8: $1c
	inc e                                            ; $45e9: $1c
	call c, $9d0c                                    ; $45ea: $dc $0c $9d
	rrca                                             ; $45ed: $0f
	rra                                              ; $45ee: $1f
	sbc $0f                                          ; $45ef: $de $0f
	db $dd                                           ; $45f1: $dd
	rlca                                             ; $45f2: $07
	sbc b                                            ; $45f3: $98
	inc bc                                           ; $45f4: $03
	inc hl                                           ; $45f5: $23
	inc bc                                           ; $45f6: $03
	inc hl                                           ; $45f7: $23
	ld hl, $2131                                     ; $45f8: $21 $31 $21
	pop de                                           ; $45fb: $d1
	add a                                            ; $45fc: $87
	sbc l                                            ; $45fd: $9d
	ldh [$f0], a                                     ; $45fe: $e0 $f0
	call c, $94e0                                    ; $4600: $dc $e0 $94
	ret nz                                           ; $4603: $c0

	jp nz, $c7c2                                     ; $4604: $c2 $c2 $c7

	jp nz, $8787                                     ; $4607: $c2 $87 $87

	adc a                                            ; $460a: $8f
	add a                                            ; $460b: $87
	ccf                                              ; $460c: $3f
	ld a, a                                          ; $460d: $7f
	call c, $dc3f                                    ; $460e: $dc $3f $dc
	rra                                              ; $4611: $1f
	rst SubAFromDE                                          ; $4612: $df
	rrca                                             ; $4613: $0f
	sbc h                                            ; $4614: $9c
	adc a                                            ; $4615: $8f

jr_024_4616:
	rrca                                             ; $4616: $0f
	inc bc                                           ; $4617: $03
	sbc $01                                          ; $4618: $de $01
	ld a, e                                          ; $461a: $7b
	adc c                                            ; $461b: $89
	cp a                                             ; $461c: $bf
	ld [$de00], sp                                   ; $461d: $08 $00 $de
	ld [$0c9c], sp                                   ; $4620: $08 $9c $0c
	ld [$def8], sp                                   ; $4623: $08 $f8 $de
	ldh a, [$7f]                                     ; $4626: $f0 $7f
	call z, $fd7f                                    ; $4628: $cc $7f $fd
	sub a                                            ; $462b: $97
	ldh [c], a                                       ; $462c: $e2
	ldh [$e0], a                                     ; $462d: $e0 $e0
	ldh [c], a                                       ; $462f: $e2
	ld b, d                                          ; $4630: $42
	ldh [c], a                                       ; $4631: $e2
	and $42                                          ; $4632: $e6 $42
	pop de                                           ; $4634: $d1
	jr @-$2d                                         ; $4635: $18 $d1

	ccf                                              ; $4637: $3f
	inc bc                                           ; $4638: $03
	rrca                                             ; $4639: $0f
	inc bc                                           ; $463a: $03
	rst $38                                          ; $463b: $ff
	inc bc                                           ; $463c: $03
	rst $38                                          ; $463d: $ff
	ld [de], a                                       ; $463e: $12

jr_024_463f:
	ret nz                                           ; $463f: $c0

	ld a, a                                          ; $4640: $7f
	ld b, [hl]                                       ; $4641: $46
	ld a, [hl]                                       ; $4642: $7e
	ret z                                            ; $4643: $c8

	ld a, [hl]                                       ; $4644: $7e
	call nz, $c07a                                   ; $4645: $c4 $7a $c0
	ld a, [hl]                                       ; $4648: $7e
	call z, $fe7f                                    ; $4649: $cc $7f $fe
	adc d                                            ; $464c: $8a
	ld e, $3f                                        ; $464d: $1e $3f
	ld e, $f0                                        ; $464f: $1e $f0
	ldh a, [rSVBK]                                   ; $4651: $f0 $70
	ldh a, [$78]                                     ; $4653: $f0 $78
	ld [hl], b                                       ; $4655: $70
	ld [hl], b                                       ; $4656: $70
	jr c, jr_024_4695                                ; $4657: $38 $3c

	jr c, jr_024_4677                                ; $4659: $38 $1c

	inc e                                            ; $465b: $1c
	rra                                              ; $465c: $1f
	ld c, $0f                                        ; $465d: $0e $0f
	rlca                                             ; $465f: $07
	rst $38                                          ; $4660: $ff
	rst $38                                          ; $4661: $ff
	ld a, d                                          ; $4662: $7a
	jp z, Jump_024_7ede                              ; $4663: $ca $de $7e

	ld a, [hl]                                       ; $4666: $7e
	cp [hl]                                          ; $4667: $be
	db $fd                                           ; $4668: $fd
	ld a, [hl]                                       ; $4669: $7e
	or d                                             ; $466a: $b2
	db $dd                                           ; $466b: $dd
	inc c                                            ; $466c: $0c
	ld a, d                                          ; $466d: $7a
	add $77                                          ; $466e: $c6 $77
	jp nc, $3c95                                     ; $4670: $d2 $95 $3c

	db $fc                                           ; $4673: $fc
	ld a, h                                          ; $4674: $7c
	db $fc                                           ; $4675: $fc
	db $fc                                           ; $4676: $fc

jr_024_4677:
	ld sp, $3830                                     ; $4677: $31 $30 $38
	jr nc, jr_024_46b4                               ; $467a: $30 $38

	ld a, e                                          ; $467c: $7b
	jp nc, $3cdf                                     ; $467d: $d2 $df $3c

	sbc l                                            ; $4680: $9d
	ld a, $3c                                        ; $4681: $3e $3c
	sbc $3e                                          ; $4683: $de $3e
	sbc [hl]                                         ; $4685: $9e
	ccf                                              ; $4686: $3f
	call c, $df87                                    ; $4687: $dc $87 $df
	rlca                                             ; $468a: $07
	db $db                                           ; $468b: $db
	ld b, $de                                        ; $468c: $06 $de
	inc b                                            ; $468e: $04
	sbc [hl]                                         ; $468f: $9e
	add a                                            ; $4690: $87
	sbc $0f                                          ; $4691: $de $0f
	ei                                               ; $4693: $fb
	rst SubAFromDE                                          ; $4694: $df

jr_024_4695:
	rra                                              ; $4695: $1f
	ld a, d                                          ; $4696: $7a
	jp z, $3f9d                                      ; $4697: $ca $9d $3f

	rrca                                             ; $469a: $0f
	ld [hl], e                                       ; $469b: $73
	pop hl                                           ; $469c: $e1
	ld a, [hl]                                       ; $469d: $7e
	sub d                                            ; $469e: $92
	rst SubAFromDE                                          ; $469f: $df
	inc bc                                           ; $46a0: $03
	rst SubAFromDE                                          ; $46a1: $df
	jp $e39a                                         ; $46a2: $c3 $9a $e3


	pop bc                                           ; $46a5: $c1
	pop bc                                           ; $46a6: $c1
	pop hl                                           ; $46a7: $e1
	ld [$0cde], sp                                   ; $46a8: $08 $de $0c
	sbc [hl]                                         ; $46ab: $9e
	ld c, $7b                                        ; $46ac: $0e $7b
	db $fd                                           ; $46ae: $fd
	rst SubAFromDE                                          ; $46af: $df
	ld c, $7e                                        ; $46b0: $0e $7e
	ld c, b                                          ; $46b2: $48
	ld a, a                                          ; $46b3: $7f

jr_024_46b4:
	db $fd                                           ; $46b4: $fd
	rst SubAFromDE                                          ; $46b5: $df
	rrca                                             ; $46b6: $0f
	sbc b                                            ; $46b7: $98
	ld b, d                                          ; $46b8: $42
	ld b, [hl]                                       ; $46b9: $46
	ld b, [hl]                                       ; $46ba: $46
	ld b, $0e                                        ; $46bb: $06 $0e
	ld b, $06                                        ; $46bd: $06 $06
	sbc $0e                                          ; $46bf: $de $0e
	sbc [hl]                                         ; $46c1: $9e
	ld e, $7b                                        ; $46c2: $1e $7b
	db $fd                                           ; $46c4: $fd
	rst SubAFromDE                                          ; $46c5: $df
	ld e, $3e                                        ; $46c6: $1e $3e
	ret nz                                           ; $46c8: $c0

	ld a, a                                          ; $46c9: $7f
	sub l                                            ; $46ca: $95
	adc l                                            ; $46cb: $8d
	inc sp                                           ; $46cc: $33
	ld a, [hl-]                                      ; $46cd: $3a
	inc [hl]                                         ; $46ce: $34
	dec [hl]                                         ; $46cf: $35
	inc [hl]                                         ; $46d0: $34
	inc [hl]                                         ; $46d1: $34
	dec [hl]                                         ; $46d2: $35
	dec [hl]                                         ; $46d3: $35
	inc sp                                           ; $46d4: $33
	dec sp                                           ; $46d5: $3b
	jr c, jr_024_4714                                ; $46d6: $38 $3c

	rst $38                                          ; $46d8: $ff
	rst $38                                          ; $46d9: $ff
	ccf                                              ; $46da: $3f
	ld a, a                                          ; $46db: $7f
	sbc a                                            ; $46dc: $9f
	cp a                                             ; $46dd: $bf
	sbc $5f                                          ; $46de: $de $5f
	sbc b                                            ; $46e0: $98
	rst SubAFromDE                                          ; $46e1: $df
	ld e, a                                          ; $46e2: $5f
	ld e, a                                          ; $46e3: $5f
	sbc a                                            ; $46e4: $9f
	cp a                                             ; $46e5: $bf
	ccf                                              ; $46e6: $3f
	ld a, a                                          ; $46e7: $7f
	ld [bc], a                                       ; $46e8: $02
	rst $38                                          ; $46e9: $ff
	inc bc                                           ; $46ea: $03
	rst $38                                          ; $46eb: $ff
	push de                                          ; $46ec: $d5
	rst $38                                          ; $46ed: $ff
	rst SubAFromDE                                          ; $46ee: $df
	adc $d3                                          ; $46ef: $ce $d3
	rst $38                                          ; $46f1: $ff
	rst SubAFromDE                                          ; $46f2: $df
	db $dd                                           ; $46f3: $dd
	db $d3                                           ; $46f4: $d3
	rst $38                                          ; $46f5: $ff
	sbc l                                            ; $46f6: $9d
	rst GetHLinHL                                          ; $46f7: $cf
	rst AddAOntoHL                                          ; $46f8: $ef
	db $d3                                           ; $46f9: $d3
	rst $38                                          ; $46fa: $ff
	rst SubAFromDE                                          ; $46fb: $df
	ld l, [hl]                                       ; $46fc: $6e
	db $d3                                           ; $46fd: $d3
	rst $38                                          ; $46fe: $ff
	rst SubAFromDE                                          ; $46ff: $df
	rst AddAOntoHL                                          ; $4700: $ef
	db $d3                                           ; $4701: $d3
	rst $38                                          ; $4702: $ff
	rst SubAFromDE                                          ; $4703: $df
	db $eb                                           ; $4704: $eb
	db $d3                                           ; $4705: $d3
	rst $38                                          ; $4706: $ff
	rst SubAFromDE                                          ; $4707: $df
	ld l, e                                          ; $4708: $6b
	ld c, e                                          ; $4709: $4b
	ldh a, [$9e]                                     ; $470a: $f0 $9e
	ld l, d                                          ; $470c: $6a
	db $d3                                           ; $470d: $d3
	rst $38                                          ; $470e: $ff
	sbc l                                            ; $470f: $9d
	ld a, l                                          ; $4710: $7d
	dec a                                            ; $4711: $3d
	db $d3                                           ; $4712: $d3
	rst $38                                          ; $4713: $ff

jr_024_4714:
	rst SubAFromDE                                          ; $4714: $df
	cp e                                             ; $4715: $bb
	db $d3                                           ; $4716: $d3
	rst $38                                          ; $4717: $ff
	sbc l                                            ; $4718: $9d
	rst SubAFromBC                                          ; $4719: $e7
	and $d3                                          ; $471a: $e6 $d3
	rst $38                                          ; $471c: $ff
	sbc l                                            ; $471d: $9d
	halt                                             ; $471e: $76
	ld [hl], $d3                                     ; $471f: $36 $d3
	rst $38                                          ; $4721: $ff
	rst SubAFromDE                                          ; $4722: $df
	and e                                            ; $4723: $a3
	db $d3                                           ; $4724: $d3
	rst $38                                          ; $4725: $ff
	rst SubAFromDE                                          ; $4726: $df
	ld a, c                                          ; $4727: $79
	db $d3                                           ; $4728: $d3
	rst $38                                          ; $4729: $ff
	rst SubAFromDE                                          ; $472a: $df
	adc l                                            ; $472b: $8d
	db $d3                                           ; $472c: $d3
	rst $38                                          ; $472d: $ff
	rst SubAFromDE                                          ; $472e: $df
	adc c                                            ; $472f: $89
	db $d3                                           ; $4730: $d3
	rst $38                                          ; $4731: $ff
	rst SubAFromDE                                          ; $4732: $df
	xor b                                            ; $4733: $a8
	db $d3                                           ; $4734: $d3
	rst $38                                          ; $4735: $ff
	rst SubAFromDE                                          ; $4736: $df
	sbc a                                            ; $4737: $9f
	pop bc                                           ; $4738: $c1
	rst $38                                          ; $4739: $ff
	sub l                                            ; $473a: $95
	or [hl]                                          ; $473b: $b6
	or h                                             ; $473c: $b4
	add [hl]                                         ; $473d: $86
	and [hl]                                         ; $473e: $a6
	sub [hl]                                         ; $473f: $96
	sub [hl]                                         ; $4740: $96
	add [hl]                                         ; $4741: $86
	and [hl]                                         ; $4742: $a6
	or [hl]                                          ; $4743: $b6
	or [hl]                                          ; $4744: $b6
	ld l, [hl]                                       ; $4745: $6e
	call nz, $aadd                                   ; $4746: $c4 $dd $aa
	sbc c                                            ; $4749: $99
	adc b                                            ; $474a: $88
	call z, $eeee                                    ; $474b: $cc $ee $ee
	xor d                                            ; $474e: $aa
	xor d                                            ; $474f: $aa
	ld l, [hl]                                       ; $4750: $6e
	call nz, $8f99                                   ; $4751: $c4 $99 $8f
	adc $af                                          ; $4754: $ce $af
	xor a                                            ; $4756: $af
	add a                                            ; $4757: $87
	add a                                            ; $4758: $87
	db $db                                           ; $4759: $db
	rst AddAOntoHL                                          ; $475a: $ef
	db $dd                                           ; $475b: $dd
	rst $38                                          ; $475c: $ff
	db $dd                                           ; $475d: $dd
	ld d, l                                          ; $475e: $55
	sbc c                                            ; $475f: $99
	ld b, h                                          ; $4760: $44
	ld h, [hl]                                       ; $4761: $66
	ld [hl], a                                       ; $4762: $77
	ld [hl], a                                       ; $4763: $77
	ld d, l                                          ; $4764: $55
	ld d, l                                          ; $4765: $55
	ld l, [hl]                                       ; $4766: $6e
	call nz, Call_024_57dd                           ; $4767: $c4 $dd $57
	sbc c                                            ; $476a: $99
	ld b, a                                          ; $476b: $47
	ld h, a                                          ; $476c: $67
	ld [hl], a                                       ; $476d: $77
	ld [hl], a                                       ; $476e: $77
	ld d, a                                          ; $476f: $57
	ld d, a                                          ; $4770: $57
	ld l, a                                          ; $4771: $6f
	ldh [$df], a                                     ; $4772: $e0 $df
	ld [$bb7c], a                                    ; $4774: $ea $7c $bb
	ld a, a                                          ; $4777: $7f
	cp $dd                                           ; $4778: $fe $dd
	ld [$c46e], a                                    ; $477a: $ea $6e $c4
	sbc h                                            ; $477d: $9c
	and d                                            ; $477e: $a2
	xor d                                            ; $477f: $aa
	xor d                                            ; $4780: $aa
	sbc $a2                                          ; $4781: $de $a2
	ld a, e                                          ; $4783: $7b
	db $fc                                           ; $4784: $fc
	sbc l                                            ; $4785: $9d
	xor d                                            ; $4786: $aa
	ld l, d                                          ; $4787: $6a
	ld [hl], d                                       ; $4788: $72
	call nc, $abdf                                   ; $4789: $d4 $df $ab
	rst SubAFromDE                                          ; $478c: $df
	and e                                            ; $478d: $a3
	rst SubAFromDE                                          ; $478e: $df
	inc hl                                           ; $478f: $23
	ld a, a                                          ; $4790: $7f
	ei                                               ; $4791: $fb
	sbc $ab                                          ; $4792: $de $ab
	sbc [hl]                                         ; $4794: $9e
	xor d                                            ; $4795: $aa
	db $dd                                           ; $4796: $dd
	rst $38                                          ; $4797: $ff
	db $dd                                           ; $4798: $dd
	ld a, d                                          ; $4799: $7a
	rst SubAFromDE                                          ; $479a: $df
	ld a, b                                          ; $479b: $78
	call c, $9e7a                                    ; $479c: $dc $7a $9e
	ld a, [hl-]                                      ; $479f: $3a
	ld l, [hl]                                       ; $47a0: $6e
	adc $d9                                          ; $47a1: $ce $d9
	cp e                                             ; $47a3: $bb
	rst SubAFromDE                                          ; $47a4: $df
	adc b                                            ; $47a5: $88
	ld l, [hl]                                       ; $47a6: $6e
	ld a, [hl]                                       ; $47a7: $7e
	rst SubAFromDE                                          ; $47a8: $df
	db $eb                                           ; $47a9: $eb
	rst SubAFromDE                                          ; $47aa: $df
	rst SubAFromBC                                          ; $47ab: $e7
	call c, $9eeb                                    ; $47ac: $dc $eb $9e
	ld [$ffdd], a                                    ; $47af: $ea $dd $ff
	rst SubAFromDE                                          ; $47b2: $df
	ld l, d                                          ; $47b3: $6a
	rst SubAFromDE                                          ; $47b4: $df
	ld l, [hl]                                       ; $47b5: $6e
	sbc l                                            ; $47b6: $9d
	ld l, d                                          ; $47b7: $6a
	ld h, d                                          ; $47b8: $62
	db $dd                                           ; $47b9: $dd
	ld l, d                                          ; $47ba: $6a
	ld l, [hl]                                       ; $47bb: $6e
	call nz, $b6dd                                   ; $47bc: $c4 $dd $b6
	rst SubAFromDE                                          ; $47bf: $df
	scf                                              ; $47c0: $37
	sbc [hl]                                         ; $47c1: $9e
	or a                                             ; $47c2: $b7
	sbc $b6                                          ; $47c3: $de $b6
	rst SubAFromDE                                          ; $47c5: $df
	or a                                             ; $47c6: $b7
	db $dd                                           ; $47c7: $dd
	rst $38                                          ; $47c8: $ff
	rst SubAFromDE                                          ; $47c9: $df
	cp d                                             ; $47ca: $ba
	sbc e                                            ; $47cb: $9b
	ld a, [$79ba]                                    ; $47cc: $fa $ba $79
	ld a, c                                          ; $47cf: $79
	db $dd                                           ; $47d0: $dd
	cp d                                             ; $47d1: $ba
	rst SubAFromDE                                          ; $47d2: $df
	ld a, d                                          ; $47d3: $7a
	ld l, a                                          ; $47d4: $6f
	ldh a, [$9a]                                     ; $47d5: $f0 $9a
	cp e                                             ; $47d7: $bb
	cp d                                             ; $47d8: $ba
	sbc l                                            ; $47d9: $9d
	sbc l                                            ; $47da: $9d
	cp [hl]                                          ; $47db: $be
	sbc $ba                                          ; $47dc: $de $ba
	ld l, [hl]                                       ; $47de: $6e
	call nz, $badd                                   ; $47df: $c4 $dd $ba
	rst SubAFromDE                                          ; $47e2: $df
	adc c                                            ; $47e3: $89
	db $dd                                           ; $47e4: $dd
	cp d                                             ; $47e5: $ba
	rst SubAFromDE                                          ; $47e6: $df
	adc d                                            ; $47e7: $8a
	ld l, a                                          ; $47e8: $6f
	ld [hl], b                                       ; $47e9: $70
	rst SubAFromDE                                          ; $47ea: $df
	xor e                                            ; $47eb: $ab
	rst SubAFromDE                                          ; $47ec: $df
	xor c                                            ; $47ed: $a9
	rst SubAFromDE                                          ; $47ee: $df
	xor e                                            ; $47ef: $ab
	sbc e                                            ; $47f0: $9b
	db $db                                           ; $47f1: $db
	adc e                                            ; $47f2: $8b
	ret c                                            ; $47f3: $d8

	ret c                                            ; $47f4: $d8

	db $dd                                           ; $47f5: $dd
	rst $38                                          ; $47f6: $ff
	rst SubAFromHL                                          ; $47f7: $d7
	xor a                                            ; $47f8: $af
	rst SubAFromDE                                          ; $47f9: $df
	sbc e                                            ; $47fa: $9b
	call $04ff                                       ; $47fb: $cd $ff $04
	nop                                              ; $47fe: $00
	ldh [$d9], a                                     ; $47ff: $e0 $d9
	ld b, b                                          ; $4801: $40
	nop                                              ; $4802: $00
	sub a                                            ; $4803: $97
	adc b                                            ; $4804: $88
	ld [hl], a                                       ; $4805: $77
	ld d, l                                          ; $4806: $55
	xor d                                            ; $4807: $aa
	ld [hl+], a                                      ; $4808: $22
	db $dd                                           ; $4809: $dd
	ld d, l                                          ; $480a: $55
	xor d                                            ; $480b: $aa
	inc bc                                           ; $480c: $03
	ld hl, sp+$2b                                    ; $480d: $f8 $2b
	ld hl, sp-$63                                    ; $480f: $f8 $9d
	xor d                                            ; $4811: $aa
	ld d, l                                          ; $4812: $55
	inc bc                                           ; $4813: $03
	db $fc                                           ; $4814: $fc
	dec bc                                           ; $4815: $0b
	db $fc                                           ; $4816: $fc
	sbc c                                            ; $4817: $99
	db $dd                                           ; $4818: $dd
	ld [hl+], a                                      ; $4819: $22
	xor d                                            ; $481a: $aa
	ld d, l                                          ; $481b: $55
	ld [hl], a                                       ; $481c: $77
	adc b                                            ; $481d: $88
	inc bc                                           ; $481e: $03
	ld hl, sp+$2b                                    ; $481f: $f8 $2b
	ld hl, sp+$7f                                    ; $4821: $f8 $7f
	ld a, [$fc0f]                                    ; $4823: $fa $0f $fc
	sub c                                            ; $4826: $91
	rst $38                                          ; $4827: $ff
	nop                                              ; $4828: $00
	db $dd                                           ; $4829: $dd
	ld [hl+], a                                      ; $482a: $22
	rst $38                                          ; $482b: $ff
	nop                                              ; $482c: $00

jr_024_482d:
	ld [hl], a                                       ; $482d: $77
	adc b                                            ; $482e: $88
	rst SubAFromDE                                          ; $482f: $df
	jr nz, jr_024_482d                               ; $4830: $20 $fb

	inc b                                            ; $4832: $04
	rst $38                                          ; $4833: $ff
	nop                                              ; $4834: $00
	ld [hl], a                                       ; $4835: $77
	cp $47                                           ; $4836: $fe $47
	ldh a, [$03]                                     ; $4838: $f0 $03
	cp $03                                           ; $483a: $fe $03
	cp $03                                           ; $483c: $fe $03
	cp $1b                                           ; $483e: $fe $1b
	cp $04                                           ; $4840: $fe $04
	nop                                              ; $4842: $00
	push de                                          ; $4843: $d5
	inc sp                                           ; $4844: $33
	ld b, b                                          ; $4845: $40
	nop                                              ; $4846: $00
	sub a                                            ; $4847: $97
	adc b                                            ; $4848: $88
	ld [hl], a                                       ; $4849: $77
	ld d, l                                          ; $484a: $55
	xor d                                            ; $484b: $aa
	ld [hl+], a                                      ; $484c: $22
	db $dd                                           ; $484d: $dd
	ld d, l                                          ; $484e: $55
	xor d                                            ; $484f: $aa
	inc bc                                           ; $4850: $03
	ld hl, sp+$2b                                    ; $4851: $f8 $2b
	ld hl, sp-$63                                    ; $4853: $f8 $9d
	xor d                                            ; $4855: $aa
	ld d, l                                          ; $4856: $55
	inc bc                                           ; $4857: $03
	db $fc                                           ; $4858: $fc
	dec bc                                           ; $4859: $0b
	db $fc                                           ; $485a: $fc
	sbc c                                            ; $485b: $99
	db $dd                                           ; $485c: $dd
	ld [hl+], a                                      ; $485d: $22
	xor d                                            ; $485e: $aa
	ld d, l                                          ; $485f: $55
	ld [hl], a                                       ; $4860: $77
	adc b                                            ; $4861: $88
	inc bc                                           ; $4862: $03
	ld hl, sp+$2b                                    ; $4863: $f8 $2b
	ld hl, sp+$7f                                    ; $4865: $f8 $7f
	ld a, [$fc0f]                                    ; $4867: $fa $0f $fc
	sub c                                            ; $486a: $91
	rst $38                                          ; $486b: $ff
	nop                                              ; $486c: $00
	db $dd                                           ; $486d: $dd
	ld [hl+], a                                      ; $486e: $22
	rst $38                                          ; $486f: $ff
	nop                                              ; $4870: $00

jr_024_4871:
	ld [hl], a                                       ; $4871: $77
	adc b                                            ; $4872: $88
	rst SubAFromDE                                          ; $4873: $df
	jr nz, jr_024_4871                               ; $4874: $20 $fb

	inc b                                            ; $4876: $04
	rst $38                                          ; $4877: $ff
	nop                                              ; $4878: $00
	ld [hl], a                                       ; $4879: $77
	cp $47                                           ; $487a: $fe $47
	ldh a, [$03]                                     ; $487c: $f0 $03
	cp $03                                           ; $487e: $fe $03
	cp $03                                           ; $4880: $fe $03
	cp $1b                                           ; $4882: $fe $1b
	cp $04                                           ; $4884: $fe $04
	nop                                              ; $4886: $00
	push de                                          ; $4887: $d5
	inc sp                                           ; $4888: $33
	jp nc, $df80                                     ; $4889: $d2 $80 $df

	rst FarCall                                          ; $488c: $f7
	sbc [hl]                                         ; $488d: $9e
	ccf                                              ; $488e: $3f
	jp c, $80ff                                      ; $488f: $da $ff $80

	cp $3f                                           ; $4892: $fe $3f
	ld a, e                                          ; $4894: $7b
	push hl                                          ; $4895: $e5
	add $ce                                          ; $4896: $c6 $ce
	rst $38                                          ; $4898: $ff
	rra                                              ; $4899: $1f
	rst SubAFromDE                                          ; $489a: $df
	cp $ff                                           ; $489b: $fe $ff
	rst $38                                          ; $489d: $ff
	rst SubAFromDE                                          ; $489e: $df
	ccf                                              ; $489f: $3f
	ldh a, [$fc]                                     ; $48a0: $f0 $fc
	ld h, $33                                        ; $48a2: $26 $33
	cp b                                             ; $48a4: $b8
	ld e, [hl]                                       ; $48a5: $5e
	cpl                                              ; $48a6: $2f
	db $fc                                           ; $48a7: $fc
	ccf                                              ; $48a8: $3f
	ld a, a                                          ; $48a9: $7f
	db $fd                                           ; $48aa: $fd
	rst $38                                          ; $48ab: $ff
	rst $38                                          ; $48ac: $ff
	rst AddAOntoHL                                          ; $48ad: $ef
	sbc a                                            ; $48ae: $9f
	rst $38                                          ; $48af: $ff
	ld hl, sp-$6a                                    ; $48b0: $f8 $96
	ld hl, sp-$02                                    ; $48b2: $f8 $fe
	pop hl                                           ; $48b4: $e1
	pop af                                           ; $48b5: $f1
	inc de                                           ; $48b6: $13
	ld [hl], a                                       ; $48b7: $77
	db $fc                                           ; $48b8: $fc
	rst SubAFromDE                                          ; $48b9: $df
	rst SubAFromDE                                          ; $48ba: $df
	ld a, e                                          ; $48bb: $7b
	sub $92                                          ; $48bc: $d6 $92
	xor a                                            ; $48be: $af
	rst SubAFromDE                                          ; $48bf: $df
	rst $38                                          ; $48c0: $ff
	ld hl, sp+$70                                    ; $48c1: $f8 $70
	dec a                                            ; $48c3: $3d
	ld a, a                                          ; $48c4: $7f
	ld [hl], c                                       ; $48c5: $71
	ldh a, [c]                                       ; $48c6: $f2
	rst FarCall                                          ; $48c7: $f7
	ld d, $ff                                        ; $48c8: $16 $ff
	rst $38                                          ; $48ca: $ff

jr_024_48cb:
	ld a, e                                          ; $48cb: $7b
	ret nz                                           ; $48cc: $c0

	sub d                                            ; $48cd: $92
	ld [hl], a                                       ; $48ce: $77
	rst $38                                          ; $48cf: $ff
	cp $f0                                           ; $48d0: $fe $f0
	db $fc                                           ; $48d2: $fc
	rst $38                                          ; $48d3: $ff
	inc hl                                           ; $48d4: $23
	ld h, a                                          ; $48d5: $67
	xor e                                            ; $48d6: $ab
	ld de, $ff3b                                     ; $48d7: $11 $3b $ff
	ei                                               ; $48da: $fb
	ld a, e                                          ; $48db: $7b
	pop de                                           ; $48dc: $d1
	add c                                            ; $48dd: $81
	cp $ef                                           ; $48de: $fe $ef
	rst AddAOntoHL                                          ; $48e0: $ef
	ld c, $3f                                        ; $48e1: $0e $3f
	rst JumpTable                                          ; $48e3: $c7
	add a                                            ; $48e4: $87
	cp c                                             ; $48e5: $b9
	ld a, e                                          ; $48e6: $7b
	ld [de], a                                       ; $48e7: $12

jr_024_48e8:
	jr c, jr_024_48e8                                ; $48e8: $38 $fe

	cp $fd                                           ; $48ea: $fe $fd
	db $fd                                           ; $48ec: $fd
	rst AddAOntoHL                                          ; $48ed: $ef
	rst GetHLinHL                                          ; $48ee: $cf
	sbc $bc                                          ; $48ef: $de $bc
	ld a, a                                          ; $48f1: $7f
	rst FarCall                                          ; $48f2: $f7
	adc [hl]                                         ; $48f3: $8e
	ld e, $ff                                        ; $48f4: $1e $ff
	ld [hl], c                                       ; $48f6: $71
	inc hl                                           ; $48f7: $23
	ld a, a                                          ; $48f8: $7f
	ld a, a                                          ; $48f9: $7f
	rst $38                                          ; $48fa: $ff
	rst AddAOntoHL                                          ; $48fb: $ef
	sbc $ff                                          ; $48fc: $de $ff
	adc l                                            ; $48fe: $8d
	ccf                                              ; $48ff: $3f
	scf                                              ; $4900: $37
	cp c                                             ; $4901: $b9
	db $fd                                           ; $4902: $fd
	ld a, a                                          ; $4903: $7f
	ld h, [hl]                                       ; $4904: $66
	ld b, e                                          ; $4905: $43
	add $c4                                          ; $4906: $c6 $c4
	db $ec                                           ; $4908: $ec
	rst SubAFromBC                                          ; $4909: $e7
	db $fd                                           ; $490a: $fd
	ld e, l                                          ; $490b: $5d
	add hl, bc                                       ; $490c: $09
	ccf                                              ; $490d: $3f
	rra                                              ; $490e: $1f
	add $fc                                          ; $490f: $c6 $fc
	db $dd                                           ; $4911: $dd
	rst $38                                          ; $4912: $ff
	adc [hl]                                         ; $4913: $8e
	jp $ffe7                                         ; $4914: $c3 $e7 $ff


	rst $38                                          ; $4917: $ff
	and $f7                                          ; $4918: $e6 $f7
	rst $38                                          ; $491a: $ff
	db $fd                                           ; $491b: $fd
	sbc h                                            ; $491c: $9c
	ret z                                            ; $491d: $c8

	ldh [$60], a                                     ; $491e: $e0 $60
	db $fd                                           ; $4920: $fd
	rst $38                                          ; $4921: $ff
	adc a                                            ; $4922: $8f
	rra                                              ; $4923: $1f
	ld a, a                                          ; $4924: $7f
	sbc $ff                                          ; $4925: $de $ff
	sbc e                                            ; $4927: $9b
	ld a, [bc]                                       ; $4928: $0a
	dec sp                                           ; $4929: $3b
	ld [hl], e                                       ; $492a: $73
	ld h, c                                          ; $492b: $61
	db $fd                                           ; $492c: $fd
	reti                                             ; $492d: $d9


	rst $38                                          ; $492e: $ff
	rst $38                                          ; $492f: $ff
	rst SubAFromDE                                          ; $4930: $df
	add b                                            ; $4931: $80
	ld c, a                                          ; $4932: $4f
	ldh a, [$fb]                                     ; $4933: $f0 $fb
	inc bc                                           ; $4935: $03
	ldh a, [$03]                                     ; $4936: $f0 $03
	ldh a, [$03]                                     ; $4938: $f0 $03
	ldh a, [$03]                                     ; $493a: $f0 $03
	ldh a, [$2f]                                     ; $493c: $f0 $2f
	ldh a, [$9a]                                     ; $493e: $f0 $9a
	inc b                                            ; $4940: $04
	jr nz, jr_024_48cb                               ; $4941: $20 $88

	nop                                              ; $4943: $00
	ld [hl+], a                                      ; $4944: $22
	ld a, e                                          ; $4945: $7b
	ldh a, [$9a]                                     ; $4946: $f0 $9a
	ei                                               ; $4948: $fb
	rst SubAFromDE                                          ; $4949: $df
	ld [hl], a                                       ; $494a: $77
	rst $38                                          ; $494b: $ff
	db $dd                                           ; $494c: $dd
	ld b, e                                          ; $494d: $43
	ldh a, [$9d]                                     ; $494e: $f0 $9d
	adc b                                            ; $4950: $88
	ld [hl+], a                                      ; $4951: $22
	ld l, a                                          ; $4952: $6f
	cp $9d                                           ; $4953: $fe $9d
	ld [hl], a                                       ; $4955: $77
	db $dd                                           ; $4956: $dd
	ld l, a                                          ; $4957: $6f
	cp $47                                           ; $4958: $fe $47
	ldh a, [rTMA]                                    ; $495a: $f0 $06
	nop                                              ; $495c: $00
	call c, $d922                                    ; $495d: $dc $22 $d9
	inc sp                                           ; $4960: $33
	db $d3                                           ; $4961: $d3
	add b                                            ; $4962: $80
	db $dd                                           ; $4963: $dd
	rst $38                                          ; $4964: $ff
	sbc [hl]                                         ; $4965: $9e
	rst SubAFromDE                                          ; $4966: $df
	sbc $ff                                          ; $4967: $de $ff
	sub a                                            ; $4969: $97
	di                                               ; $496a: $f3
	rst SubAFromBC                                          ; $496b: $e7
	pop af                                           ; $496c: $f1
	inc de                                           ; $496d: $13
	dec sp                                           ; $496e: $3b
	ld b, c                                          ; $496f: $41
	rst JumpTable                                          ; $4970: $c7
	rrca                                             ; $4971: $0f
	sbc $ff                                          ; $4972: $de $ff
	sbc [hl]                                         ; $4974: $9e
	cp a                                             ; $4975: $bf
	db $dd                                           ; $4976: $dd
	rst $38                                          ; $4977: $ff
	add d                                            ; $4978: $82
	inc e                                            ; $4979: $1c
	ld [$f7c8], sp                                   ; $497a: $08 $c8 $f7
	db $ed                                           ; $497d: $ed
	adc b                                            ; $497e: $88
	adc h                                            ; $497f: $8c
	add a                                            ; $4980: $87
	db $fc                                           ; $4981: $fc
	ld sp, hl                                        ; $4982: $f9
	ei                                               ; $4983: $fb
	rst $38                                          ; $4984: $ff
	rst $38                                          ; $4985: $ff
	ld a, a                                          ; $4986: $7f
	db $fd                                           ; $4987: $fd
	ld e, a                                          ; $4988: $5f
	sbc a                                            ; $4989: $9f
	sub $e4                                          ; $498a: $d6 $e4
	add sp, -$1f                                     ; $498c: $e8 $e1
	ld [hl], b                                       ; $498e: $70
	ld hl, sp+$5f                                    ; $498f: $f8 $5f
	rst $38                                          ; $4991: $ff
	rst $38                                          ; $4992: $ff
	cp [hl]                                          ; $4993: $be
	db $fc                                           ; $4994: $fc
	rst AddAOntoHL                                          ; $4995: $ef
	sbc $ff                                          ; $4996: $de $ff
	adc a                                            ; $4998: $8f
	rst GetHLinHL                                          ; $4999: $cf
	ld a, a                                          ; $499a: $7f
	ld a, a                                          ; $499b: $7f
	inc bc                                           ; $499c: $03
	db $10                                           ; $499d: $10
	dec [hl]                                         ; $499e: $35
	ccf                                              ; $499f: $3f
	ld b, b                                          ; $49a0: $40
	rlca                                             ; $49a1: $07
	add b                                            ; $49a2: $80
	ld h, c                                          ; $49a3: $61

jr_024_49a4:
	add b                                            ; $49a4: $80
	cp $38                                           ; $49a5: $fe $38
	db $fc                                           ; $49a7: $fc
	cp $73                                           ; $49a8: $fe $73
	ld hl, sp-$76                                    ; $49aa: $f8 $8a
	ld hl, sp+$7c                                    ; $49ac: $f8 $7c
	rra                                              ; $49ae: $1f
	ld hl, sp-$31                                    ; $49af: $f8 $cf
	rst $38                                          ; $49b1: $ff
	rrca                                             ; $49b2: $0f
	ccf                                              ; $49b3: $3f
	inc bc                                           ; $49b4: $03
	rra                                              ; $49b5: $1f
	ld a, a                                          ; $49b6: $7f
	ld b, b                                          ; $49b7: $40
	rst JumpTable                                          ; $49b8: $c7
	ld sp, hl                                        ; $49b9: $f9
	add hl, bc                                       ; $49ba: $09
	ccf                                              ; $49bb: $3f
	inc bc                                           ; $49bc: $03
	add hl, de                                       ; $49bd: $19
	add e                                            ; $49be: $83
	db $fc                                           ; $49bf: $fc
	cp $dd                                           ; $49c0: $fe $dd
	rst $38                                          ; $49c2: $ff
	add b                                            ; $49c3: $80
	ei                                               ; $49c4: $fb
	inc a                                            ; $49c5: $3c
	jp $0381                                         ; $49c6: $c3 $81 $03


	cp [hl]                                          ; $49c9: $be
	ld hl, sp+$75                                    ; $49ca: $f8 $75
	ld a, l                                          ; $49cc: $7d
	rst $38                                          ; $49cd: $ff
	ld a, a                                          ; $49ce: $7f
	ccf                                              ; $49cf: $3f
	ld a, a                                          ; $49d0: $7f
	rst $38                                          ; $49d1: $ff
	rst AddAOntoHL                                          ; $49d2: $ef

jr_024_49d3:
	cp [hl]                                          ; $49d3: $be
	cp h                                             ; $49d4: $bc
	cp c                                             ; $49d5: $b9
	add [hl]                                         ; $49d6: $86
	cp $fd                                           ; $49d7: $fe $fd
	jr jr_024_49d3                                   ; $49d9: $18 $f8

	ld sp, hl                                        ; $49db: $f9
	ei                                               ; $49dc: $fb
	rst AddAOntoHL                                          ; $49dd: $ef
	db $fc                                           ; $49de: $fc
	rst $38                                          ; $49df: $ff
	cp a                                             ; $49e0: $bf
	ld a, d                                          ; $49e1: $7a
	push af                                          ; $49e2: $f5
	sub e                                            ; $49e3: $93
	rst SubAFromBC                                          ; $49e4: $e7
	adc a                                            ; $49e5: $8f
	sbc l                                            ; $49e6: $9d
	rst SubAFromDE                                          ; $49e7: $df
	rst GetHLinHL                                          ; $49e8: $cf
	rst GetHLinHL                                          ; $49e9: $cf
	rst JumpTable                                          ; $49ea: $c7
	rst AddAOntoHL                                          ; $49eb: $ef
	rst $38                                          ; $49ec: $ff
	ld a, a                                          ; $49ed: $7f
	ld a, a                                          ; $49ee: $7f
	ld a, e                                          ; $49ef: $7b
	call c, $99ff                                    ; $49f0: $dc $ff $99
	rst JumpTable                                          ; $49f3: $c7
	add a                                            ; $49f4: $87
	rst JumpTable                                          ; $49f5: $c7
	add a                                            ; $49f6: $87
	adc a                                            ; $49f7: $8f
	adc a                                            ; $49f8: $8f
	ld [hl], a                                       ; $49f9: $77
	ld l, b                                          ; $49fa: $68
	sbc e                                            ; $49fb: $9b
	ld de, $0703                                     ; $49fc: $11 $03 $07
	inc b                                            ; $49ff: $04
	db $fd                                           ; $4a00: $fd
	reti                                             ; $4a01: $d9


	rst $38                                          ; $4a02: $ff
	sbc d                                            ; $4a03: $9a
	ld [hl], $7f                                     ; $4a04: $36 $7f
	ld [hl], a                                       ; $4a06: $77
	ld [hl], $26                                     ; $4a07: $36 $26
	ld a, e                                          ; $4a09: $7b
	xor $d9                                          ; $4a0a: $ee $d9
	rst $38                                          ; $4a0c: $ff
	ld sp, hl                                        ; $4a0d: $f9
	inc bc                                           ; $4a0e: $03
	ldh a, [$03]                                     ; $4a0f: $f0 $03
	ldh a, [$03]                                     ; $4a11: $f0 $03
	ldh a, [$03]                                     ; $4a13: $f0 $03
	ldh a, [$2f]                                     ; $4a15: $f0 $2f
	ldh a, [$9a]                                     ; $4a17: $f0 $9a
	inc b                                            ; $4a19: $04
	jr nz, jr_024_49a4                               ; $4a1a: $20 $88

	nop                                              ; $4a1c: $00
	ld [hl+], a                                      ; $4a1d: $22
	ld a, e                                          ; $4a1e: $7b
	ldh a, [$9a]                                     ; $4a1f: $f0 $9a
	ei                                               ; $4a21: $fb
	rst SubAFromDE                                          ; $4a22: $df
	ld [hl], a                                       ; $4a23: $77
	rst $38                                          ; $4a24: $ff
	db $dd                                           ; $4a25: $dd
	ld b, e                                          ; $4a26: $43
	ldh a, [$9d]                                     ; $4a27: $f0 $9d
	adc b                                            ; $4a29: $88
	ld [hl+], a                                      ; $4a2a: $22
	ld l, a                                          ; $4a2b: $6f
	cp $9d                                           ; $4a2c: $fe $9d
	ld [hl], a                                       ; $4a2e: $77
	db $dd                                           ; $4a2f: $dd
	ld l, a                                          ; $4a30: $6f
	cp $47                                           ; $4a31: $fe $47
	ldh a, [rTMA]                                    ; $4a33: $f0 $06
	nop                                              ; $4a35: $00
	call c, $d922                                    ; $4a36: $dc $22 $d9
	inc sp                                           ; $4a39: $33
	inc l                                            ; $4a3a: $2c
	nop                                              ; $4a3b: $00
	sbc b                                            ; $4a3c: $98
	adc h                                            ; $4a3d: $8c
	ld [bc], a                                       ; $4a3e: $02
	ld a, [de]                                       ; $4a3f: $1a
	ld b, $0f                                        ; $4a40: $06 $0f
	ld [bc], a                                       ; $4a42: $02
	ld [bc], a                                       ; $4a43: $02
	cp $96                                           ; $4a44: $fe $96
	rlca                                             ; $4a46: $07
	nop                                              ; $4a47: $00
	ld [$080d], sp                                   ; $4a48: $08 $0d $08
	rlca                                             ; $4a4b: $07
	ld [bc], a                                       ; $4a4c: $02
	nop                                              ; $4a4d: $00
	dec b                                            ; $4a4e: $05
	ld hl, sp-$22                                    ; $4a4f: $f8 $de
	add b                                            ; $4a51: $80
	ld [hl], e                                       ; $4a52: $73
	add sp, $77                                      ; $4a53: $e8 $77
	ldh [c], a                                       ; $4a55: $e2
	ld a, e                                          ; $4a56: $7b
	ldh a, [c]                                       ; $4a57: $f2
	sbc d                                            ; $4a58: $9a
	nop                                              ; $4a59: $00
	ret nz                                           ; $4a5a: $c0

	add b                                            ; $4a5b: $80
	ldh [$c0], a                                     ; $4a5c: $e0 $c0
	rst FarCall                                          ; $4a5e: $f7
	sbc c                                            ; $4a5f: $99
	inc bc                                           ; $4a60: $03
	ld bc, $070f                                     ; $4a61: $01 $0f $07
	ccf                                              ; $4a64: $3f
	rra                                              ; $4a65: $1f
	inc b                                            ; $4a66: $04
	nop                                              ; $4a67: $00
	rst SubAFromDE                                          ; $4a68: $df
	ld b, h                                          ; $4a69: $44
	dec l                                            ; $4a6a: $2d
	nop                                              ; $4a6b: $00
	sbc b                                            ; $4a6c: $98
	adc h                                            ; $4a6d: $8c
	ld [bc], a                                       ; $4a6e: $02
	ld a, [de]                                       ; $4a6f: $1a
	ld b, $0f                                        ; $4a70: $06 $0f
	ld [bc], a                                       ; $4a72: $02
	ld [bc], a                                       ; $4a73: $02
	cp $96                                           ; $4a74: $fe $96
	rlca                                             ; $4a76: $07
	nop                                              ; $4a77: $00
	nop                                              ; $4a78: $00
	dec c                                            ; $4a79: $0d
	rrca                                             ; $4a7a: $0f
	rrca                                             ; $4a7b: $0f
	ld [bc], a                                       ; $4a7c: $02
	nop                                              ; $4a7d: $00
	dec b                                            ; $4a7e: $05
	rst FarCall                                          ; $4a7f: $f7
	sbc $80                                          ; $4a80: $de $80
	rst SubAFromDE                                          ; $4a82: $df
	rlca                                             ; $4a83: $07
	ld [hl], a                                       ; $4a84: $77
	and $77                                          ; $4a85: $e6 $77
	ldh [$99], a                                     ; $4a87: $e0 $99
	add b                                            ; $4a89: $80
	nop                                              ; $4a8a: $00
	ret nz                                           ; $4a8b: $c0

	add b                                            ; $4a8c: $80
	ldh [$c0], a                                     ; $4a8d: $e0 $c0
	rst FarCall                                          ; $4a8f: $f7
	sbc c                                            ; $4a90: $99
	inc bc                                           ; $4a91: $03
	ld bc, $070f                                     ; $4a92: $01 $0f $07
	ccf                                              ; $4a95: $3f
	rra                                              ; $4a96: $1f
	inc b                                            ; $4a97: $04
	nop                                              ; $4a98: $00
	rst SubAFromDE                                          ; $4a99: $df
	ld b, h                                          ; $4a9a: $44
	inc sp                                           ; $4a9b: $33
	add b                                            ; $4a9c: $80
	sub h                                            ; $4a9d: $94
	adc h                                            ; $4a9e: $8c
	ld a, [de]                                       ; $4a9f: $1a
	rrca                                             ; $4aa0: $0f
	ld [bc], a                                       ; $4aa1: $02
	nop                                              ; $4aa2: $00
	rlca                                             ; $4aa3: $07
	ld [$020f], sp                                   ; $4aa4: $08 $0f $02
	ld b, $02                                        ; $4aa7: $06 $02
	cp $9b                                           ; $4aa9: $fe $9b
	dec b                                            ; $4aab: $05
	rrca                                             ; $4aac: $0f
	ld [bc], a                                       ; $4aad: $02
	dec b                                            ; $4aae: $05
	db $fd                                           ; $4aaf: $fd
	rst SubAFromDE                                          ; $4ab0: $df
	add b                                            ; $4ab1: $80
	ld a, [$8096]                                    ; $4ab2: $fa $96 $80
	rlca                                             ; $4ab5: $07
	rlca                                             ; $4ab6: $07
	nop                                              ; $4ab7: $00
	rlca                                             ; $4ab8: $07
	ld [bc], a                                       ; $4ab9: $02
	add b                                            ; $4aba: $80
	ret nz                                           ; $4abb: $c0

	ldh [$7b], a                                     ; $4abc: $e0 $7b
	jp c, $f177                                      ; $4abe: $da $77 $f1

	sbc [hl]                                         ; $4ac1: $9e
	ret nz                                           ; $4ac2: $c0

	db $fc                                           ; $4ac3: $fc
	sbc h                                            ; $4ac4: $9c
	inc bc                                           ; $4ac5: $03
	rrca                                             ; $4ac6: $0f
	ccf                                              ; $4ac7: $3f
	ld [hl], e                                       ; $4ac8: $73
	rst SubAFromDE                                          ; $4ac9: $df
	sbc h                                            ; $4aca: $9c
	ld bc, $1f07                                     ; $4acb: $01 $07 $1f
	inc b                                            ; $4ace: $04
	nop                                              ; $4acf: $00
	rst SubAFromDE                                          ; $4ad0: $df
	ld b, h                                          ; $4ad1: $44
	inc sp                                           ; $4ad2: $33
	add b                                            ; $4ad3: $80
	sub h                                            ; $4ad4: $94
	adc h                                            ; $4ad5: $8c
	ld a, [de]                                       ; $4ad6: $1a
	rrca                                             ; $4ad7: $0f
	ld [bc], a                                       ; $4ad8: $02
	nop                                              ; $4ad9: $00
	rlca                                             ; $4ada: $07
	ld [$020f], sp                                   ; $4adb: $08 $0f $02
	ld b, $02                                        ; $4ade: $06 $02
	cp $9b                                           ; $4ae0: $fe $9b
	dec b                                            ; $4ae2: $05
	rrca                                             ; $4ae3: $0f
	ld [bc], a                                       ; $4ae4: $02
	dec b                                            ; $4ae5: $05
	db $fd                                           ; $4ae6: $fd
	rst SubAFromDE                                          ; $4ae7: $df
	add b                                            ; $4ae8: $80
	ld a, [$809e]                                    ; $4ae9: $fa $9e $80
	ld [hl], a                                       ; $4aec: $77
	ldh [c], a                                       ; $4aed: $e2
	sbc c                                            ; $4aee: $99
	ld [bc], a                                       ; $4aef: $02
	add b                                            ; $4af0: $80
	ret nz                                           ; $4af1: $c0

	ldh [rIF], a                                     ; $4af2: $e0 $0f
	rlca                                             ; $4af4: $07
	ld [hl], e                                       ; $4af5: $73
	pop af                                           ; $4af6: $f1
	sbc [hl]                                         ; $4af7: $9e
	ret nz                                           ; $4af8: $c0

	ld [hl], e                                       ; $4af9: $73
	rst SubAFromBC                                          ; $4afa: $e7
	sbc h                                            ; $4afb: $9c
	inc bc                                           ; $4afc: $03
	rrca                                             ; $4afd: $0f
	ccf                                              ; $4afe: $3f
	ld [hl], e                                       ; $4aff: $73
	ld hl, sp-$64                                    ; $4b00: $f8 $9c
	ld bc, $1f07                                     ; $4b02: $01 $07 $1f
	inc b                                            ; $4b05: $04
	nop                                              ; $4b06: $00
	rst SubAFromDE                                          ; $4b07: $df
	ld b, h                                          ; $4b08: $44
	cpl                                              ; $4b09: $2f
	nop                                              ; $4b0a: $00
	sbc b                                            ; $4b0b: $98
	adc h                                            ; $4b0c: $8c
	ld [bc], a                                       ; $4b0d: $02
	ld a, [de]                                       ; $4b0e: $1a
	ld b, $0f                                        ; $4b0f: $06 $0f
	ld [bc], a                                       ; $4b11: $02
	ld [bc], a                                       ; $4b12: $02
	cp $96                                           ; $4b13: $fe $96
	rlca                                             ; $4b15: $07
	nop                                              ; $4b16: $00
	db $10                                           ; $4b17: $10
	jr jr_024_4b24                                   ; $4b18: $18 $0a

	dec c                                            ; $4b1a: $0d
	ld [bc], a                                       ; $4b1b: $02
	nop                                              ; $4b1c: $00
	dec b                                            ; $4b1d: $05
	ld hl, sp-$65                                    ; $4b1e: $f8 $9b
	ld b, b                                          ; $4b20: $40
	ret nz                                           ; $4b21: $c0

	add b                                            ; $4b22: $80
	add b                                            ; $4b23: $80

jr_024_4b24:
	ld [hl], a                                       ; $4b24: $77
	add sp, $77                                      ; $4b25: $e8 $77
	ldh [c], a                                       ; $4b27: $e2
	rst $38                                          ; $4b28: $ff
	ld a, a                                          ; $4b29: $7f
	push af                                          ; $4b2a: $f5
	ld a, a                                          ; $4b2b: $7f
	pop af                                           ; $4b2c: $f1
	sbc l                                            ; $4b2d: $9d
	ldh [$c0], a                                     ; $4b2e: $e0 $c0
	rst FarCall                                          ; $4b30: $f7
	sbc c                                            ; $4b31: $99
	inc bc                                           ; $4b32: $03
	ld bc, $070f                                     ; $4b33: $01 $0f $07
	ccf                                              ; $4b36: $3f
	rra                                              ; $4b37: $1f
	inc b                                            ; $4b38: $04
	nop                                              ; $4b39: $00
	rst SubAFromDE                                          ; $4b3a: $df
	ld b, h                                          ; $4b3b: $44
	cpl                                              ; $4b3c: $2f
	nop                                              ; $4b3d: $00
	sbc b                                            ; $4b3e: $98
	adc h                                            ; $4b3f: $8c
	ld [bc], a                                       ; $4b40: $02
	ld a, [de]                                       ; $4b41: $1a
	ld b, $0f                                        ; $4b42: $06 $0f
	ld [bc], a                                       ; $4b44: $02
	ld [bc], a                                       ; $4b45: $02
	cp $96                                           ; $4b46: $fe $96
	rlca                                             ; $4b48: $07
	nop                                              ; $4b49: $00
	db $10                                           ; $4b4a: $10
	jr @+$11                                         ; $4b4b: $18 $0f

	rrca                                             ; $4b4d: $0f
	ld [bc], a                                       ; $4b4e: $02
	nop                                              ; $4b4f: $00
	dec b                                            ; $4b50: $05
	ld hl, sp-$66                                    ; $4b51: $f8 $9a
	ld b, b                                          ; $4b53: $40
	ret nz                                           ; $4b54: $c0

	add b                                            ; $4b55: $80
	add b                                            ; $4b56: $80
	rlca                                             ; $4b57: $07
	ld [hl], e                                       ; $4b58: $73
	and $77                                          ; $4b59: $e6 $77
	ldh [$99], a                                     ; $4b5b: $e0 $99
	add b                                            ; $4b5d: $80
	nop                                              ; $4b5e: $00
	ret nz                                           ; $4b5f: $c0

	add b                                            ; $4b60: $80
	ldh [$c0], a                                     ; $4b61: $e0 $c0
	rst FarCall                                          ; $4b63: $f7
	sbc c                                            ; $4b64: $99
	inc bc                                           ; $4b65: $03
	ld bc, $070f                                     ; $4b66: $01 $0f $07
	ccf                                              ; $4b69: $3f
	rra                                              ; $4b6a: $1f
	inc b                                            ; $4b6b: $04
	nop                                              ; $4b6c: $00
	rst SubAFromDE                                          ; $4b6d: $df
	ld b, h                                          ; $4b6e: $44
	ld sp, $9800                                     ; $4b6f: $31 $00 $98
	adc h                                            ; $4b72: $8c
	ld [bc], a                                       ; $4b73: $02
	ld a, [de]                                       ; $4b74: $1a
	ld b, $0f                                        ; $4b75: $06 $0f
	ld [bc], a                                       ; $4b77: $02
	ld [bc], a                                       ; $4b78: $02
	cp $96                                           ; $4b79: $fe $96
	rlca                                             ; $4b7b: $07
	nop                                              ; $4b7c: $00
	db $10                                           ; $4b7d: $10
	jr jr_024_4b9f                                   ; $4b7e: $18 $1f

	rrca                                             ; $4b80: $0f
	ld [bc], a                                       ; $4b81: $02
	nop                                              ; $4b82: $00
	dec b                                            ; $4b83: $05
	ld hl, sp-$68                                    ; $4b84: $f8 $98
	ld b, b                                          ; $4b86: $40
	ret nz                                           ; $4b87: $c0

	ret nz                                           ; $4b88: $c0

	add b                                            ; $4b89: $80
	ld [bc], a                                       ; $4b8a: $02
	rlca                                             ; $4b8b: $07
	rlca                                             ; $4b8c: $07
	ld [hl], e                                       ; $4b8d: $73
	db $e4                                           ; $4b8e: $e4
	ld a, a                                          ; $4b8f: $7f
	add sp, -$67                                     ; $4b90: $e8 $99
	add b                                            ; $4b92: $80
	nop                                              ; $4b93: $00
	ret nz                                           ; $4b94: $c0

	add b                                            ; $4b95: $80
	ldh [$c0], a                                     ; $4b96: $e0 $c0
	rst FarCall                                          ; $4b98: $f7
	sbc c                                            ; $4b99: $99
	inc bc                                           ; $4b9a: $03
	ld bc, $070f                                     ; $4b9b: $01 $0f $07
	ccf                                              ; $4b9e: $3f

jr_024_4b9f:
	rra                                              ; $4b9f: $1f
	inc b                                            ; $4ba0: $04
	nop                                              ; $4ba1: $00
	rst SubAFromDE                                          ; $4ba2: $df
	ld b, h                                          ; $4ba3: $44
	ld [hl-], a                                      ; $4ba4: $32
	nop                                              ; $4ba5: $00
	sbc b                                            ; $4ba6: $98
	adc h                                            ; $4ba7: $8c
	ld [bc], a                                       ; $4ba8: $02
	ld a, [de]                                       ; $4ba9: $1a
	ld b, $0f                                        ; $4baa: $06 $0f
	ld [bc], a                                       ; $4bac: $02
	ld [bc], a                                       ; $4bad: $02
	cp $96                                           ; $4bae: $fe $96
	rlca                                             ; $4bb0: $07
	nop                                              ; $4bb1: $00
	db $10                                           ; $4bb2: $10
	jr jr_024_4bd4                                   ; $4bb3: $18 $1f

	rrca                                             ; $4bb5: $0f
	ld [bc], a                                       ; $4bb6: $02

jr_024_4bb7:
	nop                                              ; $4bb7: $00
	dec b                                            ; $4bb8: $05
	ld hl, sp-$69                                    ; $4bb9: $f8 $97
	ld b, b                                          ; $4bbb: $40
	ret nz                                           ; $4bbc: $c0

	ret nz                                           ; $4bbd: $c0

	add b                                            ; $4bbe: $80
	rlca                                             ; $4bbf: $07
	rrca                                             ; $4bc0: $0f
	ld [bc], a                                       ; $4bc1: $02
	rlca                                             ; $4bc2: $07
	ld l, a                                          ; $4bc3: $6f
	ldh [c], a                                       ; $4bc4: $e2
	sub a                                            ; $4bc5: $97
	add d                                            ; $4bc6: $82
	nop                                              ; $4bc7: $00
	ret nz                                           ; $4bc8: $c0

	add b                                            ; $4bc9: $80
	ldh [$c0], a                                     ; $4bca: $e0 $c0
	nop                                              ; $4bcc: $00
	add b                                            ; $4bcd: $80
	ld sp, hl                                        ; $4bce: $f9
	sbc c                                            ; $4bcf: $99
	inc bc                                           ; $4bd0: $03
	ld bc, $070f                                     ; $4bd1: $01 $0f $07

jr_024_4bd4:
	ccf                                              ; $4bd4: $3f
	rra                                              ; $4bd5: $1f
	inc b                                            ; $4bd6: $04
	nop                                              ; $4bd7: $00
	rst SubAFromDE                                          ; $4bd8: $df
	ld b, h                                          ; $4bd9: $44
	ld e, h                                          ; $4bda: $5c
	add b                                            ; $4bdb: $80
	add a                                            ; $4bdc: $87
	daa                                              ; $4bdd: $27
	and a                                            ; $4bde: $a7
	or a                                             ; $4bdf: $b7
	ld [hl], h                                       ; $4be0: $74
	ld a, a                                          ; $4be1: $7f
	rst $38                                          ; $4be2: $ff
	rst $38                                          ; $4be3: $ff
	cp a                                             ; $4be4: $bf
	db $fd                                           ; $4be5: $fd
	db $fc                                           ; $4be6: $fc
	db $fc                                           ; $4be7: $fc
	rst $38                                          ; $4be8: $ff
	rst $38                                          ; $4be9: $ff
	sub h                                            ; $4bea: $94
	inc d                                            ; $4beb: $14
	ld [hl], b                                       ; $4bec: $70
	cp e                                             ; $4bed: $bb
	xor e                                            ; $4bee: $ab
	ld a, e                                          ; $4bef: $7b
	db $fd                                           ; $4bf0: $fd
	rst $38                                          ; $4bf1: $ff
	rst FarCall                                          ; $4bf2: $f7
	rst SubAFromDE                                          ; $4bf3: $df
	ld [hl], c                                       ; $4bf4: $71
	sbc $fe                                          ; $4bf5: $de $fe
	adc c                                            ; $4bf7: $89
	rst SubAFromBC                                          ; $4bf8: $e7
	jr nz, jr_024_4c29                               ; $4bf9: $20 $2e

	ccf                                              ; $4bfb: $3f
	ld sp, hl                                        ; $4bfc: $f9
	adc e                                            ; $4bfd: $8b
	set 0, e                                         ; $4bfe: $cb $c3
	db $e3                                           ; $4c00: $e3
	db $e3                                           ; $4c01: $e3
	pop af                                           ; $4c02: $f1
	ld sp, hl                                        ; $4c03: $f9
	db $fc                                           ; $4c04: $fc
	rst FarCall                                          ; $4c05: $f7
	ld [hl], a                                       ; $4c06: $77
	ld a, a                                          ; $4c07: $7f

jr_024_4c08:
	ld a, $3e                                        ; $4c08: $3e $3e
	ld e, $8e                                        ; $4c0a: $1e $8e
	rst JumpTable                                          ; $4c0c: $c7
	ld [hl], e                                       ; $4c0d: $73
	ld a, e                                          ; $4c0e: $7b
	db $d3                                           ; $4c0f: $d3
	add [hl]                                         ; $4c10: $86
	rst SubAFromDE                                          ; $4c11: $df
	ld [$3f7f], a                                    ; $4c12: $ea $7f $3f
	sbc a                                            ; $4c15: $9f
	cp c                                             ; $4c16: $b9
	jr z, jr_024_4c41                                ; $4c17: $28 $28

	jr c, jr_024_4bb7                                ; $4c19: $38 $9c

	call nz, $f8e4                                   ; $4c1b: $c4 $e4 $f8
	ld a, l                                          ; $4c1e: $7d
	cpl                                              ; $4c1f: $2f
	xor l                                            ; $4c20: $ad
	jp nz, $aa1f                                     ; $4c21: $c2 $1f $aa

	push de                                          ; $4c24: $d5
	ld hl, sp-$43                                    ; $4c25: $f8 $bd
	ccf                                              ; $4c27: $3f
	cpl                                              ; $4c28: $2f

jr_024_4c29:
	ld c, $fe                                        ; $4c29: $0e $fe
	sub [hl]                                         ; $4c2b: $96
	cp $7f                                           ; $4c2c: $fe $7f
	ld a, b                                          ; $4c2e: $78
	jr nc, jr_024_4c31                               ; $4c2f: $30 $00

jr_024_4c31:
	nop                                              ; $4c31: $00
	ld [bc], a                                       ; $4c32: $02
	ld b, $c1                                        ; $4c33: $06 $c1
	ld a, [$0004]                                    ; $4c35: $fa $04 $00
	sbc $44                                          ; $4c38: $de $44
	ld e, [hl]                                       ; $4c3a: $5e
	add b                                            ; $4c3b: $80
	add a                                            ; $4c3c: $87
	daa                                              ; $4c3d: $27
	and a                                            ; $4c3e: $a7
	or a                                             ; $4c3f: $b7
	ld [hl], h                                       ; $4c40: $74

jr_024_4c41:
	ld a, a                                          ; $4c41: $7f
	rst $38                                          ; $4c42: $ff
	rst $38                                          ; $4c43: $ff
	cp a                                             ; $4c44: $bf
	db $fd                                           ; $4c45: $fd
	db $fc                                           ; $4c46: $fc
	db $fc                                           ; $4c47: $fc
	rst $38                                          ; $4c48: $ff
	rst $38                                          ; $4c49: $ff
	sub h                                            ; $4c4a: $94
	inc d                                            ; $4c4b: $14
	ld [hl], b                                       ; $4c4c: $70
	cp e                                             ; $4c4d: $bb
	xor e                                            ; $4c4e: $ab
	ld a, e                                          ; $4c4f: $7b
	db $fd                                           ; $4c50: $fd
	rst $38                                          ; $4c51: $ff
	rst $38                                          ; $4c52: $ff
	rst FarCall                                          ; $4c53: $f7
	rst SubAFromDE                                          ; $4c54: $df
	sbc $fe                                          ; $4c55: $de $fe
	add b                                            ; $4c57: $80
	rst SubAFromBC                                          ; $4c58: $e7
	jr nz, @+$22                                     ; $4c59: $20 $20

	ld c, $3f                                        ; $4c5b: $0e $3f
	adc e                                            ; $4c5d: $8b
	set 0, e                                         ; $4c5e: $cb $c3
	db $e3                                           ; $4c60: $e3
	db $e3                                           ; $4c61: $e3
	pop af                                           ; $4c62: $f1
	ld sp, hl                                        ; $4c63: $f9
	db $fc                                           ; $4c64: $fc
	rst FarCall                                          ; $4c65: $f7
	ld [hl], a                                       ; $4c66: $77
	ld a, a                                          ; $4c67: $7f
	ld a, $3e                                        ; $4c68: $3e $3e
	ld e, $0e                                        ; $4c6a: $1e $0e
	add a                                            ; $4c6c: $87
	ld [hl], a                                       ; $4c6d: $77
	ld a, e                                          ; $4c6e: $7b
	rst $38                                          ; $4c6f: $ff
	rst $38                                          ; $4c70: $ff
	rst SubAFromDE                                          ; $4c71: $df
	ld [$3f7f], a                                    ; $4c72: $ea $7f $3f
	sbc b                                            ; $4c75: $98
	cp a                                             ; $4c76: $bf
	rst SubAFromDE                                          ; $4c77: $df
	jr z, jr_024_4c08                                ; $4c78: $28 $8e

	jr c, @-$62                                      ; $4c7a: $38 $9c

	call nz, Call_024_71e4                           ; $4c7c: $c4 $e4 $71
	ld hl, sp+$2f                                    ; $4c7f: $f8 $2f
	xor l                                            ; $4c81: $ad
	jp nz, $aa1f                                     ; $4c82: $c2 $1f $aa

	push de                                          ; $4c85: $d5
	ld sp, hl                                        ; $4c86: $f9
	ld hl, sp+$3f                                    ; $4c87: $f8 $3f
	cpl                                              ; $4c89: $2f
	ld c, $fe                                        ; $4c8a: $0e $fe
	sub l                                            ; $4c8c: $95
	cp $ff                                           ; $4c8d: $fe $ff
	ld a, b                                          ; $4c8f: $78
	jr nc, jr_024_4c92                               ; $4c90: $30 $00

jr_024_4c92:
	nop                                              ; $4c92: $00
	ld [bc], a                                       ; $4c93: $02
	ld b, $c1                                        ; $4c94: $06 $c1
	ret nz                                           ; $4c96: $c0

	ei                                               ; $4c97: $fb
	inc b                                            ; $4c98: $04
	nop                                              ; $4c99: $00
	sbc $44                                          ; $4c9a: $de $44
	ld e, [hl]                                       ; $4c9c: $5e
	nop                                              ; $4c9d: $00
	add l                                            ; $4c9e: $85
	daa                                              ; $4c9f: $27
	db $fd                                           ; $4ca0: $fd
	and a                                            ; $4ca1: $a7
	db $fc                                           ; $4ca2: $fc
	or a                                             ; $4ca3: $b7
	db $fc                                           ; $4ca4: $fc
	ld [hl], h                                       ; $4ca5: $74
	rst $38                                          ; $4ca6: $ff
	ld a, a                                          ; $4ca7: $7f
	rst $38                                          ; $4ca8: $ff
	rst $38                                          ; $4ca9: $ff
	sub h                                            ; $4caa: $94
	rst $38                                          ; $4cab: $ff
	inc d                                            ; $4cac: $14
	cp a                                             ; $4cad: $bf
	ld [hl], b                                       ; $4cae: $70
	cp e                                             ; $4caf: $bb
	cp $ab                                           ; $4cb0: $fe $ab
	cp $7b                                           ; $4cb2: $fe $7b
	cp $fd                                           ; $4cb4: $fe $fd
	rst SubAFromBC                                          ; $4cb6: $e7
	rst $38                                          ; $4cb7: $ff
	jr nz, jr_024_4d35                               ; $4cb8: $20 $7b

	cp $bf                                           ; $4cba: $fe $bf
	rst $38                                          ; $4cbc: $ff
	adc e                                            ; $4cbd: $8b
	add b                                            ; $4cbe: $80
	rst FarCall                                          ; $4cbf: $f7
	bit 6, a                                         ; $4cc0: $cb $77
	jp $e37f                                         ; $4cc2: $c3 $7f $e3


	ld a, $e3                                        ; $4cc5: $3e $e3
	ld a, $f1                                        ; $4cc7: $3e $f1
	ld e, $f9                                        ; $4cc9: $1e $f9
	ld c, $fc                                        ; $4ccb: $0e $fc
	rlca                                             ; $4ccd: $07

jr_024_4cce:
	ld [hl], a                                       ; $4cce: $77
	sbc b                                            ; $4ccf: $98
	ld a, a                                          ; $4cd0: $7f
	cp b                                             ; $4cd1: $b8
	rst $38                                          ; $4cd2: $ff
	jr z, jr_024_4cce                                ; $4cd3: $28 $f9

	cpl                                              ; $4cd5: $2f
	rst SubAFromDE                                          ; $4cd6: $df
	jr c, @-$14                                      ; $4cd7: $38 $ea

	sbc h                                            ; $4cd9: $9c
	ld a, a                                          ; $4cda: $7f
	call nz, $e43f                                   ; $4cdb: $c4 $3f $e4
	ld [hl], a                                       ; $4cde: $77
	call c, Call_024_7e9e                            ; $4cdf: $dc $9e $7e
	sbc $ff                                          ; $4ce2: $de $ff
	sbc h                                            ; $4ce4: $9c
	di                                               ; $4ce5: $f3
	ld e, $1f                                        ; $4ce6: $1e $1f
	cp [hl]                                          ; $4ce8: $be
	xor d                                            ; $4ce9: $aa
	push de                                          ; $4cea: $d5
	cp $9d                                           ; $4ceb: $fe $9d
	ld bc, $bfff                                     ; $4ced: $01 $ff $bf
	ld hl, sp-$10                                    ; $4cf0: $f8 $f0
	sbc [hl]                                         ; $4cf2: $9e
	ret nz                                           ; $4cf3: $c0

	db $fd                                           ; $4cf4: $fd
	sbc e                                            ; $4cf5: $9b
	ld [bc], a                                       ; $4cf6: $02
	nop                                              ; $4cf7: $00
	ld b, $00                                        ; $4cf8: $06 $00
	inc b                                            ; $4cfa: $04
	nop                                              ; $4cfb: $00
	sbc $44                                          ; $4cfc: $de $44
	ld e, [hl]                                       ; $4cfe: $5e
	nop                                              ; $4cff: $00
	add l                                            ; $4d00: $85
	daa                                              ; $4d01: $27
	db $fd                                           ; $4d02: $fd
	and a                                            ; $4d03: $a7
	db $fc                                           ; $4d04: $fc
	or a                                             ; $4d05: $b7
	db $fc                                           ; $4d06: $fc
	ld [hl], h                                       ; $4d07: $74
	rst $38                                          ; $4d08: $ff
	ld a, a                                          ; $4d09: $7f
	rst $38                                          ; $4d0a: $ff
	rst $38                                          ; $4d0b: $ff
	sub h                                            ; $4d0c: $94
	rst $38                                          ; $4d0d: $ff
	inc d                                            ; $4d0e: $14
	cp a                                             ; $4d0f: $bf
	ld [hl], b                                       ; $4d10: $70
	cp e                                             ; $4d11: $bb
	cp $ab                                           ; $4d12: $fe $ab
	cp $7b                                           ; $4d14: $fe $7b
	cp $fd                                           ; $4d16: $fe $fd
	rst SubAFromBC                                          ; $4d18: $e7
	rst $38                                          ; $4d19: $ff
	jr nz, jr_024_4d97                               ; $4d1a: $20 $7b

	cp $bf                                           ; $4d1c: $fe $bf
	rst $38                                          ; $4d1e: $ff
	adc e                                            ; $4d1f: $8b
	add b                                            ; $4d20: $80
	rst FarCall                                          ; $4d21: $f7
	bit 6, a                                         ; $4d22: $cb $77
	jp $e37f                                         ; $4d24: $c3 $7f $e3


	ld a, $e3                                        ; $4d27: $3e $e3
	ld a, $f1                                        ; $4d29: $3e $f1
	ld e, $f9                                        ; $4d2b: $1e $f9
	ld c, $fc                                        ; $4d2d: $0e $fc
	rlca                                             ; $4d2f: $07

jr_024_4d30:
	ld [hl], a                                       ; $4d30: $77
	sbc b                                            ; $4d31: $98
	ld a, a                                          ; $4d32: $7f
	cp b                                             ; $4d33: $b8
	rst $38                                          ; $4d34: $ff

jr_024_4d35:
	jr z, jr_024_4d30                                ; $4d35: $28 $f9

	cpl                                              ; $4d37: $2f
	rst SubAFromDE                                          ; $4d38: $df
	jr c, @-$14                                      ; $4d39: $38 $ea

	sbc h                                            ; $4d3b: $9c
	ld a, a                                          ; $4d3c: $7f
	call nz, $e43f                                   ; $4d3d: $c4 $3f $e4
	ld [hl], a                                       ; $4d40: $77
	call c, Call_024_7f9d                            ; $4d41: $dc $9d $7f
	ret nz                                           ; $4d44: $c0

	sbc $ff                                          ; $4d45: $de $ff
	sbc l                                            ; $4d47: $9d
	ccf                                              ; $4d48: $3f
	rra                                              ; $4d49: $1f
	cp [hl]                                          ; $4d4a: $be
	xor d                                            ; $4d4b: $aa
	push de                                          ; $4d4c: $d5
	cp $98                                           ; $4d4d: $fe $98
	ld bc, $00ff                                     ; $4d4f: $01 $ff $00
	ld a, b                                          ; $4d52: $78
	ret nz                                           ; $4d53: $c0

	ldh a, [$c0]                                     ; $4d54: $f0 $c0
	db $fd                                           ; $4d56: $fd
	sbc e                                            ; $4d57: $9b
	ld [bc], a                                       ; $4d58: $02
	nop                                              ; $4d59: $00
	ld b, $00                                        ; $4d5a: $06 $00
	inc b                                            ; $4d5c: $04
	nop                                              ; $4d5d: $00
	sbc $44                                          ; $4d5e: $de $44
	ld e, l                                          ; $4d60: $5d
	add b                                            ; $4d61: $80
	add a                                            ; $4d62: $87
	daa                                              ; $4d63: $27
	and a                                            ; $4d64: $a7
	or [hl]                                          ; $4d65: $b6
	ld [hl], l                                       ; $4d66: $75
	ld a, a                                          ; $4d67: $7f
	rst $38                                          ; $4d68: $ff
	rst $38                                          ; $4d69: $ff
	cp a                                             ; $4d6a: $bf
	db $fd                                           ; $4d6b: $fd
	db $fc                                           ; $4d6c: $fc
	db $fd                                           ; $4d6d: $fd
	rst $38                                          ; $4d6e: $ff
	cp $94                                           ; $4d6f: $fe $94
	inc d                                            ; $4d71: $14
	ld [hl], e                                       ; $4d72: $73
	cp e                                             ; $4d73: $bb
	xor e                                            ; $4d74: $ab
	ld a, e                                          ; $4d75: $7b
	db $fd                                           ; $4d76: $fd
	ld hl, sp-$11                                    ; $4d77: $f8 $ef
	rst $38                                          ; $4d79: $ff
	ldh a, [$de]                                     ; $4d7a: $f0 $de
	cp $80                                           ; $4d7c: $fe $80
	rst SubAFromBC                                          ; $4d7e: $e7
	daa                                              ; $4d7f: $27
	ccf                                              ; $4d80: $3f
	ld a, a                                          ; $4d81: $7f
	ld sp, hl                                        ; $4d82: $f9
	adc e                                            ; $4d83: $8b
	set 0, e                                         ; $4d84: $cb $c3
	db $e3                                           ; $4d86: $e3
	db $e3                                           ; $4d87: $e3
	ld [hl], c                                       ; $4d88: $71
	ld sp, hl                                        ; $4d89: $f9
	db $fc                                           ; $4d8a: $fc
	rst FarCall                                          ; $4d8b: $f7
	ld [hl], a                                       ; $4d8c: $77
	ld a, a                                          ; $4d8d: $7f
	ld a, $3e                                        ; $4d8e: $3e $3e
	sbc [hl]                                         ; $4d90: $9e
	adc [hl]                                         ; $4d91: $8e
	rst JumpTable                                          ; $4d92: $c7
	ld [hl], l                                       ; $4d93: $75
	ld a, [hl]                                       ; $4d94: $7e
	rst $38                                          ; $4d95: $ff
	rst $38                                          ; $4d96: $ff

jr_024_4d97:
	rst SubAFromDE                                          ; $4d97: $df
	db $eb                                           ; $4d98: $eb
	ld a, a                                          ; $4d99: $7f
	ccf                                              ; $4d9a: $3f
	sbc e                                            ; $4d9b: $9b
	cp c                                             ; $4d9c: $b9
	rst SubAFromDE                                          ; $4d9d: $df

jr_024_4d9e:
	jr z, @-$70                                      ; $4d9e: $28 $8e

	jr c, @-$62                                      ; $4da0: $38 $9c

	call nz, $f8e4                                   ; $4da2: $c4 $e4 $f8
	cp l                                             ; $4da5: $bd
	xor a                                            ; $4da6: $af
	and l                                            ; $4da7: $a5
	jp nz, $aa07                                     ; $4da8: $c2 $07 $aa

	push de                                          ; $4dab: $d5
	cp b                                             ; $4dac: $b8
	dec a                                            ; $4dad: $3d
	ccf                                              ; $4dae: $3f
	cpl                                              ; $4daf: $2f
	ld c, $fe                                        ; $4db0: $0e $fe
	sub [hl]                                         ; $4db2: $96
	cp $7f                                           ; $4db3: $fe $7f
	ld a, b                                          ; $4db5: $78
	jr nc, jr_024_4db8                               ; $4db6: $30 $00

jr_024_4db8:
	nop                                              ; $4db8: $00
	ld [bc], a                                       ; $4db9: $02
	ld b, $c1                                        ; $4dba: $06 $c1
	ld a, [$0004]                                    ; $4dbc: $fa $04 $00
	sbc $44                                          ; $4dbf: $de $44
	ld e, l                                          ; $4dc1: $5d
	add b                                            ; $4dc2: $80
	add a                                            ; $4dc3: $87
	daa                                              ; $4dc4: $27
	and a                                            ; $4dc5: $a7
	or a                                             ; $4dc6: $b7
	ld [hl], h                                       ; $4dc7: $74
	ld a, a                                          ; $4dc8: $7f
	rst $38                                          ; $4dc9: $ff
	rst $38                                          ; $4dca: $ff
	cp a                                             ; $4dcb: $bf
	db $fd                                           ; $4dcc: $fd
	db $fc                                           ; $4dcd: $fc
	db $fc                                           ; $4dce: $fc
	rst $38                                          ; $4dcf: $ff
	rst $38                                          ; $4dd0: $ff
	sub h                                            ; $4dd1: $94
	inc d                                            ; $4dd2: $14
	ld [hl], b                                       ; $4dd3: $70
	cp e                                             ; $4dd4: $bb
	xor e                                            ; $4dd5: $ab
	ld a, e                                          ; $4dd6: $7b
	db $fd                                           ; $4dd7: $fd
	rst $38                                          ; $4dd8: $ff
	rst $38                                          ; $4dd9: $ff
	rst FarCall                                          ; $4dda: $f7
	rst SubAFromDE                                          ; $4ddb: $df
	sbc $fe                                          ; $4ddc: $de $fe
	adc c                                            ; $4dde: $89
	rst SubAFromBC                                          ; $4ddf: $e7
	jr nz, jr_024_4e02                               ; $4de0: $20 $20

	ld c, $3f                                        ; $4de2: $0e $3f
	adc e                                            ; $4de4: $8b
	set 0, e                                         ; $4de5: $cb $c3
	db $e3                                           ; $4de7: $e3
	db $e3                                           ; $4de8: $e3
	pop af                                           ; $4de9: $f1
	ld sp, hl                                        ; $4dea: $f9
	db $fc                                           ; $4deb: $fc
	rst FarCall                                          ; $4dec: $f7
	ld [hl], a                                       ; $4ded: $77
	ld a, a                                          ; $4dee: $7f
	ld a, $3e                                        ; $4def: $3e $3e
	ld e, $0e                                        ; $4df1: $1e $0e
	add a                                            ; $4df3: $87
	ld [hl], a                                       ; $4df4: $77
	ld a, e                                          ; $4df5: $7b
	db $d3                                           ; $4df6: $d3
	add [hl]                                         ; $4df7: $86
	rst SubAFromDE                                          ; $4df8: $df
	ld [$3f7f], a                                    ; $4df9: $ea $7f $3f
	sbc b                                            ; $4dfc: $98
	cp e                                             ; $4dfd: $bb
	jr z, jr_024_4e28                                ; $4dfe: $28 $28

	jr c, jr_024_4d9e                                ; $4e00: $38 $9c

jr_024_4e02:
	call nz, Call_024_71e4                           ; $4e02: $c4 $e4 $71
	ld hl, sp+$2f                                    ; $4e05: $f8 $2f
	xor l                                            ; $4e07: $ad
	jp nz, $aa1f                                     ; $4e08: $c2 $1f $aa

	push de                                          ; $4e0b: $d5
	ld sp, hl                                        ; $4e0c: $f9
	ld hl, sp+$3f                                    ; $4e0d: $f8 $3f
	cpl                                              ; $4e0f: $2f
	ld c, $fe                                        ; $4e10: $0e $fe
	sub l                                            ; $4e12: $95
	cp $ff                                           ; $4e13: $fe $ff
	ld a, b                                          ; $4e15: $78
	jr nc, jr_024_4e18                               ; $4e16: $30 $00

jr_024_4e18:
	nop                                              ; $4e18: $00
	ld [bc], a                                       ; $4e19: $02
	ld b, $c1                                        ; $4e1a: $06 $c1
	ret nz                                           ; $4e1c: $c0

	ei                                               ; $4e1d: $fb
	inc b                                            ; $4e1e: $04
	nop                                              ; $4e1f: $00
	sbc $44                                          ; $4e20: $de $44
	ld e, [hl]                                       ; $4e22: $5e
	nop                                              ; $4e23: $00
	add l                                            ; $4e24: $85
	daa                                              ; $4e25: $27
	db $fd                                           ; $4e26: $fd
	and a                                            ; $4e27: $a7

jr_024_4e28:
	db $fc                                           ; $4e28: $fc
	or a                                             ; $4e29: $b7
	db $fc                                           ; $4e2a: $fc
	ld [hl], h                                       ; $4e2b: $74
	rst $38                                          ; $4e2c: $ff
	ld a, a                                          ; $4e2d: $7f
	rst $38                                          ; $4e2e: $ff
	rst $38                                          ; $4e2f: $ff
	sub h                                            ; $4e30: $94
	rst $38                                          ; $4e31: $ff
	inc d                                            ; $4e32: $14
	cp a                                             ; $4e33: $bf
	ld [hl], b                                       ; $4e34: $70
	cp e                                             ; $4e35: $bb
	cp $ab                                           ; $4e36: $fe $ab
	cp $7b                                           ; $4e38: $fe $7b
	cp $fd                                           ; $4e3a: $fe $fd
	rst SubAFromBC                                          ; $4e3c: $e7
	rst $38                                          ; $4e3d: $ff
	jr nz, jr_024_4ebb                               ; $4e3e: $20 $7b

	cp $bf                                           ; $4e40: $fe $bf
	rst $38                                          ; $4e42: $ff
	adc e                                            ; $4e43: $8b
	add b                                            ; $4e44: $80
	rst FarCall                                          ; $4e45: $f7
	bit 6, a                                         ; $4e46: $cb $77
	jp $e37f                                         ; $4e48: $c3 $7f $e3


	ld a, $e3                                        ; $4e4b: $3e $e3
	ld a, $f1                                        ; $4e4d: $3e $f1
	ld e, $f9                                        ; $4e4f: $1e $f9
	ld c, $fc                                        ; $4e51: $0e $fc
	rlca                                             ; $4e53: $07
	ld [hl], a                                       ; $4e54: $77
	sbc b                                            ; $4e55: $98
	ld a, a                                          ; $4e56: $7f
	cp b                                             ; $4e57: $b8

jr_024_4e58:
	rst $38                                          ; $4e58: $ff
	jr z, jr_024_4e58                                ; $4e59: $28 $fd

	dec hl                                           ; $4e5b: $2b
	rst SubAFromDE                                          ; $4e5c: $df
	jr c, @-$14                                      ; $4e5d: $38 $ea

	sbc h                                            ; $4e5f: $9c
	ld a, a                                          ; $4e60: $7f
	call nz, $e43f                                   ; $4e61: $c4 $3f $e4
	ld [hl], a                                       ; $4e64: $77
	call c, Call_024_7e9e                            ; $4e65: $dc $9e $7e
	sbc $ff                                          ; $4e68: $de $ff
	sbc h                                            ; $4e6a: $9c
	di                                               ; $4e6b: $f3
	ld e, $1f                                        ; $4e6c: $1e $1f
	cp [hl]                                          ; $4e6e: $be
	xor d                                            ; $4e6f: $aa
	push de                                          ; $4e70: $d5
	cp $9d                                           ; $4e71: $fe $9d
	ld bc, $bfff                                     ; $4e73: $01 $ff $bf
	ld hl, sp-$10                                    ; $4e76: $f8 $f0
	sbc [hl]                                         ; $4e78: $9e
	ret nz                                           ; $4e79: $c0

	db $fd                                           ; $4e7a: $fd
	sbc e                                            ; $4e7b: $9b
	ld [bc], a                                       ; $4e7c: $02

Jump_024_4e7d:
	nop                                              ; $4e7d: $00
	ld b, $00                                        ; $4e7e: $06 $00
	inc b                                            ; $4e80: $04
	nop                                              ; $4e81: $00
	sbc $44                                          ; $4e82: $de $44
	ld e, [hl]                                       ; $4e84: $5e
	nop                                              ; $4e85: $00
	add l                                            ; $4e86: $85
	daa                                              ; $4e87: $27
	db $fd                                           ; $4e88: $fd
	and a                                            ; $4e89: $a7
	db $fc                                           ; $4e8a: $fc
	or a                                             ; $4e8b: $b7
	db $fc                                           ; $4e8c: $fc
	ld [hl], h                                       ; $4e8d: $74
	rst $38                                          ; $4e8e: $ff
	ld a, a                                          ; $4e8f: $7f
	rst $38                                          ; $4e90: $ff
	rst $38                                          ; $4e91: $ff
	sub h                                            ; $4e92: $94
	rst $38                                          ; $4e93: $ff
	inc d                                            ; $4e94: $14
	cp a                                             ; $4e95: $bf
	ld [hl], b                                       ; $4e96: $70
	cp e                                             ; $4e97: $bb
	cp $ab                                           ; $4e98: $fe $ab
	cp $7b                                           ; $4e9a: $fe $7b
	cp $fd                                           ; $4e9c: $fe $fd
	rst SubAFromBC                                          ; $4e9e: $e7
	rst $38                                          ; $4e9f: $ff
	jr nz, jr_024_4f1d                               ; $4ea0: $20 $7b

	cp $bf                                           ; $4ea2: $fe $bf
	rst $38                                          ; $4ea4: $ff
	adc e                                            ; $4ea5: $8b
	add b                                            ; $4ea6: $80
	rst FarCall                                          ; $4ea7: $f7
	bit 6, a                                         ; $4ea8: $cb $77
	jp $e37f                                         ; $4eaa: $c3 $7f $e3


	ld a, $e3                                        ; $4ead: $3e $e3
	ld a, $f1                                        ; $4eaf: $3e $f1
	ld e, $f9                                        ; $4eb1: $1e $f9
	ld c, $fc                                        ; $4eb3: $0e $fc
	rlca                                             ; $4eb5: $07
	ld [hl], a                                       ; $4eb6: $77
	sbc b                                            ; $4eb7: $98
	ld a, a                                          ; $4eb8: $7f
	cp b                                             ; $4eb9: $b8

jr_024_4eba:
	rst $38                                          ; $4eba: $ff

jr_024_4ebb:
	jr z, jr_024_4eba                                ; $4ebb: $28 $fd

	dec hl                                           ; $4ebd: $2b
	rst SubAFromDE                                          ; $4ebe: $df
	jr c, @-$14                                      ; $4ebf: $38 $ea

	sbc h                                            ; $4ec1: $9c
	ld a, a                                          ; $4ec2: $7f
	call nz, $e43f                                   ; $4ec3: $c4 $3f $e4
	ld [hl], a                                       ; $4ec6: $77
	call c, Call_024_7f9d                            ; $4ec7: $dc $9d $7f
	ret nz                                           ; $4eca: $c0

	sbc $ff                                          ; $4ecb: $de $ff
	sbc l                                            ; $4ecd: $9d
	ccf                                              ; $4ece: $3f
	rra                                              ; $4ecf: $1f
	cp [hl]                                          ; $4ed0: $be
	xor d                                            ; $4ed1: $aa
	push de                                          ; $4ed2: $d5
	cp $98                                           ; $4ed3: $fe $98
	ld bc, $00ff                                     ; $4ed5: $01 $ff $00
	ld a, b                                          ; $4ed8: $78
	ret nz                                           ; $4ed9: $c0

	ldh a, [$c0]                                     ; $4eda: $f0 $c0
	db $fd                                           ; $4edc: $fd
	sbc e                                            ; $4edd: $9b
	ld [bc], a                                       ; $4ede: $02
	nop                                              ; $4edf: $00
	ld b, $00                                        ; $4ee0: $06 $00
	inc b                                            ; $4ee2: $04
	nop                                              ; $4ee3: $00
	sbc $44                                          ; $4ee4: $de $44
	ld e, l                                          ; $4ee6: $5d
	add b                                            ; $4ee7: $80
	add a                                            ; $4ee8: $87
	ld sp, $3939                                     ; $4ee9: $31 $39 $39
	cp l                                             ; $4eec: $bd
	cp a                                             ; $4eed: $bf
	rst SubAFromDE                                          ; $4eee: $df
	rst AddAOntoHL                                          ; $4eef: $ef
	rst SubAFromBC                                          ; $4ef0: $e7
	rst $38                                          ; $4ef1: $ff
	rst AddAOntoHL                                          ; $4ef2: $ef
	rst AddAOntoHL                                          ; $4ef3: $ef
	rst SubAFromBC                                          ; $4ef4: $e7
	db $e3                                           ; $4ef5: $e3
	ld [hl], c                                       ; $4ef6: $71
	jr nc, jr_024_4f11                               ; $4ef7: $30 $18

	add h                                            ; $4ef9: $84
	add $46                                          ; $4efa: $c6 $46
	rst SubAFromBC                                          ; $4efc: $e7
	db $f4                                           ; $4efd: $f4
	ei                                               ; $4efe: $fb
	rst $38                                          ; $4eff: $ff
	ld [hl], a                                       ; $4f00: $77
	db $dd                                           ; $4f01: $dd
	rst $38                                          ; $4f02: $ff
	sub b                                            ; $4f03: $90
	ccf                                              ; $4f04: $3f
	adc a                                            ; $4f05: $8f
	add [hl]                                         ; $4f06: $86
	ld a, [$3151]                                    ; $4f07: $fa $51 $31
	ld sp, $8909                                     ; $4f0a: $31 $09 $89
	ret                                              ; $4f0d: $c9


	ld [$bffa], a                                    ; $4f0e: $ea $fa $bf

jr_024_4f11:
	rst SubAFromDE                                          ; $4f11: $df
	rst SubAFromDE                                          ; $4f12: $df
	ld [hl], a                                       ; $4f13: $77
	xor $94                                          ; $4f14: $ee $94
	rra                                              ; $4f16: $1f
	ld a, a                                          ; $4f17: $7f
	rst $38                                          ; $4f18: $ff
	ld a, [hl]                                       ; $4f19: $7e
	ld c, $00                                        ; $4f1a: $0e $00
	nop                                              ; $4f1c: $00

jr_024_4f1d:
	ld bc, $8100                                     ; $4f1d: $01 $00 $81
	inc bc                                           ; $4f20: $03
	ei                                               ; $4f21: $fb
	add a                                            ; $4f22: $87
	rst $38                                          ; $4f23: $ff
	rst JumpTable                                          ; $4f24: $c7
	di                                               ; $4f25: $f3
	ei                                               ; $4f26: $fb
	cp l                                             ; $4f27: $bd
	or l                                             ; $4f28: $b5
	adc b                                            ; $4f29: $88
	ld a, b                                          ; $4f2a: $78
	db $fd                                           ; $4f2b: $fd
	and $f3                                          ; $4f2c: $e6 $f3
	ei                                               ; $4f2e: $fb
	db $fd                                           ; $4f2f: $fd
	cp h                                             ; $4f30: $bc
	jr c, jr_024_4f33                                ; $4f31: $38 $00

jr_024_4f33:
	ld a, [$fffd]                                    ; $4f33: $fa $fd $ff
	rst $38                                          ; $4f36: $ff
	ld c, l                                          ; $4f37: $4d
	inc de                                           ; $4f38: $13
	dec a                                            ; $4f39: $3d
	ld [hl], c                                       ; $4f3a: $71
	sbc $0f                                          ; $4f3b: $de $0f
	sbc d                                            ; $4f3d: $9a
	ret z                                            ; $4f3e: $c8

	sbc [hl]                                         ; $4f3f: $9e
	inc e                                            ; $4f40: $1c
	db $10                                           ; $4f41: $10
	inc h                                            ; $4f42: $24
	inc b                                            ; $4f43: $04
	nop                                              ; $4f44: $00
	sbc $44                                          ; $4f45: $de $44
	ld e, h                                          ; $4f47: $5c
	add b                                            ; $4f48: $80
	adc c                                            ; $4f49: $89
	ld sp, $3939                                     ; $4f4a: $31 $39 $39
	cp l                                             ; $4f4d: $bd
	cp a                                             ; $4f4e: $bf
	rst SubAFromDE                                          ; $4f4f: $df
	rst AddAOntoHL                                          ; $4f50: $ef
	rst SubAFromBC                                          ; $4f51: $e7
	rst $38                                          ; $4f52: $ff
	rst AddAOntoHL                                          ; $4f53: $ef
	rst AddAOntoHL                                          ; $4f54: $ef
	rst SubAFromBC                                          ; $4f55: $e7
	db $e3                                           ; $4f56: $e3
	ld [hl], c                                       ; $4f57: $71
	jr nc, jr_024_4f72                               ; $4f58: $30 $18

	add h                                            ; $4f5a: $84
	add $46                                          ; $4f5b: $c6 $46
	rst SubAFromBC                                          ; $4f5d: $e7
	db $f4                                           ; $4f5e: $f4
	ei                                               ; $4f5f: $fb
	db $db                                           ; $4f60: $db
	rst $38                                          ; $4f61: $ff
	sub b                                            ; $4f62: $90
	ccf                                              ; $4f63: $3f
	adc a                                            ; $4f64: $8f
	add [hl]                                         ; $4f65: $86
	ld [bc], a                                       ; $4f66: $02
	ld d, c                                          ; $4f67: $51
	ld sp, $0931                                     ; $4f68: $31 $31 $09
	adc c                                            ; $4f6b: $89
	ret                                              ; $4f6c: $c9


	ld [$bffa], a                                    ; $4f6d: $ea $fa $bf
	rst SubAFromDE                                          ; $4f70: $df
	rst SubAFromDE                                          ; $4f71: $df

jr_024_4f72:
	ld [hl], a                                       ; $4f72: $77
	xor $93                                          ; $4f73: $ee $93
	rra                                              ; $4f75: $1f
	ld a, a                                          ; $4f76: $7f
	rst $38                                          ; $4f77: $ff
	ld a, a                                          ; $4f78: $7f
	ld c, $00                                        ; $4f79: $0e $00
	nop                                              ; $4f7b: $00
	ld bc, $8000                                     ; $4f7c: $01 $00 $80
	ld bc, $fc03                                     ; $4f7f: $01 $03 $fc
	add a                                            ; $4f82: $87
	ld [hl], a                                       ; $4f83: $77
	rst $38                                          ; $4f84: $ff
	rst JumpTable                                          ; $4f85: $c7
	di                                               ; $4f86: $f3
	cp l                                             ; $4f87: $bd
	or l                                             ; $4f88: $b5
	adc b                                            ; $4f89: $88
	ld a, b                                          ; $4f8a: $78
	ld sp, hl                                        ; $4f8b: $f9
	cp $e7                                           ; $4f8c: $fe $e7
	di                                               ; $4f8e: $f3
	db $fd                                           ; $4f8f: $fd
	cp h                                             ; $4f90: $bc
	jr c, jr_024_4f93                                ; $4f91: $38 $00

jr_024_4f93:
	ld a, [$fffd]                                    ; $4f93: $fa $fd $ff
	rst $38                                          ; $4f96: $ff
	ld c, l                                          ; $4f97: $4d
	inc de                                           ; $4f98: $13
	dec a                                            ; $4f99: $3d
	ld [hl], c                                       ; $4f9a: $71
	sbc $0f                                          ; $4f9b: $de $0f
	sbc d                                            ; $4f9d: $9a
	ret z                                            ; $4f9e: $c8

	sbc [hl]                                         ; $4f9f: $9e
	inc e                                            ; $4fa0: $1c
	db $10                                           ; $4fa1: $10
	inc h                                            ; $4fa2: $24
	inc b                                            ; $4fa3: $04
	nop                                              ; $4fa4: $00
	sbc $44                                          ; $4fa5: $de $44
	ld e, h                                          ; $4fa7: $5c
	add b                                            ; $4fa8: $80
	adc c                                            ; $4fa9: $89
	ld sp, $3939                                     ; $4faa: $31 $39 $39
	cp l                                             ; $4fad: $bd
	cp a                                             ; $4fae: $bf
	rst SubAFromDE                                          ; $4faf: $df
	rst AddAOntoHL                                          ; $4fb0: $ef
	rst SubAFromBC                                          ; $4fb1: $e7
	rst $38                                          ; $4fb2: $ff
	rst AddAOntoHL                                          ; $4fb3: $ef
	rst AddAOntoHL                                          ; $4fb4: $ef
	rst SubAFromBC                                          ; $4fb5: $e7
	db $e3                                           ; $4fb6: $e3
	ld [hl], c                                       ; $4fb7: $71
	jr nc, jr_024_4fd2                               ; $4fb8: $30 $18

	add h                                            ; $4fba: $84
	add $46                                          ; $4fbb: $c6 $46
	rst SubAFromBC                                          ; $4fbd: $e7
	db $f4                                           ; $4fbe: $f4
	ei                                               ; $4fbf: $fb
	db $db                                           ; $4fc0: $db
	rst $38                                          ; $4fc1: $ff
	sub b                                            ; $4fc2: $90
	ccf                                              ; $4fc3: $3f
	adc a                                            ; $4fc4: $8f
	add [hl]                                         ; $4fc5: $86
	ld [bc], a                                       ; $4fc6: $02
	ld d, c                                          ; $4fc7: $51
	ld sp, $0931                                     ; $4fc8: $31 $31 $09
	adc c                                            ; $4fcb: $89
	ret                                              ; $4fcc: $c9


	ld [$bffa], a                                    ; $4fcd: $ea $fa $bf
	rst SubAFromDE                                          ; $4fd0: $df
	rst SubAFromDE                                          ; $4fd1: $df

jr_024_4fd2:
	ld [hl], a                                       ; $4fd2: $77
	xor $95                                          ; $4fd3: $ee $95
	rra                                              ; $4fd5: $1f
	ld a, a                                          ; $4fd6: $7f
	rst $38                                          ; $4fd7: $ff
	ld a, a                                          ; $4fd8: $7f
	rrca                                             ; $4fd9: $0f
	inc bc                                           ; $4fda: $03
	ld bc, $0001                                     ; $4fdb: $01 $01 $00
	add b                                            ; $4fde: $80
	cp $9e                                           ; $4fdf: $fe $9e
	inc bc                                           ; $4fe1: $03
	cp $96                                           ; $4fe2: $fe $96
	rst $38                                          ; $4fe4: $ff
	pop af                                           ; $4fe5: $f1
	ret nz                                           ; $4fe6: $c0

	nop                                              ; $4fe7: $00
	cp $ff                                           ; $4fe8: $fe $ff
	add $78                                          ; $4fea: $c6 $78
	ld bc, $93fe                                     ; $4fec: $01 $fe $93
	db $fc                                           ; $4fef: $fc
	rst $38                                          ; $4ff0: $ff
	ld a, h                                          ; $4ff1: $7c
	nop                                              ; $4ff2: $00
	ld a, [$7ffd]                                    ; $4ff3: $fa $fd $7f
	ccf                                              ; $4ff6: $3f
	dec c                                            ; $4ff7: $0d
	sub e                                            ; $4ff8: $93
	dec a                                            ; $4ff9: $3d
	ld [hl], c                                       ; $4ffa: $71
	sbc $0f                                          ; $4ffb: $de $0f
	sbc d                                            ; $4ffd: $9a
	ld [$dc1e], sp                                   ; $4ffe: $08 $1e $dc
	db $10                                           ; $5001: $10
	inc h                                            ; $5002: $24
	inc b                                            ; $5003: $04
	nop                                              ; $5004: $00
	sbc $44                                          ; $5005: $de $44
	ld e, l                                          ; $5007: $5d
	add b                                            ; $5008: $80
	adc c                                            ; $5009: $89
	ld sp, $3939                                     ; $500a: $31 $39 $39
	cp l                                             ; $500d: $bd
	cp a                                             ; $500e: $bf
	rst SubAFromDE                                          ; $500f: $df
	rst AddAOntoHL                                          ; $5010: $ef
	rst SubAFromBC                                          ; $5011: $e7
	rst $38                                          ; $5012: $ff
	rst AddAOntoHL                                          ; $5013: $ef
	rst AddAOntoHL                                          ; $5014: $ef
	rst SubAFromBC                                          ; $5015: $e7
	db $e3                                           ; $5016: $e3
	ld [hl], c                                       ; $5017: $71
	jr nc, jr_024_5032                               ; $5018: $30 $18

	add h                                            ; $501a: $84
	add $46                                          ; $501b: $c6 $46
	rst SubAFromBC                                          ; $501d: $e7
	db $f4                                           ; $501e: $f4
	ei                                               ; $501f: $fb
	db $db                                           ; $5020: $db
	rst $38                                          ; $5021: $ff
	sub b                                            ; $5022: $90
	ccf                                              ; $5023: $3f
	adc a                                            ; $5024: $8f
	add [hl]                                         ; $5025: $86
	ld [bc], a                                       ; $5026: $02
	ld d, c                                          ; $5027: $51
	ld sp, $0931                                     ; $5028: $31 $31 $09
	adc c                                            ; $502b: $89
	ret                                              ; $502c: $c9


	ld [$bffa], a                                    ; $502d: $ea $fa $bf
	rst SubAFromDE                                          ; $5030: $df
	rst SubAFromDE                                          ; $5031: $df

jr_024_5032:
	ld [hl], a                                       ; $5032: $77
	xor $95                                          ; $5033: $ee $95
	rra                                              ; $5035: $1f
	ld a, a                                          ; $5036: $7f
	rst $38                                          ; $5037: $ff
	ld a, a                                          ; $5038: $7f
	rrca                                             ; $5039: $0f
	inc bc                                           ; $503a: $03
	ld bc, $0001                                     ; $503b: $01 $01 $00
	add b                                            ; $503e: $80
	cp $7f                                           ; $503f: $fe $7f
	ld hl, sp-$01                                    ; $5041: $f8 $ff
	sub a                                            ; $5043: $97
	rst $38                                          ; $5044: $ff
	pop af                                           ; $5045: $f1
	ret nz                                           ; $5046: $c0

	nop                                              ; $5047: $00
	add b                                            ; $5048: $80
	rst $38                                          ; $5049: $ff
	cp $78                                           ; $504a: $fe $78
	ld a, e                                          ; $504c: $7b
	push af                                          ; $504d: $f5
	sub d                                            ; $504e: $92
	nop                                              ; $504f: $00
	ret nz                                           ; $5050: $c0

	rst $38                                          ; $5051: $ff
	ld a, h                                          ; $5052: $7c
	nop                                              ; $5053: $00
	ld a, [$7ffd]                                    ; $5054: $fa $fd $7f
	ccf                                              ; $5057: $3f
	dec c                                            ; $5058: $0d
	sub e                                            ; $5059: $93
	dec a                                            ; $505a: $3d
	ld [hl], c                                       ; $505b: $71
	sbc $0f                                          ; $505c: $de $0f
	sbc d                                            ; $505e: $9a
	ld [$dc1e], sp                                   ; $505f: $08 $1e $dc
	db $10                                           ; $5062: $10
	inc h                                            ; $5063: $24
	inc b                                            ; $5064: $04
	nop                                              ; $5065: $00
	sbc $44                                          ; $5066: $de $44
	ld e, [hl]                                       ; $5068: $5e
	add b                                            ; $5069: $80
	adc b                                            ; $506a: $88
	ld sp, $3939                                     ; $506b: $31 $39 $39
	cp l                                             ; $506e: $bd
	cp a                                             ; $506f: $bf
	rst SubAFromDE                                          ; $5070: $df
	rst AddAOntoHL                                          ; $5071: $ef
	rst SubAFromBC                                          ; $5072: $e7
	rst $38                                          ; $5073: $ff
	rst AddAOntoHL                                          ; $5074: $ef
	rst AddAOntoHL                                          ; $5075: $ef
	rst SubAFromBC                                          ; $5076: $e7
	db $e3                                           ; $5077: $e3
	ld [hl], c                                       ; $5078: $71
	jr nc, jr_024_5093                               ; $5079: $30 $18

	add h                                            ; $507b: $84
	add $46                                          ; $507c: $c6 $46
	push hl                                          ; $507e: $e5
	rst FarCall                                          ; $507f: $f7
	ei                                               ; $5080: $fb
	adc a                                            ; $5081: $8f
	call c, $81ff                                    ; $5082: $dc $ff $81
	ccf                                              ; $5085: $3f
	adc [hl]                                         ; $5086: $8e
	or $fe                                           ; $5087: $f6 $fe
	ld d, c                                          ; $5089: $51
	ld sp, $0931                                     ; $508a: $31 $31 $09
	adc c                                            ; $508d: $89
	ret                                              ; $508e: $c9


	ld [$bffa], a                                    ; $508f: $ea $fa $bf
	rst SubAFromDE                                          ; $5092: $df

jr_024_5093:
	rst SubAFromDE                                          ; $5093: $df
	rst $38                                          ; $5094: $ff
	rst $38                                          ; $5095: $ff
	ld a, a                                          ; $5096: $7f
	ccf                                              ; $5097: $3f
	rra                                              ; $5098: $1f
	ld a, a                                          ; $5099: $7f
	rst $38                                          ; $509a: $ff
	ld a, [hl]                                       ; $509b: $7e
	ld c, $00                                        ; $509c: $0e $00
	nop                                              ; $509e: $00
	ld bc, $8100                                     ; $509f: $01 $00 $81
	inc bc                                           ; $50a2: $03
	ei                                               ; $50a3: $fb
	add b                                            ; $50a4: $80
	rst AddAOntoHL                                          ; $50a5: $ef
	jp $fdf3                                         ; $50a6: $c3 $f3 $fd


	cp l                                             ; $50a9: $bd
	or l                                             ; $50aa: $b5
	adc b                                            ; $50ab: $88
	ld a, e                                          ; $50ac: $7b
	rst AddAOntoHL                                          ; $50ad: $ef
	db $e3                                           ; $50ae: $e3
	di                                               ; $50af: $f3
	db $fd                                           ; $50b0: $fd
	db $fd                                           ; $50b1: $fd
	cp h                                             ; $50b2: $bc
	jr c, jr_024_50b5                                ; $50b3: $38 $00

jr_024_50b5:
	ld a, [$fffd]                                    ; $50b5: $fa $fd $ff
	rst $38                                          ; $50b8: $ff
	call $bd13                                       ; $50b9: $cd $13 $bd
	ld [hl], c                                       ; $50bc: $71
	rrca                                             ; $50bd: $0f
	rrca                                             ; $50be: $0f
	rst GetHLinHL                                          ; $50bf: $cf
	adc b                                            ; $50c0: $88
	ld e, $1c                                        ; $50c1: $1e $1c
	db $10                                           ; $50c3: $10
	sbc [hl]                                         ; $50c4: $9e
	inc h                                            ; $50c5: $24
	inc b                                            ; $50c6: $04
	nop                                              ; $50c7: $00
	sbc $44                                          ; $50c8: $de $44
	ld e, h                                          ; $50ca: $5c
	add b                                            ; $50cb: $80
	adc c                                            ; $50cc: $89
	ld sp, $3939                                     ; $50cd: $31 $39 $39
	cp l                                             ; $50d0: $bd
	cp a                                             ; $50d1: $bf
	rst SubAFromDE                                          ; $50d2: $df
	rst AddAOntoHL                                          ; $50d3: $ef
	rst SubAFromBC                                          ; $50d4: $e7
	rst $38                                          ; $50d5: $ff
	rst AddAOntoHL                                          ; $50d6: $ef
	rst AddAOntoHL                                          ; $50d7: $ef
	rst SubAFromBC                                          ; $50d8: $e7
	db $e3                                           ; $50d9: $e3
	ld [hl], c                                       ; $50da: $71
	jr nc, jr_024_50f5                               ; $50db: $30 $18

	add h                                            ; $50dd: $84
	add $46                                          ; $50de: $c6 $46
	rst SubAFromBC                                          ; $50e0: $e7
	db $f4                                           ; $50e1: $f4
	ei                                               ; $50e2: $fb
	db $db                                           ; $50e3: $db
	rst $38                                          ; $50e4: $ff
	sub b                                            ; $50e5: $90
	ccf                                              ; $50e6: $3f
	adc a                                            ; $50e7: $8f
	add [hl]                                         ; $50e8: $86
	ld [bc], a                                       ; $50e9: $02
	ld d, c                                          ; $50ea: $51
	ld sp, $0931                                     ; $50eb: $31 $31 $09
	adc c                                            ; $50ee: $89
	ret                                              ; $50ef: $c9


	ld [$bffa], a                                    ; $50f0: $ea $fa $bf
	rst SubAFromDE                                          ; $50f3: $df
	rst SubAFromDE                                          ; $50f4: $df

jr_024_50f5:
	ld [hl], a                                       ; $50f5: $77
	xor $93                                          ; $50f6: $ee $93
	rra                                              ; $50f8: $1f
	ld a, a                                          ; $50f9: $7f
	rst $38                                          ; $50fa: $ff
	ld a, a                                          ; $50fb: $7f
	ld c, $00                                        ; $50fc: $0e $00
	nop                                              ; $50fe: $00
	ld bc, $8000                                     ; $50ff: $01 $00 $80
	ld bc, $fc03                                     ; $5102: $01 $03 $fc
	add a                                            ; $5105: $87
	ld [hl], a                                       ; $5106: $77
	rst $38                                          ; $5107: $ff
	rst JumpTable                                          ; $5108: $c7
	di                                               ; $5109: $f3
	cp l                                             ; $510a: $bd
	or l                                             ; $510b: $b5
	adc b                                            ; $510c: $88
	ld a, e                                          ; $510d: $7b
	ld sp, hl                                        ; $510e: $f9
	cp $e7                                           ; $510f: $fe $e7
	di                                               ; $5111: $f3
	db $fc                                           ; $5112: $fc
	cp h                                             ; $5113: $bc
	jr c, jr_024_5116                                ; $5114: $38 $00

jr_024_5116:
	ld a, [$fffd]                                    ; $5116: $fa $fd $ff
	rst $38                                          ; $5119: $ff
	ld c, l                                          ; $511a: $4d
	inc de                                           ; $511b: $13
	cp l                                             ; $511c: $bd
	ld [hl], c                                       ; $511d: $71
	sbc $0f                                          ; $511e: $de $0f
	sbc d                                            ; $5120: $9a
	ret z                                            ; $5121: $c8

	sbc [hl]                                         ; $5122: $9e
	inc e                                            ; $5123: $1c
	db $10                                           ; $5124: $10
	inc h                                            ; $5125: $24
	inc b                                            ; $5126: $04
	nop                                              ; $5127: $00
	sbc $44                                          ; $5128: $de $44
	ld e, h                                          ; $512a: $5c
	add b                                            ; $512b: $80
	adc c                                            ; $512c: $89
	ld sp, $3939                                     ; $512d: $31 $39 $39
	cp l                                             ; $5130: $bd
	cp a                                             ; $5131: $bf
	rst SubAFromDE                                          ; $5132: $df
	rst AddAOntoHL                                          ; $5133: $ef
	rst SubAFromBC                                          ; $5134: $e7
	rst $38                                          ; $5135: $ff
	rst AddAOntoHL                                          ; $5136: $ef
	rst AddAOntoHL                                          ; $5137: $ef
	rst SubAFromBC                                          ; $5138: $e7
	db $e3                                           ; $5139: $e3
	ld [hl], c                                       ; $513a: $71
	jr nc, jr_024_5155                               ; $513b: $30 $18

	add h                                            ; $513d: $84
	add $46                                          ; $513e: $c6 $46
	rst SubAFromBC                                          ; $5140: $e7
	db $f4                                           ; $5141: $f4
	ei                                               ; $5142: $fb
	db $db                                           ; $5143: $db
	rst $38                                          ; $5144: $ff
	sub b                                            ; $5145: $90
	ccf                                              ; $5146: $3f
	adc a                                            ; $5147: $8f
	add [hl]                                         ; $5148: $86
	ld [bc], a                                       ; $5149: $02
	ld d, c                                          ; $514a: $51
	ld sp, $0931                                     ; $514b: $31 $31 $09
	adc c                                            ; $514e: $89
	ret                                              ; $514f: $c9


	ld [$bffa], a                                    ; $5150: $ea $fa $bf
	rst SubAFromDE                                          ; $5153: $df
	rst SubAFromDE                                          ; $5154: $df

jr_024_5155:
	ld [hl], a                                       ; $5155: $77
	xor $95                                          ; $5156: $ee $95
	rra                                              ; $5158: $1f
	ld a, a                                          ; $5159: $7f
	rst $38                                          ; $515a: $ff
	ld a, a                                          ; $515b: $7f
	rrca                                             ; $515c: $0f
	inc bc                                           ; $515d: $03
	ld bc, $0001                                     ; $515e: $01 $01 $00
	add b                                            ; $5161: $80
	cp $9e                                           ; $5162: $fe $9e
	inc bc                                           ; $5164: $03
	cp $96                                           ; $5165: $fe $96
	rst $38                                          ; $5167: $ff
	pop af                                           ; $5168: $f1
	ret nz                                           ; $5169: $c0

	nop                                              ; $516a: $00
	cp $ff                                           ; $516b: $fe $ff
	add $79                                          ; $516d: $c6 $79
	ld bc, $93fe                                     ; $516f: $01 $fe $93
	db $fc                                           ; $5172: $fc
	rst $38                                          ; $5173: $ff
	ld a, h                                          ; $5174: $7c
	nop                                              ; $5175: $00
	ld a, [$7ffd]                                    ; $5176: $fa $fd $7f
	ccf                                              ; $5179: $3f
	dec c                                            ; $517a: $0d
	sub e                                            ; $517b: $93
	cp l                                             ; $517c: $bd
	ld [hl], c                                       ; $517d: $71
	sbc $0f                                          ; $517e: $de $0f
	sbc d                                            ; $5180: $9a
	ld [$dc1e], sp                                   ; $5181: $08 $1e $dc
	db $10                                           ; $5184: $10
	inc h                                            ; $5185: $24
	inc b                                            ; $5186: $04
	nop                                              ; $5187: $00
	sbc $44                                          ; $5188: $de $44
	ld e, l                                          ; $518a: $5d
	add b                                            ; $518b: $80
	adc c                                            ; $518c: $89
	ld sp, $3939                                     ; $518d: $31 $39 $39
	cp l                                             ; $5190: $bd
	cp a                                             ; $5191: $bf
	rst SubAFromDE                                          ; $5192: $df
	rst AddAOntoHL                                          ; $5193: $ef
	rst SubAFromBC                                          ; $5194: $e7
	rst $38                                          ; $5195: $ff
	rst AddAOntoHL                                          ; $5196: $ef
	rst AddAOntoHL                                          ; $5197: $ef
	rst SubAFromBC                                          ; $5198: $e7
	db $e3                                           ; $5199: $e3
	ld [hl], c                                       ; $519a: $71
	jr nc, jr_024_51b5                               ; $519b: $30 $18

	add h                                            ; $519d: $84
	add $46                                          ; $519e: $c6 $46
	rst SubAFromBC                                          ; $51a0: $e7
	db $f4                                           ; $51a1: $f4
	ei                                               ; $51a2: $fb
	db $db                                           ; $51a3: $db
	rst $38                                          ; $51a4: $ff
	sub b                                            ; $51a5: $90
	ccf                                              ; $51a6: $3f
	adc a                                            ; $51a7: $8f
	add [hl]                                         ; $51a8: $86
	ld [bc], a                                       ; $51a9: $02
	ld d, c                                          ; $51aa: $51
	ld sp, $0931                                     ; $51ab: $31 $31 $09
	adc c                                            ; $51ae: $89
	ret                                              ; $51af: $c9


	ld [$bffa], a                                    ; $51b0: $ea $fa $bf
	rst SubAFromDE                                          ; $51b3: $df
	rst SubAFromDE                                          ; $51b4: $df

jr_024_51b5:
	ld [hl], a                                       ; $51b5: $77
	xor $95                                          ; $51b6: $ee $95
	rra                                              ; $51b8: $1f
	ld a, a                                          ; $51b9: $7f
	rst $38                                          ; $51ba: $ff
	ld a, a                                          ; $51bb: $7f
	rrca                                             ; $51bc: $0f
	inc bc                                           ; $51bd: $03
	ld bc, $0001                                     ; $51be: $01 $01 $00
	add b                                            ; $51c1: $80
	cp $7f                                           ; $51c2: $fe $7f
	ld hl, sp-$01                                    ; $51c4: $f8 $ff
	sub a                                            ; $51c6: $97
	rst $38                                          ; $51c7: $ff
	pop af                                           ; $51c8: $f1
	ret nz                                           ; $51c9: $c0

	nop                                              ; $51ca: $00
	add b                                            ; $51cb: $80
	rst $38                                          ; $51cc: $ff
	cp $79                                           ; $51cd: $fe $79
	ld a, e                                          ; $51cf: $7b
	push af                                          ; $51d0: $f5
	sub d                                            ; $51d1: $92
	nop                                              ; $51d2: $00
	ret nz                                           ; $51d3: $c0

	rst $38                                          ; $51d4: $ff
	ld a, h                                          ; $51d5: $7c
	nop                                              ; $51d6: $00
	ld a, [$7ffd]                                    ; $51d7: $fa $fd $7f
	ccf                                              ; $51da: $3f
	dec c                                            ; $51db: $0d
	sub e                                            ; $51dc: $93
	cp l                                             ; $51dd: $bd
	ld [hl], c                                       ; $51de: $71
	sbc $0f                                          ; $51df: $de $0f
	sbc d                                            ; $51e1: $9a

jr_024_51e2:
	ld [$dc1e], sp                                   ; $51e2: $08 $1e $dc

jr_024_51e5:
	db $10                                           ; $51e5: $10
	inc h                                            ; $51e6: $24
	inc b                                            ; $51e7: $04
	nop                                              ; $51e8: $00
	sbc $44                                          ; $51e9: $de $44
	ld [hl], $80                                     ; $51eb: $36 $80
	sbc h                                            ; $51ed: $9c
	ld hl, $0103                                     ; $51ee: $21 $03 $01
	cp d                                             ; $51f1: $ba
	nop                                              ; $51f2: $00
	ld [bc], a                                       ; $51f3: $02
	jr nz, jr_024_51f6                               ; $51f4: $20 $00

jr_024_51f6:
	nop                                              ; $51f6: $00
	ld bc, $93c0                                     ; $51f7: $01 $c0 $93
	ldh [$c0], a                                     ; $51fa: $e0 $c0
	ld b, b                                          ; $51fc: $40
	ld b, b                                          ; $51fd: $40
	nop                                              ; $51fe: $00
	and b                                            ; $51ff: $a0
	add b                                            ; $5200: $80
	nop                                              ; $5201: $00
	nop                                              ; $5202: $00
	jr nz, jr_024_51e5                               ; $5203: $20 $e0

	nop                                              ; $5205: $00
	cp [hl]                                          ; $5206: $be
	ret nz                                           ; $5207: $c0

	ld bc, $9a80                                     ; $5208: $01 $80 $9a
	add b                                            ; $520b: $80
	ret nz                                           ; $520c: $c0

	ldh [$f0], a                                     ; $520d: $e0 $f0
	ld hl, sp-$05                                    ; $520f: $f8 $fb
	sub l                                            ; $5211: $95
	ret nz                                           ; $5212: $c0

	ldh a, [$c0]                                     ; $5213: $f0 $c0
	add b                                            ; $5215: $80
	ld bc, $0703                                     ; $5216: $01 $03 $07
	rrca                                             ; $5219: $0f
	rra                                              ; $521a: $1f
	ccf                                              ; $521b: $3f
	cp a                                             ; $521c: $bf
	nop                                              ; $521d: $00
	ld bc, $f777                                     ; $521e: $01 $77 $f7
	inc b                                            ; $5221: $04
	nop                                              ; $5222: $00
	rst SubAFromDE                                          ; $5223: $df
	ld b, h                                          ; $5224: $44
	scf                                              ; $5225: $37
	add b                                            ; $5226: $80
	sbc h                                            ; $5227: $9c
	ld hl, $0103                                     ; $5228: $21 $03 $01
	cp $9c                                           ; $522b: $fe $9c

jr_024_522d:
	ld [bc], a                                       ; $522d: $02
	inc bc                                           ; $522e: $03
	jr nz, jr_024_522d                               ; $522f: $20 $fc

	rst SubAFromDE                                          ; $5231: $df
	ld bc, $c087                                     ; $5232: $01 $87 $c0
	ldh [$c0], a                                     ; $5235: $e0 $c0
	ld b, b                                          ; $5237: $40
	ld b, b                                          ; $5238: $40
	nop                                              ; $5239: $00
	ldh [$c0], a                                     ; $523a: $e0 $c0
	nop                                              ; $523c: $00
	nop                                              ; $523d: $00
	jr nz, @-$1e                                     ; $523e: $20 $e0

	nop                                              ; $5240: $00
	nop                                              ; $5241: $00
	ret nz                                           ; $5242: $c0

	ret nz                                           ; $5243: $c0

	nop                                              ; $5244: $00
	ld bc, $8080                                     ; $5245: $01 $80 $80
	ret nz                                           ; $5248: $c0

	ldh [$f0], a                                     ; $5249: $e0 $f0
	ld hl, sp-$05                                    ; $524b: $f8 $fb
	sub l                                            ; $524d: $95
	ret nz                                           ; $524e: $c0

	ldh a, [$80]                                     ; $524f: $f0 $80
	ret nz                                           ; $5251: $c0

	add c                                            ; $5252: $81
	inc bc                                           ; $5253: $03
	rlca                                             ; $5254: $07
	rrca                                             ; $5255: $0f
	rra                                              ; $5256: $1f
	ccf                                              ; $5257: $3f
	ld [hl], a                                       ; $5258: $77
	db $d3                                           ; $5259: $d3
	ld [hl], a                                       ; $525a: $77

jr_024_525b:
	rst FarCall                                          ; $525b: $f7
	inc b                                            ; $525c: $04
	nop                                              ; $525d: $00
	rst SubAFromDE                                          ; $525e: $df
	ld b, h                                          ; $525f: $44
	jr c, jr_024_51e2                                ; $5260: $38 $80

	sbc h                                            ; $5262: $9c
	ld hl, $0103                                     ; $5263: $21 $03 $01
	cp $9c                                           ; $5266: $fe $9c

jr_024_5268:
	ld [bc], a                                       ; $5268: $02
	inc bc                                           ; $5269: $03
	jr nz, jr_024_5268                               ; $526a: $20 $fc

	add l                                            ; $526c: $85
	ld bc, $c003                                     ; $526d: $01 $03 $c0
	ldh [$c0], a                                     ; $5270: $e0 $c0
	ld b, b                                          ; $5272: $40
	ld b, b                                          ; $5273: $40
	nop                                              ; $5274: $00
	ldh [$c0], a                                     ; $5275: $e0 $c0
	nop                                              ; $5277: $00
	nop                                              ; $5278: $00
	jr nz, jr_024_525b                               ; $5279: $20 $e0

	nop                                              ; $527b: $00
	nop                                              ; $527c: $00
	ret nz                                           ; $527d: $c0

	ret nz                                           ; $527e: $c0

	inc bc                                           ; $527f: $03
	nop                                              ; $5280: $00
	add c                                            ; $5281: $81
	add b                                            ; $5282: $80
	ret nz                                           ; $5283: $c0

	ldh [$f0], a                                     ; $5284: $e0 $f0
	ld hl, sp-$05                                    ; $5286: $f8 $fb
	sub h                                            ; $5288: $94
	ret nz                                           ; $5289: $c0

	ldh a, [$c0]                                     ; $528a: $f0 $c0
	add b                                            ; $528c: $80
	pop bc                                           ; $528d: $c1
	add e                                            ; $528e: $83
	rlca                                             ; $528f: $07
	rrca                                             ; $5290: $0f
	rra                                              ; $5291: $1f
	ccf                                              ; $5292: $3f
	add b                                            ; $5293: $80
	ld [hl], a                                       ; $5294: $77
	db $d3                                           ; $5295: $d3
	ld a, e                                          ; $5296: $7b

jr_024_5297:
	rst FarCall                                          ; $5297: $f7
	inc b                                            ; $5298: $04
	nop                                              ; $5299: $00
	rst SubAFromDE                                          ; $529a: $df
	ld b, h                                          ; $529b: $44
	inc a                                            ; $529c: $3c
	nop                                              ; $529d: $00
	sbc d                                            ; $529e: $9a
	ld hl, $0320                                     ; $529f: $21 $20 $03
	nop                                              ; $52a2: $00
	ld bc, $92fa                                     ; $52a3: $01 $fa $92
	ld [bc], a                                       ; $52a6: $02
	ld bc, $0303                                     ; $52a7: $01 $03 $03
	ret nz                                           ; $52aa: $c0

	nop                                              ; $52ab: $00
	ldh [rP1], a                                     ; $52ac: $e0 $00
	ret nz                                           ; $52ae: $c0

	jr nz, jr_024_52f1                               ; $52af: $20 $40

	ldh [rLCDC], a                                   ; $52b1: $e0 $40
	cp $93                                           ; $52b3: $fe $93
	ldh [$c0], a                                     ; $52b5: $e0 $c0
	ldh [$c0], a                                     ; $52b7: $e0 $c0
	inc bc                                           ; $52b9: $03
	ld bc, $0103                                     ; $52ba: $01 $03 $01
	add b                                            ; $52bd: $80
	nop                                              ; $52be: $00
	add c                                            ; $52bf: $81
	nop                                              ; $52c0: $00
	ld [hl], a                                       ; $52c1: $77
	add sp, -$65                                     ; $52c2: $e8 $9b
	ldh a, [$c0]                                     ; $52c4: $f0 $c0
	ld hl, sp-$10                                    ; $52c6: $f8 $f0
	sbc $c0                                          ; $52c8: $de $c0
	sub d                                            ; $52ca: $92
	add b                                            ; $52cb: $80
	add c                                            ; $52cc: $81
	nop                                              ; $52cd: $00
	jp $8701                                         ; $52ce: $c3 $01 $87


	inc bc                                           ; $52d1: $03
	rrca                                             ; $52d2: $0f
	rlca                                             ; $52d3: $07
	rra                                              ; $52d4: $1f
	rrca                                             ; $52d5: $0f

jr_024_52d6:
	ccf                                              ; $52d6: $3f
	rra                                              ; $52d7: $1f
	inc b                                            ; $52d8: $04
	nop                                              ; $52d9: $00
	rst SubAFromDE                                          ; $52da: $df
	ld b, h                                          ; $52db: $44
	dec [hl]                                         ; $52dc: $35
	add b                                            ; $52dd: $80
	sbc h                                            ; $52de: $9c
	ld hl, $0103                                     ; $52df: $21 $03 $01
	cp $9c                                           ; $52e2: $fe $9c

jr_024_52e4:
	ld b, $03                                        ; $52e4: $06 $03
	jr nz, jr_024_52e4                               ; $52e6: $20 $fc

	sub [hl]                                         ; $52e8: $96
	inc bc                                           ; $52e9: $03
	nop                                              ; $52ea: $00
	ret nz                                           ; $52eb: $c0

	ldh [$c0], a                                     ; $52ec: $e0 $c0
	ld b, b                                          ; $52ee: $40
	ld b, b                                          ; $52ef: $40
	nop                                              ; $52f0: $00

jr_024_52f1:
	or b                                             ; $52f1: $b0
	cp $91                                           ; $52f2: $fe $91
	jr nz, jr_024_52d6                               ; $52f4: $20 $e0

	nop                                              ; $52f6: $00
	nop                                              ; $52f7: $00
	ld h, b                                          ; $52f8: $60
	nop                                              ; $52f9: $00
	ld bc, $8000                                     ; $52fa: $01 $00 $80
	add b                                            ; $52fd: $80
	ret nz                                           ; $52fe: $c0

	ldh [$f0], a                                     ; $52ff: $e0 $f0
	ld hl, sp-$05                                    ; $5301: $f8 $fb
	sub l                                            ; $5303: $95
	ret nz                                           ; $5304: $c0

	ldh a, [$c0]                                     ; $5305: $f0 $c0
	add b                                            ; $5307: $80
	ld bc, $0703                                     ; $5308: $01 $03 $07
	rrca                                             ; $530b: $0f
	rra                                              ; $530c: $1f
	ccf                                              ; $530d: $3f
	cp $73                                           ; $530e: $fe $73

jr_024_5310:
	rst FarCall                                          ; $5310: $f7
	inc b                                            ; $5311: $04
	nop                                              ; $5312: $00
	rst SubAFromDE                                          ; $5313: $df
	ld b, h                                          ; $5314: $44
	jr c, jr_024_5297                                ; $5315: $38 $80

	sbc h                                            ; $5317: $9c
	ld hl, $0103                                     ; $5318: $21 $03 $01
	cp $9c                                           ; $531b: $fe $9c

jr_024_531d:
	rlca                                             ; $531d: $07
	inc bc                                           ; $531e: $03
	jr nz, jr_024_531d                               ; $531f: $20 $fc

	ld a, a                                          ; $5321: $7f
	di                                               ; $5322: $f3
	add a                                            ; $5323: $87
	ret nz                                           ; $5324: $c0

	ldh [$c0], a                                     ; $5325: $e0 $c0
	ld b, b                                          ; $5327: $40
	ld b, b                                          ; $5328: $40
	nop                                              ; $5329: $00
	ld [hl], b                                       ; $532a: $70
	ret nz                                           ; $532b: $c0

	nop                                              ; $532c: $00
	nop                                              ; $532d: $00
	jr nz, jr_024_5310                               ; $532e: $20 $e0

	nop                                              ; $5330: $00
	nop                                              ; $5331: $00
	ldh [$c0], a                                     ; $5332: $e0 $c0
	ld bc, $8001                                     ; $5334: $01 $01 $80
	add b                                            ; $5337: $80
	ret nz                                           ; $5338: $c0

	ldh [$f0], a                                     ; $5339: $e0 $f0
	ld hl, sp-$05                                    ; $533b: $f8 $fb
	sub l                                            ; $533d: $95
	ret nz                                           ; $533e: $c0

	ldh a, [rP1]                                     ; $533f: $f0 $00
	ret nz                                           ; $5341: $c0

	add c                                            ; $5342: $81
	inc bc                                           ; $5343: $03
	rlca                                             ; $5344: $07
	rrca                                             ; $5345: $0f
	rra                                              ; $5346: $1f
	ccf                                              ; $5347: $3f
	cp $9e                                           ; $5348: $fe $9e
	ld bc, $f777                                     ; $534a: $01 $77 $f7
	inc b                                            ; $534d: $04
	nop                                              ; $534e: $00
	rst SubAFromDE                                          ; $534f: $df
	ld b, h                                          ; $5350: $44
	dec sp                                           ; $5351: $3b
	nop                                              ; $5352: $00
	sbc d                                            ; $5353: $9a
	ld hl, $0320                                     ; $5354: $21 $20 $03
	nop                                              ; $5357: $00
	ld bc, $defa                                     ; $5358: $01 $fa $de
	rlca                                             ; $535b: $07
	sub l                                            ; $535c: $95
	inc bc                                           ; $535d: $03
	ret nz                                           ; $535e: $c0

	nop                                              ; $535f: $00
	ldh [rP1], a                                     ; $5360: $e0 $00
	ret nz                                           ; $5362: $c0

	jr nz, @+$42                                     ; $5363: $20 $40

	ldh [rLCDC], a                                   ; $5365: $e0 $40
	cp $93                                           ; $5367: $fe $93
	ldh a, [$e0]                                     ; $5369: $f0 $e0
	ldh [$c0], a                                     ; $536b: $e0 $c0
	inc bc                                           ; $536d: $03
	ld bc, $0001                                     ; $536e: $01 $01 $00
	add c                                            ; $5371: $81
	nop                                              ; $5372: $00
	add b                                            ; $5373: $80
	nop                                              ; $5374: $00
	ld [hl], a                                       ; $5375: $77
	add sp, -$75                                     ; $5376: $e8 $8b
	ldh a, [$c0]                                     ; $5378: $f0 $c0
	ld hl, sp-$10                                    ; $537a: $f8 $f0
	ret nz                                           ; $537c: $c0

	ret nz                                           ; $537d: $c0

jr_024_537e:
	add b                                            ; $537e: $80
	nop                                              ; $537f: $00
	pop bc                                           ; $5380: $c1
	nop                                              ; $5381: $00
	add e                                            ; $5382: $83
	ld bc, $0307                                     ; $5383: $01 $07 $03
	rrca                                             ; $5386: $0f
	rlca                                             ; $5387: $07
	rra                                              ; $5388: $1f
	rrca                                             ; $5389: $0f
	ccf                                              ; $538a: $3f
	rra                                              ; $538b: $1f
	inc b                                            ; $538c: $04
	nop                                              ; $538d: $00
	rst SubAFromDE                                          ; $538e: $df
	ld b, h                                          ; $538f: $44
	dec sp                                           ; $5390: $3b
	nop                                              ; $5391: $00
	sbc d                                            ; $5392: $9a
	ld hl, $0320                                     ; $5393: $21 $20 $03
	nop                                              ; $5396: $00
	ld bc, $defa                                     ; $5397: $01 $fa $de
	rlca                                             ; $539a: $07
	sub l                                            ; $539b: $95
	inc bc                                           ; $539c: $03
	ret nz                                           ; $539d: $c0

	nop                                              ; $539e: $00
	ldh [rP1], a                                     ; $539f: $e0 $00
	ret nz                                           ; $53a1: $c0

	jr nz, jr_024_53e4                               ; $53a2: $20 $40

	ldh [rLCDC], a                                   ; $53a4: $e0 $40
	cp $9b                                           ; $53a6: $fe $9b
	ldh a, [$e0]                                     ; $53a8: $f0 $e0
	ldh [$c0], a                                     ; $53aa: $e0 $c0
	sbc $03                                          ; $53ac: $de $03
	sbc d                                            ; $53ae: $9a
	ld bc, $0081                                     ; $53af: $01 $81 $00
	add c                                            ; $53b2: $81
	nop                                              ; $53b3: $00
	ld [hl], a                                       ; $53b4: $77
	add sp, -$65                                     ; $53b5: $e8 $9b
	ldh a, [$c0]                                     ; $53b7: $f0 $c0
	ld hl, sp-$10                                    ; $53b9: $f8 $f0
	sbc $c0                                          ; $53bb: $de $c0
	sub d                                            ; $53bd: $92
	add b                                            ; $53be: $80
	ld bc, $c300                                     ; $53bf: $01 $00 $c3
	ld bc, $0387                                     ; $53c2: $01 $87 $03
	rrca                                             ; $53c5: $0f
	rlca                                             ; $53c6: $07
	rra                                              ; $53c7: $1f
	rrca                                             ; $53c8: $0f
	ccf                                              ; $53c9: $3f
	rra                                              ; $53ca: $1f
	inc b                                            ; $53cb: $04
	nop                                              ; $53cc: $00
	rst SubAFromDE                                          ; $53cd: $df
	ld b, h                                          ; $53ce: $44
	ld e, a                                          ; $53cf: $5f
	add b                                            ; $53d0: $80
	sbc d                                            ; $53d1: $9a
	ld l, a                                          ; $53d2: $6f
	daa                                              ; $53d3: $27
	scf                                              ; $53d4: $37
	xor d                                            ; $53d5: $aa
	ld l, a                                          ; $53d6: $6f
	sbc $ff                                          ; $53d7: $de $ff
	add b                                            ; $53d9: $80
	ld hl, sp-$04                                    ; $53da: $f8 $fc
	db $fc                                           ; $53dc: $fc
	rst $38                                          ; $53dd: $ff
	rst FarCall                                          ; $53de: $f7
	ldh a, [c]                                       ; $53df: $f2
	sub b                                            ; $53e0: $90

jr_024_53e1:
	jr nc, jr_024_537e                               ; $53e1: $30 $9b

	sub l                                            ; $53e3: $95

jr_024_53e4:
	ld e, l                                          ; $53e4: $5d
	rst SubAFromDE                                          ; $53e5: $df
	rst $38                                          ; $53e6: $ff
	rst $38                                          ; $53e7: $ff
	cp a                                             ; $53e8: $bf
	ld [hl], e                                       ; $53e9: $73
	cp $ff                                           ; $53ea: $fe $ff
	rst $38                                          ; $53ec: $ff
	di                                               ; $53ed: $f3
	ld sp, $7f1e                                     ; $53ee: $31 $1e $7f
	rst FarCall                                          ; $53f1: $f7
	add c                                            ; $53f2: $81
	pop bc                                           ; $53f3: $c1
	pop bc                                           ; $53f4: $c1
	pop hl                                           ; $53f5: $e1
	pop af                                           ; $53f6: $f1
	ld sp, hl                                        ; $53f7: $f9
	ld a, h                                          ; $53f8: $7c
	ld a, a                                          ; $53f9: $7f
	pop af                                           ; $53fa: $f1
	rst SubAFromDE                                          ; $53fb: $df
	ld a, a                                          ; $53fc: $7f
	sub a                                            ; $53fd: $97
	ccf                                              ; $53fe: $3f
	sbc a                                            ; $53ff: $9f
	rst GetHLinHL                                          ; $5400: $cf
	add a                                            ; $5401: $87
	jp $fffb                                         ; $5402: $c3 $fb $ff


	rst $38                                          ; $5405: $ff
	ld a, e                                          ; $5406: $7b
	db $f4                                           ; $5407: $f4
	adc b                                            ; $5408: $88
	cp a                                             ; $5409: $bf
	rst SubAFromDE                                          ; $540a: $df
	ld d, a                                          ; $540b: $57
	ld d, e                                          ; $540c: $53
	add hl, hl                                       ; $540d: $29
	xor c                                            ; $540e: $a9
	sbc b                                            ; $540f: $98
	call nz, $fce4                                   ; $5410: $c4 $e4 $fc
	pop hl                                           ; $5413: $e1
	ld e, b                                          ; $5414: $58
	ld c, a                                          ; $5415: $4f
	ld l, l                                          ; $5416: $6d
	add d                                            ; $5417: $82
	rst $38                                          ; $5418: $ff
	ld [$e1d5], a                                    ; $5419: $ea $d5 $e1
	db $fd                                           ; $541c: $fd
	ld a, a                                          ; $541d: $7f
	cpl                                              ; $541e: $2f
	ld l, $fe                                        ; $541f: $2e $fe
	sub [hl]                                         ; $5421: $96
	rra                                              ; $5422: $1f
	ld [hl], c                                       ; $5423: $71
	ld h, b                                          ; $5424: $60
	ld b, [hl]                                       ; $5425: $46
	cpl                                              ; $5426: $2f
	ld e, a                                          ; $5427: $5f
	cp a                                             ; $5428: $bf
	inc e                                            ; $5429: $1c
	ld h, c                                          ; $542a: $61
	ei                                               ; $542b: $fb
	sbc [hl]                                         ; $542c: $9e
	ld [bc], a                                       ; $542d: $02
	inc b                                            ; $542e: $04
	nop                                              ; $542f: $00
	sbc $44                                          ; $5430: $de $44
	ld h, c                                          ; $5432: $61
	nop                                              ; $5433: $00
	add b                                            ; $5434: $80
	ld l, a                                          ; $5435: $6f
	ld hl, sp+$27                                    ; $5436: $f8 $27
	db $fc                                           ; $5438: $fc
	scf                                              ; $5439: $37
	db $fc                                           ; $543a: $fc
	xor d                                            ; $543b: $aa
	rst $38                                          ; $543c: $ff
	ld l, a                                          ; $543d: $6f
	rst FarCall                                          ; $543e: $f7
	rst $38                                          ; $543f: $ff
	ldh a, [c]                                       ; $5440: $f2
	rst $38                                          ; $5441: $ff
	sub b                                            ; $5442: $90
	rst $38                                          ; $5443: $ff
	jr nc, jr_024_53e1                               ; $5444: $30 $9b

jr_024_5446:
	cp $95                                           ; $5446: $fe $95
	rst $38                                          ; $5448: $ff
	ld e, l                                          ; $5449: $5d
	rst $38                                          ; $544a: $ff
	rst SubAFromDE                                          ; $544b: $df
	di                                               ; $544c: $f3
	rst $38                                          ; $544d: $ff
	ld sp, $00ff                                     ; $544e: $31 $ff $00
	db $dd                                           ; $5451: $dd
	ld a, $bf                                        ; $5452: $3e $bf
	add b                                            ; $5454: $80
	ld a, a                                          ; $5455: $7f
	add c                                            ; $5456: $81
	rst $38                                          ; $5457: $ff
	pop bc                                           ; $5458: $c1
	ld a, a                                          ; $5459: $7f
	pop bc                                           ; $545a: $c1
	ld a, a                                          ; $545b: $7f
	pop hl                                           ; $545c: $e1
	ccf                                              ; $545d: $3f
	pop af                                           ; $545e: $f1
	sbc a                                            ; $545f: $9f
	ld sp, hl                                        ; $5460: $f9
	rst GetHLinHL                                          ; $5461: $cf
	db $fc                                           ; $5462: $fc
	rlca                                             ; $5463: $07
	ld a, [hl]                                       ; $5464: $7e
	add e                                            ; $5465: $83
	rst $38                                          ; $5466: $ff
	ld d, b                                          ; $5467: $50
	ei                                               ; $5468: $fb
	ld d, a                                          ; $5469: $57
	rst $38                                          ; $546a: $ff
	dec hl                                           ; $546b: $2b
	cp $a9                                           ; $546c: $fe $a9
	rst $38                                          ; $546e: $ff
	sbc b                                            ; $546f: $98
	ld a, a                                          ; $5470: $7f
	call nz, $e4bf                                   ; $5471: $c4 $bf $e4
	sub d                                            ; $5474: $92
	rst SubAFromDE                                          ; $5475: $df
	db $fc                                           ; $5476: $fc
	ld [hl], e                                       ; $5477: $73
	rst FarCall                                          ; $5478: $f7
	pop hl                                           ; $5479: $e1
	pop hl                                           ; $547a: $e1
	ld e, b                                          ; $547b: $58
	db $fd                                           ; $547c: $fd
	ld l, a                                          ; $547d: $6f
	cpl                                              ; $547e: $2f
	add d                                            ; $547f: $82
	ld l, $ff                                        ; $5480: $2e $ff
	cp [hl]                                          ; $5482: $be
	ld [$ffd5], a                                    ; $5483: $ea $d5 $ff
	sbc e                                            ; $5486: $9b
	pop bc                                           ; $5487: $c1
	ld de, $60e0                                     ; $5488: $11 $e0 $60
	cp h                                             ; $548b: $bc
	ld b, [hl]                                       ; $548c: $46
	cpl                                              ; $548d: $2f
	ld e, a                                          ; $548e: $5f
	cp a                                             ; $548f: $bf
	inc e                                            ; $5490: $1c
	sbc [hl]                                         ; $5491: $9e
	ld [bc], a                                       ; $5492: $02
	inc b                                            ; $5493: $04
	nop                                              ; $5494: $00
	sbc $44                                          ; $5495: $de $44
	ld e, l                                          ; $5497: $5d
	nop                                              ; $5498: $00
	add h                                            ; $5499: $84
	ld l, a                                          ; $549a: $6f
	ld hl, sp+$27                                    ; $549b: $f8 $27
	db $fc                                           ; $549d: $fc
	scf                                              ; $549e: $37
	db $fc                                           ; $549f: $fc
	xor d                                            ; $54a0: $aa
	rst $38                                          ; $54a1: $ff
	ld l, a                                          ; $54a2: $6f
	rst FarCall                                          ; $54a3: $f7
	rst $38                                          ; $54a4: $ff
	ldh a, [c]                                       ; $54a5: $f2
	rst $38                                          ; $54a6: $ff

jr_024_54a7:
	sub b                                            ; $54a7: $90
	rst $38                                          ; $54a8: $ff
	jr nc, jr_024_5446                               ; $54a9: $30 $9b

	cp $95                                           ; $54ab: $fe $95
	rst $38                                          ; $54ad: $ff
	ld e, l                                          ; $54ae: $5d
	rst $38                                          ; $54af: $ff
	rst SubAFromDE                                          ; $54b0: $df
	di                                               ; $54b1: $f3
	rst $38                                          ; $54b2: $ff
	ld sp, $beff                                     ; $54b3: $31 $ff $be
	rst $38                                          ; $54b6: $ff
	rst $38                                          ; $54b7: $ff
	add c                                            ; $54b8: $81
	add b                                            ; $54b9: $80
	rst $38                                          ; $54ba: $ff
	pop bc                                           ; $54bb: $c1
	ld a, a                                          ; $54bc: $7f
	pop bc                                           ; $54bd: $c1
	ld a, a                                          ; $54be: $7f
	pop hl                                           ; $54bf: $e1
	ccf                                              ; $54c0: $3f
	pop af                                           ; $54c1: $f1
	sbc a                                            ; $54c2: $9f
	ld sp, hl                                        ; $54c3: $f9
	rst GetHLinHL                                          ; $54c4: $cf
	db $fc                                           ; $54c5: $fc
	rlca                                             ; $54c6: $07
	cp $03                                           ; $54c7: $fe $03
	rst $38                                          ; $54c9: $ff
	ld d, b                                          ; $54ca: $50
	rst $38                                          ; $54cb: $ff
	ld d, b                                          ; $54cc: $50
	ei                                               ; $54cd: $fb
	cpl                                              ; $54ce: $2f
	cp $a9                                           ; $54cf: $fe $a9
	rst $38                                          ; $54d1: $ff
	sbc b                                            ; $54d2: $98
	ld a, a                                          ; $54d3: $7f
	call nz, $e4bf                                   ; $54d4: $c4 $bf $e4
	rst SubAFromDE                                          ; $54d7: $df
	db $fc                                           ; $54d8: $fc
	ld [hl], e                                       ; $54d9: $73
	jp c, $ffde                                      ; $54da: $da $de $ff

	sbc h                                            ; $54dd: $9c
	add d                                            ; $54de: $82
	ld l, [hl]                                       ; $54df: $6e
	rst $38                                          ; $54e0: $ff
	cp [hl]                                          ; $54e1: $be
	ld [$ffd5], a                                    ; $54e2: $ea $d5 $ff
	sub a                                            ; $54e5: $97
	ld bc, $00f1                                     ; $54e6: $01 $f1 $00
	ld h, b                                          ; $54e9: $60
	add b                                            ; $54ea: $80
	and [hl]                                         ; $54eb: $a6
	ret nz                                           ; $54ec: $c0

	cpl                                              ; $54ed: $2f
	cp [hl]                                          ; $54ee: $be
	ld e, a                                          ; $54ef: $5f
	cp a                                             ; $54f0: $bf
	inc e                                            ; $54f1: $1c
	sbc [hl]                                         ; $54f2: $9e
	ld [bc], a                                       ; $54f3: $02
	inc b                                            ; $54f4: $04
	nop                                              ; $54f5: $00
	sbc $44                                          ; $54f6: $de $44
	ld e, [hl]                                       ; $54f8: $5e
	nop                                              ; $54f9: $00
	add h                                            ; $54fa: $84
	ld l, a                                          ; $54fb: $6f
	ld hl, sp+$27                                    ; $54fc: $f8 $27
	db $fc                                           ; $54fe: $fc
	scf                                              ; $54ff: $37
	db $fc                                           ; $5500: $fc
	xor d                                            ; $5501: $aa
	rst $38                                          ; $5502: $ff
	ld l, a                                          ; $5503: $6f
	rst FarCall                                          ; $5504: $f7
	rst $38                                          ; $5505: $ff
	ldh a, [c]                                       ; $5506: $f2
	rst $38                                          ; $5507: $ff
	sub b                                            ; $5508: $90
	rst $38                                          ; $5509: $ff
	jr nc, jr_024_54a7                               ; $550a: $30 $9b

	cp $95                                           ; $550c: $fe $95
	rst $38                                          ; $550e: $ff
	ld e, l                                          ; $550f: $5d
	rst $38                                          ; $5510: $ff
	rst SubAFromDE                                          ; $5511: $df
	di                                               ; $5512: $f3
	rst $38                                          ; $5513: $ff
	ld sp, $beff                                     ; $5514: $31 $ff $be
	rst $38                                          ; $5517: $ff
	rst $38                                          ; $5518: $ff
	add c                                            ; $5519: $81
	adc [hl]                                         ; $551a: $8e
	rst $38                                          ; $551b: $ff
	pop bc                                           ; $551c: $c1
	ld a, a                                          ; $551d: $7f
	pop bc                                           ; $551e: $c1
	ld a, a                                          ; $551f: $7f
	pop hl                                           ; $5520: $e1
	ccf                                              ; $5521: $3f
	pop af                                           ; $5522: $f1
	sbc a                                            ; $5523: $9f
	ld sp, hl                                        ; $5524: $f9
	rst GetHLinHL                                          ; $5525: $cf
	db $fc                                           ; $5526: $fc
	rlca                                             ; $5527: $07
	cp $03                                           ; $5528: $fe $03
	rst $38                                          ; $552a: $ff
	ld d, b                                          ; $552b: $50

jr_024_552c:
	ld a, e                                          ; $552c: $7b
	cp $94                                           ; $552d: $fe $94
	jr z, jr_024_552c                                ; $552f: $28 $fb

	xor a                                            ; $5531: $af
	rst $38                                          ; $5532: $ff
	sbc b                                            ; $5533: $98
	ld a, a                                          ; $5534: $7f
	call nz, $e4bf                                   ; $5535: $c4 $bf $e4
	rst SubAFromDE                                          ; $5538: $df
	db $fc                                           ; $5539: $fc
	ld [hl], e                                       ; $553a: $73
	jp c, $ea7f                                      ; $553b: $da $7f $ea

	sbc e                                            ; $553e: $9b
	rst $38                                          ; $553f: $ff
	ld a, [hl]                                       ; $5540: $7e
	cp $ff                                           ; $5541: $fe $ff
	cp [hl]                                          ; $5543: $be
	ld [$ffd5], a                                    ; $5544: $ea $d5 $ff
	sub a                                            ; $5547: $97
	ld bc, $00f1                                     ; $5548: $01 $f1 $00
	ld h, b                                          ; $554b: $60
	add b                                            ; $554c: $80
	and [hl]                                         ; $554d: $a6
	ret nz                                           ; $554e: $c0

	cpl                                              ; $554f: $2f
	cp [hl]                                          ; $5550: $be
	ld e, a                                          ; $5551: $5f
	cp a                                             ; $5552: $bf
	inc e                                            ; $5553: $1c
	sbc [hl]                                         ; $5554: $9e
	ld [bc], a                                       ; $5555: $02
	inc b                                            ; $5556: $04
	nop                                              ; $5557: $00
	sbc $44                                          ; $5558: $de $44
	ld h, b                                          ; $555a: $60
	nop                                              ; $555b: $00
	add b                                            ; $555c: $80
	ld l, a                                          ; $555d: $6f
	ld hl, sp+$24                                    ; $555e: $f8 $24
	rst $38                                          ; $5560: $ff
	scf                                              ; $5561: $37
	rst $38                                          ; $5562: $ff
	xor e                                            ; $5563: $ab
	cp $6f                                           ; $5564: $fe $6f
	or $ff                                           ; $5566: $f6 $ff
	ldh a, [c]                                       ; $5568: $f2
	rst $38                                          ; $5569: $ff
	sub b                                            ; $556a: $90
	rst $38                                          ; $556b: $ff
	scf                                              ; $556c: $37

jr_024_556d:
	sbc e                                            ; $556d: $9b
	cp $9d                                           ; $556e: $fe $9d
	rst $38                                          ; $5570: $ff
	db $dd                                           ; $5571: $dd
	rst FarCall                                          ; $5572: $f7
	rst SubAFromDE                                          ; $5573: $df
	ld [hl], e                                       ; $5574: $73
	rst $38                                          ; $5575: $ff
	ccf                                              ; $5576: $3f
	rst $38                                          ; $5577: $ff
	ld a, a                                          ; $5578: $7f
	db $e3                                           ; $5579: $e3
	rst FarCall                                          ; $557a: $f7
	pop hl                                           ; $557b: $e1
	add b                                            ; $557c: $80
	db $e3                                           ; $557d: $e3
	add c                                            ; $557e: $81
	rst $38                                          ; $557f: $ff
	pop bc                                           ; $5580: $c1
	ld a, a                                          ; $5581: $7f
	pop bc                                           ; $5582: $c1
	ld a, a                                          ; $5583: $7f
	pop hl                                           ; $5584: $e1
	ccf                                              ; $5585: $3f
	pop af                                           ; $5586: $f1
	sbc a                                            ; $5587: $9f
	ld sp, hl                                        ; $5588: $f9
	rst GetHLinHL                                          ; $5589: $cf
	db $fc                                           ; $558a: $fc
	rst JumpTable                                          ; $558b: $c7
	ld e, $e3                                        ; $558c: $1e $e3
	db $fd                                           ; $558e: $fd
	ld d, e                                          ; $558f: $53
	rst $38                                          ; $5590: $ff
	ld d, c                                          ; $5591: $51
	cp $29                                           ; $5592: $fe $29
	rst $38                                          ; $5594: $ff
	xor b                                            ; $5595: $a8
	rst $38                                          ; $5596: $ff
	sbc b                                            ; $5597: $98
	ld a, a                                          ; $5598: $7f
	call nz, $e4bf                                   ; $5599: $c4 $bf $e4
	sub d                                            ; $559c: $92
	rst SubAFromDE                                          ; $559d: $df
	db $fc                                           ; $559e: $fc
	ld [hl], c                                       ; $559f: $71
	pop af                                           ; $55a0: $f1
	ld e, b                                          ; $55a1: $58
	ld a, l                                          ; $55a2: $7d
	ld c, a                                          ; $55a3: $4f
	ld a, a                                          ; $55a4: $7f
	ld l, l                                          ; $55a5: $6d
	cpl                                              ; $55a6: $2f
	add d                                            ; $55a7: $82
	ld l, $ff                                        ; $55a8: $2e $ff
	cp [hl]                                          ; $55aa: $be
	ld [$7fd5], a                                    ; $55ab: $ea $d5 $7f
	sbc l                                            ; $55ae: $9d
	ld bc, $bb71                                     ; $55af: $01 $71 $bb
	ld h, b                                          ; $55b2: $60
	ld b, [hl]                                       ; $55b3: $46
	cpl                                              ; $55b4: $2f
	ld e, a                                          ; $55b5: $5f
	cp a                                             ; $55b6: $bf
	inc e                                            ; $55b7: $1c
	sbc [hl]                                         ; $55b8: $9e
	ld [bc], a                                       ; $55b9: $02
	inc b                                            ; $55ba: $04
	nop                                              ; $55bb: $00
	sbc $44                                          ; $55bc: $de $44
	ld e, a                                          ; $55be: $5f
	add b                                            ; $55bf: $80
	sbc d                                            ; $55c0: $9a
	ld l, a                                          ; $55c1: $6f
	inc h                                            ; $55c2: $24
	scf                                              ; $55c3: $37
	xor e                                            ; $55c4: $ab
	ld l, a                                          ; $55c5: $6f
	sbc $ff                                          ; $55c6: $de $ff
	sub e                                            ; $55c8: $93
	ld hl, sp-$01                                    ; $55c9: $f8 $ff
	rst $38                                          ; $55cb: $ff
	cp $f6                                           ; $55cc: $fe $f6
	ldh a, [c]                                       ; $55ce: $f2
	sub b                                            ; $55cf: $90

jr_024_55d0:
	jr nc, jr_024_556d                               ; $55d0: $30 $9b

	sbc l                                            ; $55d2: $9d
	db $dd                                           ; $55d3: $dd
	rst SubAFromDE                                          ; $55d4: $df
	sbc $ff                                          ; $55d5: $de $ff
	add b                                            ; $55d7: $80
	db $e3                                           ; $55d8: $e3
	cp $ff                                           ; $55d9: $fe $ff
	rst FarCall                                          ; $55db: $f7
	ld [hl], e                                       ; $55dc: $73
	ld sp, $7f1e                                     ; $55dd: $31 $1e $7f
	rst FarCall                                          ; $55e0: $f7
	add c                                            ; $55e1: $81
	pop bc                                           ; $55e2: $c1
	pop bc                                           ; $55e3: $c1
	pop hl                                           ; $55e4: $e1
	pop af                                           ; $55e5: $f1
	ld sp, hl                                        ; $55e6: $f9
	db $fc                                           ; $55e7: $fc
	cp $ff                                           ; $55e8: $fe $ff
	ld a, a                                          ; $55ea: $7f
	ld a, a                                          ; $55eb: $7f
	ccf                                              ; $55ec: $3f
	sbc a                                            ; $55ed: $9f
	rst GetHLinHL                                          ; $55ee: $cf
	rlca                                             ; $55ef: $07
	jp $fdff                                         ; $55f0: $c3 $ff $fd


	cp $ff                                           ; $55f3: $fe $ff
	rst $38                                          ; $55f5: $ff
	ld a, a                                          ; $55f6: $7f
	adc b                                            ; $55f7: $88
	cp a                                             ; $55f8: $bf
	rst SubAFromDE                                          ; $55f9: $df
	ld d, a                                          ; $55fa: $57
	ld d, e                                          ; $55fb: $53
	add hl, hl                                       ; $55fc: $29
	xor b                                            ; $55fd: $a8
	sbc b                                            ; $55fe: $98
	call nz, $fce4                                   ; $55ff: $c4 $e4 $fc
	pop hl                                           ; $5602: $e1
	ld [hl], c                                       ; $5603: $71
	ld c, a                                          ; $5604: $4f
	ld l, l                                          ; $5605: $6d
	add d                                            ; $5606: $82
	rst $38                                          ; $5607: $ff
	ld [$e3d5], a                                    ; $5608: $ea $d5 $e3
	pop af                                           ; $560b: $f1
	ld a, a                                          ; $560c: $7f
	cpl                                              ; $560d: $2f
	ld l, $fe                                        ; $560e: $2e $fe
	sub [hl]                                         ; $5610: $96
	rra                                              ; $5611: $1f
	ld [hl], c                                       ; $5612: $71
	ld h, b                                          ; $5613: $60
	ld b, [hl]                                       ; $5614: $46
	cpl                                              ; $5615: $2f
	ld e, a                                          ; $5616: $5f
	cp a                                             ; $5617: $bf
	inc e                                            ; $5618: $1c
	pop hl                                           ; $5619: $e1
	ei                                               ; $561a: $fb
	sbc [hl]                                         ; $561b: $9e
	ld [bc], a                                       ; $561c: $02
	inc b                                            ; $561d: $04
	nop                                              ; $561e: $00
	sbc $44                                          ; $561f: $de $44
	ld e, h                                          ; $5621: $5c
	add b                                            ; $5622: $80
	sbc d                                            ; $5623: $9a
	ld l, a                                          ; $5624: $6f
	inc h                                            ; $5625: $24
	scf                                              ; $5626: $37
	xor e                                            ; $5627: $ab
	ld l, a                                          ; $5628: $6f
	sbc $ff                                          ; $5629: $de $ff
	sub e                                            ; $562b: $93
	ld hl, sp-$01                                    ; $562c: $f8 $ff
	rst $38                                          ; $562e: $ff
	cp $f6                                           ; $562f: $fe $f6
	ldh a, [c]                                       ; $5631: $f2
	sub b                                            ; $5632: $90
	jr nc, jr_024_55d0                               ; $5633: $30 $9b

	sbc l                                            ; $5635: $9d
	db $dd                                           ; $5636: $dd
	rst SubAFromDE                                          ; $5637: $df
	db $dd                                           ; $5638: $dd
	rst $38                                          ; $5639: $ff
	sbc d                                            ; $563a: $9a
	cp $ff                                           ; $563b: $fe $ff
	rst FarCall                                          ; $563d: $f7
	ld [hl], e                                       ; $563e: $73
	ld sp, $8ffe                                     ; $563f: $31 $fe $8f
	add c                                            ; $5642: $81
	pop bc                                           ; $5643: $c1
	pop bc                                           ; $5644: $c1
	pop hl                                           ; $5645: $e1
	pop af                                           ; $5646: $f1
	ld sp, hl                                        ; $5647: $f9
	db $fc                                           ; $5648: $fc
	cp $ff                                           ; $5649: $fe $ff
	ld a, a                                          ; $564b: $7f
	ld a, a                                          ; $564c: $7f
	ccf                                              ; $564d: $3f
	sbc a                                            ; $564e: $9f
	rst GetHLinHL                                          ; $564f: $cf
	rlca                                             ; $5650: $07
	inc bc                                           ; $5651: $03
	call c, $94ff                                    ; $5652: $dc $ff $94
	ld a, a                                          ; $5655: $7f
	cp a                                             ; $5656: $bf
	rst SubAFromDE                                          ; $5657: $df
	ld d, b                                          ; $5658: $50
	ld d, b                                          ; $5659: $50
	add hl, hl                                       ; $565a: $29
	xor a                                            ; $565b: $af
	sbc b                                            ; $565c: $98
	call nz, $fce4                                   ; $565d: $c4 $e4 $fc
	ld a, e                                          ; $5660: $7b
	rst SubAFromHL                                          ; $5661: $d7
	sub l                                            ; $5662: $95
	xor l                                            ; $5663: $ad
	db $d3                                           ; $5664: $d3

jr_024_5665:
	rst $38                                          ; $5665: $ff
	ld [$00d5], a                                    ; $5666: $ea $d5 $00
	ld a, a                                          ; $5669: $7f
	rst $38                                          ; $566a: $ff
	rst $38                                          ; $566b: $ff
	ld l, $fe                                        ; $566c: $2e $fe
	sub h                                            ; $566e: $94
	rst $38                                          ; $566f: $ff
	pop af                                           ; $5670: $f1
	ret nz                                           ; $5671: $c0

	ld b, [hl]                                       ; $5672: $46
	cpl                                              ; $5673: $2f
	ld e, a                                          ; $5674: $5f
	cp a                                             ; $5675: $bf
	inc e                                            ; $5676: $1c
	ld bc, $e000                                     ; $5677: $01 $00 $e0
	db $fd                                           ; $567a: $fd
	sbc [hl]                                         ; $567b: $9e
	ld [bc], a                                       ; $567c: $02
	inc b                                            ; $567d: $04
	nop                                              ; $567e: $00
	sbc $44                                          ; $567f: $de $44
	ld e, l                                          ; $5681: $5d
	add b                                            ; $5682: $80
	sbc d                                            ; $5683: $9a
	ld l, a                                          ; $5684: $6f
	inc h                                            ; $5685: $24
	scf                                              ; $5686: $37
	xor e                                            ; $5687: $ab
	ld l, a                                          ; $5688: $6f
	sbc $ff                                          ; $5689: $de $ff
	sub e                                            ; $568b: $93
	ld hl, sp-$01                                    ; $568c: $f8 $ff
	rst $38                                          ; $568e: $ff
	cp $f6                                           ; $568f: $fe $f6
	ldh a, [c]                                       ; $5691: $f2
	sub b                                            ; $5692: $90
	jr nc, @-$63                                     ; $5693: $30 $9b

	sbc l                                            ; $5695: $9d
	db $dd                                           ; $5696: $dd
	rst SubAFromDE                                          ; $5697: $df
	db $dd                                           ; $5698: $dd
	rst $38                                          ; $5699: $ff
	sbc d                                            ; $569a: $9a
	cp $ff                                           ; $569b: $fe $ff
	rst FarCall                                          ; $569d: $f7
	ld [hl], e                                       ; $569e: $73
	ld sp, $8ffe                                     ; $569f: $31 $fe $8f
	add c                                            ; $56a2: $81
	pop bc                                           ; $56a3: $c1
	pop bc                                           ; $56a4: $c1
	pop hl                                           ; $56a5: $e1
	pop af                                           ; $56a6: $f1
	ld sp, hl                                        ; $56a7: $f9
	db $fc                                           ; $56a8: $fc
	cp $ff                                           ; $56a9: $fe $ff
	ld a, a                                          ; $56ab: $7f
	ld a, a                                          ; $56ac: $7f
	ccf                                              ; $56ad: $3f
	sbc a                                            ; $56ae: $9f
	rst GetHLinHL                                          ; $56af: $cf
	rlca                                             ; $56b0: $07
	inc bc                                           ; $56b1: $03
	call c, $94ff                                    ; $56b2: $dc $ff $94
	ld a, a                                          ; $56b5: $7f
	cp a                                             ; $56b6: $bf
	rst SubAFromDE                                          ; $56b7: $df
	ld d, b                                          ; $56b8: $50
	ld d, b                                          ; $56b9: $50
	jr z, jr_024_5665                                ; $56ba: $28 $a9

	sbc a                                            ; $56bc: $9f
	call nz, $fce4                                   ; $56bd: $c4 $e4 $fc
	ld [hl], a                                       ; $56c0: $77
	sub $96                                          ; $56c1: $d6 $96
	cp l                                             ; $56c3: $bd
	rst $38                                          ; $56c4: $ff
	ld [$00d5], a                                    ; $56c5: $ea $d5 $00
	nop                                              ; $56c8: $00
	ld a, a                                          ; $56c9: $7f
	rst $38                                          ; $56ca: $ff
	jp $8ffe                                         ; $56cb: $c3 $fe $8f


	rst $38                                          ; $56ce: $ff
	pop af                                           ; $56cf: $f1
	ldh [$c6], a                                     ; $56d0: $e0 $c6
	xor a                                            ; $56d2: $af
	ld e, a                                          ; $56d3: $5f
	cp a                                             ; $56d4: $bf
	inc e                                            ; $56d5: $1c
	ld bc, $0000                                     ; $56d6: $01 $00 $00
	ldh [$80], a                                     ; $56d9: $e0 $80
	nop                                              ; $56db: $00
	nop                                              ; $56dc: $00
	ld [bc], a                                       ; $56dd: $02
	inc b                                            ; $56de: $04
	nop                                              ; $56df: $00
	sbc $44                                          ; $56e0: $de $44
	ld h, e                                          ; $56e2: $63
	nop                                              ; $56e3: $00
	add b                                            ; $56e4: $80
	add hl, sp                                       ; $56e5: $39
	rst AddAOntoHL                                          ; $56e6: $ef
	inc [hl]                                         ; $56e7: $34
	rst AddAOntoHL                                          ; $56e8: $ef
	xor [hl]                                         ; $56e9: $ae
	rst $38                                          ; $56ea: $ff
	cp a                                             ; $56eb: $bf
	pop hl                                           ; $56ec: $e1
	rst $38                                          ; $56ed: $ff
	ld h, b                                          ; $56ee: $60
	ei                                               ; $56ef: $fb
	ld h, a                                          ; $56f0: $67
	rst $38                                          ; $56f1: $ff
	daa                                              ; $56f2: $27
	rst $38                                          ; $56f3: $ff
	xor a                                            ; $56f4: $af
	ldh a, [$1f]                                     ; $56f5: $f0 $1f
	sbc h                                            ; $56f7: $9c
	rst AddAOntoHL                                          ; $56f8: $ef
	rst SubAFromBC                                          ; $56f9: $e7
	ei                                               ; $56fa: $fb
	ld sp, hl                                        ; $56fb: $f9
	sbc [hl]                                         ; $56fc: $9e
	rst $38                                          ; $56fd: $ff
	ld b, $ff                                        ; $56fe: $06 $ff
	ldh [$fb], a                                     ; $5700: $e0 $fb
	db $fc                                           ; $5702: $fc
	ld e, $83                                        ; $5703: $1e $83
	rra                                              ; $5705: $1f
	ld b, d                                          ; $5706: $42
	rst $38                                          ; $5707: $ff
	ld h, d                                          ; $5708: $62
	rst $38                                          ; $5709: $ff
	ld sp, $d9ff                                     ; $570a: $31 $ff $d9
	rst $38                                          ; $570d: $ff
	db $fc                                           ; $570e: $fc
	ccf                                              ; $570f: $3f
	rst $38                                          ; $5710: $ff
	daa                                              ; $5711: $27
	or $3b                                           ; $5712: $f6 $3b
	cp $23                                           ; $5714: $fe $23
	db $e3                                           ; $5716: $e3
	sbc e                                            ; $5717: $9b
	ld a, [$6ac3]                                    ; $5718: $fa $c3 $6a
	inc hl                                           ; $571b: $23
	add c                                            ; $571c: $81
	ld bc, $0151                                     ; $571d: $01 $51 $01
	db $eb                                           ; $5720: $eb
	cp [hl]                                          ; $5721: $be
	ld d, l                                          ; $5722: $55
	nop                                              ; $5723: $00
	adc a                                            ; $5724: $8f
	sub l                                            ; $5725: $95
	adc e                                            ; $5726: $8b
	ret z                                            ; $5727: $c8

	ld [$f8ea], a                                    ; $5728: $ea $ea $f8
	ld l, b                                          ; $572b: $68
	ld a, b                                          ; $572c: $78
	db $10                                           ; $572d: $10
	ld [hl], b                                       ; $572e: $70
	ld hl, sp-$41                                    ; $572f: $f8 $bf
	ld d, c                                          ; $5731: $51
	and c                                            ; $5732: $a1
	adc [hl]                                         ; $5733: $8e
	ld bc, $c3fe                                     ; $5734: $01 $fe $c3
	xor $53                                          ; $5737: $ee $53
	db $fc                                           ; $5739: $fc
	ld d, a                                          ; $573a: $57
	db $fc                                           ; $573b: $fc
	ld h, a                                          ; $573c: $67
	ld hl, sp-$31                                    ; $573d: $f8 $cf
	ld hl, sp-$61                                    ; $573f: $f8 $9f
	pop af                                           ; $5741: $f1
	cp a                                             ; $5742: $bf
	di                                               ; $5743: $f3
	rst $38                                          ; $5744: $ff
	inc b                                            ; $5745: $04
	nop                                              ; $5746: $00
	sbc $44                                          ; $5747: $de $44
	ld h, e                                          ; $5749: $63
	nop                                              ; $574a: $00
	add b                                            ; $574b: $80
	add hl, sp                                       ; $574c: $39
	rst AddAOntoHL                                          ; $574d: $ef
	inc [hl]                                         ; $574e: $34
	rst AddAOntoHL                                          ; $574f: $ef
	xor [hl]                                         ; $5750: $ae
	rst $38                                          ; $5751: $ff
	cp a                                             ; $5752: $bf

Jump_024_5753:
	pop hl                                           ; $5753: $e1
	rst $38                                          ; $5754: $ff
	ld h, b                                          ; $5755: $60
	rst $38                                          ; $5756: $ff
	ld h, b                                          ; $5757: $60
	ei                                               ; $5758: $fb
	daa                                              ; $5759: $27
	rst $38                                          ; $575a: $ff
	and a                                            ; $575b: $a7
	ldh a, [$1f]                                     ; $575c: $f0 $1f
	sbc h                                            ; $575e: $9c
	rst AddAOntoHL                                          ; $575f: $ef
	rst SubAFromBC                                          ; $5760: $e7
	ei                                               ; $5761: $fb

jr_024_5762:
	ld sp, hl                                        ; $5762: $f9
	sbc [hl]                                         ; $5763: $9e
	rst $38                                          ; $5764: $ff
	ld b, $ff                                        ; $5765: $06 $ff
	nop                                              ; $5767: $00
	rst SubAFromDE                                          ; $5768: $df
	ldh [$fb], a                                     ; $5769: $e0 $fb
	add e                                            ; $576b: $83
	db $fc                                           ; $576c: $fc
	ld b, d                                          ; $576d: $42
	rst $38                                          ; $576e: $ff
	ld h, d                                          ; $576f: $62
	rst $38                                          ; $5770: $ff
	ld sp, $d9ff                                     ; $5771: $31 $ff $d9
	rst $38                                          ; $5774: $ff
	db $fc                                           ; $5775: $fc
	ccf                                              ; $5776: $3f

Jump_024_5777:
	rst $38                                          ; $5777: $ff
	daa                                              ; $5778: $27
	or $3b                                           ; $5779: $f6 $3b
	cp $23                                           ; $577b: $fe $23
	rst AddAOntoHL                                          ; $577d: $ef
	sbc a                                            ; $577e: $9f
	di                                               ; $577f: $f3
	bit 5, d                                         ; $5780: $cb $6a
	inc hl                                           ; $5782: $23
	add c                                            ; $5783: $81
	ld bc, $0151                                     ; $5784: $01 $51 $01
	db $eb                                           ; $5787: $eb
	cp [hl]                                          ; $5788: $be
	ld d, l                                          ; $5789: $55
	nop                                              ; $578a: $00
	ld e, $95                                        ; $578b: $1e $95
	ccf                                              ; $578d: $3f
	adc a                                            ; $578e: $8f
	adc e                                            ; $578f: $8b
	ret z                                            ; $5790: $c8

	ld [$7878], a                                    ; $5791: $ea $78 $78
	db $10                                           ; $5794: $10
	ld [hl], b                                       ; $5795: $70
	ld hl, sp-$41                                    ; $5796: $f8 $bf
	ld d, c                                          ; $5798: $51
	and c                                            ; $5799: $a1
	adc [hl]                                         ; $579a: $8e
	ld bc, $43fe                                     ; $579b: $01 $fe $43
	xor $d3                                          ; $579e: $ee $d3
	db $fc                                           ; $57a0: $fc
	ld d, a                                          ; $57a1: $57
	db $fc                                           ; $57a2: $fc
	ld h, a                                          ; $57a3: $67
	ld hl, sp-$31                                    ; $57a4: $f8 $cf
	ld hl, sp-$61                                    ; $57a6: $f8 $9f
	pop af                                           ; $57a8: $f1
	cp a                                             ; $57a9: $bf
	di                                               ; $57aa: $f3
	rst $38                                          ; $57ab: $ff
	inc b                                            ; $57ac: $04
	nop                                              ; $57ad: $00
	sbc $44                                          ; $57ae: $de $44
	ld e, l                                          ; $57b0: $5d
	add b                                            ; $57b1: $80
	sbc e                                            ; $57b2: $9b
	add hl, sp                                       ; $57b3: $39
	inc [hl]                                         ; $57b4: $34
	xor [hl]                                         ; $57b5: $ae
	cp a                                             ; $57b6: $bf
	db $dd                                           ; $57b7: $dd
	rst $38                                          ; $57b8: $ff
	rst SubAFromDE                                          ; $57b9: $df
	rst AddAOntoHL                                          ; $57ba: $ef
	sub l                                            ; $57bb: $95
	rst $38                                          ; $57bc: $ff
	pop hl                                           ; $57bd: $e1
	ld h, b                                          ; $57be: $60
	ld h, b                                          ; $57bf: $60
	jr nz, jr_024_5762                               ; $57c0: $20 $a0

	ldh a, [$9c]                                     ; $57c2: $f0 $9c
	rst SubAFromBC                                          ; $57c4: $e7
	ld sp, hl                                        ; $57c5: $f9
	db $dd                                           ; $57c6: $dd
	rst $38                                          ; $57c7: $ff
	sbc d                                            ; $57c8: $9a
	rra                                              ; $57c9: $1f
	rst AddAOntoHL                                          ; $57ca: $ef
	ei                                               ; $57cb: $fb
	sbc [hl]                                         ; $57cc: $9e
	ld b, $fe                                        ; $57cd: $06 $fe
	sub a                                            ; $57cf: $97
	ld b, d                                          ; $57d0: $42
	ld h, d                                          ; $57d1: $62
	ld sp, $fcd9                                     ; $57d2: $31 $d9 $fc
	rst $38                                          ; $57d5: $ff
	or $fe                                           ; $57d6: $f6 $fe
	db $dd                                           ; $57d8: $dd
	rst $38                                          ; $57d9: $ff
	adc [hl]                                         ; $57da: $8e
	ccf                                              ; $57db: $3f
	daa                                              ; $57dc: $27

Call_024_57dd:
	dec sp                                           ; $57dd: $3b
	inc hl                                           ; $57de: $23
	rst $38                                          ; $57df: $ff
	rst $38                                          ; $57e0: $ff
	ld [hl], a                                       ; $57e1: $77
	adc a                                            ; $57e2: $8f
	ld d, c                                          ; $57e3: $51
	db $eb                                           ; $57e4: $eb
	ld d, l                                          ; $57e5: $55
	nop                                              ; $57e6: $00
	add b                                            ; $57e7: $80
	ret nz                                           ; $57e8: $c0

	cpl                                              ; $57e9: $2f
	rra                                              ; $57ea: $1f
	ld bc, $defe                                     ; $57eb: $01 $fe $de
	rst $38                                          ; $57ee: $ff
	sbc d                                            ; $57ef: $9a
	db $fc                                           ; $57f0: $fc
	db $10                                           ; $57f1: $10
	ld hl, sp+$51                                    ; $57f2: $f8 $51
	and c                                            ; $57f4: $a1
	ld a, e                                          ; $57f5: $7b
	or $8a                                           ; $57f6: $f6 $8a
	db $fc                                           ; $57f8: $fc
	ld a, b                                          ; $57f9: $78
	nop                                              ; $57fa: $00
	nop                                              ; $57fb: $00
	ld bc, $eefe                                     ; $57fc: $01 $fe $ee
	ld a, h                                          ; $57ff: $7c
	db $fc                                           ; $5800: $fc
	ld hl, sp-$08                                    ; $5801: $f8 $f8
	pop af                                           ; $5803: $f1
	di                                               ; $5804: $f3
	ld b, e                                          ; $5805: $43
	ld d, e                                          ; $5806: $53
	rst SubAFromHL                                          ; $5807: $d7
	ld h, a                                          ; $5808: $67
	rst GetHLinHL                                          ; $5809: $cf
	sbc a                                            ; $580a: $9f
	cp a                                             ; $580b: $bf
	rst $38                                          ; $580c: $ff
	inc b                                            ; $580d: $04
	nop                                              ; $580e: $00
	sbc $44                                          ; $580f: $de $44
	ld e, l                                          ; $5811: $5d
	add b                                            ; $5812: $80
	sbc e                                            ; $5813: $9b
	add hl, sp                                       ; $5814: $39
	inc [hl]                                         ; $5815: $34
	xor [hl]                                         ; $5816: $ae
	cp a                                             ; $5817: $bf
	db $dd                                           ; $5818: $dd
	rst $38                                          ; $5819: $ff
	rst SubAFromDE                                          ; $581a: $df
	rst AddAOntoHL                                          ; $581b: $ef
	sub l                                            ; $581c: $95
	rst $38                                          ; $581d: $ff
	pop hl                                           ; $581e: $e1
	ld h, b                                          ; $581f: $60
	ld h, b                                          ; $5820: $60
	jr nz, @-$5e                                     ; $5821: $20 $a0

	ldh a, [$9c]                                     ; $5823: $f0 $9c
	rst SubAFromBC                                          ; $5825: $e7
	ld sp, hl                                        ; $5826: $f9
	db $dd                                           ; $5827: $dd
	rst $38                                          ; $5828: $ff
	sbc d                                            ; $5829: $9a
	rra                                              ; $582a: $1f
	rst AddAOntoHL                                          ; $582b: $ef
	ei                                               ; $582c: $fb
	sbc [hl]                                         ; $582d: $9e
	ld b, $fe                                        ; $582e: $06 $fe
	sub a                                            ; $5830: $97
	ld b, d                                          ; $5831: $42
	ld h, d                                          ; $5832: $62
	ld sp, $fcd9                                     ; $5833: $31 $d9 $fc
	rst $38                                          ; $5836: $ff
	or $fe                                           ; $5837: $f6 $fe
	db $dd                                           ; $5839: $dd
	rst $38                                          ; $583a: $ff
	adc [hl]                                         ; $583b: $8e
	ccf                                              ; $583c: $3f
	daa                                              ; $583d: $27
	dec sp                                           ; $583e: $3b
	inc hl                                           ; $583f: $23
	rst $38                                          ; $5840: $ff
	rst $38                                          ; $5841: $ff
	ld [hl], a                                       ; $5842: $77
	adc a                                            ; $5843: $8f
	ld d, c                                          ; $5844: $51
	db $eb                                           ; $5845: $eb
	ld d, l                                          ; $5846: $55
	nop                                              ; $5847: $00
	add b                                            ; $5848: $80
	ret nz                                           ; $5849: $c0

	ld l, $1f                                        ; $584a: $2e $1f
	ld bc, $dffe                                     ; $584c: $01 $fe $df
	rst $38                                          ; $584f: $ff
	ld a, a                                          ; $5850: $7f
	ldh [c], a                                       ; $5851: $e2
	rst SubAFromDE                                          ; $5852: $df
	ld hl, sp-$63                                    ; $5853: $f8 $9d
	ld d, c                                          ; $5855: $51
	and c                                            ; $5856: $a1
	ld [hl], a                                       ; $5857: $77
	push af                                          ; $5858: $f5
	adc e                                            ; $5859: $8b
	db $fc                                           ; $585a: $fc
	nop                                              ; $585b: $00
	nop                                              ; $585c: $00
	ld bc, $eefe                                     ; $585d: $01 $fe $ee
	db $fc                                           ; $5860: $fc
	ld a, h                                          ; $5861: $7c
	ld hl, sp-$08                                    ; $5862: $f8 $f8
	pop af                                           ; $5864: $f1
	di                                               ; $5865: $f3
	ld b, e                                          ; $5866: $43
	ld d, e                                          ; $5867: $53
	ld d, a                                          ; $5868: $57
	rst SubAFromBC                                          ; $5869: $e7
	rst GetHLinHL                                          ; $586a: $cf
	sbc a                                            ; $586b: $9f
	cp a                                             ; $586c: $bf
	rst $38                                          ; $586d: $ff
	inc b                                            ; $586e: $04
	nop                                              ; $586f: $00
	sbc $44                                          ; $5870: $de $44
	ld h, c                                          ; $5872: $61
	add b                                            ; $5873: $80
	adc l                                            ; $5874: $8d
	add hl, sp                                       ; $5875: $39
	inc [hl]                                         ; $5876: $34
	xor [hl]                                         ; $5877: $ae
	cp a                                             ; $5878: $bf
	db $fd                                           ; $5879: $fd
	rst FarCall                                          ; $587a: $f7
	rst $38                                          ; $587b: $ff
	db $e3                                           ; $587c: $e3
	rst AddAOntoHL                                          ; $587d: $ef
	rst AddAOntoHL                                          ; $587e: $ef
	rst $38                                          ; $587f: $ff
	pop hl                                           ; $5880: $e1
	ld h, e                                          ; $5881: $63
	ld l, a                                          ; $5882: $6f
	cpl                                              ; $5883: $2f
	cp e                                             ; $5884: $bb
	db $10                                           ; $5885: $10
	db $fc                                           ; $5886: $fc
	db $dd                                           ; $5887: $dd
	rst $38                                          ; $5888: $ff
	adc l                                            ; $5889: $8d
	rra                                              ; $588a: $1f
	rrca                                             ; $588b: $0f
	rst $38                                          ; $588c: $ff
	rst $38                                          ; $588d: $ff
	add a                                            ; $588e: $87
	add b                                            ; $588f: $80
	ldh [$f8], a                                     ; $5890: $e0 $f8
	cp [hl]                                          ; $5892: $be
	rra                                              ; $5893: $1f
	ld b, d                                          ; $5894: $42
	ld h, d                                          ; $5895: $62
	ld sp, $fcd9                                     ; $5896: $31 $d9 $fc
	rst $38                                          ; $5899: $ff
	or $be                                           ; $589a: $f6 $be
	db $dd                                           ; $589c: $dd
	rst $38                                          ; $589d: $ff
	adc [hl]                                         ; $589e: $8e
	ccf                                              ; $589f: $3f
	daa                                              ; $58a0: $27
	dec sp                                           ; $58a1: $3b
	db $e3                                           ; $58a2: $e3
	ei                                               ; $58a3: $fb
	ld a, [$816a]                                    ; $58a4: $fa $6a $81
	ld d, c                                          ; $58a7: $51
	db $eb                                           ; $58a8: $eb
	ld d, l                                          ; $58a9: $55
	nop                                              ; $58aa: $00
	add e                                            ; $58ab: $83
	jp $0123                                         ; $58ac: $c3 $23 $01


	ld bc, $80fe                                     ; $58af: $01 $fe $80
	adc l                                            ; $58b2: $8d
	jp z, Jump_024_68ea                              ; $58b3: $ca $ea $68

	db $10                                           ; $58b6: $10
	ld hl, sp+$51                                    ; $58b7: $f8 $51
	and c                                            ; $58b9: $a1
	adc e                                            ; $58ba: $8b
	add sp, -$08                                     ; $58bb: $e8 $f8
	ld a, b                                          ; $58bd: $78
	ld [hl], b                                       ; $58be: $70
	nop                                              ; $58bf: $00
	nop                                              ; $58c0: $00
	ld bc, $eefe                                     ; $58c1: $01 $fe $ee
	db $fc                                           ; $58c4: $fc
	db $fc                                           ; $58c5: $fc
	ld hl, sp-$08                                    ; $58c6: $f8 $f8
	pop af                                           ; $58c8: $f1
	di                                               ; $58c9: $f3
	ld b, e                                          ; $58ca: $43
	ld d, e                                          ; $58cb: $53
	ld d, a                                          ; $58cc: $57
	ld h, a                                          ; $58cd: $67
	rst GetHLinHL                                          ; $58ce: $cf
	sbc a                                            ; $58cf: $9f
	cp a                                             ; $58d0: $bf
	sbc [hl]                                         ; $58d1: $9e
	rst $38                                          ; $58d2: $ff
	inc b                                            ; $58d3: $04
	nop                                              ; $58d4: $00
	sbc $44                                          ; $58d5: $de $44
	ld h, b                                          ; $58d7: $60
	add b                                            ; $58d8: $80
	adc l                                            ; $58d9: $8d
	add hl, sp                                       ; $58da: $39
	inc [hl]                                         ; $58db: $34
	xor [hl]                                         ; $58dc: $ae
	cp a                                             ; $58dd: $bf
	rst $38                                          ; $58de: $ff
	db $fd                                           ; $58df: $fd
	rst FarCall                                          ; $58e0: $f7
	rst $38                                          ; $58e1: $ff
	rst AddAOntoHL                                          ; $58e2: $ef
	rst AddAOntoHL                                          ; $58e3: $ef
	rst $38                                          ; $58e4: $ff
	pop hl                                           ; $58e5: $e1
	ld h, b                                          ; $58e6: $60
	ld h, e                                          ; $58e7: $63
	cpl                                              ; $58e8: $2f
	xor a                                            ; $58e9: $af
	db $10                                           ; $58ea: $10
	db $fc                                           ; $58eb: $fc
	call c, $8eff                                    ; $58ec: $dc $ff $8e
	rra                                              ; $58ef: $1f
	rst $38                                          ; $58f0: $ff
	rst $38                                          ; $58f1: $ff
	add a                                            ; $58f2: $87
	add b                                            ; $58f3: $80
	nop                                              ; $58f4: $00
	ldh [$f8], a                                     ; $58f5: $e0 $f8
	cp [hl]                                          ; $58f7: $be
	ld b, d                                          ; $58f8: $42
	ld h, d                                          ; $58f9: $62
	ld sp, $fcd9                                     ; $58fa: $31 $d9 $fc
	rst $38                                          ; $58fd: $ff
	or $fe                                           ; $58fe: $f6 $fe
	db $dd                                           ; $5900: $dd
	rst $38                                          ; $5901: $ff
	adc [hl]                                         ; $5902: $8e
	ccf                                              ; $5903: $3f
	daa                                              ; $5904: $27
	dec sp                                           ; $5905: $3b
	inc hl                                           ; $5906: $23
	db $e3                                           ; $5907: $e3
	ei                                               ; $5908: $fb
	ld l, d                                          ; $5909: $6a
	add c                                            ; $590a: $81
	ld d, c                                          ; $590b: $51
	db $eb                                           ; $590c: $eb
	ld d, l                                          ; $590d: $55
	nop                                              ; $590e: $00
	sbc e                                            ; $590f: $9b
	jp $0123                                         ; $5910: $c3 $23 $01


	ld bc, $80fe                                     ; $5913: $01 $fe $80
	rrca                                             ; $5916: $0f
	adc l                                            ; $5917: $8d
	ld [$1068], a                                    ; $5918: $ea $68 $10
	ld hl, sp+$51                                    ; $591b: $f8 $51
	and c                                            ; $591d: $a1
	rra                                              ; $591e: $1f
	adc e                                            ; $591f: $8b
	ld hl, sp+$78                                    ; $5920: $f8 $78
	ld [hl], b                                       ; $5922: $70
	nop                                              ; $5923: $00
	nop                                              ; $5924: $00
	ld bc, $eefe                                     ; $5925: $01 $fe $ee
	db $fc                                           ; $5928: $fc
	db $fc                                           ; $5929: $fc
	ld hl, sp-$08                                    ; $592a: $f8 $f8
	pop af                                           ; $592c: $f1
	di                                               ; $592d: $f3
	jp Jump_024_5753                                 ; $592e: $c3 $53 $57


	ld h, a                                          ; $5931: $67
	rst GetHLinHL                                          ; $5932: $cf
	sbc a                                            ; $5933: $9f
	cp a                                             ; $5934: $bf
	sbc [hl]                                         ; $5935: $9e
	rst $38                                          ; $5936: $ff
	inc b                                            ; $5937: $04
	nop                                              ; $5938: $00
	sbc $44                                          ; $5939: $de $44
	ld e, d                                          ; $593b: $5a
	add b                                            ; $593c: $80
	sbc e                                            ; $593d: $9b
	add hl, sp                                       ; $593e: $39
	inc [hl]                                         ; $593f: $34
	xor [hl]                                         ; $5940: $ae
	cp a                                             ; $5941: $bf
	db $dd                                           ; $5942: $dd
	rst $38                                          ; $5943: $ff
	rst SubAFromDE                                          ; $5944: $df
	rst AddAOntoHL                                          ; $5945: $ef
	sub a                                            ; $5946: $97
	rst $38                                          ; $5947: $ff
	pop hl                                           ; $5948: $e1
	ld h, b                                          ; $5949: $60
	ld h, b                                          ; $594a: $60

jr_024_594b:
	jr nz, @-$5e                                     ; $594b: $20 $a0

	db $10                                           ; $594d: $10
	db $fc                                           ; $594e: $fc
	reti                                             ; $594f: $d9


	rst $38                                          ; $5950: $ff
	sbc l                                            ; $5951: $9d
	add a                                            ; $5952: $87
	add b                                            ; $5953: $80
	db $fd                                           ; $5954: $fd
	sub a                                            ; $5955: $97
	ld b, d                                          ; $5956: $42
	ld h, d                                          ; $5957: $62
	ld sp, $fcd9                                     ; $5958: $31 $d9 $fc
	rst $38                                          ; $595b: $ff
	or $fe                                           ; $595c: $f6 $fe
	db $dd                                           ; $595e: $dd
	rst $38                                          ; $595f: $ff
	adc [hl]                                         ; $5960: $8e
	ccf                                              ; $5961: $3f
	daa                                              ; $5962: $27
	dec sp                                           ; $5963: $3b
	inc hl                                           ; $5964: $23
	rst $38                                          ; $5965: $ff
	db $fd                                           ; $5966: $fd
	ld l, a                                          ; $5967: $6f
	add [hl]                                         ; $5968: $86
	ld d, e                                          ; $5969: $53
	db $eb                                           ; $596a: $eb
	ld d, l                                          ; $596b: $55
	nop                                              ; $596c: $00
	add b                                            ; $596d: $80
	jp $1f2f                                         ; $596e: $c3 $2f $1f


	ld bc, $80fe                                     ; $5971: $01 $fe $80
	rst $38                                          ; $5974: $ff
	rst FarCall                                          ; $5975: $f7
	rst $38                                          ; $5976: $ff
	ld l, a                                          ; $5977: $6f
	sbc b                                            ; $5978: $98
	ld hl, sp+$51                                    ; $5979: $f8 $51
	and c                                            ; $597b: $a1
	nop                                              ; $597c: $00
	ld hl, sp-$02                                    ; $597d: $f8 $fe
	rst $38                                          ; $597f: $ff
	ld [hl], b                                       ; $5980: $70
	nop                                              ; $5981: $00
	nop                                              ; $5982: $00
	ld bc, $eefe                                     ; $5983: $01 $fe $ee
	db $fc                                           ; $5986: $fc
	ld a, h                                          ; $5987: $7c
	ld hl, sp-$08                                    ; $5988: $f8 $f8
	pop af                                           ; $598a: $f1
	di                                               ; $598b: $f3
	ld b, e                                          ; $598c: $43
	ld d, e                                          ; $598d: $53
	ld d, a                                          ; $598e: $57
	rst SubAFromBC                                          ; $598f: $e7
	rst GetHLinHL                                          ; $5990: $cf
	sbc a                                            ; $5991: $9f
	cp a                                             ; $5992: $bf
	sbc [hl]                                         ; $5993: $9e
	rst $38                                          ; $5994: $ff
	inc b                                            ; $5995: $04
	nop                                              ; $5996: $00
	sbc $44                                          ; $5997: $de $44
	ld d, [hl]                                       ; $5999: $56
	add b                                            ; $599a: $80
	sbc e                                            ; $599b: $9b
	add hl, sp                                       ; $599c: $39
	inc [hl]                                         ; $599d: $34
	xor [hl]                                         ; $599e: $ae
	cp a                                             ; $599f: $bf
	db $dd                                           ; $59a0: $dd
	rst $38                                          ; $59a1: $ff
	rst SubAFromDE                                          ; $59a2: $df
	rst AddAOntoHL                                          ; $59a3: $ef
	sub a                                            ; $59a4: $97
	rst $38                                          ; $59a5: $ff
	pop hl                                           ; $59a6: $e1
	ld h, b                                          ; $59a7: $60
	ld h, b                                          ; $59a8: $60
	jr nz, jr_024_594b                               ; $59a9: $20 $a0

	db $10                                           ; $59ab: $10
	db $fc                                           ; $59ac: $fc
	reti                                             ; $59ad: $d9


	rst $38                                          ; $59ae: $ff
	sbc l                                            ; $59af: $9d
	add a                                            ; $59b0: $87
	add b                                            ; $59b1: $80
	db $fd                                           ; $59b2: $fd
	sub a                                            ; $59b3: $97
	ld b, d                                          ; $59b4: $42
	ld h, d                                          ; $59b5: $62
	ld sp, $fcd9                                     ; $59b6: $31 $d9 $fc
	rst $38                                          ; $59b9: $ff
	or $fe                                           ; $59ba: $f6 $fe
	db $dd                                           ; $59bc: $dd
	rst $38                                          ; $59bd: $ff
	adc [hl]                                         ; $59be: $8e
	ccf                                              ; $59bf: $3f
	daa                                              ; $59c0: $27
	dec sp                                           ; $59c1: $3b
	inc hl                                           ; $59c2: $23
	rst $38                                          ; $59c3: $ff
	rst $38                                          ; $59c4: $ff
	ld l, e                                          ; $59c5: $6b
	adc a                                            ; $59c6: $8f
	ld d, [hl]                                       ; $59c7: $56
	rst AddAOntoHL                                          ; $59c8: $ef
	ld d, l                                          ; $59c9: $55
	nop                                              ; $59ca: $00
	add b                                            ; $59cb: $80
	ret nz                                           ; $59cc: $c0

	daa                                              ; $59cd: $27
	rra                                              ; $59ce: $1f
	rrca                                             ; $59cf: $0f
	cp $73                                           ; $59d0: $fe $73
	call nz, $f884                                   ; $59d2: $c4 $84 $f8
	ld d, c                                          ; $59d5: $51
	and c                                            ; $59d6: $a1
	nop                                              ; $59d7: $00
	nop                                              ; $59d8: $00
	ldh a, [$fe]                                     ; $59d9: $f0 $fe
	rra                                              ; $59db: $1f
	nop                                              ; $59dc: $00
	nop                                              ; $59dd: $00
	ld bc, $eefe                                     ; $59de: $01 $fe $ee
	db $fc                                           ; $59e1: $fc
	db $fc                                           ; $59e2: $fc
	ld hl, sp-$08                                    ; $59e3: $f8 $f8
	pop af                                           ; $59e5: $f1
	di                                               ; $59e6: $f3
	ld b, e                                          ; $59e7: $43
	ld d, e                                          ; $59e8: $53
	ld d, a                                          ; $59e9: $57
	ld h, a                                          ; $59ea: $67
	rst GetHLinHL                                          ; $59eb: $cf
	sbc a                                            ; $59ec: $9f
	cp a                                             ; $59ed: $bf
	rst $38                                          ; $59ee: $ff
	inc b                                            ; $59ef: $04
	nop                                              ; $59f0: $00
	sbc $44                                          ; $59f1: $de $44
	ld b, b                                          ; $59f3: $40
	db $10                                           ; $59f4: $10
	inc b                                            ; $59f5: $04
	inc bc                                           ; $59f6: $03
	nop                                              ; $59f7: $00
	ld h, c                                          ; $59f8: $61
	inc [hl]                                         ; $59f9: $34
	push de                                          ; $59fa: $d5
	ld e, $83                                        ; $59fb: $1e $83
	ld b, c                                          ; $59fd: $41
	db $fc                                           ; $59fe: $fc
	ld [hl], $ff                                     ; $59ff: $36 $ff
	rst AddAOntoHL                                          ; $5a01: $ef
	dec sp                                           ; $5a02: $3b
	cp $f0                                           ; $5a03: $fe $f0
	inc c                                            ; $5a05: $0c
	ld l, $00                                        ; $5a06: $2e $00
	ld [bc], a                                       ; $5a08: $02
	ld b, b                                          ; $5a09: $40
	nop                                              ; $5a0a: $00
	inc h                                            ; $5a0b: $24
	nop                                              ; $5a0c: $00
	ld [bc], a                                       ; $5a0d: $02
	ld b, b                                          ; $5a0e: $40
	nop                                              ; $5a0f: $00
	ld h, $00                                        ; $5a10: $26 $00
	ld b, $20                                        ; $5a12: $06 $20
	ld c, l                                          ; $5a14: $4d
	inc bc                                           ; $5a15: $03
	sbc h                                            ; $5a16: $9c
	dec bc                                           ; $5a17: $0b
	rlca                                             ; $5a18: $07
	rlca                                             ; $5a19: $07
	sbc $0f                                          ; $5a1a: $de $0f
	ld a, a                                          ; $5a1c: $7f
	db $fc                                           ; $5a1d: $fc
	sbc d                                            ; $5a1e: $9a
	ccf                                              ; $5a1f: $3f
	rra                                              ; $5a20: $1f
	rra                                              ; $5a21: $1f
	cpl                                              ; $5a22: $2f
	rrca                                             ; $5a23: $0f
	ld a, e                                          ; $5a24: $7b
	ld a, [$ffd8]                                    ; $5a25: $fa $d8 $ff
	sub a                                            ; $5a28: $97
	db $fd                                           ; $5a29: $fd
	rst $38                                          ; $5a2a: $ff
	db $fd                                           ; $5a2b: $fd
	xor a                                            ; $5a2c: $af
	sub a                                            ; $5a2d: $97
	ei                                               ; $5a2e: $fb
	or a                                             ; $5a2f: $b7
	rra                                              ; $5a30: $1f
	sbc $3f                                          ; $5a31: $de $3f
	sub e                                            ; $5a33: $93
	daa                                              ; $5a34: $27
	rra                                              ; $5a35: $1f
	rra                                              ; $5a36: $1f
	rrca                                             ; $5a37: $0f
	dec de                                           ; $5a38: $1b
	rlca                                             ; $5a39: $07
	scf                                              ; $5a3a: $37
	inc bc                                           ; $5a3b: $03
	inc bc                                           ; $5a3c: $03
	nop                                              ; $5a3d: $00
	ld bc, $d700                                     ; $5a3e: $01 $00 $d7
	rst $38                                          ; $5a41: $ff
	sub e                                            ; $5a42: $93
	rst SubAFromDE                                          ; $5a43: $df
	rst AddAOntoHL                                          ; $5a44: $ef
	ei                                               ; $5a45: $fb
	add h                                            ; $5a46: $84
	db $fc                                           ; $5a47: $fc
	add b                                            ; $5a48: $80
	rst FarCall                                          ; $5a49: $f7
	jp $83cf                                         ; $5a4a: $c3 $cf $83


	rst SubAFromDE                                          ; $5a4d: $df
	rst AddAOntoHL                                          ; $5a4e: $ef
	jp c, $9aff                                      ; $5a4f: $da $ff $9a

	ld a, a                                          ; $5a52: $7f
	rst $38                                          ; $5a53: $ff
	ld a, a                                          ; $5a54: $7f
	rrca                                             ; $5a55: $0f
	dec b                                            ; $5a56: $05
	sbc $03                                          ; $5a57: $de $03
	sbc [hl]                                         ; $5a59: $9e
	ld bc, $fe7b                                     ; $5a5a: $01 $7b $fe
	ld a, a                                          ; $5a5d: $7f
	db $fd                                           ; $5a5e: $fd
	sbc d                                            ; $5a5f: $9a
	nop                                              ; $5a60: $00
	rrca                                             ; $5a61: $0f
	ld c, $3f                                        ; $5a62: $0e $3f
	rrca                                             ; $5a64: $0f
	rst SubAFromHL                                          ; $5a65: $d7
	rst $38                                          ; $5a66: $ff
	sbc [hl]                                         ; $5a67: $9e
	rst AddAOntoHL                                          ; $5a68: $ef
	ld a, e                                          ; $5a69: $7b
	ldh [c], a                                       ; $5a6a: $e2
	db $d3                                           ; $5a6b: $d3
	rst $38                                          ; $5a6c: $ff
	sbc c                                            ; $5a6d: $99
	cp a                                             ; $5a6e: $bf
	rst SubAFromDE                                          ; $5a6f: $df
	rst $38                                          ; $5a70: $ff
	sbc a                                            ; $5a71: $9f
	ld hl, sp-$10                                    ; $5a72: $f8 $f0
	db $d3                                           ; $5a74: $d3
	rst $38                                          ; $5a75: $ff
	sbc l                                            ; $5a76: $9d
	ld a, a                                          ; $5a77: $7f
	ccf                                              ; $5a78: $3f
	add $ff                                          ; $5a79: $c6 $ff
	sbc [hl]                                         ; $5a7b: $9e
	sbc a                                            ; $5a7c: $9f
	ld a, e                                          ; $5a7d: $7b
	cp $d7                                           ; $5a7e: $fe $d7
	rst $38                                          ; $5a80: $ff
	sbc [hl]                                         ; $5a81: $9e
	cp $da                                           ; $5a82: $fe $da
	rst $38                                          ; $5a84: $ff
	db $dd                                           ; $5a85: $dd
	ei                                               ; $5a86: $fb
	sbc l                                            ; $5a87: $9d
	pop af                                           ; $5a88: $f1
	di                                               ; $5a89: $f3
	ld [hl], a                                       ; $5a8a: $77
	add d                                            ; $5a8b: $82
	ld h, a                                          ; $5a8c: $67
	ld b, l                                          ; $5a8d: $45
	sbc d                                            ; $5a8e: $9a
	cp $7f                                           ; $5a8f: $fe $7f
	rst $38                                          ; $5a91: $ff
	rst FarCall                                          ; $5a92: $f7
	ld a, $db                                        ; $5a93: $3e $db
	rst $38                                          ; $5a95: $ff
	rst SubAFromDE                                          ; $5a96: $df
	ccf                                              ; $5a97: $3f
	ld a, a                                          ; $5a98: $7f
	xor [hl]                                         ; $5a99: $ae
	ld a, a                                          ; $5a9a: $7f
	db $fd                                           ; $5a9b: $fd
	sub a                                            ; $5a9c: $97
	ld a, a                                          ; $5a9d: $7f
	ld e, a                                          ; $5a9e: $5f
	ld l, a                                          ; $5a9f: $6f
	ld a, a                                          ; $5aa0: $7f
	rra                                              ; $5aa1: $1f
	cpl                                              ; $5aa2: $2f
	ld a, a                                          ; $5aa3: $7f
	ld e, a                                          ; $5aa4: $5f
	ld h, e                                          ; $5aa5: $63
	and d                                            ; $5aa6: $a2
	sbc [hl]                                         ; $5aa7: $9e
	rst SubAFromBC                                          ; $5aa8: $e7
	ld a, e                                          ; $5aa9: $7b
	cp $d4                                           ; $5aaa: $fe $d4
	rst $38                                          ; $5aac: $ff
	ld [hl], a                                       ; $5aad: $77
	or e                                             ; $5aae: $b3
	sbc [hl]                                         ; $5aaf: $9e
	ei                                               ; $5ab0: $fb
	rst SubAFromHL                                          ; $5ab1: $d7
	rst $38                                          ; $5ab2: $ff
	sbc h                                            ; $5ab3: $9c
	cp e                                             ; $5ab4: $bb
	rst $38                                          ; $5ab5: $ff
	dec sp                                           ; $5ab6: $3b
	ld a, e                                          ; $5ab7: $7b
	ld h, b                                          ; $5ab8: $60
	ld h, e                                          ; $5ab9: $63
	xor [hl]                                         ; $5aba: $ae
	ld a, a                                          ; $5abb: $7f
	ldh [c], a                                       ; $5abc: $e2
	ld h, a                                          ; $5abd: $67
	sub e                                            ; $5abe: $93
	sub $ff                                          ; $5abf: $d6 $ff
	sbc d                                            ; $5ac1: $9a
	rst GetHLinHL                                          ; $5ac2: $cf
	rst AddAOntoHL                                          ; $5ac3: $ef
	rst JumpTable                                          ; $5ac4: $c7
	db $d3                                           ; $5ac5: $d3
	ldh [$da], a                                     ; $5ac6: $e0 $da
	rst $38                                          ; $5ac8: $ff
	sbc b                                            ; $5ac9: $98
	cpl                                              ; $5aca: $2f
	xor a                                            ; $5acb: $af
	ld a, a                                          ; $5acc: $7f
	rst $38                                          ; $5acd: $ff
	pop af                                           ; $5ace: $f1
	rst $38                                          ; $5acf: $ff
	ld sp, hl                                        ; $5ad0: $f9
	ld h, d                                          ; $5ad1: $62
	call nz, $c867                                   ; $5ad2: $c4 $67 $c8
	sbc [hl]                                         ; $5ad5: $9e
	db $fc                                           ; $5ad6: $fc
	ld l, a                                          ; $5ad7: $6f
	sub d                                            ; $5ad8: $92
	sub d                                            ; $5ad9: $92

jr_024_5ada:
	rst SubAFromBC                                          ; $5ada: $e7
	add c                                            ; $5adb: $81
	ld c, a                                          ; $5adc: $4f
	add c                                            ; $5add: $81
	rst FarCall                                          ; $5ade: $f7
	jp $e7ff                                         ; $5adf: $c3 $ff $e7


	rst FarCall                                          ; $5ae2: $f7
	ld h, a                                          ; $5ae3: $67
	ld a, a                                          ; $5ae4: $7f
	ccf                                              ; $5ae5: $3f
	dec sp                                           ; $5ae6: $3b
	db $dd                                           ; $5ae7: $dd
	ccf                                              ; $5ae8: $3f
	sbc h                                            ; $5ae9: $9c
	dec e                                            ; $5aea: $1d
	ld a, a                                          ; $5aeb: $7f
	rrca                                             ; $5aec: $0f
	sbc $7f                                          ; $5aed: $de $7f
	ld a, e                                          ; $5aef: $7b
	ld h, h                                          ; $5af0: $64
	rst SubAFromHL                                          ; $5af1: $d7
	rst $38                                          ; $5af2: $ff
	sbc l                                            ; $5af3: $9d
	di                                               ; $5af4: $f3
	ei                                               ; $5af5: $fb
	ld h, a                                          ; $5af6: $67
	add b                                            ; $5af7: $80
	sbc e                                            ; $5af8: $9b
	db $e3                                           ; $5af9: $e3
	rst $38                                          ; $5afa: $ff
	ei                                               ; $5afb: $fb
	rst FarCall                                          ; $5afc: $f7
	ld l, e                                          ; $5afd: $6b
	adc d                                            ; $5afe: $8a
	sbc [hl]                                         ; $5aff: $9e
	ld hl, sp+$5a                                    ; $5b00: $f8 $5a
	ret nz                                           ; $5b02: $c0

	rst SubAFromDE                                          ; $5b03: $df
	rst SubAFromDE                                          ; $5b04: $df
	sub d                                            ; $5b05: $92
	adc a                                            ; $5b06: $8f
	rst SubAFromDE                                          ; $5b07: $df
	cp e                                             ; $5b08: $bb
	ld hl, sp-$10                                    ; $5b09: $f8 $f0
	ld hl, sp-$20                                    ; $5b0b: $f8 $e0
	ld sp, hl                                        ; $5b0d: $f9
	ldh a, [$bb]                                     ; $5b0e: $f0 $bb
	pop af                                           ; $5b10: $f1
	rst $38                                          ; $5b11: $ff
	rst SubAFromDE                                          ; $5b12: $df
	db $dd                                           ; $5b13: $dd
	rst $38                                          ; $5b14: $ff
	ld a, e                                          ; $5b15: $7b
	reti                                             ; $5b16: $d9


	ld a, a                                          ; $5b17: $7f
	cp h                                             ; $5b18: $bc
	sbc [hl]                                         ; $5b19: $9e
	ld a, l                                          ; $5b1a: $7d
	ld a, e                                          ; $5b1b: $7b
	rst SubAFromHL                                          ; $5b1c: $d7
	sub [hl]                                         ; $5b1d: $96
	adc [hl]                                         ; $5b1e: $8e
	sbc [hl]                                         ; $5b1f: $9e
	adc a                                            ; $5b20: $8f
	rst $38                                          ; $5b21: $ff
	cp a                                             ; $5b22: $bf
	ei                                               ; $5b23: $fb
	rst SubAFromBC                                          ; $5b24: $e7
	di                                               ; $5b25: $f3
	jp $bd76                                         ; $5b26: $c3 $76 $bd


	ld a, a                                          ; $5b29: $7f
	dec d                                            ; $5b2a: $15
	ld a, a                                          ; $5b2b: $7f
	db $fc                                           ; $5b2c: $fc
	sbc l                                            ; $5b2d: $9d
	ei                                               ; $5b2e: $fb
	push bc                                          ; $5b2f: $c5
	ld a, e                                          ; $5b30: $7b
	rra                                              ; $5b31: $1f
	ld h, [hl]                                       ; $5b32: $66
	ld l, b                                          ; $5b33: $68
	ld h, [hl]                                       ; $5b34: $66
	and [hl]                                         ; $5b35: $a6
	sbc b                                            ; $5b36: $98
	ld a, a                                          ; $5b37: $7f
	rst FarCall                                          ; $5b38: $f7
	rst $38                                          ; $5b39: $ff
	ei                                               ; $5b3a: $fb
	cp $fe                                           ; $5b3b: $fe $fe
	xor $6f                                          ; $5b3d: $ee $6f
	inc sp                                           ; $5b3f: $33
	sbc h                                            ; $5b40: $9c
	ld a, [$ec84]                                    ; $5b41: $fa $84 $ec
	ld a, d                                          ; $5b44: $7a
	add h                                            ; $5b45: $84
	sbc e                                            ; $5b46: $9b
	ld a, [hl]                                       ; $5b47: $7e
	pop hl                                           ; $5b48: $e1
	db $eb                                           ; $5b49: $eb
	scf                                              ; $5b4a: $37
	ld l, e                                          ; $5b4b: $6b
	jr jr_024_5ada                                   ; $5b4c: $18 $8c

	rra                                              ; $5b4e: $1f
	ld a, $17                                        ; $5b4f: $3e $17
	rst $38                                          ; $5b51: $ff
	rlca                                             ; $5b52: $07
	ld a, a                                          ; $5b53: $7f
	cpl                                              ; $5b54: $2f
	ccf                                              ; $5b55: $3f
	ccf                                              ; $5b56: $3f
	ld h, a                                          ; $5b57: $67
	inc de                                           ; $5b58: $13
	ld d, a                                          ; $5b59: $57
	dec c                                            ; $5b5a: $0d
	dec bc                                           ; $5b5b: $0b
	rrca                                             ; $5b5c: $0f
	rlca                                             ; $5b5d: $07
	dec bc                                           ; $5b5e: $0b
	inc bc                                           ; $5b5f: $03
	rlca                                             ; $5b60: $07
	ld d, [hl]                                       ; $5b61: $56
	db $10                                           ; $5b62: $10
	call c, $9eff                                    ; $5b63: $dc $ff $9e
	ld c, a                                          ; $5b66: $4f
	ld [hl], a                                       ; $5b67: $77
	ld l, c                                          ; $5b68: $69
	sbc d                                            ; $5b69: $9a
	ld a, [$fbfc]                                    ; $5b6a: $fa $fc $fb
	db $fc                                           ; $5b6d: $fc
	cp $7b                                           ; $5b6e: $fe $7b

jr_024_5b70:
	ld h, e                                          ; $5b70: $63
	sub b                                            ; $5b71: $90
	ld sp, hl                                        ; $5b72: $f9
	rst FarCall                                          ; $5b73: $f7
	rst $38                                          ; $5b74: $ff
	ret z                                            ; $5b75: $c8

	rst $38                                          ; $5b76: $ff
	rst $38                                          ; $5b77: $ff
	xor a                                            ; $5b78: $af
	rlca                                             ; $5b79: $07
	rrca                                             ; $5b7a: $0f
	rlca                                             ; $5b7b: $07
	rst JumpTable                                          ; $5b7c: $c7
	nop                                              ; $5b7d: $00
	ret nz                                           ; $5b7e: $c0

	ld b, b                                          ; $5b7f: $40
	ld b, b                                          ; $5b80: $40
	ld a, c                                          ; $5b81: $79
	ldh [c], a                                       ; $5b82: $e2
	rst $38                                          ; $5b83: $ff
	ld e, a                                          ; $5b84: $5f
	sub c                                            ; $5b85: $91
	sbc h                                            ; $5b86: $9c
	ld a, a                                          ; $5b87: $7f
	rst AddAOntoHL                                          ; $5b88: $ef
	rst GetHLinHL                                          ; $5b89: $cf
	ld d, l                                          ; $5b8a: $55
	or b                                             ; $5b8b: $b0
	ld a, e                                          ; $5b8c: $7b
	ld [hl], e                                       ; $5b8d: $73
	ld a, a                                          ; $5b8e: $7f
	jr nz, jr_024_5b70                               ; $5b8f: $20 $df

	rst FarCall                                          ; $5b91: $f7
	rst SubAFromDE                                          ; $5b92: $df
	ld hl, sp-$80                                    ; $5b93: $f8 $80
	db $fd                                           ; $5b95: $fd
	ld hl, sp-$01                                    ; $5b96: $f8 $ff
	db $fc                                           ; $5b98: $fc
	db $fc                                           ; $5b99: $fc
	rst $38                                          ; $5b9a: $ff
	cp a                                             ; $5b9b: $bf
	cp $bf                                           ; $5b9c: $fe $bf
	cp $fe                                           ; $5b9e: $fe $fe
	db $fd                                           ; $5ba0: $fd
	ei                                               ; $5ba1: $fb
	ldh a, [$f7]                                     ; $5ba2: $f0 $f7
	dec de                                           ; $5ba4: $1b
	cp a                                             ; $5ba5: $bf
	rra                                              ; $5ba6: $1f
	or [hl]                                          ; $5ba7: $b6
	rrca                                             ; $5ba8: $0f
	ld h, a                                          ; $5ba9: $67
	add a                                            ; $5baa: $87
	cp $7b                                           ; $5bab: $fe $7b
	ld a, [hl]                                       ; $5bad: $7e
	dec de                                           ; $5bae: $1b
	rst SubAFromBC                                          ; $5baf: $e7
	rra                                              ; $5bb0: $1f
	rst SubAFromDE                                          ; $5bb1: $df
	rrca                                             ; $5bb2: $0f
	rst $38                                          ; $5bb3: $ff
	sbc [hl]                                         ; $5bb4: $9e
	rst SubAFromHL                                          ; $5bb5: $d7
	halt                                             ; $5bb6: $76
	ld c, e                                          ; $5bb7: $4b
	add b                                            ; $5bb8: $80
	cp $3f                                           ; $5bb9: $fe $3f
	rst $38                                          ; $5bbb: $ff
	rst GetHLinHL                                          ; $5bbc: $cf
	rst GetHLinHL                                          ; $5bbd: $cf
	adc [hl]                                         ; $5bbe: $8e
	rst GetHLinHL                                          ; $5bbf: $cf
	ld a, $ff                                        ; $5bc0: $3e $ff
	ld a, $f3                                        ; $5bc2: $3e $f3
	ret nz                                           ; $5bc4: $c0

	res 6, b                                         ; $5bc5: $cb $b0
	rst FarCall                                          ; $5bc7: $f7
	ld c, b                                          ; $5bc8: $48
	ld [hl], d                                       ; $5bc9: $72
	ld a, b                                          ; $5bca: $78
	ei                                               ; $5bcb: $fb
	sub b                                            ; $5bcc: $90
	rst FarCall                                          ; $5bcd: $f7
	ld [hl], c                                       ; $5bce: $71
	cp a                                             ; $5bcf: $bf
	rrca                                             ; $5bd0: $0f
	dec de                                           ; $5bd1: $1b
	dec b                                            ; $5bd2: $05
	rst $38                                          ; $5bd3: $ff
	ld hl, sp-$0b                                    ; $5bd4: $f8 $f5
	ldh [$5f], a                                     ; $5bd6: $e0 $5f
	add h                                            ; $5bd8: $84
	ld [bc], a                                       ; $5bd9: $02
	rrca                                             ; $5bda: $0f
	inc de                                           ; $5bdb: $13
	rst SubAFromBC                                          ; $5bdc: $e7
	ld l, e                                          ; $5bdd: $6b
	rst AddAOntoHL                                          ; $5bde: $ef
	db $e3                                           ; $5bdf: $e3
	rst SubAFromDE                                          ; $5be0: $df
	adc a                                            ; $5be1: $8f
	rst $38                                          ; $5be2: $ff
	cp $f7                                           ; $5be3: $fe $f7
	ld a, a                                          ; $5be5: $7f
	db $fd                                           ; $5be6: $fd
	cp $fb                                           ; $5be7: $fe $fb
	db $fc                                           ; $5be9: $fc
	ld sp, hl                                        ; $5bea: $f9
	and $f9                                          ; $5beb: $e6 $f9
	db $f4                                           ; $5bed: $f4
	db $fc                                           ; $5bee: $fc
	db $e4                                           ; $5bef: $e4
	db $ec                                           ; $5bf0: $ec
	cp h                                             ; $5bf1: $bc
	adc e                                            ; $5bf2: $8b
	inc d                                            ; $5bf3: $14
	db $d3                                           ; $5bf4: $d3
	rst $38                                          ; $5bf5: $ff
	ld d, d                                          ; $5bf6: $52
	rst $38                                          ; $5bf7: $ff
	ld [hl], a                                       ; $5bf8: $77
	add hl, bc                                       ; $5bf9: $09
	ld a, a                                          ; $5bfa: $7f
	db $fd                                           ; $5bfb: $fd
	rst SubAFromDE                                          ; $5bfc: $df
	db $db                                           ; $5bfd: $db
	sub d                                            ; $5bfe: $92
	cp a                                             ; $5bff: $bf
	rst $38                                          ; $5c00: $ff
	xor a                                            ; $5c01: $af
	ld e, [hl]                                       ; $5c02: $5e
	cp l                                             ; $5c03: $bd
	adc a                                            ; $5c04: $8f
	inc e                                            ; $5c05: $1c
	ld e, $1c                                        ; $5c06: $1e $1c
	inc e                                            ; $5c08: $1c
	nop                                              ; $5c09: $00
	rlca                                             ; $5c0a: $07
	ld bc, $e76f                                     ; $5c0b: $01 $6f $e7
	sbc l                                            ; $5c0e: $9d
	ld a, a                                          ; $5c0f: $7f
	cp [hl]                                          ; $5c10: $be
	ld [hl], l                                       ; $5c11: $75
	ld b, h                                          ; $5c12: $44
	ld a, a                                          ; $5c13: $7f
	cp $9d                                           ; $5c14: $fe $9d
	db $f4                                           ; $5c16: $f4
	ld hl, sp+$71                                    ; $5c17: $f8 $71
	add sp, -$66                                     ; $5c19: $e8 $9a
	ld e, l                                          ; $5c1b: $5d
	cp [hl]                                          ; $5c1c: $be
	ld e, a                                          ; $5c1d: $5f
	cp $9f                                           ; $5c1e: $fe $9f
	ld a, c                                          ; $5c20: $79
	ld h, d                                          ; $5c21: $62
	ld a, a                                          ; $5c22: $7f
	cp $86                                           ; $5c23: $fe $86
	ld a, c                                          ; $5c25: $79
	rrca                                             ; $5c26: $0f
	ld c, a                                          ; $5c27: $4f
	rrca                                             ; $5c28: $0f
	rrca                                             ; $5c29: $0f
	rla                                              ; $5c2a: $17
	rrca                                             ; $5c2b: $0f
	inc de                                           ; $5c2c: $13
	rlca                                             ; $5c2d: $07
	rra                                              ; $5c2e: $1f
	rlca                                             ; $5c2f: $07
	dec c                                            ; $5c30: $0d
	rrca                                             ; $5c31: $0f
	add hl, bc                                       ; $5c32: $09
	inc d                                            ; $5c33: $14
	dec d                                            ; $5c34: $15

jr_024_5c35:
	db $10                                           ; $5c35: $10
	rst $38                                          ; $5c36: $ff
	db $fd                                           ; $5c37: $fd
	ld a, [$faf8]                                    ; $5c38: $fa $f8 $fa
	ld hl, sp-$04                                    ; $5c3b: $f8 $fc
	ldh a, [$7a]                                     ; $5c3d: $f0 $7a
	ld a, b                                          ; $5c3f: $78
	ld a, a                                          ; $5c40: $7f
	rrca                                             ; $5c41: $0f
	cp $96                                           ; $5c42: $fe $96
	add sp, -$68                                     ; $5c44: $e8 $98
	ld [hl], d                                       ; $5c46: $72
	cp h                                             ; $5c47: $bc
	db $fc                                           ; $5c48: $fc
	and [hl]                                         ; $5c49: $a6
	ldh [$80], a                                     ; $5c4a: $e0 $80
	ret nz                                           ; $5c4c: $c0

	ld a, [$8f79]                                    ; $5c4d: $fa $79 $8f
	sbc $3e                                          ; $5c50: $de $3e
	rst SubAFromDE                                          ; $5c52: $df
	inc a                                            ; $5c53: $3c
	sbc $0c                                          ; $5c54: $de $0c
	ld l, a                                          ; $5c56: $6f
	ldh a, [$7f]                                     ; $5c57: $f0 $7f
	ld e, a                                          ; $5c59: $5f
	ld a, a                                          ; $5c5a: $7f
	cp d                                             ; $5c5b: $ba
	sbc e                                            ; $5c5c: $9b
	rra                                              ; $5c5d: $1f
	ld e, a                                          ; $5c5e: $5f
	ccf                                              ; $5c5f: $3f
	ccf                                              ; $5c60: $3f
	ld a, b                                          ; $5c61: $78
	jp nz, $80fd                                     ; $5c62: $c2 $fd $80

	cp $f0                                           ; $5c65: $fe $f0
	rst FarCall                                          ; $5c67: $f7
	ret z                                            ; $5c68: $c8

	db $e3                                           ; $5c69: $e3
	ret nz                                           ; $5c6a: $c0

	ldh [c], a                                       ; $5c6b: $e2
	push hl                                          ; $5c6c: $e5
	rst GetHLinHL                                          ; $5c6d: $cf
	daa                                              ; $5c6e: $27
	cpl                                              ; $5c6f: $2f
	ld a, [de]                                       ; $5c70: $1a
	sub a                                            ; $5c71: $97
	ld e, $8f                                        ; $5c72: $1e $8f
	rla                                              ; $5c74: $17
	or a                                             ; $5c75: $b7
	rrca                                             ; $5c76: $0f
	db $db                                           ; $5c77: $db
	ld a, l                                          ; $5c78: $7d
	ei                                               ; $5c79: $fb
	db $dd                                           ; $5c7a: $dd
	xor $f7                                          ; $5c7b: $ee $f7
	rst AddAOntoHL                                          ; $5c7d: $ef
	rst SubAFromBC                                          ; $5c7e: $e7
	rst FarCall                                          ; $5c7f: $f7
	rst AddAOntoHL                                          ; $5c80: $ef
	db $f4                                           ; $5c81: $f4
	add sp, -$04                                     ; $5c82: $e8 $fc
	sbc h                                            ; $5c84: $9c
	jr @-$1f                                         ; $5c85: $18 $df

	ld a, $79                                        ; $5c87: $3e $79
	ld b, e                                          ; $5c89: $43
	add b                                            ; $5c8a: $80
	rst $38                                          ; $5c8b: $ff
	or $91                                           ; $5c8c: $f6 $91
	ld sp, hl                                        ; $5c8e: $f9
	di                                               ; $5c8f: $f3
	ld a, [$08f1]                                    ; $5c90: $fa $f1 $08
	ld sp, $2039                                     ; $5c93: $31 $39 $20
	db $eb                                           ; $5c96: $eb
	ld de, $8031                                     ; $5c97: $11 $31 $80
	ld b, d                                          ; $5c9a: $42

jr_024_5c9b:
	add c                                            ; $5c9b: $81
	halt                                             ; $5c9c: $76
	nop                                              ; $5c9d: $00
	rst FarCall                                          ; $5c9e: $f7
	add hl, bc                                       ; $5c9f: $09
	call $b765                                       ; $5ca0: $cd $65 $b7
	nop                                              ; $5ca3: $00
	jp nz, $ff00                                     ; $5ca4: $c2 $00 $ff

	or $fc                                           ; $5ca7: $f6 $fc
	or b                                             ; $5ca9: $b0
	adc h                                            ; $5caa: $8c
	ldh a, [$b0]                                     ; $5cab: $f0 $b0
	cp e                                             ; $5cad: $bb
	ld h, [hl]                                       ; $5cae: $66
	cp h                                             ; $5caf: $bc
	ret nc                                           ; $5cb0: $d0

	cp h                                             ; $5cb1: $bc
	ld h, b                                          ; $5cb2: $60
	jr nc, jr_024_5c35                               ; $5cb3: $30 $80

	add b                                            ; $5cb5: $80
	nop                                              ; $5cb6: $00
	sub c                                            ; $5cb7: $91
	inc b                                            ; $5cb8: $04
	db $e3                                           ; $5cb9: $e3
	nop                                              ; $5cba: $00
	ld bc, $f0c0                                     ; $5cbb: $01 $c0 $f0
	ld hl, sp-$63                                    ; $5cbe: $f8 $9d
	cp a                                             ; $5cc0: $bf
	ld c, a                                          ; $5cc1: $4f
	ld a, b                                          ; $5cc2: $78
	jr nc, jr_024_5c9b                               ; $5cc3: $30 $d6

	rlca                                             ; $5cc5: $07
	ld [hl], c                                       ; $5cc6: $71
	ld b, l                                          ; $5cc7: $45
	ld e, e                                          ; $5cc8: $5b
	cp $9d                                           ; $5cc9: $fe $9d
	dec bc                                           ; $5ccb: $0b
	ld bc, $e273                                     ; $5ccc: $01 $73 $e2
	ld a, a                                          ; $5ccf: $7f
	inc [hl]                                         ; $5cd0: $34
	add b                                            ; $5cd1: $80
	inc b                                            ; $5cd2: $04
	dec b                                            ; $5cd3: $05
	inc bc                                           ; $5cd4: $03
	ld [bc], a                                       ; $5cd5: $02
	inc bc                                           ; $5cd6: $03
	ld bc, $f402                                     ; $5cd7: $01 $02 $f4
	ldh [$fd], a                                     ; $5cda: $e0 $fd
	db $e4                                           ; $5cdc: $e4
	reti                                             ; $5cdd: $d9


	db $fc                                           ; $5cde: $fc
	db $ec                                           ; $5cdf: $ec
	call nz, $fcfd                                   ; $5ce0: $c4 $fd $fc
	cp $5d                                           ; $5ce3: $fe $5d
	cp $dd                                           ; $5ce5: $fe $dd
	rst $38                                          ; $5ce7: $ff
	db $e3                                           ; $5ce8: $e3
	ld [hl], c                                       ; $5ce9: $71
	add hl, sp                                       ; $5cea: $39
	ld c, e                                          ; $5ceb: $4b
	dec b                                            ; $5cec: $05
	dec e                                            ; $5ced: $1d
	inc de                                           ; $5cee: $13
	ld [hl], l                                       ; $5cef: $75
	ld a, c                                          ; $5cf0: $79
	ld [hl], a                                       ; $5cf1: $77
	call nc, $8198                                   ; $5cf2: $d4 $98 $81
	ld b, $87                                        ; $5cf5: $06 $87

jr_024_5cf7:
	inc b                                            ; $5cf7: $04
	rlca                                             ; $5cf8: $07
	inc c                                            ; $5cf9: $0c
	inc bc                                           ; $5cfa: $03
	ld [hl], d                                       ; $5cfb: $72
	jr z, jr_024_5cf7                                ; $5cfc: $28 $f9

	sbc [hl]                                         ; $5cfe: $9e
	sbc b                                            ; $5cff: $98
	ldh a, [c]                                       ; $5d00: $f2
	pop de                                           ; $5d01: $d1
	rlca                                             ; $5d02: $07
	ld l, e                                          ; $5d03: $6b
	sbc b                                            ; $5d04: $98
	ret c                                            ; $5d05: $d8

	rst $38                                          ; $5d06: $ff
	ld [hl], a                                       ; $5d07: $77
	jp $5a7f                                         ; $5d08: $c3 $7f $5a


	ld e, a                                          ; $5d0b: $5f
	cp $9e                                           ; $5d0c: $fe $9e
	ld [hl], e                                       ; $5d0e: $73
	dec bc                                           ; $5d0f: $0b
	ret nz                                           ; $5d10: $c0

	ld [hl], e                                       ; $5d11: $73
	jp c, $80da                                      ; $5d12: $da $da $80

	sbc [hl]                                         ; $5d15: $9e
	ret nz                                           ; $5d16: $c0

	ld a, e                                          ; $5d17: $7b
	cp $d1                                           ; $5d18: $fe $d1
	rlca                                             ; $5d1a: $07
	ld [hl], a                                       ; $5d1b: $77
	db $ec                                           ; $5d1c: $ec
	ld [hl], a                                       ; $5d1d: $77
	cp $7e                                           ; $5d1e: $fe $7e
	adc [hl]                                         ; $5d20: $8e
	sbc h                                            ; $5d21: $9c
	and b                                            ; $5d22: $a0
	ret nz                                           ; $5d23: $c0

	ldh [$7b], a                                     ; $5d24: $e0 $7b
	cp $d3                                           ; $5d26: $fe $d3
	rlca                                             ; $5d28: $07
	rst SubAFromDE                                          ; $5d29: $df
	rrca                                             ; $5d2a: $0f
	ld a, e                                          ; $5d2b: $7b
	db $ec                                           ; $5d2c: $ec
	sbc l                                            ; $5d2d: $9d
	ldh [$f0], a                                     ; $5d2e: $e0 $f0
	ld h, a                                          ; $5d30: $67
	cp $de                                           ; $5d31: $fe $de
	ldh a, [$d9]                                     ; $5d33: $f0 $d9
	rrca                                             ; $5d35: $0f
	reti                                             ; $5d36: $d9


	rra                                              ; $5d37: $1f
	ld a, [hl]                                       ; $5d38: $7e
	ld c, b                                          ; $5d39: $48
	sbc e                                            ; $5d3a: $9b
	db $fc                                           ; $5d3b: $fc
	ld hl, sp-$04                                    ; $5d3c: $f8 $fc
	ld hl, sp+$78                                    ; $5d3e: $f8 $78
	ld l, b                                          ; $5d40: $68
	ld a, a                                          ; $5d41: $7f
	cp $73                                           ; $5d42: $fe $73
	ld e, d                                          ; $5d44: $5a
	push af                                          ; $5d45: $f5
	ld a, [hl]                                       ; $5d46: $7e
	inc a                                            ; $5d47: $3c
	ld a, a                                          ; $5d48: $7f
	xor d                                            ; $5d49: $aa
	push af                                          ; $5d4a: $f5
	ld a, a                                          ; $5d4b: $7f
	ld b, l                                          ; $5d4c: $45
	sbc e                                            ; $5d4d: $9b
	rrca                                             ; $5d4e: $0f
	ld bc, $1f1f                                     ; $5d4f: $01 $1f $1f
	db $dd                                           ; $5d52: $dd
	ccf                                              ; $5d53: $3f
	db $dd                                           ; $5d54: $dd
	ld a, a                                          ; $5d55: $7f
	db $db                                           ; $5d56: $db
	rst $38                                          ; $5d57: $ff
	sbc e                                            ; $5d58: $9b
	ldh a, [$c0]                                     ; $5d59: $f0 $c0
	ld hl, sp-$20                                    ; $5d5b: $f8 $e0
	ld h, e                                          ; $5d5d: $63
	cp h                                             ; $5d5e: $bc
	ld a, e                                          ; $5d5f: $7b
	cp [hl]                                          ; $5d60: $be
	inc b                                            ; $5d61: $04
	nop                                              ; $5d62: $00
	ldh [$7f], a                                     ; $5d63: $e0 $7f
	rst $38                                          ; $5d65: $ff
	inc e                                            ; $5d66: $1c
	nop                                              ; $5d67: $00
	di                                               ; $5d68: $f3
	sbc [hl]                                         ; $5d69: $9e
	rst $38                                          ; $5d6a: $ff
	ldh a, [c]                                       ; $5d6b: $f2
	sbc [hl]                                         ; $5d6c: $9e
	ldh a, [$f2]                                     ; $5d6d: $f0 $f2
	sbc [hl]                                         ; $5d6f: $9e
	ld e, a                                          ; $5d70: $5f
	ldh a, [c]                                       ; $5d71: $f2
	ld b, a                                          ; $5d72: $47
	ret nc                                           ; $5d73: $d0

	sbc [hl]                                         ; $5d74: $9e
	dec b                                            ; $5d75: $05
	ldh a, [c]                                       ; $5d76: $f2
	sbc l                                            ; $5d77: $9d
	ei                                               ; $5d78: $fb
	inc b                                            ; $5d79: $04
	di                                               ; $5d7a: $f3
	sbc l                                            ; $5d7b: $9d
	ld a, a                                          ; $5d7c: $7f
	add b                                            ; $5d7d: $80
	di                                               ; $5d7e: $f3
	sbc l                                            ; $5d7f: $9d
	db $fc                                           ; $5d80: $fc
	nop                                              ; $5d81: $00
	inc bc                                           ; $5d82: $03
	nop                                              ; $5d83: $00
	db $fd                                           ; $5d84: $fd
	db $fc                                           ; $5d85: $fc
	db $10                                           ; $5d86: $10
	scf                                              ; $5d87: $37
	nop                                              ; $5d88: $00
	di                                               ; $5d89: $f3
	sbc [hl]                                         ; $5d8a: $9e
	rla                                              ; $5d8b: $17
	or $99                                           ; $5d8c: $f6 $99
	dec b                                            ; $5d8e: $05
	inc bc                                           ; $5d8f: $03
	ld a, a                                          ; $5d90: $7f
	rlca                                             ; $5d91: $07
	rst $38                                          ; $5d92: $ff
	rst $38                                          ; $5d93: $ff
	rst FarCall                                          ; $5d94: $f7
	db $db                                           ; $5d95: $db
	rst $38                                          ; $5d96: $ff
	ld sp, hl                                        ; $5d97: $f9
	sbc e                                            ; $5d98: $9b
	ld bc, $ff00                                     ; $5d99: $01 $00 $ff
	db $e3                                           ; $5d9c: $e3
	ld l, a                                          ; $5d9d: $6f
	ldh a, [$98]                                     ; $5d9e: $f0 $98
	inc bc                                           ; $5da0: $03
	nop                                              ; $5da1: $00
	rrca                                             ; $5da2: $0f
	rra                                              ; $5da3: $1f
	cp a                                             ; $5da4: $bf
	ld a, a                                          ; $5da5: $7f
	ld a, a                                          ; $5da6: $7f
	reti                                             ; $5da7: $d9


	rst $38                                          ; $5da8: $ff
	ld h, e                                          ; $5da9: $63
	rst FarCall                                          ; $5daa: $f7
	db $db                                           ; $5dab: $db
	rst $38                                          ; $5dac: $ff
	adc a                                            ; $5dad: $8f
	ret nz                                           ; $5dae: $c0

	nop                                              ; $5daf: $00
	ret nz                                           ; $5db0: $c0

	add b                                            ; $5db1: $80
	ldh [$c0], a                                     ; $5db2: $e0 $c0
	ldh a, [$e0]                                     ; $5db4: $f0 $e0
	ld hl, sp-$10                                    ; $5db6: $f8 $f0
	rst $38                                          ; $5db8: $ff
	db $fc                                           ; $5db9: $fc
	rst $38                                          ; $5dba: $ff
	cp $ff                                           ; $5dbb: $fe $ff
	rst $38                                          ; $5dbd: $ff
	inc bc                                           ; $5dbe: $03
	nop                                              ; $5dbf: $00
	ei                                               ; $5dc0: $fb
	add sp, $02                                      ; $5dc1: $e8 $02
	di                                               ; $5dc3: $f3
	sub b                                            ; $5dc4: $90
	dec bc                                           ; $5dc5: $0b
	rlca                                             ; $5dc6: $07
	cpl                                              ; $5dc7: $2f
	rra                                              ; $5dc8: $1f
	rra                                              ; $5dc9: $1f
	ccf                                              ; $5dca: $3f
	ld a, l                                          ; $5dcb: $7d
	dec sp                                           ; $5dcc: $3b
	ld a, c                                          ; $5dcd: $79
	inc sp                                           ; $5dce: $33
	ld a, e                                          ; $5dcf: $7b
	ccf                                              ; $5dd0: $3f
	rra                                              ; $5dd1: $1f
	ccf                                              ; $5dd2: $3f
	ccf                                              ; $5dd3: $3f
	sbc $1f                                          ; $5dd4: $de $1f
	db $fd                                           ; $5dd6: $fd
	sbc d                                            ; $5dd7: $9a
	rlca                                             ; $5dd8: $07
	rrca                                             ; $5dd9: $0f
	rrca                                             ; $5dda: $0f
	rra                                              ; $5ddb: $1f
	rrca                                             ; $5ddc: $0f
	sbc $1f                                          ; $5ddd: $de $1f
	sub e                                            ; $5ddf: $93
	ccf                                              ; $5de0: $3f
	ld e, $fa                                        ; $5de1: $1e $fa
	db $fc                                           ; $5de3: $fc
	db $fc                                           ; $5de4: $fc
	ld hl, sp-$08                                    ; $5de5: $f8 $f8
	db $fc                                           ; $5de7: $fc
	ld sp, hl                                        ; $5de8: $f9
	db $fc                                           ; $5de9: $fc
	rst $38                                          ; $5dea: $ff
	db $fd                                           ; $5deb: $fd
	db $dd                                           ; $5dec: $dd
	rst $38                                          ; $5ded: $ff
	sbc e                                            ; $5dee: $9b
	rst FarCall                                          ; $5def: $f7
	rst $38                                          ; $5df0: $ff
	rst FarCall                                          ; $5df1: $f7
	db $e3                                           ; $5df2: $e3
	db $fd                                           ; $5df3: $fd
	sbc $80                                          ; $5df4: $de $80
	ld a, e                                          ; $5df6: $7b
	db $fc                                           ; $5df7: $fc
	ei                                               ; $5df8: $fb
	sbc l                                            ; $5df9: $9d
	ldh [$c0], a                                     ; $5dfa: $e0 $c0
	ld [hl], a                                       ; $5dfc: $77
	cp $df                                           ; $5dfd: $fe $df
	ret nz                                           ; $5dff: $c0

	sbc [hl]                                         ; $5e00: $9e
	add b                                            ; $5e01: $80
	ld a, e                                          ; $5e02: $7b
	db $fd                                           ; $5e03: $fd
	ld h, e                                          ; $5e04: $63
	db $eb                                           ; $5e05: $eb
	ldh a, [hDisp1_WY]                                     ; $5e06: $f0 $95
	ld bc, $0300                                     ; $5e08: $01 $00 $03
	ld bc, $0303                                     ; $5e0b: $01 $03 $03
	rlca                                             ; $5e0e: $07
	inc bc                                           ; $5e0f: $03
	rlca                                             ; $5e10: $07
	rlca                                             ; $5e11: $07
	ld a, e                                          ; $5e12: $7b
	sbc h                                            ; $5e13: $9c
	db $db                                           ; $5e14: $db
	ccf                                              ; $5e15: $3f
	ld a, a                                          ; $5e16: $7f
	ld sp, hl                                        ; $5e17: $f9
	ld a, e                                          ; $5e18: $7b
	rst FarCall                                          ; $5e19: $f7
	sbc d                                            ; $5e1a: $9a
	ld a, a                                          ; $5e1b: $7f
	ccf                                              ; $5e1c: $3f
	ld a, h                                          ; $5e1d: $7c
	ld a, [hl]                                       ; $5e1e: $7e
	ld a, h                                          ; $5e1f: $7c
	db $dd                                           ; $5e20: $dd
	ld hl, sp-$21                                    ; $5e21: $f8 $df
	ldh a, [$df]                                     ; $5e23: $f0 $df
	ldh [$de], a                                     ; $5e25: $e0 $de
	ret nz                                           ; $5e27: $c0

	sbc h                                            ; $5e28: $9c
	add c                                            ; $5e29: $81
	add b                                            ; $5e2a: $80
	di                                               ; $5e2b: $f3
	ld a, e                                          ; $5e2c: $7b
	ld hl, sp+$77                                    ; $5e2d: $f8 $77
	or $7f                                           ; $5e2f: $f6 $7f
	ldh a, [$8c]                                     ; $5e31: $f0 $8c
	ldh a, [$f8]                                     ; $5e33: $f0 $f8
	db $fc                                           ; $5e35: $fc
	cp $fc                                           ; $5e36: $fe $fc
	cp $be                                           ; $5e38: $fe $be
	ld a, h                                          ; $5e3a: $7c
	ld a, h                                          ; $5e3b: $7c
	inc a                                            ; $5e3c: $3c
	ld a, h                                          ; $5e3d: $7c
	jr c, jr_024_5e78                                ; $5e3e: $38 $38

	ld a, b                                          ; $5e40: $78
	ld [hl], b                                       ; $5e41: $70
	ld a, b                                          ; $5e42: $78
	ldh a, [rSVBK]                                   ; $5e43: $f0 $70
	ldh [$7b], a                                     ; $5e45: $e0 $7b
	db $db                                           ; $5e47: $db
	rst SubAFromDE                                          ; $5e48: $df
	rrca                                             ; $5e49: $0f
	sub l                                            ; $5e4a: $95
	ld c, $1f                                        ; $5e4b: $0e $1f
	ld a, $1e                                        ; $5e4d: $3e $1e
	inc e                                            ; $5e4f: $1c
	inc a                                            ; $5e50: $3c
	inc e                                            ; $5e51: $1c
	inc e                                            ; $5e52: $1c
	ld c, $0c                                        ; $5e53: $0e $0c
	db $ed                                           ; $5e55: $ed
	ld a, a                                          ; $5e56: $7f
	jp c, $709b                                      ; $5e57: $da $9b $70

	jr c, jr_024_5e8c                                ; $5e5a: $38 $30

	db $10                                           ; $5e5c: $10
	ldh [$d7], a                                     ; $5e5d: $e0 $d7
	ld a, e                                          ; $5e5f: $7b
	ld h, [hl]                                       ; $5e60: $66
	sbc l                                            ; $5e61: $9d
	inc bc                                           ; $5e62: $03
	rrca                                             ; $5e63: $0f
	ld [hl], a                                       ; $5e64: $77
	rrca                                             ; $5e65: $0f
	ld a, a                                          ; $5e66: $7f
	xor c                                            ; $5e67: $a9
	ld a, e                                          ; $5e68: $7b
	ld sp, hl                                        ; $5e69: $f9
	rst SubAFromDE                                          ; $5e6a: $df
	rlca                                             ; $5e6b: $07
	ld l, e                                          ; $5e6c: $6b
	nop                                              ; $5e6d: $00
	ld [hl], d                                       ; $5e6e: $72
	cp $9a                                           ; $5e6f: $fe $9a
	ld e, $1f                                        ; $5e71: $1e $1f
	inc a                                            ; $5e73: $3c
	ld a, [hl]                                       ; $5e74: $7e
	cp $de                                           ; $5e75: $fe $de
	db $fc                                           ; $5e77: $fc

jr_024_5e78:
	ld a, e                                          ; $5e78: $7b
	db $fc                                           ; $5e79: $fc
	ld a, e                                          ; $5e7a: $7b
	halt                                             ; $5e7b: $76
	sbc $fe                                          ; $5e7c: $de $fe
	ld a, d                                          ; $5e7e: $7a
	cp $5f                                           ; $5e7f: $fe $5f
	nop                                              ; $5e81: $00
	scf                                              ; $5e82: $37
	inc d                                            ; $5e83: $14
	ld a, a                                          ; $5e84: $7f
	ld b, [hl]                                       ; $5e85: $46
	rst FarCall                                          ; $5e86: $f7
	sub e                                            ; $5e87: $93
	inc c                                            ; $5e88: $0c
	inc b                                            ; $5e89: $04
	ld e, $0e                                        ; $5e8a: $1e $0e

jr_024_5e8c:
	ccf                                              ; $5e8c: $3f
	rra                                              ; $5e8d: $1f
	dec sp                                           ; $5e8e: $3b
	rra                                              ; $5e8f: $1f
	rlca                                             ; $5e90: $07
	rlca                                             ; $5e91: $07
	inc bc                                           ; $5e92: $03
	ld bc, $76f7                                     ; $5e93: $01 $f7 $76
	ei                                               ; $5e96: $fb
	ld [hl], a                                       ; $5e97: $77
	sub a                                            ; $5e98: $97
	ld a, [hl]                                       ; $5e99: $7e
	add [hl]                                         ; $5e9a: $86
	rst SubAFromDE                                          ; $5e9b: $df
	rlca                                             ; $5e9c: $07
	rst SubAFromDE                                          ; $5e9d: $df
	rrca                                             ; $5e9e: $0f
	sbc l                                            ; $5e9f: $9d
	ccf                                              ; $5ea0: $3f
	sbc a                                            ; $5ea1: $9f
	sbc $ff                                          ; $5ea2: $de $ff
	rst SubAFromDE                                          ; $5ea4: $df
	cp $9c                                           ; $5ea5: $fe $9c
	db $fc                                           ; $5ea7: $fc
	or b                                             ; $5ea8: $b0
	ld a, b                                          ; $5ea9: $78
	ld sp, hl                                        ; $5eaa: $f9
	sbc e                                            ; $5eab: $9b
	ei                                               ; $5eac: $fb
	rst FarCall                                          ; $5ead: $f7
	ld sp, hl                                        ; $5eae: $f9
	di                                               ; $5eaf: $f3
	rst SubAFromHL                                          ; $5eb0: $d7
	ldh a, [$7e]                                     ; $5eb1: $f0 $7e
	add sp, $7f                                      ; $5eb3: $e8 $7f
	cp $9a                                           ; $5eb5: $fe $9a
	ld a, b                                          ; $5eb7: $78
	ld hl, sp-$04                                    ; $5eb8: $f8 $fc
	ld a, b                                          ; $5eba: $78
	ld a, b                                          ; $5ebb: $78
	sbc $3c                                          ; $5ebc: $de $3c
	sub a                                            ; $5ebe: $97
	ld e, $3c                                        ; $5ebf: $1e $3c
	ld a, $1e                                        ; $5ec1: $3e $1e
	rra                                              ; $5ec3: $1f
	ld e, $e0                                        ; $5ec4: $1e $e0
	ret nz                                           ; $5ec6: $c0

	ld [hl+], a                                      ; $5ec7: $22
	sbc e                                            ; $5ec8: $9b
	db $fc                                           ; $5ec9: $fc
	ld a, a                                          ; $5eca: $7f
	ld c, c                                          ; $5ecb: $49
	sbc $0f                                          ; $5ecc: $de $0f
	sbc $07                                          ; $5ece: $de $07
	sbc l                                            ; $5ed0: $9d
	ld b, $03                                        ; $5ed1: $06 $03
	db $eb                                           ; $5ed3: $eb
	sbc h                                            ; $5ed4: $9c
	ld b, b                                          ; $5ed5: $40
	nop                                              ; $5ed6: $00
	ret nz                                           ; $5ed7: $c0

	sbc $e0                                          ; $5ed8: $de $e0
	ld a, d                                          ; $5eda: $7a
	ld d, h                                          ; $5edb: $54
	ldh [$d0], a                                     ; $5edc: $e0 $d0
	ld a, a                                          ; $5ede: $7f
	dec sp                                           ; $5edf: $3b
	rst SubAFromDE                                          ; $5ee0: $df
	ld bc, $03df                                     ; $5ee1: $01 $df $03
	ei                                               ; $5ee4: $fb
	ld h, [hl]                                       ; $5ee5: $66
	sbc $7e                                          ; $5ee6: $de $7e
	res 2, a                                         ; $5ee8: $cb $97
	dec e                                            ; $5eea: $1d
	ld e, $3e                                        ; $5eeb: $1e $3e
	inc a                                            ; $5eed: $3c
	ld a, [hl]                                       ; $5eee: $7e
	ld a, h                                          ; $5eef: $7c
	db $fc                                           ; $5ef0: $fc
	ld a, [hl]                                       ; $5ef1: $7e
	ld a, d                                          ; $5ef2: $7a
	ldh [$de], a                                     ; $5ef3: $e0 $de
	db $fc                                           ; $5ef5: $fc
	ld a, a                                          ; $5ef6: $7f
	ld d, l                                          ; $5ef7: $55
	ei                                               ; $5ef8: $fb
	ld e, $de                                        ; $5ef9: $1e $de
	ld [hl], l                                       ; $5efb: $75
	db $fc                                           ; $5efc: $fc
	ld a, e                                          ; $5efd: $7b
	ld h, b                                          ; $5efe: $60
	ld [hl], a                                       ; $5eff: $77
	jp Jump_024_5777                                 ; $5f00: $c3 $77 $57


	sbc [hl]                                         ; $5f03: $9e
	rrca                                             ; $5f04: $0f
	ld a, e                                          ; $5f05: $7b
	pop af                                           ; $5f06: $f1
	sbc h                                            ; $5f07: $9c
	inc bc                                           ; $5f08: $03
	rla                                              ; $5f09: $17
	rrca                                             ; $5f0a: $0f
	db $dd                                           ; $5f0b: $dd
	rst $38                                          ; $5f0c: $ff
	sbc c                                            ; $5f0d: $99
	rst AddAOntoHL                                          ; $5f0e: $ef
	di                                               ; $5f0f: $f3
	ld h, e                                          ; $5f10: $63
	rst JumpTable                                          ; $5f11: $c7
	ld b, a                                          ; $5f12: $47
	rst JumpTable                                          ; $5f13: $c7
	ld a, c                                          ; $5f14: $79
	sub b                                            ; $5f15: $90
	sbc l                                            ; $5f16: $9d
	ld hl, sp-$0c                                    ; $5f17: $f8 $f4
	ld [hl], d                                       ; $5f19: $72
	ld b, $9c                                        ; $5f1a: $06 $9c
	ret nz                                           ; $5f1c: $c0

	db $fc                                           ; $5f1d: $fc
	ret nz                                           ; $5f1e: $c0

	halt                                             ; $5f1f: $76
	rrca                                             ; $5f20: $0f
	ld a, c                                          ; $5f21: $79
	rst FarCall                                          ; $5f22: $f7
	ld a, a                                          ; $5f23: $7f
	db $fd                                           ; $5f24: $fd
	ld a, e                                          ; $5f25: $7b
	ld c, h                                          ; $5f26: $4c
	ld [hl], c                                       ; $5f27: $71
	sbc [hl]                                         ; $5f28: $9e
	rst SubAFromDE                                          ; $5f29: $df
	add b                                            ; $5f2a: $80
	halt                                             ; $5f2b: $76
	ret                                              ; $5f2c: $c9


	sub a                                            ; $5f2d: $97
	ld c, $0f                                        ; $5f2e: $0e $0f
	ld e, $0e                                        ; $5f30: $1e $0e
	inc e                                            ; $5f32: $1c
	ld e, $1e                                        ; $5f33: $1e $1e
	inc e                                            ; $5f35: $1c
	rrca                                             ; $5f36: $0f
	ld d, e                                          ; $5f37: $53
	ld [hl], e                                       ; $5f38: $73
	ld c, a                                          ; $5f39: $4f
	ld a, e                                          ; $5f3a: $7b
	db $fd                                           ; $5f3b: $fd
	ld [hl], a                                       ; $5f3c: $77
	ld c, d                                          ; $5f3d: $4a
	ld a, c                                          ; $5f3e: $79
	add h                                            ; $5f3f: $84
	ld [hl], e                                       ; $5f40: $73
	adc d                                            ; $5f41: $8a
	rst SubAFromDE                                          ; $5f42: $df
	rrca                                             ; $5f43: $0f
	rst $38                                          ; $5f44: $ff
	sbc l                                            ; $5f45: $9d
	db $fc                                           ; $5f46: $fc
	ld a, h                                          ; $5f47: $7c
	ld a, e                                          ; $5f48: $7b
	ld e, c                                          ; $5f49: $59
	sbc l                                            ; $5f4a: $9d
	db $fc                                           ; $5f4b: $fc
	ldh a, [$75]                                     ; $5f4c: $f0 $75
	adc h                                            ; $5f4e: $8c
	ld [hl], l                                       ; $5f4f: $75
	sbc e                                            ; $5f50: $9b
	ld l, [hl]                                       ; $5f51: $6e
	sbc e                                            ; $5f52: $9b
	ld [hl], e                                       ; $5f53: $73
	cp $77                                           ; $5f54: $fe $77
	ei                                               ; $5f56: $fb
	sbc l                                            ; $5f57: $9d
	rra                                              ; $5f58: $1f
	dec c                                            ; $5f59: $0d
	ld [hl], e                                       ; $5f5a: $73
	ld h, l                                          ; $5f5b: $65
	ld a, e                                          ; $5f5c: $7b
	cp $9a                                           ; $5f5d: $fe $9a
	dec de                                           ; $5f5f: $1b
	rrca                                             ; $5f60: $0f
	dec bc                                           ; $5f61: $0b
	rrca                                             ; $5f62: $0f
	inc bc                                           ; $5f63: $03
	ld [hl], l                                       ; $5f64: $75
	ld c, c                                          ; $5f65: $49
	call c, $7f01                                    ; $5f66: $dc $01 $7f
	ld a, [$587f]                                    ; $5f69: $fa $7f $58
	ld [hl], l                                       ; $5f6c: $75
	ret c                                            ; $5f6d: $d8

	ld [hl], a                                       ; $5f6e: $77
	ret nc                                           ; $5f6f: $d0

	ld a, a                                          ; $5f70: $7f
	ret nz                                           ; $5f71: $c0

	ld [hl], c                                       ; $5f72: $71
	pop af                                           ; $5f73: $f1
	sbc h                                            ; $5f74: $9c
	rst FarCall                                          ; $5f75: $f7
	ei                                               ; $5f76: $fb
	rst FarCall                                          ; $5f77: $f7
	ld [hl], a                                       ; $5f78: $77
	ldh a, [c]                                       ; $5f79: $f2
	ld [hl], c                                       ; $5f7a: $71
	ld b, c                                          ; $5f7b: $41
	sbc l                                            ; $5f7c: $9d
	ld hl, sp-$18                                    ; $5f7d: $f8 $e8
	ld l, e                                          ; $5f7f: $6b
	ld e, d                                          ; $5f80: $5a
	ld l, l                                          ; $5f81: $6d
	ld hl, $c37f                                     ; $5f82: $21 $7f $c3
	ld a, e                                          ; $5f85: $7b
	ld [hl+], a                                      ; $5f86: $22
	ld [hl], c                                       ; $5f87: $71
	or h                                             ; $5f88: $b4
	pop af                                           ; $5f89: $f1
	ld l, a                                          ; $5f8a: $6f
	ld a, [hl-]                                      ; $5f8b: $3a
	sbc $80                                          ; $5f8c: $de $80
	ld a, c                                          ; $5f8e: $79
	ld a, [de]                                       ; $5f8f: $1a
	ldh [$d3], a                                     ; $5f90: $e0 $d3
	ld a, c                                          ; $5f92: $79
	cp e                                             ; $5f93: $bb
	sbc $01                                          ; $5f94: $de $01
	ld [hl], e                                       ; $5f96: $73
	or $79                                           ; $5f97: $f6 $79

jr_024_5f99:
	cp e                                             ; $5f99: $bb
	ld [hl], c                                       ; $5f9a: $71
	cp d                                             ; $5f9b: $ba
	ld a, d                                          ; $5f9c: $7a
	ld a, h                                          ; $5f9d: $7c
	ld a, l                                          ; $5f9e: $7d
	db $ec                                           ; $5f9f: $ec
	sbc b                                            ; $5fa0: $98
	ccf                                              ; $5fa1: $3f
	ld a, $3f                                        ; $5fa2: $3e $3f
	ld a, [hl]                                       ; $5fa4: $7e
	ld a, a                                          ; $5fa5: $7f
	ld a, [hl]                                       ; $5fa6: $7e
	ld a, l                                          ; $5fa7: $7d
	ld [hl], a                                       ; $5fa8: $77
	ld l, l                                          ; $5fa9: $6d
	ld a, d                                          ; $5faa: $7a
	ret                                              ; $5fab: $c9


	ld l, a                                          ; $5fac: $6f
	sbc e                                            ; $5fad: $9b
	ld [hl], a                                       ; $5fae: $77
	ld [hl], l                                       ; $5faf: $75
	halt                                             ; $5fb0: $76
	adc $3b                                          ; $5fb1: $ce $3b
	cp d                                             ; $5fb3: $ba
	ld l, [hl]                                       ; $5fb4: $6e
	di                                               ; $5fb5: $f3
	halt                                             ; $5fb6: $76
	pop af                                           ; $5fb7: $f1
	halt                                             ; $5fb8: $76
	add c                                            ; $5fb9: $81
	ld a, d                                          ; $5fba: $7a
	ld [hl], c                                       ; $5fbb: $71
	halt                                             ; $5fbc: $76
	ld a, [hl]                                       ; $5fbd: $7e
	ld a, e                                          ; $5fbe: $7b
	or b                                             ; $5fbf: $b0
	ld [hl], a                                       ; $5fc0: $77
	jp hl                                            ; $5fc1: $e9


	ld a, e                                          ; $5fc2: $7b
	cp $9e                                           ; $5fc3: $fe $9e
	ld a, [$3b76]                                    ; $5fc5: $fa $76 $3b
	ret c                                            ; $5fc8: $d8

	ld hl, sp-$62                                    ; $5fc9: $f8 $9e
	ret c                                            ; $5fcb: $d8

	ld [hl], a                                       ; $5fcc: $77
	cp $9c                                           ; $5fcd: $fe $9c
	ret c                                            ; $5fcf: $d8

	ret nz                                           ; $5fd0: $c0

	ret c                                            ; $5fd1: $d8

	ld a, e                                          ; $5fd2: $7b
	ld c, e                                          ; $5fd3: $4b
	ld [hl], d                                       ; $5fd4: $72
	add b                                            ; $5fd5: $80
	ld a, a                                          ; $5fd6: $7f
	cp $73                                           ; $5fd7: $fe $73
	call nz, $b672                                   ; $5fd9: $c4 $72 $b6
	halt                                             ; $5fdc: $76
	or h                                             ; $5fdd: $b4
	scf                                              ; $5fde: $37
	rra                                              ; $5fdf: $1f
	ld a, d                                          ; $5fe0: $7a
	ld b, $73                                        ; $5fe1: $06 $73
	ld hl, sp-$62                                    ; $5fe3: $f8 $9e
	ld b, b                                          ; $5fe5: $40
	ld bc, $3b9c                                     ; $5fe6: $01 $9c $3b
	ld h, d                                          ; $5fe9: $62
	ld e, b                                          ; $5fea: $58
	sub $57                                          ; $5feb: $d6 $57
	ld b, $7c                                        ; $5fed: $06 $7c
	jp nc, $2f9b                                     ; $5fef: $d2 $9b $2f

	rra                                              ; $5ff2: $1f
	ccf                                              ; $5ff3: $3f
	ld a, a                                          ; $5ff4: $7f
	db $dd                                           ; $5ff5: $dd
	rst $38                                          ; $5ff6: $ff
	ldh a, [$df]                                     ; $5ff7: $f0 $df
	jr nc, jr_024_5f99                               ; $5ff9: $30 $9e

	ld a, b                                          ; $5ffb: $78
	ld a, e                                          ; $5ffc: $7b
	ld d, b                                          ; $5ffd: $50
	ld a, e                                          ; $5ffe: $7b
	db $fd                                           ; $5fff: $fd
	sbc l                                            ; $6000: $9d
	ret z                                            ; $6001: $c8

	or b                                             ; $6002: $b0
	ld [hl], a                                       ; $6003: $77
	add h                                            ; $6004: $84
	ld [hl], d                                       ; $6005: $72
	ld d, $7e                                        ; $6006: $16 $7e
	jp hl                                            ; $6008: $e9


	ld a, a                                          ; $6009: $7f
	jp nc, $fd77                                     ; $600a: $d2 $77 $fd

	ld a, e                                          ; $600d: $7b
	cp $77                                           ; $600e: $fe $77
	ei                                               ; $6010: $fb
	ld a, e                                          ; $6011: $7b
	pop af                                           ; $6012: $f1
	ld [hl], e                                       ; $6013: $73
	inc d                                            ; $6014: $14
	ld [hl], a                                       ; $6015: $77
	inc c                                            ; $6016: $0c
	ld [hl], b                                       ; $6017: $70
	sub b                                            ; $6018: $90
	ld a, d                                          ; $6019: $7a
	sub $7f                                          ; $601a: $d6 $7f
	adc $7e                                          ; $601c: $ce $7e
	ld c, h                                          ; $601e: $4c
	ld [hl], l                                       ; $601f: $75
	and c                                            ; $6020: $a1
	ld l, [hl]                                       ; $6021: $6e
	ld [hl], c                                       ; $6022: $71
	ld [hl], a                                       ; $6023: $77
	add $65                                          ; $6024: $c6 $65
	ld h, $6e                                        ; $6026: $26 $6e
	and a                                            ; $6028: $a7
	inc hl                                           ; $6029: $23
	jr nz, jr_024_608f                               ; $602a: $20 $63

	jr jr_024_6031                                   ; $602c: $18 $03

	jr nz, jr_024_605e                               ; $602e: $20 $2e

	inc a                                            ; $6030: $3c

jr_024_6031:
	add sp, $7c                                      ; $6031: $e8 $7c
	ld a, [$5f9e]                                    ; $6033: $fa $9e $5f
	ld a, e                                          ; $6036: $7b
	dec e                                            ; $6037: $1d
	jp hl                                            ; $6038: $e9


	sbc e                                            ; $6039: $9b
	inc e                                            ; $603a: $1c

jr_024_603b:
	jr c, jr_024_603b                                ; $603b: $38 $fe

	ld a, h                                          ; $603d: $7c
	halt                                             ; $603e: $76
	rra                                              ; $603f: $1f
	ld l, l                                          ; $6040: $6d
	ld a, b                                          ; $6041: $78
	ld [hl], h                                       ; $6042: $74
	ret nz                                           ; $6043: $c0

	ld a, e                                          ; $6044: $7b
	ld a, [hl+]                                      ; $6045: $2a
	sbc $1f                                          ; $6046: $de $1f
	ld [hl], e                                       ; $6048: $73
	inc h                                            ; $6049: $24
	ld l, d                                          ; $604a: $6a
	inc [hl]                                         ; $604b: $34
	ld l, e                                          ; $604c: $6b
	jr nz, @-$22                                     ; $604d: $20 $dc

	rst $38                                          ; $604f: $ff
	ld [hl], c                                       ; $6050: $71
	di                                               ; $6051: $f3
	ld a, c                                          ; $6052: $79
	ld h, a                                          ; $6053: $67
	ld l, e                                          ; $6054: $6b
	ld e, $6e                                        ; $6055: $1e $6e
	ld l, h                                          ; $6057: $6c
	cp $9b                                           ; $6058: $fe $9b
	cp [hl]                                          ; $605a: $be
	db $fc                                           ; $605b: $fc
	xor h                                            ; $605c: $ac
	sub h                                            ; $605d: $94

jr_024_605e:
	ld h, e                                          ; $605e: $63
	di                                               ; $605f: $f3
	ldh [$d4], a                                     ; $6060: $e0 $d4
	ld a, a                                          ; $6062: $7f
	ld h, b                                          ; $6063: $60
	sbc [hl]                                         ; $6064: $9e
	ld a, a                                          ; $6065: $7f
	inc hl                                           ; $6066: $23
	ld h, b                                          ; $6067: $60

jr_024_6068:
	sbc e                                            ; $6068: $9b
	inc b                                            ; $6069: $04
	jr jr_024_6068                                   ; $606a: $18 $fc

	inc a                                            ; $606c: $3c
	db $dd                                           ; $606d: $dd
	cp $7f                                           ; $606e: $fe $7f
	and d                                            ; $6070: $a2
	ld e, a                                          ; $6071: $5f
	ld h, b                                          ; $6072: $60
	db $db                                           ; $6073: $db
	rra                                              ; $6074: $1f
	dec hl                                           ; $6075: $2b

Jump_024_6076:
	ld h, b                                          ; $6076: $60
	ld [hl], a                                       ; $6077: $77
	ld h, d                                          ; $6078: $62
	ld a, e                                          ; $6079: $7b
	ld h, c                                          ; $607a: $61
	ld h, d                                          ; $607b: $62
	ld a, [hl]                                       ; $607c: $7e
	ld h, e                                          ; $607d: $63
	ld l, l                                          ; $607e: $6d
	sbc l                                            ; $607f: $9d
	cp $94                                           ; $6080: $fe $94
	ld [hl], a                                       ; $6082: $77
	ldh a, [c]                                       ; $6083: $f2
	ldh [$d3], a                                     ; $6084: $e0 $d3
	sbc d                                            ; $6086: $9a
	ld [$1c10], sp                                   ; $6087: $08 $10 $1c
	inc a                                            ; $608a: $3c
	ld a, h                                          ; $608b: $7c
	ld [hl], e                                       ; $608c: $73
	xor [hl]                                         ; $608d: $ae
	sbc l                                            ; $608e: $9d

jr_024_608f:
	cp b                                             ; $608f: $b8
	call nc, $316e                                   ; $6090: $d4 $6e $31

Jump_024_6093:
	ldh [$cf], a                                     ; $6093: $e0 $cf
	sbc l                                            ; $6095: $9d
	ld [bc], a                                       ; $6096: $02
	ld bc, $2027                                     ; $6097: $01 $27 $20
	sbc c                                            ; $609a: $99
	jr c, jr_024_609d                                ; $609b: $38 $00

jr_024_609d:
	jr c, jr_024_611b                                ; $609d: $38 $7c

	db $fc                                           ; $609f: $fc
	ld a, h                                          ; $60a0: $7c
	ld [hl], l                                       ; $60a1: $75
	sbc h                                            ; $60a2: $9c
	sbc l                                            ; $60a3: $9d
	ldh a, [$d8]                                     ; $60a4: $f0 $d8
	ld l, b                                          ; $60a6: $68
	ld b, d                                          ; $60a7: $42
	or $84                                           ; $60a8: $f6 $84
	ld bc, $9de9                                     ; $60aa: $01 $e9 $9d
	ld bc, $dd06                                     ; $60ad: $01 $06 $dd
	rrca                                             ; $60b0: $0f
	sbc l                                            ; $60b1: $9d
	rlca                                             ; $60b2: $07
	rrca                                             ; $60b3: $0f
	and $99                                          ; $60b4: $e6 $99
	add b                                            ; $60b6: $80
	ret nz                                           ; $60b7: $c0

	add b                                            ; $60b8: $80
	add b                                            ; $60b9: $80
	ret nz                                           ; $60ba: $c0

	rrca                                             ; $60bb: $0f
	db $dd                                           ; $60bc: $dd
	rlca                                             ; $60bd: $07
	rst SubAFromDE                                          ; $60be: $df
	inc bc                                           ; $60bf: $03
	ld a, a                                          ; $60c0: $7f
	rst SubAFromHL                                          ; $60c1: $d7
	rst SubAFromDE                                          ; $60c2: $df
	rlca                                             ; $60c3: $07
	sbc e                                            ; $60c4: $9b
	rrca                                             ; $60c5: $0f
	rla                                              ; $60c6: $17
	rrca                                             ; $60c7: $0f
	rra                                              ; $60c8: $1f
	ld e, e                                          ; $60c9: $5b
	cp $77                                           ; $60ca: $fe $77
	ei                                               ; $60cc: $fb
	rst SubAFromDE                                          ; $60cd: $df
	rra                                              ; $60ce: $1f
	sbc d                                            ; $60cf: $9a
	ldh [$c0], a                                     ; $60d0: $e0 $c0
	ret nz                                           ; $60d2: $c0

	ldh [$c0], a                                     ; $60d3: $e0 $c0

jr_024_60d5:
	sub $e0                                          ; $60d5: $d6 $e0
	sub a                                            ; $60d7: $97
	add sp, -$20                                     ; $60d8: $e8 $e0
	ld hl, sp-$08                                    ; $60da: $f8 $f8
	ldh a, [$f8]                                     ; $60dc: $f0 $f8
	add sp, -$70                                     ; $60de: $e8 $90
	ld a, e                                          ; $60e0: $7b
	jp $e777                                         ; $60e1: $c3 $77 $e7


	sbc [hl]                                         ; $60e4: $9e
	ret nz                                           ; $60e5: $c0

	sbc $1f                                          ; $60e6: $de $1f
	ld a, e                                          ; $60e8: $7b
	sbc d                                            ; $60e9: $9a
	db $db                                           ; $60ea: $db
	rlca                                             ; $60eb: $07
	ld [hl], a                                       ; $60ec: $77
	rst FarCall                                          ; $60ed: $f7
	ld a, a                                          ; $60ee: $7f
	cp $9a                                           ; $60ef: $fe $9a
	ld c, $07                                        ; $60f1: $0e $07
	rrca                                             ; $60f3: $0f
	ld b, $0e                                        ; $60f4: $06 $0e
	ld a, e                                          ; $60f6: $7b
	cp $99                                           ; $60f7: $fe $99
	inc b                                            ; $60f9: $04
	ld c, $04                                        ; $60fa: $0e $04
	ld c, $2e                                        ; $60fc: $0e $2e
	inc e                                            ; $60fe: $1c
	reti                                             ; $60ff: $d9


	ldh [$9d], a                                     ; $6100: $e0 $9d
	and b                                            ; $6102: $a0
	ret nz                                           ; $6103: $c0

	ld a, e                                          ; $6104: $7b
	rst GetHLinHL                                          ; $6105: $cf
	ld a, e                                          ; $6106: $7b
	cp $7f                                           ; $6107: $fe $7f
	ld hl, sp+$77                                    ; $6109: $f8 $77
	xor [hl]                                         ; $610b: $ae
	sub l                                            ; $610c: $95
	ldh [$60], a                                     ; $610d: $e0 $60

jr_024_610f:
	jr nc, jr_024_6181                               ; $610f: $30 $70

	jr jr_024_614b                                   ; $6111: $18 $38

	jr @+$32                                         ; $6113: $18 $30

	ld h, b                                          ; $6115: $60
	ld h, b                                          ; $6116: $60
	ld d, a                                          ; $6117: $57
	ret nz                                           ; $6118: $c0

	db $db                                           ; $6119: $db
	rlca                                             ; $611a: $07

jr_024_611b:
	ld a, a                                          ; $611b: $7f
	ld [hl], h                                       ; $611c: $74
	ld a, a                                          ; $611d: $7f
	cp $73                                           ; $611e: $fe $73
	ei                                               ; $6120: $fb
	ld a, e                                          ; $6121: $7b
	cp $7f                                           ; $6122: $fe $7f
	rst SubAFromBC                                          ; $6124: $e7
	ld e, a                                          ; $6125: $5f
	ret nz                                           ; $6126: $c0

	ld a, e                                          ; $6127: $7b
	ld d, e                                          ; $6128: $53
	ld l, e                                          ; $6129: $6b
	ret nz                                           ; $612a: $c0

	rst SubAFromDE                                          ; $612b: $df
	ldh [hDisp1_WY], a                                     ; $612c: $e0 $95
	ld hl, sp+$70                                    ; $612e: $f8 $70
	ld a, b                                          ; $6130: $78
	jr nc, @+$62                                     ; $6131: $30 $60

	jr nc, jr_024_60d5                               ; $6133: $30 $a0

	ld h, b                                          ; $6135: $60
	ret nz                                           ; $6136: $c0

	nop                                              ; $6137: $00
	ld d, a                                          ; $6138: $57
	ret nz                                           ; $6139: $c0

	ld l, a                                          ; $613a: $6f
	res 3, e                                         ; $613b: $cb $9b
	dec b                                            ; $613d: $05
	inc bc                                           ; $613e: $03
	ld bc, $7b03                                     ; $613f: $01 $03 $7b
	db $fd                                           ; $6142: $fd
	sbc l                                            ; $6143: $9d
	ld bc, $de00                                     ; $6144: $01 $00 $de
	ld bc, $f47f                                     ; $6147: $01 $7f $f4
	ld e, a                                          ; $614a: $5f

jr_024_614b:
	add d                                            ; $614b: $82
	db $dd                                           ; $614c: $dd
	add b                                            ; $614d: $80
	ld [hl], a                                       ; $614e: $77
	cp [hl]                                          ; $614f: $be
	ld a, a                                          ; $6150: $7f
	db $fd                                           ; $6151: $fd
	sbc $c0                                          ; $6152: $de $c0
	call c, Call_024_7be0                            ; $6154: $dc $e0 $7b
	or l                                             ; $6157: $b5
	sbc [hl]                                         ; $6158: $9e
	add b                                            ; $6159: $80
	ld l, e                                          ; $615a: $6b
	ret nz                                           ; $615b: $c0

	ld a, e                                          ; $615c: $7b
	cp $7f                                           ; $615d: $fe $7f
	ld hl, sp-$68                                    ; $615f: $f8 $98
	dec e                                            ; $6161: $1d
	rrca                                             ; $6162: $0f
	rra                                              ; $6163: $1f
	dec c                                            ; $6164: $0d
	rra                                              ; $6165: $1f
	dec c                                            ; $6166: $0d
	inc b                                            ; $6167: $04
	ld a, e                                          ; $6168: $7b
	dec a                                            ; $6169: $3d
	ld a, a                                          ; $616a: $7f
	ld a, $9d                                        ; $616b: $3e $9d

jr_024_616d:
	rlca                                             ; $616d: $07
	ld b, $77                                        ; $616e: $06 $77
	jr nc, jr_024_610f                               ; $6170: $30 $9d

	dec e                                            ; $6172: $1d
	ld c, $4f                                        ; $6173: $0e $4f
	ld b, d                                          ; $6175: $42
	ld l, a                                          ; $6176: $6f
	inc c                                            ; $6177: $0c
	ld h, a                                          ; $6178: $67
	cp $77                                           ; $6179: $fe $77
	cp d                                             ; $617b: $ba
	ld l, a                                          ; $617c: $6f
	ret nz                                           ; $617d: $c0

	ld l, a                                          ; $617e: $6f
	ld a, a                                          ; $617f: $7f
	ld [hl], e                                       ; $6180: $73

jr_024_6181:
	ld [hl], a                                       ; $6181: $77
	ld a, e                                          ; $6182: $7b
	jp nz, $0c93                                     ; $6183: $c2 $93 $0c

	ld c, $1e                                        ; $6186: $0e $1e
	inc c                                            ; $6188: $0c
	ld [$181c], sp                                   ; $6189: $08 $1c $18
	inc e                                            ; $618c: $1c
	inc a                                            ; $618d: $3c
	jr jr_024_6200                                   ; $618e: $18 $70

	jr c, jr_024_616d                                ; $6190: $38 $db

	ldh [$7f], a                                     ; $6192: $e0 $7f
	sub $73                                          ; $6194: $d6 $73
	ld a, [hl]                                       ; $6196: $7e
	ld [hl], a                                       ; $6197: $77
	add a                                            ; $6198: $87
	ld l, e                                          ; $6199: $6b
	nop                                              ; $619a: $00
	ld a, d                                          ; $619b: $7a
	cp $df                                           ; $619c: $fe $df
	ld h, b                                          ; $619e: $60
	rst SubAFromDE                                          ; $619f: $df
	jr nc, @-$60                                     ; $61a0: $30 $9e

	ld [hl], b                                       ; $61a2: $70
	ld d, a                                          ; $61a3: $57
	ret nz                                           ; $61a4: $c0

	ld l, e                                          ; $61a5: $6b
	cp h                                             ; $61a6: $bc
	ld a, [hl]                                       ; $61a7: $7e
	ld b, [hl]                                       ; $61a8: $46
	ld a, d                                          ; $61a9: $7a
	call nz, $069e                                   ; $61aa: $c4 $9e $06
	sbc $0c                                          ; $61ad: $de $0c
	ld a, a                                          ; $61af: $7f
	cp h                                             ; $61b0: $bc
	ld a, a                                          ; $61b1: $7f
	cp [hl]                                          ; $61b2: $be
	ld h, a                                          ; $61b3: $67
	ret nz                                           ; $61b4: $c0

	ld a, e                                          ; $61b5: $7b
	jp z, $c0dc                                      ; $61b6: $ca $dc $c0

	ld [hl], a                                       ; $61b9: $77
	jp nz, Jump_024_409c                             ; $61ba: $c2 $9c $40

	ldh [$f0], a                                     ; $61bd: $e0 $f0
	ld [hl], a                                       ; $61bf: $77
	call nz, $30df                                   ; $61c0: $c4 $df $30
	ld a, [hl]                                       ; $61c3: $7e
	cp l                                             ; $61c4: $bd
	ld a, a                                          ; $61c5: $7f
	and b                                            ; $61c6: $a0
	ld c, d                                          ; $61c7: $4a
	ld h, b                                          ; $61c8: $60
	call c, $dfe0                                    ; $61c9: $dc $e0 $df
	ldh a, [$df]                                     ; $61cc: $f0 $df
	ld hl, sp-$63                                    ; $61ce: $f8 $9d
	ret c                                            ; $61d0: $d8

	ld hl, sp+$73                                    ; $61d1: $f8 $73
	call nc, $b07f                                   ; $61d3: $d4 $7f $b0
	halt                                             ; $61d6: $76
	or d                                             ; $61d7: $b2
	ld l, [hl]                                       ; $61d8: $6e
	jr nz, jr_024_6231                               ; $61d9: $20 $56

	ld [hl+], a                                      ; $61db: $22
	halt                                             ; $61dc: $76
	jr nz, @-$21                                     ; $61dd: $20 $dd

	rra                                              ; $61df: $1f
	ld l, a                                          ; $61e0: $6f
	ld a, [hl-]                                      ; $61e1: $3a
	reti                                             ; $61e2: $d9


	ldh [$67], a                                     ; $61e3: $e0 $67
	sbc b                                            ; $61e5: $98
	ld e, e                                          ; $61e6: $5b
	xor d                                            ; $61e7: $aa
	inc bc                                           ; $61e8: $03
	ldh [rBGP], a                                    ; $61e9: $e0 $47
	ldh [rPCM12], a                                  ; $61eb: $e0 $76
	rst SubAFromHL                                          ; $61ed: $d7
	ld h, e                                          ; $61ee: $63
	jr jr_024_621c                                   ; $61ef: $18 $2b

	ldh [$6e], a                                     ; $61f1: $e0 $6e
	cp b                                             ; $61f3: $b8
	rra                                              ; $61f4: $1f
	ldh [$6f], a                                     ; $61f5: $e0 $6f
	ldh [c], a                                       ; $61f7: $e2
	cpl                                              ; $61f8: $2f
	ldh [rVBK], a                                    ; $61f9: $e0 $4f
	add b                                            ; $61fb: $80
	dec e                                            ; $61fc: $1d
	nop                                              ; $61fd: $00
	ld a, d                                          ; $61fe: $7a
	xor d                                            ; $61ff: $aa

jr_024_6200:
	ld [hl], b                                       ; $6200: $70
	db $fd                                           ; $6201: $fd
	ld e, l                                          ; $6202: $5d
	jr nz, jr_024_6242                               ; $6203: $20 $3d

	ld [hl+], a                                      ; $6205: $22
	ld b, l                                          ; $6206: $45
	jr nz, jr_024_6260                               ; $6207: $20 $57

	ld h, b                                          ; $6209: $60
	ld l, a                                          ; $620a: $6f
	add sp, $7a                                      ; $620b: $e8 $7a
	ld h, c                                          ; $620d: $61
	ld h, d                                          ; $620e: $62
	ld h, b                                          ; $620f: $60
	ld h, l                                          ; $6210: $65
	ld l, b                                          ; $6211: $68
	ld a, c                                          ; $6212: $79
	and e                                            ; $6213: $a3
	ld a, c                                          ; $6214: $79
	sbc [hl]                                         ; $6215: $9e
	rst SubAFromDE                                          ; $6216: $df
	ld bc, $fc7f                                     ; $6217: $01 $7f $fc
	sbc l                                            ; $621a: $9d
	dec bc                                           ; $621b: $0b

jr_024_621c:
	rlca                                             ; $621c: $07
	ld l, a                                          ; $621d: $6f
	call nz, Call_024_6275                           ; $621e: $c4 $75 $62
	ld a, h                                          ; $6221: $7c
	or b                                             ; $6222: $b0
	ld a, e                                          ; $6223: $7b
	db $fd                                           ; $6224: $fd
	ld a, b                                          ; $6225: $78
	xor d                                            ; $6226: $aa
	ld a, e                                          ; $6227: $7b
	ld hl, sp-$26                                    ; $6228: $f8 $da
	add b                                            ; $622a: $80
	ld [hl], a                                       ; $622b: $77
	or a                                             ; $622c: $b7
	ld c, a                                          ; $622d: $4f
	ld bc, $9de9                                     ; $622e: $01 $e9 $9d

jr_024_6231:
	ld c, $07                                        ; $6231: $0e $07
	db $dd                                           ; $6233: $dd
	rrca                                             ; $6234: $0f
	ld a, a                                          ; $6235: $7f
	ei                                               ; $6236: $fb
	jp hl                                            ; $6237: $e9


	sub c                                            ; $6238: $91
	add b                                            ; $6239: $80
	nop                                              ; $623a: $00
	ld b, b                                          ; $623b: $40
	add b                                            ; $623c: $80
	ret nz                                           ; $623d: $c0

	add b                                            ; $623e: $80
	add b                                            ; $623f: $80
	ret nz                                           ; $6240: $c0

	rrca                                             ; $6241: $0f

jr_024_6242:
	rlca                                             ; $6242: $07
	rlca                                             ; $6243: $07
	inc bc                                           ; $6244: $03
	inc bc                                           ; $6245: $03
	rlca                                             ; $6246: $07
	ld a, e                                          ; $6247: $7b
	ld a, [$0f9d]                                    ; $6248: $fa $9d $0f
	rra                                              ; $624b: $1f
	ld [hl], e                                       ; $624c: $73
	cp $7b                                           ; $624d: $fe $7b
	push af                                          ; $624f: $f5
	call nc, $dd0f                                   ; $6250: $d4 $0f $dd
	ret nz                                           ; $6253: $c0

	sbc [hl]                                         ; $6254: $9e
	ldh [$7b], a                                     ; $6255: $e0 $7b
	cp $73                                           ; $6257: $fe $73
	ei                                               ; $6259: $fb
	ld [hl], e                                       ; $625a: $73
	cp $73                                           ; $625b: $fe $73
	ldh a, [c]                                       ; $625d: $f2
	ret c                                            ; $625e: $d8

	ret nz                                           ; $625f: $c0

jr_024_6260:
	push de                                          ; $6260: $d5
	rrca                                             ; $6261: $0f
	ld a, e                                          ; $6262: $7b
	add $7f                                          ; $6263: $c6 $7f
	or e                                             ; $6265: $b3
	ld a, e                                          ; $6266: $7b
	or b                                             ; $6267: $b0
	sbc d                                            ; $6268: $9a
	ld bc, $0303                                     ; $6269: $01 $03 $03
	ld bc, $7b00                                     ; $626c: $01 $00 $7b
	cp $7f                                           ; $626f: $fe $7f
	ld a, [$059d]                                    ; $6271: $fa $9d $05
	inc bc                                           ; $6274: $03

Call_024_6275:
	ld h, a                                          ; $6275: $67
	ret                                              ; $6276: $c9


	ld a, a                                          ; $6277: $7f
	sub [hl]                                         ; $6278: $96
	ld a, e                                          ; $6279: $7b
	adc l                                            ; $627a: $8d
	ld a, e                                          ; $627b: $7b
	cp $77                                           ; $627c: $fe $77
	adc h                                            ; $627e: $8c
	ld l, e                                          ; $627f: $6b
	xor l                                            ; $6280: $ad
	ld a, e                                          ; $6281: $7b
	cp c                                             ; $6282: $b9
	ld a, a                                          ; $6283: $7f
	ld a, h                                          ; $6284: $7c
	rst GetHLinHL                                          ; $6285: $cf
	rrca                                             ; $6286: $0f
	sbc [hl]                                         ; $6287: $9e
	ld b, $7b                                        ; $6288: $06 $7b
	db $fd                                           ; $628a: $fd
	sbc d                                            ; $628b: $9a
	rlca                                             ; $628c: $07
	ld b, $03                                        ; $628d: $06 $03
	ld b, $03                                        ; $628f: $06 $03
	ld a, e                                          ; $6291: $7b
	or h                                             ; $6292: $b4
	sbc l                                            ; $6293: $9d
	ld e, $0f                                        ; $6294: $1e $0f
	ld h, e                                          ; $6296: $63
	adc c                                            ; $6297: $89
	sub $c0                                          ; $6298: $d6 $c0
	ld [hl], a                                       ; $629a: $77
	ldh a, [c]                                       ; $629b: $f2
	sbc [hl]                                         ; $629c: $9e
	ld h, b                                          ; $629d: $60
	ld a, e                                          ; $629e: $7b
	cp $9b                                           ; $629f: $fe $9b
	ld b, b                                          ; $62a1: $40
	ldh [$f0], a                                     ; $62a2: $e0 $f0
	ldh [$e7], a                                     ; $62a4: $e0 $e7
	ld l, [hl]                                       ; $62a6: $6e
	cp $e7                                           ; $62a7: $fe $e7
	ld l, [hl]                                       ; $62a9: $6e
	cp $7f                                           ; $62aa: $fe $7f
	db $db                                           ; $62ac: $db
	sbc [hl]                                         ; $62ad: $9e
	dec bc                                           ; $62ae: $0b
	ld [de], a                                       ; $62af: $12
	cp $73                                           ; $62b0: $fe $73
	ld d, d                                          ; $62b2: $52
	ld a, [de]                                       ; $62b3: $1a
	cp $cf                                           ; $62b4: $fe $cf
	rrca                                             ; $62b6: $0f
	sub c                                            ; $62b7: $91
	inc c                                            ; $62b8: $0c
	rrca                                             ; $62b9: $0f
	ld c, $0d                                        ; $62ba: $0e $0d
	jr jr_024_62ca                                   ; $62bc: $18 $0c

	inc c                                            ; $62be: $0c
	jr @+$3a                                         ; $62bf: $18 $38

	jr @+$12                                         ; $62c1: $18 $10

	jr c, jr_024_633d                                ; $62c3: $38 $78

	jr nc, @+$5d                                     ; $62c5: $30 $5b

	ret                                              ; $62c7: $c9


	ld e, e                                          ; $62c8: $5b
	ld b, d                                          ; $62c9: $42

jr_024_62ca:
	ld a, a                                          ; $62ca: $7f
	ld b, [hl]                                       ; $62cb: $46
	sub a                                            ; $62cc: $97
	ldh [$60], a                                     ; $62cd: $e0 $60
	jr nc, @+$62                                     ; $62cf: $30 $60

	ld h, b                                          ; $62d1: $60
	jr nc, jr_024_6304                               ; $62d2: $30 $30

	ld [hl], b                                       ; $62d4: $70
	pop de                                           ; $62d5: $d1
	rrca                                             ; $62d6: $0f
	sbc [hl]                                         ; $62d7: $9e
	ld c, $7b                                        ; $62d8: $0e $7b
	db $fd                                           ; $62da: $fd
	rst SubAFromDE                                          ; $62db: $df
	ld c, $9e                                        ; $62dc: $0e $9e
	inc c                                            ; $62de: $0c
	ld a, e                                          ; $62df: $7b
	db $fd                                           ; $62e0: $fd
	rst SubAFromDE                                          ; $62e1: $df
	inc c                                            ; $62e2: $0c
	sbc e                                            ; $62e3: $9b
	ld [$3c1c], sp                                   ; $62e4: $08 $1c $3c
	jr @+$49                                         ; $62e7: $18 $47

	ret nz                                           ; $62e9: $c0

	ld l, a                                          ; $62ea: $6f
	jp nz, $f09e                                     ; $62eb: $c2 $9e $f0

	ld l, a                                          ; $62ee: $6f
	jp nz, $309d                                     ; $62ef: $c2 $9d $30

	jr c, jr_024_6337                                ; $62f2: $38 $43

	ret nz                                           ; $62f4: $c0

	ld l, a                                          ; $62f5: $6f
	cp e                                             ; $62f6: $bb
	db $dd                                           ; $62f7: $dd
	ld c, $7f                                        ; $62f8: $0e $7f
	cp h                                             ; $62fa: $bc
	sbc e                                            ; $62fb: $9b
	inc e                                            ; $62fc: $1c
	ld c, $2e                                        ; $62fd: $0e $2e

Jump_024_62ff:
	inc e                                            ; $62ff: $1c
	ld d, e                                          ; $6300: $53
	ret nz                                           ; $6301: $c0

	ld [hl], d                                       ; $6302: $72
	add d                                            ; $6303: $82

jr_024_6304:
	ld [hl], a                                       ; $6304: $77
	ld [hl], $7f                                     ; $6305: $36 $7f
	ret nz                                           ; $6307: $c0

	sub a                                            ; $6308: $97
	jr nz, jr_024_637b                               ; $6309: $20 $70

jr_024_630b:
	ld a, b                                          ; $630b: $78
	jr nc, jr_024_632e                               ; $630c: $30 $20

	ld [hl], b                                       ; $630e: $70
	ldh [$60], a                                     ; $630f: $e0 $60
	ld b, [hl]                                       ; $6311: $46
	ld b, b                                          ; $6312: $40
	ld a, d                                          ; $6313: $7a
	di                                               ; $6314: $f3
	ld [hl], d                                       ; $6315: $72
	inc a                                            ; $6316: $3c
	ld l, a                                          ; $6317: $6f
	cp $7f                                           ; $6318: $fe $7f
	ldh a, [$5f]                                     ; $631a: $f0 $5f
	add h                                            ; $631c: $84
	ld a, e                                          ; $631d: $7b
	push bc                                          ; $631e: $c5
	ld l, e                                          ; $631f: $6b
	jp nz, Jump_024_6093                             ; $6320: $c2 $93 $60

	ldh a, [$b0]                                     ; $6323: $f0 $b0
	ld a, b                                          ; $6325: $78
	ld a, b                                          ; $6326: $78
	jr nc, jr_024_6399                               ; $6327: $30 $70

	jr nz, jr_024_630b                               ; $6329: $20 $e0

	ld b, b                                          ; $632b: $40
	ret nz                                           ; $632c: $c0

	nop                                              ; $632d: $00

jr_024_632e:
	ld e, a                                          ; $632e: $5f
	call nz, $cb77                                   ; $632f: $c4 $77 $cb
	ld [hl], a                                       ; $6332: $77
	call z, $037a                                    ; $6333: $cc $7a $03
	ld [hl], c                                       ; $6336: $71

jr_024_6337:
	cp $df                                           ; $6337: $fe $df
	ld bc, $f97b                                     ; $6339: $01 $7b $f9
	ld h, e                                          ; $633c: $63

jr_024_633d:
	ret nz                                           ; $633d: $c0

	halt                                             ; $633e: $76
	nop                                              ; $633f: $00
	ld [hl], c                                       ; $6340: $71
	rst $38                                          ; $6341: $ff
	ld a, d                                          ; $6342: $7a
	add a                                            ; $6343: $87
	reti                                             ; $6344: $d9


	add b                                            ; $6345: $80
	ld [hl], a                                       ; $6346: $77
	ld [hl], b                                       ; $6347: $70
	ld h, [hl]                                       ; $6348: $66
	and h                                            ; $6349: $a4
	db $db                                           ; $634a: $db
	ldh [$3e], a                                     ; $634b: $e0 $3e
	and b                                            ; $634d: $a0
	ld d, $42                                        ; $634e: $16 $42
	halt                                             ; $6350: $76
	ld h, h                                          ; $6351: $64
	ld l, [hl]                                       ; $6352: $6e
	ld l, b                                          ; $6353: $68
	reti                                             ; $6354: $d9


	ldh [$3e], a                                     ; $6355: $e0 $3e
	ld e, [hl]                                       ; $6357: $5e
	rra                                              ; $6358: $1f
	ret nz                                           ; $6359: $c0

	ld l, a                                          ; $635a: $6f
	add h                                            ; $635b: $84
	ld [hl], a                                       ; $635c: $77
	call nz, $ba7d                                   ; $635d: $c4 $7d $ba
	ld l, a                                          ; $6360: $6f
	cp $5f                                           ; $6361: $fe $5f

Jump_024_6363:
	ret nz                                           ; $6363: $c0

	ld e, a                                          ; $6364: $5f
	cp [hl]                                          ; $6365: $be
	rrca                                             ; $6366: $0f
	ret nz                                           ; $6367: $c0

	ld e, a                                          ; $6368: $5f
	add h                                            ; $6369: $84
	ld l, a                                          ; $636a: $6f
	ld hl, sp+$3f                                    ; $636b: $f8 $3f
	ret nz                                           ; $636d: $c0

	sbc [hl]                                         ; $636e: $9e
	ret nc                                           ; $636f: $d0

	ld l, e                                          ; $6370: $6b
	pop hl                                           ; $6371: $e1
	ld h, a                                          ; $6372: $67
	sub $47                                          ; $6373: $d6 $47
	ldh [$63], a                                     ; $6375: $e0 $63
	inc b                                            ; $6377: $04
	ld d, c                                          ; $6378: $51
	sbc [hl]                                         ; $6379: $9e
	ld e, a                                          ; $637a: $5f

jr_024_637b:
	ldh [$39], a                                     ; $637b: $e0 $39
	ld bc, $81e9                                     ; $637d: $01 $e9 $81
	ld e, $0e                                        ; $6380: $1e $0e
	ld e, $3d                                        ; $6382: $1e $3d
	dec a                                            ; $6384: $3d
	ld a, a                                          ; $6385: $7f
	ld a, $7e                                        ; $6386: $3e $7e
	ccf                                              ; $6388: $3f
	ld a, $2e                                        ; $6389: $3e $2e
	rra                                              ; $638b: $1f
	ld h, a                                          ; $638c: $67
	ld l, a                                          ; $638d: $6f
	ld b, a                                          ; $638e: $47
	ld l, a                                          ; $638f: $6f
	rst $38                                          ; $6390: $ff
	ld l, a                                          ; $6391: $6f
	ld a, a                                          ; $6392: $7f
	rst $38                                          ; $6393: $ff
	ld a, a                                          ; $6394: $7f
	rst $38                                          ; $6395: $ff
	rst SubAFromDE                                          ; $6396: $df
	ld a, a                                          ; $6397: $7f
	ccf                                              ; $6398: $3f

jr_024_6399:
	rra                                              ; $6399: $1f
	cpl                                              ; $639a: $2f
	rra                                              ; $639b: $1f
	rra                                              ; $639c: $1f
	rrca                                             ; $639d: $0f
	ld e, a                                          ; $639e: $5f
	cp $fb                                           ; $639f: $fe $fb
	sbc [hl]                                         ; $63a1: $9e
	add b                                            ; $63a2: $80
	ld a, e                                          ; $63a3: $7b
	db $fd                                           ; $63a4: $fd
	rst SubAFromDE                                          ; $63a5: $df
	add b                                            ; $63a6: $80
	sbc [hl]                                         ; $63a7: $9e
	ret nz                                           ; $63a8: $c0

	ld a, e                                          ; $63a9: $7b
	db $fd                                           ; $63aa: $fd
	db $dd                                           ; $63ab: $dd
	ret nz                                           ; $63ac: $c0

	ld a, e                                          ; $63ad: $7b
	rst FarCall                                          ; $63ae: $f7
	ld a, e                                          ; $63af: $7b
	ldh a, [$9e]                                     ; $63b0: $f0 $9e
	ld b, b                                          ; $63b2: $40
	ld a, e                                          ; $63b3: $7b
	ld sp, hl                                        ; $63b4: $f9
	ld a, a                                          ; $63b5: $7f
	cp $6f                                           ; $63b6: $fe $6f
	jp c, $0fdd                                      ; $63b8: $da $dd $0f

	sbc [hl]                                         ; $63bb: $9e
	rlca                                             ; $63bc: $07
	ld a, e                                          ; $63bd: $7b
	cp $7f                                           ; $63be: $fe $7f
	db $fd                                           ; $63c0: $fd
	sub [hl]                                         ; $63c1: $96
	inc bc                                           ; $63c2: $03
	rlca                                             ; $63c3: $07
	rlca                                             ; $63c4: $07
	inc bc                                           ; $63c5: $03
	ld bc, $0303                                     ; $63c6: $01 $03 $03
	ld bc, $7b00                                     ; $63c9: $01 $00 $7b
	cp $7f                                           ; $63cc: $fe $7f
	ld a, [$059d]                                    ; $63ce: $fa $9d $05
	inc bc                                           ; $63d1: $03
	ld h, e                                          ; $63d2: $63
	adc $73                                          ; $63d3: $ce $73
	ret nz                                           ; $63d5: $c0

	ld [hl], a                                       ; $63d6: $77
	cp [hl]                                          ; $63d7: $be
	ld [hl], a                                       ; $63d8: $77
	xor $9c                                          ; $63d9: $ee $9c
	ldh [$c0], a                                     ; $63db: $e0 $c0
	ldh [$7b], a                                     ; $63dd: $e0 $7b
	db $fd                                           ; $63df: $fd
	ld [hl], a                                       ; $63e0: $77
	rst SubAFromBC                                          ; $63e1: $e7
	ld e, a                                          ; $63e2: $5f
	ret nz                                           ; $63e3: $c0

	db $db                                           ; $63e4: $db
	rrca                                             ; $63e5: $0f
	ld a, a                                          ; $63e6: $7f
	cp h                                             ; $63e7: $bc
	sub [hl]                                         ; $63e8: $96
	ld c, $07                                        ; $63e9: $0e $07
	rrca                                             ; $63eb: $0f
	ld b, $07                                        ; $63ec: $06 $07
	ld b, $03                                        ; $63ee: $06 $03
	ld b, $03                                        ; $63f0: $06 $03
	ld a, e                                          ; $63f2: $7b
	or h                                             ; $63f3: $b4
	sbc l                                            ; $63f4: $9d
	ld c, $0f                                        ; $63f5: $0e $0f
	ld l, a                                          ; $63f7: $6f
	ret nz                                           ; $63f8: $c0

	rst SubAFromHL                                          ; $63f9: $d7
	ret nz                                           ; $63fa: $c0

	ld [hl], a                                       ; $63fb: $77
	ret                                              ; $63fc: $c9


	ld l, a                                          ; $63fd: $6f
	cp $99                                           ; $63fe: $fe $99
	ld b, b                                          ; $6400: $40
	ldh [rLCDC], a                                   ; $6401: $e0 $40
	ldh [$f0], a                                     ; $6403: $e0 $f0
	ldh [$e7], a                                     ; $6405: $e0 $e7
	ld h, a                                          ; $6407: $67
	ld e, $98                                        ; $6408: $1e $98
	rra                                              ; $640a: $1f
	ld a, $1e                                        ; $640b: $3e $1e
	ld l, a                                          ; $640d: $6f
	ld h, a                                          ; $640e: $67
	ld l, a                                          ; $640f: $6f
	ld e, a                                          ; $6410: $5f
	ld d, e                                          ; $6411: $53
	ld e, $9e                                        ; $6412: $1e $9e
	ld e, $4b                                        ; $6414: $1e $4b
	jr nz, jr_024_645f                               ; $6416: $20 $47

	ld e, $9e                                        ; $6418: $1e $9e
	nop                                              ; $641a: $00
	ld [hl], e                                       ; $641b: $73
	ld e, $5f                                        ; $641c: $1e $5f
	jr nz, @+$59                                     ; $641e: $20 $57

	ld e, [hl]                                       ; $6420: $5e
	ld a, a                                          ; $6421: $7f
	ld l, h                                          ; $6422: $6c
	sub e                                            ; $6423: $93
	inc c                                            ; $6424: $0c
	ld c, $1e                                        ; $6425: $0e $1e
	inc c                                            ; $6427: $0c
	ld [$3c1c], sp                                   ; $6428: $08 $1c $3c
	jr @+$12                                         ; $642b: $18 $10

	jr c, jr_024_64a7                                ; $642d: $38 $78

	jr nc, jr_024_6498                               ; $642f: $30 $67

	adc $4f                                          ; $6431: $ce $4f
	ld e, [hl]                                       ; $6433: $5e
	ld a, a                                          ; $6434: $7f
	ld h, [hl]                                       ; $6435: $66
	sub a                                            ; $6436: $97
	ldh [$60], a                                     ; $6437: $e0 $60
	jr nc, @+$62                                     ; $6439: $30 $60

	ld h, b                                          ; $643b: $60
	jr nc, jr_024_646e                               ; $643c: $30 $30

	ld [hl], b                                       ; $643e: $70
	scf                                              ; $643f: $37
	ret nz                                           ; $6440: $c0

	rst SubAFromDE                                          ; $6441: $df
	ld c, $7f                                        ; $6442: $0e $7f
	cp [hl]                                          ; $6444: $be
	ld a, a                                          ; $6445: $7f
	db $fd                                           ; $6446: $fd
	rst SubAFromDE                                          ; $6447: $df
	inc c                                            ; $6448: $0c
	ld [hl], a                                       ; $6449: $77
	cp h                                             ; $644a: $bc
	ld e, a                                          ; $644b: $5f
	ret nz                                           ; $644c: $c0

	ld l, [hl]                                       ; $644d: $6e
	and $77                                          ; $644e: $e6 $77
	ret nz                                           ; $6450: $c0

	ld a, a                                          ; $6451: $7f
	db $fd                                           ; $6452: $fd
	sub [hl]                                         ; $6453: $96
	ld h, b                                          ; $6454: $60
	ldh [rSVBK], a                                   ; $6455: $e0 $70
	ld h, b                                          ; $6457: $60
	jr nz, jr_024_64ca                               ; $6458: $20 $70

	jr nc, jr_024_648c                               ; $645a: $30 $30

	jr c, @+$35                                      ; $645c: $38 $33

	ret nz                                           ; $645e: $c0

jr_024_645f:
	ld a, e                                          ; $645f: $7b
	cp a                                             ; $6460: $bf
	ld [hl], e                                       ; $6461: $73
	cp [hl]                                          ; $6462: $be
	ld a, a                                          ; $6463: $7f
	cp $9d                                           ; $6464: $fe $9d
	ld l, $1c                                        ; $6466: $2e $1c
	ld e, e                                          ; $6468: $5b
	add b                                            ; $6469: $80
	ld l, e                                          ; $646a: $6b
	ld b, d                                          ; $646b: $42
	ld [hl], a                                       ; $646c: $77
	ret nz                                           ; $646d: $c0

jr_024_646e:
	sub l                                            ; $646e: $95
	ldh a, [$60]                                     ; $646f: $f0 $60
	jr z, jr_024_64e3                                ; $6471: $28 $70

	ld [hl], b                                       ; $6473: $70
	jr c, jr_024_64a6                                ; $6474: $38 $30

	jr nc, jr_024_6498                               ; $6476: $30 $20

	ld h, b                                          ; $6478: $60
	ld d, a                                          ; $6479: $57
	jp nz, Jump_024_6076                             ; $647a: $c2 $76 $60

	ld a, d                                          ; $647d: $7a
	ld h, c                                          ; $647e: $61
	ld [hl], d                                       ; $647f: $72
	ld e, h                                          ; $6480: $5c
	ld l, a                                          ; $6481: $6f
	cp $7e                                           ; $6482: $fe $7e
	sub h                                            ; $6484: $94
	ld c, d                                          ; $6485: $4a
	ld h, b                                          ; $6486: $60
	ld a, e                                          ; $6487: $7b
	call nz, Call_024_457b                           ; $6488: $c4 $7b $45
	sub h                                            ; $648b: $94

jr_024_648c:
	ldh a, [$b0]                                     ; $648c: $f0 $b0
	ld a, b                                          ; $648e: $78
	ld a, b                                          ; $648f: $78
	jr nc, @+$32                                     ; $6490: $30 $30

	ld h, b                                          ; $6492: $60
	ldh [rLCDC], a                                   ; $6493: $e0 $40
	ret nz                                           ; $6495: $c0

	nop                                              ; $6496: $00
	ld [hl], l                                       ; $6497: $75

jr_024_6498:
	sbc $9e                                          ; $6498: $de $9e
	ld a, $02                                        ; $649a: $3e $02
	ret nz                                           ; $649c: $c0

	ld b, $c0                                        ; $649d: $06 $c0
	ld l, a                                          ; $649f: $6f
	add [hl]                                         ; $64a0: $86
	ld [hl], a                                       ; $64a1: $77
	adc c                                            ; $64a2: $89
	ld a, a                                          ; $64a3: $7f
	db $fd                                           ; $64a4: $fd
	db $dd                                           ; $64a5: $dd

jr_024_64a6:
	inc bc                                           ; $64a6: $03

jr_024_64a7:
	ld [hl], l                                       ; $64a7: $75
	sbc $dd                                          ; $64a8: $de $dd
	ld bc, $e05d                                     ; $64aa: $01 $5d $e0
	ld a, e                                          ; $64ad: $7b
	jp nz, $bc6b                                     ; $64ae: $c2 $6b $bc

	reti                                             ; $64b1: $d9


	add b                                            ; $64b2: $80
	ld l, a                                          ; $64b3: $6f
	or h                                             ; $64b4: $b4
	call z, $d985                                    ; $64b5: $cc $85 $d9
	rst $38                                          ; $64b8: $ff
	ld sp, hl                                        ; $64b9: $f9
	inc bc                                           ; $64ba: $03
	ldh a, [$db]                                     ; $64bb: $f0 $db
	rst $38                                          ; $64bd: $ff
	sbc [hl]                                         ; $64be: $9e
	cp $f9                                           ; $64bf: $fe $f9
	sbc $c0                                          ; $64c1: $de $c0
	rst SubAFromDE                                          ; $64c3: $df
	add b                                            ; $64c4: $80
	db $fc                                           ; $64c5: $fc
	sub c                                            ; $64c6: $91
	ld c, $0f                                        ; $64c7: $0e $0f
	rrca                                             ; $64c9: $0f

jr_024_64ca:
	rra                                              ; $64ca: $1f
	rra                                              ; $64cb: $1f
	ccf                                              ; $64cc: $3f
	ld a, a                                          ; $64cd: $7f
	rra                                              ; $64ce: $1f
	inc bc                                           ; $64cf: $03
	nop                                              ; $64d0: $00
	nop                                              ; $64d1: $00
	ld [$2f1b], sp                                   ; $64d2: $08 $1b $2f
	cp $9a                                           ; $64d5: $fe $9a
	add b                                            ; $64d7: $80
	ldh [$fc], a                                     ; $64d8: $e0 $fc
	db $fc                                           ; $64da: $fc
	ld hl, sp-$23                                    ; $64db: $f8 $dd
	rst $38                                          ; $64dd: $ff
	sbc l                                            ; $64de: $9d
	rra                                              ; $64df: $1f
	rlca                                             ; $64e0: $07
	ld hl, sp-$62                                    ; $64e1: $f8 $9e

jr_024_64e3:
	ret nz                                           ; $64e3: $c0

	jp c, $9eff                                      ; $64e4: $da $ff $9e

	rra                                              ; $64e7: $1f
	inc bc                                           ; $64e8: $03
	sub b                                            ; $64e9: $90
	inc bc                                           ; $64ea: $03
	ldh a, [$03]                                     ; $64eb: $f0 $03
	ldh a, [$03]                                     ; $64ed: $f0 $03
	ldh a, [$03]                                     ; $64ef: $f0 $03
	ldh a, [$03]                                     ; $64f1: $f0 $03
	ldh a, [$03]                                     ; $64f3: $f0 $03
	ldh a, [rSCX]                                    ; $64f5: $f0 $43
	ldh a, [$df]                                     ; $64f7: $f0 $df
	cp $7a                                           ; $64f9: $fe $7a
	db $eb                                           ; $64fb: $eb
	sbc h                                            ; $64fc: $9c
	ld hl, sp-$10                                    ; $64fd: $f8 $f0
	ldh a, [$fb]                                     ; $64ff: $f0 $fb
	rst SubAFromDE                                          ; $6501: $df
	ld bc, $0780                                     ; $6502: $01 $80 $07
	dec b                                            ; $6505: $05
	ld c, $0d                                        ; $6506: $0e $0d
	ld a, [bc]                                       ; $6508: $0a
	dec e                                            ; $6509: $1d
	dec de                                           ; $650a: $1b
	dec [hl]                                         ; $650b: $35
	jr c, jr_024_6546                                ; $650c: $38 $38

	ld [hl], b                                       ; $650e: $70
	ld [hl], b                                       ; $650f: $70
	ldh a, [$e0]                                     ; $6510: $f0 $e0
	pop hl                                           ; $6512: $e1
	pop bc                                           ; $6513: $c1
	rst GetHLinHL                                          ; $6514: $cf
	rst SubAFromHL                                          ; $6515: $d7
	xor d                                            ; $6516: $aa
	xor d                                            ; $6517: $aa
	rst JumpTable                                          ; $6518: $c7
	or a                                             ; $6519: $b7
	ld de, $784f                                     ; $651a: $11 $4f $78
	ld l, b                                          ; $651d: $68
	push hl                                          ; $651e: $e5
	push hl                                          ; $651f: $e5
	and l                                            ; $6520: $a5
	add l                                            ; $6521: $85
	add a                                            ; $6522: $87
	sbc e                                            ; $6523: $9b
	sub e                                            ; $6524: $93
	db $10                                           ; $6525: $10
	jr nz, jr_024_6568                               ; $6526: $20 $40

	halt                                             ; $6528: $76
	and c                                            ; $6529: $a1
	sbc e                                            ; $652a: $9b
	add b                                            ; $652b: $80
	ldh a, [$e0]                                     ; $652c: $f0 $e0
	ret nz                                           ; $652e: $c0

	ld [hl], d                                       ; $652f: $72
	sbc c                                            ; $6530: $99
	sbc l                                            ; $6531: $9d
	rrca                                             ; $6532: $0f
	ld bc, $c76f                                     ; $6533: $01 $6f $c7
	ld a, [$019b]                                    ; $6536: $fa $9b $01
	rst $38                                          ; $6539: $ff
	rst $38                                          ; $653a: $ff
	ld a, a                                          ; $653b: $7f
	ld a, e                                          ; $653c: $7b
	db $ed                                           ; $653d: $ed
	ld l, a                                          ; $653e: $6f
	db $e4                                           ; $653f: $e4
	ld a, d                                          ; $6540: $7a
	and c                                            ; $6541: $a1
	ld l, a                                          ; $6542: $6f
	sub b                                            ; $6543: $90
	ld [hl], a                                       ; $6544: $77
	db $ed                                           ; $6545: $ed

jr_024_6546:
	inc bc                                           ; $6546: $03
	ld [hl], b                                       ; $6547: $70
	inc bc                                           ; $6548: $03
	ldh a, [$03]                                     ; $6549: $f0 $03
	ldh a, [$03]                                     ; $654b: $f0 $03
	ldh a, [$03]                                     ; $654d: $f0 $03
	ldh a, [$03]                                     ; $654f: $f0 $03
	ldh a, [rSCX]                                    ; $6551: $f0 $43
	ldh a, [$de]                                     ; $6553: $f0 $de
	ldh [$75], a                                     ; $6555: $e0 $75
	adc [hl]                                         ; $6557: $8e
	sbc [hl]                                         ; $6558: $9e
	add b                                            ; $6559: $80
	sbc $03                                          ; $655a: $de $03
	rst SubAFromDE                                          ; $655c: $df
	rlca                                             ; $655d: $07
	sbc $0f                                          ; $655e: $de $0f
	add b                                            ; $6560: $80
	dec de                                           ; $6561: $1b
	scf                                              ; $6562: $37
	ld h, e                                          ; $6563: $63
	dec d                                            ; $6564: $15
	ld h, l                                          ; $6565: $65
	push bc                                          ; $6566: $c5
	add hl, hl                                       ; $6567: $29

jr_024_6568:
	ret                                              ; $6568: $c9


	pop hl                                           ; $6569: $e1
	pop bc                                           ; $656a: $c1
	add c                                            ; $656b: $81
	pop bc                                           ; $656c: $c1
	add c                                            ; $656d: $81
	ld bc, $0181                                     ; $656e: $01 $81 $01
	sbc [hl]                                         ; $6571: $9e
	sbc e                                            ; $6572: $9b
	ld h, [hl]                                       ; $6573: $66
	ld c, [hl]                                       ; $6574: $4e
	sub d                                            ; $6575: $92
	adc [hl]                                         ; $6576: $8e
	ld b, [hl]                                       ; $6577: $46
	ld b, [hl]                                       ; $6578: $46
	set 1, [hl]                                      ; $6579: $cb $ce
	adc $e6                                          ; $657b: $ce $e6
	ld h, [hl]                                       ; $657d: $66
	ld [hl-], a                                      ; $657e: $32
	sbc d                                            ; $657f: $9a
	add d                                            ; $6580: $82
	adc [hl]                                         ; $6581: $8e
	db $10                                           ; $6582: $10
	ld [bc], a                                       ; $6583: $02
	jr nz, jr_024_658a                               ; $6584: $20 $04

	inc bc                                           ; $6586: $03
	inc bc                                           ; $6587: $03
	ld b, $0e                                        ; $6588: $06 $0e

jr_024_658a:
	ldh [$fc], a                                     ; $658a: $e0 $fc
	rra                                              ; $658c: $1f
	inc bc                                           ; $658d: $03
	ld bc, $0402                                     ; $658e: $01 $02 $04
	inc c                                            ; $6591: $0c
	inc bc                                           ; $6592: $03
	rlca                                             ; $6593: $07

jr_024_6594:
	ld a, h                                          ; $6594: $7c
	add $81                                          ; $6595: $c6 $81
	ld bc, $6b39                                     ; $6597: $01 $39 $6b
	ld [bc], a                                       ; $659a: $02
	inc b                                            ; $659b: $04
	rst $38                                          ; $659c: $ff
	add e                                            ; $659d: $83
	ld a, d                                          ; $659e: $7a
	db $db                                           ; $659f: $db
	adc l                                            ; $65a0: $8d
	inc d                                            ; $65a1: $14
	db $e3                                           ; $65a2: $e3
	ld d, c                                          ; $65a3: $51
	adc l                                            ; $65a4: $8d
	rlca                                             ; $65a5: $07
	inc b                                            ; $65a6: $04
	adc e                                            ; $65a7: $8b
	sbc $e8                                          ; $65a8: $de $e8
	nop                                              ; $65aa: $00
	and b                                            ; $65ab: $a0
	ld [hl], b                                       ; $65ac: $70
	ld hl, sp-$05                                    ; $65ad: $f8 $fb
	rst FarCall                                          ; $65af: $f7
	ld a, h                                          ; $65b0: $7c
	ld [hl], b                                       ; $65b1: $70
	nop                                              ; $65b2: $00
	sbc $80                                          ; $65b3: $de $80
	sub e                                            ; $65b5: $93
	ld hl, sp+$44                                    ; $65b6: $f8 $44
	db $10                                           ; $65b8: $10
	adc c                                            ; $65b9: $89
	nop                                              ; $65ba: $00
	ldh [$fc], a                                     ; $65bb: $e0 $fc
	rst $38                                          ; $65bd: $ff
	rst $38                                          ; $65be: $ff
	add e                                            ; $65bf: $83
	rrca                                             ; $65c0: $0f
	ld [hl], b                                       ; $65c1: $70
	ld e, d                                          ; $65c2: $5a
	or l                                             ; $65c3: $b5
	ld a, [hl]                                       ; $65c4: $7e
	ld a, h                                          ; $65c5: $7c
	ld a, e                                          ; $65c6: $7b
	db $ed                                           ; $65c7: $ed
	ld c, [hl]                                       ; $65c8: $4e
	and d                                            ; $65c9: $a2
	ld a, a                                          ; $65ca: $7f
	db $ed                                           ; $65cb: $ed
	db $db                                           ; $65cc: $db
	rst $38                                          ; $65cd: $ff
	ld a, a                                          ; $65ce: $7f
	db $ed                                           ; $65cf: $ed
	inc bc                                           ; $65d0: $03
	ld b, b                                          ; $65d1: $40
	inc bc                                           ; $65d2: $03
	ldh a, [$03]                                     ; $65d3: $f0 $03
	ldh a, [$03]                                     ; $65d5: $f0 $03
	ldh a, [$2f]                                     ; $65d7: $f0 $2f
	ldh a, [$6d]                                     ; $65d9: $f0 $6d
	adc [hl]                                         ; $65db: $8e
	ld hl, sp+$7e                                    ; $65dc: $f8 $7e
	ei                                               ; $65de: $fb
	ld a, a                                          ; $65df: $7f
	cp $8c                                           ; $65e0: $fe $8c
	ld de, $1502                                     ; $65e2: $11 $02 $15
	rra                                              ; $65e5: $1f
	ld e, $3d                                        ; $65e6: $1e $3d
	ld a, $3d                                        ; $65e8: $3e $3d
	ld l, [hl]                                       ; $65ea: $6e
	ld a, h                                          ; $65eb: $7c
	ld [$c9a9], a                                    ; $65ec: $ea $a9 $c9
	sub c                                            ; $65ef: $91
	db $10                                           ; $65f0: $10
	and b                                            ; $65f1: $a0
	jr nz, jr_024_6594                               ; $65f2: $20 $a0

	jr nz, @-$20                                     ; $65f4: $20 $de

	ld bc, $80fc                                     ; $65f6: $01 $fc $80
	and d                                            ; $65f9: $a2
	ld e, c                                          ; $65fa: $59
	ld h, a                                          ; $65fb: $67
	ret nz                                           ; $65fc: $c0

	or c                                             ; $65fd: $b1
	ld c, a                                          ; $65fe: $4f
	ld a, b                                          ; $65ff: $78
	cpl                                              ; $6600: $2f
	add $e3                                          ; $6601: $c6 $e3
	cp b                                             ; $6603: $b8
	adc a                                            ; $6604: $8f
	ret nz                                           ; $6605: $c0

	ld [hl], b                                       ; $6606: $70
	ld a, a                                          ; $6607: $7f
	jr nc, jr_024_6648                               ; $6608: $30 $3e

	ld d, [hl]                                       ; $660a: $56
	adc l                                            ; $660b: $8d
	ld a, d                                          ; $660c: $7a
	sbc a                                            ; $660d: $9f
	rst SubAFromBC                                          ; $660e: $e7
	ld e, $f8                                        ; $660f: $1e $f8
	inc [hl]                                         ; $6611: $34
	ld h, h                                          ; $6612: $64
	add $e7                                          ; $6613: $c6 $e7
	ld a, a                                          ; $6615: $7f
	rra                                              ; $6616: $1f
	pop hl                                           ; $6617: $e1

jr_024_6618:
	sub c                                            ; $6618: $91
	rlca                                             ; $6619: $07
	ld b, c                                          ; $661a: $41
	adc c                                            ; $661b: $89
	jp nc, $54ac                                     ; $661c: $d2 $ac $54

	add sp, $51                                      ; $661f: $e8 $51
	or d                                             ; $6621: $b2
	ld a, $77                                        ; $6622: $3e $77
	cpl                                              ; $6624: $2f

jr_024_6625:
	ld d, a                                          ; $6625: $57
	xor a                                            ; $6626: $af
	sbc $ff                                          ; $6627: $de $ff
	add b                                            ; $6629: $80
	and [hl]                                         ; $662a: $a6
	ld e, c                                          ; $662b: $59
	ld l, d                                          ; $662c: $6a
	dec [hl]                                         ; $662d: $35
	ld e, d                                          ; $662e: $5a
	or h                                             ; $662f: $b4
	ld [hl], c                                       ; $6630: $71
	ldh [c], a                                       ; $6631: $e2
	pop bc                                           ; $6632: $c1
	add [hl]                                         ; $6633: $86
	sbc h                                            ; $6634: $9c
	ld hl, sp-$1f                                    ; $6635: $f8 $e1
	jp $1c8e                                         ; $6637: $c3 $8e $1c


	ld h, [hl]                                       ; $663a: $66
	adc b                                            ; $663b: $88
	ld hl, $2288                                     ; $663c: $21 $88 $22
	adc b                                            ; $663f: $88
	ld h, e                                          ; $6640: $63
	sub [hl]                                         ; $6641: $96
	add c                                            ; $6642: $81
	rlca                                             ; $6643: $07
	ld e, $70                                        ; $6644: $1e $70
	pop bc                                           ; $6646: $c1
	rlca                                             ; $6647: $07

jr_024_6648:
	inc e                                            ; $6648: $1c
	adc b                                            ; $6649: $88
	ld a, b                                          ; $664a: $78
	nop                                              ; $664b: $00
	ccf                                              ; $664c: $3f
	jr jr_024_6696                                   ; $664d: $18 $47

	ccf                                              ; $664f: $3f
	cp $c9                                           ; $6650: $fe $c9
	ld h, $ff                                        ; $6652: $26 $ff
	ret nz                                           ; $6654: $c0

	rlca                                             ; $6655: $07
	jr c, jr_024_6618                                ; $6656: $38 $c0

	ld bc, $1806                                     ; $6658: $01 $06 $18
	nop                                              ; $665b: $00
	add b                                            ; $665c: $80
	nop                                              ; $665d: $00
	pop hl                                           ; $665e: $e1
	adc a                                            ; $665f: $8f
	ld a, a                                          ; $6660: $7f
	ld a, e                                          ; $6661: $7b
	ld l, d                                          ; $6662: $6a
	ld a, a                                          ; $6663: $7f
	db $fc                                           ; $6664: $fc
	ld a, a                                          ; $6665: $7f
	rst SubAFromDE                                          ; $6666: $df
	ld a, c                                          ; $6667: $79
	ld c, d                                          ; $6668: $4a
	ld [hl], a                                       ; $6669: $77
	adc d                                            ; $666a: $8a
	sbc e                                            ; $666b: $9b
	add b                                            ; $666c: $80
	sub b                                            ; $666d: $90
	sub b                                            ; $666e: $90
	jp c, $a276                                      ; $666f: $da $76 $a2

	sbc e                                            ; $6672: $9b
	ld a, a                                          ; $6673: $7f
	ld l, a                                          ; $6674: $6f
	ld l, a                                          ; $6675: $6f
	dec h                                            ; $6676: $25
	ld a, d                                          ; $6677: $7a
	or l                                             ; $6678: $b5
	sbc e                                            ; $6679: $9b
	inc bc                                           ; $667a: $03
	nop                                              ; $667b: $00
	nop                                              ; $667c: $00
	inc c                                            ; $667d: $0c
	ld a, e                                          ; $667e: $7b
	db $fc                                           ; $667f: $fc

jr_024_6680:
	ld d, [hl]                                       ; $6680: $56
	adc a                                            ; $6681: $8f
	ld [hl], e                                       ; $6682: $73
	pop af                                           ; $6683: $f1
	ld d, a                                          ; $6684: $57
	jr nz, jr_024_6625                               ; $6685: $20 $9e

	ld a, a                                          ; $6687: $7f
	inc bc                                           ; $6688: $03
	nop                                              ; $6689: $00
	inc bc                                           ; $668a: $03
	ldh a, [$03]                                     ; $668b: $f0 $03
	ldh a, [$fc]                                     ; $668d: $f0 $fc
	ld a, b                                          ; $668f: $78
	ld d, l                                          ; $6690: $55
	ld [hl], c                                       ; $6691: $71
	adc [hl]                                         ; $6692: $8e
	ld [hl], h                                       ; $6693: $74
	ld d, h                                          ; $6694: $54
	ld [hl], l                                       ; $6695: $75

jr_024_6696:
	adc l                                            ; $6696: $8d
	adc a                                            ; $6697: $8f
	ld [hl+], a                                      ; $6698: $22
	dec d                                            ; $6699: $15
	ld [hl+], a                                      ; $669a: $22
	ld b, h                                          ; $669b: $44
	ld l, $44                                        ; $669c: $2e $44
	ld a, [bc]                                       ; $669e: $0a
	ld e, h                                          ; $669f: $5c
	call c, $dce8                                    ; $66a0: $dc $e8 $dc
	cp b                                             ; $66a3: $b8
	ret nc                                           ; $66a4: $d0

	cp b                                             ; $66a5: $b8
	ldh a, [$a0]                                     ; $66a6: $f0 $a0
	call c, $9c40                                    ; $66a8: $dc $40 $9c
	add d                                            ; $66ab: $82
	add c                                            ; $66ac: $81
	adc b                                            ; $66ad: $88
	db $fd                                           ; $66ae: $fd
	add e                                            ; $66af: $83
	jr nc, jr_024_672e                               ; $66b0: $30 $7c

	ld a, a                                          ; $66b2: $7f
	rlca                                             ; $66b3: $07
	db $10                                           ; $66b4: $10
	ld c, $0b                                        ; $66b5: $0e $0b
	ld a, [de]                                       ; $66b7: $1a
	ld [hl], $6d                                     ; $66b8: $36 $6d
	ei                                               ; $66ba: $fb
	ld b, h                                          ; $66bb: $44
	rra                                              ; $66bc: $1f
	rrca                                             ; $66bd: $0f
	rrca                                             ; $66be: $0f
	rla                                              ; $66bf: $17
	dec l                                            ; $66c0: $2d
	ld e, e                                          ; $66c1: $5b
	or [hl]                                          ; $66c2: $b6
	rst $38                                          ; $66c3: $ff
	inc bc                                           ; $66c4: $03
	inc a                                            ; $66c5: $3c
	pop bc                                           ; $66c6: $c1
	cp $9c                                           ; $66c7: $fe $9c
	ld a, b                                          ; $66c9: $78
	or c                                             ; $66ca: $b1
	add $dc                                          ; $66cb: $c6 $dc
	rst $38                                          ; $66cd: $ff
	ld a, e                                          ; $66ce: $7b
	rlca                                             ; $66cf: $07
	sub a                                            ; $66d0: $97
	ld d, l                                          ; $66d1: $55
	and l                                            ; $66d2: $a5
	dec hl                                           ; $66d3: $2b
	ld a, [hl+]                                      ; $66d4: $2a
	ld [hl], c                                       ; $66d5: $71
	ldh a, [c]                                       ; $66d6: $f2
	and h                                            ; $66d7: $a4
	ld h, h                                          ; $66d8: $64
	ld a, d                                          ; $66d9: $7a
	ld l, d                                          ; $66da: $6a
	sbc [hl]                                         ; $66db: $9e
	db $fd                                           ; $66dc: $fd
	db $dd                                           ; $66dd: $dd
	rst $38                                          ; $66de: $ff
	add b                                            ; $66df: $80
	push bc                                          ; $66e0: $c5
	adc [hl]                                         ; $66e1: $8e
	ld e, l                                          ; $66e2: $5d
	or [hl]                                          ; $66e3: $b6
	jr z, jr_024_6737                                ; $66e4: $28 $51

	ld [hl+], a                                      ; $66e6: $22
	ld b, a                                          ; $66e7: $47
	jr c, jr_024_675b                                ; $66e8: $38 $71

	db $e3                                           ; $66ea: $e3
	rst GetHLinHL                                          ; $66eb: $cf
	rst SubAFromDE                                          ; $66ec: $df
	cp [hl]                                          ; $66ed: $be
	db $fc                                           ; $66ee: $fc
	ld hl, sp+$68                                    ; $66ef: $f8 $68
	sub c                                            ; $66f1: $91
	inc hl                                           ; $66f2: $23
	ld b, [hl]                                       ; $66f3: $46
	adc c                                            ; $66f4: $89
	ld [hl-], a                                      ; $66f5: $32
	db $f4                                           ; $66f6: $f4
	xor c                                            ; $66f7: $a9
	ldh a, [$e0]                                     ; $66f8: $f0 $e0
	ret nz                                           ; $66fa: $c0

	add c                                            ; $66fb: $81
	ld b, $0c                                        ; $66fc: $06 $0c
	jr jr_024_6680                                   ; $66fe: $18 $80

	ld [hl], b                                       ; $6700: $70
	reti                                             ; $6701: $d9


	or d                                             ; $6702: $b2
	ld h, l                                          ; $6703: $65
	adc d                                            ; $6704: $8a
	dec d                                            ; $6705: $15
	ld a, [hl+]                                      ; $6706: $2a
	call nc, $20a9                                   ; $6707: $d4 $a9 $20
	ld b, c                                          ; $670a: $41
	add d                                            ; $670b: $82
	inc b                                            ; $670c: $04
	ld [$2311], sp                                   ; $670d: $08 $11 $23
	ld b, [hl]                                       ; $6710: $46
	ld a, [hl]                                       ; $6711: $7e
	xor $d9                                          ; $6712: $ee $d9
	or l                                             ; $6714: $b5
	ld l, e                                          ; $6715: $6b
	jp z, $3696                                      ; $6716: $ca $96 $36

	add c                                            ; $6719: $81
	ld de, $4222                                     ; $671a: $11 $22 $42
	add h                                            ; $671d: $84
	inc b                                            ; $671e: $04
	rst SubAFromDE                                          ; $671f: $df
	ld [$9a95], sp                                   ; $6720: $08 $95 $9a
	sub e                                            ; $6723: $93
	ld [hl], $36                                     ; $6724: $36 $36
	ld [hl-], a                                      ; $6726: $32
	ld d, b                                          ; $6727: $50
	ld d, b                                          ; $6728: $50
	ld d, c                                          ; $6729: $51
	dec h                                            ; $672a: $25
	inc h                                            ; $672b: $24
	cp $de                                           ; $672c: $fe $de

jr_024_672e:
	ld [hl+], a                                      ; $672e: $22
	add l                                            ; $672f: $85
	ld d, $49                                        ; $6730: $16 $49
	ld c, l                                          ; $6732: $4d
	and [hl]                                         ; $6733: $a6
	dec h                                            ; $6734: $25
	ld [hl], $56                                     ; $6735: $36 $56

jr_024_6737:
	dec e                                            ; $6737: $1d
	jp hl                                            ; $6738: $e9


	or [hl]                                          ; $6739: $b6
	or e                                             ; $673a: $b3
	ld e, c                                          ; $673b: $59
	ld e, b                                          ; $673c: $58
	ld c, b                                          ; $673d: $48
	jr z, jr_024_6760                                ; $673e: $28 $20

	add b                                            ; $6740: $80
	ld b, b                                          ; $6741: $40
	jr nz, @-$5d                                     ; $6742: $20 $a1

	ld [hl], c                                       ; $6744: $71
	xor c                                            ; $6745: $a9
	ld h, a                                          ; $6746: $67
	ld d, e                                          ; $6747: $53
	ldh [$f8], a                                     ; $6748: $e0 $f8
	sbc $ff                                          ; $674a: $de $ff
	sbc h                                            ; $674c: $9c
	ld l, a                                          ; $674d: $6f
	daa                                              ; $674e: $27
	inc sp                                           ; $674f: $33
	halt                                             ; $6750: $76
	or l                                             ; $6751: $b5
	sbc e                                            ; $6752: $9b
	ld [$8c8c], sp                                   ; $6753: $08 $8c $8c
	adc d                                            ; $6756: $8a
	cp $9a                                           ; $6757: $fe $9a
	ret nz                                           ; $6759: $c0

	ret c                                            ; $675a: $d8

jr_024_675b:
	ld e, h                                          ; $675b: $5c
	ld e, h                                          ; $675c: $5c
	ld e, [hl]                                       ; $675d: $5e
	ld c, [hl]                                       ; $675e: $4e
	and d                                            ; $675f: $a2

jr_024_6760:
	ld l, e                                          ; $6760: $6b
	nop                                              ; $6761: $00
	ld a, [hl]                                       ; $6762: $7e
	rla                                              ; $6763: $17
	ld h, e                                          ; $6764: $63
	db $ed                                           ; $6765: $ed
	ld [bc], a                                       ; $6766: $02
	ret nc                                           ; $6767: $d0

	dec sp                                           ; $6768: $3b
	ldh a, [$de]                                     ; $6769: $f0 $de
	cp $9e                                           ; $676b: $fe $9e
	db $fc                                           ; $676d: $fc
	ld h, b                                          ; $676e: $60
	sbc $9e                                          ; $676f: $de $9e
	add c                                            ; $6771: $81
	ld [hl], l                                       ; $6772: $75
	adc [hl]                                         ; $6773: $8e
	adc b                                            ; $6774: $88
	inc bc                                           ; $6775: $03
	dec b                                            ; $6776: $05
	rlca                                             ; $6777: $07
	ld c, $0f                                        ; $6778: $0e $0f
	ld e, $1d                                        ; $677a: $1e $1d
	ld a, $3c                                        ; $677c: $3e $3c
	ld a, [hl-]                                      ; $677e: $3a
	adc c                                            ; $677f: $89
	push de                                          ; $6780: $d5
	cp c                                             ; $6781: $b9
	sub c                                            ; $6782: $91
	xor e                                            ; $6783: $ab
	di                                               ; $6784: $f3
	ldh [c], a                                       ; $6785: $e2
	sub $70                                          ; $6786: $d6 $70
	jr nz, @+$42                                     ; $6788: $20 $40

	ld h, b                                          ; $678a: $60
	ld b, b                                          ; $678b: $40
	ld [hl], l                                       ; $678c: $75
	ld [hl], c                                       ; $678d: $71
	sbc [hl]                                         ; $678e: $9e
	ld b, $6d                                        ; $678f: $06 $6d
	adc b                                            ; $6791: $88
	sbc l                                            ; $6792: $9d
	ld bc, $6f07                                     ; $6793: $01 $07 $6f
	ld hl, sp-$79                                    ; $6796: $f8 $87
	sbc a                                            ; $6798: $9f
	ld a, b                                          ; $6799: $78
	or [hl]                                          ; $679a: $b6
	inc l                                            ; $679b: $2c
	ld d, a                                          ; $679c: $57
	ld a, a                                          ; $679d: $7f
	ld [hl], l                                       ; $679e: $75
	sbc $ff                                          ; $679f: $de $ff
	rst $38                                          ; $67a1: $ff
	cp c                                             ; $67a2: $b9
	inc sp                                           ; $67a3: $33
	ld l, a                                          ; $67a4: $6f
	ld c, c                                          ; $67a5: $49
	ld e, e                                          ; $67a6: $5b
	or e                                             ; $67a7: $b3
	db $fc                                           ; $67a8: $fc
	ld h, c                                          ; $67a9: $61
	ld b, [hl]                                       ; $67aa: $46
	ld sp, hl                                        ; $67ab: $f9
	sub e                                            ; $67ac: $93
	rla                                              ; $67ad: $17
	daa                                              ; $67ae: $27
	cpl                                              ; $67af: $2f
	ld [hl], e                                       ; $67b0: $73
	xor b                                            ; $67b1: $a8
	rst SubAFromDE                                          ; $67b2: $df
	db $fc                                           ; $67b3: $fc
	sub [hl]                                         ; $67b4: $96
	ld sp, hl                                        ; $67b5: $f9
	add sp, -$57                                     ; $67b6: $e8 $a9
	add hl, hl                                       ; $67b8: $29
	ld a, [$ecfa]                                    ; $67b9: $fa $fa $ec
	db $ec                                           ; $67bc: $ec
	rst GetHLinHL                                          ; $67bd: $cf
	db $dd                                           ; $67be: $dd
	rst $38                                          ; $67bf: $ff
	rst SubAFromDE                                          ; $67c0: $df
	ccf                                              ; $67c1: $3f
	ld a, a                                          ; $67c2: $7f
	ld d, [hl]                                       ; $67c3: $56
	sub h                                            ; $67c4: $94
	adc [hl]                                         ; $67c5: $8e
	dec c                                            ; $67c6: $0d
	ld d, $08                                        ; $67c7: $16 $08
	jr nc, jr_024_680b                               ; $67c9: $30 $40

	add e                                            ; $67cb: $83
	cp $f1                                           ; $67cc: $fe $f1
	di                                               ; $67ce: $f3
	rst AddAOntoHL                                          ; $67cf: $ef
	call c, $96ff                                    ; $67d0: $dc $ff $96
	rst SubAFromDE                                          ; $67d3: $df
	inc a                                            ; $67d4: $3c
	ld [hl], l                                       ; $67d5: $75
	db $eb                                           ; $67d6: $eb
	scf                                              ; $67d7: $37
	call c, $0e81                                    ; $67d8: $dc $81 $0e
	ldh [$79], a                                     ; $67db: $e0 $79
	ld [hl], h                                       ; $67dd: $74
	adc [hl]                                         ; $67de: $8e
	ld hl, sp-$1d                                    ; $67df: $f8 $e3
	rst $38                                          ; $67e1: $ff
	rst $38                                          ; $67e2: $ff
	ld d, d                                          ; $67e3: $52

jr_024_67e4:
	and h                                            ; $67e4: $a4
	ld c, b                                          ; $67e5: $48
	and e                                            ; $67e6: $a3
	ld e, b                                          ; $67e7: $58
	add c                                            ; $67e8: $81
	ld b, $0e                                        ; $67e9: $06 $0e
	adc h                                            ; $67eb: $8c
	jr jr_024_681e                                   ; $67ec: $18 $30

	ld [hl], b                                       ; $67ee: $70
	rst SubAFromBC                                          ; $67ef: $e7
	sbc $ff                                          ; $67f0: $de $ff
	sub a                                            ; $67f2: $97
	ld h, $4c                                        ; $67f3: $26 $4c
	adc h                                            ; $67f5: $8c
	ld [$1299], sp                                   ; $67f6: $08 $99 $12
	inc [hl]                                         ; $67f9: $34
	jr z, jr_024_6877                                ; $67fa: $28 $7b

	pop af                                           ; $67fc: $f1

jr_024_67fd:
	ld a, [hl]                                       ; $67fd: $7e
	sbc l                                            ; $67fe: $9d
	ld a, l                                          ; $67ff: $7d
	ld c, a                                          ; $6800: $4f
	add [hl]                                         ; $6801: $86
	rst JumpTable                                          ; $6802: $c7
	dec b                                            ; $6803: $05
	ld bc, $29a1                                     ; $6804: $01 $a1 $29
	ld bc, $d555                                     ; $6807: $01 $55 $d5
	xor c                                            ; $680a: $a9

jr_024_680b:
	ld h, d                                          ; $680b: $62
	ld h, [hl]                                       ; $680c: $66
	ld b, [hl]                                       ; $680d: $46
	add $ce                                          ; $680e: $c6 $ce
	adc [hl]                                         ; $6810: $8e
	adc [hl]                                         ; $6811: $8e
	sbc [hl]                                         ; $6812: $9e
	dec e                                            ; $6813: $1d
	dec e                                            ; $6814: $1d
	inc d                                            ; $6815: $14
	ld d, h                                          ; $6816: $54
	ld d, $92                                        ; $6817: $16 $92
	ld d, b                                          ; $6819: $50
	ld d, [hl]                                       ; $681a: $56
	db $dd                                           ; $681b: $dd
	jr nz, jr_024_67fd                               ; $681c: $20 $df

jr_024_681e:
	ld h, b                                          ; $681e: $60
	rst SubAFromDE                                          ; $681f: $df
	ldh [$9a], a                                     ; $6820: $e0 $9a
	inc sp                                           ; $6822: $33
	ld sp, $9d89                                     ; $6823: $31 $89 $9d
	sbc c                                            ; $6826: $99
	sbc $19                                          ; $6827: $de $19
	sbc e                                            ; $6829: $9b
	dec de                                           ; $682a: $1b
	rra                                              ; $682b: $1f
	rra                                              ; $682c: $1f
	dec bc                                           ; $682d: $0b
	db $dd                                           ; $682e: $dd
	add hl, bc                                       ; $682f: $09
	adc [hl]                                         ; $6830: $8e
	xor [hl]                                         ; $6831: $ae
	or [hl]                                          ; $6832: $b6
	ld a, [hl]                                       ; $6833: $7e
	ld c, d                                          ; $6834: $4a
	ld a, [hl-]                                      ; $6835: $3a
	ld d, d                                          ; $6836: $52
	ld [hl], d                                       ; $6837: $72
	and [hl]                                         ; $6838: $a6
	ld e, d                                          ; $6839: $5a
	ld e, d                                          ; $683a: $5a
	sub d                                            ; $683b: $92
	or d                                             ; $683c: $b2
	db $e3                                           ; $683d: $e3
	db $e3                                           ; $683e: $e3
	jp $00c2                                         ; $683f: $c3 $c2 $00


	ld a, c                                          ; $6842: $79
	ld [$069b], a                                    ; $6843: $ea $9b $06
	inc h                                            ; $6846: $24
	inc c                                            ; $6847: $0c
	adc c                                            ; $6848: $89
	ld [hl], e                                       ; $6849: $73
	inc a                                            ; $684a: $3c
	sbc h                                            ; $684b: $9c
	jp Jump_024_76f3                                 ; $684c: $c3 $f3 $76


	ld a, c                                          ; $684f: $79
	jr nz, jr_024_67e4                               ; $6850: $20 $92

	ld [bc], a                                       ; $6852: $02
	dec b                                            ; $6853: $05
	ld a, [bc]                                       ; $6854: $0a
	add l                                            ; $6855: $85
	ld c, d                                          ; $6856: $4a
	nop                                              ; $6857: $00
	ld h, b                                          ; $6858: $60
	db $fc                                           ; $6859: $fc
	db $fd                                           ; $685a: $fd
	ld a, [$7af5]                                    ; $685b: $fa $f5 $7a
	or l                                             ; $685e: $b5
	ld e, d                                          ; $685f: $5a
	or l                                             ; $6860: $b5
	ld h, l                                          ; $6861: $65
	ld sp, $ff9e                                     ; $6862: $31 $9e $ff
	ld a, e                                          ; $6865: $7b
	db $ed                                           ; $6866: $ed
	sbc [hl]                                         ; $6867: $9e
	jr nz, jr_024_68d5                               ; $6868: $20 $6b

	db $ed                                           ; $686a: $ed
	sbc [hl]                                         ; $686b: $9e
	ret nz                                           ; $686c: $c0

	ld b, [hl]                                       ; $686d: $46
	ret nz                                           ; $686e: $c0

	ld a, b                                          ; $686f: $78
	ld d, l                                          ; $6870: $55
	ld [hl], c                                       ; $6871: $71
	adc [hl]                                         ; $6872: $8e
	ld [hl], e                                       ; $6873: $73
	or b                                             ; $6874: $b0
	ld a, e                                          ; $6875: $7b
	and h                                            ; $6876: $a4

jr_024_6877:
	add [hl]                                         ; $6877: $86
	dec bc                                           ; $6878: $0b
	rlca                                             ; $6879: $07
	dec bc                                           ; $687a: $0b
	rla                                              ; $687b: $17
	rrca                                             ; $687c: $0f
	rla                                              ; $687d: $17
	cpl                                              ; $687e: $2f
	rra                                              ; $687f: $1f
	ld [hl], h                                       ; $6880: $74
	ld a, b                                          ; $6881: $78
	db $f4                                           ; $6882: $f4
	add sp, -$10                                     ; $6883: $e8 $f0
	add sp, -$30                                     ; $6885: $e8 $d0
	ldh [$e6], a                                     ; $6887: $e0 $e6
	jp nz, $caaa                                     ; $6889: $c2 $aa $ca

	add h                                            ; $688c: $84
	ld d, h                                          ; $688d: $54
	sub h                                            ; $688e: $94
	inc b                                            ; $688f: $04
	nop                                              ; $6890: $00
	sbc $04                                          ; $6891: $de $04
	sbc $08                                          ; $6893: $de $08
	ld a, h                                          ; $6895: $7c
	or b                                             ; $6896: $b0
	ldh a, [c]                                       ; $6897: $f2
	add d                                            ; $6898: $82
	ei                                               ; $6899: $fb
	rst $38                                          ; $689a: $ff
	cp a                                             ; $689b: $bf
	ld e, [hl]                                       ; $689c: $5e
	ld e, d                                          ; $689d: $5a
	rla                                              ; $689e: $17
	rrca                                             ; $689f: $0f
	dec c                                            ; $68a0: $0d
	or [hl]                                          ; $68a1: $b6
	or [hl]                                          ; $68a2: $b6
	or $57                                           ; $68a3: $f6 $57
	ld d, a                                          ; $68a5: $57
	dec de                                           ; $68a6: $1b
	dec bc                                           ; $68a7: $0b
	add hl, bc                                       ; $68a8: $09
	ld c, a                                          ; $68a9: $4f
	ld c, a                                          ; $68aa: $4f
	rst JumpTable                                          ; $68ab: $c7
	rst SubAFromHL                                          ; $68ac: $d7
	sub a                                            ; $68ad: $97
	dec hl                                           ; $68ae: $2b
	dec hl                                           ; $68af: $2b
	ld c, e                                          ; $68b0: $4b
	ld sp, hl                                        ; $68b1: $f9
	ld sp, hl                                        ; $68b2: $f9
	db $fd                                           ; $68b3: $fd
	db $fc                                           ; $68b4: $fc
	db $fc                                           ; $68b5: $fc
	sbc $fe                                          ; $68b6: $de $fe
	rst SubAFromDE                                          ; $68b8: $df
	rst GetHLinHL                                          ; $68b9: $cf
	sbc $df                                          ; $68ba: $de $df
	sbc $bf                                          ; $68bc: $de $bf
	rst SubAFromDE                                          ; $68be: $df
	ld a, b                                          ; $68bf: $78
	ld a, a                                          ; $68c0: $7f
	nop                                              ; $68c1: $00
	sbc [hl]                                         ; $68c2: $9e
	ld [hl], b                                       ; $68c3: $70
	sbc $e0                                          ; $68c4: $de $e0
	ld [hl], a                                       ; $68c6: $77
	ld l, l                                          ; $68c7: $6d
	sbc l                                            ; $68c8: $9d
	ld h, b                                          ; $68c9: $60
	cp a                                             ; $68ca: $bf
	ld a, c                                          ; $68cb: $79
	ei                                               ; $68cc: $fb
	sbc [hl]                                         ; $68cd: $9e
	ccf                                              ; $68ce: $3f
	ld a, d                                          ; $68cf: $7a
	add h                                            ; $68d0: $84
	ld a, e                                          ; $68d1: $7b
	ld [hl], d                                       ; $68d2: $72
	ld a, a                                          ; $68d3: $7f
	add d                                            ; $68d4: $82

jr_024_68d5:
	ld a, [hl]                                       ; $68d5: $7e
	jp c, $3f91                                      ; $68d6: $da $91 $3f

	rst SubAFromDE                                          ; $68d9: $df
	ld a, [hl]                                       ; $68da: $7e
	rst SubAFromDE                                          ; $68db: $df
	rst $38                                          ; $68dc: $ff
	rra                                              ; $68dd: $1f
	ld a, a                                          ; $68de: $7f
	ld hl, sp-$40                                    ; $68df: $f8 $c0
	ld hl, $ff87                                     ; $68e1: $21 $87 $ff
	inc a                                            ; $68e4: $3c
	ld hl, sp+$75                                    ; $68e5: $f8 $75
	halt                                             ; $68e7: $76
	adc [hl]                                         ; $68e8: $8e
	rrca                                             ; $68e9: $0f

Jump_024_68ea:
	rst $38                                          ; $68ea: $ff
	rst FarCall                                          ; $68eb: $f7
	rst GetHLinHL                                          ; $68ec: $cf
	rra                                              ; $68ed: $1f
	ccf                                              ; $68ee: $3f
	ld a, a                                          ; $68ef: $7f
	rst $38                                          ; $68f0: $ff
	cp $f0                                           ; $68f1: $fe $f0
	ld bc, $0402                                     ; $68f3: $01 $02 $04
	inc c                                            ; $68f6: $0c
	add hl, sp                                       ; $68f7: $39
	di                                               ; $68f8: $f3
	rst SubAFromBC                                          ; $68f9: $e7
	ld [hl], c                                       ; $68fa: $71
	ld b, h                                          ; $68fb: $44
	ld a, [hl]                                       ; $68fc: $7e
	sub e                                            ; $68fd: $93
	sub l                                            ; $68fe: $95
	ld a, $ff                                        ; $68ff: $3e $ff
	db $10                                           ; $6901: $10
	jr nc, jr_024_6965                               ; $6902: $30 $61

	db $e3                                           ; $6904: $e3
	rst JumpTable                                          ; $6905: $c7
	rst GetHLinHL                                          ; $6906: $cf
	sbc [hl]                                         ; $6907: $9e
	ld a, [hl]                                       ; $6908: $7e
	db $dd                                           ; $6909: $dd
	rst $38                                          ; $690a: $ff
	add b                                            ; $690b: $80
	db $fd                                           ; $690c: $fd
	ld a, c                                          ; $690d: $79
	di                                               ; $690e: $f3
	db $e3                                           ; $690f: $e3
	add d                                            ; $6910: $82
	add d                                            ; $6911: $82
	and d                                            ; $6912: $a2
	ld a, [hl+]                                      ; $6913: $2a
	nop                                              ; $6914: $00
	ld e, b                                          ; $6915: $58
	ld l, h                                          ; $6916: $6c
	ld d, c                                          ; $6917: $51
	db $e4                                           ; $6918: $e4
	db $e4                                           ; $6919: $e4
	call nz, $ccc4                                   ; $691a: $c4 $c4 $cc
	adc h                                            ; $691d: $8c
	sbc b                                            ; $691e: $98
	cp b                                             ; $691f: $b8
	add hl, de                                       ; $6920: $19
	ld a, [hl+]                                      ; $6921: $2a
	dec a                                            ; $6922: $3d
	ld e, b                                          ; $6923: $58
	ld [hl], e                                       ; $6924: $73
	xor [hl]                                         ; $6925: $ae
	ld e, b                                          ; $6926: $58

jr_024_6927:
	cp a                                             ; $6927: $bf
	add hl, bc                                       ; $6928: $09
	dec de                                           ; $6929: $1b
	ld e, $80                                        ; $692a: $1e $80
	ccf                                              ; $692c: $3f
	inc a                                            ; $692d: $3c
	ld [hl], b                                       ; $692e: $70
	ldh [$c0], a                                     ; $692f: $e0 $c0
	ld c, d                                          ; $6931: $4a

jr_024_6932:
	sub h                                            ; $6932: $94
	sub h                                            ; $6933: $94
	ld c, b                                          ; $6934: $48
	jr @+$32                                         ; $6935: $18 $30

	ld h, b                                          ; $6937: $60
	ld b, b                                          ; $6938: $40
	add [hl]                                         ; $6939: $86
	inc c                                            ; $693a: $0c
	ld h, h                                          ; $693b: $64
	adc b                                            ; $693c: $88
	ld [$2010], sp                                   ; $693d: $08 $10 $20
	ret nz                                           ; $6940: $c0

	jr @+$13                                         ; $6941: $18 $11

	ld [hl-], a                                      ; $6943: $32
	inc h                                            ; $6944: $24
	ld h, d                                          ; $6945: $62
	ld b, h                                          ; $6946: $44
	ret z                                            ; $6947: $c8

	sub b                                            ; $6948: $90
	rlca                                             ; $6949: $07
	ld c, $8d                                        ; $694a: $0e $8d
	dec c                                            ; $694c: $0d
	dec de                                           ; $694d: $1b
	dec e                                            ; $694e: $1d
	dec sp                                           ; $694f: $3b
	scf                                              ; $6950: $37
	ld l, a                                          ; $6951: $6f
	sbc h                                            ; $6952: $9c
	ld d, $2c                                        ; $6953: $16 $2c
	inc e                                            ; $6955: $1c
	ld l, b                                          ; $6956: $68
	ld e, b                                          ; $6957: $58
	jr c, jr_024_6932                                ; $6958: $38 $d8

	ld h, e                                          ; $695a: $63
	pop hl                                           ; $695b: $e1
	jp $dec3                                         ; $695c: $c3 $c3 $de


	add a                                            ; $695f: $87
	ld a, h                                          ; $6960: $7c
	or b                                             ; $6961: $b0
	ld a, l                                          ; $6962: $7d
	dec bc                                           ; $6963: $0b
	sub d                                            ; $6964: $92

jr_024_6965:
	ld hl, $2313                                     ; $6965: $21 $13 $23
	ld b, a                                          ; $6968: $47
	and a                                            ; $6969: $a7
	rst AddAOntoHL                                          ; $696a: $ef
	rst FarCall                                          ; $696b: $f7
	xor $de                                          ; $696c: $ee $de
	db $ec                                           ; $696e: $ec
	call c, $58b8                                    ; $696f: $dc $b8 $58
	halt                                             ; $6972: $76
	pop hl                                           ; $6973: $e1
	ld l, [hl]                                       ; $6974: $6e
	ldh [$de], a                                     ; $6975: $e0 $de
	ld bc, $6f78                                     ; $6977: $01 $78 $6f
	db $db                                           ; $697a: $db
	rst $38                                          ; $697b: $ff
	rst SubAFromDE                                          ; $697c: $df
	cp $f9                                           ; $697d: $fe $f9
	ld a, b                                          ; $697f: $78
	ld d, l                                          ; $6980: $55
	ld a, b                                          ; $6981: $78
	ld d, h                                          ; $6982: $54
	rst $38                                          ; $6983: $ff
	sbc $07                                          ; $6984: $de $07
	rst SubAFromDE                                          ; $6986: $df
	rrca                                             ; $6987: $0f
	rst SubAFromDE                                          ; $6988: $df
	rra                                              ; $6989: $1f
	add b                                            ; $698a: $80
	ccf                                              ; $698b: $3f
	cpl                                              ; $698c: $2f
	ld e, a                                          ; $698d: $5f
	ld a, $5f                                        ; $698e: $3e $5f
	cp [hl]                                          ; $6990: $be
	ld e, l                                          ; $6991: $5d
	cp [hl]                                          ; $6992: $be
	dec a                                            ; $6993: $3d
	ret nc                                           ; $6994: $d0

	and b                                            ; $6995: $a0
	ret nz                                           ; $6996: $c0

	and b                                            ; $6997: $a0
	ld b, b                                          ; $6998: $40
	and b                                            ; $6999: $a0
	ld b, b                                          ; $699a: $40
	ret nz                                           ; $699b: $c0

	and h                                            ; $699c: $a4
	jr z, jr_024_6927                                ; $699d: $28 $88

	ld [$0c58], sp                                   ; $699f: $08 $58 $0c
	sbc e                                            ; $69a2: $9b
	jr nc, jr_024_69bd                               ; $69a3: $30 $18

	db $10                                           ; $69a5: $10
	jr nc, jr_024_69d8                               ; $69a6: $30 $30

	jr nz, jr_024_6a1a                               ; $69a8: $20 $70

	sbc l                                            ; $69aa: $9d
	ld h, h                                          ; $69ab: $64
	ld c, a                                          ; $69ac: $4f
	ld l, d                                          ; $69ad: $6a
	ld a, b                                          ; $69ae: $78
	sbc [hl]                                         ; $69af: $9e
	ld h, b                                          ; $69b0: $60
	ld h, [hl]                                       ; $69b1: $66
	ld e, h                                          ; $69b2: $5c
	sbc l                                            ; $69b3: $9d
	dec b                                            ; $69b4: $05
	inc b                                            ; $69b5: $04
	ei                                               ; $69b6: $fb
	ld h, a                                          ; $69b7: $67
	ld hl, sp+$7d                                    ; $69b8: $f8 $7d
	push hl                                          ; $69ba: $e5
	sbc c                                            ; $69bb: $99
	ld d, a                                          ; $69bc: $57

jr_024_69bd:
	dec [hl]                                         ; $69bd: $35
	dec d                                            ; $69be: $15
	add hl, bc                                       ; $69bf: $09
	add hl, bc                                       ; $69c0: $09
	ld [bc], a                                       ; $69c1: $02
	ld a, b                                          ; $69c2: $78
	db $eb                                           ; $69c3: $eb
	sub d                                            ; $69c4: $92
	dec a                                            ; $69c5: $3d
	dec e                                            ; $69c6: $1d
	add hl, bc                                       ; $69c7: $09
	add hl, bc                                       ; $69c8: $09
	inc bc                                           ; $69c9: $03
	ld a, [hl]                                       ; $69ca: $7e
	ld a, [hl]                                       ; $69cb: $7e
	cp $ff                                           ; $69cc: $fe $ff
	rst $38                                          ; $69ce: $ff
	ld e, a                                          ; $69cf: $5f
	ld a, a                                          ; $69d0: $7f
	ld a, a                                          ; $69d1: $7f
	call c, $dec0                                    ; $69d2: $dc $c0 $de
	ldh [$6d], a                                     ; $69d5: $e0 $6d
	ld c, d                                          ; $69d7: $4a

jr_024_69d8:
	ld a, d                                          ; $69d8: $7a
	ld a, [bc]                                       ; $69d9: $0a
	ld h, l                                          ; $69da: $65
	nop                                              ; $69db: $00
	sbc h                                            ; $69dc: $9c
	ld e, a                                          ; $69dd: $5f
	rra                                              ; $69de: $1f
	rlca                                             ; $69df: $07
	cp $9d                                           ; $69e0: $fe $9d
	ld [bc], a                                       ; $69e2: $02
	ldh [rOCPS], a                                   ; $69e3: $e0 $6a
	ld e, $de                                        ; $69e5: $1e $de
	rst $38                                          ; $69e7: $ff
	sbc e                                            ; $69e8: $9b
	adc [hl]                                         ; $69e9: $8e
	dec b                                            ; $69ea: $05
	rlca                                             ; $69eb: $07
	ld [bc], a                                       ; $69ec: $02
	ld [hl], a                                       ; $69ed: $77
	reti                                             ; $69ee: $d9


	ld [hl], a                                       ; $69ef: $77
	ld d, c                                          ; $69f0: $51
	add b                                            ; $69f1: $80
	rlca                                             ; $69f2: $07
	cp $ff                                           ; $69f3: $fe $ff
	adc a                                            ; $69f5: $8f
	rst $38                                          ; $69f6: $ff
	rst AddAOntoHL                                          ; $69f7: $ef
	adc a                                            ; $69f8: $8f
	rst JumpTable                                          ; $69f9: $c7
	rlc e                                            ; $69fa: $cb $03
	rlca                                             ; $69fc: $07
	ld [hl], b                                       ; $69fd: $70
	ld hl, sp-$64                                    ; $69fe: $f8 $9c
	adc [hl]                                         ; $6a00: $8e
	rst GetHLinHL                                          ; $6a01: $cf
	rst SubAFromDE                                          ; $6a02: $df
	cp h                                             ; $6a03: $bc
	call c, $f0d8                                    ; $6a04: $dc $d8 $f0
	db $e3                                           ; $6a07: $e3
	cp $f8                                           ; $6a08: $fe $f8
	pop af                                           ; $6a0a: $f1
	rst JumpTable                                          ; $6a0b: $c7
	ld h, a                                          ; $6a0c: $67
	ld l, a                                          ; $6a0d: $6f
	ccf                                              ; $6a0e: $3f
	ccf                                              ; $6a0f: $3f
	ld a, a                                          ; $6a10: $7f
	add c                                            ; $6a11: $81
	sbc a                                            ; $6a12: $9f
	ccf                                              ; $6a13: $3f
	sub d                                            ; $6a14: $92
	dec l                                            ; $6a15: $2d
	ld c, d                                          ; $6a16: $4a
	sub h                                            ; $6a17: $94
	rrca                                             ; $6a18: $0f
	ld a, [hl-]                                      ; $6a19: $3a

jr_024_6a1a:
	ld h, b                                          ; $6a1a: $60
	or b                                             ; $6a1b: $b0
	ld a, c                                          ; $6a1c: $79
	di                                               ; $6a1d: $f3
	rst FarCall                                          ; $6a1e: $f7
	rst AddAOntoHL                                          ; $6a1f: $ef
	rst $38                                          ; $6a20: $ff
	db $fc                                           ; $6a21: $fc
	rst $38                                          ; $6a22: $ff
	rst AddAOntoHL                                          ; $6a23: $ef
	add b                                            ; $6a24: $80
	ld sp, hl                                        ; $6a25: $f9
	and $38                                          ; $6a26: $e6 $38
	ret nz                                           ; $6a28: $c0

	nop                                              ; $6a29: $00
	add b                                            ; $6a2a: $80
	db $10                                           ; $6a2b: $10
	rst $38                                          ; $6a2c: $ff
	rlca                                             ; $6a2d: $07
	ld e, $f8                                        ; $6a2e: $1e $f8
	ld a, e                                          ; $6a30: $7b
	dec bc                                           ; $6a31: $0b
	sub l                                            ; $6a32: $95
	ldh [hLCDCIntHandlerIdx], a                                     ; $6a33: $e0 $81
	inc bc                                           ; $6a35: $03
	ld b, $05                                        ; $6a36: $06 $05
	ld c, $0c                                        ; $6a38: $0e $0c
	jr jr_024_6a51                                   ; $6a3a: $18 $15

	add b                                            ; $6a3c: $80
	ld [hl], b                                       ; $6a3d: $70
	xor c                                            ; $6a3e: $a9
	add b                                            ; $6a3f: $80
	rlca                                             ; $6a40: $07
	ld a, [bc]                                       ; $6a41: $0a
	adc b                                            ; $6a42: $88
	jr nc, jr_024_6a6e                               ; $6a43: $30 $29

	ld h, e                                          ; $6a45: $63
	ld d, d                                          ; $6a46: $52
	push hl                                          ; $6a47: $e5
	sub $ad                                          ; $6a48: $d6 $ad
	ld [hl], a                                       ; $6a4a: $77
	rst GetHLinHL                                          ; $6a4b: $cf
	sub $9c                                          ; $6a4c: $d6 $9c
	xor h                                            ; $6a4e: $ac
	jr jr_024_6a79                                   ; $6a4f: $18 $28

jr_024_6a51:
	ld d, b                                          ; $6a51: $50
	or c                                             ; $6a52: $b1
	ld d, c                                          ; $6a53: $51
	or e                                             ; $6a54: $b3
	ld h, e                                          ; $6a55: $63
	db $eb                                           ; $6a56: $eb
	ld d, a                                          ; $6a57: $57
	rst AddAOntoHL                                          ; $6a58: $ef
	rst SubAFromHL                                          ; $6a59: $d7
	ld c, $0e                                        ; $6a5a: $0e $0e
	inc c                                            ; $6a5c: $0c
	inc e                                            ; $6a5d: $1c
	inc d                                            ; $6a5e: $14
	adc b                                            ; $6a5f: $88
	jr z, jr_024_6a72                                ; $6a60: $28 $10

	jr z, jr_024_6ab3                                ; $6a62: $28 $4f

	rst GetHLinHL                                          ; $6a64: $cf
	rst SubAFromDE                                          ; $6a65: $df
	sbc a                                            ; $6a66: $9f
	cp a                                             ; $6a67: $bf
	cp a                                             ; $6a68: $bf
	ld a, [hl]                                       ; $6a69: $7e
	cp $b0                                           ; $6a6a: $fe $b0
	jr nc, jr_024_6a8e                               ; $6a6c: $30 $20

jr_024_6a6e:
	ld h, b                                          ; $6a6e: $60
	ld b, b                                          ; $6a6f: $40
	ld b, b                                          ; $6a70: $40
	add b                                            ; $6a71: $80

jr_024_6a72:
	nop                                              ; $6a72: $00
	ret nz                                           ; $6a73: $c0

	add c                                            ; $6a74: $81
	add c                                            ; $6a75: $81
	inc de                                           ; $6a76: $13
	ld [hl], a                                       ; $6a77: $77
	ld a, b                                          ; $6a78: $78

jr_024_6a79:
	ld a, [hl]                                       ; $6a79: $7e
	sub b                                            ; $6a7a: $90
	ld a, e                                          ; $6a7b: $7b
	rst SubAFromDE                                          ; $6a7c: $df
	sbc h                                            ; $6a7d: $9c
	inc e                                            ; $6a7e: $1c
	jr c, @+$3a                                      ; $6a7f: $38 $38

	ld a, $00                                        ; $6a81: $3e $00
	rst SubAFromDE                                          ; $6a83: $df
	ld [hl+], a                                      ; $6a84: $22
	sbc [hl]                                         ; $6a85: $9e
	ld [hl], a                                       ; $6a86: $77
	reti                                             ; $6a87: $d9


	ld [hl+], a                                      ; $6a88: $22
	sbc h                                            ; $6a89: $9c
	daa                                              ; $6a8a: $27
	ld d, b                                          ; $6a8b: $50
	ld b, d                                          ; $6a8c: $42

jr_024_6a8d:
	ld h, e                                          ; $6a8d: $63

jr_024_6a8e:
	or $9d                                           ; $6a8e: $f6 $9d
	ld d, h                                          ; $6a90: $54
	ld b, b                                          ; $6a91: $40
	db $db                                           ; $6a92: $db
	ld [hl+], a                                      ; $6a93: $22
	sbc c                                            ; $6a94: $99
	dec h                                            ; $6a95: $25
	ld b, b                                          ; $6a96: $40
	inc b                                            ; $6a97: $04
	nop                                              ; $6a98: $00
	nop                                              ; $6a99: $00
	ld [bc], a                                       ; $6a9a: $02
	db $dd                                           ; $6a9b: $dd
	ld [hl+], a                                      ; $6a9c: $22
	sbc l                                            ; $6a9d: $9d
	ld [hl], l                                       ; $6a9e: $75
	ld d, b                                          ; $6a9f: $50
	db $fd                                           ; $6aa0: $fd
	ld [hl], a                                       ; $6aa1: $77
	push af                                          ; $6aa2: $f5
	sbc h                                            ; $6aa3: $9c
	ld d, l                                          ; $6aa4: $55
	nop                                              ; $6aa5: $00
	ld de, $9afd                                     ; $6aa6: $11 $fd $9a
	ld d, l                                          ; $6aa9: $55
	ld [hl], a                                       ; $6aaa: $77
	daa                                              ; $6aab: $27
	ld d, l                                          ; $6aac: $55
	jr nz, jr_024_6a8d                               ; $6aad: $20 $de

	ld de, $1097                                     ; $6aaf: $11 $97 $10
	nop                                              ; $6ab2: $00

jr_024_6ab3:
	ld d, l                                          ; $6ab3: $55
	ld d, h                                          ; $6ab4: $54
	daa                                              ; $6ab5: $27
	ld d, l                                          ; $6ab6: $55
	ld d, l                                          ; $6ab7: $55
	ld hl, $f67b                                     ; $6ab8: $21 $7b $f6
	sbc h                                            ; $6abb: $9c
	dec b                                            ; $6abc: $05
	ld d, l                                          ; $6abd: $55
	ld d, d                                          ; $6abe: $52
	and [hl]                                         ; $6abf: $a6
	rlca                                             ; $6ac0: $07
	sbc h                                            ; $6ac1: $9c
	cp $00                                           ; $6ac2: $fe $00
	db $fc                                           ; $6ac4: $fc
	ld a, e                                          ; $6ac5: $7b
	cp $9e                                           ; $6ac6: $fe $9e
	ld hl, sp+$7b                                    ; $6ac8: $f8 $7b
	cp $95                                           ; $6aca: $fe $95
	ldh a, [rP1]                                     ; $6acc: $f0 $00
	ldh a, [rSB]                                     ; $6ace: $f0 $01
	ldh a, [rSB]                                     ; $6ad0: $f0 $01
	nop                                              ; $6ad2: $00
	ccf                                              ; $6ad3: $3f
	nop                                              ; $6ad4: $00
	ld a, a                                          ; $6ad5: $7f
	ld a, e                                          ; $6ad6: $7b
	cp $9e                                           ; $6ad7: $fe $9e
	rst $38                                          ; $6ad9: $ff
	ld h, a                                          ; $6ada: $67
	cp $83                                           ; $6adb: $fe $83
	ld c, $f0                                        ; $6add: $0e $f0
	inc bc                                           ; $6adf: $03
	db $fc                                           ; $6ae0: $fc
	nop                                              ; $6ae1: $00
	rst $38                                          ; $6ae2: $ff
	ld bc, $02fe                                     ; $6ae3: $01 $fe $02
	db $fd                                           ; $6ae6: $fd
	dec b                                            ; $6ae7: $05
	ld a, [$d52a]                                    ; $6ae8: $fa $2a $d5
	ld d, l                                          ; $6aeb: $55
	xor d                                            ; $6aec: $aa
	sub b                                            ; $6aed: $90
	ld l, a                                          ; $6aee: $6f
	or b                                             ; $6aef: $b0
	ld c, a                                          ; $6af0: $4f
	add sp, $17                                      ; $6af1: $e8 $17
	ld d, h                                          ; $6af3: $54
	xor e                                            ; $6af4: $ab
	xor d                                            ; $6af5: $aa
	ld d, l                                          ; $6af6: $55
	ld d, l                                          ; $6af7: $55
	xor d                                            ; $6af8: $aa
	ld [hl], a                                       ; $6af9: $77
	db $fc                                           ; $6afa: $fc
	sbc l                                            ; $6afb: $9d
	inc e                                            ; $6afc: $1c
	ldh [rPCM34], a                                  ; $6afd: $e0 $77
	ldh [$7f], a                                     ; $6aff: $e0 $7f
	cp $9b                                           ; $6b01: $fe $9b
	add b                                            ; $6b03: $80
	ld a, a                                          ; $6b04: $7f
	ld d, b                                          ; $6b05: $50
	xor a                                            ; $6b06: $af
	ld [hl], a                                       ; $6b07: $77
	ldh a, [$fd]                                     ; $6b08: $f0 $fd
	sbc l                                            ; $6b0a: $9d
	ldh [rP1], a                                     ; $6b0b: $e0 $00
	ld h, a                                          ; $6b0d: $67
	ld [$439a], a                                    ; $6b0e: $ea $9a $43
	cp a                                             ; $6b11: $bf
	ld [bc], a                                       ; $6b12: $02
	inc bc                                           ; $6b13: $03
	ld [bc], a                                       ; $6b14: $02
	call c, $9203                                    ; $6b15: $dc $03 $92
	add d                                            ; $6b18: $82
	inc bc                                           ; $6b19: $03
	ld h, e                                          ; $6b1a: $63
	add d                                            ; $6b1b: $82
	dec e                                            ; $6b1c: $1d
	and $ff                                          ; $6b1d: $e6 $ff
	db $fc                                           ; $6b1f: $fc
	ld a, a                                          ; $6b20: $7f
	ldh [$ef], a                                     ; $6b21: $e0 $ef
	ldh a, [rIE]                                     ; $6b23: $f0 $ff
	ld [hl], a                                       ; $6b25: $77
	cp $96                                           ; $6b26: $fe $96
	ld hl, sp-$01                                    ; $6b28: $f8 $ff
	ld hl, sp+$7f                                    ; $6b2a: $f8 $7f
	db $fc                                           ; $6b2c: $fc
	rst $38                                          ; $6b2d: $ff
	ld a, h                                          ; $6b2e: $7c
	add b                                            ; $6b2f: $80
	nop                                              ; $6b30: $00
	ld l, a                                          ; $6b31: $6f
	cp $9e                                           ; $6b32: $fe $9e
	ret nz                                           ; $6b34: $c0

	ld l, e                                          ; $6b35: $6b
	cp $9a                                           ; $6b36: $fe $9a
	ld b, $00                                        ; $6b38: $06 $00
	rrca                                             ; $6b3a: $0f
	nop                                              ; $6b3b: $00
	rra                                              ; $6b3c: $1f
	ld a, e                                          ; $6b3d: $7b
	cp $91                                           ; $6b3e: $fe $91
	dec c                                            ; $6b40: $0d

jr_024_6b41:
	inc bc                                           ; $6b41: $03
	ld b, e                                          ; $6b42: $43
	ld b, a                                          ; $6b43: $47
	ld h, b                                          ; $6b44: $60
	db $10                                           ; $6b45: $10
	inc d                                            ; $6b46: $14
	inc c                                            ; $6b47: $0c
	nop                                              ; $6b48: $00
	inc b                                            ; $6b49: $04
	nop                                              ; $6b4a: $00
	ld b, $03                                        ; $6b4b: $06 $03
	ld bc, $ddfb                                     ; $6b4d: $01 $fb $dd
	ld bc, $f380                                     ; $6b50: $01 $80 $f3

jr_024_6b53:
	ldh a, [c]                                       ; $6b53: $f2
	daa                                              ; $6b54: $27
	ldh [$9f], a                                     ; $6b55: $e0 $9f
	pop bc                                           ; $6b57: $c1
	cp a                                             ; $6b58: $bf
	rra                                              ; $6b59: $1f
	ld a, a                                          ; $6b5a: $7f
	ld h, b                                          ; $6b5b: $60
	rst $38                                          ; $6b5c: $ff
	add b                                            ; $6b5d: $80
	rst $38                                          ; $6b5e: $ff
	ld e, $ff                                        ; $6b5f: $1e $ff
	ccf                                              ; $6b61: $3f
	rst $38                                          ; $6b62: $ff
	ld a, a                                          ; $6b63: $7f

jr_024_6b64:
	sbc e                                            ; $6b64: $9b
	rst $38                                          ; $6b65: $ff
	dec d                                            ; $6b66: $15
	rst $38                                          ; $6b67: $ff
	dec h                                            ; $6b68: $25
	rst $38                                          ; $6b69: $ff
	push hl                                          ; $6b6a: $e5
	rst $38                                          ; $6b6b: $ff
	jp hl                                            ; $6b6c: $e9


	ld a, a                                          ; $6b6d: $7f
	ldh a, [c]                                       ; $6b6e: $f2
	ccf                                              ; $6b6f: $3f
	or $87                                           ; $6b70: $f6 $87
	rra                                              ; $6b72: $1f
	sub d                                            ; $6b73: $92
	or c                                             ; $6b74: $b1
	ret nc                                           ; $6b75: $d0

	sub b                                            ; $6b76: $90

jr_024_6b77:
	jr z, jr_024_6b41                                ; $6b77: $28 $c8

	call c, $e764                                    ; $6b79: $dc $64 $e7
	ld a, e                                          ; $6b7c: $7b
	cp b                                             ; $6b7d: $b8
	ld e, a                                          ; $6b7e: $5f
	ld d, a                                          ; $6b7f: $57
	sub a                                            ; $6b80: $97
	sub c                                            ; $6b81: $91
	or c                                             ; $6b82: $b1
	ld [bc], a                                       ; $6b83: $02
	db $fc                                           ; $6b84: $fc
	ld b, b                                          ; $6b85: $40
	ccf                                              ; $6b86: $3f
	ld [$0207], sp                                   ; $6b87: $08 $07 $02
	ld a, e                                          ; $6b8a: $7b
	cp [hl]                                          ; $6b8b: $be
	rst SubAFromDE                                          ; $6b8c: $df
	ret nz                                           ; $6b8d: $c0

	rst SubAFromDE                                          ; $6b8e: $df
	inc a                                            ; $6b8f: $3c
	add h                                            ; $6b90: $84
	add c                                            ; $6b91: $81
	add b                                            ; $6b92: $80
	add hl, sp                                       ; $6b93: $39
	ld b, $b3                                        ; $6b94: $06 $b3
	inc c                                            ; $6b96: $0c
	ld h, e                                          ; $6b97: $63
	sbc h                                            ; $6b98: $9c
	ld [hl], a                                       ; $6b99: $77
	adc b                                            ; $6b9a: $88
	rst SubAFromBC                                          ; $6b9b: $e7
	jr jr_024_6b64                                   ; $6b9c: $18 $c6

	add hl, sp                                       ; $6b9e: $39
	xor l                                            ; $6b9f: $ad
	ld d, d                                          ; $6ba0: $52
	adc $31                                          ; $6ba1: $ce $31
	db $db                                           ; $6ba3: $db
	jr nz, jr_024_6b53                               ; $6ba4: $20 $ad

	ld d, b                                          ; $6ba6: $50
	ld e, e                                          ; $6ba7: $5b
	and b                                            ; $6ba8: $a0
	or a                                             ; $6ba9: $b7
	ld b, b                                          ; $6baa: $40
	ld c, e                                          ; $6bab: $4b
	ld a, e                                          ; $6bac: $7b
	db $fc                                           ; $6bad: $fc
	adc a                                            ; $6bae: $8f
	ld l, [hl]                                       ; $6baf: $6e
	add c                                            ; $6bb0: $81
	rst SubAFromHL                                          ; $6bb1: $d7
	nop                                              ; $6bb2: $00
	xor a                                            ; $6bb3: $af
	ld d, b                                          ; $6bb4: $50
	rst SubAFromDE                                          ; $6bb5: $df
	jr nz, jr_024_6b77                               ; $6bb6: $20 $bf

	ld b, b                                          ; $6bb8: $40
	ld e, a                                          ; $6bb9: $5f
	and b                                            ; $6bba: $a0
	cp a                                             ; $6bbb: $bf
	ld b, b                                          ; $6bbc: $40
	ld a, a                                          ; $6bbd: $7f
	add b                                            ; $6bbe: $80
	ld [hl], a                                       ; $6bbf: $77
	db $fc                                           ; $6bc0: $fc
	halt                                             ; $6bc1: $76
	ldh [c], a                                       ; $6bc2: $e2
	ld l, d                                          ; $6bc3: $6a
	ldh [hDisp1_OBP1], a                                     ; $6bc4: $e0 $94
	ld bc, $11e0                                     ; $6bc6: $01 $e0 $11
	ret nz                                           ; $6bc9: $c0

	inc hl                                           ; $6bca: $23
	rrca                                             ; $6bcb: $0f
	ld [hl], b                                       ; $6bcc: $70
	rrca                                             ; $6bcd: $0f
	ld [hl], b                                       ; $6bce: $70
	rra                                              ; $6bcf: $1f
	ldh [rPCM34], a                                  ; $6bd0: $e0 $77
	cp $8d                                           ; $6bd2: $fe $8d
	ccf                                              ; $6bd4: $3f
	ret nz                                           ; $6bd5: $c0

	ccf                                              ; $6bd6: $3f
	ret nz                                           ; $6bd7: $c0

	ld a, a                                          ; $6bd8: $7f
	add b                                            ; $6bd9: $80
	ldh [$03], a                                     ; $6bda: $e0 $03
	ldh [$03], a                                     ; $6bdc: $e0 $03
	ret nz                                           ; $6bde: $c0

	inc bc                                           ; $6bdf: $03
	ret nz                                           ; $6be0: $c0

	rlca                                             ; $6be1: $07
	add b                                            ; $6be2: $80
	rlca                                             ; $6be3: $07
	add b                                            ; $6be4: $80
	rrca                                             ; $6be5: $0f
	ld [hl], e                                       ; $6be6: $73
	ld b, l                                          ; $6be7: $45
	ld l, d                                          ; $6be8: $6a
	call nc, $0a9b                                   ; $6be9: $d4 $9b $0a
	push af                                          ; $6bec: $f5
	dec d                                            ; $6bed: $15
	ld [$d076], a                                    ; $6bee: $ea $76 $d0
	ld h, [hl]                                       ; $6bf1: $66
	ret c                                            ; $6bf2: $d8

	ld l, a                                          ; $6bf3: $6f
	db $fc                                           ; $6bf4: $fc
	sbc [hl]                                         ; $6bf5: $9e
	ld d, a                                          ; $6bf6: $57
	ld l, d                                          ; $6bf7: $6a
	ret z                                            ; $6bf8: $c8

	ld a, a                                          ; $6bf9: $7f
	ld hl, sp-$66                                    ; $6bfa: $f8 $9a
	xor h                                            ; $6bfc: $ac
	ld e, a                                          ; $6bfd: $5f
	ld [hl], b                                       ; $6bfe: $70
	cp a                                             ; $6bff: $bf
	ret nz                                           ; $6c00: $c0

	ld a, d                                          ; $6c01: $7a
	sbc $7f                                          ; $6c02: $de $7f
	db $f4                                           ; $6c04: $f4
	sbc b                                            ; $6c05: $98
	ld e, a                                          ; $6c06: $5f
	xor a                                            ; $6c07: $af
	db $fc                                           ; $6c08: $fc
	ld a, a                                          ; $6c09: $7f
	add h                                            ; $6c0a: $84
	rst $38                                          ; $6c0b: $ff
	inc bc                                           ; $6c0c: $03
	ld [hl], e                                       ; $6c0d: $73
	cp $94                                           ; $6c0e: $fe $94
	ld bc, $aeff                                     ; $6c10: $01 $ff $ae
	ld e, h                                          ; $6c13: $5c
	db $f4                                           ; $6c14: $f4
	ld hl, sp-$04                                    ; $6c15: $f8 $fc
	add b                                            ; $6c17: $80
	db $fc                                           ; $6c18: $fc
	add b                                            ; $6c19: $80
	cp $7b                                           ; $6c1a: $fe $7b
	cp $7b                                           ; $6c1c: $fe $7b
	ld e, $7e                                        ; $6c1e: $1e $7e
	xor c                                            ; $6c20: $a9
	add e                                            ; $6c21: $83
	jr @+$01                                         ; $6c22: $18 $ff

	ld [hl], b                                       ; $6c24: $70
	ld a, a                                          ; $6c25: $7f
	jr nz, jr_024_6c67                               ; $6c26: $20 $3f

	jr nz, jr_024_6c69                               ; $6c28: $20 $3f

	db $10                                           ; $6c2a: $10
	rra                                              ; $6c2b: $1f
	db $10                                           ; $6c2c: $10
	rra                                              ; $6c2d: $1f
	ld [$080f], sp                                   ; $6c2e: $08 $0f $08
	cp a                                             ; $6c31: $bf
	ld a, [hl]                                       ; $6c32: $7e
	cp $3f                                           ; $6c33: $fe $3f
	rst $38                                          ; $6c35: $ff
	rra                                              ; $6c36: $1f
	rst FarCall                                          ; $6c37: $f7
	rrca                                             ; $6c38: $0f
	db $fd                                           ; $6c39: $fd
	inc bc                                           ; $6c3a: $03
	rst $38                                          ; $6c3b: $ff
	nop                                              ; $6c3c: $00

jr_024_6c3d:
	rst SubAFromDE                                          ; $6c3d: $df
	ld a, e                                          ; $6c3e: $7b
	cp $7e                                           ; $6c3f: $fe $7e
	sub h                                            ; $6c41: $94
	ld a, a                                          ; $6c42: $7f
	cp $7a                                           ; $6c43: $fe $7a
	ld b, [hl]                                       ; $6c45: $46
	sub [hl]                                         ; $6c46: $96
	add b                                            ; $6c47: $80
	ld hl, sp-$40                                    ; $6c48: $f8 $c0
	ld a, b                                          ; $6c4a: $78
	ldh [$dc], a                                     ; $6c4b: $e0 $dc
	jr nc, jr_024_6c3d                               ; $6c4d: $30 $ee

	jr jr_024_6ccc                                   ; $6c4f: $18 $7b

	jr @-$61                                         ; $6c51: $18 $9d

	nop                                              ; $6c53: $00
	ld h, b                                          ; $6c54: $60
	ld a, [$039b]                                    ; $6c55: $fa $9b $03
	nop                                              ; $6c58: $00
	ld l, a                                          ; $6c59: $6f
	rra                                              ; $6c5a: $1f
	ld a, d                                          ; $6c5b: $7a
	add c                                            ; $6c5c: $81
	ld a, e                                          ; $6c5d: $7b
	cp $8f                                           ; $6c5e: $fe $8f
	rlca                                             ; $6c60: $07
	ld b, $1f                                        ; $6c61: $06 $1f
	ld c, $7f                                        ; $6c63: $0e $7f
	ld a, $e6                                        ; $6c65: $3e $e6

jr_024_6c67:
	db $fd                                           ; $6c67: $fd
	sbc [hl]                                         ; $6c68: $9e

jr_024_6c69:
	adc c                                            ; $6c69: $89
	ld [$d57f], a                                    ; $6c6a: $ea $7f $d5
	ld a, a                                          ; $6c6d: $7f
	rst $38                                          ; $6c6e: $ff
	ld h, b                                          ; $6c6f: $60
	ld l, d                                          ; $6c70: $6a
	inc hl                                           ; $6c71: $23
	ld a, a                                          ; $6c72: $7f
	and b                                            ; $6c73: $a0
	sbc b                                            ; $6c74: $98
	ld b, b                                          ; $6c75: $40
	ld sp, hl                                        ; $6c76: $f9
	sbc c                                            ; $6c77: $99
	ld a, d                                          ; $6c78: $7a
	sbc d                                            ; $6c79: $9a
	rst AddAOntoHL                                          ; $6c7a: $ef
	rra                                              ; $6c7b: $1f
	ld [hl], a                                       ; $6c7c: $77
	or d                                             ; $6c7d: $b2
	ld l, a                                          ; $6c7e: $6f
	cp $9b                                           ; $6c7f: $fe $9b
	ldh [$a0], a                                     ; $6c81: $e0 $a0
	ret nz                                           ; $6c83: $c0

	ret nz                                           ; $6c84: $c0

	db $dd                                           ; $6c85: $dd
	add b                                            ; $6c86: $80
	add b                                            ; $6c87: $80
	ld b, b                                          ; $6c88: $40
	ret nz                                           ; $6c89: $c0

	and b                                            ; $6c8a: $a0
	ld h, b                                          ; $6c8b: $60
	ret nc                                           ; $6c8c: $d0

	jr nc, @+$01                                     ; $6c8d: $30 $ff

	rra                                              ; $6c8f: $1f
	ld h, c                                          ; $6c90: $61
	ld h, b                                          ; $6c91: $60
	inc bc                                           ; $6c92: $03
	nop                                              ; $6c93: $00
	ld [bc], a                                       ; $6c94: $02
	ld bc, $0007                                     ; $6c95: $01 $07 $00
	ld b, $01                                        ; $6c98: $06 $01
	dec c                                            ; $6c9a: $0d
	ld [bc], a                                       ; $6c9b: $02
	ld a, [bc]                                       ; $6c9c: $0a
	dec b                                            ; $6c9d: $05
	db $ed                                           ; $6c9e: $ed
	ldh [c], a                                       ; $6c9f: $e2
	sbc l                                            ; $6ca0: $9d
	ld h, d                                          ; $6ca1: $62
	ld e, d                                          ; $6ca2: $5a
	and l                                            ; $6ca3: $a5
	cp l                                             ; $6ca4: $bd
	ld b, d                                          ; $6ca5: $42
	ld a, d                                          ; $6ca6: $7a
	adc h                                            ; $6ca7: $8c
	add l                                            ; $6ca8: $85
	or l                                             ; $6ca9: $b5
	ld c, d                                          ; $6caa: $4a
	ld l, e                                          ; $6cab: $6b
	sub h                                            ; $6cac: $94
	db $f4                                           ; $6cad: $f4
	ld a, [bc]                                       ; $6cae: $0a
	db $eb                                           ; $6caf: $eb
	inc d                                            ; $6cb0: $14
	ld l, [hl]                                       ; $6cb1: $6e
	add c                                            ; $6cb2: $81
	rst SubAFromDE                                          ; $6cb3: $df
	nop                                              ; $6cb4: $00
	xor [hl]                                         ; $6cb5: $ae
	ld bc, $005f                                     ; $6cb6: $01 $5f $00
	cp a                                             ; $6cb9: $bf
	nop                                              ; $6cba: $00
	ld [hl], a                                       ; $6cbb: $77
	db $fc                                           ; $6cbc: $fc
	ld l, l                                          ; $6cbd: $6d
	rst JumpTable                                          ; $6cbe: $c7
	add c                                            ; $6cbf: $81
	cp $01                                           ; $6cc0: $fe $01
	push af                                          ; $6cc2: $f5
	ld a, [bc]                                       ; $6cc3: $0a
	ld [$d415], a                                    ; $6cc4: $ea $15 $d4
	dec hl                                           ; $6cc7: $2b
	xor b                                            ; $6cc8: $a8
	ld d, a                                          ; $6cc9: $57
	ret nc                                           ; $6cca: $d0

	cpl                                              ; $6ccb: $2f

jr_024_6ccc:
	and b                                            ; $6ccc: $a0
	ld b, e                                          ; $6ccd: $43
	ld b, b                                          ; $6cce: $40
	add a                                            ; $6ccf: $87
	add b                                            ; $6cd0: $80
	ld b, a                                          ; $6cd1: $47
	ld bc, $01ce                                     ; $6cd2: $01 $ce $01
	adc [hl]                                         ; $6cd5: $8e
	ld bc, $038e                                     ; $6cd6: $01 $8e $03
	inc e                                            ; $6cd9: $1c
	inc bc                                           ; $6cda: $03
	inc e                                            ; $6cdb: $1c
	ld a, a                                          ; $6cdc: $7f
	add b                                            ; $6cdd: $80
	ld h, c                                          ; $6cde: $61
	and l                                            ; $6cdf: $a5
	ld [hl], e                                       ; $6ce0: $73
	cp $96                                           ; $6ce1: $fe $96
	ld [bc], a                                       ; $6ce3: $02
	dec b                                            ; $6ce4: $05
	ld bc, $4000                                     ; $6ce5: $01 $00 $40
	add b                                            ; $6ce8: $80
	db $10                                           ; $6ce9: $10
	ldh [rSC], a                                     ; $6cea: $e0 $02
	ld a, c                                          ; $6cec: $79
	ret nc                                           ; $6ced: $d0

	ld a, a                                          ; $6cee: $7f
	inc de                                           ; $6cef: $13
	sbc l                                            ; $6cf0: $9d
	ldh a, [rIF]                                     ; $6cf1: $f0 $0f
	halt                                             ; $6cf3: $76
	ldh [$97], a                                     ; $6cf4: $e0 $97
	ld a, [hl+]                                      ; $6cf6: $2a
	dec d                                            ; $6cf7: $15
	dec b                                            ; $6cf8: $05
	ld a, [bc]                                       ; $6cf9: $0a
	nop                                              ; $6cfa: $00
	ld bc, $00c0                                     ; $6cfb: $01 $c0 $00
	ld [hl], a                                       ; $6cfe: $77
	ld [$ac80], a                                    ; $6cff: $ea $80 $ac
	ld d, a                                          ; $6d02: $57
	ld e, b                                          ; $6d03: $58
	xor a                                            ; $6d04: $af
	cp h                                             ; $6d05: $bc
	ld e, a                                          ; $6d06: $5f
	ld h, [hl]                                       ; $6d07: $66
	cp a                                             ; $6d08: $bf
	ld b, h                                          ; $6d09: $44
	rst $38                                          ; $6d0a: $ff
	ld c, h                                          ; $6d0b: $4c
	ld a, a                                          ; $6d0c: $7f
	ld [$0107], sp                                   ; $6d0d: $08 $07 $01
	nop                                              ; $6d10: $00
	ld bc, $03fe                                     ; $6d11: $01 $fe $03
	db $fc                                           ; $6d14: $fc
	ld bc, $c0fe                                     ; $6d15: $01 $fe $c0
	ccf                                              ; $6d18: $3f
	ld a, [hl]                                       ; $6d19: $7e
	add c                                            ; $6d1a: $81
	ld a, a                                          ; $6d1b: $7f
	add b                                            ; $6d1c: $80
	ccf                                              ; $6d1d: $3f
	ret nz                                           ; $6d1e: $c0

	rra                                              ; $6d1f: $1f
	sub h                                            ; $6d20: $94
	ldh [hDisp0_OBP1], a                                     ; $6d21: $e0 $87
	ld a, a                                          ; $6d23: $7f
	pop bc                                           ; $6d24: $c1
	ccf                                              ; $6d25: $3f
	ldh a, [rIF]                                     ; $6d26: $f0 $0f
	ld hl, sp+$07                                    ; $6d28: $f8 $07
	ld a, [hl]                                       ; $6d2a: $7e
	add c                                            ; $6d2b: $81
	ld l, a                                          ; $6d2c: $6f
	add [hl]                                         ; $6d2d: $86
	ld a, e                                          ; $6d2e: $7b
	inc l                                            ; $6d2f: $2c
	ld a, [hl]                                       ; $6d30: $7e
	xor c                                            ; $6d31: $a9
	adc [hl]                                         ; $6d32: $8e
	ret nz                                           ; $6d33: $c0

	ld e, a                                          ; $6d34: $5f
	ldh [$2f], a                                     ; $6d35: $e0 $2f
	ldh a, [$1f]                                     ; $6d37: $f0 $1f
	ldh a, [$97]                                     ; $6d39: $f0 $97
	ld a, b                                          ; $6d3b: $78
	ccf                                              ; $6d3c: $3f
	ld hl, sp+$07                                    ; $6d3d: $f8 $07
	inc b                                            ; $6d3f: $04
	add e                                            ; $6d40: $83
	ld [bc], a                                       ; $6d41: $02
	add c                                            ; $6d42: $81
	ld bc, $9c6d                                     ; $6d43: $01 $6d $9c
	ld a, c                                          ; $6d46: $79
	cp [hl]                                          ; $6d47: $be
	sub c                                            ; $6d48: $91
	nop                                              ; $6d49: $00
	rst GetHLinHL                                          ; $6d4a: $cf
	nop                                              ; $6d4b: $00
	rst AddAOntoHL                                          ; $6d4c: $ef
	nop                                              ; $6d4d: $00
	rst SubAFromBC                                          ; $6d4e: $e7
	nop                                              ; $6d4f: $00
	rst SubAFromBC                                          ; $6d50: $e7
	add b                                            ; $6d51: $80
	db $e3                                           ; $6d52: $e3
	ld h, b                                          ; $6d53: $60
	ld hl, $1020                                     ; $6d54: $21 $20 $10
	sbc $d0                                          ; $6d57: $de $d0

jr_024_6d59:
	ld a, [hl]                                       ; $6d59: $7e
	or [hl]                                          ; $6d5a: $b6
	ld [hl], e                                       ; $6d5b: $73
	ret z                                            ; $6d5c: $c8

	ld a, d                                          ; $6d5d: $7a
	inc e                                            ; $6d5e: $1c
	ld a, [hl]                                       ; $6d5f: $7e
	cp d                                             ; $6d60: $ba

jr_024_6d61:
	ld a, a                                          ; $6d61: $7f
	adc [hl]                                         ; $6d62: $8e
	rst $38                                          ; $6d63: $ff
	ld a, c                                          ; $6d64: $79
	ld h, [hl]                                       ; $6d65: $66
	sbc l                                            ; $6d66: $9d
	jr nz, jr_024_6de8                               ; $6d67: $20 $7f

	ld [hl], a                                       ; $6d69: $77
	cp $88                                           ; $6d6a: $fe $88
	inc hl                                           ; $6d6c: $23
	ld a, a                                          ; $6d6d: $7f
	inc h                                            ; $6d6e: $24
	rst $38                                          ; $6d6f: $ff
	jr z, jr_024_6d61                                ; $6d70: $28 $ef

	ld a, b                                          ; $6d72: $78
	sbc $49                                          ; $6d73: $de $49
	and $59                                          ; $6d75: $e6 $59
	cp $31                                           ; $6d77: $fe $31
	rst $38                                          ; $6d79: $ff
	jr nc, @+$01                                     ; $6d7a: $30 $ff

	ldh a, [$bf]                                     ; $6d7c: $f0 $bf
	ld [hl], b                                       ; $6d7e: $70
	rst SubAFromDE                                          ; $6d7f: $df
	jr nc, jr_024_6d59                               ; $6d80: $30 $d7

	jr c, jr_024_6dfe                                ; $6d82: $38 $7a

	ld [hl], h                                       ; $6d84: $74
	sub d                                            ; $6d85: $92
	jr nc, @+$3e                                     ; $6d86: $30 $3c

	ccf                                              ; $6d88: $3f
	dec bc                                           ; $6d89: $0b
	add a                                            ; $6d8a: $87
	adc [hl]                                         ; $6d8b: $8e
	ld a, a                                          ; $6d8c: $7f
	db $fd                                           ; $6d8d: $fd
	rrca                                             ; $6d8e: $0f
	ld hl, sp+$0f                                    ; $6d8f: $f8 $0f
	ld e, l                                          ; $6d91: $5d
	rst AddAOntoHL                                          ; $6d92: $ef
	ld [hl], a                                       ; $6d93: $77
	jp nz, $d679                                     ; $6d94: $c2 $79 $d6

	adc l                                            ; $6d97: $8d
	ret nz                                           ; $6d98: $c0

	cp a                                             ; $6d99: $bf
	ld h, b                                          ; $6d9a: $60
	ld l, a                                          ; $6d9b: $6f
	ldh a, [$fd]                                     ; $6d9c: $f0 $fd
	cp $ef                                           ; $6d9e: $fe $ef
	rst SubAFromHL                                          ; $6da0: $d7
	rst FarCall                                          ; $6da1: $f7
	ld [$03ff], sp                                   ; $6da2: $08 $ff $03
	cp $07                                           ; $6da5: $fe $07
	db $fd                                           ; $6da7: $fd
	rlca                                             ; $6da8: $07
	ld a, [$fc73]                                    ; $6da9: $fa $73 $fc
	add b                                            ; $6dac: $80
	cp a                                             ; $6dad: $bf
	rst JumpTable                                          ; $6dae: $c7
	ld a, [$bd15]                                    ; $6daf: $fa $15 $bd
	jp z, $ccfb                                      ; $6db2: $ca $fb $cc

	ld a, a                                          ; $6db5: $7f
	db $e4                                           ; $6db6: $e4
	rst $38                                          ; $6db7: $ff
	db $e4                                           ; $6db8: $e4
	ld [hl], a                                       ; $6db9: $77
	db $ec                                           ; $6dba: $ec
	rst SubAFromDE                                          ; $6dbb: $df
	add sp, -$52                                     ; $6dbc: $e8 $ae
	reti                                             ; $6dbe: $d9


	sub $28                                          ; $6dbf: $d6 $28
	xor c                                            ; $6dc1: $a9
	ld d, h                                          ; $6dc2: $54
	jp nc, $a528                                     ; $6dc3: $d2 $28 $a5

	ld d, b                                          ; $6dc6: $50
	ld e, a                                          ; $6dc7: $5f
	and b                                            ; $6dc8: $a0
	xor a                                            ; $6dc9: $af
	ld d, b                                          ; $6dca: $50
	ld e, [hl]                                       ; $6dcb: $5e
	sbc c                                            ; $6dcc: $99
	and b                                            ; $6dcd: $a0
	cp h                                             ; $6dce: $bc
	ld b, b                                          ; $6dcf: $40
	db $fc                                           ; $6dd0: $fc
	nop                                              ; $6dd1: $00
	ld a, b                                          ; $6dd2: $78
	ld [hl], e                                       ; $6dd3: $73
	add [hl]                                         ; $6dd4: $86
	ld [hl], a                                       ; $6dd5: $77
	ld h, d                                          ; $6dd6: $62
	ld [hl], a                                       ; $6dd7: $77
	ld h, b                                          ; $6dd8: $60
	adc e                                            ; $6dd9: $8b
	jr z, jr_024_6e32                                ; $6dda: $28 $56

	nop                                              ; $6ddc: $00
	ld c, $00                                        ; $6ddd: $0e $00
	nop                                              ; $6ddf: $00
	inc d                                            ; $6de0: $14
	nop                                              ; $6de1: $00
	jr z, jr_024_6de4                                ; $6de2: $28 $00

jr_024_6de4:
	ld d, b                                          ; $6de4: $50
	nop                                              ; $6de5: $00
	xor b                                            ; $6de6: $a8
	nop                                              ; $6de7: $00

jr_024_6de8:
	ld d, b                                          ; $6de8: $50
	ld bc, $3807                                     ; $6de9: $01 $07 $38
	rlca                                             ; $6dec: $07
	jr c, jr_024_6e64                                ; $6ded: $38 $75

	adc h                                            ; $6def: $8c
	sbc [hl]                                         ; $6df0: $9e
	adc a                                            ; $6df1: $8f
	ld [hl], c                                       ; $6df2: $71
	adc d                                            ; $6df3: $8a
	ld a, a                                          ; $6df4: $7f
	ld c, $4e                                        ; $6df5: $0e $4e
	jp nz, $0e73                                     ; $6df7: $c2 $73 $0e

	ld d, e                                          ; $6dfa: $53
	ldh a, [$7f]                                     ; $6dfb: $f0 $7f
	db $fd                                           ; $6dfd: $fd

jr_024_6dfe:
	ld a, [hl]                                       ; $6dfe: $7e

Jump_024_6dff:
	db $e4                                           ; $6dff: $e4
	ld a, a                                          ; $6e00: $7f
	dec bc                                           ; $6e01: $0b
	ld e, a                                          ; $6e02: $5f
	ld [$a87f], a                                    ; $6e03: $ea $7f $a8
	ld l, [hl]                                       ; $6e06: $6e
	and h                                            ; $6e07: $a4
	ld a, a                                          ; $6e08: $7f
	ld [$da7e], a                                    ; $6e09: $ea $7e $da
	ld [hl], a                                       ; $6e0c: $77
	ld [$5e7e], a                                    ; $6e0d: $ea $7e $5e
	ld a, [hl]                                       ; $6e10: $7e
	inc [hl]                                         ; $6e11: $34
	rst $38                                          ; $6e12: $ff
	ld [hl], a                                       ; $6e13: $77
	ld [$0d7b], a                                    ; $6e14: $ea $7b $0d
	ld a, e                                          ; $6e17: $7b
	ld [$fc96], a                                    ; $6e18: $ea $96 $fc
	inc bc                                           ; $6e1b: $03
	ld hl, sp+$07                                    ; $6e1c: $f8 $07
	pop hl                                           ; $6e1e: $e1
	ld e, $23                                        ; $6e1f: $1e $23
	inc e                                            ; $6e21: $1c
	rlca                                             ; $6e22: $07
	ld a, e                                          ; $6e23: $7b
	add h                                            ; $6e24: $84
	ld [hl], a                                       ; $6e25: $77
	ld [$fe90], a                                    ; $6e26: $ea $90 $fe
	ld hl, sp+$4c                                    ; $6e29: $f8 $4c
	cp b                                             ; $6e2b: $b8
	call z, $8838                                    ; $6e2c: $cc $38 $88
	ld a, h                                          ; $6e2f: $7c
	ld b, $fc                                        ; $6e30: $06 $fc

jr_024_6e32:
	cpl                                              ; $6e32: $2f
	rst SubAFromDE                                          ; $6e33: $df
	inc e                                            ; $6e34: $1c
	ccf                                              ; $6e35: $3f
	rrca                                             ; $6e36: $0f
	ld a, e                                          ; $6e37: $7b
	ld l, l                                          ; $6e38: $6d
	ld a, h                                          ; $6e39: $7c
	add d                                            ; $6e3a: $82
	ld a, h                                          ; $6e3b: $7c
	pop bc                                           ; $6e3c: $c1
	add h                                            ; $6e3d: $84
	rrca                                             ; $6e3e: $0f
	inc b                                            ; $6e3f: $04
	ccf                                              ; $6e40: $3f
	jr jr_024_6e32                                   ; $6e41: $18 $ef

	ldh a, [$3e]                                     ; $6e43: $f0 $3e
	ldh a, [$dc]                                     ; $6e45: $f0 $dc
	jr c, @-$2e                                      ; $6e47: $38 $d0

	ret nc                                           ; $6e49: $d0

	db $10                                           ; $6e4a: $10
	ret nc                                           ; $6e4b: $d0

	sub e                                            ; $6e4c: $93
	ld d, e                                          ; $6e4d: $53
	sbc [hl]                                         ; $6e4e: $9e

jr_024_6e4f:
	ld e, h                                          ; $6e4f: $5c
	sub b                                            ; $6e50: $90
	ld d, e                                          ; $6e51: $53
	sub b                                            ; $6e52: $90
	ld e, h                                          ; $6e53: $5c
	db $10                                           ; $6e54: $10
	ld d, b                                          ; $6e55: $50
	ld [de], a                                       ; $6e56: $12
	ld e, h                                          ; $6e57: $5c
	inc bc                                           ; $6e58: $03
	ld a, c                                          ; $6e59: $79
	sbc d                                            ; $6e5a: $9a
	sub b                                            ; $6e5b: $90
	rst JumpTable                                          ; $6e5c: $c7
	jp $3f7e                                         ; $6e5d: $c3 $7e $3f


	inc a                                            ; $6e60: $3c
	or a                                             ; $6e61: $b7
	inc a                                            ; $6e62: $3c
	and a                                            ; $6e63: $a7

jr_024_6e64:
	ld a, h                                          ; $6e64: $7c
	rst SubAFromBC                                          ; $6e65: $e7
	ld a, h                                          ; $6e66: $7c
	rst JumpTable                                          ; $6e67: $c7
	rst $38                                          ; $6e68: $ff
	ld a, a                                          ; $6e69: $7f
	ldh [rHDMA3], a                                  ; $6e6a: $e0 $53
	ld l, a                                          ; $6e6c: $6f
	sbc l                                            ; $6e6d: $9d
	rst $38                                          ; $6e6e: $ff
	ld hl, sp+$7a                                    ; $6e6f: $f8 $7a
	reti                                             ; $6e71: $d9


	sbc [hl]                                         ; $6e72: $9e
	db $fc                                           ; $6e73: $fc
	ld a, e                                          ; $6e74: $7b
	cp $8e                                           ; $6e75: $fe $8e
	cp $13                                           ; $6e77: $fe $13
	rst $38                                          ; $6e79: $ff
	ld sp, $21ff                                     ; $6e7a: $31 $ff $21

jr_024_6e7d:
	rst $38                                          ; $6e7d: $ff
	rst AddAOntoHL                                          ; $6e7e: $ef
	ld a, a                                          ; $6e7f: $7f
	rst FarCall                                          ; $6e80: $f7
	ld a, b                                          ; $6e81: $78
	cp l                                             ; $6e82: $bd
	ld a, [hl]                                       ; $6e83: $7e
	rst SubAFromDE                                          ; $6e84: $df
	ccf                                              ; $6e85: $3f
	rst AddAOntoHL                                          ; $6e86: $ef
	rra                                              ; $6e87: $1f
	halt                                             ; $6e88: $76
	jp z, $ac7f                                      ; $6e89: $ca $7f $ac

	add b                                            ; $6e8c: $80
	rst SubAFromBC                                          ; $6e8d: $e7
	sub [hl]                                         ; $6e8e: $96
	ldh [rAUD1SWEEP], a                              ; $6e8f: $e0 $10
	ldh a, [$08]                                     ; $6e91: $f0 $08
	ld hl, sp-$39                                    ; $6e93: $f8 $c7
	sbc a                                            ; $6e95: $9f
	ldh [$df], a                                     ; $6e96: $e0 $df

jr_024_6e98:
	jr nz, jr_024_6e98                               ; $6e98: $20 $fe

	ld bc, $07fb                                     ; $6e9a: $01 $fb $07
	ld l, b                                          ; $6e9d: $68
	scf                                              ; $6e9e: $37
	rra                                              ; $6e9f: $1f
	jr nz, jr_024_6ed9                               ; $6ea0: $20 $37

	rst GetHLinHL                                          ; $6ea2: $cf
	db $eb                                           ; $6ea3: $eb
	jr jr_024_6e7d                                   ; $6ea4: $18 $d7

	jr nc, jr_024_6e4f                               ; $6ea6: $30 $a7

	ld h, b                                          ; $6ea8: $60
	push bc                                          ; $6ea9: $c5
	jp z, $9400                                      ; $6eaa: $ca $00 $94

	rrca                                             ; $6ead: $0f
	db $dd                                           ; $6eae: $dd
	ld [hl-], a                                      ; $6eaf: $32
	ld a, [hl]                                       ; $6eb0: $7e
	pop hl                                           ; $6eb1: $e1
	db $fd                                           ; $6eb2: $fd
	add d                                            ; $6eb3: $82
	ld a, [$f505]                                    ; $6eb4: $fa $05 $f5
	ld a, [bc]                                       ; $6eb7: $0a
	ld l, h                                          ; $6eb8: $6c
	add $8e                                          ; $6eb9: $c6 $8e
	ld a, b                                          ; $6ebb: $78
	add b                                            ; $6ebc: $80
	or b                                             ; $6ebd: $b0
	ld b, b                                          ; $6ebe: $40
	ld b, b                                          ; $6ebf: $40
	and b                                            ; $6ec0: $a0
	add b                                            ; $6ec1: $80
	ld b, b                                          ; $6ec2: $40
	nop                                              ; $6ec3: $00
	add b                                            ; $6ec4: $80
	and b                                            ; $6ec5: $a0
	ld b, b                                          ; $6ec6: $40
	ld d, b                                          ; $6ec7: $50
	xor b                                            ; $6ec8: $a8
	xor d                                            ; $6ec9: $aa
	ld d, h                                          ; $6eca: $54
	ld [bc], a                                       ; $6ecb: $02
	ld a, e                                          ; $6ecc: $7b
	ld c, b                                          ; $6ecd: $48
	ld a, a                                          ; $6ece: $7f
	db $fc                                           ; $6ecf: $fc
	adc [hl]                                         ; $6ed0: $8e
	dec b                                            ; $6ed1: $05
	nop                                              ; $6ed2: $00
	ld a, [bc]                                       ; $6ed3: $0a
	nop                                              ; $6ed4: $00
	dec d                                            ; $6ed5: $15
	nop                                              ; $6ed6: $00
	ld a, [hl+]                                      ; $6ed7: $2a
	nop                                              ; $6ed8: $00

jr_024_6ed9:
	ld d, l                                          ; $6ed9: $55
	nop                                              ; $6eda: $00
	and b                                            ; $6edb: $a0
	ld bc, $0350                                     ; $6edc: $01 $50 $03
	and b                                            ; $6edf: $a0
	inc bc                                           ; $6ee0: $03
	ld b, b                                          ; $6ee1: $40
	ld a, b                                          ; $6ee2: $78
	ld [hl], b                                       ; $6ee3: $70
	sbc c                                            ; $6ee4: $99
	ld c, b                                          ; $6ee5: $48
	rlca                                             ; $6ee6: $07
	add c                                            ; $6ee7: $81
	ld c, $01                                        ; $6ee8: $0e $01
	ld c, $74                                        ; $6eea: $0e $74
	ld e, h                                          ; $6eec: $5c
	ld b, l                                          ; $6eed: $45
	adc h                                            ; $6eee: $8c
	inc bc                                           ; $6eef: $03
	cp $1b                                           ; $6ef0: $fe $1b
	cp $56                                           ; $6ef2: $fe $56
	and h                                            ; $6ef4: $a4
	ld [hl], d                                       ; $6ef5: $72
	sub b                                            ; $6ef6: $90
	ld [hl], d                                       ; $6ef7: $72
	cp d                                             ; $6ef8: $ba
	ld e, a                                          ; $6ef9: $5f
	ld [$a456], a                                    ; $6efa: $ea $56 $a4
	ld [hl], a                                       ; $6efd: $77
	ld [$fe99], a                                    ; $6efe: $ea $99 $fe
	inc b                                            ; $6f01: $04
	ccf                                              ; $6f02: $3f
	ld [bc], a                                       ; $6f03: $02
	rlca                                             ; $6f04: $07
	ld bc, $a46e                                     ; $6f05: $01 $6e $a4
	halt                                             ; $6f08: $76
	ld a, b                                          ; $6f09: $78
	ld a, [hl]                                       ; $6f0a: $7e
	call z, $b094                                    ; $6f0b: $cc $94 $b0
	ld d, b                                          ; $6f0e: $50
	sbc l                                            ; $6f0f: $9d
	add sp, -$09                                     ; $6f10: $e8 $f7
	ld a, h                                          ; $6f12: $7c
	ccf                                              ; $6f13: $3f
	rra                                              ; $6f14: $1f
	rrca                                             ; $6f15: $0f
	nop                                              ; $6f16: $00
	ld bc, $6879                                     ; $6f17: $01 $79 $68
	sub a                                            ; $6f1a: $97
	ld a, [hl]                                       ; $6f1b: $7e
	rst JumpTable                                          ; $6f1c: $c7
	ld a, [hl]                                       ; $6f1d: $7e
	db $e3                                           ; $6f1e: $e3
	cp a                                             ; $6f1f: $bf
	ld [hl], c                                       ; $6f20: $71
	cp a                                             ; $6f21: $bf
	ld h, c                                          ; $6f22: $61
	sbc $ff                                          ; $6f23: $de $ff
	sub l                                            ; $6f25: $95
	rra                                              ; $6f26: $1f
	rst $38                                          ; $6f27: $ff
	rst $38                                          ; $6f28: $ff
	ccf                                              ; $6f29: $3f
	ccf                                              ; $6f2a: $3f
	db $10                                           ; $6f2b: $10
	rst $38                                          ; $6f2c: $ff
	jr nz, @+$01                                     ; $6f2d: $20 $ff

	ld b, b                                          ; $6f2f: $40
	ld a, c                                          ; $6f30: $79
	dec sp                                           ; $6f31: $3b
	ld [hl], a                                       ; $6f32: $77
	cp $77                                           ; $6f33: $fe $77
	xor a                                            ; $6f35: $af
	sbc [hl]                                         ; $6f36: $9e
	inc hl                                           ; $6f37: $23
	ld a, e                                          ; $6f38: $7b
	jp hl                                            ; $6f39: $e9


	sbc h                                            ; $6f3a: $9c
	add hl, bc                                       ; $6f3b: $09
	ld hl, sp+$08                                    ; $6f3c: $f8 $08
	ld l, e                                          ; $6f3e: $6b
	cp $90                                           ; $6f3f: $fe $90
	add hl, bc                                       ; $6f41: $09
	ld sp, hl                                        ; $6f42: $f9
	dec a                                            ; $6f43: $3d
	cp $e7                                           ; $6f44: $fe $e7
	rst $38                                          ; $6f46: $ff
	jp Jump_024_62ff                                 ; $6f47: $c3 $ff $62


	ld a, a                                          ; $6f4a: $7f
	ld [hl], h                                       ; $6f4b: $74
	ccf                                              ; $6f4c: $3f
	jr c, @+$41                                      ; $6f4d: $38 $3f

	ld b, b                                          ; $6f4f: $40
	ld a, e                                          ; $6f50: $7b
	daa                                              ; $6f51: $27
	ld a, [hl]                                       ; $6f52: $7e

jr_024_6f53:
	or [hl]                                          ; $6f53: $b6
	rst SubAFromDE                                          ; $6f54: $df
	rst $38                                          ; $6f55: $ff
	sbc e                                            ; $6f56: $9b
	add e                                            ; $6f57: $83
	rst $38                                          ; $6f58: $ff
	inc b                                            ; $6f59: $04
	db $fc                                           ; $6f5a: $fc
	ld a, b                                          ; $6f5b: $78
	db $fd                                           ; $6f5c: $fd
	adc b                                            ; $6f5d: $88
	rst $38                                          ; $6f5e: $ff
	ld c, $fc                                        ; $6f5f: $0e $fc
	jr jr_024_6f53                                   ; $6f61: $18 $f0

	ld e, $1f                                        ; $6f63: $1e $1f
	ld [hl], c                                       ; $6f65: $71
	ld h, c                                          ; $6f66: $61
	pop bc                                           ; $6f67: $c1
	add b                                            ; $6f68: $80
	inc e                                            ; $6f69: $1c
	nop                                              ; $6f6a: $00
	cp $38                                           ; $6f6b: $fe $38
	cp $fc                                           ; $6f6d: $fe $fc
	rrca                                             ; $6f6f: $0f
	ld b, $07                                        ; $6f70: $06 $07
	ld [bc], a                                       ; $6f72: $02
	ld b, l                                          ; $6f73: $45
	cp d                                             ; $6f74: $ba
	ld a, b                                          ; $6f75: $78
	xor b                                            ; $6f76: $a8
	ld a, a                                          ; $6f77: $7f
	xor [hl]                                         ; $6f78: $ae
	sub [hl]                                         ; $6f79: $96
	ld a, a                                          ; $6f7a: $7f
	ld b, b                                          ; $6f7b: $40
	ld a, a                                          ; $6f7c: $7f
	ld [hl+], a                                      ; $6f7d: $22
	ld hl, $2030                                     ; $6f7e: $21 $30 $20
	db $10                                           ; $6f81: $10
	db $10                                           ; $6f82: $10
	halt                                             ; $6f83: $76
	cp h                                             ; $6f84: $bc
	ld a, b                                          ; $6f85: $78
	sbc [hl]                                         ; $6f86: $9e
	add [hl]                                         ; $6f87: $86
	push de                                          ; $6f88: $d5
	dec b                                            ; $6f89: $05
	ld a, [$fd02]                                    ; $6f8a: $fa $02 $fd
	ld hl, $021e                                     ; $6f8d: $21 $1e $02
	ld bc, $806a                                     ; $6f90: $01 $6a $80
	and l                                            ; $6f93: $a5
	ld d, b                                          ; $6f94: $50
	ld d, b                                          ; $6f95: $50
	xor [hl]                                         ; $6f96: $ae
	and d                                            ; $6f97: $a2
	ld e, h                                          ; $6f98: $5c
	ld b, h                                          ; $6f99: $44
	cp b                                             ; $6f9a: $b8
	and h                                            ; $6f9b: $a4
	ld e, b                                          ; $6f9c: $58
	ld c, b                                          ; $6f9d: $48
	or h                                             ; $6f9e: $b4
	adc b                                            ; $6f9f: $88
	ld [hl], b                                       ; $6fa0: $70
	ld [hl], h                                       ; $6fa1: $74
	ld e, h                                          ; $6fa2: $5c
	ld [hl], l                                       ; $6fa3: $75
	adc h                                            ; $6fa4: $8c
	sbc l                                            ; $6fa5: $9d
	ld c, a                                          ; $6fa6: $4f
	jr nc, jr_024_701e                               ; $6fa7: $30 $75

	adc d                                            ; $6fa9: $8a
	ld a, l                                          ; $6faa: $7d
	adc [hl]                                         ; $6fab: $8e
	ld [bc], a                                       ; $6fac: $02
	xor $03                                          ; $6fad: $ee $03
	cp $03                                           ; $6faf: $fe $03
	cp $13                                           ; $6fb1: $fe $13
	cp $4d                                           ; $6fb3: $fe $4d
	ld [hl-], a                                      ; $6fb5: $32
	ld a, a                                          ; $6fb6: $7f
	cp $7e                                           ; $6fb7: $fe $7e
	cp d                                             ; $6fb9: $ba
	sbc l                                            ; $6fba: $9d
	ld b, $f8                                        ; $6fbb: $06 $f8
	ld e, l                                          ; $6fbd: $5d
	ld [hl-], a                                      ; $6fbe: $32
	ld a, a                                          ; $6fbf: $7f
	cp $df                                           ; $6fc0: $fe $df
	rlca                                             ; $6fc2: $07
	halt                                             ; $6fc3: $76
	cp d                                             ; $6fc4: $ba
	ld e, a                                          ; $6fc5: $5f
	ld [$db73], a                                    ; $6fc6: $ea $73 $db
	sbc l                                            ; $6fc9: $9d
	ccf                                              ; $6fca: $3f
	nop                                              ; $6fcb: $00
	ld a, d                                          ; $6fcc: $7a
	and e                                            ; $6fcd: $a3
	ld l, a                                          ; $6fce: $6f
	ld [$0e9e], a                                    ; $6fcf: $ea $9e $0e
	ld a, e                                          ; $6fd2: $7b
	ldh a, [$97]                                     ; $6fd3: $f0 $97
	ld [hl], b                                       ; $6fd5: $70
	rst GetHLinHL                                          ; $6fd6: $cf
	ld a, b                                          ; $6fd7: $78
	add a                                            ; $6fd8: $87
	ld a, b                                          ; $6fd9: $78
	rst GetHLinHL                                          ; $6fda: $cf
	jr nc, jr_024_705c                               ; $6fdb: $30 $7f

	ld [hl], a                                       ; $6fdd: $77
	ld [$a14f], a                                    ; $6fde: $ea $4f $a1
	ld a, a                                          ; $6fe1: $7f
	cp l                                             ; $6fe2: $bd
	sub e                                            ; $6fe3: $93
	ccf                                              ; $6fe4: $3f
	ldh [$7f], a                                     ; $6fe5: $e0 $7f
	rst JumpTable                                          ; $6fe7: $c7
	ld a, [hl]                                       ; $6fe8: $7e
	ret c                                            ; $6fe9: $d8

	ld a, h                                          ; $6fea: $7c
	ldh a, [$fc]                                     ; $6feb: $f0 $fc
	ldh [$fe], a                                     ; $6fed: $e0 $fe
	ret nz                                           ; $6fef: $c0

	ld a, d                                          ; $6ff0: $7a
	rst SubAFromHL                                          ; $6ff1: $d7
	add b                                            ; $6ff2: $80
	add [hl]                                         ; $6ff3: $86
	db $e3                                           ; $6ff4: $e3
	ld bc, $81f1                                     ; $6ff5: $01 $f1 $81
	ld sp, hl                                        ; $6ff8: $f9
	ld b, b                                          ; $6ff9: $40

jr_024_6ffa:
	ld a, b                                          ; $6ffa: $78
	jr nz, @+$3e                                     ; $6ffb: $20 $3c

	db $10                                           ; $6ffd: $10
	inc e                                            ; $6ffe: $1c
	ld [$040e], sp                                   ; $6fff: $08 $0e $04
	add [hl]                                         ; $7002: $86
	ld [bc], a                                       ; $7003: $02
	sbc b                                            ; $7004: $98
	db $10                                           ; $7005: $10
	call z, $ca08                                    ; $7006: $cc $08 $ca
	adc h                                            ; $7009: $8c
	db $ec                                           ; $700a: $ec
	adc d                                            ; $700b: $8a
	ld [$7d4d], a                                    ; $700c: $ea $4d $7d
	ld c, d                                          ; $700f: $4a
	ld a, d                                          ; $7010: $7a
	dec c                                            ; $7011: $0d
	sbc l                                            ; $7012: $9d
	dec [hl]                                         ; $7013: $35
	ld a, [de]                                       ; $7014: $1a
	ld sp, hl                                        ; $7015: $f9
	add a                                            ; $7016: $87
	ld [$0407], sp                                   ; $7017: $08 $07 $04
	add e                                            ; $701a: $83
	add d                                            ; $701b: $82
	ld b, c                                          ; $701c: $41
	ld b, b                                          ; $701d: $40

jr_024_701e:
	add b                                            ; $701e: $80
	db $10                                           ; $701f: $10
	ld l, b                                          ; $7020: $68
	db $10                                           ; $7021: $10
	ld l, c                                          ; $7022: $69
	jr nz, @-$2d                                     ; $7023: $20 $d1

	jr nz, jr_024_6ffa                               ; $7025: $20 $d3

	ld b, b                                          ; $7027: $40
	and e                                            ; $7028: $a3
	ld b, b                                          ; $7029: $40
	and e                                            ; $702a: $a3
	nop                                              ; $702b: $00
	rst JumpTable                                          ; $702c: $c7
	add b                                            ; $702d: $80
	ld b, a                                          ; $702e: $47
	ld [hl], h                                       ; $702f: $74
	ld e, h                                          ; $7030: $5c
	ld l, l                                          ; $7031: $6d
	adc h                                            ; $7032: $8c
	ld bc, $038a                                     ; $7033: $01 $8a $03
	cp $03                                           ; $7036: $fe $03
	cp $03                                           ; $7038: $fe $03
	cp $03                                           ; $703a: $fe $03
	cp $43                                           ; $703c: $fe $43
	cp $56                                           ; $703e: $fe $56
	and h                                            ; $7040: $a4
	ld [hl], a                                       ; $7041: $77
	cp $56                                           ; $7042: $fe $56
	and h                                            ; $7044: $a4
	ld [hl], a                                       ; $7045: $77
	ld [$239c], a                                    ; $7046: $ea $9c $23
	rra                                              ; $7049: $1f
	dec bc                                           ; $704a: $0b
	ld l, d                                          ; $704b: $6a
	adc [hl]                                         ; $704c: $8e
	sbc [hl]                                         ; $704d: $9e
	inc b                                            ; $704e: $04
	ld [hl], e                                       ; $704f: $73
	ld [$ffde], a                                    ; $7050: $ea $de $ff
	ld a, l                                          ; $7053: $7d
	add a                                            ; $7054: $87
	sbc d                                            ; $7055: $9a
	nop                                              ; $7056: $00
	ld a, a                                          ; $7057: $7f
	ld h, b                                          ; $7058: $60
	rrca                                             ; $7059: $0f
	inc c                                            ; $705a: $0c
	ld l, a                                          ; $705b: $6f

jr_024_705c:
	ld [$c396], a                                    ; $705c: $ea $96 $c3
	ld [bc], a                                       ; $705f: $02
	pop hl                                           ; $7060: $e1
	nop                                              ; $7061: $00
	ldh a, [$80]                                     ; $7062: $f0 $80
	ldh a, [rP1]                                     ; $7064: $f0 $00
	ld hl, sp+$78                                    ; $7066: $f8 $78
	db $fd                                           ; $7068: $fd
	adc e                                            ; $7069: $8b
	inc [hl]                                         ; $706a: $34
	nop                                              ; $706b: $00
	ld de, $3a00                                     ; $706c: $11 $00 $3a
	dec d                                            ; $706f: $15
	or l                                             ; $7070: $b5
	ld a, [hl+]                                      ; $7071: $2a
	ld [$4535], a                                    ; $7072: $ea $35 $45
	ld a, d                                          ; $7075: $7a
	ld h, b                                          ; $7076: $60
	ld a, a                                          ; $7077: $7f
	ldh a, [$7f]                                     ; $7078: $f0 $7f
	ld [$fdff], a                                    ; $707a: $ea $ff $fd
	rst $38                                          ; $707d: $ff
	ld a, b                                          ; $707e: $78
	ld c, d                                          ; $707f: $4a
	rst SubAFromDE                                          ; $7080: $df
	and b                                            ; $7081: $a0
	sbc [hl]                                         ; $7082: $9e
	ld d, b                                          ; $7083: $50
	ld [hl], a                                       ; $7084: $77
	pop hl                                           ; $7085: $e1
	sbc b                                            ; $7086: $98
	inc d                                            ; $7087: $14
	cp $aa                                           ; $7088: $fe $aa
	cp $5c                                           ; $708a: $fe $5c
	db $fc                                           ; $708c: $fc
	ld bc, $5c78                                     ; $708d: $01 $78 $5c
	ld h, l                                          ; $7090: $65
	adc h                                            ; $7091: $8c
	sbc e                                            ; $7092: $9b
	ld b, a                                          ; $7093: $47
	jr c, @+$11                                      ; $7094: $38 $0f

	ld [hl], b                                       ; $7096: $70
	inc bc                                           ; $7097: $03
	ld e, [hl]                                       ; $7098: $5e
	inc bc                                           ; $7099: $03
	cp $03                                           ; $709a: $fe $03
	cp $03                                           ; $709c: $fe $03
	cp $03                                           ; $709e: $fe $03
	cp $03                                           ; $70a0: $fe $03
	cp $1f                                           ; $70a2: $fe $1f
	cp $56                                           ; $70a4: $fe $56
	and h                                            ; $70a6: $a4
	ld [hl], a                                       ; $70a7: $77
	cp $6e                                           ; $70a8: $fe $6e
	cp d                                             ; $70aa: $ba
	ld e, a                                          ; $70ab: $5f
	ld [$a456], a                                    ; $70ac: $ea $56 $a4
	ld [hl], e                                       ; $70af: $73
	ld [$5e7d], a                                    ; $70b0: $ea $7d $5e
	sbc h                                            ; $70b3: $9c
	ccf                                              ; $70b4: $3f
	rrca                                             ; $70b5: $0f
	rrca                                             ; $70b6: $0f
	ld e, a                                          ; $70b7: $5f
	ld [$fcdf], a                                    ; $70b8: $ea $df $fc
	db $dd                                           ; $70bb: $dd
	ld hl, sp-$6b                                    ; $70bc: $f8 $95
	ldh a, [$f1]                                     ; $70be: $f0 $f1
	ld [hl], b                                       ; $70c0: $70
	ld [hl], c                                       ; $70c1: $71
	ld [bc], a                                       ; $70c2: $02
	ld bc, $0300                                     ; $70c3: $01 $00 $03
	add h                                            ; $70c6: $84
	inc bc                                           ; $70c7: $03
	ld [hl], h                                       ; $70c8: $74
	ld e, h                                          ; $70c9: $5c
	ld l, l                                          ; $70ca: $6d
	adc h                                            ; $70cb: $8c
	ld l, l                                          ; $70cc: $6d
	adc d                                            ; $70cd: $8a
	inc bc                                           ; $70ce: $03
	ld a, [hl]                                       ; $70cf: $7e
	dec hl                                           ; $70d0: $2b
	cp $97                                           ; $70d1: $fe $97
	pop af                                           ; $70d3: $f1
	nop                                              ; $70d4: $00
	ldh [$0e], a                                     ; $70d5: $e0 $0e
	ret nz                                           ; $70d7: $c0

	ld de, $17c0                                     ; $70d8: $11 $c0 $17
	ld h, a                                          ; $70db: $67
	ldh a, [$97]                                     ; $70dc: $f0 $97
	db $ec                                           ; $70de: $ec
	nop                                              ; $70df: $00
	ld b, b                                          ; $70e0: $40
	adc e                                            ; $70e1: $8b
	ld bc, $206a                                     ; $70e2: $01 $6a $20
	ld c, h                                          ; $70e5: $4c
	ld h, a                                          ; $70e6: $67
	ldh a, [$97]                                     ; $70e7: $f0 $97
	rst SubAFromBC                                          ; $70e9: $e7
	nop                                              ; $70ea: $00
	ld bc, $095a                                     ; $70eb: $01 $5a $09
	ld d, d                                          ; $70ee: $52
	nop                                              ; $70ef: $00
	ld h, d                                          ; $70f0: $62
	ld h, a                                          ; $70f1: $67
	ldh a, [$97]                                     ; $70f2: $f0 $97
	cp l                                             ; $70f4: $bd
	nop                                              ; $70f5: $00
	jr jr_024_7119                                   ; $70f6: $18 $21

	jr @+$27                                         ; $70f8: $18 $25

	inc e                                            ; $70fa: $1c
	and c                                            ; $70fb: $a1
	ld h, a                                          ; $70fc: $67
	ldh a, [$97]                                     ; $70fd: $f0 $97
	sbc h                                            ; $70ff: $9c
	nop                                              ; $7100: $00
	nop                                              ; $7101: $00
	ld l, e                                          ; $7102: $6b
	ld hl, $004a                                     ; $7103: $21 $4a $00
	adc h                                            ; $7106: $8c
	ld c, a                                          ; $7107: $4f
	ret nc                                           ; $7108: $d0

	sbc [hl]                                         ; $7109: $9e
	ld bc, $d063                                     ; $710a: $01 $63 $d0
	sbc e                                            ; $710d: $9b
	ld l, h                                          ; $710e: $6c
	nop                                              ; $710f: $00
	jr nz, jr_024_715d                               ; $7110: $20 $4b

	ld a, e                                          ; $7112: $7b
	xor $9e                                          ; $7113: $ee $9e
	ld [de], a                                       ; $7115: $12
	ld h, a                                          ; $7116: $67
	ldh a, [$9b]                                     ; $7117: $f0 $9b

jr_024_7119:
	db $db                                           ; $7119: $db
	nop                                              ; $711a: $00
	ld bc, $7b4a                                     ; $711b: $01 $4a $7b
	cp $9e                                           ; $711e: $fe $9e
	ld d, d                                          ; $7120: $52
	ld h, a                                          ; $7121: $67
	ldh a, [$97]                                     ; $7122: $f0 $97
	sub a                                            ; $7124: $97
	nop                                              ; $7125: $00
	add b                                            ; $7126: $80
	ld [de], a                                       ; $7127: $12
	nop                                              ; $7128: $00
	ld d, b                                          ; $7129: $50
	nop                                              ; $712a: $00
	ld d, l                                          ; $712b: $55
	ld h, a                                          ; $712c: $67

jr_024_712d:
	ldh a, [$97]                                     ; $712d: $f0 $97
	ld e, $40                                        ; $712f: $1e $40
	ld c, $50                                        ; $7131: $0e $50
	inc c                                            ; $7133: $0c
	ld d, c                                          ; $7134: $51
	inc c                                            ; $7135: $0c
	ld d, c                                          ; $7136: $51
	ld h, a                                          ; $7137: $67
	ldh a, [$9d]                                     ; $7138: $f0 $9d
	ld e, l                                          ; $713a: $5d
	nop                                              ; $713b: $00
	ld [hl], a                                       ; $713c: $77
	ldh a, [c]                                       ; $713d: $f2
	ld e, a                                          ; $713e: $5f
	ldh a, [$97]                                     ; $713f: $f0 $97
	db $e3                                           ; $7141: $e3
	nop                                              ; $7142: $00

jr_024_7143:
	ldh [$0d], a                                     ; $7143: $e0 $0d
	db $e4                                           ; $7145: $e4
	add hl, bc                                       ; $7146: $09
	ldh [$03], a                                     ; $7147: $e0 $03
	ld h, a                                          ; $7149: $67
	ldh a, [$98]                                     ; $714a: $f0 $98
	ld h, [hl]                                       ; $714c: $66
	nop                                              ; $714d: $00
	nop                                              ; $714e: $00
	ld e, d                                          ; $714f: $5a
	ld [$0056], sp                                   ; $7150: $08 $56 $00
	ld h, e                                          ; $7153: $63
	or b                                             ; $7154: $b0
	sub l                                            ; $7155: $95
	ret nc                                           ; $7156: $d0

	ld bc, $9b40                                     ; $7157: $01 $40 $9b
	ld c, c                                          ; $715a: $49
	sub d                                            ; $715b: $92
	add hl, bc                                       ; $715c: $09

jr_024_715d:
	ld [de], a                                       ; $715d: $12
	add b                                            ; $715e: $80
	ld a, a                                          ; $715f: $7f
	ld l, [hl]                                       ; $7160: $6e
	and h                                            ; $7161: $a4
	ld a, a                                          ; $7162: $7f
	ld h, b                                          ; $7163: $60
	sbc c                                            ; $7164: $99
	inc b                                            ; $7165: $04

jr_024_7166:
	ld l, c                                          ; $7166: $69
	inc h                                            ; $7167: $24
	ld e, c                                          ; $7168: $59
	inc e                                            ; $7169: $1c
	add b                                            ; $716a: $80
	ld a, e                                          ; $716b: $7b
	ld h, a                                          ; $716c: $67
	sub d                                            ; $716d: $92
	rst $38                                          ; $716e: $ff
	ld bc, $c1fe                                     ; $716f: $01 $fe $c1
	ld a, $63                                        ; $7172: $3e $63
	nop                                              ; $7174: $00
	nop                                              ; $7175: $00
	xor [hl]                                         ; $7176: $ae
	add [hl]                                         ; $7177: $86
	jr z, jr_024_717a                                ; $7178: $28 $00

jr_024_717a:
	ld h, e                                          ; $717a: $63
	ld h, a                                          ; $717b: $67
	ret nc                                           ; $717c: $d0

	sub a                                            ; $717d: $97
	ld sp, $0000                                     ; $717e: $31 $00 $00
	rst SubAFromHL                                          ; $7181: $d7
	ld b, e                                          ; $7182: $43
	or h                                             ; $7183: $b4
	db $10                                           ; $7184: $10
	ld hl, $f067                                     ; $7185: $21 $67 $f0
	ld a, a                                          ; $7188: $7f
	add $7f                                          ; $7189: $c6 $7f
	ld [bc], a                                       ; $718b: $02
	ld a, e                                          ; $718c: $7b
	jr nc, jr_024_712d                               ; $718d: $30 $9e

	ld a, [de]                                       ; $718f: $1a
	ld h, b                                          ; $7190: $60
	add sp, -$68                                     ; $7191: $e8 $98
	ld b, h                                          ; $7193: $44
	nop                                              ; $7194: $00
	ld e, l                                          ; $7195: $5d
	inc c                                            ; $7196: $0c
	ld d, c                                          ; $7197: $51
	nop                                              ; $7198: $00
	ld b, l                                          ; $7199: $45
	ld h, a                                          ; $719a: $67
	ldh a, [hDisp1_LCDC]                                     ; $719b: $f0 $8f
	ld a, a                                          ; $719d: $7f
	nop                                              ; $719e: $00
	ccf                                              ; $719f: $3f
	add b                                            ; $71a0: $80
	sbc a                                            ; $71a1: $9f
	jr nz, jr_024_7143                               ; $71a2: $20 $9f

	jr nz, jr_024_7166                               ; $71a4: $20 $c0

	ld de, $0ee0                                     ; $71a6: $11 $e0 $0e
	ldh [rAUD1LEN], a                                ; $71a9: $e0 $11
	ldh a, [rIF]                                     ; $71ab: $f0 $0f
	ld h, a                                          ; $71ad: $67
	add sp, -$69                                     ; $71ae: $e8 $97
	inc h                                            ; $71b0: $24
	ld c, e                                          ; $71b1: $4b
	ld hl, $60ca                                     ; $71b2: $21 $ca $60
	adc h                                            ; $71b5: $8c
	db $e4                                           ; $71b6: $e4
	dec de                                           ; $71b7: $1b
	ld h, a                                          ; $71b8: $67
	ldh a, [$97]                                     ; $71b9: $f0 $97
	jr nz, @+$5c                                     ; $71bb: $20 $5a

	ld [$0052], sp                                   ; $71bd: $08 $52 $00
	rst SubAFromBC                                          ; $71c0: $e7
	ld h, e                                          ; $71c1: $63
	sbc h                                            ; $71c2: $9c
	ld h, a                                          ; $71c3: $67
	ldh a, [$7e]                                     ; $71c4: $f0 $7e
	adc $97                                          ; $71c6: $ce $97
	inc c                                            ; $71c8: $0c
	ld de, $b500                                     ; $71c9: $11 $00 $b5
	sub b                                            ; $71cc: $90
	ld h, a                                          ; $71cd: $67
	di                                               ; $71ce: $f3
	inc c                                            ; $71cf: $0c
	ld l, a                                          ; $71d0: $6f
	ldh a, [$9e]                                     ; $71d1: $f0 $9e
	add h                                            ; $71d3: $84
	halt                                             ; $71d4: $76
	jp z, $9c9c                                      ; $71d5: $ca $9c $9c

	adc h                                            ; $71d8: $8c
	ld [hl], e                                       ; $71d9: $73
	ld h, a                                          ; $71da: $67
	ldh [$9e], a                                     ; $71db: $e0 $9e
	ld hl, $ca76                                     ; $71dd: $21 $76 $ca
	sbc [hl]                                         ; $71e0: $9e
	and $5f                                          ; $71e1: $e6 $5f
	ret nc                                           ; $71e3: $d0

Call_024_71e4:
	ld [hl], a                                       ; $71e4: $77
	ld a, d                                          ; $71e5: $7a
	ld a, [hl]                                       ; $71e6: $7e
	ld a, d                                          ; $71e7: $7a
	sbc l                                            ; $71e8: $9d
	inc h                                            ; $71e9: $24
	db $db                                           ; $71ea: $db
	ld h, e                                          ; $71eb: $63
	ld a, b                                          ; $71ec: $78
	ld a, a                                          ; $71ed: $7f
	or d                                             ; $71ee: $b2
	ld a, a                                          ; $71ef: $7f
	xor [hl]                                         ; $71f0: $ae
	sbc h                                            ; $71f1: $9c
	jp nc, $b748                                     ; $71f2: $d2 $48 $b7

	ld h, e                                          ; $71f5: $63
	ldh [$98], a                                     ; $71f6: $e0 $98
	ld d, $03                                        ; $71f8: $16 $03
	call nc, $9443                                   ; $71fa: $d4 $43 $94
	ld b, e                                          ; $71fd: $43
	cp h                                             ; $71fe: $bc
	ld h, a                                          ; $71ff: $67
	ldh a, [$97]                                     ; $7200: $f0 $97
	inc c                                            ; $7202: $0c
	ld d, b                                          ; $7203: $50
	ld [$0953], sp                                   ; $7204: $08 $53 $09
	ld d, d                                          ; $7207: $52
	add hl, bc                                       ; $7208: $09
	or $63                                           ; $7209: $f6 $63
	ldh a, [$7a]                                     ; $720b: $f0 $7a
	call z, $447b                                    ; $720d: $cc $7b $44
	rst SubAFromDE                                          ; $7210: $df
	rst $38                                          ; $7211: $ff
	ld l, e                                          ; $7212: $6b
	ldh a, [rPCM12]                                  ; $7213: $f0 $76
	jp z, $249d                                      ; $7215: $ca $9d $24

	ld c, c                                          ; $7218: $49
	ld e, e                                          ; $7219: $5b
	or b                                             ; $721a: $b0
	ld [hl], a                                       ; $721b: $77
	ld h, b                                          ; $721c: $60
	sbc h                                            ; $721d: $9c
	ld h, [hl]                                       ; $721e: $66
	ld [hl+], a                                      ; $721f: $22
	db $dd                                           ; $7220: $dd
	ld h, e                                          ; $7221: $63
	ld [$d29c], sp                                   ; $7222: $08 $9c $d2
	ld c, c                                          ; $7225: $49
	sub d                                            ; $7226: $92
	ld a, e                                          ; $7227: $7b
	cp $9e                                           ; $7228: $fe $9e
	or [hl]                                          ; $722a: $b6
	ld h, a                                          ; $722b: $67
	ldh a, [$99]                                     ; $722c: $f0 $99
	add h                                            ; $722e: $84
	ld l, c                                          ; $722f: $69
	inc h                                            ; $7230: $24
	ld c, c                                          ; $7231: $49
	inc b                                            ; $7232: $04
	sbc c                                            ; $7233: $99
	ld e, a                                          ; $7234: $5f
	ld h, b                                          ; $7235: $60
	sbc [hl]                                         ; $7236: $9e
	ld bc, $ca7a                                     ; $7237: $01 $7a $ca
	sbc e                                            ; $723a: $9b
	add b                                            ; $723b: $80
	inc hl                                           ; $723c: $23
	add c                                            ; $723d: $81
	ld a, [hl]                                       ; $723e: $7e
	ld h, e                                          ; $723f: $63
	ret nz                                           ; $7240: $c0

	ld a, [hl]                                       ; $7241: $7e
	jp z, $949a                                      ; $7242: $ca $9a $94

	nop                                              ; $7245: $00
	ld sp, $ef10                                     ; $7246: $31 $10 $ef
	ld h, e                                          ; $7249: $63
	ldh a, [$79]                                     ; $724a: $f0 $79
	call z, $249d                                    ; $724c: $cc $9d $24
	ld c, b                                          ; $724f: $48
	ld e, e                                          ; $7250: $5b
	and b                                            ; $7251: $a0
	ld a, [hl]                                       ; $7252: $7e
	jp z, $d19a                                      ; $7253: $ca $9a $d1

	ld b, b                                          ; $7256: $40
	add h                                            ; $7257: $84
	ld b, b                                          ; $7258: $40
	cp a                                             ; $7259: $bf
	ld h, a                                          ; $725a: $67
	ldh a, [rPCM12]                                  ; $725b: $f0 $76
	call z, $079b                                    ; $725d: $cc $9b $07
	ld l, b                                          ; $7260: $68
	daa                                              ; $7261: $27
	ret c                                            ; $7262: $d8

	ld h, a                                          ; $7263: $67
	ldh a, [$3f]                                     ; $7264: $f0 $3f
	nop                                              ; $7266: $00
	sub b                                            ; $7267: $90
	ld [hl], l                                       ; $7268: $75
	ld d, l                                          ; $7269: $55
	ld d, l                                          ; $726a: $55
	ld de, $1611                                     ; $726b: $11 $11 $16
	ld b, b                                          ; $726e: $40
	ld d, l                                          ; $726f: $55
	ld d, l                                          ; $7270: $55
	ld b, d                                          ; $7271: $42
	ld [hl], l                                       ; $7272: $75
	ld d, l                                          ; $7273: $55
	ld d, e                                          ; $7274: $53
	ld de, $dd11                                     ; $7275: $11 $11 $dd
	ld d, l                                          ; $7278: $55
	sbc l                                            ; $7279: $9d
	ld [hl+], a                                      ; $727a: $22
	inc h                                            ; $727b: $24
	sbc $33                                          ; $727c: $de $33
	ld [hl], a                                       ; $727e: $77
	or $9e                                           ; $727f: $f6 $9e
	ld d, h                                          ; $7281: $54
	sbc $22                                          ; $7282: $de $22
	rst SubAFromDE                                          ; $7284: $df
	inc sp                                           ; $7285: $33
	sbc d                                            ; $7286: $9a
	ld h, [hl]                                       ; $7287: $66
	ld h, l                                          ; $7288: $65
	ld d, l                                          ; $7289: $55
	ld d, l                                          ; $728a: $55
	ld d, d                                          ; $728b: $52
	db $dd                                           ; $728c: $dd
	ld [hl+], a                                      ; $728d: $22
	sbc e                                            ; $728e: $9b
	inc hl                                           ; $728f: $23
	ld h, [hl]                                       ; $7290: $66
	ld h, [hl]                                       ; $7291: $66
	ld h, c                                          ; $7292: $61
	ld l, a                                          ; $7293: $6f
	or $df                                           ; $7294: $f6 $df
	ld [hl+], a                                      ; $7296: $22
	sbc h                                            ; $7297: $9c
	ld h, [hl]                                       ; $7298: $66
	ld de, $d955                                     ; $7299: $11 $55 $d9
	ld [hl+], a                                      ; $729c: $22
	ld e, a                                          ; $729d: $5f
	or $9d                                           ; $729e: $f6 $9d
	ld [hl+], a                                      ; $72a0: $22
	ld b, h                                          ; $72a1: $44
	sla d                                            ; $72a2: $cb $22
	add l                                            ; $72a4: $85
	add l                                            ; $72a5: $85
	reti                                             ; $72a6: $d9


	rst $38                                          ; $72a7: $ff
	ld sp, hl                                        ; $72a8: $f9
	inc bc                                           ; $72a9: $03
	ldh a, [$db]                                     ; $72aa: $f0 $db
	rst $38                                          ; $72ac: $ff
	sbc [hl]                                         ; $72ad: $9e
	cp $f9                                           ; $72ae: $fe $f9
	sbc $c0                                          ; $72b0: $de $c0
	sbc e                                            ; $72b2: $9b
	add b                                            ; $72b3: $80
	adc b                                            ; $72b4: $88
	nop                                              ; $72b5: $00
	db $10                                           ; $72b6: $10
	db $fd                                           ; $72b7: $fd
	sub a                                            ; $72b8: $97
	ld b, $07                                        ; $72b9: $06 $07
	rrca                                             ; $72bb: $0f
	rrca                                             ; $72bc: $0f
	rra                                              ; $72bd: $1f
	ld a, a                                          ; $72be: $7f
	rra                                              ; $72bf: $1f
	inc bc                                           ; $72c0: $03
	ld hl, sp-$63                                    ; $72c1: $f8 $9d
	ret nz                                           ; $72c3: $c0

	ld hl, sp-$25                                    ; $72c4: $f8 $db
	rst $38                                          ; $72c6: $ff
	sbc e                                            ; $72c7: $9b
	rra                                              ; $72c8: $1f
	rlca                                             ; $72c9: $07
	nop                                              ; $72ca: $00
	ld b, b                                          ; $72cb: $40
	ld h, a                                          ; $72cc: $67
	db $ed                                           ; $72cd: $ed
	jp c, $9eff                                      ; $72ce: $da $ff $9e

	ccf                                              ; $72d1: $3f
	inc bc                                           ; $72d2: $03
	sub b                                            ; $72d3: $90
	inc bc                                           ; $72d4: $03
	ldh a, [$03]                                     ; $72d5: $f0 $03
	ldh a, [$03]                                     ; $72d7: $f0 $03
	ldh a, [$03]                                     ; $72d9: $f0 $03
	ldh a, [$03]                                     ; $72db: $f0 $03
	ldh a, [$03]                                     ; $72dd: $f0 $03
	ldh a, [rSCX]                                    ; $72df: $f0 $43
	ldh a, [$df]                                     ; $72e1: $f0 $df
	cp $df                                           ; $72e3: $fe $df
	db $fc                                           ; $72e5: $fc
	rst SubAFromDE                                          ; $72e6: $df
	ld hl, sp-$63                                    ; $72e7: $f8 $9d
	ldh a, [$f1]                                     ; $72e9: $f0 $f1
	ld sp, hl                                        ; $72eb: $f9
	sbc [hl]                                         ; $72ec: $9e
	jr nz, jr_024_7359                               ; $72ed: $20 $6a

	push hl                                          ; $72ef: $e5
	sbc d                                            ; $72f0: $9a
	rra                                              ; $72f1: $1f
	ccf                                              ; $72f2: $3f
	ccf                                              ; $72f3: $3f
	ld a, a                                          ; $72f4: $7f
	ld a, a                                          ; $72f5: $7f
	ld [hl], e                                       ; $72f6: $73
	ret c                                            ; $72f7: $d8

	sbc h                                            ; $72f8: $9c
	ld bc, $0303                                     ; $72f9: $01 $03 $03

jr_024_72fc:
	ld a, d                                          ; $72fc: $7a
	or [hl]                                          ; $72fd: $b6
	reti                                             ; $72fe: $d9


	rst $38                                          ; $72ff: $ff
	adc l                                            ; $7300: $8d
	add sp, -$28                                     ; $7301: $e8 $d8
	or h                                             ; $7303: $b4
	ld [hl], b                                       ; $7304: $70
	ld l, b                                          ; $7305: $68
	ldh [$c0], a                                     ; $7306: $e0 $c0
	ld a, [$e4f0]                                    ; $7308: $fa $f0 $e4
	ret z                                            ; $730b: $c8

	adc b                                            ; $730c: $88
	sub b                                            ; $730d: $90
	db $10                                           ; $730e: $10
	ldh a, [$fc]                                     ; $730f: $f0 $fc
	rrca                                             ; $7311: $0f
	ld bc, $dff3                                     ; $7312: $01 $f3 $df
	rst $38                                          ; $7315: $ff
	sbc [hl]                                         ; $7316: $9e
	ld a, a                                          ; $7317: $7f
	ld [hl], a                                       ; $7318: $77
	db $ed                                           ; $7319: $ed
	sbc [hl]                                         ; $731a: $9e
	ld a, $fa                                        ; $731b: $3e $fa
	sbc [hl]                                         ; $731d: $9e
	jr nc, jr_024_72fc                               ; $731e: $30 $dc

	rst $38                                          ; $7320: $ff
	ld [hl], e                                       ; $7321: $73
	db $ed                                           ; $7322: $ed
	inc bc                                           ; $7323: $03
	ld [hl], b                                       ; $7324: $70
	inc bc                                           ; $7325: $03
	ldh a, [$03]                                     ; $7326: $f0 $03
	ldh a, [$03]                                     ; $7328: $f0 $03
	ldh a, [$03]                                     ; $732a: $f0 $03
	ldh a, [$03]                                     ; $732c: $f0 $03
	ldh a, [rBGP]                                    ; $732e: $f0 $47
	ldh a, [$de]                                     ; $7330: $f0 $de
	ldh [$75], a                                     ; $7332: $e0 $75
	adc [hl]                                         ; $7334: $8e
	sbc l                                            ; $7335: $9d
	add b                                            ; $7336: $80
	ld bc, $d97a                                     ; $7337: $01 $7a $d9
	sbc $07                                          ; $733a: $de $07
	sbc [hl]                                         ; $733c: $9e
	rrca                                             ; $733d: $0f
	ld b, a                                          ; $733e: $47
	ret c                                            ; $733f: $d8

	sub a                                            ; $7340: $97
	dec c                                            ; $7341: $0d
	add hl, de                                       ; $7342: $19
	inc de                                           ; $7343: $13
	inc de                                           ; $7344: $13
	add hl, de                                       ; $7345: $19
	ld h, $20                                        ; $7346: $26 $20
	ld e, d                                          ; $7348: $5a
	halt                                             ; $7349: $76
	sbc b                                            ; $734a: $98
	sub b                                            ; $734b: $90
	and $c9                                          ; $734c: $e6 $c9
	ret                                              ; $734e: $c9


	add c                                            ; $734f: $81
	ld a, a                                          ; $7350: $7f
	xor a                                            ; $7351: $af
	add l                                            ; $7352: $85
	ld b, b                                          ; $7353: $40

jr_024_7354:
	nop                                              ; $7354: $00
	ld h, b                                          ; $7355: $60
	adc b                                            ; $7356: $88
	ld [de], a                                       ; $7357: $12
	rst $38                                          ; $7358: $ff

jr_024_7359:
	ld e, a                                          ; $7359: $5f
	ld b, e                                          ; $735a: $43
	sbc $80                                          ; $735b: $de $80
	add h                                            ; $735d: $84
	ld [hl], b                                       ; $735e: $70
	inc c                                            ; $735f: $0c
	ld b, b                                          ; $7360: $40
	db $eb                                           ; $7361: $eb
	ei                                               ; $7362: $fb
	cp [hl]                                          ; $7363: $be
	inc e                                            ; $7364: $1c
	add hl, de                                       ; $7365: $19
	inc de                                           ; $7366: $13
	ld [hl], $80                                     ; $7367: $36 $80
	pop af                                           ; $7369: $f1
	cp $7c                                           ; $736a: $fe $7c
	ld [$1010], sp                                   ; $736c: $08 $10 $10
	jr nz, jr_024_7354                               ; $736f: $20 $e3

	sbc h                                            ; $7371: $9c
	add hl, sp                                       ; $7372: $39
	ld h, a                                          ; $7373: $67
	adc $98                                          ; $7374: $ce $98
	jr nc, jr_024_73db                               ; $7376: $30 $63

	ret nz                                           ; $7378: $c0

	ld a, [$dd7f]                                    ; $7379: $fa $7f $dd
	sbc c                                            ; $737c: $99
	db $fc                                           ; $737d: $fc
	add b                                            ; $737e: $80
	ld c, $3f                                        ; $737f: $0e $3f
	ld hl, sp-$1a                                    ; $7381: $f8 $e6
	ei                                               ; $7383: $fb
	sbc l                                            ; $7384: $9d
	rlca                                             ; $7385: $07
	jr jr_024_73e2                                   ; $7386: $18 $5a

	or l                                             ; $7388: $b5
	ld h, a                                          ; $7389: $67
	sbc b                                            ; $738a: $98
	ld d, e                                          ; $738b: $53
	db $ed                                           ; $738c: $ed
	db $db                                           ; $738d: $db
	rst $38                                          ; $738e: $ff
	ld a, a                                          ; $738f: $7f
	db $ed                                           ; $7390: $ed
	inc bc                                           ; $7391: $03
	ld b, b                                          ; $7392: $40
	inc bc                                           ; $7393: $03
	ldh a, [$03]                                     ; $7394: $f0 $03
	ldh a, [$03]                                     ; $7396: $f0 $03
	ldh a, [$2f]                                     ; $7398: $f0 $2f
	ldh a, [rPCM12]                                  ; $739a: $f0 $76
	or $7d                                           ; $739c: $f6 $7d
	adc l                                            ; $739e: $8d
	ld sp, hl                                        ; $739f: $f9
	ld [hl], b                                       ; $73a0: $70
	ld d, [hl]                                       ; $73a1: $56
	cp $7c                                           ; $73a2: $fe $7c
	ld d, [hl]                                       ; $73a4: $56
	ld l, l                                          ; $73a5: $6d
	adc [hl]                                         ; $73a6: $8e
	cp $df                                           ; $73a7: $fe $df
	ld bc, $02df                                     ; $73a9: $01 $df $02
	sbc [hl]                                         ; $73ac: $9e
	inc b                                            ; $73ad: $04
	ld [hl], h                                       ; $73ae: $74
	inc l                                            ; $73af: $2c
	ld [hl], l                                       ; $73b0: $75
	ld h, l                                          ; $73b1: $65
	sub e                                            ; $73b2: $93
	ld b, c                                          ; $73b3: $41

jr_024_73b4:
	add h                                            ; $73b4: $84
	ld [hl-], a                                      ; $73b5: $32
	jr nz, jr_024_7424                               ; $73b6: $20 $6c

	ld c, b                                          ; $73b8: $48
	ret c                                            ; $73b9: $d8

	sub b                                            ; $73ba: $90
	sub d                                            ; $73bb: $92
	ld [de], a                                       ; $73bc: $12
	inc b                                            ; $73bd: $04
	inc b                                            ; $73be: $04
	db $fd                                           ; $73bf: $fd
	sbc [hl]                                         ; $73c0: $9e
	inc b                                            ; $73c1: $04
	ld [hl], e                                       ; $73c2: $73
	inc d                                            ; $73c3: $14
	ld a, d                                          ; $73c4: $7a
	sub d                                            ; $73c5: $92
	db $fc                                           ; $73c6: $fc
	rst SubAFromDE                                          ; $73c7: $df
	ld bc, $a480                                     ; $73c8: $01 $80 $a4
	ld c, l                                          ; $73cb: $4d
	ld l, d                                          ; $73cc: $6a
	sbc c                                            ; $73cd: $99
	db $e4                                           ; $73ce: $e4
	jp nc, $c349                                     ; $73cf: $d2 $49 $c3

	jr nz, jr_024_73b4                               ; $73d2: $20 $e0

	ld b, c                                          ; $73d4: $41
	jp nz, $a492                                     ; $73d5: $c2 $92 $a4

	and h                                            ; $73d8: $a4
	dec l                                            ; $73d9: $2d
	add a                                            ; $73da: $87

jr_024_73db:
	ld c, $19                                        ; $73db: $0e $19
	ld [hl-], a                                      ; $73dd: $32
	ld c, b                                          ; $73de: $48
	sub b                                            ; $73df: $90
	ld b, e                                          ; $73e0: $43
	dec bc                                           ; $73e1: $0b

jr_024_73e2:
	ld b, b                                          ; $73e2: $40
	add c                                            ; $73e3: $81
	ld b, $0c                                        ; $73e4: $06 $0c
	jr nc, jr_024_7448                               ; $73e6: $30 $60

	add b                                            ; $73e8: $80
	add e                                            ; $73e9: $83
	add a                                            ; $73ea: $87
	sbc b                                            ; $73eb: $98
	ld b, b                                          ; $73ec: $40
	nop                                              ; $73ed: $00
	ld [bc], a                                       ; $73ee: $02
	ld d, $5a                                        ; $73ef: $16 $5a
	ld l, h                                          ; $73f1: $6c
	or b                                             ; $73f2: $b0
	ld h, b                                          ; $73f3: $60
	add b                                            ; $73f4: $80
	nop                                              ; $73f5: $00
	ld bc, $3c0f                                     ; $73f6: $01 $0f $3c
	ldh a, [$c0]                                     ; $73f9: $f0 $c0
	rlca                                             ; $73fb: $07
	ld de, $a058                                     ; $73fc: $11 $58 $a0
	jp $3e0f                                         ; $73ff: $c3 $0f $3e


	ld a, c                                          ; $7402: $79
	nop                                              ; $7403: $00
	ld c, $30                                        ; $7404: $0e $30
	ld a, d                                          ; $7406: $7a
	sbc l                                            ; $7407: $9d
	sub [hl]                                         ; $7408: $96
	ld bc, $f006                                     ; $7409: $01 $06 $f0
	ld bc, $6000                                     ; $740c: $01 $00 $60
	rst SubAFromHL                                          ; $740f: $d7
	inc hl                                           ; $7410: $23
	pop bc                                           ; $7411: $c1
	ld [hl], c                                       ; $7412: $71
	dec c                                            ; $7413: $0d
	sbc [hl]                                         ; $7414: $9e
	jr nz, @+$79                                     ; $7415: $20 $77

	xor $df                                          ; $7417: $ee $df
	add b                                            ; $7419: $80
	sub d                                            ; $741a: $92
	inc a                                            ; $741b: $3c
	add b                                            ; $741c: $80
	rst SubAFromDE                                          ; $741d: $df
	db $ec                                           ; $741e: $ec
	rst FarCall                                          ; $741f: $f7
	nop                                              ; $7420: $00
	nop                                              ; $7421: $00
	ld [hl], b                                       ; $7422: $70
	ret nz                                           ; $7423: $c0

jr_024_7424:
	ld a, a                                          ; $7424: $7f
	jr nz, jr_024_7437                               ; $7425: $20 $10

	ld [$b57a], sp                                   ; $7427: $08 $7a $b5
	ld l, a                                          ; $742a: $6f
	sub l                                            ; $742b: $95
	ld e, e                                          ; $742c: $5b
	jr nc, jr_024_7486                               ; $742d: $30 $57

	db $ed                                           ; $742f: $ed
	jp c, $9eff                                      ; $7430: $da $ff $9e

	ld a, a                                          ; $7433: $7f
	inc bc                                           ; $7434: $03
	nop                                              ; $7435: $00
	inc bc                                           ; $7436: $03

jr_024_7437:
	ldh a, [$03]                                     ; $7437: $f0 $03
	ldh a, [$fc]                                     ; $7439: $f0 $fc
	sub a                                            ; $743b: $97
	ld hl, sp-$0f                                    ; $743c: $f8 $f1
	ldh a, [$e2]                                     ; $743e: $f0 $e2
	ldh [$c0], a                                     ; $7440: $e0 $c0
	call nz, $7280                                   ; $7442: $c4 $80 $72
	db $fc                                           ; $7445: $fc
	ld a, c                                          ; $7446: $79
	adc l                                            ; $7447: $8d

jr_024_7448:
	ld b, a                                          ; $7448: $47
	ret c                                            ; $7449: $d8

	sub h                                            ; $744a: $94
	dec b                                            ; $744b: $05
	add hl, bc                                       ; $744c: $09
	add hl, bc                                       ; $744d: $09
	inc de                                           ; $744e: $13
	ld [de], a                                       ; $744f: $12
	ld h, $24                                        ; $7450: $26 $24
	ld c, h                                          ; $7452: $4c
	ld hl, sp-$10                                    ; $7453: $f8 $f0
	ldh a, [$71]                                     ; $7455: $f0 $71
	ld h, [hl]                                       ; $7457: $66
	sbc b                                            ; $7458: $98
	sub b                                            ; $7459: $90
	jr nc, jr_024_747c                               ; $745a: $30 $20

	ld h, b                                          ; $745c: $60
	ld b, b                                          ; $745d: $40
	ret nz                                           ; $745e: $c0

	add b                                            ; $745f: $80
	ld a, e                                          ; $7460: $7b
	ret nc                                           ; $7461: $d0

	ei                                               ; $7462: $fb
	ld a, [hl]                                       ; $7463: $7e
	and h                                            ; $7464: $a4
	rst SubAFromDE                                          ; $7465: $df
	inc bc                                           ; $7466: $03
	sbc $05                                          ; $7467: $de $05
	sbc d                                            ; $7469: $9a

jr_024_746a:
	add hl, bc                                       ; $746a: $09
	ld bc, $0203                                     ; $746b: $01 $03 $02
	ld [bc], a                                       ; $746e: $02
	sbc $06                                          ; $746f: $de $06
	add b                                            ; $7471: $80
	ld c, $a2                                        ; $7472: $0e $a2
	sub l                                            ; $7474: $95
	adc a                                            ; $7475: $8f
	cp b                                             ; $7476: $b8
	xor a                                            ; $7477: $af
	xor [hl]                                         ; $7478: $ae
	sbc e                                            ; $7479: $9b
	sub l                                            ; $747a: $95
	ld c, a                                          ; $747b: $4f

jr_024_747c:
	ld c, [hl]                                       ; $747c: $4e
	ld e, a                                          ; $747d: $5f
	ld e, a                                          ; $747e: $5f
	ld d, b                                          ; $747f: $50
	ld d, c                                          ; $7480: $51
	ld h, a                                          ; $7481: $67
	ld l, [hl]                                       ; $7482: $6e

jr_024_7483:
	ld e, a                                          ; $7483: $5f
	ld h, d                                          ; $7484: $62
	add l                                            ; $7485: $85

jr_024_7486:
	inc e                                            ; $7486: $1c
	jr z, jr_024_746a                                ; $7487: $28 $e1

	rst JumpTable                                          ; $7489: $c7
	dec c                                            ; $748a: $0d
	ccf                                              ; $748b: $3f
	rst $38                                          ; $748c: $ff
	cp $f8                                           ; $748d: $fe $f8
	ldh a, [$c0]                                     ; $748f: $f0 $c0
	sub l                                            ; $7491: $95
	nop                                              ; $7492: $00
	inc bc                                           ; $7493: $03
	ld h, c                                          ; $7494: $61
	add a                                            ; $7495: $87
	rrca                                             ; $7496: $0f
	inc a                                            ; $7497: $3c
	ld [hl], e                                       ; $7498: $73
	call nz, $0010                                  ; $7499: $c4 $10 $00
	ld a, e                                          ; $749c: $7b
	cp a                                             ; $749d: $bf
	sub c                                            ; $749e: $91
	inc bc                                           ; $749f: $03
	inc c                                            ; $74a0: $0c
	jr c, jr_024_7483                                ; $74a1: $38 $e0

	add b                                            ; $74a3: $80
	db $e4                                           ; $74a4: $e4
	ret c                                            ; $74a5: $d8

	jr nz, @-$3e                                     ; $74a6: $20 $c0

	ld b, $19                                        ; $74a8: $06 $19
	halt                                             ; $74aa: $76
	add sp, $18                                      ; $74ab: $e8 $18
	ld a, d                                          ; $74ad: $7a
	db $d3                                           ; $74ae: $d3
	ld a, [hl]                                       ; $74af: $7e
	jp nz, Jump_024_4e7d                             ; $74b0: $c2 $7d $4e

	ld a, [hl]                                       ; $74b3: $7e
	ld l, a                                          ; $74b4: $6f
	sub [hl]                                         ; $74b5: $96
	ld [hl+], a                                      ; $74b6: $22
	sub b                                            ; $74b7: $90
	ld b, b                                          ; $74b8: $40
	add a                                            ; $74b9: $87
	ld c, $3d                                        ; $74ba: $0e $3d
	nop                                              ; $74bc: $00
	inc bc                                           ; $74bd: $03
	inc e                                            ; $74be: $1c
	halt                                             ; $74bf: $76
	sbc l                                            ; $74c0: $9d
	add [hl]                                         ; $74c1: $86
	inc bc                                           ; $74c2: $03
	jr jr_024_74c6                                   ; $74c3: $18 $01

	ld b, e                                          ; $74c5: $43

jr_024_74c6:
	dec sp                                           ; $74c6: $3b
	pop hl                                           ; $74c7: $e1
	add c                                            ; $74c8: $81

jr_024_74c9:
	ret nz                                           ; $74c9: $c0

	inc d                                            ; $74ca: $14
	rlca                                             ; $74cb: $07
	cp $3c                                           ; $74cc: $fe $3c
	inc b                                            ; $74ce: $04
	ld e, $7e                                        ; $74cf: $1e $7e
	rst $38                                          ; $74d1: $ff
	db $eb                                           ; $74d2: $eb
	jr z, jr_024_74c9                                ; $74d3: $28 $f4

	ld a, [de]                                       ; $74d5: $1a
	ld de, $880c                                     ; $74d6: $11 $0c $88
	add h                                            ; $74d9: $84
	add h                                            ; $74da: $84
	ld a, d                                          ; $74db: $7a
	and l                                            ; $74dc: $a5
	sub d                                            ; $74dd: $92
	ld [$0400], sp                                   ; $74de: $08 $00 $04
	ld [bc], a                                       ; $74e1: $02
	ld [bc], a                                       ; $74e2: $02
	ld b, b                                          ; $74e3: $40
	jr z, jr_024_74fa                                ; $74e4: $28 $14

	ld a, [bc]                                       ; $74e6: $0a
	add l                                            ; $74e7: $85
	jp nz, Jump_024_6363                             ; $74e8: $c2 $63 $63

	ld a, d                                          ; $74eb: $7a
	and l                                            ; $74ec: $a5
	ld a, a                                          ; $74ed: $7f
	ldh a, [c]                                       ; $74ee: $f2
	ld a, d                                          ; $74ef: $7a
	inc [hl]                                         ; $74f0: $34
	ld a, [hl]                                       ; $74f1: $7e
	or l                                             ; $74f2: $b5
	sbc e                                            ; $74f3: $9b
	add b                                            ; $74f4: $80
	ld b, b                                          ; $74f5: $40
	jr nc, jr_024_7500                               ; $74f6: $30 $08

	halt                                             ; $74f8: $76
	inc h                                            ; $74f9: $24

jr_024_74fa:
	ld a, l                                          ; $74fa: $7d
	ld d, $9b                                        ; $74fb: $16 $9b
	inc a                                            ; $74fd: $3c
	rra                                              ; $74fe: $1f
	adc a                                            ; $74ff: $8f

jr_024_7500:
	rst GetHLinHL                                          ; $7500: $cf
	ld d, d                                          ; $7501: $52
	and d                                            ; $7502: $a2
	sbc h                                            ; $7503: $9c
	add b                                            ; $7504: $80
	ldh a, [$fc]                                     ; $7505: $f0 $fc
	ld l, [hl]                                       ; $7507: $6e
	and d                                            ; $7508: $a2
	sbc [hl]                                         ; $7509: $9e
	rra                                              ; $750a: $1f
	ld h, e                                          ; $750b: $63
	db $ed                                           ; $750c: $ed
	ld [bc], a                                       ; $750d: $02
	ret nc                                           ; $750e: $d0

	dec sp                                           ; $750f: $3b
	ldh a, [$de]                                     ; $7510: $f0 $de
	cp $9e                                           ; $7512: $fe $9e
	db $fc                                           ; $7514: $fc
	ld sp, hl                                        ; $7515: $f9
	ld a, h                                          ; $7516: $7c
	ld d, [hl]                                       ; $7517: $56
	ld a, c                                          ; $7518: $79
	adc [hl]                                         ; $7519: $8e
	sbc d                                            ; $751a: $9a
	jr nz, jr_024_751d                               ; $751b: $20 $00

jr_024_751d:
	ld b, b                                          ; $751d: $40
	rlca                                             ; $751e: $07
	rrca                                             ; $751f: $0f
	ld a, c                                          ; $7520: $79
	adc [hl]                                         ; $7521: $8e
	ld a, c                                          ; $7522: $79
	adc l                                            ; $7523: $8d
	ld b, l                                          ; $7524: $45
	sub b                                            ; $7525: $90
	sub l                                            ; $7526: $95
	ld c, c                                          ; $7527: $49
	sbc c                                            ; $7528: $99
	adc e                                            ; $7529: $8b
	ld [hl+], a                                      ; $752a: $22
	ld d, $44                                        ; $752b: $16 $44
	inc l                                            ; $752d: $2c
	or b                                             ; $752e: $b0
	add b                                            ; $752f: $80
	nop                                              ; $7530: $00
	ld a, b                                          ; $7531: $78
	ld [hl], e                                       ; $7532: $73
	sbc h                                            ; $7533: $9c
	jr nz, jr_024_7576                               ; $7534: $20 $40

	ld c, b                                          ; $7536: $48
	ld h, d                                          ; $7537: $62
	rst JumpTable                                          ; $7538: $c7
	ld a, [$a17a]                                    ; $7539: $fa $7a $a1
	add b                                            ; $753c: $80
	rla                                              ; $753d: $17
	ld a, a                                          ; $753e: $7f
	inc hl                                           ; $753f: $23
	ld b, e                                          ; $7540: $43
	ld b, a                                          ; $7541: $47
	ld c, $0e                                        ; $7542: $0e $0e
	rra                                              ; $7544: $1f
	jr jr_024_75c6                                   ; $7545: $18 $7f

	ld a, $7e                                        ; $7547: $3e $7e
	ld a, a                                          ; $7549: $7f
	inc a                                            ; $754a: $3c
	ld a, c                                          ; $754b: $79
	jp nz, $fff3                                     ; $754c: $c2 $f3 $ff

	db $fd                                           ; $754f: $fd
	rst FarCall                                          ; $7550: $f7
	rst $38                                          ; $7551: $ff
	ret c                                            ; $7552: $d8

	ldh [hLCDCIntHandlerIdx], a                                     ; $7553: $e0 $81
	rrca                                             ; $7555: $0f
	rst $38                                          ; $7556: $ff
	ld c, $78                                        ; $7557: $0e $78
	rst $38                                          ; $7559: $ff
	scf                                              ; $755a: $37
	sbc d                                            ; $755b: $9a
	adc c                                            ; $755c: $89
	ld l, b                                          ; $755d: $68
	and e                                            ; $755e: $a3
	rra                                              ; $755f: $1f
	ldh a, [$9f]                                     ; $7560: $f0 $9f
	cp $0e                                           ; $7562: $fe $0e
	ld a, h                                          ; $7564: $7c
	ldh a, [$c0]                                     ; $7565: $f0 $c0
	add b                                            ; $7567: $80
	rrca                                             ; $7568: $0f
	ld a, a                                          ; $7569: $7f
	rst $38                                          ; $756a: $ff
	rlca                                             ; $756b: $07
	ld e, $71                                        ; $756c: $1e $71
	jp nz, Jump_024_760f                             ; $756e: $c2 $0f $76

	jp hl                                            ; $7571: $e9


	ld e, a                                          ; $7572: $5f
	ld a, c                                          ; $7573: $79
	add d                                            ; $7574: $82
	sub b                                            ; $7575: $90

jr_024_7576:
	ccf                                              ; $7576: $3f
	db $fc                                           ; $7577: $fc
	ld hl, sp-$10                                    ; $7578: $f8 $f0
	ldh [hDisp1_SCY], a                                     ; $757a: $e0 $90
	jr nz, jr_024_75bf                               ; $757c: $20 $41

	add a                                            ; $757e: $87
	rra                                              ; $757f: $1f
	ld a, [hl]                                       ; $7580: $7e
	ei                                               ; $7581: $fb
	rst AddAOntoHL                                          ; $7582: $ef
	ld h, b                                          ; $7583: $60
	ret nz                                           ; $7584: $c0

	halt                                             ; $7585: $76
	dec a                                            ; $7586: $3d
	add d                                            ; $7587: $82
	rlca                                             ; $7588: $07
	inc e                                            ; $7589: $1c
	ld a, d                                          ; $758a: $7a
	db $f4                                           ; $758b: $f4
	db $ed                                           ; $758c: $ed
	jp c, $f5ba                                      ; $758d: $da $ba $f5

	ld hl, sp-$16                                    ; $7590: $f8 $ea
	rlca                                             ; $7592: $07
	rrca                                             ; $7593: $0f
	ld e, $3c                                        ; $7594: $1e $3c
	ld a, h                                          ; $7596: $7c
	ret c                                            ; $7597: $d8

	ld de, $b631                                     ; $7598: $11 $31 $b6
	cp [hl]                                          ; $759b: $be
	sbc d                                            ; $759c: $9a
	ld e, e                                          ; $759d: $5b
	ld e, a                                          ; $759e: $5f
	rra                                              ; $759f: $1f
	xor a                                            ; $75a0: $af
	dec l                                            ; $75a1: $2d
	ld c, c                                          ; $75a2: $49
	ld c, c                                          ; $75a3: $49
	ld c, l                                          ; $75a4: $4d
	sbc $8c                                          ; $75a5: $de $8c
	sub e                                            ; $75a7: $93
	inc e                                            ; $75a8: $1c
	ld e, $86                                        ; $75a9: $1e $86
	ld b, d                                          ; $75ab: $42
	ld b, e                                          ; $75ac: $43
	ld b, e                                          ; $75ad: $43
	ld b, c                                          ; $75ae: $41
	ld h, c                                          ; $75af: $61
	and c                                            ; $75b0: $a1
	and c                                            ; $75b1: $a1
	ld bc, $dd81                                     ; $75b2: $01 $81 $dd
	add b                                            ; $75b5: $80
	rst SubAFromDE                                          ; $75b6: $df
	ld b, b                                          ; $75b7: $40
	sub a                                            ; $75b8: $97
	ld sp, $19b1                                     ; $75b9: $31 $b1 $19
	ld e, c                                          ; $75bc: $59
	inc c                                            ; $75bd: $0c
	ld l, h                                          ; $75be: $6c

jr_024_75bf:
	add $c6                                          ; $75bf: $c6 $c6
	ld a, d                                          ; $75c1: $7a
	db $e3                                           ; $75c2: $e3
	add [hl]                                         ; $75c3: $86
	add b                                            ; $75c4: $80
	ret nz                                           ; $75c5: $c0

jr_024_75c6:
	ret nz                                           ; $75c6: $c0

	ld h, b                                          ; $75c7: $60
	ld h, b                                          ; $75c8: $60
	xor h                                            ; $75c9: $ac
	xor l                                            ; $75ca: $ad
	adc $ed                                          ; $75cb: $ce $ed
	xor $ad                                          ; $75cd: $ee $ad
	xor [hl]                                         ; $75cf: $ae
	db $ed                                           ; $75d0: $ed
	ld b, a                                          ; $75d1: $47
	ld b, [hl]                                       ; $75d2: $46
	dec h                                            ; $75d3: $25
	ld h, $25                                        ; $75d4: $26 $25
	ld h, [hl]                                       ; $75d6: $66
	ld h, l                                          ; $75d7: $65
	ld h, [hl]                                       ; $75d8: $66
	nop                                              ; $75d9: $00
	nop                                              ; $75da: $00
	and b                                            ; $75db: $a0
	ld b, b                                          ; $75dc: $40
	ld a, e                                          ; $75dd: $7b
	and [hl]                                         ; $75de: $a6
	sub a                                            ; $75df: $97
	jr nz, @+$01                                     ; $75e0: $20 $ff

	rst $38                                          ; $75e2: $ff
	ld e, a                                          ; $75e3: $5f
	cp a                                             ; $75e4: $bf
	ld [hl], b                                       ; $75e5: $70
	ldh a, [$e0]                                     ; $75e6: $f0 $e0
	halt                                             ; $75e8: $76
	adc c                                            ; $75e9: $89
	sub l                                            ; $75ea: $95
	ld c, $9c                                        ; $75eb: $0e $9c
	jr c, jr_024_7628                                ; $75ed: $38 $39

	ld [hl], b                                       ; $75ef: $70
	add b                                            ; $75f0: $80
	ldh [$f0], a                                     ; $75f1: $e0 $f0
	pop af                                           ; $75f3: $f1
	ld h, e                                          ; $75f4: $63
	ld a, c                                          ; $75f5: $79
	jp nc, $b572                                     ; $75f6: $d2 $72 $b5

	sbc l                                            ; $75f9: $9d
	sub d                                            ; $75fa: $92
	jr nz, jr_024_766b                               ; $75fb: $20 $6e

	and c                                            ; $75fd: $a1
	sbc h                                            ; $75fe: $9c
	inc c                                            ; $75ff: $0c
	inc e                                            ; $7600: $1c
	inc a                                            ; $7601: $3c
	db $dd                                           ; $7602: $dd
	rst $38                                          ; $7603: $ff
	ld e, [hl]                                       ; $7604: $5e
	and d                                            ; $7605: $a2
	ld a, h                                          ; $7606: $7c
	db $f4                                           ; $7607: $f4
	ld b, [hl]                                       ; $7608: $46
	ret nz                                           ; $7609: $c0

	ld a, a                                          ; $760a: $7f
	ld c, h                                          ; $760b: $4c
	ld a, a                                          ; $760c: $7f
	ld c, e                                          ; $760d: $4b
	sbc h                                            ; $760e: $9c

Jump_024_760f:
	pop af                                           ; $760f: $f1
	ldh [$e2], a                                     ; $7610: $e0 $e2
	ld a, e                                          ; $7612: $7b
	cp b                                             ; $7613: $b8
	ld h, h                                          ; $7614: $64
	adc c                                            ; $7615: $89
	ld l, [hl]                                       ; $7616: $6e
	xor $de                                          ; $7617: $ee $de
	ld a, a                                          ; $7619: $7f
	ld l, c                                          ; $761a: $69
	sub b                                            ; $761b: $90
	sbc c                                            ; $761c: $99
	ld a, [bc]                                       ; $761d: $0a
	ld [de], a                                       ; $761e: $12
	dec d                                            ; $761f: $15
	dec [hl]                                         ; $7620: $35
	dec hl                                           ; $7621: $2b
	ld l, e                                          ; $7622: $6b
	ld a, e                                          ; $7623: $7b
	jp c, $e190                                      ; $7624: $da $90 $e1

	ldh [c], a                                       ; $7627: $e2

jr_024_7628:
	jp nz, $84c4                                     ; $7628: $c2 $c4 $84

	ld l, b                                          ; $762b: $68
	ld l, b                                          ; $762c: $68
	ret nc                                           ; $762d: $d0

	ret nc                                           ; $762e: $d0

	and b                                            ; $762f: $a0
	and b                                            ; $7630: $a0
	nop                                              ; $7631: $00
	ld b, b                                          ; $7632: $40
	sub b                                            ; $7633: $90
	sub b                                            ; $7634: $90
	ld a, d                                          ; $7635: $7a
	jp nz, $8779                                     ; $7636: $c2 $79 $87

	ld [hl], a                                       ; $7639: $77
	call z, $059b                                    ; $763a: $cc $9b $05
	ld a, [bc]                                       ; $763d: $0a
	dec d                                            ; $763e: $15
	dec l                                            ; $763f: $2d
	halt                                             ; $7640: $76
	sbc d                                            ; $7641: $9a
	add d                                            ; $7642: $82
	ld b, $0d                                        ; $7643: $06 $0d
	ld a, [de]                                       ; $7645: $1a
	ld [hl-], a                                      ; $7646: $32
	and a                                            ; $7647: $a7
	inc h                                            ; $7648: $24
	and h                                            ; $7649: $a4
	ld b, h                                          ; $764a: $44
	ld b, [hl]                                       ; $764b: $46
	and [hl]                                         ; $764c: $a6
	and [hl]                                         ; $764d: $a6
	ld b, [hl]                                       ; $764e: $46
	sbc $de                                          ; $764f: $de $de
	ld e, [hl]                                       ; $7651: $5e
	cp [hl]                                          ; $7652: $be
	cp h                                             ; $7653: $bc
	ld e, h                                          ; $7654: $5c
	ld e, h                                          ; $7655: $5c
	cp h                                             ; $7656: $bc
	ld l, [hl]                                       ; $7657: $6e
	cpl                                              ; $7658: $2f
	cpl                                              ; $7659: $2f
	rlca                                             ; $765a: $07
	rlca                                             ; $765b: $07
	inc bc                                           ; $765c: $03
	inc bc                                           ; $765d: $03
	ld [bc], a                                       ; $765e: $02
	sub c                                            ; $765f: $91
	db $db                                           ; $7660: $db
	sub b                                            ; $7661: $90
	add b                                            ; $7662: $80
	sub c                                            ; $7663: $91
	rra                                              ; $7664: $1f
	rra                                              ; $7665: $1f
	inc a                                            ; $7666: $3c
	ld sp, $5e3f                                     ; $7667: $31 $3f $5e
	ld c, a                                          ; $766a: $4f

jr_024_766b:
	rst GetHLinHL                                          ; $766b: $cf
	ldh a, [$f3]                                     ; $766c: $f0 $f3
	rst AddAOntoHL                                          ; $766e: $ef
	rst $38                                          ; $766f: $ff
	cp $e1                                           ; $7670: $fe $e1
	rst JumpTable                                          ; $7672: $c7
	pop bc                                           ; $7673: $c1
	cp a                                             ; $7674: $bf
	ld a, l                                          ; $7675: $7d
	rra                                              ; $7676: $1f
	ldh [rIE], a                                     ; $7677: $e0 $ff
	ld a, a                                          ; $7679: $7f
	db $e3                                           ; $767a: $e3
	di                                               ; $767b: $f3
	ret nz                                           ; $767c: $c0

	add e                                            ; $767d: $83
	cp $ff                                           ; $767e: $fe $ff
	nop                                              ; $7680: $00
	rst $38                                          ; $7681: $ff
	add b                                            ; $7682: $80
	di                                               ; $7683: $f3
	ld h, a                                          ; $7684: $67
	ld a, e                                          ; $7685: $7b
	cp $fc                                           ; $7686: $fe $fc
	ld a, b                                          ; $7688: $78
	sbc c                                            ; $7689: $99
	or c                                             ; $768a: $b1
	ldh [c], a                                       ; $768b: $e2
	db $e4                                           ; $768c: $e4
	db $fc                                           ; $768d: $fc
	add h                                            ; $768e: $84
	nop                                              ; $768f: $00
	add b                                            ; $7690: $80
	ld h, c                                          ; $7691: $61
	pop bc                                           ; $7692: $c1
	di                                               ; $7693: $f3
	ld h, $71                                        ; $7694: $26 $71
	ld b, h                                          ; $7696: $44
	add sp, -$3c                                     ; $7697: $e8 $c4
	dec d                                            ; $7699: $15
	adc d                                            ; $769a: $8a
	dec [hl]                                         ; $769b: $35
	ld d, e                                          ; $769c: $53
	ld [hl+], a                                      ; $769d: $22
	ld h, d                                          ; $769e: $62
	ld b, [hl]                                       ; $769f: $46
	adc [hl]                                         ; $76a0: $8e
	adc h                                            ; $76a1: $8c
	adc c                                            ; $76a2: $89
	dec e                                            ; $76a3: $1d
	dec de                                           ; $76a4: $1b
	ld a, $5f                                        ; $76a5: $3e $5f
	ld e, [hl]                                       ; $76a7: $5e
	xor [hl]                                         ; $76a8: $ae
	inc sp                                           ; $76a9: $33
	ld a, l                                          ; $76aa: $7d
	rst $38                                          ; $76ab: $ff

jr_024_76ac:
	sbc a                                            ; $76ac: $9f
	rst SubAFromBC                                          ; $76ad: $e7
	ld [hl-], a                                      ; $76ae: $32
	inc sp                                           ; $76af: $33
	ld [hl], e                                       ; $76b0: $73
	db $fd                                           ; $76b1: $fd
	rst GetHLinHL                                          ; $76b2: $cf
	add e                                            ; $76b3: $83
	ld h, c                                          ; $76b4: $61
	add hl, de                                       ; $76b5: $19
	and c                                            ; $76b6: $a1
	and b                                            ; $76b7: $a0
	ldh [$dd], a                                     ; $76b8: $e0 $dd
	and b                                            ; $76ba: $a0
	sbc h                                            ; $76bb: $9c
	and h                                            ; $76bc: $a4
	ld b, b                                          ; $76bd: $40
	ld b, b                                          ; $76be: $40
	ei                                               ; $76bf: $fb
	add [hl]                                         ; $76c0: $86
	or [hl]                                          ; $76c1: $b6
	or a                                             ; $76c2: $b7
	rst SubAFromBC                                          ; $76c3: $e7
	rst SubAFromBC                                          ; $76c4: $e7
	db $dd                                           ; $76c5: $dd
	db $dd                                           ; $76c6: $dd
	ld e, h                                          ; $76c7: $5c
	ld e, l                                          ; $76c8: $5d
	ld h, b                                          ; $76c9: $60
	ld h, b                                          ; $76ca: $60
	jr nc, jr_024_76fd                               ; $76cb: $30 $30

	ld [hl-], a                                      ; $76cd: $32
	ld [hl-], a                                      ; $76ce: $32
	inc sp                                           ; $76cf: $33
	inc sp                                           ; $76d0: $33
	xor $6c                                          ; $76d1: $ee $6c
	ld l, h                                          ; $76d3: $6c
	db $fc                                           ; $76d4: $fc
	ld hl, sp-$47                                    ; $76d5: $f8 $b9
	cp b                                             ; $76d7: $b8
	cp d                                             ; $76d8: $ba
	ld h, l                                          ; $76d9: $65
	sbc $e7                                          ; $76da: $de $e7
	sub [hl]                                         ; $76dc: $96
	rst AddAOntoHL                                          ; $76dd: $ef
	xor $ee                                          ; $76de: $ee $ee
	db $ec                                           ; $76e0: $ec
	nop                                              ; $76e1: $00
	ld b, b                                          ; $76e2: $40
	ld bc, $0381                                     ; $76e3: $01 $81 $03
	ld a, c                                          ; $76e6: $79
	ld l, b                                          ; $76e7: $68
	ld [hl], h                                       ; $76e8: $74
	call $0498                                       ; $76e9: $cd $98 $04
	ld b, $03                                        ; $76ec: $06 $03
	ld bc, $e272                                     ; $76ee: $01 $72 $e2
	pop hl                                           ; $76f1: $e1
	ld l, h                                          ; $76f2: $6c

Jump_024_76f3:
jr_024_76f3:
	jp nz, $ec7b                                     ; $76f3: $c2 $7b $ec

	ld a, e                                          ; $76f6: $7b
	ld [$009a], a                                    ; $76f7: $ea $9a $00
	jr c, jr_024_76ac                                ; $76fa: $38 $b0

	dec b                                            ; $76fc: $05

jr_024_76fd:
	db $10                                           ; $76fd: $10
	ld a, c                                          ; $76fe: $79
	ret nz                                           ; $76ff: $c0

Jump_024_7700:
	sub h                                            ; $7700: $94
	ld c, b                                          ; $7701: $48
	nop                                              ; $7702: $00
	ld b, b                                          ; $7703: $40
	ld hl, sp+$0e                                    ; $7704: $f8 $0e
	inc e                                            ; $7706: $1c
	jr jr_024_7741                                   ; $7707: $18 $38

	jr nc, @+$0a                                     ; $7709: $30 $08

	ld [$a76f], sp                                   ; $770b: $08 $6f $a7
	rst SubAFromDE                                          ; $770e: $df

jr_024_770f:
	ldh a, [$9e]                                     ; $770f: $f0 $9e
	ld sp, $6f74                                     ; $7711: $31 $74 $6f
	sbc [hl]                                         ; $7714: $9e
	rlca                                             ; $7715: $07
	db $db                                           ; $7716: $db
	rst $38                                          ; $7717: $ff
	rst SubAFromDE                                          ; $7718: $df
	cp $f9                                           ; $7719: $fe $f9
	sbc h                                            ; $771b: $9c
	call nz, $88c0                                   ; $771c: $c4 $c0 $88
	ld a, c                                          ; $771f: $79
	or l                                             ; $7720: $b5
	ld a, a                                          ; $7721: $7f
	adc $7f                                          ; $7722: $ce $7f
	and $79                                          ; $7724: $e6 $79
	adc [hl]                                         ; $7726: $8e
	ld a, c                                          ; $7727: $79
	adc l                                            ; $7728: $8d
	ld l, [hl]                                       ; $7729: $6e
	cp d                                             ; $772a: $ba
	ld [hl], e                                       ; $772b: $73
	ret c                                            ; $772c: $d8

	ld [hl], c                                       ; $772d: $71
	sub b                                            ; $772e: $90
	add a                                            ; $772f: $87
	ld [hl], d                                       ; $7730: $72
	and $e4                                          ; $7731: $e6 $e4
	ret                                              ; $7733: $c9


	ret z                                            ; $7734: $c8

	add d                                            ; $7735: $82
	ret nc                                           ; $7736: $d0

	inc b                                            ; $7737: $04
	adc l                                            ; $7738: $8d
	add hl, de                                       ; $7739: $19
	dec de                                           ; $773a: $1b
	ld [hl], $36                                     ; $773b: $36 $36
	ld a, h                                          ; $773d: $7c
	ld a, h                                          ; $773e: $7c
	ld hl, sp+$00                                    ; $773f: $f8 $00

jr_024_7741:
	add b                                            ; $7741: $80
	ld bc, $0c02                                     ; $7742: $01 $02 $0c
	dec d                                            ; $7745: $15
	ld a, [hl+]                                      ; $7746: $2a
	push de                                          ; $7747: $d5
	ld [hl], h                                       ; $7748: $74
	or h                                             ; $7749: $b4
	add b                                            ; $774a: $80
	ld c, $18                                        ; $774b: $0e $18
	ld sp, $5be2                                     ; $774d: $31 $e2 $5b
	or [hl]                                          ; $7750: $b6
	ld l, l                                          ; $7751: $6d
	db $dd                                           ; $7752: $dd
	cp e                                             ; $7753: $bb
	ld l, c                                          ; $7754: $69
	jp nc, $648a                                     ; $7755: $d2 $8a $64

	ret                                              ; $7758: $c9


	sub d                                            ; $7759: $92
	ld [hl+], a                                      ; $775a: $22
	ld b, h                                          ; $775b: $44
	add h                                            ; $775c: $84
	add hl, bc                                       ; $775d: $09
	ld de, $cd40                                     ; $775e: $11 $40 $cd
	adc l                                            ; $7761: $8d
	adc l                                            ; $7762: $8d
	dec l                                            ; $7763: $2d
	add hl, hl                                       ; $7764: $29

jr_024_7765:
	ld b, b                                          ; $7765: $40
	jp c, $38bc                                      ; $7766: $da $bc $38

	ld a, b                                          ; $7769: $78
	sub d                                            ; $776a: $92
	ld a, b                                          ; $776b: $78
	ret c                                            ; $776c: $d8

	ret c                                            ; $776d: $d8

	cp b                                             ; $776e: $b8
	jr nc, jr_024_76f3                               ; $776f: $30 $82

	add e                                            ; $7771: $83
	inc hl                                           ; $7772: $23
	inc hl                                           ; $7773: $23
	inc sp                                           ; $7774: $33
	inc de                                           ; $7775: $13
	rlca                                             ; $7776: $07
	rlca                                             ; $7777: $07
	db $dd                                           ; $7778: $dd
	ld de, $019e                                     ; $7779: $11 $9e $01
	sbc $21                                          ; $777c: $de $21
	adc e                                            ; $777e: $8b
	db $e3                                           ; $777f: $e3
	ld h, b                                          ; $7780: $60
	ldh [$c0], a                                     ; $7781: $e0 $c0
	jr nz, jr_024_7765                               ; $7783: $20 $e0

	ldh [$60], a                                     ; $7785: $e0 $60
	ret nz                                           ; $7787: $c0

	ret nz                                           ; $7788: $c0

	ld b, b                                          ; $7789: $40
	ld h, b                                          ; $778a: $60
	ldh [rAUD4LEN], a                                ; $778b: $e0 $20
	jr nz, jr_024_770f                               ; $778d: $20 $80

	ld a, a                                          ; $778f: $7f
	dec l                                            ; $7790: $2d
	ld h, e                                          ; $7791: $63
	ld c, $fd                                        ; $7792: $0e $fd
	rst SubAFromDE                                          ; $7794: $df
	ccf                                              ; $7795: $3f
	sbc [hl]                                         ; $7796: $9e
	ld [hl-], a                                      ; $7797: $32
	db $fc                                           ; $7798: $fc
	add b                                            ; $7799: $80
	inc b                                            ; $779a: $04
	add hl, bc                                       ; $779b: $09
	adc d                                            ; $779c: $8a
	ld de, $2723                                     ; $779d: $11 $23 $27
	ld c, [hl]                                       ; $77a0: $4e
	sbc a                                            ; $77a1: $9f
	inc b                                            ; $77a2: $04
	inc c                                            ; $77a3: $0c
	add hl, bc                                       ; $77a4: $09
	rra                                              ; $77a5: $1f
	ld a, $3d                                        ; $77a6: $3e $3d
	ld a, e                                          ; $77a8: $7b
	rst FarCall                                          ; $77a9: $f7
	and [hl]                                         ; $77aa: $a6
	ld h, l                                          ; $77ab: $65
	rst GetHLinHL                                          ; $77ac: $cf
	pop de                                           ; $77ad: $d1
	and c                                            ; $77ae: $a1
	ld b, c                                          ; $77af: $41
	add c                                            ; $77b0: $81
	nop                                              ; $77b1: $00
	ld a, l                                          ; $77b2: $7d
	rst $38                                          ; $77b3: $ff
	ei                                               ; $77b4: $fb
	ld [hl], c                                       ; $77b5: $71
	pop hl                                           ; $77b6: $e1
	pop bc                                           ; $77b7: $c1
	add b                                            ; $77b8: $80
	add [hl]                                         ; $77b9: $86
	nop                                              ; $77ba: $00
	reti                                             ; $77bb: $d9


	rst FarCall                                          ; $77bc: $f7
	dec a                                            ; $77bd: $3d
	ccf                                              ; $77be: $3f
	rst AddAOntoHL                                          ; $77bf: $ef
	ld b, d                                          ; $77c0: $42
	and a                                            ; $77c1: $a7
	ld a, [hl]                                       ; $77c2: $7e
	rst SubAFromBC                                          ; $77c3: $e7
	ld sp, hl                                        ; $77c4: $f9
	sbc a                                            ; $77c5: $9f
	ccf                                              ; $77c6: $3f
	ei                                               ; $77c7: $fb
	db $d3                                           ; $77c8: $d3
	ldh [rSB], a                                     ; $77c9: $e0 $01
	and h                                            ; $77cb: $a4
	and h                                            ; $77cc: $a4
	inc h                                            ; $77cd: $24
	and h                                            ; $77ce: $a4
	add h                                            ; $77cf: $84
	add h                                            ; $77d0: $84
	add b                                            ; $77d1: $80
	add c                                            ; $77d2: $81
	ld [hl], l                                       ; $77d3: $75
	sub b                                            ; $77d4: $90
	rst SubAFromDE                                          ; $77d5: $df
	add b                                            ; $77d6: $80
	rst SubAFromDE                                          ; $77d7: $df
	add h                                            ; $77d8: $84
	sbc $5d                                          ; $77d9: $de $5d
	sbc d                                            ; $77db: $9a
	rst $38                                          ; $77dc: $ff
	ld a, [$fefa]                                    ; $77dd: $fa $fa $fe
	xor h                                            ; $77e0: $ac
	db $dd                                           ; $77e1: $dd
	inc sp                                           ; $77e2: $33
	sbc $37                                          ; $77e3: $de $37
	sbc c                                            ; $77e5: $99
	ld [hl], a                                       ; $77e6: $77
	jr z, jr_024_781d                                ; $77e7: $28 $34

	jr nc, jr_024_7813                               ; $77e9: $30 $28

	jr nz, @+$7d                                     ; $77eb: $20 $7b

	jr nz, jr_024_7864                               ; $77ed: $20 $75

	ret c                                            ; $77ef: $d8

	ld a, l                                          ; $77f0: $7d
	sub c                                            ; $77f1: $91
	ld [hl], l                                       ; $77f2: $75
	sub b                                            ; $77f3: $90
	ld [hl], d                                       ; $77f4: $72
	rst SubAFromHL                                          ; $77f5: $d7
	ld a, e                                          ; $77f6: $7b
	dec de                                           ; $77f7: $1b
	ld l, b                                          ; $77f8: $68
	dec a                                            ; $77f9: $3d
	ld a, [hl]                                       ; $77fa: $7e
	rst SubAFromHL                                          ; $77fb: $d7
	ld a, l                                          ; $77fc: $7d
	ld l, [hl]                                       ; $77fd: $6e
	sbc h                                            ; $77fe: $9c
	db $10                                           ; $77ff: $10
	ld c, b                                          ; $7800: $48
	inc h                                            ; $7801: $24
	ld [hl], l                                       ; $7802: $75
	ld d, c                                          ; $7803: $51
	ld a, a                                          ; $7804: $7f
	ld l, [hl]                                       ; $7805: $6e
	adc c                                            ; $7806: $89
	jr nc, jr_024_7821                               ; $7807: $30 $18

	nop                                              ; $7809: $00
	ld de, $1242                                     ; $780a: $11 $42 $12
	inc b                                            ; $780d: $04
	add c                                            ; $780e: $81
	jr nz, jr_024_7819                               ; $780f: $20 $08

	ld [hl], b                                       ; $7811: $70
	ld h, b                                          ; $7812: $60

jr_024_7813:
	ld hl, $f361                                     ; $7813: $21 $61 $f3
	ld a, [hl]                                       ; $7816: $7e
	ld c, $06                                        ; $7817: $0e $06

jr_024_7819:
	add b                                            ; $7819: $80
	add c                                            ; $781a: $81
	add c                                            ; $781b: $81
	inc de                                           ; $781c: $13

jr_024_781d:
	ld a, d                                          ; $781d: $7a
	pop af                                           ; $781e: $f1
	rst SubAFromDE                                          ; $781f: $df
	rlca                                             ; $7820: $07

jr_024_7821:
	rst SubAFromDE                                          ; $7821: $df
	ld c, $7d                                        ; $7822: $0e $7d
	ld [hl], d                                       ; $7824: $72
	sbc h                                            ; $7825: $9c
	inc e                                            ; $7826: $1c
	jr c, jr_024_7861                                ; $7827: $38 $38

	ld a, $00                                        ; $7829: $3e $00
	rst SubAFromDE                                          ; $782b: $df
	ld [hl+], a                                      ; $782c: $22
	sbc l                                            ; $782d: $9d
	ld h, [hl]                                       ; $782e: $66
	ld h, d                                          ; $782f: $62
	reti                                             ; $7830: $d9


	ld [hl+], a                                      ; $7831: $22
	sbc l                                            ; $7832: $9d
	ld d, l                                          ; $7833: $55
	ld d, d                                          ; $7834: $52
	jp c, $9b22                                      ; $7835: $da $22 $9b

	ld h, $55                                        ; $7838: $26 $55
	ld d, b                                          ; $783a: $50
	nop                                              ; $783b: $00
	ld l, a                                          ; $783c: $6f
	ld [$259d], a                                    ; $783d: $ea $9d $25
	ld d, l                                          ; $7840: $55
	cp $9e                                           ; $7841: $fe $9e
	ld b, $dd                                        ; $7843: $06 $dd
	ld [hl+], a                                      ; $7845: $22
	sbc l                                            ; $7846: $9d
	ld h, l                                          ; $7847: $65

jr_024_7848:
	ld d, b                                          ; $7848: $50
	db $fd                                           ; $7849: $fd
	sbc e                                            ; $784a: $9b
	ld b, $62                                        ; $784b: $06 $62
	ld h, [hl]                                       ; $784d: $66
	ld [hl+], a                                      ; $784e: $22
	ld a, e                                          ; $784f: $7b
	db $e3                                           ; $7850: $e3
	db $fd                                           ; $7851: $fd
	sbc l                                            ; $7852: $9d
	ld d, l                                          ; $7853: $55
	ld h, [hl]                                       ; $7854: $66
	ld [hl], a                                       ; $7855: $77
	reti                                             ; $7856: $d9


	rst SubAFromDE                                          ; $7857: $df
	ld de, $109a                                     ; $7858: $11 $9a $10
	nop                                              ; $785b: $00
	ld d, l                                          ; $785c: $55
	ld d, l                                          ; $785d: $55
	ld h, $7b                                        ; $785e: $26 $7b
	reti                                             ; $7860: $d9


jr_024_7861:
	ld a, e                                          ; $7861: $7b
	or $9c                                           ; $7862: $f6 $9c

jr_024_7864:
	ld b, $55                                        ; $7864: $06 $55
	ld d, d                                          ; $7866: $52
	ld hl, $9c07                                     ; $7867: $21 $07 $9c
	cp $00                                           ; $786a: $fe $00
	db $fc                                           ; $786c: $fc
	ld a, e                                          ; $786d: $7b
	cp $9e                                           ; $786e: $fe $9e
	ld hl, sp+$7b                                    ; $7870: $f8 $7b
	cp $80                                           ; $7872: $fe $80
	ldh a, [rP1]                                     ; $7874: $f0 $00
	pop af                                           ; $7876: $f1
	nop                                              ; $7877: $00
	ldh a, [rSB]                                     ; $7878: $f0 $01
	nop                                              ; $787a: $00
	ccf                                              ; $787b: $3f
	ld b, b                                          ; $787c: $40
	ccf                                              ; $787d: $3f
	nop                                              ; $787e: $00
	ld a, a                                          ; $787f: $7f

jr_024_7880:
	nop                                              ; $7880: $00
	ld a, a                                          ; $7881: $7f
	add b                                            ; $7882: $80
	ld a, a                                          ; $7883: $7f
	nop                                              ; $7884: $00
	rst $38                                          ; $7885: $ff
	nop                                              ; $7886: $00
	rst $38                                          ; $7887: $ff
	ldh [$1f], a                                     ; $7888: $e0 $1f
	rlca                                             ; $788a: $07
	ld hl, sp+$0e                                    ; $788b: $f8 $0e
	pop af                                           ; $788d: $f1
	ld c, $f1                                        ; $788e: $0e $f1
	dec e                                            ; $7890: $1d
	db $e3                                           ; $7891: $e3
	ld e, $80                                        ; $7892: $1e $80
	db $e3                                           ; $7894: $e3
	dec sp                                           ; $7895: $3b
	rst JumpTable                                          ; $7896: $c7
	ld a, $c7                                        ; $7897: $3e $c7
	ld [hl], a                                       ; $7899: $77
	adc a                                            ; $789a: $8f
	and l                                            ; $789b: $a5
	ld sp, hl                                        ; $789c: $f9
	ld d, d                                          ; $789d: $52
	ei                                               ; $789e: $fb
	xor l                                            ; $789f: $ad
	or $5b                                           ; $78a0: $f6 $5b
	db $ec                                           ; $78a2: $ec
	or [hl]                                          ; $78a3: $b6
	ld sp, hl                                        ; $78a4: $f9
	ld l, l                                          ; $78a5: $6d
	ldh a, [c]                                       ; $78a6: $f2
	db $db                                           ; $78a7: $db
	db $e4                                           ; $78a8: $e4
	or [hl]                                          ; $78a9: $b6
	ret z                                            ; $78aa: $c8

	ld c, d                                          ; $78ab: $4a
	add h                                            ; $78ac: $84
	and [hl]                                         ; $78ad: $a6
	jr jr_024_7848                                   ; $78ae: $18 $98

	ld h, b                                          ; $78b0: $60
	ld [hl], c                                       ; $78b1: $71
	add b                                            ; $78b2: $80
	add b                                            ; $78b3: $80
	jp $8000                                         ; $78b4: $c3 $00 $80


	nop                                              ; $78b7: $00
	jr jr_024_78ba                                   ; $78b8: $18 $00

jr_024_78ba:
	jr c, jr_024_78bc                                ; $78ba: $38 $00

jr_024_78bc:
	inc d                                            ; $78bc: $14
	inc hl                                           ; $78bd: $23
	ld d, l                                          ; $78be: $55
	ld [hl+], a                                      ; $78bf: $22
	xor c                                            ; $78c0: $a9
	ld b, [hl]                                       ; $78c1: $46
	ld e, e                                          ; $78c2: $5b
	add h                                            ; $78c3: $84
	db $10                                           ; $78c4: $10
	dec c                                            ; $78c5: $0d
	inc h                                            ; $78c6: $24
	add hl, de                                       ; $78c7: $19
	ld l, d                                          ; $78c8: $6a
	ld de, $22d1                                     ; $78c9: $11 $d1 $22
	sbc d                                            ; $78cc: $9a
	ld [hl], b                                       ; $78cd: $70

jr_024_78ce:
	cp d                                             ; $78ce: $ba
	ld d, b                                          ; $78cf: $50
	ld a, [hl-]                                      ; $78d0: $3a
	ret nc                                           ; $78d1: $d0

	ld [hl], d                                       ; $78d2: $72
	add b                                            ; $78d3: $80
	sub b                                            ; $78d4: $90
	ld b, d                                          ; $78d5: $42
	or b                                             ; $78d6: $b0
	ldh a, [c]                                       ; $78d7: $f2
	jr nz, jr_024_78ce                               ; $78d8: $20 $f4

	jr nz, jr_024_7880                               ; $78da: $20 $a4

	ld h, b                                          ; $78dc: $60
	ld b, a                                          ; $78dd: $47
	ld hl, $2345                                     ; $78de: $21 $45 $23
	ld l, [hl]                                       ; $78e1: $6e
	inc bc                                           ; $78e2: $03
	ld c, $43                                        ; $78e3: $0e $43
	ld a, [bc]                                       ; $78e5: $0a
	ld b, a                                          ; $78e6: $47
	inc e                                            ; $78e7: $1c
	ld b, a                                          ; $78e8: $47
	sbc h                                            ; $78e9: $9c
	ld b, a                                          ; $78ea: $47
	call nc, $d00f                                   ; $78eb: $d4 $0f $d0
	ldh [rSVBK], a                                   ; $78ee: $e0 $70
	ldh [$60], a                                     ; $78f0: $e0 $60
	ldh a, [$8a]                                     ; $78f2: $f0 $8a
	ld [hl], b                                       ; $78f4: $70
	ldh a, [$78]                                     ; $78f5: $f0 $78
	ldh a, [$a8]                                     ; $78f7: $f0 $a8
	ld hl, sp-$44                                    ; $78f9: $f8 $bc
	add sp, -$54                                     ; $78fb: $e8 $ac
	db $e4                                           ; $78fd: $e4
	ld bc, $0201                                     ; $78fe: $01 $01 $02
	inc bc                                           ; $7901: $03
	inc b                                            ; $7902: $04
	rlca                                             ; $7903: $07
	dec bc                                           ; $7904: $0b
	rrca                                             ; $7905: $0f
	rra                                              ; $7906: $1f
	inc e                                            ; $7907: $1c
	ld a, $fc                                        ; $7908: $3e $fc
	adc h                                            ; $790a: $8c
	inc a                                            ; $790b: $3c
	db $ec                                           ; $790c: $ec
	ld a, b                                          ; $790d: $78
	ret nz                                           ; $790e: $c0

	ldh [$80], a                                     ; $790f: $e0 $80
	ret nz                                           ; $7911: $c0

	nop                                              ; $7912: $00
	add l                                            ; $7913: $85
	inc bc                                           ; $7914: $03
	inc bc                                           ; $7915: $03
	ld bc, $0001                                     ; $7916: $01 $01 $00
	ld [hl], $18                                     ; $7919: $36 $18
	ld b, b                                          ; $791b: $40
	nop                                              ; $791c: $00
	ld h, b                                          ; $791d: $60
	ld a, e                                          ; $791e: $7b
	cp $9a                                           ; $791f: $fe $9a
	ld [hl], b                                       ; $7921: $70
	add b                                            ; $7922: $80
	or b                                             ; $7923: $b0
	ret nz                                           ; $7924: $c0

	ld [hl], b                                       ; $7925: $70
	ld a, e                                          ; $7926: $7b
	ld [$7fff], a                                    ; $7927: $ea $ff $7f
	ld [$058e], a                                    ; $792a: $ea $8e $05
	inc bc                                           ; $792d: $03
	rra                                              ; $792e: $1f
	inc bc                                           ; $792f: $03
	dec sp                                           ; $7930: $3b
	rlca                                             ; $7931: $07
	ld a, a                                          ; $7932: $7f
	rlca                                             ; $7933: $07
	ld [hl], a                                       ; $7934: $77
	rrca                                             ; $7935: $0f
	rst $38                                          ; $7936: $ff
	rrca                                             ; $7937: $0f
	rst AddAOntoHL                                          ; $7938: $ef
	rra                                              ; $7939: $1f
	add c                                            ; $793a: $81
	add h                                            ; $793b: $84
	adc c                                            ; $793c: $89
	ld a, e                                          ; $793d: $7b
	cp $80                                           ; $793e: $fe $80
	add hl, bc                                       ; $7940: $09
	add h                                            ; $7941: $84
	dec bc                                           ; $7942: $0b
	add h                                            ; $7943: $84
	adc e                                            ; $7944: $8b
	inc b                                            ; $7945: $04
	sbc d                                            ; $7946: $9a
	dec b                                            ; $7947: $05
	sbc e                                            ; $7948: $9b
	dec b                                            ; $7949: $05
	db $f4                                           ; $794a: $f4
	ld l, a                                          ; $794b: $6f
	db $fc                                           ; $794c: $fc
	ld l, a                                          ; $794d: $6f
	ld hl, sp+$6f                                    ; $794e: $f8 $6f
	ld l, b                                          ; $7950: $68
	rst $38                                          ; $7951: $ff
	or b                                             ; $7952: $b0
	rst $38                                          ; $7953: $ff
	or c                                             ; $7954: $b1
	cp $b0                                           ; $7955: $fe $b0
	cp $a2                                           ; $7957: $fe $a2
	db $fc                                           ; $7959: $fc
	nop                                              ; $795a: $00
	ret nz                                           ; $795b: $c0

	ld b, b                                          ; $795c: $40
	add b                                            ; $795d: $80
	ld b, b                                          ; $795e: $40
	sub h                                            ; $795f: $94
	add b                                            ; $7960: $80
	db $10                                           ; $7961: $10
	ldh [rSC], a                                     ; $7962: $e0 $02
	db $fc                                           ; $7964: $fc
	ret nz                                           ; $7965: $c0

	ccf                                              ; $7966: $3f
	nop                                              ; $7967: $00
	rrca                                             ; $7968: $0f
	nop                                              ; $7969: $00
	ld bc, $7ff7                                     ; $796a: $01 $f7 $7f
	ld [$0897], a                                    ; $796d: $ea $97 $08
	ldh a, [rSB]                                     ; $7970: $f0 $01
	cp $11                                           ; $7972: $fe $11
	ld c, $04                                        ; $7974: $0e $04
	inc bc                                           ; $7976: $03
	push af                                          ; $7977: $f5
	sbc l                                            ; $7978: $9d
	jr nz, jr_024_7997                               ; $7979: $20 $1c

	ld a, d                                          ; $797b: $7a
	pop hl                                           ; $797c: $e1
	ld a, a                                          ; $797d: $7f
	daa                                              ; $797e: $27
	sub b                                            ; $797f: $90

jr_024_7980:
	jr jr_024_798a                                   ; $7980: $18 $08

	stop                                             ; $7982: $10 $00
	ld sp, $2110                                     ; $7984: $31 $10 $21
	nop                                              ; $7987: $00
	ld h, e                                          ; $7988: $63
	rrca                                             ; $7989: $0f

jr_024_798a:
	ld [hl], b                                       ; $798a: $70
	rrca                                             ; $798b: $0f
	ld [hl], b                                       ; $798c: $70
	rra                                              ; $798d: $1f
	ldh [rPCM34], a                                  ; $798e: $e0 $77
	cp $80                                           ; $7990: $fe $80
	ccf                                              ; $7992: $3f
	ret nz                                           ; $7993: $c0

	ccf                                              ; $7994: $3f
	ret nz                                           ; $7995: $c0

	ld a, a                                          ; $7996: $7f

jr_024_7997:
	add b                                            ; $7997: $80
	ldh [rSB], a                                     ; $7998: $e0 $01
	pop hl                                           ; $799a: $e1
	inc bc                                           ; $799b: $03
	jp nz, $c503                                     ; $799c: $c2 $03 $c5

	inc bc                                           ; $799f: $03
	add d                                            ; $79a0: $82
	rlca                                             ; $79a1: $07
	adc l                                            ; $79a2: $8d
	rlca                                             ; $79a3: $07

jr_024_79a4:
	ld a, [bc]                                       ; $79a4: $0a
	rrca                                             ; $79a5: $0f
	dec b                                            ; $79a6: $05
	rrca                                             ; $79a7: $0f
	ld a, h                                          ; $79a8: $7c
	add e                                            ; $79a9: $83
	rrca                                             ; $79aa: $0f
	ldh a, [$c1]                                     ; $79ab: $f0 $c1
	cp $78                                           ; $79ad: $fe $78
	rst $38                                          ; $79af: $ff
	xor a                                            ; $79b0: $af
	sbc e                                            ; $79b1: $9b
	rst $38                                          ; $79b2: $ff
	ld d, l                                          ; $79b3: $55
	rst $38                                          ; $79b4: $ff
	xor d                                            ; $79b5: $aa
	ld a, e                                          ; $79b6: $7b
	db $fc                                           ; $79b7: $fc
	add b                                            ; $79b8: $80
	ld a, a                                          ; $79b9: $7f
	adc a                                            ; $79ba: $8f
	adc [hl]                                         ; $79bb: $8e
	ld a, a                                          ; $79bc: $7f
	rst $38                                          ; $79bd: $ff
	ld c, $3d                                        ; $79be: $0e $3d
	add $07                                          ; $79c0: $c6 $07
	db $fc                                           ; $79c2: $fc
	db $eb                                           ; $79c3: $eb
	db $fc                                           ; $79c4: $fc
	ld a, [$fafd]                                    ; $79c5: $fa $fd $fa
	db $fd                                           ; $79c8: $fd
	ld l, h                                          ; $79c9: $6c
	sub b                                            ; $79ca: $90
	db $db                                           ; $79cb: $db
	jr nz, jr_024_79a4                               ; $79cc: $20 $d6

	ld hl, $43bc                                     ; $79ce: $21 $bc $43
	ld sp, $62ce                                     ; $79d1: $31 $ce $62
	sbc h                                            ; $79d4: $9c
	ld b, c                                          ; $79d5: $41
	cp b                                             ; $79d6: $b8
	adc b                                            ; $79d7: $88
	adc e                                            ; $79d8: $8b
	ld [hl], a                                       ; $79d9: $77
	pop de                                           ; $79da: $d1
	jr nz, jr_024_7980                               ; $79db: $20 $a3

	ld b, b                                          ; $79dd: $40
	ld b, [hl]                                       ; $79de: $46
	add c                                            ; $79df: $81
	adc l                                            ; $79e0: $8d
	ld [bc], a                                       ; $79e1: $02
	ld a, [hl-]                                      ; $79e2: $3a
	inc b                                            ; $79e3: $04
	ld h, l                                          ; $79e4: $65
	jr jr_024_79e9                                   ; $79e5: $18 $02

	pop af                                           ; $79e7: $f1
	ld a, a                                          ; $79e8: $7f

jr_024_79e9:
	rst $38                                          ; $79e9: $ff
	and l                                            ; $79ea: $a5
	ld b, d                                          ; $79eb: $42
	ld c, e                                          ; $79ec: $4b
	ld a, e                                          ; $79ed: $7b
	ld b, [hl]                                       ; $79ee: $46
	add b                                            ; $79ef: $80
	rla                                              ; $79f0: $17
	add hl, bc                                       ; $79f1: $09
	cpl                                              ; $79f2: $2f
	inc de                                           ; $79f3: $13
	sbc [hl]                                         ; $79f4: $9e
	ld h, a                                          ; $79f5: $67
	dec a                                            ; $79f6: $3d
	adc $ff                                          ; $79f7: $ce $ff
	ld hl, sp-$1c                                    ; $79f9: $f8 $e4
	ld b, b                                          ; $79fb: $40
	ld l, h                                          ; $79fc: $6c
	ret nz                                           ; $79fd: $c0

	adc c                                            ; $79fe: $89
	ret nz                                           ; $79ff: $c0

	reti                                             ; $7a00: $d9


	add b                                            ; $7a01: $80
	or e                                             ; $7a02: $b3
	nop                                              ; $7a03: $00
	rst SubAFromBC                                          ; $7a04: $e7
	nop                                              ; $7a05: $00
	adc $01                                          ; $7a06: $ce $01
	sbc h                                            ; $7a08: $9c
	inc bc                                           ; $7a09: $03
	add hl, sp                                       ; $7a0a: $39
	adc a                                            ; $7a0b: $8f
	add hl, hl                                       ; $7a0c: $29
	sbc a                                            ; $7a0d: $9f
	or d                                             ; $7a0e: $b2
	adc b                                            ; $7a0f: $88
	rra                                              ; $7a10: $1f
	ld d, h                                          ; $7a11: $54
	ccf                                              ; $7a12: $3f
	cpl                                              ; $7a13: $2f
	ld a, a                                          ; $7a14: $7f
	ld a, c                                          ; $7a15: $79
	rst $38                                          ; $7a16: $ff
	jp nz, $ccfe                                     ; $7a17: $c2 $fe $cc

	cp $44                                           ; $7a1a: $fe $44
	and $47                                          ; $7a1c: $e6 $47
	jp nz, $c187                                     ; $7a1e: $c2 $87 $c1

	add [hl]                                         ; $7a21: $86
	add c                                            ; $7a22: $81
	rlca                                             ; $7a23: $07
	add b                                            ; $7a24: $80
	rlca                                             ; $7a25: $07
	nop                                              ; $7a26: $00
	ld [hl], a                                       ; $7a27: $77
	cp $fd                                           ; $7a28: $fe $fd
	ld a, [hl]                                       ; $7a2a: $7e
	halt                                             ; $7a2b: $76
	adc [hl]                                         ; $7a2c: $8e
	ret nz                                           ; $7a2d: $c0

	add b                                            ; $7a2e: $80
	ldh [$c0], a                                     ; $7a2f: $e0 $c0
	ldh a, [$60]                                     ; $7a31: $f0 $60
	ldh a, [$78]                                     ; $7a33: $f0 $78
	ld hl, sp+$3c                                    ; $7a35: $f8 $3c
	add hl, de                                       ; $7a37: $19
	dec e                                            ; $7a38: $1d
	ld e, $0f                                        ; $7a39: $1e $0f
	ld [$0004], sp                                   ; $7a3b: $08 $04 $00
	ld a, d                                          ; $7a3e: $7a
	ld h, [hl]                                       ; $7a3f: $66
	ld a, a                                          ; $7a40: $7f
	ccf                                              ; $7a41: $3f
	db $fd                                           ; $7a42: $fd
	sbc [hl]                                         ; $7a43: $9e
	add c                                            ; $7a44: $81
	ld a, e                                          ; $7a45: $7b
	dec c                                            ; $7a46: $0d
	ld a, a                                          ; $7a47: $7f
	rra                                              ; $7a48: $1f
	ld a, a                                          ; $7a49: $7f
	cp $80                                           ; $7a4a: $fe $80
	rlca                                             ; $7a4c: $07
	ld bc, $020f                                     ; $7a4d: $01 $0f $02

jr_024_7a50:
	rla                                              ; $7a50: $17
	inc c                                            ; $7a51: $0c
	ld e, a                                          ; $7a52: $5f
	jr c, jr_024_7a50                                ; $7a53: $38 $fb

	rra                                              ; $7a55: $1f
	rst FarCall                                          ; $7a56: $f7
	ccf                                              ; $7a57: $3f
	rst FarCall                                          ; $7a58: $f7
	ld a, a                                          ; $7a59: $7f
	or $ff                                           ; $7a5a: $f6 $ff
	sbc $ff                                          ; $7a5c: $de $ff
	ld l, e                                          ; $7a5e: $6b
	cp $ea                                           ; $7a5f: $fe $ea
	ld a, [hl]                                       ; $7a61: $7e
	ld [$1b7e], a                                    ; $7a62: $ea $7e $1b
	dec b                                            ; $7a65: $05
	add hl, de                                       ; $7a66: $19
	rlca                                             ; $7a67: $07
	ld [de], a                                       ; $7a68: $12
	rrca                                             ; $7a69: $0f
	ld [hl-], a                                      ; $7a6a: $32
	ld a, e                                          ; $7a6b: $7b
	cp $98                                           ; $7a6c: $fe $98
	inc [hl]                                         ; $7a6e: $34
	rrca                                             ; $7a6f: $0f
	ld [hl], h                                       ; $7a70: $74
	rrca                                             ; $7a71: $0f
	ld l, b                                          ; $7a72: $68
	rra                                              ; $7a73: $1f
	inc h                                            ; $7a74: $24
	ld a, c                                          ; $7a75: $79
	push hl                                          ; $7a76: $e5
	ld a, [hl]                                       ; $7a77: $7e
	add sp, $7d                                      ; $7a78: $e8 $7d
	rst SubAFromBC                                          ; $7a7a: $e7
	ld a, [hl]                                       ; $7a7b: $7e
	adc $9a                                          ; $7a7c: $ce $9a

jr_024_7a7e:
	nop                                              ; $7a7e: $00
	ldh [rAUD4LEN], a                                ; $7a7f: $e0 $20
	ret nz                                           ; $7a81: $c0

	nop                                              ; $7a82: $00
	halt                                             ; $7a83: $76
	adc l                                            ; $7a84: $8d
	db $f4                                           ; $7a85: $f4
	ld a, l                                          ; $7a86: $7d
	jp nc, $089d                                     ; $7a87: $d2 $9d $08

	rlca                                             ; $7a8a: $07
	ld e, d                                          ; $7a8b: $5a
	cp e                                             ; $7a8c: $bb
	ld a, [hl]                                       ; $7a8d: $7e
	ret nc                                           ; $7a8e: $d0

	sbc h                                            ; $7a8f: $9c
	ret nz                                           ; $7a90: $c0

	inc b                                            ; $7a91: $04
	ld hl, sp+$79                                    ; $7a92: $f8 $79
	add $9e                                          ; $7a94: $c6 $9e
	rra                                              ; $7a96: $1f
	ld h, [hl]                                       ; $7a97: $66
	cp d                                             ; $7a98: $ba
	sub a                                            ; $7a99: $97
	and b                                            ; $7a9a: $a0
	ld b, e                                          ; $7a9b: $43
	nop                                              ; $7a9c: $00
	rst JumpTable                                          ; $7a9d: $c7
	ld b, b                                          ; $7a9e: $40
	add a                                            ; $7a9f: $87
	ld bc, $7b8e                                     ; $7aa0: $01 $8e $7b
	cp $98                                           ; $7aa3: $fe $98
	ld c, $03                                        ; $7aa5: $0e $03
	inc e                                            ; $7aa7: $1c
	inc bc                                           ; $7aa8: $03
	inc e                                            ; $7aa9: $1c
	ld a, a                                          ; $7aaa: $7f
	add b                                            ; $7aab: $80
	ld a, c                                          ; $7aac: $79
	xor c                                            ; $7aad: $a9
	ld e, e                                          ; $7aae: $5b
	cp $7e                                           ; $7aaf: $fe $7e
	call z, $3e7e                                    ; $7ab1: $cc $7e $3e
	ld l, [hl]                                       ; $7ab4: $6e
	ld [hl], b                                       ; $7ab5: $70
	ld a, a                                          ; $7ab6: $7f
	di                                               ; $7ab7: $f3
	ld a, l                                          ; $7ab8: $7d
	adc h                                            ; $7ab9: $8c
	sbc l                                            ; $7aba: $9d
	ldh a, [rIF]                                     ; $7abb: $f0 $0f
	ld [hl], d                                       ; $7abd: $72
	call z, Call_024_7f9d                            ; $7abe: $cc $9d $7f
	rrca                                             ; $7ac1: $0f
	ld a, e                                          ; $7ac2: $7b
	ld [$957f], a                                    ; $7ac3: $ea $7f $95
	ld [hl], a                                       ; $7ac6: $77
	ld [$f084], a                                    ; $7ac7: $ea $84 $f0
	rst $38                                          ; $7aca: $ff
	pop af                                           ; $7acb: $f1
	rst $38                                          ; $7acc: $ff
	ldh a, [c]                                       ; $7acd: $f2
	rst $38                                          ; $7ace: $ff
	di                                               ; $7acf: $f3
	cp $f7                                           ; $7ad0: $fe $f7
	db $fc                                           ; $7ad2: $fc
	ld [hl], a                                       ; $7ad3: $77
	ld a, h                                          ; $7ad4: $7c
	rrca                                             ; $7ad5: $0f
	inc b                                            ; $7ad6: $04
	ld bc, $ff00                                     ; $7ad7: $01 $00 $ff
	rst $38                                          ; $7ada: $ff
	ld [hl], l                                       ; $7adb: $75
	adc [hl]                                         ; $7adc: $8e
	ei                                               ; $7add: $fb
	ld b, $fb                                        ; $7ade: $06 $fb
	ld b, $fc                                        ; $7ae0: $06 $fc
	inc bc                                           ; $7ae2: $03
	db $fd                                           ; $7ae3: $fd
	ld a, e                                          ; $7ae4: $7b
	cp $95                                           ; $7ae5: $fe $95
	pop af                                           ; $7ae7: $f1
	rrca                                             ; $7ae8: $0f
	ld a, b                                          ; $7ae9: $78
	adc a                                            ; $7aea: $8f
	rst $38                                          ; $7aeb: $ff
	ld b, $fd                                        ; $7aec: $06 $fd
	inc bc                                           ; $7aee: $03
	cp $01                                           ; $7aef: $fe $01
	ld h, a                                          ; $7af1: $67
	or b                                             ; $7af2: $b0
	ld a, l                                          ; $7af3: $7d
	jr nc, jr_024_7a7e                               ; $7af4: $30 $88

	pop hl                                           ; $7af6: $e1
	nop                                              ; $7af7: $00
	cp a                                             ; $7af8: $bf
	ret nz                                           ; $7af9: $c0

	ld a, [hl]                                       ; $7afa: $7e
	rst $38                                          ; $7afb: $ff
	ccf                                              ; $7afc: $3f
	ld hl, sp+$3e                                    ; $7afd: $f8 $3e
	ldh a, [$3c]                                     ; $7aff: $f0 $3c
	ldh [$3d], a                                     ; $7b01: $e0 $3d
	ldh [$79], a                                     ; $7b03: $e0 $79
	rlca                                             ; $7b05: $07
	rst FarCall                                          ; $7b06: $f7
	rrca                                             ; $7b07: $0f
	xor $03                                          ; $7b08: $ee $03
	sbc h                                            ; $7b0a: $9c
	rlca                                             ; $7b0b: $07
	jr c, jr_024_7b84                                ; $7b0c: $38 $76

	ld c, c                                          ; $7b0e: $49
	ld a, d                                          ; $7b0f: $7a
	ld c, a                                          ; $7b10: $4f
	sub [hl]                                         ; $7b11: $96
	sbc h                                            ; $7b12: $9c
	db $fc                                           ; $7b13: $fc
	inc e                                            ; $7b14: $1c
	ld hl, sp+$38                                    ; $7b15: $f8 $38
	ld hl, sp+$38                                    ; $7b17: $f8 $38
	ldh a, [$30]                                     ; $7b19: $f0 $30
	ld [hl], a                                       ; $7b1b: $77
	cp $9c                                           ; $7b1c: $fe $9c
	ldh [$38], a                                     ; $7b1e: $e0 $38
	add sp, $6e                                      ; $7b20: $e8 $6e
	jp z, $fe7f                                      ; $7b22: $ca $7f $fe

	halt                                             ; $7b25: $76
	db $ec                                           ; $7b26: $ec
	ld a, a                                          ; $7b27: $7f
	cp $7f                                           ; $7b28: $fe $7f
	and b                                            ; $7b2a: $a0
	adc c                                            ; $7b2b: $89
	db $fc                                           ; $7b2c: $fc
	ld a, $fe                                        ; $7b2d: $3e $fe
	rra                                              ; $7b2f: $1f
	rst $38                                          ; $7b30: $ff
	rra                                              ; $7b31: $1f
	cp $1c                                           ; $7b32: $fe $1c
	ld hl, sp+$10                                    ; $7b34: $f8 $10
	ldh a, [rAUD4LEN]                                ; $7b36: $f0 $20
	ldh [rAUD4LEN], a                                ; $7b38: $e0 $20
	ldh [rLCDC], a                                   ; $7b3a: $e0 $40
	ld bc, $8f00                                     ; $7b3c: $01 $00 $8f
	rlca                                             ; $7b3f: $07
	ld a, [$fbfc]                                    ; $7b40: $fa $fc $fb
	ld a, a                                          ; $7b43: $7f
	db $f4                                           ; $7b44: $f4
	ld a, a                                          ; $7b45: $7f
	ret c                                            ; $7b46: $d8

	ld a, h                                          ; $7b47: $7c
	db $ed                                           ; $7b48: $ed
	sbc [hl]                                         ; $7b49: $9e
	adc a                                            ; $7b4a: $8f
	ld a, c                                          ; $7b4b: $79
	ret                                              ; $7b4c: $c9


	sbc d                                            ; $7b4d: $9a
	rra                                              ; $7b4e: $1f
	nop                                              ; $7b4f: $00
	ld a, [hl]                                       ; $7b50: $7e
	ld bc, $73ff                                     ; $7b51: $01 $ff $73
	cp $80                                           ; $7b54: $fe $80
	ld d, [hl]                                       ; $7b56: $56
	db $fc                                           ; $7b57: $fc
	sbc $f4                                          ; $7b58: $de $f4
	sbc $f4                                          ; $7b5a: $de $f4
	sbc h                                            ; $7b5c: $9c
	db $f4                                           ; $7b5d: $f4
	or l                                             ; $7b5e: $b5
	db $ec                                           ; $7b5f: $ec
	add hl, sp                                       ; $7b60: $39
	db $ec                                           ; $7b61: $ec
	ld a, c                                          ; $7b62: $79
	call z, $d97e                                    ; $7b63: $cc $7e $d9
	ld l, d                                          ; $7b66: $6a
	dec e                                            ; $7b67: $1d
	db $f4                                           ; $7b68: $f4
	dec de                                           ; $7b69: $1b
	ret c                                            ; $7b6a: $d8

	scf                                              ; $7b6b: $37
	db $f4                                           ; $7b6c: $f4
	dec hl                                           ; $7b6d: $2b
	xor c                                            ; $7b6e: $a9
	halt                                             ; $7b6f: $76
	ld d, b                                          ; $7b70: $50
	xor $aa                                          ; $7b71: $ee $aa
	call nc, $99d0                                   ; $7b73: $d4 $d0 $99
	xor h                                            ; $7b76: $ac
	ld b, b                                          ; $7b77: $40
	add b                                            ; $7b78: $80
	nop                                              ; $7b79: $00
	add b                                            ; $7b7a: $80
	add b                                            ; $7b7b: $80
	ldh [$c7], a                                     ; $7b7c: $e0 $c7
	sbc h                                            ; $7b7e: $9c
	ld bc, $3807                                     ; $7b7f: $01 $07 $38
	ld [hl], a                                       ; $7b82: $77
	ld b, l                                          ; $7b83: $45

jr_024_7b84:
	ld a, a                                          ; $7b84: $7f
	cp $9e                                           ; $7b85: $fe $9e
	adc a                                            ; $7b87: $8f
	ld [hl], c                                       ; $7b88: $71
	adc d                                            ; $7b89: $8a
	ld a, a                                          ; $7b8a: $7f
	ccf                                              ; $7b8b: $3f
	ld c, [hl]                                       ; $7b8c: $4e
	jp nz, $107b                                     ; $7b8d: $c2 $7b $10

	ld h, e                                          ; $7b90: $63
	ld b, $6f                                        ; $7b91: $06 $6f
	cp $7f                                           ; $7b93: $fe $7f
	db $fd                                           ; $7b95: $fd
	ld a, l                                          ; $7b96: $7d
	ld l, c                                          ; $7b97: $69
	sbc l                                            ; $7b98: $9d
	ld hl, sp+$07                                    ; $7b99: $f8 $07
	ld e, a                                          ; $7b9b: $5f
	ld [$847f], a                                    ; $7b9c: $ea $7f $84
	ld l, [hl]                                       ; $7b9f: $6e
	and h                                            ; $7ba0: $a4
	ld a, a                                          ; $7ba1: $7f
	ld [$a47e], a                                    ; $7ba2: $ea $7e $a4
	ld [hl], a                                       ; $7ba5: $77
	ld [$009e], a                                    ; $7ba6: $ea $9e $00
	ld [hl], l                                       ; $7ba9: $75
	ld a, [bc]                                       ; $7baa: $0a
	sbc [hl]                                         ; $7bab: $9e
	inc bc                                           ; $7bac: $03
	ld e, a                                          ; $7bad: $5f
	ld [$707a], a                                    ; $7bae: $ea $7a $70
	ld a, e                                          ; $7bb1: $7b
	cp $9e                                           ; $7bb2: $fe $9e
	ld a, a                                          ; $7bb4: $7f
	ld a, e                                          ; $7bb5: $7b
	ld l, $7f                                        ; $7bb6: $2e $7f
	ld [bc], a                                       ; $7bb8: $02
	halt                                             ; $7bb9: $76
	adc [hl]                                         ; $7bba: $8e
	add b                                            ; $7bbb: $80
	ld a, l                                          ; $7bbc: $7d
	ldh [$79], a                                     ; $7bbd: $e0 $79
	ret nz                                           ; $7bbf: $c0

	ld a, e                                          ; $7bc0: $7b
	pop bc                                           ; $7bc1: $c1
	ld a, e                                          ; $7bc2: $7b
	pop bc                                           ; $7bc3: $c1
	ld [hl], e                                       ; $7bc4: $73
	pop bc                                           ; $7bc5: $c1
	ld [hl], a                                       ; $7bc6: $77
	pop bc                                           ; $7bc7: $c1
	halt                                             ; $7bc8: $76
	jp $0316                                         ; $7bc9: $c3 $16 $03


	add l                                            ; $7bcc: $85
	ld a, [$dda2]                                    ; $7bcd: $fa $a2 $dd
	dec d                                            ; $7bd0: $15
	ld [$55aa], a                                    ; $7bd1: $ea $aa $55
	dec d                                            ; $7bd4: $15
	ld [$d52a], a                                    ; $7bd5: $ea $2a $d5
	ld b, l                                          ; $7bd8: $45
	cp d                                             ; $7bd9: $ba
	ld a, [hl+]                                      ; $7bda: $2a
	adc [hl]                                         ; $7bdb: $8e
	push de                                          ; $7bdc: $d5
	ld l, b                                          ; $7bdd: $68
	xor b                                            ; $7bde: $a8
	db $fc                                           ; $7bdf: $fc

Call_024_7be0:
	jr nz, @+$76                                     ; $7be0: $20 $74

	or h                                             ; $7be2: $b4
	db $f4                                           ; $7be3: $f4
	inc [hl]                                         ; $7be4: $34
	ld a, h                                          ; $7be5: $7c
	and h                                            ; $7be6: $a4

Jump_024_7be7:
	or $34                                           ; $7be7: $f6 $34
	ld a, [hl]                                       ; $7be9: $7e

jr_024_7bea:
	xor d                                            ; $7bea: $aa
	cp $2a                                           ; $7beb: $fe $2a
	halt                                             ; $7bed: $76
	inc b                                            ; $7bee: $04
	db $dd                                           ; $7bef: $dd
	ld bc, $039e                                     ; $7bf0: $01 $9e $03
	call c, $9c02                                    ; $7bf3: $dc $02 $9c
	ld b, $04                                        ; $7bf6: $06 $04
	ret nz                                           ; $7bf8: $c0

	db $dd                                           ; $7bf9: $dd
	add b                                            ; $7bfa: $80
	ld a, d                                          ; $7bfb: $7a

jr_024_7bfc:
	sub $75                                          ; $7bfc: $d6 $75

jr_024_7bfe:
	sbc d                                            ; $7bfe: $9a

Call_024_7bff:
	halt                                             ; $7bff: $76
	xor b                                            ; $7c00: $a8
	ld a, a                                          ; $7c01: $7f
	xor b                                            ; $7c02: $a8
	ld a, a                                          ; $7c03: $7f
	adc a                                            ; $7c04: $8f
	ld [hl], a                                       ; $7c05: $77
	ld a, b                                          ; $7c06: $78
	sub a                                            ; $7c07: $97
	rst SubAFromDE                                          ; $7c08: $df
	jr nz, jr_024_7bea                               ; $7c09: $20 $df

	jr nz, jr_024_7bfc                               ; $7c0b: $20 $ef

	jr nc, jr_024_7bfe                               ; $7c0d: $30 $ef

	jr nc, jr_024_7c8b                               ; $7c0f: $30 $7a

	ld d, h                                          ; $7c11: $54
	ld [hl], e                                       ; $7c12: $73
	cp $9e                                           ; $7c13: $fe $9e
	ei                                               ; $7c15: $fb
	ld a, d                                          ; $7c16: $7a
	ld l, b                                          ; $7c17: $68
	ld [hl], h                                       ; $7c18: $74
	ld d, b                                          ; $7c19: $50
	add h                                            ; $7c1a: $84
	rst $38                                          ; $7c1b: $ff
	xor c                                            ; $7c1c: $a9
	rst $38                                          ; $7c1d: $ff
	xor c                                            ; $7c1e: $a9
	cp $53                                           ; $7c1f: $fe $53
	rst $38                                          ; $7c21: $ff
	sub d                                            ; $7c22: $92
	cp $15                                           ; $7c23: $fe $15
	rst $38                                          ; $7c25: $ff
	inc d                                            ; $7c26: $14
	rst $38                                          ; $7c27: $ff
	jr z, @+$01                                      ; $7c28: $28 $ff

	xor b                                            ; $7c2a: $a8
	and h                                            ; $7c2b: $a4
	ld e, b                                          ; $7c2c: $58
	ld b, b                                          ; $7c2d: $40
	cp b                                             ; $7c2e: $b8
	add b                                            ; $7c2f: $80
	ld a, b                                          ; $7c30: $78
	ld c, b                                          ; $7c31: $48
	or b                                             ; $7c32: $b0
	sub b                                            ; $7c33: $90
	ld h, b                                          ; $7c34: $60
	add b                                            ; $7c35: $80
	ld a, e                                          ; $7c36: $7b
	cp $79                                           ; $7c37: $fe $79
	adc [hl]                                         ; $7c39: $8e
	ldh [$d1], a                                     ; $7c3a: $e0 $d1
	ld l, c                                          ; $7c3c: $69
	ld hl, $fe7f                                     ; $7c3d: $21 $7f $fe
	ld a, c                                          ; $7c40: $79
	ld l, b                                          ; $7c41: $68
	sbc h                                            ; $7c42: $9c
	ld c, $01                                        ; $7c43: $0e $01
	ld c, $74                                        ; $7c45: $0e $74
	ld e, h                                          ; $7c47: $5c
	ld b, l                                          ; $7c48: $45
	adc h                                            ; $7c49: $8c
	inc bc                                           ; $7c4a: $03
	cp $1b                                           ; $7c4b: $fe $1b
	cp $56                                           ; $7c4d: $fe $56
	and h                                            ; $7c4f: $a4
	ld [hl], d                                       ; $7c50: $72
	sub b                                            ; $7c51: $90
	ld [hl], d                                       ; $7c52: $72
	cp d                                             ; $7c53: $ba
	ld e, a                                          ; $7c54: $5f
	ld [$029e], a                                    ; $7c55: $ea $9e $02
	ld [hl], d                                       ; $7c58: $72
	and h                                            ; $7c59: $a4
	ld e, a                                          ; $7c5a: $5f
	ld [$ed7b], a                                    ; $7c5b: $ea $7b $ed
	ld a, [hl]                                       ; $7c5e: $7e
	and e                                            ; $7c5f: $a3
	ld l, d                                          ; $7c60: $6a
	adc [hl]                                         ; $7c61: $8e
	ld a, c                                          ; $7c62: $79
	ld h, e                                          ; $7c63: $63
	sub e                                            ; $7c64: $93
	rst $38                                          ; $7c65: $ff
	ld a, l                                          ; $7c66: $7d
	and l                                            ; $7c67: $a5
	cp $24                                           ; $7c68: $fe $24
	ld a, a                                          ; $7c6a: $7f
	sub d                                            ; $7c6b: $92
	ld a, l                                          ; $7c6c: $7d
	sub c                                            ; $7c6d: $91
	inc a                                            ; $7c6e: $3c
	ld d, b                                          ; $7c6f: $50
	inc c                                            ; $7c70: $0c
	ld [hl], b                                       ; $7c71: $70
	ld d, [hl]                                       ; $7c72: $56
	rst SubAFromDE                                          ; $7c73: $df
	inc b                                            ; $7c74: $04
	adc e                                            ; $7c75: $8b
	add a                                            ; $7c76: $87
	add l                                            ; $7c77: $85
	add $c7                                          ; $7c78: $c6 $c7
	xor e                                            ; $7c7a: $ab
	inc l                                            ; $7c7b: $2c
	rst $38                                          ; $7c7c: $ff
	or b                                             ; $7c7d: $b0
	ld a, a                                          ; $7c7e: $7f
	ld h, b                                          ; $7c7f: $60
	ld a, a                                          ; $7c80: $7f
	ld b, b                                          ; $7c81: $40
	ccf                                              ; $7c82: $3f
	nop                                              ; $7c83: $00
	ccf                                              ; $7c84: $3f
	rra                                              ; $7c85: $1f
	db $ec                                           ; $7c86: $ec
	di                                               ; $7c87: $f3
	ld hl, sp+$07                                    ; $7c88: $f8 $07
	ld h, a                                          ; $7c8a: $67

jr_024_7c8b:
	cp $7e                                           ; $7c8b: $fe $7e
	ld c, h                                          ; $7c8d: $4c
	sub [hl]                                         ; $7c8e: $96
	rst $38                                          ; $7c8f: $ff
	ldh a, [$1f]                                     ; $7c90: $f0 $1f
	ld hl, sp+$1f                                    ; $7c92: $f8 $1f
	rst $38                                          ; $7c94: $ff
	jr @+$01                                         ; $7c95: $18 $ff

	ld [$fe6b], sp                                   ; $7c97: $08 $6b $fe
	sbc d                                            ; $7c9a: $9a
	ldh a, [c]                                       ; $7c9b: $f2
	ccf                                              ; $7c9c: $3f
	call nz, $04ff                                   ; $7c9d: $c4 $ff $04
	ld [hl], e                                       ; $7ca0: $73
	or $9e                                           ; $7ca1: $f6 $9e
	db $10                                           ; $7ca3: $10
	ld a, e                                          ; $7ca4: $7b
	cp $96                                           ; $7ca5: $fe $96
	jr nz, @+$01                                     ; $7ca7: $20 $ff

	ld a, a                                          ; $7ca9: $7f
	ldh a, [$2f]                                     ; $7caa: $f0 $2f
	ldh a, [rAUD2LEN]                                ; $7cac: $f0 $16
	ld sp, hl                                        ; $7cae: $f9
	ld c, $79                                        ; $7caf: $0e $79
	ld [hl], l                                       ; $7cb1: $75
	ld l, e                                          ; $7cb2: $6b
	ld l, a                                          ; $7cb3: $6f
	ld a, [hl]                                       ; $7cb4: $7e
	adc $69                                          ; $7cb5: $ce $69
	adc [hl]                                         ; $7cb7: $8e
	ld a, [hl]                                       ; $7cb8: $7e
	halt                                             ; $7cb9: $76
	sbc e                                            ; $7cba: $9b
	ret c                                            ; $7cbb: $d8

	ldh [$f6], a                                     ; $7cbc: $e0 $f6
	ld hl, sp-$20                                    ; $7cbe: $f8 $e0
	pop de                                           ; $7cc0: $d1
	ld [hl], h                                       ; $7cc1: $74
	ld e, h                                          ; $7cc2: $5c
	ld [hl], l                                       ; $7cc3: $75
	adc h                                            ; $7cc4: $8c
	sbc l                                            ; $7cc5: $9d
	ld c, a                                          ; $7cc6: $4f
	jr nc, jr_024_7d3e                               ; $7cc7: $30 $75

	adc d                                            ; $7cc9: $8a
	ld a, l                                          ; $7cca: $7d
	adc [hl]                                         ; $7ccb: $8e
	ld [bc], a                                       ; $7ccc: $02
	xor $03                                          ; $7ccd: $ee $03
	cp $03                                           ; $7ccf: $fe $03
	cp $13                                           ; $7cd1: $fe $13
	cp $4d                                           ; $7cd3: $fe $4d
	ld [hl-], a                                      ; $7cd5: $32
	ld a, a                                          ; $7cd6: $7f
	cp $7e                                           ; $7cd7: $fe $7e
	cp d                                             ; $7cd9: $ba
	sbc l                                            ; $7cda: $9d
	ld b, $f8                                        ; $7cdb: $06 $f8
	ld e, l                                          ; $7cdd: $5d
	ld [hl-], a                                      ; $7cde: $32
	ld a, a                                          ; $7cdf: $7f
	cp $7a                                           ; $7ce0: $fe $7a
	ld a, [de]                                       ; $7ce2: $1a
	ld [hl], c                                       ; $7ce3: $71
	inc e                                            ; $7ce4: $1c
	ld h, a                                          ; $7ce5: $67
	ld [$db77], a                                    ; $7ce6: $ea $77 $db
	ld a, [hl]                                       ; $7ce9: $7e
	cp c                                             ; $7cea: $b9
	ld a, a                                          ; $7ceb: $7f
	ld [$029d], a                                    ; $7cec: $ea $9d $02
	ld bc, $ea6f                                     ; $7cef: $01 $6f $ea
	ld a, [hl]                                       ; $7cf2: $7e
	ret c                                            ; $7cf3: $d8

	ld a, [hl]                                       ; $7cf4: $7e
	jp nc, $fe77                                     ; $7cf5: $d2 $77 $fe

	adc l                                            ; $7cf8: $8d
	dec b                                            ; $7cf9: $05
	rst $38                                          ; $7cfa: $ff
	ld b, l                                          ; $7cfb: $45
	ld a, $07                                        ; $7cfc: $3e $07
	ld c, $03                                        ; $7cfe: $0e $03
	nop                                              ; $7d00: $00
	ld b, b                                          ; $7d01: $40
	rst $38                                          ; $7d02: $ff
	ld c, [hl]                                       ; $7d03: $4e
	pop af                                           ; $7d04: $f1
	sbc [hl]                                         ; $7d05: $9e
	pop hl                                           ; $7d06: $e1
	cp $81                                           ; $7d07: $fe $81
	cp $01                                           ; $7d09: $fe $01
	ld [hl], a                                       ; $7d0b: $77
	cp $9d                                           ; $7d0c: $fe $9d
	db $fc                                           ; $7d0e: $fc
	inc bc                                           ; $7d0f: $03
	ld [hl], h                                       ; $7d10: $74
	dec sp                                           ; $7d11: $3b
	add b                                            ; $7d12: $80
	ld [bc], a                                       ; $7d13: $02
	rst $38                                          ; $7d14: $ff
	dec b                                            ; $7d15: $05
	cp $0a                                           ; $7d16: $fe $0a
	db $fd                                           ; $7d18: $fd
	rla                                              ; $7d19: $17
	ld hl, sp+$2e                                    ; $7d1a: $f8 $2e
	pop af                                           ; $7d1c: $f1
	ld d, c                                          ; $7d1d: $51
	rst AddAOntoHL                                          ; $7d1e: $ef
	rrca                                             ; $7d1f: $0f
	db $fc                                           ; $7d20: $fc
	ld [hl], e                                       ; $7d21: $73
	adc a                                            ; $7d22: $8f
	pop bc                                           ; $7d23: $c1
	ccf                                              ; $7d24: $3f
	ld bc, $7eff                                     ; $7d25: $01 $ff $7e
	add c                                            ; $7d28: $81
	rst GetHLinHL                                          ; $7d29: $cf
	jr nc, jr_024_7d2f                               ; $7d2a: $30 $03

	db $fc                                           ; $7d2c: $fc
	ldh a, [rIE]                                     ; $7d2d: $f0 $ff

jr_024_7d2f:
	ret nz                                           ; $7d2f: $c0

	nop                                              ; $7d30: $00
	ld a, b                                          ; $7d31: $78
	sub l                                            ; $7d32: $95
	ret nz                                           ; $7d33: $c0

	rst AddAOntoHL                                          ; $7d34: $ef
	ld hl, sp-$0b                                    ; $7d35: $f8 $f5
	rst $38                                          ; $7d37: $ff
	ld [$f7ff], a                                    ; $7d38: $ea $ff $f7
	rst $38                                          ; $7d3b: $ff
	cp $de                                           ; $7d3c: $fe $de

jr_024_7d3e:
	rst $38                                          ; $7d3e: $ff
	ei                                               ; $7d3f: $fb
	ld a, [hl]                                       ; $7d40: $7e
	dec [hl]                                         ; $7d41: $35
	sbc b                                            ; $7d42: $98
	cp h                                             ; $7d43: $bc
	ldh [$57], a                                     ; $7d44: $e0 $57
	db $fc                                           ; $7d46: $fc
	xor d                                            ; $7d47: $aa
	rst $38                                          ; $7d48: $ff
	push de                                          ; $7d49: $d5
	ld [hl], a                                       ; $7d4a: $77
	ldh a, [$6d]                                     ; $7d4b: $f0 $6d
	inc de                                           ; $7d4d: $13
	ld a, [hl]                                       ; $7d4e: $7e
	ld e, $7f                                        ; $7d4f: $1e $7f
	cp $9c                                           ; $7d51: $fe $9c
	rst JumpTable                                          ; $7d53: $c7
	ld b, b                                          ; $7d54: $40
	rst JumpTable                                          ; $7d55: $c7
	ld [hl], h                                       ; $7d56: $74
	ld e, h                                          ; $7d57: $5c
	ld l, l                                          ; $7d58: $6d
	adc h                                            ; $7d59: $8c
	ld bc, $038a                                     ; $7d5a: $01 $8a $03
	cp $03                                           ; $7d5d: $fe $03
	cp $03                                           ; $7d5f: $fe $03
	cp $03                                           ; $7d61: $fe $03
	cp $43                                           ; $7d63: $fe $43
	cp $56                                           ; $7d65: $fe $56
	and h                                            ; $7d67: $a4
	ld [hl], a                                       ; $7d68: $77
	cp $56                                           ; $7d69: $fe $56
	and h                                            ; $7d6b: $a4
	ld [hl], a                                       ; $7d6c: $77
	ld [$a47e], a                                    ; $7d6d: $ea $7e $a4
	sbc h                                            ; $7d70: $9c
	add hl, bc                                       ; $7d71: $09
	rlca                                             ; $7d72: $07
	inc bc                                           ; $7d73: $03
	ld [hl], c                                       ; $7d74: $71
	ld [hl-], a                                      ; $7d75: $32
	ld l, a                                          ; $7d76: $6f
	ld [$8e92], a                                    ; $7d77: $ea $92 $8e
	rst $38                                          ; $7d7a: $ff
	dec sp                                           ; $7d7b: $3b
	db $fc                                           ; $7d7c: $fc
	rst AddAOntoHL                                          ; $7d7d: $ef
	ldh a, [rAUD3LEVEL]                              ; $7d7e: $f0 $1c
	ld h, e                                          ; $7d80: $63
	jr jr_024_7d8a                                   ; $7d81: $18 $07

	nop                                              ; $7d83: $00
	inc bc                                           ; $7d84: $03
	ret nz                                           ; $7d85: $c0

	ld a, e                                          ; $7d86: $7b
	ld [$dc7f], a                                    ; $7d87: $ea $7f $dc

jr_024_7d8a:
	ld a, a                                          ; $7d8a: $7f
	ret c                                            ; $7d8b: $d8

	ld a, a                                          ; $7d8c: $7f
	dec b                                            ; $7d8d: $05
	ld h, a                                          ; $7d8e: $67
	or c                                             ; $7d8f: $b1
	sbc e                                            ; $7d90: $9b
	ld de, $7f3f                                     ; $7d91: $11 $3f $7f
	rst $38                                          ; $7d94: $ff
	ld h, a                                          ; $7d95: $67
	cp $db                                           ; $7d96: $fe $db
	rst $38                                          ; $7d98: $ff
	sbc [hl]                                         ; $7d99: $9e
	ld a, [$ffda]                                    ; $7d9a: $fa $da $ff
	ld a, [hl]                                       ; $7d9d: $7e
	or h                                             ; $7d9e: $b4
	rst SubAFromDE                                          ; $7d9f: $df
	cp $97                                           ; $7da0: $fe $97
	db $fc                                           ; $7da2: $fc
	cp $fc                                           ; $7da3: $fe $fc
	db $fc                                           ; $7da5: $fc
	add c                                            ; $7da6: $81
	adc [hl]                                         ; $7da7: $8e
	ld bc, $658e                                     ; $7da8: $01 $8e $65
	adc h                                            ; $7dab: $8c
	sbc e                                            ; $7dac: $9b
	ld b, a                                          ; $7dad: $47
	jr c, @+$11                                      ; $7dae: $38 $0f

	ld [hl], b                                       ; $7db0: $70
	inc bc                                           ; $7db1: $03
	ld e, [hl]                                       ; $7db2: $5e
	inc bc                                           ; $7db3: $03
	cp $03                                           ; $7db4: $fe $03
	cp $03                                           ; $7db6: $fe $03
	cp $03                                           ; $7db8: $fe $03
	cp $03                                           ; $7dba: $fe $03
	cp $1f                                           ; $7dbc: $fe $1f
	cp $56                                           ; $7dbe: $fe $56
	and h                                            ; $7dc0: $a4
	ld [hl], a                                       ; $7dc1: $77
	cp $9e                                           ; $7dc2: $fe $9e
	inc b                                            ; $7dc4: $04
	ld d, c                                          ; $7dc5: $51
	ld [hl-], a                                      ; $7dc6: $32
	ld a, a                                          ; $7dc7: $7f
	cp $9e                                           ; $7dc8: $fe $9e
	dec b                                            ; $7dca: $05
	ld [hl], d                                       ; $7dcb: $72
	and h                                            ; $7dcc: $a4
	ld e, e                                          ; $7dcd: $5b
	ld [$ffdf], a                                    ; $7dce: $ea $df $ff
	sbc e                                            ; $7dd1: $9b
	ld a, a                                          ; $7dd2: $7f
	rra                                              ; $7dd3: $1f
	rrca                                             ; $7dd4: $0f
	inc bc                                           ; $7dd5: $03
	ld l, c                                          ; $7dd6: $69
	ld [hl-], a                                      ; $7dd7: $32
	ld a, a                                          ; $7dd8: $7f
	ld [$f894], a                                    ; $7dd9: $ea $94 $f8
	db $fc                                           ; $7ddc: $fc
	ld hl, sp-$08                                    ; $7ddd: $f8 $f8
	ldh a, [$f8]                                     ; $7ddf: $f0 $f8
	ldh a, [$f1]                                     ; $7de1: $f0 $f1
	ld h, b                                          ; $7de3: $60
	ld sp, $7902                                     ; $7de4: $31 $02 $79
	adc d                                            ; $7de7: $8a
	sbc l                                            ; $7de8: $9d
	add h                                            ; $7de9: $84
	inc bc                                           ; $7dea: $03
	ld [hl], h                                       ; $7deb: $74
	ld e, h                                          ; $7dec: $5c
	ld l, l                                          ; $7ded: $6d
	adc h                                            ; $7dee: $8c
	ld l, l                                          ; $7def: $6d
	adc d                                            ; $7df0: $8a
	inc bc                                           ; $7df1: $03
	ld a, [hl]                                       ; $7df2: $7e
	dec hl                                           ; $7df3: $2b
	cp $97                                           ; $7df4: $fe $97
	pop af                                           ; $7df6: $f1
	nop                                              ; $7df7: $00
	ldh [$0e], a                                     ; $7df8: $e0 $0e
	ret nz                                           ; $7dfa: $c0

	ld de, $17c0                                     ; $7dfb: $11 $c0 $17
	ld h, a                                          ; $7dfe: $67
	ldh a, [$97]                                     ; $7dff: $f0 $97
	db $ec                                           ; $7e01: $ec
	nop                                              ; $7e02: $00
	ld b, b                                          ; $7e03: $40
	adc e                                            ; $7e04: $8b
	ld bc, $206a                                     ; $7e05: $01 $6a $20
	ld c, h                                          ; $7e08: $4c
	ld h, a                                          ; $7e09: $67
	ldh a, [$97]                                     ; $7e0a: $f0 $97
	rst SubAFromBC                                          ; $7e0c: $e7
	nop                                              ; $7e0d: $00
	ld bc, $095a                                     ; $7e0e: $01 $5a $09
	ld d, d                                          ; $7e11: $52
	nop                                              ; $7e12: $00
	ld h, d                                          ; $7e13: $62
	ld h, a                                          ; $7e14: $67
	ldh a, [$97]                                     ; $7e15: $f0 $97
	cp l                                             ; $7e17: $bd
	nop                                              ; $7e18: $00
	jr jr_024_7e3c                                   ; $7e19: $18 $21

	jr @+$27                                         ; $7e1b: $18 $25

	inc e                                            ; $7e1d: $1c
	and c                                            ; $7e1e: $a1
	ld h, a                                          ; $7e1f: $67
	ldh a, [$97]                                     ; $7e20: $f0 $97
	sbc h                                            ; $7e22: $9c
	nop                                              ; $7e23: $00
	nop                                              ; $7e24: $00
	ld l, e                                          ; $7e25: $6b
	ld hl, $004a                                     ; $7e26: $21 $4a $00
	adc h                                            ; $7e29: $8c
	ld c, a                                          ; $7e2a: $4f
	ret nc                                           ; $7e2b: $d0

	sbc [hl]                                         ; $7e2c: $9e
	ld bc, $d063                                     ; $7e2d: $01 $63 $d0
	sbc e                                            ; $7e30: $9b
	ld l, h                                          ; $7e31: $6c
	nop                                              ; $7e32: $00
	jr nz, jr_024_7e80                               ; $7e33: $20 $4b

	ld a, e                                          ; $7e35: $7b
	xor $9e                                          ; $7e36: $ee $9e
	ld [de], a                                       ; $7e38: $12
	ld h, a                                          ; $7e39: $67
	ldh a, [$9b]                                     ; $7e3a: $f0 $9b

jr_024_7e3c:
	db $db                                           ; $7e3c: $db
	nop                                              ; $7e3d: $00
	ld bc, $7b4a                                     ; $7e3e: $01 $4a $7b
	cp $9e                                           ; $7e41: $fe $9e
	ld d, d                                          ; $7e43: $52
	ld h, a                                          ; $7e44: $67
	ldh a, [$97]                                     ; $7e45: $f0 $97
	sub a                                            ; $7e47: $97
	nop                                              ; $7e48: $00
	add b                                            ; $7e49: $80
	ld [de], a                                       ; $7e4a: $12
	nop                                              ; $7e4b: $00
	ld d, b                                          ; $7e4c: $50
	nop                                              ; $7e4d: $00
	ld d, l                                          ; $7e4e: $55
	ld h, a                                          ; $7e4f: $67

jr_024_7e50:
	ldh a, [$97]                                     ; $7e50: $f0 $97
	ld e, $40                                        ; $7e52: $1e $40
	ld c, $50                                        ; $7e54: $0e $50
	inc c                                            ; $7e56: $0c
	ld d, c                                          ; $7e57: $51
	inc c                                            ; $7e58: $0c
	ld d, c                                          ; $7e59: $51
	ld h, a                                          ; $7e5a: $67
	ldh a, [$9d]                                     ; $7e5b: $f0 $9d
	ld e, l                                          ; $7e5d: $5d
	nop                                              ; $7e5e: $00
	ld [hl], a                                       ; $7e5f: $77
	ldh a, [c]                                       ; $7e60: $f2
	ld e, a                                          ; $7e61: $5f
	ldh a, [$97]                                     ; $7e62: $f0 $97
	db $e3                                           ; $7e64: $e3
	nop                                              ; $7e65: $00

jr_024_7e66:
	ldh [$0d], a                                     ; $7e66: $e0 $0d
	db $e4                                           ; $7e68: $e4
	add hl, bc                                       ; $7e69: $09
	ldh [$03], a                                     ; $7e6a: $e0 $03
	ld h, a                                          ; $7e6c: $67
	ldh a, [$98]                                     ; $7e6d: $f0 $98
	ld h, [hl]                                       ; $7e6f: $66
	nop                                              ; $7e70: $00
	nop                                              ; $7e71: $00
	ld e, d                                          ; $7e72: $5a
	ld [$0056], sp                                   ; $7e73: $08 $56 $00
	ld h, e                                          ; $7e76: $63
	or b                                             ; $7e77: $b0
	sub l                                            ; $7e78: $95
	ret nc                                           ; $7e79: $d0

	ld bc, $9b40                                     ; $7e7a: $01 $40 $9b
	ld c, c                                          ; $7e7d: $49
	sub d                                            ; $7e7e: $92
	add hl, bc                                       ; $7e7f: $09

jr_024_7e80:
	ld [de], a                                       ; $7e80: $12
	add b                                            ; $7e81: $80
	ld a, a                                          ; $7e82: $7f
	ld l, [hl]                                       ; $7e83: $6e
	and h                                            ; $7e84: $a4
	ld a, a                                          ; $7e85: $7f
	ld h, b                                          ; $7e86: $60
	sbc c                                            ; $7e87: $99
	inc b                                            ; $7e88: $04

jr_024_7e89:
	ld l, c                                          ; $7e89: $69
	inc h                                            ; $7e8a: $24
	ld e, c                                          ; $7e8b: $59
	inc e                                            ; $7e8c: $1c
	add b                                            ; $7e8d: $80
	ld a, e                                          ; $7e8e: $7b
	ld h, a                                          ; $7e8f: $67
	sub d                                            ; $7e90: $92
	rst $38                                          ; $7e91: $ff
	ld bc, $c1fe                                     ; $7e92: $01 $fe $c1
	ld a, $63                                        ; $7e95: $3e $63
	nop                                              ; $7e97: $00
	nop                                              ; $7e98: $00
	xor [hl]                                         ; $7e99: $ae
	add [hl]                                         ; $7e9a: $86
	jr z, jr_024_7e9d                                ; $7e9b: $28 $00

jr_024_7e9d:
	ld h, e                                          ; $7e9d: $63

Call_024_7e9e:
	ld h, a                                          ; $7e9e: $67
	ret nc                                           ; $7e9f: $d0

	sub a                                            ; $7ea0: $97
	ld sp, $0000                                     ; $7ea1: $31 $00 $00
	rst SubAFromHL                                          ; $7ea4: $d7
	ld b, e                                          ; $7ea5: $43
	or h                                             ; $7ea6: $b4
	db $10                                           ; $7ea7: $10
	ld hl, $f067                                     ; $7ea8: $21 $67 $f0
	ld a, a                                          ; $7eab: $7f
	add $7f                                          ; $7eac: $c6 $7f
	ld [bc], a                                       ; $7eae: $02
	ld a, e                                          ; $7eaf: $7b
	jr nc, jr_024_7e50                               ; $7eb0: $30 $9e

	ld a, [de]                                       ; $7eb2: $1a
	ld h, b                                          ; $7eb3: $60
	add sp, -$68                                     ; $7eb4: $e8 $98
	ld b, h                                          ; $7eb6: $44
	nop                                              ; $7eb7: $00
	ld e, l                                          ; $7eb8: $5d
	inc c                                            ; $7eb9: $0c
	ld d, c                                          ; $7eba: $51
	nop                                              ; $7ebb: $00
	ld b, l                                          ; $7ebc: $45
	ld h, a                                          ; $7ebd: $67
	ldh a, [$7d]                                     ; $7ebe: $f0 $7d
	dec e                                            ; $7ec0: $1d
	sub c                                            ; $7ec1: $91
	ccf                                              ; $7ec2: $3f
	add b                                            ; $7ec3: $80
	sbc a                                            ; $7ec4: $9f
	jr nz, jr_024_7e66                               ; $7ec5: $20 $9f

	jr nz, jr_024_7e89                               ; $7ec7: $20 $c0

	ld de, $0ee0                                     ; $7ec9: $11 $e0 $0e
	ldh [rAUD1LEN], a                                ; $7ecc: $e0 $11
	ldh a, [rIF]                                     ; $7ece: $f0 $0f
	ld h, a                                          ; $7ed0: $67
	add sp, -$69                                     ; $7ed1: $e8 $97
	inc h                                            ; $7ed3: $24
	ld c, e                                          ; $7ed4: $4b
	ld hl, $60ca                                     ; $7ed5: $21 $ca $60
	adc h                                            ; $7ed8: $8c
	db $e4                                           ; $7ed9: $e4
	dec de                                           ; $7eda: $1b
	ld h, a                                          ; $7edb: $67
	ldh a, [$97]                                     ; $7edc: $f0 $97

Jump_024_7ede:
	jr nz, @+$5c                                     ; $7ede: $20 $5a

	ld [$0052], sp                                   ; $7ee0: $08 $52 $00
	rst SubAFromBC                                          ; $7ee3: $e7
	ld h, e                                          ; $7ee4: $63
	sbc h                                            ; $7ee5: $9c
	ld h, a                                          ; $7ee6: $67
	ldh a, [$7e]                                     ; $7ee7: $f0 $7e
	adc $97                                          ; $7ee9: $ce $97
	inc c                                            ; $7eeb: $0c
	ld de, $b500                                     ; $7eec: $11 $00 $b5
	sub b                                            ; $7eef: $90
	ld h, a                                          ; $7ef0: $67
	di                                               ; $7ef1: $f3
	inc c                                            ; $7ef2: $0c
	ld l, a                                          ; $7ef3: $6f
	ldh a, [$9e]                                     ; $7ef4: $f0 $9e
	add h                                            ; $7ef6: $84
	halt                                             ; $7ef7: $76
	jp z, $9c9c                                      ; $7ef8: $ca $9c $9c

	adc h                                            ; $7efb: $8c
	ld [hl], e                                       ; $7efc: $73
	ld h, a                                          ; $7efd: $67
	ldh [$9e], a                                     ; $7efe: $e0 $9e
	ld hl, $ca76                                     ; $7f00: $21 $76 $ca
	sbc [hl]                                         ; $7f03: $9e
	and $5f                                          ; $7f04: $e6 $5f
	ret nc                                           ; $7f06: $d0

	ld [hl], a                                       ; $7f07: $77
	ld a, d                                          ; $7f08: $7a
	ld a, [hl]                                       ; $7f09: $7e
	ld a, d                                          ; $7f0a: $7a
	sbc l                                            ; $7f0b: $9d
	inc h                                            ; $7f0c: $24
	db $db                                           ; $7f0d: $db
	ld h, e                                          ; $7f0e: $63
	ld a, b                                          ; $7f0f: $78
	ld a, a                                          ; $7f10: $7f
	or d                                             ; $7f11: $b2
	ld a, a                                          ; $7f12: $7f
	xor [hl]                                         ; $7f13: $ae
	sbc h                                            ; $7f14: $9c
	jp nc, $b748                                     ; $7f15: $d2 $48 $b7

	ld h, e                                          ; $7f18: $63
	ldh [$98], a                                     ; $7f19: $e0 $98
	ld d, $03                                        ; $7f1b: $16 $03
	call nc, $9443                                   ; $7f1d: $d4 $43 $94
	ld b, e                                          ; $7f20: $43
	cp h                                             ; $7f21: $bc
	ld h, a                                          ; $7f22: $67
	ldh a, [$97]                                     ; $7f23: $f0 $97
	inc c                                            ; $7f25: $0c
	ld d, b                                          ; $7f26: $50
	ld [$0953], sp                                   ; $7f27: $08 $53 $09
	ld d, d                                          ; $7f2a: $52
	add hl, bc                                       ; $7f2b: $09
	or $63                                           ; $7f2c: $f6 $63
	ldh a, [$7a]                                     ; $7f2e: $f0 $7a
	call z, $447b                                    ; $7f30: $cc $7b $44
	rst SubAFromDE                                          ; $7f33: $df
	rst $38                                          ; $7f34: $ff
	ld l, e                                          ; $7f35: $6b
	ldh a, [rPCM12]                                  ; $7f36: $f0 $76
	jp z, $249d                                      ; $7f38: $ca $9d $24

	ld c, c                                          ; $7f3b: $49
	ld e, e                                          ; $7f3c: $5b
	or b                                             ; $7f3d: $b0
	ld [hl], a                                       ; $7f3e: $77
	ld h, b                                          ; $7f3f: $60
	sbc h                                            ; $7f40: $9c
	ld h, [hl]                                       ; $7f41: $66
	ld [hl+], a                                      ; $7f42: $22
	db $dd                                           ; $7f43: $dd
	ld h, e                                          ; $7f44: $63
	ld [$d29c], sp                                   ; $7f45: $08 $9c $d2
	ld c, c                                          ; $7f48: $49
	sub d                                            ; $7f49: $92
	ld a, e                                          ; $7f4a: $7b
	cp $9e                                           ; $7f4b: $fe $9e
	or [hl]                                          ; $7f4d: $b6
	ld h, a                                          ; $7f4e: $67
	ldh a, [$99]                                     ; $7f4f: $f0 $99
	add h                                            ; $7f51: $84
	ld l, c                                          ; $7f52: $69
	inc h                                            ; $7f53: $24
	ld c, c                                          ; $7f54: $49
	inc b                                            ; $7f55: $04
	sbc c                                            ; $7f56: $99
	ld e, a                                          ; $7f57: $5f
	ld h, b                                          ; $7f58: $60
	sbc [hl]                                         ; $7f59: $9e
	ld bc, $ca7a                                     ; $7f5a: $01 $7a $ca
	sbc e                                            ; $7f5d: $9b
	add b                                            ; $7f5e: $80
	inc hl                                           ; $7f5f: $23
	add c                                            ; $7f60: $81
	ld a, [hl]                                       ; $7f61: $7e
	ld h, e                                          ; $7f62: $63
	ret nz                                           ; $7f63: $c0

	ld a, [hl]                                       ; $7f64: $7e
	jp z, $949a                                      ; $7f65: $ca $9a $94

	nop                                              ; $7f68: $00
	ld sp, $ef10                                     ; $7f69: $31 $10 $ef
	ld h, e                                          ; $7f6c: $63
	ldh a, [$79]                                     ; $7f6d: $f0 $79
	call z, $249d                                    ; $7f6f: $cc $9d $24
	ld c, b                                          ; $7f72: $48
	ld e, e                                          ; $7f73: $5b
	and b                                            ; $7f74: $a0
	ld a, [hl]                                       ; $7f75: $7e
	jp z, $d19a                                      ; $7f76: $ca $9a $d1

	ld b, b                                          ; $7f79: $40
	add h                                            ; $7f7a: $84
	ld b, b                                          ; $7f7b: $40
	cp a                                             ; $7f7c: $bf
	ld h, a                                          ; $7f7d: $67
	ldh a, [rPCM12]                                  ; $7f7e: $f0 $76
	call z, $079b                                    ; $7f80: $cc $9b $07

jr_024_7f83:
	ld l, b                                          ; $7f83: $68
	daa                                              ; $7f84: $27
	ret c                                            ; $7f85: $d8

	ld h, a                                          ; $7f86: $67
	ldh a, [$3b]                                     ; $7f87: $f0 $3b
	nop                                              ; $7f89: $00
	sub e                                            ; $7f8a: $93
	ld h, l                                          ; $7f8b: $65
	ld d, l                                          ; $7f8c: $55
	nop                                              ; $7f8d: $00
	nop                                              ; $7f8e: $00
	ld de, $1011                                     ; $7f8f: $11 $11 $10
	ld d, l                                          ; $7f92: $55
	ld d, l                                          ; $7f93: $55
	ld d, d                                          ; $7f94: $52
	ld h, l                                          ; $7f95: $65
	ld d, b                                          ; $7f96: $50
	ld [hl], e                                       ; $7f97: $73
	or $93                                           ; $7f98: $f6 $93
	ld d, b                                          ; $7f9a: $50
	ld d, l                                          ; $7f9b: $55
	ld [hl+], a                                      ; $7f9c: $22

Call_024_7f9d:
	inc hl                                           ; $7f9d: $23
	ld h, e                                          ; $7f9e: $63
	inc [hl]                                         ; $7f9f: $34
	ld b, e                                          ; $7fa0: $43
	ld de, $0511                                     ; $7fa1: $11 $11 $05
	ld d, b                                          ; $7fa4: $50
	ld [bc], a                                       ; $7fa5: $02
	sbc $22                                          ; $7fa6: $de $22
	sbc c                                            ; $7fa8: $99
	inc [hl]                                         ; $7fa9: $34
	inc sp                                           ; $7faa: $33
	ld de, $7511                                     ; $7fab: $11 $11 $75
	nop                                              ; $7fae: $00

Jump_024_7faf:
	ld [hl], a                                       ; $7faf: $77
	or $7f                                           ; $7fb0: $f6 $7f
	jp hl                                            ; $7fb2: $e9


	rst SubAFromDE                                          ; $7fb3: $df
	inc sp                                           ; $7fb4: $33
	ld a, a                                          ; $7fb5: $7f
	or $da                                           ; $7fb6: $f6 $da
	ld [hl+], a                                      ; $7fb8: $22
	rst SubAFromDE                                          ; $7fb9: $df

Jump_024_7fba:
	inc sp                                           ; $7fba: $33
	ld a, a                                          ; $7fbb: $7f
	reti                                             ; $7fbc: $d9


	ld h, a                                          ; $7fbd: $67
	push af                                          ; $7fbe: $f5
	sbc [hl]                                         ; $7fbf: $9e
	jr nc, jr_024_7f83                               ; $7fc0: $30 $c1

	ld [hl+], a                                      ; $7fc2: $22
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
	rst $38                                          ; $7ffa: $ff
	rst $38                                          ; $7ffb: $ff
	rst $38                                          ; $7ffc: $ff
	rst $38                                          ; $7ffd: $ff
	rst $38                                          ; $7ffe: $ff
	rst $38                                          ; $7fff: $ff
