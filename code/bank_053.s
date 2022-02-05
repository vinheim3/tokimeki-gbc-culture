; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $053", ROMX[$4000], BANK[$53]

Jump_053_4000:
	db $fc                                           ; $4000: $fc
	ldh [$f0], a                                     ; $4001: $e0 $f0
	ldh [$dc], a                                     ; $4003: $e0 $dc
	ld hl, sp-$10                                    ; $4005: $f8 $f0
	ld [hl], e                                       ; $4007: $73
	ld hl, sp+$7e                                    ; $4008: $f8 $7e
	cp l                                             ; $400a: $bd
	ld [hl], a                                       ; $400b: $77
	rla                                              ; $400c: $17
	ld a, a                                          ; $400d: $7f
	ld d, $f9                                        ; $400e: $16 $f9
	rst SubAFromDE                                          ; $4010: $df
	ld a, a                                          ; $4011: $7f
	ld c, l                                          ; $4012: $4d
	and b                                            ; $4013: $a0
	ld a, d                                          ; $4014: $7a
	add c                                            ; $4015: $81
	ld c, d                                          ; $4016: $4a
	call $809c                                       ; $4017: $cd $9c $80
	ret nz                                           ; $401a: $c0

	ldh [$5a], a                                     ; $401b: $e0 $5a
	or b                                             ; $401d: $b0
	ld h, [hl]                                       ; $401e: $66
	call z, $f867                                    ; $401f: $cc $67 $f8
	add h                                            ; $4022: $84
	inc de                                           ; $4023: $13
	inc hl                                           ; $4024: $23
	ld h, $4c                                        ; $4025: $26 $4c
	ld c, l                                          ; $4027: $4d
	sbc c                                            ; $4028: $99
	sbc l                                            ; $4029: $9d
	scf                                              ; $402a: $37
	inc e                                            ; $402b: $1c
	inc a                                            ; $402c: $3c
	add hl, sp                                       ; $402d: $39
	ld [hl], e                                       ; $402e: $73
	ld [hl], d                                       ; $402f: $72
	and $e6                                          ; $4030: $e6 $e6
	call z, $6864                                    ; $4032: $cc $64 $68
	jp nc, $a492                                     ; $4035: $d2 $92 $a4

	ld b, h                                          ; $4038: $44
	ld c, b                                          ; $4039: $48
	ret                                              ; $403a: $c9


	sbc a                                            ; $403b: $9f
	sbc a                                            ; $403c: $9f
	ccf                                              ; $403d: $3f
	ld [hl], e                                       ; $403e: $73
	and l                                            ; $403f: $a5

Jump_053_4040:
	ld a, a                                          ; $4040: $7f
	sbc $97                                          ; $4041: $de $97
	daa                                              ; $4043: $27
	ld c, e                                          ; $4044: $4b
	ld c, e                                          ; $4045: $4b
	sub a                                            ; $4046: $97
	sub a                                            ; $4047: $97
	dec a                                            ; $4048: $3d
	rst $38                                          ; $4049: $ff
	cp $de                                           ; $404a: $fe $de
	db $fc                                           ; $404c: $fc
	add b                                            ; $404d: $80
	ld hl, sp-$07                                    ; $404e: $f8 $f9
	di                                               ; $4050: $f3
	db $dd                                           ; $4051: $dd
	or h                                             ; $4052: $b4
	jp nz, $986c                                     ; $4053: $c2 $6c $98

	ret                                              ; $4056: $c9


	inc sp                                           ; $4057: $33
	push de                                          ; $4058: $d5
	ld [hl+], a                                      ; $4059: $22
	ld h, d                                          ; $405a: $62
	ld h, h                                          ; $405b: $64
	push bc                                          ; $405c: $c5
	call $9d9d                                       ; $405d: $cd $9d $9d
	dec sp                                           ; $4060: $3b
	dec de                                           ; $4061: $1b
	dec de                                           ; $4062: $1b
	adc e                                            ; $4063: $8b
	add c                                            ; $4064: $81
	sub c                                            ; $4065: $91
	jr nc, jr_053_4098                               ; $4066: $30 $30

	db $10                                           ; $4068: $10
	add b                                            ; $4069: $80
	add b                                            ; $406a: $80
	sub b                                            ; $406b: $90
	sbc b                                            ; $406c: $98
	sub d                                            ; $406d: $92
	sbc b                                            ; $406e: $98
	sbc c                                            ; $406f: $99
	sbc c                                            ; $4070: $99
	cp c                                             ; $4071: $b9
	db $f4                                           ; $4072: $f4
	ld a, [$bebd]                                    ; $4073: $fa $bd $be
	ccf                                              ; $4076: $3f
	rla                                              ; $4077: $17
	ld a, [de]                                       ; $4078: $1a
	sub d                                            ; $4079: $92
	inc c                                            ; $407a: $0c
	ld [hl], a                                       ; $407b: $77
	ld [$289c], sp                                   ; $407c: $08 $9c $28
	dec h                                            ; $407f: $25
	dec h                                            ; $4080: $25
	ld a, c                                          ; $4081: $79
	adc b                                            ; $4082: $88
	sbc d                                            ; $4083: $9a
	ret nz                                           ; $4084: $c0

	cp a                                             ; $4085: $bf
	ldh a, [c]                                       ; $4086: $f2
	rst SubAFromDE                                          ; $4087: $df
	xor a                                            ; $4088: $af
	ld [hl], a                                       ; $4089: $77
	ld hl, sp-$71                                    ; $408a: $f8 $8f
	ld a, a                                          ; $408c: $7f
	ld c, $3f                                        ; $408d: $0e $3f
	rra                                              ; $408f: $1f
	cp $fc                                           ; $4090: $fe $fc
	db $fd                                           ; $4092: $fd
	jr nc, @+$72                                     ; $4093: $30 $70

	di                                               ; $4095: $f3
	db $e3                                           ; $4096: $e3
	rst SubAFromBC                                          ; $4097: $e7

jr_053_4098:
	ld sp, hl                                        ; $4098: $f9
	ei                                               ; $4099: $fb
	ld a, [$773f]                                    ; $409a: $fa $3f $77
	and b                                            ; $409d: $a0
	sub e                                            ; $409e: $93
	ld e, c                                          ; $409f: $59
	adc e                                            ; $40a0: $8b
	sbc [hl]                                         ; $40a1: $9e
	cp [hl]                                          ; $40a2: $be
	push hl                                          ; $40a3: $e5
	push hl                                          ; $40a4: $e5
	push af                                          ; $40a5: $f5
	pop af                                           ; $40a6: $f1
	cp h                                             ; $40a7: $bc
	ld a, h                                          ; $40a8: $7c
	ld a, c                                          ; $40a9: $79
	ld sp, hl                                        ; $40aa: $f9
	sbc $fb                                          ; $40ab: $de $fb
	adc c                                            ; $40ad: $89
	rst $38                                          ; $40ae: $ff
	ld [hl], c                                       ; $40af: $71
	ld b, a                                          ; $40b0: $47
	jp z, $ebeb                                      ; $40b1: $ca $eb $eb

	reti                                             ; $40b4: $d9


	db $d3                                           ; $40b5: $d3
	sub a                                            ; $40b6: $97
	db $e3                                           ; $40b7: $e3
	db $e3                                           ; $40b8: $e3
	rst SubAFromBC                                          ; $40b9: $e7
	rst JumpTable                                          ; $40ba: $c7
	rst JumpTable                                          ; $40bb: $c7
	rst SubAFromBC                                          ; $40bc: $e7

Call_053_40bd:
	rst AddAOntoHL                                          ; $40bd: $ef
	rst AddAOntoHL                                          ; $40be: $ef
	db $d3                                           ; $40bf: $d3
	db $eb                                           ; $40c0: $eb
	db $eb                                           ; $40c1: $eb
	ld l, e                                          ; $40c2: $6b
	ld e, a                                          ; $40c3: $5f
	sbc $be                                          ; $40c4: $de $be
	sbc d                                            ; $40c6: $9a
	ld h, $36                                        ; $40c7: $26 $36
	ld [hl], $b6                                     ; $40c9: $36 $b6
	or [hl]                                          ; $40cb: $b6
	sbc $77                                          ; $40cc: $de $77
	add a                                            ; $40ce: $87
	ld e, d                                          ; $40cf: $5a
	sbc [hl]                                         ; $40d0: $9e
	or h                                             ; $40d1: $b4
	scf                                              ; $40d2: $37
	ld [hl], a                                       ; $40d3: $77
	ld [hl], e                                       ; $40d4: $73
	ld a, c                                          ; $40d5: $79
	ld a, l                                          ; $40d6: $7d
	inc a                                            ; $40d7: $3c
	ld a, c                                          ; $40d8: $79
	ld a, e                                          ; $40d9: $7b
	ld sp, hl                                        ; $40da: $f9
	ld sp, hl                                        ; $40db: $f9
	db $fd                                           ; $40dc: $fd
	rst $38                                          ; $40dd: $ff
	rst $38                                          ; $40de: $ff
	ccf                                              ; $40df: $3f
	ld a, a                                          ; $40e0: $7f
	ld l, a                                          ; $40e1: $6f
	or a                                             ; $40e2: $b7
	di                                               ; $40e3: $f3
	ld a, l                                          ; $40e4: $7d
	ld a, e                                          ; $40e5: $7b
	cp d                                             ; $40e6: $ba
	db $dd                                           ; $40e7: $dd
	ld a, a                                          ; $40e8: $7f
	sbc e                                            ; $40e9: $9b
	ccf                                              ; $40ea: $3f
	cp e                                             ; $40eb: $bb
	sbc l                                            ; $40ec: $9d
	db $dd                                           ; $40ed: $dd
	db $dd                                           ; $40ee: $dd
	ldh [$dd], a                                     ; $40ef: $e0 $dd
	ldh a, [$7b]                                     ; $40f1: $f0 $7b
	add hl, bc                                       ; $40f3: $09

jr_053_40f4:
	rst SubAFromDE                                          ; $40f4: $df
	ret nz                                           ; $40f5: $c0

	sbc $e0                                          ; $40f6: $de $e0
	sub l                                            ; $40f8: $95
	ldh a, [c]                                       ; $40f9: $f2
	cp $7c                                           ; $40fa: $fe $7c
	jr nc, jr_053_411e                               ; $40fc: $30 $20

	jr nc, jr_053_4130                               ; $40fe: $30 $30

	jr c, jr_053_40f4                                ; $4100: $38 $f2

	ld a, [hl]                                       ; $4102: $7e
	ld a, e                                          ; $4103: $7b
	ld hl, sp-$21                                    ; $4104: $f8 $df
	db $10                                           ; $4106: $10
	sbc b                                            ; $4107: $98
	ld [$0f0f], sp                                   ; $4108: $08 $0f $0f
	rra                                              ; $410b: $1f
	ccf                                              ; $410c: $3f
	rra                                              ; $410d: $1f
	rlca                                             ; $410e: $07
	ld e, h                                          ; $410f: $5c
	call c, $ffda                                    ; $4110: $dc $da $ff
	ld a, h                                          ; $4113: $7c
	or b                                             ; $4114: $b0
	ld d, e                                          ; $4115: $53
	ldh a, [$9d]                                     ; $4116: $f0 $9d
	cp $f8                                           ; $4118: $fe $f8
	ld e, [hl]                                       ; $411a: $5e
	or b                                             ; $411b: $b0
	ld a, a                                          ; $411c: $7f
	db $f4                                           ; $411d: $f4

jr_053_411e:
	ld a, b                                          ; $411e: $78
	sub [hl]                                         ; $411f: $96
	ld e, [hl]                                       ; $4120: $5e
	rst JumpTable                                          ; $4121: $c7
	ld a, l                                          ; $4122: $7d
	sub d                                            ; $4123: $92
	sbc $02                                          ; $4124: $de $02
	rst SubAFromDE                                          ; $4126: $df
	inc b                                            ; $4127: $04
	rst SubAFromDE                                          ; $4128: $df
	ld bc, $03dd                                     ; $4129: $01 $dd $03
	rst SubAFromDE                                          ; $412c: $df
	rlca                                             ; $412d: $07
	sbc h                                            ; $412e: $9c
	ld a, [hl-]                                      ; $412f: $3a

jr_053_4130:
	jr z, @+$2a                                      ; $4130: $28 $28

	sbc $11                                          ; $4132: $de $11
	sbc d                                            ; $4134: $9a
	ld hl, $cd23                                     ; $4135: $21 $23 $cd
	rst SubAFromDE                                          ; $4138: $df
	rst SubAFromDE                                          ; $4139: $df
	call c, $9dff                                    ; $413a: $dc $ff $9d
	ret                                              ; $413d: $c9


	sub c                                            ; $413e: $91
	sbc $92                                          ; $413f: $de $92
	sbc h                                            ; $4141: $9c
	sub h                                            ; $4142: $94
	push de                                          ; $4143: $d5
	push de                                          ; $4144: $d5
	reti                                             ; $4145: $d9


	rst $38                                          ; $4146: $ff
	rst SubAFromDE                                          ; $4147: $df
	ld l, $9c                                        ; $4148: $2e $9c
	ld h, h                                          ; $414a: $64
	ld c, e                                          ; $414b: $4b
	ld e, h                                          ; $414c: $5c
	sbc $ff                                          ; $414d: $de $ff
	sbc l                                            ; $414f: $9d
	di                                               ; $4150: $f3
	rst FarCall                                          ; $4151: $f7
	ld [hl], l                                       ; $4152: $75
	add h                                            ; $4153: $84
	add h                                            ; $4154: $84
	ret nz                                           ; $4155: $c0

	add e                                            ; $4156: $83
	xor $ea                                          ; $4157: $ee $ea
	and $ee                                          ; $4159: $e6 $ee
	ld d, [hl]                                       ; $415b: $56
	cp $fc                                           ; $415c: $fe $fc
	db $dd                                           ; $415e: $dd
	inc sp                                           ; $415f: $33
	ld [hl], a                                       ; $4160: $77
	rst $38                                          ; $4161: $ff
	ei                                               ; $4162: $fb
	ei                                               ; $4163: $fb
	ld a, e                                          ; $4164: $7b
	add a                                            ; $4165: $87
	rst SubAFromBC                                          ; $4166: $e7
	ld h, e                                          ; $4167: $63
	and e                                            ; $4168: $a3
	and e                                            ; $4169: $a3
	db $e3                                           ; $416a: $e3
	ld h, l                                          ; $416b: $65
	rst AddAOntoHL                                          ; $416c: $ef
	ld [$b9ec], a                                    ; $416d: $ea $ec $b9
	sbc $79                                          ; $4170: $de $79
	sub c                                            ; $4172: $91
	ei                                               ; $4173: $fb
	or e                                             ; $4174: $b3
	or a                                             ; $4175: $b7
	scf                                              ; $4176: $37
	inc hl                                           ; $4177: $23
	ld h, $64                                        ; $4178: $26 $64
	ld h, h                                          ; $417a: $64
	ld l, h                                          ; $417b: $6c
	dec l                                            ; $417c: $2d
	ld d, l                                          ; $417d: $55
	jp z, $b4b4                                      ; $417e: $ca $b4 $b4

	sbc $b6                                          ; $4181: $de $b6
	sub c                                            ; $4183: $91
	or $ee                                           ; $4184: $f6 $ee
	db $fd                                           ; $4186: $fd
	ld a, $18                                        ; $4187: $3e $18
	add h                                            ; $4189: $84
	xor h                                            ; $418a: $ac
	xor h                                            ; $418b: $ac
	db $ec                                           ; $418c: $ec
	db $ec                                           ; $418d: $ec
	db $f4                                           ; $418e: $f4
	adc [hl]                                         ; $418f: $8e
	xor b                                            ; $4190: $a8
	xor h                                            ; $4191: $ac
	db $dd                                           ; $4192: $dd
	and h                                            ; $4193: $a4
	add a                                            ; $4194: $87
	xor h                                            ; $4195: $ac
	ld h, a                                          ; $4196: $67
	daa                                              ; $4197: $27
	ld l, a                                          ; $4198: $6f
	db $dd                                           ; $4199: $dd
	ld sp, hl                                        ; $419a: $f9
	pop af                                           ; $419b: $f1
	ld [hl], d                                       ; $419c: $72
	ldh [c], a                                       ; $419d: $e2
	ld a, a                                          ; $419e: $7f
	ccf                                              ; $419f: $3f
	ld a, a                                          ; $41a0: $7f
	db $fd                                           ; $41a1: $fd
	ld sp, hl                                        ; $41a2: $f9
	pop af                                           ; $41a3: $f1
	ld [hl], e                                       ; $41a4: $73
	db $e3                                           ; $41a5: $e3
	pop af                                           ; $41a6: $f1
	pop de                                           ; $41a7: $d1
	reti                                             ; $41a8: $d9


	sub e                                            ; $41a9: $93
	or c                                             ; $41aa: $b1
	add hl, sp                                       ; $41ab: $39
	add hl, sp                                       ; $41ac: $39
	ld a, d                                          ; $41ad: $7a
	or $db                                           ; $41ae: $f6 $db
	rst $38                                          ; $41b0: $ff
	sbc h                                            ; $41b1: $9c
	sub a                                            ; $41b2: $97
	add [hl]                                         ; $41b3: $86
	add $dd                                          ; $41b4: $c6 $dd
	and $9d                                          ; $41b6: $e6 $9d
	or $ef                                           ; $41b8: $f6 $ef
	jp c, $96ff                                      ; $41ba: $da $ff $96

	cp a                                             ; $41bd: $bf
	and a                                            ; $41be: $a7
	daa                                              ; $41bf: $27
	daa                                              ; $41c0: $27
	inc sp                                           ; $41c1: $33
	ld [hl], c                                       ; $41c2: $71
	ld sp, hl                                        ; $41c3: $f9
	db $ed                                           ; $41c4: $ed
	ld [hl], a                                       ; $41c5: $77
	ld l, c                                          ; $41c6: $69
	ret c                                            ; $41c7: $d8

	sbc c                                            ; $41c8: $99
	ld a, l                                          ; $41c9: $7d
	ld a, c                                          ; $41ca: $79
	jr nc, @-$46                                     ; $41cb: $30 $b8

	sbc l                                            ; $41cd: $9d
	db $fd                                           ; $41ce: $fd
	ld h, e                                          ; $41cf: $63
	pop de                                           ; $41d0: $d1
	sub e                                            ; $41d1: $93
	rst $38                                          ; $41d2: $ff
	xor a                                            ; $41d3: $af
	db $fd                                           ; $41d4: $fd
	push de                                          ; $41d5: $d5
	call nz, $eccc                                   ; $41d6: $c4 $cc $ec
	db $fd                                           ; $41d9: $fd
	db $fd                                           ; $41da: $fd
	call c, $eece                                    ; $41db: $dc $ce $ee
	ld l, b                                          ; $41de: $68
	add l                                            ; $41df: $85
	rst SubAFromDE                                          ; $41e0: $df
	ld hl, sp-$65                                    ; $41e1: $f8 $9b
	db $fc                                           ; $41e3: $fc
	cp h                                             ; $41e4: $bc
	call c, Call_053_76cc                            ; $41e5: $dc $cc $76
	cp e                                             ; $41e8: $bb
	adc [hl]                                         ; $41e9: $8e
	ld hl, sp-$48                                    ; $41ea: $f8 $b8
	ret c                                            ; $41ec: $d8

	call z, $1c18                                    ; $41ed: $cc $18 $1c
	inc c                                            ; $41f0: $0c
	ld c, $0e                                        ; $41f1: $0e $0e
	rrca                                             ; $41f3: $0f
	rlca                                             ; $41f4: $07
	rlca                                             ; $41f5: $07
	ld [$0404], sp                                   ; $41f6: $08 $04 $04
	ld [bc], a                                       ; $41f9: $02
	ld [bc], a                                       ; $41fa: $02
	ld [hl], c                                       ; $41fb: $71
	ld l, [hl]                                       ; $41fc: $6e
	db $fd                                           ; $41fd: $fd
	ld a, [hl]                                       ; $41fe: $7e
	inc sp                                           ; $41ff: $33
	ld sp, hl                                        ; $4200: $f9
	ld a, [hl]                                       ; $4201: $7e
	or h                                             ; $4202: $b4
	ld a, a                                          ; $4203: $7f
	db $f4                                           ; $4204: $f4
	sbc [hl]                                         ; $4205: $9e
	ccf                                              ; $4206: $3f
	ld e, c                                          ; $4207: $59
	sub b                                            ; $4208: $90
	ld a, [hl]                                       ; $4209: $7e
	call nc, $e09d                                   ; $420a: $d4 $9d $e0
	ld hl, sp+$75                                    ; $420d: $f8 $75
	ld a, h                                          ; $420f: $7c
	db $f4                                           ; $4210: $f4
	ld a, e                                          ; $4211: $7b
	db $ec                                           ; $4212: $ec
	ld sp, hl                                        ; $4213: $f9
	rst SubAFromDE                                          ; $4214: $df
	inc b                                            ; $4215: $04
	db $db                                           ; $4216: $db
	ld [$07df], sp                                   ; $4217: $08 $df $07
	db $db                                           ; $421a: $db
	rrca                                             ; $421b: $0f
	rst SubAFromDE                                          ; $421c: $df
	inc hl                                           ; $421d: $23
	sbc h                                            ; $421e: $9c
	ld b, e                                          ; $421f: $43
	ld b, a                                          ; $4220: $47

jr_053_4221:
	ld b, a                                          ; $4221: $47
	sbc $45                                          ; $4222: $de $45
	reti                                             ; $4224: $d9


	rst $38                                          ; $4225: $ff
	ld a, a                                          ; $4226: $7f
	dec hl                                           ; $4227: $2b
	add l                                            ; $4228: $85
	cp c                                             ; $4229: $b9
	ld c, c                                          ; $422a: $49
	sbc l                                            ; $422b: $9d
	cp l                                             ; $422c: $bd
	sbc a                                            ; $422d: $9f
	cpl                                              ; $422e: $2f
	rst $38                                          ; $422f: $ff
	rst $38                                          ; $4230: $ff
	adc $8e                                          ; $4231: $ce $8e
	ld d, $16                                        ; $4233: $16 $16
	ld [hl-], a                                      ; $4235: $32
	cp d                                             ; $4236: $ba
	rst AddAOntoHL                                          ; $4237: $ef
	cp $fc                                           ; $4238: $fe $fc
	ld hl, sp-$11                                    ; $423a: $f8 $ef
	db $eb                                           ; $423c: $eb
	db $e3                                           ; $423d: $e3
	ld l, b                                          ; $423e: $68
	rra                                              ; $423f: $1f
	ld a, a                                          ; $4240: $7f
	inc [hl]                                         ; $4241: $34
	jr z, jr_053_4221                                ; $4242: $28 $dd

	rrca                                             ; $4244: $0f
	adc l                                            ; $4245: $8d
	rst AddAOntoHL                                          ; $4246: $ef
	ld a, a                                          ; $4247: $7f
	rst $38                                          ; $4248: $ff
	rst AddAOntoHL                                          ; $4249: $ef
	sbc a                                            ; $424a: $9f
	adc a                                            ; $424b: $8f
	ld b, e                                          ; $424c: $43
	add b                                            ; $424d: $80
	or $f0                                           ; $424e: $f6 $f0
	ld [hl], b                                       ; $4250: $70
	ret nc                                           ; $4251: $d0

	ret nz                                           ; $4252: $c0

	ret nz                                           ; $4253: $c0

	add b                                            ; $4254: $80
	add b                                            ; $4255: $80
	rst SubAFromBC                                          ; $4256: $e7
	ld [$ffde], a                                    ; $4257: $ea $de $ff
	adc b                                            ; $425a: $88
	db $fc                                           ; $425b: $fc
	call nz, $3f0f                                   ; $425c: $c4 $0f $3f
	ccf                                              ; $425f: $3f
	jr nc, jr_053_4269                               ; $4260: $30 $07

	rrca                                             ; $4262: $0f
	inc b                                            ; $4263: $04
	inc b                                            ; $4264: $04
	rrca                                             ; $4265: $0f
	sbc e                                            ; $4266: $9b
	ei                                               ; $4267: $fb
	ld sp, hl                                        ; $4268: $f9

jr_053_4269:
	ld [hl], d                                       ; $4269: $72
	or [hl]                                          ; $426a: $b6
	db $fc                                           ; $426b: $fc
	ld e, c                                          ; $426c: $59
	ld [hl], a                                       ; $426d: $77
	db $fd                                           ; $426e: $fd
	db $fd                                           ; $426f: $fd
	ccf                                              ; $4270: $3f
	cp a                                             ; $4271: $bf
	halt                                             ; $4272: $76
	ld l, l                                          ; $4273: $6d
	sub d                                            ; $4274: $92
	db $f4                                           ; $4275: $f4
	xor c                                            ; $4276: $a9
	ld c, e                                          ; $4277: $4b
	ld e, c                                          ; $4278: $59
	and b                                            ; $4279: $a0
	ret nz                                           ; $427a: $c0

	add b                                            ; $427b: $80
	nop                                              ; $427c: $00
	inc l                                            ; $427d: $2c
	ld a, c                                          ; $427e: $79
	ei                                               ; $427f: $fb
	ld sp, hl                                        ; $4280: $f9
	ldh [$7b], a                                     ; $4281: $e0 $7b
	ld hl, sp-$68                                    ; $4283: $f8 $98
	db $e3                                           ; $4285: $e3
	rst JumpTable                                          ; $4286: $c7
	ld b, a                                          ; $4287: $47
	ld c, a                                          ; $4288: $4f
	dec c                                            ; $4289: $0d
	add hl, bc                                       ; $428a: $09
	ld [$f863], sp                                   ; $428b: $08 $63 $f8
	ld a, d                                          ; $428e: $7a
	inc d                                            ; $428f: $14
	sbc d                                            ; $4290: $9a
	cp $3f                                           ; $4291: $fe $3f
	ccf                                              ; $4293: $3f
	rra                                              ; $4294: $1f
	rrca                                             ; $4295: $0f
	sbc $ff                                          ; $4296: $de $ff
	sub d                                            ; $4298: $92
	rst FarCall                                          ; $4299: $f7
	ld h, $22                                        ; $429a: $26 $22
	ld [de], a                                       ; $429c: $12
	ld a, [bc]                                       ; $429d: $0a
	cp a                                             ; $429e: $bf
	cp e                                             ; $429f: $bb
	xor e                                            ; $42a0: $ab
	xor d                                            ; $42a1: $aa
	xor e                                            ; $42a2: $ab
	rst AddAOntoHL                                          ; $42a3: $ef
	db $fc                                           ; $42a4: $fc
	sub b                                            ; $42a5: $90
	ld [hl], c                                       ; $42a6: $71
	ld a, [$ba95]                                    ; $42a7: $fa $95 $ba
	xor d                                            ; $42aa: $aa
	xor b                                            ; $42ab: $a8
	xor a                                            ; $42ac: $af
	xor [hl]                                         ; $42ad: $ae
	xor d                                            ; $42ae: $aa
	xor d                                            ; $42af: $aa
	rst $38                                          ; $42b0: $ff
	di                                               ; $42b1: $f3
	ld d, b                                          ; $42b2: $50
	ld [hl], c                                       ; $42b3: $71
	add sp, -$65                                     ; $42b4: $e8 $9b
	xor d                                            ; $42b6: $aa
	cp d                                             ; $42b7: $ba
	or d                                             ; $42b8: $b2
	nop                                              ; $42b9: $00
	sbc $bb                                          ; $42ba: $de $bb
	rst SubAFromDE                                          ; $42bc: $df
	xor d                                            ; $42bd: $aa
	sbc h                                            ; $42be: $9c
	db $eb                                           ; $42bf: $eb
	rst $38                                          ; $42c0: $ff
	inc a                                            ; $42c1: $3c
	call c, $9eff                                    ; $42c2: $dc $ff $9e
	cp [hl]                                          ; $42c5: $be
	ld a, e                                          ; $42c6: $7b
	db $e4                                           ; $42c7: $e4
	sbc $bf                                          ; $42c8: $de $bf
	rst SubAFromDE                                          ; $42ca: $df
	cp $9e                                           ; $42cb: $fe $9e
	call c, $f077                                    ; $42cd: $dc $77 $f0
	adc d                                            ; $42d0: $8a
	ei                                               ; $42d1: $fb
	cp d                                             ; $42d2: $ba
	or d                                             ; $42d3: $b2
	or h                                             ; $42d4: $b4
	sub h                                            ; $42d5: $94
	and $76                                          ; $42d6: $e6 $76
	cp [hl]                                          ; $42d8: $be
	add a                                            ; $42d9: $87
	rst JumpTable                                          ; $42da: $c7
	rlca                                             ; $42db: $07
	rrca                                             ; $42dc: $0f
	inc e                                            ; $42dd: $1c
	db $e4                                           ; $42de: $e4
	ld [hl], h                                       ; $42df: $74
	cp h                                             ; $42e0: $bc
	add h                                            ; $42e1: $84
	call nz, $0804                                   ; $42e2: $c4 $04 $08
	db $10                                           ; $42e5: $10
	ld a, b                                          ; $42e6: $78
	ld sp, $019c                                     ; $42e7: $31 $9c $01
	pop bc                                           ; $42ea: $c1
	pop bc                                           ; $42eb: $c1
	ld e, h                                          ; $42ec: $5c
	ld d, b                                          ; $42ed: $50
	sbc c                                            ; $42ee: $99
	cp a                                             ; $42ef: $bf
	sbc a                                            ; $42f0: $9f
	adc a                                            ; $42f1: $8f
	rst JumpTable                                          ; $42f2: $c7
	jp Jump_053_77c1                                 ; $42f3: $c3 $c1 $77


	ld b, [hl]                                       ; $42f6: $46
	sbc [hl]                                         ; $42f7: $9e
	add b                                            ; $42f8: $80
	call c, Call_053_6940                            ; $42f9: $dc $40 $69
	add c                                            ; $42fc: $81
	sbc [hl]                                         ; $42fd: $9e
	ccf                                              ; $42fe: $3f
	ld bc, $fa80                                     ; $42ff: $01 $80 $fa
	db $db                                           ; $4302: $db
	ld [$177b], sp                                   ; $4303: $08 $7b $17
	call c, $df0f                                    ; $4306: $dc $0f $df
	rlca                                             ; $4309: $07
	sbc [hl]                                         ; $430a: $9e
	adc l                                            ; $430b: $8d
	db $db                                           ; $430c: $db
	adc c                                            ; $430d: $89
	sbc [hl]                                         ; $430e: $9e
	adc b                                            ; $430f: $88
	reti                                             ; $4310: $d9


	rst $38                                          ; $4311: $ff
	adc d                                            ; $4312: $8a
	rst SubAFromDE                                          ; $4313: $df
	cp [hl]                                          ; $4314: $be
	sbc $36                                          ; $4315: $de $36
	ccf                                              ; $4317: $3f
	cpl                                              ; $4318: $2f
	daa                                              ; $4319: $27
	sub [hl]                                         ; $431a: $96
	cp b                                             ; $431b: $b8
	ret z                                            ; $431c: $c8

	ldh [$f8], a                                     ; $431d: $e0 $f8
	db $fd                                           ; $431f: $fd
	db $fc                                           ; $4320: $fc
	cp $ff                                           ; $4321: $fe $ff
	add hl, sp                                       ; $4323: $39
	jr nz, jr_053_4346                               ; $4324: $20 $20

	ldh a, [rSVBK]                                   ; $4326: $f0 $70
	ld a, d                                          ; $4328: $7a
	dec hl                                           ; $4329: $2b
	sbc e                                            ; $432a: $9b
	ld b, a                                          ; $432b: $47
	ld b, b                                          ; $432c: $40
	ld b, b                                          ; $432d: $40
	add b                                            ; $432e: $80
	ld [hl], a                                       ; $432f: $77
	cp c                                             ; $4330: $b9
	sbc [hl]                                         ; $4331: $9e
	ret nz                                           ; $4332: $c0

	ld [hl], c                                       ; $4333: $71
	inc a                                            ; $4334: $3c
	sbc [hl]                                         ; $4335: $9e
	jr c, @+$6b                                      ; $4336: $38 $69

	db $10                                           ; $4338: $10
	sub l                                            ; $4339: $95
	inc e                                            ; $433a: $1c
	ccf                                              ; $433b: $3f
	rlca                                             ; $433c: $07
	ld [bc], a                                       ; $433d: $02
	add hl, de                                       ; $433e: $19
	adc a                                            ; $433f: $8f
	add b                                            ; $4340: $80
	ld b, b                                          ; $4341: $40
	nop                                              ; $4342: $00
	nop                                              ; $4343: $00
	sbc $0f                                          ; $4344: $de $0f

jr_053_4346:
	sbc l                                            ; $4346: $9d
	ld b, $40                                        ; $4347: $06 $40
	ld a, e                                          ; $4349: $7b
	db $e3                                           ; $434a: $e3
	adc a                                            ; $434b: $8f
	db $fc                                           ; $434c: $fc
	jr c, jr_053_4387                                ; $434d: $38 $38

	ld a, b                                          ; $434f: $78
	ld e, b                                          ; $4350: $58
	ld hl, sp-$58                                    ; $4351: $f8 $a8
	or b                                             ; $4353: $b0
	call c, $3818                                    ; $4354: $dc $18 $38
	jr z, jr_053_43c1                                ; $4357: $28 $68

	ld c, b                                          ; $4359: $48
	ret c                                            ; $435a: $d8

	ret nc                                           ; $435b: $d0

	ld [$bf64], a                                    ; $435c: $ea $64 $bf
	sbc d                                            ; $435f: $9a
	ld bc, $0307                                     ; $4360: $01 $07 $03
	rlca                                             ; $4363: $07
	rrca                                             ; $4364: $0f
	ld [hl], h                                       ; $4365: $74
	scf                                              ; $4366: $37
	adc e                                            ; $4367: $8b
	ld b, $02                                        ; $4368: $06 $02
	rlca                                             ; $436a: $07
	inc c                                            ; $436b: $0c
	inc sp                                           ; $436c: $33
	ld c, h                                          ; $436d: $4c
	or b                                             ; $436e: $b0
	ld b, b                                          ; $436f: $40
	add b                                            ; $4370: $80
	pop bc                                           ; $4371: $c1
	rst $38                                          ; $4372: $ff
	inc bc                                           ; $4373: $03
	rst $38                                          ; $4374: $ff
	rst $38                                          ; $4375: $ff
	ret nz                                           ; $4376: $c0

	add c                                            ; $4377: $81
	nop                                              ; $4378: $00
	ld bc, $00ff                                     ; $4379: $01 $ff $00
	ld [hl], l                                       ; $437c: $75
	ei                                               ; $437d: $fb
	sub [hl]                                         ; $437e: $96
	and l                                            ; $437f: $a5
	rst $38                                          ; $4380: $ff
	rst $38                                          ; $4381: $ff
	pop bc                                           ; $4382: $c1
	ld h, b                                          ; $4383: $60
	ret nc                                           ; $4384: $d0

	add sp, -$02                                     ; $4385: $e8 $fe

jr_053_4387:
	jp $ffde                                         ; $4387: $c3 $de $ff


	sbc d                                            ; $438a: $9a
	ccf                                              ; $438b: $3f
	rst SubAFromDE                                          ; $438c: $df
	cpl                                              ; $438d: $2f
	rla                                              ; $438e: $17
	nop                                              ; $438f: $00
	ld [hl], h                                       ; $4390: $74
	ld l, e                                          ; $4391: $6b
	sbc e                                            ; $4392: $9b
	ldh [$c1], a                                     ; $4393: $e0 $c1
	rst JumpTable                                          ; $4395: $c7
	jr z, jr_053_440c                                ; $4396: $28 $74

	ld h, b                                          ; $4398: $60
	rst SubAFromDE                                          ; $4399: $df
	ret nz                                           ; $439a: $c0

	sbc c                                            ; $439b: $99
	add c                                            ; $439c: $81
	jr c, jr_053_43cf                                ; $439d: $38 $30

	ld hl, $4f67                                     ; $439f: $21 $67 $4f
	sbc $ff                                          ; $43a2: $de $ff
	adc a                                            ; $43a4: $8f
	jr z, jr_053_43d7                                ; $43a5: $28 $30

	ld hl, $4c27                                     ; $43a7: $21 $27 $4c
	ld a, b                                          ; $43aa: $78
	ret c                                            ; $43ab: $d8

	ret c                                            ; $43ac: $d8

	ld [hl], b                                       ; $43ad: $70
	sub b                                            ; $43ae: $90
	ld [$c284], sp                                   ; $43af: $08 $84 $c2
	pop hl                                           ; $43b2: $e1
	ldh a, [$f8]                                     ; $43b3: $f0 $f8
	ld a, e                                          ; $43b5: $7b
	ld c, h                                          ; $43b6: $4c
	sbc l                                            ; $43b7: $9d
	db $fc                                           ; $43b8: $fc
	ld a, [hl]                                       ; $43b9: $7e
	ld a, d                                          ; $43ba: $7a
	ld l, b                                          ; $43bb: $68
	ld a, a                                          ; $43bc: $7f
	and d                                            ; $43bd: $a2
	ld a, h                                          ; $43be: $7c
	ld d, b                                          ; $43bf: $50
	ld a, d                                          ; $43c0: $7a

jr_053_43c1:
	ldh a, [$9e]                                     ; $43c1: $f0 $9e
	db $fc                                           ; $43c3: $fc
	ld [hl], e                                       ; $43c4: $73
	ld c, c                                          ; $43c5: $49
	sbc h                                            ; $43c6: $9c
	ld bc, $c482                                     ; $43c7: $01 $82 $c4
	halt                                             ; $43ca: $76
	add $7d                                          ; $43cb: $c6 $7d
	add c                                            ; $43cd: $81
	sbc h                                            ; $43ce: $9c

jr_053_43cf:
	rlca                                             ; $43cf: $07
	rra                                              ; $43d0: $1f
	ld b, b                                          ; $43d1: $40
	ld [hl], a                                       ; $43d2: $77
	ld hl, sp+$75                                    ; $43d3: $f8 $75
	add b                                            ; $43d5: $80
	ld a, a                                          ; $43d6: $7f

jr_053_43d7:
	ldh [$71], a                                     ; $43d7: $e0 $71
	ld h, $61                                        ; $43d9: $26 $61
	add b                                            ; $43db: $80
	ld [hl], c                                       ; $43dc: $71
	add d                                            ; $43dd: $82
	ld d, c                                          ; $43de: $51
	add b                                            ; $43df: $80
	ld [hl], c                                       ; $43e0: $71
	ld l, [hl]                                       ; $43e1: $6e
	ld e, l                                          ; $43e2: $5d
	add b                                            ; $43e3: $80
	ld [hl], l                                       ; $43e4: $75
	add hl, sp                                       ; $43e5: $39
	ld a, b                                          ; $43e6: $78
	ld b, a                                          ; $43e7: $47
	halt                                             ; $43e8: $76
	ld h, a                                          ; $43e9: $67
	ld a, h                                          ; $43ea: $7c
	inc [hl]                                         ; $43eb: $34
	sub a                                            ; $43ec: $97
	inc b                                            ; $43ed: $04
	adc b                                            ; $43ee: $88
	ld c, b                                          ; $43ef: $48
	ld c, h                                          ; $43f0: $4c
	ld c, h                                          ; $43f1: $4c
	ld a, h                                          ; $43f2: $7c
	db $fc                                           ; $43f3: $fc
	cp $6f                                           ; $43f4: $fe $6f
	res 3, h                                         ; $43f6: $cb $9c
	add a                                            ; $43f8: $87
	inc bc                                           ; $43f9: $03
	inc bc                                           ; $43fa: $03
	sbc $93                                          ; $43fb: $de $93
	sbc d                                            ; $43fd: $9a
	adc e                                            ; $43fe: $8b
	ld c, e                                          ; $43ff: $4b
	ld c, e                                          ; $4400: $4b
	dec hl                                           ; $4401: $2b
	dec hl                                           ; $4402: $2b
	ld a, c                                          ; $4403: $79
	jp hl                                            ; $4404: $e9


	db $dd                                           ; $4405: $dd
	cp $7d                                           ; $4406: $fe $7d
	and l                                            ; $4408: $a5
	ld a, e                                          ; $4409: $7b
	db $e4                                           ; $440a: $e4
	adc e                                            ; $440b: $8b

jr_053_440c:
	cp $fb                                           ; $440c: $fe $fb
	db $ed                                           ; $440e: $ed
	or $00                                           ; $440f: $f6 $00
	add b                                            ; $4411: $80
	ld b, b                                          ; $4412: $40
	ld h, b                                          ; $4413: $60
	jr nc, jr_053_4432                               ; $4414: $30 $1c

	rra                                              ; $4416: $1f
	rrca                                             ; $4417: $0f
	ld h, a                                          ; $4418: $67
	ld b, e                                          ; $4419: $43
	ld b, e                                          ; $441a: $43
	ld h, e                                          ; $441b: $63
	ld a, a                                          ; $441c: $7f
	push af                                          ; $441d: $f5
	db $e4                                           ; $441e: $e4
	ret nc                                           ; $441f: $d0

	sbc $7f                                          ; $4420: $de $7f
	rst SubAFromDE                                          ; $4422: $df
	ccf                                              ; $4423: $3f
	add b                                            ; $4424: $80
	ld h, b                                          ; $4425: $60
	and b                                            ; $4426: $a0
	nop                                              ; $4427: $00
	add c                                            ; $4428: $81
	add c                                            ; $4429: $81
	inc bc                                           ; $442a: $03
	ld b, $cc                                        ; $442b: $06 $cc
	ld [hl], b                                       ; $442d: $70
	jr nz, jr_053_4469                               ; $442e: $20 $39

	add b                                            ; $4430: $80
	add c                                            ; $4431: $81

jr_053_4432:
	ld bc, $cf03                                     ; $4432: $01 $03 $cf
	ld a, a                                          ; $4435: $7f
	ccf                                              ; $4436: $3f
	rra                                              ; $4437: $1f
	ldh a, [$f0]                                     ; $4438: $f0 $f0
	ld h, b                                          ; $443a: $60
	and b                                            ; $443b: $a0
	ret nz                                           ; $443c: $c0

	ld b, b                                          ; $443d: $40
	add b                                            ; $443e: $80
	nop                                              ; $443f: $00
	sub b                                            ; $4440: $90
	sub b                                            ; $4441: $90
	and b                                            ; $4442: $a0
	ld h, b                                          ; $4443: $60
	ld a, e                                          ; $4444: $7b
	ld e, h                                          ; $4445: $5c
	ldh a, [$7b]                                     ; $4446: $f0 $7b
	add [hl]                                         ; $4448: $86
	rst SubAFromDE                                          ; $4449: $df
	rrca                                             ; $444a: $0f
	rst SubAFromDE                                          ; $444b: $df
	rra                                              ; $444c: $1f
	sbc c                                            ; $444d: $99
	rla                                              ; $444e: $17
	ld [bc], a                                       ; $444f: $02
	dec b                                            ; $4450: $05
	dec b                                            ; $4451: $05
	ld a, [bc]                                       ; $4452: $0a
	ld a, [bc]                                       ; $4453: $0a
	sbc $14                                          ; $4454: $de $14
	ld a, e                                          ; $4456: $7b
	dec h                                            ; $4457: $25
	ld a, l                                          ; $4458: $7d
	cpl                                              ; $4459: $2f
	ld a, c                                          ; $445a: $79
	or [hl]                                          ; $445b: $b6
	ld a, e                                          ; $445c: $7b
	sub $9d                                          ; $445d: $d6 $9d
	dec de                                           ; $445f: $1b
	inc [hl]                                         ; $4460: $34
	ld a, d                                          ; $4461: $7a
	ei                                               ; $4462: $fb
	sub e                                            ; $4463: $93
	rlca                                             ; $4464: $07
	add hl, bc                                       ; $4465: $09
	db $fd                                           ; $4466: $fd
	db $e3                                           ; $4467: $e3
	ret nz                                           ; $4468: $c0

jr_053_4469:
	add e                                            ; $4469: $83
	inc bc                                           ; $446a: $03
	nop                                              ; $446b: $00
	ld b, $0f                                        ; $446c: $06 $0f
	rst $38                                          ; $446e: $ff
	rra                                              ; $446f: $1f
	halt                                             ; $4470: $76
	xor b                                            ; $4471: $a8
	ld [hl], l                                       ; $4472: $75
	ld l, b                                          ; $4473: $68
	add e                                            ; $4474: $83
	ld h, e                                          ; $4475: $63
	inc hl                                           ; $4476: $23
	ld h, a                                          ; $4477: $67
	ld a, a                                          ; $4478: $7f
	ld a, [bc]                                       ; $4479: $0a
	dec b                                            ; $447a: $05
	dec b                                            ; $447b: $05
	add d                                            ; $447c: $82
	jp nz, $a1e1                                     ; $447d: $c2 $e1 $a1

	sub c                                            ; $4480: $91
	ld c, $fe                                        ; $4481: $0e $fe
	db $fc                                           ; $4483: $fc
	db $fd                                           ; $4484: $fd
	ld sp, hl                                        ; $4485: $f9
	di                                               ; $4486: $f3
	rst SubAFromBC                                          ; $4487: $e7
	ld c, a                                          ; $4488: $4f
	rlca                                             ; $4489: $07
	rra                                              ; $448a: $1f
	rst $38                                          ; $448b: $ff
	rst FarCall                                          ; $448c: $f7
	rst GetHLinHL                                          ; $448d: $cf
	ld e, [hl]                                       ; $448e: $5e
	ld a, h                                          ; $448f: $7c
	ld a, b                                          ; $4490: $78
	reti                                             ; $4491: $d9


	rst $38                                          ; $4492: $ff
	sub a                                            ; $4493: $97
	call nc, $9694                                   ; $4494: $d4 $94 $96
	ld d, $13                                        ; $4497: $16 $13
	inc de                                           ; $4499: $13
	ld de, $7a11                                     ; $449a: $11 $11 $7a
	dec c                                            ; $449d: $0d
	call c, Call_053_7fff                            ; $449e: $dc $ff $7f
	ld hl, $5478                                     ; $44a1: $21 $78 $54
	sbc $80                                          ; $44a4: $de $80
	sub [hl]                                         ; $44a6: $96
	ld a, b                                          ; $44a7: $78
	jr nc, jr_053_44ba                               ; $44a8: $30 $10

	ld [$d888], sp                                   ; $44aa: $08 $88 $d8
	ldh a, [$c0]                                     ; $44ad: $f0 $c0
	ld hl, sp+$78                                    ; $44af: $f8 $78
	ld sp, $f89a                                     ; $44b1: $31 $9a $f8
	ld a, b                                          ; $44b4: $78
	ld [hl], b                                       ; $44b5: $70
	ret nz                                           ; $44b6: $c0

	ld a, a                                          ; $44b7: $7f
	ld a, c                                          ; $44b8: $79
	sub h                                            ; $44b9: $94

jr_053_44ba:
	ld a, [hl]                                       ; $44ba: $7e
	xor e                                            ; $44bb: $ab
	ld h, [hl]                                       ; $44bc: $66
	ld b, c                                          ; $44bd: $41
	ld h, l                                          ; $44be: $65
	sub b                                            ; $44bf: $90
	ld a, a                                          ; $44c0: $7f
	db $eb                                           ; $44c1: $eb
	ld d, a                                          ; $44c2: $57
	ldh a, [$79]                                     ; $44c3: $f0 $79
	adc [hl]                                         ; $44c5: $8e
	ld e, l                                          ; $44c6: $5d
	add b                                            ; $44c7: $80
	ld d, c                                          ; $44c8: $51
	add d                                            ; $44c9: $82
	rst $38                                          ; $44ca: $ff
	ld [hl], e                                       ; $44cb: $73
	ld b, d                                          ; $44cc: $42
	sbc $3f                                          ; $44cd: $de $3f
	ld a, b                                          ; $44cf: $78
	add hl, sp                                       ; $44d0: $39
	rst SubAFromDE                                          ; $44d1: $df
	db $10                                           ; $44d2: $10
	sbc $20                                          ; $44d3: $de $20
	ld l, l                                          ; $44d5: $6d
	ld d, c                                          ; $44d6: $51
	rst SubAFromDE                                          ; $44d7: $df
	cp $7b                                           ; $44d8: $fe $7b
	sub d                                            ; $44da: $92
	sbc [hl]                                         ; $44db: $9e
	inc b                                            ; $44dc: $04
	sbc $24                                          ; $44dd: $de $24
	sub [hl]                                         ; $44df: $96
	inc d                                            ; $44e0: $14
	inc [hl]                                         ; $44e1: $34
	inc d                                            ; $44e2: $14
	sub h                                            ; $44e3: $94
	sub h                                            ; $44e4: $94
	ld c, b                                          ; $44e5: $48
	ld c, b                                          ; $44e6: $48
	jr z, @+$1b                                      ; $44e7: $28 $19

	db $dd                                           ; $44e9: $dd
	db $fc                                           ; $44ea: $fc
	rst SubAFromDE                                          ; $44eb: $df
	ld a, b                                          ; $44ec: $78
	adc l                                            ; $44ed: $8d
	jr c, jr_053_4509                                ; $44ee: $38 $19

	di                                               ; $44f0: $f3
	ld a, e                                          ; $44f1: $7b
	ccf                                              ; $44f2: $3f
	inc e                                            ; $44f3: $1c
	inc l                                            ; $44f4: $2c
	ld b, h                                          ; $44f5: $44
	sub d                                            ; $44f6: $92
	sub c                                            ; $44f7: $91
	adc a                                            ; $44f8: $8f
	ld b, a                                          ; $44f9: $47
	ld h, $18                                        ; $44fa: $26 $18
	jr c, @+$7e                                      ; $44fc: $38 $7c

	or $db                                           ; $44fe: $f6 $db
	ld a, d                                          ; $4500: $7a
	ld bc, $707d                                     ; $4501: $01 $7d $70
	sbc h                                            ; $4504: $9c
	ld a, b                                          ; $4505: $78
	ld a, h                                          ; $4506: $7c
	ld a, $6d                                        ; $4507: $3e $6d

jr_053_4509:
	nop                                              ; $4509: $00
	sbc b                                            ; $450a: $98
	jr nz, jr_053_453d                               ; $450b: $20 $30

	ld e, $16                                        ; $450d: $1e $16
	ld d, $15                                        ; $450f: $16 $15
	dec b                                            ; $4511: $05
	sbc $08                                          ; $4512: $de $08
	sbc d                                            ; $4514: $9a
	ld d, $06                                        ; $4515: $16 $06
	ld b, $0d                                        ; $4517: $06 $0d
	dec c                                            ; $4519: $0d
	sbc $08                                          ; $451a: $de $08
	ld l, [hl]                                       ; $451c: $6e
	ld c, [hl]                                       ; $451d: $4e
	ld [hl], l                                       ; $451e: $75
	ld l, [hl]                                       ; $451f: $6e
	ld e, e                                          ; $4520: $5b
	ld hl, sp-$0a                                    ; $4521: $f8 $f6
	rst SubAFromDE                                          ; $4523: $df
	rla                                              ; $4524: $17
	sbc c                                            ; $4525: $99
	ld d, $1c                                        ; $4526: $16 $1c
	ld a, $3e                                        ; $4528: $3e $3e
	ccf                                              ; $452a: $3f
	ccf                                              ; $452b: $3f
	db $dd                                           ; $452c: $dd
	inc d                                            ; $452d: $14
	adc a                                            ; $452e: $8f
	inc [hl]                                         ; $452f: $34
	ld a, [hl+]                                      ; $4530: $2a
	ld a, [hl+]                                      ; $4531: $2a
	dec h                                            ; $4532: $25
	db $fc                                           ; $4533: $fc
	ld a, b                                          ; $4534: $78

jr_053_4535:
	ld [hl], b                                       ; $4535: $70
	ld h, b                                          ; $4536: $60
	ld b, b                                          ; $4537: $40
	ld b, b                                          ; $4538: $40
	ldh [$e0], a                                     ; $4539: $e0 $e0
	ld e, e                                          ; $453b: $5b
	ld e, a                                          ; $453c: $5f

jr_053_453d:
	ld c, a                                          ; $453d: $4f
	ld e, a                                          ; $453e: $5f
	halt                                             ; $453f: $76
	ld l, l                                          ; $4540: $6d
	sub a                                            ; $4541: $97
	nop                                              ; $4542: $00
	ld sp, $7f3b                                     ; $4543: $31 $3b $7f
	halt                                             ; $4546: $76
	ld [hl], d                                       ; $4547: $72
	ld d, a                                          ; $4548: $57
	sbc a                                            ; $4549: $9f
	ld a, d                                          ; $454a: $7a
	xor b                                            ; $454b: $a8
	sub a                                            ; $454c: $97
	ld hl, sp-$2b                                    ; $454d: $f8 $d5
	db $d3                                           ; $454f: $d3
	pop de                                           ; $4550: $d1
	sub b                                            ; $4551: $90
	rst $38                                          ; $4552: $ff
	rst GetHLinHL                                          ; $4553: $cf
	adc a                                            ; $4554: $8f
	ld [hl], a                                       ; $4555: $77
	ld c, [hl]                                       ; $4556: $4e
	sub l                                            ; $4557: $95
	cp a                                             ; $4558: $bf
	ld de, $7939                                     ; $4559: $11 $39 $79
	ld sp, hl                                        ; $455c: $f9
	ld a, [$f5f2]                                    ; $455d: $fa $f2 $f5
	push hl                                          ; $4560: $e5
	ld a, a                                          ; $4561: $7f
	ld l, [hl]                                       ; $4562: $6e
	xor h                                            ; $4563: $ac
	sbc l                                            ; $4564: $9d
	ccf                                              ; $4565: $3f
	ld [hl], b                                       ; $4566: $70
	sbc $40                                          ; $4567: $de $40
	ld a, c                                          ; $4569: $79
	cp [hl]                                          ; $456a: $be
	ld a, c                                          ; $456b: $79
	and h                                            ; $456c: $a4
	call c, $9eff                                    ; $456d: $dc $ff $9e
	ldh a, [$de]                                     ; $4570: $f0 $de
	db $10                                           ; $4572: $10
	db $fd                                           ; $4573: $fd
	sbc [hl]                                         ; $4574: $9e
	ldh a, [$75]                                     ; $4575: $f0 $75
	sub h                                            ; $4577: $94
	rst SubAFromDE                                          ; $4578: $df
	ld hl, sp-$21                                    ; $4579: $f8 $df
	ldh a, [$9e]                                     ; $457b: $f0 $9e
	add b                                            ; $457d: $80
	ld a, c                                          ; $457e: $79
	db $e4                                           ; $457f: $e4
	ld [hl], a                                       ; $4580: $77
	dec e                                            ; $4581: $1d
	ld h, a                                          ; $4582: $67
	inc bc                                           ; $4583: $03
	ld c, [hl]                                       ; $4584: $4e
	ld [hl], $7e                                     ; $4585: $36 $7e
	ld h, e                                          ; $4587: $63
	ld sp, hl                                        ; $4588: $f9
	ld a, [hl]                                       ; $4589: $7e
	ld c, $7e                                        ; $458a: $0e $7e
	sub [hl]                                         ; $458c: $96
	ld a, [hl]                                       ; $458d: $7e
	ld [hl], l                                       ; $458e: $75
	ld e, l                                          ; $458f: $5d
	sub b                                            ; $4590: $90
	ld l, d                                          ; $4591: $6a
	add c                                            ; $4592: $81
	ld e, l                                          ; $4593: $5d
	add b                                            ; $4594: $80
	ld a, l                                          ; $4595: $7d
	jr jr_053_4535                                   ; $4596: $18 $9d

	ldh a, [$fd]                                     ; $4598: $f0 $fd
	ld a, c                                          ; $459a: $79
	cp b                                             ; $459b: $b8
	ld [hl], b                                       ; $459c: $70
	db $d3                                           ; $459d: $d3
	sbc $03                                          ; $459e: $de $03
	ld a, a                                          ; $45a0: $7f
	add c                                            ; $45a1: $81
	sub a                                            ; $45a2: $97
	adc a                                            ; $45a3: $8f
	add c                                            ; $45a4: $81
	nop                                              ; $45a5: $00
	nop                                              ; $45a6: $00
	ld b, b                                          ; $45a7: $40
	ret z                                            ; $45a8: $c8

	ld b, b                                          ; $45a9: $40
	ldh a, [$6f]                                     ; $45aa: $f0 $6f
	sub $75                                          ; $45ac: $d6 $75
	sbc h                                            ; $45ae: $9c
	sub d                                            ; $45af: $92
	ld a, a                                          ; $45b0: $7f
	rra                                              ; $45b1: $1f
	ld e, $f0                                        ; $45b2: $1e $f0
	inc d                                            ; $45b4: $14
	jr jr_053_45cf                                   ; $45b5: $18 $18

	sub b                                            ; $45b7: $90
	ldh a, [$f1]                                     ; $45b8: $f0 $f1
	cp $f0                                           ; $45ba: $fe $f0
	rrca                                             ; $45bc: $0f
	ld [hl], h                                       ; $45bd: $74
	xor h                                            ; $45be: $ac
	ld a, d                                          ; $45bf: $7a
	or d                                             ; $45c0: $b2
	sbc [hl]                                         ; $45c1: $9e
	rrca                                             ; $45c2: $0f
	sbc $01                                          ; $45c3: $de $01
	ld a, e                                          ; $45c5: $7b
	ld hl, sp-$75                                    ; $45c6: $f8 $8b
	nop                                              ; $45c8: $00
	jr jr_053_45e3                                   ; $45c9: $18 $18

	inc [hl]                                         ; $45cb: $34
	ld d, h                                          ; $45cc: $54
	ret nc                                           ; $45cd: $d0

	ld [hl], b                                       ; $45ce: $70

jr_053_45cf:
	xor h                                            ; $45cf: $ac
	db $fc                                           ; $45d0: $fc
	cp e                                             ; $45d1: $bb
	dec a                                            ; $45d2: $3d
	ld a, l                                          ; $45d3: $7d
	cp $f8                                           ; $45d4: $fe $f8
	ld a, b                                          ; $45d6: $78
	inc l                                            ; $45d7: $2c
	and h                                            ; $45d8: $a4
	rst $38                                          ; $45d9: $ff
	ld a, a                                          ; $45da: $7f
	rrca                                             ; $45db: $0f
	ld a, c                                          ; $45dc: $79
	ld b, [hl]                                       ; $45dd: $46
	rst SubAFromDE                                          ; $45de: $df
	inc bc                                           ; $45df: $03
	sbc e                                            ; $45e0: $9b
	cp b                                             ; $45e1: $b8
	ld a, h                                          ; $45e2: $7c

jr_053_45e3:
	inc e                                            ; $45e3: $1c
	inc e                                            ; $45e4: $1c
	db $dd                                           ; $45e5: $dd
	ld c, $9d                                        ; $45e6: $0e $9d
	inc b                                            ; $45e8: $04
	adc h                                            ; $45e9: $8c
	sbc $c4                                          ; $45ea: $de $c4
	sbc e                                            ; $45ec: $9b
	add $c2                                          ; $45ed: $c6 $c2
	jp nz, $dd0c                                     ; $45ef: $c2 $0c $dd

	inc b                                            ; $45f2: $04
	sbc $02                                          ; $45f3: $de $02
	db $dd                                           ; $45f5: $dd
	ld b, b                                          ; $45f6: $40
	db $dd                                           ; $45f7: $dd
	jr nz, jr_053_4661                               ; $45f8: $20 $67

	ld hl, sp+$70                                    ; $45fa: $f8 $70
	ret z                                            ; $45fc: $c8

	ld l, b                                          ; $45fd: $68
	ld d, h                                          ; $45fe: $54
	ld [hl], a                                       ; $45ff: $77
	ld hl, sp+$7b                                    ; $4600: $f8 $7b
	nop                                              ; $4602: $00
	ld a, a                                          ; $4603: $7f
	ld c, l                                          ; $4604: $4d
	adc a                                            ; $4605: $8f
	add a                                            ; $4606: $87
	ldh [$98], a                                     ; $4607: $e0 $98
	ld b, l                                          ; $4609: $45
	ld b, d                                          ; $460a: $42
	pop bc                                           ; $460b: $c1
	pop hl                                           ; $460c: $e1
	ld hl, sp-$01                                    ; $460d: $f8 $ff
	rst $38                                          ; $460f: $ff
	sbc a                                            ; $4610: $9f
	ldh a, [$f9]                                     ; $4611: $f0 $f9
	rst $38                                          ; $4613: $ff
	ld hl, sp-$03                                    ; $4614: $f8 $fd
	sbc $ff                                          ; $4616: $de $ff
	sub l                                            ; $4618: $95
	rra                                              ; $4619: $1f
	adc [hl]                                         ; $461a: $8e
	ld b, a                                          ; $461b: $47
	or b                                             ; $461c: $b0
	call z, $fcf3                                    ; $461d: $cc $f3 $fc
	rst $38                                          ; $4620: $ff
	cp a                                             ; $4621: $bf
	cp a                                             ; $4622: $bf
	db $db                                           ; $4623: $db
	rst $38                                          ; $4624: $ff
	sub a                                            ; $4625: $97
	cp b                                             ; $4626: $b8
	add c                                            ; $4627: $81
	ld b, $f8                                        ; $4628: $06 $f8
	ld bc, $01fe                                     ; $462a: $01 $fe $01
	cp $7a                                           ; $462d: $fe $7a
	ldh a, [c]                                       ; $462f: $f2
	sbc [hl]                                         ; $4630: $9e
	ldh a, [$dd]                                     ; $4631: $f0 $dd
	ldh [hDisp1_OBP0], a                                     ; $4633: $e0 $93
	ld c, d                                          ; $4635: $4a
	sub h                                            ; $4636: $94
	jr z, jr_053_4689                                ; $4637: $28 $50

	and b                                            ; $4639: $a0
	ld h, b                                          ; $463a: $60
	ldh [rAUD4LEN], a                                ; $463b: $e0 $20
	ld hl, $2f2d                                     ; $463d: $21 $2d $2f
	ld hl, $2dde                                     ; $4640: $21 $de $2d
	sbc [hl]                                         ; $4643: $9e
	ld hl, $3fd9                                     ; $4644: $21 $d9 $3f
	sbc $50                                          ; $4647: $de $50
	sbc d                                            ; $4649: $9a
	ld e, h                                          ; $464a: $5c
	inc b                                            ; $464b: $04
	call c, Call_053_5050                            ; $464c: $dc $50 $50
	sbc $f0                                          ; $464f: $de $f0
	sbc $fc                                          ; $4651: $de $fc
	rst SubAFromDE                                          ; $4653: $df
	ld [hl], b                                       ; $4654: $70
	sbc [hl]                                         ; $4655: $9e
	jr nz, jr_053_46cd                               ; $4656: $20 $75

	ld a, [bc]                                       ; $4658: $0a
	sbc $80                                          ; $4659: $de $80
	ld [hl], a                                       ; $465b: $77
	ld a, [hl]                                       ; $465c: $7e
	db $dd                                           ; $465d: $dd
	add b                                            ; $465e: $80
	ld a, l                                          ; $465f: $7d
	ld a, c                                          ; $4660: $79

jr_053_4661:
	di                                               ; $4661: $f3
	ld [hl], c                                       ; $4662: $71
	sub e                                            ; $4663: $93
	rst SubAFromDE                                          ; $4664: $df
	ccf                                              ; $4665: $3f
	sbc [hl]                                         ; $4666: $9e
	rra                                              ; $4667: $1f
	ld c, c                                          ; $4668: $49
	add b                                            ; $4669: $80
	ld h, d                                          ; $466a: $62
	ret nc                                           ; $466b: $d0

	call c, $9cff                                    ; $466c: $dc $ff $9c
	db $fc                                           ; $466f: $fc
	ldh a, [$fc]                                     ; $4670: $f0 $fc
	ld h, d                                          ; $4672: $62
	or b                                             ; $4673: $b0
	rst SubAFromDE                                          ; $4674: $df
	db $fc                                           ; $4675: $fc
	sbc b                                            ; $4676: $98
	reti                                             ; $4677: $d9


	db $10                                           ; $4678: $10
	jr nc, jr_053_46b3                               ; $4679: $30 $38

	ld a, $04                                        ; $467b: $3e $04
	inc b                                            ; $467d: $04
	ld l, l                                          ; $467e: $6d
	sub b                                            ; $467f: $90
	sbc e                                            ; $4680: $9b
	ld a, a                                          ; $4681: $7f
	ld a, [hl]                                       ; $4682: $7e
	ldh a, [$c0]                                     ; $4683: $f0 $c0
	ld a, c                                          ; $4685: $79
	ld a, d                                          ; $4686: $7a
	rst SubAFromDE                                          ; $4687: $df
	ccf                                              ; $4688: $3f

jr_053_4689:
	sbc l                                            ; $4689: $9d
	inc e                                            ; $468a: $1c
	ld h, b                                          ; $468b: $60
	ld [hl], d                                       ; $468c: $72
	ld l, l                                          ; $468d: $6d
	ld a, a                                          ; $468e: $7f
	ei                                               ; $468f: $fb
	ld a, [hl]                                       ; $4690: $7e
	reti                                             ; $4691: $d9


	halt                                             ; $4692: $76
	add b                                            ; $4693: $80
	ld [hl], a                                       ; $4694: $77
	di                                               ; $4695: $f3
	ld a, a                                          ; $4696: $7f
	sub l                                            ; $4697: $95
	ld a, a                                          ; $4698: $7f
	push af                                          ; $4699: $f5
	ld l, [hl]                                       ; $469a: $6e
	cpl                                              ; $469b: $2f
	ld a, d                                          ; $469c: $7a
	cp b                                             ; $469d: $b8
	sbc l                                            ; $469e: $9d
	jr nc, jr_053_46e4                               ; $469f: $30 $43

	ld a, e                                          ; $46a1: $7b
	push hl                                          ; $46a2: $e5
	sbc [hl]                                         ; $46a3: $9e
	adc a                                            ; $46a4: $8f
	ld a, d                                          ; $46a5: $7a
	and b                                            ; $46a6: $a0
	halt                                             ; $46a7: $76
	ld sp, $b87b                                     ; $46a8: $31 $7b $b8
	sbc e                                            ; $46ab: $9b
	jp nz, $08fc                                     ; $46ac: $c2 $fc $08

	ld [$c57b], sp                                   ; $46af: $08 $7b $c5
	rst SubAFromDE                                          ; $46b2: $df

jr_053_46b3:
	add hl, bc                                       ; $46b3: $09
	call c, Call_053_7e0d                            ; $46b4: $dc $0d $7e
	cp e                                             ; $46b7: $bb
	ld [hl], d                                       ; $46b8: $72
	cp d                                             ; $46b9: $ba
	ld a, a                                          ; $46ba: $7f
	ld h, d                                          ; $46bb: $62
	sbc h                                            ; $46bc: $9c
	jp $c1c1                                         ; $46bd: $c3 $c1 $c1


	ld a, c                                          ; $46c0: $79
	ld l, l                                          ; $46c1: $6d
	rst SubAFromDE                                          ; $46c2: $df
	ldh [$66], a                                     ; $46c3: $e0 $66
	db $db                                           ; $46c5: $db
	sub [hl]                                         ; $46c6: $96
	jr nz, @-$1e                                     ; $46c7: $20 $e0

	and b                                            ; $46c9: $a0
	sub b                                            ; $46ca: $90
	ret nc                                           ; $46cb: $d0

	ld d, b                                          ; $46cc: $50

jr_053_46cd:
	ld [hl], b                                       ; $46cd: $70
	jr nc, jr_053_46f0                               ; $46ce: $30 $20

	ld [hl], l                                       ; $46d0: $75
	ld e, b                                          ; $46d1: $58
	ld a, a                                          ; $46d2: $7f
	ld sp, hl                                        ; $46d3: $f9
	sbc [hl]                                         ; $46d4: $9e
	jr nc, jr_053_46b3                               ; $46d5: $30 $dc

	ld bc, $c372                                     ; $46d7: $01 $72 $c3

jr_053_46da:
	ld l, a                                          ; $46da: $6f
	ld hl, sp-$66                                    ; $46db: $f8 $9a
	add a                                            ; $46dd: $87
	add b                                            ; $46de: $80
	add b                                            ; $46df: $80
	ret nz                                           ; $46e0: $c0

	ret nz                                           ; $46e1: $c0

	ld a, d                                          ; $46e2: $7a
	rst JumpTable                                          ; $46e3: $c7

jr_053_46e4:
	sbc [hl]                                         ; $46e4: $9e
	rlca                                             ; $46e5: $07
	ld l, d                                          ; $46e6: $6a
	inc hl                                           ; $46e7: $23
	sbc [hl]                                         ; $46e8: $9e
	rst $38                                          ; $46e9: $ff
	ld a, d                                          ; $46ea: $7a
	ld c, a                                          ; $46eb: $4f
	rst $38                                          ; $46ec: $ff
	sbc [hl]                                         ; $46ed: $9e
	ldh [$63], a                                     ; $46ee: $e0 $63

jr_053_46f0:
	ccf                                              ; $46f0: $3f
	ld a, a                                          ; $46f1: $7f
	adc a                                            ; $46f2: $8f
	ld l, a                                          ; $46f3: $6f
	ld sp, hl                                        ; $46f4: $f9
	sbc [hl]                                         ; $46f5: $9e
	ldh [$fa], a                                     ; $46f6: $e0 $fa
	sbc l                                            ; $46f8: $9d
	ldh a, [$3f]                                     ; $46f9: $f0 $3f
	ld a, b                                          ; $46fb: $78
	pop de                                           ; $46fc: $d1
	ld a, e                                          ; $46fd: $7b
	ld l, d                                          ; $46fe: $6a
	db $dd                                           ; $46ff: $dd
	db $10                                           ; $4700: $10
	ld a, h                                          ; $4701: $7c
	ld [hl], l                                       ; $4702: $75
	ld a, a                                          ; $4703: $7f
	db $fd                                           ; $4704: $fd
	ld h, l                                          ; $4705: $65
	adc a                                            ; $4706: $8f
	ld a, l                                          ; $4707: $7d
	ld d, a                                          ; $4708: $57
	ld [hl], a                                       ; $4709: $77
	xor e                                            ; $470a: $ab
	sbc h                                            ; $470b: $9c
	ld b, $18                                        ; $470c: $06 $18
	ld [hl], b                                       ; $470e: $70
	jp c, $9eff                                      ; $470f: $da $ff $9e

	ld [hl], b                                       ; $4712: $70
	cp $7e                                           ; $4713: $fe $7e
	rst JumpTable                                          ; $4715: $c7
	ld [hl], l                                       ; $4716: $75
	dec c                                            ; $4717: $0d
	rst SubAFromDE                                          ; $4718: $df
	add b                                            ; $4719: $80
	sbc $81                                          ; $471a: $de $81
	ret c                                            ; $471c: $d8

	add b                                            ; $471d: $80
	ld l, e                                          ; $471e: $6b
	and d                                            ; $471f: $a2
	ld h, d                                          ; $4720: $62
	ldh [rPCM12], a                                  ; $4721: $e0 $76
	ld [bc], a                                       ; $4723: $02
	sbc l                                            ; $4724: $9d
	ld bc, $4a80                                     ; $4725: $01 $80 $4a
	ret nc                                           ; $4728: $d0

	ld b, [hl]                                       ; $4729: $46
	ret nz                                           ; $472a: $c0

	ld e, e                                          ; $472b: $5b
	ldh a, [$9d]                                     ; $472c: $f0 $9d
	ccf                                              ; $472e: $3f
	rst SubAFromDE                                          ; $472f: $df
	ld l, [hl]                                       ; $4730: $6e
	xor a                                            ; $4731: $af
	sbc e                                            ; $4732: $9b
	jr nz, @+$12                                     ; $4733: $20 $10

	db $10                                           ; $4735: $10
	ld [$4c77], sp                                   ; $4736: $08 $77 $4c
	ld [hl], l                                       ; $4739: $75
	jr nz, jr_053_46da                               ; $473a: $20 $9e

	call z, $04de                                    ; $473c: $cc $de $04
	ld a, d                                          ; $473f: $7a
	ret                                              ; $4740: $c9


	sbc l                                            ; $4741: $9d
	ccf                                              ; $4742: $3f
	rst GetHLinHL                                          ; $4743: $cf
	sbc $07                                          ; $4744: $de $07
	sbc c                                            ; $4746: $99
	db $e3                                           ; $4747: $e3
	rra                                              ; $4748: $1f
	ccf                                              ; $4749: $3f
	ld a, a                                          ; $474a: $7f
	ld a, [hl]                                       ; $474b: $7e
	ld a, [hl]                                       ; $474c: $7e
	ld a, e                                          ; $474d: $7b
	sbc $9e                                          ; $474e: $de $9e
	ldh [rPCM12], a                                  ; $4750: $e0 $76
	ld c, c                                          ; $4752: $49
	ld a, d                                          ; $4753: $7a
	ret c                                            ; $4754: $d8

	ld a, [hl]                                       ; $4755: $7e
	db $d3                                           ; $4756: $d3
	ld [hl], a                                       ; $4757: $77
	ld a, d                                          ; $4758: $7a
	ld h, d                                          ; $4759: $62
	add b                                            ; $475a: $80
	pop af                                           ; $475b: $f1
	sbc [hl]                                         ; $475c: $9e
	rrca                                             ; $475d: $0f
	sbc $06                                          ; $475e: $de $06
	halt                                             ; $4760: $76
	push bc                                          ; $4761: $c5
	ld l, d                                          ; $4762: $6a
	pop af                                           ; $4763: $f1
	ld a, a                                          ; $4764: $7f
	ld h, h                                          ; $4765: $64
	rst SubAFromDE                                          ; $4766: $df
	ldh a, [$9a]                                     ; $4767: $f0 $9a
	ld hl, sp-$04                                    ; $4769: $f8 $fc
	ld a, [hl]                                       ; $476b: $7e
	ld a, a                                          ; $476c: $7f
	ld a, a                                          ; $476d: $7f
	ld [hl], e                                       ; $476e: $73
	ld b, a                                          ; $476f: $47
	rst SubAFromDE                                          ; $4770: $df
	ret nz                                           ; $4771: $c0

	sbc [hl]                                         ; $4772: $9e
	ldh [$db], a                                     ; $4773: $e0 $db
	db $10                                           ; $4775: $10
	sbc [hl]                                         ; $4776: $9e
	jr nc, jr_053_47e4                               ; $4777: $30 $6b

	ld hl, sp+$7e                                    ; $4779: $f8 $7e
	ld c, [hl]                                       ; $477b: $4e
	pop af                                           ; $477c: $f1
	ld a, b                                          ; $477d: $78
	ret nc                                           ; $477e: $d0

	call c, $9d01                                    ; $477f: $dc $01 $9d
	jr nz, jr_053_479c                               ; $4782: $20 $18

	ld l, a                                          ; $4784: $6f
	ld hl, sp-$27                                    ; $4785: $f8 $d9
	rst $38                                          ; $4787: $ff
	sbc [hl]                                         ; $4788: $9e
	inc bc                                           ; $4789: $03
	ld a, e                                          ; $478a: $7b
	ld a, l                                          ; $478b: $7d
	ld a, d                                          ; $478c: $7a
	daa                                              ; $478d: $27
	ld h, e                                          ; $478e: $63
	ld b, b                                          ; $478f: $40
	sbc l                                            ; $4790: $9d
	rst $38                                          ; $4791: $ff
	ld sp, hl                                        ; $4792: $f9
	ld l, [hl]                                       ; $4793: $6e
	ld l, a                                          ; $4794: $6f
	sbc l                                            ; $4795: $9d
	rst $38                                          ; $4796: $ff
	rst SubAFromDE                                          ; $4797: $df
	ld [hl], e                                       ; $4798: $73
	ccf                                              ; $4799: $3f
	sbc e                                            ; $479a: $9b
	rst $38                                          ; $479b: $ff

jr_053_479c:
	ret nc                                           ; $479c: $d0

	ld de, $7612                                     ; $479d: $11 $12 $76
	xor l                                            ; $47a0: $ad
	ld a, e                                          ; $47a1: $7b
	reti                                             ; $47a2: $d9


	db $db                                           ; $47a3: $db
	rst $38                                          ; $47a4: $ff
	sbc [hl]                                         ; $47a5: $9e
	ld h, b                                          ; $47a6: $60
	ld a, e                                          ; $47a7: $7b
	db $d3                                           ; $47a8: $d3
	ld a, [hl]                                       ; $47a9: $7e
	pop bc                                           ; $47aa: $c1
	sbc [hl]                                         ; $47ab: $9e
	jr c, @+$78                                      ; $47ac: $38 $76

	push hl                                          ; $47ae: $e5
	ld h, a                                          ; $47af: $67
	db $10                                           ; $47b0: $10
	ld l, l                                          ; $47b1: $6d
	ldh a, [$d2]                                     ; $47b2: $f0 $d2
	add b                                            ; $47b4: $80
	ld a, c                                          ; $47b5: $79
	sub d                                            ; $47b6: $92
	rst SubAFromDE                                          ; $47b7: $df
	ld a, a                                          ; $47b8: $7f
	sbc $3f                                          ; $47b9: $de $3f
	ld [bc], a                                       ; $47bb: $02
	ret nc                                           ; $47bc: $d0

	ld a, [$004e]                                    ; $47bd: $fa $4e $00
	rst SubAFromDE                                          ; $47c0: $df
	inc sp                                           ; $47c1: $33
	sbc h                                            ; $47c2: $9c
	ld [hl+], a                                      ; $47c3: $22
	inc hl                                           ; $47c4: $23
	inc sp                                           ; $47c5: $33
	sbc $44                                          ; $47c6: $de $44
	ld a, a                                          ; $47c8: $7f
	ei                                               ; $47c9: $fb
	sbc d                                            ; $47ca: $9a
	inc sp                                           ; $47cb: $33
	ld [hl-], a                                      ; $47cc: $32
	ld [hl+], a                                      ; $47cd: $22
	ld [hl+], a                                      ; $47ce: $22
	inc hl                                           ; $47cf: $23
	ld h, e                                          ; $47d0: $63
	or $9e                                           ; $47d1: $f6 $9e
	ld [hl+], a                                      ; $47d3: $22
	sbc $44                                          ; $47d4: $de $44
	sbc [hl]                                         ; $47d6: $9e
	ld [hl+], a                                      ; $47d7: $22
	ld a, e                                          ; $47d8: $7b
	db $e3                                           ; $47d9: $e3
	ld d, e                                          ; $47da: $53
	or $9c                                           ; $47db: $f6 $9c
	ld [hl], $66                                     ; $47dd: $36 $66
	ld h, [hl]                                       ; $47df: $66
	ld l, a                                          ; $47e0: $6f
	or $97                                           ; $47e1: $f6 $97
	inc hl                                           ; $47e3: $23

jr_053_47e4:
	ld [hl-], a                                      ; $47e4: $32
	ld [hl+], a                                      ; $47e5: $22
	ld h, e                                          ; $47e6: $63
	ld [hl-], a                                      ; $47e7: $32
	inc sp                                           ; $47e8: $33
	inc sp                                           ; $47e9: $33
	ld [hl], a                                       ; $47ea: $77
	call c, $dd22                                    ; $47eb: $dc $22 $dd
	inc sp                                           ; $47ee: $33
	sbc h                                            ; $47ef: $9c
	ld d, l                                          ; $47f0: $55
	ld [hl+], a                                      ; $47f1: $22
	ld [hl+], a                                      ; $47f2: $22
	ld a, e                                          ; $47f3: $7b
	bit 5, a                                         ; $47f4: $cb $6f
	or $9e                                           ; $47f6: $f6 $9e
	ld h, d                                          ; $47f8: $62
	ld [hl], a                                       ; $47f9: $77
	ret nz                                           ; $47fa: $c0

	sbc $33                                          ; $47fb: $de $33
	sbc h                                            ; $47fd: $9c
	ld [hl+], a                                      ; $47fe: $22
	ld h, [hl]                                       ; $47ff: $66
	ld d, d                                          ; $4800: $52
	ld [hl], a                                       ; $4801: $77
	and e                                            ; $4802: $a3
	sbc $33                                          ; $4803: $de $33
	sbc e                                            ; $4805: $9b
	ld h, l                                          ; $4806: $65
	ld d, l                                          ; $4807: $55
	ld d, [hl]                                       ; $4808: $56
	inc sp                                           ; $4809: $33
	ld [hl], e                                       ; $480a: $73
	rst FarCall                                          ; $480b: $f7
	ld d, $8c                                        ; $480c: $16 $8c
	sub a                                            ; $480e: $97
	rst $38                                          ; $480f: $ff
	ld a, a                                          ; $4810: $7f
	call $79ee                                       ; $4811: $cd $ee $79
	db $dd                                           ; $4814: $dd
	rst $38                                          ; $4815: $ff
	cp $db                                           ; $4816: $fe $db
	rst $38                                          ; $4818: $ff
	sbc d                                            ; $4819: $9a
	cp $7e                                           ; $481a: $fe $7e
	rst $38                                          ; $481c: $ff
	rst $38                                          ; $481d: $ff
	ld a, a                                          ; $481e: $7f
	sbc $ff                                          ; $481f: $de $ff
	sub l                                            ; $4821: $95
	ld l, [hl]                                       ; $4822: $6e
	adc $e5                                          ; $4823: $ce $e5
	ret                                              ; $4825: $c9


	ret                                              ; $4826: $c9


	sub c                                            ; $4827: $91
	ld [hl+], a                                      ; $4828: $22
	ld [hl+], a                                      ; $4829: $22
	ld b, [hl]                                       ; $482a: $46
	ld b, h                                          ; $482b: $44
	db $dd                                           ; $482c: $dd
	rst $38                                          ; $482d: $ff
	rst SubAFromDE                                          ; $482e: $df
	rst FarCall                                          ; $482f: $f7
	sbc e                                            ; $4830: $9b
	rst SubAFromBC                                          ; $4831: $e7
	rst GetHLinHL                                          ; $4832: $cf
	sub e                                            ; $4833: $93
	sub e                                            ; $4834: $93
	sbc $23                                          ; $4835: $de $23
	sbc h                                            ; $4837: $9c
	ld b, e                                          ; $4838: $43
	ld b, a                                          ; $4839: $47
	ld b, a                                          ; $483a: $47
	jp c, $96ff                                      ; $483b: $da $ff $96

	cp a                                             ; $483e: $bf
	rst $38                                          ; $483f: $ff
	cp $f6                                           ; $4840: $fe $f6
	and $ca                                          ; $4842: $e6 $ca
	adc d                                            ; $4844: $8a
	ld [de], a                                       ; $4845: $12
	ld [de], a                                       ; $4846: $12
	jp c, $91ff                                      ; $4847: $da $ff $91

	ld a, a                                          ; $484a: $7f
	and h                                            ; $484b: $a4
	and d                                            ; $484c: $a2
	sub c                                            ; $484d: $91
	ld c, b                                          ; $484e: $48
	ld c, h                                          ; $484f: $4c
	ld b, [hl]                                       ; $4850: $46
	daa                                              ; $4851: $27
	inc hl                                           ; $4852: $23
	rst AddAOntoHL                                          ; $4853: $ef
	rst $38                                          ; $4854: $ff
	ld hl, sp-$04                                    ; $4855: $f8 $fc
	cp $7b                                           ; $4857: $fe $7b
	or d                                             ; $4859: $b2
	adc a                                            ; $485a: $8f
	ld a, a                                          ; $485b: $7f
	rra                                              ; $485c: $1f
	adc a                                            ; $485d: $8f
	ld b, a                                          ; $485e: $47
	inc hl                                           ; $485f: $23
	inc de                                           ; $4860: $13
	dec c                                            ; $4861: $0d
	db $e3                                           ; $4862: $e3
	ld hl, sp-$10                                    ; $4863: $f8 $f0
	nop                                              ; $4865: $00
	rlca                                             ; $4866: $07
	rrca                                             ; $4867: $0f
	inc sp                                           ; $4868: $33
	call nz, $6f8c                                   ; $4869: $c4 $8c $6f
	and c                                            ; $486c: $a1
	add [hl]                                         ; $486d: $86
	db $fc                                           ; $486e: $fc
	ld hl, sp+$00                                    ; $486f: $f8 $00
	rrca                                             ; $4871: $0f
	ld a, l                                          ; $4872: $7d
	push af                                          ; $4873: $f5
	sbc d                                            ; $4874: $9a

jr_053_4875:
	xor $7f                                          ; $4875: $ee $7f
	ccf                                              ; $4877: $3f
	rst $38                                          ; $4878: $ff
	rst $38                                          ; $4879: $ff
	ld hl, sp-$74                                    ; $487a: $f8 $8c
	add [hl]                                         ; $487c: $86
	ld [hl], d                                       ; $487d: $72
	ld a, $1f                                        ; $487e: $3e $1f
	nop                                              ; $4880: $00
	ldh a, [$e8]                                     ; $4881: $f0 $e8
	db $f4                                           ; $4883: $f4
	cp e                                             ; $4884: $bb
	ei                                               ; $4885: $fb
	cp e                                             ; $4886: $bb
	sbc $ff                                          ; $4887: $de $ff
	sub c                                            ; $4889: $91
	sbc a                                            ; $488a: $9f
	ld c, a                                          ; $488b: $4f
	ld h, a                                          ; $488c: $67
	daa                                              ; $488d: $27
	ld h, a                                          ; $488e: $67
	rst $38                                          ; $488f: $ff
	nop                                              ; $4890: $00
	inc bc                                           ; $4891: $03
	ld b, b                                          ; $4892: $40
	add c                                            ; $4893: $81
	add e                                            ; $4894: $83
	adc $d8                                          ; $4895: $ce $d8
	ret nz                                           ; $4897: $c0

	ld [hl], e                                       ; $4898: $73
	jp nc, $f080                                     ; $4899: $d2 $80 $f0

	ldh [rP1], a                                     ; $489c: $e0 $00
	rst SubAFromHL                                          ; $489e: $d7
	ld l, a                                          ; $489f: $6f
	add l                                            ; $48a0: $85
	ld l, e                                          ; $48a1: $6b
	call Call_053_6254                               ; $48a2: $cd $54 $62
	ld [de], a                                       ; $48a5: $12
	add sp, -$70                                     ; $48a6: $e8 $90
	ld a, [$fab4]                                    ; $48a8: $fa $b4 $fa
	ld a, e                                          ; $48ab: $7b
	ld a, a                                          ; $48ac: $7f
	rra                                              ; $48ad: $1f
	db $fc                                           ; $48ae: $fc
	rst $38                                          ; $48af: $ff
	call nc, $29ea                                   ; $48b0: $d4 $ea $29
	ld b, d                                          ; $48b3: $42
	ld l, d                                          ; $48b4: $6a
	or l                                             ; $48b5: $b5
	inc bc                                           ; $48b6: $03
	nop                                              ; $48b7: $00
	dec hl                                           ; $48b8: $2b
	dec d                                            ; $48b9: $15
	sub c                                            ; $48ba: $91
	sub $bf                                          ; $48bb: $d6 $bf
	cp a                                             ; $48bd: $bf
	rst $38                                          ; $48be: $ff
	add hl, de                                       ; $48bf: $19
	xor b                                            ; $48c0: $a8
	db $10                                           ; $48c1: $10
	ret nz                                           ; $48c2: $c0

	jr nc, jr_053_4875                               ; $48c3: $30 $b0

	ld hl, sp-$0c                                    ; $48c5: $f8 $f4
	ld hl, sp-$08                                    ; $48c7: $f8 $f8
	db $dd                                           ; $48c9: $dd
	ldh a, [hLCDCIntHandlerIdx]                                     ; $48ca: $f0 $81
	ret z                                            ; $48cc: $c8

	ld b, h                                          ; $48cd: $44
	ld [hl], b                                       ; $48ce: $70
	cp b                                             ; $48cf: $b8
	sbc $c7                                          ; $48d0: $de $c7
	ld h, e                                          ; $48d2: $63
	ld h, c                                          ; $48d3: $61
	ld [hl], b                                       ; $48d4: $70
	ld [hl], b                                       ; $48d5: $70
	rst $38                                          ; $48d6: $ff
	ld a, a                                          ; $48d7: $7f
	ccf                                              ; $48d8: $3f
	ccf                                              ; $48d9: $3f
	rra                                              ; $48da: $1f
	rra                                              ; $48db: $1f
	rrca                                             ; $48dc: $0f
	rrca                                             ; $48dd: $0f
	inc c                                            ; $48de: $0c
	ld c, h                                          ; $48df: $4c
	ld [hl], b                                       ; $48e0: $70
	inc sp                                           ; $48e1: $33
	pop bc                                           ; $48e2: $c1
	ldh [c], a                                       ; $48e3: $e2
	rst FarCall                                          ; $48e4: $f7
	rst $38                                          ; $48e5: $ff
	di                                               ; $48e6: $f3
	or e                                             ; $48e7: $b3
	adc a                                            ; $48e8: $8f
	call z, $1b77                                    ; $48e9: $cc $77 $1b
	sub c                                            ; $48ec: $91
	inc bc                                           ; $48ed: $03
	inc [hl]                                         ; $48ee: $34
	ld a, c                                          ; $48ef: $79
	db $e3                                           ; $48f0: $e3
	ldh a, [$65]                                     ; $48f1: $f0 $65
	pop hl                                           ; $48f3: $e1
	di                                               ; $48f4: $f3
	rst $38                                          ; $48f5: $ff
	rst GetHLinHL                                          ; $48f6: $cf
	rst $38                                          ; $48f7: $ff
	rra                                              ; $48f8: $1f
	rrca                                             ; $48f9: $0f
	sbc e                                            ; $48fa: $9b
	ld l, a                                          ; $48fb: $6f
	dec [hl]                                         ; $48fc: $35
	call c, $99ff                                    ; $48fd: $dc $ff $99
	ld hl, sp-$1d                                    ; $4900: $f8 $e3
	call z, Call_053_6090                            ; $4902: $cc $90 $60
	add e                                            ; $4905: $83
	ld a, e                                          ; $4906: $7b
	ld l, b                                          ; $4907: $68
	ld [hl], e                                       ; $4908: $73
	db $ec                                           ; $4909: $ec
	adc [hl]                                         ; $490a: $8e
	or a                                             ; $490b: $b7
	ei                                               ; $490c: $fb
	push de                                          ; $490d: $d5
	dec h                                            ; $490e: $25
	ld c, c                                          ; $490f: $49
	ld c, c                                          ; $4910: $49
	sub c                                            ; $4911: $91
	sub e                                            ; $4912: $93
	inc hl                                           ; $4913: $23
	rst $38                                          ; $4914: $ff
	rst $38                                          ; $4915: $ff
	db $fd                                           ; $4916: $fd
	rst $38                                          ; $4917: $ff
	cp $fe                                           ; $4918: $fe $fe
	cp e                                             ; $491a: $bb
	cp c                                             ; $491b: $b9
	sbc $27                                          ; $491c: $de $27
	ld a, a                                          ; $491e: $7f
	ld sp, $138c                                     ; $491f: $31 $8c $13
	ld de, $fc89                                     ; $4922: $11 $89 $fc
	rst $38                                          ; $4925: $ff
	rst FarCall                                          ; $4926: $f7
	cp c                                             ; $4927: $b9
	db $fd                                           ; $4928: $fd
	ld e, h                                          ; $4929: $5c
	ld l, [hl]                                       ; $492a: $6e
	or a                                             ; $492b: $b7
	rst $38                                          ; $492c: $ff
	rst $38                                          ; $492d: $ff
	adc a                                            ; $492e: $8f
	rst JumpTable                                          ; $492f: $c7
	jp $f1e3                                         ; $4930: $c3 $e3 $f1


	ld a, b                                          ; $4933: $78
	db $dd                                           ; $4934: $dd
	rst $38                                          ; $4935: $ff
	sub [hl]                                         ; $4936: $96
	rst AddAOntoHL                                          ; $4937: $ef
	rst SubAFromBC                                          ; $4938: $e7
	rst FarCall                                          ; $4939: $f7
	or a                                             ; $493a: $b7
	inc a                                            ; $493b: $3c
	sbc l                                            ; $493c: $9d
	adc c                                            ; $493d: $89
	ld c, d                                          ; $493e: $4a
	ld b, h                                          ; $493f: $44
	ld a, e                                          ; $4940: $7b
	db $dd                                           ; $4941: $dd
	sbc l                                            ; $4942: $9d
	call c, $dbfd                                    ; $4943: $dc $fd $db
	rst $38                                          ; $4946: $ff
	sbc e                                            ; $4947: $9b
	adc h                                            ; $4948: $8c
	inc e                                            ; $4949: $1c
	inc a                                            ; $494a: $3c
	ld a, c                                          ; $494b: $79
	sbc $f9                                          ; $494c: $de $f9
	sbc d                                            ; $494e: $9a
	ld a, [$9ecf]                                    ; $494f: $fa $cf $9e
	cp [hl]                                          ; $4952: $be
	cp h                                             ; $4953: $bc
	ld [hl], a                                       ; $4954: $77
	db $ed                                           ; $4955: $ed
	rst SubAFromDE                                          ; $4956: $df
	add [hl]                                         ; $4957: $86
	add b                                            ; $4958: $80
	adc h                                            ; $4959: $8c
	inc c                                            ; $495a: $0c
	inc c                                            ; $495b: $0c
	jr jr_053_4977                                   ; $495c: $18 $19

	add hl, sp                                       ; $495e: $39
	ld a, a                                          ; $495f: $7f
	ld [hl], a                                       ; $4960: $77
	rst SubAFromBC                                          ; $4961: $e7
	rst AddAOntoHL                                          ; $4962: $ef
	rst GetHLinHL                                          ; $4963: $cf
	sbc a                                            ; $4964: $9f
	cp a                                             ; $4965: $bf
	rst $38                                          ; $4966: $ff
	ld [hl+], a                                      ; $4967: $22
	ld [hl+], a                                      ; $4968: $22
	ld b, e                                          ; $4969: $43
	ld b, l                                          ; $496a: $45
	add l                                            ; $496b: $85
	adc d                                            ; $496c: $8a
	ld a, [bc]                                       ; $496d: $0a
	ld [de], a                                       ; $496e: $12
	scf                                              ; $496f: $37
	inc sp                                           ; $4970: $33
	inc sp                                           ; $4971: $33
	sub e                                            ; $4972: $93
	cp e                                             ; $4973: $bb
	ei                                               ; $4974: $fb
	rst $38                                          ; $4975: $ff
	rst $38                                          ; $4976: $ff

jr_053_4977:
	inc hl                                           ; $4977: $23
	ld a, a                                          ; $4978: $7f
	and h                                            ; $4979: $a4
	rst SubAFromDE                                          ; $497a: $df
	ld de, $89df                                     ; $497b: $11 $df $89
	sub [hl]                                         ; $497e: $96
	ret                                              ; $497f: $c9


	rra                                              ; $4980: $1f
	rra                                              ; $4981: $1f
	pop hl                                           ; $4982: $e1
	ldh [rSVBK], a                                   ; $4983: $e0 $70
	ld e, h                                          ; $4985: $5c
	dec l                                            ; $4986: $2d
	ld b, $d9                                        ; $4987: $06 $d9
	rst $38                                          ; $4989: $ff
	add [hl]                                         ; $498a: $86
	adc c                                            ; $498b: $89
	sub c                                            ; $498c: $91
	pop de                                           ; $498d: $d1
	sub $5e                                          ; $498e: $d6 $5e
	ld a, h                                          ; $4990: $7c
	cp c                                             ; $4991: $b9
	rst SubAFromBC                                          ; $4992: $e7
	ld hl, sp-$07                                    ; $4993: $f8 $f9
	pop af                                           ; $4995: $f1
	rst FarCall                                          ; $4996: $f7
	ld sp, hl                                        ; $4997: $f9
	db $e3                                           ; $4998: $e3
	rst JumpTable                                          ; $4999: $c7
	ld e, $1b                                        ; $499a: $1e $1b
	inc c                                            ; $499c: $0c

Jump_053_499d:
	adc a                                            ; $499d: $8f
	sbc a                                            ; $499e: $9f
	sbc a                                            ; $499f: $9f
	rst $38                                          ; $49a0: $ff
	ccf                                              ; $49a1: $3f
	scf                                              ; $49a2: $37
	inc e                                            ; $49a3: $1c

Jump_053_49a4:
	sbc $9f                                          ; $49a4: $de $9f
	add b                                            ; $49a6: $80
	sbc [hl]                                         ; $49a7: $9e
	db $fc                                           ; $49a8: $fc
	ld hl, sp-$08                                    ; $49a9: $f8 $f8
	add e                                            ; $49ab: $83
	ccf                                              ; $49ac: $3f
	sbc $78                                          ; $49ad: $de $78
	push hl                                          ; $49af: $e5
	res 3, [hl]                                      ; $49b0: $cb $9e
	inc l                                            ; $49b2: $2c
	nop                                              ; $49b3: $00
	ret nz                                           ; $49b4: $c0

	pop hl                                           ; $49b5: $e1
	add a                                            ; $49b6: $87
	ld e, $3c                                        ; $49b7: $1e $3c
	ld [hl], c                                       ; $49b9: $71
	di                                               ; $49ba: $f3
	ei                                               ; $49bb: $fb
	cp d                                             ; $49bc: $ba
	ld [hl], h                                       ; $49bd: $74
	db $ec                                           ; $49be: $ec
	sub c                                            ; $49bf: $91
	ld a, [hl+]                                      ; $49c0: $2a
	ld [hl], h                                       ; $49c1: $74
	ld l, c                                          ; $49c2: $69
	nop                                              ; $49c3: $00
	ld b, h                                          ; $49c4: $44
	adc b                                            ; $49c5: $88
	adc d                                            ; $49c6: $8a
	jr jr_053_4a41                                   ; $49c7: $18 $78

	pop af                                           ; $49c9: $f1
	db $e3                                           ; $49ca: $e3
	add $07                                          ; $49cb: $c6 $07
	add hl, de                                       ; $49cd: $19
	ld [hl], b                                       ; $49ce: $70
	ldh [c], a                                       ; $49cf: $e2
	ld b, [hl]                                       ; $49d0: $46
	adc h                                            ; $49d1: $8c
	inc d                                            ; $49d2: $14
	jr nz, @+$09                                     ; $49d3: $20 $07

	ld bc, $0000                                     ; $49d5: $01 $00 $00
	add b                                            ; $49d8: $80
	nop                                              ; $49d9: $00
	ld [$7b18], sp                                   ; $49da: $08 $18 $7b
	inc h                                            ; $49dd: $24
	add b                                            ; $49de: $80
	sub e                                            ; $49df: $93
	or $fe                                           ; $49e0: $f6 $fe
	ld a, [hl]                                       ; $49e2: $7e
	inc a                                            ; $49e3: $3c
	jp c, $939b                                      ; $49e4: $da $9b $93

	sub e                                            ; $49e7: $93
	sub d                                            ; $49e8: $92
	jp nc, $3456                                     ; $49e9: $d2 $56 $34

	db $f4                                           ; $49ec: $f4
	cp d                                             ; $49ed: $ba
	sbc [hl]                                         ; $49ee: $9e
	xor $7e                                          ; $49ef: $ee $7e
	ld a, $1e                                        ; $49f1: $3e $1e
	ld b, $24                                        ; $49f3: $06 $24
	ld [de], a                                       ; $49f5: $12
	ld a, [bc]                                       ; $49f6: $0a
	adc d                                            ; $49f7: $8a
	ld b, [hl]                                       ; $49f8: $46
	ld [hl-], a                                      ; $49f9: $32
	ld a, [de]                                       ; $49fa: $1a
	ld b, $30                                        ; $49fb: $06 $30
	ld sp, $3280                                     ; $49fd: $31 $80 $32
	inc h                                            ; $4a00: $24
	ld h, h                                          ; $4a01: $64
	ld [hl-], a                                      ; $4a02: $32
	ld c, [hl]                                       ; $4a03: $4e
	ld b, a                                          ; $4a04: $47
	rrca                                             ; $4a05: $0f
	rrca                                             ; $4a06: $0f
	ld c, $1c                                        ; $4a07: $0e $1c
	inc e                                            ; $4a09: $1c
	ld a, [hl]                                       ; $4a0a: $7e
	ld c, [hl]                                       ; $4a0b: $4e
	ld b, a                                          ; $4a0c: $47
	cp $ce                                           ; $4a0d: $fe $ce
	and $67                                          ; $4a0f: $e6 $67
	ld [hl], e                                       ; $4a11: $73
	ld [hl], e                                       ; $4a12: $73
	inc sp                                           ; $4a13: $33
	inc sp                                           ; $4a14: $33
	adc $c6                                          ; $4a15: $ce $c6
	ld b, d                                          ; $4a17: $42
	ld h, e                                          ; $4a18: $63
	ld hl, $1131                                     ; $4a19: $21 $31 $11
	ld de, $8ad3                                     ; $4a1c: $11 $d3 $8a
	ld h, c                                          ; $4a1f: $61
	ld l, b                                          ; $4a20: $68
	ld a, $3c                                        ; $4a21: $3e $3c
	inc sp                                           ; $4a23: $33
	sbc [hl]                                         ; $4a24: $9e
	sbc e                                            ; $4a25: $9b
	ld l, a                                          ; $4a26: $6f
	ccf                                              ; $4a27: $3f
	scf                                              ; $4a28: $37

jr_053_4a29:
	ld de, $1c13                                     ; $4a29: $11 $13 $1c
	adc c                                            ; $4a2c: $89
	adc a                                            ; $4a2d: $8f

jr_053_4a2e:
	push hl                                          ; $4a2e: $e5
	ret                                              ; $4a2f: $c9


	db $d3                                           ; $4a30: $d3
	ld h, e                                          ; $4a31: $63
	ld a, a                                          ; $4a32: $7f
	dec bc                                           ; $4a33: $0b
	halt                                             ; $4a34: $76
	ret                                              ; $4a35: $c9


	sbc $fe                                          ; $4a36: $de $fe
	sbc $ff                                          ; $4a38: $de $ff
	sbc h                                            ; $4a3a: $9c
	ld h, a                                          ; $4a3b: $67
	ld c, a                                          ; $4a3c: $4f
	rst SubAFromDE                                          ; $4a3d: $df
	call c, $96ff                                    ; $4a3e: $dc $ff $96

jr_053_4a41:
	dec h                                            ; $4a41: $25
	ld b, l                                          ; $4a42: $45
	ld c, c                                          ; $4a43: $49
	adc c                                            ; $4a44: $89
	sub d                                            ; $4a45: $92
	ld [hl-], a                                      ; $4a46: $32
	ld h, d                                          ; $4a47: $62
	db $e4                                           ; $4a48: $e4
	adc c                                            ; $4a49: $89
	ld [hl], d                                       ; $4a4a: $72
	sbc h                                            ; $4a4b: $9c
	ld a, e                                          ; $4a4c: $7b
	jr c, jr_053_4a2e                                ; $4a4d: $38 $df

	adc c                                            ; $4a4f: $89
	sbc $4b                                          ; $4a50: $de $4b
	sub e                                            ; $4a52: $93
	ld l, e                                          ; $4a53: $6b
	ld l, a                                          ; $4a54: $6f
	ccf                                              ; $4a55: $3f
	cp $fb                                           ; $4a56: $fe $fb
	rst AddAOntoHL                                          ; $4a58: $ef
	rra                                              ; $4a59: $1f
	rst $38                                          ; $4a5a: $ff
	ld a, h                                          ; $4a5b: $7c
	cp $fe                                           ; $4a5c: $fe $fe
	ld a, a                                          ; $4a5e: $7f
	ld a, d                                          ; $4a5f: $7a
	ld [hl+], a                                      ; $4a60: $22
	sbc c                                            ; $4a61: $99
	ret nz                                           ; $4a62: $c0

	add e                                            ; $4a63: $83
	rst $38                                          ; $4a64: $ff
	sbc e                                            ; $4a65: $9b
	rst SubAFromDE                                          ; $4a66: $df
	rst GetHLinHL                                          ; $4a67: $cf
	sbc $ff                                          ; $4a68: $de $ff
	ld a, [hl]                                       ; $4a6a: $7e
	ld d, l                                          ; $4a6b: $55
	adc h                                            ; $4a6c: $8c
	inc de                                           ; $4a6d: $13
	adc c                                            ; $4a6e: $89
	adc c                                            ; $4a6f: $89
	push bc                                          ; $4a70: $c5
	push hl                                          ; $4a71: $e5
	di                                               ; $4a72: $f3
	ei                                               ; $4a73: $fb
	rst $38                                          ; $4a74: $ff
	rst SubAFromDE                                          ; $4a75: $df
	rst GetHLinHL                                          ; $4a76: $cf
	cpl                                              ; $4a77: $2f
	sub a                                            ; $4a78: $97
	adc $f4                                          ; $4a79: $ce $f4
	db $fc                                           ; $4a7b: $fc
	nop                                              ; $4a7c: $00
	ld a, [$fcfa]                                    ; $4a7d: $fa $fa $fc
	ld l, d                                          ; $4a80: $6a
	or [hl]                                          ; $4a81: $b6
	ld a, c                                          ; $4a82: $79
	or l                                             ; $4a83: $b5
	ld a, a                                          ; $4a84: $7f
	and c                                            ; $4a85: $a1
	sbc h                                            ; $4a86: $9c
	di                                               ; $4a87: $f3
	add hl, sp                                       ; $4a88: $39
	ld a, b                                          ; $4a89: $78
	ld h, e                                          ; $4a8a: $63
	ldh a, [$df]                                     ; $4a8b: $f0 $df
	rst AddAOntoHL                                          ; $4a8d: $ef
	sbc h                                            ; $4a8e: $9c
	db $dd                                           ; $4a8f: $dd
	reti                                             ; $4a90: $d9


	db $db                                           ; $4a91: $db
	ld a, e                                          ; $4a92: $7b
	ld e, d                                          ; $4a93: $5a
	sbc d                                            ; $4a94: $9a
	call nz, $c8c8                                   ; $4a95: $c4 $c8 $c8
	adc c                                            ; $4a98: $89
	sub c                                            ; $4a99: $91
	ld [hl], a                                       ; $4a9a: $77
	adc c                                            ; $4a9b: $89
	sbc d                                            ; $4a9c: $9a
	cp h                                             ; $4a9d: $bc
	sbc h                                            ; $4a9e: $9c
	inc e                                            ; $4a9f: $1c
	ld [$7bc9], sp                                   ; $4aa0: $08 $c9 $7b
	and e                                            ; $4aa3: $a3
	ld a, l                                          ; $4aa4: $7d
	add h                                            ; $4aa5: $84
	ld a, d                                          ; $4aa6: $7a
	jr nz, jr_053_4a29                               ; $4aa7: $20 $80

	ld hl, $1043                                     ; $4aa9: $21 $43 $10
	ld l, l                                          ; $4aac: $6d
	cp e                                             ; $4aad: $bb
	ld [hl], c                                       ; $4aae: $71
	sbc $ff                                          ; $4aaf: $de $ff
	rst SubAFromDE                                          ; $4ab1: $df

jr_053_4ab2:
	cp a                                             ; $4ab2: $bf
	rst AddAOntoHL                                          ; $4ab3: $ef
	sub e                                            ; $4ab4: $93
	ld b, a                                          ; $4ab5: $47
	add a                                            ; $4ab6: $87
	ld bc, $71d9                                     ; $4ab7: $01 $d9 $71
	sub c                                            ; $4aba: $91
	sub c                                            ; $4abb: $91
	add hl, de                                       ; $4abc: $19
	rst SubAFromDE                                          ; $4abd: $df
	inc sp                                           ; $4abe: $33
	db $10                                           ; $4abf: $10
	jr c, jr_053_4ab2                                ; $4ac0: $38 $f0

	ldh a, [$f8]                                     ; $4ac2: $f0 $f8
	ld hl, sp-$04                                    ; $4ac4: $f8 $fc
	di                                               ; $4ac6: $f3
	ldh a, [$80]                                     ; $4ac7: $f0 $80
	ld a, $2c                                        ; $4ac9: $3e $2c
	add hl, hl                                       ; $4acb: $29
	dec sp                                           ; $4acc: $3b
	ld d, a                                          ; $4acd: $57
	ld d, a                                          ; $4ace: $57
	rst JumpTable                                          ; $4acf: $c7
	ld l, a                                          ; $4ad0: $6f
	pop af                                           ; $4ad1: $f1
	di                                               ; $4ad2: $f3
	rst FarCall                                          ; $4ad3: $f7
	rst SubAFromBC                                          ; $4ad4: $e7
	rst AddAOntoHL                                          ; $4ad5: $ef
	rst AddAOntoHL                                          ; $4ad6: $ef
	rst $38                                          ; $4ad7: $ff
	ld a, a                                          ; $4ad8: $7f
	ld e, c                                          ; $4ad9: $59
	di                                               ; $4ada: $f3
	or [hl]                                          ; $4adb: $b6
	and a                                            ; $4adc: $a7
	db $ed                                           ; $4add: $ed
	ld l, a                                          ; $4ade: $6f
	ld e, e                                          ; $4adf: $5b
	ld e, [hl]                                       ; $4ae0: $5e
	rst SubAFromBC                                          ; $4ae1: $e7
	rst GetHLinHL                                          ; $4ae2: $cf
	rst GetHLinHL                                          ; $4ae3: $cf
	sbc $9e                                          ; $4ae4: $de $9e
	sbc h                                            ; $4ae6: $9c
	cp h                                             ; $4ae7: $bc
	add b                                            ; $4ae8: $80
	cp c                                             ; $4ae9: $b9
	add $e8                                          ; $4aea: $c6 $e8
	db $dd                                           ; $4aec: $dd
	sub d                                            ; $4aed: $92
	cp d                                             ; $4aee: $ba
	inc l                                            ; $4aef: $2c
	ld a, c                                          ; $4af0: $79
	ld a, c                                          ; $4af1: $79
	sbc h                                            ; $4af2: $9c
	inc e                                            ; $4af3: $1c
	jr c, jr_053_4b6f                                ; $4af4: $38 $79

	ld [hl], c                                       ; $4af6: $71
	di                                               ; $4af7: $f3
	rst SubAFromBC                                          ; $4af8: $e7
	rst SubAFromBC                                          ; $4af9: $e7
	ld e, c                                          ; $4afa: $59
	and d                                            ; $4afb: $a2
	ld [hl], h                                       ; $4afc: $74
	ld c, b                                          ; $4afd: $48
	db $eb                                           ; $4afe: $eb
	or l                                             ; $4aff: $b5
	or l                                             ; $4b00: $b5
	rst AddAOntoHL                                          ; $4b01: $ef
	jr nc, jr_053_4b75                               ; $4b02: $30 $71

	db $e3                                           ; $4b04: $e3
	rst SubAFromBC                                          ; $4b05: $e7
	add $ce                                          ; $4b06: $c6 $ce
	add l                                            ; $4b08: $85
	adc $9c                                          ; $4b09: $ce $9c
	sbc c                                            ; $4b0b: $99
	sub c                                            ; $4b0c: $91
	ld de, $3321                                     ; $4b0d: $11 $21 $33
	ld d, d                                          ; $4b10: $52
	or $a6                                           ; $4b11: $f6 $a6
	jr jr_053_4b15                                   ; $4b13: $18 $00

jr_053_4b15:
	nop                                              ; $4b15: $00
	db $10                                           ; $4b16: $10
	db $10                                           ; $4b17: $10
	ld sp, $7131                                     ; $4b18: $31 $31 $71
	nop                                              ; $4b1b: $00
	adc c                                            ; $4b1c: $89
	adc c                                            ; $4b1d: $89
	sbc c                                            ; $4b1e: $99
	add hl, de                                       ; $4b1f: $19
	adc e                                            ; $4b20: $8b
	adc $ee                                          ; $4b21: $ce $ee
	db $fd                                           ; $4b23: $fd
	sbc c                                            ; $4b24: $99
	adc b                                            ; $4b25: $88
	sbc b                                            ; $4b26: $98
	sbc c                                            ; $4b27: $99
	sbc c                                            ; $4b28: $99
	and a                                            ; $4b29: $a7
	inc sp                                           ; $4b2a: $33
	sbc $71                                          ; $4b2b: $de $71
	sub a                                            ; $4b2d: $97
	ld hl, sp-$68                                    ; $4b2e: $f8 $98
	sbc b                                            ; $4b30: $98
	ld h, e                                          ; $4b31: $63
	db $e3                                           ; $4b32: $e3
	di                                               ; $4b33: $f3
	pop af                                           ; $4b34: $f1
	pop af                                           ; $4b35: $f1
	sbc $f8                                          ; $4b36: $de $f8
	add h                                            ; $4b38: $84
	add hl, sp                                       ; $4b39: $39
	sbc c                                            ; $4b3a: $99
	sbc c                                            ; $4b3b: $99
	sbc h                                            ; $4b3c: $9c
	call z, $c0cc                                    ; $4b3d: $cc $cc $c0
	nop                                              ; $4b40: $00
	db $10                                           ; $4b41: $10
	ld [$8888], sp                                   ; $4b42: $08 $88 $88
	add h                                            ; $4b45: $84
	ld b, h                                          ; $4b46: $44
	ld b, b                                          ; $4b47: $40
	nop                                              ; $4b48: $00
	sbc b                                            ; $4b49: $98
	adc c                                            ; $4b4a: $89
	adc [hl]                                         ; $4b4b: $8e
	adc h                                            ; $4b4c: $8c
	adc l                                            ; $4b4d: $8d
	rrca                                             ; $4b4e: $0f
	dec de                                           ; $4b4f: $1b
	ld a, [de]                                       ; $4b50: $1a
	adc a                                            ; $4b51: $8f
	adc a                                            ; $4b52: $8f
	adc [hl]                                         ; $4b53: $8e
	sbc $04                                          ; $4b54: $de $04
	rst SubAFromDE                                          ; $4b56: $df
	dec b                                            ; $4b57: $05
	sub a                                            ; $4b58: $97
	dec bc                                           ; $4b59: $0b
	add d                                            ; $4b5a: $82
	jp $86c4                                         ; $4b5b: $c3 $c4 $86


	adc l                                            ; $4b5e: $8d
	dec de                                           ; $4b5f: $1b
	ld [hl], $7b                                     ; $4b60: $36 $7b
	add hl, de                                       ; $4b62: $19
	sbc b                                            ; $4b63: $98
	ld a, a                                          ; $4b64: $7f
	ld sp, hl                                        ; $4b65: $f9
	ldh a, [c]                                       ; $4b66: $f2
	db $e4                                           ; $4b67: $e4
	ret                                              ; $4b68: $c9


	ld a, a                                          ; $4b69: $7f
	ld a, a                                          ; $4b6a: $7f
	ld [hl], b                                       ; $4b6b: $70
	ld a, a                                          ; $4b6c: $7f
	sub c                                            ; $4b6d: $91
	rst $38                                          ; $4b6e: $ff

jr_053_4b6f:
	call nz, $c9c4                                   ; $4b6f: $c4 $c4 $c9
	ret                                              ; $4b72: $c9


	set 2, e                                         ; $4b73: $cb $d3

jr_053_4b75:
	rst SubAFromHL                                          ; $4b75: $d7
	rst SubAFromDE                                          ; $4b76: $df
	call c, $8f98                                    ; $4b77: $dc $98 $8f
	rst $38                                          ; $4b7a: $ff
	ld sp, hl                                        ; $4b7b: $f9
	ld l, b                                          ; $4b7c: $68
	ld h, d                                          ; $4b7d: $62
	sub h                                            ; $4b7e: $94
	rst SubAFromDE                                          ; $4b7f: $df
	and a                                            ; $4b80: $a7
	pop de                                           ; $4b81: $d1
	ret z                                            ; $4b82: $c8

	ld a, b                                          ; $4b83: $78
	ei                                               ; $4b84: $fb
	ld e, $ed                                        ; $4b85: $1e $ed
	ld h, [hl]                                       ; $4b87: $66
	xor $0c                                          ; $4b88: $ee $0c
	ld a, c                                          ; $4b8a: $79
	adc $7d                                          ; $4b8b: $ce $7d
	ld b, b                                          ; $4b8d: $40
	sub h                                            ; $4b8e: $94
	sbc c                                            ; $4b8f: $99
	pop af                                           ; $4b90: $f1
	di                                               ; $4b91: $f3
	rst JumpTable                                          ; $4b92: $c7
	add a                                            ; $4b93: $87
	ldh [c], a                                       ; $4b94: $e2
	rst $38                                          ; $4b95: $ff
	res 3, a                                         ; $4b96: $cb $9f
	add a                                            ; $4b98: $87
	ld a, a                                          ; $4b99: $7f
	ld a, b                                          ; $4b9a: $78
	ld c, b                                          ; $4b9b: $48
	adc a                                            ; $4b9c: $8f
	cp $b7                                           ; $4b9d: $fe $b7
	ld h, c                                          ; $4b9f: $61
	ld a, e                                          ; $4ba0: $7b
	rst $38                                          ; $4ba1: $ff
	rst $38                                          ; $4ba2: $ff
	db $ed                                           ; $4ba3: $ed
	ld [hl], a                                       ; $4ba4: $77
	db $db                                           ; $4ba5: $db
	ld sp, hl                                        ; $4ba6: $f9
	pop af                                           ; $4ba7: $f1
	jp Jump_053_7ff7                                 ; $4ba8: $c3 $f7 $7f


	di                                               ; $4bab: $f3
	adc a                                            ; $4bac: $8f
	ld l, l                                          ; $4bad: $6d
	dec [hl]                                         ; $4bae: $35
	sub a                                            ; $4baf: $97
	rst JumpTable                                          ; $4bb0: $c7
	sbc a                                            ; $4bb1: $9f
	ld a, l                                          ; $4bb2: $7d
	or $d9                                           ; $4bb3: $f6 $d9
	add $fc                                          ; $4bb5: $c6 $fc
	reti                                             ; $4bb7: $d9


	ld a, e                                          ; $4bb8: $7b
	ldh [$9d], a                                     ; $4bb9: $e0 $9d
	ld sp, hl                                        ; $4bbb: $f9
	rst SubAFromBC                                          ; $4bbc: $e7
	sbc $ff                                          ; $4bbd: $de $ff
	sub d                                            ; $4bbf: $92
	ldh a, [c]                                       ; $4bc0: $f2
	or $fc                                           ; $4bc1: $f6 $fc
	db $fc                                           ; $4bc3: $fc
	ld hl, sp+$74                                    ; $4bc4: $f8 $74
	ld sp, hl                                        ; $4bc6: $f9
	ld a, [$9393]                                    ; $4bc7: $fa $93 $93
	and a                                            ; $4bca: $a7
	and a                                            ; $4bcb: $a7
	xor a                                            ; $4bcc: $af
	ld [hl], l                                       ; $4bcd: $75
	ld d, $80                                        ; $4bce: $16 $80
	ld a, l                                          ; $4bd0: $7d
	ld a, [hl]                                       ; $4bd1: $7e
	dec hl                                           ; $4bd2: $2b
	ld d, c                                          ; $4bd3: $51
	ld a, [hl+]                                      ; $4bd4: $2a
	call Call_053_40bd                               ; $4bd5: $cd $bd $40
	add b                                            ; $4bd8: $80
	add b                                            ; $4bd9: $80
	call nc, $d5ae                                   ; $4bda: $d4 $ae $d5
	ld [hl-], a                                      ; $4bdd: $32
	ld h, d                                          ; $4bde: $62
	xor e                                            ; $4bdf: $ab
	ld e, a                                          ; $4be0: $5f
	adc e                                            ; $4be1: $8b
	ld e, h                                          ; $4be2: $5c
	ld l, e                                          ; $4be3: $6b
	or a                                             ; $4be4: $b7
	call z, $079c                                    ; $4be5: $cc $9c $07
	ld bc, $0307                                     ; $4be8: $01 $07 $03
	sub a                                            ; $4beb: $97
	ld c, a                                          ; $4bec: $4f
	ccf                                              ; $4bed: $3f
	rst AddAOntoHL                                          ; $4bee: $ef
	sub l                                            ; $4bef: $95
	xor h                                            ; $4bf0: $ac
	inc hl                                           ; $4bf1: $23
	pop hl                                           ; $4bf2: $e1
	jr nz, jr_053_4c15                               ; $4bf3: $20 $20

jr_053_4bf5:
	ldh [rAUD4LEN], a                                ; $4bf5: $e0 $20
	jr nz, jr_053_4bf5                               ; $4bf7: $20 $fc

	rst SubAFromBC                                          ; $4bf9: $e7
	ld a, e                                          ; $4bfa: $7b
	ei                                               ; $4bfb: $fb
	sbc h                                            ; $4bfc: $9c
	and b                                            ; $4bfd: $a0
	ldh [$e0], a                                     ; $4bfe: $e0 $e0
	ld [hl], a                                       ; $4c00: $77
	ld h, b                                          ; $4c01: $60
	sbc $3f                                          ; $4c02: $de $3f
	sbc [hl]                                         ; $4c04: $9e
	rra                                              ; $4c05: $1f
	ld a, e                                          ; $4c06: $7b
	ld hl, sp-$22                                    ; $4c07: $f8 $de
	ccf                                              ; $4c09: $3f
	rst SubAFromDE                                          ; $4c0a: $df
	dec e                                            ; $4c0b: $1d
	sub h                                            ; $4c0c: $94
	ld e, [hl]                                       ; $4c0d: $5e
	ld [hl], h                                       ; $4c0e: $74
	inc [hl]                                         ; $4c0f: $34
	dec [hl]                                         ; $4c10: $35
	ld sp, $bbbb                                     ; $4c11: $31 $bb $bb
	rst $38                                          ; $4c14: $ff

jr_053_4c15:
	cp c                                             ; $4c15: $b9
	cp e                                             ; $4c16: $bb
	ei                                               ; $4c17: $fb
	ld [hl], a                                       ; $4c18: $77
	ld l, h                                          ; $4c19: $6c
	sbc b                                            ; $4c1a: $98
	rst $38                                          ; $4c1b: $ff
	db $d3                                           ; $4c1c: $d3
	rst FarCall                                          ; $4c1d: $f7
	rst FarCall                                          ; $4c1e: $f7
	xor $ce                                          ; $4c1f: $ee $ce
	sbc $7a                                          ; $4c21: $de $7a
	ld e, e                                          ; $4c23: $5b
	rst SubAFromDE                                          ; $4c24: $df
	rst GetHLinHL                                          ; $4c25: $cf
	ld [hl], c                                       ; $4c26: $71
	rst FarCall                                          ; $4c27: $f7
	ld a, [hl]                                       ; $4c28: $7e
	and l                                            ; $4c29: $a5

jr_053_4c2a:
	sub l                                            ; $4c2a: $95
	jp c, $b8ba                                      ; $4c2b: $da $ba $b8

	ld a, b                                          ; $4c2e: $78
	ld a, c                                          ; $4c2f: $79
	ld sp, hl                                        ; $4c30: $f9
	sbc h                                            ; $4c31: $9c
	cp h                                             ; $4c32: $bc
	dec a                                            ; $4c33: $3d
	ld a, l                                          ; $4c34: $7d
	ld [hl], a                                       ; $4c35: $77
	daa                                              ; $4c36: $27
	sbc h                                            ; $4c37: $9c
	dec l                                            ; $4c38: $2d
	ld l, l                                          ; $4c39: $6d
	ld l, c                                          ; $4c3a: $69
	sbc $eb                                          ; $4c3b: $de $eb
	ld a, [hl]                                       ; $4c3d: $7e
	or h                                             ; $4c3e: $b4
	rst SubAFromDE                                          ; $4c3f: $df
	di                                               ; $4c40: $f3
	db $dd                                           ; $4c41: $dd
	rst FarCall                                          ; $4c42: $f7
	ld a, e                                          ; $4c43: $7b
	ld d, b                                          ; $4c44: $50
	rst SubAFromDE                                          ; $4c45: $df
	xor l                                            ; $4c46: $ad
	sbc [hl]                                         ; $4c47: $9e
	xor c                                            ; $4c48: $a9
	db $dd                                           ; $4c49: $dd
	adc c                                            ; $4c4a: $89
	sbc h                                            ; $4c4b: $9c
	sbc e                                            ; $4c4c: $9b
	db $db                                           ; $4c4d: $db
	db $db                                           ; $4c4e: $db
	ld [hl], e                                       ; $4c4f: $73
	ret nc                                           ; $4c50: $d0

	rst SubAFromDE                                          ; $4c51: $df
	sbc b                                            ; $4c52: $98
	rst SubAFromDE                                          ; $4c53: $df
	sub b                                            ; $4c54: $90
	sbc e                                            ; $4c55: $9b
	or b                                             ; $4c56: $b0
	cp b                                             ; $4c57: $b8
	ld hl, sp-$04                                    ; $4c58: $f8 $fc
	ld [hl], b                                       ; $4c5a: $70
	ld sp, $4d7a                                     ; $4c5b: $31 $7a $4d
	db $fc                                           ; $4c5e: $fc
	sbc h                                            ; $4c5f: $9c
	ld bc, $0703                                     ; $4c60: $01 $03 $07
	ld sp, hl                                        ; $4c63: $f9
	sub a                                            ; $4c64: $97
	ld a, $3f                                        ; $4c65: $3e $3f
	inc a                                            ; $4c67: $3c
	ld a, [hl]                                       ; $4c68: $7e
	ei                                               ; $4c69: $fb
	cp $f3                                           ; $4c6a: $fe $f3
	or $de                                           ; $4c6c: $f6 $de
	rlca                                             ; $4c6e: $07
	sub c                                            ; $4c6f: $91
	dec b                                            ; $4c70: $05
	inc c                                            ; $4c71: $0c
	add hl, bc                                       ; $4c72: $09
	rra                                              ; $4c73: $1f
	rra                                              ; $4c74: $1f
	ld l, l                                          ; $4c75: $6d
	sbc $38                                          ; $4c76: $de $38
	jr jr_053_4c2a                                   ; $4c78: $18 $b0

	rst SubAFromDE                                          ; $4c7a: $df
	ld a, h                                          ; $4c7b: $7c
	db $e3                                           ; $4c7c: $e3
	db $d3                                           ; $4c7d: $d3
	ld a, e                                          ; $4c7e: $7b
	inc hl                                           ; $4c7f: $23
	sub e                                            ; $4c80: $93
	ld a, a                                          ; $4c81: $7f
	ldh [hDisp0_SCY], a                                     ; $4c82: $e0 $83
	inc e                                            ; $4c84: $1c
	ld a, a                                          ; $4c85: $7f
	db $e3                                           ; $4c86: $e3
	dec b                                            ; $4c87: $05
	ld a, [de]                                       ; $4c88: $1a
	ld [$d036], sp                                   ; $4c89: $08 $36 $d0
	db $ed                                           ; $4c8c: $ed
	call c, $87ff                                    ; $4c8d: $dc $ff $87
	db $fd                                           ; $4c90: $fd
	ld l, a                                          ; $4c91: $6f
	ldh a, [c]                                       ; $4c92: $f2
	rst $38                                          ; $4c93: $ff
	rst $38                                          ; $4c94: $ff
	ld e, a                                          ; $4c95: $5f
	ld e, c                                          ; $4c96: $59
	inc c                                            ; $4c97: $0c
	ld b, $13                                        ; $4c98: $06 $13
	ld bc, $e2e4                                     ; $4c9a: $01 $e4 $e2
	pop af                                           ; $4c9d: $f1
	ldh a, [$f8]                                     ; $4c9e: $f0 $f8
	db $fc                                           ; $4ca0: $fc
	cp $ff                                           ; $4ca1: $fe $ff
	ld h, a                                          ; $4ca3: $67
	ccf                                              ; $4ca4: $3f
	sbc a                                            ; $4ca5: $9f
	adc $ec                                          ; $4ca6: $ce $ec
	ld a, c                                          ; $4ca8: $79
	ld d, [hl]                                       ; $4ca9: $56
	ld a, a                                          ; $4caa: $7f
	ld a, $80                                        ; $4cab: $3e $80
	rrca                                             ; $4cad: $0f
	add a                                            ; $4cae: $87
	ld b, a                                          ; $4caf: $47
	inc hl                                           ; $4cb0: $23
	inc de                                           ; $4cb1: $13
	dec bc                                           ; $4cb2: $0b
	jp $df0f                                         ; $4cb3: $c3 $0f $df


	rst SubAFromDE                                          ; $4cb6: $df
	sub a                                            ; $4cb7: $97
	add e                                            ; $4cb8: $83
	adc a                                            ; $4cb9: $8f
	nop                                              ; $4cba: $00
	db $fc                                           ; $4cbb: $fc
	ldh a, [rAUD4LEN]                                ; $4cbc: $f0 $20
	jr nz, jr_053_4d2f                               ; $4cbe: $20 $6f

	ld a, a                                          ; $4cc0: $7f

jr_053_4cc1:
	ld [hl], d                                       ; $4cc1: $72
	cp $8f                                           ; $4cc2: $fe $8f
	reti                                             ; $4cc4: $d9


	sbc [hl]                                         ; $4cc5: $9e
	halt                                             ; $4cc6: $76
	db $f4                                           ; $4cc7: $f4
	cp a                                             ; $4cc8: $bf
	ld h, a                                          ; $4cc9: $67
	dec e                                            ; $4cca: $1d
	ld a, a                                          ; $4ccb: $7f
	sub b                                            ; $4ccc: $90
	ccf                                              ; $4ccd: $3f
	ld a, a                                          ; $4cce: $7f
	db $fd                                           ; $4ccf: $fd
	db $eb                                           ; $4cd0: $eb
	pop bc                                           ; $4cd1: $c1
	ld a, l                                          ; $4cd2: $7d
	ccf                                              ; $4cd3: $3f
	sub d                                            ; $4cd4: $92
	sub d                                            ; $4cd5: $92
	and h                                            ; $4cd6: $a4
	and l                                            ; $4cd7: $a5
	xor [hl]                                         ; $4cd8: $ae
	inc l                                            ; $4cd9: $2c
	jr c, @+$32                                      ; $4cda: $38 $30

	reti                                             ; $4cdc: $d9


	rst $38                                          ; $4cdd: $ff
	ld a, a                                          ; $4cde: $7f

Call_053_4cdf:
	add $9c                                          ; $4cdf: $c6 $9c
	rst AddAOntoHL                                          ; $4ce1: $ef
	rst SubAFromDE                                          ; $4ce2: $df
	jp c, $bc7a                                      ; $4ce3: $da $7a $bc

	sbc e                                            ; $4ce6: $9b
	rst SubAFromBC                                          ; $4ce7: $e7
	jp hl                                            ; $4ce8: $e9


	ret                                              ; $4ce9: $c9


	ret                                              ; $4cea: $c9


	ld a, d                                          ; $4ceb: $7a
	cp h                                             ; $4cec: $bc
	ld a, [hl]                                       ; $4ced: $7e
	cp l                                             ; $4cee: $bd
	sub a                                            ; $4cef: $97
	rst FarCall                                          ; $4cf0: $f7
	and h                                            ; $4cf1: $a4
	inc [hl]                                         ; $4cf2: $34
	dec [hl]                                         ; $4cf3: $35
	dec [hl]                                         ; $4cf4: $35
	cp e                                             ; $4cf5: $bb
	or e                                             ; $4cf6: $b3
	or [hl]                                          ; $4cf7: $b6
	ld a, e                                          ; $4cf8: $7b
	dec c                                            ; $4cf9: $0d
	rst SubAFromDE                                          ; $4cfa: $df
	xor $df                                          ; $4cfb: $ee $df
	ld h, [hl]                                       ; $4cfd: $66
	sub a                                            ; $4cfe: $97
	ldh a, [hDisp1_SCY]                                     ; $4cff: $f0 $90
	xor b                                            ; $4d01: $a8
	and $75                                          ; $4d02: $e6 $75
	ld d, e                                          ; $4d04: $53
	cp d                                             ; $4d05: $ba
	add hl, sp                                       ; $4d06: $39
	ld a, d                                          ; $4d07: $7a
	ld d, d                                          ; $4d08: $52
	sub b                                            ; $4d09: $90
	db $dd                                           ; $4d0a: $dd
	adc $ee                                          ; $4d0b: $ce $ee
	ld h, a                                          ; $4d0d: $67
	ld h, a                                          ; $4d0e: $67
	jr nz, jr_053_4cc1                               ; $4d0f: $20 $b0

	ld h, b                                          ; $4d11: $60
	jr z, jr_053_4d44                                ; $4d12: $28 $30

	sbc b                                            ; $4d14: $98
	sbc b                                            ; $4d15: $98
	call z, $e0e0                                    ; $4d16: $cc $e0 $e0
	ld a, e                                          ; $4d19: $7b
	ld [hl-], a                                      ; $4d1a: $32
	rst SubAFromDE                                          ; $4d1b: $df
	ld a, b                                          ; $4d1c: $78
	sub e                                            ; $4d1d: $93
	jr c, jr_053_4d3f                                ; $4d1e: $38 $1f

	rrca                                             ; $4d20: $0f
	rrca                                             ; $4d21: $0f
	rlca                                             ; $4d22: $07
	inc bc                                           ; $4d23: $03
	rlca                                             ; $4d24: $07
	rrca                                             ; $4d25: $0f
	rlca                                             ; $4d26: $07
	dec c                                            ; $4d27: $0d
	dec c                                            ; $4d28: $0d
	inc b                                            ; $4d29: $04
	db $fc                                           ; $4d2a: $fc
	call c, $9dff                                    ; $4d2b: $dc $ff $9d
	cp a                                             ; $4d2e: $bf

jr_053_4d2f:
	db $db                                           ; $4d2f: $db
	ld [hl], c                                       ; $4d30: $71
	inc h                                            ; $4d31: $24
	rst SubAFromDE                                          ; $4d32: $df
	rst FarCall                                          ; $4d33: $f7
	sub [hl]                                         ; $4d34: $96
	or a                                             ; $4d35: $b7
	sub e                                            ; $4d36: $93
	rst $38                                          ; $4d37: $ff
	ei                                               ; $4d38: $fb
	ld a, e                                          ; $4d39: $7b
	ld a, l                                          ; $4d3a: $7d
	rst $38                                          ; $4d3b: $ff
	cp a                                             ; $4d3c: $bf
	or $dd                                           ; $4d3d: $f6 $dd

jr_053_4d3f:
	rst $38                                          ; $4d3f: $ff
	sbc d                                            ; $4d40: $9a
	ei                                               ; $4d41: $fb
	ld a, c                                          ; $4d42: $79
	ld a, c                                          ; $4d43: $79

jr_053_4d44:
	add hl, sp                                       ; $4d44: $39
	db $10                                           ; $4d45: $10
	ld [hl], l                                       ; $4d46: $75
	db $10                                           ; $4d47: $10
	ld a, a                                          ; $4d48: $7f
	rst SubAFromBC                                          ; $4d49: $e7
	ld h, l                                          ; $4d4a: $65
	rlca                                             ; $4d4b: $07
	rst SubAFromDE                                          ; $4d4c: $df
	rst SubAFromBC                                          ; $4d4d: $e7
	ld l, l                                          ; $4d4e: $6d
	rst FarCall                                          ; $4d4f: $f7
	sbc [hl]                                         ; $4d50: $9e
	cp a                                             ; $4d51: $bf
	jp c, $98ff                                      ; $4d52: $da $ff $98

	rst SubAFromDE                                          ; $4d55: $df
	sbc a                                            ; $4d56: $9f
	adc c                                            ; $4d57: $89
	sbc b                                            ; $4d58: $98
	sbc b                                            ; $4d59: $98
	ret c                                            ; $4d5a: $d8

	ld e, c                                          ; $4d5b: $59
	sbc $5d                                          ; $4d5c: $de $5d
	reti                                             ; $4d5e: $d9


	rst $38                                          ; $4d5f: $ff
	sbc [hl]                                         ; $4d60: $9e
	db $fc                                           ; $4d61: $fc
	sbc $ff                                          ; $4d62: $de $ff
	sbc e                                            ; $4d64: $9b
	ld sp, hl                                        ; $4d65: $f9
	add sp, -$34                                     ; $4d66: $e8 $cc
	add [hl]                                         ; $4d68: $86
	ld a, c                                          ; $4d69: $79
	inc de                                           ; $4d6a: $13
	sbc c                                            ; $4d6b: $99
	ld a, [$c8e9]                                    ; $4d6c: $fa $e9 $c8
	adc b                                            ; $4d6f: $88
	add h                                            ; $4d70: $84
	rra                                              ; $4d71: $1f
	ld [hl], e                                       ; $4d72: $73
	ld c, e                                          ; $4d73: $4b
	ei                                               ; $4d74: $fb
	add b                                            ; $4d75: $80
	add e                                            ; $4d76: $83
	ld a, h                                          ; $4d77: $7c
	nop                                              ; $4d78: $00
	nop                                              ; $4d79: $00
	ld sp, hl                                        ; $4d7a: $f9
	ld hl, sp-$02                                    ; $4d7b: $f8 $fe
	db $fd                                           ; $4d7d: $fd
	ld hl, sp-$0f                                    ; $4d7e: $f8 $f1
	rst SubAFromBC                                          ; $4d80: $e7
	ld a, [$2726]                                    ; $4d81: $fa $26 $27
	ld b, c                                          ; $4d84: $41
	jp Jump_053_4e47                                 ; $4d85: $c3 $47 $4e


	ld a, b                                          ; $4d88: $78
	ld e, h                                          ; $4d89: $5c
	rra                                              ; $4d8a: $1f
	rst $38                                          ; $4d8b: $ff
	db $dd                                           ; $4d8c: $dd
	ld sp, hl                                        ; $4d8d: $f9
	ld a, [$feff]                                    ; $4d8e: $fa $ff $fe
	rst SubAFromBC                                          ; $4d91: $e7
	ldh [rP1], a                                     ; $4d92: $e0 $00
	db $e3                                           ; $4d94: $e3
	add b                                            ; $4d95: $80
	rst $38                                          ; $4d96: $ff
	rlca                                             ; $4d97: $07
	inc bc                                           ; $4d98: $03
	inc bc                                           ; $4d99: $03
	rra                                              ; $4d9a: $1f
	ld d, [hl]                                       ; $4d9b: $56
	push hl                                          ; $4d9c: $e5
	xor d                                            ; $4d9d: $aa
	ld [hl], l                                       ; $4d9e: $75
	ld [$ef37], a                                    ; $4d9f: $ea $37 $ef
	cp a                                             ; $4da2: $bf
	xor c                                            ; $4da3: $a9
	sub b                                            ; $4da4: $90
	ld b, b                                          ; $4da5: $40
	ret nz                                           ; $4da6: $c0

	nop                                              ; $4da7: $00
	ret nz                                           ; $4da8: $c0

	db $10                                           ; $4da9: $10
	ret nz                                           ; $4daa: $c0

	ret nz                                           ; $4dab: $c0

	xor b                                            ; $4dac: $a8
	or d                                             ; $4dad: $b2
	ld a, l                                          ; $4dae: $7d
	ld [$aaf4], a                                    ; $4daf: $ea $f4 $aa
	ld d, d                                          ; $4db2: $52
	ccf                                              ; $4db3: $3f
	ld d, a                                          ; $4db4: $57
	sbc c                                            ; $4db5: $99
	ld c, l                                          ; $4db6: $4d
	ld [bc], a                                       ; $4db7: $02
	dec d                                            ; $4db8: $15
	dec bc                                           ; $4db9: $0b
	ld d, l                                          ; $4dba: $55
	xor a                                            ; $4dbb: $af
	halt                                             ; $4dbc: $76
	ld [bc], a                                       ; $4dbd: $02
	sbc d                                            ; $4dbe: $9a
	ld a, a                                          ; $4dbf: $7f
	ld c, a                                          ; $4dc0: $4f
	rst SubAFromDE                                          ; $4dc1: $df
	sbc e                                            ; $4dc2: $9b
	call z, Call_053_5379                            ; $4dc3: $cc $79 $53
	ld a, l                                          ; $4dc6: $7d
	ld e, l                                          ; $4dc7: $5d
	ld a, h                                          ; $4dc8: $7c
	add b                                            ; $4dc9: $80
	add b                                            ; $4dca: $80
	sub c                                            ; $4dcb: $91
	push bc                                          ; $4dcc: $c5
	ld h, h                                          ; $4dcd: $64

Call_053_4dce:
	reti                                             ; $4dce: $d9


	ld [hl], e                                       ; $4dcf: $73
	ld c, b                                          ; $4dd0: $48
	pop de                                           ; $4dd1: $d1
	inc de                                           ; $4dd2: $13
	ld c, $02                                        ; $4dd3: $0e $02
	add e                                            ; $4dd5: $83
	and $fc                                          ; $4dd6: $e6 $fc
	ldh a, [$60]                                     ; $4dd8: $f0 $60
	ldh [$3d], a                                     ; $4dda: $e0 $3d
	add e                                            ; $4ddc: $83
	db $e3                                           ; $4ddd: $e3
	rlca                                             ; $4dde: $07
	sub h                                            ; $4ddf: $94
	rst GetHLinHL                                          ; $4de0: $cf
	add e                                            ; $4de1: $83
	add a                                            ; $4de2: $87
	rrca                                             ; $4de3: $0f
	dec a                                            ; $4de4: $3d
	dec e                                            ; $4de5: $1d
	inc bc                                           ; $4de6: $03
	rrca                                             ; $4de7: $0f
	ccf                                              ; $4de8: $3f
	ld bc, $7994                                     ; $4de9: $01 $94 $79
	ld h, h                                          ; $4dec: $64
	call nz, $0d8d                                   ; $4ded: $c4 $8d $0d
	ld c, $ca                                        ; $4df0: $0e $ca
	ld e, d                                          ; $4df2: $5a
	ld d, e                                          ; $4df3: $53
	ei                                               ; $4df4: $fb
	ei                                               ; $4df5: $fb
	db $dd                                           ; $4df6: $dd
	ldh a, [c]                                       ; $4df7: $f2
	rst SubAFromDE                                          ; $4df8: $df
	ldh [c], a                                       ; $4df9: $e2
	add b                                            ; $4dfa: $80
	ld [hl], l                                       ; $4dfb: $75
	ld c, l                                          ; $4dfc: $4d
	ld c, h                                          ; $4dfd: $4c
	ld l, h                                          ; $4dfe: $6c
	set 2, d                                         ; $4dff: $cb $d2
	ld d, [hl]                                       ; $4e01: $56
	ld [hl], a                                       ; $4e02: $77
	cp $f6                                           ; $4e03: $fe $f6
	or $d6                                           ; $4e05: $f6 $d6
	ld d, [hl]                                       ; $4e07: $56
	ld d, a                                          ; $4e08: $57
	ld d, e                                          ; $4e09: $53
	ld d, e                                          ; $4e0a: $53
	and e                                            ; $4e0b: $a3
	ld [hl+], a                                      ; $4e0c: $22
	ld hl, $6935                                     ; $4e0d: $21 $35 $69
	ld a, c                                          ; $4e10: $79
	push af                                          ; $4e11: $f5
	ld a, a                                          ; $4e12: $7f
	ld h, [hl]                                       ; $4e13: $66
	ld h, a                                          ; $4e14: $67
	ld h, a                                          ; $4e15: $67
	ld h, e                                          ; $4e16: $63
	inc sp                                           ; $4e17: $33
	inc sp                                           ; $4e18: $33
	dec sp                                           ; $4e19: $3b
	add b                                            ; $4e1a: $80
	xor c                                            ; $4e1b: $a9
	ld l, l                                          ; $4e1c: $6d
	sbc l                                            ; $4e1d: $9d
	sub [hl]                                         ; $4e1e: $96
	ld a, d                                          ; $4e1f: $7a
	db $ed                                           ; $4e20: $ed
	xor h                                            ; $4e21: $ac
	xor $c9                                          ; $4e22: $ee $c9

Call_053_4e24:
	inc sp                                           ; $4e24: $33
	inc sp                                           ; $4e25: $33
	add hl, sp                                       ; $4e26: $39
	sbc l                                            ; $4e27: $9d
	sbc [hl]                                         ; $4e28: $9e
	rst SubAFromDE                                          ; $4e29: $df
	ld e, e                                          ; $4e2a: $5b
	ld a, a                                          ; $4e2b: $7f
	add sp, $66                                      ; $4e2c: $e8 $66
	ldh a, [c]                                       ; $4e2e: $f2
	or e                                             ; $4e2f: $b3
	ld e, c                                          ; $4e30: $59
	ld l, c                                          ; $4e31: $69
	ld [hl], c                                       ; $4e32: $71
	ld a, c                                          ; $4e33: $79
	inc e                                            ; $4e34: $1c
	sbc h                                            ; $4e35: $9c
	adc [hl]                                         ; $4e36: $8e

jr_053_4e37:
	adc $e7                                          ; $4e37: $ce $e7
	rst FarCall                                          ; $4e39: $f7
	sub l                                            ; $4e3a: $95
	rst SubAFromDE                                          ; $4e3b: $df
	rst GetHLinHL                                          ; $4e3c: $cf
	inc bc                                           ; $4e3d: $03
	ld bc, $0001                                     ; $4e3e: $01 $01 $00
	nop                                              ; $4e41: $00
	add b                                            ; $4e42: $80
	add b                                            ; $4e43: $80
	ret nz                                           ; $4e44: $c0

	ld sp, hl                                        ; $4e45: $f9
	adc d                                            ; $4e46: $8a

Jump_053_4e47:
	cp a                                             ; $4e47: $bf
	db $fc                                           ; $4e48: $fc
	ret c                                            ; $4e49: $d8

	or b                                             ; $4e4a: $b0
	ldh a, [$d0]                                     ; $4e4b: $f0 $d0
	ld hl, sp-$18                                    ; $4e4d: $f8 $e8
	pop de                                           ; $4e4f: $d1
	ld d, b                                          ; $4e50: $50
	ld [hl], b                                       ; $4e51: $70
	ld [hl], b                                       ; $4e52: $70
	jr nc, jr_053_4e85                               ; $4e53: $30 $30

	db $10                                           ; $4e55: $10
	jr jr_053_4e37                                   ; $4e56: $18 $df

	rst GetHLinHL                                          ; $4e58: $cf
	ld c, l                                          ; $4e59: $4d
	ld a, [bc]                                       ; $4e5a: $0a
	inc bc                                           ; $4e5b: $03
	cp $9e                                           ; $4e5c: $fe $9e
	db $10                                           ; $4e5e: $10
	ld a, c                                          ; $4e5f: $79
	jp z, $d67b                                      ; $4e60: $ca $7b $d6

	sub d                                            ; $4e63: $92
	nop                                              ; $4e64: $00
	ei                                               ; $4e65: $fb
	rst SubAFromDE                                          ; $4e66: $df
	dec sp                                           ; $4e67: $3b
	sbc c                                            ; $4e68: $99
	adc b                                            ; $4e69: $88
	add b                                            ; $4e6a: $80
	nop                                              ; $4e6b: $00
	nop                                              ; $4e6c: $00
	ld h, a                                          ; $4e6d: $67
	ld h, e                                          ; $4e6e: $63
	add c                                            ; $4e6f: $81
	add b                                            ; $4e70: $80
	ld a, e                                          ; $4e71: $7b
	ld sp, hl                                        ; $4e72: $f9
	sub c                                            ; $4e73: $91
	nop                                              ; $4e74: $00
	rst AddAOntoHL                                          ; $4e75: $ef
	cp $f7                                           ; $4e76: $fe $f7
	ei                                               ; $4e78: $fb
	rst SubAFromBC                                          ; $4e79: $e7
	ld h, a                                          ; $4e7a: $67
	inc hl                                           ; $4e7b: $23
	ld bc, $8f9f                                     ; $4e7c: $01 $9f $8f
	adc [hl]                                         ; $4e7f: $8e
	add [hl]                                         ; $4e80: $86
	add d                                            ; $4e81: $82
	halt                                             ; $4e82: $76
	add b                                            ; $4e83: $80
	ld a, l                                          ; $4e84: $7d

jr_053_4e85:
	ld c, d                                          ; $4e85: $4a
	sbc [hl]                                         ; $4e86: $9e
	push af                                          ; $4e87: $f5
	db $dd                                           ; $4e88: $dd
	rst $38                                          ; $4e89: $ff
	rst SubAFromDE                                          ; $4e8a: $df
	ld a, a                                          ; $4e8b: $7f
	rst SubAFromDE                                          ; $4e8c: $df
	dec sp                                           ; $4e8d: $3b
	rst SubAFromDE                                          ; $4e8e: $df
	ld de, $01df                                     ; $4e8f: $11 $df $01
	sbc [hl]                                         ; $4e92: $9e
	ld [bc], a                                       ; $4e93: $02
	ld [hl], a                                       ; $4e94: $77
	set 7, [hl]                                      ; $4e95: $cb $fe
	ld h, a                                          ; $4e97: $67
	ld hl, sp-$64                                    ; $4e98: $f8 $9c
	nop                                              ; $4e9a: $00
	rst JumpTable                                          ; $4e9b: $c7
	rst $38                                          ; $4e9c: $ff
	ld [hl], e                                       ; $4e9d: $73
	adc l                                            ; $4e9e: $8d
	ld [hl], d                                       ; $4e9f: $72
	jp Jump_053_7cfe                                 ; $4ea0: $c3 $fe $7c


	cp d                                             ; $4ea3: $ba
	add b                                            ; $4ea4: $80
	db $fd                                           ; $4ea5: $fd
	ld a, [$d8e5]                                    ; $4ea6: $fa $e5 $d8
	set 1, a                                         ; $4ea9: $cb $cf
	sbc a                                            ; $4eab: $9f
	rla                                              ; $4eac: $17
	db $10                                           ; $4ead: $10
	jr nz, jr_053_4ee0                               ; $4eae: $20 $30

	ld h, b                                          ; $4eb0: $60
	ld [hl], b                                       ; $4eb1: $70
	ld [hl], b                                       ; $4eb2: $70
	add hl, sp                                       ; $4eb3: $39
	rst SubAFromHL                                          ; $4eb4: $d7
	reti                                             ; $4eb5: $d9


	add l                                            ; $4eb6: $85

jr_053_4eb7:
	ld d, l                                          ; $4eb7: $55
	rst $38                                          ; $4eb8: $ff
	dec bc                                           ; $4eb9: $0b
	rla                                              ; $4eba: $17
	rst $38                                          ; $4ebb: $ff
	db $e3                                           ; $4ebc: $e3
	jr nz, jr_053_4f37                               ; $4ebd: $20 $78

	jr c, jr_053_4ed9                                ; $4ebf: $38 $18

	db $fc                                           ; $4ec1: $fc
	db $ec                                           ; $4ec2: $ec
	ld l, e                                          ; $4ec3: $6b
	adc b                                            ; $4ec4: $88
	push hl                                          ; $4ec5: $e5
	sub d                                            ; $4ec6: $92
	db $ed                                           ; $4ec7: $ed
	jp hl                                            ; $4ec8: $e9


	db $f4                                           ; $4ec9: $f4
	reti                                             ; $4eca: $d9


	ld a, $94                                        ; $4ecb: $3e $94
	ld a, [$57ed]                                    ; $4ecd: $fa $ed $57
	ld [hl], a                                       ; $4ed0: $77
	sbc e                                            ; $4ed1: $9b
	ccf                                              ; $4ed2: $3f
	rst $38                                          ; $4ed3: $ff
	ld bc, $0901                                     ; $4ed4: $01 $01 $09
	add hl, hl                                       ; $4ed7: $29
	ld b, a                                          ; $4ed8: $47

jr_053_4ed9:
	ld b, e                                          ; $4ed9: $43
	inc de                                           ; $4eda: $13
	or a                                             ; $4edb: $b7
	ld [hl], d                                       ; $4edc: $72
	ld a, c                                          ; $4edd: $79
	ld a, c                                          ; $4ede: $79
	adc b                                            ; $4edf: $88

jr_053_4ee0:
	add b                                            ; $4ee0: $80
	or d                                             ; $4ee1: $b2
	or [hl]                                          ; $4ee2: $b6
	db $ec                                           ; $4ee3: $ec
	db $ec                                           ; $4ee4: $ec
	ld hl, sp-$10                                    ; $4ee5: $f8 $f0
	cp $f9                                           ; $4ee7: $fe $f9
	inc de                                           ; $4ee9: $13
	inc hl                                           ; $4eea: $23
	daa                                              ; $4eeb: $27
	ld b, a                                          ; $4eec: $47
	ld c, a                                          ; $4eed: $4f
	sbc a                                            ; $4eee: $9f
	cp a                                             ; $4eef: $bf
	ld a, a                                          ; $4ef0: $7f
	or a                                             ; $4ef1: $b7
	cp [hl]                                          ; $4ef2: $be
	sbc h                                            ; $4ef3: $9c
	sub c                                            ; $4ef4: $91
	sub l                                            ; $4ef5: $95
	dec de                                           ; $4ef6: $1b
	jr nc, jr_053_4eb7                               ; $4ef7: $30 $be

	ld b, b                                          ; $4ef9: $40
	ld b, c                                          ; $4efa: $41
	ld h, e                                          ; $4efb: $63
	ld l, [hl]                                       ; $4efc: $6e
	ld l, e                                          ; $4efd: $6b
	ldh [$c1], a                                     ; $4efe: $e0 $c1
	add b                                            ; $4f00: $80
	ld b, e                                          ; $4f01: $43
	add hl, bc                                       ; $4f02: $09
	add l                                            ; $4f03: $85
	ld e, c                                          ; $4f04: $59
	rst SubAFromBC                                          ; $4f05: $e7
	pop hl                                           ; $4f06: $e1
	dec de                                           ; $4f07: $1b
	ld c, a                                          ; $4f08: $4f
	sbc l                                            ; $4f09: $9d
	rst JumpTable                                          ; $4f0a: $c7
	inc bc                                           ; $4f0b: $03
	rlca                                             ; $4f0c: $07
	add hl, de                                       ; $4f0d: $19
	rst $38                                          ; $4f0e: $ff
	rst SubAFromBC                                          ; $4f0f: $e7
	add l                                            ; $4f10: $85
	add hl, bc                                       ; $4f11: $09
	ld d, d                                          ; $4f12: $52
	ld e, c                                          ; $4f13: $59
	ld b, a                                          ; $4f14: $47
	xor a                                            ; $4f15: $af
	xor d                                            ; $4f16: $aa
	ld h, a                                          ; $4f17: $67
	ld [hl], l                                       ; $4f18: $75
	ld e, e                                          ; $4f19: $5b
	db $e3                                           ; $4f1a: $e3
	db $e3                                           ; $4f1b: $e3
	ld sp, hl                                        ; $4f1c: $f9
	ld sp, hl                                        ; $4f1d: $f9
	db $fd                                           ; $4f1e: $fd
	db $fc                                           ; $4f1f: $fc

jr_053_4f20:
	rst SubAFromDE                                          ; $4f20: $df
	cp $92                                           ; $4f21: $fe $92
	ld [hl], a                                       ; $4f23: $77
	rst GetHLinHL                                          ; $4f24: $cf
	xor e                                            ; $4f25: $ab
	dec hl                                           ; $4f26: $2b
	and [hl]                                         ; $4f27: $a6
	or l                                             ; $4f28: $b5
	ld e, a                                          ; $4f29: $5f
	ld a, [hl]                                       ; $4f2a: $7e
	ld e, e                                          ; $4f2b: $5b
	ld a, e                                          ; $4f2c: $7b
	ld a, [hl]                                       ; $4f2d: $7e
	cp $fd                                           ; $4f2e: $fe $fd
	ld a, b                                          ; $4f30: $78
	inc l                                            ; $4f31: $2c
	sbc h                                            ; $4f32: $9c
	ld a, e                                          ; $4f33: $7b
	cp h                                             ; $4f34: $bc
	cp [hl]                                          ; $4f35: $be
	ld [hl], h                                       ; $4f36: $74

jr_053_4f37:
	xor c                                            ; $4f37: $a9
	sub e                                            ; $4f38: $93
	rst AddAOntoHL                                          ; $4f39: $ef
	xor l                                            ; $4f3a: $ad
	rst SubAFromBC                                          ; $4f3b: $e7
	db $e3                                           ; $4f3c: $e3
	pop hl                                           ; $4f3d: $e1
	and b                                            ; $4f3e: $a0
	jr nz, jr_053_4f41                               ; $4f3f: $20 $00

jr_053_4f41:
	ldh a, [$ef]                                     ; $4f41: $f0 $ef
	rst AddAOntoHL                                          ; $4f43: $ef
	rst $38                                          ; $4f44: $ff
	ld a, e                                          ; $4f45: $7b
	add sp, $7d                                      ; $4f46: $e8 $7d
	db $fd                                           ; $4f48: $fd
	add a                                            ; $4f49: $87
	ccf                                              ; $4f4a: $3f
	cp b                                             ; $4f4b: $b8
	sbc b                                            ; $4f4c: $98
	adc c                                            ; $4f4d: $89
	add e                                            ; $4f4e: $83
	inc bc                                           ; $4f4f: $03
	inc bc                                           ; $4f50: $03
	ld bc, $ffcd                                     ; $4f51: $01 $cd $ff
	rst $38                                          ; $4f54: $ff
	ccf                                              ; $4f55: $3f
	rst AddAOntoHL                                          ; $4f56: $ef
	ei                                               ; $4f57: $fb
	ld a, $3b                                        ; $4f58: $3e $3b
	rst $38                                          ; $4f5a: $ff
	di                                               ; $4f5b: $f3
	nop                                              ; $4f5c: $00
	ret nz                                           ; $4f5d: $c0

jr_053_4f5e:
	ldh a, [$fc]                                     ; $4f5e: $f0 $fc
	rra                                              ; $4f60: $1f
	ld a, [hl-]                                      ; $4f61: $3a
	sbc $c0                                          ; $4f62: $de $c0
	db $dd                                           ; $4f64: $dd
	ldh [$9e], a                                     ; $4f65: $e0 $9e
	or b                                             ; $4f67: $b0
	ld a, d                                          ; $4f68: $7a
	cp h                                             ; $4f69: $bc
	ld a, [hl]                                       ; $4f6a: $7e
	cp e                                             ; $4f6b: $bb
	ld a, e                                          ; $4f6c: $7b
	db $f4                                           ; $4f6d: $f4
	adc a                                            ; $4f6e: $8f
	add sp, -$14                                     ; $4f6f: $e8 $ec
	db $ec                                           ; $4f71: $ec
	cp $fa                                           ; $4f72: $fe $fa
	di                                               ; $4f74: $f3
	push af                                          ; $4f75: $f5
	db $dd                                           ; $4f76: $dd
	jr @+$1a                                         ; $4f77: $18 $18

	inc e                                            ; $4f79: $1c
	inc e                                            ; $4f7a: $1c
	ld e, $1e                                        ; $4f7b: $1e $1e
	dec de                                           ; $4f7d: $1b
	inc sp                                           ; $4f7e: $33
	ld a, c                                          ; $4f7f: $79
	ld h, c                                          ; $4f80: $61
	sbc b                                            ; $4f81: $98
	rlca                                             ; $4f82: $07
	ld b, $02                                        ; $4f83: $06 $02
	add d                                            ; $4f85: $82
	pop bc                                           ; $4f86: $c1
	rrca                                             ; $4f87: $0f
	ld c, $7b                                        ; $4f88: $0e $7b
	rst FarCall                                          ; $4f8a: $f7
	ld a, l                                          ; $4f8b: $7d
	rst AddAOntoHL                                          ; $4f8c: $ef
	sub c                                            ; $4f8d: $91
	add c                                            ; $4f8e: $81
	and b                                            ; $4f8f: $a0
	jr nc, jr_053_4f5e                               ; $4f90: $30 $cc

	ld a, $02                                        ; $4f92: $3e $02
	inc b                                            ; $4f94: $04
	ld [$c030], sp                                   ; $4f95: $08 $30 $c0
	jr c, jr_053_4f20                                ; $4f98: $38 $86

	rst $38                                          ; $4f9a: $ff
	cp $78                                           ; $4f9b: $fe $78
	ld l, d                                          ; $4f9d: $6a
	ld l, h                                          ; $4f9e: $6c
	ld [hl], d                                       ; $4f9f: $72
	sbc l                                            ; $4fa0: $9d
	rra                                              ; $4fa1: $1f
	ccf                                              ; $4fa2: $3f
	ld sp, hl                                        ; $4fa3: $f9
	ld [hl], e                                       ; $4fa4: $73
	ld a, [hl+]                                      ; $4fa5: $2a
	sbc $fc                                          ; $4fa6: $de $fc
	ld a, [hl]                                       ; $4fa8: $7e
	rst JumpTable                                          ; $4fa9: $c7
	rst SubAFromDE                                          ; $4faa: $df
	ld [bc], a                                       ; $4fab: $02
	sbc $04                                          ; $4fac: $de $04
	sbc [hl]                                         ; $4fae: $9e
	ld [$7ff1], sp                                   ; $4faf: $08 $f1 $7f
	db $d3                                           ; $4fb2: $d3
	sbc $03                                          ; $4fb3: $de $03
	sbc $07                                          ; $4fb5: $de $07
	ld [hl], e                                       ; $4fb7: $73
	db $f4                                           ; $4fb8: $f4
	ld a, d                                          ; $4fb9: $7a
	and c                                            ; $4fba: $a1
	adc [hl]                                         ; $4fbb: $8e
	call z, $cde3                                    ; $4fbc: $cc $e3 $cd
	dec bc                                           ; $4fbf: $0b
	rst $38                                          ; $4fc0: $ff
	ldh a, [$ed]                                     ; $4fc1: $f0 $ed
	add $73                                          ; $4fc3: $c6 $73
	sbc a                                            ; $4fc5: $9f
	cp [hl]                                          ; $4fc6: $be
	db $fc                                           ; $4fc7: $fc
	jr jr_053_4fe9                                   ; $4fc8: $18 $1f

	inc de                                           ; $4fca: $13
	inc hl                                           ; $4fcb: $23
	inc a                                            ; $4fcc: $3c
	sbc $ff                                          ; $4fcd: $de $ff

Call_053_4fcf:
	adc [hl]                                         ; $4fcf: $8e
	ret nc                                           ; $4fd0: $d0

	and d                                            ; $4fd1: $a2
	dec b                                            ; $4fd2: $05
	nop                                              ; $4fd3: $00
	jp $0000                                        ; $4fd4: $c3 $00 $00


	rla                                              ; $4fd7: $17
	ld a, a                                          ; $4fd8: $7f
	db $fd                                           ; $4fd9: $fd
	ld a, [$7ef8]                                    ; $4fda: $fa $f8 $7e
	rst GetHLinHL                                          ; $4fdd: $cf
	sbc a                                            ; $4fde: $9f
	ld sp, hl                                        ; $4fdf: $f9
	di                                               ; $4fe0: $f3
	ld a, b                                          ; $4fe1: $78
	ld h, e                                          ; $4fe2: $63
	add b                                            ; $4fe3: $80
	rst JumpTable                                          ; $4fe4: $c7
	add l                                            ; $4fe5: $85

jr_053_4fe6:
	adc b                                            ; $4fe6: $88
	sub c                                            ; $4fe7: $91
	pop hl                                           ; $4fe8: $e1

jr_053_4fe9:
	db $e3                                           ; $4fe9: $e3
	rst $38                                          ; $4fea: $ff
	rst $38                                          ; $4feb: $ff
	rst SubAFromHL                                          ; $4fec: $d7
	rst $38                                          ; $4fed: $ff
	cp $be                                           ; $4fee: $fe $be
	ccf                                              ; $4ff0: $3f
	db $fd                                           ; $4ff1: $fd
	cp $f0                                           ; $4ff2: $fe $f0
	rst $38                                          ; $4ff4: $ff
	rst SubAFromHL                                          ; $4ff5: $d7
	sub e                                            ; $4ff6: $93
	inc de                                           ; $4ff7: $13
	daa                                              ; $4ff8: $27
	daa                                              ; $4ff9: $27
	ld c, a                                          ; $4ffa: $4f
	sbc a                                            ; $4ffb: $9f
	rst AddAOntoHL                                          ; $4ffc: $ef
	cp b                                             ; $4ffd: $b8
	ld h, a                                          ; $4ffe: $67
	sbc h                                            ; $4fff: $9c
	or a                                             ; $5000: $b7
	rst $38                                          ; $5001: $ff
	ld a, h                                          ; $5002: $7c
	ld a, h                                          ; $5003: $7c
	or d                                             ; $5004: $b2
	sbc e                                            ; $5005: $9b
	rst JumpTable                                          ; $5006: $c7
	sbc b                                            ; $5007: $98
	ld h, e                                          ; $5008: $63
	rst GetHLinHL                                          ; $5009: $cf
	ld a, e                                          ; $500a: $7b
	inc h                                            ; $500b: $24
	add b                                            ; $500c: $80
	db $dd                                           ; $500d: $dd
	xor $e7                                          ; $500e: $ee $e7
	sbc $26                                          ; $5010: $de $26
	ret                                              ; $5012: $c9


	ldh a, [$e0]                                     ; $5013: $f0 $e0
	ld h, $1f                                        ; $5015: $26 $1f
	jr jr_053_503a                                   ; $5017: $18 $21

	pop bc                                           ; $5019: $c1
	ld [hl], $0f                                     ; $501a: $36 $0f
	rra                                              ; $501c: $1f
	reti                                             ; $501d: $d9


	db $ed                                           ; $501e: $ed
	add e                                            ; $501f: $83
	add hl, de                                       ; $5020: $19
	rst FarCall                                          ; $5021: $f7
	rst $38                                          ; $5022: $ff
	rrca                                             ; $5023: $0f
	cpl                                              ; $5024: $2f
	ld sp, $7df1                                     ; $5025: $31 $f1 $7d
	rst $38                                          ; $5028: $ff
	rrca                                             ; $5029: $0f
	add hl, bc                                       ; $502a: $09
	pop af                                           ; $502b: $f1
	sub d                                            ; $502c: $92
	pop de                                           ; $502d: $d1
	adc $a7                                          ; $502e: $ce $a7
	or l                                             ; $5030: $b5
	inc [hl]                                         ; $5031: $34
	ld c, d                                          ; $5032: $4a
	ld c, d                                          ; $5033: $4a
	ld l, $a6                                        ; $5034: $2e $a6
	ld a, a                                          ; $5036: $7f
	ld e, a                                          ; $5037: $5f
	ld c, a                                          ; $5038: $4f
	ld c, a                                          ; $5039: $4f

jr_053_503a:
	ld a, c                                          ; $503a: $79
	sbc l                                            ; $503b: $9d
	add d                                            ; $503c: $82
	dec hl                                           ; $503d: $2b
	ld a, l                                          ; $503e: $7d
	ld a, e                                          ; $503f: $7b
	ld a, [hl]                                       ; $5040: $7e
	or $ff                                           ; $5041: $f6 $ff
	cp [hl]                                          ; $5043: $be
	cp $ff                                           ; $5044: $fe $ff
	db $d3                                           ; $5046: $d3
	rst JumpTable                                          ; $5047: $c7
	rst JumpTable                                          ; $5048: $c7
	adc $df                                          ; $5049: $ce $df
	db $e3                                           ; $504b: $e3
	and c                                            ; $504c: $a1
	sub b                                            ; $504d: $90
	rst $38                                          ; $504e: $ff
	cpl                                              ; $504f: $2f

Call_053_5050:
	ld [hl], b                                       ; $5050: $70
	ld [hl], b                                       ; $5051: $70
	ldh [$c0], a                                     ; $5052: $e0 $c0

Call_053_5054:
	jr jr_053_4fe6                                   ; $5054: $18 $90

	ldh a, [rAUD4LEN]                                ; $5056: $f0 $20
	jr nc, @+$72                                     ; $5058: $30 $70

	sbc $f0                                          ; $505a: $de $f0
	sbc h                                            ; $505c: $9c
	ldh [$f1], a                                     ; $505d: $e0 $f1
	add c                                            ; $505f: $81
	ld a, e                                          ; $5060: $7b
	ld e, b                                          ; $5061: $58
	sbc h                                            ; $5062: $9c
	ld h, b                                          ; $5063: $60
	ret nz                                           ; $5064: $c0

	and b                                            ; $5065: $a0

jr_053_5066:
	ld [hl], d                                       ; $5066: $72
	inc c                                            ; $5067: $0c
	adc a                                            ; $5068: $8f
	nop                                              ; $5069: $00
	jr nz, jr_053_50cc                               ; $506a: $20 $60

	ei                                               ; $506c: $fb
	di                                               ; $506d: $f3
	ld l, e                                          ; $506e: $6b
	inc bc                                           ; $506f: $03
	ei                                               ; $5070: $fb
	inc bc                                           ; $5071: $03
	ld bc, $7903                                     ; $5072: $01 $03 $79
	ld sp, hl                                        ; $5075: $f9
	ld sp, hl                                        ; $5076: $f9
	pop af                                           ; $5077: $f1
	ld h, c                                          ; $5078: $61
	ld a, e                                          ; $5079: $7b
	inc sp                                           ; $507a: $33
	sub a                                            ; $507b: $97
	jr nc, jr_053_50f6                               ; $507c: $30 $78

	ld e, b                                          ; $507e: $58
	ld e, h                                          ; $507f: $5c
	call c, $c6ce                                    ; $5080: $dc $ce $c6
	and $6c                                          ; $5083: $e6 $6c
	jr nc, jr_053_5066                               ; $5085: $30 $df

	db $fc                                           ; $5087: $fc
	sbc e                                            ; $5088: $9b
	di                                               ; $5089: $f3
	ld h, e                                          ; $508a: $63
	ld b, e                                          ; $508b: $43
	ld h, c                                          ; $508c: $61
	sbc $41                                          ; $508d: $de $41
	sbc [hl]                                         ; $508f: $9e
	nop                                              ; $5090: $00
	sbc $21                                          ; $5091: $de $21
	ld [hl], e                                       ; $5093: $73
	call Call_053_6087                               ; $5094: $cd $87 $60
	jr nc, jr_053_50b1                               ; $5097: $30 $18

	inc c                                            ; $5099: $0c
	ld b, $82                                        ; $509a: $06 $82
	add c                                            ; $509c: $81
	ld b, b                                          ; $509d: $40
	ld b, b                                          ; $509e: $40
	jr nz, jr_053_50b1                               ; $509f: $20 $10

	ld [$8304], sp                                   ; $50a1: $08 $04 $83
	add c                                            ; $50a4: $81
	ret nz                                           ; $50a5: $c0

	ret nz                                           ; $50a6: $c0

	nop                                              ; $50a7: $00
	ld bc, $1f07                                     ; $50a8: $01 $07 $1f
	db $fd                                           ; $50ab: $fd
	rst $38                                          ; $50ac: $ff
	ldh [$71], a                                     ; $50ad: $e0 $71
	ld c, a                                          ; $50af: $4f
	sbc h                                            ; $50b0: $9c

jr_053_50b1:
	inc bc                                           ; $50b1: $03
	cp $e0                                           ; $50b2: $fe $e0
	ld a, d                                          ; $50b4: $7a
	ld d, e                                          ; $50b5: $53
	sbc e                                            ; $50b6: $9b
	db $fd                                           ; $50b7: $fd
	rst SubAFromDE                                          ; $50b8: $df
	rst $38                                          ; $50b9: $ff
	pop bc                                           ; $50ba: $c1
	ld [hl], a                                       ; $50bb: $77
	push de                                          ; $50bc: $d5
	sub l                                            ; $50bd: $95
	inc bc                                           ; $50be: $03
	ld a, $e0                                        ; $50bf: $3e $e0
	nop                                              ; $50c1: $00
	nop                                              ; $50c2: $00
	db $fc                                           ; $50c3: $fc
	call c, $f8bc                                    ; $50c4: $dc $bc $f8
	ld hl, sp-$22                                    ; $50c7: $f8 $de
	ldh a, [$7e]                                     ; $50c9: $f0 $7e
	sbc [hl]                                         ; $50cb: $9e

jr_053_50cc:
	ld a, h                                          ; $50cc: $7c
	call nz, $60de                                   ; $50cd: $c4 $de $60
	ld a, e                                          ; $50d0: $7b
	xor $f3                                          ; $50d1: $ee $f3
	call c, $9c07                                    ; $50d3: $dc $07 $9c
	ld b, $0c                                        ; $50d6: $06 $0c
	rrca                                             ; $50d8: $0f
	ld l, d                                          ; $50d9: $6a
	and c                                            ; $50da: $a1
	add b                                            ; $50db: $80
	ld [$c60d], sp                                   ; $50dc: $08 $0d $c6
	ld sp, hl                                        ; $50df: $f9
	sub d                                            ; $50e0: $92
	xor b                                            ; $50e1: $a8
	inc [hl]                                         ; $50e2: $34
	ld d, d                                          ; $50e3: $52
	ld e, b                                          ; $50e4: $58
	add $3d                                          ; $50e5: $c6 $3d
	ld c, $0d                                        ; $50e7: $0e $0d
	rra                                              ; $50e9: $1f
	rra                                              ; $50ea: $1f
	dec c                                            ; $50eb: $0d
	sbc a                                            ; $50ec: $9f
	rla                                              ; $50ed: $17
	xor a                                            ; $50ee: $af
	ld e, h                                          ; $50ef: $5c
	add hl, sp                                       ; $50f0: $39
	or d                                             ; $50f1: $b2
	ld [hl], c                                       ; $50f2: $71
	ld h, b                                          ; $50f3: $60
	ld h, b                                          ; $50f4: $60
	rst SubAFromBC                                          ; $50f5: $e7

jr_053_50f6:
	ld c, a                                          ; $50f6: $4f
	sbc a                                            ; $50f7: $9f
	cp [hl]                                          ; $50f8: $be
	inc a                                            ; $50f9: $3c
	ld a, [hl]                                       ; $50fa: $7e
	rst SubAFromDE                                          ; $50fb: $df
	ld a, a                                          ; $50fc: $7f
	sub e                                            ; $50fd: $93
	ld b, a                                          ; $50fe: $47
	rst SubAFromBC                                          ; $50ff: $e7
	ld [hl], e                                       ; $5100: $73
	dec sp                                           ; $5101: $3b
	sbc e                                            ; $5102: $9b
	rrca                                             ; $5103: $0f
	ld de, $3f29                                     ; $5104: $11 $29 $3f
	rst SubAFromDE                                          ; $5107: $df
	rst AddAOntoHL                                          ; $5108: $ef
	rst FarCall                                          ; $5109: $f7
	ld a, e                                          ; $510a: $7b
	sub h                                            ; $510b: $94
	add b                                            ; $510c: $80
	rst FarCall                                          ; $510d: $f7
	ld sp, hl                                        ; $510e: $f9
	ld a, a                                          ; $510f: $7f
	ld a, [hl]                                       ; $5110: $7e
	add [hl]                                         ; $5111: $86
	dec b                                            ; $5112: $05
	xor e                                            ; $5113: $ab
	ld d, l                                          ; $5114: $55
	ld a, l                                          ; $5115: $7d
	and $c0                                          ; $5116: $e6 $c0
	or c                                             ; $5118: $b1
	ld sp, hl                                        ; $5119: $f9
	cp $56                                           ; $511a: $fe $56
	ld a, [hl+]                                      ; $511c: $2a
	inc bc                                           ; $511d: $03
	db $f4                                           ; $511e: $f4
	ld a, e                                          ; $511f: $7b
	ld a, l                                          ; $5120: $7d
	db $fd                                           ; $5121: $fd
	or $9d                                           ; $5122: $f6 $9d
	daa                                              ; $5124: $27
	or e                                             ; $5125: $b3
	ld l, a                                          ; $5126: $6f
	rst JumpTable                                          ; $5127: $c7
	add e                                            ; $5128: $83
	inc bc                                           ; $5129: $03
	rrca                                             ; $512a: $0f
	ld a, [hl]                                       ; $512b: $7e
	add b                                            ; $512c: $80
	ret c                                            ; $512d: $d8

	ld c, h                                          ; $512e: $4c
	dec b                                            ; $512f: $05
	ld a, [hl+]                                      ; $5130: $2a
	dec [hl]                                         ; $5131: $35
	ld l, d                                          ; $5132: $6a
	sbc c                                            ; $5133: $99
	add d                                            ; $5134: $82
	add hl, sp                                       ; $5135: $39
	ei                                               ; $5136: $fb
	ld a, [$c0c0]                                    ; $5137: $fa $c0 $c0
	pop af                                           ; $513a: $f1
	ld a, [hl]                                       ; $513b: $7e
	ld a, h                                          ; $513c: $7c
	call nz, $c704                                   ; $513d: $c4 $04 $c7
	and a                                            ; $5140: $a7
	rlca                                             ; $5141: $07
	daa                                              ; $5142: $27
	ld l, e                                          ; $5143: $6b
	xor e                                            ; $5144: $ab
	ld e, h                                          ; $5145: $5c
	adc [hl]                                         ; $5146: $8e
	add hl, sp                                       ; $5147: $39
	add hl, de                                       ; $5148: $19
	ld hl, sp-$68                                    ; $5149: $f8 $98
	inc e                                            ; $514b: $1c
	sub h                                            ; $514c: $94
	inc e                                            ; $514d: $1c
	ccf                                              ; $514e: $3f
	ld a, a                                          ; $514f: $7f
	ld h, $3e                                        ; $5150: $26 $3e
	db $fd                                           ; $5152: $fd
	jp hl                                            ; $5153: $e9


	xor c                                            ; $5154: $a9
	sub l                                            ; $5155: $95
	ld d, h                                          ; $5156: $54
	ld d, h                                          ; $5157: $54
	sbc $ab                                          ; $5158: $de $ab
	sbc [hl]                                         ; $515a: $9e
	cp a                                             ; $515b: $bf
	db $dd                                           ; $515c: $dd
	rst $38                                          ; $515d: $ff
	sub d                                            ; $515e: $92
	ld a, [hl]                                       ; $515f: $7e
	ccf                                              ; $5160: $3f
	rra                                              ; $5161: $1f
	rra                                              ; $5162: $1f
	rla                                              ; $5163: $17
	rla                                              ; $5164: $17
	sub [hl]                                         ; $5165: $96
	sub [hl]                                         ; $5166: $96
	ret z                                            ; $5167: $c8

	add sp, -$0c                                     ; $5168: $e8 $f4
	cp $ff                                           ; $516a: $fe $ff
	sbc $fc                                          ; $516c: $de $fc
	ld a, b                                          ; $516e: $78
	ld [hl], e                                       ; $516f: $73
	ld a, l                                          ; $5170: $7d
	cp e                                             ; $5171: $bb
	sbc h                                            ; $5172: $9c
	ld hl, sp-$02                                    ; $5173: $f8 $fe
	ld a, a                                          ; $5175: $7f
	db $fc                                           ; $5176: $fc
	add e                                            ; $5177: $83
	add b                                            ; $5178: $80
	ld b, b                                          ; $5179: $40
	jr c, jr_053_517c                                ; $517a: $38 $00

jr_053_517c:
	inc a                                            ; $517c: $3c
	ld a, h                                          ; $517d: $7c
	ld h, d                                          ; $517e: $62
	ld b, d                                          ; $517f: $42
	ld h, b                                          ; $5180: $60
	inc bc                                           ; $5181: $03
	adc $00                                          ; $5182: $ce $00
	jr @+$40                                         ; $5184: $18 $3e

	ld a, [hl]                                       ; $5186: $7e
	ld a, [hl]                                       ; $5187: $7e
	inc a                                            ; $5188: $3c
	ld bc, $0306                                     ; $5189: $01 $06 $03
	ld b, $06                                        ; $518c: $06 $06
	dec c                                            ; $518e: $0d
	dec e                                            ; $518f: $1d
	dec sp                                           ; $5190: $3b
	ldh a, [$39]                                     ; $5191: $f0 $39
	inc bc                                           ; $5193: $03
	ld a, e                                          ; $5194: $7b
	ld b, c                                          ; $5195: $41
	sub a                                            ; $5196: $97
	add hl, bc                                       ; $5197: $09
	ld de, $39e0                                     ; $5198: $11 $e0 $39
	and e                                            ; $519b: $a3
	di                                               ; $519c: $f3
	ei                                               ; $519d: $fb
	ei                                               ; $519e: $fb
	ld [hl], b                                       ; $519f: $70
	db $f4                                           ; $51a0: $f4
	sbc b                                            ; $51a1: $98
	sbc [hl]                                         ; $51a2: $9e
	adc [hl]                                         ; $51a3: $8e
	adc a                                            ; $51a4: $8f
	add a                                            ; $51a5: $87
	add a                                            ; $51a6: $87
	add e                                            ; $51a7: $83
	add e                                            ; $51a8: $83
	ld [hl], e                                       ; $51a9: $73
	ret                                              ; $51aa: $c9


	sbc $80                                          ; $51ab: $de $80
	ld a, [$809a]                                    ; $51ad: $fa $9a $80
	pop bc                                           ; $51b0: $c1
	ld h, e                                          ; $51b1: $63
	ccf                                              ; $51b2: $3f
	ld e, $fd                                        ; $51b3: $1e $fd
	sbc h                                            ; $51b5: $9c
	ld b, c                                          ; $51b6: $41
	ld [hl+], a                                      ; $51b7: $22
	inc e                                            ; $51b8: $1c
	db $fc                                           ; $51b9: $fc
	ld a, [hl]                                       ; $51ba: $7e
	sbc c                                            ; $51bb: $99
	sub d                                            ; $51bc: $92
	jr nc, jr_053_51f7                               ; $51bd: $30 $38

	jr jr_053_51dd                                   ; $51bf: $18 $1c

	rrca                                             ; $51c1: $0f
	rlca                                             ; $51c2: $07
	jr nz, jr_053_51d5                               ; $51c3: $20 $10

	db $10                                           ; $51c5: $10
	ld [$0408], sp                                   ; $51c6: $08 $08 $04
	inc bc                                           ; $51c9: $03
	ld [hl], l                                       ; $51ca: $75
	add e                                            ; $51cb: $83
	ld a, [hl]                                       ; $51cc: $7e
	dec de                                           ; $51cd: $1b
	sub h                                            ; $51ce: $94
	ld a, h                                          ; $51cf: $7c
	ld hl, sp-$20                                    ; $51d0: $f8 $e0
	ld bc, $0403                                     ; $51d2: $01 $03 $04

jr_053_51d5:
	ld [$6010], sp                                   ; $51d5: $08 $10 $60
	add b                                            ; $51d8: $80
	nop                                              ; $51d9: $00
	db $dd                                           ; $51da: $dd
	ldh a, [$9b]                                     ; $51db: $f0 $9b

jr_053_51dd:
	ld [hl], b                                       ; $51dd: $70
	sub b                                            ; $51de: $90
	sub b                                            ; $51df: $90
	or b                                             ; $51e0: $b0
	call c, Call_053_7ea0                            ; $51e1: $dc $a0 $7e
	inc a                                            ; $51e4: $3c
	sbc [hl]                                         ; $51e5: $9e
	db $10                                           ; $51e6: $10
	pop af                                           ; $51e7: $f1
	add b                                            ; $51e8: $80
	inc c                                            ; $51e9: $0c
	add hl, de                                       ; $51ea: $19
	ld d, $16                                        ; $51eb: $16 $16
	inc sp                                           ; $51ed: $33
	ld [hl+], a                                      ; $51ee: $22
	ld hl, $0b60                                     ; $51ef: $21 $60 $0b
	ld d, $19                                        ; $51f2: $16 $19
	jr jr_053_5232                                   ; $51f4: $18 $3c

	inc a                                            ; $51f6: $3c

jr_053_51f7:
	ld a, $7f                                        ; $51f7: $3e $7f
	adc d                                            ; $51f9: $8a
	call z, Call_053_4e24                            ; $51fa: $cc $24 $4e
	daa                                              ; $51fd: $27
	push de                                          ; $51fe: $d5
	cp d                                             ; $51ff: $ba
	inc b                                            ; $5200: $04
	dec c                                            ; $5201: $0d
	rlca                                             ; $5202: $07
	rst JumpTable                                          ; $5203: $c7
	inc sp                                           ; $5204: $33
	add hl, de                                       ; $5205: $19
	ld c, $05                                        ; $5206: $0e $05
	sbc [hl]                                         ; $5208: $9e
	ei                                               ; $5209: $fb
	ld a, e                                          ; $520a: $7b
	and b                                            ; $520b: $a0
	add b                                            ; $520c: $80
	ld a, b                                          ; $520d: $78
	cp l                                             ; $520e: $bd
	ld [hl], e                                       ; $520f: $73
	ld a, [de]                                       ; $5210: $1a
	rra                                              ; $5211: $1f
	ld a, a                                          ; $5212: $7f
	ccf                                              ; $5213: $3f
	cp a                                             ; $5214: $bf
	sbc a                                            ; $5215: $9f
	rst GetHLinHL                                          ; $5216: $cf
	cp $bf                                           ; $5217: $fe $bf
	ccf                                              ; $5219: $3f
	dec [hl]                                         ; $521a: $35
	ld c, c                                          ; $521b: $49
	add d                                            ; $521c: $82
	add l                                            ; $521d: $85
	adc d                                            ; $521e: $8a
	db $f4                                           ; $521f: $f4
	adc b                                            ; $5220: $88
	nop                                              ; $5221: $00
	db $e3                                           ; $5222: $e3
	or $fe                                           ; $5223: $f6 $fe
	db $fc                                           ; $5225: $fc
	ld sp, hl                                        ; $5226: $f9
	di                                               ; $5227: $f3
	rlca                                             ; $5228: $07
	rst $38                                          ; $5229: $ff
	ld a, e                                          ; $522a: $7b
	db $fd                                           ; $522b: $fd
	add b                                            ; $522c: $80
	ei                                               ; $522d: $fb
	ld e, h                                          ; $522e: $5c
	xor c                                            ; $522f: $a9
	ld d, l                                          ; $5230: $55
	adc b                                            ; $5231: $88

jr_053_5232:
	inc hl                                           ; $5232: $23
	dec b                                            ; $5233: $05
	ld [bc], a                                       ; $5234: $02
	dec b                                            ; $5235: $05
	and e                                            ; $5236: $a3
	ld d, a                                          ; $5237: $57
	xor e                                            ; $5238: $ab
	ld [hl], a                                       ; $5239: $77
	rst SubAFromDE                                          ; $523a: $df
	sbc e                                            ; $523b: $9b
	ld d, d                                          ; $523c: $52
	pop hl                                           ; $523d: $e1

jr_053_523e:
	rst SubAFromBC                                          ; $523e: $e7
	ld c, a                                          ; $523f: $4f
	rst SubAFromDE                                          ; $5240: $df
	rst SubAFromDE                                          ; $5241: $df
	ret nz                                           ; $5242: $c0

	db $e4                                           ; $5243: $e4
	xor l                                            ; $5244: $ad
	sbc [hl]                                         ; $5245: $9e
	sbc b                                            ; $5246: $98
	or b                                             ; $5247: $b0
	and b                                            ; $5248: $a0
	jr nz, jr_053_528a                               ; $5249: $20 $3f

	ret nz                                           ; $524b: $c0

	add b                                            ; $524c: $80
	inc b                                            ; $524d: $04
	pop af                                           ; $524e: $f1
	cp e                                             ; $524f: $bb
	sub c                                            ; $5250: $91
	push bc                                          ; $5251: $c5
	inc d                                            ; $5252: $14
	inc sp                                           ; $5253: $33
	ccf                                              ; $5254: $3f
	jp Jump_053_4000                                 ; $5255: $c3 $00 $40


	ld l, a                                          ; $5258: $6f
	jr c, jr_053_523e                                ; $5259: $38 $e3

	call z, $fc81                                    ; $525b: $cc $81 $fc
	ld a, e                                          ; $525e: $7b
	scf                                              ; $525f: $37
	rst SubAFromBC                                          ; $5260: $e7
	dec hl                                           ; $5261: $2b
	rst SubAFromDE                                          ; $5262: $df
	adc a                                            ; $5263: $8f
	cp $c3                                           ; $5264: $fe $c3
	add h                                            ; $5266: $84
	ret z                                            ; $5267: $c8

	ld hl, sp-$24                                    ; $5268: $f8 $dc
	ccf                                              ; $526a: $3f
	ld a, a                                          ; $526b: $7f
	rst SubAFromDE                                          ; $526c: $df
	xor d                                            ; $526d: $aa
	adc e                                            ; $526e: $8b
	dec d                                            ; $526f: $15
	or a                                             ; $5270: $b7
	db $db                                           ; $5271: $db
	dec l                                            ; $5272: $2d
	xor a                                            ; $5273: $af
	rst $38                                          ; $5274: $ff
	ld a, a                                          ; $5275: $7f
	ld a, a                                          ; $5276: $7f
	rst $38                                          ; $5277: $ff
	db $fd                                           ; $5278: $fd
	ld a, [hl]                                       ; $5279: $7e
	sbc $fe                                          ; $527a: $de $fe
	cp $97                                           ; $527c: $fe $97
	ld d, a                                          ; $527e: $57
	rst SubAFromHL                                          ; $527f: $d7
	rst SubAFromHL                                          ; $5280: $d7
	rst FarCall                                          ; $5281: $f7
	rst FarCall                                          ; $5282: $f7
	ld a, e                                          ; $5283: $7b
	nop                                              ; $5284: $00
	ld a, a                                          ; $5285: $7f
	pop af                                           ; $5286: $f1
	add b                                            ; $5287: $80
	ld a, h                                          ; $5288: $7c
	inc a                                            ; $5289: $3c

jr_053_528a:
	inc a                                            ; $528a: $3c
	jr jr_053_52a5                                   ; $528b: $18 $18

	rra                                              ; $528d: $1f
	add e                                            ; $528e: $83
	add c                                            ; $528f: $81
	pop bc                                           ; $5290: $c1
	ldh a, [c]                                       ; $5291: $f2
	db $fc                                           ; $5292: $fc
	ld hl, sp-$18                                    ; $5293: $f8 $e8
	rrca                                             ; $5295: $0f
	ld bc, $8180                                     ; $5296: $01 $80 $81
	ld [hl], d                                       ; $5299: $72
	inc d                                            ; $529a: $14
	jr jr_053_52c5                                   ; $529b: $18 $28

	cp $f6                                           ; $529d: $fe $f6
	adc h                                            ; $529f: $8c
	rlca                                             ; $52a0: $07
	ld c, $03                                        ; $52a1: $0e $03
	dec b                                            ; $52a3: $05
	inc bc                                           ; $52a4: $03

jr_053_52a5:
	db $fc                                           ; $52a5: $fc
	call z, $9e98                                    ; $52a6: $cc $98 $9e
	ld [bc], a                                       ; $52a9: $02
	rlca                                             ; $52aa: $07
	ld bc, $0003                                     ; $52ab: $01 $03 $00
	rlca                                             ; $52ae: $07
	sbc $01                                          ; $52af: $de $01
	ld a, a                                          ; $52b1: $7f
	sbc $9b                                          ; $52b2: $de $9b
	pop hl                                           ; $52b4: $e1
	di                                               ; $52b5: $f3
	rlca                                             ; $52b6: $07

jr_053_52b7:
	ld [bc], a                                       ; $52b7: $02
	ld [hl], l                                       ; $52b8: $75

jr_053_52b9:
	and c                                            ; $52b9: $a1
	ld a, a                                          ; $52ba: $7f
	push af                                          ; $52bb: $f5
	ld a, a                                          ; $52bc: $7f
	or a                                             ; $52bd: $b7
	ld a, a                                          ; $52be: $7f
	xor h                                            ; $52bf: $ac
	rst SubAFromDE                                          ; $52c0: $df
	cp a                                             ; $52c1: $bf
	rst SubAFromDE                                          ; $52c2: $df
	ccf                                              ; $52c3: $3f
	sub a                                            ; $52c4: $97

jr_053_52c5:
	add c                                            ; $52c5: $81
	ld b, c                                          ; $52c6: $41
	ld sp, $a34d                                     ; $52c7: $31 $4d $a3
	and c                                            ; $52ca: $a1
	ld hl, $dd20                                     ; $52cb: $21 $20 $dd
	add b                                            ; $52ce: $80
	db $dd                                           ; $52cf: $dd
	ret nz                                           ; $52d0: $c0

	ld h, a                                          ; $52d1: $67
	ld hl, sp-$20                                    ; $52d2: $f8 $e0
	pop de                                           ; $52d4: $d1
	rst SubAFromDE                                          ; $52d5: $df
	jr c, jr_053_52b7                                ; $52d6: $38 $df

	jr jr_053_52b9                                   ; $52d8: $18 $df

	ld [$71f0], sp                                   ; $52da: $08 $f0 $71
	ld [bc], a                                       ; $52dd: $02
	ld [hl], a                                       ; $52de: $77
	ld hl, sp-$80                                    ; $52df: $f8 $80
	ld b, e                                          ; $52e1: $43
	ld e, a                                          ; $52e2: $5f

jr_053_52e3:
	rst JumpTable                                          ; $52e3: $c7
	adc a                                            ; $52e4: $8f
	sub b                                            ; $52e5: $90
	and a                                            ; $52e6: $a7
	db $eb                                           ; $52e7: $eb
	ld [hl], c                                       ; $52e8: $71
	ld a, h                                          ; $52e9: $7c
	ldh [$f8], a                                     ; $52ea: $e0 $f8
	ldh a, [$ef]                                     ; $52ec: $f0 $ef
	ret c                                            ; $52ee: $d8

	sub b                                            ; $52ef: $90
	add b                                            ; $52f0: $80
	add c                                            ; $52f1: $81
	add [hl]                                         ; $52f2: $86
	ret nz                                           ; $52f3: $c0

	sub h                                            ; $52f4: $94
	and c                                            ; $52f5: $a1
	ld b, d                                          ; $52f6: $42
	dec b                                            ; $52f7: $05
	jr c, @+$80                                      ; $52f8: $38 $7e

	ld a, b                                          ; $52fa: $78
	ccf                                              ; $52fb: $3f
	ld h, e                                          ; $52fc: $63
	ld b, b                                          ; $52fd: $40
	add b                                            ; $52fe: $80
	add b                                            ; $52ff: $80
	sbc [hl]                                         ; $5300: $9e
	add a                                            ; $5301: $87
	ld a, e                                          ; $5302: $7b
	jr z, jr_053_52e3                                ; $5303: $28 $de

	rst $38                                          ; $5305: $ff
	adc h                                            ; $5306: $8c
	ld sp, hl                                        ; $5307: $f9
	ldh [$67], a                                     ; $5308: $e0 $67
	ret                                              ; $530a: $c9


	ret                                              ; $530b: $c9


	sub d                                            ; $530c: $92
	and d                                            ; $530d: $a2
	add $9f                                          ; $530e: $c6 $9f
	rst $38                                          ; $5310: $ff
	nop                                              ; $5311: $00
	sub b                                            ; $5312: $90
	jp z, $fbf5                                      ; $5313: $ca $f5 $fb

	rst FarCall                                          ; $5316: $f7
	rst FarCall                                          ; $5317: $f7
	ldh [rIE], a                                     ; $5318: $e0 $ff
	ld a, e                                          ; $531a: $7b
	ld d, a                                          ; $531b: $57
	sbc $1f                                          ; $531c: $de $1f
	sub [hl]                                         ; $531e: $96
	cp a                                             ; $531f: $bf
	ld b, $04                                        ; $5320: $06 $04
	sbc [hl]                                         ; $5322: $9e
	ld h, [hl]                                       ; $5323: $66
	ret c                                            ; $5324: $d8

	ld l, [hl]                                       ; $5325: $6e
	ld [hl], a                                       ; $5326: $77
	ld a, [hl-]                                      ; $5327: $3a
	ld a, e                                          ; $5328: $7b
	call c, $f980                                    ; $5329: $dc $80 $f9
	rst SubAFromBC                                          ; $532c: $e7
	sub e                                            ; $532d: $93
	adc c                                            ; $532e: $89
	push bc                                          ; $532f: $c5
	sbc l                                            ; $5330: $9d
	ld sp, $f673                                     ; $5331: $31 $73 $f6
	db $fd                                           ; $5334: $fd
	rst $38                                          ; $5335: $ff
	jp nz, Jump_053_633d                             ; $5336: $c2 $3d $63

	rst GetHLinHL                                          ; $5339: $cf
	adc a                                            ; $533a: $8f
	rrca                                             ; $533b: $0f
	ld c, $1e                                        ; $533c: $0e $1e
	ccf                                              ; $533e: $3f
	jp $2e0f                                         ; $533f: $c3 $0f $2e


	rra                                              ; $5342: $1f
	ld c, $80                                        ; $5343: $0e $80
	ld sp, hl                                        ; $5345: $f9
	db $fc                                           ; $5346: $fc
	rst $38                                          ; $5347: $ff
	ldh a, [$f1]                                     ; $5348: $f0 $f1
	ld [hl], e                                       ; $534a: $73
	adc $82                                          ; $534b: $ce $82
	jr jr_053_538f                                   ; $534d: $18 $40

	or c                                             ; $534f: $b1
	db $10                                           ; $5350: $10
	ld l, h                                          ; $5351: $6c
	scf                                              ; $5352: $37
	db $d3                                           ; $5353: $d3
	db $ec                                           ; $5354: $ec
	xor b                                            ; $5355: $a8
	rst $38                                          ; $5356: $ff
	adc $ef                                          ; $5357: $ce $ef
	sbc a                                            ; $5359: $9f
	rst GetHLinHL                                          ; $535a: $cf
	rst AddAOntoHL                                          ; $535b: $ef
	rst $38                                          ; $535c: $ff
	ld a, a                                          ; $535d: $7f

jr_053_535e:
	cp a                                             ; $535e: $bf
	rst GetHLinHL                                          ; $535f: $cf
	ld a, a                                          ; $5360: $7f
	rra                                              ; $5361: $1f
	rrca                                             ; $5362: $0f
	cp $f7                                           ; $5363: $fe $f7
	scf                                              ; $5365: $37
	ld a, [hl]                                       ; $5366: $7e
	ld a, $8f                                        ; $5367: $3e $8f
	rst SubAFromBC                                          ; $5369: $e7
	push de                                          ; $536a: $d5
	rst $38                                          ; $536b: $ff
	rst SubAFromDE                                          ; $536c: $df
	db $10                                           ; $536d: $10
	sbc h                                            ; $536e: $9c
	ld de, $0412                                     ; $536f: $11 $12 $04
	ld a, e                                          ; $5372: $7b
	dec c                                            ; $5373: $0d
	add b                                            ; $5374: $80
	ret z                                            ; $5375: $c8

	call z, $e6c4                                    ; $5376: $cc $c4 $e6

Call_053_5379:
	di                                               ; $5379: $f3
	pop af                                           ; $537a: $f1
	ld hl, sp-$04                                    ; $537b: $f8 $fc
	ld c, b                                          ; $537d: $48
	adc b                                            ; $537e: $88
	call nz, $2224                                   ; $537f: $c4 $24 $22
	ld de, $0c10                                     ; $5382: $11 $10 $0c
	dec b                                            ; $5385: $05
	dec c                                            ; $5386: $0d
	rra                                              ; $5387: $1f
	dec sp                                           ; $5388: $3b
	rst $38                                          ; $5389: $ff
	rst $38                                          ; $538a: $ff
	rra                                              ; $538b: $1f
	ccf                                              ; $538c: $3f
	nop                                              ; $538d: $00
	inc b                                            ; $538e: $04

jr_053_538f:
	inc b                                            ; $538f: $04
	dec c                                            ; $5390: $0d
	ld e, $f0                                        ; $5391: $1e $f0
	db $10                                           ; $5393: $10
	sbc c                                            ; $5394: $99
	db $10                                           ; $5395: $10
	cp [hl]                                          ; $5396: $be
	cp h                                             ; $5397: $bc
	ld hl, sp-$17                                    ; $5398: $f8 $e9
	db $fd                                           ; $539a: $fd
	sbc $ff                                          ; $539b: $de $ff
	sub [hl]                                         ; $539d: $96
	ldh [c], a                                       ; $539e: $e2
	sbc h                                            ; $539f: $9c
	ld hl, sp+$19                                    ; $53a0: $f8 $19
	dec c                                            ; $53a2: $0d
	inc bc                                           ; $53a3: $03
	nop                                              ; $53a4: $00
	nop                                              ; $53a5: $00
	ccf                                              ; $53a6: $3f
	ld l, a                                          ; $53a7: $6f
	ld c, a                                          ; $53a8: $4f
	sub [hl]                                         ; $53a9: $96
	rst $38                                          ; $53aa: $ff
	jr nz, jr_053_53ed                               ; $53ab: $20 $40

	ld b, b                                          ; $53ad: $40
	add b                                            ; $53ae: $80
	nop                                              ; $53af: $00
	add c                                            ; $53b0: $81
	db $e3                                           ; $53b1: $e3
	ccf                                              ; $53b2: $3f
	pop de                                           ; $53b3: $d1
	ret nz                                           ; $53b4: $c0

	ldh [$c1], a                                     ; $53b5: $e0 $c1
	db $db                                           ; $53b7: $db
	ld bc, $03df                                     ; $53b8: $01 $df $03
	ld l, e                                          ; $53bb: $6b
	ld hl, sp-$80                                    ; $53bc: $f8 $80
	ld [bc], a                                       ; $53be: $02
	ld h, d                                          ; $53bf: $62
	or l                                             ; $53c0: $b5
	sbc [hl]                                         ; $53c1: $9e
	ld c, $87                                        ; $53c2: $0e $87
	ld a, [hl+]                                      ; $53c4: $2a
	ld a, a                                          ; $53c5: $7f
	ld a, a                                          ; $53c6: $7f
	add b                                            ; $53c7: $80
	ld b, b                                          ; $53c8: $40
	ld h, c                                          ; $53c9: $61
	rst $38                                          ; $53ca: $ff
	ld a, a                                          ; $53cb: $7f
	rst SubAFromDE                                          ; $53cc: $df
	adc a                                            ; $53cd: $8f
	add a                                            ; $53ce: $87
	nop                                              ; $53cf: $00
	ld e, $3f                                        ; $53d0: $1e $3f
	ld a, h                                          ; $53d2: $7c
	ld h, e                                          ; $53d3: $63
	push bc                                          ; $53d4: $c5
	adc c                                            ; $53d5: $89
	ld a, [hl+]                                      ; $53d6: $2a
	rst $38                                          ; $53d7: $ff
	pop hl                                           ; $53d8: $e1
	pop bc                                           ; $53d9: $c1
	add c                                            ; $53da: $81
	sub b                                            ; $53db: $90
	jr nz, jr_053_535e                               ; $53dc: $20 $80

	ld h, b                                          ; $53de: $60
	pop hl                                           ; $53df: $e1
	adc c                                            ; $53e0: $89
	add c                                            ; $53e1: $81
	dec l                                            ; $53e2: $2d
	ld d, $4b                                        ; $53e3: $16 $4b
	ld l, h                                          ; $53e5: $6c
	nop                                              ; $53e6: $00
	rrca                                             ; $53e7: $0f
	halt                                             ; $53e8: $76
	ld a, [hl]                                       ; $53e9: $7e
	jp nz, $8783                                     ; $53ea: $c2 $83 $87

jr_053_53ed:
	sbc a                                            ; $53ed: $9f
	rst $38                                          ; $53ee: $ff
	ldh a, [$cf]                                     ; $53ef: $f0 $cf
	inc de                                           ; $53f1: $13
	adc c                                            ; $53f2: $89
	db $e4                                           ; $53f3: $e4
	ld a, d                                          ; $53f4: $7a
	sbc a                                            ; $53f5: $9f
	sbc a                                            ; $53f6: $9f
	ld b, [hl]                                       ; $53f7: $46
	ld [hl], b                                       ; $53f8: $70
	inc c                                            ; $53f9: $0c
	ld b, $03                                        ; $53fa: $06 $03
	add c                                            ; $53fc: $81
	add b                                            ; $53fd: $80
	pop hl                                           ; $53fe: $e1
	rst $38                                          ; $53ff: $ff
	rst $38                                          ; $5400: $ff
	ld a, l                                          ; $5401: $7d
	push de                                          ; $5402: $d5
	rst $38                                          ; $5403: $ff
	rra                                              ; $5404: $1f
	ld a, e                                          ; $5405: $7b
	dec l                                            ; $5406: $2d
	ld a, [hl]                                       ; $5407: $7e
	ld h, h                                          ; $5408: $64
	ldh [c], a                                       ; $5409: $e2
	ld a, [hl-]                                      ; $540a: $3a
	rrca                                             ; $540b: $0f
	rst $38                                          ; $540c: $ff
	add a                                            ; $540d: $87
	di                                               ; $540e: $f3
	sbc c                                            ; $540f: $99
	sbc a                                            ; $5410: $9f
	sbc [hl]                                         ; $5411: $9e
	pop hl                                           ; $5412: $e1
	rst GetHLinHL                                          ; $5413: $cf
	or [hl]                                          ; $5414: $b6
	ld a, [hl]                                       ; $5415: $7e
	inc e                                            ; $5416: $1c
	call z, $e1e1                                    ; $5417: $cc $e1 $e1
	cp $fe                                           ; $541a: $fe $fe
	rst GetHLinHL                                          ; $541c: $cf
	sbc e                                            ; $541d: $9b
	add a                                            ; $541e: $87
	db $e3                                           ; $541f: $e3
	di                                               ; $5420: $f3
	cp $5f                                           ; $5421: $fe $5f
	nop                                              ; $5423: $00
	sbc $55                                          ; $5424: $de $55
	sub b                                            ; $5426: $90
	ld b, h                                          ; $5427: $44
	ld b, a                                          ; $5428: $47
	ld b, h                                          ; $5429: $44
	ld d, a                                          ; $542a: $57
	ld b, h                                          ; $542b: $44
	ld d, l                                          ; $542c: $55
	ld d, h                                          ; $542d: $54
	ld d, l                                          ; $542e: $55
	ld d, l                                          ; $542f: $55
	ld d, h                                          ; $5430: $54
	ld b, a                                          ; $5431: $47
	ld [hl], a                                       ; $5432: $77
	ld [hl], l                                       ; $5433: $75
	ld d, a                                          ; $5434: $57
	inc h                                            ; $5435: $24
	ld [hl], e                                       ; $5436: $73
	or $9e                                           ; $5437: $f6 $9e
	daa                                              ; $5439: $27
	sbc $77                                          ; $543a: $de $77
	sbc b                                            ; $543c: $98
	inc h                                            ; $543d: $24
	ld b, l                                          ; $543e: $45
	ld d, h                                          ; $543f: $54
	ld b, h                                          ; $5440: $44
	ld b, l                                          ; $5441: $45
	ld b, h                                          ; $5442: $44
	inc sp                                           ; $5443: $33
	ld [hl], a                                       ; $5444: $77
	or $7f                                           ; $5445: $f6 $7f
	pop hl                                           ; $5447: $e1
	sub a                                            ; $5448: $97
	ld b, h                                          ; $5449: $44
	dec h                                            ; $544a: $25
	ld [hl+], a                                      ; $544b: $22
	inc sp                                           ; $544c: $33
	ld [hl+], a                                      ; $544d: $22
	ld [hl+], a                                      ; $544e: $22
	ld [hl], e                                       ; $544f: $73
	inc [hl]                                         ; $5450: $34
	ld a, e                                          ; $5451: $7b
	xor $df                                          ; $5452: $ee $df

Jump_053_5454:
	ld [hl+], a                                      ; $5454: $22
	ld a, e                                          ; $5455: $7b
	or $9d                                           ; $5456: $f6 $9d
	inc hl                                           ; $5458: $23
	inc [hl]                                         ; $5459: $34
	ld a, e                                          ; $545a: $7b
	db $ec                                           ; $545b: $ec
	ld a, e                                          ; $545c: $7b
	ld sp, hl                                        ; $545d: $f9
	ld a, e                                          ; $545e: $7b
	di                                               ; $545f: $f3
	sbc [hl]                                         ; $5460: $9e
	inc [hl]                                         ; $5461: $34
	ld a, e                                          ; $5462: $7b
	ret c                                            ; $5463: $d8

	ld a, e                                          ; $5464: $7b
	or $9e                                           ; $5465: $f6 $9e
	ld [hl-], a                                      ; $5467: $32
	ld a, e                                          ; $5468: $7b
	or $de                                           ; $5469: $f6 $de
	ld b, h                                          ; $546b: $44
	rst SubAFromDE                                          ; $546c: $df
	ld [hl+], a                                      ; $546d: $22
	sbc e                                            ; $546e: $9b
	ld h, [hl]                                       ; $546f: $66
	inc sp                                           ; $5470: $33

jr_053_5471:
	ld [hl+], a                                      ; $5471: $22
	inc sp                                           ; $5472: $33
	db $dd                                           ; $5473: $dd
	ld b, h                                          ; $5474: $44
	sbc h                                            ; $5475: $9c
	ld b, [hl]                                       ; $5476: $46
	ld h, [hl]                                       ; $5477: $66
	ld h, [hl]                                       ; $5478: $66
	sbc $33                                          ; $5479: $de $33
	ld a, e                                          ; $547b: $7b
	reti                                             ; $547c: $d9


	ld h, a                                          ; $547d: $67
	or $df                                           ; $547e: $f6 $df
	ld b, h                                          ; $5480: $44
	jp c, $e08a                                      ; $5481: $da $8a $e0

	cp d                                             ; $5484: $ba
	sbc [hl]                                         ; $5485: $9e
	rrca                                             ; $5486: $0f
	ld e, a                                          ; $5487: $5f
	ld hl, sp-$6f                                    ; $5488: $f8 $91
	dec d                                            ; $548a: $15
	ld a, $2f                                        ; $548b: $3e $2f
	ld a, [de]                                       ; $548d: $1a
	inc l                                            ; $548e: $2c
	db $fd                                           ; $548f: $fd
	nop                                              ; $5490: $00
	nop                                              ; $5491: $00
	rra                                              ; $5492: $1f
	ld a, [hl+]                                      ; $5493: $2a
	dec hl                                           ; $5494: $2b
	cpl                                              ; $5495: $2f
	ccf                                              ; $5496: $3f
	rst $38                                          ; $5497: $ff
	cp $9a                                           ; $5498: $fe $9a
	inc a                                            ; $549a: $3c
	jp Jump_053_673f                                 ; $549b: $c3 $3f $67


	cp a                                             ; $549e: $bf
	ld [hl], a                                       ; $549f: $77
	ld hl, sp-$65                                    ; $54a0: $f8 $9b
	rst $38                                          ; $54a2: $ff
	ret nz                                           ; $54a3: $c0

	ld hl, sp-$40                                    ; $54a4: $f8 $c0
	db $fd                                           ; $54a6: $fd
	sbc e                                            ; $54a7: $9b
	ret nz                                           ; $54a8: $c0

	or b                                             ; $54a9: $b0
	db $ec                                           ; $54aa: $ec
	di                                               ; $54ab: $f3
	ld [hl], e                                       ; $54ac: $73
	ld hl, sp-$63                                    ; $54ad: $f8 $9d
	ld [hl], b                                       ; $54af: $70
	inc e                                            ; $54b0: $1c
	ld h, a                                          ; $54b1: $67
	ret z                                            ; $54b2: $c8

	pop hl                                           ; $54b3: $e1
	sbc [hl]                                         ; $54b4: $9e
	ld bc, $f867                                     ; $54b5: $01 $67 $f8
	add d                                            ; $54b8: $82
	ld bc, $2f03                                     ; $54b9: $01 $03 $2f
	dec sp                                           ; $54bc: $3b
	add hl, sp                                       ; $54bd: $39
	db $ed                                           ; $54be: $ed
	ld e, a                                          ; $54bf: $5f
	di                                               ; $54c0: $f3
	inc bc                                           ; $54c1: $03
	inc b                                            ; $54c2: $04
	jr z, jr_053_54e9                                ; $54c3: $28 $24

	ld [hl], $d2                                     ; $54c5: $36 $d2
	ld h, b                                          ; $54c7: $60
	call z, $5fdf                                    ; $54c8: $cc $df $5f
	ld a, a                                          ; $54cb: $7f
	push de                                          ; $54cc: $d5
	xor c                                            ; $54cd: $a9
	ld d, e                                          ; $54ce: $53
	and [hl]                                         ; $54cf: $a6
	ld c, e                                          ; $54d0: $4b
	di                                               ; $54d1: $f3
	and h                                            ; $54d2: $a4
	add b                                            ; $54d3: $80
	ld [bc], a                                       ; $54d4: $02
	ld [bc], a                                       ; $54d5: $02
	ld [hl], a                                       ; $54d6: $77
	xor h                                            ; $54d7: $ac
	sub b                                            ; $54d8: $90
	jr nz, @+$72                                     ; $54d9: $20 $70

jr_053_54db:
	ret z                                            ; $54db: $c8

	ld a, h                                          ; $54dc: $7c
	ld h, d                                          ; $54dd: $62
	db $fc                                           ; $54de: $fc
	ld [de], a                                       ; $54df: $12
	ldh [$e8], a                                     ; $54e0: $e0 $e8
	sub b                                            ; $54e2: $90
	jr c, jr_053_5471                                ; $54e3: $38 $8c

	sbc [hl]                                         ; $54e5: $9e
	inc b                                            ; $54e6: $04
	xor $fc                                          ; $54e7: $ee $fc

jr_053_54e9:
	sbc h                                            ; $54e9: $9c
	rra                                              ; $54ea: $1f
	ld a, h                                          ; $54eb: $7c
	ldh a, [rHDMA3]                                  ; $54ec: $f0 $53
	ld hl, sp-$20                                    ; $54ee: $f8 $e0
	add h                                            ; $54f0: $84
	sbc c                                            ; $54f1: $99
	ld bc, $0502                                     ; $54f2: $01 $02 $05
	dec bc                                           ; $54f5: $0b
	ld d, $2d                                        ; $54f6: $16 $2d
	ld a, e                                          ; $54f8: $7b
	ld hl, sp-$80                                    ; $54f9: $f8 $80
	inc bc                                           ; $54fb: $03
	ld b, $0c                                        ; $54fc: $06 $0c
	add hl, de                                       ; $54fe: $19
	inc sp                                           ; $54ff: $33
	scf                                              ; $5500: $37
	db $dd                                           ; $5501: $dd
	halt                                             ; $5502: $76
	db $db                                           ; $5503: $db
	xor [hl]                                         ; $5504: $ae
	ld e, e                                          ; $5505: $5b
	or [hl]                                          ; $5506: $b6
	ld l, l                                          ; $5507: $6d
	jr c, @-$1b                                      ; $5508: $38 $e3

	adc a                                            ; $550a: $8f
	inc a                                            ; $550b: $3c
	ld [hl], c                                       ; $550c: $71
	rst SubAFromBC                                          ; $550d: $e7
	call Call_053_7e9b                               ; $550e: $cd $9b $7e
	cp e                                             ; $5511: $bb
	and $9b                                          ; $5512: $e6 $9b
	rst $38                                          ; $5514: $ff
	ld e, a                                          ; $5515: $5f
	db $fd                                           ; $5516: $fd

jr_053_5517:
	or $ff                                           ; $5517: $f6 $ff
	rst JumpTable                                          ; $5519: $c7
	ld a, e                                          ; $551a: $7b
	ld d, e                                          ; $551b: $53
	sub e                                            ; $551c: $93
	ldh [hDisp0_SCY], a                                     ; $551d: $e0 $83
	rrca                                             ; $551f: $0f
	rst SubAFromDE                                          ; $5520: $df
	add sp, -$2c                                     ; $5521: $e8 $d4
	xor d                                            ; $5523: $aa
	rst SubAFromDE                                          ; $5524: $df
	ld a, e                                          ; $5525: $7b
	cp a                                             ; $5526: $bf
	ccf                                              ; $5527: $3f
	ccf                                              ; $5528: $3f
	ld a, e                                          ; $5529: $7b
	ld b, [hl]                                       ; $552a: $46
	sbc d                                            ; $552b: $9a
	rlca                                             ; $552c: $07
	db $fc                                           ; $552d: $fc
	ret nz                                           ; $552e: $c0

	ret nz                                           ; $552f: $c0

	rst $38                                          ; $5530: $ff
	ld a, d                                          ; $5531: $7a
	or $9d                                           ; $5532: $f6 $9d
	rst $38                                          ; $5534: $ff
	db $fc                                           ; $5535: $fc
	sbc $ff                                          ; $5536: $de $ff
	cp $8b                                           ; $5538: $fe $8b
	rst $38                                          ; $553a: $ff
	inc bc                                           ; $553b: $03
	nop                                              ; $553c: $00
	nop                                              ; $553d: $00
	add b                                            ; $553e: $80
	ret nz                                           ; $553f: $c0

	ld h, b                                          ; $5540: $60
	jr nc, jr_053_54db                               ; $5541: $30 $98

	ld a, h                                          ; $5543: $7c
	adc $d9                                          ; $5544: $ce $d9
	add b                                            ; $5546: $80
	ret nz                                           ; $5547: $c0

	jr nz, @+$12                                     ; $5548: $20 $10

	ld [$3ef4], sp                                   ; $554a: $08 $f4 $3e
	rlca                                             ; $554d: $07
	ld a, [$8f9e]                                    ; $554e: $fa $9e $8f
	ld h, e                                          ; $5551: $63
	ld hl, sp+$7b                                    ; $5552: $f8 $7b
	ret nc                                           ; $5554: $d0

	ld a, a                                          ; $5555: $7f
	db $fd                                           ; $5556: $fd
	sbc l                                            ; $5557: $9d
	ld bc, $6707                                     ; $5558: $01 $07 $67
	ld hl, sp-$80                                    ; $555b: $f8 $80
	adc a                                            ; $555d: $8f
	add hl, sp                                       ; $555e: $39
	sbc [hl]                                         ; $555f: $9e
	db $e3                                           ; $5560: $e3
	rlca                                             ; $5561: $07
	ld [$a4c4], a                                    ; $5562: $ea $c4 $a4
	ldh a, [$c6]                                     ; $5565: $f0 $c6
	pop hl                                           ; $5567: $e1
	call c, $f5f8                                    ; $5568: $dc $f8 $f5
	ei                                               ; $556b: $fb
	rst $38                                          ; $556c: $ff
	dec b                                            ; $556d: $05
	xor e                                            ; $556e: $ab
	ld e, h                                          ; $556f: $5c
	rst SubAFromHL                                          ; $5570: $d7
	ld h, d                                          ; $5571: $62
	add hl, de                                       ; $5572: $19
	add hl, hl                                       ; $5573: $29
	ld c, d                                          ; $5574: $4a
	nop                                              ; $5575: $00
	inc b                                            ; $5576: $04
	inc bc                                           ; $5577: $03
	jr z, jr_053_5517                                ; $5578: $28 $9d

	rst SubAFromBC                                          ; $557a: $e7
	rst SubAFromHL                                          ; $557b: $d7
	add [hl]                                         ; $557c: $86
	or l                                             ; $557d: $b5
	ld h, a                                          ; $557e: $67
	rst GetHLinHL                                          ; $557f: $cf
	inc bc                                           ; $5580: $03
	daa                                              ; $5581: $27
	add l                                            ; $5582: $85
	ccf                                              ; $5583: $3f
	db $d3                                           ; $5584: $d3
	sub a                                            ; $5585: $97
	sbc e                                            ; $5586: $9b
	scf                                              ; $5587: $37

jr_053_5588:
	rst $38                                          ; $5588: $ff
	rst SubAFromDE                                          ; $5589: $df
	ld a, e                                          ; $558a: $7b
	jp $ffbf                                         ; $558b: $c3 $bf $ff


	ldh [$c0], a                                     ; $558e: $e0 $c0
	db $fc                                           ; $5590: $fc
	rst $38                                          ; $5591: $ff
	ret nz                                           ; $5592: $c0

	rra                                              ; $5593: $1f
	ld sp, hl                                        ; $5594: $f9
	cp $77                                           ; $5595: $fe $77
	ld hl, sp+$7f                                    ; $5597: $f8 $7f
	di                                               ; $5599: $f3
	sbc [hl]                                         ; $559a: $9e
	cp $77                                           ; $559b: $fe $77
	adc c                                            ; $559d: $89
	sbc d                                            ; $559e: $9a
	add b                                            ; $559f: $80
	ldh [hDisp1_SCY], a                                     ; $55a0: $e0 $90
	db $ec                                           ; $55a2: $ec
	ld a, d                                          ; $55a3: $7a
	ld [hl], e                                       ; $55a4: $73
	ld hl, sp+$7e                                    ; $55a5: $f8 $7e
	ld b, b                                          ; $55a7: $40
	sbc [hl]                                         ; $55a8: $9e
	add [hl]                                         ; $55a9: $86
	ldh [$c1], a                                     ; $55aa: $e0 $c1
	sbc l                                            ; $55ac: $9d
	adc b                                            ; $55ad: $88
	ld [hl+], a                                      ; $55ae: $22
	ld l, a                                          ; $55af: $6f
	cp $13                                           ; $55b0: $fe $13
	ldh a, [$9c]                                     ; $55b2: $f0 $9c
	inc hl                                           ; $55b4: $23
	adc c                                            ; $55b5: $89
	inc hl                                           ; $55b6: $23
	ld l, d                                          ; $55b7: $6a
	ld [bc], a                                       ; $55b8: $02
	sub e                                            ; $55b9: $93
	ld bc, $52aa                                     ; $55ba: $01 $aa $52
	call nc, $c8c4                                   ; $55bd: $d4 $c4 $c8
	adc b                                            ; $55c0: $88
	adc b                                            ; $55c1: $88
	sub c                                            ; $55c2: $91
	scf                                              ; $55c3: $37
	ld l, a                                          ; $55c4: $6f
	ld l, a                                          ; $55c5: $6f
	call c, $8bff                                    ; $55c6: $dc $ff $8b
	ld e, e                                          ; $55c9: $5b
	dec l                                            ; $55ca: $2d
	daa                                              ; $55cb: $27
	ld c, a                                          ; $55cc: $4f
	rla                                              ; $55cd: $17
	sbc [hl]                                         ; $55ce: $9e
	cp h                                             ; $55cf: $bc
	jr z, jr_053_5588                                ; $55d0: $28 $b6

	or $fc                                           ; $55d2: $f6 $fc
	ld hl, sp-$07                                    ; $55d4: $f8 $f9
	di                                               ; $55d6: $f3
	rst SubAFromBC                                          ; $55d7: $e7
	rst $38                                          ; $55d8: $ff
	ld hl, sp-$20                                    ; $55d9: $f8 $e0
	ret nz                                           ; $55db: $c0

	add b                                            ; $55dc: $80
	sbc $01                                          ; $55dd: $de $01
	sbc d                                            ; $55df: $9a
	dec bc                                           ; $55e0: $0b
	rra                                              ; $55e1: $1f
	ccf                                              ; $55e2: $3f
	ld a, a                                          ; $55e3: $7f
	rst $38                                          ; $55e4: $ff
	sbc $fe                                          ; $55e5: $de $fe
	sub l                                            ; $55e7: $95
	db $f4                                           ; $55e8: $f4
	ccf                                              ; $55e9: $3f
	cp a                                             ; $55ea: $bf
	cp a                                             ; $55eb: $bf
	cp e                                             ; $55ec: $bb
	cp e                                             ; $55ed: $bb
	sbc c                                            ; $55ee: $99
	adc c                                            ; $55ef: $89
	adc c                                            ; $55f0: $89
	ret nz                                           ; $55f1: $c0

	db $dd                                           ; $55f2: $dd
	ld b, b                                          ; $55f3: $40
	sub h                                            ; $55f4: $94
	ld b, d                                          ; $55f5: $42
	ld d, d                                          ; $55f6: $52
	ld d, d                                          ; $55f7: $52
	rst $38                                          ; $55f8: $ff
	ld a, a                                          ; $55f9: $7f
	ld l, a                                          ; $55fa: $6f
	ld l, l                                          ; $55fb: $6d
	dec h                                            ; $55fc: $25
	ld d, $12                                        ; $55fd: $16 $12
	ld de, $94fc                                     ; $55ff: $11 $fc $94
	jr nz, jr_053_5628                               ; $5602: $20 $24

	ld h, $e3                                        ; $5604: $26 $e3
	ld hl, sp-$01                                    ; $5606: $f8 $ff
	cp e                                             ; $5608: $bb
	sub l                                            ; $5609: $95
	jp z, $24d2                                      ; $560a: $ca $d2 $24

	cp $81                                           ; $560d: $fe $81
	inc b                                            ; $560f: $04
	ld [bc], a                                       ; $5610: $02
	ld de, $4909                                     ; $5611: $11 $09 $49
	ld a, [hl]                                       ; $5614: $7e
	db $fd                                           ; $5615: $fd
	inc c                                            ; $5616: $0c
	or c                                             ; $5617: $b1
	call nc, $6dc9                                   ; $5618: $d4 $c9 $6d
	add hl, hl                                       ; $561b: $29
	ldh a, [c]                                       ; $561c: $f2
	inc b                                            ; $561d: $04
	ld hl, sp+$70                                    ; $561e: $f8 $70
	jr nc, jr_053_565a                               ; $5620: $30 $38

	sbc c                                            ; $5622: $99
	reti                                             ; $5623: $d9


	ld c, a                                          ; $5624: $4f
	rra                                              ; $5625: $1f
	ld a, a                                          ; $5626: $7f
	ld a, a                                          ; $5627: $7f

jr_053_5628:
	ld sp, hl                                        ; $5628: $f9
	db $e3                                           ; $5629: $e3
	rst GetHLinHL                                          ; $562a: $cf
	sbc a                                            ; $562b: $9f
	rrca                                             ; $562c: $0f
	ld [hl], a                                       ; $562d: $77
	xor a                                            ; $562e: $af
	sbc $ff                                          ; $562f: $de $ff
	sbc d                                            ; $5631: $9a
	add sp, -$2b                                     ; $5632: $e8 $d5
	ld [$fded], a                                    ; $5634: $ea $ed $fd
	sub $ff                                          ; $5637: $d6 $ff
	sub e                                            ; $5639: $93
	sub c                                            ; $563a: $91
	inc b                                            ; $563b: $04
	ld h, h                                          ; $563c: $64
	sub e                                            ; $563d: $93
	rst SubAFromHL                                          ; $563e: $d7
	or l                                             ; $563f: $b5
	rst $38                                          ; $5640: $ff
	rst $38                                          ; $5641: $ff
	xor $fb                                          ; $5642: $ee $fb
	db $db                                           ; $5644: $db
	ld a, l                                          ; $5645: $7d
	ld [hl], a                                       ; $5646: $77
	add sp, -$66                                     ; $5647: $e8 $9a
	ld c, e                                          ; $5649: $4b
	scf                                              ; $564a: $37
	rra                                              ; $564b: $1f
	ld a, a                                          ; $564c: $7f
	cp a                                             ; $564d: $bf
	sbc $ff                                          ; $564e: $de $ff
	sbc l                                            ; $5650: $9d
	cp a                                             ; $5651: $bf
	rst SubAFromDE                                          ; $5652: $df
	db $db                                           ; $5653: $db
	rst $38                                          ; $5654: $ff
	sub h                                            ; $5655: $94
	pop hl                                           ; $5656: $e1
	add e                                            ; $5657: $83
	pop af                                           ; $5658: $f1
	db $fc                                           ; $5659: $fc

jr_053_565a:
	rlca                                             ; $565a: $07
	add c                                            ; $565b: $81
	sbc $ef                                          ; $565c: $de $ef
	rst $38                                          ; $565e: $ff
	db $fc                                           ; $565f: $fc
	cp $77                                           ; $5660: $fe $77
	ldh a, [c]                                       ; $5662: $f2
	add [hl]                                         ; $5663: $86
	ldh a, [$9d]                                     ; $5664: $f0 $9d
	ld l, [hl]                                       ; $5666: $6e
	db $db                                           ; $5667: $db
	db $ed                                           ; $5668: $ed
	ld h, [hl]                                       ; $5669: $66
	or a                                             ; $566a: $b7
	db $db                                           ; $566b: $db
	and l                                            ; $566c: $a5
	db $e3                                           ; $566d: $e3
	pop af                                           ; $566e: $f1
	inc a                                            ; $566f: $3c
	ld e, $8f                                        ; $5670: $1e $8f
	jp $78e1                                         ; $5672: $c3 $e1 $78


	ld [$48a2], sp                                   ; $5675: $08 $a2 $48
	ldh [c], a                                       ; $5678: $e2
	add sp, $52                                      ; $5679: $e8 $52
	sbc b                                            ; $567b: $98
	jp z, $377a                                      ; $567c: $ca $7a $37

	sbc d                                            ; $567f: $9a
	ld b, b                                          ; $5680: $40
	jr nz, @-$4e                                     ; $5681: $20 $b0

	ldh a, [$f8]                                     ; $5683: $f0 $f8
	ld [bc], a                                       ; $5685: $02
	ldh a, [rWX]                                     ; $5686: $f0 $4b
	ldh a, [$9d]                                     ; $5688: $f0 $9d
	xor d                                            ; $568a: $aa
	ld d, l                                          ; $568b: $55
	ld [hl], a                                       ; $568c: $77
	cp $9d                                           ; $568d: $fe $9d
	add d                                            ; $568f: $82
	ld b, c                                          ; $5690: $41
	ld d, a                                          ; $5691: $57
	ldh a, [$9b]                                     ; $5692: $f0 $9b
	add b                                            ; $5694: $80
	ld b, c                                          ; $5695: $41
	xor d                                            ; $5696: $aa
	ld d, l                                          ; $5697: $55
	ld h, e                                          ; $5698: $63
	ldh a, [$98]                                     ; $5699: $f0 $98
	ld d, [hl]                                       ; $569b: $56
	adc d                                            ; $569c: $8a
	ld d, l                                          ; $569d: $55
	xor l                                            ; $569e: $ad
	ld d, l                                          ; $569f: $55
	xor l                                            ; $56a0: $ad
	ld b, l                                          ; $56a1: $45
	sbc $03                                          ; $56a2: $de $03
	call c, $9a07                                    ; $56a4: $dc $07 $9a
	sub c                                            ; $56a7: $91
	sub e                                            ; $56a8: $93
	sub d                                            ; $56a9: $92
	ld [hl+], a                                      ; $56aa: $22
	ld [hl+], a                                      ; $56ab: $22
	sbc $24                                          ; $56ac: $de $24
	reti                                             ; $56ae: $d9


	rst $38                                          ; $56af: $ff
	sub [hl]                                         ; $56b0: $96
	jr nc, jr_053_5713                               ; $56b1: $30 $60

	ld h, c                                          ; $56b3: $61
	ld b, l                                          ; $56b4: $45
	ld b, a                                          ; $56b5: $47
	adc e                                            ; $56b6: $8b
	adc e                                            ; $56b7: $8b

Call_053_56b8:
	sub [hl]                                         ; $56b8: $96
	rst $38                                          ; $56b9: $ff
	ld a, d                                          ; $56ba: $7a
	jp nc, $fcde                                     ; $56bb: $d2 $de $fc

	sub e                                            ; $56be: $93
	ld sp, hl                                        ; $56bf: $f9
	ld a, [de]                                       ; $56c0: $1a
	sbc d                                            ; $56c1: $9a
	and [hl]                                         ; $56c2: $a6
	ld h, h                                          ; $56c3: $64
	ld b, l                                          ; $56c4: $45
	sbc c                                            ; $56c5: $99
	sbc c                                            ; $56c6: $99
	cp b                                             ; $56c7: $b8
	db $e4                                           ; $56c8: $e4
	ld h, h                                          ; $56c9: $64
	ld c, h                                          ; $56ca: $4c
	db $dd                                           ; $56cb: $dd
	call z, $cd95                                    ; $56cc: $cc $95 $cd
	ld [$9212], sp                                   ; $56cf: $08 $12 $92
	or d                                             ; $56d2: $b2
	or [hl]                                          ; $56d3: $b6
	or [hl]                                          ; $56d4: $b6
	or $d6                                           ; $56d5: $f6 $d6
	db $d3                                           ; $56d7: $d3
	call c, $93db                                    ; $56d8: $dc $db $93
	sbc e                                            ; $56db: $9b
	cp e                                             ; $56dc: $bb
	ld bc, $2e05                                     ; $56dd: $01 $05 $2e
	ld l, [hl]                                       ; $56e0: $6e
	ld l, [hl]                                       ; $56e1: $6e
	and $a2                                          ; $56e2: $e6 $a2
	and d                                            ; $56e4: $a2
	ld [hl], $32                                     ; $56e5: $36 $32
	sbc $33                                          ; $56e7: $de $33
	sub c                                            ; $56e9: $91
	dec sp                                           ; $56ea: $3b
	ld a, a                                          ; $56eb: $7f
	ld a, a                                          ; $56ec: $7f
	inc h                                            ; $56ed: $24
	ld a, [hl+]                                      ; $56ee: $2a
	sbc d                                            ; $56ef: $9a
	db $db                                           ; $56f0: $db
	reti                                             ; $56f1: $d9


	ret c                                            ; $56f2: $d8

	ret c                                            ; $56f3: $d8

	ret z                                            ; $56f4: $c8

	ld c, c                                          ; $56f5: $49
	ld c, l                                          ; $56f6: $4d
	ld l, l                                          ; $56f7: $6d
	db $dd                                           ; $56f8: $dd
	ld l, a                                          ; $56f9: $6f
	add [hl]                                         ; $56fa: $86
	ld a, a                                          ; $56fb: $7f
	adc a                                            ; $56fc: $8f
	adc [hl]                                         ; $56fd: $8e

jr_053_56fe:
	call z, $fdf6                                    ; $56fe: $cc $f6 $fd
	jp nz, $9fff                                     ; $5701: $c2 $ff $9f

	ei                                               ; $5704: $fb
	rst $38                                          ; $5705: $ff
	rst $38                                          ; $5706: $ff
	ld sp, hl                                        ; $5707: $f9
	inc bc                                           ; $5708: $03
	rst $38                                          ; $5709: $ff
	cp $fc                                           ; $570a: $fe $fc
	jr nc, @+$63                                     ; $570c: $30 $61

	jp Jump_053_49a4                                 ; $570e: $c3 $a4 $49


	db $db                                           ; $5711: $db
	or d                                             ; $5712: $b2

jr_053_5713:
	scf                                              ; $5713: $37
	sbc $ff                                          ; $5714: $de $ff
	add b                                            ; $5716: $80
	rst SubAFromDE                                          ; $5717: $df
	cp [hl]                                          ; $5718: $be
	inc a                                            ; $5719: $3c
	ld a, l                                          ; $571a: $7d
	ld sp, hl                                        ; $571b: $f9
	push af                                          ; $571c: $f5
	xor a                                            ; $571d: $af
	ld c, a                                          ; $571e: $4f
	sbc d                                            ; $571f: $9a
	dec e                                            ; $5720: $1d
	halt                                             ; $5721: $76
	cp d                                             ; $5722: $ba
	xor b                                            ; $5723: $a8
	db $eb                                           ; $5724: $eb
	db $d3                                           ; $5725: $d3
	or e                                             ; $5726: $b3
	ld h, a                                          ; $5727: $67
	and $cc                                          ; $5728: $e6 $cc
	call z, $bbdc                                    ; $572a: $cc $dc $bb
	ld sp, $e8b0                                     ; $572d: $31 $b0 $e8
	jp hl                                            ; $5730: $e9


	ld c, c                                          ; $5731: $49
	ld d, c                                          ; $5732: $51
	pop de                                           ; $5733: $d1
	rst $38                                          ; $5734: $ff
	rst $38                                          ; $5735: $ff
	add b                                            ; $5736: $80
	ld a, a                                          ; $5737: $7f
	ld [hl], a                                       ; $5738: $77
	halt                                             ; $5739: $76
	or $e6                                           ; $573a: $f6 $e6
	and $ce                                          ; $573c: $e6 $ce
	rst JumpTable                                          ; $573e: $c7
	set 4, l                                         ; $573f: $cb $e5
	halt                                             ; $5741: $76
	ld [hl], a                                       ; $5742: $77

jr_053_5743:
	dec hl                                           ; $5743: $2b
	adc e                                            ; $5744: $8b
	rst $38                                          ; $5745: $ff
	rst $38                                          ; $5746: $ff
	rst FarCall                                          ; $5747: $f7
	db $db                                           ; $5748: $db
	ret                                              ; $5749: $c9


	ret z                                            ; $574a: $c8

	call nz, $3764                                   ; $574b: $c4 $64 $37
	bit 6, l                                         ; $574e: $cb $75
	ld a, [$1ab5]                                    ; $5750: $fa $b5 $1a
	xor c                                            ; $5753: $a9
	ld [hl], h                                       ; $5754: $74
	ld hl, sp-$80                                    ; $5755: $f8 $80
	inc a                                            ; $5757: $3c
	adc [hl]                                         ; $5758: $8e
	add a                                            ; $5759: $87
	jp Jump_053_70e1                                 ; $575a: $c3 $e1 $70


	jr jr_053_57b1                                   ; $575d: $18 $52

	jr z, jr_053_56fe                                ; $575f: $28 $9d

	call nz, $a24e                                   ; $5761: $c4 $4e $a2
	sub a                                            ; $5764: $97
	ld b, a                                          ; $5765: $47
	inc a                                            ; $5766: $3c
	ld e, $0e                                        ; $5767: $1e $0e
	rrca                                             ; $5769: $0f
	add a                                            ; $576a: $87
	rst JumpTable                                          ; $576b: $c7
	db $e3                                           ; $576c: $e3
	di                                               ; $576d: $f3
	ld [$76a5], a                                    ; $576e: $ea $a5 $76
	dec d                                            ; $5771: $15
	cp [hl]                                          ; $5772: $be
	rrca                                             ; $5773: $0f
	ld e, [hl]                                       ; $5774: $5e
	ld c, a                                          ; $5775: $4f
	sub a                                            ; $5776: $97
	ld a, b                                          ; $5777: $78
	ld a, h                                          ; $5778: $7c
	inc a                                            ; $5779: $3c
	inc a                                            ; $577a: $3c
	inc e                                            ; $577b: $1c
	sbc [hl]                                         ; $577c: $9e
	adc [hl]                                         ; $577d: $8e
	adc [hl]                                         ; $577e: $8e
	ld [hl], a                                       ; $577f: $77
	nop                                              ; $5780: $00
	sbc e                                            ; $5781: $9b
	adc d                                            ; $5782: $8a
	dec d                                            ; $5783: $15
	xor d                                            ; $5784: $aa
	ld d, c                                          ; $5785: $51
	ld d, $e0                                        ; $5786: $16 $e0
	sbc [hl]                                         ; $5788: $9e
	adc d                                            ; $5789: $8a
	ld d, [hl]                                       ; $578a: $56
	ldh [$98], a                                     ; $578b: $e0 $98
	db $dd                                           ; $578d: $dd
	xor d                                            ; $578e: $aa
	ld [hl], a                                       ; $578f: $77
	and b                                            ; $5790: $a0
	ret nc                                           ; $5791: $d0

	xor d                                            ; $5792: $aa
	ld [hl], a                                       ; $5793: $77
	ld sp, hl                                        ; $5794: $f9
	sub a                                            ; $5795: $97
	ld a, [bc]                                       ; $5796: $0a
	jr jr_053_5743                                   ; $5797: $18 $aa

	ld [hl], a                                       ; $5799: $77
	ld hl, sp-$10                                    ; $579a: $f8 $f0
	xor e                                            ; $579c: $ab
	ld h, l                                          ; $579d: $65
	ld a, [$0296]                                    ; $579e: $fa $96 $02
	adc l                                            ; $57a1: $8d
	db $dd                                           ; $57a2: $dd
	adc l                                            ; $57a3: $8d
	ld b, l                                          ; $57a4: $45
	add l                                            ; $57a5: $85
	db $dd                                           ; $57a6: $dd
	dec l                                            ; $57a7: $2d
	dec d                                            ; $57a8: $15
	db $db                                           ; $57a9: $db
	rlca                                             ; $57aa: $07
	sbc l                                            ; $57ab: $9d
	rst JumpTable                                          ; $57ac: $c7
	rlca                                             ; $57ad: $07
	call c, $de24                                    ; $57ae: $dc $24 $de

jr_053_57b1:
	dec h                                            ; $57b1: $25
	reti                                             ; $57b2: $d9


	rst $38                                          ; $57b3: $ff
	db $dd                                           ; $57b4: $dd
	sub [hl]                                         ; $57b5: $96
	rst SubAFromDE                                          ; $57b6: $df
	jp z, Jump_053_499d                              ; $57b7: $ca $9d $49

	ld b, l                                          ; $57ba: $45
	db $dd                                           ; $57bb: $dd
	ld sp, hl                                        ; $57bc: $f9
	rst SubAFromDE                                          ; $57bd: $df
	db $fd                                           ; $57be: $fd
	rst SubAFromDE                                          ; $57bf: $df
	rst $38                                          ; $57c0: $ff
	rst SubAFromDE                                          ; $57c1: $df
	xor e                                            ; $57c2: $ab
	sub a                                            ; $57c3: $97
	xor c                                            ; $57c4: $a9
	adc l                                            ; $57c5: $8d
	sbc l                                            ; $57c6: $9d
	sbc l                                            ; $57c7: $9d
	sbc e                                            ; $57c8: $9b
	or a                                             ; $57c9: $b7
	db $dd                                           ; $57ca: $dd
	db $dd                                           ; $57cb: $dd
	ld a, c                                          ; $57cc: $79
	rst $38                                          ; $57cd: $ff
	rst SubAFromDE                                          ; $57ce: $df
	rst FarCall                                          ; $57cf: $f7
	sub l                                            ; $57d0: $95
	rst AddAOntoHL                                          ; $57d1: $ef
	halt                                             ; $57d2: $76
	halt                                             ; $57d3: $76
	ld [hl], $56                                     ; $57d4: $36 $56
	ld e, [hl]                                       ; $57d6: $5e
	ld a, [hl]                                       ; $57d7: $7e
	cp $ff                                           ; $57d8: $fe $ff
	cp e                                             ; $57da: $bb
	ld a, c                                          ; $57db: $79
	db $eb                                           ; $57dc: $eb
	ld a, l                                          ; $57dd: $7d
	db $dd                                           ; $57de: $dd
	sbc h                                            ; $57df: $9c
	db $d3                                           ; $57e0: $d3
	sub e                                            ; $57e1: $93
	ld [hl+], a                                      ; $57e2: $22
	sbc $66                                          ; $57e3: $de $66
	ld l, l                                          ; $57e5: $6d
	ld b, [hl]                                       ; $57e6: $46
	ld a, e                                          ; $57e7: $7b
	ldh a, [hDisp1_OBP1]                                     ; $57e8: $f0 $94
	or [hl]                                          ; $57ea: $b6
	or h                                             ; $57eb: $b4
	inc hl                                           ; $57ec: $23
	ret z                                            ; $57ed: $c8

	ret                                              ; $57ee: $c9


	reti                                             ; $57ef: $d9


	reti                                             ; $57f0: $d9


	dec sp                                           ; $57f1: $3b
	db $db                                           ; $57f2: $db
	rst $38                                          ; $57f3: $ff
	cp [hl]                                          ; $57f4: $be
	ld [hl], c                                       ; $57f5: $71
	and e                                            ; $57f6: $a3
	sub b                                            ; $57f7: $90
	rst AddAOntoHL                                          ; $57f8: $ef
	scf                                              ; $57f9: $37
	rst JumpTable                                          ; $57fa: $c7
	sbc d                                            ; $57fb: $9a
	cp [hl]                                          ; $57fc: $be
	or h                                             ; $57fd: $b4
	ld d, l                                          ; $57fe: $55
	or c                                             ; $57ff: $b1
	di                                               ; $5800: $f3
	sub e                                            ; $5801: $93
	sbc e                                            ; $5802: $9b
	db $fd                                           ; $5803: $fd
	ld sp, hl                                        ; $5804: $f9
	ei                                               ; $5805: $fb
	db $db                                           ; $5806: $db
	db $dd                                           ; $5807: $dd
	sbc a                                            ; $5808: $9f
	sub l                                            ; $5809: $95

jr_053_580a:
	ld h, l                                          ; $580a: $65
	push hl                                          ; $580b: $e5
	rst AddAOntoHL                                          ; $580c: $ef
	rst GetHLinHL                                          ; $580d: $cf
	rst GetHLinHL                                          ; $580e: $cf
	jp c, $969e                                      ; $580f: $da $9e $96

	ei                                               ; $5812: $fb
	ei                                               ; $5813: $fb
	sbc $f3                                          ; $5814: $de $f3
	rst SubAFromDE                                          ; $5816: $df
	rst SubAFromBC                                          ; $5817: $e7
	add [hl]                                         ; $5818: $86
	rst AddAOntoHL                                          ; $5819: $ef
	pop af                                           ; $581a: $f1
	ld [hl], l                                       ; $581b: $75
	ld d, b                                          ; $581c: $50
	ldh a, [c]                                       ; $581d: $f2
	ldh a, [c]                                       ; $581e: $f2
	add sp, -$14                                     ; $581f: $e8 $ec
	xor l                                            ; $5821: $ad
	sbc h                                            ; $5822: $9c
	sbc b                                            ; $5823: $98
	cp c                                             ; $5824: $b9
	add hl, sp                                       ; $5825: $39
	add hl, sp                                       ; $5826: $39
	inc sp                                           ; $5827: $33
	inc sp                                           ; $5828: $33
	ld [hl], e                                       ; $5829: $73
	ret nc                                           ; $582a: $d0

	add b                                            ; $582b: $80
	add b                                            ; $582c: $80
	adc l                                            ; $582d: $8d
	adc h                                            ; $582e: $8c
	adc h                                            ; $582f: $8c
	xor h                                            ; $5830: $ac
	and h                                            ; $5831: $a4
	db $dd                                           ; $5832: $dd
	and $df                                          ; $5833: $e6 $df
	rst SubAFromBC                                          ; $5835: $e7
	add b                                            ; $5836: $80
	rst JumpTable                                          ; $5837: $c7
	rst GetHLinHL                                          ; $5838: $cf
	sub l                                            ; $5839: $95
	sub h                                            ; $583a: $94
	ld h, c                                          ; $583b: $61
	ld l, c                                          ; $583c: $69
	ld h, e                                          ; $583d: $63
	ld h, b                                          ; $583e: $60
	dec h                                            ; $583f: $25
	ld sp, $6362                                     ; $5840: $31 $62 $63
	inc sp                                           ; $5843: $33
	inc sp                                           ; $5844: $33
	add hl, sp                                       ; $5845: $39
	add hl, sp                                       ; $5846: $39
	jr c, @+$3e                                      ; $5847: $38 $3c

	ld a, [hl+]                                      ; $5849: $2a
	sbc b                                            ; $584a: $98
	ld b, l                                          ; $584b: $45
	ld c, h                                          ; $584c: $4c
	ld [bc], a                                       ; $584d: $02
	and d                                            ; $584e: $a2
	sub l                                            ; $584f: $95
	sub c                                            ; $5850: $91
	inc e                                            ; $5851: $1c
	ld c, $8e                                        ; $5852: $0e $8e
	add a                                            ; $5854: $87
	rst JumpTable                                          ; $5855: $c7
	ld a, [hl]                                       ; $5856: $7e
	ret nc                                           ; $5857: $d0

	adc e                                            ; $5858: $8b
	db $e3                                           ; $5859: $e3
	add hl, hl                                       ; $585a: $29
	ld h, e                                          ; $585b: $63
	dec d                                            ; $585c: $15
	jr nc, jr_053_580a                               ; $585d: $30 $ab

	ld e, c                                          ; $585f: $59
	ld e, l                                          ; $5860: $5d
	dec l                                            ; $5861: $2d
	ld [hl], e                                       ; $5862: $73
	add hl, sp                                       ; $5863: $39
	add hl, sp                                       ; $5864: $39
	dec e                                            ; $5865: $1d
	inc e                                            ; $5866: $1c
	adc [hl]                                         ; $5867: $8e
	adc [hl]                                         ; $5868: $8e
	add $86                                          ; $5869: $c6 $86
	xor a                                            ; $586b: $af
	xor a                                            ; $586c: $af
	ld a, e                                          ; $586d: $7b
	sbc a                                            ; $586e: $9f
	sbc h                                            ; $586f: $9c
	ld e, a                                          ; $5870: $5f
	rst $38                                          ; $5871: $ff
	adc $de                                          ; $5872: $ce $de
	rst JumpTable                                          ; $5874: $c7
	sbc $e7                                          ; $5875: $de $e7
	sub [hl]                                         ; $5877: $96
	ld h, a                                          ; $5878: $67
	xor d                                            ; $5879: $aa
	ld e, l                                          ; $587a: $5d
	xor d                                            ; $587b: $aa
	ld [hl], a                                       ; $587c: $77
	xor d                                            ; $587d: $aa
	dec c                                            ; $587e: $0d
	xor e                                            ; $587f: $ab
	ld d, h                                          ; $5880: $54
	ld sp, hl                                        ; $5881: $f9
	sub a                                            ; $5882: $97
	ld d, b                                          ; $5883: $50
	jr @+$57                                         ; $5884: $18 $55

	xor $1f                                          ; $5886: $ee $1f
	rrca                                             ; $5888: $0f
	push de                                          ; $5889: $d5
	ld h, $f9                                        ; $588a: $26 $f9
	sub a                                            ; $588c: $97
	ld d, l                                          ; $588d: $55
	cp e                                             ; $588e: $bb
	ld d, l                                          ; $588f: $55
	xor $05                                          ; $5890: $ee $05
	dec bc                                           ; $5892: $0b
	ld d, l                                          ; $5893: $55
	xor $f9                                          ; $5894: $ee $f9
	add b                                            ; $5896: $80
	jp nz, $3cef                                     ; $5897: $c2 $ef $3c

	add hl, de                                       ; $589a: $19
	ret nz                                           ; $589b: $c0

	inc bc                                           ; $589c: $03
	inc a                                            ; $589d: $3c
	jp c, $0000                                     ; $589e: $da $00 $00

	inc bc                                           ; $58a1: $03
	nop                                              ; $58a2: $00
	nop                                              ; $58a3: $00
	db $fc                                           ; $58a4: $fc
	jp $0524                                         ; $58a5: $c3 $24 $05


	rra                                              ; $58a8: $1f
	dec a                                            ; $58a9: $3d
	ld [$ff89], sp                                   ; $58aa: $08 $89 $ff
	db $d3                                           ; $58ad: $d3
	inc l                                            ; $58ae: $2c
	ld [bc], a                                       ; $58af: $02
	nop                                              ; $58b0: $00
	jp nz, $30f4                                     ; $58b1: $c2 $f4 $30

	nop                                              ; $58b4: $00
	inc l                                            ; $58b5: $2c
	adc [hl]                                         ; $58b6: $8e
	inc bc                                           ; $58b7: $03
	ld a, l                                          ; $58b8: $7d
	db $fd                                           ; $58b9: $fd
	dec [hl]                                         ; $58ba: $35
	call nz, $9c0c                                   ; $58bb: $c4 $0c $9c
	jp nz, $0706                                     ; $58be: $c2 $06 $07

	rlca                                             ; $58c1: $07
	rrca                                             ; $58c2: $0f
	ccf                                              ; $58c3: $3f
	rst FarCall                                          ; $58c4: $f7
	rlca                                             ; $58c5: $07
	ccf                                              ; $58c6: $3f
	ei                                               ; $58c7: $fb
	sbc $25                                          ; $58c8: $de $25
	sbc [hl]                                         ; $58ca: $9e
	and l                                            ; $58cb: $a5
	db $dd                                           ; $58cc: $dd
	sub l                                            ; $58cd: $95
	reti                                             ; $58ce: $d9


	rst $38                                          ; $58cf: $ff
	sub a                                            ; $58d0: $97
	dec h                                            ; $58d1: $25
	ld [hl-], a                                      ; $58d2: $32
	ld a, [de]                                       ; $58d3: $1a
	inc e                                            ; $58d4: $1c
	dec a                                            ; $58d5: $3d
	ld a, l                                          ; $58d6: $7d
	ld l, l                                          ; $58d7: $6d
	ld a, l                                          ; $58d8: $7d
	call c, $8cff                                    ; $58d9: $dc $ff $8c
	rst JumpTable                                          ; $58dc: $c7
	rst SubAFromDE                                          ; $58dd: $df
	rst JumpTable                                          ; $58de: $c7
	xor a                                            ; $58df: $af
	db $fd                                           ; $58e0: $fd
	rst $38                                          ; $58e1: $ff
	xor $7e                                          ; $58e2: $ee $7e
	rst SubAFromHL                                          ; $58e4: $d7
	rst SubAFromBC                                          ; $58e5: $e7
	push af                                          ; $58e6: $f5
	ld sp, hl                                        ; $58e7: $f9
	di                                               ; $58e8: $f3
	add a                                            ; $58e9: $87
	sbc [hl]                                         ; $58ea: $9e
	db $fc                                           ; $58eb: $fc
	inc a                                            ; $58ec: $3c
	rla                                              ; $58ed: $17
	rlca                                             ; $58ee: $07
	ld a, b                                          ; $58ef: $78
	or a                                             ; $58f0: $b7
	sub l                                            ; $58f1: $95
	ld a, a                                          ; $58f2: $7f
	ld a, [hl]                                       ; $58f3: $7e
	ret c                                            ; $58f4: $d8

	ret nz                                           ; $58f5: $c0

	add b                                            ; $58f6: $80
	ld [bc], a                                       ; $58f7: $02
	ret nz                                           ; $58f8: $c0

	ldh [$60], a                                     ; $58f9: $e0 $60
	ld h, b                                          ; $58fb: $60

jr_053_58fc:
	sbc $c0                                          ; $58fc: $de $c0
	ld a, l                                          ; $58fe: $7d
	xor l                                            ; $58ff: $ad
	sbc d                                            ; $5900: $9a
	rst $38                                          ; $5901: $ff
	adc a                                            ; $5902: $8f
	inc bc                                           ; $5903: $03
	ld bc, $de00                                     ; $5904: $01 $00 $de
	rlca                                             ; $5907: $07
	call c, $9303                                    ; $5908: $dc $03 $93
	ld bc, $3cfc                                     ; $590b: $01 $fc $3c
	inc [hl]                                         ; $590e: $34
	jp c, $9ada                                      ; $590f: $da $da $9a

	ld [de], a                                       ; $5912: $12
	ldh a, [c]                                       ; $5913: $f2
	rst SubAFromBC                                          ; $5914: $e7
	ccf                                              ; $5915: $3f
	cpl                                              ; $5916: $2f
	sbc $cf                                          ; $5917: $de $cf
	adc h                                            ; $5919: $8c
	rst SubAFromDE                                          ; $591a: $df
	sbc a                                            ; $591b: $9f
	cp a                                             ; $591c: $bf
	rst $38                                          ; $591d: $ff
	sbc a                                            ; $591e: $9f
	sbc [hl]                                         ; $591f: $9e
	call nz, $f782                                   ; $5920: $c4 $82 $f7
	cp [hl]                                          ; $5923: $be
	sbc [hl]                                         ; $5924: $9e
	adc [hl]                                         ; $5925: $8e
	db $ec                                           ; $5926: $ec
	adc l                                            ; $5927: $8d
	cp a                                             ; $5928: $bf
	pop hl                                           ; $5929: $e1
	add b                                            ; $592a: $80
	pop bc                                           ; $592b: $c1
	sbc [hl]                                         ; $592c: $9e
	sbc $8c                                          ; $592d: $de $8c
	rst SubAFromDE                                          ; $592f: $df
	rst SubAFromDE                                          ; $5930: $df
	sbc h                                            ; $5931: $9c
	db $fc                                           ; $5932: $fc
	ld hl, sp-$11                                    ; $5933: $f8 $ef
	db $dd                                           ; $5935: $dd
	rst $38                                          ; $5936: $ff
	sub e                                            ; $5937: $93
	cp $f8                                           ; $5938: $fe $f8
	ldh a, [$a9]                                     ; $593a: $f0 $a9
	db $e3                                           ; $593c: $e3
	ld [hl], e                                       ; $593d: $73
	ld [hl], a                                       ; $593e: $77
	jp $0001                                         ; $593f: $c3 $01 $00


	nop                                              ; $5942: $00
	ld [hl], a                                       ; $5943: $77
	ld a, d                                          ; $5944: $7a
	adc a                                            ; $5945: $8f
	sbc [hl]                                         ; $5946: $9e
	add e                                            ; $5947: $83
	cp $97                                           ; $5948: $fe $97
	add [hl]                                         ; $594a: $86
	sub [hl]                                         ; $594b: $96
	sub a                                            ; $594c: $97
	rst JumpTable                                          ; $594d: $c7
	rst GetHLinHL                                          ; $594e: $cf

Jump_053_594f:
	rst AddAOntoHL                                          ; $594f: $ef
	rst AddAOntoHL                                          ; $5950: $ef
	ccf                                              ; $5951: $3f
	sbc $ef                                          ; $5952: $de $ef
	ld a, [hl]                                       ; $5954: $7e
	ld [hl], b                                       ; $5955: $70
	sub b                                            ; $5956: $90
	ld sp, hl                                        ; $5957: $f9
	ld a, c                                          ; $5958: $79
	jr c, @-$4c                                      ; $5959: $38 $b2

	cp b                                             ; $595b: $b8
	jr jr_053_59b7                                   ; $595c: $18 $59

	ld e, h                                          ; $595e: $5c
	sbc h                                            ; $595f: $9c
	sbc $ff                                          ; $5960: $de $ff
	inc a                                            ; $5962: $3c
	ld a, $be                                        ; $5963: $3e $be
	cp [hl]                                          ; $5965: $be
	ld [hl], h                                       ; $5966: $74
	jr c, jr_053_58fc                                ; $5967: $38 $93

	ld c, e                                          ; $5969: $4b
	jp nz, $a3e6                                     ; $596a: $c2 $e6 $a3

	di                                               ; $596d: $f3
	ld sp, hl                                        ; $596e: $f9
	ld e, l                                          ; $596f: $5d
	ld a, [hl]                                       ; $5970: $7e
	pop af                                           ; $5971: $f1
	ld a, c                                          ; $5972: $79

jr_053_5973:
	ld a, c                                          ; $5973: $79
	ld a, h                                          ; $5974: $7c
	ld a, e                                          ; $5975: $7b
	db $ec                                           ; $5976: $ec
	sub h                                            ; $5977: $94
	sbc a                                            ; $5978: $9f
	ld l, $9e                                        ; $5979: $2e $9e
	jp z, Jump_053_6bcb                              ; $597b: $ca $cb $6b

	ld [hl], e                                       ; $597e: $73
	di                                               ; $597f: $f3
	ei                                               ; $5980: $fb
	rst JumpTable                                          ; $5981: $c7
	rst SubAFromBC                                          ; $5982: $e7
	sbc $f7                                          ; $5983: $de $f7
	ld a, l                                          ; $5985: $7d
	ld c, h                                          ; $5986: $4c
	sub e                                            ; $5987: $93
	ld a, a                                          ; $5988: $7f
	rst FarCall                                          ; $5989: $f7
	and a                                            ; $598a: $a7
	and $66                                          ; $598b: $e6 $66
	ld h, h                                          ; $598d: $64
	ld h, h                                          ; $598e: $64
	xor h                                            ; $598f: $ac
	xor b                                            ; $5990: $a8
	ld l, a                                          ; $5991: $6f
	ld a, a                                          ; $5992: $7f
	ccf                                              ; $5993: $3f
	sbc $bf                                          ; $5994: $de $bf
	rst SubAFromDE                                          ; $5996: $df
	rst $38                                          ; $5997: $ff
	add b                                            ; $5998: $80
	ld a, l                                          ; $5999: $7d
	db $e4                                           ; $599a: $e4
	ld b, e                                          ; $599b: $43
	add a                                            ; $599c: $87
	sub [hl]                                         ; $599d: $96
	ld a, c                                          ; $599e: $79
	sub c                                            ; $599f: $91
	ld l, d                                          ; $59a0: $6a
	add b                                            ; $59a1: $80
	inc bc                                           ; $59a2: $03
	add b                                            ; $59a3: $80
	nop                                              ; $59a4: $00
	ld h, c                                          ; $59a5: $61
	add [hl]                                         ; $59a6: $86
	ld h, b                                          ; $59a7: $60
	pop af                                           ; $59a8: $f1
	jr nz, jr_053_5973                               ; $59a9: $20 $c8

	ld h, e                                          ; $59ab: $63
	ld d, $81                                        ; $59ac: $16 $81
	ld e, b                                          ; $59ae: $58
	cp c                                             ; $59af: $b9
	ld [hl], h                                       ; $59b0: $74
	nop                                              ; $59b1: $00
	jr nc, @-$7e                                     ; $59b2: $30 $80

	ld hl, $e71c                                     ; $59b4: $21 $1c $e7

jr_053_59b7:
	ld a, [hl]                                       ; $59b7: $7e
	add b                                            ; $59b8: $80
	ld hl, sp+$43                                    ; $59b9: $f8 $43
	rst FarCall                                          ; $59bb: $f7
	and h                                            ; $59bc: $a4
	sbc b                                            ; $59bd: $98
	rlca                                             ; $59be: $07
	ret z                                            ; $59bf: $c8

	ld sp, $0007                                     ; $59c0: $31 $07 $00
	nop                                              ; $59c3: $00
	ld e, b                                          ; $59c4: $58
	nop                                              ; $59c5: $00
	nop                                              ; $59c6: $00
	rlca                                             ; $59c7: $07
	ld c, $00                                        ; $59c8: $0e $00
	db $f4                                           ; $59ca: $f4
	call z, $83f1                                    ; $59cb: $cc $f1 $83
	ld [hl], d                                       ; $59ce: $72
	ld c, c                                          ; $59cf: $49
	dec b                                            ; $59d0: $05
	adc e                                            ; $59d1: $8b
	nop                                              ; $59d2: $00
	inc bc                                           ; $59d3: $03
	ld c, $7c                                        ; $59d4: $0e $7c
	adc c                                            ; $59d6: $89
	or b                                             ; $59d7: $b0
	add b                                            ; $59d8: $80
	ld hl, sp+$7c                                    ; $59d9: $f8 $7c
	ld d, e                                          ; $59db: $53
	xor $8f                                          ; $59dc: $ee $8f
	ld [hl], b                                       ; $59de: $70
	ld sp, hl                                        ; $59df: $f9
	rlca                                             ; $59e0: $07
	adc h                                            ; $59e1: $8c
	di                                               ; $59e2: $f3
	inc c                                            ; $59e3: $0c
	db $10                                           ; $59e4: $10
	ld [hl], b                                       ; $59e5: $70
	adc a                                            ; $59e6: $8f
	ld b, $f8                                        ; $59e7: $06 $f8
	inc bc                                           ; $59e9: $03
	inc c                                            ; $59ea: $0c
	ld h, [hl]                                       ; $59eb: $66
	jp nz, Jump_053_7921                             ; $59ec: $c2 $21 $79

	pop hl                                           ; $59ef: $e1
	sbc $3e                                          ; $59f0: $de $3e
	pop bc                                           ; $59f2: $c1
	dec de                                           ; $59f3: $1b
	ccf                                              ; $59f4: $3f
	rst SubAFromDE                                          ; $59f5: $df
	add a                                            ; $59f6: $87
	rra                                              ; $59f7: $1f
	sub h                                            ; $59f8: $94
	ld hl, $3fc1                                     ; $59f9: $21 $c1 $3f
	ld d, h                                          ; $59fc: $54
	ld d, d                                          ; $59fd: $52
	ld c, d                                          ; $59fe: $4a
	ld c, d                                          ; $59ff: $4a
	add hl, hl                                       ; $5a00: $29
	and l                                            ; $5a01: $a5
	sub l                                            ; $5a02: $95
	call nc, $ffd8                                   ; $5a03: $d4 $d8 $ff
	add b                                            ; $5a06: $80
	cp a                                             ; $5a07: $bf
	sbc a                                            ; $5a08: $9f
	adc a                                            ; $5a09: $8f
	ld d, l                                          ; $5a0a: $55
	ld d, h                                          ; $5a0b: $54
	ld e, l                                          ; $5a0c: $5d
	xor e                                            ; $5a0d: $ab
	rst GetHLinHL                                          ; $5a0e: $cf
	and $f0                                          ; $5a0f: $e6 $f0
	rst $38                                          ; $5a11: $ff
	rst AddAOntoHL                                          ; $5a12: $ef
	rst AddAOntoHL                                          ; $5a13: $ef
	and $f6                                          ; $5a14: $e6 $f6
	ldh a, [$fe]                                     ; $5a16: $f0 $fe
	ld hl, sp+$7e                                    ; $5a18: $f8 $7e
	cp a                                             ; $5a1a: $bf
	rst SubAFromDE                                          ; $5a1b: $df
	ld l, a                                          ; $5a1c: $6f
	rst FarCall                                          ; $5a1d: $f7
	rlca                                             ; $5a1e: $07
	add e                                            ; $5a1f: $83
	nop                                              ; $5a20: $00
	add b                                            ; $5a21: $80
	ret nz                                           ; $5a22: $c0

	ldh [$f0], a                                     ; $5a23: $e0 $f0
	ld a, b                                          ; $5a25: $78
	sbc l                                            ; $5a26: $9d
	jr nz, jr_053_5a69                               ; $5a27: $20 $40

	cp $9a                                           ; $5a29: $fe $9a
	ld bc, $c283                                     ; $5a2b: $01 $83 $c2
	ret nz                                           ; $5a2e: $c0

	ret nz                                           ; $5a2f: $c0

	ld [hl], a                                       ; $5a30: $77
	ld hl, sp-$21                                    ; $5a31: $f8 $df
	inc bc                                           ; $5a33: $03
	add a                                            ; $5a34: $87
	db $10                                           ; $5a35: $10
	jr c, jr_053_5a60                                ; $5a36: $38 $28

	nop                                              ; $5a38: $00
	ld b, b                                          ; $5a39: $40
	or b                                             ; $5a3a: $b0
	jr nc, jr_053_5a5d                               ; $5a3b: $30 $20

	nop                                              ; $5a3d: $00
	ld [$0018], sp                                   ; $5a3e: $08 $18 $00
	sub b                                            ; $5a41: $90
	ldh a, [$f0]                                     ; $5a42: $f0 $f0
	pop hl                                           ; $5a44: $e1
	ld [de], a                                       ; $5a45: $12
	rla                                              ; $5a46: $17
	dec [hl]                                         ; $5a47: $35
	dec h                                            ; $5a48: $25
	ld h, a                                          ; $5a49: $67
	ld l, a                                          ; $5a4a: $6f
	ld c, a                                          ; $5a4b: $4f
	rst SubAFromDE                                          ; $5a4c: $df
	sbc $1f                                          ; $5a4d: $de $1f
	add b                                            ; $5a4f: $80
	ccf                                              ; $5a50: $3f
	inc a                                            ; $5a51: $3c
	ld a, h                                          ; $5a52: $7c
	db $fc                                           ; $5a53: $fc
	rst $38                                          ; $5a54: $ff
	call $e67b                                       ; $5a55: $cd $7b $e6
	ld a, $83                                        ; $5a58: $3e $83
	ret c                                            ; $5a5a: $d8

	rst FarCall                                          ; $5a5b: $f7
	cp e                                             ; $5a5c: $bb

jr_053_5a5d:
	or e                                             ; $5a5d: $b3
	rst $38                                          ; $5a5e: $ff
	ld sp, hl                                        ; $5a5f: $f9

jr_053_5a60:
	pop bc                                           ; $5a60: $c1
	ld a, a                                          ; $5a61: $7f
	ccf                                              ; $5a62: $3f
	ld a, b                                          ; $5a63: $78
	sbc a                                            ; $5a64: $9f
	ldh a, [$f0]                                     ; $5a65: $f0 $f0
	ldh a, [c]                                       ; $5a67: $f2
	ldh [c], a                                       ; $5a68: $e2

jr_053_5a69:
	rst SubAFromBC                                          ; $5a69: $e7
	rst JumpTable                                          ; $5a6a: $c7
	rst JumpTable                                          ; $5a6b: $c7
	rst GetHLinHL                                          ; $5a6c: $cf
	ldh [$e0], a                                     ; $5a6d: $e0 $e0
	add b                                            ; $5a6f: $80
	ret nz                                           ; $5a70: $c0

	jp nz, $83c2                                     ; $5a71: $c2 $c2 $83

	add d                                            ; $5a74: $82
	add d                                            ; $5a75: $82
	dec h                                            ; $5a76: $25
	dec h                                            ; $5a77: $25
	inc [hl]                                         ; $5a78: $34
	or [hl]                                          ; $5a79: $b6
	sbc d                                            ; $5a7a: $9a
	sbc e                                            ; $5a7b: $9b
	dec de                                           ; $5a7c: $1b
	cp $01                                           ; $5a7d: $fe $01
	inc h                                            ; $5a7f: $24
	inc h                                            ; $5a80: $24
	inc d                                            ; $5a81: $14
	sub d                                            ; $5a82: $92
	sub d                                            ; $5a83: $92
	inc de                                           ; $5a84: $13
	inc a                                            ; $5a85: $3c
	sbc a                                            ; $5a86: $9f
	rst GetHLinHL                                          ; $5a87: $cf
	rst SubAFromBC                                          ; $5a88: $e7
	push af                                          ; $5a89: $f5
	ld hl, sp-$20                                    ; $5a8a: $f8 $e0
	ld a, b                                          ; $5a8c: $78
	add hl, sp                                       ; $5a8d: $39
	jr @-$79                                         ; $5a8e: $18 $85

	adc b                                            ; $5a90: $88
	add h                                            ; $5a91: $84
	db $e4                                           ; $5a92: $e4
	ld hl, sp-$60                                    ; $5a93: $f8 $a0
	jr c, jr_053_5aa8                                ; $5a95: $38 $11

	rst $38                                          ; $5a97: $ff
	ld a, [$f8fc]                                    ; $5a98: $fa $fc $f8
	ldh [$c0], a                                     ; $5a9b: $e0 $c0
	sub h                                            ; $5a9d: $94
	cp h                                             ; $5a9e: $bc
	ld h, a                                          ; $5a9f: $67
	inc l                                            ; $5aa0: $2c
	db $10                                           ; $5aa1: $10
	jr nz, jr_053_5ae4                               ; $5aa2: $20 $40

	add b                                            ; $5aa4: $80
	add b                                            ; $5aa5: $80
	db $10                                           ; $5aa6: $10
	rst $38                                          ; $5aa7: $ff

jr_053_5aa8:
	ccf                                              ; $5aa8: $3f
	rrca                                             ; $5aa9: $0f
	halt                                             ; $5aaa: $76
	ld d, [hl]                                       ; $5aab: $56
	sbc c                                            ; $5aac: $99
	ld bc, $0fff                                     ; $5aad: $01 $ff $0f
	rlca                                             ; $5ab0: $07
	ld [bc], a                                       ; $5ab1: $02
	ld [bc], a                                       ; $5ab2: $02
	sbc $01                                          ; $5ab3: $de $01
	sbc $ff                                          ; $5ab5: $de $ff
	ld a, l                                          ; $5ab7: $7d
	dec h                                            ; $5ab8: $25
	sbc h                                            ; $5ab9: $9c
	di                                               ; $5aba: $f3
	push hl                                          ; $5abb: $e5
	ld [$ffde], a                                    ; $5abc: $ea $de $ff
	add b                                            ; $5abf: $80
	di                                               ; $5ac0: $f3
	ld [hl], c                                       ; $5ac1: $71
	ld h, c                                          ; $5ac2: $61
	ld h, e                                          ; $5ac3: $63
	ld h, a                                          ; $5ac4: $67
	ld sp, hl                                        ; $5ac5: $f9
	di                                               ; $5ac6: $f3
	ldh [$ce], a                                     ; $5ac7: $e0 $ce
	db $fc                                           ; $5ac9: $fc
	sbc c                                            ; $5aca: $99
	ld a, $fc                                        ; $5acb: $3e $fc
	cp $fc                                           ; $5acd: $fe $fc
	ld hl, sp-$0f                                    ; $5acf: $f8 $f1
	rst $38                                          ; $5ad1: $ff
	cp $c1                                           ; $5ad2: $fe $c1
	inc bc                                           ; $5ad4: $03
	reti                                             ; $5ad5: $d9


	sub d                                            ; $5ad6: $92
	dec b                                            ; $5ad7: $05
	inc l                                            ; $5ad8: $2c
	sbc b                                            ; $5ad9: $98
	push hl                                          ; $5ada: $e5
	inc a                                            ; $5adb: $3c
	reti                                             ; $5adc: $d9


	ld a, $6c                                        ; $5add: $3e $6c
	add b                                            ; $5adf: $80
	ldh [c], a                                       ; $5ae0: $e2
	jp $1a07                                         ; $5ae1: $c3 $07 $1a


jr_053_5ae4:
	ei                                               ; $5ae4: $fb
	rst SubAFromBC                                          ; $5ae5: $e7
	jr nz, @+$54                                     ; $5ae6: $20 $52

	adc [hl]                                         ; $5ae8: $8e
	inc sp                                           ; $5ae9: $33
	db $ec                                           ; $5aea: $ec
	adc e                                            ; $5aeb: $8b
	pop hl                                           ; $5aec: $e1
	rst SubAFromBC                                          ; $5aed: $e7
	ld e, $21                                        ; $5aee: $1e $21
	ld [hl], b                                       ; $5af0: $70
	call z, $0703                                    ; $5af1: $cc $03 $07
	ld e, $f8                                        ; $5af4: $1e $f8
	inc de                                           ; $5af6: $13
	rst SubAFromBC                                          ; $5af7: $e7
	adc a                                            ; $5af8: $8f
	or c                                             ; $5af9: $b1
	xor $02                                          ; $5afa: $ee $02
	ldh [hDisp1_SCX], a                                     ; $5afc: $e0 $91
	inc c                                            ; $5afe: $0c
	add b                                            ; $5aff: $80
	ld hl, sp+$70                                    ; $5b00: $f8 $70
	ld a, [hl]                                       ; $5b02: $7e
	pop af                                           ; $5b03: $f1
	db $fd                                           ; $5b04: $fd
	rra                                              ; $5b05: $1f
	ld a, [hl]                                       ; $5b06: $7e
	xor $f0                                          ; $5b07: $ee $f0
	db $ec                                           ; $5b09: $ec
	sbc [hl]                                         ; $5b0a: $9e
	inc bc                                           ; $5b0b: $03
	ld b, [hl]                                       ; $5b0c: $46
	ld b, b                                          ; $5b0d: $40
	ld hl, $0f1f                                     ; $5b0e: $21 $1f $0f
	inc de                                           ; $5b11: $13
	ld h, c                                          ; $5b12: $61
	rst $38                                          ; $5b13: $ff
	add c                                            ; $5b14: $81
	add e                                            ; $5b15: $83
	ret nz                                           ; $5b16: $c0

	inc c                                            ; $5b17: $0c
	ld [hl], l                                       ; $5b18: $75
	ld sp, hl                                        ; $5b19: $f9
	ld sp, $9dc0                                     ; $5b1a: $31 $c0 $9d
	ld d, a                                          ; $5b1d: $57
	inc c                                            ; $5b1e: $0c
	add b                                            ; $5b1f: $80
	di                                               ; $5b20: $f3
	adc d                                            ; $5b21: $8a
	ld b, $ce                                        ; $5b22: $06 $ce
	rst $38                                          ; $5b24: $ff
	db $e3                                           ; $5b25: $e3
	add c                                            ; $5b26: $81
	add e                                            ; $5b27: $83
	ld c, $03                                        ; $5b28: $0e $03
	ld h, a                                          ; $5b2a: $67
	or [hl]                                          ; $5b2b: $b6
	db $db                                           ; $5b2c: $db
	db $ec                                           ; $5b2d: $ec
	push af                                          ; $5b2e: $f5
	ld e, b                                          ; $5b2f: $58
	pop af                                           ; $5b30: $f1
	rst $38                                          ; $5b31: $ff
	sbc b                                            ; $5b32: $98
	ld c, a                                          ; $5b33: $4f
	daa                                              ; $5b34: $27
	inc de                                           ; $5b35: $13
	adc e                                            ; $5b36: $8b
	rst SubAFromBC                                          ; $5b37: $e7
	jp nc, Jump_053_696a                             ; $5b38: $d2 $6a $69

	ld [hl], h                                       ; $5b3b: $74
	rst $38                                          ; $5b3c: $ff
	ei                                               ; $5b3d: $fb
	rst $38                                          ; $5b3e: $ff
	sbc [hl]                                         ; $5b3f: $9e
	ccf                                              ; $5b40: $3f
	call c, $8fff                                    ; $5b41: $dc $ff $8f
	db $fc                                           ; $5b44: $fc
	ldh a, [$e0]                                     ; $5b45: $f0 $e0

jr_053_5b47:
	xor a                                            ; $5b47: $af
	ld d, [hl]                                       ; $5b48: $56
	ld d, l                                          ; $5b49: $55
	ei                                               ; $5b4a: $fb
	halt                                             ; $5b4b: $76
	cp $fe                                           ; $5b4c: $fe $fe
	rst $38                                          ; $5b4e: $ff
	ldh a, [c]                                       ; $5b4f: $f2
	ei                                               ; $5b50: $fb
	ei                                               ; $5b51: $fb
	db $fd                                           ; $5b52: $fd
	adc l                                            ; $5b53: $8d
	ld a, e                                          ; $5b54: $7b
	ld e, b                                          ; $5b55: $58
	ld a, l                                          ; $5b56: $7d
	add c                                            ; $5b57: $81
	adc l                                            ; $5b58: $8d
	cp a                                             ; $5b59: $bf
	ccf                                              ; $5b5a: $3f
	cp a                                             ; $5b5b: $bf
	and a                                            ; $5b5c: $a7
	ld h, e                                          ; $5b5d: $63
	ld h, b                                          ; $5b5e: $60
	ld a, [hl]                                       ; $5b5f: $7e
	ld a, a                                          ; $5b60: $7f
	ld h, e                                          ; $5b61: $63
	ldh a, [$f8]                                     ; $5b62: $f0 $f8
	and $e1                                          ; $5b64: $e6 $e1
	ldh [$e1], a                                     ; $5b66: $e0 $e1
	ld h, b                                          ; $5b68: $60
	ret nc                                           ; $5b69: $d0

	db $fc                                           ; $5b6a: $fc
	db $dd                                           ; $5b6b: $dd
	rst $38                                          ; $5b6c: $ff
	add b                                            ; $5b6d: $80
	ld bc, $e080                                     ; $5b6e: $01 $80 $e0
	ld hl, sp+$1f                                    ; $5b71: $f8 $1f
	nop                                              ; $5b73: $00
	add b                                            ; $5b74: $80
	ld h, b                                          ; $5b75: $60
	pop bc                                           ; $5b76: $c1
	rlca                                             ; $5b77: $07
	rra                                              ; $5b78: $1f
	ld a, a                                          ; $5b79: $7f
	rst JumpTable                                          ; $5b7a: $c7
	rst JumpTable                                          ; $5b7b: $c7
	add a                                            ; $5b7c: $87
	add e                                            ; $5b7d: $83
	jp $0806                                         ; $5b7e: $c3 $06 $08


	jr c, jr_053_5b47                                ; $5b81: $38 $c4

	call nz, $8282                                   ; $5b83: $c4 $82 $82
	rst $38                                          ; $5b86: $ff
	db $fc                                           ; $5b87: $fc
	db $fc                                           ; $5b88: $fc
	ldh a, [c]                                       ; $5b89: $f2
	pop af                                           ; $5b8a: $f1
	ld sp, hl                                        ; $5b8b: $f9
	rst AddAOntoHL                                          ; $5b8c: $ef
	ld a, a                                          ; $5b8d: $7f
	ld b, l                                          ; $5b8e: $45
	add b                                            ; $5b8f: $80
	inc a                                            ; $5b90: $3c
	inc e                                            ; $5b91: $1c
	ld [de], a                                       ; $5b92: $12
	ld de, $1b11                                     ; $5b93: $11 $11 $1b
	ld e, $9a                                        ; $5b96: $1e $9a
	ld e, h                                          ; $5b98: $5c
	ld a, h                                          ; $5b99: $7c
	ld a, [hl]                                       ; $5b9a: $7e
	rst $38                                          ; $5b9b: $ff
	ld sp, hl                                        ; $5b9c: $f9
	ldh a, [$e0]                                     ; $5b9d: $f0 $e0
	adc [hl]                                         ; $5b9f: $8e
	ld c, h                                          ; $5ba0: $4c
	ld d, h                                          ; $5ba1: $54
	ld [hl-], a                                      ; $5ba2: $32
	ld h, d                                          ; $5ba3: $62
	pop bc                                           ; $5ba4: $c1
	add b                                            ; $5ba5: $80
	add b                                            ; $5ba6: $80
	rst SubAFromDE                                          ; $5ba7: $df
	rst $38                                          ; $5ba8: $ff
	ccf                                              ; $5ba9: $3f
	nop                                              ; $5baa: $00
	nop                                              ; $5bab: $00
	add c                                            ; $5bac: $81
	pop hl                                           ; $5bad: $e1
	ld a, a                                          ; $5bae: $7f
	sbc h                                            ; $5baf: $9c
	add c                                            ; $5bb0: $81
	ld h, b                                          ; $5bb1: $60
	rra                                              ; $5bb2: $1f
	cp $7e                                           ; $5bb3: $fe $7e
	ld b, b                                          ; $5bb5: $40
	adc e                                            ; $5bb6: $8b
	and $c4                                          ; $5bb7: $e6 $c4
	call nz, $e5c5                                   ; $5bb9: $c4 $c5 $e5
	db $f4                                           ; $5bbc: $f4
	db $fc                                           ; $5bbd: $fc
	cp $e4                                           ; $5bbe: $fe $e4
	ld b, h                                          ; $5bc0: $44
	call nz, Call_053_6444                           ; $5bc1: $c4 $44 $64
	db $f4                                           ; $5bc4: $f4
	call c, $0144                    ; $5bc5: $dc $44 $01
	inc bc                                           ; $5bc8: $03
	ld a, a                                          ; $5bc9: $7f
	ldh a, [$79]                                     ; $5bca: $f0 $79
	ld a, [hl+]                                      ; $5bcc: $2a
	ld a, d                                          ; $5bcd: $7a
	ld h, l                                          ; $5bce: $65
	ld a, c                                          ; $5bcf: $79
	ld l, a                                          ; $5bd0: $6f
	adc h                                            ; $5bd1: $8c
	rst $38                                          ; $5bd2: $ff
	pop hl                                           ; $5bd3: $e1
	nop                                              ; $5bd4: $00
	ld a, b                                          ; $5bd5: $78

jr_053_5bd6:
	ld a, h                                          ; $5bd6: $7c
	db $fc                                           ; $5bd7: $fc
	cp $7e                                           ; $5bd8: $fe $7e
	ld [hl], a                                       ; $5bda: $77
	rst FarCall                                          ; $5bdb: $f7
	inc sp                                           ; $5bdc: $33
	jr nc, jr_053_5bef                               ; $5bdd: $30 $10

	or b                                             ; $5bdf: $b0
	ld hl, sp-$28                                    ; $5be0: $f8 $d8
	call nc, $1294                                   ; $5be2: $d4 $94 $12
	call c, $9c01                                    ; $5be5: $dc $01 $9c
	inc bc                                           ; $5be8: $03
	rra                                              ; $5be9: $1f
	ldh a, [$db]                                     ; $5bea: $f0 $db
	ld bc, $0f80                                     ; $5bec: $01 $80 $0f

jr_053_5bef:
	jr nc, jr_053_5bd6                               ; $5bef: $30 $e5

	ld sp, hl                                        ; $5bf1: $f9
	db $fc                                           ; $5bf2: $fc
	jp nz, $8181                                     ; $5bf3: $c2 $81 $81

	add b                                            ; $5bf6: $80
	ret nz                                           ; $5bf7: $c0

	ld a, [hl]                                       ; $5bf8: $7e
	ld a, [hl]                                       ; $5bf9: $7e
	ld a, a                                          ; $5bfa: $7f
	add e                                            ; $5bfb: $83
	ld bc, $8000                                     ; $5bfc: $01 $00 $80
	add b                                            ; $5bff: $80
	ld a, [$1bed]                                    ; $5c00: $fa $ed $1b
	ld h, c                                          ; $5c03: $61
	di                                               ; $5c04: $f3
	rst GetHLinHL                                          ; $5c05: $cf
	cp [hl]                                          ; $5c06: $be
	db $dd                                           ; $5c07: $dd

jr_053_5c08:
	rlca                                             ; $5c08: $07
	ld e, $fc                                        ; $5c09: $1e $fc
	cp $ff                                           ; $5c0b: $fe $ff
	add b                                            ; $5c0d: $80
	pop af                                           ; $5c0e: $f1
	pop bc                                           ; $5c0f: $c1
	ld h, e                                          ; $5c10: $63
	rst AddAOntoHL                                          ; $5c11: $ef
	rrca                                             ; $5c12: $0f
	or a                                             ; $5c13: $b7
	ret c                                            ; $5c14: $d8

	ld a, l                                          ; $5c15: $7d
	cp e                                             ; $5c16: $bb
	rst SubAFromDE                                          ; $5c17: $df

jr_053_5c18:
	rst $38                                          ; $5c18: $ff
	db $10                                           ; $5c19: $10
	ldh a, [$78]                                     ; $5c1a: $f0 $78
	rst SubAFromBC                                          ; $5c1c: $e7
	add e                                            ; $5c1d: $83
	add $fe                                          ; $5c1e: $c6 $fe
	rst $38                                          ; $5c20: $ff
	or e                                             ; $5c21: $b3
	ld h, [hl]                                       ; $5c22: $66
	add hl, de                                       ; $5c23: $19
	db $ec                                           ; $5c24: $ec
	jp $eaf7                                         ; $5c25: $c3 $f7 $ea


	jp $81cc                                         ; $5c28: $c3 $cc $81


	ldh [$f3], a                                     ; $5c2b: $e0 $f3
	ld a, [hl]                                       ; $5c2d: $7e
	ld [hl], l                                       ; $5c2e: $75
	add b                                            ; $5c2f: $80
	rra                                              ; $5c30: $1f
	db $fc                                           ; $5c31: $fc
	rst FarCall                                          ; $5c32: $f7
	rrca                                             ; $5c33: $0f
	scf                                              ; $5c34: $37
	ld a, c                                          ; $5c35: $79
	call nz, Call_053_6116                           ; $5c36: $c4 $16 $61
	sbc e                                            ; $5c39: $9b
	ld a, b                                          ; $5c3a: $78
	ldh a, [$c8]                                     ; $5c3b: $f0 $c8
	add [hl]                                         ; $5c3d: $86
	ei                                               ; $5c3e: $fb
	pop hl                                           ; $5c3f: $e1
	add b                                            ; $5c40: $80
	ld h, b                                          ; $5c41: $60
	dec bc                                           ; $5c42: $0b
	ldh a, [$f7]                                     ; $5c43: $f0 $f7
	dec de                                           ; $5c45: $1b
	or $3c                                           ; $5c46: $f6 $3c
	ld h, c                                          ; $5c48: $61
	rst AddAOntoHL                                          ; $5c49: $ef
	ldh a, [rIF]                                     ; $5c4a: $f0 $0f
	ld [$0ffc], sp                                   ; $5c4c: $08 $fc $0f
	add b                                            ; $5c4f: $80
	rst JumpTable                                          ; $5c50: $c7
	cp $1f                                           ; $5c51: $fe $1f
	jr nz, jr_053_5c91                               ; $5c53: $20 $3c

	sbc e                                            ; $5c55: $9b
	call z, $396b                                    ; $5c56: $cc $6b $39
	ldh a, [c]                                       ; $5c59: $f2
	add hl, sp                                       ; $5c5a: $39
	sbc a                                            ; $5c5b: $9f
	rst $38                                          ; $5c5c: $ff
	ld a, a                                          ; $5c5d: $7f
	inc sp                                           ; $5c5e: $33
	sbc h                                            ; $5c5f: $9c
	cp $0d                                           ; $5c60: $fe $0d
	add $36                                          ; $5c62: $c6 $36
	ld a, $3e                                        ; $5c64: $3e $3e
	dec c                                            ; $5c66: $0d
	db $e3                                           ; $5c67: $e3
	adc $fe                                          ; $5c68: $ce $fe
	ld a, l                                          ; $5c6a: $7d
	rst $38                                          ; $5c6b: $ff
	pop bc                                           ; $5c6c: $c1
	pop bc                                           ; $5c6d: $c1
	di                                               ; $5c6e: $f3
	sbc e                                            ; $5c6f: $9b
	rra                                              ; $5c70: $1f
	ld sp, $c3e1                                     ; $5c71: $31 $e1 $c3
	sbc $7f                                          ; $5c74: $de $7f
	call c, $d9ff                                    ; $5c76: $dc $ff $d9
	ret nz                                           ; $5c79: $c0

	halt                                             ; $5c7a: $76
	jr nc, jr_053_5c18                               ; $5c7b: $30 $9b

	db $fc                                           ; $5c7d: $fc
	db $fd                                           ; $5c7e: $fd
	db $fd                                           ; $5c7f: $fd
	rst $38                                          ; $5c80: $ff
	ld a, b                                          ; $5c81: $78
	xor l                                            ; $5c82: $ad
	sbc [hl]                                         ; $5c83: $9e
	ld [bc], a                                       ; $5c84: $02
	halt                                             ; $5c85: $76
	jr jr_053_5c08                                   ; $5c86: $18 $80

	ld h, b                                          ; $5c88: $60
	ldh a, [$a8]                                     ; $5c89: $f0 $a8
	or [hl]                                          ; $5c8b: $b6
	db $fd                                           ; $5c8c: $fd
	rst SubAFromDE                                          ; $5c8d: $df
	rst $38                                          ; $5c8e: $ff
	cp $e0                                           ; $5c8f: $fe $e0

jr_053_5c91:
	ldh a, [$f8]                                     ; $5c91: $f0 $f8
	xor $63                                          ; $5c93: $ee $63
	ld h, c                                          ; $5c95: $61
	ld b, d                                          ; $5c96: $42
	inc b                                            ; $5c97: $04
	ccf                                              ; $5c98: $3f
	rlca                                             ; $5c99: $07
	ccf                                              ; $5c9a: $3f
	ld [hl], b                                       ; $5c9b: $70
	rst GetHLinHL                                          ; $5c9c: $cf
	sbc a                                            ; $5c9d: $9f
	nop                                              ; $5c9e: $00
	inc bc                                           ; $5c9f: $03
	inc e                                            ; $5ca0: $1c
	inc bc                                           ; $5ca1: $03
	rra                                              ; $5ca2: $1f
	ld h, b                                          ; $5ca3: $60
	add e                                            ; $5ca4: $83
	inc c                                            ; $5ca5: $0c
	nop                                              ; $5ca6: $00
	add b                                            ; $5ca7: $80
	ld bc, $ffc3                                     ; $5ca8: $01 $c3 $ff
	xor $7f                                          ; $5cab: $ee $7f
	rst SubAFromDE                                          ; $5cad: $df
	rst FarCall                                          ; $5cae: $f7
	dec de                                           ; $5caf: $1b
	rst $38                                          ; $5cb0: $ff
	add d                                            ; $5cb1: $82
	cp $cb                                           ; $5cb2: $fe $cb
	dec [hl]                                         ; $5cb4: $35
	adc d                                            ; $5cb5: $8a
	ld h, l                                          ; $5cb6: $65
	ld [de], a                                       ; $5cb7: $12
	adc [hl]                                         ; $5cb8: $8e
	rst SubAFromBC                                          ; $5cb9: $e7
	rst SubAFromBC                                          ; $5cba: $e7
	rst $38                                          ; $5cbb: $ff
	ccf                                              ; $5cbc: $3f
	and e                                            ; $5cbd: $a3
	pop af                                           ; $5cbe: $f1
	or c                                             ; $5cbf: $b1
	ld e, l                                          ; $5cc0: $5d
	ld h, $44                                        ; $5cc1: $26 $44
	ld b, l                                          ; $5cc3: $45
	db $fd                                           ; $5cc4: $fd
	db $e3                                           ; $5cc5: $e3
	and c                                            ; $5cc6: $a1
	sbc l                                            ; $5cc7: $9d
	ld d, c                                          ; $5cc8: $51
	cp c                                             ; $5cc9: $b9
	call c, $9de0                                    ; $5cca: $dc $e0 $9d
	ret nz                                           ; $5ccd: $c0

	add b                                            ; $5cce: $80
	ld a, e                                          ; $5ccf: $7b
	ld h, $fb                                        ; $5cd0: $26 $fb
	sbc [hl]                                         ; $5cd2: $9e
	ld bc, $d678                                     ; $5cd3: $01 $78 $d6
	ld a, e                                          ; $5cd6: $7b
	ld a, [$a17b]                                    ; $5cd7: $fa $7b $a1
	ei                                               ; $5cda: $fb
	ld a, [hl]                                       ; $5cdb: $7e
	ld b, h                                          ; $5cdc: $44
	rst SubAFromDE                                          ; $5cdd: $df
	ldh a, [$df]                                     ; $5cde: $f0 $df
	ld hl, sp-$21                                    ; $5ce0: $f8 $df
	db $fc                                           ; $5ce2: $fc
	add b                                            ; $5ce3: $80
	ld b, d                                          ; $5ce4: $42
	ld h, c                                          ; $5ce5: $61
	ld h, b                                          ; $5ce6: $60
	ld d, b                                          ; $5ce7: $50
	ld d, b                                          ; $5ce8: $50
	adc b                                            ; $5ce9: $88
	adc b                                            ; $5cea: $88
	add h                                            ; $5ceb: $84
	inc e                                            ; $5cec: $1c
	ret nz                                           ; $5ced: $c0

	or $1f                                           ; $5cee: $f6 $1f
	inc e                                            ; $5cf0: $1c
	inc a                                            ; $5cf1: $3c
	ld a, [hl]                                       ; $5cf2: $7e
	rst $38                                          ; $5cf3: $ff
	ld [$6180], sp                                   ; $5cf4: $08 $80 $61
	rra                                              ; $5cf7: $1f
	inc e                                            ; $5cf8: $1c
	inc h                                            ; $5cf9: $24
	ld b, d                                          ; $5cfa: $42
	add c                                            ; $5cfb: $81
	scf                                              ; $5cfc: $37
	ld a, a                                          ; $5cfd: $7f
	db $e3                                           ; $5cfe: $e3
	add e                                            ; $5cff: $83
	inc bc                                           ; $5d00: $03
	inc bc                                           ; $5d01: $03
	rlca                                             ; $5d02: $07
	sbc e                                            ; $5d03: $9b
	rrca                                             ; $5d04: $0f
	rla                                              ; $5d05: $17
	dec de                                           ; $5d06: $1b
	db $e3                                           ; $5d07: $e3
	sbc $03                                          ; $5d08: $de $03
	sub l                                            ; $5d0a: $95
	rlca                                             ; $5d0b: $07
	add hl, bc                                       ; $5d0c: $09
	ret nz                                           ; $5d0d: $c0

	ld bc, $1806                                     ; $5d0e: $01 $06 $18
	ldh a, [$c0]                                     ; $5d11: $f0 $c0
	add b                                            ; $5d13: $80
	add b                                            ; $5d14: $80
	ld [hl], a                                       ; $5d15: $77
	ld hl, sp-$62                                    ; $5d16: $f8 $9e
	ldh [$fe], a                                     ; $5d18: $e0 $fe
	sub [hl]                                         ; $5d1a: $96
	ld h, b                                          ; $5d1b: $60
	ldh [rAUD1SWEEP], a                              ; $5d1c: $e0 $10
	ld [$060c], sp                                   ; $5d1e: $08 $0c $06
	ld [bc], a                                       ; $5d21: $02
	ld bc, $7b40                                     ; $5d22: $01 $40 $7b
	ld hl, sp-$21                                    ; $5d25: $f8 $df
	inc b                                            ; $5d27: $04
	ld a, a                                          ; $5d28: $7f
	ld hl, sp-$7a                                    ; $5d29: $f8 $86
	db $e3                                           ; $5d2b: $e3
	ld a, a                                          ; $5d2c: $7f
	halt                                             ; $5d2d: $76
	ld l, a                                          ; $5d2e: $6f
	scf                                              ; $5d2f: $37
	add hl, sp                                       ; $5d30: $39
	ld a, $1f                                        ; $5d31: $3e $1f
	ld a, a                                          ; $5d33: $7f
	ld a, a                                          ; $5d34: $7f
	add hl, sp                                       ; $5d35: $39
	ld sp, $1f3b                                     ; $5d36: $31 $3b $1f
	dec e                                            ; $5d39: $1d
	ld de, $e71a                                     ; $5d3a: $11 $1a $e7
	call nc, $156a                                   ; $5d3d: $d4 $6a $15
	cp d                                             ; $5d40: $ba
	ld l, a                                          ; $5d41: $6f
	dec [hl]                                         ; $5d42: $35
	rst $38                                          ; $5d43: $ff
	ld a, c                                          ; $5d44: $79
	ld a, [hl-]                                      ; $5d45: $3a
	add b                                            ; $5d46: $80
	and b                                            ; $5d47: $a0
	ld b, b                                          ; $5d48: $40
	sub b                                            ; $5d49: $90
	jp z, Jump_053_6fbf                              ; $5d4a: $ca $bf $6f

	db $db                                           ; $5d4d: $db
	ld a, a                                          ; $5d4e: $7f
	ld h, e                                          ; $5d4f: $63
	sbc [hl]                                         ; $5d50: $9e
	xor e                                            ; $5d51: $ab
	ld d, c                                          ; $5d52: $51
	ldh [$b8], a                                     ; $5d53: $e0 $b8
	ccf                                              ; $5d55: $3f
	rlca                                             ; $5d56: $07
	rra                                              ; $5d57: $1f
	daa                                              ; $5d58: $27
	ld d, a                                          ; $5d59: $57

jr_053_5d5a:
	xor a                                            ; $5d5a: $af
	ldh [$9c], a                                     ; $5d5b: $e0 $9c
	cp d                                             ; $5d5d: $ba
	rrca                                             ; $5d5e: $0f
	dec e                                            ; $5d5f: $1d
	and $4c                                          ; $5d60: $e6 $4c
	jr c, jr_053_5d83                                ; $5d62: $38 $1f

	ld h, e                                          ; $5d64: $63
	rst JumpTable                                          ; $5d65: $c7
	ld [hl], l                                       ; $5d66: $75
	and c                                            ; $5d67: $a1
	add b                                            ; $5d68: $80
	rst JumpTable                                          ; $5d69: $c7
	inc hl                                           ; $5d6a: $23
	ld de, $ed0e                                     ; $5d6b: $11 $0e $ed
	ld [hl], b                                       ; $5d6e: $70
	rst GetHLinHL                                          ; $5d6f: $cf
	xor $e7                                          ; $5d70: $ee $e7
	inc e                                            ; $5d72: $1c
	ld c, $07                                        ; $5d73: $0e $07
	ld e, $ff                                        ; $5d75: $1e $ff
	jr nc, @+$21                                     ; $5d77: $30 $1f

	rra                                              ; $5d79: $1f
	call $3ff2                                       ; $5d7a: $cd $f2 $3f
	db $db                                           ; $5d7d: $db
	dec sp                                           ; $5d7e: $3b
	call nz, $cffb                                   ; $5d7f: $c4 $fb $cf
	ld [hl-], a                                      ; $5d82: $32

jr_053_5d83:
	rrca                                             ; $5d83: $0f
	rst $38                                          ; $5d84: $ff
	inc a                                            ; $5d85: $3c
	call nz, $963b                                   ; $5d86: $c4 $3b $96
	rlca                                             ; $5d89: $07
	rst $38                                          ; $5d8a: $ff
	add a                                            ; $5d8b: $87
	cp a                                             ; $5d8c: $bf
	sbc c                                            ; $5d8d: $99
	db $ec                                           ; $5d8e: $ec
	jp $ee02                                         ; $5d8f: $c3 $02 $ee


	ld a, e                                          ; $5d92: $7b
	and b                                            ; $5d93: $a0
	sub c                                            ; $5d94: $91
	rst $38                                          ; $5d95: $ff
	inc de                                           ; $5d96: $13
	jr nz, jr_053_5d5a                               ; $5d97: $20 $c1

	pop af                                           ; $5d99: $f1
	rst $38                                          ; $5d9a: $ff
	cp a                                             ; $5d9b: $bf
	cp a                                             ; $5d9c: $bf
	rst $38                                          ; $5d9d: $ff
	ld a, a                                          ; $5d9e: $7f
	rra                                              ; $5d9f: $1f
	rra                                              ; $5da0: $1f
	ld e, a                                          ; $5da1: $5f
	rst $38                                          ; $5da2: $ff
	sbc $e0                                          ; $5da3: $de $e0
	ld [hl], e                                       ; $5da5: $73
	scf                                              ; $5da6: $37
	sbc $fe                                          ; $5da7: $de $fe
	ld a, [hl]                                       ; $5da9: $7e
	cp a                                             ; $5daa: $bf
	sbc h                                            ; $5dab: $9c
	ei                                               ; $5dac: $fb
	push af                                          ; $5dad: $f5
	xor $72                                          ; $5dae: $ee $72
	add hl, de                                       ; $5db0: $19
	ld a, a                                          ; $5db1: $7f
	ld c, c                                          ; $5db2: $49
	sub d                                            ; $5db3: $92
	add hl, de                                       ; $5db4: $19
	db $fc                                           ; $5db5: $fc
	db $fc                                           ; $5db6: $fc
	ret z                                            ; $5db7: $c8

	ld [$0304], sp                                   ; $5db8: $08 $04 $03
	ld bc, $9c80                                     ; $5dbb: $01 $80 $9c
	cp b                                             ; $5dbe: $b8
	ret z                                            ; $5dbf: $c8

	adc b                                            ; $5dc0: $88
	ld a, e                                          ; $5dc1: $7b
	ld h, c                                          ; $5dc2: $61
	sbc d                                            ; $5dc3: $9a
	ret nz                                           ; $5dc4: $c0

	rlca                                             ; $5dc5: $07
	rrca                                             ; $5dc6: $0f
	rra                                              ; $5dc7: $1f
	rra                                              ; $5dc8: $1f
	ld [hl], l                                       ; $5dc9: $75
	ld d, [hl]                                       ; $5dca: $56
	sbc c                                            ; $5dcb: $99
	inc bc                                           ; $5dcc: $03
	inc b                                            ; $5dcd: $04
	ld [$0030], sp                                   ; $5dce: $08 $30 $00
	nop                                              ; $5dd1: $00
	ld a, e                                          ; $5dd2: $7b
	push af                                          ; $5dd3: $f5
	ld a, a                                          ; $5dd4: $7f
	ld [hl+], a                                      ; $5dd5: $22
	rst SubAFromDE                                          ; $5dd6: $df
	rst $38                                          ; $5dd7: $ff
	sub a                                            ; $5dd8: $97
	cp a                                             ; $5dd9: $bf
	ld a, a                                          ; $5dda: $7f
	rst $38                                          ; $5ddb: $ff
	cp $01                                           ; $5ddc: $fe $01
	ld bc, $601f                                     ; $5dde: $01 $1f $60
	ld a, d                                          ; $5de1: $7a
	ret c                                            ; $5de2: $d8

	adc a                                            ; $5de3: $8f
	cp a                                             ; $5de4: $bf
	ld d, a                                          ; $5de5: $57
	cp [hl]                                          ; $5de6: $be
	ld d, [hl]                                       ; $5de7: $56
	cp h                                             ; $5de8: $bc
	ld d, h                                          ; $5de9: $54
	xor h                                            ; $5dea: $ac
	ld e, h                                          ; $5deb: $5c
	ld e, [hl]                                       ; $5dec: $5e
	cp d                                             ; $5ded: $ba
	ld d, h                                          ; $5dee: $54
	cp h                                             ; $5def: $bc
	ld d, h                                          ; $5df0: $54
	cp h                                             ; $5df1: $bc
	ld e, b                                          ; $5df2: $58
	xor b                                            ; $5df3: $a8
	pop af                                           ; $5df4: $f1
	ld a, a                                          ; $5df5: $7f
	xor e                                            ; $5df6: $ab
	ld a, a                                          ; $5df7: $7f
	xor d                                            ; $5df8: $aa
	sub a                                            ; $5df9: $97
	ld b, $0e                                        ; $5dfa: $06 $0e
	inc c                                            ; $5dfc: $0c
	inc c                                            ; $5dfd: $0c
	ld bc, $0201                                     ; $5dfe: $01 $01 $02
	ld [bc], a                                       ; $5e01: $02
	sbc $04                                          ; $5e02: $de $04
	sbc l                                            ; $5e04: $9d
	ld [$7be7], sp                                   ; $5e05: $08 $e7 $7b
	call z, $9efd                                    ; $5e08: $cc $fd $9e
	inc bc                                           ; $5e0b: $03
	ld h, [hl]                                       ; $5e0c: $66
	or b                                             ; $5e0d: $b0
	ld h, a                                          ; $5e0e: $67
	rst FarCall                                          ; $5e0f: $f7
	ld a, [$9f9d]                                    ; $5e10: $fa $9d $9f
	di                                               ; $5e13: $f3
	halt                                             ; $5e14: $76
	ld a, [hl-]                                      ; $5e15: $3a
	rst SubAFromDE                                          ; $5e16: $df
	ld bc, $919e                                     ; $5e17: $01 $9e $91
	halt                                             ; $5e1a: $76
	db $d3                                           ; $5e1b: $d3
	cp $df                                           ; $5e1c: $fe $df
	ret nz                                           ; $5e1e: $c0

	ld a, d                                          ; $5e1f: $7a
	ld [hl], $df                                     ; $5e20: $36 $df
	db $fc                                           ; $5e22: $fc
	sbc [hl]                                         ; $5e23: $9e
	cp $7a                                           ; $5e24: $fe $7a
	ld l, a                                          ; $5e26: $6f
	sbc [hl]                                         ; $5e27: $9e
	add b                                            ; $5e28: $80
	sbc $40                                          ; $5e29: $de $40
	sbc [hl]                                         ; $5e2b: $9e
	jr nz, jr_053_5e94                               ; $5e2c: $20 $66

	ld [hl], a                                       ; $5e2e: $77
	ld h, a                                          ; $5e2f: $67
	ld hl, sp-$7d                                    ; $5e30: $f8 $83
	adc [hl]                                         ; $5e32: $8e
	adc e                                            ; $5e33: $8b
	ret                                              ; $5e34: $c9


	ld b, l                                          ; $5e35: $45
	ld h, l                                          ; $5e36: $65
	ld [hl], $17                                     ; $5e37: $36 $17
	ld e, $09                                        ; $5e39: $1e $09
	adc a                                            ; $5e3b: $8f
	ld c, a                                          ; $5e3c: $4f
	ld b, a                                          ; $5e3d: $47
	daa                                              ; $5e3e: $27
	rla                                              ; $5e3f: $17
	rla                                              ; $5e40: $17
	dec bc                                           ; $5e41: $0b
	ld e, d                                          ; $5e42: $5a
	sub h                                            ; $5e43: $94
	ld c, d                                          ; $5e44: $4a
	sub d                                            ; $5e45: $92
	ld d, b                                          ; $5e46: $50
	add sp, $7a                                      ; $5e47: $e8 $7a
	rst $38                                          ; $5e49: $ff
	and l                                            ; $5e4a: $a5
	ld l, e                                          ; $5e4b: $6b
	or l                                             ; $5e4c: $b5
	db $fd                                           ; $5e4d: $fd
	db $dd                                           ; $5e4e: $dd
	rst $38                                          ; $5e4f: $ff
	sub e                                            ; $5e50: $93
	adc a                                            ; $5e51: $8f
	inc de                                           ; $5e52: $13
	ld b, $42                                        ; $5e53: $06 $42
	rrca                                             ; $5e55: $0f
	ld d, a                                          ; $5e56: $57
	cp a                                             ; $5e57: $bf
	rst $38                                          ; $5e58: $ff
	ld [hl], a                                       ; $5e59: $77
	rst AddAOntoHL                                          ; $5e5a: $ef

jr_053_5e5b:
	rst $38                                          ; $5e5b: $ff
	cp a                                             ; $5e5c: $bf
	db $dd                                           ; $5e5d: $dd
	rst $38                                          ; $5e5e: $ff
	add b                                            ; $5e5f: $80
	ldh [$8b], a                                     ; $5e60: $e0 $8b
	ld a, a                                          ; $5e62: $7f
	cp c                                             ; $5e63: $b9
	ret c                                            ; $5e64: $d8

	cp b                                             ; $5e65: $b8
	db $f4                                           ; $5e66: $f4
	xor $ff                                          ; $5e67: $ee $ff
	rst FarCall                                          ; $5e69: $f7
	add a                                            ; $5e6a: $87
	ld a, a                                          ; $5e6b: $7f
	rst SubAFromBC                                          ; $5e6c: $e7
	rst JumpTable                                          ; $5e6d: $c7
	adc a                                            ; $5e6e: $8f
	sbc l                                            ; $5e6f: $9d
	adc h                                            ; $5e70: $8c
	jr z, @+$69                                      ; $5e71: $28 $67

	cp [hl]                                          ; $5e73: $be
	ret z                                            ; $5e74: $c8

	db $e4                                           ; $5e75: $e4
	add c                                            ; $5e76: $81
	inc bc                                           ; $5e77: $03
	ld [hl], e                                       ; $5e78: $73
	rst FarCall                                          ; $5e79: $f7
	ld hl, sp+$60                                    ; $5e7a: $f8 $60
	jr nc, jr_053_5e96                               ; $5e7c: $30 $18

	ld a, a                                          ; $5e7e: $7f
	add b                                            ; $5e7f: $80
	db $fc                                           ; $5e80: $fc
	ccf                                              ; $5e81: $3f
	rlca                                             ; $5e82: $07
	sbc e                                            ; $5e83: $9b
	ld b, c                                          ; $5e84: $41
	daa                                              ; $5e85: $27
	sbc h                                            ; $5e86: $9c
	ei                                               ; $5e87: $fb
	scf                                              ; $5e88: $37
	ret nz                                           ; $5e89: $c0

	rst $38                                          ; $5e8a: $ff
	ld h, a                                          ; $5e8b: $67
	ccf                                              ; $5e8c: $3f
	rra                                              ; $5e8d: $1f
	ld a, a                                          ; $5e8e: $7f
	db $fc                                           ; $5e8f: $fc
	ld hl, sp+$0f                                    ; $5e90: $f8 $0f
	sbc a                                            ; $5e92: $9f
	ccf                                              ; $5e93: $3f

jr_053_5e94:
	ld a, [hl]                                       ; $5e94: $7e
	cp e                                             ; $5e95: $bb

jr_053_5e96:
	rst $38                                          ; $5e96: $ff
	rst AddAOntoHL                                          ; $5e97: $ef
	db $fd                                           ; $5e98: $fd
	rst $38                                          ; $5e99: $ff

jr_053_5e9a:
	ldh [$c0], a                                     ; $5e9a: $e0 $c0
	add c                                            ; $5e9c: $81
	rst JumpTable                                          ; $5e9d: $c7
	ccf                                              ; $5e9e: $3f
	adc h                                            ; $5e9f: $8c
	rra                                              ; $5ea0: $1f
	inc bc                                           ; $5ea1: $03
	rra                                              ; $5ea2: $1f
	dec de                                           ; $5ea3: $1b
	ld e, [hl]                                       ; $5ea4: $5e
	db $fd                                           ; $5ea5: $fd
	ccf                                              ; $5ea6: $3f

jr_053_5ea7:
	cp $ff                                           ; $5ea7: $fe $ff
	rst $38                                          ; $5ea9: $ff
	db $f4                                           ; $5eaa: $f4
	or $f3                                           ; $5eab: $f6 $f3
	db $e3                                           ; $5ead: $e3
	pop hl                                           ; $5eae: $e1
	pop hl                                           ; $5eaf: $e1
	ldh [$e0], a                                     ; $5eb0: $e0 $e0
	rst SubAFromDE                                          ; $5eb2: $df
	sbc $ff                                          ; $5eb3: $de $ff
	ld a, [hl]                                       ; $5eb5: $7e
	or d                                             ; $5eb6: $b2
	ld a, [hl]                                       ; $5eb7: $7e
	rst AddAOntoHL                                          ; $5eb8: $ef
	sbc [hl]                                         ; $5eb9: $9e
	jr nc, jr_053_5e9a                               ; $5eba: $30 $de

	jr nz, jr_053_5e5b                               ; $5ebc: $20 $9d

	and b                                            ; $5ebe: $a0
	add b                                            ; $5ebf: $80
	db $dd                                           ; $5ec0: $dd
	ret nz                                           ; $5ec1: $c0

	ld a, a                                          ; $5ec2: $7f
	ld d, b                                          ; $5ec3: $50
	ld a, b                                          ; $5ec4: $78
	or $89                                           ; $5ec5: $f6 $89
	cp $40                                           ; $5ec7: $fe $40
	ld b, b                                          ; $5ec9: $40
	jr nc, jr_053_5edc                               ; $5eca: $30 $10

	ld c, $02                                        ; $5ecc: $0e $02
	ld bc, $0b03                                     ; $5ece: $01 $03 $0b
	rrca                                             ; $5ed1: $0f
	rla                                              ; $5ed2: $17
	ccf                                              ; $5ed3: $3f
	ld l, a                                          ; $5ed4: $6f
	rst SubAFromDE                                          ; $5ed5: $df
	cp a                                             ; $5ed6: $bf
	ld a, a                                          ; $5ed7: $7f
	inc c                                            ; $5ed8: $0c
	ld [$1018], sp                                   ; $5ed9: $08 $18 $10

jr_053_5edc:
	jr nc, jr_053_5f57                               ; $5edc: $30 $79

	and a                                            ; $5ede: $a7
	db $dd                                           ; $5edf: $dd
	rst $38                                          ; $5ee0: $ff
	ld a, e                                          ; $5ee1: $7b
	pop hl                                           ; $5ee2: $e1
	sbc [hl]                                         ; $5ee3: $9e
	db $fd                                           ; $5ee4: $fd
	ld l, a                                          ; $5ee5: $6f
	inc a                                            ; $5ee6: $3c
	ld a, [hl]                                       ; $5ee7: $7e
	db $eb                                           ; $5ee8: $eb
	sub a                                            ; $5ee9: $97
	xor b                                            ; $5eea: $a8
	ld e, b                                          ; $5eeb: $58
	xor b                                            ; $5eec: $a8
	ld e, b                                          ; $5eed: $58
	xor h                                            ; $5eee: $ac
	ld d, h                                          ; $5eef: $54
	xor [hl]                                         ; $5ef0: $ae
	ld d, a                                          ; $5ef1: $57
	ld a, e                                          ; $5ef2: $7b
	ld sp, hl                                        ; $5ef3: $f9
	ld [hl], a                                       ; $5ef4: $77
	rst FarCall                                          ; $5ef5: $f7
	sbc [hl]                                         ; $5ef6: $9e
	xor d                                            ; $5ef7: $aa
	pop af                                           ; $5ef8: $f1
	rst SubAFromDE                                          ; $5ef9: $df
	inc c                                            ; $5efa: $0c
	sub a                                            ; $5efb: $97
	inc e                                            ; $5efc: $1c
	ld e, $1e                                        ; $5efd: $1e $1e
	ccf                                              ; $5eff: $3f
	ld a, a                                          ; $5f00: $7f
	rst $38                                          ; $5f01: $ff
	ld [$de08], sp                                   ; $5f02: $08 $08 $de
	db $10                                           ; $5f05: $10
	rst SubAFromDE                                          ; $5f06: $df
	jr nz, jr_053_5ea7                               ; $5f07: $20 $9e

	ld b, b                                          ; $5f09: $40
	ld a, [$6269]                                    ; $5f0a: $fa $69 $62
	rst AddAOntoHL                                          ; $5f0d: $ef
	ld h, c                                          ; $5f0e: $61
	ld d, a                                          ; $5f0f: $57
	ld a, [$fede]                                    ; $5f10: $fa $de $fe
	sbc $fc                                          ; $5f13: $de $fc
	ld a, h                                          ; $5f15: $7c
	ld d, e                                          ; $5f16: $53
	rst SubAFromDE                                          ; $5f17: $df
	jr nz, jr_053_5f99                               ; $5f18: $20 $7f

	ld [hl], b                                       ; $5f1a: $70
	ld a, l                                          ; $5f1b: $7d
	adc [hl]                                         ; $5f1c: $8e
	ld a, l                                          ; $5f1d: $7d
	add l                                            ; $5f1e: $85
	pop af                                           ; $5f1f: $f1
	rst SubAFromDE                                          ; $5f20: $df
	dec bc                                           ; $5f21: $0b
	db $dd                                           ; $5f22: $dd
	add hl, bc                                       ; $5f23: $09
	rst SubAFromDE                                          ; $5f24: $df
	ld bc, $f87b                                     ; $5f25: $01 $7b $f8
	call c, $8001                                    ; $5f28: $dc $01 $80
	cp a                                             ; $5f2b: $bf
	dec b                                            ; $5f2c: $05
	cpl                                              ; $5f2d: $2f
	ld d, c                                          ; $5f2e: $51
	ld h, [hl]                                       ; $5f2f: $66
	ei                                               ; $5f30: $fb
	rst FarCall                                          ; $5f31: $f7
	db $e3                                           ; $5f32: $e3
	rst $38                                          ; $5f33: $ff
	cp $d4                                           ; $5f34: $fe $d4
	xor [hl]                                         ; $5f36: $ae
	sbc a                                            ; $5f37: $9f
	db $fc                                           ; $5f38: $fc
	ld hl, sp-$04                                    ; $5f39: $f8 $fc
	or c                                             ; $5f3b: $b1
	ld a, [$dcf7]                                    ; $5f3c: $fa $f7 $dc
	ld h, l                                          ; $5f3f: $65
	jp $dff8                                         ; $5f40: $c3 $f8 $df


	rst GetHLinHL                                          ; $5f43: $cf
	rrca                                             ; $5f44: $0f
	jr jr_053_5f7a                                   ; $5f45: $18 $33

	ei                                               ; $5f47: $fb
	ccf                                              ; $5f48: $3f
	rlca                                             ; $5f49: $07
	sub a                                            ; $5f4a: $97
	jr nz, @-$05                                     ; $5f4b: $20 $f9

	ld [hl], c                                       ; $5f4d: $71
	inc hl                                           ; $5f4e: $23
	db $fc                                           ; $5f4f: $fc
	call z, Call_053_7cfc                            ; $5f50: $cc $fc $7c
	db $dd                                           ; $5f53: $dd
	rst $38                                          ; $5f54: $ff
	rst SubAFromDE                                          ; $5f55: $df
	di                                               ; $5f56: $f3

jr_053_5f57:
	sbc h                                            ; $5f57: $9c
	db $e3                                           ; $5f58: $e3
	ei                                               ; $5f59: $fb
	ld a, a                                          ; $5f5a: $7f
	ld d, a                                          ; $5f5b: $57
	nop                                              ; $5f5c: $00
	rst SubAFromDE                                          ; $5f5d: $df
	ld b, h                                          ; $5f5e: $44
	rst SubAFromDE                                          ; $5f5f: $df
	ld [hl+], a                                      ; $5f60: $22
	rst SubAFromDE                                          ; $5f61: $df
	ld b, h                                          ; $5f62: $44
	sbc l                                            ; $5f63: $9d
	ld d, h                                          ; $5f64: $54
	inc h                                            ; $5f65: $24
	db $dd                                           ; $5f66: $dd
	ld b, h                                          ; $5f67: $44
	rst SubAFromDE                                          ; $5f68: $df
	ld [hl+], a                                      ; $5f69: $22
	sbc e                                            ; $5f6a: $9b
	inc h                                            ; $5f6b: $24
	ld b, l                                          ; $5f6c: $45
	ld d, h                                          ; $5f6d: $54
	ld [hl], a                                       ; $5f6e: $77
	sbc $44                                          ; $5f6f: $de $44
	sbc [hl]                                         ; $5f71: $9e
	ld b, d                                          ; $5f72: $42
	sbc $22                                          ; $5f73: $de $22
	sbc e                                            ; $5f75: $9b
	ld [hl], h                                       ; $5f76: $74
	ld b, h                                          ; $5f77: $44
	ld [hl], a                                       ; $5f78: $77
	ld [hl], h                                       ; $5f79: $74

jr_053_5f7a:
	ld [hl], e                                       ; $5f7a: $73
	or $9e                                           ; $5f7b: $f6 $9e
	daa                                              ; $5f7d: $27
	sbc $77                                          ; $5f7e: $de $77

Call_053_5f80:
	ld b, a                                          ; $5f80: $47
	or $9e                                           ; $5f81: $f6 $9e
	inc h                                            ; $5f83: $24
	ld [hl], e                                       ; $5f84: $73
	or $9e                                           ; $5f85: $f6 $9e
	ld d, l                                          ; $5f87: $55
	ld [hl], a                                       ; $5f88: $77
	or $de                                           ; $5f89: $f6 $de
	ld [hl+], a                                      ; $5f8b: $22
	sbc $55                                          ; $5f8c: $de $55
	sbc b                                            ; $5f8e: $98
	ld b, [hl]                                       ; $5f8f: $46
	ld h, d                                          ; $5f90: $62
	ld h, $63                                        ; $5f91: $26 $63
	ld [hl-], a                                      ; $5f93: $32
	ld [hl+], a                                      ; $5f94: $22
	inc hl                                           ; $5f95: $23
	sbc $55                                          ; $5f96: $de $55
	sbc h                                            ; $5f98: $9c

jr_053_5f99:
	ld d, [hl]                                       ; $5f99: $56
	ld h, [hl]                                       ; $5f9a: $66
	ld [hl+], a                                      ; $5f9b: $22
	ld a, e                                          ; $5f9c: $7b
	or $9d                                           ; $5f9d: $f6 $9d
	inc sp                                           ; $5f9f: $33
	dec [hl]                                         ; $5fa0: $35
	ld [hl], a                                       ; $5fa1: $77
	or $9e                                           ; $5fa2: $f6 $9e
	ld h, $dd                                        ; $5fa4: $26 $dd
	inc sp                                           ; $5fa6: $33
	ld a, e                                          ; $5fa7: $7b
	or $9c                                           ; $5fa8: $f6 $9c
	ld b, [hl]                                       ; $5faa: $46
	ld h, [hl]                                       ; $5fab: $66
	ld h, [hl]                                       ; $5fac: $66
	db $dd                                           ; $5fad: $dd
	inc sp                                           ; $5fae: $33
	sbc l                                            ; $5faf: $9d
	inc [hl]                                         ; $5fb0: $34
	ld d, l                                          ; $5fb1: $55
	ld b, c                                          ; $5fb2: $41
	adc d                                            ; $5fb3: $8a
	ldh a, [c]                                       ; $5fb4: $f2
	sbc d                                            ; $5fb5: $9a
	ld bc, $0100                                     ; $5fb6: $01 $00 $01
	inc bc                                           ; $5fb9: $03
	rlca                                             ; $5fba: $07
	sbc $0f                                          ; $5fbb: $de $0f
	ld a, e                                          ; $5fbd: $7b
	or $73                                           ; $5fbe: $f6 $73
	ld hl, sp-$22                                    ; $5fc0: $f8 $de
	rst $38                                          ; $5fc2: $ff
	sbc [hl]                                         ; $5fc3: $9e
	cp $dd                                           ; $5fc4: $fe $dd
	rst $38                                          ; $5fc6: $ff
	sbc h                                            ; $5fc7: $9c
	nop                                              ; $5fc8: $00
	ld hl, sp-$04                                    ; $5fc9: $f8 $fc
	ld [hl], e                                       ; $5fcb: $73
	ld hl, sp-$23                                    ; $5fcc: $f8 $dd
	rst $38                                          ; $5fce: $ff
	sbc [hl]                                         ; $5fcf: $9e
	ld a, a                                          ; $5fd0: $7f
	sbc $bf                                          ; $5fd1: $de $bf
	sbc h                                            ; $5fd3: $9c
	ccf                                              ; $5fd4: $3f
	nop                                              ; $5fd5: $00
	nop                                              ; $5fd6: $00
	ld [hl], e                                       ; $5fd7: $73
	ld hl, sp-$6c                                    ; $5fd8: $f8 $94
	rst $38                                          ; $5fda: $ff
	sub a                                            ; $5fdb: $97
	sub e                                            ; $5fdc: $93
	sbc e                                            ; $5fdd: $9b
	sbc $fd                                          ; $5fde: $de $fd
	ld a, [$d5d5]                                    ; $5fe0: $fa $d5 $d5
	rst SubAFromDE                                          ; $5fe3: $df
	rst SubAFromDE                                          ; $5fe4: $df
	ld a, e                                          ; $5fe5: $7b
	sub $9e                                          ; $5fe6: $d6 $9e
	db $fd                                           ; $5fe8: $fd
	sbc $fe                                          ; $5fe9: $de $fe
	adc e                                            ; $5feb: $8b
	rst AddAOntoHL                                          ; $5fec: $ef
	add b                                            ; $5fed: $80
	rrca                                             ; $5fee: $0f
	add e                                            ; $5fef: $83
	call nc, Call_053_756b                           ; $5ff0: $d4 $6b $75
	rst $38                                          ; $5ff3: $ff
	ldh a, [rIE]                                     ; $5ff4: $f0 $ff
	ldh a, [$7c]                                     ; $5ff6: $f0 $7c
	dec hl                                           ; $5ff8: $2b
	sub h                                            ; $5ff9: $94
	adc d                                            ; $5ffa: $8a
	rrca                                             ; $5ffb: $0f
	ld hl, sp+$7f                                    ; $5ffc: $f8 $7f
	add e                                            ; $5ffe: $83
	db $fc                                           ; $5fff: $fc
	ld a, e                                          ; $6000: $7b
	push de                                          ; $6001: $d5
	sub d                                            ; $6002: $92
	rst $38                                          ; $6003: $ff
	rlca                                             ; $6004: $07
	add b                                            ; $6005: $80
	ld a, h                                          ; $6006: $7c
	inc bc                                           ; $6007: $03
	nop                                              ; $6008: $00
	add b                                            ; $6009: $80
	ld b, b                                          ; $600a: $40
	push af                                          ; $600b: $f5
	push af                                          ; $600c: $f5
	sbc a                                            ; $600d: $9f
	rst SubAFromBC                                          ; $600e: $e7
	db $fd                                           ; $600f: $fd
	sbc $ff                                          ; $6010: $de $ff
	rst SubAFromDE                                          ; $6012: $df
	ld [$7f9c], a                                    ; $6013: $ea $9c $7f
	rra                                              ; $6016: $1f
	inc bc                                           ; $6017: $03
	cp $df                                           ; $6018: $fe $df
	ld d, l                                          ; $601a: $55
	ld [hl], a                                       ; $601b: $77
	xor [hl]                                         ; $601c: $ae
	sbc e                                            ; $601d: $9b
	rst SubAFromDE                                          ; $601e: $df
	rst FarCall                                          ; $601f: $f7
	xor d                                            ; $6020: $aa
	xor d                                            ; $6021: $aa
	db $dd                                           ; $6022: $dd
	rst $38                                          ; $6023: $ff
	sbc l                                            ; $6024: $9d
	ccf                                              ; $6025: $3f
	rrca                                             ; $6026: $0f
	ld [hl], e                                       ; $6027: $73
	ldh a, [$de]                                     ; $6028: $f0 $de
	rst $38                                          ; $602a: $ff
	ld l, a                                          ; $602b: $6f
	ldh a, [$c7]                                     ; $602c: $f0 $c7
	rst $38                                          ; $602e: $ff
	sbc l                                            ; $602f: $9d
	add b                                            ; $6030: $80
	nop                                              ; $6031: $00
	call nc, $9eff                                   ; $6032: $d4 $ff $9e
	ldh a, [$73]                                     ; $6035: $f0 $73
	ld d, l                                          ; $6037: $55
	rst SubAFromHL                                          ; $6038: $d7
	rst $38                                          ; $6039: $ff
	sbc b                                            ; $603a: $98
	rlca                                             ; $603b: $07
	ccf                                              ; $603c: $3f
	ccf                                              ; $603d: $3f
	sbc a                                            ; $603e: $9f
	rst AddAOntoHL                                          ; $603f: $ef
	ldh [$f0], a                                     ; $6040: $e0 $f0
	db $db                                           ; $6042: $db
	rst $38                                          ; $6043: $ff
	sub e                                            ; $6044: $93
	rst SubAFromBC                                          ; $6045: $e7
	call z, $bbb5                                    ; $6046: $cc $b5 $bb
	rst GetHLinHL                                          ; $6049: $cf
	rst GetHLinHL                                          ; $604a: $cf
	sbc a                                            ; $604b: $9f
	ld a, a                                          ; $604c: $7f
	ld a, a                                          ; $604d: $7f
	rst $38                                          ; $604e: $ff
	db $db                                           ; $604f: $db
	rst SubAFromHL                                          ; $6050: $d7
	reti                                             ; $6051: $d9


	rst $38                                          ; $6052: $ff
	ld a, e                                          ; $6053: $7b
	ld b, b                                          ; $6054: $40
	call nc, Call_053_67ff                           ; $6055: $d4 $ff $67
	ldh a, [$df]                                     ; $6058: $f0 $df
	db $fd                                           ; $605a: $fd
	db $db                                           ; $605b: $db
	rst $38                                          ; $605c: $ff
	rst SubAFromDE                                          ; $605d: $df
	ld a, [bc]                                       ; $605e: $0a
	db $db                                           ; $605f: $db
	rst $38                                          ; $6060: $ff
	ld b, a                                          ; $6061: $47
	ld [hl], b                                       ; $6062: $70
	ld b, a                                          ; $6063: $47
	ldh a, [$62]                                     ; $6064: $f0 $62
	rst JumpTable                                          ; $6066: $c7
	jp c, $f901                                      ; $6067: $da $01 $f9

	ld e, a                                          ; $606a: $5f
	xor b                                            ; $606b: $a8
	rst SubAFromDE                                          ; $606c: $df
	ld bc, $03df                                     ; $606d: $01 $df $03
	rst SubAFromDE                                          ; $6070: $df
	rlca                                             ; $6071: $07
	ld h, d                                          ; $6072: $62
	jp $fd98                                         ; $6073: $c3 $98 $fd


	ld sp, hl                                        ; $6076: $f9
	ld sp, hl                                        ; $6077: $f9
	ldh a, [c]                                       ; $6078: $f2
	ldh a, [c]                                       ; $6079: $f2
	ldh [c], a                                       ; $607a: $e2
	ldh [c], a                                       ; $607b: $e2
	reti                                             ; $607c: $d9


	rst $38                                          ; $607d: $ff
	sbc h                                            ; $607e: $9c
	sub l                                            ; $607f: $95
	and e                                            ; $6080: $a3
	ld [hl+], a                                      ; $6081: $22
	sbc $26                                          ; $6082: $de $26
	sbc d                                            ; $6084: $9a
	dec h                                            ; $6085: $25
	ld b, l                                          ; $6086: $45

Call_053_6087:
	cp $fe                                           ; $6087: $fe $fe
	rst $38                                          ; $6089: $ff
	call c, $80fb                                    ; $608a: $dc $fb $80
	or d                                             ; $608d: $b2
	cp e                                             ; $608e: $bb
	sbc c                                            ; $608f: $99

Call_053_6090:
	sbc l                                            ; $6090: $9d
	db $dd                                           ; $6091: $dd
	db $dd                                           ; $6092: $dd
	call z, Call_053_4dce                            ; $6093: $cc $ce $4d
	ld b, h                                          ; $6096: $44
	ld h, [hl]                                       ; $6097: $66
	ld h, d                                          ; $6098: $62
	ld [hl+], a                                      ; $6099: $22
	ld [hl+], a                                      ; $609a: $22
	inc sp                                           ; $609b: $33
	ld sp, $6fdf                                     ; $609c: $31 $df $6f
	or [hl]                                          ; $609f: $b6
	cp e                                             ; $60a0: $bb
	db $db                                           ; $60a1: $db
	db $dd                                           ; $60a2: $dd
	call z, $20ee                                    ; $60a3: $cc $ee $20
	sub b                                            ; $60a6: $90
	ld c, c                                          ; $60a7: $49
	ld b, h                                          ; $60a8: $44
	inc h                                            ; $60a9: $24
	ld [hl+], a                                      ; $60aa: $22
	inc sp                                           ; $60ab: $33
	add [hl]                                         ; $60ac: $86
	ld de, rIE                                     ; $60ad: $11 $ff $ff
	rst AddAOntoHL                                          ; $60b0: $ef
	ld [hl], a                                       ; $60b1: $77
	or a                                             ; $60b2: $b7
	db $db                                           ; $60b3: $db
	db $dd                                           ; $60b4: $dd
	db $ed                                           ; $60b5: $ed
	nop                                              ; $60b6: $00
	nop                                              ; $60b7: $00
	db $10                                           ; $60b8: $10
	adc b                                            ; $60b9: $88
	ld c, b                                          ; $60ba: $48
	inc h                                            ; $60bb: $24
	ld [hl+], a                                      ; $60bc: $22
	ld [de], a                                       ; $60bd: $12
	db $fd                                           ; $60be: $fd
	rst $38                                          ; $60bf: $ff
	rst FarCall                                          ; $60c0: $f7
	ld sp, hl                                        ; $60c1: $f9
	db $fc                                           ; $60c2: $fc
	ld a, [hl]                                       ; $60c3: $7e
	xor e                                            ; $60c4: $ab
	ld d, l                                          ; $60c5: $55
	halt                                             ; $60c6: $76
	or h                                             ; $60c7: $b4
	ld a, [hl]                                       ; $60c8: $7e
	and c                                            ; $60c9: $a1
	adc e                                            ; $60ca: $8b
	ld b, h                                          ; $60cb: $44
	ld [hl+], a                                      ; $60cc: $22
	rst $38                                          ; $60cd: $ff
	rrca                                             ; $60ce: $0f
	sbc a                                            ; $60cf: $9f
	db $fc                                           ; $60d0: $fc
	db $fc                                           ; $60d1: $fc
	ld a, [hl]                                       ; $60d2: $7e
	ccf                                              ; $60d3: $3f
	sbc a                                            ; $60d4: $9f
	rst $38                                          ; $60d5: $ff
	nop                                              ; $60d6: $00
	inc bc                                           ; $60d7: $03
	rra                                              ; $60d8: $1f
	rrca                                             ; $60d9: $0f
	rlca                                             ; $60da: $07
	inc bc                                           ; $60db: $03
	ld bc, $c000                                     ; $60dc: $01 $00 $c0
	ld [hl], a                                       ; $60df: $77
	ld h, e                                          ; $60e0: $63
	sbc l                                            ; $60e1: $9d
	ld [bc], a                                       ; $60e2: $02
	add h                                            ; $60e3: $84
	reti                                             ; $60e4: $d9


	rst $38                                          ; $60e5: $ff
	adc e                                            ; $60e6: $8b
	inc bc                                           ; $60e7: $03
	dec c                                            ; $60e8: $0d
	ld [hl], $5d                                     ; $60e9: $36 $5d
	cp [hl]                                          ; $60eb: $be
	ld l, e                                          ; $60ec: $6b
	ld c, a                                          ; $60ed: $4f
	cp a                                             ; $60ee: $bf
	rst $38                                          ; $60ef: $ff
	cp $f9                                           ; $60f0: $fe $f9
	and $d9                                          ; $60f2: $e6 $d9
	or a                                             ; $60f4: $b7
	db $fc                                           ; $60f5: $fc
	ldh a, [$3f]                                     ; $60f6: $f0 $3f
	rst $38                                          ; $60f8: $ff
	ld a, c                                          ; $60f9: $79
	sbc [hl]                                         ; $60fa: $9e
	ld a, d                                          ; $60fb: $7a
	reti                                             ; $60fc: $d9


	sbc b                                            ; $60fd: $98
	ld hl, sp-$40                                    ; $60fe: $f8 $c0
	nop                                              ; $6100: $00
	add a                                            ; $6101: $87
	ld a, a                                          ; $6102: $7f
	ldh [rP1], a                                     ; $6103: $e0 $00
	ld a, d                                          ; $6105: $7a
	cp e                                             ; $6106: $bb
	sbc [hl]                                         ; $6107: $9e
	add c                                            ; $6108: $81
	ld a, d                                          ; $6109: $7a
	and l                                            ; $610a: $a5
	ld a, a                                          ; $610b: $7f
	ld b, d                                          ; $610c: $42
	ld a, [hl]                                       ; $610d: $7e
	jr nz, @-$60                                     ; $610e: $20 $9e

	ld a, [hl]                                       ; $6110: $7e
	ld [hl], a                                       ; $6111: $77
	dec h                                            ; $6112: $25
	sub c                                            ; $6113: $91
	rst $38                                          ; $6114: $ff
	ret nz                                           ; $6115: $c0

Call_053_6116:
	cpl                                              ; $6116: $2f
	adc a                                            ; $6117: $8f
	rst AddAOntoHL                                          ; $6118: $ef
	ld a, $03                                        ; $6119: $3e $03
	nop                                              ; $611b: $00
	ldh [$3e], a                                     ; $611c: $e0 $3e
	rst SubAFromHL                                          ; $611e: $d7
	ld [hl], b                                       ; $611f: $70
	ldh a, [$1f]                                     ; $6120: $f0 $1f
	ld a, e                                          ; $6122: $7b
	or e                                             ; $6123: $b3
	ld a, a                                          ; $6124: $7f
	rst GetHLinHL                                          ; $6125: $cf
	sub c                                            ; $6126: $91
	db $ec                                           ; $6127: $ec

jr_053_6128:
	rst $38                                          ; $6128: $ff
	rst FarCall                                          ; $6129: $f7
	reti                                             ; $612a: $d9


	halt                                             ; $612b: $76
	rra                                              ; $612c: $1f
	ld [hl], $ff                                     ; $612d: $36 $ff
	rra                                              ; $612f: $1f
	inc bc                                           ; $6130: $03
	ld [$39e6], sp                                   ; $6131: $08 $e6 $39
	inc c                                            ; $6134: $0c
	ld a, e                                          ; $6135: $7b
	adc c                                            ; $6136: $89
	sbc c                                            ; $6137: $99
	add b                                            ; $6138: $80
	ld h, b                                          ; $6139: $60
	ret c                                            ; $613a: $d8

	db $ec                                           ; $613b: $ec
	ld a, [hl-]                                      ; $613c: $3a
	db $dd                                           ; $613d: $dd
	ld [hl], d                                       ; $613e: $72
	ld b, d                                          ; $613f: $42
	sbc h                                            ; $6140: $9c
	rra                                              ; $6141: $1f
	rst JumpTable                                          ; $6142: $c7
	inc hl                                           ; $6143: $23
	ccf                                              ; $6144: $3f
	nop                                              ; $6145: $00
	inc bc                                           ; $6146: $03
	ldh a, [rAUD1ENV]                                ; $6147: $f0 $12
	ret nz                                           ; $6149: $c0

	rst SubAFromDE                                          ; $614a: $df
	rrca                                             ; $614b: $0f
	rst SubAFromDE                                          ; $614c: $df
	rra                                              ; $614d: $1f
	sbc $3f                                          ; $614e: $de $3f
	ld a, [hl]                                       ; $6150: $7e
	ld b, l                                          ; $6151: $45
	jp c, $9eff                                      ; $6152: $da $ff $9e

	db $e4                                           ; $6155: $e4
	db $db                                           ; $6156: $db
	call nz, $e49e                                   ; $6157: $c4 $9e $e4
	reti                                             ; $615a: $d9


	rst $38                                          ; $615b: $ff
	call c, $de47                                    ; $615c: $dc $47 $de
	ld b, [hl]                                       ; $615f: $46
	reti                                             ; $6160: $d9


	ld sp, hl                                        ; $6161: $f9
	sbc l                                            ; $6162: $9d
	xor $6e                                          ; $6163: $ee $6e
	call c, $9c66                                    ; $6165: $dc $66 $9c
	ld h, h                                          ; $6168: $64
	ld de, $dc91                                     ; $6169: $11 $91 $dc
	sbc c                                            ; $616c: $99
	add b                                            ; $616d: $80
	sbc e                                            ; $616e: $9b
	and $67                                          ; $616f: $e6 $67
	ld [hl], a                                       ; $6171: $77
	ld [hl], e                                       ; $6172: $73
	ld a, e                                          ; $6173: $7b
	ld e, e                                          ; $6174: $5b
	ld e, e                                          ; $6175: $5b
	ld e, c                                          ; $6176: $59
	add hl, de                                       ; $6177: $19
	sbc b                                            ; $6178: $98
	adc b                                            ; $6179: $88
	adc h                                            ; $617a: $8c
	add h                                            ; $617b: $84
	and h                                            ; $617c: $a4
	and h                                            ; $617d: $a4
	and [hl]                                         ; $617e: $a6
	ld l, [hl]                                       ; $617f: $6e
	ld h, [hl]                                       ; $6180: $66
	ld [hl], h                                       ; $6181: $74
	inc [hl]                                         ; $6182: $34
	dec d                                            ; $6183: $15
	db $10                                           ; $6184: $10
	adc d                                            ; $6185: $8a
	adc d                                            ; $6186: $8a
	sub c                                            ; $6187: $91
	sbc c                                            ; $6188: $99
	adc c                                            ; $6189: $89
	ret                                              ; $618a: $c9


	ret z                                            ; $618b: $c8

	call z, Call_053_4cdf                            ; $618c: $cc $df $4c
	add b                                            ; $618f: $80
	ld a, [bc]                                       ; $6190: $0a
	or c                                             ; $6191: $b1
	adc h                                            ; $6192: $8c
	ld e, d                                          ; $6193: $5a
	add $ad                                          ; $6194: $c6 $ad
	ld h, h                                          ; $6196: $64
	jp nz, $1831                                     ; $6197: $c2 $31 $18

	jr jr_053_6128                                   ; $619a: $18 $8c

	adc h                                            ; $619c: $8c
	add $c7                                          ; $619d: $c6 $c7
	ld h, a                                          ; $619f: $67
	push bc                                          ; $61a0: $c5
	ld b, d                                          ; $61a1: $42
	ld a, [hl+]                                      ; $61a2: $2a
	ldh [$57], a                                     ; $61a3: $e0 $57
	ld [hl], a                                       ; $61a5: $77
	ld l, d                                          ; $61a6: $6a
	add hl, hl                                       ; $61a7: $29
	ld [$c48c], sp                                   ; $61a8: $08 $8c $c4
	ld b, [hl]                                       ; $61ab: $46
	ld h, d                                          ; $61ac: $62
	ld [hl+], a                                      ; $61ad: $22
	inc sp                                           ; $61ae: $33
	sub e                                            ; $61af: $93
	inc sp                                           ; $61b0: $33
	adc c                                            ; $61b1: $89
	jp z, Jump_053_7f55                              ; $61b2: $ca $55 $7f

	ld a, b                                          ; $61b5: $78
	jr nz, @+$22                                     ; $61b6: $20 $20

	inc a                                            ; $61b8: $3c
	rst $38                                          ; $61b9: $ff
	ld a, a                                          ; $61ba: $7f
	ld a, a                                          ; $61bb: $7f
	call c, $9c3f                                    ; $61bc: $dc $3f $9c
	ld a, a                                          ; $61bf: $7f
	db $fc                                           ; $61c0: $fc
	ldh [$fe], a                                     ; $61c1: $e0 $fe
	sbc e                                            ; $61c3: $9b
	dec b                                            ; $61c4: $05
	ld a, [de]                                       ; $61c5: $1a
	rst JumpTable                                          ; $61c6: $c7
	cp a                                             ; $61c7: $bf
	db $dd                                           ; $61c8: $dd
	rst $38                                          ; $61c9: $ff
	adc l                                            ; $61ca: $8d
	ld a, [$81e5]                                    ; $61cb: $fa $e5 $81
	rlca                                             ; $61ce: $07
	rrca                                             ; $61cf: $0f
	rra                                              ; $61d0: $1f
	ccf                                              ; $61d1: $3f
	halt                                             ; $61d2: $76
	ld l, a                                          ; $61d3: $6f
	add [hl]                                         ; $61d4: $86
	cp $f8                                           ; $61d5: $fe $f8
	ldh a, [$e0]                                     ; $61d7: $f0 $e0
	ret nz                                           ; $61d9: $c0

	adc c                                            ; $61da: $89
	sub c                                            ; $61db: $91
	inc sp                                           ; $61dc: $33
	db $dd                                           ; $61dd: $dd
	rst $38                                          ; $61de: $ff
	sbc e                                            ; $61df: $9b
	ld l, a                                          ; $61e0: $6f
	ld d, l                                          ; $61e1: $55
	ld e, l                                          ; $61e2: $5d
	or l                                             ; $61e3: $b5
	ld [hl], d                                       ; $61e4: $72
	ld [hl], c                                       ; $61e5: $71

jr_053_61e6:
	rst SubAFromDE                                          ; $61e6: $df
	adc b                                            ; $61e7: $88
	sbc l                                            ; $61e8: $9d
	jr jr_053_61e6                                   ; $61e9: $18 $fb

	db $dd                                           ; $61eb: $dd
	rst $38                                          ; $61ec: $ff
	sbc e                                            ; $61ed: $9b
	cp a                                             ; $61ee: $bf
	or l                                             ; $61ef: $b5
	dec h                                            ; $61f0: $25
	rlca                                             ; $61f1: $07
	db $fd                                           ; $61f2: $fd
	sbc c                                            ; $61f3: $99
	ld b, b                                          ; $61f4: $40
	ld c, b                                          ; $61f5: $48
	ret z                                            ; $61f6: $c8

	rst GetHLinHL                                          ; $61f7: $cf
	ld a, e                                          ; $61f8: $7b
	xor $dd                                          ; $61f9: $ee $dd
	rst $38                                          ; $61fb: $ff
	sbc d                                            ; $61fc: $9a
	rst AddAOntoHL                                          ; $61fd: $ef
	add c                                            ; $61fe: $81
	ldh a, [rAUD3LEVEL]                              ; $61ff: $f0 $1c
	ld [bc], a                                       ; $6201: $02
	ld [hl], a                                       ; $6202: $77
	inc de                                           ; $6203: $13
	ld a, [hl]                                       ; $6204: $7e
	ld hl, $db89                                     ; $6205: $21 $89 $db
	ld l, e                                          ; $6208: $6b
	di                                               ; $6209: $f3
	ld a, d                                          ; $620a: $7a
	cp l                                             ; $620b: $bd
	db $dd                                           ; $620c: $dd
	sub c                                            ; $620d: $91
	ret                                              ; $620e: $c9


	ld h, h                                          ; $620f: $64
	inc [hl]                                         ; $6210: $34
	sbc [hl]                                         ; $6211: $9e
	rst GetHLinHL                                          ; $6212: $cf
	ld h, a                                          ; $6213: $67
	scf                                              ; $6214: $37
	add b                                            ; $6215: $80
	add b                                            ; $6216: $80
	ld b, b                                          ; $6217: $40
	ret nz                                           ; $6218: $c0

	and b                                            ; $6219: $a0
	ldh [$d0], a                                     ; $621a: $e0 $d0
	ldh a, [c]                                       ; $621c: $f2
	ld [hl], l                                       ; $621d: $75
	push de                                          ; $621e: $d5
	ld a, e                                          ; $621f: $7b
	adc [hl]                                         ; $6220: $8e
	sbc [hl]                                         ; $6221: $9e
	inc e                                            ; $6222: $1c
	ld b, $c0                                        ; $6223: $06 $c0
	ld a, d                                          ; $6225: $7a
	ld a, a                                          ; $6226: $7f
	rst SubAFromDE                                          ; $6227: $df
	inc b                                            ; $6228: $04
	sbc h                                            ; $6229: $9c
	jp nz, $e3c7                                     ; $622a: $c2 $c7 $e3

	db $dd                                           ; $622d: $dd
	rlca                                             ; $622e: $07
	halt                                             ; $622f: $76
	db $db                                           ; $6230: $db
	sbc b                                            ; $6231: $98
	ldh a, [$e1]                                     ; $6232: $f0 $e1
	ld e, a                                          ; $6234: $5f
	jr nc, jr_053_626f                               ; $6235: $30 $38

jr_053_6237:
	ld l, b                                          ; $6237: $68
	cp $73                                           ; $6238: $fe $73
	ld a, b                                          ; $623a: $78
	sbc e                                            ; $623b: $9b
	rst $38                                          ; $623c: $ff
	rst GetHLinHL                                          ; $623d: $cf
	rst GetHLinHL                                          ; $623e: $cf
	rst $38                                          ; $623f: $ff
	ld [hl], d                                       ; $6240: $72
	rst JumpTable                                          ; $6241: $c7
	ld a, c                                          ; $6242: $79
	ld b, $62                                        ; $6243: $06 $62
	ret nz                                           ; $6245: $c0

	sbc c                                            ; $6246: $99
	db $e4                                           ; $6247: $e4
	ld h, h                                          ; $6248: $64
	ld h, h                                          ; $6249: $64
	ld h, d                                          ; $624a: $62
	ld h, d                                          ; $624b: $62
	ld [hl], d                                       ; $624c: $72
	ld l, a                                          ; $624d: $6f
	ldh [$de], a                                     ; $624e: $e0 $de
	rst $38                                          ; $6250: $ff
	rst SubAFromDE                                          ; $6251: $df
	ld b, [hl]                                       ; $6252: $46
	sub a                                            ; $6253: $97

Call_053_6254:
	ld b, d                                          ; $6254: $42
	ld [hl+], a                                      ; $6255: $22
	ld [hl+], a                                      ; $6256: $22
	inc hl                                           ; $6257: $23
	inc sp                                           ; $6258: $33
	inc sp                                           ; $6259: $33
	ld sp, hl                                        ; $625a: $f9
	ld sp, hl                                        ; $625b: $f9
	db $db                                           ; $625c: $db
	db $fd                                           ; $625d: $fd
	rst SubAFromDE                                          ; $625e: $df
	ld b, l                                          ; $625f: $45
	sbc [hl]                                         ; $6260: $9e
	ld b, a                                          ; $6261: $47
	sbc $42                                          ; $6262: $de $42
	sbc l                                            ; $6264: $9d
	ld b, [hl]                                       ; $6265: $46
	ld b, $de                                        ; $6266: $06 $de
	cp e                                             ; $6268: $bb
	db $dd                                           ; $6269: $dd
	cp a                                             ; $626a: $bf
	sub e                                            ; $626b: $93
	rst $38                                          ; $626c: $ff
	ld e, c                                          ; $626d: $59
	ld sp, hl                                        ; $626e: $f9

jr_053_626f:
	db $fd                                           ; $626f: $fd
	cp l                                             ; $6270: $bd
	db $dd                                           ; $6271: $dd
	db $dd                                           ; $6272: $dd
	push de                                          ; $6273: $d5
	reti                                             ; $6274: $d9


	and [hl]                                         ; $6275: $a6
	ld h, $26                                        ; $6276: $26 $26
	sbc $66                                          ; $6278: $de $66
	rst SubAFromDE                                          ; $627a: $df
	ld l, [hl]                                       ; $627b: $6e
	sub a                                            ; $627c: $97
	adc b                                            ; $627d: $88
	sbc b                                            ; $627e: $98
	ret c                                            ; $627f: $d8

	db $fc                                           ; $6280: $fc
	ld a, h                                          ; $6281: $7c
	cp h                                             ; $6282: $bc
	cp h                                             ; $6283: $bc
	cp l                                             ; $6284: $bd
	db $dd                                           ; $6285: $dd
	ld c, [hl]                                       ; $6286: $4e
	db $dd                                           ; $6287: $dd
	adc $9e                                          ; $6288: $ce $9e
	sub $de                                          ; $628a: $d6 $de
	ld d, d                                          ; $628c: $52
	sbc e                                            ; $628d: $9b
	jp nz, $c6c6                                     ; $628e: $c2 $c6 $c6

	ld b, [hl]                                       ; $6291: $46
	db $dd                                           ; $6292: $dd
	ld h, e                                          ; $6293: $63
	sbc $73                                          ; $6294: $de $73
	sbc d                                            ; $6296: $9a
	di                                               ; $6297: $f3
	sbc e                                            ; $6298: $9b
	sbc a                                            ; $6299: $9f
	scf                                              ; $629a: $37
	scf                                              ; $629b: $37
	sbc $77                                          ; $629c: $de $77
	sbc h                                            ; $629e: $9c
	ld [hl], l                                       ; $629f: $75
	ld sp, $6e31                                     ; $62a0: $31 $31 $6e
	add b                                            ; $62a3: $80
	sub a                                            ; $62a4: $97
	jr c, jr_053_6237                                ; $62a5: $38 $90

	sub b                                            ; $62a7: $90
	sub c                                            ; $62a8: $91
	or d                                             ; $62a9: $b2
	or d                                             ; $62aa: $b2
	and d                                            ; $62ab: $a2
	db $e4                                           ; $62ac: $e4
	db $db                                           ; $62ad: $db
	rra                                              ; $62ae: $1f
	rst SubAFromDE                                          ; $62af: $df
	ccf                                              ; $62b0: $3f
	add b                                            ; $62b1: $80
	dec [hl]                                         ; $62b2: $35
	ld l, h                                          ; $62b3: $6c
	ld e, d                                          ; $62b4: $5a
	ld l, c                                          ; $62b5: $69
	cp c                                             ; $62b6: $b9
	cp b                                             ; $62b7: $b8
	db $d3                                           ; $62b8: $d3
	db $db                                           ; $62b9: $db
	jp z, $b492                                      ; $62ba: $ca $92 $b4

	or h                                             ; $62bd: $b4
	ld h, h                                          ; $62be: $64
	ld h, l                                          ; $62bf: $65
	ld l, l                                          ; $62c0: $6d
	ld l, l                                          ; $62c1: $6d
	ld [hl], d                                       ; $62c2: $72
	call z, $9865                                    ; $62c3: $cc $65 $98
	sbc d                                            ; $62c6: $9a
	ret z                                            ; $62c7: $c8

	ld d, c                                          ; $62c8: $51
	ld [hl], l                                       ; $62c9: $75
	daa                                              ; $62ca: $27
	ld h, a                                          ; $62cb: $67
	adc $ce                                          ; $62cc: $ce $ce
	call z, $9c9c                                    ; $62ce: $cc $9c $9c
	sub e                                            ; $62d1: $93
	sbc b                                            ; $62d2: $98
	ld sp, $6261                                     ; $62d3: $31 $61 $62
	dec hl                                           ; $62d6: $2b
	set 0, e                                         ; $62d7: $cb $c3
	ld d, c                                          ; $62d9: $51
	jp nc, $3818                                     ; $62da: $d2 $18 $38

	add hl, sp                                       ; $62dd: $39
	sbc $71                                          ; $62de: $de $71
	rst SubAFromDE                                          ; $62e0: $df
	db $e3                                           ; $62e1: $e3
	sub [hl]                                         ; $62e2: $96
	dec h                                            ; $62e3: $25
	xor b                                            ; $62e4: $a8
	adc b                                            ; $62e5: $88
	ld a, [bc]                                       ; $62e6: $0a
	ld [$1848], sp                                   ; $62e7: $08 $48 $18
	add hl, de                                       ; $62ea: $19
	ret z                                            ; $62eb: $c8

	sbc $cc                                          ; $62ec: $de $cc
	sbc [hl]                                         ; $62ee: $9e
	adc $de                                          ; $62ef: $ce $de
	adc [hl]                                         ; $62f1: $8e
	add b                                            ; $62f2: $80
	rst GetHLinHL                                          ; $62f3: $cf
	db $d3                                           ; $62f4: $d3
	push af                                          ; $62f5: $f5
	ld h, c                                          ; $62f6: $61
	ld h, b                                          ; $62f7: $60
	ld l, d                                          ; $62f8: $6a
	ld h, e                                          ; $62f9: $63
	ld h, c                                          ; $62fa: $61
	jr nz, @+$26                                     ; $62fb: $20 $24

	ld [hl+], a                                      ; $62fd: $22
	ld [hl-], a                                      ; $62fe: $32
	inc sp                                           ; $62ff: $33
	ld sp, $3939                                     ; $6300: $31 $39 $39
	xor $76                                          ; $6303: $ee $76
	ld a, d                                          ; $6305: $7a
	rla                                              ; $6306: $17
	and l                                            ; $6307: $a5
	adc e                                            ; $6308: $8b
	ld [bc], a                                       ; $6309: $02
	ld d, c                                          ; $630a: $51
	dec de                                           ; $630b: $1b
	rrca                                             ; $630c: $0f
	rlca                                             ; $630d: $07
	inc hl                                           ; $630e: $23
	inc de                                           ; $630f: $13
	ld de, $8e99                                     ; $6310: $11 $99 $8e
	adc b                                            ; $6313: $88
	db $fc                                           ; $6314: $fc
	db $eb                                           ; $6315: $eb
	db $db                                           ; $6316: $db
	rst SubAFromDE                                          ; $6317: $df
	sub a                                            ; $6318: $97
	rst SubAFromHL                                          ; $6319: $d7
	rst GetHLinHL                                          ; $631a: $cf
	call $9c98                                       ; $631b: $cd $98 $9c
	adc h                                            ; $631e: $8c
	adc a                                            ; $631f: $8f
	call z, $c7cc                                    ; $6320: $cc $cc $c7
	add $79                                          ; $6323: $c6 $79
	inc sp                                           ; $6325: $33
	ld a, e                                          ; $6326: $7b
	db $fd                                           ; $6327: $fd
	rst $38                                          ; $6328: $ff
	sbc $7f                                          ; $6329: $de $7f
	ld [hl], d                                       ; $632b: $72
	ld sp, hl                                        ; $632c: $f9
	ld b, [hl]                                       ; $632d: $46
	ret nz                                           ; $632e: $c0

	sub a                                            ; $632f: $97
	ccf                                              ; $6330: $3f
	add hl, sp                                       ; $6331: $39
	db $10                                           ; $6332: $10
	pop af                                           ; $6333: $f1
	db $d3                                           ; $6334: $d3
	or $fd                                           ; $6335: $f6 $fd
	ld a, b                                          ; $6337: $78
	db $dd                                           ; $6338: $dd
	rst $38                                          ; $6339: $ff
	rst SubAFromDE                                          ; $633a: $df
	sbc a                                            ; $633b: $9f
	rst SubAFromDE                                          ; $633c: $df

Jump_053_633d:
	rst $38                                          ; $633d: $ff
	sub a                                            ; $633e: $97
	sub e                                            ; $633f: $93
	rst JumpTable                                          ; $6340: $c7
	ld c, a                                          ; $6341: $4f
	sbc $fc                                          ; $6342: $de $fc
	ld c, $07                                        ; $6344: $0e $07
	add [hl]                                         ; $6346: $86
	jp c, $9eff                                      ; $6347: $da $ff $9e

	db $fc                                           ; $634a: $fc
	ld [hl], a                                       ; $634b: $77
	db $dd                                           ; $634c: $dd
	sbc $3f                                          ; $634d: $de $3f
	ret c                                            ; $634f: $d8

	rst $38                                          ; $6350: $ff
	sub a                                            ; $6351: $97
	or e                                             ; $6352: $b3
	or c                                             ; $6353: $b1
	sbc c                                            ; $6354: $99
	sbc c                                            ; $6355: $99
	call z, $c4cc                                    ; $6356: $cc $cc $c4
	ld h, [hl]                                       ; $6359: $66
	reti                                             ; $635a: $d9


	rst $38                                          ; $635b: $ff
	sub a                                            ; $635c: $97
	ld sp, $9919                                     ; $635d: $31 $19 $99
	sbc l                                            ; $6360: $9d
	sbc h                                            ; $6361: $9c
	call z, $67ce                                    ; $6362: $cc $ce $67
	reti                                             ; $6365: $d9


	rst $38                                          ; $6366: $ff
	sub [hl]                                         ; $6367: $96
	ld b, $85                                        ; $6368: $06 $85
	adc l                                            ; $636a: $8d
	adc h                                            ; $636b: $8c
	db $dd                                           ; $636c: $dd
	db $dd                                           ; $636d: $dd
	db $fd                                           ; $636e: $fd
	db $fd                                           ; $636f: $fd
	rst $38                                          ; $6370: $ff
	ld a, b                                          ; $6371: $78
	cpl                                              ; $6372: $2f
	db $dd                                           ; $6373: $dd
	rst $38                                          ; $6374: $ff
	sub [hl]                                         ; $6375: $96
	reti                                             ; $6376: $d9


	xor b                                            ; $6377: $a8
	cp c                                             ; $6378: $b9
	or c                                             ; $6379: $b1
	ld [hl], e                                       ; $637a: $73
	ld h, e                                          ; $637b: $63
	ld h, a                                          ; $637c: $67
	db $eb                                           ; $637d: $eb
	ld l, [hl]                                       ; $637e: $6e
	sbc $df                                          ; $637f: $de $df
	ld a, c                                          ; $6381: $79
	call $fd94                                       ; $6382: $cd $94 $fd
	xor c                                            ; $6385: $a9
	cp c                                             ; $6386: $b9
	sbc b                                            ; $6387: $98
	sbc b                                            ; $6388: $98
	cp c                                             ; $6389: $b9
	cp c                                             ; $638a: $b9
	ei                                               ; $638b: $fb
	rst $38                                          ; $638c: $ff
	sbc $de                                          ; $638d: $de $de
	call c, $92ff                                    ; $638f: $dc $ff $92
	sbc $4f                                          ; $6392: $de $4f
	rst GetHLinHL                                          ; $6394: $cf
	set 1, a                                         ; $6395: $cb $cf
	rst JumpTable                                          ; $6397: $c7
	rst GetHLinHL                                          ; $6398: $cf
	rst GetHLinHL                                          ; $6399: $cf
	rst SubAFromDE                                          ; $639a: $df
	di                                               ; $639b: $f3
	di                                               ; $639c: $f3
	rst FarCall                                          ; $639d: $f7
	rst FarCall                                          ; $639e: $f7
	db $dd                                           ; $639f: $dd
	rst $38                                          ; $63a0: $ff
	sub l                                            ; $63a1: $95
	halt                                             ; $63a2: $76
	ld d, d                                          ; $63a3: $52
	ld d, e                                          ; $63a4: $53
	ld h, a                                          ; $63a5: $67
	ld h, l                                          ; $63a6: $65
	ld l, e                                          ; $63a7: $6b
	ld a, a                                          ; $63a8: $7f
	rst $38                                          ; $63a9: $ff
	sbc e                                            ; $63aa: $9b
	cp a                                             ; $63ab: $bf
	sbc $be                                          ; $63ac: $de $be
	sbc e                                            ; $63ae: $9b
	db $fc                                           ; $63af: $fc
	ld sp, hl                                        ; $63b0: $f9
	di                                               ; $63b1: $f3
	db $e4                                           ; $63b2: $e4
	ld a, c                                          ; $63b3: $79
	rrca                                             ; $63b4: $0f
	sbc e                                            ; $63b5: $9b
	db $e4                                           ; $63b6: $e4
	and h                                            ; $63b7: $a4
	and h                                            ; $63b8: $a4
	sub d                                            ; $63b9: $92
	ld a, c                                          ; $63ba: $79
	add [hl]                                         ; $63bb: $86
	ld [hl], d                                       ; $63bc: $72
	ld a, [hl-]                                      ; $63bd: $3a
	db $dd                                           ; $63be: $dd
	ld e, e                                          ; $63bf: $5b
	sbc [hl]                                         ; $63c0: $9e
	ld c, e                                          ; $63c1: $4b
	sbc $49                                          ; $63c2: $de $49
	db $dd                                           ; $63c4: $dd
	db $ed                                           ; $63c5: $ed
	ld a, a                                          ; $63c6: $7f
	sbc e                                            ; $63c7: $9b
	rst SubAFromDE                                          ; $63c8: $df
	rst $38                                          ; $63c9: $ff
	rst SubAFromDE                                          ; $63ca: $df
	ld [hl], a                                       ; $63cb: $77
	sbc d                                            ; $63cc: $9a
	ld [hl], $37                                     ; $63cd: $36 $37
	inc de                                           ; $63cf: $13
	inc de                                           ; $63d0: $13
	or e                                             ; $63d1: $b3
	ld a, e                                          ; $63d2: $7b
	xor d                                            ; $63d3: $aa
	rst SubAFromDE                                          ; $63d4: $df
	reti                                             ; $63d5: $d9


	sbc $fd                                          ; $63d6: $de $fd
	sbc e                                            ; $63d8: $9b
	rst $38                                          ; $63d9: $ff
	jp nc, $dada                                     ; $63da: $d2 $da $da

	sbc $ce                                          ; $63dd: $de $ce
	sbc l                                            ; $63df: $9d
	jp z, $dec3                                      ; $63e0: $ca $c3 $de

	db $e3                                           ; $63e3: $e3
	sub b                                            ; $63e4: $90
	di                                               ; $63e5: $f3
	ld [hl], e                                       ; $63e6: $73
	ld [hl], e                                       ; $63e7: $73
	ld [hl], a                                       ; $63e8: $77
	ld a, a                                          ; $63e9: $7f
	ld c, c                                          ; $63ea: $49
	ld c, l                                          ; $63eb: $4d
	ld c, h                                          ; $63ec: $4c
	ld l, h                                          ; $63ed: $6c
	ld a, h                                          ; $63ee: $7c
	ld e, h                                          ; $63ef: $5c
	ld e, [hl]                                       ; $63f0: $5e
	ld e, [hl]                                       ; $63f1: $5e
	sbc [hl]                                         ; $63f2: $9e
	sbc [hl]                                         ; $63f3: $9e
	sbc $9f                                          ; $63f4: $de $9f
	rst SubAFromDE                                          ; $63f6: $df
	or a                                             ; $63f7: $b7
	sub [hl]                                         ; $63f8: $96
	or e                                             ; $63f9: $b3
	ld hl, $3424                                     ; $63fa: $21 $24 $34
	pop af                                           ; $63fd: $f1
	pop af                                           ; $63fe: $f1
	ld [hl], c                                       ; $63ff: $71
	ld [hl], c                                       ; $6400: $71
	ld [hl], e                                       ; $6401: $73
	sbc $79                                          ; $6402: $de $79
	rst SubAFromDE                                          ; $6404: $df
	ld a, h                                          ; $6405: $7c
	sbc $dc                                          ; $6406: $de $dc
	sub l                                            ; $6408: $95
	ld e, c                                          ; $6409: $59
	ret c                                            ; $640a: $d8

	adc d                                            ; $640b: $8a
	xor d                                            ; $640c: $aa
	xor [hl]                                         ; $640d: $ae
	adc [hl]                                         ; $640e: $8e
	sub a                                            ; $640f: $97
	sub e                                            ; $6410: $93
	adc b                                            ; $6411: $88
	adc b                                            ; $6412: $88
	sbc $d8                                          ; $6413: $de $d8
	rst SubAFromDE                                          ; $6415: $df
	ld a, [$fe9d]                                    ; $6416: $fa $9d $fe
	rst GetHLinHL                                          ; $6419: $cf
	halt                                             ; $641a: $76
	add hl, hl                                       ; $641b: $29
	sbc h                                            ; $641c: $9c
	sbc $56                                          ; $641d: $de $56
	sub [hl]                                         ; $641f: $96
	sbc $c4                                          ; $6420: $de $c4
	sbc $44                                          ; $6422: $de $44
	rst SubAFromDE                                          ; $6424: $df
	call z, $95ff                                    ; $6425: $cc $ff $95
	ldh [rIE], a                                     ; $6428: $e0 $ff
	rst $38                                          ; $642a: $ff
	xor d                                            ; $642b: $aa
	push de                                          ; $642c: $d5
	xor d                                            ; $642d: $aa
	rst $38                                          ; $642e: $ff
	rst $38                                          ; $642f: $ff
	add b                                            ; $6430: $80
	add b                                            ; $6431: $80
	ld l, c                                          ; $6432: $69
	add b                                            ; $6433: $80
	ld a, e                                          ; $6434: $7b
	ldh a, [$9e]                                     ; $6435: $f0 $9e
	ld d, l                                          ; $6437: $55
	ld a, e                                          ; $6438: $7b
	ldh a, [$6e]                                     ; $6439: $f0 $6e
	cp h                                             ; $643b: $bc
	sub a                                            ; $643c: $97
	jr jr_053_644f                                   ; $643d: $18 $10

	ld [hl-], a                                      ; $643f: $32
	ld a, a                                          ; $6440: $7f
	cp $e7                                           ; $6441: $fe $e7
	rst GetHLinHL                                          ; $6443: $cf

Call_053_6444:
	ret                                              ; $6444: $c9


	ld [hl], d                                       ; $6445: $72
	db $d3                                           ; $6446: $d3
	ld a, d                                          ; $6447: $7a
	jp nc, $cf96                                     ; $6448: $d2 $96 $cf

	ld a, a                                          ; $644b: $7f
	ld [hl], e                                       ; $644c: $73
	ld sp, hl                                        ; $644d: $f9
	xor b                                            ; $644e: $a8

jr_053_644f:
	and l                                            ; $644f: $a5
	inc hl                                           ; $6450: $23
	ld hl, $76f8                                     ; $6451: $21 $f8 $76
	add $de                                          ; $6454: $c6 $de
	rst $38                                          ; $6456: $ff
	sub a                                            ; $6457: $97
	rst SubAFromDE                                          ; $6458: $df
	sbc a                                            ; $6459: $9f
	rrca                                             ; $645a: $0f
	rst AddAOntoHL                                          ; $645b: $ef
	add a                                            ; $645c: $87
	rlca                                             ; $645d: $07
	rrca                                             ; $645e: $0f
	ld c, a                                          ; $645f: $4f
	reti                                             ; $6460: $d9


	rst $38                                          ; $6461: $ff
	sub a                                            ; $6462: $97
	ld h, d                                          ; $6463: $62
	or e                                             ; $6464: $b3
	sbc c                                            ; $6465: $99
	reti                                             ; $6466: $d9


	call z, $a2e6                                    ; $6467: $cc $e6 $a2
	db $d3                                           ; $646a: $d3
	reti                                             ; $646b: $d9


	rst $38                                          ; $646c: $ff
	sub h                                            ; $646d: $94
	ld h, a                                          ; $646e: $67
	dec [hl]                                         ; $646f: $35
	ld [hl], $9c                                     ; $6470: $36 $9c
	sbc $4f                                          ; $6472: $de $4f
	ld h, a                                          ; $6474: $67
	inc sp                                           ; $6475: $33
	cp $fe                                           ; $6476: $fe $fe
	db $fc                                           ; $6478: $fc
	sbc $fe                                          ; $6479: $de $fe
	halt                                             ; $647b: $76
	sub d                                            ; $647c: $92
	sbc h                                            ; $647d: $9c
	ld e, a                                          ; $647e: $5f
	cp a                                             ; $647f: $bf
	rst SubAFromDE                                          ; $6480: $df
	ld a, e                                          ; $6481: $7b
	db $fc                                           ; $6482: $fc
	sub a                                            ; $6483: $97
	rra                                              ; $6484: $1f
	rrca                                             ; $6485: $0f
	rst AddAOntoHL                                          ; $6486: $ef
	ld h, a                                          ; $6487: $67
	scf                                              ; $6488: $37
	ld [hl], a                                       ; $6489: $77
	inc sp                                           ; $648a: $33
	inc de                                           ; $648b: $13
	call c, Call_053_7fff                            ; $648c: $dc $ff $7f
	or e                                             ; $648f: $b3
	sbc h                                            ; $6490: $9c
	cp $b3                                           ; $6491: $fe $b3
	ld h, $5a                                        ; $6493: $26 $5a
	ld c, b                                          ; $6495: $48
	sbc b                                            ; $6496: $98
	ld a, a                                          ; $6497: $7f
	inc e                                            ; $6498: $1c
	nop                                              ; $6499: $00
	sbc h                                            ; $649a: $9c
	jr c, jr_053_64ce                                ; $649b: $38 $31

	ld hl, $c074                                     ; $649d: $21 $74 $c0
	rst SubAFromDE                                          ; $64a0: $df
	rst $38                                          ; $64a1: $ff
	sub c                                            ; $64a2: $91
	cp $fd                                           ; $64a3: $fe $fd
	cp $c5                                           ; $64a5: $fe $c5
	ld b, $03                                        ; $64a7: $06 $03
	rst FarCall                                          ; $64a9: $f7
	rst SubAFromBC                                          ; $64aa: $e7
	rst JumpTable                                          ; $64ab: $c7
	add a                                            ; $64ac: $87
	rlca                                             ; $64ad: $07
	rlca                                             ; $64ae: $07
	inc bc                                           ; $64af: $03
	ld bc, $0f79                                     ; $64b0: $01 $79 $0f
	sub a                                            ; $64b3: $97
	rst FarCall                                          ; $64b4: $f7
	xor l                                            ; $64b5: $ad
	ld d, l                                          ; $64b6: $55
	xor l                                            ; $64b7: $ad
	ld d, l                                          ; $64b8: $55
	rst SubAFromBC                                          ; $64b9: $e7
	rst AddAOntoHL                                          ; $64ba: $ef
	rst SubAFromDE                                          ; $64bb: $df
	call c, $97ff                                    ; $64bc: $dc $ff $97
	jp nc, $f7ea                                     ; $64bf: $d2 $ea $f7

	ld sp, hl                                        ; $64c2: $f9
	rst AddAOntoHL                                          ; $64c3: $ef
	db $e4                                           ; $64c4: $e4
	rst SubAFromBC                                          ; $64c5: $e7
	and a                                            ; $64c6: $a7
	ld l, d                                          ; $64c7: $6a
	ld sp, $fc9c                                     ; $64c8: $31 $9c $fc
	ld l, l                                          ; $64cb: $6d
	ld l, l                                          ; $64cc: $6d
	ld h, h                                          ; $64cd: $64

jr_053_64ce:
	di                                               ; $64ce: $f3
	rst SubAFromDE                                          ; $64cf: $df
	db $db                                           ; $64d0: $db
	rst SubAFromDE                                          ; $64d1: $df
	adc c                                            ; $64d2: $89
	rst SubAFromDE                                          ; $64d3: $df
	add b                                            ; $64d4: $80
	sbc [hl]                                         ; $64d5: $9e
	cp e                                             ; $64d6: $bb
	ld [hl], b                                       ; $64d7: $70
	ld e, a                                          ; $64d8: $5f
	rst SubAFromDE                                          ; $64d9: $df
	rst $38                                          ; $64da: $ff
	sub h                                            ; $64db: $94
	xor $6e                                          ; $64dc: $ee $6e
	ld h, [hl]                                       ; $64de: $66

Call_053_64df:
	ld h, $02                                        ; $64df: $26 $02
	ld [bc], a                                       ; $64e1: $02
	nop                                              ; $64e2: $00
	nop                                              ; $64e3: $00
	db $e3                                           ; $64e4: $e3
	rst SubAFromBC                                          ; $64e5: $e7
	rst SubAFromBC                                          ; $64e6: $e7
	ld [hl], d                                       ; $64e7: $72
	ld [hl], a                                       ; $64e8: $77
	sub e                                            ; $64e9: $93
	ccf                                              ; $64ea: $3f
	dec a                                            ; $64eb: $3d
	dec a                                            ; $64ec: $3d
	inc e                                            ; $64ed: $1c
	inc e                                            ; $64ee: $1c
	ld [$0008], sp                                   ; $64ef: $08 $08 $00
	rra                                              ; $64f2: $1f
	rra                                              ; $64f3: $1f
	dec sp                                           ; $64f4: $3b
	cp h                                             ; $64f5: $bc
	ld a, b                                          ; $64f6: $78
	ld sp, hl                                        ; $64f7: $f9
	adc [hl]                                         ; $64f8: $8e
	rst $38                                          ; $64f9: $ff
	di                                               ; $64fa: $f3
	pop af                                           ; $64fb: $f1
	rst SubAFromBC                                          ; $64fc: $e7
	rst AddAOntoHL                                          ; $64fd: $ef
	ldh [$e0], a                                     ; $64fe: $e0 $e0
	ld b, b                                          ; $6500: $40
	ld b, b                                          ; $6501: $40
	ld a, c                                          ; $6502: $79
	ld sp, hl                                        ; $6503: $f9
	ld sp, hl                                        ; $6504: $f9
	call c, $f6ec                                    ; $6505: $dc $ec $f6
	or $ff                                           ; $6508: $f6 $ff
	sbc $ce                                          ; $650a: $de $ce
	sub d                                            ; $650c: $92
	rst SubAFromBC                                          ; $650d: $e7
	ld [hl], a                                       ; $650e: $77
	dec de                                           ; $650f: $1b
	dec bc                                           ; $6510: $0b
	ld bc, $a492                                     ; $6511: $01 $92 $a4
	and h                                            ; $6514: $a4
	xor c                                            ; $6515: $a9
	pop de                                           ; $6516: $d1
	db $e3                                           ; $6517: $e3
	add $9c                                          ; $6518: $c6 $9c
	reti                                             ; $651a: $d9


	rst $38                                          ; $651b: $ff
	rst SubAFromDE                                          ; $651c: $df
	sbc $97                                          ; $651d: $de $97
	adc a                                            ; $651f: $8f
	xor a                                            ; $6520: $af
	ccf                                              ; $6521: $3f
	cp a                                             ; $6522: $bf
	cp a                                             ; $6523: $bf
	rra                                              ; $6524: $1f
	adc h                                            ; $6525: $8c
	adc h                                            ; $6526: $8c
	sbc $9c                                          ; $6527: $de $9c
	rst SubAFromDE                                          ; $6529: $df
	inc e                                            ; $652a: $1c
	sbc [hl]                                         ; $652b: $9e
	inc a                                            ; $652c: $3c
	halt                                             ; $652d: $76
	jp nz, $d27e                                     ; $652e: $c2 $7e $d2

	sbc [hl]                                         ; $6531: $9e
	ret nz                                           ; $6532: $c0

	ld l, d                                          ; $6533: $6a
	jp nz, $80df                                     ; $6534: $c2 $df $80

	ld l, [hl]                                       ; $6537: $6e
	jp nz, $fa7f                                     ; $6538: $c2 $7f $fa

	ld l, a                                          ; $653b: $6f
	ld [hl], $ff                                     ; $653c: $36 $ff
	sbc b                                            ; $653e: $98
	jp Jump_053_594f                                 ; $653f: $c3 $4f $59


	jr nc, jr_053_657c                               ; $6542: $30 $38

	ld l, l                                          ; $6544: $6d
	cp $73                                           ; $6545: $fe $73
	ret nz                                           ; $6547: $c0

	sub e                                            ; $6548: $93
	rst AddAOntoHL                                          ; $6549: $ef
	rst JumpTable                                          ; $654a: $c7
	rst AddAOntoHL                                          ; $654b: $ef
	rst $38                                          ; $654c: $ff
	pop de                                           ; $654d: $d1
	inc de                                           ; $654e: $13
	rra                                              ; $654f: $1f
	sub a                                            ; $6550: $97
	db $e3                                           ; $6551: $e3
	db $e3                                           ; $6552: $e3
	ld h, d                                          ; $6553: $62
	inc a                                            ; $6554: $3c
	ld a, e                                          ; $6555: $7b
	jr z, jr_053_65c9                                ; $6556: $28 $71

	cp a                                             ; $6558: $bf
	sub l                                            ; $6559: $95
	pop af                                           ; $655a: $f1
	ldh [$78], a                                     ; $655b: $e0 $78
	ldh [$e7], a                                     ; $655d: $e0 $e7
	ld hl, sp+$38                                    ; $655f: $f8 $38
	jr @+$01                                         ; $6561: $18 $ff

	ld a, a                                          ; $6563: $7f
	ld a, c                                          ; $6564: $79
	cp $de                                           ; $6565: $fe $de
	rst $38                                          ; $6567: $ff
	sub a                                            ; $6568: $97
	ret                                              ; $6569: $c9


	db $e4                                           ; $656a: $e4
	ldh a, [c]                                       ; $656b: $f2
	ld a, c                                          ; $656c: $79
	db $fd                                           ; $656d: $fd
	cp $3f                                           ; $656e: $fe $3f
	daa                                              ; $6570: $27
	reti                                             ; $6571: $d9


	rst $38                                          ; $6572: $ff
	sub a                                            ; $6573: $97
	sbc e                                            ; $6574: $9b
	call $276d                                       ; $6575: $cd $6d $27
	or a                                             ; $6578: $b7
	sbc e                                            ; $6579: $9b
	db $db                                           ; $657a: $db
	db $db                                           ; $657b: $db

jr_053_657c:
	reti                                             ; $657c: $d9


	rst $38                                          ; $657d: $ff
	sbc l                                            ; $657e: $9d
	jp $dbe7                                         ; $657f: $c3 $e7 $db


	rst $38                                          ; $6582: $ff
	sbc b                                            ; $6583: $98

jr_053_6584:
	add e                                            ; $6584: $83
	pop bc                                           ; $6585: $c1
	ld hl, sp-$38                                    ; $6586: $f8 $c8
	add h                                            ; $6588: $84
	add h                                            ; $6589: $84
	add d                                            ; $658a: $82
	ld h, c                                          ; $658b: $61
	jr jr_053_6584                                   ; $658c: $18 $f6

	sbc [hl]                                         ; $658e: $9e
	add c                                            ; $658f: $81
	db $dd                                           ; $6590: $dd
	add b                                            ; $6591: $80
	ld sp, hl                                        ; $6592: $f9
	sub h                                            ; $6593: $94
	inc bc                                           ; $6594: $03
	ld [bc], a                                       ; $6595: $02
	inc c                                            ; $6596: $0c
	ld hl, sp-$80                                    ; $6597: $f8 $80
	ret nz                                           ; $6599: $c0

	ld h, b                                          ; $659a: $60
	ld [hl-], a                                      ; $659b: $32
	ld bc, $0707                                     ; $659c: $01 $07 $07
	ld a, d                                          ; $659f: $7a
	xor b                                            ; $65a0: $a8
	rst SubAFromDE                                          ; $65a1: $df
	ccf                                              ; $65a2: $3f
	sbc l                                            ; $65a3: $9d
	db $fd                                           ; $65a4: $fd
	dec b                                            ; $65a5: $05
	call c, $9e04                                    ; $65a6: $dc $04 $9e
	and h                                            ; $65a9: $a4
	reti                                             ; $65aa: $d9


	rst $38                                          ; $65ab: $ff
	sbc d                                            ; $65ac: $9a
	and l                                            ; $65ad: $a5
	xor e                                            ; $65ae: $ab
	xor e                                            ; $65af: $ab
	xor d                                            ; $65b0: $aa
	and c                                            ; $65b1: $a1
	sbc $a3                                          ; $65b2: $de $a3
	sbc d                                            ; $65b4: $9a
	cp $f6                                           ; $65b5: $fe $f6
	or $f7                                           ; $65b7: $f6 $f7
	rst FarCall                                          ; $65b9: $f7
	sbc $f5                                          ; $65ba: $de $f5
	sub d                                            ; $65bc: $92
	cp a                                             ; $65bd: $bf
	ld a, l                                          ; $65be: $7d
	rst $38                                          ; $65bf: $ff
	rst FarCall                                          ; $65c0: $f7
	cp $58                                           ; $65c1: $fe $58
	db $fc                                           ; $65c3: $fc
	db $fc                                           ; $65c4: $fc
	ret nz                                           ; $65c5: $c0

	jp $4f5f                                         ; $65c6: $c3 $5f $4f


jr_053_65c9:
	ld b, b                                          ; $65c9: $40
	sbc $e0                                          ; $65ca: $de $e0
	ld a, a                                          ; $65cc: $7f
	ld c, e                                          ; $65cd: $4b
	sbc h                                            ; $65ce: $9c
	or $f8                                           ; $65cf: $f6 $f8
	jr nz, @-$01                                     ; $65d1: $20 $fd

	sbc e                                            ; $65d3: $9b
	ldh a, [$f8]                                     ; $65d4: $f0 $f8
	ld hl, sp+$10                                    ; $65d6: $f8 $10
	halt                                             ; $65d8: $76
	ld [hl], b                                       ; $65d9: $70
	ld a, [hl]                                       ; $65da: $7e
	db $10                                           ; $65db: $10
	ld a, [hl]                                       ; $65dc: $7e
	ld a, d                                          ; $65dd: $7a
	sbc l                                            ; $65de: $9d
	jr nz, jr_053_6641                               ; $65df: $20 $60

	ld h, a                                          ; $65e1: $67
	and b                                            ; $65e2: $a0
	sbc [hl]                                         ; $65e3: $9e
	ld h, b                                          ; $65e4: $60
	sbc $ff                                          ; $65e5: $de $ff
	sbc e                                            ; $65e7: $9b
	rst SubAFromBC                                          ; $65e8: $e7
	cp l                                             ; $65e9: $bd
	ld a, a                                          ; $65ea: $7f
	rra                                              ; $65eb: $1f
	ld a, d                                          ; $65ec: $7a
	and [hl]                                         ; $65ed: $a6
	sbc c                                            ; $65ee: $99
	nop                                              ; $65ef: $00
	jr jr_053_6670                                   ; $65f0: $18 $7e

	rst $38                                          ; $65f2: $ff
	rrca                                             ; $65f3: $0f
	ld bc, $ffde                                     ; $65f4: $01 $de $ff

jr_053_65f7:
	sbc d                                            ; $65f7: $9a
	db $fd                                           ; $65f8: $fd
	ei                                               ; $65f9: $fb
	cp $f6                                           ; $65fa: $fe $f6
	db $ed                                           ; $65fc: $ed
	sbc $01                                          ; $65fd: $de $01
	add a                                            ; $65ff: $87
	inc bc                                           ; $6600: $03
	ld b, $04                                        ; $6601: $06 $04
	call z, $fcf8                                    ; $6603: $cc $f8 $fc
	db $fd                                           ; $6606: $fd
	pop de                                           ; $6607: $d1
	cp e                                             ; $6608: $bb
	di                                               ; $6609: $f3
	rst FarCall                                          ; $660a: $f7
	add l                                            ; $660b: $85
	sub e                                            ; $660c: $93
	ei                                               ; $660d: $fb
	ld a, [$d2fa]                                    ; $660e: $fa $fa $d2
	sub d                                            ; $6611: $92
	sub d                                            ; $6612: $92
	or d                                             ; $6613: $b2
	and h                                            ; $6614: $a4
	ld a, a                                          ; $6615: $7f
	ld h, b                                          ; $6616: $60
	jr nz, jr_053_65f7                               ; $6617: $20 $de

	ret nz                                           ; $6619: $c0

	sbc l                                            ; $661a: $9d
	ld b, b                                          ; $661b: $40
	add b                                            ; $661c: $80
	ld [hl], c                                       ; $661d: $71
	db $10                                           ; $661e: $10
	ld [hl], a                                       ; $661f: $77
	rrca                                             ; $6620: $0f
	ld c, b                                          ; $6621: $48
	ld d, b                                          ; $6622: $50
	ld b, a                                          ; $6623: $47
	ldh a, [$98]                                     ; $6624: $f0 $98
	inc h                                            ; $6626: $24
	dec b                                            ; $6627: $05
	rlca                                             ; $6628: $07
	inc c                                            ; $6629: $0c
	sbc h                                            ; $662a: $9c
	cp b                                             ; $662b: $b8
	ld hl, sp+$6a                                    ; $662c: $f8 $6a
	ld a, [hl-]                                      ; $662e: $3a
	ld a, b                                          ; $662f: $78
	ldh a, [$97]                                     ; $6630: $f0 $97
	db $fc                                           ; $6632: $fc
	ccf                                              ; $6633: $3f
	ld d, d                                          ; $6634: $52
	db $10                                           ; $6635: $10
	jr jr_053_6676                                   ; $6636: $18 $3e

	rst $38                                          ; $6638: $ff
	rst SubAFromBC                                          ; $6639: $e7
	ld l, d                                          ; $663a: $6a
	ld hl, sp-$69                                    ; $663b: $f8 $97
	jr jr_053_667a                                   ; $663d: $18 $3b

	rst $38                                          ; $663f: $ff
	ld h, a                                          ; $6640: $67

jr_053_6641:
	ld b, e                                          ; $6641: $43
	ld b, e                                          ; $6642: $43
	ld b, [hl]                                       ; $6643: $46
	ld e, a                                          ; $6644: $5f
	ld h, [hl]                                       ; $6645: $66
	or b                                             ; $6646: $b0
	sub a                                            ; $6647: $97
	db $e3                                           ; $6648: $e3
	pop bc                                           ; $6649: $c1
	pop bc                                           ; $664a: $c1
	jp $1fff                                         ; $664b: $c3 $ff $1f


	rrca                                             ; $664e: $0f
	rrca                                             ; $664f: $0f
	ld a, e                                          ; $6650: $7b
	inc de                                           ; $6651: $13
	ld [hl], c                                       ; $6652: $71
	ld hl, sp-$21                                    ; $6653: $f8 $df
	db $eb                                           ; $6655: $eb
	ld a, [hl]                                       ; $6656: $7e
	adc h                                            ; $6657: $8c
	ld a, e                                          ; $6658: $7b
	db $e4                                           ; $6659: $e4
	ld a, c                                          ; $665a: $79
	ld d, d                                          ; $665b: $52
	sbc c                                            ; $665c: $99
	cp $f3                                           ; $665d: $fe $f3
	ldh [$c0], a                                     ; $665f: $e0 $c0
	add b                                            ; $6661: $80
	ldh a, [$dc]                                     ; $6662: $f0 $dc
	rst $38                                          ; $6664: $ff
	sbc l                                            ; $6665: $9d
	rra                                              ; $6666: $1f
	inc bc                                           ; $6667: $03
	db $fc                                           ; $6668: $fc
	sbc h                                            ; $6669: $9c
	ldh [rAUD3LEVEL], a                              ; $666a: $e0 $1c
	inc bc                                           ; $666c: $03
	ld l, e                                          ; $666d: $6b

Call_053_666e:
	sbc b                                            ; $666e: $98
	ld a, l                                          ; $666f: $7d

jr_053_6670:
	sbc h                                            ; $6670: $9c
	rst $38                                          ; $6671: $ff
	sbc l                                            ; $6672: $9d
	inc b                                            ; $6673: $04
	ld b, $de                                        ; $6674: $06 $de

jr_053_6676:
	inc bc                                           ; $6676: $03
	add b                                            ; $6677: $80
	rst JumpTable                                          ; $6678: $c7
	ret nz                                           ; $6679: $c0

jr_053_667a:
	ret nz                                           ; $667a: $c0

	pop bc                                           ; $667b: $c1
	jp Jump_053_77c5                                 ; $667c: $c3 $c5 $77


	cp a                                             ; $667f: $bf
	ld e, a                                          ; $6680: $5f
	nop                                              ; $6681: $00
	nop                                              ; $6682: $00
	ld bc, $8703                                     ; $6683: $01 $03 $87
	db $e4                                           ; $6686: $e4
	ld sp, hl                                        ; $6687: $f9
	ld sp, hl                                        ; $6688: $f9
	dec a                                            ; $6689: $3d
	cp $f7                                           ; $668a: $fe $f7
	ld hl, $f820                                     ; $668c: $21 $20 $f8
	cp $ff                                           ; $668f: $fe $ff
	ccf                                              ; $6691: $3f
	ld [hl], a                                       ; $6692: $77
	db $e3                                           ; $6693: $e3
	jr nz, jr_053_66b6                               ; $6694: $20 $20

	ret nz                                           ; $6696: $c0

	ld a, a                                          ; $6697: $7f
	add hl, bc                                       ; $6698: $09
	sub a                                            ; $6699: $97
	ld d, h                                          ; $669a: $54
	xor h                                            ; $669b: $ac
	ld d, h                                          ; $669c: $54
	db $ec                                           ; $669d: $ec
	ld [hl], h                                       ; $669e: $74
	inc l                                            ; $669f: $2c
	inc [hl]                                         ; $66a0: $34
	ld e, $dd                                        ; $66a1: $1e $dd
	rst $38                                          ; $66a3: $ff
	rst SubAFromDE                                          ; $66a4: $df
	ccf                                              ; $66a5: $3f
	rst SubAFromDE                                          ; $66a6: $df
	rra                                              ; $66a7: $1f
	sbc [hl]                                         ; $66a8: $9e
	and e                                            ; $66a9: $a3
	sbc $b5                                          ; $66aa: $de $b5
	sbc e                                            ; $66ac: $9b
	sbc c                                            ; $66ad: $99

Call_053_66ae:
	sbc e                                            ; $66ae: $9b
	sbc e                                            ; $66af: $9b
	sub a                                            ; $66b0: $97
	db $dd                                           ; $66b1: $dd
	pop af                                           ; $66b2: $f1
	sbc $f5                                          ; $66b3: $de $f5
	ld a, [hl]                                       ; $66b5: $7e

jr_053_66b6:
	ld b, l                                          ; $66b6: $45
	sub l                                            ; $66b7: $95
	ld l, [hl]                                       ; $66b8: $6e
	ld a, a                                          ; $66b9: $7f
	ld [hl], a                                       ; $66ba: $77
	dec sp                                           ; $66bb: $3b

jr_053_66bc:
	dec a                                            ; $66bc: $3d
	ccf                                              ; $66bd: $3f
	ccf                                              ; $66be: $3f
	ldh [$f0], a                                     ; $66bf: $e0 $f0
	ldh a, [$79]                                     ; $66c1: $f0 $79
	ld a, [hl+]                                      ; $66c3: $2a
	ld a, a                                          ; $66c4: $7f
	ret z                                            ; $66c5: $c8

	cp $7e                                           ; $66c6: $fe $7e
	ret nc                                           ; $66c8: $d0

	sbc h                                            ; $66c9: $9c
	add e                                            ; $66ca: $83
	add c                                            ; $66cb: $81
	ret nz                                           ; $66cc: $c0

	halt                                             ; $66cd: $76
	ld [hl], l                                       ; $66ce: $75
	ld a, l                                          ; $66cf: $7d
	ld b, d                                          ; $66d0: $42
	ld a, l                                          ; $66d1: $7d
	ld l, $9e                                        ; $66d2: $2e $9e
	and b                                            ; $66d4: $a0
	ld a, e                                          ; $66d5: $7b
	adc c                                            ; $66d6: $89
	sbc d                                            ; $66d7: $9a
	sbc h                                            ; $66d8: $9c
	inc c                                            ; $66d9: $0c
	jr jr_053_66bc                                   ; $66da: $18 $e0

	ld h, b                                          ; $66dc: $60
	halt                                             ; $66dd: $76
	xor [hl]                                         ; $66de: $ae
	sbc h                                            ; $66df: $9c
	db $fc                                           ; $66e0: $fc
	ld hl, sp-$20                                    ; $66e1: $f8 $e0
	ei                                               ; $66e3: $fb
	ld a, a                                          ; $66e4: $7f
	sub h                                            ; $66e5: $94
	ld a, [$0180]                                    ; $66e6: $fa $80 $01
	ld a, e                                          ; $66e9: $7b
	ld [hl], $3b                                     ; $66ea: $36 $3b
	ld a, l                                          ; $66ec: $7d
	ld [hl], h                                       ; $66ed: $74
	and $eb                                          ; $66ee: $e6 $eb
	adc $11                                          ; $66f0: $ce $11
	inc de                                           ; $66f2: $13
	ld h, $3e                                        ; $66f3: $26 $3e
	ld a, [hl]                                       ; $66f5: $7e
	ld a, h                                          ; $66f6: $7c
	db $fc                                           ; $66f7: $fc
	ld sp, hl                                        ; $66f8: $f9
	adc a                                            ; $66f9: $8f
	rrca                                             ; $66fa: $0f
	inc hl                                           ; $66fb: $23
	ld a, a                                          ; $66fc: $7f
	rst AddAOntoHL                                          ; $66fd: $ef
	dec [hl]                                         ; $66fe: $35
	rst SubAFromDE                                          ; $66ff: $df
	rst AddAOntoHL                                          ; $6700: $ef
	inc h                                            ; $6701: $24
	inc b                                            ; $6702: $04
	ld c, l                                          ; $6703: $4d
	ld c, c                                          ; $6704: $49
	ld e, c                                          ; $6705: $59
	db $db                                           ; $6706: $db
	sbc l                                            ; $6707: $9d
	or d                                             ; $6708: $b2
	or e                                             ; $6709: $b3
	halt                                             ; $670a: $76
	ld h, $9c                                        ; $670b: $26 $9c
	ld d, l                                          ; $670d: $55
	xor e                                            ; $670e: $ab
	ld d, l                                          ; $670f: $55
	ld [hl], b                                       ; $6710: $70
	add d                                            ; $6711: $82
	sbc h                                            ; $6712: $9c
	xor d                                            ; $6713: $aa
	ld d, h                                          ; $6714: $54
	xor d                                            ; $6715: $aa
	ld [hl], d                                       ; $6716: $72
	pop de                                           ; $6717: $d1
	sbc e                                            ; $6718: $9b
	push af                                          ; $6719: $f5
	ld a, [$03f5]                                    ; $671a: $fa $f5 $03
	ld h, h                                          ; $671d: $64
	ld b, h                                          ; $671e: $44
	cp $9d                                           ; $671f: $fe $9d
	ld b, h                                          ; $6721: $44
	ld de, $4070                                     ; $6722: $11 $70 $40
	db $db                                           ; $6725: $db
	rst $38                                          ; $6726: $ff
	sbc l                                            ; $6727: $9d
	ld a, a                                          ; $6728: $7f
	ld c, l                                          ; $6729: $4d
	ld a, c                                          ; $672a: $79
	dec e                                            ; $672b: $1d
	sbc [hl]                                         ; $672c: $9e
	rra                                              ; $672d: $1f
	halt                                             ; $672e: $76
	inc bc                                           ; $672f: $03
	db $dd                                           ; $6730: $dd
	ldh [$7c], a                                     ; $6731: $e0 $7c
	sub [hl]                                         ; $6733: $96
	ld a, e                                          ; $6734: $7b
	jp c, $975a                                      ; $6735: $da $5a $97

	ld [hl], a                                       ; $6738: $77
	di                                               ; $6739: $f3
	ld [hl], a                                       ; $673a: $77
	ldh a, [$7b]                                     ; $673b: $f0 $7b
	jp hl                                            ; $673d: $e9


	ld l, a                                          ; $673e: $6f

Jump_053_673f:
	ldh a, [hDisp1_WX]                                     ; $673f: $f0 $96
	ld bc, $fb8c                                     ; $6741: $01 $8c $fb
	inc [hl]                                         ; $6744: $34
	jp hl                                            ; $6745: $e9


	db $d3                                           ; $6746: $d3
	and a                                            ; $6747: $a7
	xor [hl]                                         ; $6748: $ae
	ld c, h                                          ; $6749: $4c
	ld [hl], a                                       ; $674a: $77
	ld [hl+], a                                      ; $674b: $22
	sub [hl]                                         ; $674c: $96
	ld a, [hl]                                       ; $674d: $7e
	db $fc                                           ; $674e: $fc
	ld hl, sp-$08                                    ; $674f: $f8 $f8
	rst $38                                          ; $6751: $ff
	ld b, $79                                        ; $6752: $06 $79
	cp $83                                           ; $6754: $fe $83
	ld l, [hl]                                       ; $6756: $6e
	ld [hl], b                                       ; $6757: $70
	sbc [hl]                                         ; $6758: $9e
	add a                                            ; $6759: $87
	ld [hl], h                                       ; $675a: $74
	ld [hl], b                                       ; $675b: $70
	sub e                                            ; $675c: $93
	nop                                              ; $675d: $00
	ret nz                                           ; $675e: $c0

	or b                                             ; $675f: $b0
	ld c, h                                          ; $6760: $4c
	and e                                            ; $6761: $a3
	pop de                                           ; $6762: $d1
	ld l, b                                          ; $6763: $68
	inc [hl]                                         ; $6764: $34
	nop                                              ; $6765: $00
	ret nz                                           ; $6766: $c0

	ldh a, [$fc]                                     ; $6767: $f0 $fc
	ld a, c                                          ; $6769: $79
	or b                                             ; $676a: $b0
	sub l                                            ; $676b: $95
	rra                                              ; $676c: $1f
	ld a, $0d                                        ; $676d: $3e $0d
	ld b, $03                                        ; $676f: $06 $03
	ld bc, $a1c1                                     ; $6771: $01 $c1 $a1
	sub d                                            ; $6774: $92
	scf                                              ; $6775: $37
	ld a, c                                          ; $6776: $79
	jp hl                                            ; $6777: $e9


	ld [hl], a                                       ; $6778: $77
	ld hl, sp-$65                                    ; $6779: $f8 $9b
	xor l                                            ; $677b: $ad
	ld e, e                                          ; $677c: $5b
	xor a                                            ; $677d: $af
	ld e, a                                          ; $677e: $5f
	ld a, e                                          ; $677f: $7b
	cp $9d                                           ; $6780: $fe $9d
	db $db                                           ; $6782: $db
	ld a, [$c47b]                                    ; $6783: $fa $7b $c4
	sbc $f8                                          ; $6786: $de $f8
	ld [hl], e                                       ; $6788: $73
	ld e, b                                          ; $6789: $58
	halt                                             ; $678a: $76
	sbc a                                            ; $678b: $9f
	ld sp, hl                                        ; $678c: $f9
	sub a                                            ; $678d: $97
	jp c, $cace                                      ; $678e: $da $ce $ca

	adc $8a                                          ; $6791: $ce $8a
	sbc [hl]                                         ; $6793: $9e
	rra                                              ; $6794: $1f
	ccf                                              ; $6795: $3f
	db $db                                           ; $6796: $db
	rrca                                             ; $6797: $0f
	rst SubAFromDE                                          ; $6798: $df
	rra                                              ; $6799: $1f
	rst SubAFromDE                                          ; $679a: $df
	sub l                                            ; $679b: $95
	db $dd                                           ; $679c: $dd
	sbc l                                            ; $679d: $9d
	rst SubAFromDE                                          ; $679e: $df
	db $fd                                           ; $679f: $fd
	db $db                                           ; $67a0: $db
	rst $38                                          ; $67a1: $ff
	sbc b                                            ; $67a2: $98
	rst AddAOntoHL                                          ; $67a3: $ef
	add a                                            ; $67a4: $87
	ccf                                              ; $67a5: $3f
	dec de                                           ; $67a6: $1b
	dec de                                           ; $67a7: $1b
	sbc c                                            ; $67a8: $99
	sbc c                                            ; $67a9: $99
	reti                                             ; $67aa: $d9


	rst $38                                          ; $67ab: $ff
	adc [hl]                                         ; $67ac: $8e
	rst SubAFromBC                                          ; $67ad: $e7
	ld h, $13                                        ; $67ae: $26 $13
	add b                                            ; $67b0: $80
	ret nz                                           ; $67b1: $c0

	ldh [$f0], a                                     ; $67b2: $e0 $f0
	sbc b                                            ; $67b4: $98
	sub [hl]                                         ; $67b5: $96
	sub e                                            ; $67b6: $93
	jp nc, $e0c0                                     ; $67b7: $d2 $c0 $e0

	jr nc, jr_053_67d4                               ; $67ba: $30 $18

	inc c                                            ; $67bc: $0c
	ld b, $73                                        ; $67bd: $06 $73
	ld a, [hl]                                       ; $67bf: $7e
	ld a, [hl]                                       ; $67c0: $7e
	or a                                             ; $67c1: $b7
	sbc h                                            ; $67c2: $9c
	ccf                                              ; $67c3: $3f
	ei                                               ; $67c4: $fb
	ld c, c                                          ; $67c5: $49
	db $fd                                           ; $67c6: $fd
	sub [hl]                                         ; $67c7: $96
	rlca                                             ; $67c8: $07
	ld a, h                                          ; $67c9: $7c
	ret nz                                           ; $67ca: $c0

	nop                                              ; $67cb: $00
	ld [bc], a                                       ; $67cc: $02
	ld b, $0e                                        ; $67cd: $06 $0e
	inc a                                            ; $67cf: $3c
	db $ed                                           ; $67d0: $ed
	sbc $2d                                          ; $67d1: $de $2d
	sbc d                                            ; $67d3: $9a

jr_053_67d4:
	rlca                                             ; $67d4: $07
	rrca                                             ; $67d5: $0f
	rra                                              ; $67d6: $1f
	ld a, a                                          ; $67d7: $7f
	rst GetHLinHL                                          ; $67d8: $cf
	sbc $0f                                          ; $67d9: $de $0f
	add b                                            ; $67db: $80
	rst GetHLinHL                                          ; $67dc: $cf
	rst SubAFromHL                                          ; $67dd: $d7
	sbc h                                            ; $67de: $9c
	sbc e                                            ; $67df: $9b
	xor e                                            ; $67e0: $ab
	inc [hl]                                         ; $67e1: $34
	ld d, l                                          ; $67e2: $55
	ld l, c                                          ; $67e3: $69
	ld sp, hl                                        ; $67e4: $f9
	ld sp, hl                                        ; $67e5: $f9
	di                                               ; $67e6: $f3
	or $f6                                           ; $67e7: $f6 $f6
	rst AddAOntoHL                                          ; $67e9: $ef
	rst AddAOntoHL                                          ; $67ea: $ef
	rst SubAFromDE                                          ; $67eb: $df
	ld a, d                                          ; $67ec: $7a
	cp l                                             ; $67ed: $bd
	sub $7d                                          ; $67ee: $d6 $7d
	xor a                                            ; $67f0: $af
	push de                                          ; $67f1: $d5
	sbc d                                            ; $67f2: $9a
	dec [hl]                                         ; $67f3: $35
	and [hl]                                         ; $67f4: $a6
	ld h, h                                          ; $67f5: $64
	ld l, h                                          ; $67f6: $6c
	ret z                                            ; $67f7: $c8

	rst SubAFromDE                                          ; $67f8: $df
	cp d                                             ; $67f9: $ba
	ld [hl], l                                       ; $67fa: $75
	sbc c                                            ; $67fb: $99
	ld [$56a8], a                                    ; $67fc: $ea $a8 $56

Call_053_67ff:
	xor d                                            ; $67ff: $aa
	ld d, h                                          ; $6800: $54
	db $fc                                           ; $6801: $fc
	ld a, d                                          ; $6802: $7a
	cp a                                             ; $6803: $bf
	ld a, c                                          ; $6804: $79
	ld c, a                                          ; $6805: $4f
	sbc [hl]                                         ; $6806: $9e
	ld [bc], a                                       ; $6807: $02
	halt                                             ; $6808: $76
	cp a                                             ; $6809: $bf
	ld h, l                                          ; $680a: $65
	sub e                                            ; $680b: $93
	ld l, [hl]                                       ; $680c: $6e
	ldh a, [c]                                       ; $680d: $f2
	rst $38                                          ; $680e: $ff
	sub a                                            ; $680f: $97
	dec b                                            ; $6810: $05
	ld a, [bc]                                       ; $6811: $0a
	dec b                                            ; $6812: $05
	ld a, [bc]                                       ; $6813: $0a
	ld h, l                                          ; $6814: $65
	sub $a9                                          ; $6815: $d6 $a9
	sub $dd                                          ; $6817: $d6 $dd
	rrca                                             ; $6819: $0f
	sbc [hl]                                         ; $681a: $9e
	rst $38                                          ; $681b: $ff
	sbc $03                                          ; $681c: $de $03
	sbc l                                            ; $681e: $9d
	ld d, a                                          ; $681f: $57
	xor a                                            ; $6820: $af
	ld l, a                                          ; $6821: $6f
	cp $d9                                           ; $6822: $fe $d9
	ld hl, sp+$66                                    ; $6824: $f8 $66
	pop bc                                           ; $6826: $c1
	ld a, a                                          ; $6827: $7f
	ld sp, hl                                        ; $6828: $f9
	sbc l                                            ; $6829: $9d
	add b                                            ; $682a: $80
	xor d                                            ; $682b: $aa
	ld [hl], a                                       ; $682c: $77
	cp $7e                                           ; $682d: $fe $7e
	ldh [$9e], a                                     ; $682f: $e0 $9e
	or $de                                           ; $6831: $f6 $de
	db $f4                                           ; $6833: $f4
	rst SubAFromDE                                          ; $6834: $df
	ld hl, sp-$66                                    ; $6835: $f8 $9a
	ld bc, $0bfb                                     ; $6837: $01 $fb $0b
	xor a                                            ; $683a: $af
	rrca                                             ; $683b: $0f
	ld a, e                                          ; $683c: $7b
	cp $9d                                           ; $683d: $fe $9d
	ld e, h                                          ; $683f: $5c
	sbc h                                            ; $6840: $9c
	sbc $bc                                          ; $6841: $de $bc
	rst SubAFromDE                                          ; $6843: $df
	cp [hl]                                          ; $6844: $be
	sbc h                                            ; $6845: $9c
	cp a                                             ; $6846: $bf
	ldh a, [$f0]                                     ; $6847: $f0 $f0
	db $db                                           ; $6849: $db
	ldh [$f1], a                                     ; $684a: $e0 $f1
	sbc d                                            ; $684c: $9a
	inc e                                            ; $684d: $1c
	inc c                                            ; $684e: $0c
	inc b                                            ; $684f: $04
	ld b, $02                                        ; $6850: $06 $02
	ld a, c                                          ; $6852: $79
	rst FarCall                                          ; $6853: $f7
	ld a, [hl]                                       ; $6854: $7e
	pop de                                           ; $6855: $d1
	ld a, [hl]                                       ; $6856: $7e
	ret nc                                           ; $6857: $d0

	ld [hl], l                                       ; $6858: $75
	ldh a, [hDisp0_SCY]                                     ; $6859: $f0 $83
	ld c, d                                          ; $685b: $4a
	ld h, $12                                        ; $685c: $26 $12
	ld de, $0509                                     ; $685e: $11 $09 $05
	inc bc                                           ; $6861: $03
	add e                                            ; $6862: $83
	jp z, $f2e6                                      ; $6863: $ca $e6 $f2

	pop af                                           ; $6866: $f1
	ld sp, hl                                        ; $6867: $f9
	db $fd                                           ; $6868: $fd
	rst $38                                          ; $6869: $ff
	cp $ef                                           ; $686a: $fe $ef
	ld [hl], e                                       ; $686c: $73
	ld [hl], b                                       ; $686d: $70
	ld a, [hl]                                       ; $686e: $7e
	rst JumpTable                                          ; $686f: $c7
	adc h                                            ; $6870: $8c
	inc e                                            ; $6871: $1c

jr_053_6872:
	jr jr_053_6872                                   ; $6872: $18 $fe

	ld [hl], c                                       ; $6874: $71
	ld [hl], b                                       ; $6875: $70
	ld a, h                                          ; $6876: $7c
	halt                                             ; $6877: $76
	adc b                                            ; $6878: $88
	ld a, [hl]                                       ; $6879: $7e
	cp c                                             ; $687a: $b9
	sub b                                            ; $687b: $90
	ld a, l                                          ; $687c: $7d
	rra                                              ; $687d: $1f
	rst JumpTable                                          ; $687e: $c7
	di                                               ; $687f: $f3
	ccf                                              ; $6880: $3f
	rrca                                             ; $6881: $0f
	nop                                              ; $6882: $00
	ret nz                                           ; $6883: $c0

	jr nc, @+$0f                                     ; $6884: $30 $0d

	add e                                            ; $6886: $83
	ld h, c                                          ; $6887: $61
	add hl, de                                       ; $6888: $19
	rlca                                             ; $6889: $07
	ccf                                              ; $688a: $3f
	ld [hl], c                                       ; $688b: $71
	ld a, [hl+]                                      ; $688c: $2a
	rst SubAFromDE                                          ; $688d: $df
	rst $38                                          ; $688e: $ff
	sbc h                                            ; $688f: $9c
	ld a, $7c                                        ; $6890: $3e $7c
	ld hl, sp+$77                                    ; $6892: $f8 $77
	sbc l                                            ; $6894: $9d
	sbc [hl]                                         ; $6895: $9e
	ldh [c], a                                       ; $6896: $e2
	halt                                             ; $6897: $76
	add $9b                                          ; $6898: $c6 $9b
	rst FarCall                                          ; $689a: $f7
	db $fd                                           ; $689b: $fd

jr_053_689c:
	ld [$6bb5], a                                    ; $689c: $ea $b5 $6b
	or c                                             ; $689f: $b1
	sub d                                            ; $68a0: $92
	nop                                              ; $68a1: $00
	cp a                                             ; $68a2: $bf
	ld c, a                                          ; $68a3: $4f
	xor a                                            ; $68a4: $af
	ld b, a                                          ; $68a5: $47
	add e                                            ; $68a6: $83
	ld b, c                                          ; $68a7: $41
	add c                                            ; $68a8: $81
	ld b, c                                          ; $68a9: $41
	inc de                                           ; $68aa: $13
	add hl, bc                                       ; $68ab: $09
	inc b                                            ; $68ac: $04
	ld [bc], a                                       ; $68ad: $02
	halt                                             ; $68ae: $76
	jp nc, $f29e                                     ; $68af: $d2 $9e $f2

	ld [hl], h                                       ; $68b2: $74
	ld [$ef97], a                                    ; $68b3: $ea $97 $ef
	db $e3                                           ; $68b6: $e3
	ldh [$80], a                                     ; $68b7: $e0 $80
	ld h, b                                          ; $68b9: $60
	sbc d                                            ; $68ba: $9a
	ld b, a                                          ; $68bb: $47
	jr nz, jr_053_689c                               ; $68bc: $20 $de

	and b                                            ; $68be: $a0
	rst SubAFromDE                                          ; $68bf: $df
	ld c, c                                          ; $68c0: $49
	sbc [hl]                                         ; $68c1: $9e
	ld e, c                                          ; $68c2: $59
	sbc $ff                                          ; $68c3: $de $ff
	sub e                                            ; $68c5: $93
	rst SubAFromDE                                          ; $68c6: $df
	rra                                              ; $68c7: $1f
	nop                                              ; $68c8: $00
	nop                                              ; $68c9: $00
	ld [$ff49], sp                                   ; $68ca: $08 $49 $ff
	inc b                                            ; $68cd: $04
	add hl, bc                                       ; $68ce: $09
	ld a, [bc]                                       ; $68cf: $0a
	dec a                                            ; $68d0: $3d
	ld a, l                                          ; $68d1: $7d
	call c, $92fd                                    ; $68d2: $dc $fd $92
	cp $0f                                           ; $68d5: $fe $0f
	rla                                              ; $68d7: $17
	ld h, a                                          ; $68d8: $67
	rst GetHLinHL                                          ; $68d9: $cf
	rla                                              ; $68da: $17
	ld h, a                                          ; $68db: $67
	add a                                            ; $68dc: $87
	jp nz, $b492                                     ; $68dd: $c2 $92 $b4

	db $ec                                           ; $68e0: $ec
	ld sp, hl                                        ; $68e1: $f9
	ld a, e                                          ; $68e2: $7b
	rst GetHLinHL                                          ; $68e3: $cf
	sbc [hl]                                         ; $68e4: $9e
	adc a                                            ; $68e5: $8f
	ld [hl], h                                       ; $68e6: $74
	jp c, $079e                                      ; $68e7: $da $9e $07

	ld a, e                                          ; $68ea: $7b
	cp a                                             ; $68eb: $bf
	ld l, h                                          ; $68ec: $6c
	cp d                                             ; $68ed: $ba
	call c, $9aff                                    ; $68ee: $dc $ff $9a
	adc $e7                                          ; $68f1: $ce $e7
	sub e                                            ; $68f3: $93
	ret                                              ; $68f4: $c9


	ld h, l                                          ; $68f5: $65
	sub $ff                                          ; $68f6: $d6 $ff
	sbc d                                            ; $68f8: $9a
	inc bc                                           ; $68f9: $03
	jp $e383                                         ; $68fa: $c3 $83 $e3


	jp $ffdc                                         ; $68fd: $c3 $dc $ff


	sbc l                                            ; $6900: $9d
	di                                               ; $6901: $f3
	ld sp, hl                                        ; $6902: $f9
	halt                                             ; $6903: $76
	jr jr_053_6984                                   ; $6904: $18 $7e

	db $e4                                           ; $6906: $e4
	sbc l                                            ; $6907: $9d
	jp Jump_053_7681                                 ; $6908: $c3 $81 $76


	ldh [c], a                                       ; $690b: $e2
	sbc l                                            ; $690c: $9d
	push de                                          ; $690d: $d5
	ld [$6f79], a                                    ; $690e: $ea $79 $6f
	ld [hl], h                                       ; $6911: $74
	pop hl                                           ; $6912: $e1
	sbc $ff                                          ; $6913: $de $ff
	sbc [hl]                                         ; $6915: $9e
	rst GetHLinHL                                          ; $6916: $cf
	ld a, d                                          ; $6917: $7a
	call nz, $a09a                                   ; $6918: $c4 $9a $a0
	ld e, a                                          ; $691b: $5f
	cp a                                             ; $691c: $bf
	ld e, a                                          ; $691d: $5f
	rst $38                                          ; $691e: $ff
	sbc $f8                                          ; $691f: $de $f8
	call c, $72e0                                    ; $6921: $dc $e0 $72
	push bc                                          ; $6924: $c5
	sbc $ff                                          ; $6925: $de $ff
	rst SubAFromDE                                          ; $6927: $df
	add b                                            ; $6928: $80
	ld [hl], d                                       ; $6929: $72
	adc l                                            ; $692a: $8d
	sbc [hl]                                         ; $692b: $9e
	nop                                              ; $692c: $00
	ld a, e                                          ; $692d: $7b
	ld a, [hl-]                                      ; $692e: $3a
	sbc [hl]                                         ; $692f: $9e
	db $10                                           ; $6930: $10
	halt                                             ; $6931: $76
	push de                                          ; $6932: $d5
	ld a, [hl]                                       ; $6933: $7e
	ld b, c                                          ; $6934: $41
	ld a, a                                          ; $6935: $7f
	sub b                                            ; $6936: $90
	ld a, l                                          ; $6937: $7d
	ld [$3fdf], a                                    ; $6938: $ea $df $3f
	rst SubAFromDE                                          ; $693b: $df
	cp a                                             ; $693c: $bf
	sbc $5f                                          ; $693d: $de $5f
	rst SubAFromDE                                          ; $693f: $df

Call_053_6940:
	cpl                                              ; $6940: $2f
	sbc l                                            ; $6941: $9d
	rra                                              ; $6942: $1f
	ldh [$78], a                                     ; $6943: $e0 $78
	cp a                                             ; $6945: $bf
	ld a, h                                          ; $6946: $7c
	rst SubAFromDE                                          ; $6947: $df
	rst SubAFromDE                                          ; $6948: $df
	ld hl, sp-$62                                    ; $6949: $f8 $9e
	nop                                              ; $694b: $00
	ld [hl], l                                       ; $694c: $75
	rst $38                                          ; $694d: $ff
	ld a, c                                          ; $694e: $79
	cp b                                             ; $694f: $b8
	jp hl                                            ; $6950: $e9


	sub h                                            ; $6951: $94
	add d                                            ; $6952: $82
	add $44                                          ; $6953: $c6 $44
	ld l, h                                          ; $6955: $6c

jr_053_6956:
	jr z, jr_053_6990                                ; $6956: $28 $38

	jr c, jr_053_698a                                ; $6958: $38 $30

	cp $7c                                           ; $695a: $fe $7c
	ld a, h                                          ; $695c: $7c
	ld a, e                                          ; $695d: $7b
	ld a, [$10df]                                    ; $695e: $fa $df $10
	sbc [hl]                                         ; $6961: $9e
	jr jr_053_6956                                   ; $6962: $18 $f2

	rst SubAFromDE                                          ; $6964: $df
	rlca                                             ; $6965: $07
	ld a, c                                          ; $6966: $79
	sbc e                                            ; $6967: $9b
	rst SubAFromDE                                          ; $6968: $df
	ccf                                              ; $6969: $3f

Jump_053_696a:
	sbc [hl]                                         ; $696a: $9e
	ld a, a                                          ; $696b: $7f
	db $dd                                           ; $696c: $dd

jr_053_696d:
	inc bc                                           ; $696d: $03
	db $dd                                           ; $696e: $dd
	rlca                                             ; $696f: $07
	reti                                             ; $6970: $d9


	rst $38                                          ; $6971: $ff
	sbc $c2                                          ; $6972: $de $c2
	rst SubAFromDE                                          ; $6974: $df
	add h                                            ; $6975: $84
	rst SubAFromDE                                          ; $6976: $df
	inc b                                            ; $6977: $04
	sbc c                                            ; $6978: $99
	inc c                                            ; $6979: $0c
	ld [$daf5], a                                    ; $697a: $ea $f5 $da
	push af                                          ; $697d: $f5
	xor d                                            ; $697e: $aa
	ld a, e                                          ; $697f: $7b
	db $fc                                           ; $6980: $fc
	ld sp, hl                                        ; $6981: $f9
	sub [hl]                                         ; $6982: $96
	add c                                            ; $6983: $81

jr_053_6984:
	ld bc, $0303                                     ; $6984: $01 $03 $03
	add a                                            ; $6987: $87
	ld b, a                                          ; $6988: $47
	add a                                            ; $6989: $87

jr_053_698a:
	ld c, a                                          ; $698a: $4f
	nop                                              ; $698b: $00
	db $dd                                           ; $698c: $dd
	ld bc, $02de                                     ; $698d: $01 $de $02

jr_053_6990:
	db $dd                                           ; $6990: $dd
	ldh [$dd], a                                     ; $6991: $e0 $dd
	ret nz                                           ; $6993: $c0

	sbc [hl]                                         ; $6994: $9e
	and b                                            ; $6995: $a0
	db $dd                                           ; $6996: $dd
	ld b, b                                          ; $6997: $40
	sbc $80                                          ; $6998: $de $80
	reti                                             ; $699a: $d9


	rra                                              ; $699b: $1f
	sbc $0b                                          ; $699c: $de $0b
	call c, $930a                                    ; $699e: $dc $0a $93
	ccf                                              ; $69a1: $3f
	ld a, [hl-]                                      ; $69a2: $3a
	dec [hl]                                         ; $69a3: $35
	ld [$a8f4], a                                    ; $69a4: $ea $f4 $a8
	db $f4                                           ; $69a7: $f4
	ret c                                            ; $69a8: $d8

	ld [hl+], a                                      ; $69a9: $22
	ld [hl+], a                                      ; $69aa: $22
	jr nz, jr_053_696d                               ; $69ab: $20 $c0

	db $fd                                           ; $69ad: $fd
	sbc b                                            ; $69ae: $98
	ld c, $8c                                        ; $69af: $0e $8c
	inc c                                            ; $69b1: $0c
	inc c                                            ; $69b2: $0c
	ld c, $0e                                        ; $69b3: $0e $0e
	ld e, $7a                                        ; $69b5: $1e $7a
	and b                                            ; $69b7: $a0
	ld a, [hl]                                       ; $69b8: $7e
	sbc a                                            ; $69b9: $9f
	sbc $08                                          ; $69ba: $de $08
	sbc d                                            ; $69bc: $9a
	inc c                                            ; $69bd: $0c
	ld a, a                                          ; $69be: $7f
	ld a, a                                          ; $69bf: $7f
	ccf                                              ; $69c0: $3f
	ccf                                              ; $69c1: $3f
	db $dd                                           ; $69c2: $dd
	rra                                              ; $69c3: $1f
	sub a                                            ; $69c4: $97
	ld [hl], h                                       ; $69c5: $74
	ld [hl-], a                                      ; $69c6: $32
	ld a, [hl-]                                      ; $69c7: $3a
	add hl, de                                       ; $69c8: $19
	dec e                                            ; $69c9: $1d
	inc e                                            ; $69ca: $1c
	ld e, $0f                                        ; $69cb: $1e $0f
	rst SubAFromHL                                          ; $69cd: $d7
	rst $38                                          ; $69ce: $ff
	ld a, e                                          ; $69cf: $7b
	and $9b                                          ; $69d0: $e6 $9b
	sbc a                                            ; $69d2: $9f
	ld c, a                                          ; $69d3: $4f
	daa                                              ; $69d4: $27
	ei                                               ; $69d5: $fb
	ld a, d                                          ; $69d6: $7a
	call c, $9f9e                                    ; $69d7: $dc $9e $9f
	sbc $ff                                          ; $69da: $de $ff
	sub e                                            ; $69dc: $93
	jp $fde6                                         ; $69dd: $c3 $e6 $fd


	jp nz, $f984                                     ; $69e0: $c2 $84 $f9

	ldh a, [c]                                       ; $69e3: $f2
	db $e4                                           ; $69e4: $e4
	ld a, [$fefd]                                    ; $69e5: $fa $fd $fe
	db $fd                                           ; $69e8: $fd
	halt                                             ; $69e9: $76
	ld c, l                                          ; $69ea: $4d
	sbc d                                            ; $69eb: $9a
	sbc a                                            ; $69ec: $9f
	daa                                              ; $69ed: $27
	ld c, a                                          ; $69ee: $4f
	ld e, a                                          ; $69ef: $5f
	sbc a                                            ; $69f0: $9f
	ld a, d                                          ; $69f1: $7a
	inc de                                           ; $69f2: $13
	ld c, d                                          ; $69f3: $4a
	nop                                              ; $69f4: $00
	sbc l                                            ; $69f5: $9d
	daa                                              ; $69f6: $27
	ld [hl], a                                       ; $69f7: $77
	sbc $44                                          ; $69f8: $de $44
	call c, $9a77                                    ; $69fa: $dc $77 $9a
	ld [hl+], a                                      ; $69fd: $22
	inc h                                            ; $69fe: $24
	ld b, h                                          ; $69ff: $44
	ld b, h                                          ; $6a00: $44
	ld b, e                                          ; $6a01: $43
	db $db                                           ; $6a02: $db
	ld [hl+], a                                      ; $6a03: $22
	ld a, e                                          ; $6a04: $7b
	or $9d                                           ; $6a05: $f6 $9d
	ld b, h                                          ; $6a07: $44
	ld [hl-], a                                      ; $6a08: $32
	db $dd                                           ; $6a09: $dd
	ld [hl+], a                                      ; $6a0a: $22
	sbc [hl]                                         ; $6a0b: $9e
	ld d, l                                          ; $6a0c: $55
	db $dd                                           ; $6a0d: $dd
	ld b, h                                          ; $6a0e: $44
	ld l, a                                          ; $6a0f: $6f
	or $9e                                           ; $6a10: $f6 $9e
	ld d, h                                          ; $6a12: $54
	ld e, a                                          ; $6a13: $5f
	or $9c                                           ; $6a14: $f6 $9c
	ld b, d                                          ; $6a16: $42
	ld [hl+], a                                      ; $6a17: $22
	inc hl                                           ; $6a18: $23
	call c, Call_053_7722                            ; $6a19: $dc $22 $77
	or $db                                           ; $6a1c: $f6 $db
	ld [hl+], a                                      ; $6a1e: $22
	rst SubAFromDE                                          ; $6a1f: $df
	ld d, l                                          ; $6a20: $55
	ld l, a                                          ; $6a21: $6f
	or $8e                                           ; $6a22: $f6 $8e
	daa                                              ; $6a24: $27
	ld [hl], d                                       ; $6a25: $72
	ld [hl], l                                       ; $6a26: $75
	ld d, l                                          ; $6a27: $55
	ld d, l                                          ; $6a28: $55
	ld [hl+], a                                      ; $6a29: $22
	ld [hl+], a                                      ; $6a2a: $22
	ld h, [hl]                                       ; $6a2b: $66
	ld h, [hl]                                       ; $6a2c: $66
	ld h, d                                          ; $6a2d: $62
	ld [hl+], a                                      ; $6a2e: $22
	ld [hl+], a                                      ; $6a2f: $22
	ld [hl], l                                       ; $6a30: $75
	ld d, l                                          ; $6a31: $55
	dec h                                            ; $6a32: $25
	ld d, d                                          ; $6a33: $52
	ld h, $de                                        ; $6a34: $26 $de
	ld h, [hl]                                       ; $6a36: $66
	rst SubAFromDE                                          ; $6a37: $df
	ld [hl], a                                       ; $6a38: $77
	ld a, e                                          ; $6a39: $7b
	db $ec                                           ; $6a3a: $ec
	ld l, e                                          ; $6a3b: $6b
	or $3d                                           ; $6a3c: $f6 $3d
	adc d                                            ; $6a3e: $8a
	ld sp, hl                                        ; $6a3f: $f9
	reti                                             ; $6a40: $d9


	rst $38                                          ; $6a41: $ff
	cp $9e                                           ; $6a42: $fe $9e
	ld bc, $fc77                                     ; $6a44: $01 $77 $fc
	reti                                             ; $6a47: $d9


	rst $38                                          ; $6a48: $ff
	sbc c                                            ; $6a49: $99
	rlca                                             ; $6a4a: $07
	rra                                              ; $6a4b: $1f
	rst $38                                          ; $6a4c: $ff
	rst $38                                          ; $6a4d: $ff
	rra                                              ; $6a4e: $1f
	ld a, a                                          ; $6a4f: $7f
	rst SubAFromHL                                          ; $6a50: $d7
	rst $38                                          ; $6a51: $ff
	adc a                                            ; $6a52: $8f
	cp b                                             ; $6a53: $b8
	and a                                            ; $6a54: $a7
	inc e                                            ; $6a55: $1c
	inc bc                                           ; $6a56: $03
	sbc a                                            ; $6a57: $9f
	db $e3                                           ; $6a58: $e3
	add b                                            ; $6a59: $80
	add e                                            ; $6a5a: $83
	rst $38                                          ; $6a5b: $ff
	ld hl, sp-$1d                                    ; $6a5c: $f8 $e3
	db $fc                                           ; $6a5e: $fc
	ldh [$fc], a                                     ; $6a5f: $e0 $fc
	rst $38                                          ; $6a61: $ff
	db $fc                                           ; $6a62: $fc
	ld a, e                                          ; $6a63: $7b
	ldh [c], a                                       ; $6a64: $e2
	rst SubAFromDE                                          ; $6a65: $df
	rst $38                                          ; $6a66: $ff
	sbc l                                            ; $6a67: $9d
	cp $78                                           ; $6a68: $fe $78
	ld a, e                                          ; $6a6a: $7b
	ret z                                            ; $6a6b: $c8

	sbc [hl]                                         ; $6a6c: $9e
	ldh [$fe], a                                     ; $6a6d: $e0 $fe
	sub h                                            ; $6a6f: $94
	add b                                            ; $6a70: $80
	nop                                              ; $6a71: $00
	rra                                              ; $6a72: $1f
	db $e3                                           ; $6a73: $e3
	ld hl, sp-$04                                    ; $6a74: $f8 $fc
	pop bc                                           ; $6a76: $c1
	ld [hl], b                                       ; $6a77: $70
	ld e, $c5                                        ; $6a78: $1e $c5
	inc bc                                           ; $6a7a: $03
	ei                                               ; $6a7b: $fb
	adc [hl]                                         ; $6a7c: $8e
	ld [bc], a                                       ; $6a7d: $02
	nop                                              ; $6a7e: $00
	ret nz                                           ; $6a7f: $c0

	ldh a, [$38]                                     ; $6a80: $f0 $38
	adc h                                            ; $6a82: $8c
	or $3f                                           ; $6a83: $f6 $3f
	rst SubAFromDE                                          ; $6a85: $df
	rst $38                                          ; $6a86: $ff
	rst $38                                          ; $6a87: $ff
	ccf                                              ; $6a88: $3f
	rrca                                             ; $6a89: $0f
	rlca                                             ; $6a8a: $07
	inc bc                                           ; $6a8b: $03
	ld de, $fb08                                     ; $6a8c: $11 $08 $fb
	sbc l                                            ; $6a8f: $9d
	ret nz                                           ; $6a90: $c0

	ld hl, sp+$5b                                    ; $6a91: $f8 $5b
	sub b                                            ; $6a93: $90
	ld b, a                                          ; $6a94: $47
	add b                                            ; $6a95: $80
	db $fc                                           ; $6a96: $fc
	reti                                             ; $6a97: $d9


	ld hl, sp-$02                                    ; $6a98: $f8 $fe
	sbc [hl]                                         ; $6a9a: $9e
	inc bc                                           ; $6a9b: $03
	ld [hl], a                                       ; $6a9c: $77
	ld l, a                                          ; $6a9d: $6f
	ld e, e                                          ; $6a9e: $5b
	ld hl, sp-$66                                    ; $6a9f: $f8 $9a
	ret nz                                           ; $6aa1: $c0

	ccf                                              ; $6aa2: $3f

jr_053_6aa3:
	add b                                            ; $6aa3: $80
	ld h, b                                          ; $6aa4: $60
	ld b, b                                          ; $6aa5: $40
	ld [hl], a                                       ; $6aa6: $77
	ld hl, sp-$21                                    ; $6aa7: $f8 $df
	rst $38                                          ; $6aa9: $ff
	rst SubAFromDE                                          ; $6aaa: $df
	ld a, a                                          ; $6aab: $7f
	add b                                            ; $6aac: $80
	inc bc                                           ; $6aad: $03

jr_053_6aae:
	rlca                                             ; $6aae: $07
	ccf                                              ; $6aaf: $3f
	rst $38                                          ; $6ab0: $ff
	db $fc                                           ; $6ab1: $fc
	rlca                                             ; $6ab2: $07
	ld bc, $033e                                     ; $6ab3: $01 $3e $03
	ld b, $38                                        ; $6ab6: $06 $38
	ret nz                                           ; $6ab8: $c0

	ld hl, sp-$02                                    ; $6ab9: $f8 $fe
	rst $38                                          ; $6abb: $ff
	pop bc                                           ; $6abc: $c1
	ld hl, sp-$40                                    ; $6abd: $f8 $c0
	pop hl                                           ; $6abf: $e1
	sub a                                            ; $6ac0: $97
	ld c, e                                          ; $6ac1: $4b
	cpl                                              ; $6ac2: $2f
	dec [hl]                                         ; $6ac3: $35
	sbc d                                            ; $6ac4: $9a
	rst $38                                          ; $6ac5: $ff
	ld a, a                                          ; $6ac6: $7f
	ld a, $18                                        ; $6ac7: $3e $18
	inc c                                            ; $6ac9: $0c
	inc b                                            ; $6aca: $04
	ld b, $9c                                        ; $6acb: $06 $9c
	add e                                            ; $6acd: $83
	nop                                              ; $6ace: $00
	ccf                                              ; $6acf: $3f
	jp c, $9eff                                      ; $6ad0: $da $ff $9e

	ret nz                                           ; $6ad3: $c0

	ld l, e                                          ; $6ad4: $6b
	sbc b                                            ; $6ad5: $98
	sbc l                                            ; $6ad6: $9d
	rst SubAFromBC                                          ; $6ad7: $e7
	db $fd                                           ; $6ad8: $fd
	sbc $ff                                          ; $6ad9: $de $ff
	sbc e                                            ; $6adb: $9b
	rst FarCall                                          ; $6adc: $f7

jr_053_6add:
	cp e                                             ; $6add: $bb
	ld hl, sp+$1e                                    ; $6ade: $f8 $1e
	ld l, e                                          ; $6ae0: $6b
	ld e, [hl]                                       ; $6ae1: $5e
	ld a, a                                          ; $6ae2: $7f
	ld c, h                                          ; $6ae3: $4c
	sbc d                                            ; $6ae4: $9a
	ld h, b                                          ; $6ae5: $60
	ret nc                                           ; $6ae6: $d0

	rst AddAOntoHL                                          ; $6ae7: $ef
	rst FarCall                                          ; $6ae8: $f7
	cp d                                             ; $6ae9: $ba
	ld a, e                                          ; $6aea: $7b
	ld hl, sp-$66                                    ; $6aeb: $f8 $9a
	ldh [$30], a                                     ; $6aed: $e0 $30
	jr @+$0e                                         ; $6aef: $18 $0c

	rlca                                             ; $6af1: $07
	call c, $df60                                    ; $6af2: $dc $60 $df
	ld a, a                                          ; $6af5: $7f
	sbc [hl]                                         ; $6af6: $9e
	ld h, b                                          ; $6af7: $60
	jp c, $9e80                                      ; $6af8: $da $80 $9e

	sbc a                                            ; $6afb: $9f
	call c, $df18                                    ; $6afc: $dc $18 $df
	rst SubAFromDE                                          ; $6aff: $df
	sbc [hl]                                         ; $6b00: $9e
	jr jr_053_6add                                   ; $6b01: $18 $da

	jr nz, jr_053_6aa3                               ; $6b03: $20 $9e

	rst SubAFromBC                                          ; $6b05: $e7
	call c, $df06                                    ; $6b06: $dc $06 $df
	rst FarCall                                          ; $6b09: $f7
	sbc [hl]                                         ; $6b0a: $9e
	ld b, $da                                        ; $6b0b: $06 $da
	ld [$f99e], sp                                   ; $6b0d: $08 $9e $f9
	db $fd                                           ; $6b10: $fd
	sbc e                                            ; $6b11: $9b
	adc b                                            ; $6b12: $88
	ld [hl+], a                                      ; $6b13: $22
	adc b                                            ; $6b14: $88
	ld [hl+], a                                      ; $6b15: $22
	reti                                             ; $6b16: $d9


	rst $38                                          ; $6b17: $ff
	ld a, a                                          ; $6b18: $7f
	ld [hl], b                                       ; $6b19: $70
	rst SubAFromDE                                          ; $6b1a: $df
	rrca                                             ; $6b1b: $0f
	rst SubAFromDE                                          ; $6b1c: $df
	rra                                              ; $6b1d: $1f
	sbc [hl]                                         ; $6b1e: $9e
	cp a                                             ; $6b1f: $bf
	ld h, a                                          ; $6b20: $67
	adc d                                            ; $6b21: $8a
	sbc $ff                                          ; $6b22: $de $ff
	sbc c                                            ; $6b24: $99
	db $fd                                           ; $6b25: $fd
	rst AddAOntoHL                                          ; $6b26: $ef
	db $dd                                           ; $6b27: $dd
	ld a, [$badc]                                    ; $6b28: $fa $dc $ba
	ld h, e                                          ; $6b2b: $63
	jr nz, jr_053_6aae                               ; $6b2c: $20 $80

	ld c, $0f                                        ; $6b2e: $0e $0f
	rlca                                             ; $6b30: $07
	daa                                              ; $6b31: $27
	ld h, $37                                        ; $6b32: $26 $37
	dec d                                            ; $6b34: $15
	rst $38                                          ; $6b35: $ff
	pop af                                           ; $6b36: $f1
	ldh a, [$f8]                                     ; $6b37: $f0 $f8
	ret c                                            ; $6b39: $d8

	ret c                                            ; $6b3a: $d8

	ret z                                            ; $6b3b: $c8

	add sp, -$3c                                     ; $6b3c: $e8 $c4
	ld sp, $21fc                                     ; $6b3e: $31 $fc $21
	adc e                                            ; $6b41: $8b
	ldh [c], a                                       ; $6b42: $e2
	add hl, hl                                       ; $6b43: $29
	sub d                                            ; $6b44: $92
	inc bc                                           ; $6b45: $03
	ret nz                                           ; $6b46: $c0

	nop                                              ; $6b47: $00
	ld e, $07                                        ; $6b48: $1e $07
	ld bc, $0c10                                     ; $6b4a: $01 $10 $0c
	add b                                            ; $6b4d: $80
	ld [de], a                                       ; $6b4e: $12
	ld h, l                                          ; $6b4f: $65
	ld e, c                                          ; $6b50: $59
	inc d                                            ; $6b51: $14
	ld a, [hl+]                                      ; $6b52: $2a
	call Call_053_7872                               ; $6b53: $cd $72 $78
	pop hl                                           ; $6b56: $e1
	ld hl, sp+$3e                                    ; $6b57: $f8 $3e
	rrca                                             ; $6b59: $0f
	rst JumpTable                                          ; $6b5a: $c7
	di                                               ; $6b5b: $f3
	db $fd                                           ; $6b5c: $fd
	ccf                                              ; $6b5d: $3f
	rst $38                                          ; $6b5e: $ff
	ld a, a                                          ; $6b5f: $7f
	cp a                                             ; $6b60: $bf
	rst SubAFromHL                                          ; $6b61: $d7
	ld l, e                                          ; $6b62: $6b
	sub a                                            ; $6b63: $97
	push hl                                          ; $6b64: $e5
	di                                               ; $6b65: $f3
	add h                                            ; $6b66: $84
	jp nz, $3861                                     ; $6b67: $c2 $61 $38

	sbc h                                            ; $6b6a: $9c
	db $ec                                           ; $6b6b: $ec
	cp $9b                                           ; $6b6c: $fe $9b
	cp $c7                                           ; $6b6e: $fe $c7
	ldh [$e0], a                                     ; $6b70: $e0 $e0
	sbc $f0                                          ; $6b72: $de $f0
	rst SubAFromDE                                          ; $6b74: $df
	ld hl, sp-$71                                    ; $6b75: $f8 $8f
	ld a, a                                          ; $6b77: $7f
	ccf                                              ; $6b78: $3f
	ccf                                              ; $6b79: $3f
	sbc a                                            ; $6b7a: $9f
	sbc a                                            ; $6b7b: $9f
	ld e, a                                          ; $6b7c: $5f
	ld c, a                                          ; $6b7d: $4f
	ld c, a                                          ; $6b7e: $4f
	add b                                            ; $6b7f: $80
	ld a, b                                          ; $6b80: $78
	rlca                                             ; $6b81: $07
	nop                                              ; $6b82: $00
	inc bc                                           ; $6b83: $03
	rrca                                             ; $6b84: $0f
	dec de                                           ; $6b85: $1b
	ld de, $ffdc                                     ; $6b86: $11 $dc $ff
	add b                                            ; $6b89: $80
	pop af                                           ; $6b8a: $f1
	db $e4                                           ; $6b8b: $e4
	xor $00                                          ; $6b8c: $ee $00
	rlca                                             ; $6b8e: $07
	add [hl]                                         ; $6b8f: $86
	db $f4                                           ; $6b90: $f4
	cp $ef                                           ; $6b91: $fe $ef
	rst JumpTable                                          ; $6b93: $c7
	rst SubAFromBC                                          ; $6b94: $e7
	ld hl, sp-$04                                    ; $6b95: $f8 $fc
	ld sp, hl                                        ; $6b97: $f9
	ei                                               ; $6b98: $fb
	push bc                                          ; $6b99: $c5
	sub d                                            ; $6b9a: $92
	cp c                                             ; $6b9b: $b9
	sbc d                                            ; $6b9c: $9a
	nop                                              ; $6b9d: $00
	add c                                            ; $6b9e: $81
	jp nz, $e864                                     ; $6b9f: $c2 $64 $e8

	ld hl, sp-$0b                                    ; $6ba2: $f8 $f5
	push af                                          ; $6ba4: $f5
	nop                                              ; $6ba5: $00
	ld bc, $8703                                     ; $6ba6: $01 $03 $87
	sbc [hl]                                         ; $6ba9: $9e
	rrca                                             ; $6baa: $0f
	ld a, e                                          ; $6bab: $7b
	or d                                             ; $6bac: $b2
	adc a                                            ; $6bad: $8f
	add c                                            ; $6bae: $81
	rlca                                             ; $6baf: $07
	rra                                              ; $6bb0: $1f
	ccf                                              ; $6bb1: $3f
	scf                                              ; $6bb2: $37
	ld h, a                                          ; $6bb3: $67
	ld l, [hl]                                       ; $6bb4: $6e
	ld c, d                                          ; $6bb5: $4a
	cp $f8                                           ; $6bb6: $fe $f8
	ldh [$c0], a                                     ; $6bb8: $e0 $c0
	ret z                                            ; $6bba: $c8

	sbc b                                            ; $6bbb: $98
	sub b                                            ; $6bbc: $90
	or h                                             ; $6bbd: $b4
	db $db                                           ; $6bbe: $db
	rst $38                                          ; $6bbf: $ff
	sbc l                                            ; $6bc0: $9d
	ld e, l                                          ; $6bc1: $5d
	ld c, l                                          ; $6bc2: $4d
	ld l, d                                          ; $6bc3: $6a
	db $f4                                           ; $6bc4: $f4
	add b                                            ; $6bc5: $80
	sub b                                            ; $6bc6: $90
	ld c, a                                          ; $6bc7: $4f
	rst AddAOntoHL                                          ; $6bc8: $ef
	rst FarCall                                          ; $6bc9: $f7
	rst AddAOntoHL                                          ; $6bca: $ef

Jump_053_6bcb:
	rst FarCall                                          ; $6bcb: $f7
	ld a, e                                          ; $6bcc: $7b
	ld e, l                                          ; $6bcd: $5d
	dec d                                            ; $6bce: $15
	pop bc                                           ; $6bcf: $c1
	ld hl, $1810                                     ; $6bd0: $21 $10 $18
	inc c                                            ; $6bd3: $0c
	ld b, $23                                        ; $6bd4: $06 $23
	inc hl                                           ; $6bd6: $23
	rst $38                                          ; $6bd7: $ff
	ld l, a                                          ; $6bd8: $6f
	rst FarCall                                          ; $6bd9: $f7
	or a                                             ; $6bda: $b7
	ld a, [$fdd8]                                    ; $6bdb: $fa $d8 $fd
	db $f4                                           ; $6bde: $f4
	nop                                              ; $6bdf: $00
	add b                                            ; $6be0: $80
	add b                                            ; $6be1: $80
	ret nz                                           ; $6be2: $c0

	ld b, c                                          ; $6be3: $41
	ld h, c                                          ; $6be4: $61
	sub l                                            ; $6be5: $95
	jr nz, jr_053_6c20                               ; $6be6: $20 $38

	db $dd                                           ; $6be8: $dd
	call c, Call_053_666e                            ; $6be9: $dc $6e $66
	daa                                              ; $6bec: $27
	or e                                             ; $6bed: $b3
	ld de, $fb49                                     ; $6bee: $11 $49 $fb
	sub e                                            ; $6bf1: $93
	add d                                            ; $6bf2: $82
	sub d                                            ; $6bf3: $92
	call Call_053_76e7                               ; $6bf4: $cd $e7 $76
	inc sp                                           ; $6bf7: $33
	inc bc                                           ; $6bf8: $03
	add hl, sp                                       ; $6bf9: $39
	sbc l                                            ; $6bfa: $9d
	sbc h                                            ; $6bfb: $9c
	inc bc                                           ; $6bfc: $03
	ld bc, $626e                                     ; $6bfd: $01 $6e $62
	rst SubAFromDE                                          ; $6c00: $df
	ld h, b                                          ; $6c01: $60
	sbc $e0                                          ; $6c02: $de $e0
	ld a, [hl]                                       ; $6c04: $7e
	cp a                                             ; $6c05: $bf
	sbc [hl]                                         ; $6c06: $9e
	rst $38                                          ; $6c07: $ff
	call c, $df80                                    ; $6c08: $dc $80 $df
	ret nz                                           ; $6c0b: $c0

	sbc [hl]                                         ; $6c0c: $9e
	ld b, b                                          ; $6c0d: $40
	db $db                                           ; $6c0e: $db
	jr @-$1f                                         ; $6c0f: $18 $df

	rst SubAFromDE                                          ; $6c11: $df
	reti                                             ; $6c12: $d9


	jr nz, @-$23                                     ; $6c13: $20 $db

	ld b, $df                                        ; $6c15: $06 $df
	rst FarCall                                          ; $6c17: $f7
	reti                                             ; $6c18: $d9


	ld [$c67e], sp                                   ; $6c19: $08 $7e $c6
	sbc l                                            ; $6c1c: $9d
	ld d, l                                          ; $6c1d: $55
	xor d                                            ; $6c1e: $aa
	ld a, e                                          ; $6c1f: $7b

jr_053_6c20:
	cp $9e                                           ; $6c20: $fe $9e
	ld [$ffd9], a                                    ; $6c22: $ea $d9 $ff
	ld a, [hl]                                       ; $6c25: $7e
	add $7f                                          ; $6c26: $c6 $7f
	call nz, $fe77                                   ; $6c28: $c4 $77 $fe
	reti                                             ; $6c2b: $d9


	rst $38                                          ; $6c2c: $ff
	sub a                                            ; $6c2d: $97
	call nc, Call_053_56b8                           ; $6c2e: $d4 $b8 $56
	sbc d                                            ; $6c31: $9a
	ld d, [hl]                                       ; $6c32: $56
	xor d                                            ; $6c33: $aa
	ld b, e                                          ; $6c34: $43
	sub e                                            ; $6c35: $93
	ld a, d                                          ; $6c36: $7a
	cp b                                             ; $6c37: $b8
	sbc $fd                                          ; $6c38: $de $fd
	add b                                            ; $6c3a: $80
	db $fc                                           ; $6c3b: $fc
	db $ec                                           ; $6c3c: $ec
	add hl, de                                       ; $6c3d: $19
	ld e, d                                          ; $6c3e: $5a
	ld c, b                                          ; $6c3f: $48
	ld c, l                                          ; $6c40: $4d
	ld l, [hl]                                       ; $6c41: $6e
	daa                                              ; $6c42: $27
	ld l, $3b                                        ; $6c43: $2e $3b
	db $e4                                           ; $6c45: $e4
	and h                                            ; $6c46: $a4
	or [hl]                                          ; $6c47: $b6
	or d                                             ; $6c48: $b2
	sub e                                            ; $6c49: $93
	reti                                             ; $6c4a: $d9


	reti                                             ; $6c4b: $d9


	call z, $176c                                    ; $6c4c: $cc $6c $17
	adc $63                                          ; $6c4f: $ce $63
	or c                                             ; $6c51: $b1
	ld c, h                                          ; $6c52: $4c
	or a                                             ; $6c53: $b7
	db $db                                           ; $6c54: $db
	add a                                            ; $6c55: $87
	db $e3                                           ; $6c56: $e3
	ld [hl], c                                       ; $6c57: $71
	inc a                                            ; $6c58: $3c
	ld e, $8d                                        ; $6c59: $1e $8d
	sbc a                                            ; $6c5b: $9f
	rst GetHLinHL                                          ; $6c5c: $cf
	rst SubAFromBC                                          ; $6c5d: $e7
	cp [hl]                                          ; $6c5e: $be
	ld a, a                                          ; $6c5f: $7f
	cp a                                             ; $6c60: $bf
	ld l, e                                          ; $6c61: $6b
	or l                                             ; $6c62: $b5
	reti                                             ; $6c63: $d9


	ld c, h                                          ; $6c64: $4c
	rst GetHLinHL                                          ; $6c65: $cf
	rra                                              ; $6c66: $1f
	adc a                                            ; $6c67: $8f
	rst JumpTable                                          ; $6c68: $c7
	rst FarCall                                          ; $6c69: $f7
	ld a, e                                          ; $6c6a: $7b
	ccf                                              ; $6c6b: $3f
	cp a                                             ; $6c6c: $bf
	call nc, $9bff                                   ; $6c6d: $d4 $ff $9b
	ld a, e                                          ; $6c70: $7b
	add hl, sp                                       ; $6c71: $39
	cp b                                             ; $6c72: $b8
	sbc b                                            ; $6c73: $98
	sbc $f8                                          ; $6c74: $de $f8
	sbc [hl]                                         ; $6c76: $9e
	ldh a, [$7a]                                     ; $6c77: $f0 $7a
	cp l                                             ; $6c79: $bd
	sbc [hl]                                         ; $6c7a: $9e
	ret c                                            ; $6c7b: $d8

	sbc $2f                                          ; $6c7c: $de $2f
	rst SubAFromDE                                          ; $6c7e: $df
	cp a                                             ; $6c7f: $bf
	rst SubAFromDE                                          ; $6c80: $df
	rst $38                                          ; $6c81: $ff

jr_053_6c82:
	sbc c                                            ; $6c82: $99
	rst GetHLinHL                                          ; $6c83: $cf
	dec de                                           ; $6c84: $1b
	ccf                                              ; $6c85: $3f
	ld e, a                                          ; $6c86: $5f
	sbc a                                            ; $6c87: $9f
	adc a                                            ; $6c88: $8f
	ld a, e                                          ; $6c89: $7b
	sub b                                            ; $6c8a: $90
	add b                                            ; $6c8b: $80
	db $f4                                           ; $6c8c: $f4
	reti                                             ; $6c8d: $d9


	and [hl]                                         ; $6c8e: $a6
	ld h, d                                          ; $6c8f: $62
	ld [hl], d                                       ; $6c90: $72
	rrca                                             ; $6c91: $0f
	sub c                                            ; $6c92: $91
	pop hl                                           ; $6c93: $e1
	rst $38                                          ; $6c94: $ff
	db $e4                                           ; $6c95: $e4
	or [hl]                                          ; $6c96: $b6
	rra                                              ; $6c97: $1f
	cp l                                             ; $6c98: $bd
	rst $38                                          ; $6c99: $ff
	db $fd                                           ; $6c9a: $fd
	ld hl, sp-$3c                                    ; $6c9b: $f8 $c4
	dec de                                           ; $6c9d: $1b
	ld c, c                                          ; $6c9e: $49
	db $e4                                           ; $6c9f: $e4
	ld b, [hl]                                       ; $6ca0: $46
	ld [$17f2], sp                                   ; $6ca1: $08 $f2 $17
	ld l, c                                          ; $6ca4: $69
	add hl, hl                                       ; $6ca5: $29
	ld l, c                                          ; $6ca6: $69
	ld l, c                                          ; $6ca7: $69
	jp hl                                            ; $6ca8: $e9


	jp hl                                            ; $6ca9: $e9


	db $f4                                           ; $6caa: $f4
	sbc d                                            ; $6cab: $9a
	ld [hl], h                                       ; $6cac: $74
	cp a                                             ; $6cad: $bf
	rst SubAFromDE                                          ; $6cae: $df

jr_053_6caf:
	sbc a                                            ; $6caf: $9f
	cp a                                             ; $6cb0: $bf
	ld a, e                                          ; $6cb1: $7b
	ld l, b                                          ; $6cb2: $68
	sub c                                            ; $6cb3: $91
	cp a                                             ; $6cb4: $bf
	ld l, d                                          ; $6cb5: $6a
	ld l, h                                          ; $6cb6: $6c
	inc l                                            ; $6cb7: $2c
	dec l                                            ; $6cb8: $2d
	dec h                                            ; $6cb9: $25
	inc h                                            ; $6cba: $24
	and h                                            ; $6cbb: $a4
	sub h                                            ; $6cbc: $94
	or h                                             ; $6cbd: $b4
	or [hl]                                          ; $6cbe: $b6
	or $f6                                           ; $6cbf: $f6 $f6
	cp $de                                           ; $6cc1: $fe $de
	rst $38                                          ; $6cc3: $ff
	add b                                            ; $6cc4: $80

jr_053_6cc5:
	ld c, h                                          ; $6cc5: $4c
	sub h                                            ; $6cc6: $94
	xor h                                            ; $6cc7: $ac
	xor c                                            ; $6cc8: $a9
	adc c                                            ; $6cc9: $89
	jp c, $edd5                                      ; $6cca: $da $d5 $ed

	sub c                                            ; $6ccd: $91
	ret                                              ; $6cce: $c9


	ret                                              ; $6ccf: $c9


	call $eded                                       ; $6cd0: $cd $ed $ed
	xor $b6                                          ; $6cd3: $ee $b6
	inc [hl]                                         ; $6cd5: $34
	jr nz, jr_053_6c82                               ; $6cd6: $20 $aa

	ld [de], a                                       ; $6cd8: $12
	jr nc, jr_053_6caf                               ; $6cd9: $30 $d4

	sub b                                            ; $6cdb: $90
	xor d                                            ; $6cdc: $aa
	inc hl                                           ; $6cdd: $23
	inc sp                                           ; $6cde: $33
	ld sp, $99b9                                     ; $6cdf: $31 $b9 $99
	sbc c                                            ; $6ce2: $99
	db $dd                                           ; $6ce3: $dd
	add b                                            ; $6ce4: $80
	db $dd                                           ; $6ce5: $dd
	db $ec                                           ; $6ce6: $ec
	ld [$f566], a                                    ; $6ce7: $ea $66 $f5
	di                                               ; $6cea: $f3
	db $eb                                           ; $6ceb: $eb
	ld [$b8e9], a                                    ; $6cec: $ea $e9 $b8
	cp h                                             ; $6cef: $bc
	db $fc                                           ; $6cf0: $fc
	ld a, [hl]                                       ; $6cf1: $7e
	ld a, $3e                                        ; $6cf2: $3e $3e
	ccf                                              ; $6cf4: $3f
	ccf                                              ; $6cf5: $3f
	ld c, b                                          ; $6cf6: $48
	sub h                                            ; $6cf7: $94
	dec h                                            ; $6cf8: $25
	ld a, [hl+]                                      ; $6cf9: $2a
	ld [de], a                                       ; $6cfa: $12
	ld [hl], h                                       ; $6cfb: $74
	db $e4                                           ; $6cfc: $e4
	db $ed                                           ; $6cfd: $ed
	sub c                                            ; $6cfe: $91
	ld c, c                                          ; $6cff: $49

jr_053_6d00:
	ld c, b                                          ; $6d00: $48
	ld b, h                                          ; $6d01: $44
	ld h, h                                          ; $6d02: $64
	ld [hl+], a                                      ; $6d03: $22
	rst SubAFromDE                                          ; $6d04: $df
	ld [hl-], a                                      ; $6d05: $32
	adc h                                            ; $6d06: $8c
	call z, $56d6                                    ; $6d07: $cc $d6 $56
	ld h, [hl]                                       ; $6d0a: $66
	and d                                            ; $6d0b: $a2
	ld [$ddef], a                                    ; $6d0c: $ea $ef $dd
	db $10                                           ; $6d0f: $10
	ld [$8888], sp                                   ; $6d10: $08 $88 $88
	ld c, h                                          ; $6d13: $4c
	ld b, h                                          ; $6d14: $44
	ld b, h                                          ; $6d15: $44
	ld h, [hl]                                       ; $6d16: $66
	ldh [$e0], a                                     ; $6d17: $e0 $e0
	and b                                            ; $6d19: $a0
	sbc $20                                          ; $6d1a: $de $20
	ld a, [hl]                                       ; $6d1c: $7e
	cp a                                             ; $6d1d: $bf
	sbc l                                            ; $6d1e: $9d
	ld e, a                                          ; $6d1f: $5f
	ld b, b                                          ; $6d20: $40
	db $dd                                           ; $6d21: $dd
	ld h, b                                          ; $6d22: $60
	rst SubAFromDE                                          ; $6d23: $df
	jr nz, jr_053_6d00                               ; $6d24: $20 $da

	jr jr_053_6cc5                                   ; $6d26: $18 $9d

	rst SubAFromDE                                          ; $6d28: $df
	rst SubAFromBC                                          ; $6d29: $e7
	ld d, d                                          ; $6d2a: $52
	ret nz                                           ; $6d2b: $c0

	ld a, [hl]                                       ; $6d2c: $7e
	cp a                                             ; $6d2d: $bf
	sbc [hl]                                         ; $6d2e: $9e
	ld sp, hl                                        ; $6d2f: $f9
	jp c, $9e08                                      ; $6d30: $da $08 $9e

	rra                                              ; $6d33: $1f
	ld l, b                                          ; $6d34: $68
	db $eb                                           ; $6d35: $eb
	reti                                             ; $6d36: $d9


	rst $38                                          ; $6d37: $ff
	ld a, e                                          ; $6d38: $7b
	ld e, h                                          ; $6d39: $5c
	rst SubAFromDE                                          ; $6d3a: $df
	ld a, a                                          ; $6d3b: $7f
	sbc $3f                                          ; $6d3c: $de $3f
	reti                                             ; $6d3e: $d9


	rst $38                                          ; $6d3f: $ff
	sub a                                            ; $6d40: $97
	ld d, l                                          ; $6d41: $55
	or l                                             ; $6d42: $b5
	ld d, l                                          ; $6d43: $55
	cp a                                             ; $6d44: $bf
	ld e, [hl]                                       ; $6d45: $5e
	cp d                                             ; $6d46: $ba
	ld a, a                                          ; $6d47: $7f
	xor a                                            ; $6d48: $af
	sbc $ee                                          ; $6d49: $de $ee
	add e                                            ; $6d4b: $83

jr_053_6d4c:
	and $e7                                          ; $6d4c: $e6 $e7
	rst SubAFromBC                                          ; $6d4e: $e7
	db $e3                                           ; $6d4f: $e3
	di                                               ; $6d50: $f3
	ld d, a                                          ; $6d51: $57
	db $dd                                           ; $6d52: $dd
	rst $38                                          ; $6d53: $ff
	xor d                                            ; $6d54: $aa
	rst $38                                          ; $6d55: $ff
	rst FarCall                                          ; $6d56: $f7
	ld e, l                                          ; $6d57: $5d
	ld a, c                                          ; $6d58: $79
	db $ec                                           ; $6d59: $ec
	ld h, [hl]                                       ; $6d5a: $66
	ld h, [hl]                                       ; $6d5b: $66
	ld [hl], a                                       ; $6d5c: $77
	inc sp                                           ; $6d5d: $33
	dec sp                                           ; $6d5e: $3b
	cp e                                             ; $6d5f: $bb
	sbc a                                            ; $6d60: $9f
	ld l, e                                          ; $6d61: $6b
	push af                                          ; $6d62: $f5
	cp c                                             ; $6d63: $b9
	db $fc                                           ; $6d64: $fc
	ld e, [hl]                                       ; $6d65: $5e
	cp a                                             ; $6d66: $bf
	rst GetHLinHL                                          ; $6d67: $cf
	ld a, d                                          ; $6d68: $7a
	inc c                                            ; $6d69: $0c
	ld a, a                                          ; $6d6a: $7f
	jp z, $bf9c                                      ; $6d6b: $ca $9c $bf

	db $db                                           ; $6d6e: $db
	ld sp, hl                                        ; $6d6f: $f9
	ld a, b                                          ; $6d70: $78
	jr nc, jr_053_6d4c                               ; $6d71: $30 $d9

	rst $38                                          ; $6d73: $ff
	add b                                            ; $6d74: $80
	cp $de                                           ; $6d75: $fe $de
	adc $e6                                          ; $6d77: $ce $e6
	and $62                                          ; $6d79: $e6 $62
	rst $38                                          ; $6d7b: $ff
	rst $38                                          ; $6d7c: $ff
	db $fc                                           ; $6d7d: $fc
	ldh a, [$e0]                                     ; $6d7e: $f0 $e0
	ret nz                                           ; $6d80: $c0

	add c                                            ; $6d81: $81
	ld b, $d8                                        ; $6d82: $06 $d8
	ret z                                            ; $6d84: $c8

	bit 1, a                                         ; $6d85: $cb $4f
	ld e, a                                          ; $6d87: $5f
	ld a, a                                          ; $6d88: $7f
	ld a, [hl]                                       ; $6d89: $7e
	ld hl, sp-$14                                    ; $6d8a: $f8 $ec
	db $f4                                           ; $6d8c: $f4
	ld [hl], h                                       ; $6d8d: $74
	ld [hl], l                                       ; $6d8e: $75
	db $f4                                           ; $6d8f: $f4
	sbc l                                            ; $6d90: $9d
	add hl, de                                       ; $6d91: $19
	add hl, de                                       ; $6d92: $19
	ld b, a                                          ; $6d93: $47
	sub l                                            ; $6d94: $95
	ld b, a                                          ; $6d95: $47
	and a                                            ; $6d96: $a7
	and a                                            ; $6d97: $a7
	rla                                              ; $6d98: $17
	ld d, $1e                                        ; $6d99: $16 $1e
	ld c, $f3                                        ; $6d9b: $0e $f3
	ld h, e                                          ; $6d9d: $63
	rst AddAOntoHL                                          ; $6d9e: $ef
	ld a, d                                          ; $6d9f: $7a
	ld h, l                                          ; $6da0: $65
	rst SubAFromDE                                          ; $6da1: $df
	ld a, b                                          ; $6da2: $78
	add e                                            ; $6da3: $83
	db $ec                                           ; $6da4: $ec
	call c, $e7d0                                    ; $6da5: $dc $d0 $e7
	jr c, jr_053_6dbc                                ; $6da8: $38 $12

	and a                                            ; $6daa: $a7
	and a                                            ; $6dab: $a7
	ld hl, sp-$63                                    ; $6dac: $f8 $9d
	sbc a                                            ; $6dae: $9f
	rst FarCall                                          ; $6daf: $f7
	sbc a                                            ; $6db0: $9f
	db $fd                                           ; $6db1: $fd
	db $fc                                           ; $6db2: $fc
	add sp, $07                                      ; $6db3: $e8 $07
	ld h, d                                          ; $6db5: $62
	ld l, b                                          ; $6db6: $68
	dec c                                            ; $6db7: $0d
	ld a, b                                          ; $6db8: $78
	ld [hl], d                                       ; $6db9: $72
	inc sp                                           ; $6dba: $33
	scf                                              ; $6dbb: $37

jr_053_6dbc:
	db $fc                                           ; $6dbc: $fc
	cp $e7                                           ; $6dbd: $fe $e7
	rst SubAFromBC                                          ; $6dbf: $e7
	halt                                             ; $6dc0: $76
	add l                                            ; $6dc1: $85
	adc a                                            ; $6dc2: $8f
	cpl                                              ; $6dc3: $2f
	ld b, e                                          ; $6dc4: $43
	sbc e                                            ; $6dc5: $9b
	sbc d                                            ; $6dc6: $9a
	ld b, d                                          ; $6dc7: $42
	ld l, $30                                        ; $6dc8: $2e $30
	and h                                            ; $6dca: $a4
	ld d, [hl]                                       ; $6dcb: $56
	ld d, [hl]                                       ; $6dcc: $56
	ccf                                              ; $6dcd: $3f
	cp a                                             ; $6dce: $bf
	ld e, a                                          ; $6dcf: $5f
	rst $38                                          ; $6dd0: $ff
	rst AddAOntoHL                                          ; $6dd1: $ef
	rst GetHLinHL                                          ; $6dd2: $cf
	ld a, e                                          ; $6dd3: $7b
	res 0, b                                         ; $6dd4: $cb $80
	push af                                          ; $6dd6: $f5
	ldh a, [$31]                                     ; $6dd7: $f0 $31
	ld hl, sp+$78                                    ; $6dd9: $f8 $78
	db $eb                                           ; $6ddb: $eb
	ldh a, [c]                                       ; $6ddc: $f2
	cp c                                             ; $6ddd: $b9
	db $fd                                           ; $6dde: $fd
	cp $ff                                           ; $6ddf: $fe $ff
	ei                                               ; $6de1: $fb
	sbc [hl]                                         ; $6de2: $9e
	or [hl]                                          ; $6de3: $b6
	sbc a                                            ; $6de4: $9f
	rst GetHLinHL                                          ; $6de5: $cf
	ld h, a                                          ; $6de6: $67
	ei                                               ; $6de7: $fb
	rst FarCall                                          ; $6de8: $f7
	cp h                                             ; $6de9: $bc
	sbc a                                            ; $6dea: $9f
	ld e, d                                          ; $6deb: $5a
	res 4, l                                         ; $6dec: $cb $a5
	dec h                                            ; $6dee: $25
	sub l                                            ; $6def: $95
	db $db                                           ; $6df0: $db
	ei                                               ; $6df1: $fb
	rst $38                                          ; $6df2: $ff
	db $ed                                           ; $6df3: $ed
	ld a, l                                          ; $6df4: $7d
	ld [hl], l                                       ; $6df5: $75
	db $fc                                           ; $6df6: $fc
	sub l                                            ; $6df7: $95
	cpl                                              ; $6df8: $2f
	rlca                                             ; $6df9: $07
	ld l, c                                          ; $6dfa: $69
	ld h, l                                          ; $6dfb: $65
	ld h, l                                          ; $6dfc: $65
	inc h                                            ; $6dfd: $24
	inc h                                            ; $6dfe: $24
	ld h, h                                          ; $6dff: $64
	ld h, h                                          ; $6e00: $64
	ldh [c], a                                       ; $6e01: $e2
	sbc $bf                                          ; $6e02: $de $bf
	call c, $93ff                                    ; $6e04: $dc $ff $93
	rst AddAOntoHL                                          ; $6e07: $ef
	ld h, [hl]                                       ; $6e08: $66
	ld d, [hl]                                       ; $6e09: $56
	push af                                          ; $6e0a: $f5
	rst FarCall                                          ; $6e0b: $f7
	or e                                             ; $6e0c: $b3
	xor e                                            ; $6e0d: $ab
	cp d                                             ; $6e0e: $ba
	ld [hl-], a                                      ; $6e0f: $32
	cp e                                             ; $6e10: $bb
	cp e                                             ; $6e11: $bb
	sbc e                                            ; $6e12: $9b
	ld a, d                                          ; $6e13: $7a
	and c                                            ; $6e14: $a1
	adc e                                            ; $6e15: $8b
	call $fbbd                                       ; $6e16: $cd $bd $fb
	ld a, [$6eee]                                    ; $6e19: $fa $ee $6e
	ld e, [hl]                                       ; $6e1c: $5e
	ld a, [hl]                                       ; $6e1d: $7e
	cp [hl]                                          ; $6e1e: $be
	ld h, [hl]                                       ; $6e1f: $66
	ld h, $27                                        ; $6e20: $26 $27
	inc sp                                           ; $6e22: $33
	or e                                             ; $6e23: $b3
	or e                                             ; $6e24: $b3
	sub e                                            ; $6e25: $93
	db $d3                                           ; $6e26: $d3
	ld a, a                                          ; $6e27: $7f
	ld d, b                                          ; $6e28: $50
	ld d, b                                          ; $6e29: $50
	db $dd                                           ; $6e2a: $dd
	ret nc                                           ; $6e2b: $d0

	sbc h                                            ; $6e2c: $9c
	ld d, b                                          ; $6e2d: $50
	jr nz, jr_053_6e6f                               ; $6e2e: $20 $3f

	call c, $9d30                                    ; $6e30: $dc $30 $9d
	or b                                             ; $6e33: $b0
	rst SubAFromDE                                          ; $6e34: $df
	jp c, Jump_053_7c18                              ; $6e35: $da $18 $7c

	ld b, [hl]                                       ; $6e38: $46
	db $db                                           ; $6e39: $db
	jr nz, jr_053_6eb8                               ; $6e3a: $20 $7c

	ld b, [hl]                                       ; $6e3c: $46
	db $db                                           ; $6e3d: $db
	ld b, $7c                                        ; $6e3e: $06 $7c
	ld b, [hl]                                       ; $6e40: $46
	db $db                                           ; $6e41: $db
	ld [$d9f9], sp                                   ; $6e42: $08 $f9 $d9
	rst $38                                          ; $6e45: $ff
	db $dd                                           ; $6e46: $dd
	ccf                                              ; $6e47: $3f
	sbc e                                            ; $6e48: $9b
	scf                                              ; $6e49: $37
	ld h, e                                          ; $6e4a: $63
	ld b, e                                          ; $6e4b: $43
	ld bc, $ffd9                                     ; $6e4c: $01 $d9 $ff
	sub e                                            ; $6e4f: $93
	ld e, l                                          ; $6e50: $5d
	or a                                             ; $6e51: $b7
	sbc $ab                                          ; $6e52: $de $ab
	db $dd                                           ; $6e54: $dd
	xor $f7                                          ; $6e55: $ee $f7
	ei                                               ; $6e57: $fb
	di                                               ; $6e58: $f3
	ld sp, hl                                        ; $6e59: $f9
	ld sp, hl                                        ; $6e5a: $f9
	db $fc                                           ; $6e5b: $fc
	halt                                             ; $6e5c: $76
	db $10                                           ; $6e5d: $10
	sub c                                            ; $6e5e: $91
	inc l                                            ; $6e5f: $2c
	cp [hl]                                          ; $6e60: $be
	sub a                                            ; $6e61: $97
	db $db                                           ; $6e62: $db
	ld l, e                                          ; $6e63: $6b
	or e                                             ; $6e64: $b3
	ld e, c                                          ; $6e65: $59
	rst GetHLinHL                                          ; $6e66: $cf
	rst SubAFromDE                                          ; $6e67: $df
	rst GetHLinHL                                          ; $6e68: $cf
	rst AddAOntoHL                                          ; $6e69: $ef
	rst SubAFromBC                                          ; $6e6a: $e7
	rst FarCall                                          ; $6e6b: $f7
	ld a, a                                          ; $6e6c: $7f
	ld h, l                                          ; $6e6d: $65
	and b                                            ; $6e6e: $a0

jr_053_6e6f:
	ld a, [hl]                                       ; $6e6f: $7e
	call c, $e37f                                    ; $6e70: $dc $7f $e3
	add a                                            ; $6e73: $87
	rst AddAOntoHL                                          ; $6e74: $ef
	di                                               ; $6e75: $f3
	ld hl, sp+$3c                                    ; $6e76: $f8 $3c
	inc bc                                           ; $6e78: $03
	adc a                                            ; $6e79: $8f
	cp $fd                                           ; $6e7a: $fe $fd
	rst $38                                          ; $6e7c: $ff
	db $fc                                           ; $6e7d: $fc
	add sp, $10                                      ; $6e7e: $e8 $10
	jr nz, jr_053_6ec2                               ; $6e80: $20 $40

	inc hl                                           ; $6e82: $23
	ld [hl+], a                                      ; $6e83: $22
	nop                                              ; $6e84: $00
	add b                                            ; $6e85: $80
	db $10                                           ; $6e86: $10
	ldh [$c0], a                                     ; $6e87: $e0 $c0

jr_053_6e89:
	add b                                            ; $6e89: $80
	ld h, b                                          ; $6e8a: $60
	add b                                            ; $6e8b: $80

Call_053_6e8c:
	ld l, b                                          ; $6e8c: $68
	and [hl]                                         ; $6e8d: $a6
	ld a, [$1996]                                    ; $6e8e: $fa $96 $19
	ld c, $0f                                        ; $6e91: $0e $0f
	add hl, bc                                       ; $6e93: $09
	jr jr_053_6ea6                                   ; $6e94: $18 $10

	db $10                                           ; $6e96: $10
	jr nc, jr_053_6ea7                               ; $6e97: $30 $0e

	db $dd                                           ; $6e99: $dd
	rrca                                             ; $6e9a: $0f
	rst SubAFromDE                                          ; $6e9b: $df
	rra                                              ; $6e9c: $1f
	add b                                            ; $6e9d: $80
	ld e, $fd                                        ; $6e9e: $1e $fd
	rst $38                                          ; $6ea0: $ff
	rst SubAFromBC                                          ; $6ea1: $e7
	pop hl                                           ; $6ea2: $e1
	add $c6                                          ; $6ea3: $c6 $c6
	db $ed                                           ; $6ea5: $ed

jr_053_6ea6:
	ld a, e                                          ; $6ea6: $7b

jr_053_6ea7:
	ld [de], a                                       ; $6ea7: $12
	jr nc, @-$2d                                     ; $6ea8: $30 $d1

	add e                                            ; $6eaa: $83
	ld sp, $1339                                     ; $6eab: $31 $39 $13
	rlca                                             ; $6eae: $07
	xor h                                            ; $6eaf: $ac
	ld a, a                                          ; $6eb0: $7f
	rst $38                                          ; $6eb1: $ff
	rst GetHLinHL                                          ; $6eb2: $cf
	adc a                                            ; $6eb3: $8f
	sbc a                                            ; $6eb4: $9f
	rst SubAFromDE                                          ; $6eb5: $df
	rst $38                                          ; $6eb6: $ff
	ld [hl], e                                       ; $6eb7: $73

jr_053_6eb8:
	adc b                                            ; $6eb8: $88
	dec b                                            ; $6eb9: $05
	ld [hl], $72                                     ; $6eba: $36 $72
	ld h, d                                          ; $6ebc: $62
	add e                                            ; $6ebd: $83
	ld h, $8f                                        ; $6ebe: $26 $8f
	pop af                                           ; $6ec0: $f1
	ld sp, hl                                        ; $6ec1: $f9

jr_053_6ec2:
	rst $38                                          ; $6ec2: $ff
	rst $38                                          ; $6ec3: $ff
	sbc a                                            ; $6ec4: $9f
	rra                                              ; $6ec5: $1f
	sbc [hl]                                         ; $6ec6: $9e
	db $fc                                           ; $6ec7: $fc
	ld l, $66                                        ; $6ec8: $2e $66
	db $10                                           ; $6eca: $10
	add hl, bc                                       ; $6ecb: $09
	ld h, a                                          ; $6ecc: $67
	db $e4                                           ; $6ecd: $e4
	ld l, c                                          ; $6ece: $69
	dec bc                                           ; $6ecf: $0b
	ret                                              ; $6ed0: $c9


	ret z                                            ; $6ed1: $c8

	add sp, -$28                                     ; $6ed2: $e8 $d8
	ldh a, [$e0]                                     ; $6ed4: $f0 $e0
	ldh a, [rSVBK]                                   ; $6ed6: $f0 $70
	ld a, b                                          ; $6ed8: $78
	ld a, b                                          ; $6ed9: $78
	ld a, c                                          ; $6eda: $79
	jr c, jr_053_6f5a                                ; $6edb: $38 $7d

	ldh [$99], a                                     ; $6edd: $e0 $99
	or b                                             ; $6edf: $b0
	and a                                            ; $6ee0: $a7
	ret nz                                           ; $6ee1: $c0

	and b                                            ; $6ee2: $a0
	jr z, jr_053_6f55                                ; $6ee3: $28 $70

	cp $9a                                           ; $6ee5: $fe $9a
	and h                                            ; $6ee7: $a4
	db $e4                                           ; $6ee8: $e4
	ldh [$e0], a                                     ; $6ee9: $e0 $e0
	ret nz                                           ; $6eeb: $c0

	ld [hl], a                                       ; $6eec: $77
	jr c, jr_053_6e89                                ; $6eed: $38 $9a

	db $fc                                           ; $6eef: $fc
	inc a                                            ; $6ef0: $3c
	inc c                                            ; $6ef1: $0c
	dec c                                            ; $6ef2: $0d
	dec b                                            ; $6ef3: $05
	reti                                             ; $6ef4: $d9


	rlca                                             ; $6ef5: $07
	add c                                            ; $6ef6: $81
	ld b, $07                                        ; $6ef7: $06 $07
	ldh [c], a                                       ; $6ef9: $e2
	ldh a, [c]                                       ; $6efa: $f2
	ei                                               ; $6efb: $fb
	set 5, e                                         ; $6efc: $cb $eb
	sbc d                                            ; $6efe: $9a
	sub h                                            ; $6eff: $94
	inc a                                            ; $6f00: $3c
	cp a                                             ; $6f01: $bf
	sbc a                                            ; $6f02: $9f
	adc $ae                                          ; $6f03: $ce $ae
	ld c, $4e                                        ; $6f05: $0e $4e
	ld e, [hl]                                       ; $6f07: $5e
	sub [hl]                                         ; $6f08: $96
	cp e                                             ; $6f09: $bb
	ld e, e                                          ; $6f0a: $5b
	ld e, c                                          ; $6f0b: $59
	ld d, l                                          ; $6f0c: $55
	db $dd                                           ; $6f0d: $dd

jr_053_6f0e:
	db $dd                                           ; $6f0e: $dd
	call c, $ccd4                                    ; $6f0f: $dc $d4 $cc
	db $ec                                           ; $6f12: $ec
	xor $ee                                          ; $6f13: $ee $ee
	db $dd                                           ; $6f15: $dd
	ld h, [hl]                                       ; $6f16: $66
	adc e                                            ; $6f17: $8b
	cp [hl]                                          ; $6f18: $be
	or l                                             ; $6f19: $b5
	or l                                             ; $6f1a: $b5
	ld l, a                                          ; $6f1b: $6f

jr_053_6f1c:
	ld a, a                                          ; $6f1c: $7f
	ld sp, hl                                        ; $6f1d: $f9
	ret c                                            ; $6f1e: $d8

	ret                                              ; $6f1f: $c9


	db $d3                                           ; $6f20: $d3
	db $db                                           ; $6f21: $db
	db $db                                           ; $6f22: $db
	reti                                             ; $6f23: $d9


	ret                                              ; $6f24: $c9


	ld c, l                                          ; $6f25: $4d
	ld l, l                                          ; $6f26: $6d
	ld l, h                                          ; $6f27: $6c
	ld e, a                                          ; $6f28: $5f
	ld e, a                                          ; $6f29: $5f
	db $10                                           ; $6f2a: $10
	db $10                                           ; $6f2b: $10
	db $dd                                           ; $6f2c: $dd
	jr nz, jr_053_6f0e                               ; $6f2d: $20 $df

	or b                                             ; $6f2f: $b0
	sbc [hl]                                         ; $6f30: $9e
	rst $38                                          ; $6f31: $ff
	ld a, b                                          ; $6f32: $78
	ret c                                            ; $6f33: $d8

	rst SubAFromDE                                          ; $6f34: $df
	ldh [$df], a                                     ; $6f35: $e0 $df
	rst SubAFromDE                                          ; $6f37: $df
	ld l, d                                          ; $6f38: $6a
	ret nz                                           ; $6f39: $c0

	ld l, d                                          ; $6f3a: $6a
	cp a                                             ; $6f3b: $bf
	rst SubAFromDE                                          ; $6f3c: $df
	rst FarCall                                          ; $6f3d: $f7
	ld l, d                                          ; $6f3e: $6a
	ret nz                                           ; $6f3f: $c0

	ld l, d                                          ; $6f40: $6a
	cp a                                             ; $6f41: $bf
	sub a                                            ; $6f42: $97
	nop                                              ; $6f43: $00
	ld b, b                                          ; $6f44: $40
	db $10                                           ; $6f45: $10
	ld b, h                                          ; $6f46: $44
	ld de, $1144                                     ; $6f47: $11 $44 $11
	xor d                                            ; $6f4a: $aa
	reti                                             ; $6f4b: $d9


	rst $38                                          ; $6f4c: $ff
	cp $7f                                           ; $6f4d: $fe $7f
	ldh a, [c]                                       ; $6f4f: $f2
	sbc h                                            ; $6f50: $9c
	ld b, a                                          ; $6f51: $47
	rra                                              ; $6f52: $1f
	xor a                                            ; $6f53: $af
	db $db                                           ; $6f54: $db

jr_053_6f55:
	rst $38                                          ; $6f55: $ff
	rst SubAFromDE                                          ; $6f56: $df
	ld hl, sp+$7d                                    ; $6f57: $f8 $7d
	ld [hl], c                                       ; $6f59: $71

jr_053_6f5a:
	sbc h                                            ; $6f5a: $9c
	rra                                              ; $6f5b: $1f
	ld b, a                                          ; $6f5c: $47
	rra                                              ; $6f5d: $1f
	ld a, d                                          ; $6f5e: $7a
	ld e, $dc                                        ; $6f5f: $1e $dc
	rst $38                                          ; $6f61: $ff
	sbc h                                            ; $6f62: $9c
	ldh [c], a                                       ; $6f63: $e2
	ld bc, $dd1f                                     ; $6f64: $01 $1f $dd
	rst $38                                          ; $6f67: $ff
	add b                                            ; $6f68: $80
	rst SubAFromDE                                          ; $6f69: $df
	ld e, [hl]                                       ; $6f6a: $5e
	cp a                                             ; $6f6b: $bf
	rst AddAOntoHL                                          ; $6f6c: $ef
	rst FarCall                                          ; $6f6d: $f7
	ld sp, hl                                        ; $6f6e: $f9
	ld hl, sp-$04                                    ; $6f6f: $f8 $fc
	db $fc                                           ; $6f71: $fc
	or e                                             ; $6f72: $b3
	ld [hl], c                                       ; $6f73: $71
	ret c                                            ; $6f74: $d8

	ldh [$e0], a                                     ; $6f75: $e0 $e0
	add c                                            ; $6f77: $81
	add h                                            ; $6f78: $84
	sub b                                            ; $6f79: $90
	ld hl, sp+$7e                                    ; $6f7a: $f8 $7e
	rst $38                                          ; $6f7c: $ff
	rst SubAFromDE                                          ; $6f7d: $df
	rst $38                                          ; $6f7e: $ff
	ld a, [hl]                                       ; $6f7f: $7e
	ld a, b                                          ; $6f80: $78
	ld h, b                                          ; $6f81: $60
	nop                                              ; $6f82: $00
	add b                                            ; $6f83: $80
	ret nz                                           ; $6f84: $c0

	nop                                              ; $6f85: $00
	add b                                            ; $6f86: $80
	inc bc                                           ; $6f87: $03
	adc b                                            ; $6f88: $88
	inc b                                            ; $6f89: $04
	ld [$0004], sp                                   ; $6f8a: $08 $04 $00
	inc bc                                           ; $6f8d: $03
	add b                                            ; $6f8e: $80
	nop                                              ; $6f8f: $00
	rlca                                             ; $6f90: $07
	rrca                                             ; $6f91: $0f
	rrca                                             ; $6f92: $0f
	rlca                                             ; $6f93: $07
	inc bc                                           ; $6f94: $03
	nop                                              ; $6f95: $00
	jr jr_053_6ff8                                   ; $6f96: $18 $60

	ret z                                            ; $6f98: $c8

	db $10                                           ; $6f99: $10
	jr nz, jr_053_6f1c                               ; $6f9a: $20 $80

	ld sp, $1823                                     ; $6f9c: $31 $23 $18
	jr c, @+$7d                                      ; $6f9f: $38 $7b

	db $10                                           ; $6fa1: $10
	rst $38                                          ; $6fa2: $ff
	add b                                            ; $6fa3: $80
	ld bc, $2030                                     ; $6fa4: $01 $30 $20
	ld h, b                                          ; $6fa7: $60
	jr nz, jr_053_6feb                               ; $6fa8: $20 $41

	ld a, [hl]                                       ; $6faa: $7e
	cp c                                             ; $6fab: $b9
	inc a                                            ; $6fac: $3c
	inc e                                            ; $6fad: $1c
	inc a                                            ; $6fae: $3c
	ld a, $7f                                        ; $6faf: $3e $7f
	ld a, a                                          ; $6fb1: $7f
	rst $38                                          ; $6fb2: $ff
	cp c                                             ; $6fb3: $b9
	inc a                                            ; $6fb4: $3c
	rla                                              ; $6fb5: $17
	scf                                              ; $6fb6: $37
	inc hl                                           ; $6fb7: $23
	rst FarCall                                          ; $6fb8: $f7
	db $db                                           ; $6fb9: $db
	ld [hl], c                                       ; $6fba: $71
	ld [hl+], a                                      ; $6fbb: $22
	sbc a                                            ; $6fbc: $9f
	add hl, sp                                       ; $6fbd: $39
	add hl, bc                                       ; $6fbe: $09

Jump_053_6fbf:
	ld e, l                                          ; $6fbf: $5d
	set 4, e                                         ; $6fc0: $cb $e3
	ldh [$9e], a                                     ; $6fc2: $e0 $9e
	reti                                             ; $6fc4: $d9


	call c, $9cff                                    ; $6fc5: $dc $ff $9c
	xor [hl]                                         ; $6fc8: $ae
	ld e, a                                          ; $6fc9: $5f
	jp $a079                                         ; $6fca: $c3 $79 $a0


	rst SubAFromDE                                          ; $6fcd: $df
	rst $38                                          ; $6fce: $ff
	sbc e                                            ; $6fcf: $9b
	pop de                                           ; $6fd0: $d1
	and b                                            ; $6fd1: $a0
	cp $f3                                           ; $6fd2: $fe $f3
	ld [hl], a                                       ; $6fd4: $77
	add [hl]                                         ; $6fd5: $86
	sbc d                                            ; $6fd6: $9a
	cp $0f                                           ; $6fd7: $fe $0f
	ldh a, [$fe]                                     ; $6fd9: $f0 $fe
	ld sp, hl                                        ; $6fdb: $f9
	ld [hl], a                                       ; $6fdc: $77
	rst FarCall                                          ; $6fdd: $f7
	ld a, h                                          ; $6fde: $7c
	db $d3                                           ; $6fdf: $d3
	adc [hl]                                         ; $6fe0: $8e
	ldh [$78], a                                     ; $6fe1: $e0 $78
	xor $e1                                          ; $6fe3: $ee $e1
	and c                                            ; $6fe5: $a1
	inc bc                                           ; $6fe6: $03
	inc b                                            ; $6fe7: $04
	inc bc                                           ; $6fe8: $03
	inc bc                                           ; $6fe9: $03
	or b                                             ; $6fea: $b0

jr_053_6feb:
	ld a, h                                          ; $6feb: $7c
	cp $ff                                           ; $6fec: $fe $ff
	cp $fc                                           ; $6fee: $fe $fc
	cp $3e                                           ; $6ff0: $fe $3e
	pop af                                           ; $6ff2: $f1
	sbc [hl]                                         ; $6ff3: $9e
	ld b, $de                                        ; $6ff4: $06 $de
	inc bc                                           ; $6ff6: $03
	rst SubAFromDE                                          ; $6ff7: $df

jr_053_6ff8:
	ld b, $9d                                        ; $6ff8: $06 $9d
	inc c                                            ; $6ffa: $0c
	dec e                                            ; $6ffb: $1d
	ld a, e                                          ; $6ffc: $7b
	ld a, l                                          ; $6ffd: $7d
	sbc $03                                          ; $6ffe: $de $03
	rst SubAFromDE                                          ; $7000: $df
	rlca                                             ; $7001: $07
	add a                                            ; $7002: $87
	ld l, h                                          ; $7003: $6c
	ldh a, [c]                                       ; $7004: $f2
	ldh [c], a                                       ; $7005: $e2
	ld c, d                                          ; $7006: $4a
	ld h, b                                          ; $7007: $60
	sub l                                            ; $7008: $95
	db $e3                                           ; $7009: $e3
	ld e, [hl]                                       ; $700a: $5e
	ld [hl], $64                                     ; $700b: $36 $64
	db $e4                                           ; $700d: $e4
	db $e4                                           ; $700e: $e4
	call z, $98c8                                    ; $700f: $cc $c8 $98
	or c                                             ; $7012: $b1
	ld b, h                                          ; $7013: $44
	ld b, h                                          ; $7014: $44
	call nz, $cdcc                                   ; $7015: $c4 $cc $cd
	ld c, l                                          ; $7018: $4d
	ld e, l                                          ; $7019: $5d
	db $dd                                           ; $701a: $dd
	call c, $9476                                    ; $701b: $dc $76 $94
	or $e6                                           ; $701e: $f6 $e6
	and $48                                          ; $7020: $e6 $48
	ld c, b                                          ; $7022: $48
	ret                                              ; $7023: $c9


	reti                                             ; $7024: $d9


	ld e, d                                          ; $7025: $5a
	ld e, e                                          ; $7026: $5b
	xor e                                            ; $7027: $ab
	or l                                             ; $7028: $b5
	db $dd                                           ; $7029: $dd
	ld l, h                                          ; $702a: $6c
	rst SubAFromDE                                          ; $702b: $df
	db $ed                                           ; $702c: $ed
	sbc d                                            ; $702d: $9a
	db $dd                                           ; $702e: $dd
	db $db                                           ; $702f: $db
	jr nz, jr_053_7071                               ; $7030: $20 $3f

	ccf                                              ; $7032: $3f
	ld [hl], h                                       ; $7033: $74
	ld b, b                                          ; $7034: $40
	sbc [hl]                                         ; $7035: $9e
	ld h, b                                          ; $7036: $60
	sbc $e0                                          ; $7037: $de $e0
	sbc [hl]                                         ; $7039: $9e
	rst $38                                          ; $703a: $ff
	ld a, d                                          ; $703b: $7a
	ld l, [hl]                                       ; $703c: $6e
	sbc l                                            ; $703d: $9d
	ret nz                                           ; $703e: $c0

	jr jr_053_70ab                                   ; $703f: $18 $6a

	cp a                                             ; $7041: $bf
	sbc $20                                          ; $7042: $de $20
	ld [hl], d                                       ; $7044: $72
	cp a                                             ; $7045: $bf
	ld a, h                                          ; $7046: $7c
	ld b, [hl]                                       ; $7047: $46
	ld l, [hl]                                       ; $7048: $6e
	cp a                                             ; $7049: $bf
	sbc $08                                          ; $704a: $de $08
	ld [hl], d                                       ; $704c: $72
	cp a                                             ; $704d: $bf
	sbc l                                            ; $704e: $9d
	ld d, l                                          ; $704f: $55
	xor d                                            ; $7050: $aa
	ld a, e                                          ; $7051: $7b
	cp $9d                                           ; $7052: $fe $9d
	ld [$611f], a                                    ; $7054: $ea $1f $61
	add b                                            ; $7057: $80
	sbc h                                            ; $7058: $9c
	ld e, a                                          ; $7059: $5f
	and b                                            ; $705a: $a0
	ld h, b                                          ; $705b: $60
	ld [hl], l                                       ; $705c: $75
	xor e                                            ; $705d: $ab
	ld a, a                                          ; $705e: $7f
	dec h                                            ; $705f: $25
	ld [hl], a                                       ; $7060: $77
	ret nz                                           ; $7061: $c0

	sbc l                                            ; $7062: $9d
	nop                                              ; $7063: $00
	adc a                                            ; $7064: $8f
	halt                                             ; $7065: $76
	call $fa9d                                       ; $7066: $cd $9d $fa
	push af                                          ; $7069: $f5
	ld a, c                                          ; $706a: $79
	sbc a                                            ; $706b: $9f
	ld a, a                                          ; $706c: $7f
	db $f4                                           ; $706d: $f4
	adc c                                            ; $706e: $89
	rra                                              ; $706f: $1f
	push hl                                          ; $7070: $e5

jr_053_7071:
	ld a, [bc]                                       ; $7071: $0a
	rra                                              ; $7072: $1f
	ld [$b754], a                                    ; $7073: $ea $54 $b7
	ld a, a                                          ; $7076: $7f
	ret nz                                           ; $7077: $c0

	and b                                            ; $7078: $a0
	ld [hl], a                                       ; $7079: $77
	push af                                          ; $707a: $f5
	ei                                               ; $707b: $fb
	rst SubAFromHL                                          ; $707c: $d7
	ld c, $3f                                        ; $707d: $0e $3f
	rst FarCall                                          ; $707f: $f7
	ld b, e                                          ; $7080: $43
	or a                                             ; $7081: $b7
	rst SubAFromDE                                          ; $7082: $df
	xor a                                            ; $7083: $af
	ld a, [hl]                                       ; $7084: $7e
	sbc $ff                                          ; $7085: $de $ff

jr_053_7087:
	sbc b                                            ; $7087: $98
	rst JumpTable                                          ; $7088: $c7
	add b                                            ; $7089: $80
	nop                                              ; $708a: $00
	ldh a, [$fc]                                     ; $708b: $f0 $fc
	jr nz, jr_053_7087                               ; $708d: $20 $f8

	call c, $9dff                                    ; $708f: $dc $ff $9d
	rrca                                             ; $7092: $0f
	ret nz                                           ; $7093: $c0

	ld a, e                                          ; $7094: $7b
	ld hl, sp-$79                                    ; $7095: $f8 $87
	ld a, a                                          ; $7097: $7f
	inc l                                            ; $7098: $2c
	rla                                              ; $7099: $17
	add hl, bc                                       ; $709a: $09
	nop                                              ; $709b: $00
	nop                                              ; $709c: $00
	add c                                            ; $709d: $81
	rst $38                                          ; $709e: $ff
	cp $f8                                           ; $709f: $fe $f8
	cp $ff                                           ; $70a1: $fe $ff
	ld b, $3e                                        ; $70a3: $06 $3e
	rst $38                                          ; $70a5: $ff
	rst SubAFromBC                                          ; $70a6: $e7
	dec b                                            ; $70a7: $05
	inc b                                            ; $70a8: $04
	inc b                                            ; $70a9: $04
	add h                                            ; $70aa: $84

jr_053_70ab:
	ld [bc], a                                       ; $70ab: $02
	inc c                                            ; $70ac: $0c
	cp $c5                                           ; $70ad: $fe $c5
	db $dd                                           ; $70af: $dd
	inc b                                            ; $70b0: $04
	add b                                            ; $70b1: $80
	ld d, $13                                        ; $70b2: $16 $13
	rla                                              ; $70b4: $17
	sub a                                            ; $70b5: $97
	sbc $fb                                          ; $70b6: $de $fb
	ld a, l                                          ; $70b8: $7d
	ld a, [hl]                                       ; $70b9: $7e
	ld e, $1f                                        ; $70ba: $1e $1f
	rra                                              ; $70bc: $1f
	inc e                                            ; $70bd: $1c
	sbc [hl]                                         ; $70be: $9e
	ld e, d                                          ; $70bf: $5a
	add hl, sp                                       ; $70c0: $39
	inc [hl]                                         ; $70c1: $34
	ld [hl], a                                       ; $70c2: $77
	ld a, [$fdfd]                                    ; $70c3: $fa $fd $fd
	or $7e                                           ; $70c6: $f6 $7e
	cp [hl]                                          ; $70c8: $be
	adc $57                                          ; $70c9: $ce $57
	sub e                                            ; $70cb: $93
	reti                                             ; $70cc: $d9


	or h                                             ; $70cd: $b4
	or h                                             ; $70ce: $b4
	ld d, d                                          ; $70cf: $52
	ld [$8881], sp                                   ; $70d0: $08 $81 $88
	rrca                                             ; $70d3: $0f
	rrca                                             ; $70d4: $0f
	add hl, bc                                       ; $70d5: $09
	adc b                                            ; $70d6: $88
	adc c                                            ; $70d7: $89
	adc c                                            ; $70d8: $89
	ret                                              ; $70d9: $c9


	ld c, c                                          ; $70da: $49
	pop af                                           ; $70db: $f1
	ldh a, [$f2]                                     ; $70dc: $f0 $f2
	di                                               ; $70de: $f3
	ldh a, [c]                                       ; $70df: $f2
	ldh a, [c]                                       ; $70e0: $f2

Jump_053_70e1:
	ld [hl], d                                       ; $70e1: $72
	ld [hl], d                                       ; $70e2: $72
	rst $38                                          ; $70e3: $ff
	cp $aa                                           ; $70e4: $fe $aa
	dec d                                            ; $70e6: $15
	ldh [$fd], a                                     ; $70e7: $e0 $fd
	db $fc                                           ; $70e9: $fc
	db $fd                                           ; $70ea: $fd
	cp $1f                                           ; $70eb: $fe $1f
	nop                                              ; $70ed: $00
	ldh [rAUD3HIGH], a                               ; $70ee: $e0 $1e
	sbc $02                                          ; $70f0: $de $02
	sbc l                                            ; $70f2: $9d
	pop bc                                           ; $70f3: $c1
	add c                                            ; $70f4: $81
	ld [hl], l                                       ; $70f5: $75
	inc [hl]                                         ; $70f6: $34
	ld a, a                                          ; $70f7: $7f
	cp $9e                                           ; $70f8: $fe $9e
	ccf                                              ; $70fa: $3f
	jp c, Jump_053_7f7f                              ; $70fb: $da $7f $7f

	push af                                          ; $70fe: $f5
	sbc c                                            ; $70ff: $99
	rst $38                                          ; $7100: $ff
	ld [bc], a                                       ; $7101: $02
	ld [bc], a                                       ; $7102: $02
	ld bc, $0201                                     ; $7103: $01 $01 $02
	ld h, h                                          ; $7106: $64
	cp [hl]                                          ; $7107: $be
	add b                                            ; $7108: $80
	add hl, sp                                       ; $7109: $39
	ldh a, [c]                                       ; $710a: $f2
	push hl                                          ; $710b: $e5
	ld c, e                                          ; $710c: $4b
	sub [hl]                                         ; $710d: $96
	cpl                                              ; $710e: $2f
	ld e, h                                          ; $710f: $5c
	sub c                                            ; $7110: $91
	rrca                                             ; $7111: $0f
	ccf                                              ; $7112: $3f
	cp $fd                                           ; $7113: $fe $fd
	ei                                               ; $7115: $fb
	db $f4                                           ; $7116: $f4
	db $eb                                           ; $7117: $eb
	rst $38                                          ; $7118: $ff
	xor h                                            ; $7119: $ac
	ld e, c                                          ; $711a: $59
	or e                                             ; $711b: $b3
	ld h, a                                          ; $711c: $67
	rst GetHLinHL                                          ; $711d: $cf
	inc a                                            ; $711e: $3c
	ret nc                                           ; $711f: $d0

	add b                                            ; $7120: $80
	ld [hl], e                                       ; $7121: $73
	rst SubAFromBC                                          ; $7122: $e7
	rst GetHLinHL                                          ; $7123: $cf
	sbc a                                            ; $7124: $9f
	ccf                                              ; $7125: $3f
	ld hl, sp-$20                                    ; $7126: $f8 $e0
	add h                                            ; $7128: $84
	ret nz                                           ; $7129: $c0

	rst SubAFromHL                                          ; $712a: $d7
	jp c, $a9bb                                      ; $712b: $da $bb $a9

	ldh a, [c]                                       ; $712e: $f2
	ld a, [hl-]                                      ; $712f: $3a
	ld c, $03                                        ; $7130: $0e $03
	db $ec                                           ; $7132: $ec
	db $ed                                           ; $7133: $ed
	call $ffdf                                       ; $7134: $cd $df $ff
	rra                                              ; $7137: $1f
	rlca                                             ; $7138: $07
	ld bc, $d7b7                                     ; $7139: $01 $b7 $d7
	ld h, d                                          ; $713c: $62
	ld h, $46                                        ; $713d: $26 $46
	ld c, d                                          ; $713f: $4a
	sub e                                            ; $7140: $93
	sub e                                            ; $7141: $93
	db $db                                           ; $7142: $db
	cp e                                             ; $7143: $bb
	ld a, e                                          ; $7144: $7b
	add hl, bc                                       ; $7145: $09
	ld a, h                                          ; $7146: $7c
	sbc d                                            ; $7147: $9a
	sbc e                                            ; $7148: $9b
	di                                               ; $7149: $f3
	ld h, b                                          ; $714a: $60
	ld h, b                                          ; $714b: $60
	rst $38                                          ; $714c: $ff
	ld a, e                                          ; $714d: $7b
	dec b                                            ; $714e: $05
	rst SubAFromDE                                          ; $714f: $df
	ld h, b                                          ; $7150: $60
	rst SubAFromDE                                          ; $7151: $df
	ret nz                                           ; $7152: $c0

	rst SubAFromDE                                          ; $7153: $df
	add b                                            ; $7154: $80
	sbc [hl]                                         ; $7155: $9e
	sbc a                                            ; $7156: $9f
	sbc $80                                          ; $7157: $de $80
	rst SubAFromDE                                          ; $7159: $df
	jr @+$70                                         ; $715a: $18 $6e

	cp a                                             ; $715c: $bf
	db $dd                                           ; $715d: $dd
	jr nz, jr_053_71d6                               ; $715e: $20 $76

	cp a                                             ; $7160: $bf
	rst SubAFromDE                                          ; $7161: $df
	ld b, $6e                                        ; $7162: $06 $6e
	cp a                                             ; $7164: $bf
	db $dd                                           ; $7165: $dd
	ld [$bf76], sp                                   ; $7166: $08 $76 $bf
	ld b, h                                          ; $7169: $44
	ld b, b                                          ; $716a: $40
	ld b, a                                          ; $716b: $47
	ldh a, [hDisp1_OBP1]                                     ; $716c: $f0 $94
	ld hl, sp+$00                                    ; $716e: $f8 $00
	inc b                                            ; $7170: $04
	nop                                              ; $7171: $00
	ld a, [bc]                                       ; $7172: $0a
	nop                                              ; $7173: $00
	inc b                                            ; $7174: $04
	ld bc, $f8f8                                     ; $7175: $01 $f8 $f8
	db $fc                                           ; $7178: $fc
	call c, $9bff                                    ; $7179: $dc $ff $9b
	cpl                                              ; $717c: $2f
	ld a, a                                          ; $717d: $7f
	cp a                                             ; $717e: $bf
	ld e, a                                          ; $717f: $5f
	ld a, e                                          ; $7180: $7b
	cp $9c                                           ; $7181: $fe $9c
	ld a, a                                          ; $7183: $7f
	ld a, h                                          ; $7184: $7c
	ld a, h                                          ; $7185: $7c
	sbc $f8                                          ; $7186: $de $f8
	sbc $f0                                          ; $7188: $de $f0
	sub l                                            ; $718a: $95
	and $c3                                          ; $718b: $e6 $c3
	add c                                            ; $718d: $81
	add b                                            ; $718e: $80
	ld bc, $0301                                     ; $718f: $01 $01 $03
	add e                                            ; $7192: $83
	inc bc                                           ; $7193: $03
	ld bc, $97fb                                     ; $7194: $01 $fb $97
	dec b                                            ; $7197: $05
	ld [bc], a                                       ; $7198: $02
	add c                                            ; $7199: $81
	ret nz                                           ; $719a: $c0

	ret nz                                           ; $719b: $c0

	ld h, b                                          ; $719c: $60
	jr nz, jr_053_71cf                               ; $719d: $20 $30

	halt                                             ; $719f: $76
	ld a, h                                          ; $71a0: $7c
	adc [hl]                                         ; $71a1: $8e
	ld a, a                                          ; $71a2: $7f
	ccf                                              ; $71a3: $3f
	ccf                                              ; $71a4: $3f
	rra                                              ; $71a5: $1f
	db $e4                                           ; $71a6: $e4
	ld a, h                                          ; $71a7: $7c
	ld e, b                                          ; $71a8: $58
	sbc h                                            ; $71a9: $9c
	ld d, [hl]                                       ; $71aa: $56
	daa                                              ; $71ab: $27
	dec d                                            ; $71ac: $15
	add hl, bc                                       ; $71ad: $09
	call nz, $f0f8                                   ; $71ae: $c4 $f8 $f0
	ld hl, sp-$04                                    ; $71b1: $f8 $fc
	ld a, c                                          ; $71b3: $79
	cp h                                             ; $71b4: $bc
	add l                                            ; $71b5: $85
	ld a, e                                          ; $71b6: $7b
	ld l, l                                          ; $71b7: $6d
	ld [hl], a                                       ; $71b8: $77
	ld l, a                                          ; $71b9: $6f
	ld h, a                                          ; $71ba: $67
	ld [hl], a                                       ; $71bb: $77
	rst AddAOntoHL                                          ; $71bc: $ef
	push hl                                          ; $71bd: $e5
	ld [hl-], a                                      ; $71be: $32
	add hl, sp                                       ; $71bf: $39
	dec a                                            ; $71c0: $3d
	inc a                                            ; $71c1: $3c
	inc a                                            ; $71c2: $3c
	ld a, $3e                                        ; $71c3: $3e $3e
	cp a                                             ; $71c5: $bf
	ld c, [hl]                                       ; $71c6: $4e
	rst JumpTable                                          ; $71c7: $c7
	rst JumpTable                                          ; $71c8: $c7
	jp $e0e3                                         ; $71c9: $c3 $e3 $e0


	pop hl                                           ; $71cc: $e1
	pop af                                           ; $71cd: $f1
	ld b, h                                          ; $71ce: $44

jr_053_71cf:
	inc b                                            ; $71cf: $04
	halt                                             ; $71d0: $76
	ld sp, hl                                        ; $71d1: $f9
	ld a, a                                          ; $71d2: $7f
	or a                                             ; $71d3: $b7
	add b                                            ; $71d4: $80
	ld l, c                                          ; $71d5: $69

jr_053_71d6:
	ld a, a                                          ; $71d6: $7f
	jr nc, @+$3e                                     ; $71d7: $30 $3c

	rst SubAFromBC                                          ; $71d9: $e7
	jp Jump_053_4040                                 ; $71da: $c3 $40 $40


	ld [hl], d                                       ; $71dd: $72
	ccf                                              ; $71de: $3f
	jr nz, jr_053_7219                               ; $71df: $20 $38

	ld h, $c1                                        ; $71e1: $26 $c1
	ld b, b                                          ; $71e3: $40
	ld b, b                                          ; $71e4: $40
	db $fc                                           ; $71e5: $fc
	db $fd                                           ; $71e6: $fd
	db $fd                                           ; $71e7: $fd
	rra                                              ; $71e8: $1f
	ld bc, $7ff0                                     ; $71e9: $01 $f0 $7f
	inc bc                                           ; $71ec: $03
	ld [bc], a                                       ; $71ed: $02
	add d                                            ; $71ee: $82
	ld [hl], d                                       ; $71ef: $72
	rrca                                             ; $71f0: $0f
	nop                                              ; $71f1: $00
	ldh [$3e], a                                     ; $71f2: $e0 $3e
	sbc [hl]                                         ; $71f4: $9e
	ld bc, $80dd                                     ; $71f5: $01 $dd $80
	sbc h                                            ; $71f8: $9c
	ldh [$3f], a                                     ; $71f9: $e0 $3f
	ld bc, $a37b                                     ; $71fb: $01 $7b $a3
	ld a, c                                          ; $71fe: $79
	ld b, c                                          ; $71ff: $41
	ld a, d                                          ; $7200: $7a
	add hl, bc                                       ; $7201: $09
	sub a                                            ; $7202: $97
	inc bc                                           ; $7203: $03
	dec b                                            ; $7204: $05
	ld b, $06                                        ; $7205: $06 $06
	rlca                                             ; $7207: $07
	rst $38                                          ; $7208: $ff
	push af                                          ; $7209: $f5
	adc d                                            ; $720a: $8a
	call c, $91ff                                    ; $720b: $dc $ff $91
	cp $e0                                           ; $720e: $fe $e0
	nop                                              ; $7210: $00
	inc hl                                           ; $7211: $23
	ld c, a                                          ; $7212: $4f
	db $fc                                           ; $7213: $fc
	ldh [$d0], a                                     ; $7214: $e0 $d0
	and b                                            ; $7216: $a0
	ld d, c                                          ; $7217: $51
	xor d                                            ; $7218: $aa

jr_053_7219:
	rst $38                                          ; $7219: $ff
	db $fc                                           ; $721a: $fc
	ldh a, [$74]                                     ; $721b: $f0 $74
	ld sp, $0095                                     ; $721d: $31 $95 $00
	ret nz                                           ; $7220: $c0

	nop                                              ; $7221: $00
	ld bc, $150a                                     ; $7222: $01 $0a $15
	ld a, [hl+]                                      ; $7225: $2a
	ld d, a                                          ; $7226: $57
	xor a                                            ; $7227: $af
	add b                                            ; $7228: $80
	ld hl, sp-$67                                    ; $7229: $f8 $99
	ld b, b                                          ; $722b: $40
	xor b                                            ; $722c: $a8
	ld d, h                                          ; $722d: $54
	ld [$fefd], a                                    ; $722e: $ea $fd $fe
	ld sp, hl                                        ; $7231: $f9
	sub a                                            ; $7232: $97
	ld h, d                                          ; $7233: $62
	jr nz, jr_053_7246                               ; $7234: $20 $10

	rra                                              ; $7236: $1f
	rrca                                             ; $7237: $0f
	inc c                                            ; $7238: $0c
	inc b                                            ; $7239: $04
	inc b                                            ; $723a: $04
	ld a, e                                          ; $723b: $7b
	ld hl, sp-$21                                    ; $723c: $f8 $df
	ld [$079c], sp                                   ; $723e: $08 $9c $07
	inc b                                            ; $7241: $04
	inc b                                            ; $7242: $04
	sbc $60                                          ; $7243: $de $60
	rst SubAFromDE                                          ; $7245: $df

jr_053_7246:
	ld a, a                                          ; $7246: $7f
	sbc $60                                          ; $7247: $de $60
	call c, Call_053_7a80                            ; $7249: $dc $80 $7a
	cp a                                             ; $724c: $bf
	sbc $18                                          ; $724d: $de $18
	ld [hl], d                                       ; $724f: $72
	cp a                                             ; $7250: $bf
	call c, Call_053_7a20                            ; $7251: $dc $20 $7a
	cp a                                             ; $7254: $bf
	sbc $06                                          ; $7255: $de $06
	ld [hl], d                                       ; $7257: $72
	cp a                                             ; $7258: $bf
	call c, Call_053_7a08                            ; $7259: $dc $08 $7a
	cp a                                             ; $725c: $bf
	ld b, $c0                                        ; $725d: $06 $c0
	sub a                                            ; $725f: $97
	ld a, [bc]                                       ; $7260: $0a
	ld bc, $0104                                ; $7261: $01 $04 $01
	ld a, [bc]                                       ; $7264: $0a
	ld bc, $0114                                     ; $7265: $01 $14 $01
	reti                                             ; $7268: $d9


	rst $38                                          ; $7269: $ff
	ld a, [hl]                                       ; $726a: $7e
	add $99                                          ; $726b: $c6 $99
	cp a                                             ; $726d: $bf
	ld a, [hl]                                       ; $726e: $7e
	cp [hl]                                          ; $726f: $be
	ld a, [hl]                                       ; $7270: $7e
	cp h                                             ; $7271: $bc
	ld a, h                                          ; $7272: $7c
	reti                                             ; $7273: $d9


	ldh a, [$df]                                     ; $7274: $f0 $df
	add d                                            ; $7276: $82
	rst SubAFromDE                                          ; $7277: $df
	ret nz                                           ; $7278: $c0

	sbc [hl]                                         ; $7279: $9e
	ld b, b                                          ; $727a: $40
	ld a, d                                          ; $727b: $7a
	ret nc                                           ; $727c: $d0

	ld sp, hl                                        ; $727d: $f9
	rst SubAFromDE                                          ; $727e: $df
	db $10                                           ; $727f: $10
	sbc h                                            ; $7280: $9c
	jr jr_053_728b                                   ; $7281: $18 $08

	ld [$18de], sp                                   ; $7283: $08 $de $18
	rst SubAFromDE                                          ; $7286: $df
	rra                                              ; $7287: $1f
	db $db                                           ; $7288: $db
	rrca                                             ; $7289: $0f
	ld a, [hl]                                       ; $728a: $7e

jr_053_728b:
	or b                                             ; $728b: $b0
	ld l, [hl]                                       ; $728c: $6e
	and a                                            ; $728d: $a7
	reti                                             ; $728e: $d9


	rst $38                                          ; $728f: $ff
	sbc c                                            ; $7290: $99
	ld e, c                                          ; $7291: $59
	ld c, b                                          ; $7292: $48
	ld c, b                                          ; $7293: $48
	sub b                                            ; $7294: $90
	ld d, b                                          ; $7295: $50
	jr nz, @+$61                                     ; $7296: $20 $5f

	ldh a, [$df]                                     ; $7298: $f0 $df
	ld a, [$fede]                                    ; $729a: $fa $de $fe
	ld a, a                                          ; $729d: $7f
	rlca                                             ; $729e: $07
	ld a, l                                          ; $729f: $7d
	cp e                                             ; $72a0: $bb
	sub [hl]                                         ; $72a1: $96
	add d                                            ; $72a2: $82
	jp nz, $bee2                                     ; $72a3: $c2 $e2 $be

	add e                                            ; $72a6: $83
	add c                                            ; $72a7: $81
	add b                                            ; $72a8: $80
	push hl                                          ; $72a9: $e5
	ld a, [$ffdb]                                    ; $72aa: $fa $db $ff
	reti                                             ; $72ad: $d9


	add b                                            ; $72ae: $80
	sbc h                                            ; $72af: $9c
	nop                                              ; $72b0: $00
	xor d                                            ; $72b1: $aa
	ld d, l                                          ; $72b2: $55
	ld d, e                                          ; $72b3: $53
	ld l, b                                          ; $72b4: $68
	ld a, l                                          ; $72b5: $7d
	sub b                                            ; $72b6: $90
	sbc c                                            ; $72b7: $99
	ld d, l                                          ; $72b8: $55
	xor b                                            ; $72b9: $a8
	db $f4                                           ; $72ba: $f4
	ld [$faf5], a                                    ; $72bb: $ea $f5 $fa
	ld sp, hl                                        ; $72be: $f9
	sbc [hl]                                         ; $72bf: $9e
	dec b                                            ; $72c0: $05
	ld a, b                                          ; $72c1: $78
	ret nz                                           ; $72c2: $c0

	ld a, [hl]                                       ; $72c3: $7e
	ld e, b                                          ; $72c4: $58
	sbc l                                            ; $72c5: $9d
	rra                                              ; $72c6: $1f
	xor a                                            ; $72c7: $af
	ld sp, hl                                        ; $72c8: $f9
	sbc [hl]                                         ; $72c9: $9e
	ld d, a                                          ; $72ca: $57
	ld a, e                                          ; $72cb: $7b
	ld e, l                                          ; $72cc: $5d
	sbc l                                            ; $72cd: $9d
	ld e, a                                          ; $72ce: $5f
	xor a                                            ; $72cf: $af
	ccf                                              ; $72d0: $3f
	jr c, jr_053_7336                                ; $72d1: $38 $63

	ldh a, [$7a]                                     ; $72d3: $f0 $7a
	inc a                                            ; $72d5: $3c
	ld e, e                                          ; $72d6: $5b
	ldh a, [$99]                                     ; $72d7: $f0 $99
	add b                                            ; $72d9: $80
	ld b, $82                                        ; $72da: $06 $82
	ld d, [hl]                                       ; $72dc: $56
	xor d                                            ; $72dd: $aa
	rst SubAFromHL                                          ; $72de: $d7
	sbc $ff                                          ; $72df: $de $ff
	db $dd                                           ; $72e1: $dd
	ld [bc], a                                       ; $72e2: $02
	db $dd                                           ; $72e3: $dd
	ld bc, $60dd                                     ; $72e4: $01 $dd $60
	halt                                             ; $72e7: $76
	cp a                                             ; $72e8: $bf
	db $db                                           ; $72e9: $db
	add b                                            ; $72ea: $80
	ld a, [hl]                                       ; $72eb: $7e
	cp a                                             ; $72ec: $bf
	db $dd                                           ; $72ed: $dd
	jr @+$78                                         ; $72ee: $18 $76

	cp a                                             ; $72f0: $bf
	db $db                                           ; $72f1: $db
	jr nz, jr_053_7372                               ; $72f2: $20 $7e

	cp a                                             ; $72f4: $bf

jr_053_72f5:
	db $dd                                           ; $72f5: $dd
	ld b, $76                                        ; $72f6: $06 $76
	cp a                                             ; $72f8: $bf
	db $db                                           ; $72f9: $db
	ld [$bf7e], sp                                   ; $72fa: $08 $7e $bf
	ld [bc], a                                       ; $72fd: $02
	ret nz                                           ; $72fe: $c0

	ld a, d                                          ; $72ff: $7a
	call nz, $c056                                   ; $7300: $c4 $56 $c0
	ld a, [hl]                                       ; $7303: $7e
	add $98                                          ; $7304: $c6 $98
	cp h                                             ; $7306: $bc
	ld e, [hl]                                       ; $7307: $5e
	cp [hl]                                          ; $7308: $be
	ld e, [hl]                                       ; $7309: $5e
	cp a                                             ; $730a: $bf
	ld e, a                                          ; $730b: $5f
	ldh a, [$db]                                     ; $730c: $f0 $db

jr_053_730e:
	ld hl, sp-$62                                    ; $730e: $f8 $9e
	db $fc                                           ; $7310: $fc
	ld a, d                                          ; $7311: $7a
	ret nc                                           ; $7312: $d0

	rst SubAFromDE                                          ; $7313: $df
	jr jr_053_72f5                                   ; $7314: $18 $df

	inc e                                            ; $7316: $1c
	sbc [hl]                                         ; $7317: $9e
	ld e, $f9                                        ; $7318: $1e $f9
	db $dd                                           ; $731a: $dd
	jr c, @-$1f                                      ; $731b: $38 $df

	ld a, b                                          ; $731d: $78
	sbc l                                            ; $731e: $9d
	jr c, jr_053_733d                                ; $731f: $38 $1c

	jp c, $9e0f                                      ; $7321: $da $0f $9e

	rlca                                             ; $7324: $07
	ld b, e                                          ; $7325: $43
	and b                                            ; $7326: $a0
	sbc b                                            ; $7327: $98
	ld bc, $0c07                                     ; $7328: $01 $07 $0c
	jr jr_053_735d                                   ; $732b: $18 $30

	ld h, b                                          ; $732d: $60
	add b                                            ; $732e: $80
	ld a, c                                          ; $732f: $79
	db $d3                                           ; $7330: $d3

jr_053_7331:
	ld a, l                                          ; $7331: $7d
	ld l, [hl]                                       ; $7332: $6e
	ld a, h                                          ; $7333: $7c
	or c                                             ; $7334: $b1
	sbc d                                            ; $7335: $9a

jr_053_7336:
	add b                                            ; $7336: $80
	rst FarCall                                          ; $7337: $f7
	add hl, sp                                       ; $7338: $39
	jp nc, $7701                                     ; $7339: $d2 $01 $77

	ld a, e                                          ; $733c: $7b

jr_053_733d:
	sbc e                                            ; $733d: $9b
	ld hl, sp-$3a                                    ; $733e: $f8 $c6
	ld hl, $7310                                     ; $7340: $21 $10 $73
	ret c                                            ; $7343: $d8

	sbc [hl]                                         ; $7344: $9e
	ld a, a                                          ; $7345: $7f
	ld a, d                                          ; $7346: $7a

jr_053_7347:
	add [hl]                                         ; $7347: $86
	sbc d                                            ; $7348: $9a
	ld c, $08                                        ; $7349: $0e $08
	db $10                                           ; $734b: $10
	ret nz                                           ; $734c: $c0

	jr nc, @+$7d                                     ; $734d: $30 $7b

	cp l                                             ; $734f: $bd
	sbc h                                            ; $7350: $9c
	ld c, $0c                                        ; $7351: $0e $0c
	jr jr_053_7331                                   ; $7353: $18 $dc

	rst $38                                          ; $7355: $ff
	sbc l                                            ; $7356: $9d
	add hl, de                                       ; $7357: $19
	ld b, $76                                        ; $7358: $06 $76
	ld a, e                                          ; $735a: $7b
	sbc d                                            ; $735b: $9a
	ret nz                                           ; $735c: $c0

jr_053_735d:
	cp $1f                                           ; $735d: $fe $1f
	rlca                                             ; $735f: $07
	inc bc                                           ; $7360: $03
	db $db                                           ; $7361: $db
	rst $38                                          ; $7362: $ff
	sbc l                                            ; $7363: $9d
	rra                                              ; $7364: $1f
	ldh a, [$fc]                                     ; $7365: $f0 $fc
	sbc [hl]                                         ; $7367: $9e
	ldh [$d8], a                                     ; $7368: $e0 $d8
	rst $38                                          ; $736a: $ff
	sbc [hl]                                         ; $736b: $9e
	ccf                                              ; $736c: $3f
	ld c, a                                          ; $736d: $4f
	sbc d                                            ; $736e: $9a
	ld l, a                                          ; $736f: $6f
	jr c, jr_053_730e                                ; $7370: $38 $9c

jr_053_7372:
	rrca                                             ; $7372: $0f
	rst $38                                          ; $7373: $ff
	ld a, [$836e]                                    ; $7374: $fa $6e $83
	sbc $ff                                          ; $7377: $de $ff
	ld a, l                                          ; $7379: $7d
	ld h, $9a                                        ; $737a: $26 $9a
	ld e, $ff                                        ; $737c: $1e $ff
	ld hl, sp+$50                                    ; $737e: $f8 $50
	and b                                            ; $7380: $a0
	ld h, e                                          ; $7381: $63
	sbc $9c                                          ; $7382: $de $9c
	add b                                            ; $7384: $80
	jr nz, jr_053_7347                               ; $7385: $20 $c0

	ld [hl], c                                       ; $7387: $71
	ld l, l                                          ; $7388: $6d
	sub a                                            ; $7389: $97
	db $fd                                           ; $738a: $fd
	rst $38                                          ; $738b: $ff
	db $fd                                           ; $738c: $fd
	ei                                               ; $738d: $fb
	push af                                          ; $738e: $f5
	ld a, [$eaf5]                                    ; $738f: $fa $f5 $ea
	db $dd                                           ; $7392: $dd
	ld bc, $ddfd                                     ; $7393: $01 $fd $dd
	ld h, b                                          ; $7396: $60
	ld a, e                                          ; $7397: $7b
	xor c                                            ; $7398: $a9
	ret c                                            ; $7399: $d8

	add b                                            ; $739a: $80
	call c, Call_053_7b18                            ; $739b: $dc $18 $7b
	or c                                             ; $739e: $b1
	call c, $fe20                                    ; $739f: $dc $20 $fe
	call c, Call_053_7b06                            ; $73a2: $dc $06 $7b
	ldh a, [$dc]                                     ; $73a5: $f0 $dc
	ld [$106b], sp                                   ; $73a7: $08 $6b $10
	db $dd                                           ; $73aa: $dd
	jr c, @-$25                                      ; $73ab: $38 $d9

	rlca                                             ; $73ad: $07
	sbc [hl]                                         ; $73ae: $9e
	nop                                              ; $73af: $00
	jp c, $9e1c                                      ; $73b0: $da $1c $9e

	ccf                                              ; $73b3: $3f
	jp c, $9c03                                      ; $73b4: $da $03 $9c

	inc d                                            ; $73b7: $14
	rrca                                             ; $73b8: $0f
	ld c, $73                                        ; $73b9: $0e $73
	cp $96                                           ; $73bb: $fe $96
	rst $38                                          ; $73bd: $ff
	add e                                            ; $73be: $83
	add l                                            ; $73bf: $85
	add c                                            ; $73c0: $81
	adc e                                            ; $73c1: $8b
	add c                                            ; $73c2: $81
	add l                                            ; $73c3: $85
	add c                                            ; $73c4: $81
	xor a                                            ; $73c5: $af
	ld [hl], l                                       ; $73c6: $75
	ld a, [hl]                                       ; $73c7: $7e
	ld a, e                                          ; $73c8: $7b
	cp $df                                           ; $73c9: $fe $df
	db $fc                                           ; $73cb: $fc
	sbc l                                            ; $73cc: $9d
	xor $de                                          ; $73cd: $ee $de
	ld a, e                                          ; $73cf: $7b
	cp $9b                                           ; $73d0: $fe $9b
	call c, $9e1e                                    ; $73d2: $dc $1e $9e
	sbc a                                            ; $73d5: $9f
	db $dd                                           ; $73d6: $dd
	cp a                                             ; $73d7: $bf
	ld a, a                                          ; $73d8: $7f
	xor a                                            ; $73d9: $af
	jp c, $df10                                      ; $73da: $da $10 $df

	inc c                                            ; $73dd: $0c
	sbc $04                                          ; $73de: $de $04
	sbc $84                                          ; $73e0: $de $84
	reti                                             ; $73e2: $d9


	rlca                                             ; $73e3: $07
	ld a, a                                          ; $73e4: $7f
	ld c, b                                          ; $73e5: $48
	sbc [hl]                                         ; $73e6: $9e
	inc bc                                           ; $73e7: $03
	sbc $07                                          ; $73e8: $de $07
	sub l                                            ; $73ea: $95
	ld b, $0c                                        ; $73eb: $06 $0c
	rst $38                                          ; $73ed: $ff
	cp $fe                                           ; $73ee: $fe $fe
	db $fc                                           ; $73f0: $fc
	db $fc                                           ; $73f1: $fc
	rst $38                                          ; $73f2: $ff
	db $fc                                           ; $73f3: $fc
	ld hl, sp+$76                                    ; $73f4: $f8 $76
	inc c                                            ; $73f6: $0c
	sbc e                                            ; $73f7: $9b
	ret nz                                           ; $73f8: $c0

	ldh [$f0], a                                     ; $73f9: $e0 $f0
	inc e                                            ; $73fb: $1c
	ld l, [hl]                                       ; $73fc: $6e
	ld [bc], a                                       ; $73fd: $02
	sbc [hl]                                         ; $73fe: $9e
	ld [hl], b                                       ; $73ff: $70
	ld a, e                                          ; $7400: $7b
	ld a, l                                          ; $7401: $7d
	sbc c                                            ; $7402: $99
	inc bc                                           ; $7403: $03
	rra                                              ; $7404: $1f
	ccf                                              ; $7405: $3f
	ld a, a                                          ; $7406: $7f
	ld a, a                                          ; $7407: $7f
	ld a, [hl]                                       ; $7408: $7e
	db $fd                                           ; $7409: $fd
	ld a, a                                          ; $740a: $7f
	call nc, $078c                                   ; $740b: $d4 $8c $07
	rrca                                             ; $740e: $0f
	jr nc, @+$81                                     ; $740f: $30 $7f

	rst $38                                          ; $7411: $ff
	cp a                                             ; $7412: $bf
	db $fd                                           ; $7413: $fd
	ld a, l                                          ; $7414: $7d
	ei                                               ; $7415: $fb
	rst $38                                          ; $7416: $ff
	jr nz, jr_053_7439                               ; $7417: $20 $20

	ld b, b                                          ; $7419: $40
	ret nz                                           ; $741a: $c0

	add d                                            ; $741b: $82
	add d                                            ; $741c: $82
	inc b                                            ; $741d: $04
	inc b                                            ; $741e: $04
	ld bc, $d177                                     ; $741f: $01 $77 $d1
	ld a, a                                          ; $7422: $7f
	ret nc                                           ; $7423: $d0

	ld [hl], a                                       ; $7424: $77
	ret z                                            ; $7425: $c8

	db $fc                                           ; $7426: $fc
	sbc d                                            ; $7427: $9a
	add sp, -$01                                     ; $7428: $e8 $ff
	cp $7e                                           ; $742a: $fe $7e
	ccf                                              ; $742c: $3f
	ld a, c                                          ; $742d: $79
	adc a                                            ; $742e: $8f
	adc e                                            ; $742f: $8b
	sbc a                                            ; $7430: $9f
	add a                                            ; $7431: $87
	ld b, e                                          ; $7432: $43
	ld b, e                                          ; $7433: $43
	ld h, c                                          ; $7434: $61
	ld hl, $3020                                     ; $7435: $21 $20 $30
	ccf                                              ; $7438: $3f

jr_053_7439:
	rst $38                                          ; $7439: $ff
	ccf                                              ; $743a: $3f
	ccf                                              ; $743b: $3f
	rra                                              ; $743c: $1f
	rra                                              ; $743d: $1f
	sbc a                                            ; $743e: $9f
	sbc a                                            ; $743f: $9f
	xor $f5                                          ; $7440: $ee $f5
	xor $e4                                          ; $7442: $ee $e4
	db $dd                                           ; $7444: $dd
	ldh a, [c]                                       ; $7445: $f2
	reti                                             ; $7446: $d9


	rst $38                                          ; $7447: $ff
	sbc l                                            ; $7448: $9d
	xor d                                            ; $7449: $aa
	ld d, b                                          ; $744a: $50
	dec c                                            ; $744b: $0d
	add sp, -$07                                     ; $744c: $e8 $f9
	ld a, l                                          ; $744e: $7d
	inc [hl]                                         ; $744f: $34
	sbc c                                            ; $7450: $99
	call nc, $d4e8                                   ; $7451: $d4 $e8 $d4
	xor b                                            ; $7454: $a8
	ret nc                                           ; $7455: $d0

	xor b                                            ; $7456: $a8
	ld sp, hl                                        ; $7457: $f9
	sub e                                            ; $7458: $93
	cp e                                             ; $7459: $bb
	xor $bb                                          ; $745a: $ee $bb
	xor $d5                                          ; $745c: $ee $d5
	xor d                                            ; $745e: $aa
	push de                                          ; $745f: $d5
	xor d                                            ; $7460: $aa
	call nz, $c491                                   ; $7461: $c4 $91 $c4
	sub c                                            ; $7464: $91
	ld a, e                                          ; $7465: $7b
	ld sp, hl                                        ; $7466: $f9
	sbc [hl]                                         ; $7467: $9e
	push de                                          ; $7468: $d5
	ld [hl], a                                       ; $7469: $77
	ldh a, [$7d]                                     ; $746a: $f0 $7d
	ld e, $7f                                        ; $746c: $1e $7f
	cp $9b                                           ; $746e: $fe $9b
	ld b, h                                          ; $7470: $44
	ld de, $1144                                     ; $7471: $11 $44 $11
	ld a, e                                          ; $7474: $7b
	ld sp, hl                                        ; $7475: $f9
	sbc [hl]                                         ; $7476: $9e
	ld d, l                                          ; $7477: $55
	ld b, a                                          ; $7478: $47
	ldh a, [rLY]                                     ; $7479: $f0 $44
	nop                                              ; $747b: $00
	sbc e                                            ; $747c: $9b
	ld [hl+], a                                      ; $747d: $22
	inc h                                            ; $747e: $24
	ld b, h                                          ; $747f: $44
	ld [hl-], a                                      ; $7480: $32
	db $dd                                           ; $7481: $dd
	ld [hl+], a                                      ; $7482: $22
	sbc c                                            ; $7483: $99
	daa                                              ; $7484: $27
	ld [hl], a                                       ; $7485: $77
	ld [hl+], a                                      ; $7486: $22
	ld b, h                                          ; $7487: $44
	ld b, h                                          ; $7488: $44
	ld b, e                                          ; $7489: $43
	ld h, e                                          ; $748a: $63
	or $9e                                           ; $748b: $f6 $9e
	inc hl                                           ; $748d: $23
	ld h, a                                          ; $748e: $67
	or $9e                                           ; $748f: $f6 $9e
	ld b, d                                          ; $7491: $42
	call c, Call_053_7722                            ; $7492: $dc $22 $77
	or $db                                           ; $7495: $f6 $db
	ld [hl+], a                                      ; $7497: $22
	ld a, e                                          ; $7498: $7b
	or $9e                                           ; $7499: $f6 $9e
	ld [hl], d                                       ; $749b: $72
	ld [hl], e                                       ; $749c: $73
	ld a, [$fc73]                                    ; $749d: $fa $73 $fc
	rst SubAFromDE                                          ; $74a0: $df
	ld d, l                                          ; $74a1: $55
	sbc [hl]                                         ; $74a2: $9e
	ld d, a                                          ; $74a3: $57
	ld e, e                                          ; $74a4: $5b
	or $df                                           ; $74a5: $f6 $df
	ld h, [hl]                                       ; $74a7: $66
	rst SubAFromDE                                          ; $74a8: $df
	ld [hl], a                                       ; $74a9: $77
	rst SubAFromDE                                          ; $74aa: $df
	ld [hl+], a                                      ; $74ab: $22
	sbc h                                            ; $74ac: $9c
	dec h                                            ; $74ad: $25
	ld d, l                                          ; $74ae: $55
	ld d, [hl]                                       ; $74af: $56
	sbc $66                                          ; $74b0: $de $66
	sbc [hl]                                         ; $74b2: $9e
	ld h, a                                          ; $74b3: $67
	ld [hl], e                                       ; $74b4: $73
	db $ec                                           ; $74b5: $ec
	sbc [hl]                                         ; $74b6: $9e
	ld h, $63                                        ; $74b7: $26 $63
	or $df                                           ; $74b9: $f6 $df
	ld [hl+], a                                      ; $74bb: $22
	ld [hl], a                                       ; $74bc: $77
	or $d5                                           ; $74bd: $f6 $d5
	adc b                                            ; $74bf: $88
	db $db                                           ; $74c0: $db
	ld h, b                                          ; $74c1: $60
	sbc l                                            ; $74c2: $9d
	ld h, h                                          ; $74c3: $64
	ld h, d                                          ; $74c4: $62
	reti                                             ; $74c5: $d9


	add b                                            ; $74c6: $80
	ld a, [$209e]                                    ; $74c7: $fa $9e $20
	ld a, [$409e]                                    ; $74ca: $fa $9e $40
	ld a, [$fe9e]                                    ; $74cd: $fa $9e $fe
	ldh a, [c]                                       ; $74d0: $f2
	sbc [hl]                                         ; $74d1: $9e
	jr @-$04                                         ; $74d2: $18 $fa

	sbc [hl]                                         ; $74d4: $9e
	db $10                                           ; $74d5: $10
	ld a, [$0c9e]                                    ; $74d6: $fa $9e $0c
	ld a, [$089e]                                    ; $74d9: $fa $9e $08
	ld c, e                                          ; $74dc: $4b
	ldh a, [$9e]                                     ; $74dd: $f0 $9e
	inc b                                            ; $74df: $04
	ld l, e                                          ; $74e0: $6b
	reti                                             ; $74e1: $d9


	ld c, e                                          ; $74e2: $4b
	ret nc                                           ; $74e3: $d0

	sbc l                                            ; $74e4: $9d
	inc [hl]                                         ; $74e5: $34
	ld a, h                                          ; $74e6: $7c
	ei                                               ; $74e7: $fb
	sbc [hl]                                         ; $74e8: $9e
	inc h                                            ; $74e9: $24
	ld l, e                                          ; $74ea: $6b
	ld hl, sp-$63                                    ; $74eb: $f8 $9d
	inc a                                            ; $74ed: $3c
	ld a, [hl]                                       ; $74ee: $7e
	ei                                               ; $74ef: $fb
	add b                                            ; $74f0: $80
	jr z, jr_053_7531                                ; $74f1: $28 $3e

	add hl, sp                                       ; $74f3: $39
	dec de                                           ; $74f4: $1b
	scf                                              ; $74f5: $37
	ld a, d                                          ; $74f6: $7a
	ld c, a                                          ; $74f7: $4f
	ld d, l                                          ; $74f8: $55
	ld e, d                                          ; $74f9: $5a
	ld l, e                                          ; $74fa: $6b
	ld d, $36                                        ; $74fb: $16 $36
	inc l                                            ; $74fd: $2c
	dec l                                            ; $74fe: $2d
	ld a, c                                          ; $74ff: $79
	ld a, e                                          ; $7500: $7b
	ld [hl], a                                       ; $7501: $77
	halt                                             ; $7502: $76
	sbc $bd                                          ; $7503: $de $bd
	dec sp                                           ; $7505: $3b
	di                                               ; $7506: $f3
	ld l, [hl]                                       ; $7507: $6e
	db $f4                                           ; $7508: $f4
	db $dd                                           ; $7509: $dd
	jp hl                                            ; $750a: $e9


	ld hl, $c442                                     ; $750b: $21 $42 $c4
	adc h                                            ; $750e: $8c
	sbc c                                            ; $750f: $99
	add b                                            ; $7510: $80
	dec de                                           ; $7511: $1b
	inc sp                                           ; $7512: $33
	scf                                              ; $7513: $37
	db $ed                                           ; $7514: $ed
	res 3, l                                         ; $7515: $cb $9d
	rla                                              ; $7517: $17
	ld l, d                                          ; $7518: $6a
	xor c                                            ; $7519: $a9
	ld [hl-], a                                      ; $751a: $32
	ld d, h                                          ; $751b: $54
	inc de                                           ; $751c: $13
	ld [hl], $66                                     ; $751d: $36 $66
	db $ec                                           ; $751f: $ec
	db $dd                                           ; $7520: $dd
	rst SubAFromDE                                          ; $7521: $df
	rst SubAFromDE                                          ; $7522: $df
	cp a                                             ; $7523: $bf
	ei                                               ; $7524: $fb
	rst FarCall                                          ; $7525: $f7
	rst SubAFromBC                                          ; $7526: $e7
	adc $9c                                          ; $7527: $ce $9c
	add hl, sp                                       ; $7529: $39
	ld [hl], $7b                                     ; $752a: $36 $7b
	inc c                                            ; $752c: $0c
	jr jr_053_7567                                   ; $752d: $18 $38

	ld [hl], b                                       ; $752f: $70
	add e                                            ; $7530: $83

jr_053_7531:
	ldh [$c0], a                                     ; $7531: $e0 $c0
	pop bc                                           ; $7533: $c1
	add a                                            ; $7534: $87
	pop bc                                           ; $7535: $c1
	add d                                            ; $7536: $82
	inc b                                            ; $7537: $04
	jr jr_053_759a                                   ; $7538: $18 $60

	add c                                            ; $753a: $81
	add c                                            ; $753b: $81
	ld bc, $0100                                     ; $753c: $01 $00 $01
	inc bc                                           ; $753f: $03
	rlca                                             ; $7540: $07
	rra                                              ; $7541: $1f
	ld a, [hl]                                       ; $7542: $7e
	cp $fe                                           ; $7543: $fe $fe
	ld b, [hl]                                       ; $7545: $46
	ld b, [hl]                                       ; $7546: $46
	ld c, [hl]                                       ; $7547: $4e
	sbc d                                            ; $7548: $9a
	or d                                             ; $7549: $b2
	jr nz, jr_053_7599                               ; $754a: $20 $4d

	call nc, $80de                                   ; $754c: $d4 $de $80
	sub d                                            ; $754f: $92
	inc b                                            ; $7550: $04
	inc c                                            ; $7551: $0c
	inc e                                            ; $7552: $1c
	jr c, @+$3b                                      ; $7553: $38 $39

	ld b, b                                          ; $7555: $40
	ld b, h                                          ; $7556: $44
	ld d, [hl]                                       ; $7557: $56
	ld d, e                                          ; $7558: $53
	db $d3                                           ; $7559: $d3
	ld b, h                                          ; $755a: $44
	ld b, h                                          ; $755b: $44
	ld h, h                                          ; $755c: $64
	ld [hl], e                                       ; $755d: $73
	ld d, e                                          ; $755e: $53
	rst SubAFromDE                                          ; $755f: $df
	sbc e                                            ; $7560: $9b
	sub e                                            ; $7561: $93
	sbc a                                            ; $7562: $9f
	ld h, l                                          ; $7563: $65
	ld [hl-], a                                      ; $7564: $32
	jr jr_053_7584                                   ; $7565: $18 $1d

jr_053_7567:
	adc [hl]                                         ; $7567: $8e
	adc d                                            ; $7568: $8a
	db $dd                                           ; $7569: $dd
	db $dd                                           ; $756a: $dd

Call_053_756b:
	ld [bc], a                                       ; $756b: $02
	ld bc, $7b01                                     ; $756c: $01 $01 $7b
	ld d, d                                          ; $756f: $52
	adc d                                            ; $7570: $8a
	ld [bc], a                                       ; $7571: $02
	add d                                            ; $7572: $82
	ld d, l                                          ; $7573: $55
	xor d                                            ; $7574: $aa
	sub l                                            ; $7575: $95
	ld c, d                                          ; $7576: $4a
	ld h, [hl]                                       ; $7577: $66
	and l                                            ; $7578: $a5
	jp nz, $38d2                                     ; $7579: $c2 $d2 $38

	inc e                                            ; $757c: $1c
	ld c, $87                                        ; $757d: $0e $87
	add e                                            ; $757f: $83
	ld b, e                                          ; $7580: $43
	ld h, c                                          ; $7581: $61
	ld h, c                                          ; $7582: $61
	ccf                                              ; $7583: $3f

jr_053_7584:
	rra                                              ; $7584: $1f
	rra                                              ; $7585: $1f
	sbc $0f                                          ; $7586: $de $0f
	sbc d                                            ; $7588: $9a
	add a                                            ; $7589: $87
	rst JumpTable                                          ; $758a: $c7
	ldh [$f0], a                                     ; $758b: $e0 $f0
	ldh a, [$de]                                     ; $758d: $f0 $de
	ld hl, sp-$21                                    ; $758f: $f8 $df
	db $fc                                           ; $7591: $fc
	call c, $9cff                                    ; $7592: $dc $ff $9c
	db $fd                                           ; $7595: $fd
	push af                                          ; $7596: $f5
	rst $38                                          ; $7597: $ff
	db $fc                                           ; $7598: $fc

jr_053_7599:
	sbc e                                            ; $7599: $9b

jr_053_759a:
	ld d, e                                          ; $759a: $53
	ld e, e                                          ; $759b: $5b
	rst $38                                          ; $759c: $ff
	ld h, [hl]                                       ; $759d: $66
	jp c, $d960                                      ; $759e: $da $60 $d9

	add b                                            ; $75a1: $80
	add b                                            ; $75a2: $80
	ld c, b                                          ; $75a3: $48
	inc d                                            ; $75a4: $14
	jr z, jr_053_75e7                                ; $75a5: $28 $40

	inc d                                            ; $75a7: $14
	ld b, b                                          ; $75a8: $40
	db $10                                           ; $75a9: $10
	add hl, hl                                       ; $75aa: $29
	jr nc, jr_053_75b5                               ; $75ab: $30 $08

	ld b, b                                          ; $75ad: $40
	jr nc, @+$0a                                     ; $75ae: $30 $08

	nop                                              ; $75b0: $00
	ld h, b                                          ; $75b1: $60
	db $10                                           ; $75b2: $10
	ld [bc], a                                       ; $75b3: $02
	inc b                                            ; $75b4: $04

jr_053_75b5:
	inc d                                            ; $75b5: $14
	ld [$5028], sp                                   ; $75b6: $08 $28 $50
	and h                                            ; $75b9: $a4
	ld b, d                                          ; $75ba: $42
	db $fc                                           ; $75bb: $fc
	ld [$1008], sp                                   ; $75bc: $08 $08 $10
	db $10                                           ; $75bf: $10
	inc l                                            ; $75c0: $2c
	ld b, d                                          ; $75c1: $42
	add b                                            ; $75c2: $80
	add c                                            ; $75c3: $81
	inc a                                            ; $75c4: $3c
	inc e                                            ; $75c5: $1c
	ld [hl], $2a                                     ; $75c6: $36 $2a
	inc b                                            ; $75c8: $04
	jr nc, jr_053_7605                               ; $75c9: $30 $3a

	inc e                                            ; $75cb: $1c
	inc a                                            ; $75cc: $3c
	ld [$043e], sp                                   ; $75cd: $08 $3e $04
	ld b, $20                                        ; $75d0: $06 $20
	inc e                                            ; $75d2: $1c
	inc b                                            ; $75d3: $04
	inc h                                            ; $75d4: $24
	jr nz, jr_053_7653                               ; $75d5: $20 $7c

	ld h, h                                          ; $75d7: $64
	ld h, [hl]                                       ; $75d8: $66
	ld b, $3f                                        ; $75d9: $06 $3f
	ccf                                              ; $75db: $3f
	jr z, jr_053_75fe                                ; $75dc: $28 $20

	jr c, @+$40                                      ; $75de: $38 $3e

	ld [bc], a                                       ; $75e0: $02
	inc b                                            ; $75e1: $04
	adc b                                            ; $75e2: $88
	inc a                                            ; $75e3: $3c
	db $10                                           ; $75e4: $10
	ld b, h                                          ; $75e5: $44
	ccf                                              ; $75e6: $3f

jr_053_75e7:
	cpl                                              ; $75e7: $2f
	ld [hl], c                                       ; $75e8: $71
	or l                                             ; $75e9: $b5
	cp a                                             ; $75ea: $bf
	rst $38                                          ; $75eb: $ff
	rst $38                                          ; $75ec: $ff
	ld l, h                                          ; $75ed: $6c
	ld a, $79                                        ; $75ee: $3e $79
	db $d3                                           ; $75f0: $d3
	sub e                                            ; $75f1: $93
	di                                               ; $75f2: $f3
	and $00                                          ; $75f3: $e6 $00
	ld a, h                                          ; $75f5: $7c
	ld e, l                                          ; $75f6: $5d
	rst FarCall                                          ; $75f7: $f7
	ei                                               ; $75f8: $fb
	db $fd                                           ; $75f9: $fd
	sbc $ff                                          ; $75fa: $de $ff
	ld a, a                                          ; $75fc: $7f
	ret nc                                           ; $75fd: $d0

Call_053_75fe:
jr_053_75fe:
	sbc [hl]                                         ; $75fe: $9e
	cp a                                             ; $75ff: $bf
	ld a, e                                          ; $7600: $7b
	ret nc                                           ; $7601: $d0

	sbc h                                            ; $7602: $9c
	jr jr_053_7609                                   ; $7603: $18 $04

jr_053_7605:
	ld a, [hl]                                       ; $7605: $7e
	ld a, e                                          ; $7606: $7b
	inc l                                            ; $7607: $2c
	rst SubAFromDE                                          ; $7608: $df

jr_053_7609:
	rst $38                                          ; $7609: $ff
	add b                                            ; $760a: $80
	ld a, [hl]                                       ; $760b: $7e
	db $fc                                           ; $760c: $fc

jr_053_760d:
	inc h                                            ; $760d: $24
	ld a, [hl]                                       ; $760e: $7e
	ld a, [hl]                                       ; $760f: $7e
	dec h                                            ; $7610: $25
	ld a, a                                          ; $7611: $7f
	dec [hl]                                         ; $7612: $35
	call nz, Call_053_6e8c                           ; $7613: $c4 $8c $6e
	ld e, $28                                        ; $7616: $1e $28
	ei                                               ; $7618: $fb
	jr c, jr_053_760d                                ; $7619: $38 $f2

	ld c, d                                          ; $761b: $4a
	ld [$3c7c], sp                                   ; $761c: $08 $7c $3c
	ld a, $7f                                        ; $761f: $3e $7f
	inc e                                            ; $7621: $1c
	ld l, a                                          ; $7622: $6f
	add hl, bc                                       ; $7623: $09
	nop                                              ; $7624: $00
	db $ed                                           ; $7625: $ed
	push af                                          ; $7626: $f5
	db $dd                                           ; $7627: $dd
	call $99cd                                       ; $7628: $cd $cd $99
	call c, $9c9c                                    ; $762b: $dc $9c $9c
	halt                                             ; $762e: $76
	xor $ee                                          ; $762f: $ee $ee
	ld [hl], a                                       ; $7631: $77
	rst SubAFromHL                                          ; $7632: $d7
	sub h                                            ; $7633: $94
	rst $38                                          ; $7634: $ff
	cp d                                             ; $7635: $ba
	jp c, Jump_053_5454                              ; $7636: $da $54 $54

	ld e, b                                          ; $7639: $58
	adc c                                            ; $763a: $89
	adc d                                            ; $763b: $8a
	sub a                                            ; $763c: $97
	ld h, a                                          ; $763d: $67
	ld h, a                                          ; $763e: $67
	sbc $ef                                          ; $763f: $de $ef
	sbc $ff                                          ; $7641: $de $ff
	sub l                                            ; $7643: $95
	ld e, b                                          ; $7644: $58
	ld [hl], c                                       ; $7645: $71
	jr nz, jr_053_768b                               ; $7646: $20 $43

	adc h                                            ; $7648: $8c
	ld sp, $86c3                                     ; $7649: $31 $c3 $86
	cp a                                             ; $764c: $bf
	cp [hl]                                          ; $764d: $be
	db $db                                           ; $764e: $db
	rst $38                                          ; $764f: $ff
	sub l                                            ; $7650: $95
	xor $bc                                          ; $7651: $ee $bc

jr_053_7653:
	ld hl, sp+$70                                    ; $7653: $f8 $70
	ldh [$80], a                                     ; $7655: $e0 $80
	ld bc, $1f0e                                     ; $7657: $01 $0e $1f
	ld a, a                                          ; $765a: $7f
	db $db                                           ; $765b: $db
	rst $38                                          ; $765c: $ff
	rst $38                                          ; $765d: $ff
	sbc c                                            ; $765e: $99
	ld bc, $1b06                                     ; $765f: $01 $06 $1b
	ld l, [hl]                                       ; $7662: $6e
	cp h                                             ; $7663: $bc
	ld a, c                                          ; $7664: $79
	ld [hl], e                                       ; $7665: $73
	add hl, de                                       ; $7666: $19
	sub h                                            ; $7667: $94
	di                                               ; $7668: $f3
	rst JumpTable                                          ; $7669: $c7
	adc a                                            ; $766a: $8f
	ld h, b                                          ; $766b: $60
	ldh [c], a                                       ; $766c: $e2
	call nz, $1c8c                                   ; $766d: $c4 $8c $1c
	inc a                                            ; $7670: $3c
	ld hl, sp-$07                                    ; $7671: $f8 $f9
	db $dd                                           ; $7673: $dd
	rst $38                                          ; $7674: $ff
	ld a, [hl]                                       ; $7675: $7e
	sub l                                            ; $7676: $95
	sub l                                            ; $7677: $95
	rst GetHLinHL                                          ; $7678: $cf
	rrca                                             ; $7679: $0f
	inc b                                            ; $767a: $04
	inc b                                            ; $767b: $04
	ld b, $46                                        ; $767c: $06 $46
	ld b, [hl]                                       ; $767e: $46
	adc $ce                                          ; $767f: $ce $ce

Jump_053_7681:
	sbc $dc                                          ; $7681: $de $dc
	rst $38                                          ; $7683: $ff
	rst SubAFromDE                                          ; $7684: $df
	ei                                               ; $7685: $fb
	sbc c                                            ; $7686: $99
	ld [hl], e                                       ; $7687: $73
	call Call_053_66ae                               ; $7688: $cd $ae $66

jr_053_768b:
	ld d, [hl]                                       ; $768b: $56
	ld d, [hl]                                       ; $768c: $56
	sbc $55                                          ; $768d: $de $55
	sbc h                                            ; $768f: $9c
	sub d                                            ; $7690: $92
	db $d3                                           ; $7691: $d3
	db $db                                           ; $7692: $db
	call c, $80fb                                    ; $7693: $dc $fb $80
	and d                                            ; $7696: $a2
	xor b                                            ; $7697: $a8
	db $e4                                           ; $7698: $e4
	call nc, Call_053_5054                           ; $7699: $d4 $54 $50
	ld d, b                                          ; $769c: $50
	ld a, b                                          ; $769d: $78
	ld [hl], c                                       ; $769e: $71
	ld [hl], e                                       ; $769f: $73
	dec sp                                           ; $76a0: $3b
	dec sp                                           ; $76a1: $3b
	cp e                                             ; $76a2: $bb
	cp a                                             ; $76a3: $bf
	cp a                                             ; $76a4: $bf
	xor a                                            ; $76a5: $af
	rst JumpTable                                          ; $76a6: $c7
	rst SubAFromBC                                          ; $76a7: $e7
	rst SubAFromBC                                          ; $76a8: $e7

jr_053_76a9:
	ld [hl], a                                       ; $76a9: $77
	ld a, l                                          ; $76aa: $7d
	ld a, [hl]                                       ; $76ab: $7e
	rst FarCall                                          ; $76ac: $f7
	rst $38                                          ; $76ad: $ff
	db $fc                                           ; $76ae: $fc
	cp h                                             ; $76af: $bc
	cp l                                             ; $76b0: $bd
	db $dd                                           ; $76b1: $dd
	adc $cf                                          ; $76b2: $ce $cf
	adc h                                            ; $76b4: $8c
	adc [hl]                                         ; $76b5: $8e
	add h                                            ; $76b6: $84
	ld a, a                                          ; $76b7: $7f
	reti                                             ; $76b8: $d9


	ld h, e                                          ; $76b9: $63
	rst $38                                          ; $76ba: $ff
	db $fd                                           ; $76bb: $fd
	rst SubAFromBC                                          ; $76bc: $e7
	db $fd                                           ; $76bd: $fd
	rst $38                                          ; $76be: $ff
	ld sp, hl                                        ; $76bf: $f9
	rst $38                                          ; $76c0: $ff
	rst SubAFromDE                                          ; $76c1: $df
	ld e, c                                          ; $76c2: $59
	ld e, e                                          ; $76c3: $5b
	ld e, e                                          ; $76c4: $5b
	ld b, e                                          ; $76c5: $43
	nop                                              ; $76c6: $00
	db $dd                                           ; $76c7: $dd
	ld h, b                                          ; $76c8: $60
	db $dd                                           ; $76c9: $dd
	jr nz, jr_053_76a9                               ; $76ca: $20 $dd

Call_053_76cc:
	add b                                            ; $76cc: $80
	db $dd                                           ; $76cd: $dd
	ret nz                                           ; $76ce: $c0

	ld sp, hl                                        ; $76cf: $f9
	ld h, l                                          ; $76d0: $65
	or a                                             ; $76d1: $b7
	ld a, a                                          ; $76d2: $7f
	ld [hl], c                                       ; $76d3: $71
	ld [hl], a                                       ; $76d4: $77
	db $fc                                           ; $76d5: $fc
	sbc l                                            ; $76d6: $9d
	rlca                                             ; $76d7: $07
	rrca                                             ; $76d8: $0f
	ld l, e                                          ; $76d9: $6b
	ld hl, sp+$7f                                    ; $76da: $f8 $7f
	jp hl                                            ; $76dc: $e9


	sub e                                            ; $76dd: $93
	rst $38                                          ; $76de: $ff
	ld a, a                                          ; $76df: $7f
	inc a                                            ; $76e0: $3c
	ld [hl], b                                       ; $76e1: $70
	add $bc                                          ; $76e2: $c6 $bc
	ei                                               ; $76e4: $fb
	nop                                              ; $76e5: $00
	add a                                            ; $76e6: $87

Call_053_76e7:
	ld h, b                                          ; $76e7: $60
	jr jr_053_774a                                   ; $76e8: $18 $60

	ld a, c                                          ; $76ea: $79
	ld d, d                                          ; $76eb: $52
	ld a, a                                          ; $76ec: $7f
	ld c, c                                          ; $76ed: $49
	sbc c                                            ; $76ee: $99
	sbc a                                            ; $76ef: $9f
	ccf                                              ; $76f0: $3f
	ld a, a                                          ; $76f1: $7f
	rst $38                                          ; $76f2: $ff
	rra                                              ; $76f3: $1f
	cp a                                             ; $76f4: $bf
	ld [hl], a                                       ; $76f5: $77
	db $f4                                           ; $76f6: $f4
	db $fd                                           ; $76f7: $fd
	reti                                             ; $76f8: $d9


	rst $38                                          ; $76f9: $ff
	ld sp, hl                                        ; $76fa: $f9
	rst SubAFromDE                                          ; $76fb: $df
	rst $38                                          ; $76fc: $ff
	sbc h                                            ; $76fd: $9c
	db $db                                           ; $76fe: $db
	db $dd                                           ; $76ff: $dd
	xor $7a                                          ; $7700: $ee $7a
	ld b, e                                          ; $7702: $43
	ld sp, hl                                        ; $7703: $f9
	rst SubAFromDE                                          ; $7704: $df
	cp $98                                           ; $7705: $fe $98
	rst SubAFromDE                                          ; $7707: $df
	rst AddAOntoHL                                          ; $7708: $ef
	ld h, a                                          ; $7709: $67
	scf                                              ; $770a: $37
	inc sp                                           ; $770b: $33
	sbc e                                            ; $770c: $9b
	ld [bc], a                                       ; $770d: $02
	ld [hl], d                                       ; $770e: $72
	rrca                                             ; $770f: $0f
	ei                                               ; $7710: $fb
	ld h, l                                          ; $7711: $65
	ld [$80dd], sp                                   ; $7712: $08 $dd $80
	sbc [hl]                                         ; $7715: $9e
	sub h                                            ; $7716: $94
	call c, $9db4                                    ; $7717: $dc $b4 $9d
	or $76                                           ; $771a: $f6 $76
	jp c, $97ff                                      ; $771c: $da $ff $97

	ld a, a                                          ; $771f: $7f
	sub b                                            ; $7720: $90
	sub b                                            ; $7721: $90

Call_053_7722:
	sub h                                            ; $7722: $94
	sbc e                                            ; $7723: $9b
	cp l                                             ; $7724: $bd
	or $f9                                           ; $7725: $f6 $f9
	halt                                             ; $7727: $76
	push bc                                          ; $7728: $c5
	add b                                            ; $7729: $80
	rst FarCall                                          ; $772a: $f7
	db $e3                                           ; $772b: $e3
	db $ed                                           ; $772c: $ed
	xor $e6                                          ; $772d: $ee $e6
	adc b                                            ; $772f: $88
	sub e                                            ; $7730: $93
	rst $38                                          ; $7731: $ff
	ld c, $0c                                        ; $7732: $0e $0c
	pop hl                                           ; $7734: $e1
	sbc l                                            ; $7735: $9d
	inc e                                            ; $7736: $1c
	rst $38                                          ; $7737: $ff
	rst $38                                          ; $7738: $ff
	cp $f1                                           ; $7739: $fe $f1
	di                                               ; $773b: $f3
	cp $e2                                           ; $773c: $fe $e2
	ldh [$7f], a                                     ; $773e: $e0 $7f
	add b                                            ; $7740: $80
	rra                                              ; $7741: $1f
	ld a, a                                          ; $7742: $7f
	ldh a, [rIE]                                     ; $7743: $f0 $ff
	xor a                                            ; $7745: $af
	rst $38                                          ; $7746: $ff
	ldh a, [rIE]                                     ; $7747: $f0 $ff
	ld a, [hl]                                       ; $7749: $7e

jr_053_774a:
	cp d                                             ; $774a: $ba
	ld a, a                                          ; $774b: $7f
	ld e, e                                          ; $774c: $5b
	add b                                            ; $774d: $80
	rst SubAFromDE                                          ; $774e: $df
	ld a, a                                          ; $774f: $7f
	di                                               ; $7750: $f3
	cpl                                              ; $7751: $2f
	db $d3                                           ; $7752: $d3
	pop af                                           ; $7753: $f1
	ld a, c                                          ; $7754: $79
	cp c                                             ; $7755: $b9
	ret c                                            ; $7756: $d8

	cp e                                             ; $7757: $bb
	ld e, $fc                                        ; $7758: $1e $fc
	ld a, b                                          ; $775a: $78
	ld l, h                                          ; $775b: $6c
	add h                                            ; $775c: $84
	ld b, h                                          ; $775d: $44
	and l                                            ; $775e: $a5
	ret nz                                           ; $775f: $c0

	pop af                                           ; $7760: $f1
	di                                               ; $7761: $f3
	rst SubAFromBC                                          ; $7762: $e7
	rst AddAOntoHL                                          ; $7763: $ef
	call c, Call_053_79f8                            ; $7764: $dc $f8 $79
	jp nz, $1e1f                                     ; $7767: $c2 $1f $1e

	inc a                                            ; $776a: $3c
	jr c, jr_053_77dd                                ; $776b: $38 $70

	adc c                                            ; $776d: $89
	ld h, e                                          ; $776e: $63
	add $3d                                          ; $776f: $c6 $3d
	call c, Call_053_7dfd                            ; $7771: $dc $fd $7d
	rst GetHLinHL                                          ; $7774: $cf
	rra                                              ; $7775: $1f
	nop                                              ; $7776: $00
	add sp, -$0a                                     ; $7777: $e8 $f6
	ld [hl], a                                       ; $7779: $77
	ld h, a                                          ; $777a: $67
	rst SubAFromBC                                          ; $777b: $e7
	ld a, [hl]                                       ; $777c: $7e
	nop                                              ; $777d: $00
	ld hl, sp-$0a                                    ; $777e: $f8 $f6
	ld sp, hl                                        ; $7780: $f9
	pop de                                           ; $7781: $d1
	db $db                                           ; $7782: $db
	db $db                                           ; $7783: $db
	ld [hl], a                                       ; $7784: $77
	sbc c                                            ; $7785: $99

jr_053_7786:
	ld a, a                                          ; $7786: $7f
	dec a                                            ; $7787: $3d
	rst SubAFromDE                                          ; $7788: $df
	ld a, [hl]                                       ; $7789: $7e
	sub d                                            ; $778a: $92
	ld l, h                                          ; $778b: $6c
	ld l, b                                          ; $778c: $68
	ld c, b                                          ; $778d: $48
	ld [$3810], sp                                   ; $778e: $08 $10 $38
	xor c                                            ; $7791: $a9
	cp c                                             ; $7792: $b9
	jp z, $aedb                                      ; $7793: $ca $db $ae

	push de                                          ; $7796: $d5
	cp $de                                           ; $7797: $fe $de
	rst AddAOntoHL                                          ; $7799: $ef
	sub a                                            ; $779a: $97
	cp $ce                                           ; $779b: $fe $ce
	adc [hl]                                         ; $779d: $8e
	add h                                            ; $779e: $84
	add h                                            ; $779f: $84
	rst $38                                          ; $77a0: $ff
	xor d                                            ; $77a1: $aa
	ld d, l                                          ; $77a2: $55
	ld [hl], e                                       ; $77a3: $73
	cp $64                                           ; $77a4: $fe $64
	ld h, a                                          ; $77a6: $67
	ld h, a                                          ; $77a7: $67
	ldh a, [$f9]                                     ; $77a8: $f0 $f9
	reti                                             ; $77aa: $d9


	jr nz, jr_053_7786                               ; $77ab: $20 $d9

	ret nz                                           ; $77ad: $c0

	ld l, d                                          ; $77ae: $6a
	bit 5, e                                         ; $77af: $cb $6b
	inc h                                            ; $77b1: $24
	rst SubAFromDE                                          ; $77b2: $df
	ld bc, $1f9d                                     ; $77b3: $01 $9d $1f
	ccf                                              ; $77b6: $3f
	ld a, e                                          ; $77b7: $7b
	and h                                            ; $77b8: $a4
	rst SubAFromDE                                          ; $77b9: $df
	rst $38                                          ; $77ba: $ff
	sub l                                            ; $77bb: $95
	sbc a                                            ; $77bc: $9f
	db $10                                           ; $77bd: $10
	ld hl, $5e47                                     ; $77be: $21 $47 $5e

Jump_053_77c1:
	cp h                                             ; $77c1: $bc
	ld sp, hl                                        ; $77c2: $f9
	di                                               ; $77c3: $f3
	sbc a                                            ; $77c4: $9f

Jump_053_77c5:
	cp $75                                           ; $77c5: $fe $75
	or e                                             ; $77c7: $b3
	sbc $ff                                          ; $77c8: $de $ff
	sbc d                                            ; $77ca: $9a
	ld b, b                                          ; $77cb: $40
	add b                                            ; $77cc: $80
	dec b                                            ; $77cd: $05
	ld c, e                                          ; $77ce: $4b
	sub a                                            ; $77cf: $97
	ld a, e                                          ; $77d0: $7b
	and $7b                                          ; $77d1: $e6 $7b
	ldh [$dc], a                                     ; $77d3: $e0 $dc
	rst $38                                          ; $77d5: $ff
	sbc h                                            ; $77d6: $9c
	rra                                              ; $77d7: $1f
	jr nz, jr_053_781a                               ; $77d8: $20 $40

	call c, $d880                                    ; $77da: $dc $80 $d8

jr_053_77dd:
	rst $38                                          ; $77dd: $ff
	ld h, d                                          ; $77de: $62
	ret nz                                           ; $77df: $c0

	dec bc                                           ; $77e0: $0b
	ldh a, [$9d]                                     ; $77e1: $f0 $9d
	adc b                                            ; $77e3: $88
	call c, $eedc                                    ; $77e4: $dc $dc $ee
	ld h, a                                          ; $77e7: $67
	ldh a, [$9b]                                     ; $77e8: $f0 $9b
	or $ff                                           ; $77ea: $f6 $ff
	ld bc, $dd6e                                     ; $77ec: $01 $6e $dd
	ld l, a                                          ; $77ef: $6f
	ld a, a                                          ; $77f0: $7f
	dec l                                            ; $77f1: $2d
	ei                                               ; $77f2: $fb
	ld a, [hl]                                       ; $77f3: $7e
	add l                                            ; $77f4: $85
	ld a, a                                          ; $77f5: $7f
	rst AddAOntoHL                                          ; $77f6: $ef
	ld [hl], l                                       ; $77f7: $75
	ld a, b                                          ; $77f8: $78

jr_053_77f9:
	sbc l                                            ; $77f9: $9d
	and $f2                                          ; $77fa: $e6 $f2
	ld l, a                                          ; $77fc: $6f
	sbc $df                                          ; $77fd: $de $df
	ld e, h                                          ; $77ff: $5c
	sbc h                                            ; $7800: $9c
	call c, $07fe                                    ; $7801: $dc $fe $07
	sbc $ff                                          ; $7804: $de $ff
	sbc $60                                          ; $7806: $de $60
	sbc [hl]                                         ; $7808: $9e
	db $fc                                           ; $7809: $fc
	ld a, d                                          ; $780a: $7a
	ld a, l                                          ; $780b: $7d
	sbc d                                            ; $780c: $9a
	ld bc, $7cf1                                     ; $780d: $01 $f1 $7c
	ccf                                              ; $7810: $3f
	inc bc                                           ; $7811: $03
	ld a, d                                          ; $7812: $7a
	add a                                            ; $7813: $87
	sbc [hl]                                         ; $7814: $9e
	ldh [$f9], a                                     ; $7815: $e0 $f9
	sub a                                            ; $7817: $97
	db $db                                           ; $7818: $db
	ld a, d                                          ; $7819: $7a

jr_053_781a:
	ld hl, sp-$10                                    ; $781a: $f8 $f0
	ldh a, [$60]                                     ; $781c: $f0 $60
	ld bc, $6703                                     ; $781e: $01 $03 $67
	rst AddAOntoHL                                          ; $7821: $ef
	sub d                                            ; $7822: $92
	rst FarCall                                          ; $7823: $f7
	ld [hl], a                                       ; $7824: $77
	scf                                              ; $7825: $37
	dec [hl]                                         ; $7826: $35
	dec d                                            ; $7827: $15
	sub d                                            ; $7828: $92
	ret nz                                           ; $7829: $c0

	add sp, $09                                      ; $782a: $e8 $09
	ld bc, $0301                                     ; $782c: $01 $01 $03
	inc bc                                           ; $782f: $03
	ld a, e                                          ; $7830: $7b
	ld a, [hl+]                                      ; $7831: $2a
	adc a                                            ; $7832: $8f
	dec de                                           ; $7833: $1b
	daa                                              ; $7834: $27
	rst SubAFromHL                                          ; $7835: $d7
	push de                                          ; $7836: $d5
	jr nz, jr_053_77f9                               ; $7837: $20 $c0

	or b                                             ; $7839: $b0
	nop                                              ; $783a: $00
	sbc h                                            ; $783b: $9c
	ld a, $f4                                        ; $783c: $3e $f4
	ldh a, [$e0]                                     ; $783e: $f0 $e0
	ldh [rLCDC], a                                   ; $7840: $e0 $40
	nop                                              ; $7842: $00
	db $db                                           ; $7843: $db
	ld a, a                                          ; $7844: $7f
	rst SubAFromDE                                          ; $7845: $df
	rst $38                                          ; $7846: $ff
	ld l, d                                          ; $7847: $6a
	ldh [$7f], a                                     ; $7848: $e0 $7f
	ld b, b                                          ; $784a: $40
	ld l, b                                          ; $784b: $68
	ld e, l                                          ; $784c: $5d
	ld sp, hl                                        ; $784d: $f9
	sbc [hl]                                         ; $784e: $9e
	ld d, l                                          ; $784f: $55
	ld a, e                                          ; $7850: $7b
	db $ec                                           ; $7851: $ec
	sbc [hl]                                         ; $7852: $9e
	ret nz                                           ; $7853: $c0

	ld a, e                                          ; $7854: $7b
	ld a, a                                          ; $7855: $7f
	ld e, e                                          ; $7856: $5b
	ldh a, [$73]                                     ; $7857: $f0 $73
	ret c                                            ; $7859: $d8

	pop af                                           ; $785a: $f1
	reti                                             ; $785b: $d9


	ldh [rOCPS], a                                   ; $785c: $e0 $6a
	add $7f                                          ; $785e: $c6 $7f
	sub l                                            ; $7860: $95
	ld l, d                                          ; $7861: $6a
	cp [hl]                                          ; $7862: $be
	sub a                                            ; $7863: $97
	ccf                                              ; $7864: $3f
	scf                                              ; $7865: $37
	ld h, [hl]                                       ; $7866: $66
	ld b, h                                          ; $7867: $44
	ld b, h                                          ; $7868: $44
	ld b, b                                          ; $7869: $40
	nop                                              ; $786a: $00
	rst $38                                          ; $786b: $ff
	ld h, a                                          ; $786c: $67
	ld hl, sp-$21                                    ; $786d: $f8 $df
	rst FarCall                                          ; $786f: $f7
	sbc c                                            ; $7870: $99
	db $ed                                           ; $7871: $ed

Call_053_7872:
	xor a                                            ; $7872: $af
	sbc a                                            ; $7873: $9f
	inc a                                            ; $7874: $3c
	rst $38                                          ; $7875: $ff
	cp $7b                                           ; $7876: $fe $7b
	ld hl, sp-$76                                    ; $7878: $f8 $8a
	xor l                                            ; $787a: $ad
	adc l                                            ; $787b: $8d
	ld e, $7e                                        ; $787c: $1e $7e
	rst $38                                          ; $787e: $ff
	rst $38                                          ; $787f: $ff
	di                                               ; $7880: $f3
	rst $38                                          ; $7881: $ff
	ccf                                              ; $7882: $3f
	rra                                              ; $7883: $1f
	rlca                                             ; $7884: $07
	dec bc                                           ; $7885: $0b
	dec bc                                           ; $7886: $0b
	add b                                            ; $7887: $80
	sub b                                            ; $7888: $90
	ld b, b                                          ; $7889: $40
	jr nz, @+$21                                     ; $788a: $20 $1f

	rlca                                             ; $788c: $07
	rrca                                             ; $788d: $0f
	rrca                                             ; $788e: $0f
	ld c, [hl]                                       ; $788f: $4e
	call nc, $fc7b                                   ; $7890: $d4 $7b $fc
	sbc [hl]                                         ; $7893: $9e
	sbc a                                            ; $7894: $9f
	ld l, e                                          ; $7895: $6b
	ldh a, [$7b]                                     ; $7896: $f0 $7b
	adc [hl]                                         ; $7898: $8e
	ld [hl], e                                       ; $7899: $73
	ldh a, [$74]                                     ; $789a: $f0 $74
	or [hl]                                          ; $789c: $b6
	ld l, c                                          ; $789d: $69
	rra                                              ; $789e: $1f
	ld [hl], a                                       ; $789f: $77
	rst FarCall                                          ; $78a0: $f7
	rst SubAFromDE                                          ; $78a1: $df
	xor $9d                                          ; $78a2: $ee $9d
	call z, Call_053_5f80                            ; $78a4: $cc $80 $5f
	ret nc                                           ; $78a7: $d0

	sbc l                                            ; $78a8: $9d
	inc c                                            ; $78a9: $0c
	ld hl, sp-$22                                    ; $78aa: $f8 $de
	ld l, a                                          ; $78ac: $6f
	ld a, [hl]                                       ; $78ad: $7e
	ret nc                                           ; $78ae: $d0

	ld a, [hl]                                       ; $78af: $7e
	xor $fc                                          ; $78b0: $ee $fc
	ld a, a                                          ; $78b2: $7f
	ld [hl], $7d                                     ; $78b3: $36 $7d
	xor [hl]                                         ; $78b5: $ae
	ld [hl], e                                       ; $78b6: $73
	or c                                             ; $78b7: $b1
	ld a, [hl]                                       ; $78b8: $7e
	ld h, d                                          ; $78b9: $62
	ld h, a                                          ; $78ba: $67
	rst SubAFromDE                                          ; $78bb: $df
	sbc [hl]                                         ; $78bc: $9e
	rra                                              ; $78bd: $1f
	call c, $9dff                                    ; $78be: $dc $ff $9d
	inc bc                                           ; $78c1: $03
	rst $38                                          ; $78c2: $ff
	ld a, e                                          ; $78c3: $7b
	ld h, b                                          ; $78c4: $60
	sbc $01                                          ; $78c5: $de $01
	sbc b                                            ; $78c7: $98
	ld [bc], a                                       ; $78c8: $02
	cp $fe                                           ; $78c9: $fe $fe
	db $fc                                           ; $78cb: $fc
	ldh [$c0], a                                     ; $78cc: $e0 $c0
	ret nz                                           ; $78ce: $c0

	ld [hl], h                                       ; $78cf: $74
	add $f9                                          ; $78d0: $c6 $f9
	ld a, e                                          ; $78d2: $7b
	push bc                                          ; $78d3: $c5
	sbc e                                            ; $78d4: $9b
	dec c                                            ; $78d5: $0d
	inc bc                                           ; $78d6: $03
	nop                                              ; $78d7: $00
	inc c                                            ; $78d8: $0c
	db $fd                                           ; $78d9: $fd
	sbc [hl]                                         ; $78da: $9e
	ld b, $77                                        ; $78db: $06 $77
	dec a                                            ; $78dd: $3d
	sbc l                                            ; $78de: $9d
	call nz, $6d83                                   ; $78df: $c4 $83 $6d
	rst FarCall                                          ; $78e2: $f7
	sbc l                                            ; $78e3: $9d
	jr nz, jr_053_7946                               ; $78e4: $20 $60

	ld a, [$0493]                                    ; $78e6: $fa $93 $04
	ld [hl], d                                       ; $78e9: $72
	ld [hl], d                                       ; $78ea: $72
	ld h, d                                          ; $78eb: $62
	ldh [c], a                                       ; $78ec: $e2
	pop hl                                           ; $78ed: $e1
	and c                                            ; $78ee: $a1
	ld bc, $1f03                                     ; $78ef: $01 $03 $1f
	rra                                              ; $78f2: $1f
	ccf                                              ; $78f3: $3f
	halt                                             ; $78f4: $76
	inc b                                            ; $78f5: $04
	rst SubAFromDE                                          ; $78f6: $df
	ld a, a                                          ; $78f7: $7f
	sbc d                                            ; $78f8: $9a
	ccf                                              ; $78f9: $3f
	cp a                                             ; $78fa: $bf
	rst SubAFromDE                                          ; $78fb: $df
	rst SubAFromDE                                          ; $78fc: $df
	ld l, l                                          ; $78fd: $6d
	ld a, e                                          ; $78fe: $7b
	cp l                                             ; $78ff: $bd
	sbc d                                            ; $7900: $9a
	ldh [$60], a                                     ; $7901: $e0 $60
	jr nc, jr_053_7935                               ; $7903: $30 $30

	sbc d                                            ; $7905: $9a
	jp c, $9eff                                      ; $7906: $da $ff $9e

	cp a                                             ; $7909: $bf
	ld a, [$4099]                                    ; $790a: $fa $99 $40
	rst AddAOntoHL                                          ; $790d: $ef
	jp $e6c6                                         ; $790e: $c3 $c6 $e6


	db $fc                                           ; $7911: $fc
	ld a, d                                          ; $7912: $7a
	ret nz                                           ; $7913: $c0

	sbc e                                            ; $7914: $9b
	db $10                                           ; $7915: $10
	inc a                                            ; $7916: $3c
	jr c, jr_053_7931                                ; $7917: $38 $18

	ld e, [hl]                                       ; $7919: $5e
	rst JumpTable                                          ; $791a: $c7
	ld a, [hl]                                       ; $791b: $7e
	ld a, [hl+]                                      ; $791c: $2a
	ld h, $c0                                        ; $791d: $26 $c0
	sbc d                                            ; $791f: $9a
	nop                                              ; $7920: $00

Jump_053_7921:
	rlca                                             ; $7921: $07
	rra                                              ; $7922: $1f
	ld sp, $7947                                     ; $7923: $31 $47 $79
	xor e                                            ; $7926: $ab
	ld a, a                                          ; $7927: $7f
	adc [hl]                                         ; $7928: $8e
	sbc c                                            ; $7929: $99
	rrca                                             ; $792a: $0f
	jr nc, jr_053_796e                               ; $792b: $30 $41

	rlca                                             ; $792d: $07
	rra                                              ; $792e: $1f
	ld a, $6e                                        ; $792f: $3e $6e

jr_053_7931:
	rst AddAOntoHL                                          ; $7931: $ef
	rst SubAFromDE                                          ; $7932: $df
	rst $38                                          ; $7933: $ff
	sbc b                                            ; $7934: $98

jr_053_7935:
	rlca                                             ; $7935: $07
	pop hl                                           ; $7936: $e1
	rst $38                                          ; $7937: $ff
	ccf                                              ; $7938: $3f
	cp $f9                                           ; $7939: $fe $f9
	ret nz                                           ; $793b: $c0

	ld h, c                                          ; $793c: $61
	ret nz                                           ; $793d: $c0

	add [hl]                                         ; $793e: $86
	db $fd                                           ; $793f: $fd
	db $fc                                           ; $7940: $fc
	db $fd                                           ; $7941: $fd
	ld a, e                                          ; $7942: $7b
	rst FarCall                                          ; $7943: $f7
	rst GetHLinHL                                          ; $7944: $cf
	rra                                              ; $7945: $1f

jr_053_7946:
	ccf                                              ; $7946: $3f
	adc e                                            ; $7947: $8b
	ld a, [bc]                                       ; $7948: $0a
	add d                                            ; $7949: $82
	pop bc                                           ; $794a: $c1
	adc e                                            ; $794b: $8b
	set 1, e                                         ; $794c: $cb $cb
	db $eb                                           ; $794e: $eb
	rrca                                             ; $794f: $0f
	adc a                                            ; $7950: $8f
	adc a                                            ; $7951: $8f
	add a                                            ; $7952: $87
	rst GetHLinHL                                          ; $7953: $cf
	rst GetHLinHL                                          ; $7954: $cf
	rst AddAOntoHL                                          ; $7955: $ef
	rst AddAOntoHL                                          ; $7956: $ef
	nop                                              ; $7957: $00
	ld a, e                                          ; $7958: $7b
	ld [de], a                                       ; $7959: $12
	halt                                             ; $795a: $76
	reti                                             ; $795b: $d9


	ld [hl], a                                       ; $795c: $77
	rst SubAFromHL                                          ; $795d: $d7
	ld [hl], e                                       ; $795e: $73
	sub h                                            ; $795f: $94
	ld e, e                                          ; $7960: $5b
	ldh a, [$6e]                                     ; $7961: $f0 $6e
	db $fc                                           ; $7963: $fc
	ld c, e                                          ; $7964: $4b
	ldh a, [$9d]                                     ; $7965: $f0 $9d
	cp $01                                           ; $7967: $fe $01
	ld [hl], a                                       ; $7969: $77
	rst FarCall                                          ; $796a: $f7
	sbc [hl]                                         ; $796b: $9e
	cp $78                                           ; $796c: $fe $78

jr_053_796e:
	ld l, a                                          ; $796e: $6f
	ld l, d                                          ; $796f: $6a
	cp c                                             ; $7970: $b9
	sbc [hl]                                         ; $7971: $9e
	ld hl, sp+$6f                                    ; $7972: $f8 $6f
	or $6b                                           ; $7974: $f6 $6b
	ld sp, hl                                        ; $7976: $f9
	ld l, l                                          ; $7977: $6d
	ld c, l                                          ; $7978: $4d
	ld e, a                                          ; $7979: $5f
	ld sp, hl                                        ; $797a: $f9
	sbc $03                                          ; $797b: $de $03
	sbc h                                            ; $797d: $9c
	add c                                            ; $797e: $81
	rst $38                                          ; $797f: $ff
	rst $38                                          ; $7980: $ff
	ld [hl], l                                       ; $7981: $75
	or e                                             ; $7982: $b3
	sbc [hl]                                         ; $7983: $9e
	add e                                            ; $7984: $83
	ld a, e                                          ; $7985: $7b
	ldh a, [$df]                                     ; $7986: $f0 $df
	ld bc, $e09e                                     ; $7988: $01 $9e $e0
	ld [hl], c                                       ; $798b: $71
	pop de                                           ; $798c: $d1
	sbc e                                            ; $798d: $9b
	ld hl, sp-$20                                    ; $798e: $f8 $e0
	add b                                            ; $7990: $80
	ldh a, [$7b]                                     ; $7991: $f0 $7b
	dec de                                           ; $7993: $1b
	ld a, e                                          ; $7994: $7b
	ld sp, hl                                        ; $7995: $f9
	ld a, e                                          ; $7996: $7b
	ld e, $7d                                        ; $7997: $1e $7d
	ld c, [hl]                                       ; $7999: $4e
	ld a, a                                          ; $799a: $7f
	ld d, a                                          ; $799b: $57
	ld a, h                                          ; $799c: $7c
	ld h, h                                          ; $799d: $64
	rst $38                                          ; $799e: $ff
	ld a, h                                          ; $799f: $7c
	ld b, h                                          ; $79a0: $44
	rst SubAFromDE                                          ; $79a1: $df
	rrca                                             ; $79a2: $0f
	sub e                                            ; $79a3: $93
	rra                                              ; $79a4: $1f
	inc bc                                           ; $79a5: $03
	ld c, $3c                                        ; $79a6: $0e $3c
	ldh a, [c]                                       ; $79a8: $f2
	adc d                                            ; $79a9: $8a
	ccf                                              ; $79aa: $3f
	ret nz                                           ; $79ab: $c0

	adc e                                            ; $79ac: $8b
	ld bc, $1f07                                     ; $79ad: $01 $07 $1f
	ld a, d                                          ; $79b0: $7a
	db $d3                                           ; $79b1: $d3
	sub l                                            ; $79b2: $95
	pop hl                                           ; $79b3: $e1
	rlca                                             ; $79b4: $07
	and l                                            ; $79b5: $a5
	sub h                                            ; $79b6: $94
	sub h                                            ; $79b7: $94
	ld d, h                                          ; $79b8: $54
	ld d, d                                          ; $79b9: $52
	ld a, [$73cd]                                    ; $79ba: $fa $cd $73
	db $dd                                           ; $79bd: $dd
	ei                                               ; $79be: $fb
	rst SubAFromDE                                          ; $79bf: $df
	db $fd                                           ; $79c0: $fd
	sub c                                            ; $79c1: $91
	cp $8e                                           ; $79c2: $fe $8e
	ld l, b                                          ; $79c4: $68
	add sp, -$48                                     ; $79c5: $e8 $b8
	or a                                             ; $79c7: $b7
	ld d, a                                          ; $79c8: $57
	ld d, a                                          ; $79c9: $57
	scf                                              ; $79ca: $37
	inc [hl]                                         ; $79cb: $34
	sbc a                                            ; $79cc: $9f
	sbc a                                            ; $79cd: $9f
	rst GetHLinHL                                          ; $79ce: $cf
	call z, $ecde                                    ; $79cf: $cc $de $ec
	sbc e                                            ; $79d2: $9b
	rst AddAOntoHL                                          ; $79d3: $ef
	ld a, a                                          ; $79d4: $7f
	rst $38                                          ; $79d5: $ff
	ccf                                              ; $79d6: $3f
	sbc $ff                                          ; $79d7: $de $ff
	rst SubAFromDE                                          ; $79d9: $df
	db $fc                                           ; $79da: $fc
	ld a, a                                          ; $79db: $7f
	or a                                             ; $79dc: $b7
	halt                                             ; $79dd: $76
	ld l, l                                          ; $79de: $6d
	rst SubAFromDE                                          ; $79df: $df
	inc bc                                           ; $79e0: $03
	ld [hl], e                                       ; $79e1: $73
	di                                               ; $79e2: $f3
	sbc h                                            ; $79e3: $9c
	sbc a                                            ; $79e4: $9f
	rra                                              ; $79e5: $1f
	dec bc                                           ; $79e6: $0b
	ld [hl], e                                       ; $79e7: $73
	di                                               ; $79e8: $f3
	sbc h                                            ; $79e9: $9c
	ld h, b                                          ; $79ea: $60
	ldh [$f4], a                                     ; $79eb: $e0 $f4
	sbc $f8                                          ; $79ed: $de $f8
	rst SubAFromDE                                          ; $79ef: $df
	ldh a, [$df]                                     ; $79f0: $f0 $df
	sub b                                            ; $79f2: $90
	ld l, [hl]                                       ; $79f3: $6e
	ret nz                                           ; $79f4: $c0

	rst SubAFromDE                                          ; $79f5: $df
	ld h, b                                          ; $79f6: $60
	ld [hl], h                                       ; $79f7: $74

Call_053_79f8:
	ld e, l                                          ; $79f8: $5d
	sub d                                            ; $79f9: $92
	inc bc                                           ; $79fa: $03
	rlca                                             ; $79fb: $07
	ld b, $05                                        ; $79fc: $06 $05
	ld bc, $e0e0                                     ; $79fe: $01 $e0 $e0
	pop hl                                           ; $7a01: $e1
	pop hl                                           ; $7a02: $e1
	ldh [c], a                                       ; $7a03: $e2
	db $e4                                           ; $7a04: $e4
	ldh [$e1], a                                     ; $7a05: $e0 $e1
	ld [hl], h                                       ; $7a07: $74

Call_053_7a08:
	ld d, h                                          ; $7a08: $54
	ld [hl], h                                       ; $7a09: $74
	ld l, [hl]                                       ; $7a0a: $6e
	sbc e                                            ; $7a0b: $9b
	ld [hl], c                                       ; $7a0c: $71
	rst $38                                          ; $7a0d: $ff
	sbc a                                            ; $7a0e: $9f
	rrca                                             ; $7a0f: $0f
	ld a, d                                          ; $7a10: $7a
	ld h, c                                          ; $7a11: $61
	sbc [hl]                                         ; $7a12: $9e
	rst SubAFromDE                                          ; $7a13: $df
	reti                                             ; $7a14: $d9


	rst $38                                          ; $7a15: $ff
	sbc l                                            ; $7a16: $9d
	ld hl, sp-$0d                                    ; $7a17: $f8 $f3
	ld a, e                                          ; $7a19: $7b
	or a                                             ; $7a1a: $b7
	rst SubAFromHL                                          ; $7a1b: $d7
	rst $38                                          ; $7a1c: $ff
	sbc b                                            ; $7a1d: $98
	cp $7d                                           ; $7a1e: $fe $7d

Call_053_7a20:
	db $db                                           ; $7a20: $db
	add e                                            ; $7a21: $83
	rlca                                             ; $7a22: $07
	rst SubAFromDE                                          ; $7a23: $df
	cp a                                             ; $7a24: $bf
	halt                                             ; $7a25: $76
	db $db                                           ; $7a26: $db
	sbc [hl]                                         ; $7a27: $9e
	sbc a                                            ; $7a28: $9f
	ld h, h                                          ; $7a29: $64
	ld c, c                                          ; $7a2a: $49
	rst SubAFromDE                                          ; $7a2b: $df
	ldh [$6d], a                                     ; $7a2c: $e0 $6d
	db $d3                                           ; $7a2e: $d3
	ld h, h                                          ; $7a2f: $64
	ld e, c                                          ; $7a30: $59
	ld l, e                                          ; $7a31: $6b
	ld a, [$f00b]                                    ; $7a32: $fa $0b $f0
	sbc l                                            ; $7a35: $9d
	ld de, $75fe                                     ; $7a36: $11 $fe $75
	reti                                             ; $7a39: $d9


	ld a, a                                          ; $7a3a: $7f
	xor a                                            ; $7a3b: $af
	ld a, e                                          ; $7a3c: $7b
	or $9e                                           ; $7a3d: $f6 $9e
	db $10                                           ; $7a3f: $10
	ld l, l                                          ; $7a40: $6d
	ld b, e                                          ; $7a41: $43
	ld [hl], a                                       ; $7a42: $77
	rst SubAFromDE                                          ; $7a43: $df
	ld l, [hl]                                       ; $7a44: $6e
	and b                                            ; $7a45: $a0
	inc sp                                           ; $7a46: $33
	ldh a, [$7d]                                     ; $7a47: $f0 $7d
	ld h, c                                          ; $7a49: $61
	sbc $01                                          ; $7a4a: $de $01
	ld [hl], e                                       ; $7a4c: $73
	db $f4                                           ; $7a4d: $f4
	ld [hl], a                                       ; $7a4e: $77
	inc hl                                           ; $7a4f: $23
	add b                                            ; $7a50: $80
	add c                                            ; $7a51: $81
	adc a                                            ; $7a52: $8f
	ld a, e                                          ; $7a53: $7b
	rst SubAFromDE                                          ; $7a54: $df
	nop                                              ; $7a55: $00
	inc bc                                           ; $7a56: $03
	rrca                                             ; $7a57: $0f
	ccf                                              ; $7a58: $3f
	add b                                            ; $7a59: $80
	add a                                            ; $7a5a: $87
	inc a                                            ; $7a5b: $3c
	ldh [rIE], a                                     ; $7a5c: $e0 $ff
	db $fc                                           ; $7a5e: $fc
	ldh a, [$c0]                                     ; $7a5f: $f0 $c0
	rst SubAFromBC                                          ; $7a61: $e7
	ld a, c                                          ; $7a62: $79
	rst SubAFromBC                                          ; $7a63: $e7
	adc [hl]                                         ; $7a64: $8e
	ldh [$c6], a                                     ; $7a65: $e0 $c6
	call $f892                                       ; $7a67: $cd $92 $f8
	add [hl]                                         ; $7a6a: $86
	jr jr_053_7ade                                   ; $7a6b: $18 $71

	inc bc                                           ; $7a6d: $03
	ld bc, $9503                                     ; $7a6e: $01 $03 $95
	rrca                                             ; $7a71: $0f
	inc h                                            ; $7a72: $24
	adc c                                            ; $7a73: $89
	db $10                                           ; $7a74: $10
	jr nz, @+$43                                     ; $7a75: $20 $41

	add a                                            ; $7a77: $87
	rrca                                             ; $7a78: $0f
	rra                                              ; $7a79: $1f
	rra                                              ; $7a7a: $1f
	ld a, b                                          ; $7a7b: $78
	push de                                          ; $7a7c: $d5
	sbc b                                            ; $7a7d: $98
	cp $f8                                           ; $7a7e: $fe $f8

Call_053_7a80:
	ldh a, [$e0]                                     ; $7a80: $f0 $e0
	db $fd                                           ; $7a82: $fd
	cp $00                                           ; $7a83: $fe $00
	ld [hl], c                                       ; $7a85: $71
	inc a                                            ; $7a86: $3c
	ld a, a                                          ; $7a87: $7f
	db $e4                                           ; $7a88: $e4
	ld a, a                                          ; $7a89: $7f
	ld d, b                                          ; $7a8a: $50
	db $fd                                           ; $7a8b: $fd
	sub a                                            ; $7a8c: $97
	inc h                                            ; $7a8d: $24
	and h                                            ; $7a8e: $a4
	ld h, h                                          ; $7a8f: $64
	inc h                                            ; $7a90: $24
	sub h                                            ; $7a91: $94
	call nc, $edec                                   ; $7a92: $d4 $ec $ed
	db $dd                                           ; $7a95: $dd
	rst $38                                          ; $7a96: $ff
	ld a, l                                          ; $7a97: $7d
	halt                                             ; $7a98: $76
	sub e                                            ; $7a99: $93
	rra                                              ; $7a9a: $1f
	ld e, $e7                                        ; $7a9b: $1e $e7
	add b                                            ; $7a9d: $80
	nop                                              ; $7a9e: $00
	ld bc, $1400                                     ; $7a9f: $01 $00 $14
	ld [hl+], a                                      ; $7aa2: $22
	nop                                              ; $7aa3: $00
	jr jr_053_7b25                                   ; $7aa4: $18 $7f

	ld a, e                                          ; $7aa6: $7b
	ld l, l                                          ; $7aa7: $6d
	adc a                                            ; $7aa8: $8f
	db $e3                                           ; $7aa9: $e3
	pop bc                                           ; $7aaa: $c1
	ld b, b                                          ; $7aab: $40
	ccf                                              ; $7aac: $3f
	ld l, $06                                        ; $7aad: $2e $06
	dec b                                            ; $7aaf: $05
	ld l, b                                          ; $7ab0: $68
	ld b, $c0                                        ; $7ab1: $06 $c0
	nop                                              ; $7ab3: $00
	ret nz                                           ; $7ab4: $c0

	pop de                                           ; $7ab5: $d1
	ld sp, hl                                        ; $7ab6: $f9
	ld a, [$7a96]                                    ; $7ab7: $fa $96 $7a
	xor l                                            ; $7aba: $ad
	ld a, l                                          ; $7abb: $7d
	ld e, e                                          ; $7abc: $5b
	ld a, h                                          ; $7abd: $7c
	sbc b                                            ; $7abe: $98
	ld [hl], c                                       ; $7abf: $71
	inc de                                           ; $7ac0: $13
	ld a, c                                          ; $7ac1: $79
	dec bc                                           ; $7ac2: $0b
	ld [hl], c                                       ; $7ac3: $71
	db $10                                           ; $7ac4: $10
	sbc l                                            ; $7ac5: $9d
	inc bc                                           ; $7ac6: $03
	ld b, $76                                        ; $7ac7: $06 $76
	inc sp                                           ; $7ac9: $33
	sbc [hl]                                         ; $7aca: $9e
	inc bc                                           ; $7acb: $03
	halt                                             ; $7acc: $76
	jp $e0dd                                         ; $7acd: $c3 $dd $e0


	reti                                             ; $7ad0: $d9


	rst $38                                          ; $7ad1: $ff
	sbc b                                            ; $7ad2: $98
	cp h                                             ; $7ad3: $bc
	ld [hl], e                                       ; $7ad4: $73
	ld l, a                                          ; $7ad5: $6f
	rst SubAFromDE                                          ; $7ad6: $df
	cp a                                             ; $7ad7: $bf
	ld a, a                                          ; $7ad8: $7f
	ld a, h                                          ; $7ad9: $7c
	ld a, d                                          ; $7ada: $7a
	jp z, $d172                                      ; $7adb: $ca $72 $d1

jr_053_7ade:
	ld l, [hl]                                       ; $7ade: $6e
	push bc                                          ; $7adf: $c5
	sub a                                            ; $7ae0: $97
	ld a, $fd                                        ; $7ae1: $3e $fd
	ei                                               ; $7ae3: $fb
	db $f4                                           ; $7ae4: $f4
	ret nz                                           ; $7ae5: $c0

	add b                                            ; $7ae6: $80
	nop                                              ; $7ae7: $00
	ld b, b                                          ; $7ae8: $40
	ld a, e                                          ; $7ae9: $7b
	jp $757b                                         ; $7aea: $c3 $7b $75


	ld a, b                                          ; $7aed: $78
	ret z                                            ; $7aee: $c8

	rst $38                                          ; $7aef: $ff
	sub [hl]                                         ; $7af0: $96
	rlca                                             ; $7af1: $07
	ld a, b                                          ; $7af2: $78
	ld a, a                                          ; $7af3: $7f
	ld b, b                                          ; $7af4: $40
	ld a, a                                          ; $7af5: $7f
	add b                                            ; $7af6: $80
	ld h, b                                          ; $7af7: $60
	nop                                              ; $7af8: $00
	ld a, b                                          ; $7af9: $78
	ld h, h                                          ; $7afa: $64
	ld a, h                                          ; $7afb: $7c
	ld [hl], l                                       ; $7afc: $75
	push bc                                          ; $7afd: $c5
	or $9e                                           ; $7afe: $f6 $9e
	db $fc                                           ; $7b00: $fc
	ld [hl], h                                       ; $7b01: $74
	ld [hl], h                                       ; $7b02: $74
	sbc [hl]                                         ; $7b03: $9e
	rlca                                             ; $7b04: $07
	ld [hl], b                                       ; $7b05: $70

Call_053_7b06:
	xor b                                            ; $7b06: $a8
	ld e, a                                          ; $7b07: $5f
	rst SubAFromDE                                          ; $7b08: $df
	ld [hl], c                                       ; $7b09: $71
	ld a, a                                          ; $7b0a: $7f
	ei                                               ; $7b0b: $fb
	sub a                                            ; $7b0c: $97
	rrca                                             ; $7b0d: $0f
	ldh a, [$30]                                     ; $7b0e: $f0 $30
	ld a, $00                                        ; $7b10: $3e $00
	ldh a, [rP1]                                     ; $7b12: $f0 $00
	inc a                                            ; $7b14: $3c
	ld h, h                                          ; $7b15: $64
	rst AddAOntoHL                                          ; $7b16: $ef
	ld h, a                                          ; $7b17: $67

Call_053_7b18:
	add sp, $5b                                      ; $7b18: $e8 $5b
	pop de                                           ; $7b1a: $d1
	halt                                             ; $7b1b: $76
	and b                                            ; $7b1c: $a0
	ld hl, sp+$7a                                    ; $7b1d: $f8 $7a
	jp $be7e                                         ; $7b1f: $c3 $7e $be


	ld a, a                                          ; $7b22: $7f
	or e                                             ; $7b23: $b3
	ld a, a                                          ; $7b24: $7f

jr_053_7b25:
	ld bc, $e067                                     ; $7b25: $01 $67 $e0
	ld a, d                                          ; $7b28: $7a
	call z, $8e9b                                    ; $7b29: $cc $9b $8e
	db $fc                                           ; $7b2c: $fc
	ld sp, hl                                        ; $7b2d: $f9
	ei                                               ; $7b2e: $fb
	halt                                             ; $7b2f: $76
	cp h                                             ; $7b30: $bc
	sbc [hl]                                         ; $7b31: $9e
	ld [hl], b                                       ; $7b32: $70
	ld a, e                                          ; $7b33: $7b
	call nc, Call_053_64df                           ; $7b34: $d4 $df $64
	adc h                                            ; $7b37: $8c
	ret z                                            ; $7b38: $c8

	ret                                              ; $7b39: $c9


	rla                                              ; $7b3a: $17
	db $fc                                           ; $7b3b: $fc
	or b                                             ; $7b3c: $b0
	ld b, b                                          ; $7b3d: $40
	sbc a                                            ; $7b3e: $9f
	sbc a                                            ; $7b3f: $9f
	ccf                                              ; $7b40: $3f
	ld a, $78                                        ; $7b41: $3e $78
	ld h, e                                          ; $7b43: $63
	rst GetHLinHL                                          ; $7b44: $cf
	cp a                                             ; $7b45: $bf
	ccf                                              ; $7b46: $3f
	ld a, e                                          ; $7b47: $7b
	db $e3                                           ; $7b48: $e3
	rst JumpTable                                          ; $7b49: $c7
	rrca                                             ; $7b4a: $0f
	ld a, b                                          ; $7b4b: $78
	or b                                             ; $7b4c: $b0
	sbc e                                            ; $7b4d: $9b
	ret nz                                           ; $7b4e: $c0

	add h                                            ; $7b4f: $84
	inc e                                            ; $7b50: $1c
	jr c, jr_053_7bca                                ; $7b51: $38 $77

	ld c, l                                          ; $7b53: $4d
	ld a, e                                          ; $7b54: $7b
	inc [hl]                                         ; $7b55: $34
	call c, Call_053_75fe                            ; $7b56: $dc $fe $75
	rst JumpTable                                          ; $7b59: $c7
	db $dd                                           ; $7b5a: $dd
	ld bc, $fc92                                     ; $7b5b: $01 $92 $fc
	push af                                          ; $7b5e: $f5
	db $f4                                           ; $7b5f: $f4
	push af                                          ; $7b60: $f5
	rst FarCall                                          ; $7b61: $f7
	or [hl]                                          ; $7b62: $b6
	or h                                             ; $7b63: $b4
	or [hl]                                          ; $7b64: $b6
	rrca                                             ; $7b65: $0f
	ld c, $0e                                        ; $7b66: $0e $0e
	rrca                                             ; $7b68: $0f
	ld c, $de                                        ; $7b69: $0e $de
	ld c, h                                          ; $7b6b: $4c
	ld [hl], h                                       ; $7b6c: $74
	ld [hl], l                                       ; $7b6d: $75
	sbc e                                            ; $7b6e: $9b
	cp $10                                           ; $7b6f: $fe $10
	jr nc, jr_053_7bb2                               ; $7b71: $30 $3f

	ld [hl], a                                       ; $7b73: $77
	ld hl, sp-$65                                    ; $7b74: $f8 $9b
	db $10                                           ; $7b76: $10
	rra                                              ; $7b77: $1f
	rra                                              ; $7b78: $1f
	db $10                                           ; $7b79: $10
	ld l, a                                          ; $7b7a: $6f
	sbc e                                            ; $7b7b: $9b
	ld a, a                                          ; $7b7c: $7f
	ld e, d                                          ; $7b7d: $5a
	ei                                               ; $7b7e: $fb
	ld l, e                                          ; $7b7f: $6b
	ld sp, hl                                        ; $7b80: $f9
	halt                                             ; $7b81: $76
	sbc h                                            ; $7b82: $9c
	ld a, [$03de]                                    ; $7b83: $fa $de $03
	sbc $01                                          ; $7b86: $de $01
	ld a, e                                          ; $7b88: $7b
	db $d3                                           ; $7b89: $d3
	sbc $e1                                          ; $7b8a: $de $e1
	ld l, [hl]                                       ; $7b8c: $6e
	ret nz                                           ; $7b8d: $c0

	sbc [hl]                                         ; $7b8e: $9e
	rst SubAFromDE                                          ; $7b8f: $df
	ld [hl], b                                       ; $7b90: $70
	adc c                                            ; $7b91: $89
	sbc [hl]                                         ; $7b92: $9e
	rst AddAOntoHL                                          ; $7b93: $ef
	ld l, a                                          ; $7b94: $6f
	ld sp, hl                                        ; $7b95: $f9
	ld a, [hl]                                       ; $7b96: $7e
	db $f4                                           ; $7b97: $f4
	ld [hl], h                                       ; $7b98: $74
	db $ed                                           ; $7b99: $ed
	cp $9d                                           ; $7b9a: $fe $9d
	rst SubAFromBC                                          ; $7b9c: $e7
	add a                                            ; $7b9d: $87
	ld a, b                                          ; $7b9e: $78
	di                                               ; $7b9f: $f3
	sbc [hl]                                         ; $7ba0: $9e
	ccf                                              ; $7ba1: $3f
	ld a, d                                          ; $7ba2: $7a
	ld a, [$80de]                                    ; $7ba3: $fa $de $80
	rst $38                                          ; $7ba6: $ff
	sbc l                                            ; $7ba7: $9d
	ld b, b                                          ; $7ba8: $40
	ld [bc], a                                       ; $7ba9: $02
	ld l, [hl]                                       ; $7baa: $6e
	ld a, l                                          ; $7bab: $7d
	sub a                                            ; $7bac: $97
	add b                                            ; $7bad: $80
	pop hl                                           ; $7bae: $e1
	ret nz                                           ; $7baf: $c0

	ld a, a                                          ; $7bb0: $7f
	ld b, b                                          ; $7bb1: $40

jr_053_7bb2:
	nop                                              ; $7bb2: $00
	ld a, a                                          ; $7bb3: $7f
	ld a, b                                          ; $7bb4: $78
	ld [hl], h                                       ; $7bb5: $74
	pop de                                           ; $7bb6: $d1
	ld l, a                                          ; $7bb7: $6f
	sub [hl]                                         ; $7bb8: $96
	sbc [hl]                                         ; $7bb9: $9e
	ld bc, $e27b                                     ; $7bba: $01 $7b $e2
	ld a, d                                          ; $7bbd: $7a
	ret nz                                           ; $7bbe: $c0

	sbc [hl]                                         ; $7bbf: $9e
	ld a, a                                          ; $7bc0: $7f
	ld a, [$507f]                                    ; $7bc1: $fa $7f $50
	ld a, l                                          ; $7bc4: $7d
	ld [hl+], a                                      ; $7bc5: $22
	ld a, [hl]                                       ; $7bc6: $7e
	rrca                                             ; $7bc7: $0f
	ld a, a                                          ; $7bc8: $7f
	sbc d                                            ; $7bc9: $9a

jr_053_7bca:
	ld h, d                                          ; $7bca: $62
	jp hl                                            ; $7bcb: $e9


	ld a, a                                          ; $7bcc: $7f
	db $10                                           ; $7bcd: $10
	ld a, a                                          ; $7bce: $7f
	ld b, l                                          ; $7bcf: $45
	ld l, h                                          ; $7bd0: $6c
	dec a                                            ; $7bd1: $3d
	ld l, e                                          ; $7bd2: $6b
	ld l, [hl]                                       ; $7bd3: $6e

Call_053_7bd4:
jr_053_7bd4:
	ld a, e                                          ; $7bd4: $7b
	ld d, l                                          ; $7bd5: $55
	sbc h                                            ; $7bd6: $9c
	ldh a, [$3e]                                     ; $7bd7: $f0 $3e
	ldh a, [$5a]                                     ; $7bd9: $f0 $5a
	ret                                              ; $7bdb: $c9


	ld [hl], d                                       ; $7bdc: $72
	add hl, hl                                       ; $7bdd: $29
	ld h, e                                          ; $7bde: $63
	ldh a, [rOCPD]                                   ; $7bdf: $f0 $6b
	ld d, a                                          ; $7be1: $57
	ld e, a                                          ; $7be2: $5f
	ret nz                                           ; $7be3: $c0

	ld a, a                                          ; $7be4: $7f
	xor $9c                                          ; $7be5: $ee $9c
	db $fc                                           ; $7be7: $fc
	nop                                              ; $7be8: $00
	ld bc, $b07b                                     ; $7be9: $01 $7b $b0
	ld a, d                                          ; $7bec: $7a
	cp h                                             ; $7bed: $bc
	sbc [hl]                                         ; $7bee: $9e
	inc bc                                           ; $7bef: $03
	ld a, e                                          ; $7bf0: $7b
	ld a, d                                          ; $7bf1: $7a
	sub e                                            ; $7bf2: $93
	xor $14                                          ; $7bf3: $ee $14
	jr z, jr_053_7c47                                ; $7bf5: $28 $50

	ldh [$e0], a                                     ; $7bf7: $e0 $e0
	db $ec                                           ; $7bf9: $ec
	di                                               ; $7bfa: $f3
	inc de                                           ; $7bfb: $13
	rst AddAOntoHL                                          ; $7bfc: $ef
	rst SubAFromDE                                          ; $7bfd: $df
	cp a                                             ; $7bfe: $bf
	sbc $3f                                          ; $7bff: $de $3f
	sbc [hl]                                         ; $7c01: $9e
	inc a                                            ; $7c02: $3c
	ld a, e                                          ; $7c03: $7b
	db $e4                                           ; $7c04: $e4
	sbc l                                            ; $7c05: $9d
	rlca                                             ; $7c06: $07
	rrca                                             ; $7c07: $0f
	ld [hl], h                                       ; $7c08: $74
	ld d, l                                          ; $7c09: $55
	ld a, [hl]                                       ; $7c0a: $7e
	dec c                                            ; $7c0b: $0d
	ld a, d                                          ; $7c0c: $7a
	dec e                                            ; $7c0d: $1d
	ld a, a                                          ; $7c0e: $7f
	ld [hl], e                                       ; $7c0f: $73
	reti                                             ; $7c10: $d9


	rst $38                                          ; $7c11: $ff
	ld h, d                                          ; $7c12: $62
	add b                                            ; $7c13: $80
	rst SubAFromDE                                          ; $7c14: $df
	cp $dc                                           ; $7c15: $fe $dc
	db $fd                                           ; $7c17: $fd

Jump_053_7c18:
	sbc $01                                          ; $7c18: $de $01
	call c, $8c02                                    ; $7c1a: $dc $02 $8c
	or h                                             ; $7c1d: $b4
	rst SubAFromHL                                          ; $7c1e: $d7
	sub $c4                                          ; $7c1f: $d6 $c4
	rst JumpTable                                          ; $7c21: $c7
	rst JumpTable                                          ; $7c22: $c7
	rst SubAFromBC                                          ; $7c23: $e7
	rst AddAOntoHL                                          ; $7c24: $ef
	ld c, h                                          ; $7c25: $4c
	inc l                                            ; $7c26: $2c
	inc l                                            ; $7c27: $2c
	inc a                                            ; $7c28: $3c
	ccf                                              ; $7c29: $3f
	inc a                                            ; $7c2a: $3c
	rra                                              ; $7c2b: $1f
	ld a, [de]                                       ; $7c2c: $1a
	ld a, b                                          ; $7c2d: $78
	ld a, a                                          ; $7c2e: $7f
	ccf                                              ; $7c2f: $3f
	ld [hl], h                                       ; $7c30: $74
	ccf                                              ; $7c31: $3f
	sbc [hl]                                         ; $7c32: $9e
	rst $38                                          ; $7c33: $ff
	db $dd                                           ; $7c34: $dd
	jr nz, jr_053_7bd4                               ; $7c35: $20 $9d

	and b                                            ; $7c37: $a0
	ld b, b                                          ; $7c38: $40
	ld a, e                                          ; $7c39: $7b
	inc sp                                           ; $7c3a: $33
	ld c, e                                          ; $7c3b: $4b
	ret nz                                           ; $7c3c: $c0

	ld b, a                                          ; $7c3d: $47
	or b                                             ; $7c3e: $b0

jr_053_7c3f:
	ld sp, hl                                        ; $7c3f: $f9
	ld l, c                                          ; $7c40: $69
	add l                                            ; $7c41: $85
	ld d, d                                          ; $7c42: $52
	dec b                                            ; $7c43: $05
	scf                                              ; $7c44: $37
	ldh a, [$9e]                                     ; $7c45: $f0 $9e

jr_053_7c47:
	ld [bc], a                                       ; $7c47: $02
	ld l, c                                          ; $7c48: $69
	or a                                             ; $7c49: $b7
	sbc h                                            ; $7c4a: $9c
	inc de                                           ; $7c4b: $13
	dec bc                                           ; $7c4c: $0b
	inc b                                            ; $7c4d: $04
	ld l, h                                          ; $7c4e: $6c
	and e                                            ; $7c4f: $a3
	ld a, l                                          ; $7c50: $7d
	ld a, [bc]                                       ; $7c51: $0a
	sbc e                                            ; $7c52: $9b
	ld a, b                                          ; $7c53: $78
	ld h, b                                          ; $7c54: $60
	nop                                              ; $7c55: $00
	ld [hl], b                                       ; $7c56: $70
	ld a, d                                          ; $7c57: $7a
	jr z, jr_053_7cd0                                ; $7c58: $28 $76

	or c                                             ; $7c5a: $b1
	ld [hl], e                                       ; $7c5b: $73
	ld d, b                                          ; $7c5c: $50
	ld l, e                                          ; $7c5d: $6b
	db $d3                                           ; $7c5e: $d3
	ld h, e                                          ; $7c5f: $63
	bit 7, [hl]                                      ; $7c60: $cb $7e
	rst SubAFromDE                                          ; $7c62: $df
	ld a, c                                          ; $7c63: $79
	add b                                            ; $7c64: $80
	ld [hl], a                                       ; $7c65: $77
	ld sp, hl                                        ; $7c66: $f9
	ld h, e                                          ; $7c67: $63
	cp e                                             ; $7c68: $bb
	ld a, l                                          ; $7c69: $7d
	call z, $cf7e                                    ; $7c6a: $cc $7e $cf
	ld h, a                                          ; $7c6d: $67
	ret c                                            ; $7c6e: $d8

	ld a, [hl]                                       ; $7c6f: $7e
	or b                                             ; $7c70: $b0
	adc d                                            ; $7c71: $8a
	dec c                                            ; $7c72: $0d
	inc b                                            ; $7c73: $04
	dec b                                            ; $7c74: $05
	rlca                                             ; $7c75: $07
	rlca                                             ; $7c76: $07
	rst $38                                          ; $7c77: $ff
	ldh [c], a                                       ; $7c78: $e2
	ld sp, hl                                        ; $7c79: $f9
	ld hl, sp+$1c                                    ; $7c7a: $f8 $1c
	inc c                                            ; $7c7c: $0c
	inc e                                            ; $7c7d: $1c
	inc a                                            ; $7c7e: $3c
	rst $38                                          ; $7c7f: $ff
	ld bc, $0100                                     ; $7c80: $01 $00 $01
	add c                                            ; $7c83: $81
	ld bc, $2901                                     ; $7c84: $01 $01 $29
	ld a, d                                          ; $7c87: $7a
	ret c                                            ; $7c88: $d8

	ld [hl], d                                       ; $7c89: $72
	ld e, a                                          ; $7c8a: $5f
	jp c, Jump_053_7cff                              ; $7c8b: $da $ff $7c

	or h                                             ; $7c8e: $b4
	db $fd                                           ; $7c8f: $fd
	sbc e                                            ; $7c90: $9b
	jr nz, jr_053_7d12                               ; $7c91: $20 $7f

	ei                                               ; $7c93: $fb
	rst $38                                          ; $7c94: $ff
	ld a, c                                          ; $7c95: $79
	adc a                                            ; $7c96: $8f
	halt                                             ; $7c97: $76
	dec l                                            ; $7c98: $2d
	ld a, [hl]                                       ; $7c99: $7e
	ld l, b                                          ; $7c9a: $68
	ld [hl], d                                       ; $7c9b: $72
	jp c, $ff9e                                      ; $7c9c: $da $9e $ff

	ld a, c                                          ; $7c9f: $79
	and e                                            ; $7ca0: $a3
	ld a, [hl]                                       ; $7ca1: $7e
	add hl, hl                                       ; $7ca2: $29
	ld a, l                                          ; $7ca3: $7d
	and c                                            ; $7ca4: $a1
	sbc [hl]                                         ; $7ca5: $9e
	rst $38                                          ; $7ca6: $ff
	ld a, d                                          ; $7ca7: $7a
	db $d3                                           ; $7ca8: $d3
	ld a, l                                          ; $7ca9: $7d
	and d                                            ; $7caa: $a2
	ld a, b                                          ; $7cab: $78
	db $e4                                           ; $7cac: $e4
	ld b, a                                          ; $7cad: $47
	jr nz, jr_053_7c3f                               ; $7cae: $20 $8f

	rst $38                                          ; $7cb0: $ff
	cp a                                             ; $7cb1: $bf
	sbc a                                            ; $7cb2: $9f
	rst GetHLinHL                                          ; $7cb3: $cf
	rst JumpTable                                          ; $7cb4: $c7
	jp $e0e1                                         ; $7cb5: $c3 $e1 $e0


	nop                                              ; $7cb8: $00
	ld b, b                                          ; $7cb9: $40
	ld h, b                                          ; $7cba: $60
	jr nc, jr_053_7cf5                               ; $7cbb: $30 $38

	inc a                                            ; $7cbd: $3c
	ld e, $1f                                        ; $7cbe: $1e $1f
	sbc $fd                                          ; $7cc0: $de $fd
	db $dd                                           ; $7cc2: $dd
	ld sp, hl                                        ; $7cc3: $f9
	sbc [hl]                                         ; $7cc4: $9e
	ld hl, sp-$22                                    ; $7cc5: $f8 $de
	ld [bc], a                                       ; $7cc7: $02
	db $dd                                           ; $7cc8: $dd
	ld b, $8f                                        ; $7cc9: $06 $8f
	rlca                                             ; $7ccb: $07
	xor $f3                                          ; $7ccc: $ee $f3
	pop af                                           ; $7cce: $f1
	reti                                             ; $7ccf: $d9


jr_053_7cd0:
	rst AddAOntoHL                                          ; $7cd0: $ef
	cp l                                             ; $7cd1: $bd
	or l                                             ; $7cd2: $b5
	ld b, e                                          ; $7cd3: $43
	dec de                                           ; $7cd4: $1b
	add hl, de                                       ; $7cd5: $19
	add hl, de                                       ; $7cd6: $19
	ld sp, $6331                                     ; $7cd7: $31 $31 $63
	ld l, e                                          ; $7cda: $6b
	ld e, d                                          ; $7cdb: $5a
	ret c                                            ; $7cdc: $d8

	ld c, a                                          ; $7cdd: $4f
	nop                                              ; $7cde: $00
	rra                                              ; $7cdf: $1f
	ldh a, [$67]                                     ; $7ce0: $f0 $67
	sub b                                            ; $7ce2: $90
	ld h, a                                          ; $7ce3: $67
	db $e4                                           ; $7ce4: $e4
	inc bc                                           ; $7ce5: $03
	ldh a, [rHDMA3]                                  ; $7ce6: $f0 $53
	ldh a, [$9e]                                     ; $7ce8: $f0 $9e
	cp h                                             ; $7cea: $bc
	ld a, d                                          ; $7ceb: $7a
	add l                                            ; $7cec: $85
	sbc d                                            ; $7ced: $9a
	add b                                            ; $7cee: $80
	ldh a, [$80]                                     ; $7cef: $f0 $80
	add b                                            ; $7cf1: $80
	ld b, b                                          ; $7cf2: $40
	ld [hl], l                                       ; $7cf3: $75
	ld l, c                                          ; $7cf4: $69

jr_053_7cf5:
	xor $9d                                          ; $7cf5: $ee $9d
	ld bc, $791f                                     ; $7cf7: $01 $1f $79
	add c                                            ; $7cfa: $81
	ld e, h                                          ; $7cfb: $5c

Call_053_7cfc:
	ld b, d                                          ; $7cfc: $42
	ld a, l                                          ; $7cfd: $7d

Jump_053_7cfe:
	sub h                                            ; $7cfe: $94

Jump_053_7cff:
	ld a, l                                          ; $7cff: $7d
	jp nz, $fe7f                                     ; $7d00: $c2 $7f $fe

	ld e, b                                          ; $7d03: $58
	ld e, d                                          ; $7d04: $5a
	jp c, $9b07                                      ; $7d05: $da $07 $9b

	ld c, $1c                                        ; $7d08: $0e $1c
	inc c                                            ; $7d0a: $0c
	inc a                                            ; $7d0b: $3c
	sbc $0c                                          ; $7d0c: $de $0c
	sub c                                            ; $7d0e: $91
	inc a                                            ; $7d0f: $3c
	add hl, de                                       ; $7d10: $19
	add hl, bc                                       ; $7d11: $09

jr_053_7d12:
	cp c                                             ; $7d12: $b9
	add hl, sp                                       ; $7d13: $39
	jr c, jr_053_7d16                                ; $7d14: $38 $00

jr_053_7d16:
	add b                                            ; $7d16: $80
	ld [bc], a                                       ; $7d17: $02
	ld [hl], a                                       ; $7d18: $77
	add b                                            ; $7d19: $80
	nop                                              ; $7d1a: $00
	add b                                            ; $7d1b: $80
	add c                                            ; $7d1c: $81
	ld a, d                                          ; $7d1d: $7a
	cp b                                             ; $7d1e: $b8
	sub d                                            ; $7d1f: $92
	adc a                                            ; $7d20: $8f
	db $fc                                           ; $7d21: $fc
	ld hl, sp-$08                                    ; $7d22: $f8 $f8
	db $fc                                           ; $7d24: $fc
	db $fc                                           ; $7d25: $fc
	jp $8080                                         ; $7d26: $c3 $80 $80


	ccf                                              ; $7d29: $3f
	rst $38                                          ; $7d2a: $ff
	xor a                                            ; $7d2b: $af
	cpl                                              ; $7d2c: $2f
	ld a, d                                          ; $7d2d: $7a
	reti                                             ; $7d2e: $d9


	ld a, [hl]                                       ; $7d2f: $7e
	ld d, d                                          ; $7d30: $52
	ld a, [hl]                                       ; $7d31: $7e
	or l                                             ; $7d32: $b5
	sbc d                                            ; $7d33: $9a
	ld a, c                                          ; $7d34: $79
	ld b, $f8                                        ; $7d35: $06 $f8
	ret nz                                           ; $7d37: $c0

	ld a, a                                          ; $7d38: $7f
	ld a, b                                          ; $7d39: $78
	cp l                                             ; $7d3a: $bd
	sbc [hl]                                         ; $7d3b: $9e
	add a                                            ; $7d3c: $87
	ld a, d                                          ; $7d3d: $7a
	ld l, h                                          ; $7d3e: $6c
	ld a, d                                          ; $7d3f: $7a
	and b                                            ; $7d40: $a0
	sbc c                                            ; $7d41: $99
	ld bc, $01fe                                     ; $7d42: $01 $fe $01
	ld e, $03                                        ; $7d45: $1e $03
	ldh [$79], a                                     ; $7d47: $e0 $79
	and [hl]                                         ; $7d49: $a6
	rst SubAFromDE                                          ; $7d4a: $df
	rst $38                                          ; $7d4b: $ff
	sbc h                                            ; $7d4c: $9c
	pop hl                                           ; $7d4d: $e1
	db $fc                                           ; $7d4e: $fc
	rra                                              ; $7d4f: $1f
	halt                                             ; $7d50: $76
	ld d, b                                          ; $7d51: $50
	sbc e                                            ; $7d52: $9b
	rst GetHLinHL                                          ; $7d53: $cf
	scf                                              ; $7d54: $37
	ret                                              ; $7d55: $c9


	ld b, $75                                        ; $7d56: $06 $75
	scf                                              ; $7d58: $37
	sbc d                                            ; $7d59: $9a
	ldh a, [$f8]                                     ; $7d5a: $f0 $f8
	ld a, $ff                                        ; $7d5c: $3e $ff
	ldh [$de], a                                     ; $7d5e: $e0 $de
	ldh a, [$7f]                                     ; $7d60: $f0 $7f
	cp [hl]                                          ; $7d62: $be
	ld a, a                                          ; $7d63: $7f
	db $e4                                           ; $7d64: $e4
	sbc [hl]                                         ; $7d65: $9e
	rra                                              ; $7d66: $1f
	sbc $0f                                          ; $7d67: $de $0f
	sub c                                            ; $7d69: $91
	rlca                                             ; $7d6a: $07
	inc bc                                           ; $7d6b: $03
	ld bc, $7800                                     ; $7d6c: $01 $00 $78
	ld a, b                                          ; $7d6f: $78
	jr c, jr_053_7dab                                ; $7d70: $38 $39

	dec sp                                           ; $7d72: $3b
	dec de                                           ; $7d73: $1b
	dec d                                            ; $7d74: $15
	rla                                              ; $7d75: $17
	add a                                            ; $7d76: $87
	add a                                            ; $7d77: $87
	sbc $c7                                          ; $7d78: $de $c7
	ld a, l                                          ; $7d7a: $7d
	adc c                                            ; $7d7b: $89
	adc a                                            ; $7d7c: $8f
	db $ec                                           ; $7d7d: $ec
	ld b, l                                          ; $7d7e: $45
	call nz, Call_053_4fcf                           ; $7d7f: $c4 $cf $4f
	rst AddAOntoHL                                          ; $7d82: $ef
	rst AddAOntoHL                                          ; $7d83: $ef
	rst $38                                          ; $7d84: $ff
	rst $38                                          ; $7d85: $ff
	db $fd                                           ; $7d86: $fd
	db $fc                                           ; $7d87: $fc
	rst $38                                          ; $7d88: $ff
	ld hl, sp-$48                                    ; $7d89: $f8 $b8
	jr c, jr_053_7d9d                                ; $7d8b: $38 $10

	ld a, b                                          ; $7d8d: $78
	ld d, b                                          ; $7d8e: $50
	inc bc                                           ; $7d8f: $03
	nop                                              ; $7d90: $00
	ld d, e                                          ; $7d91: $53
	ldh a, [rSCX]                                    ; $7d92: $f0 $43
	nop                                              ; $7d94: $00
	db $dd                                           ; $7d95: $dd
	ld d, l                                          ; $7d96: $55
	sbc [hl]                                         ; $7d97: $9e
	ld d, h                                          ; $7d98: $54
	db $dd                                           ; $7d99: $dd
	ld b, h                                          ; $7d9a: $44
	sbc [hl]                                         ; $7d9b: $9e
	ld h, [hl]                                       ; $7d9c: $66

jr_053_7d9d:
	ld l, a                                          ; $7d9d: $6f
	or $9d                                           ; $7d9e: $f6 $9d
	ld b, e                                          ; $7da0: $43
	inc sp                                           ; $7da1: $33
	ld l, e                                          ; $7da2: $6b
	or $de                                           ; $7da3: $f6 $de
	inc sp                                           ; $7da5: $33
	rst SubAFromDE                                          ; $7da6: $df
	ld h, [hl]                                       ; $7da7: $66
	rst SubAFromDE                                          ; $7da8: $df
	ld d, l                                          ; $7da9: $55
	db $dd                                           ; $7daa: $dd

jr_053_7dab:
	ld [hl], a                                       ; $7dab: $77
	ld b, a                                          ; $7dac: $47
	or $9e                                           ; $7dad: $f6 $9e
	ld d, a                                          ; $7daf: $57
	ld [hl], a                                       ; $7db0: $77
	or $9e                                           ; $7db1: $f6 $9e
	inc [hl]                                         ; $7db3: $34
	ld h, a                                          ; $7db4: $67
	db $ec                                           ; $7db5: $ec
	rst SubAFromDE                                          ; $7db6: $df
	ld [hl+], a                                      ; $7db7: $22
	sbc e                                            ; $7db8: $9b
	ld b, [hl]                                       ; $7db9: $46
	ld h, [hl]                                       ; $7dba: $66
	ld d, l                                          ; $7dbb: $55
	ld d, d                                          ; $7dbc: $52
	db $db                                           ; $7dbd: $db
	ld [hl+], a                                      ; $7dbe: $22
	sbc [hl]                                         ; $7dbf: $9e
	ld h, $57                                        ; $7dc0: $26 $57
	or $9b                                           ; $7dc2: $f6 $9b
	ld d, l                                          ; $7dc4: $55
	ld [hl+], a                                      ; $7dc5: $22
	ld [hl+], a                                      ; $7dc6: $22
	ld [hl], d                                       ; $7dc7: $72
	ld a, e                                          ; $7dc8: $7b
	ldh [c], a                                       ; $7dc9: $e2
	sbc [hl]                                         ; $7dca: $9e
	ld b, l                                          ; $7dcb: $45
	sbc $55                                          ; $7dcc: $de $55
	ld a, e                                          ; $7dce: $7b
	or $9a                                           ; $7dcf: $f6 $9a
	ld [hl], d                                       ; $7dd1: $72
	ld [hl+], a                                      ; $7dd2: $22
	ld [hl+], a                                      ; $7dd3: $22
	ld d, l                                          ; $7dd4: $55
	ld d, l                                          ; $7dd5: $55
	ld a, [hl]                                       ; $7dd6: $7e
	adc b                                            ; $7dd7: $88
	rst SubAFromDE                                          ; $7dd8: $df
	rlca                                             ; $7dd9: $07
	sub c                                            ; $7dda: $91
	ld b, b                                          ; $7ddb: $40
	ld [hl], b                                       ; $7ddc: $70
	jr c, jr_053_7e5e                                ; $7ddd: $38 $7f

	ld a, h                                          ; $7ddf: $7c
	ld a, b                                          ; $7de0: $78
	ld hl, sp-$08                                    ; $7de1: $f8 $f8
	cp a                                             ; $7de3: $bf
	adc a                                            ; $7de4: $8f
	rst JumpTable                                          ; $7de5: $c7
	add b                                            ; $7de6: $80
	add e                                            ; $7de7: $83
	add a                                            ; $7de8: $87
	sbc $fe                                          ; $7de9: $de $fe
	sbc d                                            ; $7deb: $9a
	ld a, c                                          ; $7dec: $79
	inc a                                            ; $7ded: $3c
	ccf                                              ; $7dee: $3f
	ld e, a                                          ; $7def: $5f
	daa                                              ; $7df0: $27
	cp $92                                           ; $7df1: $fe $92
	add b                                            ; $7df3: $80
	ret nz                                           ; $7df4: $c0

	ret nz                                           ; $7df5: $c0

	add b                                            ; $7df6: $80
	ret c                                            ; $7df7: $d8

	nop                                              ; $7df8: $00
	ld h, b                                          ; $7df9: $60
	ld [hl], b                                       ; $7dfa: $70
	ldh a, [$f0]                                     ; $7dfb: $f0 $f0

Call_053_7dfd:
	ldh [$f3], a                                     ; $7dfd: $e0 $f3
	rst $38                                          ; $7dff: $ff
	ldh [$d2], a                                     ; $7e00: $e0 $d2
	sbc [hl]                                         ; $7e02: $9e
	ld bc, $f84f                                     ; $7e03: $01 $4f $f8
	sbc [hl]                                         ; $7e06: $9e
	ld a, h                                          ; $7e07: $7c
	ld l, e                                          ; $7e08: $6b
	ret nz                                           ; $7e09: $c0

	sub l                                            ; $7e0a: $95
	ld a, h                                          ; $7e0b: $7c
	add e                                            ; $7e0c: $83

Call_053_7e0d:
	rrca                                             ; $7e0d: $0f
	rrca                                             ; $7e0e: $0f
	rlca                                             ; $7e0f: $07
	rlca                                             ; $7e10: $07
	inc bc                                           ; $7e11: $03
	inc bc                                           ; $7e12: $03
	ld bc, $67f1                                     ; $7e13: $01 $f1 $67
	ld hl, sp-$21                                    ; $7e16: $f8 $df
	rst $38                                          ; $7e18: $ff
	sub c                                            ; $7e19: $91
	ei                                               ; $7e1a: $fb
	ld sp, hl                                        ; $7e1b: $f9
	ld sp, hl                                        ; $7e1c: $f9
	ld hl, sp-$18                                    ; $7e1d: $f8 $e8
	ldh [$3f], a                                     ; $7e1f: $e0 $3f
	ld a, l                                          ; $7e21: $7d
	ld e, c                                          ; $7e22: $59
	ld e, c                                          ; $7e23: $59
	add hl, bc                                       ; $7e24: $09
	add b                                            ; $7e25: $80
	ldh [$a0], a                                     ; $7e26: $e0 $a0
	call c, $97ff                                    ; $7e28: $dc $ff $97
	ld a, a                                          ; $7e2b: $7f
	rrca                                             ; $7e2c: $0f
	rlca                                             ; $7e2d: $07
	rst $38                                          ; $7e2e: $ff
	rst $38                                          ; $7e2f: $ff
	db $db                                           ; $7e30: $db
	sub e                                            ; $7e31: $93
	inc h                                            ; $7e32: $24
	cp $dc                                           ; $7e33: $fe $dc
	rst $38                                          ; $7e35: $ff
	sbc [hl]                                         ; $7e36: $9e

jr_053_7e37:
	ld sp, hl                                        ; $7e37: $f9
	ld l, a                                          ; $7e38: $6f
	ld [$5d80], a                                    ; $7e39: $ea $80 $5d
	ld de, $0701                                     ; $7e3c: $11 $01 $07
	pop de                                           ; $7e3f: $d1
	sub d                                            ; $7e40: $92
	and d                                            ; $7e41: $a2
	ld h, h                                          ; $7e42: $64
	xor b                                            ; $7e43: $a8
	ld sp, $0723                                     ; $7e44: $31 $23 $07
	rst $38                                          ; $7e47: $ff
	cp $fe                                           ; $7e48: $fe $fe
	db $fc                                           ; $7e4a: $fc
	cp b                                             ; $7e4b: $b8
	jr nc, jr_053_7e6e                               ; $7e4c: $30 $20

	nop                                              ; $7e4e: $00
	dec bc                                           ; $7e4f: $0b
	ld d, $1b                                        ; $7e50: $16 $1b
	daa                                              ; $7e52: $27
	ld a, $7f                                        ; $7e53: $3e $7f
	ld e, l                                          ; $7e55: $5d
	ld e, $0c                                        ; $7e56: $1e $0c
	add hl, de                                       ; $7e58: $19
	scf                                              ; $7e59: $37
	adc c                                            ; $7e5a: $89
	ld a, a                                          ; $7e5b: $7f
	ei                                               ; $7e5c: $fb
	ldh [c], a                                       ; $7e5d: $e2

jr_053_7e5e:
	and $e5                                          ; $7e5e: $e6 $e5
	add b                                            ; $7e60: $80
	cp c                                             ; $7e61: $b9
	ld [hl], a                                       ; $7e62: $77
	rst AddAOntoHL                                          ; $7e63: $ef
	sub $a8                                          ; $7e64: $d6 $a8
	ld d, b                                          ; $7e66: $50
	and b                                            ; $7e67: $a0
	ld a, a                                          ; $7e68: $7f
	rst JumpTable                                          ; $7e69: $c7
	adc [hl]                                         ; $7e6a: $8e
	rra                                              ; $7e6b: $1f
	add hl, sp                                       ; $7e6c: $39
	ld [hl], a                                       ; $7e6d: $77

jr_053_7e6e:
	rst AddAOntoHL                                          ; $7e6e: $ef
	rst SubAFromDE                                          ; $7e6f: $df
	ld a, a                                          ; $7e70: $7f
	sbc $ff                                          ; $7e71: $de $ff
	sbc l                                            ; $7e73: $9d
	ccf                                              ; $7e74: $3f
	rlca                                             ; $7e75: $07
	ld a, e                                          ; $7e76: $7b
	cp b                                             ; $7e77: $b8
	sbc e                                            ; $7e78: $9b
	add b                                            ; $7e79: $80
	nop                                              ; $7e7a: $00
	ret nz                                           ; $7e7b: $c0

	ld hl, sp-$22                                    ; $7e7c: $f8 $de
	rst $38                                          ; $7e7e: $ff
	sub a                                            ; $7e7f: $97
	ld c, b                                          ; $7e80: $48
	ldh [c], a                                       ; $7e81: $e2
	pop af                                           ; $7e82: $f1
	ld hl, sp-$04                                    ; $7e83: $f8 $fc
	cp $ff                                           ; $7e85: $fe $ff
	ccf                                              ; $7e87: $3f
	ld a, e                                          ; $7e88: $7b
	ld [$9b7f], a                                    ; $7e89: $ea $7f $9b
	sub h                                            ; $7e8c: $94
	inc bc                                           ; $7e8d: $03
	pop bc                                           ; $7e8e: $c1
	ld hl, sp+$18                                    ; $7e8f: $f8 $18
	inc b                                            ; $7e91: $04
	ld [hl+], a                                      ; $7e92: $22
	or d                                             ; $7e93: $b2
	ld e, c                                          ; $7e94: $59
	xor l                                            ; $7e95: $ad
	ld e, e                                          ; $7e96: $5b
	or a                                             ; $7e97: $b7
	sbc $ff                                          ; $7e98: $de $ff
	sbc d                                            ; $7e9a: $9a

Call_053_7e9b:
	rst SubAFromDE                                          ; $7e9b: $df
	rst AddAOntoHL                                          ; $7e9c: $ef
	ld [hl], a                                       ; $7e9d: $77
	or a                                             ; $7e9e: $b7
	db $db                                           ; $7e9f: $db

Call_053_7ea0:
	reti                                             ; $7ea0: $d9


	rst $38                                          ; $7ea1: $ff
	ld sp, hl                                        ; $7ea2: $f9
	reti                                             ; $7ea3: $d9


	pop af                                           ; $7ea4: $f1
	reti                                             ; $7ea5: $d9


	ld [bc], a                                       ; $7ea6: $02
	db $dd                                           ; $7ea7: $dd
	rst $38                                          ; $7ea8: $ff
	sbc e                                            ; $7ea9: $9b
	cp $f8                                           ; $7eaa: $fe $f8
	ldh [$80], a                                     ; $7eac: $e0 $80
	ld [hl], e                                       ; $7eae: $73
	inc hl                                           ; $7eaf: $23
	sbc h                                            ; $7eb0: $9c
	ld b, $18                                        ; $7eb1: $06 $18
	ld h, b                                          ; $7eb3: $60
	ld [hl], a                                       ; $7eb4: $77
	jr c, jr_053_7e37                                ; $7eb5: $38 $80

	ld c, $f8                                        ; $7eb7: $0e $f8
	db $fc                                           ; $7eb9: $fc
	rra                                              ; $7eba: $1f
	ldh a, [$f0]                                     ; $7ebb: $f0 $f0
	ld hl, sp-$08                                    ; $7ebd: $f8 $f8
	pop af                                           ; $7ebf: $f1
	rlca                                             ; $7ec0: $07
	inc bc                                           ; $7ec1: $03
	ldh [$03], a                                     ; $7ec2: $e0 $03
	ld bc, $f8e0                                     ; $7ec4: $01 $e0 $f8
	sbc $ff                                          ; $7ec7: $de $ff
	ld a, a                                          ; $7ec9: $7f
	rra                                              ; $7eca: $1f
	db $fc                                           ; $7ecb: $fc
	cp $1f                                           ; $7ecc: $fe $1f
	rlca                                             ; $7ece: $07
	ld bc, $8000                                     ; $7ecf: $01 $00 $80
	ldh [$fe], a                                     ; $7ed2: $e0 $fe
	cp a                                             ; $7ed4: $bf
	rst $38                                          ; $7ed5: $ff
	sbc d                                            ; $7ed6: $9a
	rla                                              ; $7ed7: $17
	ld [bc], a                                       ; $7ed8: $02
	nop                                              ; $7ed9: $00
	add $f8                                          ; $7eda: $c6 $f8
	cp $9b                                           ; $7edc: $fe $9b
	add sp, -$04                                     ; $7ede: $e8 $fc
	db $fc                                           ; $7ee0: $fc
	jr c, @+$78                                      ; $7ee1: $38 $76

	xor c                                            ; $7ee3: $a9
	ld [hl], a                                       ; $7ee4: $77
	call nz, $109e                                   ; $7ee5: $c4 $9e $10
	jp hl                                            ; $7ee8: $e9


	sub l                                            ; $7ee9: $95
	inc bc                                           ; $7eea: $03
	ld b, $08                                        ; $7eeb: $06 $08
	db $10                                           ; $7eed: $10
	jr nz, jr_053_7f50                               ; $7eee: $20 $60

	ld b, b                                          ; $7ef0: $40
	ret nz                                           ; $7ef1: $c0

	ld [bc], a                                       ; $7ef2: $02
	inc b                                            ; $7ef3: $04
	ld a, e                                          ; $7ef4: $7b
	ld hl, sp-$21                                    ; $7ef5: $f8 $df
	ld b, b                                          ; $7ef7: $40
	sub a                                            ; $7ef8: $97
	add b                                            ; $7ef9: $80
	rra                                              ; $7efa: $1f
	rra                                              ; $7efb: $1f
	rrca                                             ; $7efc: $0f
	rrca                                             ; $7efd: $0f
	rra                                              ; $7efe: $1f
	ccf                                              ; $7eff: $3f
	ld a, a                                          ; $7f00: $7f
	ld h, e                                          ; $7f01: $63
	ld [hl], b                                       ; $7f02: $70
	sbc h                                            ; $7f03: $9c
	adc a                                            ; $7f04: $8f
	add e                                            ; $7f05: $83
	add e                                            ; $7f06: $83
	call c, $9c81                                    ; $7f07: $dc $81 $9c
	sbc a                                            ; $7f0a: $9f
	adc d                                            ; $7f0b: $8a
	adc d                                            ; $7f0c: $8a
	call c, $8f85                                    ; $7f0d: $dc $85 $8f
	ldh a, [$b8]                                     ; $7f10: $f0 $b8
	sbc h                                            ; $7f12: $9c
	rlca                                             ; $7f13: $07
	add e                                            ; $7f14: $83
	add h                                            ; $7f15: $84
	call nc, $a0fa                                   ; $7f16: $d4 $fa $a0
	sub b                                            ; $7f19: $90
	ld [$0106], sp                                   ; $7f1a: $08 $06 $01
	nop                                              ; $7f1d: $00
	db $10                                           ; $7f1e: $10
	sub b                                            ; $7f1f: $90
	db $dd                                           ; $7f20: $dd
	rlca                                             ; $7f21: $07
	sbc e                                            ; $7f22: $9b
	rst JumpTable                                          ; $7f23: $c7
	rst FarCall                                          ; $7f24: $f7
	ccf                                              ; $7f25: $3f
	rra                                              ; $7f26: $1f
	db $fd                                           ; $7f27: $fd
	sbc h                                            ; $7f28: $9c
	add b                                            ; $7f29: $80
	ld h, b                                          ; $7f2a: $60
	jr jr_053_7fa7                                   ; $7f2b: $18 $7a

	cp b                                             ; $7f2d: $b8
	sbc $ff                                          ; $7f2e: $de $ff
	sub h                                            ; $7f30: $94
	rst AddAOntoHL                                          ; $7f31: $ef
	rst GetHLinHL                                          ; $7f32: $cf
	rst JumpTable                                          ; $7f33: $c7
	inc b                                            ; $7f34: $04
	inc a                                            ; $7f35: $3c
	ld [$383f], sp                                   ; $7f36: $08 $3f $38
	ld a, b                                          ; $7f39: $78
	call c, Call_053_7bd4                            ; $7f3a: $dc $d4 $7b
	or e                                             ; $7f3d: $b3
	ld a, a                                          ; $7f3e: $7f
	ld b, $9d                                        ; $7f3f: $06 $9d
	ld c, $0c                                        ; $7f41: $0e $0c
	ld a, d                                          ; $7f43: $7a
	xor $7e                                          ; $7f44: $ee $7e
	ldh a, [$7f]                                     ; $7f46: $f0 $7f
	ld c, l                                          ; $7f48: $4d
	sub h                                            ; $7f49: $94
	call nz, $e4c2                                   ; $7f4a: $c4 $c2 $e4
	push hl                                          ; $7f4d: $e5
	push bc                                          ; $7f4e: $c5
	add a                                            ; $7f4f: $87

jr_053_7f50:
	daa                                              ; $7f50: $27
	ld h, d                                          ; $7f51: $62
	ldh [c], a                                       ; $7f52: $e2
	db $e4                                           ; $7f53: $e4
	dec b                                            ; $7f54: $05

Jump_053_7f55:
	call c, $9507                                    ; $7f55: $dc $07 $95
	ld b, $0e                                        ; $7f58: $06 $0e
	sbc b                                            ; $7f5a: $98
	add hl, sp                                       ; $7f5b: $39
	ei                                               ; $7f5c: $fb
	ld c, $66                                        ; $7f5d: $0e $66
	db $eb                                           ; $7f5f: $eb
	push de                                          ; $7f60: $d5
	db $fd                                           ; $7f61: $fd
	ld a, e                                          ; $7f62: $7b
	call z, $ed92                                    ; $7f63: $cc $92 $ed
	sbc c                                            ; $7f66: $99
	ld [hl], l                                       ; $7f67: $75
	dec de                                           ; $7f68: $1b
	ld a, d                                          ; $7f69: $7a
	add b                                            ; $7f6a: $80
	nop                                              ; $7f6b: $00
	jr nz, @+$42                                     ; $7f6c: $20 $40

	ret                                              ; $7f6e: $c9


	reti                                             ; $7f6f: $d9


	reti                                             ; $7f70: $d9


	ei                                               ; $7f71: $fb
	db $db                                           ; $7f72: $db
	rst $38                                          ; $7f73: $ff
	adc a                                            ; $7f74: $8f
	ld a, a                                          ; $7f75: $7f
	ld l, [hl]                                       ; $7f76: $6e
	sbc a                                            ; $7f77: $9f
	ld b, d                                          ; $7f78: $42
	add hl, hl                                       ; $7f79: $29
	call nc, $2181                                   ; $7f7a: $d4 $81 $21
	ld d, $96                                        ; $7f7d: $16 $96

Jump_053_7f7f:
	ld h, a                                          ; $7f7f: $67
	ld sp, $0810                                     ; $7f80: $31 $10 $08
	ld c, h                                          ; $7f83: $4c
	call z, $edde                                    ; $7f84: $cc $de $ed
	sub a                                            ; $7f87: $97
	db $db                                           ; $7f88: $db
	ld d, [hl]                                       ; $7f89: $56
	ld d, [hl]                                       ; $7f8a: $56
	ld b, h                                          ; $7f8b: $44
	ld c, h                                          ; $7f8c: $4c
	ld c, b                                          ; $7f8d: $48
	ret z                                            ; $7f8e: $c8

	db $db                                           ; $7f8f: $db
	db $dd                                           ; $7f90: $dd
	db $ed                                           ; $7f91: $ed
	sbc $e5                                          ; $7f92: $de $e5
	call c, $9cff                                    ; $7f94: $dc $ff $9c
	db $fc                                           ; $7f97: $fc
	ldh a, [$c0]                                     ; $7f98: $f0 $c0
	call c, $9880                                    ; $7f9a: $dc $80 $98
	add e                                            ; $7f9d: $83
	adc h                                            ; $7f9e: $8c
	or b                                             ; $7f9f: $b0
	pop af                                           ; $7fa0: $f1
	ldh a, [$f0]                                     ; $7fa1: $f0 $f0
	ret nz                                           ; $7fa3: $c0

	db $fd                                           ; $7fa4: $fd
	sbc e                                            ; $7fa5: $9b
	ld [bc], a                                       ; $7fa6: $02

jr_053_7fa7:
	inc bc                                           ; $7fa7: $03
	nop                                              ; $7fa8: $00
	jr nc, @+$75                                     ; $7fa9: $30 $73

	rst FarCall                                          ; $7fab: $f7
	ld a, [$f467]                                    ; $7fac: $fa $67 $f4
	add b                                            ; $7faf: $80
	ld c, $81                                        ; $7fb0: $0e $81
	jr nz, jr_053_7fe4                               ; $7fb2: $20 $30

	ld bc, $0b40                                     ; $7fb4: $01 $40 $0b
	ld c, d                                          ; $7fb7: $4a
	pop af                                           ; $7fb8: $f1
	ld e, $df                                        ; $7fb9: $1e $df
	rst GetHLinHL                                          ; $7fbb: $cf
	cp $3f                                           ; $7fbc: $fe $3f
	ld [hl], b                                       ; $7fbe: $70
	ld sp, $f8ff                                     ; $7fbf: $31 $ff $f8
	ld a, b                                          ; $7fc2: $78
	ld [hl], a                                       ; $7fc3: $77
	ldh a, [$62]                                     ; $7fc4: $f0 $62
	ld c, d                                          ; $7fc6: $4a
	sbc [hl]                                         ; $7fc7: $9e
	nop                                              ; $7fc8: $00
	rlca                                             ; $7fc9: $07
	add a                                            ; $7fca: $87
	add b                                            ; $7fcb: $80
	nop                                              ; $7fcc: $00
	sub b                                            ; $7fcd: $90
	inc [hl]                                         ; $7fce: $34
	sbc [hl]                                         ; $7fcf: $9e
	ld h, b                                          ; $7fd0: $60
	ld a, e                                          ; $7fd1: $7b
	ld [hl], a                                       ; $7fd2: $77
	sbc h                                            ; $7fd3: $9c
	sbc h                                            ; $7fd4: $9c
	ld h, $16                                        ; $7fd5: $26 $16
	ei                                               ; $7fd7: $fb
	sbc e                                            ; $7fd8: $9b
	jr jr_053_7fe3                                   ; $7fd9: $18 $08

	nop                                              ; $7fdb: $00
	nop                                              ; $7fdc: $00
	ld a, e                                          ; $7fdd: $7b
	or c                                             ; $7fde: $b1
	sbc e                                            ; $7fdf: $9b
	ret nz                                           ; $7fe0: $c0

	ld c, b                                          ; $7fe1: $48
	ld l, b                                          ; $7fe2: $68

jr_053_7fe3:
	inc c                                            ; $7fe3: $0c

jr_053_7fe4:
	db $fc                                           ; $7fe4: $fc
	sbc [hl]                                         ; $7fe5: $9e
	jr nc, @+$74                                     ; $7fe6: $30 $72

	cp d                                             ; $7fe8: $ba
	rst SubAFromDE                                          ; $7fe9: $df
	ld bc, $cc7e                                     ; $7fea: $01 $7e $cc
	sbc l                                            ; $7fed: $9d
	rrca                                             ; $7fee: $0f
	ld c, $77                                        ; $7fef: $0e $77
	ld hl, sp+$7e                                    ; $7ff1: $f8 $7e
	call z, $0f8e                                    ; $7ff3: $cc $8e $0f
	inc c                                            ; $7ff6: $0c

Jump_053_7ff7:
	pop bc                                           ; $7ff7: $c1
	add e                                            ; $7ff8: $83
	sbc a                                            ; $7ff9: $9f
	rra                                              ; $7ffa: $1f
	rla                                              ; $7ffb: $17
	rst $38                                          ; $7ffc: $ff
	rst AddAOntoHL                                          ; $7ffd: $ef
	ccf                                              ; $7ffe: $3f

Call_053_7fff:
	add b                                            ; $7fff: $80
