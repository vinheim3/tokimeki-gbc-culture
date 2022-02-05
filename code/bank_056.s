; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $056", ROMX[$4000], BANK[$56]

	xor c                                            ; $4000: $a9
	cp l                                             ; $4001: $bd
	ld h, h                                          ; $4002: $64
	call c, $6d7c                                    ; $4003: $dc $7c $6d
	sbc b                                            ; $4006: $98
	sbc h                                            ; $4007: $9c
	rst SubAFromBC                                          ; $4008: $e7
	add a                                            ; $4009: $87
	rlca                                             ; $400a: $07
	sbc $55                                          ; $400b: $de $55
	sbc l                                            ; $400d: $9d
	ld d, e                                          ; $400e: $53
	db $d3                                           ; $400f: $d3
	sbc $df                                          ; $4010: $de $df
	db $db                                           ; $4012: $db
	rst $38                                          ; $4013: $ff
	sbc l                                            ; $4014: $9d
	di                                               ; $4015: $f3
	pop af                                           ; $4016: $f1
	ld [bc], a                                       ; $4017: $02
	ldh [$0b], a                                     ; $4018: $e0 $0b
	ldh a, [$d9]                                     ; $401a: $f0 $d9
	cp a                                             ; $401c: $bf
	ld h, $c0                                        ; $401d: $26 $c0
	ld a, e                                          ; $401f: $7b
	ld a, b                                          ; $4020: $78
	ld a, a                                          ; $4021: $7f
	ld [hl], a                                       ; $4022: $77
	ld a, e                                          ; $4023: $7b
	ld c, $df                                        ; $4024: $0e $df
	rlca                                             ; $4026: $07
	ld [hl], a                                       ; $4027: $77
	rst FarCall                                          ; $4028: $f7
	sbc [hl]                                         ; $4029: $9e
	ld a, l                                          ; $402a: $7d
	ret c                                            ; $402b: $d8

	rst $38                                          ; $402c: $ff
	sbc c                                            ; $402d: $99
	push de                                          ; $402e: $d5
	ld a, [$fad5]                                    ; $402f: $fa $d5 $fa
	ld d, l                                          ; $4032: $55
	ld [$d05a], a                                    ; $4033: $ea $5a $d0
	ld [hl], c                                       ; $4036: $71
	add d                                            ; $4037: $82
	ld a, a                                          ; $4038: $7f
	cp $76                                           ; $4039: $fe $76
	xor a                                            ; $403b: $af
	ld [hl], a                                       ; $403c: $77
	db $fc                                           ; $403d: $fc
	ld [hl], d                                       ; $403e: $72
	jp nz, $8079                                     ; $403f: $c2 $79 $80

	db $dd                                           ; $4042: $dd
	rst $38                                          ; $4043: $ff
	ld a, a                                          ; $4044: $7f
	db $db                                           ; $4045: $db
	ld a, a                                          ; $4046: $7f
	cp $9b                                           ; $4047: $fe $9b
	ld h, b                                          ; $4049: $60
	ld hl, sp+$7f                                    ; $404a: $f8 $7f
	ccf                                              ; $404c: $3f
	ld l, [hl]                                       ; $404d: $6e
	or b                                             ; $404e: $b0
	sub a                                            ; $404f: $97
	ld sp, hl                                        ; $4050: $f9
	ret nz                                           ; $4051: $c0

	jp z, Jump_056_4ad5                              ; $4052: $ca $d5 $4a

	ld d, l                                          ; $4055: $55
	rrca                                             ; $4056: $0f
	ccf                                              ; $4057: $3f
	ld a, c                                          ; $4058: $79
	ld c, h                                          ; $4059: $4c
	adc h                                            ; $405a: $8c
	ld [$eaf5], a                                    ; $405b: $ea $f5 $ea
	ld c, $56                                        ; $405e: $0e $56
	ld b, $53                                        ; $4060: $06 $53
	add e                                            ; $4062: $83
	dec d                                            ; $4063: $15
	and c                                            ; $4064: $a1
	ld d, b                                          ; $4065: $50
	di                                               ; $4066: $f3
	xor e                                            ; $4067: $ab
	ei                                               ; $4068: $fb
	xor l                                            ; $4069: $ad
	ld a, l                                          ; $406a: $7d
	ld [$af5e], a                                    ; $406b: $ea $5e $af
	sbc $4d                                          ; $406e: $de $4d
	rst SubAFromDE                                          ; $4070: $df
	ld l, $9c                                        ; $4071: $2e $9c
	and a                                            ; $4073: $a7
	sub a                                            ; $4074: $97
	ld d, a                                          ; $4075: $57
	db $db                                           ; $4076: $db
	rst $38                                          ; $4077: $ff
	rst SubAFromDE                                          ; $4078: $df
	cp $9e                                           ; $4079: $fe $9e
	daa                                              ; $407b: $27
	ld a, d                                          ; $407c: $7a
	sbc d                                            ; $407d: $9a
	rst SubAFromDE                                          ; $407e: $df
	add a                                            ; $407f: $87
	sbc d                                            ; $4080: $9a
	rst GetHLinHL                                          ; $4081: $cf
	ld e, a                                          ; $4082: $5f
	ldh [$c0], a                                     ; $4083: $e0 $c0
	ret nz                                           ; $4085: $c0

	db $dd                                           ; $4086: $dd
	add b                                            ; $4087: $80
	sub l                                            ; $4088: $95
	pop bc                                           ; $4089: $c1
	cp $8f                                           ; $408a: $fe $8f
	sbc c                                            ; $408c: $99
	and c                                            ; $408d: $a1
	jp $85c3                                         ; $408e: $c3 $c3 $85


	dec b                                            ; $4091: $05
	rlca                                             ; $4092: $07
	ld a, e                                          ; $4093: $7b
	ld l, h                                          ; $4094: $6c
	ld a, c                                          ; $4095: $79
	xor h                                            ; $4096: $ac
	add b                                            ; $4097: $80
	rst FarCall                                          ; $4098: $f7
	ld sp, hl                                        ; $4099: $f9

Call_056_409a:
	rst FarCall                                          ; $409a: $f7
	rst SubAFromDE                                          ; $409b: $df
	xor a                                            ; $409c: $af
	rst SubAFromDE                                          ; $409d: $df

Jump_056_409e:
	inc a                                            ; $409e: $3c
	and d                                            ; $409f: $a2
	sbc a                                            ; $40a0: $9f
	ld e, $f8                                        ; $40a1: $1e $f8
	ldh [$c0], a                                     ; $40a3: $e0 $c0
	add b                                            ; $40a5: $80
	add e                                            ; $40a6: $83
	dec e                                            ; $40a7: $1d
	ld h, c                                          ; $40a8: $61
	rst FarCall                                          ; $40a9: $f7
	db $eb                                           ; $40aa: $eb
	rst SubAFromDE                                          ; $40ab: $df
	or a                                             ; $40ac: $b7
	ld e, a                                          ; $40ad: $5f
	xor a                                            ; $40ae: $af
	xor a                                            ; $40af: $af
	ccf                                              ; $40b0: $3f
	inc c                                            ; $40b1: $0c
	inc e                                            ; $40b2: $1c
	jr c, jr_056_412d                                ; $40b3: $38 $78

	ret nc                                           ; $40b5: $d0

	or b                                             ; $40b6: $b0
	sub l                                            ; $40b7: $95
	or b                                             ; $40b8: $b0
	ld h, b                                          ; $40b9: $60
	db $fc                                           ; $40ba: $fc
	adc $0e                                          ; $40bb: $ce $0e
	add [hl]                                         ; $40bd: $86
	add $c6                                          ; $40be: $c6 $c6
	and $e6                                          ; $40c0: $e6 $e6
	ld a, d                                          ; $40c2: $7a
	sub c                                            ; $40c3: $91
	call c, $7d03                                    ; $40c4: $dc $03 $7d
	rlca                                             ; $40c7: $07
	call c, $9de0                                    ; $40c8: $dc $e0 $9d
	ret nz                                           ; $40cb: $c0

	ldh a, [$73]                                     ; $40cc: $f0 $73
	ld a, [$307a]                                    ; $40ce: $fa $7a $30
	ld a, e                                          ; $40d1: $7b
	cp d                                             ; $40d2: $ba
	ld a, a                                          ; $40d3: $7f
	ld h, [hl]                                       ; $40d4: $66
	rst SubAFromDE                                          ; $40d5: $df
	ccf                                              ; $40d6: $3f
	rst SubAFromDE                                          ; $40d7: $df
	add b                                            ; $40d8: $80
	sbc $40                                          ; $40d9: $de $40
	sbc $20                                          ; $40db: $de $20
	ld [bc], a                                       ; $40dd: $02
	ret nz                                           ; $40de: $c0

	ld [bc], a                                       ; $40df: $02
	ret nz                                           ; $40e0: $c0

	cpl                                              ; $40e1: $2f
	ret nc                                           ; $40e2: $d0

	ld a, h                                          ; $40e3: $7c
	or e                                             ; $40e4: $b3
	ld [hl], l                                       ; $40e5: $75
	sub d                                            ; $40e6: $92
	ld d, c                                          ; $40e7: $51
	sub b                                            ; $40e8: $90
	ld c, h                                          ; $40e9: $4c
	ld d, b                                          ; $40ea: $50
	ld a, $c0                                        ; $40eb: $3e $c0
	sbc [hl]                                         ; $40ed: $9e
	jr nz, jr_056_4166                               ; $40ee: $20 $76

	ret nz                                           ; $40f0: $c0

	halt                                             ; $40f1: $76
	call nz, $fe77                                   ; $40f2: $c4 $77 $fe
	ld h, l                                          ; $40f5: $65
	ld [hl], b                                       ; $40f6: $70
	sbc h                                            ; $40f7: $9c
	ld a, $b5                                        ; $40f8: $3e $b5
	cp [hl]                                          ; $40fa: $be
	ld a, e                                          ; $40fb: $7b
	cp $9a                                           ; $40fc: $fe $9a
	sbc [hl]                                         ; $40fe: $9e

Jump_056_40ff:
	db $dd                                           ; $40ff: $dd
	pop hl                                           ; $4100: $e1
	ld l, d                                          ; $4101: $6a
	ld h, c                                          ; $4102: $61
	ld a, e                                          ; $4103: $7b
	cp $8c                                           ; $4104: $fe $8c
	ld [hl], c                                       ; $4106: $71
	ld [hl-], a                                      ; $4107: $32
	xor d                                            ; $4108: $aa
	ld d, b                                          ; $4109: $50
	xor d                                            ; $410a: $aa
	ld b, b                                          ; $410b: $40
	xor b                                            ; $410c: $a8
	ld b, b                                          ; $410d: $40
	xor b                                            ; $410e: $a8
	nop                                              ; $410f: $00
	ld d, l                                          ; $4110: $55
	xor a                                            ; $4111: $af
	ld d, l                                          ; $4112: $55
	cp a                                             ; $4113: $bf
	ld d, a                                          ; $4114: $57
	cp a                                             ; $4115: $bf
	ld d, a                                          ; $4116: $57
	rst $38                                          ; $4117: $ff
	ld d, e                                          ; $4118: $53
	sbc $2b                                          ; $4119: $de $2b
	rst SubAFromDE                                          ; $411b: $df
	dec d                                            ; $411c: $15
	sbc l                                            ; $411d: $9d
	add hl, de                                       ; $411e: $19
	ld a, [hl-]                                      ; $411f: $3a
	ld l, b                                          ; $4120: $68
	and l                                            ; $4121: $a5
	sbc c                                            ; $4122: $99
	rst AddAOntoHL                                          ; $4123: $ef
	rst $38                                          ; $4124: $ff
	cp [hl]                                          ; $4125: $be
	call c, $f0f8                                    ; $4126: $dc $f8 $f0
	ld a, d                                          ; $4129: $7a
	push hl                                          ; $412a: $e5
	sbc d                                            ; $412b: $9a
	ld b, c                                          ; $412c: $41

jr_056_412d:
	ld h, e                                          ; $412d: $63
	scf                                              ; $412e: $37
	cpl                                              ; $412f: $2f
	ld e, a                                          ; $4130: $5f
	ld a, d                                          ; $4131: $7a
	call z, $0880                                    ; $4132: $cc $80 $08
	jr jr_056_4154                                   ; $4135: $18 $1d

	cpl                                              ; $4137: $2f
	ccf                                              ; $4138: $3f
	ld a, e                                          ; $4139: $7b
	ld h, e                                          ; $413a: $63
	ld b, [hl]                                       ; $413b: $46
	rst AddAOntoHL                                          ; $413c: $ef
	rst SubAFromHL                                          ; $413d: $d7
	jp nc, $a0b0                                     ; $413e: $d2 $b0 $a0

	ld b, h                                          ; $4141: $44
	ld e, h                                          ; $4142: $5c
	ld a, c                                          ; $4143: $79
	call $7abe                                       ; $4144: $cd $be $7a
	db $f4                                           ; $4147: $f4
	add sp, -$30                                     ; $4148: $e8 $d0
	and b                                            ; $414a: $a0
	ret nz                                           ; $414b: $c0

	inc bc                                           ; $414c: $03
	ld [bc], a                                       ; $414d: $02
	ld b, $0d                                        ; $414e: $06 $0d
	dec de                                           ; $4150: $1b
	scf                                              ; $4151: $37
	ld l, a                                          ; $4152: $6f
	sbc [hl]                                         ; $4153: $9e

jr_056_4154:
	rst SubAFromDE                                          ; $4154: $df
	call c, $df3f                                    ; $4155: $dc $3f $df
	ld e, a                                          ; $4158: $5f
	sbc l                                            ; $4159: $9d
	ld a, a                                          ; $415a: $7f
	ld h, b                                          ; $415b: $60
	db $db                                           ; $415c: $db
	ldh [$9c], a                                     ; $415d: $e0 $9c
	ret nz                                           ; $415f: $c0

	and $e6                                          ; $4160: $e6 $e6
	db $dd                                           ; $4162: $dd
	add $7d                                          ; $4163: $c6 $7d
	ld [hl], a                                       ; $4165: $77

jr_056_4166:
	reti                                             ; $4166: $d9


	inc bc                                           ; $4167: $03
	sbc l                                            ; $4168: $9d
	ret nz                                           ; $4169: $c0

	ld b, b                                          ; $416a: $40
	ld [hl], d                                       ; $416b: $72
	ld a, b                                          ; $416c: $78
	ld a, b                                          ; $416d: $78
	or $dd                                           ; $416e: $f6 $dd
	add b                                            ; $4170: $80
	rst $38                                          ; $4171: $ff
	reti                                             ; $4172: $d9


	ccf                                              ; $4173: $3f
	reti                                             ; $4174: $d9


	jr nz, jr_056_4179                               ; $4175: $20 $02

	ret nz                                           ; $4177: $c0

	ld [bc], a                                       ; $4178: $02

jr_056_4179:
	ret nz                                           ; $4179: $c0

	cpl                                              ; $417a: $2f
	ret nc                                           ; $417b: $d0

	sbc [hl]                                         ; $417c: $9e
	push af                                          ; $417d: $f5
	ld a, d                                          ; $417e: $7a
	cp [hl]                                          ; $417f: $be
	ld [hl], a                                       ; $4180: $77
	cp $4a                                           ; $4181: $fe $4a
	ret nc                                           ; $4183: $d0

	sbc [hl]                                         ; $4184: $9e
	ld [$c036], a                                    ; $4185: $ea $36 $c0
	sbc [hl]                                         ; $4188: $9e
	ld a, [$f077]                                    ; $4189: $fa $77 $f0
	ld [hl], h                                       ; $418c: $74
	ld [hl-], a                                      ; $418d: $32
	sbc h                                            ; $418e: $9c
	and b                                            ; $418f: $a0
	ld d, l                                          ; $4190: $55
	and d                                            ; $4191: $a2
	ld l, d                                          ; $4192: $6a
	ret nz                                           ; $4193: $c0

	sbc [hl]                                         ; $4194: $9e
	ld d, a                                          ; $4195: $57
	ld l, d                                          ; $4196: $6a
	ret nz                                           ; $4197: $c0

	adc [hl]                                         ; $4198: $8e
	xor b                                            ; $4199: $a8
	sbc [hl]                                         ; $419a: $9e
	db $dd                                           ; $419b: $dd
	sbc [hl]                                         ; $419c: $9e
	db $dd                                           ; $419d: $dd
	adc [hl]                                         ; $419e: $8e
	db $ed                                           ; $419f: $ed
	xor [hl]                                         ; $41a0: $ae
	db $ed                                           ; $41a1: $ed
	ld [hl], c                                       ; $41a2: $71
	ld [hl-], a                                      ; $41a3: $32
	ld [hl], c                                       ; $41a4: $71
	ld [hl-], a                                      ; $41a5: $32
	ld a, c                                          ; $41a6: $79
	ld a, [de]                                       ; $41a7: $1a
	ld e, c                                          ; $41a8: $59
	ld a, [de]                                       ; $41a9: $1a
	db $fd                                           ; $41aa: $fd
	rst SubAFromDE                                          ; $41ab: $df
	ld bc, $039d                                     ; $41ac: $01 $9d $03
	rlca                                             ; $41af: $07
	ld l, c                                          ; $41b0: $69
	sub b                                            ; $41b1: $90
	sbc d                                            ; $41b2: $9a
	db $fc                                           ; $41b3: $fc
	dec a                                            ; $41b4: $3d
	ld a, l                                          ; $41b5: $7d
	ld a, d                                          ; $41b6: $7a
	pop af                                           ; $41b7: $f1
	ld a, d                                          ; $41b8: $7a
	pop de                                           ; $41b9: $d1
	sbc d                                            ; $41ba: $9a
	add b                                            ; $41bb: $80
	rst SubAFromBC                                          ; $41bc: $e7
	rst JumpTable                                          ; $41bd: $c7
	rst GetHLinHL                                          ; $41be: $cf
	sbc a                                            ; $41bf: $9f
	ld [hl], l                                       ; $41c0: $75
	ld [$40df], sp                                   ; $41c1: $08 $df $40
	sbc d                                            ; $41c4: $9a
	and b                                            ; $41c5: $a0
	ld d, b                                          ; $41c6: $50
	cp b                                             ; $41c7: $b8
	ld h, b                                          ; $41c8: $60
	jr jr_056_422e                                   ; $41c9: $18 $63

	ld a, b                                          ; $41cb: $78
	ld a, l                                          ; $41cc: $7d
	call nc, Call_056_486b                           ; $41cd: $d4 $6b $48
	ld a, c                                          ; $41d0: $79
	add $dd                                          ; $41d1: $c6 $dd
	rst $38                                          ; $41d3: $ff
	sbc [hl]                                         ; $41d4: $9e
	ret nz                                           ; $41d5: $c0

	db $fc                                           ; $41d6: $fc
	sbc l                                            ; $41d7: $9d
	jr jr_056_420b                                   ; $41d8: $18 $31

	ld a, c                                          ; $41da: $79
	ld sp, $5f74                                     ; $41db: $31 $74 $5f
	sbc d                                            ; $41de: $9a
	rst GetHLinHL                                          ; $41df: $cf
	ld a, a                                          ; $41e0: $7f
	ld a, a                                          ; $41e1: $7f
	cp a                                             ; $41e2: $bf
	cp a                                             ; $41e3: $bf
	sbc $ff                                          ; $41e4: $de $ff
	sbc [hl]                                         ; $41e6: $9e
	ld a, [hl]                                       ; $41e7: $7e
	db $dd                                           ; $41e8: $dd
	ret nz                                           ; $41e9: $c0

	db $dd                                           ; $41ea: $dd
	add b                                            ; $41eb: $80
	rst SubAFromDE                                          ; $41ec: $df
	add a                                            ; $41ed: $87
	sub c                                            ; $41ee: $91
	rlca                                             ; $41ef: $07
	ld b, $06                                        ; $41f0: $06 $06
	ld c, $0c                                        ; $41f2: $0e $0c
	inc c                                            ; $41f4: $0c
	inc bc                                           ; $41f5: $03
	inc bc                                           ; $41f6: $03
	ld [bc], a                                       ; $41f7: $02
	ld [bc], a                                       ; $41f8: $02
	ld b, $04                                        ; $41f9: $06 $04
	inc b                                            ; $41fb: $04
	inc c                                            ; $41fc: $0c
	pop af                                           ; $41fd: $f1
	sbc $3f                                          ; $41fe: $de $3f
	sbc $7f                                          ; $4200: $de $7f
	rst SubAFromDE                                          ; $4202: $df
	rst $38                                          ; $4203: $ff
	sbc $20                                          ; $4204: $de $20
	sbc $40                                          ; $4206: $de $40
	rst SubAFromDE                                          ; $4208: $df
	add b                                            ; $4209: $80
	ld [bc], a                                       ; $420a: $02

jr_056_420b:
	ret nz                                           ; $420b: $c0

	ld [bc], a                                       ; $420c: $02
	ret nz                                           ; $420d: $c0

	cpl                                              ; $420e: $2f
	ret nc                                           ; $420f: $d0

	pop de                                           ; $4210: $d1
	rst $38                                          ; $4211: $ff
	ld a, b                                          ; $4212: $78
	ld b, h                                          ; $4213: $44
	sbc e                                            ; $4214: $9b
	cp $d5                                           ; $4215: $fe $d5
	cp $f5                                           ; $4217: $fe $f5
	ld b, [hl]                                       ; $4219: $46
	or b                                             ; $421a: $b0
	sbc [hl]                                         ; $421b: $9e
	xor d                                            ; $421c: $aa
	halt                                             ; $421d: $76
	call nz, $c072                                   ; $421e: $c4 $72 $c0
	ld l, e                                          ; $4221: $6b
	ldh a, [rOCPD]                                   ; $4222: $f0 $6b
	ld sp, hl                                        ; $4224: $f9
	rst SubAFromDE                                          ; $4225: $df
	ld d, l                                          ; $4226: $55
	ld l, e                                          ; $4227: $6b
	rst FarCall                                          ; $4228: $f7
	add b                                            ; $4229: $80
	xor [hl]                                         ; $422a: $ae
	db $ec                                           ; $422b: $ec
	xor [hl]                                         ; $422c: $ae
	ld b, h                                          ; $422d: $44

jr_056_422e:
	and [hl]                                         ; $422e: $a6
	ld d, h                                          ; $422f: $54
	add h                                            ; $4230: $84
	inc b                                            ; $4231: $04
	ld e, c                                          ; $4232: $59
	dec de                                           ; $4233: $1b
	ld e, c                                          ; $4234: $59
	cp a                                             ; $4235: $bf
	ld e, l                                          ; $4236: $5d
	xor a                                            ; $4237: $af
	ld a, a                                          ; $4238: $7f
	rst $38                                          ; $4239: $ff
	rlca                                             ; $423a: $07
	rrca                                             ; $423b: $0f
	ld e, $1e                                        ; $423c: $1e $1e
	ld a, $3e                                        ; $423e: $3e $3e
	ld a, [hl]                                       ; $4240: $7e
	cp $fd                                           ; $4241: $fe $fd
	ld sp, hl                                        ; $4243: $f9
	di                                               ; $4244: $f3
	di                                               ; $4245: $f3
	db $e3                                           ; $4246: $e3
	db $e3                                           ; $4247: $e3
	jp $8399                                         ; $4248: $c3 $99 $83


	nop                                              ; $424b: $00
	add e                                            ; $424c: $83
	add a                                            ; $424d: $87
	ei                                               ; $424e: $fb
	ldh a, [rPCM34]                                  ; $424f: $f0 $77
	adc b                                            ; $4251: $88
	sbc e                                            ; $4252: $9b
	ld a, h                                          ; $4253: $7c
	ld a, b                                          ; $4254: $78
	inc b                                            ; $4255: $04
	rrca                                             ; $4256: $0f
	ld [hl], e                                       ; $4257: $73
	ld a, b                                          ; $4258: $78
	ld a, c                                          ; $4259: $79
	db $db                                           ; $425a: $db
	ld [hl], e                                       ; $425b: $73
	ld a, b                                          ; $425c: $78
	ld a, e                                          ; $425d: $7b
	dec de                                           ; $425e: $1b
	ld l, a                                          ; $425f: $6f
	ld l, b                                          ; $4260: $68
	sbc $01                                          ; $4261: $de $01
	ld [hl], e                                       ; $4263: $73
	ld l, b                                          ; $4264: $68
	sbc $fe                                          ; $4265: $de $fe
	rst SubAFromDE                                          ; $4267: $df
	rst $38                                          ; $4268: $ff
	add a                                            ; $4269: $87
	ld h, c                                          ; $426a: $61
	push bc                                          ; $426b: $c5
	db $fd                                           ; $426c: $fd
	ld sp, hl                                        ; $426d: $f9
	ld sp, hl                                        ; $426e: $f9
	ldh a, [c]                                       ; $426f: $f2
	ldh [c], a                                       ; $4270: $e2
	ld [bc], a                                       ; $4271: $02
	sbc a                                            ; $4272: $9f
	dec sp                                           ; $4273: $3b
	inc bc                                           ; $4274: $03
	rlca                                             ; $4275: $07
	rlca                                             ; $4276: $07
	rrca                                             ; $4277: $0f
	rra                                              ; $4278: $1f
	rst $38                                          ; $4279: $ff
	ld a, [hl]                                       ; $427a: $7e
	db $fc                                           ; $427b: $fc
	db $fc                                           ; $427c: $fc
	ld hl, sp-$08                                    ; $427d: $f8 $f8
	ldh a, [$f0]                                     ; $427f: $f0 $f0
	ldh [$6f], a                                     ; $4281: $e0 $6f
	jp z, $a67a                                      ; $4283: $ca $7a $a6

	ld a, [hl]                                       ; $4286: $7e
	add l                                            ; $4287: $85
	db $fc                                           ; $4288: $fc
	sbc l                                            ; $4289: $9d
	ld [$fa10], sp                                   ; $428a: $08 $10 $fa
	sbc $01                                          ; $428d: $de $01
	sbc $03                                          ; $428f: $de $03
	sbc [hl]                                         ; $4291: $9e
	rlca                                             ; $4292: $07
	ld [hl], a                                       ; $4293: $77
	ld hl, sp-$22                                    ; $4294: $f8 $de
	ld [bc], a                                       ; $4296: $02
	sbc [hl]                                         ; $4297: $9e
	inc b                                            ; $4298: $04
	reti                                             ; $4299: $d9


	rst $38                                          ; $429a: $ff
	ld h, a                                          ; $429b: $67
	ret nc                                           ; $429c: $d0

	ld [bc], a                                       ; $429d: $02
	ret nz                                           ; $429e: $c0

	ld [bc], a                                       ; $429f: $02
	ret nz                                           ; $42a0: $c0

	ld [bc], a                                       ; $42a1: $02
	ret nz                                           ; $42a2: $c0

	ld l, b                                          ; $42a3: $68
	jr nc, jr_056_4303                               ; $42a4: $30 $5d

	ld [hl], h                                       ; $42a6: $74
	ld [hl], d                                       ; $42a7: $72
	ret nz                                           ; $42a8: $c0

	sbc e                                            ; $42a9: $9b
	ld a, [$fe55]                                    ; $42aa: $fa $55 $fe
	ld d, l                                          ; $42ad: $55
	ld a, c                                          ; $42ae: $79
	ld e, d                                          ; $42af: $5a
	ld d, d                                          ; $42b0: $52
	ret nz                                           ; $42b1: $c0

	ld a, [hl]                                       ; $42b2: $7e
	sbc h                                            ; $42b3: $9c
	add [hl]                                         ; $42b4: $86
	ld a, [$54aa]                                    ; $42b5: $fa $aa $54
	xor b                                            ; $42b8: $a8
	ld d, h                                          ; $42b9: $54
	xor b                                            ; $42ba: $a8
	ld d, b                                          ; $42bb: $50
	and b                                            ; $42bc: $a0
	ld d, b                                          ; $42bd: $50
	ld d, l                                          ; $42be: $55
	xor e                                            ; $42bf: $ab
	ld d, a                                          ; $42c0: $57
	xor e                                            ; $42c1: $ab
	ld d, a                                          ; $42c2: $57
	xor a                                            ; $42c3: $af
	ld e, a                                          ; $42c4: $5f
	xor a                                            ; $42c5: $af
	ld bc, $0302                                     ; $42c6: $01 $02 $03
	rlca                                             ; $42c9: $07
	dec bc                                           ; $42ca: $0b
	rrca                                             ; $42cb: $0f
	rla                                              ; $42cc: $17
	rra                                              ; $42cd: $1f
	ld [hl], l                                       ; $42ce: $75
	sub h                                            ; $42cf: $94
	ld [hl], a                                       ; $42d0: $77
	ld d, $df                                        ; $42d1: $16 $df
	cp $99                                           ; $42d3: $fe $99
	ld a, [$eaf6]                                    ; $42d5: $fa $f6 $ea
	push af                                          ; $42d8: $f5
	jp hl                                            ; $42d9: $e9


	push de                                          ; $42da: $d5
	ld a, e                                          ; $42db: $7b
	dec l                                            ; $42dc: $2d
	sbc d                                            ; $42dd: $9a
	dec bc                                           ; $42de: $0b
	rla                                              ; $42df: $17
	dec bc                                           ; $42e0: $0b
	rla                                              ; $42e1: $17
	dec hl                                           ; $42e2: $2b
	ccf                                              ; $42e3: $3f
	ld e, b                                          ; $42e4: $58
	sbc c                                            ; $42e5: $99

jr_056_42e6:
	ld [$0814], sp                                   ; $42e6: $08 $14 $08
	inc d                                            ; $42e9: $14
	ld a, [hl+]                                      ; $42ea: $2a
	dec d                                            ; $42eb: $15
	ld c, a                                          ; $42ec: $4f
	ld l, b                                          ; $42ed: $68
	ld a, a                                          ; $42ee: $7f
	cp d                                             ; $42ef: $ba
	reti                                             ; $42f0: $d9


	rst $38                                          ; $42f1: $ff
	add h                                            ; $42f2: $84
	dec b                                            ; $42f3: $05
	rrca                                             ; $42f4: $0f
	rla                                              ; $42f5: $17
	jr c, jr_056_4368                                ; $42f6: $38 $70

	rst SubAFromBC                                          ; $42f8: $e7
	ld l, h                                          ; $42f9: $6c
	ld hl, sp-$02                                    ; $42fa: $f8 $fe
	rst $38                                          ; $42fc: $ff
	ld hl, sp-$20                                    ; $42fd: $f8 $e0
	ret nz                                           ; $42ff: $c0

	adc a                                            ; $4300: $8f
	sub b                                            ; $4301: $90
	nop                                              ; $4302: $00

jr_056_4303:
	ldh [$b0], a                                     ; $4303: $e0 $b0
	db $fc                                           ; $4305: $fc
	rrca                                             ; $4306: $0f
	ld bc, $7ee0                                     ; $4307: $01 $e0 $7e
	rlca                                             ; $430a: $07
	nop                                              ; $430b: $00
	ret nz                                           ; $430c: $c0

	ld a, b                                          ; $430d: $78
	ld a, e                                          ; $430e: $7b
	db $fc                                           ; $430f: $fc
	sbc l                                            ; $4310: $9d
	inc a                                            ; $4311: $3c
	inc bc                                           ; $4312: $03
	cp $9a                                           ; $4313: $fe $9a
	add b                                            ; $4315: $80
	ldh [rSVBK], a                                   ; $4316: $e0 $70
	jr jr_056_42e6                                   ; $4318: $18 $cc

	db $fd                                           ; $431a: $fd
	sbc e                                            ; $431b: $9b
	ret nz                                           ; $431c: $c0

	jr nc, jr_056_4327                               ; $431d: $30 $08

	add h                                            ; $431f: $84
	ld a, d                                          ; $4320: $7a
	sbc e                                            ; $4321: $9b
	rst SubAFromDE                                          ; $4322: $df
	rrca                                             ; $4323: $0f
	sbc $1f                                          ; $4324: $de $1f
	rst SubAFromDE                                          ; $4326: $df

jr_056_4327:
	inc b                                            ; $4327: $04
	sbc $08                                          ; $4328: $de $08
	sbc $10                                          ; $432a: $de $10
	ld [bc], a                                       ; $432c: $02
	ret nc                                           ; $432d: $d0

	ld [bc], a                                       ; $432e: $02
	ret nz                                           ; $432f: $c0

	ld c, $c0                                        ; $4330: $0e $c0
	ld c, l                                          ; $4332: $4d
	nop                                              ; $4333: $00
	sbc h                                            ; $4334: $9c
	inc sp                                           ; $4335: $33
	ld [hl], a                                       ; $4336: $77
	ld [hl], a                                       ; $4337: $77
	db $dd                                           ; $4338: $dd
	ld h, [hl]                                       ; $4339: $66
	sbc $77                                          ; $433a: $de $77
	ld [hl], a                                       ; $433c: $77
	or $9d                                           ; $433d: $f6 $9d
	ld d, l                                          ; $433f: $55
	ld d, [hl]                                       ; $4340: $56
	ld l, e                                          ; $4341: $6b
	or $9c                                           ; $4342: $f6 $9c
	ld h, l                                          ; $4344: $65
	ld b, h                                          ; $4345: $44
	ld b, l                                          ; $4346: $45
	ld l, e                                          ; $4347: $6b
	or $9c                                           ; $4348: $f6 $9c
	ld d, l                                          ; $434a: $55
	ld d, h                                          ; $434b: $54
	ld d, l                                          ; $434c: $55
	ld [hl], a                                       ; $434d: $77
	or $de                                           ; $434e: $f6 $de
	ld [hl], a                                       ; $4350: $77
	ld a, e                                          ; $4351: $7b
	db $ec                                           ; $4352: $ec
	sbc [hl]                                         ; $4353: $9e
	ld d, [hl]                                       ; $4354: $56
	ld l, e                                          ; $4355: $6b
	or $9c                                           ; $4356: $f6 $9c
	inc h                                            ; $4358: $24
	ld b, h                                          ; $4359: $44
	ld d, l                                          ; $435a: $55
	ld l, e                                          ; $435b: $6b
	or $9b                                           ; $435c: $f6 $9b
	ld d, h                                          ; $435e: $54
	ld b, l                                          ; $435f: $45
	ld d, l                                          ; $4360: $55
	scf                                              ; $4361: $37
	call c, $9c77                                    ; $4362: $dc $77 $9c
	ld [hl], l                                       ; $4365: $75
	ld d, h                                          ; $4366: $54
	ld d, l                                          ; $4367: $55

jr_056_4368:
	ld l, e                                          ; $4368: $6b
	or $9c                                           ; $4369: $f6 $9c
	dec h                                            ; $436b: $25
	ld h, [hl]                                       ; $436c: $66
	ld h, l                                          ; $436d: $65
	ld l, e                                          ; $436e: $6b
	or $9b                                           ; $436f: $f6 $9b
	ld h, $66                                        ; $4371: $26 $66
	ld h, l                                          ; $4373: $65
	ld d, e                                          ; $4374: $53
	call c, $9a77                                    ; $4375: $dc $77 $9a
	ld [hl], d                                       ; $4378: $72
	ld d, [hl]                                       ; $4379: $56
	ld h, [hl]                                       ; $437a: $66
	ld d, h                                          ; $437b: $54
	ld b, e                                          ; $437c: $43
	sbc $77                                          ; $437d: $de $77
	ret nz                                           ; $437f: $c0

	adc d                                            ; $4380: $8a
	ld sp, hl                                        ; $4381: $f9
	reti                                             ; $4382: $d9


	rst $38                                          ; $4383: $ff
	reti                                             ; $4384: $d9


	add hl, de                                       ; $4385: $19
	reti                                             ; $4386: $d9


	cp $97                                           ; $4387: $fe $97
	ld d, l                                          ; $4389: $55
	xor e                                            ; $438a: $ab
	ld d, [hl]                                       ; $438b: $56
	adc l                                            ; $438c: $8d
	ld e, d                                          ; $438d: $5a
	inc c                                            ; $438e: $0c
	ld e, d                                          ; $438f: $5a
	ld [$ffd9], sp                                   ; $4390: $08 $d9 $ff
	sub a                                            ; $4393: $97
	ldh [$f0], a                                     ; $4394: $e0 $f0
	sbc b                                            ; $4396: $98
	ld c, e                                          ; $4397: $4b
	ld c, $0a                                        ; $4398: $0e $0a
	dec d                                            ; $439a: $15
	dec de                                           ; $439b: $1b
	db $db                                           ; $439c: $db
	rst $38                                          ; $439d: $ff
	sub l                                            ; $439e: $95
	cp $fc                                           ; $439f: $fe $fc
	dec bc                                           ; $43a1: $0b
	dec d                                            ; $43a2: $15
	dec bc                                           ; $43a3: $0b
	sub [hl]                                         ; $43a4: $96
	jp z, $ce54                                      ; $43a5: $ca $54 $ce

	sbc b                                            ; $43a8: $98
	db $db                                           ; $43a9: $db
	rst $38                                          ; $43aa: $ff
	rst SubAFromDE                                          ; $43ab: $df
	ld a, a                                          ; $43ac: $7f
	sub a                                            ; $43ad: $97
	xor e                                            ; $43ae: $ab
	sub [hl]                                         ; $43af: $96
	xor [hl]                                         ; $43b0: $ae
	inc e                                            ; $43b1: $1c
	cp a                                             ; $43b2: $bf
	ld h, e                                          ; $43b3: $63
	rst AddAOntoHL                                          ; $43b4: $ef
	rst SubAFromDE                                          ; $43b5: $df
	call c, $80ff                                    ; $43b6: $dc $ff $80
	db $fc                                           ; $43b9: $fc
	sbc a                                            ; $43ba: $9f
	ccf                                              ; $43bb: $3f
	dec hl                                           ; $43bc: $2b
	ld d, a                                          ; $43bd: $57
	dec hl                                           ; $43be: $2b
	ld d, $0b                                        ; $43bf: $16 $0b
	push bc                                          ; $43c1: $c5
	and d                                            ; $43c2: $a2
	pop de                                           ; $43c3: $d1
	call nc, $d4a8                                   ; $43c4: $d4 $a8 $d4
	add sp, -$0c                                     ; $43c7: $e8 $f4
	ld a, [$be7d]                                    ; $43c9: $fa $7d $be
	di                                               ; $43cc: $f3
	sra a                                            ; $43cd: $cb $2f
	cp a                                             ; $43cf: $bf
	rst $38                                          ; $43d0: $ff
	db $fc                                           ; $43d1: $fc
	di                                               ; $43d2: $f3
	rst GetHLinHL                                          ; $43d3: $cf
	nop                                              ; $43d4: $00
	inc b                                            ; $43d5: $04
	db $10                                           ; $43d6: $10
	ld b, b                                          ; $43d7: $40
	db $fd                                           ; $43d8: $fd
	sub e                                            ; $43d9: $93
	add a                                            ; $43da: $87
	di                                               ; $43db: $f3
	ld sp, hl                                        ; $43dc: $f9
	cp $ff                                           ; $43dd: $fe $ff
	ccf                                              ; $43df: $3f
	rst GetHLinHL                                          ; $43e0: $cf
	or $00                                           ; $43e1: $f6 $00
	nop                                              ; $43e3: $00
	ld b, $01                                        ; $43e4: $06 $01
	cp $96                                           ; $43e6: $fe $96
	ld bc, $d2c9                                     ; $43e8: $01 $c9 $d2
	call nc, $3228                                   ; $43eb: $d4 $28 $32
	ld d, l                                          ; $43ee: $55
	ld h, l                                          ; $43ef: $65
	ld [hl], l                                       ; $43f0: $75
	sbc $3f                                          ; $43f1: $de $3f
	sbc d                                            ; $43f3: $9a
	rst $38                                          ; $43f4: $ff
	db $fd                                           ; $43f5: $fd
	ld a, [$e1f0]                                    ; $43f6: $fa $f0 $e1
	ld a, e                                          ; $43f9: $7b
	db $ed                                           ; $43fa: $ed
	sbc d                                            ; $43fb: $9a
	ld h, $da                                        ; $43fc: $26 $da
	ld sp, hl                                        ; $43fe: $f9
	and d                                            ; $43ff: $a2
	dec b                                            ; $4400: $05
	sbc $ff                                          ; $4401: $de $ff
	sub d                                            ; $4403: $92
	rst SubAFromDE                                          ; $4404: $df
	inc a                                            ; $4405: $3c
	ld h, b                                          ; $4406: $60
	pop bc                                           ; $4407: $c1
	add e                                            ; $4408: $83
	inc c                                            ; $4409: $0c
	ccf                                              ; $440a: $3f
	jp $bf5f                                         ; $440b: $c3 $5f $bf


	ld e, a                                          ; $440e: $5f
	cp [hl]                                          ; $440f: $be
	ld d, d                                          ; $4410: $52
	sbc $ff                                          ; $4411: $de $ff
	add b                                            ; $4413: $80
	cp l                                             ; $4414: $bd
	ld a, c                                          ; $4415: $79
	di                                               ; $4416: $f3
	db $e3                                           ; $4417: $e3
	rst AddAOntoHL                                          ; $4418: $ef
	rst $38                                          ; $4419: $ff
	rst SubAFromBC                                          ; $441a: $e7
	ldh a, [rOBP1]                                   ; $441b: $f0 $49
	call c, $4fc6                                    ; $441d: $dc $c6 $4f
	inc h                                            ; $4420: $24
	rst $38                                          ; $4421: $ff
	cp b                                             ; $4422: $b8
	sbc h                                            ; $4423: $9c
	sbc $4f                                          ; $4424: $de $4f
	ld l, a                                          ; $4426: $6f
	ld h, a                                          ; $4427: $67
	ld h, a                                          ; $4428: $67
	nop                                              ; $4429: $00
	ret nz                                           ; $442a: $c0

	daa                                              ; $442b: $27
	add hl, de                                       ; $442c: $19
	ld c, [hl]                                       ; $442d: $4e
	scf                                              ; $442e: $37
	rra                                              ; $442f: $1f
	rst JumpTable                                          ; $4430: $c7
	rst $38                                          ; $4431: $ff
	rst $38                                          ; $4432: $ff
	add b                                            ; $4433: $80
	jr c, jr_056_4454                                ; $4434: $38 $1e

	adc a                                            ; $4436: $8f
	push bc                                          ; $4437: $c5
	ldh [c], a                                       ; $4438: $e2
	ld sp, hl                                        ; $4439: $f9
	adc l                                            ; $443a: $8d
	dec b                                            ; $443b: $05
	adc l                                            ; $443c: $8d
	add h                                            ; $443d: $84
	ld b, d                                          ; $443e: $42
	sub b                                            ; $443f: $90
	jp z, Jump_056_73e1                              ; $4440: $ca $e1 $73

	ld hl, sp+$72                                    ; $4443: $f8 $72
	add hl, sp                                       ; $4445: $39
	adc h                                            ; $4446: $8c
	rst SubAFromBC                                          ; $4447: $e7
	pop af                                           ; $4448: $f1
	inc a                                            ; $4449: $3c
	sbc c                                            ; $444a: $99
	ld d, [hl]                                       ; $444b: $56
	add hl, hl                                       ; $444c: $29
	or d                                             ; $444d: $b2
	adc c                                            ; $444e: $89
	inc b                                            ; $444f: $04
	ld [bc], a                                       ; $4450: $02
	add hl, bc                                       ; $4451: $09
	cp $80                                           ; $4452: $fe $80

Call_056_4454:
jr_056_4454:
	rst AddAOntoHL                                          ; $4454: $ef
	ld [hl], a                                       ; $4455: $77
	add hl, de                                       ; $4456: $19
	inc c                                            ; $4457: $0c
	ld b, $83                                        ; $4458: $06 $83
	pop bc                                           ; $445a: $c1
	add d                                            ; $445b: $82
	and c                                            ; $445c: $a1
	ld b, b                                          ; $445d: $40
	xor c                                            ; $445e: $a9
	ld d, h                                          ; $445f: $54
	xor c                                            ; $4460: $a9
	ld [de], a                                       ; $4461: $12
	db $10                                           ; $4462: $10
	ld h, a                                          ; $4463: $67
	inc bc                                           ; $4464: $03
	adc c                                            ; $4465: $89
	call nz, $72e2                                   ; $4466: $c4 $e2 $72
	ld a, c                                          ; $4469: $79
	cp l                                             ; $446a: $bd
	jr nc, jr_056_4495                               ; $446b: $30 $28

	xor b                                            ; $446d: $a8
	sbc b                                            ; $446e: $98
	ld e, b                                          ; $446f: $58
	ld d, h                                          ; $4470: $54
	inc [hl]                                         ; $4471: $34
	or h                                             ; $4472: $b4
	reti                                             ; $4473: $d9


	rst $38                                          ; $4474: $ff
	sub e                                            ; $4475: $93
	add b                                            ; $4476: $80
	ld d, l                                          ; $4477: $55
	xor d                                            ; $4478: $aa
	ld d, b                                          ; $4479: $50
	ld a, [bc]                                       ; $447a: $0a
	ld e, a                                          ; $447b: $5f
	ld a, [$00d4]                                    ; $447c: $fa $d4 $00
	add b                                            ; $447f: $80
	ld d, l                                          ; $4480: $55
	xor a                                            ; $4481: $af
	db $dd                                           ; $4482: $dd
	rst $38                                          ; $4483: $ff
	sub l                                            ; $4484: $95
	ld [$0340], a                                    ; $4485: $ea $40 $03
	ld e, a                                          ; $4488: $5f
	ld a, [$8250]                                    ; $4489: $fa $50 $82
	db $10                                           ; $448c: $10
	dec d                                            ; $448d: $15
	cp a                                             ; $448e: $bf
	db $db                                           ; $448f: $db
	rst $38                                          ; $4490: $ff
	sub b                                            ; $4491: $90
	nop                                              ; $4492: $00
	stop                                             ; $4493: $10 $00

jr_056_4495:
	nop                                              ; $4495: $00
	ld d, h                                          ; $4496: $54
	nop                                              ; $4497: $00
	ld d, l                                          ; $4498: $55
	nop                                              ; $4499: $00
	rst $38                                          ; $449a: $ff
	rst AddAOntoHL                                          ; $449b: $ef
	rst $38                                          ; $449c: $ff
	rst $38                                          ; $449d: $ff
	xor e                                            ; $449e: $ab
	rst $38                                          ; $449f: $ff
	xor d                                            ; $44a0: $aa
	ld b, d                                          ; $44a1: $42
	ret nz                                           ; $44a2: $c0

	sub a                                            ; $44a3: $97
	ld d, h                                          ; $44a4: $54
	inc bc                                           ; $44a5: $03
	ld d, l                                          ; $44a6: $55
	ld a, [bc]                                       ; $44a7: $0a
	ld d, l                                          ; $44a8: $55
	jr z, jr_056_451b                                ; $44a9: $28 $70

	jr z, @+$74                                      ; $44ab: $28 $72

	jp nc, $ffde                                     ; $44ad: $d2 $de $ff

	add h                                            ; $44b0: $84
	ld [hl], c                                       ; $44b1: $71
	db $eb                                           ; $44b2: $eb
	ld h, [hl]                                       ; $44b3: $66
	or d                                             ; $44b4: $b2
	db $ec                                           ; $44b5: $ec
	and b                                            ; $44b6: $a0
	ld b, c                                          ; $44b7: $41
	add d                                            ; $44b8: $82
	cp $fc                                           ; $44b9: $fe $fc
	ld sp, hl                                        ; $44bb: $f9
	ld a, a                                          ; $44bc: $7f
	ccf                                              ; $44bd: $3f
	ld a, a                                          ; $44be: $7f
	rst $38                                          ; $44bf: $ff
	rst $38                                          ; $44c0: $ff
	cp e                                             ; $44c1: $bb
	ld sp, $255a                                     ; $44c2: $31 $5a $25
	ld l, a                                          ; $44c5: $6f
	rst JumpTable                                          ; $44c6: $c7
	ld c, a                                          ; $44c7: $4f
	rst AddAOntoHL                                          ; $44c8: $ef
	ld a, [hl]                                       ; $44c9: $7e
	cp $fd                                           ; $44ca: $fe $fd
	sbc $fb                                          ; $44cc: $de $fb
	rst SubAFromDE                                          ; $44ce: $df
	rst FarCall                                          ; $44cf: $f7
	reti                                             ; $44d0: $d9


	rst $38                                          ; $44d1: $ff
	ld a, e                                          ; $44d2: $7b
	push hl                                          ; $44d3: $e5
	call c, $94ff                                    ; $44d4: $dc $ff $94
	add sp, -$08                                     ; $44d7: $e8 $f8
	db $f4                                           ; $44d9: $f4
	db $fc                                           ; $44da: $fc
	db $fc                                           ; $44db: $fc
	ld a, [$fefe]                                    ; $44dc: $fa $fe $fe
	rst SubAFromDE                                          ; $44df: $df
	rst AddAOntoHL                                          ; $44e0: $ef
	rst AddAOntoHL                                          ; $44e1: $ef
	sbc $f7                                          ; $44e2: $de $f7
	rst SubAFromDE                                          ; $44e4: $df
	ei                                               ; $44e5: $fb
	add b                                            ; $44e6: $80
	adc a                                            ; $44e7: $8f
	sbc a                                            ; $44e8: $9f
	ccf                                              ; $44e9: $3f
	ld a, a                                          ; $44ea: $7f
	jr nc, jr_056_4556                               ; $44eb: $30 $69

	cpl                                              ; $44ed: $2f
	rra                                              ; $44ee: $1f
	jr nc, jr_056_4551                               ; $44ef: $30 $60

	ret nz                                           ; $44f1: $c0

	add b                                            ; $44f2: $80
	ret nz                                           ; $44f3: $c0

	add [hl]                                         ; $44f4: $86
	ret nc                                           ; $44f5: $d0

	ldh [$fe], a                                     ; $44f6: $e0 $fe
	ld a, [$fcf8]                                    ; $44f8: $fa $f8 $fc
	add hl, sp                                       ; $44fb: $39
	ld e, c                                          ; $44fc: $59
	adc c                                            ; $44fd: $89
	push hl                                          ; $44fe: $e5
	ld bc, $0705                                     ; $44ff: $01 $05 $07
	inc bc                                           ; $4502: $03
	rlca                                             ; $4503: $07
	add a                                            ; $4504: $87
	ld h, a                                          ; $4505: $67
	add b                                            ; $4506: $80
	inc de                                           ; $4507: $13
	xor e                                            ; $4508: $ab
	jp z, $e4c6                                      ; $4509: $ca $c6 $e4

	xor h                                            ; $450c: $ac
	cp b                                             ; $450d: $b8
	cp b                                             ; $450e: $b8
	xor b                                            ; $450f: $a8
	pop hl                                           ; $4510: $e1
	db $e3                                           ; $4511: $e3
	db $e3                                           ; $4512: $e3
	rst JumpTable                                          ; $4513: $c7
	rst JumpTable                                          ; $4514: $c7
	rst GetHLinHL                                          ; $4515: $cf
	rst GetHLinHL                                          ; $4516: $cf
	rst SubAFromDE                                          ; $4517: $df
	adc d                                            ; $4518: $8a
	sub h                                            ; $4519: $94
	xor a                                            ; $451a: $af

jr_056_451b:
	db $db                                           ; $451b: $db
	and l                                            ; $451c: $a5
	jp nc, $ee6a                                     ; $451d: $d2 $6a $ee

	rlca                                             ; $4520: $07
	rrca                                             ; $4521: $0f
	dec e                                            ; $4522: $1d
	dec a                                            ; $4523: $3d
	ld a, e                                          ; $4524: $7b
	ld l, e                                          ; $4525: $6b
	rst SubAFromDE                                          ; $4526: $df
	jp $86df                                         ; $4527: $c3 $df $86


	sbc c                                            ; $452a: $99
	dec b                                            ; $452b: $05
	add hl, bc                                       ; $452c: $09
	dec c                                            ; $452d: $0d
	adc [hl]                                         ; $452e: $8e
	adc [hl]                                         ; $452f: $8e
	adc l                                            ; $4530: $8d
	db $dd                                           ; $4531: $dd
	rst $38                                          ; $4532: $ff
	adc b                                            ; $4533: $88
	ei                                               ; $4534: $fb
	ld sp, hl                                        ; $4535: $f9
	ld sp, hl                                        ; $4536: $f9
	ld hl, sp+$33                                    ; $4537: $f8 $33
	inc sp                                           ; $4539: $33
	add hl, hl                                       ; $453a: $29
	rla                                              ; $453b: $17
	ld [de], a                                       ; $453c: $12
	sbc b                                            ; $453d: $98
	sub h                                            ; $453e: $94
	ld e, d                                          ; $453f: $5a
	ld h, [hl]                                       ; $4540: $66
	ld [hl+], a                                      ; $4541: $22
	inc sp                                           ; $4542: $33
	cp c                                             ; $4543: $b9
	cp l                                             ; $4544: $bd
	rst $38                                          ; $4545: $ff
	rst $38                                          ; $4546: $ff
	rst FarCall                                          ; $4547: $f7
	or b                                             ; $4548: $b0
	db $ec                                           ; $4549: $ec
	ei                                               ; $454a: $fb
	ld a, e                                          ; $454b: $7b
	ld e, c                                          ; $454c: $59
	sbc $7f                                          ; $454d: $de $7f
	add b                                            ; $454f: $80
	rra                                              ; $4550: $1f

jr_056_4551:
	rlca                                             ; $4551: $07
	ld bc, $8080                                     ; $4552: $01 $80 $80
	ret nz                                           ; $4555: $c0

jr_056_4556:
	ret nz                                           ; $4556: $c0

	ldh a, [$78]                                     ; $4557: $f0 $78
	inc a                                            ; $4559: $3c
	sbc $3f                                          ; $455a: $de $3f
	db $fc                                           ; $455c: $fc
	rst GetHLinHL                                          ; $455d: $cf
	sbc e                                            ; $455e: $9b
	sbc [hl]                                         ; $455f: $9e
	rst GetHLinHL                                          ; $4560: $cf
	rst SubAFromBC                                          ; $4561: $e7
	di                                               ; $4562: $f3
	ld sp, hl                                        ; $4563: $f9
	rra                                              ; $4564: $1f
	ccf                                              ; $4565: $3f
	ld a, h                                          ; $4566: $7c
	add l                                            ; $4567: $85
	ld b, [hl]                                       ; $4568: $46
	add e                                            ; $4569: $83
	ld b, c                                          ; $456a: $41
	inc de                                           ; $456b: $13
	sbc c                                            ; $456c: $99
	ret z                                            ; $456d: $c8

	db $e4                                           ; $456e: $e4
	add b                                            ; $456f: $80
	ld h, b                                          ; $4570: $60
	jr nc, jr_056_45ab                               ; $4571: $30 $38

	sbc h                                            ; $4573: $9c
	call z, $f7e6                                    ; $4574: $cc $e6 $f7
	dec sp                                           ; $4577: $3b
	ld [$1a35], a                                    ; $4578: $ea $35 $1a
	adc [hl]                                         ; $457b: $8e
	ld h, l                                          ; $457c: $65
	and [hl]                                         ; $457d: $a6
	db $db                                           ; $457e: $db
	ld d, c                                          ; $457f: $51
	sbc h                                            ; $4580: $9c
	adc $67                                          ; $4581: $ce $67
	inc sp                                           ; $4583: $33
	sbc e                                            ; $4584: $9b
	ld e, c                                          ; $4585: $59
	inc l                                            ; $4586: $2c
	xor [hl]                                         ; $4587: $ae
	ld d, h                                          ; $4588: $54
	ld d, h                                          ; $4589: $54
	inc l                                            ; $458a: $2c
	inc l                                            ; $458b: $2c
	inc d                                            ; $458c: $14
	sub h                                            ; $458d: $94
	inc c                                            ; $458e: $0c
	sbc [hl]                                         ; $458f: $9e
	inc c                                            ; $4590: $0c
	reti                                             ; $4591: $d9


	rst $38                                          ; $4592: $ff
	sub a                                            ; $4593: $97
	and b                                            ; $4594: $a0
	nop                                              ; $4595: $00
	nop                                              ; $4596: $00
	ld [bc], a                                       ; $4597: $02
	nop                                              ; $4598: $00
	ld a, [bc]                                       ; $4599: $0a
	ld bc, $de0a                                     ; $459a: $01 $0a $de
	rst $38                                          ; $459d: $ff
	adc d                                            ; $459e: $8a
	db $fd                                           ; $459f: $fd
	rst $38                                          ; $45a0: $ff
	push af                                          ; $45a1: $f5
	cp $f5                                           ; $45a2: $fe $f5
	nop                                              ; $45a4: $00
	ld a, [hl+]                                      ; $45a5: $2a
	ld bc, $05aa                                     ; $45a6: $01 $aa $05
	xor d                                            ; $45a9: $aa
	ld d, l                                          ; $45aa: $55

jr_056_45ab:
	xor d                                            ; $45ab: $aa
	rst $38                                          ; $45ac: $ff
	push de                                          ; $45ad: $d5
	cp $55                                           ; $45ae: $fe $55
	ld a, [$aa55]                                    ; $45b0: $fa $55 $aa
	ld d, l                                          ; $45b3: $55
	ld a, e                                          ; $45b4: $7b
	db $fd                                           ; $45b5: $fd
	ld a, a                                          ; $45b6: $7f
	cp $9c                                           ; $45b7: $fe $9c
	xor [hl]                                         ; $45b9: $ae
	ld d, l                                          ; $45ba: $55
	cp [hl]                                          ; $45bb: $be
	ld [hl], a                                       ; $45bc: $77
	ld sp, hl                                        ; $45bd: $f9
	sbc e                                            ; $45be: $9b
	xor d                                            ; $45bf: $aa
	ld d, c                                          ; $45c0: $51
	xor d                                            ; $45c1: $aa
	ld b, c                                          ; $45c2: $41
	sbc $19                                          ; $45c3: $de $19
	sbc d                                            ; $45c5: $9a
	sbc c                                            ; $45c6: $99
	ld e, c                                          ; $45c7: $59
	sbc b                                            ; $45c8: $98
	ld e, c                                          ; $45c9: $59
	sbc c                                            ; $45ca: $99
	sbc $fe                                          ; $45cb: $de $fe
	sbc l                                            ; $45cd: $9d
	ld a, [hl]                                       ; $45ce: $7e
	cp [hl]                                          ; $45cf: $be
	ld a, e                                          ; $45d0: $7b
	cp $9d                                           ; $45d1: $fe $9d
	ld d, c                                          ; $45d3: $51
	ld c, $79                                        ; $45d4: $0e $79
	cp $9c                                           ; $45d6: $fe $9c
	dec bc                                           ; $45d8: $0b
	ld d, a                                          ; $45d9: $57
	xor d                                            ; $45da: $aa
	reti                                             ; $45db: $d9


	rst $38                                          ; $45dc: $ff
	sub a                                            ; $45dd: $97
	dec b                                            ; $45de: $05
	dec bc                                           ; $45df: $0b
	rra                                              ; $45e0: $1f
	cp a                                             ; $45e1: $bf
	ld [hl], l                                       ; $45e2: $75
	ld [$8051], a                                    ; $45e3: $ea $51 $80
	reti                                             ; $45e6: $d9


	rst $38                                          ; $45e7: $ff
	ld a, [hl]                                       ; $45e8: $7e
	rst GetHLinHL                                          ; $45e9: $cf
	sbc c                                            ; $45ea: $99
	rst SubAFromDE                                          ; $45eb: $df
	sbc $ad                                          ; $45ec: $de $ad
	cp d                                             ; $45ee: $ba
	cp l                                             ; $45ef: $bd
	cp d                                             ; $45f0: $ba
	db $dd                                           ; $45f1: $dd
	rst AddAOntoHL                                          ; $45f2: $ef
	db $dd                                           ; $45f3: $dd
	rst SubAFromDE                                          ; $45f4: $df
	rst SubAFromDE                                          ; $45f5: $df
	rst $38                                          ; $45f6: $ff
	ld a, a                                          ; $45f7: $7f
	call nc, $b577                                   ; $45f8: $d4 $77 $b5
	reti                                             ; $45fb: $d9


	rst $38                                          ; $45fc: $ff
	ld a, a                                          ; $45fd: $7f
	adc e                                            ; $45fe: $8b
	ld a, e                                          ; $45ff: $7b
	ld [hl-], a                                      ; $4600: $32
	ld a, l                                          ; $4601: $7d
	rst GetHLinHL                                          ; $4602: $cf
	sbc l                                            ; $4603: $9d
	cp a                                             ; $4604: $bf
	ei                                               ; $4605: $fb
	jp c, $95fd                                      ; $4606: $da $fd $95

	ccf                                              ; $4609: $3f
	rra                                              ; $460a: $1f
	ccf                                              ; $460b: $3f
	rra                                              ; $460c: $1f
	ld sp, $c17e                                     ; $460d: $31 $7e $c1
	ld a, $c0                                        ; $4610: $3e $c0
	ldh [$7b], a                                     ; $4612: $e0 $7b
	cp $90                                           ; $4614: $fe $90
	add b                                            ; $4616: $80
	ld a, $c1                                        ; $4617: $3e $c1
	pop af                                           ; $4619: $f1
	ld sp, hl                                        ; $461a: $f9
	jp hl                                            ; $461b: $e9


	push bc                                          ; $461c: $c5
	pop hl                                           ; $461d: $e1
	ld b, e                                          ; $461e: $43
	ld h, e                                          ; $461f: $63
	ld b, e                                          ; $4620: $43
	dec bc                                           ; $4621: $0b
	rlca                                             ; $4622: $07
	rla                                              ; $4623: $17
	dec sp                                           ; $4624: $3b
	ld a, e                                          ; $4625: $7b
	push hl                                          ; $4626: $e5
	sub d                                            ; $4627: $92
	cp a                                             ; $4628: $bf
	or c                                             ; $4629: $b1
	sub d                                            ; $462a: $92
	sub [hl]                                         ; $462b: $96
	xor b                                            ; $462c: $a8
	cp c                                             ; $462d: $b9
	cp c                                             ; $462e: $b9
	xor c                                            ; $462f: $a9
	xor c                                            ; $4630: $a9
	rst SubAFromDE                                          ; $4631: $df
	rst $38                                          ; $4632: $ff

jr_056_4633:
	db $fd                                           ; $4633: $fd
	db $fd                                           ; $4634: $fd
	db $dd                                           ; $4635: $dd
	db $fc                                           ; $4636: $fc
	sub h                                            ; $4637: $94
	rst SubAFromBC                                          ; $4638: $e7
	ld d, l                                          ; $4639: $55
	ld b, l                                          ; $463a: $45
	ld b, a                                          ; $463b: $47
	ld b, a                                          ; $463c: $47
	ld h, a                                          ; $463d: $67
	ld [hl], a                                       ; $463e: $77
	ld [hl], a                                       ; $463f: $77
	ld b, a                                          ; $4640: $47
	ld b, a                                          ; $4641: $47
	ld d, a                                          ; $4642: $57
	db $db                                           ; $4643: $db
	ld d, l                                          ; $4644: $55
	rst SubAFromDE                                          ; $4645: $df
	ld e, b                                          ; $4646: $58
	add b                                            ; $4647: $80
	ret c                                            ; $4648: $d8

	cp b                                             ; $4649: $b8
	rst FarCall                                          ; $464a: $f7
	cp a                                             ; $464b: $bf
	ld [hl], a                                       ; $464c: $77
	ld hl, sp-$10                                    ; $464d: $f8 $f0
	ldh a, [rSVBK]                                   ; $464f: $f0 $70
	ld [hl], b                                       ; $4651: $70
	ccf                                              ; $4652: $3f
	ld a, a                                          ; $4653: $7f
	ld hl, sp+$5d                                    ; $4654: $f8 $5d
	cp [hl]                                          ; $4656: $be
	ld [hl], e                                       ; $4657: $73
	ld [hl], c                                       ; $4658: $71
	jr c, jr_056_4633                                ; $4659: $38 $d8

	db $ec                                           ; $465b: $ec
	inc b                                            ; $465c: $04
	di                                               ; $465d: $f3
	ld [hl], c                                       ; $465e: $71
	jr jr_056_4679                                   ; $465f: $18 $18

	ld [$f0e0], sp                                   ; $4661: $08 $e0 $f0
	ld hl, sp+$3f                                    ; $4664: $f8 $3f
	cp [hl]                                          ; $4666: $be
	ld a, a                                          ; $4667: $7f
	sub h                                            ; $4668: $94
	add b                                            ; $4669: $80
	sbc $76                                          ; $466a: $de $76
	add hl, sp                                       ; $466c: $39
	rrca                                             ; $466d: $0f
	ldh [$e1], a                                     ; $466e: $e0 $e1
	pop af                                           ; $4670: $f1
	ld [hl], c                                       ; $4671: $71
	add hl, sp                                       ; $4672: $39
	dec c                                            ; $4673: $0d
	ld b, $00                                        ; $4674: $06 $00
	ld l, a                                          ; $4676: $6f
	rst GetHLinHL                                          ; $4677: $cf
	sbc e                                            ; $4678: $9b

jr_056_4679:
	rla                                              ; $4679: $17
	cpl                                              ; $467a: $2f
	rra                                              ; $467b: $1f
	ld a, [hl]                                       ; $467c: $7e
	jp c, $f0f0                                      ; $467d: $da $f0 $f0

	rst SubAFromBC                                          ; $4680: $e7
	rst AddAOntoHL                                          ; $4681: $ef
	rst SubAFromDE                                          ; $4682: $df
	ld sp, hl                                        ; $4683: $f9
	or d                                             ; $4684: $b2
	ld [hl-], a                                      ; $4685: $32
	ret nc                                           ; $4686: $d0

	add sp, -$4c                                     ; $4687: $e8 $b4
	add b                                            ; $4689: $80
	ld [$1ff9], a                                    ; $468a: $ea $f9 $1f
	scf                                              ; $468d: $37
	ld a, h                                          ; $468e: $7c
	ccf                                              ; $468f: $3f
	rra                                              ; $4690: $1f
	rst GetHLinHL                                          ; $4691: $cf
	rst FarCall                                          ; $4692: $f7
	rst $38                                          ; $4693: $ff
	rra                                              ; $4694: $1f
	ld a, $7b                                        ; $4695: $3e $7b
	ld a, [hl+]                                      ; $4697: $2a
	ld [de], a                                       ; $4698: $12
	sub c                                            ; $4699: $91
	ret                                              ; $469a: $c9


	ld b, h                                          ; $469b: $44
	inc h                                            ; $469c: $24
	or d                                             ; $469d: $b2
	sbc d                                            ; $469e: $9a
	rst SubAFromHL                                          ; $469f: $d7
	rst AddAOntoHL                                          ; $46a0: $ef
	ld l, a                                          ; $46a1: $6f
	scf                                              ; $46a2: $37
	cp e                                             ; $46a3: $bb
	db $db                                           ; $46a4: $db
	db $dd                                           ; $46a5: $dd
	db $ed                                           ; $46a6: $ed
	and [hl]                                         ; $46a7: $a6
	and [hl]                                         ; $46a8: $a6
	sub [hl]                                         ; $46a9: $96
	jp nc, $ea72                                     ; $46aa: $d2 $72 $ea

	ld [$76b6], a                                    ; $46ad: $ea $b6 $76
	ld a, a                                          ; $46b0: $7f
	ld a, a                                          ; $46b1: $7f
	ccf                                              ; $46b2: $3f
	sbc $9f                                          ; $46b3: $de $9f
	rst SubAFromDE                                          ; $46b5: $df
	rst GetHLinHL                                          ; $46b6: $cf
	ld [hl], d                                       ; $46b7: $72
	ldh [$9c], a                                     ; $46b8: $e0 $9c
	xor d                                            ; $46ba: $aa
	ld b, b                                          ; $46bb: $40
	ld a, [hl+]                                      ; $46bc: $2a
	ld [hl], e                                       ; $46bd: $73
	ld sp, hl                                        ; $46be: $f9
	sbc h                                            ; $46bf: $9c
	ld d, l                                          ; $46c0: $55

jr_056_46c1:
	cp a                                             ; $46c1: $bf
	push de                                          ; $46c2: $d5
	ld [hl], e                                       ; $46c3: $73
	ldh a, [c]                                       ; $46c4: $f2
	sbc h                                            ; $46c5: $9c
	xor d                                            ; $46c6: $aa
	nop                                              ; $46c7: $00
	xor d                                            ; $46c8: $aa
	ld [hl], e                                       ; $46c9: $73
	ldh a, [c]                                       ; $46ca: $f2
	adc h                                            ; $46cb: $8c
	ld d, l                                          ; $46cc: $55
	rst $38                                          ; $46cd: $ff
	ld d, l                                          ; $46ce: $55
	ld d, l                                          ; $46cf: $55
	cp [hl]                                          ; $46d0: $be
	ld d, a                                          ; $46d1: $57
	rst $38                                          ; $46d2: $ff
	ld d, a                                          ; $46d3: $57
	rst $38                                          ; $46d4: $ff
	ld e, a                                          ; $46d5: $5f
	rst $38                                          ; $46d6: $ff
	xor d                                            ; $46d7: $aa
	ld b, c                                          ; $46d8: $41
	xor b                                            ; $46d9: $a8
	nop                                              ; $46da: $00
	xor b                                            ; $46db: $a8
	nop                                              ; $46dc: $00
	and b                                            ; $46dd: $a0
	nop                                              ; $46de: $00
	ld a, d                                          ; $46df: $7a
	call nz, $9c9e                                   ; $46e0: $c4 $9e $9c
	ld [hl], a                                       ; $46e3: $77
	cp $7a                                           ; $46e4: $fe $7a
	call nz, Call_056_7a9e                           ; $46e6: $c4 $9e $7a
	ld [hl], a                                       ; $46e9: $77
	cp $7d                                           ; $46ea: $fe $7d
	ld h, h                                          ; $46ec: $64
	ei                                               ; $46ed: $fb
	reti                                             ; $46ee: $d9


	rst $38                                          ; $46ef: $ff
	ld a, h                                          ; $46f0: $7c
	ld b, l                                          ; $46f1: $45
	adc c                                            ; $46f2: $89
	ld a, [hl+]                                      ; $46f3: $2a
	ld d, h                                          ; $46f4: $54
	cpl                                              ; $46f5: $2f
	ld e, l                                          ; $46f6: $5d
	cp d                                             ; $46f7: $ba
	ld [hl], h                                       ; $46f8: $74
	push af                                          ; $46f9: $f5
	ld [$abd5], a                                    ; $46fa: $ea $d5 $ab
	pop de                                           ; $46fd: $d1
	and e                                            ; $46fe: $a3
	ld b, a                                          ; $46ff: $47
	adc a                                            ; $4700: $8f
	or l                                             ; $4701: $b5
	cp d                                             ; $4702: $ba
	or b                                             ; $4703: $b0
	cp d                                             ; $4704: $ba
	jr nc, jr_056_46c1                               ; $4705: $30 $ba

	jr nc, @-$4e                                     ; $4707: $30 $b0

	call c, $9adf                                    ; $4709: $dc $df $9a
	ld e, a                                          ; $470c: $5f
	rst SubAFromDE                                          ; $470d: $df
	ld e, a                                          ; $470e: $5f
	ld bc, $7ba0                                     ; $470f: $01 $a0 $7b
	cp e                                             ; $4712: $bb
	sbc [hl]                                         ; $4713: $9e
	add b                                            ; $4714: $80
	ld e, a                                          ; $4715: $5f
	ret nc                                           ; $4716: $d0

	ld a, b                                          ; $4717: $78
	sub e                                            ; $4718: $93
	sbc d                                            ; $4719: $9a
	xor a                                            ; $471a: $af
	ld e, l                                          ; $471b: $5d
	dec l                                            ; $471c: $2d
	ld e, a                                          ; $471d: $5f
	ld l, $dd                                        ; $471e: $2e $dd
	db $fd                                           ; $4720: $fd
	db $dd                                           ; $4721: $dd
	ei                                               ; $4722: $fb
	sub h                                            ; $4723: $94
	ld e, a                                          ; $4724: $5f
	dec a                                            ; $4725: $3d
	ld e, c                                          ; $4726: $59
	dec sp                                           ; $4727: $3b
	ld [hl], c                                       ; $4728: $71
	dec sp                                           ; $4729: $3b
	ld [hl], c                                       ; $472a: $71
	and e                                            ; $472b: $a3
	and b                                            ; $472c: $a0
	ret nz                                           ; $472d: $c0

	and b                                            ; $472e: $a0
	ld a, c                                          ; $472f: $79
	ld a, a                                          ; $4730: $7f
	sub e                                            ; $4731: $93
	add b                                            ; $4732: $80
	ld b, b                                          ; $4733: $40
	ld h, e                                          ; $4734: $63
	and a                                            ; $4735: $a7
	add a                                            ; $4736: $87
	rst GetHLinHL                                          ; $4737: $cf
	adc a                                            ; $4738: $8f
	rst SubAFromDE                                          ; $4739: $df
	sbc a                                            ; $473a: $9f
	ld e, a                                          ; $473b: $5f
	sbc a                                            ; $473c: $9f
	ld e, a                                          ; $473d: $5f
	ld a, c                                          ; $473e: $79
	ld sp, $fe7f                                     ; $473f: $31 $7f $fe
	sbc e                                            ; $4742: $9b
	cp a                                             ; $4743: $bf
	sbc c                                            ; $4744: $99
	sbc e                                            ; $4745: $9b
	cp e                                             ; $4746: $bb
	sbc $b9                                          ; $4747: $de $b9
	sbc d                                            ; $4749: $9a
	sbc c                                            ; $474a: $99
	push de                                          ; $474b: $d5
	db $ec                                           ; $474c: $ec
	db $ec                                           ; $474d: $ec
	call z, $cede                                    ; $474e: $cc $de $ce
	rst SubAFromDE                                          ; $4751: $df
	xor $9e                                          ; $4752: $ee $9e
	ld [hl], a                                       ; $4754: $77
	sbc $15                                          ; $4755: $de $15
	sbc d                                            ; $4757: $9a
	ld [de], a                                       ; $4758: $12
	rla                                              ; $4759: $17
	dec de                                           ; $475a: $1b
	sbc e                                            ; $475b: $9b
	ld d, l                                          ; $475c: $55
	db $dd                                           ; $475d: $dd
	ld [hl], a                                       ; $475e: $77
	sbc $72                                          ; $475f: $de $72
	sbc d                                            ; $4761: $9a
	rst FarCall                                          ; $4762: $f7
	ld a, a                                          ; $4763: $7f
	ld l, a                                          ; $4764: $6f
	ld a, a                                          ; $4765: $7f
	cp $7a                                           ; $4766: $fe $7a
	ld l, d                                          ; $4768: $6a
	add [hl]                                         ; $4769: $86
	sbc b                                            ; $476a: $98
	sub b                                            ; $476b: $90
	sub b                                            ; $476c: $90
	add b                                            ; $476d: $80
	add c                                            ; $476e: $81
	add c                                            ; $476f: $81
	add e                                            ; $4770: $83
	add e                                            ; $4771: $83
	adc $fe                                          ; $4772: $ce $fe
	rst JumpTable                                          ; $4774: $c7
	ld a, e                                          ; $4775: $7b
	db $fd                                           ; $4776: $fd
	and [hl]                                         ; $4777: $a6

jr_056_4778:
	ld b, a                                          ; $4778: $47
	rst SubAFromDE                                          ; $4779: $df

jr_056_477a:
	jr nc, jr_056_477c                               ; $477a: $30 $00

jr_056_477c:
	jr c, jr_056_477a                                ; $477c: $38 $fc

Call_056_477e:
	cp $e7                                           ; $477e: $fe $e7
	rst GetHLinHL                                          ; $4780: $cf
	ld c, a                                          ; $4781: $4f
	inc bc                                           ; $4782: $03
	di                                               ; $4783: $f3
	sbc d                                            ; $4784: $9a
	add b                                            ; $4785: $80
	ldh a, [c]                                       ; $4786: $f2
	ei                                               ; $4787: $fb
	dec sp                                           ; $4788: $3b
	dec c                                            ; $4789: $0d
	db $fd                                           ; $478a: $fd
	sbc e                                            ; $478b: $9b
	ld [bc], a                                       ; $478c: $02
	inc bc                                           ; $478d: $03
	inc bc                                           ; $478e: $03
	ld bc, $92fd                                     ; $478f: $01 $fd $92
	jp hl                                            ; $4792: $e9


	ei                                               ; $4793: $fb
	ld c, e                                          ; $4794: $4b
	inc sp                                           ; $4795: $33
	and $18                                          ; $4796: $e6 $18
	ld h, b                                          ; $4798: $60
	nop                                              ; $4799: $00
	ld a, [$e8e8]                                    ; $479a: $fa $e8 $e8
	ret c                                            ; $479d: $d8

	ldh a, [$fe]                                     ; $479e: $f0 $fe
	sub a                                            ; $47a0: $97
	ret z                                            ; $47a1: $c8

	call nz, $e2e4                                   ; $47a2: $c4 $e4 $e2
	ld [hl], d                                       ; $47a5: $72
	ld sp, $1839                                     ; $47a6: $31 $39 $18
	ld a, d                                          ; $47a9: $7a
	ret nc                                           ; $47aa: $d0

	ld a, [hl]                                       ; $47ab: $7e
	xor l                                            ; $47ac: $ad
	adc h                                            ; $47ad: $8c
	rra                                              ; $47ae: $1f
	rrca                                             ; $47af: $0f
	rrca                                             ; $47b0: $0f
	ld d, [hl]                                       ; $47b1: $56
	ld e, a                                          ; $47b2: $5f
	dec sp                                           ; $47b3: $3b
	dec hl                                           ; $47b4: $2b
	xor a                                            ; $47b5: $af
	sub l                                            ; $47b6: $95
	sub l                                            ; $47b7: $95
	rst SubAFromHL                                          ; $47b8: $d7
	rst AddAOntoHL                                          ; $47b9: $ef
	rst SubAFromBC                                          ; $47ba: $e7
	rst SubAFromBC                                          ; $47bb: $e7
	rst FarCall                                          ; $47bc: $f7
	ld [hl], e                                       ; $47bd: $73
	ld a, e                                          ; $47be: $7b
	ld a, e                                          ; $47bf: $7b
	cp c                                             ; $47c0: $b9
	ld sp, hl                                        ; $47c1: $f9
	reti                                             ; $47c2: $d9


	rst $38                                          ; $47c3: $ff
	ld a, [hl]                                       ; $47c4: $7e
	add $ff                                          ; $47c5: $c6 $ff
	sbc h                                            ; $47c7: $9c
	ld a, [hl+]                                      ; $47c8: $2a
	ld a, l                                          ; $47c9: $7d
	xor d                                            ; $47ca: $aa
	ld a, d                                          ; $47cb: $7a
	add $df                                          ; $47cc: $c6 $df
	rst $38                                          ; $47ce: $ff
	sbc l                                            ; $47cf: $9d
	push de                                          ; $47d0: $d5
	add d                                            ; $47d1: $82
	ld e, l                                          ; $47d2: $5d
	ret c                                            ; $47d3: $d8

	ld sp, hl                                        ; $47d4: $f9
	sub l                                            ; $47d5: $95
	db $dd                                           ; $47d6: $dd
	call c, $dede                                    ; $47d7: $dc $de $de
	jp c, $fade                                      ; $47da: $da $de $fa

	sbc $3a                                          ; $47dd: $de $3a
	ld a, [hl-]                                      ; $47df: $3a
	db $dd                                           ; $47e0: $dd
	jr c, jr_056_4778                                ; $47e1: $38 $95

	jr @+$3a                                         ; $47e3: $18 $38

	nop                                              ; $47e5: $00
	ld bc, $0100                                     ; $47e6: $01 $00 $01
	ld a, [hl+]                                      ; $47e9: $2a
	ld d, h                                          ; $47ea: $54
	xor b                                            ; $47eb: $a8
	ld d, h                                          ; $47ec: $54
	ld [hl], b                                       ; $47ed: $70
	ld b, e                                          ; $47ee: $43
	sbc $ff                                          ; $47ef: $de $ff
	sub d                                            ; $47f1: $92
	xor c                                            ; $47f2: $a9
	ld d, e                                          ; $47f3: $53
	dec h                                            ; $47f4: $25
	ld c, d                                          ; $47f5: $4a
	sub h                                            ; $47f6: $94
	ld bc, $150a                                     ; $47f7: $01 $0a $15
	ld e, [hl]                                       ; $47fa: $5e
	cp h                                             ; $47fb: $bc
	ld a, [$ebf5]                                    ; $47fc: $fa $f5 $eb
	sbc $ff                                          ; $47ff: $de $ff
	adc b                                            ; $4801: $88
	ld [hl-], a                                      ; $4802: $32
	or h                                             ; $4803: $b4
	ld [hl-], a                                      ; $4804: $32
	sbc l                                            ; $4805: $9d
	ld a, [de]                                       ; $4806: $1a
	ld a, c                                          ; $4807: $79
	rst $38                                          ; $4808: $ff
	call Call_056_5bdd                               ; $4809: $cd $dd $5b
	db $dd                                           ; $480c: $dd
	ld l, d                                          ; $480d: $6a
	db $ed                                           ; $480e: $ed
	xor $f4                                          ; $480f: $ee $f4
	or $80                                           ; $4811: $f6 $80
	nop                                              ; $4813: $00
	and b                                            ; $4814: $a0
	ld b, b                                          ; $4815: $40
	xor b                                            ; $4816: $a8
	call nc, $78fe                                   ; $4817: $d4 $fe $78
	ld b, b                                          ; $481a: $40
	ld a, [hl]                                       ; $481b: $7e
	add $93                                          ; $481c: $c6 $93
	ld d, a                                          ; $481e: $57
	dec hl                                           ; $481f: $2b
	ld bc, $5e00                                     ; $4820: $01 $00 $5e
	ld l, $5e                                        ; $4823: $2e $5e
	ld a, [hl-]                                      ; $4825: $3a
	ld e, l                                          ; $4826: $5d
	dec a                                            ; $4827: $3d
	ld d, a                                          ; $4828: $57
	ld a, [hl+]                                      ; $4829: $2a
	ld [hl], h                                       ; $482a: $74
	inc hl                                           ; $482b: $23
	rst SubAFromDE                                          ; $482c: $df
	or $84                                           ; $482d: $f6 $84
	db $fc                                           ; $482f: $fc
	db $fd                                           ; $4830: $fd
	ld [hl], l                                       ; $4831: $75
	db $e3                                           ; $4832: $e3
	ld h, [hl]                                       ; $4833: $66
	jp Jump_056_409e                                 ; $4834: $c3 $9e $40


	inc [hl]                                         ; $4837: $34
	ld a, b                                          ; $4838: $78
	add b                                            ; $4839: $80
	nop                                              ; $483a: $00
	add c                                            ; $483b: $81
	nop                                              ; $483c: $00
	ld bc, $cb3f                                     ; $483d: $01 $3f $cb
	add a                                            ; $4840: $87
	cp a                                             ; $4841: $bf
	ccf                                              ; $4842: $3f
	cp a                                             ; $4843: $bf
	ld a, a                                          ; $4844: $7f
	ld l, a                                          ; $4845: $6f
	ld d, l                                          ; $4846: $55
	xor e                                            ; $4847: $ab
	push de                                          ; $4848: $d5
	ld a, a                                          ; $4849: $7f
	ld a, e                                          ; $484a: $7b
	adc $dd                                          ; $484b: $ce $dd
	rst $38                                          ; $484d: $ff
	rst SubAFromDE                                          ; $484e: $df
	ld e, h                                          ; $484f: $5c
	sbc c                                            ; $4850: $99
	ld c, h                                          ; $4851: $4c
	inc l                                            ; $4852: $2c
	ld l, $2e                                        ; $4853: $2e $2e
	ld d, $16                                        ; $4855: $16 $16
	ld a, e                                          ; $4857: $7b
	ld b, c                                          ; $4858: $41
	adc l                                            ; $4859: $8d
	rst FarCall                                          ; $485a: $f7
	di                                               ; $485b: $f3
	di                                               ; $485c: $f3
	ei                                               ; $485d: $fb
	ei                                               ; $485e: $fb
	sub e                                            ; $485f: $93
	sub e                                            ; $4860: $93
	sub a                                            ; $4861: $97
	adc [hl]                                         ; $4862: $8e
	xor $6b                                          ; $4863: $ee $6b
	ld l, e                                          ; $4865: $6b
	ld h, a                                          ; $4866: $67
	ld a, d                                          ; $4867: $7a
	ld a, [hl-]                                      ; $4868: $3a
	ld a, [hl-]                                      ; $4869: $3a
	dec sp                                           ; $486a: $3b

Call_056_486b:
	dec sp                                           ; $486b: $3b
	sbc $bd                                          ; $486c: $de $bd
	add d                                            ; $486e: $82
	rst $38                                          ; $486f: $ff
	or $fa                                           ; $4870: $f6 $fa
	cp [hl]                                          ; $4872: $be
	cp a                                             ; $4873: $bf
	ld l, a                                          ; $4874: $6f
	rst SubAFromBC                                          ; $4875: $e7
	ld d, a                                          ; $4876: $57
	add e                                            ; $4877: $83
	adc a                                            ; $4878: $8f
	rst JumpTable                                          ; $4879: $c7
	pop hl                                           ; $487a: $e1
	ret nc                                           ; $487b: $d0

	ret c                                            ; $487c: $d8

	ld e, h                                          ; $487d: $5c
	db $ec                                           ; $487e: $ec
	reti                                             ; $487f: $d9


	ld a, [hl]                                       ; $4880: $7e
	ld l, h                                          ; $4881: $6c
	ld sp, $e79e                                     ; $4882: $31 $9e $e7
	cp $e0                                           ; $4885: $fe $e0
	ld e, a                                          ; $4887: $5f
	ld a, l                                          ; $4888: $7d
	dec a                                            ; $4889: $3d
	ccf                                              ; $488a: $3f
	rra                                              ; $488b: $1f
	halt                                             ; $488c: $76
	rst GetHLinHL                                          ; $488d: $cf
	rst SubAFromDE                                          ; $488e: $df
	add b                                            ; $488f: $80
	rst SubAFromDE                                          ; $4890: $df
	ld [$9c9c], sp                                   ; $4891: $08 $9c $9c
	inc e                                            ; $4894: $1c
	db $10                                           ; $4895: $10
	db $dd                                           ; $4896: $dd
	add b                                            ; $4897: $80
	cp $9e                                           ; $4898: $fe $9e
	inc c                                            ; $489a: $0c
	pop hl                                           ; $489b: $e1
	sbc d                                            ; $489c: $9a
	inc d                                            ; $489d: $14
	inc b                                            ; $489e: $04
	ld b, $0e                                        ; $489f: $06 $0e
	rrca                                             ; $48a1: $0f
	sbc $1f                                          ; $48a2: $de $1f
	rst SubAFromDE                                          ; $48a4: $df
	rrca                                             ; $48a5: $0f
	rst SubAFromDE                                          ; $48a6: $df
	dec bc                                           ; $48a7: $0b
	db $dd                                           ; $48a8: $dd
	rrca                                             ; $48a9: $0f
	adc a                                            ; $48aa: $8f
	rst GetHLinHL                                          ; $48ab: $cf
	rst AddAOntoHL                                          ; $48ac: $ef
	ld l, e                                          ; $48ad: $6b
	ld l, e                                          ; $48ae: $6b
	ld [hl], a                                       ; $48af: $77
	or a                                             ; $48b0: $b7
	or l                                             ; $48b1: $b5
	xor e                                            ; $48b2: $ab
	cp c                                             ; $48b3: $b9
	sbc c                                            ; $48b4: $99
	db $dd                                           ; $48b5: $dd
	db $dd                                           ; $48b6: $dd
	call Call_056_6f6d                               ; $48b7: $cd $6d $6f
	rst FarCall                                          ; $48ba: $f7
	ld [hl], e                                       ; $48bb: $73
	xor [hl]                                         ; $48bc: $ae
	sbc $80                                          ; $48bd: $de $80
	reti                                             ; $48bf: $d9


	rst $38                                          ; $48c0: $ff
	ld a, h                                          ; $48c1: $7c
	ld b, c                                          ; $48c2: $41
	ld a, d                                          ; $48c3: $7a
	xor $ff                                          ; $48c4: $ee $ff
	sbc h                                            ; $48c6: $9c
	dec b                                            ; $48c7: $05
	push de                                          ; $48c8: $d5
	cp $66                                           ; $48c9: $fe $66
	xor $df                                          ; $48cb: $ee $df
	rst $38                                          ; $48cd: $ff
	ld a, h                                          ; $48ce: $7c
	call nc, $807d                                   ; $48cf: $d4 $7d $80
	db $fd                                           ; $48d2: $fd
	sbc [hl]                                         ; $48d3: $9e
	jr nz, jr_056_494f                               ; $48d4: $20 $79

	push bc                                          ; $48d6: $c5
	db $db                                           ; $48d7: $db
	jp c, Jump_056_5a9d                              ; $48d8: $da $9d $5a

	jp c, $38db                                      ; $48db: $da $db $38

	sub l                                            ; $48de: $95
	cp b                                             ; $48df: $b8
	jr c, jr_056_495c                                ; $48e0: $38 $7a

	rrca                                             ; $48e2: $0f
	rlca                                             ; $48e3: $07
	add e                                            ; $48e4: $83
	ld b, c                                          ; $48e5: $41
	ld b, c                                          ; $48e6: $41
	jr nc, jr_056_490e                               ; $48e7: $30 $25

	db $db                                           ; $48e9: $db
	rst $38                                          ; $48ea: $ff
	sub l                                            ; $48eb: $95
	rst AddAOntoHL                                          ; $48ec: $ef
	ei                                               ; $48ed: $fb
	xor e                                            ; $48ee: $ab
	ld e, a                                          ; $48ef: $5f
	cp $fc                                           ; $48f0: $fe $fc
	cp $fd                                           ; $48f2: $fe $fd
	cp $7d                                           ; $48f4: $fe $7d
	reti                                             ; $48f6: $d9


	rst $38                                          ; $48f7: $ff
	add b                                            ; $48f8: $80
	or a                                             ; $48f9: $b7
	ld a, e                                          ; $48fa: $7b
	cp l                                             ; $48fb: $bd
	ld a, [hl]                                       ; $48fc: $7e
	cp [hl]                                          ; $48fd: $be
	ld d, l                                          ; $48fe: $55
	ld [hl+], a                                      ; $48ff: $22
	ld b, l                                          ; $4900: $45
	jp z, $4285                                      ; $4901: $ca $85 $42

	add c                                            ; $4904: $81
	ld b, c                                          ; $4905: $41
	xor e                                            ; $4906: $ab
	rst SubAFromDE                                          ; $4907: $df
	rst $38                                          ; $4908: $ff
	inc b                                            ; $4909: $04
	ld c, c                                          ; $490a: $49
	and h                                            ; $490b: $a4
	ret nc                                           ; $490c: $d0

	ld h, c                                          ; $490d: $61

jr_056_490e:
	ld c, d                                          ; $490e: $4a
	sbc a                                            ; $490f: $9f
	ld a, [hl+]                                      ; $4910: $2a
	inc bc                                           ; $4911: $03
	add a                                            ; $4912: $87
	rst SubAFromDE                                          ; $4913: $df
	ld a, a                                          ; $4914: $7f
	cp [hl]                                          ; $4915: $be
	push af                                          ; $4916: $f5
	ldh [hDisp1_WX], a                                     ; $4917: $e0 $96
	pop bc                                           ; $4919: $c1
	ld e, b                                          ; $491a: $58
	rst $38                                          ; $491b: $ff
	ld d, a                                          ; $491c: $57
	xor a                                            ; $491d: $af
	ld e, a                                          ; $491e: $5f
	ld a, $5d                                        ; $491f: $3e $5d
	xor h                                            ; $4921: $ac
	db $db                                           ; $4922: $db
	rst $38                                          ; $4923: $ff
	sub e                                            ; $4924: $93
	cp $7f                                           ; $4925: $fe $7f
	db $f4                                           ; $4927: $f4
	reti                                             ; $4928: $d9


	pop af                                           ; $4929: $f1
	ei                                               ; $492a: $fb
	or $7a                                           ; $492b: $f6 $7a
	ld [hl], l                                       ; $492d: $75
	ld a, [$e70b]                                    ; $492e: $fa $0b $e7
	db $db                                           ; $4931: $db
	rst $38                                          ; $4932: $ff
	sub a                                            ; $4933: $97
	xor d                                            ; $4934: $aa
	ld d, b                                          ; $4935: $50
	and c                                            ; $4936: $a1
	ld d, c                                          ; $4937: $51
	and d                                            ; $4938: $a2
	jp nc, $c725                                     ; $4939: $d2 $25 $c7

	ld a, e                                          ; $493c: $7b
	db $e4                                           ; $493d: $e4
	ld a, a                                          ; $493e: $7f
	xor e                                            ; $493f: $ab
	sub b                                            ; $4940: $90
	ld a, l                                          ; $4941: $7d
	ei                                               ; $4942: $fb
	cp e                                             ; $4943: $bb
	ld c, e                                          ; $4944: $4b
	adc e                                            ; $4945: $8b
	adc e                                            ; $4946: $8b
	add l                                            ; $4947: $85
	dec b                                            ; $4948: $05
	ld [bc], a                                       ; $4949: $02
	ld [bc], a                                       ; $494a: $02
	ld bc, $7dbd                                     ; $494b: $01 $bd $7d
	ld a, l                                          ; $494e: $7d

jr_056_494f:
	ld a, [hl]                                       ; $494f: $7e
	ld [hl], a                                       ; $4950: $77
	ld e, a                                          ; $4951: $5f
	adc e                                            ; $4952: $8b
	halt                                             ; $4953: $76
	ld [hl], a                                       ; $4954: $77
	dec [hl]                                         ; $4955: $35
	or a                                             ; $4956: $b7
	cp [hl]                                          ; $4957: $be
	sbc d                                            ; $4958: $9a
	db $db                                           ; $4959: $db
	ld c, a                                          ; $495a: $4f
	sbc l                                            ; $495b: $9d

jr_056_495c:
	sbc h                                            ; $495c: $9c
	sbc $da                                          ; $495d: $de $da
	set 5, a                                         ; $495f: $cb $ef
	ld l, l                                          ; $4961: $6d

jr_056_4962:
	push af                                          ; $4962: $f5
	cp e                                             ; $4963: $bb
	xor a                                            ; $4964: $af
	and a                                            ; $4965: $a7
	and c                                            ; $4966: $a1
	sbc $50                                          ; $4967: $de $50
	sbc h                                            ; $4969: $9c
	jr z, jr_056_4962                                ; $496a: $28 $f6

	ld a, [$ffdb]                                    ; $496c: $fa $db $ff

jr_056_496f:
	sub a                                            ; $496f: $97
	ret nz                                           ; $4970: $c0

	ldh a, [$f0]                                     ; $4971: $f0 $f0
	ld hl, sp-$04                                    ; $4973: $f8 $fc
	db $fc                                           ; $4975: $fc
	ld a, [hl]                                       ; $4976: $7e

jr_056_4977:
	ccf                                              ; $4977: $3f
	ld [hl], c                                       ; $4978: $71
	sub e                                            ; $4979: $93
	ld a, l                                          ; $497a: $7d
	cpl                                              ; $497b: $2f
	sub e                                            ; $497c: $93
	ldh [rAUD3HIGH], a                               ; $497d: $e0 $1e
	ld c, $03                                        ; $497f: $0e $03
	ld b, $07                                        ; $4981: $06 $07
	rlca                                             ; $4983: $07
	inc bc                                           ; $4984: $03
	ld bc, $0007                                     ; $4985: $01 $07 $00
	ld bc, $f977                                     ; $4988: $01 $77 $f9
	rst $38                                          ; $498b: $ff
	sub h                                            ; $498c: $94
	ld a, b                                          ; $498d: $78
	ret c                                            ; $498e: $d8

	cp b                                             ; $498f: $b8
	ld hl, sp-$38                                    ; $4990: $f8 $c8
	adc b                                            ; $4992: $88
	xor b                                            ; $4993: $a8
	nop                                              ; $4994: $00
	jr c, jr_056_496f                                ; $4995: $38 $d8

	jr c, jr_056_4977                                ; $4997: $38 $de

	ld hl, sp-$62                                    ; $4999: $f8 $9e
	ret c                                            ; $499b: $d8

	ei                                               ; $499c: $fb
	sbc [hl]                                         ; $499d: $9e
	ld bc, $5965                                     ; $499e: $01 $65 $59
	add b                                            ; $49a1: $80
	ld bc, $1f37                                     ; $49a2: $01 $37 $1f
	ld a, e                                          ; $49a5: $7b
	scf                                              ; $49a6: $37
	push hl                                          ; $49a7: $e5
	jp $8182                                         ; $49a8: $c3 $82 $81


	rra                                              ; $49ab: $1f
	scf                                              ; $49ac: $37
	daa                                              ; $49ad: $27
	ld h, e                                          ; $49ae: $63
	ld b, e                                          ; $49af: $43
	add c                                            ; $49b0: $81
	add c                                            ; $49b1: $81
	nop                                              ; $49b2: $00
	db $db                                           ; $49b3: $db
	db $db                                           ; $49b4: $db
	pop de                                           ; $49b5: $d1
	call $fded                                       ; $49b6: $cd $ed $fd
	db $dd                                           ; $49b9: $dd
	db $fd                                           ; $49ba: $fd
	or a                                             ; $49bb: $b7
	or a                                             ; $49bc: $b7
	cp a                                             ; $49bd: $bf
	ei                                               ; $49be: $fb
	db $db                                           ; $49bf: $db
	set 3, a                                         ; $49c0: $cb $df
	db $eb                                           ; $49c2: $eb
	db $dd                                           ; $49c3: $dd
	add b                                            ; $49c4: $80
	sbc e                                            ; $49c5: $9b
	add d                                            ; $49c6: $82
	add l                                            ; $49c7: $85
	ld a, [hl+]                                      ; $49c8: $2a
	ld bc, $9861                                     ; $49c9: $01 $61 $98
	sbc e                                            ; $49cc: $9b
	dec d                                            ; $49cd: $15
	nop                                              ; $49ce: $00
	ld d, l                                          ; $49cf: $55
	nop                                              ; $49d0: $00
	ld a, b                                          ; $49d1: $78
	ld b, h                                          ; $49d2: $44
	ld h, b                                          ; $49d3: $60
	and b                                            ; $49d4: $a0
	add a                                            ; $49d5: $87
	rst $38                                          ; $49d6: $ff
	ld e, l                                          ; $49d7: $5d
	rst $38                                          ; $49d8: $ff
	ld d, l                                          ; $49d9: $55
	xor $55                                          ; $49da: $ee $55
	xor [hl]                                         ; $49dc: $ae
	and b                                            ; $49dd: $a0
	nop                                              ; $49de: $00
	and d                                            ; $49df: $a2
	nop                                              ; $49e0: $00
	xor d                                            ; $49e1: $aa
	ld de, $51aa                                     ; $49e2: $11 $aa $51
	ld e, b                                          ; $49e5: $58
	ret c                                            ; $49e6: $d8

	ld e, b                                          ; $49e7: $58
	ret c                                            ; $49e8: $d8

	ld e, h                                          ; $49e9: $5c
	sbc h                                            ; $49ea: $9c
	ld e, h                                          ; $49eb: $5c
	sbc h                                            ; $49ec: $9c
	cp b                                             ; $49ed: $b8
	ld a, d                                          ; $49ee: $7a
	call nz, $b88c                                   ; $49ef: $c4 $8c $b8
	ld a, b                                          ; $49f2: $78
	cp b                                             ; $49f3: $b8
	ld a, b                                          ; $49f4: $78
	ld a, [de]                                       ; $49f5: $1a
	dec e                                            ; $49f6: $1d
	ld a, [de]                                       ; $49f7: $1a
	dec d                                            ; $49f8: $15
	ld a, [bc]                                       ; $49f9: $0a
	dec c                                            ; $49fa: $0d
	ld a, [bc]                                       ; $49fb: $0a
	add hl, bc                                       ; $49fc: $09
	push af                                          ; $49fd: $f5
	di                                               ; $49fe: $f3
	push af                                          ; $49ff: $f5
	ei                                               ; $4a00: $fb
	db $fd                                           ; $4a01: $fd
	ei                                               ; $4a02: $fb
	db $fd                                           ; $4a03: $fd
	ld a, d                                          ; $4a04: $7a
	cp $79                                           ; $4a05: $fe $79
	rst SubAFromHL                                          ; $4a07: $d7
	ld h, l                                          ; $4a08: $65
	db $d3                                           ; $4a09: $d3
	ld [hl], a                                       ; $4a0a: $77
	nop                                              ; $4a0b: $00
	sbc b                                            ; $4a0c: $98
	ld a, h                                          ; $4a0d: $7c
	ld hl, sp-$07                                    ; $4a0e: $f8 $f9
	ld hl, sp-$0f                                    ; $4a10: $f8 $f1
	ldh a, [c]                                       ; $4a12: $f2
	pop af                                           ; $4a13: $f1
	halt                                             ; $4a14: $76
	db $e3                                           ; $4a15: $e3
	ld a, a                                          ; $4a16: $7f
	cp $7e                                           ; $4a17: $fe $7e
	and a                                            ; $4a19: $a7
	sbc l                                            ; $4a1a: $9d
	ld d, e                                          ; $4a1b: $53
	and c                                            ; $4a1c: $a1
	ld [hl], h                                       ; $4a1d: $74
	ld l, c                                          ; $4a1e: $69
	ld a, a                                          ; $4a1f: $7f
	cp $76                                           ; $4a20: $fe $76
	inc bc                                           ; $4a22: $03
	db $fd                                           ; $4a23: $fd
	sub d                                            ; $4a24: $92
	ld d, a                                          ; $4a25: $57
	xor d                                            ; $4a26: $aa
	pop de                                           ; $4a27: $d1
	ld l, d                                          ; $4a28: $6a
	dec a                                            ; $4a29: $3d
	rla                                              ; $4a2a: $17
	ld a, [bc]                                       ; $4a2b: $0a
	ld bc, $5fbf                                     ; $4a2c: $01 $bf $5f
	cpl                                              ; $4a2f: $2f
	dec d                                            ; $4a30: $15
	ld [bc], a                                       ; $4a31: $02
	cp $92                                           ; $4a32: $fe $92
	pop af                                           ; $4a34: $f1
	xor d                                            ; $4a35: $aa
	ld b, l                                          ; $4a36: $45
	xor [hl]                                         ; $4a37: $ae
	ld e, e                                          ; $4a38: $5b
	push af                                          ; $4a39: $f5
	xor c                                            ; $4a3a: $a9

jr_056_4a3b:
	ld b, b                                          ; $4a3b: $40
	cp $fd                                           ; $4a3c: $fe $fd
	ld a, [$a051]                                    ; $4a3e: $fa $51 $a0
	cp $97                                           ; $4a41: $fe $97
	cp e                                             ; $4a43: $bb
	ld b, [hl]                                       ; $4a44: $46
	ld a, a                                          ; $4a45: $7f
	cp h                                             ; $4a46: $bc
	dec a                                            ; $4a47: $3d
	cp d                                             ; $4a48: $ba
	cp l                                             ; $4a49: $bd
	cp d                                             ; $4a4a: $ba
	ld a, d                                          ; $4a4b: $7a
	cp a                                             ; $4a4c: $bf
	ld a, e                                          ; $4a4d: $7b
	xor d                                            ; $4a4e: $aa
	rst SubAFromDE                                          ; $4a4f: $df
	ld a, a                                          ; $4a50: $7f
	sub a                                            ; $4a51: $97
	ld d, c                                          ; $4a52: $51
	nop                                              ; $4a53: $00
	ld d, h                                          ; $4a54: $54
	nop                                              ; $4a55: $00
	inc h                                            ; $4a56: $24
	ld d, d                                          ; $4a57: $52
	dec h                                            ; $4a58: $25
	ld d, d                                          ; $4a59: $52
	ld [hl], d                                       ; $4a5a: $72
	jr z, jr_056_4a3b                                ; $4a5b: $28 $de

	adc a                                            ; $4a5d: $8f
	add a                                            ; $4a5e: $87
	ld l, l                                          ; $4a5f: $6d
	xor l                                            ; $4a60: $ad
	or a                                             ; $4a61: $b7
	ld d, [hl]                                       ; $4a62: $56
	ld c, d                                          ; $4a63: $4a
	dec hl                                           ; $4a64: $2b
	rla                                              ; $4a65: $17
	dec d                                            ; $4a66: $15
	or a                                             ; $4a67: $b7
	or $da                                           ; $4a68: $f6 $da
	ei                                               ; $4a6a: $fb
	rst $38                                          ; $4a6b: $ff
	db $fd                                           ; $4a6c: $fd
	db $fd                                           ; $4a6d: $fd
	cp $28                                           ; $4a6e: $fe $28
	and h                                            ; $4a70: $a4
	sub h                                            ; $4a71: $94
	sub h                                            ; $4a72: $94
	jp c, Jump_056_5dda                              ; $4a73: $da $da $5d

	db $ed                                           ; $4a76: $ed
	db $dd                                           ; $4a77: $dd
	rst $38                                          ; $4a78: $ff
	rst SubAFromDE                                          ; $4a79: $df
	ld l, a                                          ; $4a7a: $6f
	sbc b                                            ; $4a7b: $98
	rst SubAFromBC                                          ; $4a7c: $e7
	or a                                             ; $4a7d: $b7
	ccf                                              ; $4a7e: $3f
	cpl                                              ; $4a7f: $2f
	dec hl                                           ; $4a80: $2b
	dec hl                                           ; $4a81: $2b
	ld a, [hl+]                                      ; $4a82: $2a
	sbc $1a                                          ; $4a83: $de $1a
	sbc l                                            ; $4a85: $9d
	ldh a, [$fc]                                     ; $4a86: $f0 $fc
	ld l, l                                          ; $4a88: $6d
	pop af                                           ; $4a89: $f1
	ld a, d                                          ; $4a8a: $7a
	cp l                                             ; $4a8b: $bd
	ld a, [hl]                                       ; $4a8c: $7e
	xor a                                            ; $4a8d: $af
	sbc h                                            ; $4a8e: $9c
	sbc [hl]                                         ; $4a8f: $9e
	add a                                            ; $4a90: $87
	adc a                                            ; $4a91: $8f
	halt                                             ; $4a92: $76
	or c                                             ; $4a93: $b1
	sub d                                            ; $4a94: $92
	ldh [$f8], a                                     ; $4a95: $e0 $f8
	cp $ff                                           ; $4a97: $fe $ff
	ret z                                            ; $4a99: $c8

	ld [hl], b                                       ; $4a9a: $70
	inc b                                            ; $4a9b: $04
	inc e                                            ; $4a9c: $1c
	ld [$8100], sp                                   ; $4a9d: $08 $00 $81
	rst SubAFromBC                                          ; $4aa0: $e7
	ld [hl], b                                       ; $4aa1: $70
	ei                                               ; $4aa2: $fb
	add [hl]                                         ; $4aa3: $86
	jp $0e07                                         ; $4aa4: $c3 $07 $0e


	ld e, $3c                                        ; $4aa7: $1e $3c
	ld [hl], h                                       ; $4aa9: $74
	ld sp, hl                                        ; $4aaa: $f9
	jp hl                                            ; $4aab: $e9


	db $d3                                           ; $4aac: $d3
	ld [bc], a                                       ; $4aad: $02
	inc b                                            ; $4aae: $04
	inc c                                            ; $4aaf: $0c
	jr jr_056_4aea                                   ; $4ab0: $18 $38

	ld [hl], b                                       ; $4ab2: $70
	ldh a, [$e0]                                     ; $4ab3: $f0 $e0
	ld bc, $0301                                     ; $4ab5: $01 $01 $03
	inc bc                                           ; $4ab8: $03
	rlca                                             ; $4ab9: $07
	ld b, $0d                                        ; $4aba: $06 $0d
	ld a, [bc]                                       ; $4abc: $0a
	ld l, d                                          ; $4abd: $6a
	xor c                                            ; $4abe: $a9
	sbc [hl]                                         ; $4abf: $9e
	rlca                                             ; $4ac0: $07
	db $dd                                           ; $4ac1: $dd
	cp a                                             ; $4ac2: $bf
	sbc $9f                                          ; $4ac3: $de $9f
	sbc d                                            ; $4ac5: $9a
	cp a                                             ; $4ac6: $bf
	jp hl                                            ; $4ac7: $e9


	jp hl                                            ; $4ac8: $e9


	push hl                                          ; $4ac9: $e5
	push hl                                          ; $4aca: $e5
	db $dd                                           ; $4acb: $dd
	push af                                          ; $4acc: $f5
	ld a, e                                          ; $4acd: $7b
	ld l, c                                          ; $4ace: $69
	ld a, a                                          ; $4acf: $7f
	ld b, l                                          ; $4ad0: $45
	sbc e                                            ; $4ad1: $9b
	xor a                                            ; $4ad2: $af
	rlca                                             ; $4ad3: $07
	xor e                                            ; $4ad4: $ab

Jump_056_4ad5:
	nop                                              ; $4ad5: $00
	ld [hl], e                                       ; $4ad6: $73
	and a                                            ; $4ad7: $a7
	ld a, a                                          ; $4ad8: $7f
	sbc e                                            ; $4ad9: $9b
	sub a                                            ; $4ada: $97
	adc d                                            ; $4adb: $8a
	ld b, l                                          ; $4adc: $45
	and d                                            ; $4add: $a2
	ld d, c                                          ; $4ade: $51
	xor b                                            ; $4adf: $a8
	push de                                          ; $4ae0: $d5
	ldh [$f5], a                                     ; $4ae1: $e0 $f5
	ld [hl], a                                       ; $4ae3: $77
	ld [$aa7c], a                                    ; $4ae4: $ea $7c $aa
	sbc l                                            ; $4ae7: $9d
	rra                                              ; $4ae8: $1f
	ld a, [bc]                                       ; $4ae9: $0a

jr_056_4aea:
	ld a, d                                          ; $4aea: $7a
	or l                                             ; $4aeb: $b5
	ld [hl], e                                       ; $4aec: $73
	cp $6b                                           ; $4aed: $fe $6b
	ld sp, hl                                        ; $4aef: $f9
	sbc h                                            ; $4af0: $9c
	ld d, l                                          ; $4af1: $55
	ld e, [hl]                                       ; $4af2: $5e
	sbc [hl]                                         ; $4af3: $9e
	ld a, e                                          ; $4af4: $7b
	cp $9c                                           ; $4af5: $fe $9c
	ld e, $5e                                        ; $4af7: $1e $5e
	ld e, $76                                        ; $4af9: $1e $76
	call nz, Call_056_477e                           ; $4afb: $c4 $7e $47
	ld a, a                                          ; $4afe: $7f
	cp $97                                           ; $4aff: $fe $97
	ld [$0809], sp                                   ; $4b01: $08 $09 $08
	add hl, bc                                       ; $4b04: $09
	ld a, [bc]                                       ; $4b05: $0a
	dec d                                            ; $4b06: $15
	inc de                                           ; $4b07: $13
	rla                                              ; $4b08: $17
	ret c                                            ; $4b09: $d8

	rst $38                                          ; $4b0a: $ff
	ld h, d                                          ; $4b0b: $62
	add $db                                          ; $4b0c: $c6 $db
	rst $38                                          ; $4b0e: $ff
	sub [hl]                                         ; $4b0f: $96
	ldh a, [c]                                       ; $4b10: $f2
	ld sp, hl                                        ; $4b11: $f9
	db $f4                                           ; $4b12: $f4
	ld hl, sp-$0c                                    ; $4b13: $f8 $f4
	ld a, [$fafc]                                    ; $4b15: $fa $fc $fa
	db $fd                                           ; $4b18: $fd
	ld l, c                                          ; $4b19: $69
	ld [hl-], a                                      ; $4b1a: $32
	adc a                                            ; $4b1b: $8f
	ret nz                                           ; $4b1c: $c0

	ld h, b                                          ; $4b1d: $60
	ldh a, [rBCPS]                                   ; $4b1e: $f0 $68
	or l                                             ; $4b20: $b5
	ld e, [hl]                                       ; $4b21: $5e
	dec hl                                           ; $4b22: $2b
	dec d                                            ; $4b23: $15
	nop                                              ; $4b24: $00
	add b                                            ; $4b25: $80
	nop                                              ; $4b26: $00
	add b                                            ; $4b27: $80
	ld b, b                                          ; $4b28: $40
	and b                                            ; $4b29: $a0
	call nc, $fcea                                   ; $4b2a: $d4 $ea $fc
	sbc l                                            ; $4b2d: $9d
	add b                                            ; $4b2e: $80
	push de                                          ; $4b2f: $d5
	ld [hl], c                                       ; $4b30: $71
	jr nz, jr_056_4ba6                               ; $4b31: $20 $73

	ld e, l                                          ; $4b33: $5d
	ld a, e                                          ; $4b34: $7b
	ld c, a                                          ; $4b35: $4f
	sbc e                                            ; $4b36: $9b
	ld d, $ad                                        ; $4b37: $16 $ad
	ld a, d                                          ; $4b39: $7a
	db $f4                                           ; $4b3a: $f4
	ld [hl], e                                       ; $4b3b: $73
	db $f4                                           ; $4b3c: $f4
	sub [hl]                                         ; $4b3d: $96
	ld [bc], a                                       ; $4b3e: $02
	dec b                                            ; $4b3f: $05
	dec bc                                           ; $4b40: $0b
	cp l                                             ; $4b41: $bd
	cp d                                             ; $4b42: $ba
	dec a                                            ; $4b43: $3d
	ccf                                              ; $4b44: $3f
	ld a, a                                          ; $4b45: $7f
	ccf                                              ; $4b46: $3f
	halt                                             ; $4b47: $76
	push bc                                          ; $4b48: $c5
	db $db                                           ; $4b49: $db
	rst $38                                          ; $4b4a: $ff
	sub l                                            ; $4b4b: $95
	dec b                                            ; $4b4c: $05
	adc [hl]                                         ; $4b4d: $8e
	ld a, [hl]                                       ; $4b4e: $7e
	db $fc                                           ; $4b4f: $fc
	ld hl, sp-$30                                    ; $4b50: $f8 $d0
	and b                                            ; $4b52: $a0
	ld b, b                                          ; $4b53: $40
	adc a                                            ; $4b54: $8f
	rst SubAFromDE                                          ; $4b55: $df
	db $db                                           ; $4b56: $db
	rst $38                                          ; $4b57: $ff
	sbc l                                            ; $4b58: $9d
	dec bc                                           ; $4b59: $0b
	ld b, $75                                        ; $4b5a: $06 $75
	cp e                                             ; $4b5c: $bb
	rst $38                                          ; $4b5d: $ff
	ld h, h                                          ; $4b5e: $64
	db $d3                                           ; $4b5f: $d3
	add a                                            ; $4b60: $87
	xor [hl]                                         ; $4b61: $ae
	or $d7                                           ; $4b62: $f6 $d7
	ld l, e                                          ; $4b64: $6b
	cp e                                             ; $4b65: $bb
	sub a                                            ; $4b66: $97
	ld d, l                                          ; $4b67: $55
	dec hl                                           ; $4b68: $2b
	di                                               ; $4b69: $f3
	ld e, e                                          ; $4b6a: $5b
	ld a, c                                          ; $4b6b: $79
	cp l                                             ; $4b6c: $bd
	db $ed                                           ; $4b6d: $ed
	db $fd                                           ; $4b6e: $fd
	cp $fe                                           ; $4b6f: $fe $fe
	adc d                                            ; $4b71: $8a
	adc e                                            ; $4b72: $8b
	ld c, l                                          ; $4b73: $4d
	ld c, l                                          ; $4b74: $4d
	or h                                             ; $4b75: $b4
	and d                                            ; $4b76: $a2
	ret nc                                           ; $4b77: $d0

	ret c                                            ; $4b78: $d8

	reti                                             ; $4b79: $d9


	rst $38                                          ; $4b7a: $ff
	sub a                                            ; $4b7b: $97
	ldh a, [$c1]                                     ; $4b7c: $f0 $c1
	add d                                            ; $4b7e: $82
	pop bc                                           ; $4b7f: $c1
	jp nz, Jump_056_61c0                             ; $4b80: $c2 $c0 $61

	ld [hl+], a                                      ; $4b83: $22
	ret c                                            ; $4b84: $d8

	rst $38                                          ; $4b85: $ff
	sbc b                                            ; $4b86: $98
	ld a, l                                          ; $4b87: $7d
	cp a                                             ; $4b88: $bf
	ld h, [hl]                                       ; $4b89: $66
	rst GetHLinHL                                          ; $4b8a: $cf
	sbc a                                            ; $4b8b: $9f
	ccf                                              ; $4b8c: $3f
	ld c, e                                          ; $4b8d: $4b
	ld a, c                                          ; $4b8e: $79
	ld hl, $ffdd                                     ; $4b8f: $21 $dd $ff
	sub l                                            ; $4b92: $95
	rst GetHLinHL                                          ; $4b93: $cf
	or e                                             ; $4b94: $b3
	pop af                                           ; $4b95: $f1
	db $e4                                           ; $4b96: $e4
	db $e4                                           ; $4b97: $e4
	db $e3                                           ; $4b98: $e3
	add sp, -$37                                     ; $4b99: $e8 $c9
	jp nz, $dec0                                     ; $4b9b: $c2 $c0 $de

	ld [bc], a                                       ; $4b9e: $02
	sub c                                            ; $4b9f: $91
	inc b                                            ; $4ba0: $04
	rlca                                             ; $4ba1: $07
	rlca                                             ; $4ba2: $07
	rrca                                             ; $4ba3: $0f
	dec d                                            ; $4ba4: $15
	dec hl                                           ; $4ba5: $2b

jr_056_4ba6:
	ld d, l                                          ; $4ba6: $55
	xor e                                            ; $4ba7: $ab
	ld d, [hl]                                       ; $4ba8: $56
	adc d                                            ; $4ba9: $8a
	ld b, $0a                                        ; $4baa: $06 $0a
	rrca                                             ; $4bac: $0f
	rra                                              ; $4bad: $1f
	ld a, e                                          ; $4bae: $7b
	ld a, e                                          ; $4baf: $7b
	sbc $ff                                          ; $4bb0: $de $ff
	sub [hl]                                         ; $4bb2: $96
	rra                                              ; $4bb3: $1f
	cpl                                              ; $4bb4: $2f
	ld e, a                                          ; $4bb5: $5f
	ld l, $5e                                        ; $4bb6: $2e $5e
	ld a, $5e                                        ; $4bb8: $3e $5e
	ccf                                              ; $4bba: $3f
	rst FarCall                                          ; $4bbb: $f7
	db $db                                           ; $4bbc: $db
	ei                                               ; $4bbd: $fb
	sbc e                                            ; $4bbe: $9b
	rst $38                                          ; $4bbf: $ff
	ld bc, $01ab                                     ; $4bc0: $01 $ab $01
	halt                                             ; $4bc3: $76
	and h                                            ; $4bc4: $a4
	ld h, b                                          ; $4bc5: $60
	ld b, b                                          ; $4bc6: $40
	ld [hl], d                                       ; $4bc7: $72
	db $fd                                           ; $4bc8: $fd
	sbc l                                            ; $4bc9: $9d
	cp a                                             ; $4bca: $bf
	rlca                                             ; $4bcb: $07
	ld a, c                                          ; $4bcc: $79
	ld b, b                                          ; $4bcd: $40
	ld a, d                                          ; $4bce: $7a
	xor a                                            ; $4bcf: $af
	ld a, [hl]                                       ; $4bd0: $7e
	or b                                             ; $4bd1: $b0
	ld a, l                                          ; $4bd2: $7d
	add h                                            ; $4bd3: $84
	sbc e                                            ; $4bd4: $9b
	ld a, [hl+]                                      ; $4bd5: $2a
	ld d, l                                          ; $4bd6: $55
	ld a, [bc]                                       ; $4bd7: $0a
	ld d, l                                          ; $4bd8: $55
	ld a, c                                          ; $4bd9: $79
	ld l, e                                          ; $4bda: $6b
	sub h                                            ; $4bdb: $94
	xor d                                            ; $4bdc: $aa
	push de                                          ; $4bdd: $d5
	xor d                                            ; $4bde: $aa
	push af                                          ; $4bdf: $f5
	xor d                                            ; $4be0: $aa
	rst $38                                          ; $4be1: $ff
	ld [$5cff], a                                    ; $4be2: $ea $ff $5c
	inc e                                            ; $4be5: $1c
	ld e, h                                          ; $4be6: $5c
	db $dd                                           ; $4be7: $dd
	inc e                                            ; $4be8: $1c
	sbc e                                            ; $4be9: $9b
	dec e                                            ; $4bea: $1d
	cp d                                             ; $4beb: $ba
	ld a, [$dcba]                                    ; $4bec: $fa $ba $dc
	ld a, [$0b99]                                    ; $4bef: $fa $99 $0b
	rla                                              ; $4bf2: $17
	ld a, [bc]                                       ; $4bf3: $0a
	rra                                              ; $4bf4: $1f
	ld a, [hl+]                                      ; $4bf5: $2a
	rst SubAFromDE                                          ; $4bf6: $df
	ld e, l                                          ; $4bf7: $5d
	ld b, b                                          ; $4bf8: $40
	db $dd                                           ; $4bf9: $dd
	rst $38                                          ; $4bfa: $ff
	sbc h                                            ; $4bfb: $9c
	cp [hl]                                          ; $4bfc: $be
	db $fd                                           ; $4bfd: $fd
	ei                                               ; $4bfe: $fb
	ld l, b                                          ; $4bff: $68
	ld [hl], c                                       ; $4c00: $71
	sbc l                                            ; $4c01: $9d
	db $fc                                           ; $4c02: $fc
	di                                               ; $4c03: $f3
	ld a, d                                          ; $4c04: $7a
	ret z                                            ; $4c05: $c8

	sbc d                                            ; $4c06: $9a
	add e                                            ; $4c07: $83
	ld h, b                                          ; $4c08: $60
	db $f4                                           ; $4c09: $f4
	ld a, [$ddfd]                                    ; $4c0a: $fa $fd $dd
	rst $38                                          ; $4c0d: $ff
	sub d                                            ; $4c0e: $92
	sbc a                                            ; $4c0f: $9f
	dec bc                                           ; $4c10: $0b
	dec b                                            ; $4c11: $05
	ld [bc], a                                       ; $4c12: $02
	ld a, [bc]                                       ; $4c13: $0a
	and c                                            ; $4c14: $a1
	ret nc                                           ; $4c15: $d0

	add sp, -$0b                                     ; $4c16: $e8 $f5
	ld l, d                                          ; $4c18: $6a
	ld [hl], l                                       ; $4c19: $75
	cp [hl]                                          ; $4c1a: $be
	push af                                          ; $4c1b: $f5
	ld l, e                                          ; $4c1c: $6b
	rrca                                             ; $4c1d: $0f
	ld a, [hl]                                       ; $4c1e: $7e
	ld l, [hl]                                       ; $4c1f: $6e
	ld a, d                                          ; $4c20: $7a
	ret c                                            ; $4c21: $d8

	sbc d                                            ; $4c22: $9a
	xor d                                            ; $4c23: $aa
	ld d, a                                          ; $4c24: $57
	cp d                                             ; $4c25: $ba
	ld d, l                                          ; $4c26: $55
	xor d                                            ; $4c27: $aa
	call c, $94ff                                    ; $4c28: $dc $ff $94
	ld a, [$52a9]                                    ; $4c2b: $fa $a9 $52
	dec b                                            ; $4c2e: $05
	dec hl                                           ; $4c2f: $2b
	ld d, a                                          ; $4c30: $57
	xor l                                            ; $4c31: $ad
	ld a, [$57bf]                                    ; $4c32: $fa $bf $57
	xor a                                            ; $4c35: $af
	call c, $9cff                                    ; $4c36: $dc $ff $9c
	cp l                                             ; $4c39: $bd
	ld a, [hl]                                       ; $4c3a: $7e
	db $fd                                           ; $4c3b: $fd
	ld a, d                                          ; $4c3c: $7a
	add e                                            ; $4c3d: $83
	sbc [hl]                                         ; $4c3e: $9e
	ld d, h                                          ; $4c3f: $54
	ld a, c                                          ; $4c40: $79
	ld b, h                                          ; $4c41: $44
	ld l, e                                          ; $4c42: $6b
	jp nc, $8180                                     ; $4c43: $d2 $80 $81

	ld [bc], a                                       ; $4c46: $02
	ld b, $0c                                        ; $4c47: $06 $0c
	ld e, $0d                                        ; $4c49: $1e $0d
	ld e, [hl]                                       ; $4c4b: $5e

Call_056_4c4c:
	or b                                             ; $4c4c: $b0
	cp $fd                                           ; $4c4d: $fe $fd
	ld hl, sp-$10                                    ; $4c4f: $f8 $f0
	ldh [$f0], a                                     ; $4c51: $e0 $f0
	and c                                            ; $4c53: $a1
	ld c, a                                          ; $4c54: $4f
	ld h, b                                          ; $4c55: $60
	call nz, $152a                                   ; $4c56: $c4 $2a $15
	ld a, [hl+]                                      ; $4c59: $2a
	dec h                                            ; $4c5a: $25
	xor d                                            ; $4c5b: $aa
	ld a, a                                          ; $4c5c: $7f
	sbc a                                            ; $4c5d: $9f
	dec sp                                           ; $4c5e: $3b
	ld e, l                                          ; $4c5f: $5d
	ld a, [hl-]                                      ; $4c60: $3a
	ld [hl], c                                       ; $4c61: $71
	ldh a, [$71]                                     ; $4c62: $f0 $71
	sbc l                                            ; $4c64: $9d
	rst $38                                          ; $4c65: $ff
	rla                                              ; $4c66: $17
	ld a, e                                          ; $4c67: $7b
	sbc h                                            ; $4c68: $9c
	ld a, [hl]                                       ; $4c69: $7e
	xor a                                            ; $4c6a: $af
	sbc l                                            ; $4c6b: $9d
	rlca                                             ; $4c6c: $07
	ld a, a                                          ; $4c6d: $7f
	ld l, a                                          ; $4c6e: $6f
	rst GetHLinHL                                          ; $4c6f: $cf
	sub l                                            ; $4c70: $95
	ld hl, sp-$80                                    ; $4c71: $f8 $80
	cp b                                             ; $4c73: $b8
	call c, $c6cc                                    ; $4c74: $dc $cc $c6
	ldh [c], a                                       ; $4c77: $e2
	db $e3                                           ; $4c78: $e3
	push hl                                          ; $4c79: $e5
	cp b                                             ; $4c7a: $b8
	halt                                             ; $4c7b: $76
	ld a, a                                          ; $4c7c: $7f
	sbc [hl]                                         ; $4c7d: $9e
	cp a                                             ; $4c7e: $bf
	sbc $ff                                          ; $4c7f: $de $ff
	sbc [hl]                                         ; $4c81: $9e
	inc b                                            ; $4c82: $04
	ld a, c                                          ; $4c83: $79
	or b                                             ; $4c84: $b0
	sbc e                                            ; $4c85: $9b
	ld b, a                                          ; $4c86: $47
	dec b                                            ; $4c87: $05
	ld e, l                                          ; $4c88: $5d
	rrca                                             ; $4c89: $0f
	ld a, e                                          ; $4c8a: $7b
	ld h, e                                          ; $4c8b: $63
	ld a, a                                          ; $4c8c: $7f
	cp l                                             ; $4c8d: $bd
	add e                                            ; $4c8e: $83
	db $fd                                           ; $4c8f: $fd
	ld sp, hl                                        ; $4c90: $f9
	ld sp, hl                                        ; $4c91: $f9
	db $dd                                           ; $4c92: $dd
	sub l                                            ; $4c93: $95
	sub h                                            ; $4c94: $94
	or [hl]                                          ; $4c95: $b6
	ld h, $2f                                        ; $4c96: $26 $2f
	rst $38                                          ; $4c98: $ff
	ld a, [hl-]                                      ; $4c99: $3a
	rst FarCall                                          ; $4c9a: $f7
	sub a                                            ; $4c9b: $97
	or a                                             ; $4c9c: $b7
	db $e3                                           ; $4c9d: $e3
	inc hl                                           ; $4c9e: $23
	ld h, e                                          ; $4c9f: $63
	rst AddAOntoHL                                          ; $4ca0: $ef
	rst $38                                          ; $4ca1: $ff
	add h                                            ; $4ca2: $84
	ld [$2010], sp                                   ; $4ca3: $08 $10 $20
	ret nz                                           ; $4ca6: $c0

	nop                                              ; $4ca7: $00
	ldh a, [$fc]                                     ; $4ca8: $f0 $fc
	rra                                              ; $4caa: $1f
	ld [hl], a                                       ; $4cab: $77
	db $d3                                           ; $4cac: $d3
	ld [hl], a                                       ; $4cad: $77
	ret nc                                           ; $4cae: $d0

	sbc b                                            ; $4caf: $98
	inc c                                            ; $4cb0: $0c
	dec b                                            ; $4cb1: $05
	dec bc                                           ; $4cb2: $0b
	ld a, [bc]                                       ; $4cb3: $0a
	inc c                                            ; $4cb4: $0c
	jr jr_056_4ccf                                   ; $4cb5: $18 $18

	reti                                             ; $4cb7: $d9


	rst $38                                          ; $4cb8: $ff
	sbc d                                            ; $4cb9: $9a
	ld a, h                                          ; $4cba: $7c
	call z, $088c                                    ; $4cbb: $cc $8c $08
	ld [$d9fe], sp                                   ; $4cbe: $08 $fe $d9
	rst $38                                          ; $4cc1: $ff
	sbc h                                            ; $4cc2: $9c
	ld h, b                                          ; $4cc3: $60
	jr jr_056_4cd4                                   ; $4cc4: $18 $0e

	halt                                             ; $4cc6: $76
	ccf                                              ; $4cc7: $3f
	sbc [hl]                                         ; $4cc8: $9e
	ld [bc], a                                       ; $4cc9: $02
	ld h, b                                          ; $4cca: $60
	ld b, b                                          ; $4ccb: $40
	halt                                             ; $4ccc: $76
	or e                                             ; $4ccd: $b3
	ld a, l                                          ; $4cce: $7d

jr_056_4ccf:
	db $db                                           ; $4ccf: $db
	sbc [hl]                                         ; $4cd0: $9e
	or b                                             ; $4cd1: $b0
	reti                                             ; $4cd2: $d9


	rst $38                                          ; $4cd3: $ff

jr_056_4cd4:
	sbc [hl]                                         ; $4cd4: $9e
	inc b                                            ; $4cd5: $04
	ld a, [$ee6a]                                    ; $4cd6: $fa $6a $ee
	sub [hl]                                         ; $4cd9: $96
	rst $38                                          ; $4cda: $ff
	inc e                                            ; $4cdb: $1c
	dec e                                            ; $4cdc: $1d
	inc e                                            ; $4cdd: $1c
	dec e                                            ; $4cde: $1d
	add hl, de                                       ; $4cdf: $19
	jr jr_056_4cfb                                   ; $4ce0: $18 $19

	add hl, de                                       ; $4ce2: $19
	db $dd                                           ; $4ce3: $dd
	ld a, [$fedd]                                    ; $4ce4: $fa $dd $fe
	sub e                                            ; $4ce7: $93
	xor d                                            ; $4ce8: $aa
	rst SubAFromHL                                          ; $4ce9: $d7
	cp a                                             ; $4cea: $bf
	rst FarCall                                          ; $4ceb: $f7
	xor d                                            ; $4cec: $aa
	call nc, $dfa8                                   ; $4ced: $d4 $a8 $df
	rst $38                                          ; $4cf0: $ff
	db $fd                                           ; $4cf1: $fd
	db $eb                                           ; $4cf2: $eb
	rst SubAFromHL                                          ; $4cf3: $d7
	ld [hl], a                                       ; $4cf4: $77
	ld hl, sp-$63                                    ; $4cf5: $f8 $9d
	ldh [$c0], a                                     ; $4cf7: $e0 $c0
	ld [hl], h                                       ; $4cf9: $74
	ld h, [hl]                                       ; $4cfa: $66

jr_056_4cfb:
	ld a, a                                          ; $4cfb: $7f
	ld h, c                                          ; $4cfc: $61
	ld h, a                                          ; $4cfd: $67
	ld hl, sp-$69                                    ; $4cfe: $f8 $97
	ld h, c                                          ; $4d00: $61
	inc c                                            ; $4d01: $0c
	inc bc                                           ; $4d02: $03
	nop                                              ; $4d03: $00
	ld bc, $f00f                                     ; $4d04: $01 $0f $f0
	nop                                              ; $4d07: $00
	ld l, a                                          ; $4d08: $6f
	ld hl, sp-$21                                    ; $4d09: $f8 $df
	rst $38                                          ; $4d0b: $ff
	sub a                                            ; $4d0c: $97
	ld e, a                                          ; $4d0d: $5f
	cp [hl]                                          ; $4d0e: $be
	ld d, l                                          ; $4d0f: $55
	xor d                                            ; $4d10: $aa
	ld a, a                                          ; $4d11: $7f
	ldh a, [rP1]                                     ; $4d12: $f0 $00
	rra                                              ; $4d14: $1f
	ld [hl], e                                       ; $4d15: $73
	ld hl, sp-$22                                    ; $4d16: $f8 $de
	rst $38                                          ; $4d18: $ff
	ld a, a                                          ; $4d19: $7f
	call Call_056_409a                               ; $4d1a: $cd $9a $40
	rra                                              ; $4d1d: $1f
	ldh [rP1], a                                     ; $4d1e: $e0 $00
	rra                                              ; $4d20: $1f
	ld [hl], e                                       ; $4d21: $73
	ld hl, sp-$23                                    ; $4d22: $f8 $dd
	rst $38                                          ; $4d24: $ff
	sub a                                            ; $4d25: $97
	ld e, d                                          ; $4d26: $5a
	xor l                                            ; $4d27: $ad
	ld e, a                                          ; $4d28: $5f
	ldh [rP1], a                                     ; $4d29: $e0 $00
	ccf                                              ; $4d2b: $3f
	rst $38                                          ; $4d2c: $ff
	db $e4                                           ; $4d2d: $e4
	ld a, e                                          ; $4d2e: $7b
	ld hl, sp-$23                                    ; $4d2f: $f8 $dd
	rst $38                                          ; $4d31: $ff
	sbc e                                            ; $4d32: $9b
	ei                                               ; $4d33: $fb
	xor d                                            ; $4d34: $aa
	ld a, a                                          ; $4d35: $7f
	ret nz                                           ; $4d36: $c0

	halt                                             ; $4d37: $76
	ld h, h                                          ; $4d38: $64
	ld a, [hl]                                       ; $4d39: $7e
	ld b, b                                          ; $4d3a: $40
	ld [hl], d                                       ; $4d3b: $72
	ld [bc], a                                       ; $4d3c: $02
	sbc e                                            ; $4d3d: $9b
	ldh [rIE], a                                     ; $4d3e: $e0 $ff
	ccf                                              ; $4d40: $3f
	ret nz                                           ; $4d41: $c0

	ld [hl], a                                       ; $4d42: $77
	ld b, l                                          ; $4d43: $45
	ld [hl], e                                       ; $4d44: $73
	ei                                               ; $4d45: $fb
	ld a, e                                          ; $4d46: $7b
	ld sp, hl                                        ; $4d47: $f9
	ld a, a                                          ; $4d48: $7f
	rst SubAFromHL                                          ; $4d49: $d7
	sbc [hl]                                         ; $4d4a: $9e
	rst SubAFromDE                                          ; $4d4b: $df
	ld [hl], a                                       ; $4d4c: $77
	or $7b                                           ; $4d4d: $f6 $7b
	sub l                                            ; $4d4f: $95
	ld a, a                                          ; $4d50: $7f
	and $7b                                          ; $4d51: $e6 $7b
	ld sp, hl                                        ; $4d53: $f9
	ld [hl], a                                       ; $4d54: $77

jr_056_4d55:
	call c, $fc9b                                    ; $4d55: $dc $9b $fc
	ldh [$80], a                                     ; $4d58: $e0 $80
	add c                                            ; $4d5a: $81
	ld a, e                                          ; $4d5b: $7b
	cp $9e                                           ; $4d5c: $fe $9e
	inc bc                                           ; $4d5e: $03
	ld [hl], e                                       ; $4d5f: $73
	or d                                             ; $4d60: $b2
	rst SubAFromDE                                          ; $4d61: $df
	rst $38                                          ; $4d62: $ff
	sbc h                                            ; $4d63: $9c
	sub l                                            ; $4d64: $95
	nop                                              ; $4d65: $00
	ld d, l                                          ; $4d66: $55
	ld [hl], e                                       ; $4d67: $73
	cp $d9                                           ; $4d68: $fe $d9
	rst $38                                          ; $4d6a: $ff
	sub a                                            ; $4d6b: $97
	ld e, a                                          ; $4d6c: $5f
	ld [Call_000_1858], sp                                   ; $4d6d: $08 $58 $18
	ld e, b                                          ; $4d70: $58
	jr c, jr_056_4daf                                ; $4d71: $38 $3c

	ld a, d                                          ; $4d73: $7a
	call c, $dfff                                    ; $4d74: $dc $ff $df
	rst AddAOntoHL                                          ; $4d77: $ef
	sub a                                            ; $4d78: $97
	rst GetHLinHL                                          ; $4d79: $cf
	push de                                          ; $4d7a: $d5
	dec bc                                           ; $4d7b: $0b
	rlca                                             ; $4d7c: $07
	ld a, [bc]                                       ; $4d7d: $0a
	ld d, $2b                                        ; $4d7e: $16 $2b
	ld de, $7079                                     ; $4d80: $11 $79 $70
	db $dd                                           ; $4d83: $dd
	cp $db                                           ; $4d84: $fe $db
	rst $38                                          ; $4d86: $ff
	sbc c                                            ; $4d87: $99
	halt                                             ; $4d88: $76
	inc c                                            ; $4d89: $0c
	sbc b                                            ; $4d8a: $98
	ldh a, [rIE]                                     ; $4d8b: $f0 $ff
	rrca                                             ; $4d8d: $0f
	db $dd                                           ; $4d8e: $dd
	rlca                                             ; $4d8f: $07
	ld a, a                                          ; $4d90: $7f
	ld c, a                                          ; $4d91: $4f
	sbc l                                            ; $4d92: $9d
	db $10                                           ; $4d93: $10
	ldh a, [rPCM34]                                  ; $4d94: $f0 $77
	jr c, jr_056_4e14                                ; $4d96: $38 $7c

	or $56                                           ; $4d98: $f6 $56
	ldh [$78], a                                     ; $4d9a: $e0 $78
	call nz, $b063                                   ; $4d9c: $c4 $63 $b0
	sbc l                                            ; $4d9f: $9d
	nop                                              ; $4da0: $00
	ld a, [bc]                                       ; $4da1: $0a
	ld [hl], e                                       ; $4da2: $73
	cp $63                                           ; $4da3: $fe $63
	ldh [$98], a                                     ; $4da5: $e0 $98
	jr jr_056_4d55                                   ; $4da7: $18 $ac

	ld b, $ab                                        ; $4da9: $06 $ab
	ld bc, $00aa                                     ; $4dab: $01 $aa $00
	ld l, l                                          ; $4dae: $6d

jr_056_4daf:
	ldh a, [c]                                       ; $4daf: $f2
	ld h, a                                          ; $4db0: $67
	ret nc                                           ; $4db1: $d0

	ld e, d                                          ; $4db2: $5a
	sub b                                            ; $4db3: $90
	ld a, [hl]                                       ; $4db4: $7e
	call nz, $189b                                   ; $4db5: $c4 $9b $18
	dec de                                           ; $4db8: $1b
	rra                                              ; $4db9: $1f
	rra                                              ; $4dba: $1f
	ld e, h                                          ; $4dbb: $5c
	ret nc                                           ; $4dbc: $d0

	sbc d                                            ; $4dbd: $9a
	ld hl, sp+$00                                    ; $4dbe: $f8 $00
	inc bc                                           ; $4dc0: $03
	rst $38                                          ; $4dc1: $ff
	cp $5b                                           ; $4dc2: $fe $5b
	ldh [$7a], a                                     ; $4dc4: $e0 $7a
	call $fc9e                                       ; $4dc6: $cd $9e $fc
	ld d, a                                          ; $4dc9: $57
	ret nc                                           ; $4dca: $d0

	ld a, a                                          ; $4dcb: $7f
	pop af                                           ; $4dcc: $f1
	ld a, a                                          ; $4dcd: $7f
	sbc $57                                          ; $4dce: $de $57
	ldh a, [rOCPD]                                   ; $4dd0: $f0 $6b
	pop af                                           ; $4dd2: $f1
	ld h, e                                          ; $4dd3: $63
	ldh a, [$7e]                                     ; $4dd4: $f0 $7e
	or l                                             ; $4dd6: $b5
	ld c, a                                          ; $4dd7: $4f
	ldh a, [rBGP]                                    ; $4dd8: $f0 $47
	sub b                                            ; $4dda: $90
	dec hl                                           ; $4ddb: $2b
	ldh a, [$61]                                     ; $4ddc: $f0 $61
	db $10                                           ; $4dde: $10
	ei                                               ; $4ddf: $fb
	ld a, [hl]                                       ; $4de0: $7e
	ld e, a                                          ; $4de1: $5f
	reti                                             ; $4de2: $d9


	rst $38                                          ; $4de3: $ff
	sbc b                                            ; $4de4: $98
	add l                                            ; $4de5: $85
	add b                                            ; $4de6: $80
	sub l                                            ; $4de7: $95
	add e                                            ; $4de8: $83
	sbc a                                            ; $4de9: $9f
	or b                                             ; $4dea: $b0
	rst AddAOntoHL                                          ; $4deb: $ef
	ld [hl], b                                       ; $4dec: $70
	ld d, b                                          ; $4ded: $50
	ld a, [hl]                                       ; $4dee: $7e
	or l                                             ; $4def: $b5
	sbc h                                            ; $4df0: $9c
	add $88                                          ; $4df1: $c6 $88
	ld b, b                                          ; $4df3: $40
	ld a, e                                          ; $4df4: $7b
	ld [de], a                                       ; $4df5: $12
	sbc e                                            ; $4df6: $9b
	pop hl                                           ; $4df7: $e1
	ld sp, $8f1b                                     ; $4df8: $31 $1b $8f
	ld [hl], b                                       ; $4dfb: $70
	xor b                                            ; $4dfc: $a8
	sub b                                            ; $4dfd: $90
	rra                                              ; $4dfe: $1f
	ld c, $06                                        ; $4dff: $0e $06
	ld [hl], h                                       ; $4e01: $74
	ld a, d                                          ; $4e02: $7a
	db $f4                                           ; $4e03: $f4
	cp b                                             ; $4e04: $b8
	sub b                                            ; $4e05: $90
	sub b                                            ; $4e06: $90
	db $10                                           ; $4e07: $10
	db $10                                           ; $4e08: $10
	rst $38                                          ; $4e09: $ff
	rst SubAFromDE                                          ; $4e0a: $df
	sbc a                                            ; $4e0b: $9f
	sbc a                                            ; $4e0c: $9f
	db $dd                                           ; $4e0d: $dd
	rra                                              ; $4e0e: $1f
	sub a                                            ; $4e0f: $97
	ld b, c                                          ; $4e10: $41
	ld [bc], a                                       ; $4e11: $02
	dec b                                            ; $4e12: $05
	inc bc                                           ; $4e13: $03

jr_056_4e14:
	ld b, $0b                                        ; $4e14: $06 $0b
	ld b, $0d                                        ; $4e16: $06 $0d
	reti                                             ; $4e18: $d9


	rst $38                                          ; $4e19: $ff
	sbc [hl]                                         ; $4e1a: $9e
	ld b, b                                          ; $4e1b: $40
	halt                                             ; $4e1c: $76
	pop de                                           ; $4e1d: $d1
	ld a, d                                          ; $4e1e: $7a
	rst SubAFromDE                                          ; $4e1f: $df
	reti                                             ; $4e20: $d9


	rst $38                                          ; $4e21: $ff
	ld a, l                                          ; $4e22: $7d
	ld [hl-], a                                      ; $4e23: $32
	sbc h                                            ; $4e24: $9c
	inc b                                            ; $4e25: $04
	ld a, [bc]                                       ; $4e26: $0a
	dec d                                            ; $4e27: $15
	ld a, c                                          ; $4e28: $79
	dec e                                            ; $4e29: $1d
	ld h, e                                          ; $4e2a: $63
	sub b                                            ; $4e2b: $90
	sbc b                                            ; $4e2c: $98
	jr nz, @+$43                                     ; $4e2d: $20 $41

	and b                                            ; $4e2f: $a0
	ld b, c                                          ; $4e30: $41
	add d                                            ; $4e31: $82
	ld b, c                                          ; $4e32: $41
	add d                                            ; $4e33: $82
	ld c, d                                          ; $4e34: $4a
	or b                                             ; $4e35: $b0
	ld h, b                                          ; $4e36: $60
	ld b, b                                          ; $4e37: $40
	sbc l                                            ; $4e38: $9d
	nop                                              ; $4e39: $00
	ld a, [hl+]                                      ; $4e3a: $2a
	ld l, [hl]                                       ; $4e3b: $6e
	xor [hl]                                         ; $4e3c: $ae
	reti                                             ; $4e3d: $d9


	rst $38                                          ; $4e3e: $ff
	ld c, d                                          ; $4e3f: $4a
	nop                                              ; $4e40: $00
	sbc [hl]                                         ; $4e41: $9e
	inc sp                                           ; $4e42: $33
	sbc $77                                          ; $4e43: $de $77
	sbc [hl]                                         ; $4e45: $9e
	halt                                             ; $4e46: $76
	db $dd                                           ; $4e47: $dd
	ld h, [hl]                                       ; $4e48: $66
	sbc [hl]                                         ; $4e49: $9e
	ld [hl], a                                       ; $4e4a: $77
	ld [hl], e                                       ; $4e4b: $73
	or $df                                           ; $4e4c: $f6 $df
	ld h, d                                          ; $4e4e: $62
	sbc [hl]                                         ; $4e4f: $9e
	ld h, $67                                        ; $4e50: $26 $67
	or $df                                           ; $4e52: $f6 $df
	ld b, d                                          ; $4e54: $42
	ld l, e                                          ; $4e55: $6b
	or $9b                                           ; $4e56: $f6 $9b
	ld h, h                                          ; $4e58: $64
	ld b, h                                          ; $4e59: $44
	ld b, d                                          ; $4e5a: $42
	ld h, $6b                                        ; $4e5b: $26 $6b
	db $ec                                           ; $4e5d: $ec
	sbc l                                            ; $4e5e: $9d
	inc h                                            ; $4e5f: $24
	ld b, h                                          ; $4e60: $44
	ld e, a                                          ; $4e61: $5f
	or $9e                                           ; $4e62: $f6 $9e
	ld b, [hl]                                       ; $4e64: $46
	ld [hl], e                                       ; $4e65: $73
	or $99                                           ; $4e66: $f6 $99
	ld [hl], e                                       ; $4e68: $73
	ld h, [hl]                                       ; $4e69: $66
	ld [hl+], a                                      ; $4e6a: $22
	ld b, h                                          ; $4e6b: $44
	ld b, l                                          ; $4e6c: $45
	ld d, e                                          ; $4e6d: $53

jr_056_4e6e:
	ld [hl], a                                       ; $4e6e: $77
	or $99                                           ; $4e6f: $f6 $99
	ld [hl], a                                       ; $4e71: $77
	ld h, [hl]                                       ; $4e72: $66
	dec h                                            ; $4e73: $25
	ld b, h                                          ; $4e74: $44
	ld b, l                                          ; $4e75: $45
	ld d, l                                          ; $4e76: $55
	ld [hl], e                                       ; $4e77: $73
	or $9e                                           ; $4e78: $f6 $9e
	ld [hl], $dd                                     ; $4e7a: $36 $dd
	ld d, l                                          ; $4e7c: $55
	ld a, a                                          ; $4e7d: $7f
	or $de                                           ; $4e7e: $f6 $de
	inc sp                                           ; $4e80: $33
	sbc [hl]                                         ; $4e81: $9e
	dec [hl]                                         ; $4e82: $35
	ld [hl], e                                       ; $4e83: $73
	or $dd                                           ; $4e84: $f6 $dd
	inc sp                                           ; $4e86: $33
	ld [hl], e                                       ; $4e87: $73
	or $4e                                           ; $4e88: $f6 $4e
	adc c                                            ; $4e8a: $89
	rst $38                                          ; $4e8b: $ff
	sbc c                                            ; $4e8c: $99
	ld bc, $0703                                     ; $4e8d: $01 $03 $07
	rrca                                             ; $4e90: $0f
	rrca                                             ; $4e91: $0f
	rra                                              ; $4e92: $1f
	sbc $ff                                          ; $4e93: $de $ff
	sub a                                            ; $4e95: $97
	cp $fc                                           ; $4e96: $fe $fc
	ld hl, sp-$08                                    ; $4e98: $f8 $f8
	ldh a, [$9f]                                     ; $4e9a: $f0 $9f
	cp a                                             ; $4e9c: $bf
	ld a, a                                          ; $4e9d: $7f
	call c, $9cff                                    ; $4e9e: $dc $ff $9c
	ldh [$c0], a                                     ; $4ea1: $e0 $c0
	add b                                            ; $4ea3: $80
	db $fc                                           ; $4ea4: $fc
	reti                                             ; $4ea5: $d9


	rst $38                                          ; $4ea6: $ff
	ld sp, hl                                        ; $4ea7: $f9
	ld b, a                                          ; $4ea8: $47
	ldh a, [hDisp1_WY]                                     ; $4ea9: $f0 $95
	sbc c                                            ; $4eab: $99
	adc c                                            ; $4eac: $89
	adc l                                            ; $4ead: $8d
	adc l                                            ; $4eae: $8d
	add l                                            ; $4eaf: $85
	add a                                            ; $4eb0: $87
	rlca                                             ; $4eb1: $07
	rst JumpTable                                          ; $4eb2: $c7
	ld c, a                                          ; $4eb3: $4f
	ld c, a                                          ; $4eb4: $4f
	sbc $47                                          ; $4eb5: $de $47
	sbc h                                            ; $4eb7: $9c
	ld b, l                                          ; $4eb8: $45
	push bc                                          ; $4eb9: $c5
	add l                                            ; $4eba: $85
	daa                                              ; $4ebb: $27
	ret c                                            ; $4ebc: $d8

	inc bc                                           ; $4ebd: $03
	ldh a, [$03]                                     ; $4ebe: $f0 $03
	ldh a, [$2f]                                     ; $4ec0: $f0 $2f
	ldh a, [$7b]                                     ; $4ec2: $f0 $7b
	ld b, d                                          ; $4ec4: $42
	ld a, e                                          ; $4ec5: $7b
	ld b, c                                          ; $4ec6: $41
	ld [hl], a                                       ; $4ec7: $77
	ld b, b                                          ; $4ec8: $40
	rst SubAFromDE                                          ; $4ec9: $df
	cp $df                                           ; $4eca: $fe $df
	ld a, [$fb80]                                    ; $4ecc: $fa $80 $fb
	push af                                          ; $4ecf: $f5
	push de                                          ; $4ed0: $d5
	ld a, a                                          ; $4ed1: $7f
	xor a                                            ; $4ed2: $af
	pop de                                           ; $4ed3: $d1
	db $db                                           ; $4ed4: $db
	ei                                               ; $4ed5: $fb
	ld a, [hl]                                       ; $4ed6: $7e
	db $ec                                           ; $4ed7: $ec
	rst $38                                          ; $4ed8: $ff
	push de                                          ; $4ed9: $d5
	push de                                          ; $4eda: $d5
	xor a                                            ; $4edb: $af
	xor a                                            ; $4edc: $af
	xor [hl]                                         ; $4edd: $ae
	xor h                                            ; $4ede: $ac
	add hl, sp                                       ; $4edf: $39
	ld e, [hl]                                       ; $4ee0: $5e
	db $f4                                           ; $4ee1: $f4
	ld d, c                                          ; $4ee2: $51
	push hl                                          ; $4ee3: $e5
	sub [hl]                                         ; $4ee4: $96
	jr z, jr_056_4f49                                ; $4ee5: $28 $62

	push bc                                          ; $4ee7: $c5
	rst $38                                          ; $4ee8: $ff
	ld a, b                                          ; $4ee9: $78
	db $e3                                           ; $4eea: $e3
	adc [hl]                                         ; $4eeb: $8e
	jr jr_056_4e6e                                   ; $4eec: $18 $80

	ld [hl], e                                       ; $4eee: $73
	call z, $0699                                    ; $4eef: $cc $99 $06
	add hl, de                                       ; $4ef2: $19
	ld [hl], b                                       ; $4ef3: $70
	jp $ae3d                                         ; $4ef4: $c3 $3d $ae


	ld [hl], a                                       ; $4ef7: $77
	cp b                                             ; $4ef8: $b8
	ccf                                              ; $4ef9: $3f
	rst SubAFromBC                                          ; $4efa: $e7
	adc a                                            ; $4efb: $8f
	jr c, @-$3b                                      ; $4efc: $38 $c3

	rra                                              ; $4efe: $1f
	ld hl, sp-$39                                    ; $4eff: $f8 $c7
	or l                                             ; $4f01: $b5
	ld c, d                                          ; $4f02: $4a
	and l                                            ; $4f03: $a5
	ld d, l                                          ; $4f04: $55
	ld [$f7de], a                                    ; $4f05: $ea $de $f7
	rra                                              ; $4f08: $1f
	ccf                                              ; $4f09: $3f
	sbc a                                            ; $4f0a: $9f
	rst GetHLinHL                                          ; $4f0b: $cf
	rst SubAFromBC                                          ; $4f0c: $e7
	adc e                                            ; $4f0d: $8b
	di                                               ; $4f0e: $f3
	inc sp                                           ; $4f0f: $33
	dec de                                           ; $4f10: $1b
	ei                                               ; $4f11: $fb
	ei                                               ; $4f12: $fb
	rst FarCall                                          ; $4f13: $f7
	xor $ec                                          ; $4f14: $ee $ec
	sbc $bf                                          ; $4f16: $de $bf
	rst $38                                          ; $4f18: $ff
	rst $38                                          ; $4f19: $ff
	jr z, @-$4d                                      ; $4f1a: $28 $b1

	ld h, e                                          ; $4f1c: $63
	ld b, a                                          ; $4f1d: $47
	rst GetHLinHL                                          ; $4f1e: $cf
	sbc c                                            ; $4f1f: $99
	and h                                            ; $4f20: $a4
	ld a, $6e                                        ; $4f21: $3e $6e
	ld a, [$809d]                                    ; $4f23: $fa $9d $80
	db $fc                                           ; $4f26: $fc
	daa                                              ; $4f27: $27
	add b                                            ; $4f28: $80
	db $db                                           ; $4f29: $db
	rra                                              ; $4f2a: $1f
	rst SubAFromDE                                          ; $4f2b: $df
	rrca                                             ; $4f2c: $0f
	sbc h                                            ; $4f2d: $9c
	ldh a, [$f1]                                     ; $4f2e: $f0 $f1
	pop af                                           ; $4f30: $f1
	sbc $f2                                          ; $4f31: $de $f2
	rst SubAFromDE                                          ; $4f33: $df
	ld sp, hl                                        ; $4f34: $f9
	halt                                             ; $4f35: $76
	jp nz, $f79b                                     ; $4f36: $c2 $9b $f7

	rst AddAOntoHL                                          ; $4f39: $ef
	rst SubAFromDE                                          ; $4f3a: $df
	ld e, [hl]                                       ; $4f3b: $5e
	ld [hl], a                                       ; $4f3c: $77
	ret z                                            ; $4f3d: $c8

	sbc e                                            ; $4f3e: $9b
	ld [$3018], sp                                   ; $4f3f: $08 $18 $30
	or c                                             ; $4f42: $b1
	db $dd                                           ; $4f43: $dd
	rst $38                                          ; $4f44: $ff
	sbc [hl]                                         ; $4f45: $9e
	rst SubAFromDE                                          ; $4f46: $df
	ld a, d                                          ; $4f47: $7a
	xor h                                            ; $4f48: $ac

jr_056_4f49:
	db $fd                                           ; $4f49: $fd
	adc e                                            ; $4f4a: $8b
	jr nz, jr_056_4f8d                               ; $4f4b: $20 $40

	ret nz                                           ; $4f4d: $c0

	add b                                            ; $4f4e: $80
	cp $ff                                           ; $4f4f: $fe $ff
	db $fd                                           ; $4f51: $fd
	rst $38                                          ; $4f52: $ff
	ei                                               ; $4f53: $fb
	or $ea                                           ; $4f54: $f6 $ea
	sub $01                                          ; $4f56: $d6 $01
	ld bc, $0203                                     ; $4f58: $01 $03 $02
	ld b, $0e                                        ; $4f5b: $06 $0e
	ld e, $3c                                        ; $4f5d: $1e $3c
	sbc $87                                          ; $4f5f: $de $87
	sbc $06                                          ; $4f61: $de $06
	rst SubAFromDE                                          ; $4f63: $df
	ld [bc], a                                       ; $4f64: $02
	sbc e                                            ; $4f65: $9b
	add l                                            ; $4f66: $85
	dec b                                            ; $4f67: $05
	dec b                                            ; $4f68: $05
	rlca                                             ; $4f69: $07
	db $dd                                           ; $4f6a: $dd
	inc bc                                           ; $4f6b: $03
	inc bc                                           ; $4f6c: $03
	nop                                              ; $4f6d: $00
	inc bc                                           ; $4f6e: $03
	ldh a, [$03]                                     ; $4f6f: $f0 $03
	ldh a, [rVBK]                                    ; $4f71: $f0 $4f
	ld b, b                                          ; $4f73: $40
	db $dd                                           ; $4f74: $dd
	ccf                                              ; $4f75: $3f
	rst SubAFromDE                                          ; $4f76: $df
	ld a, a                                          ; $4f77: $7f
	sbc [hl]                                         ; $4f78: $9e
	ld a, [hl]                                       ; $4f79: $7e
	call c, $dff5                                    ; $4f7a: $dc $f5 $df
	sub $86                                          ; $4f7d: $d6 $86
	call c, $b2b8                                    ; $4f7f: $dc $b8 $b2
	ld h, l                                          ; $4f82: $65
	jp z, $2814                                      ; $4f83: $ca $14 $28

	ld d, c                                          ; $4f86: $51
	and d                                            ; $4f87: $a2
	ld [hl], e                                       ; $4f88: $73
	ld h, a                                          ; $4f89: $67
	adc $9d                                          ; $4f8a: $ce $9d
	cp e                                             ; $4f8c: $bb

jr_056_4f8d:
	ld [hl], a                                       ; $4f8d: $77
	rst AddAOntoHL                                          ; $4f8e: $ef
	rst SubAFromDE                                          ; $4f8f: $df
	ld [bc], a                                       ; $4f90: $02
	inc c                                            ; $4f91: $0c
	db $10                                           ; $4f92: $10
	jr nz, jr_056_4fd8                               ; $4f93: $20 $43

	add [hl]                                         ; $4f95: $86
	inc e                                            ; $4f96: $1c
	ccf                                              ; $4f97: $3f
	ld [hl], c                                       ; $4f98: $71
	jp hl                                            ; $4f99: $e9


	add h                                            ; $4f9a: $84
	db $fc                                           ; $4f9b: $fc
	ld sp, hl                                        ; $4f9c: $f9
	rst $38                                          ; $4f9d: $ff
	nop                                              ; $4f9e: $00
	rrca                                             ; $4f9f: $0f
	ccf                                              ; $4fa0: $3f
	cp $f8                                           ; $4fa1: $fe $f8
	inc sp                                           ; $4fa3: $33
	ld h, $ec                                        ; $4fa4: $26 $ec
	rst $38                                          ; $4fa6: $ff
	rst $38                                          ; $4fa7: $ff
	pop af                                           ; $4fa8: $f1
	rst JumpTable                                          ; $4fa9: $c7
	rrca                                             ; $4faa: $0f
	rra                                              ; $4fab: $1f
	db $fc                                           ; $4fac: $fc
	ld hl, sp+$3b                                    ; $4fad: $f8 $3b
	rst $38                                          ; $4faf: $ff
	adc l                                            ; $4fb0: $8d
	dec [hl]                                         ; $4fb1: $35
	db $fd                                           ; $4fb2: $fd
	db $fd                                           ; $4fb3: $fd
	dec a                                            ; $4fb4: $3d
	dec e                                            ; $4fb5: $1d
	db $dd                                           ; $4fb6: $dd
	rst $38                                          ; $4fb7: $ff
	sbc [hl]                                         ; $4fb8: $9e
	rst JumpTable                                          ; $4fb9: $c7
	sbc $07                                          ; $4fba: $de $07
	sub [hl]                                         ; $4fbc: $96
	ld l, [hl]                                       ; $4fbd: $6e
	add e                                            ; $4fbe: $83
	db $fd                                           ; $4fbf: $fd
	ld c, b                                          ; $4fc0: $48
	ld c, h                                          ; $4fc1: $4c
	cp l                                             ; $4fc2: $bd
	db $fd                                           ; $4fc3: $fd
	push af                                          ; $4fc4: $f5
	ldh a, [$7a]                                     ; $4fc5: $f0 $7a
	ld sp, hl                                        ; $4fc7: $f9
	sub [hl]                                         ; $4fc8: $96
	di                                               ; $4fc9: $f3
	ld h, d                                          ; $4fca: $62
	ld [hl+], a                                      ; $4fcb: $22
	ld a, [hl+]                                      ; $4fcc: $2a
	ccf                                              ; $4fcd: $3f
	rst $38                                          ; $4fce: $ff
	ldh [$e0], a                                     ; $4fcf: $e0 $e0
	ldh a, [$de]                                     ; $4fd1: $f0 $de
	ret nc                                           ; $4fd3: $d0

	sbc e                                            ; $4fd4: $9b
	inc bc                                           ; $4fd5: $03
	rst $38                                          ; $4fd6: $ff
	ld a, a                                          ; $4fd7: $7f

jr_056_4fd8:
	cp a                                             ; $4fd8: $bf
	db $dd                                           ; $4fd9: $dd
	ld e, a                                          ; $4fda: $5f
	sbc l                                            ; $4fdb: $9d
	add b                                            ; $4fdc: $80
	ldh [rHDMA3], a                                  ; $4fdd: $e0 $53
	add b                                            ; $4fdf: $80
	ld a, [hl]                                       ; $4fe0: $7e
	ld b, h                                          ; $4fe1: $44
	rst SubAFromDE                                          ; $4fe2: $df
	rlca                                             ; $4fe3: $07
	rst SubAFromDE                                          ; $4fe4: $df
	inc bc                                           ; $4fe5: $03
	rst SubAFromDE                                          ; $4fe6: $df
	ld bc, $0099                                     ; $4fe7: $01 $99 $00
	ld hl, sp-$04                                    ; $4fea: $f8 $fc
	db $fc                                           ; $4fec: $fc
	cp $fe                                           ; $4fed: $fe $fe
	ld [hl], l                                       ; $4fef: $75
	ld a, e                                          ; $4ff0: $7b
	add b                                            ; $4ff1: $80
	rst AddAOntoHL                                          ; $4ff2: $ef
	cp a                                             ; $4ff3: $bf
	ld [hl], a                                       ; $4ff4: $77
	rst SubAFromDE                                          ; $4ff5: $df
	cp e                                             ; $4ff6: $bb
	ccf                                              ; $4ff7: $3f
	rst AddAOntoHL                                          ; $4ff8: $ef
	sub c                                            ; $4ff9: $91
	sbc b                                            ; $4ffa: $98
	ret z                                            ; $4ffb: $c8

	call z, Call_056_6664                            ; $4ffc: $cc $64 $66
	ldh [c], a                                       ; $4fff: $e2
	ldh a, [c]                                       ; $5000: $f2
	rst $38                                          ; $5001: $ff
	cp $7c                                           ; $5002: $fe $7c
	db $fc                                           ; $5004: $fc
	call c, $febe                                    ; $5005: $dc $be $fe
	rst AddAOntoHL                                          ; $5008: $ef
	add b                                            ; $5009: $80
	add c                                            ; $500a: $81
	jp Jump_056_6343                                 ; $500b: $c3 $43 $63


	ld h, c                                          ; $500e: $61
	ld hl, $9630                                     ; $500f: $21 $30 $96
	sub [hl]                                         ; $5012: $96

jr_056_5013:
	ld h, $44                                        ; $5013: $26 $44
	ld b, h                                          ; $5015: $44
	add b                                            ; $5016: $80
	add h                                            ; $5017: $84
	call nz, Call_056_7ce6                           ; $5018: $c4 $e6 $7c
	db $dd                                           ; $501b: $dd
	db $fc                                           ; $501c: $fc
	sbc e                                            ; $501d: $9b
	ld hl, sp-$48                                    ; $501e: $f8 $b8
	sbc b                                            ; $5020: $98
	ld bc, $c27b                                     ; $5021: $01 $7b $c2
	ld a, l                                          ; $5024: $7d
	dec a                                            ; $5025: $3d
	rst $38                                          ; $5026: $ff
	ld a, e                                          ; $5027: $7b
	cp h                                             ; $5028: $bc
	ld a, e                                          ; $5029: $7b
	cp d                                             ; $502a: $ba
	ei                                               ; $502b: $fb
	db $dd                                           ; $502c: $dd
	add b                                            ; $502d: $80
	inc bc                                           ; $502e: $03
	nop                                              ; $502f: $00
	rla                                              ; $5030: $17
	ldh a, [$7f]                                     ; $5031: $f0 $7f
	xor e                                            ; $5033: $ab
	sbc [hl]                                         ; $5034: $9e
	ld b, $db                                        ; $5035: $06 $db
	rst $38                                          ; $5037: $ff
	ld a, h                                          ; $5038: $7c
	db $ed                                           ; $5039: $ed
	sbc e                                            ; $503a: $9b
	ld bc, $180f                                     ; $503b: $01 $0f $18
	ld [hl], b                                       ; $503e: $70
	ld [hl], h                                       ; $503f: $74
	push af                                          ; $5040: $f5
	ld a, a                                          ; $5041: $7f
	push af                                          ; $5042: $f5
	sbc l                                            ; $5043: $9d
	ldh a, [$e0]                                     ; $5044: $f0 $e0
	halt                                             ; $5046: $76
	inc l                                            ; $5047: $2c
	sbc l                                            ; $5048: $9d
	cp $07                                           ; $5049: $fe $07
	ld l, e                                          ; $504b: $6b
	ret nc                                           ; $504c: $d0

	ld l, e                                          ; $504d: $6b
	sub e                                            ; $504e: $93
	add a                                            ; $504f: $87
	reti                                             ; $5050: $d9


	call c, Call_056_7adb                            ; $5051: $dc $db $7a
	ld [hl+], a                                      ; $5054: $22
	ld l, h                                          ; $5055: $6c
	ld l, h                                          ; $5056: $6c
	ret c                                            ; $5057: $d8

	db $fd                                           ; $5058: $fd
	ei                                               ; $5059: $fb
	or $75                                           ; $505a: $f6 $75
	dec a                                            ; $505c: $3d
	ld e, e                                          ; $505d: $5b
	ld e, e                                          ; $505e: $5b
	or a                                             ; $505f: $b7
	inc b                                            ; $5060: $04
	ld [Call_000_1309], sp                                   ; $5061: $08 $09 $13
	dec h                                            ; $5064: $25
	dec hl                                           ; $5065: $2b
	ld c, a                                          ; $5066: $4f
	ld d, [hl]                                       ; $5067: $56
	ld [hl], a                                       ; $5068: $77
	jp $af74                                         ; $5069: $c3 $74 $af


	sub a                                            ; $506c: $97
	ld e, a                                          ; $506d: $5f
	cp a                                             ; $506e: $bf
	ld a, a                                          ; $506f: $7f
	call c, $03fe                                    ; $5070: $dc $fe $03
	dec de                                           ; $5073: $1b
	dec b                                            ; $5074: $05
	ld a, b                                          ; $5075: $78
	or b                                             ; $5076: $b0
	sbc h                                            ; $5077: $9c
	cp [hl]                                          ; $5078: $be
	ld a, a                                          ; $5079: $7f
	rlca                                             ; $507a: $07
	ld a, e                                          ; $507b: $7b
	jr jr_056_5013                                   ; $507c: $18 $95

	ldh a, [rLCDC]                                   ; $507e: $f0 $40
	ld h, b                                          ; $5080: $60
	ld b, b                                          ; $5081: $40
	nop                                              ; $5082: $00
	add b                                            ; $5083: $80
	ld bc, $2030                                     ; $5084: $01 $30 $20
	jr nz, @-$02                                     ; $5087: $20 $fc

	rst SubAFromDE                                          ; $5089: $df
	dec de                                           ; $508a: $1b
	sbc $1f                                          ; $508b: $de $1f
	add d                                            ; $508d: $82
	ld a, a                                          ; $508e: $7f
	db $eb                                           ; $508f: $eb
	db $fd                                           ; $5090: $fd
	rrca                                             ; $5091: $0f
	rrca                                             ; $5092: $0f
	dec c                                            ; $5093: $0d
	dec c                                            ; $5094: $0d
	ld l, c                                          ; $5095: $69
	ld a, l                                          ; $5096: $7d
	ld [hl], a                                       ; $5097: $77
	inc bc                                           ; $5098: $03
	db $f4                                           ; $5099: $f4
	or h                                             ; $509a: $b4
	call nc, Call_056_4454                           ; $509b: $d4 $54 $44
	jp hl                                            ; $509e: $e9


	xor c                                            ; $509f: $a9
	or $2a                                           ; $50a0: $f6 $2a
	ld l, d                                          ; $50a2: $6a
	ld l, c                                          ; $50a3: $69
	jp hl                                            ; $50a4: $e9


	ld sp, hl                                        ; $50a5: $f9
	db $d3                                           ; $50a6: $d3
	db $d3                                           ; $50a7: $d3
	and e                                            ; $50a8: $a3
	ld d, b                                          ; $50a9: $50
	ld d, b                                          ; $50aa: $50
	sbc $a0                                          ; $50ab: $de $a0
	rst SubAFromDE                                          ; $50ad: $df
	ld b, b                                          ; $50ae: $40
	sbc h                                            ; $50af: $9c
	add b                                            ; $50b0: $80
	ldh a, [$f0]                                     ; $50b1: $f0 $f0
	sbc $e0                                          ; $50b3: $de $e0
	sbc $c0                                          ; $50b5: $de $c0
	jp hl                                            ; $50b7: $e9


	ld e, l                                          ; $50b8: $5d
	ld [hl], b                                       ; $50b9: $70
	ld a, [hl]                                       ; $50ba: $7e
	xor [hl]                                         ; $50bb: $ae
	ld [hl], l                                       ; $50bc: $75
	cp e                                             ; $50bd: $bb
	sbc h                                            ; $50be: $9c
	di                                               ; $50bf: $f3
	pop af                                           ; $50c0: $f1
	ld sp, hl                                        ; $50c1: $f9
	ld h, c                                          ; $50c2: $61
	ld c, h                                          ; $50c3: $4c
	ld a, [hl]                                       ; $50c4: $7e
	add l                                            ; $50c5: $85
	add l                                            ; $50c6: $85
	dec sp                                           ; $50c7: $3b
	ld bc, $1010                                     ; $50c8: $01 $10 $10
	sbc b                                            ; $50cb: $98
	adc b                                            ; $50cc: $88
	adc b                                            ; $50cd: $88
	call nz, $fffe                                   ; $50ce: $c4 $fe $ff
	cp $bf                                           ; $50d1: $fe $bf
	ld a, a                                          ; $50d3: $7f
	ld e, a                                          ; $50d4: $5f
	xor h                                            ; $50d5: $ac
	ret nc                                           ; $50d6: $d0

	ret z                                            ; $50d7: $c8

	rst $38                                          ; $50d8: $ff
	add b                                            ; $50d9: $80
	ret nz                                           ; $50da: $c0

	ret nz                                           ; $50db: $c0

	ldh [$73], a                                     ; $50dc: $e0 $73
	ccf                                              ; $50de: $3f
	ccf                                              ; $50df: $3f
	cp $7a                                           ; $50e0: $fe $7a
	jp nc, Jump_056_6f7f                             ; $50e2: $d2 $7f $6f

	sbc h                                            ; $50e5: $9c
	ld [hl], b                                       ; $50e6: $70
	ld hl, sp-$08                                    ; $50e7: $f8 $f8
	ld l, [hl]                                       ; $50e9: $6e
	ret                                              ; $50ea: $c9


	rst $38                                          ; $50eb: $ff
	sub e                                            ; $50ec: $93
	ret nz                                           ; $50ed: $c0

	ld b, b                                          ; $50ee: $40
	jr nz, jr_056_5111                               ; $50ef: $20 $20

	db $10                                           ; $50f1: $10
	ld [$040c], sp                                   ; $50f2: $08 $0c $04
	ld a, a                                          ; $50f5: $7f
	ld a, a                                          ; $50f6: $7f
	ccf                                              ; $50f7: $3f
	ccf                                              ; $50f8: $3f
	ld a, e                                          ; $50f9: $7b
	or l                                             ; $50fa: $b5
	ld l, e                                          ; $50fb: $6b
	ld [de], a                                       ; $50fc: $12
	ld [de], a                                       ; $50fd: $12
	ret nc                                           ; $50fe: $d0

	sbc d                                            ; $50ff: $9a
	ld bc, $0c07                                     ; $5100: $01 $07 $0c
	jr nc, jr_056_5165                               ; $5103: $30 $60

	ld [hl], d                                       ; $5105: $72
	jp nc, $237f                                     ; $5106: $d2 $7f $23

	sbc e                                            ; $5109: $9b
	ret nz                                           ; $510a: $c0

	inc c                                            ; $510b: $0c
	jr jr_056_516e                                   ; $510c: $18 $60

	ld [hl], e                                       ; $510e: $73
	ld e, h                                          ; $510f: $5c

jr_056_5110:
	ld a, a                                          ; $5110: $7f

jr_056_5111:
	push af                                          ; $5111: $f5
	ld [hl], d                                       ; $5112: $72
	pop de                                           ; $5113: $d1
	ld a, [$0fdf]                                    ; $5114: $fa $df $0f
	rst FarCall                                          ; $5117: $f7
	sbc $01                                          ; $5118: $de $01
	sbc h                                            ; $511a: $9c
	ld [bc], a                                       ; $511b: $02
	ldh [c], a                                       ; $511c: $e2
	ldh [c], a                                       ; $511d: $e2
	ld [hl], e                                       ; $511e: $73
	ld hl, sp-$22                                    ; $511f: $f8 $de
	inc bc                                           ; $5121: $03
	adc d                                            ; $5122: $8a
	ret c                                            ; $5123: $d8

	or c                                             ; $5124: $b1
	or c                                             ; $5125: $b1
	jp $6567                                         ; $5126: $c3 $67 $65


	adc d                                            ; $5129: $8a
	adc d                                            ; $512a: $8a
	or a                                             ; $512b: $b7
	rst AddAOntoHL                                          ; $512c: $ef
	ld l, a                                          ; $512d: $6f
	ld a, a                                          ; $512e: $7f
	rst SubAFromDE                                          ; $512f: $df
	rst SubAFromDE                                          ; $5130: $df
	rst $38                                          ; $5131: $ff
	rst $38                                          ; $5132: $ff
	sbc [hl]                                         ; $5133: $9e
	xor [hl]                                         ; $5134: $ae
	cp [hl]                                          ; $5135: $be
	ld a, [hl]                                       ; $5136: $7e
	ld a, [hl]                                       ; $5137: $7e
	ld a, d                                          ; $5138: $7a
	dec c                                            ; $5139: $0d
	ld [hl], a                                       ; $513a: $77
	db $10                                           ; $513b: $10
	sbc $c0                                          ; $513c: $de $c0
	ld l, c                                          ; $513e: $69
	jp nc, $b57c                                     ; $513f: $d2 $7c $b5

	ld a, [$d379]                                    ; $5142: $fa $79 $d3
	sbc c                                            ; $5145: $99
	ld b, $07                                        ; $5146: $06 $07
	dec c                                            ; $5148: $0d
	ld b, $2e                                        ; $5149: $06 $2e
	inc d                                            ; $514b: $14
	halt                                             ; $514c: $76
	ld e, e                                          ; $514d: $5b
	ld a, b                                          ; $514e: $78
	sbc a                                            ; $514f: $9f
	add b                                            ; $5150: $80
	ld [$9b3f], sp                                   ; $5151: $08 $3f $9b
	ld e, [hl]                                       ; $5154: $5e
	sub [hl]                                         ; $5155: $96
	db $fd                                           ; $5156: $fd
	db $fd                                           ; $5157: $fd
	ld e, d                                          ; $5158: $5a
	ld l, d                                          ; $5159: $6a
	inc bc                                           ; $515a: $03
	rlca                                             ; $515b: $07
	add a                                            ; $515c: $87
	rst GetHLinHL                                          ; $515d: $cf
	rst AddAOntoHL                                          ; $515e: $ef
	ld e, a                                          ; $515f: $5f
	ccf                                              ; $5160: $3f
	ccf                                              ; $5161: $3f
	rst FarCall                                          ; $5162: $f7
	rst AddAOntoHL                                          ; $5163: $ef
	rst AddAOntoHL                                          ; $5164: $ef

jr_056_5165:
	rst $38                                          ; $5165: $ff
	db $fd                                           ; $5166: $fd
	ld sp, hl                                        ; $5167: $f9
	ei                                               ; $5168: $fb
	ldh a, [c]                                       ; $5169: $f2
	inc hl                                           ; $516a: $23
	ld b, l                                          ; $516b: $45
	rst JumpTable                                          ; $516c: $c7
	adc e                                            ; $516d: $8b

jr_056_516e:
	daa                                              ; $516e: $27
	ld c, a                                          ; $516f: $4f
	sbc l                                            ; $5170: $9d
	ld c, a                                          ; $5171: $4f
	sbc a                                            ; $5172: $9f
	ld [hl], a                                       ; $5173: $77
	jr jr_056_5110                                   ; $5174: $18 $9a

	ld [hl], b                                       ; $5176: $70
	ld a, h                                          ; $5177: $7c
	jr c, jr_056_51b2                                ; $5178: $38 $38

	ret nz                                           ; $517a: $c0

	call c, $2680                                    ; $517b: $dc $80 $26
	ret nz                                           ; $517e: $c0

	ld a, a                                          ; $517f: $7f
	ld l, [hl]                                       ; $5180: $6e
	ld l, [hl]                                       ; $5181: $6e
	ld [de], a                                       ; $5182: $12
	ld a, [hl]                                       ; $5183: $7e
	ld c, a                                          ; $5184: $4f
	db $fd                                           ; $5185: $fd

jr_056_5186:
	sbc e                                            ; $5186: $9b
	ld b, b                                          ; $5187: $40
	add c                                            ; $5188: $81
	ld b, c                                          ; $5189: $41
	and c                                            ; $518a: $a1
	sbc $ff                                          ; $518b: $de $ff
	sbc [hl]                                         ; $518d: $9e
	add a                                            ; $518e: $87
	halt                                             ; $518f: $76
	dec e                                            ; $5190: $1d
	ld a, d                                          ; $5191: $7a
	or h                                             ; $5192: $b4
	sbc b                                            ; $5193: $98
	jr nc, jr_056_5186                               ; $5194: $30 $f0

	add sp, -$30                                     ; $5196: $e8 $d0
	ld [$f0fc], a                                    ; $5198: $ea $fc $f0
	ld [hl], l                                       ; $519b: $75
	ld a, [$9dff]                                    ; $519c: $fa $ff $9d
	pop hl                                           ; $519f: $e1
	jr nc, jr_056_5219                               ; $51a0: $30 $77

	ld [hl], h                                       ; $51a2: $74
	sbc e                                            ; $51a3: $9b
	ld [$1f10], sp                                   ; $51a4: $08 $10 $1f
	rrca                                             ; $51a7: $0f
	ld a, d                                          ; $51a8: $7a
	db $e3                                           ; $51a9: $e3
	rst SubAFromDE                                          ; $51aa: $df
	rlca                                             ; $51ab: $07
	sbc c                                            ; $51ac: $99
	rrca                                             ; $51ad: $0f
	db $fc                                           ; $51ae: $fc
	db $fc                                           ; $51af: $fc
	ld a, h                                          ; $51b0: $7c
	ld a, [hl]                                       ; $51b1: $7e

jr_056_51b2:
	ld a, $7a                                        ; $51b2: $3e $7a
	push de                                          ; $51b4: $d5
	ld a, [hl]                                       ; $51b5: $7e
	jp nz, $977b                                     ; $51b6: $c2 $7b $97

	ld a, c                                          ; $51b9: $79
	dec d                                            ; $51ba: $15
	sbc [hl]                                         ; $51bb: $9e
	ld [bc], a                                       ; $51bc: $02
	ld a, c                                          ; $51bd: $79
	ld [hl], c                                       ; $51be: $71
	halt                                             ; $51bf: $76
	or h                                             ; $51c0: $b4
	ld [hl], l                                       ; $51c1: $75
	inc l                                            ; $51c2: $2c
	ld h, l                                          ; $51c3: $65
	ld [hl], c                                       ; $51c4: $71
	ld a, d                                          ; $51c5: $7a
	xor h                                            ; $51c6: $ac
	sbc [hl]                                         ; $51c7: $9e
	jr nc, jr_056_523c                               ; $51c8: $30 $72

	ld a, c                                          ; $51ca: $79
	ld a, [hl]                                       ; $51cb: $7e
	xor h                                            ; $51cc: $ac
	ld a, a                                          ; $51cd: $7f
	ret c                                            ; $51ce: $d8

	ld a, c                                          ; $51cf: $79
	and h                                            ; $51d0: $a4
	ld a, [hl]                                       ; $51d1: $7e
	call c, $ac7c                                    ; $51d2: $dc $7c $ac
	ld [hl], a                                       ; $51d5: $77
	sub d                                            ; $51d6: $92
	ld a, [hl]                                       ; $51d7: $7e
	call c, $1b7f                                    ; $51d8: $dc $7f $1b
	ld l, a                                          ; $51db: $6f
	xor d                                            ; $51dc: $aa
	ld a, e                                          ; $51dd: $7b
	db $db                                           ; $51de: $db
	db $f4                                           ; $51df: $f4
	ld a, a                                          ; $51e0: $7f
	ld [hl-], a                                      ; $51e1: $32
	ld sp, hl                                        ; $51e2: $f9
	rst SubAFromDE                                          ; $51e3: $df
	rra                                              ; $51e4: $1f
	ld a, b                                          ; $51e5: $78
	ld h, c                                          ; $51e6: $61
	rst SubAFromDE                                          ; $51e7: $df
	rst $38                                          ; $51e8: $ff
	sbc [hl]                                         ; $51e9: $9e
	rst AddAOntoHL                                          ; $51ea: $ef
	ld a, [$309b]                                    ; $51eb: $fa $9b $30
	ldh [c], a                                       ; $51ee: $e2
	push bc                                          ; $51ef: $c5
	push bc                                          ; $51f0: $c5
	sbc $c6                                          ; $51f1: $de $c6
	sbc h                                            ; $51f3: $9c
	add h                                            ; $51f4: $84
	adc c                                            ; $51f5: $89
	inc bc                                           ; $51f6: $03
	db $db                                           ; $51f7: $db
	rlca                                             ; $51f8: $07
	sbc l                                            ; $51f9: $9d
	rrca                                             ; $51fa: $0f
	sbc a                                            ; $51fb: $9f
	ld a, e                                          ; $51fc: $7b
	pop hl                                           ; $51fd: $e1
	add b                                            ; $51fe: $80
	ld l, a                                          ; $51ff: $6f
	db $ed                                           ; $5200: $ed
	call $f3cd                                       ; $5201: $cd $cd $f3
	di                                               ; $5204: $f3
	ldh [c], a                                       ; $5205: $e2
	add $c4                                          ; $5206: $c6 $c4
	add h                                            ; $5208: $84
	add h                                            ; $5209: $84
	inc b                                            ; $520a: $04
	inc a                                            ; $520b: $3c
	inc l                                            ; $520c: $2c
	inc e                                            ; $520d: $1c
	inc d                                            ; $520e: $14
	inc c                                            ; $520f: $0c
	ld c, d                                          ; $5210: $4a
	ld b, [hl]                                       ; $5211: $46
	ld b, e                                          ; $5212: $43
	ldh [$f0], a                                     ; $5213: $e0 $f0
	ldh a, [$f8]                                     ; $5215: $f0 $f8
	ld hl, sp-$44                                    ; $5217: $f8 $bc

jr_056_5219:
	cp h                                             ; $5219: $bc
	cp [hl]                                          ; $521a: $be
	rla                                              ; $521b: $17
	dec hl                                           ; $521c: $2b
	dec e                                            ; $521d: $1d
	sub l                                            ; $521e: $95
	dec l                                            ; $521f: $2d
	ld [de], a                                       ; $5220: $12
	ld c, h                                          ; $5221: $4c
	ld h, b                                          ; $5222: $60
	ld bc, $170f                                     ; $5223: $01 $0f $17
	inc hl                                           ; $5226: $23
	inc sp                                           ; $5227: $33
	rra                                              ; $5228: $1f
	ld [hl], e                                       ; $5229: $73
	ld [hl], e                                       ; $522a: $73
	adc c                                            ; $522b: $89
	pop bc                                           ; $522c: $c1
	add e                                            ; $522d: $83
	add a                                            ; $522e: $87
	ld c, $3d                                        ; $522f: $0e $3d
	ld l, d                                          ; $5231: $6a
	ld b, b                                          ; $5232: $40
	and b                                            ; $5233: $a0
	ldh [$c1], a                                     ; $5234: $e0 $c1
	inc bc                                           ; $5236: $03
	rlca                                             ; $5237: $07
	rra                                              ; $5238: $1f
	rst AddAOntoHL                                          ; $5239: $ef
	ld [hl], l                                       ; $523a: $75
	ld d, l                                          ; $523b: $55

jr_056_523c:
	xor d                                            ; $523c: $aa
	ld d, d                                          ; $523d: $52
	sub l                                            ; $523e: $95
	xor d                                            ; $523f: $aa
	ld d, h                                          ; $5240: $54
	xor b                                            ; $5241: $a8
	ld [hl], h                                       ; $5242: $74
	ld hl, $6d77                                     ; $5243: $21 $77 $6d
	sub l                                            ; $5246: $95
	ldh [c], a                                       ; $5247: $e2
	call nz, $88c4                                   ; $5248: $c4 $c4 $88
	ld [$0010], sp                                   ; $524b: $08 $10 $00
	nop                                              ; $524e: $00
	ccf                                              ; $524f: $3f
	ld a, a                                          ; $5250: $7f
	ld [hl], e                                       ; $5251: $73
	xor $97                                          ; $5252: $ee $97
	ld a, a                                          ; $5254: $7f
	db $10                                           ; $5255: $10
	inc d                                            ; $5256: $14
	dec bc                                           ; $5257: $0b
	rrca                                             ; $5258: $0f
	rra                                              ; $5259: $1f
	rra                                              ; $525a: $1f
	rst $38                                          ; $525b: $ff
	ld [hl], h                                       ; $525c: $74
	ld a, [hl-]                                      ; $525d: $3a
	ld a, d                                          ; $525e: $7a
	ld l, [hl]                                       ; $525f: $6e
	ld a, e                                          ; $5260: $7b
	ld a, a                                          ; $5261: $7f
	sbc l                                            ; $5262: $9d
	halt                                             ; $5263: $76
	ld hl, sp+$51                                    ; $5264: $f8 $51
	ld hl, sp+$78                                    ; $5266: $f8 $78
	add c                                            ; $5268: $81
	sbc d                                            ; $5269: $9a
	jp nz, $cae5                                     ; $526a: $c2 $e5 $ca

	rst SubAFromDE                                          ; $526d: $df
	rst $38                                          ; $526e: $ff
	sbc $f8                                          ; $526f: $de $f8
	ld a, [hl]                                       ; $5271: $7e
	and $fe                                          ; $5272: $e6 $fe
	sbc b                                            ; $5274: $98
	ret nc                                           ; $5275: $d0

	and b                                            ; $5276: $a0
	ret nz                                           ; $5277: $c0

	ldh [rLCDC], a                                   ; $5278: $e0 $40
	and b                                            ; $527a: $a0
	ld b, b                                          ; $527b: $40
	ld h, e                                          ; $527c: $63
	ld sp, $fc9d                                     ; $527d: $31 $9d $fc
	ld l, b                                          ; $5280: $68
	di                                               ; $5281: $f3
	ld a, l                                          ; $5282: $7d
	and h                                            ; $5283: $a4
	sbc c                                            ; $5284: $99
	nop                                              ; $5285: $00
	ld [bc], a                                       ; $5286: $02
	ld bc, $0503                                     ; $5287: $01 $03 $05
	dec bc                                           ; $528a: $0b
	ld a, c                                          ; $528b: $79
	ld e, d                                          ; $528c: $5a
	ld [hl], d                                       ; $528d: $72
	rst SubAFromDE                                          ; $528e: $df
	ld a, c                                          ; $528f: $79
	ld d, b                                          ; $5290: $50
	sbc $0f                                          ; $5291: $de $0f
	rst SubAFromDE                                          ; $5293: $df
	rlca                                             ; $5294: $07
	ld [hl], a                                       ; $5295: $77
	ld d, c                                          ; $5296: $51
	rst SubAFromDE                                          ; $5297: $df
	ld hl, sp-$21                                    ; $5298: $f8 $df
	db $fc                                           ; $529a: $fc
	halt                                             ; $529b: $76
	ld e, h                                          ; $529c: $5c
	ld a, d                                          ; $529d: $7a
	or a                                             ; $529e: $b7
	sbc [hl]                                         ; $529f: $9e
	ldh a, [$5f]                                     ; $52a0: $f0 $5f
	ret nc                                           ; $52a2: $d0

	sbc [hl]                                         ; $52a3: $9e
	dec c                                            ; $52a4: $0d
	ld a, d                                          ; $52a5: $7a
	inc c                                            ; $52a6: $0c
	rst SubAFromDE                                          ; $52a7: $df
	ld bc, $7479                                     ; $52a8: $01 $79 $74
	sbc [hl]                                         ; $52ab: $9e
	ld [bc], a                                       ; $52ac: $02
	db $fd                                           ; $52ad: $fd
	ld a, l                                          ; $52ae: $7d
	and d                                            ; $52af: $a2
	ld [hl], a                                       ; $52b0: $77
	and l                                            ; $52b1: $a5
	ld a, e                                          ; $52b2: $7b
	jp c, $cf5e                                      ; $52b3: $da $5e $cf

	sbc d                                            ; $52b6: $9a
	inc bc                                           ; $52b7: $03
	rrca                                             ; $52b8: $0f
	rra                                              ; $52b9: $1f
	ccf                                              ; $52ba: $3f
	ld a, a                                          ; $52bb: $7f
	ld h, c                                          ; $52bc: $61
	sub [hl]                                         ; $52bd: $96
	ld a, a                                          ; $52be: $7f
	push af                                          ; $52bf: $f5
	ld a, a                                          ; $52c0: $7f
	ld a, [hl-]                                      ; $52c1: $3a
	sbc l                                            ; $52c2: $9d
	add sp, -$10                                     ; $52c3: $e8 $f0
	ld a, d                                          ; $52c5: $7a
	jr jr_056_5347                                   ; $52c6: $18 $7f

	sbc d                                            ; $52c8: $9a
	sub d                                            ; $52c9: $92
	rlca                                             ; $52ca: $07
	ld e, $3d                                        ; $52cb: $1e $3d
	ld a, d                                          ; $52cd: $7a
	rst SubAFromDE                                          ; $52ce: $df
	rst $38                                          ; $52cf: $ff
	ld a, a                                          ; $52d0: $7f
	ld a, $3c                                        ; $52d1: $3e $3c
	jr jr_056_52ed                                   ; $52d3: $18 $18

	ld [$7b60], sp                                   ; $52d5: $08 $60 $7b
	xor d                                            ; $52d8: $aa
	sub [hl]                                         ; $52d9: $96
	ld h, b                                          ; $52da: $60
	or b                                             ; $52db: $b0
	jr nc, jr_056_52f6                               ; $52dc: $30 $18

	adc c                                            ; $52de: $89
	adc e                                            ; $52df: $8b
	adc e                                            ; $52e0: $8b
	dec bc                                           ; $52e1: $0b
	dec bc                                           ; $52e2: $0b
	sbc $0e                                          ; $52e3: $de $0e
	sbc [hl]                                         ; $52e5: $9e
	rrca                                             ; $52e6: $0f
	db $dd                                           ; $52e7: $dd
	ld c, $7d                                        ; $52e8: $0e $7d
	add hl, de                                       ; $52ea: $19
	sbc [hl]                                         ; $52eb: $9e
	inc b                                            ; $52ec: $04

jr_056_52ed:
	ld sp, hl                                        ; $52ed: $f9
	sbc l                                            ; $52ee: $9d
	adc l                                            ; $52ef: $8d
	add l                                            ; $52f0: $85
	ei                                               ; $52f1: $fb
	add b                                            ; $52f2: $80
	ld b, c                                          ; $52f3: $41
	jr nz, jr_056_52f7                               ; $52f4: $20 $01

jr_056_52f6:
	sub e                                            ; $52f6: $93

jr_056_52f7:
	adc $78                                          ; $52f7: $ce $78
	ld h, b                                          ; $52f9: $60
	nop                                              ; $52fa: $00
	cp a                                             ; $52fb: $bf
	sbc a                                            ; $52fc: $9f
	sbc [hl]                                         ; $52fd: $9e
	inc c                                            ; $52fe: $0c
	ld bc, $1f07                                     ; $52ff: $01 $07 $1f
	nop                                              ; $5302: $00
	rst $38                                          ; $5303: $ff
	ld sp, $50b1                                     ; $5304: $31 $b1 $50
	ret z                                            ; $5307: $c8

	and $13                                          ; $5308: $e6 $13
	ld a, h                                          ; $530a: $7c
	rst $38                                          ; $530b: $ff
	pop af                                           ; $530c: $f1
	ld d, c                                          ; $530d: $51
	sub b                                            ; $530e: $90
	ld [$e106], sp                                   ; $530f: $08 $06 $e1
	ld a, a                                          ; $5312: $7f
	ret c                                            ; $5313: $d8

	adc a                                            ; $5314: $8f
	dec e                                            ; $5315: $1d
	ld a, [de]                                       ; $5316: $1a
	sub h                                            ; $5317: $94
	dec [hl]                                         ; $5318: $35
	ld a, [hl+]                                      ; $5319: $2a
	xor d                                            ; $531a: $aa
	db $ec                                           ; $531b: $ec
	adc a                                            ; $531c: $8f
	rra                                              ; $531d: $1f
	rra                                              ; $531e: $1f
	sbc a                                            ; $531f: $9f
	ccf                                              ; $5320: $3f
	ld a, $be                                        ; $5321: $3e $be
	ld a, h                                          ; $5323: $7c
	ld d, b                                          ; $5324: $50
	ld l, a                                          ; $5325: $6f
	ld l, a                                          ; $5326: $6f
	sbc [hl]                                         ; $5327: $9e
	nop                                              ; $5328: $00
	ld h, [hl]                                       ; $5329: $66
	ld [hl], $9c                                     ; $532a: $36 $9c
	ld a, a                                          ; $532c: $7f
	ld h, e                                          ; $532d: $63
	ld b, b                                          ; $532e: $40
	ld b, h                                          ; $532f: $44
	ld l, b                                          ; $5330: $68
	ld a, a                                          ; $5331: $7f
	ld a, a                                          ; $5332: $7f
	rst SubAFromDE                                          ; $5333: $df
	dec e                                            ; $5334: $1d
	sbc [hl]                                         ; $5335: $9e
	ld b, $f9                                        ; $5336: $06 $f9
	sbc b                                            ; $5338: $98
	and $f8                                          ; $5339: $e6 $f8
	db $fc                                           ; $533b: $fc
	rst $38                                          ; $533c: $ff
	ccf                                              ; $533d: $3f
	sbc a                                            ; $533e: $9f
	ld c, $74                                        ; $533f: $0e $74
	ld e, l                                          ; $5341: $5d
	ld h, b                                          ; $5342: $60
	cp b                                             ; $5343: $b8
	sbc e                                            ; $5344: $9b
	ccf                                              ; $5345: $3f
	rrca                                             ; $5346: $0f

jr_056_5347:
	inc e                                            ; $5347: $1c
	ld a, b                                          ; $5348: $78
	ld sp, hl                                        ; $5349: $f9
	ld [hl], a                                       ; $534a: $77
	ld [bc], a                                       ; $534b: $02
	sbc e                                            ; $534c: $9b
	ldh a, [$ea]                                     ; $534d: $f0 $ea
	ld [hl], l                                       ; $534f: $75
	ld a, [hl-]                                      ; $5350: $3a
	ld e, c                                          ; $5351: $59
	ld h, h                                          ; $5352: $64
	ld [hl], l                                       ; $5353: $75
	add hl, bc                                       ; $5354: $09
	sbc [hl]                                         ; $5355: $9e
	xor a                                            ; $5356: $af
	ld sp, hl                                        ; $5357: $f9
	sub a                                            ; $5358: $97
	ld a, a                                          ; $5359: $7f
	ld [$0454], a                                    ; $535a: $ea $54 $04
	inc [hl]                                         ; $535d: $34
	inc c                                            ; $535e: $0c
	ld b, $83                                        ; $535f: $06 $83
	ld a, e                                          ; $5361: $7b
	ld hl, $03de                                     ; $5362: $21 $de $03
	ld a, a                                          ; $5365: $7f
	db $e4                                           ; $5366: $e4
	sbc $07                                          ; $5367: $de $07
	ld [hl], a                                       ; $5369: $77
	ld hl, sp-$62                                    ; $536a: $f8 $9e
	ld bc, $fcde                                     ; $536c: $01 $de $fc
	sbc $fe                                          ; $536f: $de $fe
	rst SubAFromDE                                          ; $5371: $df

jr_056_5372:
	rst $38                                          ; $5372: $ff
	ld l, [hl]                                       ; $5373: $6e
	cp d                                             ; $5374: $ba
	ld a, a                                          ; $5375: $7f
	db $f4                                           ; $5376: $f4
	jp hl                                            ; $5377: $e9


	sub a                                            ; $5378: $97
	add b                                            ; $5379: $80
	add c                                            ; $537a: $81
	ld b, e                                          ; $537b: $43
	ld b, e                                          ; $537c: $43
	rlca                                             ; $537d: $07
	rrca                                             ; $537e: $0f
	rra                                              ; $537f: $1f
	ld e, $67                                        ; $5380: $1e $67
	and e                                            ; $5382: $a3
	ld a, h                                          ; $5383: $7c
	db $d3                                           ; $5384: $d3
	sbc h                                            ; $5385: $9c
	ld a, [$e8f4]                                    ; $5386: $fa $f4 $e8
	ld a, d                                          ; $5389: $7a
	ld c, e                                          ; $538a: $4b
	ld a, c                                          ; $538b: $79
	adc l                                            ; $538c: $8d
	sbc d                                            ; $538d: $9a
	rrca                                             ; $538e: $0f
	ld e, $3d                                        ; $538f: $1e $3d
	ld a, [hl]                                       ; $5391: $7e
	rst $38                                          ; $5392: $ff
	ld h, [hl]                                       ; $5393: $66
	xor c                                            ; $5394: $a9
	sub l                                            ; $5395: $95
	or $d2                                           ; $5396: $f6 $d2
	xor b                                            ; $5398: $a8
	ld b, h                                          ; $5399: $44
	add h                                            ; $539a: $84
	ld b, d                                          ; $539b: $42
	add c                                            ; $539c: $81
	ld b, c                                          ; $539d: $41
	inc c                                            ; $539e: $0c
	ld b, $6e                                        ; $539f: $06 $6e
	ld e, b                                          ; $53a1: $58
	sbc h                                            ; $53a2: $9c
	ld [$0204], sp                                   ; $53a3: $08 $04 $02
	ld [hl], a                                       ; $53a6: $77
	ld hl, sp-$64                                    ; $53a7: $f8 $9c
	ld bc, $040c                                     ; $53a9: $01 $0c $04
	ld a, c                                          ; $53ac: $79
	cp l                                             ; $53ad: $bd
	sbc h                                            ; $53ae: $9c
	ld h, b                                          ; $53af: $60
	jr c, jr_056_53c1                                ; $53b0: $38 $0f

	halt                                             ; $53b2: $76
	rst JumpTable                                          ; $53b3: $c7
	sbc e                                            ; $53b4: $9b
	add b                                            ; $53b5: $80
	ld b, b                                          ; $53b6: $40
	jr nc, @+$0e                                     ; $53b7: $30 $0c

	ld a, d                                          ; $53b9: $7a
	ld e, [hl]                                       ; $53ba: $5e
	sbc d                                            ; $53bb: $9a
	db $10                                           ; $53bc: $10
	jr jr_056_53fd                                   ; $53bd: $18 $3e

	ld l, h                                          ; $53bf: $6c
	db $ec                                           ; $53c0: $ec

jr_056_53c1:
	ld l, d                                          ; $53c1: $6a
	ld d, d                                          ; $53c2: $52
	ld a, l                                          ; $53c3: $7d
	add $75                                          ; $53c4: $c6 $75
	sbc e                                            ; $53c6: $9b
	ld a, b                                          ; $53c7: $78
	inc h                                            ; $53c8: $24
	ldh a, [c]                                       ; $53c9: $f2
	sbc [hl]                                         ; $53ca: $9e
	call z, $9cf9                                    ; $53cb: $cc $f9 $9c
	ld l, h                                          ; $53ce: $6c
	jr jr_056_5409                                   ; $53cf: $18 $38

	sbc $10                                          ; $53d1: $de $10
	rst SubAFromDE                                          ; $53d3: $df
	jr nc, jr_056_5372                               ; $53d4: $30 $9c

	inc a                                            ; $53d6: $3c
	jr c, @+$1a                                      ; $53d7: $38 $18

	call c, $ff10                                    ; $53d9: $dc $10 $ff
	sbc c                                            ; $53dc: $99
	dec b                                            ; $53dd: $05
	ld a, [bc]                                       ; $53de: $0a
	ld d, l                                          ; $53df: $55
	xor a                                            ; $53e0: $af
	ld e, a                                          ; $53e1: $5f
	cp a                                             ; $53e2: $bf
	ld d, a                                          ; $53e3: $57
	ld e, l                                          ; $53e4: $5d
	sbc e                                            ; $53e5: $9b
	ld b, b                                          ; $53e6: $40
	ldh [$fc], a                                     ; $53e7: $e0 $fc
	pop af                                           ; $53e9: $f1
	ld l, d                                          ; $53ea: $6a
	dec h                                            ; $53eb: $25

jr_056_53ec:
	sbc l                                            ; $53ec: $9d
	ld c, $06                                        ; $53ed: $0e $06
	ld [hl], h                                       ; $53ef: $74
	or $9d                                           ; $53f0: $f6 $9d
	jr nz, jr_056_53ec                               ; $53f2: $20 $f8

	ld [hl], d                                       ; $53f4: $72
	inc b                                            ; $53f5: $04
	ld a, a                                          ; $53f6: $7f
	ld hl, sp-$63                                    ; $53f7: $f8 $9d
	jr nz, jr_056_541c                               ; $53f9: $20 $21

	ld b, a                                          ; $53fb: $47
	and a                                            ; $53fc: $a7

jr_056_53fd:
	rst SubAFromDE                                          ; $53fd: $df
	ldh a, [rPCM34]                                  ; $53fe: $f0 $77
	ld c, [hl]                                       ; $5400: $4e
	sbc [hl]                                         ; $5401: $9e

jr_056_5402:
	ld b, b                                          ; $5402: $40
	ld a, e                                          ; $5403: $7b
	ld a, b                                          ; $5404: $78
	ei                                               ; $5405: $fb
	sbc l                                            ; $5406: $9d
	ccf                                              ; $5407: $3f
	ld a, [hl-]                                      ; $5408: $3a

jr_056_5409:
	ld a, c                                          ; $5409: $79
	xor a                                            ; $540a: $af
	sbc [hl]                                         ; $540b: $9e
	rra                                              ; $540c: $1f
	ld l, a                                          ; $540d: $6f
	ld c, h                                          ; $540e: $4c
	ld [hl], d                                       ; $540f: $72
	and b                                            ; $5410: $a0
	sbc d                                            ; $5411: $9a
	xor a                                            ; $5412: $af
	rst SubAFromHL                                          ; $5413: $d7
	db $ec                                           ; $5414: $ec
	ld hl, sp-$03                                    ; $5415: $f8 $fd
	ld e, c                                          ; $5417: $59
	ld d, b                                          ; $5418: $50
	ld [hl], b                                       ; $5419: $70
	ld a, [hl+]                                      ; $541a: $2a
	sbc l                                            ; $541b: $9d

jr_056_541c:
	nop                                              ; $541c: $00
	xor b                                            ; $541d: $a8
	ld h, e                                          ; $541e: $63
	sub e                                            ; $541f: $93
	sub e                                            ; $5420: $93
	pop bc                                           ; $5421: $c1
	add $ec                                          ; $5422: $c6 $ec
	ret nc                                           ; $5424: $d0

	ld h, b                                          ; $5425: $60
	ld b, b                                          ; $5426: $40
	nop                                              ; $5427: $00
	ld a, a                                          ; $5428: $7f
	ld a, $38                                        ; $5429: $3e $38
	db $10                                           ; $542b: $10

jr_056_542c:
	jr nz, jr_056_542c                               ; $542c: $20 $fe

	ld a, [hl]                                       ; $542e: $7e
	cp l                                             ; $542f: $bd
	ld [hl], h                                       ; $5430: $74
	ld e, d                                          ; $5431: $5a
	ld a, l                                          ; $5432: $7d
	sub e                                            ; $5433: $93
	ld a, c                                          ; $5434: $79
	sbc [hl]                                         ; $5435: $9e
	sbc e                                            ; $5436: $9b
	ld b, b                                          ; $5437: $40
	ld h, b                                          ; $5438: $60
	jr nc, jr_056_5453                               ; $5439: $30 $18

	ld a, e                                          ; $543b: $7b
	xor b                                            ; $543c: $a8
	ld a, [hl]                                       ; $543d: $7e
	adc $9b                                          ; $543e: $ce $9b
	jp $feff                                         ; $5440: $c3 $ff $fe


	ei                                               ; $5443: $fb
	ld l, d                                          ; $5444: $6a
	pop de                                           ; $5445: $d1
	sub [hl]                                         ; $5446: $96
	rlca                                             ; $5447: $07
	dec a                                            ; $5448: $3d
	ld a, e                                          ; $5449: $7b
	or $fc                                           ; $544a: $f6 $fc
	and h                                            ; $544c: $a4
	ld c, b                                          ; $544d: $48
	sub b                                            ; $544e: $90
	jr nc, jr_056_54cb                               ; $544f: $30 $7a

	pop de                                           ; $5451: $d1
	sbc d                                            ; $5452: $9a

jr_056_5453:
	rra                                              ; $5453: $1f
	ld h, [hl]                                       ; $5454: $66
	call $3c9a                                       ; $5455: $cd $9a $3c
	ld l, d                                          ; $5458: $6a
	ret nc                                           ; $5459: $d0

	sbc [hl]                                         ; $545a: $9e
	inc bc                                           ; $545b: $03
	ld a, d                                          ; $545c: $7a
	cp b                                             ; $545d: $b8
	sbc e                                            ; $545e: $9b
	db $dd                                           ; $545f: $dd
	xor [hl]                                         ; $5460: $ae
	ld d, l                                          ; $5461: $55
	add b                                            ; $5462: $80
	ld l, [hl]                                       ; $5463: $6e
	jr z, jr_056_5402                                ; $5464: $28 $9c

	rlca                                             ; $5466: $07
	add hl, bc                                       ; $5467: $09
	add hl, bc                                       ; $5468: $09
	halt                                             ; $5469: $76
	jp c, $809d                                      ; $546a: $da $9d $80

	ld b, $7b                                        ; $546d: $06 $7b
	ld hl, sp+$7b                                    ; $546f: $f8 $7b
	ld h, e                                          ; $5471: $63
	ld a, [hl]                                       ; $5472: $7e
	cpl                                              ; $5473: $2f
	sub l                                            ; $5474: $95
	cp $f9                                           ; $5475: $fe $f9
	add b                                            ; $5477: $80
	ld b, b                                          ; $5478: $40
	jr nz, @+$12                                     ; $5479: $20 $10

	inc c                                            ; $547b: $0c
	inc bc                                           ; $547c: $03
	ld b, $09                                        ; $547d: $06 $09
	ld h, a                                          ; $547f: $67
	ld h, [hl]                                       ; $5480: $66
	sub d                                            ; $5481: $92
	add e                                            ; $5482: $83
	ld h, b                                          ; $5483: $60

jr_056_5484:
	db $10                                           ; $5484: $10
	inc c                                            ; $5485: $0c
	ld [bc], a                                       ; $5486: $02
	ld bc, $0080                                     ; $5487: $01 $80 $00
	add sp, -$18                                     ; $548a: $e8 $e8
	ld hl, sp+$3c                                    ; $548c: $f8 $3c
	rrca                                             ; $548e: $0f
	ld a, e                                          ; $548f: $7b
	db $ec                                           ; $5490: $ec
	sub a                                            ; $5491: $97
	jr nc, jr_056_5484                               ; $5492: $30 $f0

	jr nz, @+$1a                                     ; $5494: $20 $18

	ld b, $81                                        ; $5496: $06 $81
	ld h, b                                          ; $5498: $60
	inc e                                            ; $5499: $1c
	ld [hl], e                                       ; $549a: $73
	sbc d                                            ; $549b: $9a
	sbc l                                            ; $549c: $9d
	db $e3                                           ; $549d: $e3
	ld a, a                                          ; $549e: $7f
	ld [hl], a                                       ; $549f: $77
	ld a, [bc]                                       ; $54a0: $0a
	ld a, e                                          ; $54a1: $7b
	add l                                            ; $54a2: $85
	add c                                            ; $54a3: $81
	ld a, b                                          ; $54a4: $78
	rrca                                             ; $54a5: $0f
	db $fc                                           ; $54a6: $fc
	add sp, -$28                                     ; $54a7: $e8 $d8
	or b                                             ; $54a9: $b0
	ldh [$60], a                                     ; $54aa: $e0 $60
	pop bc                                           ; $54ac: $c1
	jp $1000                                         ; $54ad: $c3 $00 $10


	jr nz, jr_056_54f2                               ; $54b0: $20 $40

	ld b, b                                          ; $54b2: $40
	ret nz                                           ; $54b3: $c0

	add c                                            ; $54b4: $81
	add c                                            ; $54b5: $81
	jr nz, jr_056_5518                               ; $54b6: $20 $60

	ld b, b                                          ; $54b8: $40
	ld b, b                                          ; $54b9: $40
	add h                                            ; $54ba: $84
	add [hl]                                         ; $54bb: $86
	inc bc                                           ; $54bc: $03
	ld c, $30                                        ; $54bd: $0e $30
	jr nz, @+$72                                     ; $54bf: $20 $70

	ld a, b                                          ; $54c1: $78
	sbc $f8                                          ; $54c2: $de $f8
	sub [hl]                                         ; $54c4: $96
	ldh a, [rIE]                                     ; $54c5: $f0 $ff
	ld a, a                                          ; $54c7: $7f
	rrca                                             ; $54c8: $0f
	rla                                              ; $54c9: $17
	dec hl                                           ; $54ca: $2b

jr_056_54cb:
	ld e, $3e                                        ; $54cb: $1e $3e
	dec de                                           ; $54cd: $1b
	ld l, a                                          ; $54ce: $6f
	ld h, c                                          ; $54cf: $61
	ld a, a                                          ; $54d0: $7f
	or a                                             ; $54d1: $b7
	sub h                                            ; $54d2: $94
	ldh [$c4], a                                     ; $54d3: $e0 $c4
	add b                                            ; $54d5: $80
	ld [$150a], sp                                   ; $54d6: $08 $0a $15
	ld a, [bc]                                       ; $54d9: $0a
	dec d                                            ; $54da: $15
	inc e                                            ; $54db: $1c
	jr c, jr_056_5556                                ; $54dc: $38 $78

	ld [hl], h                                       ; $54de: $74
	ld c, a                                          ; $54df: $4f
	adc a                                            ; $54e0: $8f
	ldh [rSB], a                                     ; $54e1: $e0 $01
	db $10                                           ; $54e3: $10
	ld [$c548], sp                                   ; $54e4: $08 $48 $c5
	ld b, d                                          ; $54e7: $42
	add l                                            ; $54e8: $85
	ld b, $20                                        ; $54e9: $06 $20
	jr nz, @+$32                                     ; $54eb: $20 $30

	jr nc, jr_056_5527                               ; $54ed: $30 $38

	jr c, jr_056_5569                                ; $54ef: $38 $78

	ld a, c                                          ; $54f1: $79

jr_056_54f2:
	sbc b                                            ; $54f2: $98
	sbc c                                            ; $54f3: $99
	adc b                                            ; $54f4: $88
	dec d                                            ; $54f5: $15
	ld c, d                                          ; $54f6: $4a
	add l                                            ; $54f7: $85
	ld b, d                                          ; $54f8: $42
	add a                                            ; $54f9: $87
	ld a, e                                          ; $54fa: $7b
	ld h, c                                          ; $54fb: $61
	ld a, a                                          ; $54fc: $7f
	ld hl, $ee7b                                     ; $54fd: $21 $7b $ee
	sub a                                            ; $5500: $97
	inc bc                                           ; $5501: $03
	add b                                            ; $5502: $80
	add b                                            ; $5503: $80
	ldh a, [$ea]                                     ; $5504: $f0 $ea
	push de                                          ; $5506: $d5
	db $eb                                           ; $5507: $eb
	ld d, l                                          ; $5508: $55
	ld a, [$aa9e]                                    ; $5509: $fa $9e $aa
	db $fd                                           ; $550c: $fd
	sbc h                                            ; $550d: $9c
	dec hl                                           ; $550e: $2b
	push de                                          ; $550f: $d5
	ld [$f063], a                                    ; $5510: $ea $63 $f0
	sbc l                                            ; $5513: $9d
	ld a, a                                          ; $5514: $7f
	ld [de], a                                       ; $5515: $12
	ld a, b                                          ; $5516: $78
	and c                                            ; $5517: $a1

jr_056_5518:
	rst SubAFromDE                                          ; $5518: $df
	rst $38                                          ; $5519: $ff
	sbc [hl]                                         ; $551a: $9e
	ld e, a                                          ; $551b: $5f
	ld a, [$a09b]                                    ; $551c: $fa $9b $a0
	ld d, h                                          ; $551f: $54
	xor b                                            ; $5520: $a8
	db $f4                                           ; $5521: $f4
	ld a, c                                          ; $5522: $79
	sbc d                                            ; $5523: $9a
	ld e, [hl]                                       ; $5524: $5e
	or b                                             ; $5525: $b0
	db $fd                                           ; $5526: $fd

jr_056_5527:
	sbc e                                            ; $5527: $9b
	or b                                             ; $5528: $b0
	call c, $f5aa                                    ; $5529: $dc $aa $f5
	ld h, d                                          ; $552c: $62
	and b                                            ; $552d: $a0
	ld l, a                                          ; $552e: $6f
	ld a, [$1d9d]                                    ; $552f: $fa $9d $1d
	rlca                                             ; $5532: $07
	ld [hl], e                                       ; $5533: $73
	jr @-$71                                         ; $5534: $18 $8d

	inc bc                                           ; $5536: $03
	ld e, $ec                                        ; $5537: $1e $ec
	ldh a, [$03]                                     ; $5539: $f0 $03
	rlca                                             ; $553b: $07
	dec e                                            ; $553c: $1d
	ld h, d                                          ; $553d: $62
	or [hl]                                          ; $553e: $b6
	or [hl]                                          ; $553f: $b6
	inc e                                            ; $5540: $1c
	ldh a, [$03]                                     ; $5541: $f0 $03
	inc b                                            ; $5543: $04
	jr jr_056_55af                                   ; $5544: $18 $69

	ret                                              ; $5546: $c9


	ld c, c                                          ; $5547: $49
	ld l, b                                          ; $5548: $68
	pop de                                           ; $5549: $d1
	add b                                            ; $554a: $80
	nop                                              ; $554b: $00
	ld a, b                                          ; $554c: $78
	db $f4                                           ; $554d: $f4
	jp nc, $8088                                     ; $554e: $d2 $88 $80

	add b                                            ; $5551: $80
	nop                                              ; $5552: $00
	ld a, [bc]                                       ; $5553: $0a
	inc b                                            ; $5554: $04
	inc [hl]                                         ; $5555: $34

jr_056_5556:
	ld a, $3e                                        ; $5556: $3e $3e
	ld l, [hl]                                       ; $5558: $6e
	ld [hl], a                                       ; $5559: $77
	halt                                             ; $555a: $76
	ld l, e                                          ; $555b: $6b
	inc [hl]                                         ; $555c: $34
	ld c, h                                          ; $555d: $4c
	ld b, h                                          ; $555e: $44
	ld b, d                                          ; $555f: $42
	sub d                                            ; $5560: $92
	adc d                                            ; $5561: $8a
	adc e                                            ; $5562: $8b
	add l                                            ; $5563: $85
	adc l                                            ; $5564: $8d
	adc l                                            ; $5565: $8d
	ret                                              ; $5566: $c9


	reti                                             ; $5567: $d9


	or [hl]                                          ; $5568: $b6

jr_056_5569:
	cp $8d                                           ; $5569: $fe $8d
	cp $de                                           ; $556b: $fe $de
	ret                                              ; $556d: $c9


	ret                                              ; $556e: $c9


	ld c, l                                          ; $556f: $4d
	ld l, h                                          ; $5570: $6c
	ld l, h                                          ; $5571: $6c
	inc h                                            ; $5572: $24
	inc h                                            ; $5573: $24
	inc [hl]                                         ; $5574: $34
	xor l                                            ; $5575: $ad
	ld e, l                                          ; $5576: $5d
	xor a                                            ; $5577: $af
	rst SubAFromDE                                          ; $5578: $df
	or a                                             ; $5579: $b7
	push de                                          ; $557a: $d5
	or [hl]                                          ; $557b: $b6
	ld e, a                                          ; $557c: $5f
	sbc $09                                          ; $557d: $de $09
	sbc d                                            ; $557f: $9a
	adc c                                            ; $5580: $89
	sbc c                                            ; $5581: $99
	sbc e                                            ; $5582: $9b
	sbc e                                            ; $5583: $9b
	jp nc, $7575                                     ; $5584: $d2 $75 $75

	sub e                                            ; $5587: $93
	inc e                                            ; $5588: $1c
	inc [hl]                                         ; $5589: $34
	db $f4                                           ; $558a: $f4
	db $fc                                           ; $558b: $fc
	nop                                              ; $558c: $00
	inc b                                            ; $558d: $04
	inc bc                                           ; $558e: $03
	ld [$1414], sp                                   ; $558f: $08 $14 $14
	inc h                                            ; $5592: $24
	inc h                                            ; $5593: $24
	ei                                               ; $5594: $fb
	ld a, l                                          ; $5595: $7d
	ld h, d                                          ; $5596: $62
	ld a, e                                          ; $5597: $7b
	adc b                                            ; $5598: $88
	sbc d                                            ; $5599: $9a
	ldh [rAUD2LOW], a                                ; $559a: $e0 $18
	rlca                                             ; $559c: $07

Call_056_559d:
	rlca                                             ; $559d: $07
	jr c, jr_056_561a                                ; $559e: $38 $7a

	db $fc                                           ; $55a0: $fc
	rst SubAFromDE                                          ; $55a1: $df
	ld bc, $02df                                     ; $55a2: $01 $df $02
	adc d                                            ; $55a5: $8a
	ld b, $15                                        ; $55a6: $06 $15
	ei                                               ; $55a8: $fb
	dec d                                            ; $55a9: $15
	dec bc                                           ; $55aa: $0b
	rla                                              ; $55ab: $17
	dec hl                                           ; $55ac: $2b
	rst $38                                          ; $55ad: $ff
	cp [hl]                                          ; $55ae: $be

jr_056_55af:
	add $ce                                          ; $55af: $c6 $ce
	adc a                                            ; $55b1: $8f
	adc l                                            ; $55b2: $8d
	adc c                                            ; $55b3: $89
	ld [$1018], sp                                   ; $55b4: $08 $18 $10
	add e                                            ; $55b7: $83
	inc bc                                           ; $55b8: $03
	inc b                                            ; $55b9: $04
	inc b                                            ; $55ba: $04
	sbc $08                                          ; $55bb: $de $08
	sbc e                                            ; $55bd: $9b
	rra                                              ; $55be: $1f
	inc e                                            ; $55bf: $1c
	ld a, b                                          ; $55c0: $78
	ld hl, sp+$7a                                    ; $55c1: $f8 $7a
	add sp, -$6b                                     ; $55c3: $e8 $95
	nop                                              ; $55c5: $00
	ld [hl], b                                       ; $55c6: $70
	ldh [$80], a                                     ; $55c7: $e0 $80
	nop                                              ; $55c9: $00
	ld [$1c0c], sp                                   ; $55ca: $08 $0c $1c
	ld hl, sp-$71                                    ; $55cd: $f8 $8f
	ld a, e                                          ; $55cf: $7b
	ld e, c                                          ; $55d0: $59
	sbc e                                            ; $55d1: $9b
	dec b                                            ; $55d2: $05
	dec hl                                           ; $55d3: $2b
	ld d, a                                          ; $55d4: $57
	xor l                                            ; $55d5: $ad
	ld a, [$029b]                                    ; $55d6: $fa $9b $02
	rst $38                                          ; $55d9: $ff
	ldh [c], a                                       ; $55da: $e2
	ld a, [hl]                                       ; $55db: $7e

jr_056_55dc:
	sbc $ff                                          ; $55dc: $de $ff
	sbc e                                            ; $55de: $9b
	xor d                                            ; $55df: $aa
	ld e, c                                          ; $55e0: $59
	jr c, jr_056_55ff                                ; $55e1: $38 $1c

	ld [hl], a                                       ; $55e3: $77
	ld b, b                                          ; $55e4: $40
	add b                                            ; $55e5: $80
	ld d, l                                          ; $55e6: $55
	cp [hl]                                          ; $55e7: $be
	rst $38                                          ; $55e8: $ff
	add h                                            ; $55e9: $84
	inc bc                                           ; $55ea: $03
	rst $38                                          ; $55eb: $ff
	cp $d5                                           ; $55ec: $fe $d5
	sub d                                            ; $55ee: $92
	sbc c                                            ; $55ef: $99
	sub b                                            ; $55f0: $90
	ld a, e                                          ; $55f1: $7b
	db $fc                                           ; $55f2: $fc
	ld b, b                                          ; $55f3: $40
	ld d, c                                          ; $55f4: $51
	ld a, d                                          ; $55f5: $7a
	db $ed                                           ; $55f6: $ed
	and $ef                                          ; $55f7: $e6 $ef
	jr jr_056_55dc                                   ; $55f9: $18 $e1

	add $8c                                          ; $55fb: $c6 $8c
	add hl, de                                       ; $55fd: $19
	inc sp                                           ; $55fe: $33

jr_056_55ff:
	ld [bc], a                                       ; $55ff: $02
	ld bc, $18e7                                     ; $5600: $01 $e7 $18
	jr nz, jr_056_5645                               ; $5603: $20 $40

	rst SubAFromDE                                          ; $5605: $df
	add b                                            ; $5606: $80
	sbc h                                            ; $5607: $9c
	pop af                                           ; $5608: $f1
	rst $38                                          ; $5609: $ff
	nop                                              ; $560a: $00
	ld l, d                                          ; $560b: $6a
	sub $7f                                          ; $560c: $d6 $7f
	call z, $ffdb                                    ; $560e: $cc $db $ff
	ld a, a                                          ; $5611: $7f
	ldh a, [$72]                                     ; $5612: $f0 $72
	cp l                                             ; $5614: $bd
	ld a, e                                          ; $5615: $7b
	ldh a, [$9e]                                     ; $5616: $f0 $9e
	ld d, l                                          ; $5618: $55
	ld l, e                                          ; $5619: $6b

jr_056_561a:
	ldh a, [$9e]                                     ; $561a: $f0 $9e
	and d                                            ; $561c: $a2
	ld l, e                                          ; $561d: $6b
	ldh a, [$9e]                                     ; $561e: $f0 $9e
	ld e, l                                          ; $5620: $5d
	ld l, e                                          ; $5621: $6b
	ldh a, [$6f]                                     ; $5622: $f0 $6f
	nop                                              ; $5624: $00
	ld a, a                                          ; $5625: $7f
	ldh a, [$9e]                                     ; $5626: $f0 $9e
	ld a, a                                          ; $5628: $7f
	ld l, a                                          ; $5629: $6f
	ldh a, [$7f]                                     ; $562a: $f0 $7f
	ld d, e                                          ; $562c: $53
	ld a, a                                          ; $562d: $7f
	ld l, b                                          ; $562e: $68
	ld a, [hl]                                       ; $562f: $7e
	inc h                                            ; $5630: $24
	sbc [hl]                                         ; $5631: $9e
	ld b, e                                          ; $5632: $43
	sbc $ff                                          ; $5633: $de $ff
	sub a                                            ; $5635: $97
	db $fc                                           ; $5636: $fc
	ld hl, sp-$10                                    ; $5637: $f8 $f0
	ldh [$c3], a                                     ; $5639: $e0 $c3
	ld l, l                                          ; $563b: $6d
	rst JumpTable                                          ; $563c: $c7
	add d                                            ; $563d: $82
	ld [hl], a                                       ; $563e: $77
	ldh [c], a                                       ; $563f: $e2
	sub h                                            ; $5640: $94
	add b                                            ; $5641: $80
	ldh a, [c]                                       ; $5642: $f2
	xor b                                            ; $5643: $a8
	ld b, l                                          ; $5644: $45

jr_056_5645:
	add d                                            ; $5645: $82
	inc e                                            ; $5646: $1c
	inc bc                                           ; $5647: $03
	rst $38                                          ; $5648: $ff
	nop                                              ; $5649: $00

jr_056_564a:
	cp h                                             ; $564a: $bc
	jr jr_056_564a                                   ; $564b: $18 $fd

	sub [hl]                                         ; $564d: $96
	ldh [$3c], a                                     ; $564e: $e0 $3c
	ld b, d                                          ; $5650: $42
	and h                                            ; $5651: $a4
	add hl, de                                       ; $5652: $19
	ld c, $17                                        ; $5653: $0e $17
	db $eb                                           ; $5655: $eb

jr_056_5656:
	db $fd                                           ; $5656: $fd
	ld a, b                                          ; $5657: $78
	and d                                            ; $5658: $a2
	add b                                            ; $5659: $80
	rlca                                             ; $565a: $07
	rra                                              ; $565b: $1f
	ccf                                              ; $565c: $3f
	ld a, h                                          ; $565d: $7c
	ld a, b                                          ; $565e: $78
	inc a                                            ; $565f: $3c
	dec d                                            ; $5660: $15
	cpl                                              ; $5661: $2f
	ld e, b                                          ; $5662: $58
	and b                                            ; $5663: $a0
	ld b, b                                          ; $5664: $40
	add b                                            ; $5665: $80
	add e                                            ; $5666: $83
	ret nz                                           ; $5667: $c0

	ld d, e                                          ; $5668: $53
	add hl, hl                                       ; $5669: $29
	dec d                                            ; $566a: $15
	ldh [c], a                                       ; $566b: $e2
	ld d, d                                          ; $566c: $52
	add hl, hl                                       ; $566d: $29
	inc b                                            ; $566e: $04
	nop                                              ; $566f: $00

jr_056_5670:
	add l                                            ; $5670: $85
	jp $19e3                                         ; $5671: $c3 $e3 $19


	dec b                                            ; $5674: $05
	ld [bc], a                                       ; $5675: $02
	pop bc                                           ; $5676: $c1

Jump_056_5677:
	jr c, jr_056_5656                                ; $5677: $38 $dd

	sub e                                            ; $5679: $93
	rst $38                                          ; $567a: $ff
	ld [hl], a                                       ; $567b: $77
	db $eb                                           ; $567c: $eb
	rst FarCall                                          ; $567d: $f7
	rst $38                                          ; $567e: $ff
	rst $38                                          ; $567f: $ff
	cp a                                             ; $5680: $bf
	ld [hl], $12                                     ; $5681: $36 $12
	sbc d                                            ; $5683: $9a
	sbc [hl]                                         ; $5684: $9e
	adc h                                            ; $5685: $8c
	ld a, c                                          ; $5686: $79
	dec sp                                           ; $5687: $3b
	sbc d                                            ; $5688: $9a
	rst $38                                          ; $5689: $ff
	rst SubAFromDE                                          ; $568a: $df
	rst SubAFromDE                                          ; $568b: $df
	db $fd                                           ; $568c: $fd
	db $fc                                           ; $568d: $fc
	ld a, c                                          ; $568e: $79
	nop                                              ; $568f: $00
	sbc $52                                          ; $5690: $de $52
	sbc l                                            ; $5692: $9d
	inc hl                                           ; $5693: $23
	inc bc                                           ; $5694: $03
	ld a, b                                          ; $5695: $78
	cp d                                             ; $5696: $ba
	add b                                            ; $5697: $80

jr_056_5698:
	ld d, h                                          ; $5698: $54
	cp $be                                           ; $5699: $fe $be
	ld l, a                                          ; $569b: $6f
	rst FarCall                                          ; $569c: $f7
	di                                               ; $569d: $f3
	rst $38                                          ; $569e: $ff
	ldh a, [$6c]                                     ; $569f: $f0 $6c
	ld c, b                                          ; $56a1: $48
	ret z                                            ; $56a2: $c8

	sbc b                                            ; $56a3: $98
	jr jr_056_56c2                                   ; $56a4: $18 $1c

	rra                                              ; $56a6: $1f
	jr nc, @+$34                                     ; $56a7: $30 $32

	ld a, l                                          ; $56a9: $7d
	ld a, e                                          ; $56aa: $7b
	ld h, a                                          ; $56ab: $67
	adc [hl]                                         ; $56ac: $8e
	di                                               ; $56ad: $f3
	rst $38                                          ; $56ae: $ff
	inc b                                            ; $56af: $04
	ld b, c                                          ; $56b0: $41
	add d                                            ; $56b1: $82
	add h                                            ; $56b2: $84
	sbc b                                            ; $56b3: $98
	ld [hl], c                                       ; $56b4: $71
	rrca                                             ; $56b5: $0f
	rst $38                                          ; $56b6: $ff
	sub c                                            ; $56b7: $91
	rlca                                             ; $56b8: $07
	adc [hl]                                         ; $56b9: $8e
	ld a, [de]                                       ; $56ba: $1a
	ld d, h                                          ; $56bb: $54
	db $ec                                           ; $56bc: $ec
	ret c                                            ; $56bd: $d8

	cp b                                             ; $56be: $b8
	ld [hl], b                                       ; $56bf: $70
	ldh a, [rAUDVOL]                                 ; $56c0: $f0 $24

jr_056_56c2:
	inc l                                            ; $56c2: $2c
	jr c, jr_056_5735                                ; $56c3: $38 $70

	ldh [$7a], a                                     ; $56c5: $e0 $7a
	ld d, h                                          ; $56c7: $54
	ld a, h                                          ; $56c8: $7c
	ld d, l                                          ; $56c9: $55
	rst SubAFromDE                                          ; $56ca: $df
	jr nz, jr_056_5746                               ; $56cb: $20 $79

	adc l                                            ; $56cd: $8d
	add [hl]                                         ; $56ce: $86
	pop bc                                           ; $56cf: $c1
	rra                                              ; $56d0: $1f
	rra                                              ; $56d1: $1f
	ccf                                              ; $56d2: $3f
	ccf                                              ; $56d3: $3f
	ld hl, $4141                                     ; $56d4: $21 $41 $41
	ld b, b                                          ; $56d7: $40
	ld [hl], b                                       ; $56d8: $70
	ld [hl], b                                       ; $56d9: $70
	ldh a, [$f0]                                     ; $56da: $f0 $f0
	ld [$3818], sp                                   ; $56dc: $08 $18 $38
	jr c, jr_056_5670                                ; $56df: $38 $8f

	adc a                                            ; $56e1: $8f
	rrca                                             ; $56e2: $0f
	rrca                                             ; $56e3: $0f
	ldh a, [$e0]                                     ; $56e4: $f0 $e0
	ret nz                                           ; $56e6: $c0

	ret nz                                           ; $56e7: $c0

	db $fd                                           ; $56e8: $fd
	sbc e                                            ; $56e9: $9b
	sbc a                                            ; $56ea: $9f
	ld sp, hl                                        ; $56eb: $f9
	db $fc                                           ; $56ec: $fc
	sbc a                                            ; $56ed: $9f
	db $dd                                           ; $56ee: $dd
	rst $38                                          ; $56ef: $ff
	sbc [hl]                                         ; $56f0: $9e
	ld a, c                                          ; $56f1: $79
	ld a, e                                          ; $56f2: $7b
	dec l                                            ; $56f3: $2d
	sbc b                                            ; $56f4: $98
	ld a, $7f                                        ; $56f5: $3e $7f
	db $fd                                           ; $56f7: $fd
	db $fd                                           ; $56f8: $fd
	ei                                               ; $56f9: $fb
	ld a, [$7bf6]                                    ; $56fa: $fa $f6 $7b
	ld a, [hl]                                       ; $56fd: $7e
	rst SubAFromDE                                          ; $56fe: $df
	ld a, l                                          ; $56ff: $7d
	sbc d                                            ; $5700: $9a
	ld sp, hl                                        ; $5701: $f9
	ld a, [$fff2]                                    ; $5702: $fa $f2 $ff
	sub b                                            ; $5705: $90
	db $dd                                           ; $5706: $dd
	db $10                                           ; $5707: $10
	sbc l                                            ; $5708: $9d
	jr nc, jr_056_5698                               ; $5709: $30 $8d

	ld a, c                                          ; $570b: $79
	call z, Call_056_6179                            ; $570c: $cc $79 $61
	adc [hl]                                         ; $570f: $8e
	rra                                              ; $5710: $1f
	ld [hl], b                                       ; $5711: $70
	rst $38                                          ; $5712: $ff
	add c                                            ; $5713: $81
	adc a                                            ; $5714: $8f
	add d                                            ; $5715: $82
	and a                                            ; $5716: $a7
	add b                                            ; $5717: $80
	ld b, b                                          ; $5718: $40
	add b                                            ; $5719: $80
	ld b, b                                          ; $571a: $40
	rst $38                                          ; $571b: $ff
	ldh a, [c]                                       ; $571c: $f2
	ld [bc], a                                       ; $571d: $02
	rra                                              ; $571e: $1f
	nop                                              ; $571f: $00
	add b                                            ; $5720: $80
	ld a, e                                          ; $5721: $7b
	cp $64                                           ; $5722: $fe $64

jr_056_5724:
	ld e, b                                          ; $5724: $58
	jp c, $03ff                                      ; $5725: $da $ff $03

	ldh a, [$7a]                                     ; $5728: $f0 $7a
	rra                                              ; $572a: $1f
	sbc $02                                          ; $572b: $de $02
	ld a, [hl]                                       ; $572d: $7e
	and $de                                          ; $572e: $e6 $de
	rst $38                                          ; $5730: $ff
	sbc $fe                                          ; $5731: $de $fe
	sbc d                                            ; $5733: $9a
	rst $38                                          ; $5734: $ff

jr_056_5735:
	adc a                                            ; $5735: $8f
	sbc a                                            ; $5736: $9f
	ccf                                              ; $5737: $3f
	ld a, a                                          ; $5738: $7f
	halt                                             ; $5739: $76
	or [hl]                                          ; $573a: $b6
	sbc l                                            ; $573b: $9d
	adc h                                            ; $573c: $8c
	sub b                                            ; $573d: $90
	ld a, b                                          ; $573e: $78
	ldh [$79], a                                     ; $573f: $e0 $79
	xor a                                            ; $5741: $af
	ld a, e                                          ; $5742: $7b
	dec c                                            ; $5743: $0d
	rst SubAFromDE                                          ; $5744: $df
	ret nz                                           ; $5745: $c0

jr_056_5746:
	rst SubAFromDE                                          ; $5746: $df
	ldh [$9e], a                                     ; $5747: $e0 $9e
	ldh a, [$f9]                                     ; $5749: $f0 $f9
	ld l, l                                          ; $574b: $6d
	ld a, b                                          ; $574c: $78
	ld h, l                                          ; $574d: $65
	ld l, b                                          ; $574e: $68
	rst $38                                          ; $574f: $ff
	add b                                            ; $5750: $80
	rrca                                             ; $5751: $0f
	jp $3b70                                         ; $5752: $c3 $70 $3b


	dec e                                            ; $5755: $1d
	rrca                                             ; $5756: $0f
	rlca                                             ; $5757: $07
	rlca                                             ; $5758: $07
	ldh a, [$fc]                                     ; $5759: $f0 $fc
	cpl                                              ; $575b: $2f
	rla                                              ; $575c: $17
	ld c, $04                                        ; $575d: $0e $04
	inc bc                                           ; $575f: $03
	ld [bc], a                                       ; $5760: $02
	ld d, b                                          ; $5761: $50
	ld [$ff3f], a                                    ; $5762: $ea $3f $ff
	di                                               ; $5765: $f3
	cp $3f                                           ; $5766: $fe $3f
	rst GetHLinHL                                          ; $5768: $cf
	rlca                                             ; $5769: $07
	nop                                              ; $576a: $00
	ret nz                                           ; $576b: $c0

	db $fc                                           ; $576c: $fc
	rrca                                             ; $576d: $0f
	ld bc, $7cc0                                     ; $576e: $01 $c0 $7c
	or b                                             ; $5771: $b0
	ld a, [hl]                                       ; $5772: $7e
	rst GetHLinHL                                          ; $5773: $cf
	sub a                                            ; $5774: $97
	ld e, a                                          ; $5775: $5f
	sbc a                                            ; $5776: $9f
	rrca                                             ; $5777: $0f
	add a                                            ; $5778: $87
	pop af                                           ; $5779: $f1
	ld b, b                                          ; $577a: $40
	ld b, b                                          ; $577b: $40
	ld h, b                                          ; $577c: $60
	ld a, e                                          ; $577d: $7b
	cp d                                             ; $577e: $ba
	sbc l                                            ; $577f: $9d
	ld a, b                                          ; $5780: $78
	ld c, $47                                        ; $5781: $0e $47
	ld a, b                                          ; $5783: $78
	db $dd                                           ; $5784: $dd
	ldh [$9b], a                                     ; $5785: $e0 $9b
	rst AddAOntoHL                                          ; $5787: $ef
	rst FarCall                                          ; $5788: $f7
	rst $38                                          ; $5789: $ff
	db $e3                                           ; $578a: $e3
	db $dd                                           ; $578b: $dd
	jr nz, jr_056_5724                               ; $578c: $20 $96

	cpl                                              ; $578e: $2f
	jr c, jr_056_57b1                                ; $578f: $38 $20

	jr nz, jr_056_579c                               ; $5791: $20 $09

	dec bc                                           ; $5793: $0b
	rla                                              ; $5794: $17
	ld sp, hl                                        ; $5795: $f9
	ccf                                              ; $5796: $3f
	ld a, e                                          ; $5797: $7b
	ld a, b                                          ; $5798: $78
	sbc e                                            ; $5799: $9b
	ld c, $0c                                        ; $579a: $0e $0c

jr_056_579c:
	jr jr_056_579c                                   ; $579c: $18 $fe

	halt                                             ; $579e: $76
	di                                               ; $579f: $f3
	sub a                                            ; $57a0: $97
	ldh [$e1], a                                     ; $57a1: $e0 $e1
	pop bc                                           ; $57a3: $c1
	jp $0d07                                         ; $57a4: $c3 $07 $0d


	ld a, [bc]                                       ; $57a7: $0a
	ld [de], a                                       ; $57a8: $12
	ld [hl], b                                       ; $57a9: $70
	ld [hl], d                                       ; $57aa: $72

Jump_056_57ab:
	sbc e                                            ; $57ab: $9b
	inc bc                                           ; $57ac: $03
	ld b, $0e                                        ; $57ad: $06 $0e
	add c                                            ; $57af: $81
	ld a, e                                          ; $57b0: $7b

jr_056_57b1:
	ld l, h                                          ; $57b1: $6c
	ld [hl], b                                       ; $57b2: $70
	dec [hl]                                         ; $57b3: $35
	ld l, e                                          ; $57b4: $6b
	ld hl, sp-$64                                    ; $57b5: $f8 $9c
	ret c                                            ; $57b7: $d8

	call c, $dcdc                                    ; $57b8: $dc $dc $dc
	call z, $9cf9                                    ; $57bb: $cc $f9 $9c
	adc h                                            ; $57be: $8c
	rst $38                                          ; $57bf: $ff
	rst $38                                          ; $57c0: $ff
	ld [hl], e                                       ; $57c1: $73
	ld e, [hl]                                       ; $57c2: $5e
	rst SubAFromDE                                          ; $57c3: $df
	adc b                                            ; $57c4: $88
	sbc [hl]                                         ; $57c5: $9e
	ld [$9bfc], sp                                   ; $57c6: $08 $fc $9b
	ld hl, sp-$38                                    ; $57c9: $f8 $c8
	db $fc                                           ; $57cb: $fc
	db $fc                                           ; $57cc: $fc
	ld [hl], e                                       ; $57cd: $73
	db $10                                           ; $57ce: $10
	rst SubAFromDE                                          ; $57cf: $df
	ld c, b                                          ; $57d0: $48
	sbc [hl]                                         ; $57d1: $9e
	ld b, b                                          ; $57d2: $40
	push af                                          ; $57d3: $f5
	ld [hl], e                                       ; $57d4: $73
	db $eb                                           ; $57d5: $eb
	xor $62                                          ; $57d6: $ee $62
	nop                                              ; $57d8: $00
	sbc h                                            ; $57d9: $9c
	dec h                                            ; $57da: $25
	ld d, l                                          ; $57db: $55
	ld d, a                                          ; $57dc: $57
	sbc $77                                          ; $57dd: $de $77
	add b                                            ; $57df: $80
	ld h, h                                          ; $57e0: $64
	ld b, h                                          ; $57e1: $44
	ld b, [hl]                                       ; $57e2: $46
	daa                                              ; $57e3: $27
	dec h                                            ; $57e4: $25
	ld d, l                                          ; $57e5: $55
	daa                                              ; $57e6: $27
	ld [hl], a                                       ; $57e7: $77
	ld [hl], d                                       ; $57e8: $72
	daa                                              ; $57e9: $27
	ld h, h                                          ; $57ea: $64
	ld d, l                                          ; $57eb: $55
	ld d, h                                          ; $57ec: $54
	ld h, d                                          ; $57ed: $62
	dec h                                            ; $57ee: $25
	ld d, l                                          ; $57ef: $55
	ld d, d                                          ; $57f0: $52
	ld [hl], a                                       ; $57f1: $77
	ld [hl+], a                                      ; $57f2: $22
	ld [hl+], a                                      ; $57f3: $22
	ld b, l                                          ; $57f4: $45
	ld d, l                                          ; $57f5: $55
	ld d, h                                          ; $57f6: $54
	ld d, l                                          ; $57f7: $55
	ld [hl+], a                                      ; $57f8: $22
	dec h                                            ; $57f9: $25
	ld d, d                                          ; $57fa: $52
	ld [hl+], a                                      ; $57fb: $22
	ld [hl+], a                                      ; $57fc: $22
	ld d, l                                          ; $57fd: $55
	ld b, l                                          ; $57fe: $45
	sbc l                                            ; $57ff: $9d
	ld d, l                                          ; $5800: $55
	ld d, [hl]                                       ; $5801: $56
	sbc $77                                          ; $5802: $de $77
	ld a, e                                          ; $5804: $7b
	rst FarCall                                          ; $5805: $f7
	sbc $55                                          ; $5806: $de $55
	ld [hl], a                                       ; $5808: $77
	or $9e                                           ; $5809: $f6 $9e
	dec h                                            ; $580b: $25
	ld a, e                                          ; $580c: $7b
	or $7f                                           ; $580d: $f6 $7f
	db $ec                                           ; $580f: $ec
	ld [hl], a                                       ; $5810: $77
	ret z                                            ; $5811: $c8

	ld a, a                                          ; $5812: $7f
	sub $9e                                          ; $5813: $d6 $9e
	ld d, e                                          ; $5815: $53
	sbc $55                                          ; $5816: $de $55
	db $dd                                           ; $5818: $dd
	ld [hl], a                                       ; $5819: $77
	sbc e                                            ; $581a: $9b
	ld [hl], d                                       ; $581b: $72
	ld d, l                                          ; $581c: $55
	inc sp                                           ; $581d: $33
	inc sp                                           ; $581e: $33
	ld a, e                                          ; $581f: $7b
	ret                                              ; $5820: $c9


	ld [hl], a                                       ; $5821: $77
	or $9a                                           ; $5822: $f6 $9a
	ld d, e                                          ; $5824: $53
	dec [hl]                                         ; $5825: $35
	ld d, l                                          ; $5826: $55
	inc sp                                           ; $5827: $33
	ld [hl+], a                                      ; $5828: $22
	db $dd                                           ; $5829: $dd
	ld [hl], a                                       ; $582a: $77
	sbc d                                            ; $582b: $9a
	inc hl                                           ; $582c: $23
	inc sp                                           ; $582d: $33
	dec [hl]                                         ; $582e: $35
	ld d, l                                          ; $582f: $55
	dec [hl]                                         ; $5830: $35
	ld [hl], a                                       ; $5831: $77
	or $7f                                           ; $5832: $f6 $7f
	db $e3                                           ; $5834: $e3
	db $dd                                           ; $5835: $dd
	ld d, l                                          ; $5836: $55
	ld a, e                                          ; $5837: $7b
	or $67                                           ; $5838: $f6 $67
	adc d                                            ; $583a: $8a
	ld a, [$aa9b]                                    ; $583b: $fa $9b $aa
	rst $38                                          ; $583e: $ff
	rst $38                                          ; $583f: $ff
	rst SubAFromDE                                          ; $5840: $df
	db $dd                                           ; $5841: $dd
	rst $38                                          ; $5842: $ff
	sbc [hl]                                         ; $5843: $9e
	ld d, l                                          ; $5844: $55
	ld a, [$809b]                                    ; $5845: $fa $9b $80
	rst $38                                          ; $5848: $ff
	rst $38                                          ; $5849: $ff
	rst FarCall                                          ; $584a: $f7
	db $dd                                           ; $584b: $dd
	rst $38                                          ; $584c: $ff
	sbc [hl]                                         ; $584d: $9e
	ld a, a                                          ; $584e: $7f
	ld sp, hl                                        ; $584f: $f9
	db $dd                                           ; $5850: $dd
	rst $38                                          ; $5851: $ff
	ld [hl], a                                       ; $5852: $77
	xor $97                                          ; $5853: $ee $97
	add b                                            ; $5855: $80

jr_056_5856:
	ld a, a                                          ; $5856: $7f
	nop                                              ; $5857: $00
	ld bc, $0502                                     ; $5858: $01 $02 $05
	ld a, [bc]                                       ; $585b: $0a
	inc c                                            ; $585c: $0c
	ret c                                            ; $585d: $d8

	rst $38                                          ; $585e: $ff
	add l                                            ; $585f: $85
	adc a                                            ; $5860: $8f
	cp $47                                           ; $5861: $fe $47
	sbc e                                            ; $5863: $9b
	cpl                                              ; $5864: $2f
	ld e, h                                          ; $5865: $5c
	dec sp                                           ; $5866: $3b
	nop                                              ; $5867: $00
	ldh a, [rIE]                                     ; $5868: $f0 $ff
	rst $38                                          ; $586a: $ff
	db $fc                                           ; $586b: $fc
	ldh a, [$e3]                                     ; $586c: $f0 $e3
	rst JumpTable                                          ; $586e: $c7
	and b                                            ; $586f: $a0
	db $d3                                           ; $5870: $d3
	ld l, h                                          ; $5871: $6c
	rst JumpTable                                          ; $5872: $c7
	ccf                                              ; $5873: $3f
	cp [hl]                                          ; $5874: $be
	push de                                          ; $5875: $d5
	ld l, a                                          ; $5876: $6f
	ld a, a                                          ; $5877: $7f
	ccf                                              ; $5878: $3f
	sbc a                                            ; $5879: $9f
	ld a, e                                          ; $587a: $7b
	jp nz, $fe93                                     ; $587b: $c2 $93 $fe

	or h                                             ; $587e: $b4
	rst $38                                          ; $587f: $ff
	ld a, c                                          ; $5880: $79
	ccf                                              ; $5881: $3f
	db $fc                                           ; $5882: $fc
	ld c, [hl]                                       ; $5883: $4e
	ld b, a                                          ; $5884: $47
	ld b, e                                          ; $5885: $43
	ld h, c                                          ; $5886: $61
	ldh a, [hDisp0_OBP1]                                     ; $5887: $f0 $87
	db $db                                           ; $5889: $db
	rst $38                                          ; $588a: $ff
	sub e                                            ; $588b: $93
	db $ec                                           ; $588c: $ec
	cp $f4                                           ; $588d: $fe $f4
	dec a                                            ; $588f: $3d
	dec bc                                           ; $5890: $0b
	add h                                            ; $5891: $84
	ldh [c], a                                       ; $5892: $e2
	add hl, sp                                       ; $5893: $39
	rra                                              ; $5894: $1f
	rst $38                                          ; $5895: $ff
	ei                                               ; $5896: $fb
	cp $dd                                           ; $5897: $fe $dd
	rst $38                                          ; $5899: $ff
	add b                                            ; $589a: $80
	inc e                                            ; $589b: $1c
	rlca                                             ; $589c: $07
	pop bc                                           ; $589d: $c1
	add c                                            ; $589e: $81
	ld [hl], c                                       ; $589f: $71
	rst SubAFromDE                                          ; $58a0: $df
	scf                                              ; $58a1: $37
	dec bc                                           ; $58a2: $0b
	db $e3                                           ; $58a3: $e3
	ld hl, sp-$02                                    ; $58a4: $f8 $fe
	ld a, [hl]                                       ; $58a6: $7e
	adc [hl]                                         ; $58a7: $8e
	ldh [$f8], a                                     ; $58a8: $e0 $f8
	db $fc                                           ; $58aa: $fc
	rst GetHLinHL                                          ; $58ab: $cf
	daa                                              ; $58ac: $27
	db $db                                           ; $58ad: $db
	db $f4                                           ; $58ae: $f4
	ld a, [$1efd]                                    ; $58af: $fa $fd $1e
	rst GetHLinHL                                          ; $58b2: $cf
	pop af                                           ; $58b3: $f1
	ld hl, sp+$3c                                    ; $58b4: $f8 $3c
	rrca                                             ; $58b6: $0f
	rlca                                             ; $58b7: $07
	inc bc                                           ; $58b8: $03
	pop hl                                           ; $58b9: $e1
	add [hl]                                         ; $58ba: $86
	jr nc, jr_056_5856                               ; $58bb: $30 $99

	ld h, h                                          ; $58bd: $64
	jp nc, Jump_056_74e9                             ; $58be: $d2 $e9 $74

	ld a, [hl+]                                      ; $58c1: $2a
	sub l                                            ; $58c2: $95
	ld c, d                                          ; $58c3: $4a
	rst $38                                          ; $58c4: $ff
	rst $38                                          ; $58c5: $ff
	ccf                                              ; $58c6: $3f
	rra                                              ; $58c7: $1f
	adc a                                            ; $58c8: $8f
	rst SubAFromHL                                          ; $58c9: $d7
	db $eb                                           ; $58ca: $eb
	push af                                          ; $58cb: $f5
	nop                                              ; $58cc: $00
	add b                                            ; $58cd: $80
	ld b, b                                          ; $58ce: $40
	ld b, b                                          ; $58cf: $40
	and b                                            ; $58d0: $a0
	ret nc                                           ; $58d1: $d0

	ld [hl], b                                       ; $58d2: $70
	cp b                                             ; $58d3: $b8
	call c, $9cff                                    ; $58d4: $dc $ff $9c
	ld a, a                                          ; $58d7: $7f
	cp a                                             ; $58d8: $bf
	rst SubAFromDE                                          ; $58d9: $df
	ld e, e                                          ; $58da: $5b
	ld h, b                                          ; $58db: $60
	ld [hl], e                                       ; $58dc: $73
	ccf                                              ; $58dd: $3f
	cp $92                                           ; $58de: $fe $92
	db $10                                           ; $58e0: $10
	rla                                              ; $58e1: $17
	rla                                              ; $58e2: $17
	db $10                                           ; $58e3: $10
	rla                                              ; $58e4: $17
	rst $38                                          ; $58e5: $ff
	rst $38                                          ; $58e6: $ff
	db $fd                                           ; $58e7: $fd
	rst AddAOntoHL                                          ; $58e8: $ef
	add sp, -$18                                     ; $58e9: $e8 $e8
	rst AddAOntoHL                                          ; $58eb: $ef
	add sp, -$02                                     ; $58ec: $e8 $fe
	sbc $40                                          ; $58ee: $de $40
	sbc l                                            ; $58f0: $9d
	ld h, b                                          ; $58f1: $60
	ld b, b                                          ; $58f2: $40
	sbc $ff                                          ; $58f3: $de $ff
	sbc $bf                                          ; $58f5: $de $bf
	sbc l                                            ; $58f7: $9d
	sbc a                                            ; $58f8: $9f
	cp a                                             ; $58f9: $bf
	ld d, a                                          ; $58fa: $57
	jr nc, jr_056_5974                               ; $58fb: $30 $77

	adc $5f                                          ; $58fd: $ce $5f
	ldh a, [$73]                                     ; $58ff: $f0 $73
	db $10                                           ; $5901: $10
	ld e, e                                          ; $5902: $5b
	ldh a, [$db]                                     ; $5903: $f0 $db
	rst $38                                          ; $5905: $ff
	ld e, a                                          ; $5906: $5f
	ldh a, [$9e]                                     ; $5907: $f0 $9e
	cp a                                             ; $5909: $bf
	inc sp                                           ; $590a: $33
	ldh [$9c], a                                     ; $590b: $e0 $9c
	ld [hl], l                                       ; $590d: $75
	adc d                                            ; $590e: $8a
	rlca                                             ; $590f: $07
	db $fc                                           ; $5910: $fc
	sbc h                                            ; $5911: $9c
	adc d                                            ; $5912: $8a
	ld [hl], l                                       ; $5913: $75
	ld hl, sp-$24                                    ; $5914: $f8 $dc
	rst $38                                          ; $5916: $ff
	sbc e                                            ; $5917: $9b
	ld d, h                                          ; $5918: $54
	xor d                                            ; $5919: $aa
	scf                                              ; $591a: $37
	ld e, $fd                                        ; $591b: $1e $fd
	sbc e                                            ; $591d: $9b
	xor e                                            ; $591e: $ab
	ld d, l                                          ; $591f: $55
	ret z                                            ; $5920: $c8

	pop hl                                           ; $5921: $e1
	ld [hl], e                                       ; $5922: $73
	ret nc                                           ; $5923: $d0

	sbc e                                            ; $5924: $9b
	and b                                            ; $5925: $a0
	call nc, $0f7e                                   ; $5926: $d4 $7e $0f
	ld [hl], a                                       ; $5929: $77
	ret nc                                           ; $592a: $d0

	sbc h                                            ; $592b: $9c
	ld e, a                                          ; $592c: $5f
	dec hl                                           ; $592d: $2b
	add c                                            ; $592e: $81
	ld a, d                                          ; $592f: $7a
	db $dd                                           ; $5930: $dd
	sub [hl]                                         ; $5931: $96
	rst $38                                          ; $5932: $ff
	jr jr_056_5947                                   ; $5933: $18 $12

	inc [hl]                                         ; $5935: $34
	dec h                                            ; $5936: $25
	dec hl                                           ; $5937: $2b
	ld l, d                                          ; $5938: $6a
	ld c, [hl]                                       ; $5939: $4e
	ld d, h                                          ; $593a: $54
	sbc $ff                                          ; $593b: $de $ff
	add b                                            ; $593d: $80
	cp $fc                                           ; $593e: $fe $fc
	db $fd                                           ; $5940: $fd
	ld sp, hl                                        ; $5941: $f9
	ei                                               ; $5942: $fb
	ld [hl], l                                       ; $5943: $75
	ld l, e                                          ; $5944: $6b
	sub $ad                                          ; $5945: $d6 $ad

jr_056_5947:
	ld e, l                                          ; $5947: $5d
	ld e, d                                          ; $5948: $5a
	cp [hl]                                          ; $5949: $be
	or [hl]                                          ; $594a: $b6
	adc [hl]                                         ; $594b: $8e
	sbc h                                            ; $594c: $9c
	add hl, sp                                       ; $594d: $39
	ld [hl], e                                       ; $594e: $73
	db $e3                                           ; $594f: $e3
	rst SubAFromBC                                          ; $5950: $e7
	rst JumpTable                                          ; $5951: $c7
	rst GetHLinHL                                          ; $5952: $cf
	db $db                                           ; $5953: $db
	ld a, e                                          ; $5954: $7b
	xor a                                            ; $5955: $af
	or a                                             ; $5956: $b7
	rst FarCall                                          ; $5957: $f7
	di                                               ; $5958: $f3
	pop af                                           ; $5959: $f1
	or b                                             ; $595a: $b0
	ld l, h                                          ; $595b: $6c
	call z, $d8df                                    ; $595c: $cc $df $d8
	sub e                                            ; $595f: $93
	sbc b                                            ; $5960: $98
	sbc h                                            ; $5961: $9c
	sbc [hl]                                         ; $5962: $9e
	rst SubAFromDE                                          ; $5963: $df
	or b                                             ; $5964: $b0
	sbc b                                            ; $5965: $98
	sub h                                            ; $5966: $94
	adc d                                            ; $5967: $8a
	ret                                              ; $5968: $c9


	call nz, $92a3                                   ; $5969: $c4 $a3 $92
	db $db                                           ; $596c: $db
	rst $38                                          ; $596d: $ff
	ld a, [hl]                                       ; $596e: $7e
	call $e687                                       ; $596f: $cd $87 $e6
	ld a, l                                          ; $5972: $7d
	ccf                                              ; $5973: $3f

jr_056_5974:
	rra                                              ; $5974: $1f
	rrca                                             ; $5975: $0f
	rst JumpTable                                          ; $5976: $c7
	or e                                             ; $5977: $b3
	rst $38                                          ; $5978: $ff
	sbc a                                            ; $5979: $9f
	jp $f0e0                                         ; $597a: $c3 $e0 $f0


	ld hl, sp-$04                                    ; $597d: $f8 $fc
	ld a, [hl]                                       ; $597f: $7e
	rrca                                             ; $5980: $0f
	add [hl]                                         ; $5981: $86
	pop hl                                           ; $5982: $e1
	ld [hl], b                                       ; $5983: $70
	call c, $fcfb                                    ; $5984: $dc $fb $fc
	rst $38                                          ; $5987: $ff
	ld a, a                                          ; $5988: $7f
	sbc $ff                                          ; $5989: $de $ff
	add b                                            ; $598b: $80
	ccf                                              ; $598c: $3f
	rrca                                             ; $598d: $0f
	rlca                                             ; $598e: $07
	nop                                              ; $598f: $00
	add b                                            ; $5990: $80
	db $e3                                           ; $5991: $e3
	ld [hl], l                                       ; $5992: $75
	cp d                                             ; $5993: $ba
	ld l, l                                          ; $5994: $6d
	ld d, $cb                                        ; $5995: $16 $cb
	dec h                                            ; $5997: $25
	jp c, $8e1c                                      ; $5998: $da $1c $8e

	rst JumpTable                                          ; $599b: $c7
	di                                               ; $599c: $f3
	ld sp, hl                                        ; $599d: $f9
	db $fc                                           ; $599e: $fc
	cp $3f                                           ; $599f: $fe $3f
	push bc                                          ; $59a1: $c5
	ldh [c], a                                       ; $59a2: $e2
	pop af                                           ; $59a3: $f1
	ld a, c                                          ; $59a4: $79
	cp h                                             ; $59a5: $bc
	ld e, d                                          ; $59a6: $5a
	xor l                                            ; $59a7: $ad
	and $7a                                          ; $59a8: $e6 $7a
	dec a                                            ; $59aa: $3d
	adc a                                            ; $59ab: $8f
	ld e, $8f                                        ; $59ac: $1e $8f
	rst JumpTable                                          ; $59ae: $c7
	rst SubAFromBC                                          ; $59af: $e7
	ld [hl], e                                       ; $59b0: $73
	add hl, sp                                       ; $59b1: $39
	ld c, b                                          ; $59b2: $48
	call z, $d6a4                                    ; $59b3: $cc $a4 $d6
	ldh a, [c]                                       ; $59b6: $f2
	ld l, d                                          ; $59b7: $6a
	dec [hl]                                         ; $59b8: $35
	sub l                                            ; $59b9: $95
	rst $38                                          ; $59ba: $ff
	ld a, a                                          ; $59bb: $7f
	ld a, d                                          ; $59bc: $7a
	ld e, [hl]                                       ; $59bd: $5e
	sub [hl]                                         ; $59be: $96
	rst SubAFromDE                                          ; $59bf: $df
	rst AddAOntoHL                                          ; $59c0: $ef
	rst $38                                          ; $59c1: $ff
	nop                                              ; $59c2: $00
	ld bc, $00aa                                     ; $59c3: $01 $aa $00
	nop                                              ; $59c6: $00
	ld d, h                                          ; $59c7: $54
	ld a, e                                          ; $59c8: $7b
	ld h, b                                          ; $59c9: $60
	sub e                                            ; $59ca: $93
	cp $55                                           ; $59cb: $fe $55
	rst $38                                          ; $59cd: $ff
	rst $38                                          ; $59ce: $ff
	xor e                                            ; $59cf: $ab
	rst $38                                          ; $59d0: $ff
	rst $38                                          ; $59d1: $ff
	rla                                              ; $59d2: $17
	ld [hl], b                                       ; $59d3: $70
	rla                                              ; $59d4: $17
	rla                                              ; $59d5: $17
	sub b                                            ; $59d6: $90
	cp $9a                                           ; $59d7: $fe $9a
	add sp, -$71                                     ; $59d9: $e8 $8f
	add sp, -$18                                     ; $59db: $e8 $e8
	ld l, a                                          ; $59dd: $6f
	sbc $ff                                          ; $59de: $de $ff
	sbc d                                            ; $59e0: $9a
	ld l, b                                          ; $59e1: $68

jr_056_59e2:
	ld d, h                                          ; $59e2: $54
	ld a, [hl]                                       ; $59e3: $7e
	ld h, c                                          ; $59e4: $61
	ld b, b                                          ; $59e5: $40
	cp $9b                                           ; $59e6: $fe $9b
	sub a                                            ; $59e8: $97
	xor e                                            ; $59e9: $ab
	add c                                            ; $59ea: $81
	sbc [hl]                                         ; $59eb: $9e
	halt                                             ; $59ec: $76
	cp $7e                                           ; $59ed: $fe $7e
	and d                                            ; $59ef: $a2
	sbc e                                            ; $59f0: $9b
	cp d                                             ; $59f1: $ba
	ld b, l                                          ; $59f2: $45
	add e                                            ; $59f3: $83
	ld bc, $d07b                                     ; $59f4: $01 $7b $d0
	sbc e                                            ; $59f7: $9b
	rst AddAOntoHL                                          ; $59f8: $ef
	ld b, l                                          ; $59f9: $45
	cp d                                             ; $59fa: $ba
	ld a, h                                          ; $59fb: $7c
	ld a, d                                          ; $59fc: $7a
	ld a, $92                                        ; $59fd: $3e $92
	ld [bc], a                                       ; $59ff: $02
	dec d                                            ; $5a00: $15
	xor a                                            ; $5a01: $af
	ld [hl], b                                       ; $5a02: $70
	ret nz                                           ; $5a03: $c0

	add b                                            ; $5a04: $80
	nop                                              ; $5a05: $00
	nop                                              ; $5a06: $00
	db $fd                                           ; $5a07: $fd
	ld [$8f50], a                                    ; $5a08: $ea $50 $8f
	ccf                                              ; $5a0b: $3f
	ld a, e                                          ; $5a0c: $7b
	ld a, d                                          ; $5a0d: $7a
	sbc e                                            ; $5a0e: $9b
	ld [bc], a                                       ; $5a0f: $02
	ld d, l                                          ; $5a10: $55
	xor a                                            ; $5a11: $af
	ld a, b                                          ; $5a12: $78
	db $fd                                           ; $5a13: $fd
	sbc h                                            ; $5a14: $9c
	db $fd                                           ; $5a15: $fd
	xor d                                            ; $5a16: $aa
	ld d, b                                          ; $5a17: $50
	ld [hl], d                                       ; $5a18: $72
	ld c, $9c                                        ; $5a19: $0e $9c
	xor d                                            ; $5a1b: $aa
	db $fd                                           ; $5a1c: $fd
	inc bc                                           ; $5a1d: $03
	db $fc                                           ; $5a1e: $fc
	sbc h                                            ; $5a1f: $9c
	ld d, l                                          ; $5a20: $55
	ld [bc], a                                       ; $5a21: $02
	db $fc                                           ; $5a22: $fc
	call c, $9bff                                    ; $5a23: $dc $ff $9b
	ld a, [bc]                                       ; $5a26: $0a
	ld d, a                                          ; $5a27: $57
	xor h                                            ; $5a28: $ac
	ldh a, [$fd]                                     ; $5a29: $f0 $fd
	sbc e                                            ; $5a2b: $9b
	push af                                          ; $5a2c: $f5
	xor b                                            ; $5a2d: $a8
	ld d, e                                          ; $5a2e: $53
	rrca                                             ; $5a2f: $0f
	ld h, d                                          ; $5a30: $62
	or b                                             ; $5a31: $b0
	ld a, a                                          ; $5a32: $7f
	ld b, l                                          ; $5a33: $45
	sbc [hl]                                         ; $5a34: $9e
	dec d                                            ; $5a35: $15
	ld l, l                                          ; $5a36: $6d
	add l                                            ; $5a37: $85
	sbc l                                            ; $5a38: $9d
	ret nz                                           ; $5a39: $c0

	ld [$8169], a                                    ; $5a3a: $ea $69 $81
	ld a, d                                          ; $5a3d: $7a
	ld d, b                                          ; $5a3e: $50
	ld a, e                                          ; $5a3f: $7b
	ldh a, [$7f]                                     ; $5a40: $f0 $7f
	jr nz, jr_056_59e2                               ; $5a42: $20 $9e

	cp [hl]                                          ; $5a44: $be
	ld e, [hl]                                       ; $5a45: $5e
	sub b                                            ; $5a46: $90
	sub b                                            ; $5a47: $90
	ld d, l                                          ; $5a48: $55
	ld bc, $3f03                                     ; $5a49: $01 $03 $3f
	ld a, a                                          ; $5a4c: $7f
	ld a, a                                          ; $5a4d: $7f
	sub l                                            ; $5a4e: $95
	sub c                                            ; $5a4f: $91
	sub c                                            ; $5a50: $91
	and d                                            ; $5a51: $a2
	and d                                            ; $5a52: $a2
	xor d                                            ; $5a53: $aa
	or [hl]                                          ; $5a54: $b6
	xor e                                            ; $5a55: $ab
	ei                                               ; $5a56: $fb
	ld [hl], c                                       ; $5a57: $71
	ld l, a                                          ; $5a58: $6f
	add l                                            ; $5a59: $85
	db $eb                                           ; $5a5a: $eb
	or $3b                                           ; $5a5b: $f6 $3b
	ld h, a                                          ; $5a5d: $67
	ld [hl], a                                       ; $5a5e: $77
	ld e, a                                          ; $5a5f: $5f
	rst GetHLinHL                                          ; $5a60: $cf
	xor a                                            ; $5a61: $af
	rst AddAOntoHL                                          ; $5a62: $ef
	ld l, a                                          ; $5a63: $6f
	adc $9a                                          ; $5a64: $ce $9a
	sbc d                                            ; $5a66: $9a
	or d                                             ; $5a67: $b2
	ld [hl-], a                                      ; $5a68: $32
	ld [hl], d                                       ; $5a69: $72
	ld [hl], d                                       ; $5a6a: $72
	ldh a, [c]                                       ; $5a6b: $f2
	adc b                                            ; $5a6c: $88
	adc b                                            ; $5a6d: $88
	adc h                                            ; $5a6e: $8c
	adc d                                            ; $5a6f: $8a
	adc l                                            ; $5a70: $8d
	adc $cf                                          ; $5a71: $ce $cf
	rst GetHLinHL                                          ; $5a73: $cf
	db $dd                                           ; $5a74: $dd
	rst $38                                          ; $5a75: $ff
	adc d                                            ; $5a76: $8a
	ei                                               ; $5a77: $fb
	ld sp, hl                                        ; $5a78: $f9
	ld hl, sp-$08                                    ; $5a79: $f8 $f8
	xor c                                            ; $5a7b: $a9
	ld a, h                                          ; $5a7c: $7c
	ld e, [hl]                                       ; $5a7d: $5e
	ccf                                              ; $5a7e: $3f
	cpl                                              ; $5a7f: $2f
	sbc a                                            ; $5a80: $9f
	ld d, a                                          ; $5a81: $57
	xor a                                            ; $5a82: $af
	rst SubAFromDE                                          ; $5a83: $df
	rst JumpTable                                          ; $5a84: $c7
	db $e3                                           ; $5a85: $e3
	pop hl                                           ; $5a86: $e1
	ldh a, [$f0]                                     ; $5a87: $f0 $f0
	ld hl, sp+$78                                    ; $5a89: $f8 $78
	ld a, a                                          ; $5a8b: $7f
	ld a, d                                          ; $5a8c: $7a
	push de                                          ; $5a8d: $d5
	add b                                            ; $5a8e: $80
	ld l, a                                          ; $5a8f: $6f
	rst FarCall                                          ; $5a90: $f7
	ld [$81f6], a                                    ; $5a91: $ea $f6 $81
	add b                                            ; $5a94: $80
	ret nz                                           ; $5a95: $c0

	ldh [$f0], a                                     ; $5a96: $e0 $f0
	jr c, jr_056_5ab7                                ; $5a98: $38 $1d

	rrca                                             ; $5a9a: $0f
	sbc $c3                                          ; $5a9b: $de $c3

Jump_056_5a9d:
	rst AddAOntoHL                                          ; $5a9d: $ef
	ld sp, hl                                        ; $5a9e: $f9
	di                                               ; $5a9f: $f3
	rst JumpTable                                          ; $5aa0: $c7
	rlca                                             ; $5aa1: $07
	rrca                                             ; $5aa2: $0f
	pop hl                                           ; $5aa3: $e1
	ccf                                              ; $5aa4: $3f
	rra                                              ; $5aa5: $1f
	ld a, $7c                                        ; $5aa6: $3e $7c
	ld hl, sp-$08                                    ; $5aa8: $f8 $f8
	ldh a, [$6d]                                     ; $5aaa: $f0 $6d
	ld a, [$717d]                                    ; $5aac: $fa $7d $71
	ld l, b                                          ; $5aaf: $68
	rst SubAFromDE                                          ; $5ab0: $df
	rst $38                                          ; $5ab1: $ff
	ld [hl], a                                       ; $5ab2: $77
	ld a, [de]                                       ; $5ab3: $1a
	ld a, c                                          ; $5ab4: $79
	or e                                             ; $5ab5: $b3
	adc c                                            ; $5ab6: $89

jr_056_5ab7:
	adc b                                            ; $5ab7: $88
	ld b, h                                          ; $5ab8: $44
	and d                                            ; $5ab9: $a2
	ld d, c                                          ; $5aba: $51
	xor c                                            ; $5abb: $a9
	db $e4                                           ; $5abc: $e4
	ldh a, [c]                                       ; $5abd: $f2
	cp l                                             ; $5abe: $bd
	sbc $ef                                          ; $5abf: $de $ef
	rst FarCall                                          ; $5ac1: $f7
	ei                                               ; $5ac2: $fb
	ld a, l                                          ; $5ac3: $7d
	ld a, $1f                                        ; $5ac4: $3e $1f
	sbc d                                            ; $5ac6: $9a
	ld c, d                                          ; $5ac7: $4a
	and l                                            ; $5ac8: $a5
	push hl                                          ; $5ac9: $e5
	ld d, d                                          ; $5aca: $52
	ld [hl], d                                       ; $5acb: $72
	xor c                                            ; $5acc: $a9
	ld a, d                                          ; $5acd: $7a
	db $d3                                           ; $5ace: $d3
	ld a, [hl]                                       ; $5acf: $7e
	ret nz                                           ; $5ad0: $c0

	ld a, l                                          ; $5ad1: $7d
	or c                                             ; $5ad2: $b1
	sbc h                                            ; $5ad3: $9c
	sbc $ee                                          ; $5ad4: $de $ee
	add b                                            ; $5ad6: $80
	ld [hl], l                                       ; $5ad7: $75
	ld [hl], b                                       ; $5ad8: $70
	sbc h                                            ; $5ad9: $9c
	and b                                            ; $5ada: $a0
	ld d, b                                          ; $5adb: $50
	ld d, b                                          ; $5adc: $50
	ld c, l                                          ; $5add: $4d
	ret nc                                           ; $5ade: $d0

	sbc l                                            ; $5adf: $9d
	ld a, a                                          ; $5ae0: $7f
	dec bc                                           ; $5ae1: $0b
	ld a, c                                          ; $5ae2: $79
	add b                                            ; $5ae3: $80
	ld a, a                                          ; $5ae4: $7f
	dec b                                            ; $5ae5: $05
	ld a, h                                          ; $5ae6: $7c
	jp nc, $f49e                                     ; $5ae7: $d2 $9e $f4

	ei                                               ; $5aea: $fb
	rst SubAFromDE                                          ; $5aeb: $df
	ret nz                                           ; $5aec: $c0

	ld a, e                                          ; $5aed: $7b
	ld b, b                                          ; $5aee: $40
	sbc [hl]                                         ; $5aef: $9e
	xor b                                            ; $5af0: $a8
	ld a, e                                          ; $5af1: $7b
	jr @-$60                                         ; $5af2: $18 $9e

	ccf                                              ; $5af4: $3f
	db $fc                                           ; $5af5: $fc
	sbc h                                            ; $5af6: $9c
	ld de, $0808                                     ; $5af7: $11 $08 $08
	ld [hl], e                                       ; $5afa: $73
	jr nz, @-$62                                     ; $5afb: $20 $9c

	xor $f7                                          ; $5afd: $ee $f7
	rst FarCall                                          ; $5aff: $f7
	db $fc                                           ; $5b00: $fc
	ld a, [hl]                                       ; $5b01: $7e
	ld e, b                                          ; $5b02: $58
	sbc [hl]                                         ; $5b03: $9e
	ld a, [hl]                                       ; $5b04: $7e
	ld [hl], e                                       ; $5b05: $73
	ldh a, [$9c]                                     ; $5b06: $f0 $9c
	inc bc                                           ; $5b08: $03
	ld bc, $fc81                                     ; $5b09: $01 $81 $fc
	ld a, [hl]                                       ; $5b0c: $7e
	ld e, $7a                                        ; $5b0d: $1e $7a
	db $e4                                           ; $5b0f: $e4
	ld a, e                                          ; $5b10: $7b
	ldh a, [$7f]                                     ; $5b11: $f0 $7f
	ld e, [hl]                                       ; $5b13: $5e
	ld [hl], d                                       ; $5b14: $72
	call nc, $a47c                                   ; $5b15: $d4 $7c $a4
	rst SubAFromDE                                          ; $5b18: $df
	ld hl, sp+$73                                    ; $5b19: $f8 $73
	ldh a, [$7e]                                     ; $5b1b: $f0 $7e
	rra                                              ; $5b1d: $1f
	ld l, l                                          ; $5b1e: $6d
	sub e                                            ; $5b1f: $93
	ld a, a                                          ; $5b20: $7f
	add l                                            ; $5b21: $85
	ld a, h                                          ; $5b22: $7c
	pop bc                                           ; $5b23: $c1
	ld [hl], a                                       ; $5b24: $77
	ldh a, [$7b]                                     ; $5b25: $f0 $7b
	inc a                                            ; $5b27: $3c
	add b                                            ; $5b28: $80
	ld a, [de]                                       ; $5b29: $1a
	dec c                                            ; $5b2a: $0d
	ld a, [bc]                                       ; $5b2b: $0a
	dec b                                            ; $5b2c: $05
	ld b, $03                                        ; $5b2d: $06 $03
	ld [bc], a                                       ; $5b2f: $02
	ld bc, $f2e5                                     ; $5b30: $01 $e5 $f2
	push af                                          ; $5b33: $f5
	ld a, [$fcf9]                                    ; $5b34: $fa $f9 $fc
	db $fd                                           ; $5b37: $fd
	cp $c0                                           ; $5b38: $fe $c0
	ld h, b                                          ; $5b3a: $60
	or b                                             ; $5b3b: $b0
	ld d, b                                          ; $5b3c: $50
	xor b                                            ; $5b3d: $a8
	ld e, b                                          ; $5b3e: $58
	xor h                                            ; $5b3f: $ac
	ld d, h                                          ; $5b40: $54
	ccf                                              ; $5b41: $3f
	sbc a                                            ; $5b42: $9f
	ld c, a                                          ; $5b43: $4f
	xor a                                            ; $5b44: $af
	ld d, a                                          ; $5b45: $57
	and a                                            ; $5b46: $a7
	ld d, e                                          ; $5b47: $53
	sbc [hl]                                         ; $5b48: $9e
	xor e                                            ; $5b49: $ab
	ld sp, hl                                        ; $5b4a: $f9
	ld [hl], l                                       ; $5b4b: $75
	rst SubAFromDE                                          ; $5b4c: $df
	db $dd                                           ; $5b4d: $dd
	rst $38                                          ; $5b4e: $ff
	sub l                                            ; $5b4f: $95
	or e                                             ; $5b50: $b3
	xor l                                            ; $5b51: $ad
	db $e4                                           ; $5b52: $e4
	xor h                                            ; $5b53: $ac
	push hl                                          ; $5b54: $e5
	and l                                            ; $5b55: $a5
	push hl                                          ; $5b56: $e5
	push hl                                          ; $5b57: $e5
	xor $f6                                          ; $5b58: $ee $f6
	ld l, l                                          ; $5b5a: $6d
	rrca                                             ; $5b5b: $0f
	adc a                                            ; $5b5c: $8f
	xor [hl]                                         ; $5b5d: $ae
	and $ae                                          ; $5b5e: $e6 $ae
	push hl                                          ; $5b60: $e5
	xor e                                            ; $5b61: $ab
	ld d, l                                          ; $5b62: $55
	ld d, e                                          ; $5b63: $53
	ld d, l                                          ; $5b64: $55
	di                                               ; $5b65: $f3
	ei                                               ; $5b66: $fb
	di                                               ; $5b67: $f3
	ei                                               ; $5b68: $fb
	push af                                          ; $5b69: $f5
	ei                                               ; $5b6a: $fb
	db $fd                                           ; $5b6b: $fd
	ei                                               ; $5b6c: $fb
	sbc $a7                                          ; $5b6d: $de $a7
	sbc d                                            ; $5b6f: $9a
	ld d, a                                          ; $5b70: $57
	ld d, e                                          ; $5b71: $53
	ld e, e                                          ; $5b72: $5b
	ld e, e                                          ; $5b73: $5b
	ld d, a                                          ; $5b74: $57
	db $dd                                           ; $5b75: $dd
	db $fc                                           ; $5b76: $fc
	db $dd                                           ; $5b77: $dd
	cp $8d                                           ; $5b78: $fe $8d
	db $db                                           ; $5b7a: $db
	db $fd                                           ; $5b7b: $fd
	cp $fd                                           ; $5b7c: $fe $fd
	rst $38                                          ; $5b7e: $ff
	db $eb                                           ; $5b7f: $eb
	or c                                             ; $5b80: $b1
	ld h, b                                          ; $5b81: $60
	inc a                                            ; $5b82: $3c
	ld c, $07                                        ; $5b83: $0e $07
	inc bc                                           ; $5b85: $03
	nop                                              ; $5b86: $00
	inc e                                            ; $5b87: $1c
	ld a, [hl]                                       ; $5b88: $7e
	rst $38                                          ; $5b89: $ff
	db $fc                                           ; $5b8a: $fc
	cp $78                                           ; $5b8b: $fe $78
	adc d                                            ; $5b8d: $8a
	ld a, c                                          ; $5b8e: $79
	rst FarCall                                          ; $5b8f: $f7
	ld a, a                                          ; $5b90: $7f
	ld d, l                                          ; $5b91: $55
	ld a, e                                          ; $5b92: $7b
	add d                                            ; $5b93: $82
	ld a, c                                          ; $5b94: $79
	rst SubAFromBC                                          ; $5b95: $e7
	rst SubAFromDE                                          ; $5b96: $df
	rrca                                             ; $5b97: $0f
	sbc [hl]                                         ; $5b98: $9e
	sbc a                                            ; $5b99: $9f
	call c, $dfff                                    ; $5b9a: $dc $ff $df
	ldh a, [$9e]                                     ; $5b9d: $f0 $9e
	ld h, b                                          ; $5b9f: $60
	ld l, d                                          ; $5ba0: $6a
	ld e, b                                          ; $5ba1: $58
	ld a, a                                          ; $5ba2: $7f
	ret nc                                           ; $5ba3: $d0

	add b                                            ; $5ba4: $80
	ld a, [$9be5]                                    ; $5ba5: $fa $e5 $9b
	ld l, [hl]                                       ; $5ba8: $6e
	nop                                              ; $5ba9: $00
	nop                                              ; $5baa: $00
	ld bc, $0502                                     ; $5bab: $01 $02 $05
	dec de                                           ; $5bae: $1b
	ld h, a                                          ; $5baf: $67
	sbc a                                            ; $5bb0: $9f
	ld [$fcf5], a                                    ; $5bb1: $ea $f5 $fc
	cp d                                             ; $5bb4: $ba
	dec a                                            ; $5bb5: $3d
	rst $38                                          ; $5bb6: $ff
	ld b, d                                          ; $5bb7: $42
	ld bc, $0f1f                                     ; $5bb8: $01 $1f $0f
	rlca                                             ; $5bbb: $07
	ld b, a                                          ; $5bbc: $47
	jp $8181                                         ; $5bbd: $c3 $81 $81


	nop                                              ; $5bc0: $00
	ld e, l                                          ; $5bc1: $5d
	ld a, [hl+]                                      ; $5bc2: $2a
	sbc [hl]                                         ; $5bc3: $9e
	add b                                            ; $5bc4: $80
	sub l                                            ; $5bc5: $95
	ld c, e                                          ; $5bc6: $4b
	ld c, e                                          ; $5bc7: $4b
	and h                                            ; $5bc8: $a4
	and l                                            ; $5bc9: $a5
	and $f7                                          ; $5bca: $e6 $f7
	di                                               ; $5bcc: $f3
	ei                                               ; $5bcd: $fb
	db $fd                                           ; $5bce: $fd
	db $fd                                           ; $5bcf: $fd
	rst $38                                          ; $5bd0: $ff
	cp $a8                                           ; $5bd1: $fe $a8
	xor b                                            ; $5bd3: $a8
	db $ec                                           ; $5bd4: $ec
	ld e, h                                          ; $5bd5: $5c
	ld a, h                                          ; $5bd6: $7c
	ld a, $b6                                        ; $5bd7: $3e $b6
	xor l                                            ; $5bd9: $ad
	ld a, a                                          ; $5bda: $7f
	ld a, a                                          ; $5bdb: $7f
	scf                                              ; $5bdc: $37

Call_056_5bdd:
	or a                                             ; $5bdd: $b7
	sub a                                            ; $5bde: $97
	db $d3                                           ; $5bdf: $d3
	db $db                                           ; $5be0: $db
	db $db                                           ; $5be1: $db
	dec d                                            ; $5be2: $15
	dec bc                                           ; $5be3: $0b
	sub c                                            ; $5be4: $91
	dec b                                            ; $5be5: $05
	ld a, [bc]                                       ; $5be6: $0a
	dec b                                            ; $5be7: $05
	ld [bc], a                                       ; $5be8: $02
	ld bc, $ea00                                     ; $5be9: $01 $00 $ea
	db $f4                                           ; $5bec: $f4
	ld a, [$faf5]                                    ; $5bed: $fa $f5 $fa
	db $fd                                           ; $5bf0: $fd
	cp $ff                                           ; $5bf1: $fe $ff
	sbc $e0                                          ; $5bf3: $de $e0
	sbc $f0                                          ; $5bf5: $de $f0
	sbc l                                            ; $5bf7: $9d
	ld a, b                                          ; $5bf8: $78
	cp b                                             ; $5bf9: $b8
	sbc $1f                                          ; $5bfa: $de $1f
	sbc $0f                                          ; $5bfc: $de $0f
	sbc e                                            ; $5bfe: $9b
	add a                                            ; $5bff: $87
	ld b, a                                          ; $5c00: $47
	inc b                                            ; $5c01: $04
	inc b                                            ; $5c02: $04
	sbc $02                                          ; $5c03: $de $02
	sbc $01                                          ; $5c05: $de $01
	rst SubAFromDE                                          ; $5c07: $df
	ei                                               ; $5c08: $fb
	sbc $fd                                          ; $5c09: $de $fd
	sbc $fe                                          ; $5c0b: $de $fe
	ld a, [hl]                                       ; $5c0d: $7e
	push af                                          ; $5c0e: $f5
	rst SubAFromDE                                          ; $5c0f: $df
	ccf                                              ; $5c10: $3f
	ld [hl], a                                       ; $5c11: $77
	db $e4                                           ; $5c12: $e4
	ld a, a                                          ; $5c13: $7f
	ld [hl], e                                       ; $5c14: $73
	rst SubAFromDE                                          ; $5c15: $df
	ret nz                                           ; $5c16: $c0

	ld [hl], a                                       ; $5c17: $77
	call nc, $07df                                   ; $5c18: $d4 $df $07
	sub c                                            ; $5c1b: $91
	inc bc                                           ; $5c1c: $03
	add e                                            ; $5c1d: $83
	add e                                            ; $5c1e: $83
	add c                                            ; $5c1f: $81
	pop bc                                           ; $5c20: $c1
	pop bc                                           ; $5c21: $c1
	ld hl, sp-$08                                    ; $5c22: $f8 $f8
	db $fc                                           ; $5c24: $fc
	ld a, h                                          ; $5c25: $7c
	ld a, h                                          ; $5c26: $7c
	ld a, [hl]                                       ; $5c27: $7e
	ld a, $3e                                        ; $5c28: $3e $3e
	ld l, a                                          ; $5c2a: $6f
	add hl, sp                                       ; $5c2b: $39
	ld a, e                                          ; $5c2c: $7b
	ld d, b                                          ; $5c2d: $50
	rst SubAFromDE                                          ; $5c2e: $df
	inc bc                                           ; $5c2f: $03
	sbc $01                                          ; $5c30: $de $01
	ld [hl], d                                       ; $5c32: $72
	and l                                            ; $5c33: $a5
	ld a, d                                          ; $5c34: $7a
	cp d                                             ; $5c35: $ba
	ld a, a                                          ; $5c36: $7f
	db $db                                           ; $5c37: $db
	ld [hl], a                                       ; $5c38: $77
	xor d                                            ; $5c39: $aa
	sbc $f8                                          ; $5c3a: $de $f8
	sbc [hl]                                         ; $5c3c: $9e
	db $fc                                           ; $5c3d: $fc
	cp $9a                                           ; $5c3e: $fe $9a
	inc bc                                           ; $5c40: $03
	inc a                                            ; $5c41: $3c
	ret nz                                           ; $5c42: $c0

	nop                                              ; $5c43: $00
	add hl, hl                                       ; $5c44: $29
	ld e, [hl]                                       ; $5c45: $5e
	ld b, b                                          ; $5c46: $40
	sbc c                                            ; $5c47: $99
	rrca                                             ; $5c48: $0f
	ldh a, [rP1]                                     ; $5c49: $f0 $00
	inc bc                                           ; $5c4b: $03
	db $fc                                           ; $5c4c: $fc
	inc bc                                           ; $5c4d: $03
	ld e, a                                          ; $5c4e: $5f
	ldh a, [$9a]                                     ; $5c4f: $f0 $9a
	ld hl, sp+$07                                    ; $5c51: $f8 $07
	nop                                              ; $5c53: $00

Call_056_5c54:
	pop af                                           ; $5c54: $f1
	rrca                                             ; $5c55: $0f
	ld [hl], h                                       ; $5c56: $74
	ld b, l                                          ; $5c57: $45
	call c, $dfff                                    ; $5c58: $dc $ff $df
	rst FarCall                                          ; $5c5b: $f7
	sbc c                                            ; $5c5c: $99
	push af                                          ; $5c5d: $f5
	rst FarCall                                          ; $5c5e: $f7
	ld a, a                                          ; $5c5f: $7f
	rst $38                                          ; $5c60: $ff
	rrca                                             ; $5c61: $0f
	db $f4                                           ; $5c62: $f4
	reti                                             ; $5c63: $d9


	rst $38                                          ; $5c64: $ff
	sub [hl]                                         ; $5c65: $96
	ld e, e                                          ; $5c66: $5b
	ld l, c                                          ; $5c67: $69
	add hl, hl                                       ; $5c68: $29
	dec l                                            ; $5c69: $2d
	cp h                                             ; $5c6a: $bc
	sub h                                            ; $5c6b: $94
	sbc $ff                                          ; $5c6c: $de $ff
	db $fd                                           ; $5c6e: $fd
	jp c, Jump_056_7eff                              ; $5c6f: $da $ff $7e

	jp $ab99                                         ; $5c72: $c3 $99 $ab


	xor a                                            ; $5c75: $af
	xor c                                            ; $5c76: $a9
	xor b                                            ; $5c77: $a8
	xor b                                            ; $5c78: $a8
	ld d, h                                          ; $5c79: $54
	reti                                             ; $5c7a: $d9


	rst $38                                          ; $5c7b: $ff
	ld [hl], h                                       ; $5c7c: $74
	db $e4                                           ; $5c7d: $e4
	rst SubAFromDE                                          ; $5c7e: $df
	add b                                            ; $5c7f: $80
	sbc l                                            ; $5c80: $9d
	add a                                            ; $5c81: $87
	ld c, a                                          ; $5c82: $4f
	db $db                                           ; $5c83: $db
	rst $38                                          ; $5c84: $ff
	ld a, l                                          ; $5c85: $7d
	and b                                            ; $5c86: $a0
	ld a, e                                          ; $5c87: $7b
	ld d, b                                          ; $5c88: $50
	rst SubAFromDE                                          ; $5c89: $df
	rra                                              ; $5c8a: $1f
	sbc h                                            ; $5c8b: $9c
	ccf                                              ; $5c8c: $3f
	rst $38                                          ; $5c8d: $ff
	rst $38                                          ; $5c8e: $ff
	ld a, e                                          ; $5c8f: $7b
	ld d, b                                          ; $5c90: $50
	rst SubAFromDE                                          ; $5c91: $df
	ldh [$7f], a                                     ; $5c92: $e0 $7f
	adc b                                            ; $5c94: $88
	ld a, d                                          ; $5c95: $7a
	ret nc                                           ; $5c96: $d0

	call c, $9eff                                    ; $5c97: $dc $ff $9e
	rst AddAOntoHL                                          ; $5c9a: $ef
	ld sp, hl                                        ; $5c9b: $f9
	sbc h                                            ; $5c9c: $9c
	cp h                                             ; $5c9d: $bc
	ld [hl], a                                       ; $5c9e: $77
	ld e, a                                          ; $5c9f: $5f
	call c, $9cff                                    ; $5ca0: $dc $ff $9c
	ld a, [hl]                                       ; $5ca3: $7e
	ld hl, sp-$20                                    ; $5ca4: $f8 $e0
	ld l, b                                          ; $5ca6: $68
	push af                                          ; $5ca7: $f5
	rst SubAFromDE                                          ; $5ca8: $df
	ret nz                                           ; $5ca9: $c0

	db $dd                                           ; $5caa: $dd
	add b                                            ; $5cab: $80
	ld sp, hl                                        ; $5cac: $f9
	sub a                                            ; $5cad: $97
	ld d, d                                          ; $5cae: $52
	jp nc, $e9c9                                     ; $5caf: $d2 $c9 $e9

	db $e4                                           ; $5cb2: $e4
	call nc, $d2d4                                   ; $5cb3: $d4 $d4 $d2
	ld a, b                                          ; $5cb6: $78
	ld b, b                                          ; $5cb7: $40
	db $db                                           ; $5cb8: $db
	ld a, a                                          ; $5cb9: $7f
	rst SubAFromDE                                          ; $5cba: $df
	ld e, e                                          ; $5cbb: $5b
	sub a                                            ; $5cbc: $97
	ld h, $a6                                        ; $5cbd: $26 $a6
	sub h                                            ; $5cbf: $94
	sub h                                            ; $5cc0: $94
	ld d, h                                          ; $5cc1: $54
	ret                                              ; $5cc2: $c9


	db $ed                                           ; $5cc3: $ed
	db $ed                                           ; $5cc4: $ed
	ld a, d                                          ; $5cc5: $7a
	or c                                             ; $5cc6: $b1
	ld [hl], a                                       ; $5cc7: $77
	ld d, b                                          ; $5cc8: $50
	rst SubAFromDE                                          ; $5cc9: $df
	add b                                            ; $5cca: $80
	sbc e                                            ; $5ccb: $9b
	ldh [$98], a                                     ; $5ccc: $e0 $98
	add [hl]                                         ; $5cce: $86
	add c                                            ; $5ccf: $81
	db $db                                           ; $5cd0: $db
	rst $38                                          ; $5cd1: $ff
	adc l                                            ; $5cd2: $8d
	rst GetHLinHL                                          ; $5cd3: $cf
	db $e3                                           ; $5cd4: $e3
	ld a, b                                          ; $5cd5: $78
	xor h                                            ; $5cd6: $ac
	ld d, h                                          ; $5cd7: $54
	inc l                                            ; $5cd8: $2c
	inc d                                            ; $5cd9: $14
	ld c, $06                                        ; $5cda: $0e $06

Call_056_5cdc:
	ld [bc], a                                       ; $5cdc: $02
	add a                                            ; $5cdd: $87
	ld d, e                                          ; $5cde: $53
	xor e                                            ; $5cdf: $ab
	db $d3                                           ; $5ce0: $d3
	db $eb                                           ; $5ce1: $eb
	pop af                                           ; $5ce2: $f1
	ld sp, hl                                        ; $5ce3: $f9
	db $fd                                           ; $5ce4: $fd
	ld e, h                                          ; $5ce5: $5c
	or b                                             ; $5ce6: $b0
	db $db                                           ; $5ce7: $db
	rst $38                                          ; $5ce8: $ff
	ld [hl], l                                       ; $5ce9: $75
	pop bc                                           ; $5cea: $c1
	ld a, [hl]                                       ; $5ceb: $7e
	sub b                                            ; $5cec: $90
	ld a, l                                          ; $5ced: $7d
	cp a                                             ; $5cee: $bf
	ld [hl], l                                       ; $5cef: $75
	pop bc                                           ; $5cf0: $c1
	ld a, [hl]                                       ; $5cf1: $7e
	sub b                                            ; $5cf2: $90
	ld a, l                                          ; $5cf3: $7d
	cp a                                             ; $5cf4: $bf
	ld a, l                                          ; $5cf5: $7d
	inc sp                                           ; $5cf6: $33
	add c                                            ; $5cf7: $81
	ld h, b                                          ; $5cf8: $60
	and b                                            ; $5cf9: $a0
	ld d, b                                          ; $5cfa: $50
	or b                                             ; $5cfb: $b0
	ld d, b                                          ; $5cfc: $50
	and b                                            ; $5cfd: $a0
	cp a                                             ; $5cfe: $bf
	ld e, a                                          ; $5cff: $5f
	sbc a                                            ; $5d00: $9f
	ld e, a                                          ; $5d01: $5f
	xor a                                            ; $5d02: $af
	ld c, a                                          ; $5d03: $4f
	xor a                                            ; $5d04: $af
	ld e, a                                          ; $5d05: $5f
	xor e                                            ; $5d06: $ab
	push de                                          ; $5d07: $d5
	xor d                                            ; $5d08: $aa
	ld d, l                                          ; $5d09: $55
	ld l, d                                          ; $5d0a: $6a
	ld d, l                                          ; $5d0b: $55
	ld l, d                                          ; $5d0c: $6a
	dec [hl]                                         ; $5d0d: $35
	ld d, h                                          ; $5d0e: $54
	ld a, [hl+]                                      ; $5d0f: $2a
	ld d, l                                          ; $5d10: $55
	xor d                                            ; $5d11: $aa
	sub l                                            ; $5d12: $95
	xor d                                            ; $5d13: $aa
	sub l                                            ; $5d14: $95
	jp z, $a077                                      ; $5d15: $ca $77 $a0

	rst SubAFromDE                                          ; $5d18: $df
	add b                                            ; $5d19: $80
	ld a, [hl]                                       ; $5d1a: $7e
	ld b, $79                                        ; $5d1b: $06 $79
	nop                                              ; $5d1d: $00
	sbc $7f                                          ; $5d1e: $de $7f
	ld a, h                                          ; $5d20: $7c
	db $fd                                           ; $5d21: $fd
	sub a                                            ; $5d22: $97
	ld d, l                                          ; $5d23: $55
	xor e                                            ; $5d24: $ab
	ld d, a                                          ; $5d25: $57
	ld l, $1d                                        ; $5d26: $2e $1d
	ld a, [hl-]                                      ; $5d28: $3a
	push af                                          ; $5d29: $f5
	ld [hl+], a                                      ; $5d2a: $22
	jp c, $97ff                                      ; $5d2b: $da $ff $97

	ld a, a                                          ; $5d2e: $7f
	db $fc                                           ; $5d2f: $fc
	and b                                            ; $5d30: $a0
	ld d, b                                          ; $5d31: $50
	and b                                            ; $5d32: $a0
	ld b, c                                          ; $5d33: $41
	and e                                            ; $5d34: $a3
	ld b, d                                          ; $5d35: $42
	ld [hl], e                                       ; $5d36: $73
	add b                                            ; $5d37: $80
	sbc [hl]                                         ; $5d38: $9e
	cp $79                                           ; $5d39: $fe $79
	ld [hl], b                                       ; $5d3b: $70
	sbc [hl]                                         ; $5d3c: $9e
	ld a, a                                          ; $5d3d: $7f
	ld [hl], a                                       ; $5d3e: $77
	dec a                                            ; $5d3f: $3d
	ld a, l                                          ; $5d40: $7d
	ld l, [hl]                                       ; $5d41: $6e
	ld [hl], d                                       ; $5d42: $72
	ldh a, [$78]                                     ; $5d43: $f0 $78
	add h                                            ; $5d45: $84
	sbc h                                            ; $5d46: $9c
	cp a                                             ; $5d47: $bf
	inc b                                            ; $5d48: $04
	inc b                                            ; $5d49: $04
	ld c, a                                          ; $5d4a: $4f
	add b                                            ; $5d4b: $80
	sub a                                            ; $5d4c: $97
	rlca                                             ; $5d4d: $07
	ld bc, $003f                                     ; $5d4e: $01 $3f $00
	jr nc, jr_056_5d9b                               ; $5d51: $30 $48

	ld d, h                                          ; $5d53: $54
	ld a, [hl+]                                      ; $5d54: $2a
	ld [hl], e                                       ; $5d55: $73
	ld d, d                                          ; $5d56: $52
	sub l                                            ; $5d57: $95
	or a                                             ; $5d58: $b7
	cp e                                             ; $5d59: $bb
	db $dd                                           ; $5d5a: $dd
	db $f4                                           ; $5d5b: $f4
	db $fc                                           ; $5d5c: $fc
	ld a, [$1dfe]                                    ; $5d5d: $fa $fe $1d
	rrca                                             ; $5d60: $0f
	rlca                                             ; $5d61: $07
	ld h, d                                          ; $5d62: $62
	add b                                            ; $5d63: $80
	halt                                             ; $5d64: $76
	ld d, d                                          ; $5d65: $52
	ld a, a                                          ; $5d66: $7f
	ld h, d                                          ; $5d67: $62
	rst SubAFromDE                                          ; $5d68: $df
	add c                                            ; $5d69: $81
	halt                                             ; $5d6a: $76
	ld d, d                                          ; $5d6b: $52
	ld a, e                                          ; $5d6c: $7b
	or c                                             ; $5d6d: $b1
	sbc $ff                                          ; $5d6e: $de $ff
	add d                                            ; $5d70: $82
	di                                               ; $5d71: $f3
	xor e                                            ; $5d72: $ab
	ld e, e                                          ; $5d73: $5b
	or a                                             ; $5d74: $b7
	ld l, a                                          ; $5d75: $6f
	rst SubAFromDE                                          ; $5d76: $df
	nop                                              ; $5d77: $00
	nop                                              ; $5d78: $00
	inc c                                            ; $5d79: $0c
	ld e, h                                          ; $5d7a: $5c
	cp h                                             ; $5d7b: $bc
	ld a, b                                          ; $5d7c: $78
	ldh a, [$e0]                                     ; $5d7d: $f0 $e0
	and e                                            ; $5d7f: $a3
	and c                                            ; $5d80: $a1
	sub c                                            ; $5d81: $91
	sbc a                                            ; $5d82: $9f
	sub c                                            ; $5d83: $91
	sbc e                                            ; $5d84: $9b
	jp Jump_056_40ff                                 ; $5d85: $c3 $ff $40


	ld b, b                                          ; $5d88: $40
	ld h, b                                          ; $5d89: $60
	ld h, b                                          ; $5d8a: $60
	ld a, [hl]                                       ; $5d8b: $7e
	ld a, h                                          ; $5d8c: $7c
	inc a                                            ; $5d8d: $3c
	ld l, e                                          ; $5d8e: $6b
	xor b                                            ; $5d8f: $a8
	rst SubAFromDE                                          ; $5d90: $df
	rst SubAFromDE                                          ; $5d91: $df
	ei                                               ; $5d92: $fb
	sbc l                                            ; $5d93: $9d
	jr nz, jr_056_5df6                               ; $5d94: $20 $60

	ld [hl], l                                       ; $5d96: $75
	add sp, -$21                                     ; $5d97: $e8 $df
	ret nz                                           ; $5d99: $c0

	rst SubAFromDE                                          ; $5d9a: $df

jr_056_5d9b:
	pop bc                                           ; $5d9b: $c1
	ld a, [$0186]                                    ; $5d9c: $fa $86 $01
	jp z, $d5ca                                      ; $5d9f: $ca $ca $d5

	ld l, l                                          ; $5da2: $6d
	sub l                                            ; $5da3: $95
	ld [$7af6], a                                    ; $5da4: $ea $f6 $7a
	ld a, a                                          ; $5da7: $7f
	ld a, a                                          ; $5da8: $7f
	ld l, a                                          ; $5da9: $6f
	rst SubAFromHL                                          ; $5daa: $d7
	rst AddAOntoHL                                          ; $5dab: $ef
	sub a                                            ; $5dac: $97
	adc e                                            ; $5dad: $8b
	add a                                            ; $5dae: $87
	ld c, d                                          ; $5daf: $4a
	ld c, d                                          ; $5db0: $4a
	ld a, [hl+]                                      ; $5db1: $2a
	ld a, [hl+]                                      ; $5db2: $2a
	dec h                                            ; $5db3: $25
	sub l                                            ; $5db4: $95
	sub l                                            ; $5db5: $95
	sub e                                            ; $5db6: $93
	reti                                             ; $5db7: $d9


	rst $38                                          ; $5db8: $ff
	sub [hl]                                         ; $5db9: $96
	or b                                             ; $5dba: $b0
	ld e, b                                          ; $5dbb: $58
	ld l, h                                          ; $5dbc: $6c
	ld a, [hl]                                       ; $5dbd: $7e
	halt                                             ; $5dbe: $76
	ld [hl], a                                       ; $5dbf: $77
	ld l, a                                          ; $5dc0: $6f
	ld l, a                                          ; $5dc1: $6f
	ret nz                                           ; $5dc2: $c0

	ld a, c                                          ; $5dc3: $79
	rst SubAFromDE                                          ; $5dc4: $df
	sbc $f8                                          ; $5dc5: $de $f8
	sub l                                            ; $5dc7: $95
	ret c                                            ; $5dc8: $d8

	ld b, b                                          ; $5dc9: $40
	jr nz, @+$12                                     ; $5dca: $20 $10

	ld [$0408], sp                                   ; $5dcc: $08 $08 $04
	inc b                                            ; $5dcf: $04
	inc bc                                           ; $5dd0: $03
	rst $38                                          ; $5dd1: $ff
	ld a, b                                          ; $5dd2: $78
	adc h                                            ; $5dd3: $8c
	ld [hl], a                                       ; $5dd4: $77
	ld [hl], h                                       ; $5dd5: $74
	ld b, [hl]                                       ; $5dd6: $46
	ret nz                                           ; $5dd7: $c0

	ld a, b                                          ; $5dd8: $78
	add l                                            ; $5dd9: $85

Jump_056_5dda:
	call c, $7b01                                    ; $5dda: $dc $01 $7b
	ld h, h                                          ; $5ddd: $64
	call c, $8bfe                                    ; $5dde: $dc $fe $8b
	ld e, b                                          ; $5de1: $58
	xor b                                            ; $5de2: $a8
	ld e, b                                          ; $5de3: $58
	xor b                                            ; $5de4: $a8
	ld d, h                                          ; $5de5: $54
	xor h                                            ; $5de6: $ac
	inc b                                            ; $5de7: $04
	inc b                                            ; $5de8: $04
	and a                                            ; $5de9: $a7
	ld d, a                                          ; $5dea: $57
	and a                                            ; $5deb: $a7
	ld d, a                                          ; $5dec: $57
	xor e                                            ; $5ded: $ab
	ld d, e                                          ; $5dee: $53
	ei                                               ; $5def: $fb
	ei                                               ; $5df0: $fb
	ld a, [hl+]                                      ; $5df1: $2a
	dec [hl]                                         ; $5df2: $35
	ld a, [de]                                       ; $5df3: $1a
	dec d                                            ; $5df4: $15
	ld a, e                                          ; $5df5: $7b

jr_056_5df6:
	cp $9a                                           ; $5df6: $fe $9a
	dec c                                            ; $5df8: $0d
	push de                                          ; $5df9: $d5
	jp z, $eae5                                      ; $5dfa: $ca $e5 $ea

	ld a, e                                          ; $5dfd: $7b
	cp $9d                                           ; $5dfe: $fe $9d
	ldh a, [c]                                       ; $5e00: $f2
	ret nz                                           ; $5e01: $c0

	halt                                             ; $5e02: $76
	sbc a                                            ; $5e03: $9f
	ld a, d                                          ; $5e04: $7a
	sbc l                                            ; $5e05: $9d
	ld a, [hl]                                       ; $5e06: $7e
	add $7a                                          ; $5e07: $c6 $7a
	sbc a                                            ; $5e09: $9f
	ld a, d                                          ; $5e0a: $7a
	sbc l                                            ; $5e0b: $9d
	sub h                                            ; $5e0c: $94
	jr nc, jr_056_5e17                               ; $5e0d: $30 $08

	inc c                                            ; $5e0f: $0c
	ld b, $01                                        ; $5e10: $06 $01
	inc bc                                           ; $5e12: $03
	rlca                                             ; $5e13: $07
	nop                                              ; $5e14: $00
	rra                                              ; $5e15: $1f
	rra                                              ; $5e16: $1f

jr_056_5e17:
	rlca                                             ; $5e17: $07
	ld a, c                                          ; $5e18: $79
	ld e, [hl]                                       ; $5e19: $5e
	ld sp, hl                                        ; $5e1a: $f9
	sbc l                                            ; $5e1b: $9d
	ret nz                                           ; $5e1c: $c0

	and b                                            ; $5e1d: $a0
	ld h, [hl]                                       ; $5e1e: $66
	or b                                             ; $5e1f: $b0
	ld a, [hl]                                       ; $5e20: $7e
	add d                                            ; $5e21: $82
	adc c                                            ; $5e22: $89
	ld a, [hl+]                                      ; $5e23: $2a
	dec d                                            ; $5e24: $15
	add hl, bc                                       ; $5e25: $09
	inc b                                            ; $5e26: $04
	ld [bc], a                                       ; $5e27: $02
	ld bc, $af5f                                     ; $5e28: $01 $5f $af
	rst SubAFromHL                                          ; $5e2b: $d7
	db $eb                                           ; $5e2c: $eb
	rst FarCall                                          ; $5e2d: $f7
	ei                                               ; $5e2e: $fb
	db $fd                                           ; $5e2f: $fd
	cp $80                                           ; $5e30: $fe $80
	ld b, b                                          ; $5e32: $40
	and b                                            ; $5e33: $a0
	ld [hl], b                                       ; $5e34: $70
	cp b                                             ; $5e35: $b8
	call c, $3e7d                                    ; $5e36: $dc $7d $3e
	db $db                                           ; $5e39: $db
	rst $38                                          ; $5e3a: $ff
	ld a, [hl]                                       ; $5e3b: $7e
	ldh a, [hDisp1_OBP1]                                     ; $5e3c: $f0 $94
	dec [hl]                                         ; $5e3e: $35
	sbc a                                            ; $5e3f: $9f
	ld c, e                                          ; $5e40: $4b
	dec hl                                           ; $5e41: $2b
	dec d                                            ; $5e42: $15
	ld a, [bc]                                       ; $5e43: $0a
	inc b                                            ; $5e44: $04
	adc d                                            ; $5e45: $8a
	rst GetHLinHL                                          ; $5e46: $cf
	rst SubAFromBC                                          ; $5e47: $e7
	rst FarCall                                          ; $5e48: $f7
	ld a, e                                          ; $5e49: $7b
	pop hl                                           ; $5e4a: $e1
	ld a, a                                          ; $5e4b: $7f
	ret nc                                           ; $5e4c: $d0

	sub d                                            ; $5e4d: $92
	inc hl                                           ; $5e4e: $23
	sub d                                            ; $5e4f: $92
	ld e, c                                          ; $5e50: $59
	xor l                                            ; $5e51: $ad
	push de                                          ; $5e52: $d5
	add sp, -$0c                                     ; $5e53: $e8 $f4
	ld a, c                                          ; $5e55: $79
	rst SubAFromDE                                          ; $5e56: $df
	rst AddAOntoHL                                          ; $5e57: $ef
	rst SubAFromBC                                          ; $5e58: $e7
	di                                               ; $5e59: $f3
	ei                                               ; $5e5a: $fb
	sbc $ff                                          ; $5e5b: $de $ff
	sub a                                            ; $5e5d: $97
	rst JumpTable                                          ; $5e5e: $c7
	ldh [rSVBK], a                                   ; $5e5f: $e0 $70
	cp h                                             ; $5e61: $bc
	sbc $eb                                          ; $5e62: $de $eb
	push af                                          ; $5e64: $f5
	di                                               ; $5e65: $f3
	reti                                             ; $5e66: $d9


	rst $38                                          ; $5e67: $ff
	ld a, d                                          ; $5e68: $7a
	ld a, h                                          ; $5e69: $7c
	ld a, b                                          ; $5e6a: $78
	ld [hl], l                                       ; $5e6b: $75
	sbc [hl]                                         ; $5e6c: $9e
	add c                                            ; $5e6d: $81
	ld a, c                                          ; $5e6e: $79
	ld l, c                                          ; $5e6f: $69
	ld a, l                                          ; $5e70: $7d
	reti                                             ; $5e71: $d9


	ld a, a                                          ; $5e72: $7f
	rra                                              ; $5e73: $1f
	ld a, a                                          ; $5e74: $7f
	ret nz                                           ; $5e75: $c0

	ld a, b                                          ; $5e76: $78
	ld [hl+], a                                      ; $5e77: $22
	call c, Call_056_7fff                            ; $5e78: $dc $ff $7f
	ld a, h                                          ; $5e7b: $7c
	ei                                               ; $5e7c: $fb
	sbc d                                            ; $5e7d: $9a
	sbc a                                            ; $5e7e: $9f
	ccf                                              ; $5e7f: $3f
	rst AddAOntoHL                                          ; $5e80: $ef
	rst GetHLinHL                                          ; $5e81: $cf
	rst SubAFromDE                                          ; $5e82: $df

Call_056_5e83:
	sbc $ff                                          ; $5e83: $de $ff
	ld a, l                                          ; $5e85: $7d
	ld h, h                                          ; $5e86: $64
	sbc h                                            ; $5e87: $9c
	db $10                                           ; $5e88: $10
	jr nc, jr_056_5eab                               ; $5e89: $30 $20

	cp $9e                                           ; $5e8b: $fe $9e
	pop hl                                           ; $5e8d: $e1
	sbc $e3                                          ; $5e8e: $de $e3
	sbc c                                            ; $5e90: $99
	and $c6                                          ; $5e91: $e6 $c6
	rst GetHLinHL                                          ; $5e93: $cf
	db $dd                                           ; $5e94: $dd
	ld bc, $de01                                     ; $5e95: $01 $01 $de
	inc bc                                           ; $5e98: $03
	sbc e                                            ; $5e99: $9b
	rlca                                             ; $5e9a: $07
	ld b, $0e                                        ; $5e9b: $06 $0e
	db $fd                                           ; $5e9d: $fd
	ld a, c                                          ; $5e9e: $79
	ld d, $76                                        ; $5e9f: $16 $76
	ld a, d                                          ; $5ea1: $7a
	ld a, a                                          ; $5ea2: $7f
	ld d, h                                          ; $5ea3: $54
	ld a, b                                          ; $5ea4: $78
	or b                                             ; $5ea5: $b0
	cp $de                                           ; $5ea6: $fe $de
	ld c, e                                          ; $5ea8: $4b
	sbc [hl]                                         ; $5ea9: $9e
	dec hl                                           ; $5eaa: $2b

jr_056_5eab:
	sbc $a5                                          ; $5eab: $de $a5
	sbc [hl]                                         ; $5ead: $9e
	sub l                                            ; $5eae: $95
	reti                                             ; $5eaf: $d9


	rst $38                                          ; $5eb0: $ff
	adc d                                            ; $5eb1: $8a
	ld c, a                                          ; $5eb2: $4f
	ld l, a                                          ; $5eb3: $6f
	ld c, e                                          ; $5eb4: $4b
	ld l, e                                          ; $5eb5: $6b
	ld c, c                                          ; $5eb6: $49
	ld l, e                                          ; $5eb7: $6b
	add hl, sp                                       ; $5eb8: $39
	dec hl                                           ; $5eb9: $2b
	ld hl, sp-$28                                    ; $5eba: $f8 $d8
	db $fc                                           ; $5ebc: $fc
	call c, $dcfe                                    ; $5ebd: $dc $fe $dc
	xor $fc                                          ; $5ec0: $ee $fc
	add [hl]                                         ; $5ec2: $86
	add b                                            ; $5ec3: $80
	add d                                            ; $5ec4: $82
	ret nz                                           ; $5ec5: $c0

	pop bc                                           ; $5ec6: $c1
	sbc $c0                                          ; $5ec7: $de $c0
	ld [hl], h                                       ; $5ec9: $74
	add c                                            ; $5eca: $81
	ld [hl], d                                       ; $5ecb: $72
	ret z                                            ; $5ecc: $c8

	sbc b                                            ; $5ecd: $98
	dec bc                                           ; $5ece: $0b
	ld a, [bc]                                       ; $5ecf: $0a
	ld a, [bc]                                       ; $5ed0: $0a
	add a                                            ; $5ed1: $87
	add l                                            ; $5ed2: $85
	add l                                            ; $5ed3: $85
	add c                                            ; $5ed4: $81
	ld a, d                                          ; $5ed5: $7a
	rst JumpTable                                          ; $5ed6: $c7
	halt                                             ; $5ed7: $76
	add $9a                                          ; $5ed8: $c6 $9a
	dec b                                            ; $5eda: $05
	nop                                              ; $5edb: $00
	ret nz                                           ; $5edc: $c0

	jr nc, jr_056_5eeb                               ; $5edd: $30 $0c

	ld [hl], a                                       ; $5edf: $77
	rst FarCall                                          ; $5ee0: $f7
	rst SubAFromDE                                          ; $5ee1: $df
	rst $38                                          ; $5ee2: $ff
	sbc l                                            ; $5ee3: $9d
	ccf                                              ; $5ee4: $3f
	rrca                                             ; $5ee5: $0f
	ld [hl], h                                       ; $5ee6: $74
	ld e, [hl]                                       ; $5ee7: $5e
	ld a, a                                          ; $5ee8: $7f
	ld l, b                                          ; $5ee9: $68
	rst SubAFromDE                                          ; $5eea: $df

jr_056_5eeb:
	add d                                            ; $5eeb: $82
	db $fd                                           ; $5eec: $fd
	ld a, a                                          ; $5eed: $7f
	ld e, b                                          ; $5eee: $58
	rst SubAFromDE                                          ; $5eef: $df
	ld a, l                                          ; $5ef0: $7d
	db $dd                                           ; $5ef1: $dd
	rst $38                                          ; $5ef2: $ff
	sbc l                                            ; $5ef3: $9d

jr_056_5ef4:
	ld a, [bc]                                       ; $5ef4: $0a
	ld [$7cfb], sp                                   ; $5ef5: $08 $fb $7c
	adc d                                            ; $5ef8: $8a
	db $db                                           ; $5ef9: $db
	rst $38                                          ; $5efa: $ff
	sub h                                            ; $5efb: $94
	sub b                                            ; $5efc: $90
	nop                                              ; $5efd: $00
	stop                                             ; $5efe: $10 $00
	nop                                              ; $5f00: $00
	ld [$0800], sp                                   ; $5f01: $08 $00 $08
	ld l, a                                          ; $5f04: $6f
	rst $38                                          ; $5f05: $ff
	rst AddAOntoHL                                          ; $5f06: $ef
	ld a, b                                          ; $5f07: $78
	ld [hl], e                                       ; $5f08: $73
	ld a, a                                          ; $5f09: $7f
	cp $6c                                           ; $5f0a: $fe $6c
	call c, $1a7e                                    ; $5f0c: $dc $7e $1a
	ld sp, hl                                        ; $5f0f: $f9
	sbc d                                            ; $5f10: $9a
	db $10                                           ; $5f11: $10
	jr c, @+$0e                                      ; $5f12: $38 $0c

	ld a, [bc]                                       ; $5f14: $0a
	rra                                              ; $5f15: $1f
	ld a, e                                          ; $5f16: $7b
	inc sp                                           ; $5f17: $33
	ld a, a                                          ; $5f18: $7f
	or d                                             ; $5f19: $b2
	ld a, c                                          ; $5f1a: $79
	ret z                                            ; $5f1b: $c8

	ld l, e                                          ; $5f1c: $6b
	adc h                                            ; $5f1d: $8c
	ld a, [hl]                                       ; $5f1e: $7e
	call $d49d                                       ; $5f1f: $cd $9d $d4
	ld [$ffd9], a                                    ; $5f22: $ea $d9 $ff
	sbc e                                            ; $5f25: $9b
	sbc [hl]                                         ; $5f26: $9e
	ld c, a                                          ; $5f27: $4f
	daa                                              ; $5f28: $27
	rlca                                             ; $5f29: $07
	halt                                             ; $5f2a: $76
	sbc b                                            ; $5f2b: $98
	ld a, l                                          ; $5f2c: $7d
	halt                                             ; $5f2d: $76
	ld [hl], a                                       ; $5f2e: $77
	ld a, [de]                                       ; $5f2f: $1a
	rst SubAFromDE                                          ; $5f30: $df
	rst $38                                          ; $5f31: $ff
	adc b                                            ; $5f32: $88
	add l                                            ; $5f33: $85
	ld b, $43                                        ; $5f34: $06 $43
	and e                                            ; $5f36: $a3
	and c                                            ; $5f37: $a1
	or b                                             ; $5f38: $b0
	ret nc                                           ; $5f39: $d0

	ret c                                            ; $5f3a: $d8

	ld a, a                                          ; $5f3b: $7f
	rst $38                                          ; $5f3c: $ff
	cp a                                             ; $5f3d: $bf
	rst SubAFromDE                                          ; $5f3e: $df
	rst SubAFromDE                                          ; $5f3f: $df
	rst GetHLinHL                                          ; $5f40: $cf
	rst AddAOntoHL                                          ; $5f41: $ef
	rst SubAFromBC                                          ; $5f42: $e7
	inc a                                            ; $5f43: $3c
	sbc l                                            ; $5f44: $9d
	ld c, [hl]                                       ; $5f45: $4e
	adc a                                            ; $5f46: $8f
	add [hl]                                         ; $5f47: $86
	rst JumpTable                                          ; $5f48: $c7
	ld b, a                                          ; $5f49: $47
	ld h, c                                          ; $5f4a: $61
	add b                                            ; $5f4b: $80
	sbc h                                            ; $5f4c: $9c
	pop af                                           ; $5f4d: $f1
	ret c                                            ; $5f4e: $d8

	cp c                                             ; $5f4f: $b9
	ld a, d                                          ; $5f50: $7a
	cpl                                              ; $5f51: $2f
	sbc [hl]                                         ; $5f52: $9e
	db $ec                                           ; $5f53: $ec
	ld h, b                                          ; $5f54: $60
	jr nc, jr_056_5ef4                               ; $5f55: $30 $9d

	ldh a, [$fc]                                     ; $5f57: $f0 $fc
	ld a, b                                          ; $5f59: $78
	db $ed                                           ; $5f5a: $ed
	sbc l                                            ; $5f5b: $9d
	ld l, d                                          ; $5f5c: $6a
	ld a, a                                          ; $5f5d: $7f
	ld a, b                                          ; $5f5e: $78
	ld a, $db                                        ; $5f5f: $3e $db
	rst $38                                          ; $5f61: $ff
	ld a, a                                          ; $5f62: $7f
	sbc b                                            ; $5f63: $98
	sub [hl]                                         ; $5f64: $96
	add e                                            ; $5f65: $83
	ld hl, sp+$7f                                    ; $5f66: $f8 $7f
	cp a                                             ; $5f68: $bf
	rst $38                                          ; $5f69: $ff
	sbc a                                            ; $5f6a: $9f
	ret nz                                           ; $5f6b: $c0

	ldh a, [$fc]                                     ; $5f6c: $f0 $fc
	sbc $ff                                          ; $5f6e: $de $ff
	sbc l                                            ; $5f70: $9d
	db $fc                                           ; $5f71: $fc
	ldh [$dc], a                                     ; $5f72: $e0 $dc
	rst $38                                          ; $5f74: $ff
	sbc l                                            ; $5f75: $9d
	or $fd                                           ; $5f76: $f6 $fd
	ld a, b                                          ; $5f78: $78
	ld a, b                                          ; $5f79: $78
	ld a, e                                          ; $5f7a: $7b
	inc d                                            ; $5f7b: $14
	sbc b                                            ; $5f7c: $98
	ld hl, sp+$0e                                    ; $5f7d: $f8 $0e
	inc bc                                           ; $5f7f: $03
	adc l                                            ; $5f80: $8d
	sbc e                                            ; $5f81: $9b
	inc sp                                           ; $5f82: $33
	ld a, a                                          ; $5f83: $7f
	ld a, e                                          ; $5f84: $7b
	ld h, e                                          ; $5f85: $63
	sbc d                                            ; $5f86: $9a
	add b                                            ; $5f87: $80
	ld e, $3c                                        ; $5f88: $1e $3c
	ld a, h                                          ; $5f8a: $7c
	rst $38                                          ; $5f8b: $ff
	ld a, b                                          ; $5f8c: $78
	dec sp                                           ; $5f8d: $3b
	sbc [hl]                                         ; $5f8e: $9e
	jr nz, jr_056_6009                               ; $5f8f: $20 $78

	db $eb                                           ; $5f91: $eb
	sbc [hl]                                         ; $5f92: $9e
	ld hl, sp+$71                                    ; $5f93: $f8 $71
	ld [hl], a                                       ; $5f95: $77
	sub l                                            ; $5f96: $95
	inc bc                                           ; $5f97: $03
	ld b, $fc                                        ; $5f98: $06 $fc
	ld e, $00                                        ; $5f9a: $1e $00
	nop                                              ; $5f9c: $00
	inc bc                                           ; $5f9d: $03
	call nc, Call_056_5c54                           ; $5f9e: $d4 $54 $5c
	db $dd                                           ; $5fa1: $dd
	ld c, d                                          ; $5fa2: $4a
	sbc [hl]                                         ; $5fa3: $9e
	ld l, d                                          ; $5fa4: $6a
	halt                                             ; $5fa5: $76
	ld h, l                                          ; $5fa6: $65
	rst SubAFromDE                                          ; $5fa7: $df
	ld a, a                                          ; $5fa8: $7f
	rst SubAFromDE                                          ; $5fa9: $df
	rst $38                                          ; $5faa: $ff
	adc [hl]                                         ; $5fab: $8e
	cp c                                             ; $5fac: $b9
	xor e                                            ; $5fad: $ab
	cp c                                             ; $5fae: $b9
	xor d                                            ; $5faf: $aa
	cp c                                             ; $5fb0: $b9
	xor b                                            ; $5fb1: $a8
	cp c                                             ; $5fb2: $b9
	xor h                                            ; $5fb3: $ac
	xor $fc                                          ; $5fb4: $ee $fc
	xor $fd                                          ; $5fb6: $ee $fd
	xor $ff                                          ; $5fb8: $ee $ff
	xor $f7                                          ; $5fba: $ee $f7
	ret nz                                           ; $5fbc: $c0

	sbc $e0                                          ; $5fbd: $de $e0
	ld a, c                                          ; $5fbf: $79
	halt                                             ; $5fc0: $76
	sbc [hl]                                         ; $5fc1: $9e
	db $fc                                           ; $5fc2: $fc
	ld sp, hl                                        ; $5fc3: $f9
	sub a                                            ; $5fc4: $97
	pop bc                                           ; $5fc5: $c1
	ld b, c                                          ; $5fc6: $41
	ld b, e                                          ; $5fc7: $43
	ld h, e                                          ; $5fc8: $63
	ld l, e                                          ; $5fc9: $6b
	ld a, e                                          ; $5fca: $7b
	ld a, c                                          ; $5fcb: $79
	ld sp, hl                                        ; $5fcc: $f9
	db $db                                           ; $5fcd: $db
	dec b                                            ; $5fce: $05
	rst SubAFromDE                                          ; $5fcf: $df
	rlca                                             ; $5fd0: $07
	ld a, a                                          ; $5fd1: $7f
	dec [hl]                                         ; $5fd2: $35
	sbc c                                            ; $5fd3: $99
	add b                                            ; $5fd4: $80
	sub b                                            ; $5fd5: $90
	sbc b                                            ; $5fd6: $98
	jr c, jr_056_6051                                ; $5fd7: $38 $78

	ld hl, sp+$61                                    ; $5fd9: $f8 $61
	push bc                                          ; $5fdb: $c5
	jp c, $d980                                      ; $5fdc: $da $80 $d9

	rst $38                                          ; $5fdf: $ff
	ld b, l                                          ; $5fe0: $45
	ld d, b                                          ; $5fe1: $50
	ld b, a                                          ; $5fe2: $47
	ldh a, [$df]                                     ; $5fe3: $f0 $df
	ldh [$6f], a                                     ; $5fe5: $e0 $6f
	jp z, $9ae9                                      ; $5fe7: $ca $e9 $9a

	push af                                          ; $5fea: $f5
	ccf                                              ; $5feb: $3f
	ld e, e                                          ; $5fec: $5b
	inc c                                            ; $5fed: $0c
	ld b, $78                                        ; $5fee: $06 $78
	ld a, [hl]                                       ; $5ff0: $7e
	rst SubAFromDE                                          ; $5ff1: $df
	ld a, a                                          ; $5ff2: $7f
	ld a, c                                          ; $5ff3: $79
	nop                                              ; $5ff4: $00
	sbc $07                                          ; $5ff5: $de $07
	sub e                                            ; $5ff7: $93
	nop                                              ; $5ff8: $00
	or b                                             ; $5ff9: $b0
	call z, $3af7                                    ; $5ffa: $cc $f7 $3a
	rra                                              ; $5ffd: $1f
	add a                                            ; $5ffe: $87
	add e                                            ; $5fff: $83
	rst $38                                          ; $6000: $ff
	rst GetHLinHL                                          ; $6001: $cf
	di                                               ; $6002: $f3
	ld hl, sp+$74                                    ; $6003: $f8 $74
	ld [hl], c                                       ; $6005: $71
	adc a                                            ; $6006: $8f
	ld l, h                                          ; $6007: $6c
	ld a, [hl+]                                      ; $6008: $2a

jr_056_6009:
	inc [hl]                                         ; $6009: $34
	ld a, [de]                                       ; $600a: $1a
	adc c                                            ; $600b: $89
	ld c, [hl]                                       ; $600c: $4e
	and l                                            ; $600d: $a5
	sub $f3                                          ; $600e: $d6 $f3
	push af                                          ; $6010: $f5
	ei                                               ; $6011: $fb
	db $fd                                           ; $6012: $fd
	ld a, [hl]                                       ; $6013: $7e
	cp l                                             ; $6014: $bd
	ld e, [hl]                                       ; $6015: $5e
	xor a                                            ; $6016: $af
	sbc $03                                          ; $6017: $de $03
	rst SubAFromDE                                          ; $6019: $df
	ld bc, $819c                                     ; $601a: $01 $9c $81
	ld b, b                                          ; $601d: $40
	add c                                            ; $601e: $81
	ld l, l                                          ; $601f: $6d
	sub e                                            ; $6020: $93
	sub l                                            ; $6021: $95
	cp a                                             ; $6022: $bf
	ld a, a                                          ; $6023: $7f
	db $ec                                           ; $6024: $ec
	call c, $d8e8                                    ; $6025: $dc $e8 $d8
	or b                                             ; $6028: $b0
	pop af                                           ; $6029: $f1
	and d                                            ; $602a: $a2
	push hl                                          ; $602b: $e5
	ld l, l                                          ; $602c: $6d
	ld d, c                                          ; $602d: $51
	add h                                            ; $602e: $84
	db $fd                                           ; $602f: $fd
	ld a, [$0518]                                    ; $6030: $fa $18 $05
	dec hl                                           ; $6033: $2b
	ld d, h                                          ; $6034: $54
	and d                                            ; $6035: $a2
	ld b, l                                          ; $6036: $45
	adc d                                            ; $6037: $8a
	ld d, h                                          ; $6038: $54
	rst $38                                          ; $6039: $ff
	ld a, [$abd4]                                    ; $603a: $fa $d4 $ab
	ld e, a                                          ; $603d: $5f
	cp a                                             ; $603e: $bf
	ld a, a                                          ; $603f: $7f
	rst $38                                          ; $6040: $ff
	cp $c0                                           ; $6041: $fe $c0
	ld hl, $8f47                                     ; $6043: $21 $47 $8f
	ccf                                              ; $6046: $3f
	ld a, a                                          ; $6047: $7f
	rst $38                                          ; $6048: $ff
	ld bc, $ae6a                                     ; $6049: $01 $6a $ae
	sub l                                            ; $604c: $95
	rrca                                             ; $604d: $0f
	ld [hl], e                                       ; $604e: $73
	ld sp, hl                                        ; $604f: $f9
	push af                                          ; $6050: $f5

jr_056_6051:
	jp hl                                            ; $6051: $e9


	rst SubAFromHL                                          ; $6052: $d7
	xor e                                            ; $6053: $ab
	ld d, e                                          ; $6054: $53
	pop af                                           ; $6055: $f1
	db $fc                                           ; $6056: $fc
	sbc $fe                                          ; $6057: $de $fe
	sbc $fc                                          ; $6059: $de $fc
	ld a, d                                          ; $605b: $7a
	dec h                                            ; $605c: $25
	rst SubAFromDE                                          ; $605d: $df
	ret nz                                           ; $605e: $c0

	ld a, [hl]                                       ; $605f: $7e
	xor d                                            ; $6060: $aa
	sbc c                                            ; $6061: $99
	ldh [$d0], a                                     ; $6062: $e0 $d0
	add sp, $55                                      ; $6064: $e8 $55

jr_056_6066:
	ld l, d                                          ; $6066: $6a
	ld [hl], l                                       ; $6067: $75
	sbc $3f                                          ; $6068: $de $3f
	sub a                                            ; $606a: $97
	rra                                              ; $606b: $1f
	nop                                              ; $606c: $00
	add b                                            ; $606d: $80
	pop af                                           ; $606e: $f1
	rst $38                                          ; $606f: $ff
	rlca                                             ; $6070: $07
	ei                                               ; $6071: $fb
	ld a, h                                          ; $6072: $7c
	ld l, a                                          ; $6073: $6f
	dec sp                                           ; $6074: $3b
	ld a, a                                          ; $6075: $7f
	pop hl                                           ; $6076: $e1
	adc d                                            ; $6077: $8a
	xor [hl]                                         ; $6078: $ae
	ld a, [hl+]                                      ; $6079: $2a
	xor [hl]                                         ; $607a: $ae
	xor d                                            ; $607b: $aa
	xor $ba                                          ; $607c: $ee $ba
	ld a, $3a                                        ; $607e: $3e $3a
	ld a, a                                          ; $6080: $7f
	ld a, a                                          ; $6081: $7f
	ld a, e                                          ; $6082: $7b
	ld a, a                                          ; $6083: $7f
	ld a, e                                          ; $6084: $7b
	rst FarCall                                          ; $6085: $f7
	inc sp                                           ; $6086: $33
	scf                                              ; $6087: $37
	or l                                             ; $6088: $b5
	xor h                                            ; $6089: $ac
	or h                                             ; $608a: $b4
	xor h                                            ; $608b: $ac
	cp h                                             ; $608c: $bc
	sbc $be                                          ; $608d: $de $be
	ld a, [hl]                                       ; $608f: $7e
	add $79                                          ; $6090: $c6 $79
	ldh [rSVBK], a                                   ; $6092: $e0 $70
	sbc $79                                          ; $6094: $de $79
	ld c, $78                                        ; $6096: $0e $78
	ld b, e                                          ; $6098: $43
	ld [hl], a                                       ; $6099: $77
	dec e                                            ; $609a: $1d
	ld a, e                                          ; $609b: $7b
	cp $8a                                           ; $609c: $fe $8a
	ret nz                                           ; $609e: $c0

	di                                               ; $609f: $f3
	di                                               ; $60a0: $f3
	db $eb                                           ; $60a1: $eb
	db $eb                                           ; $60a2: $eb
	set 1, e                                         ; $60a3: $cb $cb
	adc e                                            ; $60a5: $8b
	adc e                                            ; $60a6: $8b
	ld c, $0e                                        ; $60a7: $0e $0e
	ld e, $1e                                        ; $60a9: $1e $1e
	ld a, $3e                                        ; $60ab: $3e $3e
	ld a, [hl]                                       ; $60ad: $7e
	ld a, [hl]                                       ; $60ae: $7e
	add sp, -$18                                     ; $60af: $e8 $e8
	db $ec                                           ; $60b1: $ec
	db $ec                                           ; $60b2: $ec
	sbc $cc                                          ; $60b3: $de $cc
	sbc [hl]                                         ; $60b5: $9e
	call c, $10dd                                    ; $60b6: $dc $dd $10
	db $dd                                           ; $60b9: $dd
	jr nc, @+$7e                                     ; $60ba: $30 $7c

	ld [$a09e], a                                    ; $60bc: $ea $9e $a0
	sbc $90                                          ; $60bf: $de $90
	rst SubAFromDE                                          ; $60c1: $df
	adc b                                            ; $60c2: $88
	call c, Call_056_7eff                            ; $60c3: $dc $ff $7e
	jr z, jr_056_6066                                ; $60c6: $28 $9e

	xor a                                            ; $60c8: $af
	ld b, $c0                                        ; $60c9: $06 $c0
	ld a, e                                          ; $60cb: $7b
	ld h, c                                          ; $60cc: $61
	sbc [hl]                                         ; $60cd: $9e
	ldh [rPCM34], a                                  ; $60ce: $e0 $77
	ld e, l                                          ; $60d0: $5d
	jp hl                                            ; $60d1: $e9


	ld [hl], h                                       ; $60d2: $74
	ret c                                            ; $60d3: $d8

	ld l, a                                          ; $60d4: $6f
	ld hl, sp+$6e                                    ; $60d5: $f8 $6e
	ld e, [hl]                                       ; $60d7: $5e
	sub a                                            ; $60d8: $97
	ld b, c                                          ; $60d9: $41
	and c                                            ; $60da: $a1
	jp nc, Jump_056_70e9                             ; $60db: $d2 $e9 $70

	inc a                                            ; $60de: $3c
	ld a, $5e                                        ; $60df: $3e $5e
	ld a, d                                          ; $60e1: $7a
	db $f4                                           ; $60e2: $f4
	ld a, e                                          ; $60e3: $7b
	ld h, l                                          ; $60e4: $65
	rst SubAFromDE                                          ; $60e5: $df
	ccf                                              ; $60e6: $3f
	sub l                                            ; $60e7: $95
	db $e3                                           ; $60e8: $e3
	db $d3                                           ; $60e9: $d3
	and c                                            ; $60ea: $a1
	ld b, c                                          ; $60eb: $41
	add b                                            ; $60ec: $80
	ld b, b                                          ; $60ed: $40
	add b                                            ; $60ee: $80
	ld b, b                                          ; $60ef: $40
	sbc a                                            ; $60f0: $9f
	cpl                                              ; $60f1: $2f
	ld a, d                                          ; $60f2: $7a
	ldh a, [c]                                       ; $60f3: $f2
	ld a, e                                          ; $60f4: $7b
	cp $97                                           ; $60f5: $fe $97
	ld b, b                                          ; $60f7: $40
	ld hl, $a180                                     ; $60f8: $21 $80 $a1
	ret nc                                           ; $60fb: $d0

	ld b, c                                          ; $60fc: $41
	and b                                            ; $60fd: $a0
	ld [hl], c                                       ; $60fe: $71
	ld a, c                                          ; $60ff: $79
	ld h, c                                          ; $6100: $61
	ld a, h                                          ; $6101: $7c
	dec a                                            ; $6102: $3d
	sbc $ff                                          ; $6103: $de $ff
	sub [hl]                                         ; $6105: $96
	jp nz, $82c9                                     ; $6106: $c2 $c9 $82

	add l                                            ; $6109: $85
	add d                                            ; $610a: $82
	add l                                            ; $610b: $85
	adc d                                            ; $610c: $8a
	push bc                                          ; $610d: $c5
	db $fd                                           ; $610e: $fd
	ld l, c                                          ; $610f: $69
	nop                                              ; $6110: $00
	sub a                                            ; $6111: $97
	and c                                            ; $6112: $a1
	ld b, a                                          ; $6113: $47
	adc a                                            ; $6114: $8f
	rra                                              ; $6115: $1f
	xor a                                            ; $6116: $af
	ld e, a                                          ; $6117: $5f
	cp a                                             ; $6118: $bf
	ld e, a                                          ; $6119: $5f
	reti                                             ; $611a: $d9


	rst $38                                          ; $611b: $ff
	ld a, d                                          ; $611c: $7a
	xor l                                            ; $611d: $ad
	sbc d                                            ; $611e: $9a
	push af                                          ; $611f: $f5
	ld a, [$eaf5]                                    ; $6120: $fa $f5 $ea
	push de                                          ; $6123: $d5
	reti                                             ; $6124: $d9


	rst $38                                          ; $6125: $ff
	ld a, [hl]                                       ; $6126: $7e
	add $89                                          ; $6127: $c6 $89
	xor d                                            ; $6129: $aa
	ld d, e                                          ; $612a: $53
	and [hl]                                         ; $612b: $a6
	ld d, l                                          ; $612c: $55
	and [hl]                                         ; $612d: $a6
	ld d, l                                          ; $612e: $55
	db $fc                                           ; $612f: $fc
	db $fc                                           ; $6130: $fc
	db $fd                                           ; $6131: $fd
	db $fc                                           ; $6132: $fc
	ld sp, hl                                        ; $6133: $f9
	ld a, [$faf9]                                    ; $6134: $fa $f9 $fa
	ldh [$f0], a                                     ; $6137: $e0 $f0
	db $fc                                           ; $6139: $fc
	ld a, [$fefd]                                    ; $613a: $fa $fd $fe
	push af                                          ; $613d: $f5
	cp $76                                           ; $613e: $fe $76
	ld b, d                                          ; $6140: $42
	ld a, a                                          ; $6141: $7f
	ld a, h                                          ; $6142: $7c

Jump_056_6143:
	add b                                            ; $6143: $80
	ld a, [bc]                                       ; $6144: $0a
	ld bc, $50a0                                     ; $6145: $01 $a0 $50
	cp b                                             ; $6148: $b8
	ld e, c                                          ; $6149: $59
	ld a, $81                                        ; $614a: $3e $81
	db $e4                                           ; $614c: $e4
	ld b, e                                          ; $614d: $43
	ld b, b                                          ; $614e: $40
	and b                                            ; $614f: $a0
	ld b, b                                          ; $6150: $40
	and b                                            ; $6151: $a0
	pop bc                                           ; $6152: $c1
	cp $f8                                           ; $6153: $fe $f8
	ldh [$36], a                                     ; $6155: $e0 $36
	ld l, d                                          ; $6157: $6a
	ld [hl], l                                       ; $6158: $75
	xor c                                            ; $6159: $a9
	ld sp, $c3a3                                     ; $615a: $31 $a3 $c3
	and e                                            ; $615d: $a3
	dec hl                                           ; $615e: $2b
	scf                                              ; $615f: $37
	dec hl                                           ; $6160: $2b
	ld [hl], a                                       ; $6161: $77
	db $eb                                           ; $6162: $eb
	add d                                            ; $6163: $82
	ld h, c                                          ; $6164: $61
	ld hl, $ae01                                     ; $6165: $21 $01 $ae
	rst SubAFromDE                                          ; $6168: $df
	ld b, a                                          ; $6169: $47
	ld c, a                                          ; $616a: $4f
	ld b, e                                          ; $616b: $43
	ld h, a                                          ; $616c: $67
	ld h, c                                          ; $616d: $61
	ld h, e                                          ; $616e: $63
	rst $38                                          ; $616f: $ff
	rst AddAOntoHL                                          ; $6170: $ef
	rst AddAOntoHL                                          ; $6171: $ef
	rst SubAFromBC                                          ; $6172: $e7
	rst SubAFromBC                                          ; $6173: $e7
	jp $c1c3                                         ; $6174: $c3 $c3 $c1


	ld e, a                                          ; $6177: $5f
	ccf                                              ; $6178: $3f

Call_056_6179:
	rra                                              ; $6179: $1f
	cpl                                              ; $617a: $2f
	sub a                                            ; $617b: $97
	adc a                                            ; $617c: $8f
	add a                                            ; $617d: $87
	res 4, b                                         ; $617e: $cb $a0
	ret nz                                           ; $6180: $c0

	ld a, d                                          ; $6181: $7a
	ld a, l                                          ; $6182: $7d
	ld a, l                                          ; $6183: $7d
	ld a, b                                          ; $6184: $78
	sbc d                                            ; $6185: $9a
	db $f4                                           ; $6186: $f4
	push de                                          ; $6187: $d5
	push de                                          ; $6188: $d5
	push af                                          ; $6189: $f5
	push hl                                          ; $618a: $e5
	sbc $ed                                          ; $618b: $de $ed
	sbc d                                            ; $618d: $9a
	db $ec                                           ; $618e: $ec
	ld a, $3e                                        ; $618f: $3e $3e
	ld e, $1e                                        ; $6191: $1e $1e
	sbc $16                                          ; $6193: $de $16
	sub [hl]                                         ; $6195: $96
	rla                                              ; $6196: $17
	call z, $ccdc                                    ; $6197: $cc $dc $cc
	sbc [hl]                                         ; $619a: $9e

Jump_056_619b:
	adc [hl]                                         ; $619b: $8e
	sbc [hl]                                         ; $619c: $9e
	rrca                                             ; $619d: $0f
	rra                                              ; $619e: $1f
	sbc $30                                          ; $619f: $de $30
	sbc $70                                          ; $61a1: $de $70
	rst SubAFromDE                                          ; $61a3: $df
	ldh a, [$df]                                     ; $61a4: $f0 $df
	add h                                            ; $61a6: $84
	rst SubAFromDE                                          ; $61a7: $df
	ld b, d                                          ; $61a8: $42
	rst SubAFromDE                                          ; $61a9: $df
	ld hl, $1095                                     ; $61aa: $21 $95 $10
	ld [$afff], sp                                   ; $61ad: $08 $ff $af
	ld [hl], a                                       ; $61b0: $77
	ld l, e                                          ; $61b1: $6b
	inc sp                                           ; $61b2: $33
	inc sp                                           ; $61b3: $33
	add hl, de                                       ; $61b4: $19
	add hl, bc                                       ; $61b5: $09
	ld b, $c0                                        ; $61b6: $06 $c0
	sbc c                                            ; $61b8: $99
	ld l, a                                          ; $61b9: $6f
	sbc c                                            ; $61ba: $99
	ret nz                                           ; $61bb: $c0

	adc $86                                          ; $61bc: $ce $86
	add a                                            ; $61be: $87
	ld e, a                                          ; $61bf: $5f

Jump_056_61c0:
	add sp, $78                                      ; $61c0: $e8 $78
	ld d, d                                          ; $61c2: $52
	sbc h                                            ; $61c3: $9c
	ld h, b                                          ; $61c4: $60
	ld c, $38                                        ; $61c5: $0e $38
	ld d, a                                          ; $61c7: $57
	ldh a, [$9a]                                     ; $61c8: $f0 $9a
	ld b, $08                                        ; $61ca: $06 $08
	nop                                              ; $61cc: $00
	ld bc, $7a19                                     ; $61cd: $01 $19 $7a
	ld b, b                                          ; $61d0: $40
	ei                                               ; $61d1: $fb
	ld a, [hl]                                       ; $61d2: $7e
	call $3b98                                       ; $61d3: $cd $98 $3b
	jr z, jr_056_621c                                ; $61d6: $28 $44

	adc $d7                                          ; $61d8: $ce $d7
	rst FarCall                                          ; $61da: $f7
	rra                                              ; $61db: $1f
	db $dd                                           ; $61dc: $dd
	rrca                                             ; $61dd: $0f
	sub h                                            ; $61de: $94
	rlca                                             ; $61df: $07
	rrca                                             ; $61e0: $0f
	rrca                                             ; $61e1: $0f
	jr nz, @+$12                                     ; $61e2: $20 $10

	jr nc, @+$12                                     ; $61e4: $30 $10

	jr jr_056_6220                                   ; $61e6: $18 $38

	db $fc                                           ; $61e8: $fc
	db $fc                                           ; $61e9: $fc
	ld a, d                                          ; $61ea: $7a
	pop de                                           ; $61eb: $d1
	call c, $97ff                                    ; $61ec: $dc $ff $97
	jr nc, jr_056_624a                               ; $61ef: $30 $59

	ld a, $5d                                        ; $61f1: $3e $5d
	ld l, $5d                                        ; $61f3: $2e $5d
	ld l, $57                                        ; $61f5: $2e $57
	reti                                             ; $61f7: $d9


	rst $38                                          ; $61f8: $ff
	sub a                                            ; $61f9: $97
	jp z, $c645                                      ; $61fa: $ca $45 $c6

	ld b, l                                          ; $61fd: $45
	and $67                                          ; $61fe: $e6 $67
	and $67                                          ; $6200: $e6 $67
	reti                                             ; $6202: $d9


	rst $38                                          ; $6203: $ff
	ld a, [hl]                                       ; $6204: $7e
	add $7f                                          ; $6205: $c6 $7f
	cp $9c                                           ; $6207: $fe $9c
	xor a                                            ; $6209: $af
	ld d, a                                          ; $620a: $57
	xor a                                            ; $620b: $af
	ld h, e                                          ; $620c: $63
	ldh [$7e], a                                     ; $620d: $e0 $7e
	add $73                                          ; $620f: $c6 $73
	cp $9e                                           ; $6211: $fe $9e
	push af                                          ; $6213: $f5
	reti                                             ; $6214: $d9


	rst $38                                          ; $6215: $ff
	add d                                            ; $6216: $82
	and [hl]                                         ; $6217: $a6
	ld d, h                                          ; $6218: $54
	and [hl]                                         ; $6219: $a6
	ld e, h                                          ; $621a: $5c
	xor d                                            ; $621b: $aa

jr_056_621c:
	ld c, h                                          ; $621c: $4c
	xor b                                            ; $621d: $a8
	ld b, h                                          ; $621e: $44
	ld sp, hl                                        ; $621f: $f9

jr_056_6220:
	ei                                               ; $6220: $fb
	ld sp, hl                                        ; $6221: $f9
	di                                               ; $6222: $f3
	push af                                          ; $6223: $f5
	di                                               ; $6224: $f3
	rst FarCall                                          ; $6225: $f7
	ei                                               ; $6226: $fb
	push af                                          ; $6227: $f5
	ld l, d                                          ; $6228: $6a
	push de                                          ; $6229: $d5
	ld h, d                                          ; $622a: $62
	ld b, c                                          ; $622b: $41
	nop                                              ; $622c: $00
	ld bc, $0a00                                     ; $622d: $01 $00 $0a
	sub l                                            ; $6230: $95
	ld a, [hl+]                                      ; $6231: $2a
	sbc l                                            ; $6232: $9d
	cp [hl]                                          ; $6233: $be
	ld a, c                                          ; $6234: $79
	or d                                             ; $6235: $b2
	adc [hl]                                         ; $6236: $8e
	ld h, b                                          ; $6237: $60
	and b                                            ; $6238: $a0
	ld [hl], b                                       ; $6239: $70
	sub b                                            ; $623a: $90
	ld d, b                                          ; $623b: $50
	or b                                             ; $623c: $b0
	ld c, b                                          ; $623d: $48
	xor b                                            ; $623e: $a8
	cp $78                                           ; $623f: $fe $78
	cp b                                             ; $6241: $b8
	ld [hl], h                                       ; $6242: $74
	cp d                                             ; $6243: $ba
	ld d, l                                          ; $6244: $55
	cp d                                             ; $6245: $ba
	ld e, l                                          ; $6246: $5d
	inc hl                                           ; $6247: $23
	db $dd                                           ; $6248: $dd
	inc bc                                           ; $6249: $03

jr_056_624a:
	jp c, $9601                                      ; $624a: $da $01 $96

	add c                                            ; $624d: $81
	ld b, e                                          ; $624e: $43
	and e                                            ; $624f: $a3
	ld d, e                                          ; $6250: $53
	ld b, d                                          ; $6251: $42
	add b                                            ; $6252: $80
	add c                                            ; $6253: $81
	pop bc                                           ; $6254: $c1
	add b                                            ; $6255: $80
	ld a, c                                          ; $6256: $79
	sub a                                            ; $6257: $97
	rst SubAFromDE                                          ; $6258: $df
	pop bc                                           ; $6259: $c1
	sbc [hl]                                         ; $625a: $9e
	ret nz                                           ; $625b: $c0

	db $dd                                           ; $625c: $dd
	add b                                            ; $625d: $80
	sub h                                            ; $625e: $94
	nop                                              ; $625f: $00
	add $e2                                          ; $6260: $c6 $e2
	db $e3                                           ; $6262: $e3
	ld h, c                                          ; $6263: $61
	ld [hl], c                                       ; $6264: $71
	ldh a, [$b8]                                     ; $6265: $f0 $b8
	xor b                                            ; $6267: $a8
	ld hl, sp-$04                                    ; $6268: $f8 $fc
	ld a, c                                          ; $626a: $79
	cpl                                              ; $626b: $2f
	sbc $7f                                          ; $626c: $de $7f
	add a                                            ; $626e: $87
	inc c                                            ; $626f: $0c
	ld [de], a                                       ; $6270: $12
	ld a, [bc]                                       ; $6271: $0a
	jp z, $f5e6                                      ; $6272: $ca $e6 $f5

	ld a, e                                          ; $6275: $7b
	dec sp                                           ; $6276: $3b
	rla                                              ; $6277: $17
	rlca                                             ; $6278: $07
	inc bc                                           ; $6279: $03
	inc bc                                           ; $627a: $03
	dec bc                                           ; $627b: $0b
	dec bc                                           ; $627c: $0b
	add l                                            ; $627d: $85
	push bc                                          ; $627e: $c5
	daa                                              ; $627f: $27
	rla                                              ; $6280: $17
	daa                                              ; $6281: $27
	ld d, a                                          ; $6282: $57
	inc hl                                           ; $6283: $23
	ld d, e                                          ; $6284: $53
	inc hl                                           ; $6285: $23
	ld d, c                                          ; $6286: $51
	db $dd                                           ; $6287: $dd
	ld hl, sp-$22                                    ; $6288: $f8 $de
	db $fc                                           ; $628a: $fc
	sub a                                            ; $628b: $97
	cp $80                                           ; $628c: $fe $80
	ret nz                                           ; $628e: $c0

	ldh [$f0], a                                     ; $628f: $e0 $f0
	ld hl, sp-$04                                    ; $6291: $f8 $fc
	cp $63                                           ; $6293: $fe $63
	nop                                              ; $6295: $00
	sbc $40                                          ; $6296: $de $40
	call c, Call_056_7420                            ; $6298: $dc $20 $74
	or d                                             ; $629b: $b2
	rst SubAFromDE                                          ; $629c: $df
	ld a, a                                          ; $629d: $7f
	ld a, $c0                                        ; $629e: $3e $c0
	ld b, h                                          ; $62a0: $44
	nop                                              ; $62a1: $00
	rst SubAFromDE                                          ; $62a2: $df
	ld [hl], a                                       ; $62a3: $77
	sbc $66                                          ; $62a4: $de $66
	sbc [hl]                                         ; $62a6: $9e
	ld h, d                                          ; $62a7: $62
	call c, $9b77                                    ; $62a8: $dc $77 $9b
	ld [hl], d                                       ; $62ab: $72
	ld h, [hl]                                       ; $62ac: $66
	ld d, l                                          ; $62ad: $55
	ld d, [hl]                                       ; $62ae: $56
	ld l, a                                          ; $62af: $6f
	or $99                                           ; $62b0: $f6 $99
	halt                                             ; $62b2: $76
	ld h, l                                          ; $62b3: $65
	ld d, h                                          ; $62b4: $54
	ld b, l                                          ; $62b5: $45
	ld d, [hl]                                       ; $62b6: $56
	daa                                              ; $62b7: $27
	ld l, a                                          ; $62b8: $6f
	or $df                                           ; $62b9: $f6 $df
	ld b, h                                          ; $62bb: $44
	ld l, a                                          ; $62bc: $6f
	or $9e                                           ; $62bd: $f6 $9e
	ld [hl], l                                       ; $62bf: $75
	ld a, e                                          ; $62c0: $7b
	or $9d                                           ; $62c1: $f6 $9d
	ld b, l                                          ; $62c3: $45
	ld h, a                                          ; $62c4: $67
	sbc $77                                          ; $62c5: $de $77
	call c, $9d44                                    ; $62c7: $dc $44 $9d
	ld b, l                                          ; $62ca: $45
	ld h, e                                          ; $62cb: $63
	ld e, a                                          ; $62cc: $5f
	or $9e                                           ; $62cd: $f6 $9e
	inc sp                                           ; $62cf: $33
	ld l, a                                          ; $62d0: $6f
	or $9a                                           ; $62d1: $f6 $9a
	ld b, l                                          ; $62d3: $45
	ld d, l                                          ; $62d4: $55
	ld d, e                                          ; $62d5: $53
	inc sp                                           ; $62d6: $33
	scf                                              ; $62d7: $37
	ld l, a                                          ; $62d8: $6f
	db $ec                                           ; $62d9: $ec
	ld a, a                                          ; $62da: $7f
	rst FarCall                                          ; $62db: $f7
	ccf                                              ; $62dc: $3f
	or $9e                                           ; $62dd: $f6 $9e
	ld b, l                                          ; $62df: $45
	sbc $33                                          ; $62e0: $de $33
	sbc [hl]                                         ; $62e2: $9e
	ld [hl], a                                       ; $62e3: $77
	ld hl, sp-$76                                    ; $62e4: $f8 $8a
	ld sp, hl                                        ; $62e6: $f9
	reti                                             ; $62e7: $d9


	rst $38                                          ; $62e8: $ff
	inc bc                                           ; $62e9: $03
	ldh a, [$0b]                                     ; $62ea: $f0 $0b
	ldh a, [hDisp0_SCX]                                     ; $62ec: $f0 $84
	ld a, [bc]                                       ; $62ee: $0a
	dec d                                            ; $62ef: $15
	ld a, [hl+]                                      ; $62f0: $2a
	dec d                                            ; $62f1: $15
	ld a, [hl+]                                      ; $62f2: $2a
	ld d, l                                          ; $62f3: $55
	xor d                                            ; $62f4: $aa
	ld d, l                                          ; $62f5: $55
	push af                                          ; $62f6: $f5
	ld [$ead5], a                                    ; $62f7: $ea $d5 $ea
	push de                                          ; $62fa: $d5
	xor d                                            ; $62fb: $aa
	ld d, l                                          ; $62fc: $55
	xor d                                            ; $62fd: $aa
	xor [hl]                                         ; $62fe: $ae
	ld d, [hl]                                       ; $62ff: $56
	xor [hl]                                         ; $6300: $ae
	ld e, [hl]                                       ; $6301: $5e
	xor l                                            ; $6302: $ad
	ld e, l                                          ; $6303: $5d
	xor l                                            ; $6304: $ad
	ld e, d                                          ; $6305: $5a
	ld d, a                                          ; $6306: $57
	xor a                                            ; $6307: $af
	ld e, a                                          ; $6308: $5f
	ld [hl], e                                       ; $6309: $73
	cp $84                                           ; $630a: $fe $84
	ld c, l                                          ; $630c: $4d
	adc d                                            ; $630d: $8a
	and l                                            ; $630e: $a5
	and a                                            ; $630f: $a7
	ld l, e                                          ; $6310: $6b
	ld d, l                                          ; $6311: $55
	ld [hl-], a                                      ; $6312: $32
	xor b                                            ; $6313: $a8
	or $77                                           ; $6314: $f6 $77
	ld a, e                                          ; $6316: $7b
	ld a, c                                          ; $6317: $79
	or h                                             ; $6318: $b4
	cp d                                             ; $6319: $ba
	db $dd                                           ; $631a: $dd
	rst SubAFromDE                                          ; $631b: $df
	inc h                                            ; $631c: $24
	sub e                                            ; $631d: $93
	ld c, d                                          ; $631e: $4a
	inc c                                            ; $631f: $0c
	sub e                                            ; $6320: $93
	ld h, h                                          ; $6321: $64
	ld c, c                                          ; $6322: $49
	sub e                                            ; $6323: $93
	ei                                               ; $6324: $fb
	ld a, l                                          ; $6325: $7d
	cp a                                             ; $6326: $bf
	sbc $ff                                          ; $6327: $de $ff
	add b                                            ; $6329: $80
	cp $fc                                           ; $632a: $fe $fc
	add sp, -$6d                                     ; $632c: $e8 $93
	ld h, [hl]                                       ; $632e: $66
	sbc l                                            ; $632f: $9d
	add hl, sp                                       ; $6330: $39
	db $f4                                           ; $6331: $f4
	ret                                              ; $6332: $c9


	sub d                                            ; $6333: $92
	rst $38                                          ; $6334: $ff
	db $fc                                           ; $6335: $fc
	ld sp, hl                                        ; $6336: $f9
	db $e3                                           ; $6337: $e3
	add $08                                          ; $6338: $c6 $08
	jr nc, @+$62                                     ; $633a: $30 $60

	and h                                            ; $633c: $a4
	ld e, c                                          ; $633d: $59
	or $b8                                           ; $633e: $f6 $b8
	ld c, c                                          ; $6340: $49
	sub [hl]                                         ; $6341: $96
	add hl, hl                                       ; $6342: $29

Jump_056_6343:
	ld d, d                                          ; $6343: $52
	ld a, e                                          ; $6344: $7b
	and $89                                          ; $6345: $e6 $89
	rlca                                             ; $6347: $07
	rlca                                             ; $6348: $07
	sub h                                            ; $6349: $94
	rrca                                             ; $634a: $0f
	rra                                              ; $634b: $1f
	ccf                                              ; $634c: $3f
	inc bc                                           ; $634d: $03
	inc b                                            ; $634e: $04
	jr jr_056_63b1                                   ; $634f: $18 $60

	ret nz                                           ; $6351: $c0

	add e                                            ; $6352: $83
	ld c, $38                                        ; $6353: $0e $38
	ld [hl], a                                       ; $6355: $77
	db $d3                                           ; $6356: $d3
	adc [hl]                                         ; $6357: $8e
	db $fd                                           ; $6358: $fd
	ei                                               ; $6359: $fb
	db $fc                                           ; $635a: $fc
	ldh a, [rP1]                                     ; $635b: $f0 $00
	inc bc                                           ; $635d: $03
	rrca                                             ; $635e: $0f
	ld a, $fe                                        ; $635f: $3e $fe
	add d                                            ; $6361: $82
	ld b, $07                                        ; $6362: $06 $07
	push af                                          ; $6364: $f5
	rst AddAOntoHL                                          ; $6365: $ef
	ld e, a                                          ; $6366: $5f
	or c                                             ; $6367: $b1
	pop bc                                           ; $6368: $c1
	sbc $01                                          ; $6369: $de $01
	db $db                                           ; $636b: $db
	add h                                            ; $636c: $84
	adc c                                            ; $636d: $89
	sub h                                            ; $636e: $94
	inc d                                            ; $636f: $14
	rst SubAFromDE                                          ; $6370: $df
	adc $ce                                          ; $6371: $ce $ce
	sub $d7                                          ; $6373: $d6 $d7
	or a                                             ; $6375: $b7
	rst $38                                          ; $6376: $ff
	or a                                             ; $6377: $b7
	or h                                             ; $6378: $b4
	and h                                            ; $6379: $a4
	ld l, h                                          ; $637a: $6c
	ld c, d                                          ; $637b: $4a
	ld b, [hl]                                       ; $637c: $46
	ld b, [hl]                                       ; $637d: $46
	and d                                            ; $637e: $a2
	and d                                            ; $637f: $a2
	rst GetHLinHL                                          ; $6380: $cf
	rst GetHLinHL                                          ; $6381: $cf
	rst JumpTable                                          ; $6382: $c7
	ld b, a                                          ; $6383: $47
	db $dd                                           ; $6384: $dd
	ld b, e                                          ; $6385: $43
	ld b, a                                          ; $6386: $47
	ld c, b                                          ; $6387: $48
	add b                                            ; $6388: $80
	cp $fa                                           ; $6389: $fe $fa
	push af                                          ; $638b: $f5
	ld a, [$eaf5]                                    ; $638c: $fa $f5 $ea
	push af                                          ; $638f: $f5
	ld [$0501], a                                    ; $6390: $ea $01 $05
	ld a, [bc]                                       ; $6393: $0a
	dec b                                            ; $6394: $05
	ld a, [bc]                                       ; $6395: $0a
	dec d                                            ; $6396: $15
	ld a, [bc]                                       ; $6397: $0a
	dec d                                            ; $6398: $15
	ld l, d                                          ; $6399: $6a
	ld [hl], h                                       ; $639a: $74
	ld a, $1f                                        ; $639b: $3e $1f
	rrca                                             ; $639d: $0f
	sub a                                            ; $639e: $97
	ld c, e                                          ; $639f: $4b
	add l                                            ; $63a0: $85
	dec d                                            ; $63a1: $15
	dec bc                                           ; $63a2: $0b
	add c                                            ; $63a3: $81
	add b                                            ; $63a4: $80
	ret nz                                           ; $63a5: $c0

	ld b, b                                          ; $63a6: $40
	and b                                            ; $63a7: $a0
	add b                                            ; $63a8: $80
	ld h, b                                          ; $63a9: $60
	nop                                              ; $63aa: $00
	ld d, l                                          ; $63ab: $55
	ld a, [hl+]                                      ; $63ac: $2a
	ld [hl], l                                       ; $63ad: $75
	ld a, $2f                                        ; $63ae: $3e $2f
	sub a                                            ; $63b0: $97

jr_056_63b1:
	dec de                                           ; $63b1: $1b
	rst $38                                          ; $63b2: $ff
	xor d                                            ; $63b3: $aa
	push de                                          ; $63b4: $d5
	adc d                                            ; $63b5: $8a
	ld b, c                                          ; $63b6: $41
	ld b, b                                          ; $63b7: $40
	jr nz, jr_056_63da                               ; $63b8: $20 $20

	nop                                              ; $63ba: $00
	ld b, b                                          ; $63bb: $40
	xor b                                            ; $63bc: $a8
	ld d, l                                          ; $63bd: $55
	xor d                                            ; $63be: $aa
	push de                                          ; $63bf: $d5
	ld [$fff5], a                                    ; $63c0: $ea $f5 $ff
	cp a                                             ; $63c3: $bf
	ld d, a                                          ; $63c4: $57
	xor d                                            ; $63c5: $aa
	ld d, l                                          ; $63c6: $55
	ld a, [hl+]                                      ; $63c7: $2a
	ld a, a                                          ; $63c8: $7f
	rst GetHLinHL                                          ; $63c9: $cf
	ld [bc], a                                       ; $63ca: $02
	ldh [rTAC], a                                    ; $63cb: $e0 $07
	ldh a, [$9b]                                     ; $63cd: $f0 $9b
	ld bc, $0102                                     ; $63cf: $01 $02 $01
	ld [bc], a                                       ; $63d2: $02
	ld a, e                                          ; $63d3: $7b
	add h                                            ; $63d4: $84
	ld a, e                                          ; $63d5: $7b
	ld [hl-], a                                      ; $63d6: $32
	ld a, a                                          ; $63d7: $7f
	cp $7b                                           ; $63d8: $fe $7b

jr_056_63da:
	ld [hl], h                                       ; $63da: $74
	ld a, d                                          ; $63db: $7a
	call Call_056_559d                               ; $63dc: $cd $9d $55
	xor e                                            ; $63df: $ab
	ld a, d                                          ; $63e0: $7a
	db $d3                                           ; $63e1: $d3
	ld a, e                                          ; $63e2: $7b
	ld sp, hl                                        ; $63e3: $f9
	adc a                                            ; $63e4: $8f
	xor d                                            ; $63e5: $aa
	ld d, h                                          ; $63e6: $54
	xor b                                            ; $63e7: $a8
	ld d, b                                          ; $63e8: $50
	and b                                            ; $63e9: $a0
	cp d                                             ; $63ea: $ba
	ld a, d                                          ; $63eb: $7a
	ld sp, hl                                        ; $63ec: $f9
	db $fd                                           ; $63ed: $fd
	db $fc                                           ; $63ee: $fc
	db $fc                                           ; $63ef: $fc
	cp $fe                                           ; $63f0: $fe $fe
	ld c, a                                          ; $63f2: $4f
	adc a                                            ; $63f3: $8f
	rrca                                             ; $63f4: $0f
	sbc $07                                          ; $63f5: $de $07
	rst SubAFromDE                                          ; $63f7: $df
	inc bc                                           ; $63f8: $03
	sub l                                            ; $63f9: $95
	sub a                                            ; $63fa: $97
	ld c, d                                          ; $63fb: $4a
	ld h, h                                          ; $63fc: $64
	add hl, sp                                       ; $63fd: $39
	sub d                                            ; $63fe: $92
	ld h, l                                          ; $63ff: $65
	ld c, e                                          ; $6400: $4b
	ld d, [hl]                                       ; $6401: $56
	rst AddAOntoHL                                          ; $6402: $ef
	rst FarCall                                          ; $6403: $f7
	ld [hl], d                                       ; $6404: $72
	pop de                                           ; $6405: $d1
	add b                                            ; $6406: $80
	ld sp, hl                                        ; $6407: $f9
	cpl                                              ; $6408: $2f
	ld e, l                                          ; $6409: $5d
	cp e                                             ; $640a: $bb
	ld [hl], a                                       ; $640b: $77
	xor $dc                                          ; $640c: $ee $dc
	cp b                                             ; $640e: $b8
	pop af                                           ; $640f: $f1
	ldh a, [$e3]                                     ; $6410: $f0 $e3
	add $8c                                          ; $6412: $c6 $8c
	add hl, de                                       ; $6414: $19
	inc sp                                           ; $6415: $33
	ld h, a                                          ; $6416: $67
	ld c, [hl]                                       ; $6417: $4e
	ld l, l                                          ; $6418: $6d
	sub $cc                                          ; $6419: $d6 $cc
	dec de                                           ; $641b: $1b
	ld [hl], $6c                                     ; $641c: $36 $6c
	reti                                             ; $641e: $d9


	or a                                             ; $641f: $b7
	add b                                            ; $6420: $80
	add hl, bc                                       ; $6421: $09
	inc sp                                           ; $6422: $33
	push hl                                          ; $6423: $e5
	res 2, a                                         ; $6424: $cb $97
	sbc b                                            ; $6426: $98
	cpl                                              ; $6427: $2f
	ld e, [hl]                                       ; $6428: $5e
	inc h                                            ; $6429: $24
	ld c, b                                          ; $642a: $48
	sbc e                                            ; $642b: $9b
	inc [hl]                                         ; $642c: $34
	ld a, d                                          ; $642d: $7a
	db $db                                           ; $642e: $db
	rst $38                                          ; $642f: $ff
	sub b                                            ; $6430: $90
	cp $dd                                           ; $6431: $fe $dd
	and b                                            ; $6433: $a0
	ld b, b                                          ; $6434: $40
	nop                                              ; $6435: $00
	ld h, b                                          ; $6436: $60
	ret nz                                           ; $6437: $c0

	nop                                              ; $6438: $00
	nop                                              ; $6439: $00
	add b                                            ; $643a: $80
	ld h, b                                          ; $643b: $60
	or b                                             ; $643c: $b0
	ldh [$c0], a                                     ; $643d: $e0 $c0
	add b                                            ; $643f: $80
	ld a, e                                          ; $6440: $7b
	ld hl, sp-$6d                                    ; $6441: $f8 $93
	ret nz                                           ; $6443: $c0

	ld h, b                                          ; $6444: $60
	jr nc, jr_056_644e                               ; $6445: $30 $07

	dec b                                            ; $6447: $05
	ld c, $0e                                        ; $6448: $0e $0e
	ld a, [de]                                       ; $644a: $1a
	dec e                                            ; $644b: $1d
	dec a                                            ; $644c: $3d
	scf                                              ; $644d: $37

jr_056_644e:
	ld bc, $03de                                     ; $644e: $01 $de $03
	sbc $07                                          ; $6451: $de $07
	sub l                                            ; $6453: $95
	ld c, $24                                        ; $6454: $0e $24
	inc h                                            ; $6456: $24
	ld h, h                                          ; $6457: $64
	and h                                            ; $6458: $a4
	xor l                                            ; $6459: $ad
	ld c, l                                          ; $645a: $4d
	push de                                          ; $645b: $d5
	ld h, a                                          ; $645c: $67
	rst $38                                          ; $645d: $ff
	ld [hl], a                                       ; $645e: $77
	and b                                            ; $645f: $a0
	adc a                                            ; $6460: $8f
	rst $38                                          ; $6461: $ff
	ld a, a                                          ; $6462: $7f
	rst $38                                          ; $6463: $ff
	and d                                            ; $6464: $a2
	ld a, [hl+]                                      ; $6465: $2a
	ld [$56c6], a                                    ; $6466: $ea $c6 $56
	ld d, d                                          ; $6469: $52
	ld d, d                                          ; $646a: $52
	ld [hl], d                                       ; $646b: $72
	ld b, e                                          ; $646c: $43
	jp $8b83                                         ; $646d: $c3 $83 $8b


	adc e                                            ; $6470: $8b
	sbc $8f                                          ; $6471: $de $8f
	sbc $ff                                          ; $6473: $de $ff
	sbc d                                            ; $6475: $9a
	db $fc                                           ; $6476: $fc
	jp $ea3d                                         ; $6477: $c3 $3d $ea


	ld d, l                                          ; $647a: $55
	cp $95                                           ; $647b: $fe $95
	inc bc                                           ; $647d: $03
	inc a                                            ; $647e: $3c
	jp nz, $aa15                                     ; $647f: $c2 $15 $aa

	push de                                          ; $6482: $d5
	xor d                                            ; $6483: $aa
	ld b, c                                          ; $6484: $41
	ccf                                              ; $6485: $3f
	ld [$537b], a                                    ; $6486: $ea $7b $53
	ld a, [hl]                                       ; $6489: $7e
	inc c                                            ; $648a: $0c
	sbc h                                            ; $648b: $9c
	cp [hl]                                          ; $648c: $be
	ret nz                                           ; $648d: $c0

	dec d                                            ; $648e: $15
	ld a, e                                          ; $648f: $7b
	ld c, h                                          ; $6490: $4c
	add b                                            ; $6491: $80
	ld c, d                                          ; $6492: $4a
	dec b                                            ; $6493: $05
	add d                                            ; $6494: $82
	ld b, b                                          ; $6495: $40
	and h                                            ; $6496: $a4
	ld d, c                                          ; $6497: $51
	and d                                            ; $6498: $a2
	ld d, c                                          ; $6499: $51
	and b                                            ; $649a: $a0
	ldh a, [$7c]                                     ; $649b: $f0 $7c
	cp e                                             ; $649d: $bb
	ld e, b                                          ; $649e: $58
	xor h                                            ; $649f: $ac
	ld e, h                                          ; $64a0: $5c
	xor [hl]                                         ; $64a1: $ae
	adc l                                            ; $64a2: $8d
	ld c, d                                          ; $64a3: $4a
	and l                                            ; $64a4: $a5
	ld b, [hl]                                       ; $64a5: $46
	inc bc                                           ; $64a6: $03
	ld [bc], a                                       ; $64a7: $02
	and c                                            ; $64a8: $a1
	ld d, b                                          ; $64a9: $50
	db $10                                           ; $64aa: $10
	db $10                                           ; $64ab: $10
	ld [$6488], sp                                   ; $64ac: $08 $88 $64
	inc e                                            ; $64af: $1c
	ld b, $93                                        ; $64b0: $06 $93
	inc bc                                           ; $64b2: $03
	ld a, [$fefd]                                    ; $64b3: $fa $fd $fe
	rst $38                                          ; $64b6: $ff
	ld a, a                                          ; $64b7: $7f
	xor a                                            ; $64b8: $af
	rst SubAFromHL                                          ; $64b9: $d7
	ld a, d                                          ; $64ba: $7a
	dec b                                            ; $64bb: $05
	ld [bc], a                                       ; $64bc: $02
	ld bc, $7bfd                                     ; $64bd: $01 $fd $7b
	ld a, d                                          ; $64c0: $7a
	ld a, a                                          ; $64c1: $7f
	cp b                                             ; $64c2: $b8
	rst SubAFromDE                                          ; $64c3: $df
	ld b, $7f                                        ; $64c4: $06 $7f
	ld a, d                                          ; $64c6: $7a
	db $dd                                           ; $64c7: $dd
	rst $38                                          ; $64c8: $ff
	sbc $fc                                          ; $64c9: $de $fc
	sbc [hl]                                         ; $64cb: $9e
	cp $77                                           ; $64cc: $fe $77
	db $ec                                           ; $64ce: $ec
	ld a, e                                          ; $64cf: $7b
	ld l, c                                          ; $64d0: $69
	sbc [hl]                                         ; $64d1: $9e
	jr jr_056_6547                                   ; $64d2: $18 $73

	add d                                            ; $64d4: $82
	sbc h                                            ; $64d5: $9c
	ccf                                              ; $64d6: $3f
	rra                                              ; $64d7: $1f
	rrca                                             ; $64d8: $0f
	ld bc, $7990                                     ; $64d9: $01 $90 $79
	sub b                                            ; $64dc: $90
	sbc [hl]                                         ; $64dd: $9e

jr_056_64de:
	dec hl                                           ; $64de: $2b
	ld a, d                                          ; $64df: $7a
	ret nc                                           ; $64e0: $d0

	ld [hl], l                                       ; $64e1: $75
	sub b                                            ; $64e2: $90
	sbc [hl]                                         ; $64e3: $9e
	call nc, $d07a                                   ; $64e4: $d4 $7a $d0
	sbc l                                            ; $64e7: $9d
	cp a                                             ; $64e8: $bf
	ld a, a                                          ; $64e9: $7f
	ld [hl], e                                       ; $64ea: $73
	dec d                                            ; $64eb: $15
	sbc l                                            ; $64ec: $9d
	push af                                          ; $64ed: $f5
	ld b, b                                          ; $64ee: $40
	ld [hl], a                                       ; $64ef: $77
	and [hl]                                         ; $64f0: $a6
	halt                                             ; $64f1: $76
	jr nz, jr_056_656a                               ; $64f2: $20 $76

	jp c, $f599                                      ; $64f4: $da $99 $f5

	xor c                                            ; $64f7: $a9
	ld e, d                                          ; $64f8: $5a
	inc bc                                           ; $64f9: $03
	ld bc, $7b01                                     ; $64fa: $01 $01 $7b
	jr nz, jr_056_64de                               ; $64fd: $20 $df

	rrca                                             ; $64ff: $0f
	add b                                            ; $6500: $80
	sub l                                            ; $6501: $95
	ld a, [hl+]                                      ; $6502: $2a
	ld d, l                                          ; $6503: $55
	ld l, e                                          ; $6504: $6b
	adc e                                            ; $6505: $8b
	ld d, $2c                                        ; $6506: $16 $2c
	db $10                                           ; $6508: $10
	ld a, [$ebf5]                                    ; $6509: $fa $f5 $eb
	sub $f6                                          ; $650c: $d6 $f6
	db $ed                                           ; $650e: $ed
	db $db                                           ; $650f: $db
	rst $38                                          ; $6510: $ff
	ld h, e                                          ; $6511: $63
	and $cc                                          ; $6512: $e6 $cc
	sbc c                                            ; $6514: $99
	ld [hl-], a                                      ; $6515: $32
	inc h                                            ; $6516: $24
	ld c, c                                          ; $6517: $49
	sbc c                                            ; $6518: $99
	call c, $3399                                    ; $6519: $dc $99 $33
	ld h, a                                          ; $651c: $67
	rst GetHLinHL                                          ; $651d: $cf

jr_056_651e:
	rst SubAFromDE                                          ; $651e: $df
	cp a                                             ; $651f: $bf
	sbc d                                            ; $6520: $9a
	ld a, a                                          ; $6521: $7f
	cpl                                              ; $6522: $2f
	ld e, a                                          ; $6523: $5f
	cp a                                             ; $6524: $bf
	ld a, a                                          ; $6525: $7f
	ld [hl], a                                       ; $6526: $77
	cp l                                             ; $6527: $bd
	sbc e                                            ; $6528: $9b
	ld hl, sp-$10                                    ; $6529: $f8 $f0
	pop hl                                           ; $652b: $e1
	ret nz                                           ; $652c: $c0

	halt                                             ; $652d: $76
	call c, $ff80                                    ; $652e: $dc $80 $ff
	db $e3                                           ; $6531: $e3
	cp $dd                                           ; $6532: $fe $dd
	cp a                                             ; $6534: $bf
	ei                                               ; $6535: $fb
	rst SubAFromBC                                          ; $6536: $e7
	ld sp, hl                                        ; $6537: $f9
	nop                                              ; $6538: $00
	inc e                                            ; $6539: $1c
	ld bc, $7ffe                                     ; $653a: $01 $fe $7f
	rlca                                             ; $653d: $07
	nop                                              ; $653e: $00
	nop                                              ; $653f: $00
	ld hl, sp-$30                                    ; $6540: $f8 $d0
	call c, $cd58                                    ; $6542: $dc $58 $cd
	and $bc                                          ; $6545: $e6 $bc

jr_056_6547:
	ld hl, sp+$30                                    ; $6547: $f8 $30
	jr c, jr_056_6583                                ; $6549: $38 $38

	cp h                                             ; $654b: $bc
	inc a                                            ; $654c: $3c
	sbc b                                            ; $654d: $98
	ret nz                                           ; $654e: $c0

	sub d                                            ; $654f: $92
	ld b, b                                          ; $6550: $40
	ccf                                              ; $6551: $3f
	ld l, d                                          ; $6552: $6a
	ld [hl], e                                       ; $6553: $73
	push de                                          ; $6554: $d5
	ld l, a                                          ; $6555: $6f
	rrca                                             ; $6556: $0f
	jr jr_056_657c                                   ; $6557: $18 $23

	inc c                                            ; $6559: $0c
	add hl, de                                       ; $655a: $19
	ld de, $7b22                                     ; $655b: $11 $22 $7b
	and c                                            ; $655e: $a1
	add [hl]                                         ; $655f: $86
	inc e                                            ; $6560: $1c
	sub $d6                                          ; $6561: $d6 $d6
	sbc d                                            ; $6563: $9a
	ld a, [hl-]                                      ; $6564: $3a
	xor d                                            ; $6565: $aa
	ld a, [$f4d2]                                    ; $6566: $fa $d2 $f4
	rst AddAOntoHL                                          ; $6569: $ef

jr_056_656a:
	adc a                                            ; $656a: $8f
	rrca                                             ; $656b: $0f
	rrca                                             ; $656c: $0f
	rst SubAFromDE                                          ; $656d: $df
	rst $38                                          ; $656e: $ff
	ccf                                              ; $656f: $3f
	ccf                                              ; $6570: $3f
	ld d, d                                          ; $6571: $52
	ld d, d                                          ; $6572: $52
	ld d, h                                          ; $6573: $54
	ld d, h                                          ; $6574: $54
	call nc, $b4d4                                   ; $6575: $d4 $d4 $b4
	xor b                                            ; $6578: $a8
	db $dd                                           ; $6579: $dd
	xor a                                            ; $657a: $af
	rst SubAFromDE                                          ; $657b: $df

jr_056_657c:
	cpl                                              ; $657c: $2f
	sbc l                                            ; $657d: $9d
	ld c, a                                          ; $657e: $4f
	ld e, a                                          ; $657f: $5f
	halt                                             ; $6580: $76
	jr nz, jr_056_651e                               ; $6581: $20 $9b

jr_056_6583:
	xor d                                            ; $6583: $aa
	nop                                              ; $6584: $00
	ld a, [hl+]                                      ; $6585: $2a
	nop                                              ; $6586: $00
	ld [hl], a                                       ; $6587: $77
	ld sp, hl                                        ; $6588: $f9
	sbc e                                            ; $6589: $9b
	ld d, l                                          ; $658a: $55
	rst $38                                          ; $658b: $ff
	push de                                          ; $658c: $d5
	rst $38                                          ; $658d: $ff
	ld [hl], a                                       ; $658e: $77
	ldh a, [c]                                       ; $658f: $f2
	ld a, a                                          ; $6590: $7f
	cp $7f                                           ; $6591: $fe $7f
	sub a                                            ; $6593: $97
	ld [hl], a                                       ; $6594: $77
	ldh a, [c]                                       ; $6595: $f2
	ld a, a                                          ; $6596: $7f
	cp $7f                                           ; $6597: $fe $7f
	add [hl]                                         ; $6599: $86
	sbc h                                            ; $659a: $9c
	and c                                            ; $659b: $a1
	ld bc, $fea0                                     ; $659c: $01 $a0 $fe
	ld a, [hl]                                       ; $659f: $7e
	db $e3                                           ; $65a0: $e3
	sbc h                                            ; $65a1: $9c
	ld e, [hl]                                       ; $65a2: $5e
	cp $5e                                           ; $65a3: $fe $5e
	sbc $fe                                          ; $65a5: $de $fe
	rst SubAFromDE                                          ; $65a7: $df
	db $fc                                           ; $65a8: $fc
	sub l                                            ; $65a9: $95
	xor b                                            ; $65aa: $a8
	db $fc                                           ; $65ab: $fc
	ld a, h                                          ; $65ac: $7c
	rrca                                             ; $65ad: $0f
	ld bc, $aa50                                     ; $65ae: $01 $50 $aa
	ld d, h                                          ; $65b1: $54
	ld [bc], a                                       ; $65b2: $02
	ld bc, $d072                                     ; $65b3: $01 $72 $d0
	sub e                                            ; $65b6: $93
	nop                                              ; $65b7: $00
	dec c                                            ; $65b8: $0d
	add e                                            ; $65b9: $83
	ldh a, [$7c]                                     ; $65ba: $f0 $7c
	ld a, a                                          ; $65bc: $7f
	rra                                              ; $65bd: $1f
	inc bc                                           ; $65be: $03
	nop                                              ; $65bf: $00
	ld [hl], b                                       ; $65c0: $70
	inc c                                            ; $65c1: $0c
	inc bc                                           ; $65c2: $03
	sbc $80                                          ; $65c3: $de $80
	sub l                                            ; $65c5: $95

jr_056_65c6:
	ldh [$fc], a                                     ; $65c6: $e0 $fc
	inc bc                                           ; $65c8: $03
	ld [bc], a                                       ; $65c9: $02
	ld bc, $340e                                     ; $65ca: $01 $0e $34
	ld d, b                                          ; $65cd: $50
	add e                                            ; $65ce: $83
	cp $7b                                           ; $65cf: $fe $7b
	jr jr_056_6652                                   ; $65d1: $18 $7f

	ld c, h                                          ; $65d3: $4c
	ld a, [hl]                                       ; $65d4: $7e
	ld a, [hl+]                                      ; $65d5: $2a
	adc a                                            ; $65d6: $8f
	add c                                            ; $65d7: $81
	adc h                                            ; $65d8: $8c
	rst $38                                          ; $65d9: $ff
	db $ed                                           ; $65da: $ed
	call z, $ff7e                                    ; $65db: $cc $7e $ff
	xor a                                            ; $65de: $af
	rst SubAFromDE                                          ; $65df: $df
	rlca                                             ; $65e0: $07
	dec de                                           ; $65e1: $1b
	db $e4                                           ; $65e2: $e4
	inc b                                            ; $65e3: $04
	ld [$7010], sp                                   ; $65e4: $08 $10 $70
	ld a, d                                          ; $65e7: $7a
	ret nc                                           ; $65e8: $d0

	sbc c                                            ; $65e9: $99
	ret nz                                           ; $65ea: $c0

	ld [hl], b                                       ; $65eb: $70
	inc e                                            ; $65ec: $1c
	rlca                                             ; $65ed: $07
	rst $38                                          ; $65ee: $ff
	jp hl                                            ; $65ef: $e9


	sbc $ff                                          ; $65f0: $de $ff
	sbc d                                            ; $65f2: $9a
	ccf                                              ; $65f3: $3f
	rrca                                             ; $65f4: $0f
	inc bc                                           ; $65f5: $03
	ld e, $f1                                        ; $65f6: $1e $f1
	ld [hl], l                                       ; $65f8: $75
	sub b                                            ; $65f9: $90
	sbc e                                            ; $65fa: $9b
	xor e                                            ; $65fb: $ab
	ld d, [hl]                                       ; $65fc: $56
	db $ec                                           ; $65fd: $ec
	ld [hl], b                                       ; $65fe: $70
	ld [hl], l                                       ; $65ff: $75
	sub b                                            ; $6600: $90
	ld a, l                                          ; $6601: $7d
	and b                                            ; $6602: $a0
	sbc e                                            ; $6603: $9b
	ret nc                                           ; $6604: $d0

	jr c, jr_056_65c6                                ; $6605: $38 $bf

	ld a, l                                          ; $6607: $7d
	ld a, b                                          ; $6608: $78
	ld e, c                                          ; $6609: $59
	cp $66                                           ; $660a: $fe $66
	ret nc                                           ; $660c: $d0

	ld l, a                                          ; $660d: $6f
	ld h, b                                          ; $660e: $60
	rst FarCall                                          ; $660f: $f7
	sub a                                            ; $6610: $97
	or h                                             ; $6611: $b4
	ld d, h                                          ; $6612: $54
	cp b                                             ; $6613: $b8
	ld l, b                                          ; $6614: $68
	or b                                             ; $6615: $b0
	ld sp, $6351                                     ; $6616: $31 $51 $63
	sbc $1f                                          ; $6619: $de $1f
	sbc $3f                                          ; $661b: $de $3f
	adc c                                            ; $661d: $89
	ld a, a                                          ; $661e: $7f
	ld a, [hl]                                       ; $661f: $7e
	add hl, hl                                       ; $6620: $29
	ld sp, $6652                                     ; $6621: $31 $52 $66
	push bc                                          ; $6624: $c5
	xor c                                            ; $6625: $a9
	ld c, d                                          ; $6626: $4a
	ld d, d                                          ; $6627: $52
	or $ee                                           ; $6628: $f6 $ee
	db $ed                                           ; $662a: $ed
	reti                                             ; $662b: $d9


	cp e                                             ; $662c: $bb
	ld [hl], a                                       ; $662d: $77
	rst FarCall                                          ; $662e: $f7
	rst AddAOntoHL                                          ; $662f: $ef
	inc sp                                           ; $6630: $33
	ld h, a                                          ; $6631: $67
	ld c, a                                          ; $6632: $4f
	sbc a                                            ; $6633: $9f
	ld a, e                                          ; $6634: $7b
	and $96                                          ; $6635: $e6 $96
	ld a, a                                          ; $6637: $7f
	cp $fc                                           ; $6638: $fe $fc
	ld hl, sp-$10                                    ; $663a: $f8 $f0
	ldh a, [$e0]                                     ; $663c: $f0 $e0
	ldh [$c0], a                                     ; $663e: $e0 $c0
	ld b, [hl]                                       ; $6640: $46
	ld e, b                                          ; $6641: $58
	sbc h                                            ; $6642: $9c
	inc b                                            ; $6643: $04
	add b                                            ; $6644: $80
	add b                                            ; $6645: $80
	sbc $c0                                          ; $6646: $de $c0
	rst SubAFromDE                                          ; $6648: $df
	add b                                            ; $6649: $80
	ld sp, hl                                        ; $664a: $f9
	sbc [hl]                                         ; $664b: $9e
	ld [hl], b                                       ; $664c: $70
	ld l, a                                          ; $664d: $6f
	ld [$0c9e], a                                    ; $664e: $ea $9e $0c
	ld sp, hl                                        ; $6651: $f9

jr_056_6652:
	add a                                            ; $6652: $87
	ld [hl], a                                       ; $6653: $77
	ld a, a                                          ; $6654: $7f
	ld b, [hl]                                       ; $6655: $46
	ld [hl], e                                       ; $6656: $73
	or c                                             ; $6657: $b1
	ei                                               ; $6658: $fb
	dec sp                                           ; $6659: $3b
	ld b, $08                                        ; $665a: $06 $08
	nop                                              ; $665c: $00
	add hl, sp                                       ; $665d: $39
	dec c                                            ; $665e: $0d
	ld a, a                                          ; $665f: $7f
	ld a, a                                          ; $6660: $7f
	rrca                                             ; $6661: $0f
	rrca                                             ; $6662: $0f
	db $e4                                           ; $6663: $e4

Call_056_6664:
	ld h, h                                          ; $6664: $64
	db $e4                                           ; $6665: $e4
	ret z                                            ; $6666: $c8

	ld c, b                                          ; $6667: $48
	ret z                                            ; $6668: $c8

	sub b                                            ; $6669: $90
	sub c                                            ; $666a: $91
	ld [hl], d                                       ; $666b: $72
	add hl, sp                                       ; $666c: $39
	sbc $ff                                          ; $666d: $de $ff
	rst SubAFromDE                                          ; $666f: $df
	add sp, -$6f                                     ; $6670: $e8 $91
	ld l, b                                          ; $6672: $68
	xor b                                            ; $6673: $a8
	ret nc                                           ; $6674: $d0

	sub $df                                          ; $6675: $d6 $df
	add hl, sp                                       ; $6677: $39
	ld e, a                                          ; $6678: $5f
	ld e, a                                          ; $6679: $5f
	rst SubAFromDE                                          ; $667a: $df
	rst SubAFromDE                                          ; $667b: $df
	cp a                                             ; $667c: $bf
	cp a                                             ; $667d: $bf
	cp c                                             ; $667e: $b9
	pop af                                           ; $667f: $f1
	db $fd                                           ; $6680: $fd
	sbc h                                            ; $6681: $9c
	ld bc, $bc77                                     ; $6682: $01 $77 $bc
	ld l, a                                          ; $6685: $6f
	pop hl                                           ; $6686: $e1
	adc d                                            ; $6687: $8a
	cp $98                                           ; $6688: $fe $98
	jr nc, jr_056_66bc                               ; $668a: $30 $30

	ld l, b                                          ; $668c: $68
	ld h, h                                          ; $668d: $64
	ld d, d                                          ; $668e: $52
	ld sp, hl                                        ; $668f: $f9
	ld e, h                                          ; $6690: $5c
	ld l, $d7                                        ; $6691: $2e $d7
	rst $38                                          ; $6693: $ff
	rst GetHLinHL                                          ; $6694: $cf
	rst JumpTable                                          ; $6695: $c7
	db $e3                                           ; $6696: $e3
	pop hl                                           ; $6697: $e1
	jr nc, @+$1a                                     ; $6698: $30 $18

	inc c                                            ; $669a: $0c
	nop                                              ; $669b: $00
	ld bc, $1e7b                                     ; $669c: $01 $7b $1e
	sbc l                                            ; $669f: $9d
	add c                                            ; $66a0: $81
	ld b, e                                          ; $66a1: $43
	ld [hl], l                                       ; $66a2: $75
	or h                                             ; $66a3: $b4
	ld a, a                                          ; $66a4: $7f
	ld l, [hl]                                       ; $66a5: $6e
	sub h                                            ; $66a6: $94
	ld hl, sp+$78                                    ; $66a7: $f8 $78
	ccf                                              ; $66a9: $3f
	xor [hl]                                         ; $66aa: $ae
	ld e, l                                          ; $66ab: $5d
	cp [hl]                                          ; $66ac: $be
	ld a, a                                          ; $66ad: $7f
	rst $38                                          ; $66ae: $ff
	cp $ff                                           ; $66af: $fe $ff
	call $9cfc                                       ; $66b1: $cd $fc $9c
	ld bc, $f33f                                     ; $66b4: $01 $3f $f3
	ei                                               ; $66b7: $fb
	sbc b                                            ; $66b8: $98
	ldh [$5f], a                                     ; $66b9: $e0 $5f
	rst $38                                          ; $66bb: $ff

jr_056_66bc:
	rst AddAOntoHL                                          ; $66bc: $ef
	db $e3                                           ; $66bd: $e3
	ldh [$f0], a                                     ; $66be: $e0 $f0
	ld a, d                                          ; $66c0: $7a
	res 3, h                                         ; $66c1: $cb $9c
	ei                                               ; $66c3: $fb
	rst $38                                          ; $66c4: $ff
	cp e                                             ; $66c5: $bb
	ld a, d                                          ; $66c6: $7a
	rrca                                             ; $66c7: $0f
	sbc d                                            ; $66c8: $9a
	ld e, a                                          ; $66c9: $5f
	ccf                                              ; $66ca: $3f
	add a                                            ; $66cb: $87
	adc a                                            ; $66cc: $8f
	add $de                                          ; $66cd: $c6 $de
	jp nz, $e2df                                     ; $66cf: $c2 $df $e2

	add b                                            ; $66d2: $80
	ldh a, [$80]                                     ; $66d3: $f0 $80
	nop                                              ; $66d5: $00
	dec bc                                           ; $66d6: $0b
	sbc [hl]                                         ; $66d7: $9e
	ldh a, [$b0]                                     ; $66d8: $f0 $b0
	db $db                                           ; $66da: $db
	ldh [rP1], a                                     ; $66db: $e0 $00
	nop                                              ; $66dd: $00
	rlca                                             ; $66de: $07
	inc e                                            ; $66df: $1c
	jr nz, jr_056_6742                               ; $66e0: $20 $60

jr_056_66e2:
	ld h, c                                          ; $66e2: $61
	rlca                                             ; $66e3: $07
	rlca                                             ; $66e4: $07
	rst AddAOntoHL                                          ; $66e5: $ef
	ld a, [$0601]                                    ; $66e6: $fa $01 $06
	cp a                                             ; $66e9: $bf
	rst $38                                          ; $66ea: $ff
	add hl, bc                                       ; $66eb: $09
	ld [bc], a                                       ; $66ec: $02
	rra                                              ; $66ed: $1f
	ldh a, [rP1]                                     ; $66ee: $f0 $00
	ld bc, $917f                                     ; $66f0: $01 $7f $91
	rst JumpTable                                          ; $66f3: $c7
	jr jr_056_66e2                                   ; $66f4: $18 $ec

	or $33                                           ; $66f6: $f6 $33
	or c                                             ; $66f8: $b1
	pop hl                                           ; $66f9: $e1
	ldh [$c0], a                                     ; $66fa: $e0 $c0
	ld [$c204], sp                                   ; $66fc: $08 $04 $c2
	ld hl, $7161                                     ; $66ff: $21 $61 $71
	sbc $75                                          ; $6702: $de $75
	ld c, [hl]                                       ; $6704: $4e
	ld a, a                                          ; $6705: $7f
	inc e                                            ; $6706: $1c
	ld l, e                                          ; $6707: $6b
	ld hl, sp+$7c                                    ; $6708: $f8 $7c
	sbc a                                            ; $670a: $9f
	ld [hl], a                                       ; $670b: $77
	sbc c                                            ; $670c: $99
	sbc $01                                          ; $670d: $de $01
	ld h, a                                          ; $670f: $67
	ld hl, sp-$69                                    ; $6710: $f8 $97
	and h                                            ; $6712: $a4
	call nz, $91c9                                   ; $6713: $c4 $c9 $91
	sub d                                            ; $6716: $92
	and h                                            ; $6717: $a4
	and h                                            ; $6718: $a4
	ld c, b                                          ; $6719: $48
	reti                                             ; $671a: $d9


	rst $38                                          ; $671b: $ff
	sub c                                            ; $671c: $91
	sub h                                            ; $671d: $94
	xor e                                            ; $671e: $ab
	add hl, hl                                       ; $671f: $29
	ld d, a                                          ; $6720: $57
	ld l, e                                          ; $6721: $6b
	xor [hl]                                         ; $6722: $ae
	add $4e                                          ; $6723: $c6 $4e
	rst AddAOntoHL                                          ; $6725: $ef
	db $dd                                           ; $6726: $dd
	rst SubAFromDE                                          ; $6727: $df
	cp e                                             ; $6728: $bb
	or a                                             ; $6729: $b7
	ld [hl], a                                       ; $672a: $77
	ld [hl], a                                       ; $672b: $77
	add hl, sp                                       ; $672c: $39
	ld a, e                                          ; $672d: $7b
	add e                                            ; $672e: $83
	sbc h                                            ; $672f: $9c
	xor a                                            ; $6730: $af
	sub a                                            ; $6731: $97
	adc e                                            ; $6732: $8b
	sbc $c0                                          ; $6733: $de $c0
	rst SubAFromDE                                          ; $6735: $df
	ldh [$9c], a                                     ; $6736: $e0 $9c
	ldh a, [$f8]                                     ; $6738: $f0 $f8
	db $fc                                           ; $673a: $fc
	ld l, b                                          ; $673b: $68
	ld d, l                                          ; $673c: $55
	ld [hl], h                                       ; $673d: $74
	ld hl, sp+$6f                                    ; $673e: $f8 $6f
	xor l                                            ; $6740: $ad
	ei                                               ; $6741: $fb

jr_056_6742:
	ld l, [hl]                                       ; $6742: $6e
	inc bc                                           ; $6743: $03
	ld a, a                                          ; $6744: $7f
	ld sp, hl                                        ; $6745: $f9
	ld a, [hl]                                       ; $6746: $7e
	ld a, $88                                        ; $6747: $3e $88
	inc a                                            ; $6749: $3c
	scf                                              ; $674a: $37
	ld a, [de]                                       ; $674b: $1a
	inc c                                            ; $674c: $0c
	sub b                                            ; $674d: $90
	sub b                                            ; $674e: $90
	add sp, $00                                      ; $674f: $e8 $00
	ld [bc], a                                       ; $6751: $02
	ld c, $04                                        ; $6752: $0e $04
	nop                                              ; $6754: $00
	ld h, b                                          ; $6755: $60
	ld hl, sp-$08                                    ; $6756: $f8 $f8
	rrca                                             ; $6758: $0f
	dec c                                            ; $6759: $0d
	ld e, $1c                                        ; $675a: $1e $1c
	jr jr_056_6793                                   ; $675c: $18 $35

	dec [hl]                                         ; $675e: $35
	ld l, l                                          ; $675f: $6d
	ld a, c                                          ; $6760: $79
	inc h                                            ; $6761: $24
	rst SubAFromDE                                          ; $6762: $df
	ld c, $df                                        ; $6763: $0e $df
	dec e                                            ; $6765: $1d
	add c                                            ; $6766: $81
	dec a                                            ; $6767: $3d
	db $fd                                           ; $6768: $fd
	dec hl                                           ; $6769: $2b
	ld d, a                                          ; $676a: $57
	adc d                                            ; $676b: $8a
	adc l                                            ; $676c: $8d
	rrca                                             ; $676d: $0f
	inc c                                            ; $676e: $0c
	inc b                                            ; $676f: $04
	rst $38                                          ; $6770: $ff
	cp a                                             ; $6771: $bf
	ld a, e                                          ; $6772: $7b
	rst FarCall                                          ; $6773: $f7
	or $f4                                           ; $6774: $f6 $f4
	db $f4                                           ; $6776: $f4
	db $fc                                           ; $6777: $fc
	dec l                                            ; $6778: $2d
	ld e, a                                          ; $6779: $5f
	ei                                               ; $677a: $fb
	push af                                          ; $677b: $f5
	cp e                                             ; $677c: $bb
	or a                                             ; $677d: $b7
	inc h                                            ; $677e: $24
	ld h, [hl]                                       ; $677f: $66

jr_056_6780:
	di                                               ; $6780: $f3
	ldh [c], a                                       ; $6781: $e2
	add $4e                                          ; $6782: $c6 $4e
	ld a, a                                          ; $6784: $7f
	sbc $3c                                          ; $6785: $de $3c
	ld a, a                                          ; $6787: $7f
	ld [hl], $9c                                     ; $6788: $36 $9c
	db $fc                                           ; $678a: $fc
	ldh [$c0], a                                     ; $678b: $e0 $c0
	ld a, b                                          ; $678d: $78
	sbc [hl]                                         ; $678e: $9e
	sbc d                                            ; $678f: $9a
	ld h, c                                          ; $6790: $61
	inc sp                                           ; $6791: $33
	rra                                              ; $6792: $1f

jr_056_6793:
	jr c, @+$63                                      ; $6793: $38 $61

	ld a, b                                          ; $6795: $78
	sbc [hl]                                         ; $6796: $9e
	sbc h                                            ; $6797: $9c
	ld [hl], a                                       ; $6798: $77
	ei                                               ; $6799: $fb
	ldh a, [$74]                                     ; $679a: $f0 $74
	or h                                             ; $679c: $b4
	sbc h                                            ; $679d: $9c
	nop                                              ; $679e: $00
	adc a                                            ; $679f: $8f
	db $fc                                           ; $67a0: $fc
	ld l, h                                          ; $67a1: $6c
	xor c                                            ; $67a2: $a9
	sbc h                                            ; $67a3: $9c
	rst AddAOntoHL                                          ; $67a4: $ef
	ret nz                                           ; $67a5: $c0

	inc bc                                           ; $67a6: $03
	ld a, c                                          ; $67a7: $79
	or a                                             ; $67a8: $b7
	ld a, l                                          ; $67a9: $7d
	rst GetHLinHL                                          ; $67aa: $cf
	ld a, a                                          ; $67ab: $7f
	ld [$7ffe], a                                    ; $67ac: $ea $fe $7f
	ld sp, hl                                        ; $67af: $f9
	add [hl]                                         ; $67b0: $86
	rst $38                                          ; $67b1: $ff
	ld d, d                                          ; $67b2: $52
	ld a, $de                                        ; $67b3: $3e $de
	db $dd                                           ; $67b5: $dd
	pop bc                                           ; $67b6: $c1
	rrca                                             ; $67b7: $0f
	ld a, [$23fb]                                    ; $67b8: $fa $fb $23
	inc bc                                           ; $67bb: $03
	inc hl                                           ; $67bc: $23
	inc hl                                           ; $67bd: $23
	ccf                                              ; $67be: $3f
	rst $38                                          ; $67bf: $ff
	db $fd                                           ; $67c0: $fd
	add h                                            ; $67c1: $84
	xor a                                            ; $67c2: $af
	xor e                                            ; $67c3: $ab
	xor a                                            ; $67c4: $af
	ld e, c                                          ; $67c5: $59
	ld hl, sp+$06                                    ; $67c6: $f8 $06
	ld bc, $7b00                                     ; $67c8: $01 $00 $7b
	ld d, [hl]                                       ; $67cb: $56
	rst SubAFromDE                                          ; $67cc: $df
	ldh a, [hDisp1_LCDC]                                     ; $67cd: $f0 $8f
	ld hl, sp-$02                                    ; $67cf: $f8 $fe
	rst $38                                          ; $67d1: $ff
	ccf                                              ; $67d2: $3f
	cpl                                              ; $67d3: $2f
	rra                                              ; $67d4: $1f
	rla                                              ; $67d5: $17
	rrca                                             ; $67d6: $0f
	dec bc                                           ; $67d7: $0b
	rlca                                             ; $67d8: $07
	inc bc                                           ; $67d9: $03
	ldh [c], a                                       ; $67da: $e2
	ldh a, [c]                                       ; $67db: $f2
	ldh a, [c]                                       ; $67dc: $f2
	ld a, [$defa]                                    ; $67dd: $fa $fa $de
	cp $7f                                           ; $67e0: $fe $7f
	ld b, l                                          ; $67e2: $45
	sbc [hl]                                         ; $67e3: $9e
	ei                                               ; $67e4: $fb
	db $dd                                           ; $67e5: $dd
	db $fd                                           ; $67e6: $fd
	sbc h                                            ; $67e7: $9c
	rst $38                                          ; $67e8: $ff
	ld b, d                                          ; $67e9: $42
	ld b, d                                          ; $67ea: $42
	call c, $8946                                    ; $67eb: $dc $46 $89
	ld b, h                                          ; $67ee: $44
	rlca                                             ; $67ef: $07
	rlca                                             ; $67f0: $07
	or d                                             ; $67f1: $b2
	ei                                               ; $67f2: $fb
	db $d3                                           ; $67f3: $d3
	rst SubAFromHL                                          ; $67f4: $d7
	jp c, $079c                                      ; $67f5: $da $9c $07

	ld [bc], a                                       ; $67f8: $02
	ld [bc], a                                       ; $67f9: $02
	ld [hl], d                                       ; $67fa: $72
	inc sp                                           ; $67fb: $33
	ld [hl], $34                                     ; $67fc: $36 $34
	jr c, jr_056_6780                                ; $67fe: $38 $80

	nop                                              ; $6800: $00
	ld bc, $f183                                     ; $6801: $01 $83 $f1
	ld l, e                                          ; $6804: $6b
	dec hl                                           ; $6805: $2b
	ld [hl], a                                       ; $6806: $77
	ld sp, hl                                        ; $6807: $f9
	ld [hl], a                                       ; $6808: $77
	add hl, bc                                       ; $6809: $09
	adc d                                            ; $680a: $8a
	db $e3                                           ; $680b: $e3
	rst $38                                          ; $680c: $ff
	ld a, [hl]                                       ; $680d: $7e
	ld a, d                                          ; $680e: $7a
	ld b, b                                          ; $680f: $40
	ld b, b                                          ; $6810: $40
	jr nz, jr_056_6833                               ; $6811: $20 $20

	inc hl                                           ; $6813: $23
	inc a                                            ; $6814: $3c
	db $10                                           ; $6815: $10
	db $10                                           ; $6816: $10
	ld bc, $0203                                     ; $6817: $01 $03 $02
	ld [bc], a                                       ; $681a: $02
	jp nz, $fffb                                     ; $681b: $c2 $fb $ff

	ld a, [hl]                                       ; $681e: $7e
	ld bc, $03de                                     ; $681f: $01 $de $03
	add [hl]                                         ; $6822: $86
	jp $073b                                         ; $6823: $c3 $3b $07


	rlca                                             ; $6826: $07
	ld c, c                                          ; $6827: $49
	ld [de], a                                       ; $6828: $12
	sub d                                            ; $6829: $92
	and l                                            ; $682a: $a5
	dec h                                            ; $682b: $25
	inc hl                                           ; $682c: $23
	ld c, d                                          ; $682d: $4a
	ld c, d                                          ; $682e: $4a
	cp $fd                                           ; $682f: $fe $fd
	db $fd                                           ; $6831: $fd
	ei                                               ; $6832: $fb

jr_056_6833:
	ei                                               ; $6833: $fb
	rst $38                                          ; $6834: $ff
	rst FarCall                                          ; $6835: $f7
	rst FarCall                                          ; $6836: $f7
	sbc d                                            ; $6837: $9a
	sbc d                                            ; $6838: $9a
	xor d                                            ; $6839: $aa
	ld a, [hl+]                                      ; $683a: $2a
	dec l                                            ; $683b: $2d
	sbc $4d                                          ; $683c: $de $4d
	reti                                             ; $683e: $d9


	rst $38                                          ; $683f: $ff
	sub a                                            ; $6840: $97
	adc l                                            ; $6841: $8d
	add [hl]                                         ; $6842: $86
	add a                                            ; $6843: $87
	or e                                             ; $6844: $b3
	ld a, e                                          ; $6845: $7b
	ld a, l                                          ; $6846: $7d
	ld a, a                                          ; $6847: $7f
	ld a, [hl]                                       ; $6848: $7e
	ld a, d                                          ; $6849: $7a
	dec [hl]                                         ; $684a: $35
	sub l                                            ; $684b: $95
	rst GetHLinHL                                          ; $684c: $cf
	add a                                            ; $684d: $87
	add e                                            ; $684e: $83
	add c                                            ; $684f: $81
	add c                                            ; $6850: $81
	cp $fe                                           ; $6851: $fe $fe
	ld a, [hl]                                       ; $6853: $7e
	cp [hl]                                          ; $6854: $be
	sbc $7b                                          ; $6855: $de $7b
	ld a, h                                          ; $6857: $7c
	ld a, e                                          ; $6858: $7b
	and d                                            ; $6859: $a2
	ld a, a                                          ; $685a: $7f
	and [hl]                                         ; $685b: $a6
	sub h                                            ; $685c: $94
	ldh a, [$fc]                                     ; $685d: $f0 $fc
	cp $07                                           ; $685f: $fe $07
	rlca                                             ; $6861: $07
	ld b, $03                                        ; $6862: $06 $03
	ld [$0006], sp                                   ; $6864: $08 $06 $00
	nop                                              ; $6867: $00
	sbc $03                                          ; $6868: $de $03
	sbc l                                            ; $686a: $9d
	ld bc, $fe04                                     ; $686b: $01 $04 $fe
	ld a, l                                          ; $686e: $7d
	ld e, h                                          ; $686f: $5c
	add l                                            ; $6870: $85
	ld h, c                                          ; $6871: $61
	add e                                            ; $6872: $83
	inc c                                            ; $6873: $0c
	jr jr_056_68d6                                   ; $6874: $18 $60

	ret nz                                           ; $6876: $c0

	ld hl, sp-$10                                    ; $6877: $f8 $f0
	ret nz                                           ; $6879: $c0

	add e                                            ; $687a: $83
	inc b                                            ; $687b: $04
	jr jr_056_689e                                   ; $687c: $18 $20

	ret nz                                           ; $687e: $c0

	ld l, l                                          ; $687f: $6d
	push de                                          ; $6880: $d5
	db $ed                                           ; $6881: $ed
	ld d, h                                          ; $6882: $54
	ld a, h                                          ; $6883: $7c
	or h                                             ; $6884: $b4
	cp [hl]                                          ; $6885: $be
	cp [hl]                                          ; $6886: $be
	dec a                                            ; $6887: $3d
	ld a, l                                          ; $6888: $7d
	db $fd                                           ; $6889: $fd
	ld a, [hl]                                       ; $688a: $7e
	ld [hl], a                                       ; $688b: $77
	cp e                                             ; $688c: $bb
	sub [hl]                                         ; $688d: $96
	rrca                                             ; $688e: $0f
	inc d                                            ; $688f: $14
	ld b, h                                          ; $6890: $44
	sub d                                            ; $6891: $92
	xor d                                            ; $6892: $aa
	db $dd                                           ; $6893: $dd
	ld l, [hl]                                       ; $6894: $6e
	rst SubAFromDE                                          ; $6895: $df
	db $f4                                           ; $6896: $f4
	call c, $dfff                                    ; $6897: $dc $ff $df
	ld a, a                                          ; $689a: $7f
	sub d                                            ; $689b: $92
	or [hl]                                          ; $689c: $b6
	rst SubAFromHL                                          ; $689d: $d7

jr_056_689e:
	sub a                                            ; $689e: $97
	ld c, a                                          ; $689f: $4f
	daa                                              ; $68a0: $27
	rra                                              ; $68a1: $1f
	ei                                               ; $68a2: $fb
	adc a                                            ; $68a3: $8f
	ld a, h                                          ; $68a4: $7c
	inc a                                            ; $68a5: $3c
	ld a, h                                          ; $68a6: $7c
	cp h                                             ; $68a7: $bc
	call c, $ad79                                    ; $68a8: $dc $79 $ad
	sbc l                                            ; $68ab: $9d
	ld h, b                                          ; $68ac: $60
	ld a, a                                          ; $68ad: $7f
	db $dd                                           ; $68ae: $dd
	ldh [$9d], a                                     ; $68af: $e0 $9d
	and b                                            ; $68b1: $a0
	ld [hl], b                                       ; $68b2: $70
	db $db                                           ; $68b3: $db
	ccf                                              ; $68b4: $3f
	sub l                                            ; $68b5: $95
	ld a, a                                          ; $68b6: $7f
	rst SubAFromDE                                          ; $68b7: $df
	ld a, a                                          ; $68b8: $7f
	adc a                                            ; $68b9: $8f
	rlca                                             ; $68ba: $07
	rlca                                             ; $68bb: $07
	ld c, $1c                                        ; $68bc: $0e $1c
	jr jr_056_68f0                                   ; $68be: $18 $30

	ld a, d                                          ; $68c0: $7a
	ld c, l                                          ; $68c1: $4d
	ld a, b                                          ; $68c2: $78
	cp $7e                                           ; $68c3: $fe $7e
	and l                                            ; $68c5: $a5
	sub a                                            ; $68c6: $97
	add h                                            ; $68c7: $84
	inc c                                            ; $68c8: $0c
	ld [$0818], sp                                   ; $68c9: $08 $18 $08
	db $10                                           ; $68cc: $10
	inc a                                            ; $68cd: $3c
	inc hl                                           ; $68ce: $23
	ld a, d                                          ; $68cf: $7a
	ld [hl], b                                       ; $68d0: $70
	add b                                            ; $68d1: $80
	rrca                                             ; $68d2: $0f
	rra                                              ; $68d3: $1f
	rra                                              ; $68d4: $1f
	inc de                                           ; $68d5: $13

jr_056_68d6:
	inc a                                            ; $68d6: $3c
	ld a, [$74f7]                                    ; $68d7: $fa $f7 $74
	inc [hl]                                         ; $68da: $34
	ld a, [bc]                                       ; $68db: $0a
	add hl, hl                                       ; $68dc: $29
	jr z, jr_056_6907                                ; $68dd: $28 $28

	dec b                                            ; $68df: $05
	ld [$cb8b], sp                                   ; $68e0: $08 $8b $cb
	db $f4                                           ; $68e3: $f4
	sub $d7                                          ; $68e4: $d6 $d7
	rst SubAFromHL                                          ; $68e6: $d7
	ret nz                                           ; $68e7: $c0

	jr nc, jr_056_694a                               ; $68e8: $30 $60

	ld [de], a                                       ; $68ea: $12
	adc d                                            ; $68eb: $8a
	jr nz, jr_056_68d6                               ; $68ec: $20 $e8

	inc h                                            ; $68ee: $24
	ccf                                              ; $68ef: $3f

jr_056_68f0:
	rrca                                             ; $68f0: $0f
	adc [hl]                                         ; $68f1: $8e
	add a                                            ; $68f2: $87
	pop hl                                           ; $68f3: $e1
	ld [hl], c                                       ; $68f4: $71
	rra                                              ; $68f5: $1f
	rlca                                             ; $68f6: $07
	jp Jump_056_57ab                                 ; $68f7: $c3 $ab $57


	xor a                                            ; $68fa: $af
	ld a, [hl]                                       ; $68fb: $7e
	db $fd                                           ; $68fc: $fd
	ld a, [$eaf5]                                    ; $68fd: $fa $f5 $ea
	ld d, a                                          ; $6900: $57
	xor c                                            ; $6901: $a9
	ld d, b                                          ; $6902: $50
	ld [hl], d                                       ; $6903: $72
	ld [$ffdf], a                                    ; $6904: $ea $df $ff

jr_056_6907:
	adc [hl]                                         ; $6907: $8e
	ld e, a                                          ; $6908: $5f
	cpl                                              ; $6909: $2f
	rra                                              ; $690a: $1f
	dec b                                            ; $690b: $05
	inc bc                                           ; $690c: $03
	nop                                              ; $690d: $00
	ld b, h                                          ; $690e: $44
	call nz, $3464                                   ; $690f: $c4 $64 $34
	inc e                                            ; $6912: $1c
	ld b, $03                                        ; $6913: $06 $03
	nop                                              ; $6915: $00
	ret c                                            ; $6916: $d8

	or b                                             ; $6917: $b0
	ldh [rPCM34], a                                  ; $6918: $e0 $77
	ld a, b                                          ; $691a: $78
	sbc l                                            ; $691b: $9d
	ei                                               ; $691c: $fb
	jr nz, jr_056_6990                               ; $691d: $20 $71

	and [hl]                                         ; $691f: $a6
	sbc [hl]                                         ; $6920: $9e
	add b                                            ; $6921: $80
	ld [hl], d                                       ; $6922: $72
	ld e, d                                          ; $6923: $5a
	sbc [hl]                                         ; $6924: $9e
	ldh [$7a], a                                     ; $6925: $e0 $7a
	adc b                                            ; $6927: $88
	ld sp, hl                                        ; $6928: $f9
	sbc e                                            ; $6929: $9b
	inc sp                                           ; $692a: $33
	dec sp                                           ; $692b: $3b
	dec de                                           ; $692c: $1b
	rra                                              ; $692d: $1f
	sbc $0f                                          ; $692e: $de $0f
	sbc l                                            ; $6930: $9d
	add a                                            ; $6931: $87
	db $10                                           ; $6932: $10
	db $dd                                           ; $6933: $dd
	ld [$04de], sp                                   ; $6934: $08 $de $04
	sub a                                            ; $6937: $97
	ld a, $1e                                        ; $6938: $3e $1e
	inc e                                            ; $693a: $1c
	inc c                                            ; $693b: $0c
	inc c                                            ; $693c: $0c
	dec c                                            ; $693d: $0d
	dec c                                            ; $693e: $0d
	add hl, bc                                       ; $693f: $09
	db $db                                           ; $6940: $db
	rlca                                             ; $6941: $07
	rst SubAFromDE                                          ; $6942: $df
	rrca                                             ; $6943: $0f
	sub a                                            ; $6944: $97
	ld b, [hl]                                       ; $6945: $46
	ld c, [hl]                                       ; $6946: $4e
	adc [hl]                                         ; $6947: $8e
	sbc d                                            ; $6948: $9a
	sub e                                            ; $6949: $93

jr_056_694a:
	dec sp                                           ; $694a: $3b
	dec sp                                           ; $694b: $3b
	dec hl                                           ; $694c: $2b
	call c, $deff                                    ; $694d: $dc $ff $de
	rst FarCall                                          ; $6950: $f7
	sbc d                                            ; $6951: $9a
	adc d                                            ; $6952: $8a
	adc e                                            ; $6953: $8b
	adc e                                            ; $6954: $8b
	cp e                                             ; $6955: $bb
	scf                                              ; $6956: $37
	ld a, d                                          ; $6957: $7a
	ret nc                                           ; $6958: $d0

	ld a, e                                          ; $6959: $7b
	ld d, b                                          ; $695a: $50
	rst SubAFromDE                                          ; $695b: $df
	call z, $869c                                    ; $695c: $cc $9c $86
	add d                                            ; $695f: $82
	add e                                            ; $6960: $83
	sbc $ff                                          ; $6961: $de $ff
	sbc l                                            ; $6963: $9d
	db $fd                                           ; $6964: $fd
	db $fc                                           ; $6965: $fc
	sbc $fe                                          ; $6966: $de $fe
	ld sp, hl                                        ; $6968: $f9
	sbc d                                            ; $6969: $9a
	ld a, [hl]                                       ; $696a: $7e
	cp a                                             ; $696b: $bf
	rst SubAFromDE                                          ; $696c: $df
	rst SubAFromBC                                          ; $696d: $e7
	jr c, jr_056_69e9                                ; $696e: $38 $79

	ld b, [hl]                                       ; $6970: $46
	ld a, c                                          ; $6971: $79
	push hl                                          ; $6972: $e5
	ld a, a                                          ; $6973: $7f
	ld h, d                                          ; $6974: $62
	sbc $01                                          ; $6975: $de $01
	sub h                                            ; $6977: $94
	add e                                            ; $6978: $83
	cp a                                             ; $6979: $bf
	rst $38                                          ; $697a: $ff
	ld c, a                                          ; $697b: $4f
	adc a                                            ; $697c: $8f
	add a                                            ; $697d: $87
	rlca                                             ; $697e: $07
	inc bc                                           ; $697f: $03
	ld bc, $f8c7                                     ; $6980: $01 $c7 $f8
	ld a, d                                          ; $6983: $7a
	db $10                                           ; $6984: $10
	ld a, [hl]                                       ; $6985: $7e
	ld a, [bc]                                       ; $6986: $0a
	rst SubAFromDE                                          ; $6987: $df
	add c                                            ; $6988: $81
	ld a, h                                          ; $6989: $7c
	db $db                                           ; $698a: $db
	ld a, d                                          ; $698b: $7a
	ld [hl], h                                       ; $698c: $74
	sbc c                                            ; $698d: $99
	db $fd                                           ; $698e: $fd
	add c                                            ; $698f: $81

jr_056_6990:
	add c                                            ; $6990: $81
	jp $1f23                                         ; $6991: $c3 $23 $1f


	sbc $07                                          ; $6994: $de $07
	sub a                                            ; $6996: $97
	ld c, a                                          ; $6997: $4f
	ld c, e                                          ; $6998: $4b
	sub c                                            ; $6999: $91
	sub c                                            ; $699a: $91
	and c                                            ; $699b: $a1
	ld [hl+], a                                      ; $699c: $22
	ld [hl+], a                                      ; $699d: $22
	ld b, h                                          ; $699e: $44
	reti                                             ; $699f: $d9


	rst $38                                          ; $69a0: $ff
	sub a                                            ; $69a1: $97
	cpl                                              ; $69a2: $2f
	sbc $f0                                          ; $69a3: $de $f0
	db $10                                           ; $69a5: $10
	jr nz, jr_056_69e8                               ; $69a6: $20 $40

	ld b, b                                          ; $69a8: $40
	add b                                            ; $69a9: $80
	reti                                             ; $69aa: $d9


	rst $38                                          ; $69ab: $ff

jr_056_69ac:
	jp c, $9e0f                                      ; $69ac: $da $0f $9e

	rlca                                             ; $69af: $07
	jp c, $95f8                                      ; $69b0: $da $f8 $95

jr_056_69b3:
	db $fc                                           ; $69b3: $fc
	ret nc                                           ; $69b4: $d0

	ret c                                            ; $69b5: $d8

	adc c                                            ; $69b6: $89
	adc c                                            ; $69b7: $89
	set 1, e                                         ; $69b8: $cb $cb
	db $eb                                           ; $69ba: $eb
	db $eb                                           ; $69bb: $eb
	rra                                              ; $69bc: $1f
	ld a, c                                          ; $69bd: $79
	ld d, c                                          ; $69be: $51
	db $dd                                           ; $69bf: $dd
	inc b                                            ; $69c0: $04
	sbc l                                            ; $69c1: $9d
	ld h, b                                          ; $69c2: $60
	ldh [$de], a                                     ; $69c3: $e0 $de
	ret nz                                           ; $69c5: $c0

	sbc h                                            ; $69c6: $9c
	add b                                            ; $69c7: $80
	add c                                            ; $69c8: $81
	add c                                            ; $69c9: $81
	ld h, l                                          ; $69ca: $65
	jr jr_056_69ac                                   ; $69cb: $18 $df

	ld h, b                                          ; $69cd: $60
	sub l                                            ; $69ce: $95
	ld d, b                                          ; $69cf: $50
	call z, $98a3                                    ; $69d0: $cc $a3 $98
	add [hl]                                         ; $69d3: $86
	add b                                            ; $69d4: $80
	ccf                                              ; $69d5: $3f
	ld e, a                                          ; $69d6: $5f
	ld c, a                                          ; $69d7: $4f
	ld b, e                                          ; $69d8: $43
	sbc $80                                          ; $69d9: $de $80
	sbc e                                            ; $69db: $9b
	nop                                              ; $69dc: $00
	db $ec                                           ; $69dd: $ec
	ld d, e                                          ; $69de: $53
	dec e                                            ; $69df: $1d
	ld a, c                                          ; $69e0: $79
	sub d                                            ; $69e1: $92
	add b                                            ; $69e2: $80
	nop                                              ; $69e3: $00
	db $10                                           ; $69e4: $10
	inc de                                           ; $69e5: $13
	xor h                                            ; $69e6: $ac
	ldh [c], a                                       ; $69e7: $e2

jr_056_69e8:
	ld sp, hl                                        ; $69e8: $f9

jr_056_69e9:
	cp $ff                                           ; $69e9: $fe $ff
	cp a                                             ; $69eb: $bf
	adc a                                            ; $69ec: $8f
	ld a, [bc]                                       ; $69ed: $0a
	ld [bc], a                                       ; $69ee: $02
	add b                                            ; $69ef: $80
	ld h, b                                          ; $69f0: $60
	sbc b                                            ; $69f1: $98
	and $39                                          ; $69f2: $e6 $39
	ld c, $f4                                        ; $69f4: $0e $f4
	db $fc                                           ; $69f6: $fc
	ld a, a                                          ; $69f7: $7f
	sbc a                                            ; $69f8: $9f
	ld h, a                                          ; $69f9: $67
	add hl, de                                       ; $69fa: $19
	add $f1                                          ; $69fb: $c6 $f1
	call nc, $54a8                                   ; $69fd: $d4 $a8 $54
	xor b                                            ; $6a00: $a8
	ld d, b                                          ; $6a01: $50
	sbc h                                            ; $6a02: $9c
	xor b                                            ; $6a03: $a8
	ldh a, [$7c]                                     ; $6a04: $f0 $7c
	ld l, l                                          ; $6a06: $6d
	xor a                                            ; $6a07: $af
	sbc l                                            ; $6a08: $9d
	ld [hl], b                                       ; $6a09: $70
	adc h                                            ; $6a0a: $8c
	pop af                                           ; $6a0b: $f1
	ld [hl], a                                       ; $6a0c: $77
	jp $3571                                         ; $6a0d: $c3 $71 $35


	ld l, e                                          ; $6a10: $6b
	ld hl, sp+$7f                                    ; $6a11: $f8 $7f
	jr z, jr_056_69b3                                ; $6a13: $28 $9e

	cp a                                             ; $6a15: $bf
	ld a, b                                          ; $6a16: $78
	adc a                                            ; $6a17: $8f
	ld a, h                                          ; $6a18: $7c
	adc b                                            ; $6a19: $88
	ld a, c                                          ; $6a1a: $79
	pop hl                                           ; $6a1b: $e1
	sbc d                                            ; $6a1c: $9a
	ld b, b                                          ; $6a1d: $40
	ld h, b                                          ; $6a1e: $60
	jr nz, jr_056_6a81                               ; $6a1f: $20 $60

	and b                                            ; $6a21: $a0
	ld a, e                                          ; $6a22: $7b
	ld bc, $fd92                                     ; $6a23: $01 $92 $fd
	ld sp, hl                                        ; $6a26: $f9
	pop af                                           ; $6a27: $f1
	pop hl                                           ; $6a28: $e1
	pop bc                                           ; $6a29: $c1
	ld b, $05                                        ; $6a2a: $06 $05
	dec b                                            ; $6a2c: $05
	add hl, bc                                       ; $6a2d: $09
	ld de, $4121                                     ; $6a2e: $11 $21 $41
	add c                                            ; $6a31: $81
	sbc $2a                                          ; $6a32: $de $2a
	sbc d                                            ; $6a34: $9a
	ld l, $3c                                        ; $6a35: $2e $3c
	ld a, h                                          ; $6a37: $7c
	ld a, l                                          ; $6a38: $7d
	ld a, l                                          ; $6a39: $7d
	reti                                             ; $6a3a: $d9


	rrca                                             ; $6a3b: $0f
	sbc $7f                                          ; $6a3c: $de $7f
	call c, $deff                                    ; $6a3e: $dc $ff $de
	db $e3                                           ; $6a41: $e3
	db $dd                                           ; $6a42: $dd
	and d                                            ; $6a43: $a2
	sub l                                            ; $6a44: $95
	ld [hl+], a                                      ; $6a45: $22
	rst SubAFromBC                                          ; $6a46: $e7
	jp $81c1                                         ; $6a47: $c3 $c1 $81


	add b                                            ; $6a4a: $80
	add b                                            ; $6a4b: $80
	adc a                                            ; $6a4c: $8f
	ccf                                              ; $6a4d: $3f
	ld bc, $b06f                                     ; $6a4e: $01 $6f $b0
	sbc d                                            ; $6a51: $9a
	ld c, $ff                                        ; $6a52: $0e $ff
	ld a, a                                          ; $6a54: $7f
	rst $38                                          ; $6a55: $ff
	cp a                                             ; $6a56: $bf
	ld [hl], a                                       ; $6a57: $77
	sbc $7f                                          ; $6a58: $de $7f
	or b                                             ; $6a5a: $b0
	ld a, a                                          ; $6a5b: $7f
	xor a                                            ; $6a5c: $af
	ld a, a                                          ; $6a5d: $7f
	xor [hl]                                         ; $6a5e: $ae
	ld a, l                                          ; $6a5f: $7d
	dec sp                                           ; $6a60: $3b
	ld [hl], l                                       ; $6a61: $75
	ld c, b                                          ; $6a62: $48
	sbc $83                                          ; $6a63: $de $83
	sbc [hl]                                         ; $6a65: $9e
	jp $01da                                         ; $6a66: $c3 $da $01


	ld a, l                                          ; $6a69: $7d
	adc b                                            ; $6a6a: $88
	sbc b                                            ; $6a6b: $98
	ld bc, $1121                                     ; $6a6c: $01 $21 $11
	sub c                                            ; $6a6f: $91
	ret z                                            ; $6a70: $c8

	ld l, b                                          ; $6a71: $68
	cp b                                             ; $6a72: $b8
	halt                                             ; $6a73: $76
	sbc h                                            ; $6a74: $9c
	ld a, c                                          ; $6a75: $79
	and c                                            ; $6a76: $a1
	ld a, d                                          ; $6a77: $7a
	adc c                                            ; $6a78: $89
	db $dd                                           ; $6a79: $dd
	cp $8d                                           ; $6a7a: $fe $8d
	call c, $0fdd                                    ; $6a7c: $dc $dd $0f
	rrca                                             ; $6a7f: $0f
	dec bc                                           ; $6a80: $0b

jr_056_6a81:
	dec de                                           ; $6a81: $1b
	inc de                                           ; $6a82: $13
	ccf                                              ; $6a83: $3f
	ld [hl], a                                       ; $6a84: $77
	ld [hl], a                                       ; $6a85: $77
	ld b, h                                          ; $6a86: $44
	ld c, c                                          ; $6a87: $49
	ld c, c                                          ; $6a88: $49
	adc e                                            ; $6a89: $8b
	sub e                                            ; $6a8a: $93
	sub a                                            ; $6a8b: $97
	and a                                            ; $6a8c: $a7
	cpl                                              ; $6a8d: $2f
	ld [hl], e                                       ; $6a8e: $73
	push hl                                          ; $6a8f: $e5
	ld a, c                                          ; $6a90: $79
	and b                                            ; $6a91: $a0
	ld a, a                                          ; $6a92: $7f
	cp d                                             ; $6a93: $ba
	sbc c                                            ; $6a94: $99
	and b                                            ; $6a95: $a0
	or b                                             ; $6a96: $b0
	cp b                                             ; $6a97: $b8
	inc a                                            ; $6a98: $3c
	ld a, [hl]                                       ; $6a99: $7e
	rst JumpTable                                          ; $6a9a: $c7
	halt                                             ; $6a9b: $76
	add b                                            ; $6a9c: $80
	ld a, [hl]                                       ; $6a9d: $7e
	jp z, $c27f                                      ; $6a9e: $ca $7f $c2

	sbc $07                                          ; $6aa1: $de $07
	ld a, c                                          ; $6aa3: $79
	ld b, [hl]                                       ; $6aa4: $46
	ld a, a                                          ; $6aa5: $7f

jr_056_6aa6:
	cp b                                             ; $6aa6: $b8
	sbc $fc                                          ; $6aa7: $de $fc
	ld [hl], e                                       ; $6aa9: $73
	ret nz                                           ; $6aaa: $c0

	ld a, h                                          ; $6aab: $7c
	db $fc                                           ; $6aac: $fc
	ld [hl], l                                       ; $6aad: $75
	pop af                                           ; $6aae: $f1
	sbc l                                            ; $6aaf: $9d
	sbc a                                            ; $6ab0: $9f
	rst GetHLinHL                                          ; $6ab1: $cf
	ld [hl], l                                       ; $6ab2: $75
	inc [hl]                                         ; $6ab3: $34
	ld a, a                                          ; $6ab4: $7f
	adc h                                            ; $6ab5: $8c
	ld a, l                                          ; $6ab6: $7d
	ld e, $93                                        ; $6ab7: $1e $93
	add c                                            ; $6ab9: $81
	add e                                            ; $6aba: $83
	jp nz, $e3c2                                     ; $6abb: $c2 $c2 $e3

	db $e3                                           ; $6abe: $e3
	ldh a, [c]                                       ; $6abf: $f2
	ld a, [$0101]                                    ; $6ac0: $fa $01 $01
	ld [bc], a                                       ; $6ac3: $02
	ld [bc], a                                       ; $6ac4: $02
	ld a, e                                          ; $6ac5: $7b
	ret c                                            ; $6ac6: $d8

	ld [hl], e                                       ; $6ac7: $73
	ld l, d                                          ; $6ac8: $6a
	ld a, c                                          ; $6ac9: $79
	ld b, $9e                                        ; $6aca: $06 $9e
	ldh [$dd], a                                     ; $6acc: $e0 $dd
	ld bc, $8192                                     ; $6ace: $01 $92 $81
	ld b, e                                          ; $6ad1: $43
	and d                                            ; $6ad2: $a2
	and d                                            ; $6ad3: $a2
	sub b                                            ; $6ad4: $90
	ld [hl-], a                                      ; $6ad5: $32
	dec h                                            ; $6ad6: $25
	dec h                                            ; $6ad7: $25
	inc h                                            ; $6ad8: $24
	ld c, e                                          ; $6ad9: $4b
	ld c, b                                          ; $6ada: $48
	ld c, b                                          ; $6adb: $48
	inc bc                                           ; $6adc: $03
	ld [hl], a                                       ; $6add: $77
	ldh [$9e], a                                     ; $6ade: $e0 $9e
	inc b                                            ; $6ae0: $04
	ld a, e                                          ; $6ae1: $7b
	or e                                             ; $6ae2: $b3
	ld a, a                                          ; $6ae3: $7f
	ldh [c], a                                       ; $6ae4: $e2
	ld a, [hl]                                       ; $6ae5: $7e
	db $d3                                           ; $6ae6: $d3
	sub d                                            ; $6ae7: $92

jr_056_6ae8:
	sbc a                                            ; $6ae8: $9f
	ld h, e                                          ; $6ae9: $63
	jr c, jr_056_6ae8                                ; $6aea: $38 $fc

	rst $38                                          ; $6aec: $ff
	ld a, a                                          ; $6aed: $7f
	rrca                                             ; $6aee: $0f
	add e                                            ; $6aef: $83
	ld h, b                                          ; $6af0: $60
	sbc h                                            ; $6af1: $9c
	rst JumpTable                                          ; $6af2: $c7
	rrca                                             ; $6af3: $0f
	inc bc                                           ; $6af4: $03
	ei                                               ; $6af5: $fb
	sbc l                                            ; $6af6: $9d
	di                                               ; $6af7: $f3
	db $fc                                           ; $6af8: $fc
	db $db                                           ; $6af9: $db
	rst $38                                          ; $6afa: $ff
	ld a, a                                          ; $6afb: $7f
	xor l                                            ; $6afc: $ad
	sbc l                                            ; $6afd: $9d
	ld a, h                                          ; $6afe: $7c
	rra                                              ; $6aff: $1f
	ld [hl], a                                       ; $6b00: $77
	db $ed                                           ; $6b01: $ed
	ld a, [hl]                                       ; $6b02: $7e
	sbc d                                            ; $6b03: $9a
	sbc l                                            ; $6b04: $9d
	sbc h                                            ; $6b05: $9c
	db $e3                                           ; $6b06: $e3
	ld [hl], a                                       ; $6b07: $77
	db $ed                                           ; $6b08: $ed
	ld a, e                                          ; $6b09: $7b
	jr nc, jr_056_6aa6                               ; $6b0a: $30 $9a

	add e                                            ; $6b0c: $83
	ld h, e                                          ; $6b0d: $63
	rst $38                                          ; $6b0e: $ff
	dec de                                           ; $6b0f: $1b
	rlca                                             ; $6b10: $07
	ld a, e                                          ; $6b11: $7b
	pop bc                                           ; $6b12: $c1
	sub l                                            ; $6b13: $95
	add d                                            ; $6b14: $82
	ldh [c], a                                       ; $6b15: $e2
	ld e, $e7                                        ; $6b16: $1e $e7
	ld hl, sp-$01                                    ; $6b18: $f8 $ff
	cp $70                                           ; $6b1a: $fe $70
	add b                                            ; $6b1c: $80
	ret nz                                           ; $6b1d: $c0

	ld a, b                                          ; $6b1e: $78
	xor b                                            ; $6b1f: $a8
	sbc h                                            ; $6b20: $9c
	inc hl                                           ; $6b21: $23
	xor h                                            ; $6b22: $ac
	ld [hl], b                                       ; $6b23: $70
	ld [hl], c                                       ; $6b24: $71
	ld [hl], l                                       ; $6b25: $75
	halt                                             ; $6b26: $76
	ld c, b                                          ; $6b27: $48
	rst SubAFromDE                                          ; $6b28: $df
	ld [bc], a                                       ; $6b29: $02
	sbc l                                            ; $6b2a: $9d
	inc b                                            ; $6b2b: $04
	dec b                                            ; $6b2c: $05
	ld sp, hl                                        ; $6b2d: $f9
	rst SubAFromDE                                          ; $6b2e: $df
	db $fd                                           ; $6b2f: $fd
	db $db                                           ; $6b30: $db
	rst $38                                          ; $6b31: $ff
	sbc $8f                                          ; $6b32: $de $8f
	sbc d                                            ; $6b34: $9a
	adc e                                            ; $6b35: $8b
	ld c, e                                          ; $6b36: $4b
	ld c, e                                          ; $6b37: $4b
	ld l, c                                          ; $6b38: $69
	xor c                                            ; $6b39: $a9
	reti                                             ; $6b3a: $d9


	rst $38                                          ; $6b3b: $ff
	sub e                                            ; $6b3c: $93
	ld [hl+], a                                      ; $6b3d: $22
	ld b, b                                          ; $6b3e: $40
	ld b, c                                          ; $6b3f: $41
	ld b, d                                          ; $6b40: $42
	ld b, h                                          ; $6b41: $44
	ld c, b                                          ; $6b42: $48
	ld d, b                                          ; $6b43: $50
	ld h, b                                          ; $6b44: $60
	ld sp, hl                                        ; $6b45: $f9
	pop af                                           ; $6b46: $f1
	di                                               ; $6b47: $f3
	db $fc                                           ; $6b48: $fc
	ld [hl], l                                       ; $6b49: $75
	or a                                             ; $6b4a: $b7
	sbc h                                            ; $6b4b: $9c
	ccf                                              ; $6b4c: $3f
	rst SubAFromDE                                          ; $6b4d: $df
	rra                                              ; $6b4e: $1f
	ld a, b                                          ; $6b4f: $78
	ldh [$df], a                                     ; $6b50: $e0 $df
	rrca                                             ; $6b52: $0f
	ld a, b                                          ; $6b53: $78
	sbc l                                            ; $6b54: $9d
	adc e                                            ; $6b55: $8b
	cp [hl]                                          ; $6b56: $be
	or b                                             ; $6b57: $b0
	ld h, b                                          ; $6b58: $60
	ld a, h                                          ; $6b59: $7c
	ccf                                              ; $6b5a: $3f
	and b                                            ; $6b5b: $a0
	ldh [$e0], a                                     ; $6b5c: $e0 $e0
	pop hl                                           ; $6b5e: $e1
	rst AddAOntoHL                                          ; $6b5f: $ef
	ldh [$f0], a                                     ; $6b60: $e0 $f0
	cp $c3                                           ; $6b62: $fe $c3
	db $e3                                           ; $6b64: $e3
	and b                                            ; $6b65: $a0
	stop                                             ; $6b66: $10 $00
	dec e                                            ; $6b68: $1d
	ld c, $7b                                        ; $6b69: $0e $7b
	xor c                                            ; $6b6b: $a9
	add b                                            ; $6b6c: $80
	ld b, b                                          ; $6b6d: $40
	ldh [$f1], a                                     ; $6b6e: $e0 $f1
	ld [bc], a                                       ; $6b70: $02
	nop                                              ; $6b71: $00
	nop                                              ; $6b72: $00
	sbc b                                            ; $6b73: $98
	jr z, jr_056_6be2                                ; $6b74: $28 $6c

	dec [hl]                                         ; $6b76: $35
	sub l                                            ; $6b77: $95
	dec e                                            ; $6b78: $1d
	ccf                                              ; $6b79: $3f
	ld a, a                                          ; $6b7a: $7f
	ld a, a                                          ; $6b7b: $7f
	rra                                              ; $6b7c: $1f
	rra                                              ; $6b7d: $1f
	rst GetHLinHL                                          ; $6b7e: $cf
	rrca                                             ; $6b7f: $0f
	rlca                                             ; $6b80: $07
	dec bc                                           ; $6b81: $0b
	inc de                                           ; $6b82: $13
	sbc l                                            ; $6b83: $9d
	adc l                                            ; $6b84: $8d
	adc l                                            ; $6b85: $8d
	dec c                                            ; $6b86: $0d
	dec b                                            ; $6b87: $05
	rlca                                             ; $6b88: $07
	rlca                                             ; $6b89: $07
	ld [hl], a                                       ; $6b8a: $77
	rst FarCall                                          ; $6b8b: $f7
	ld h, l                                          ; $6b8c: $65

jr_056_6b8d:
	sub b                                            ; $6b8d: $90
	sbc e                                            ; $6b8e: $9b
	ld e, e                                          ; $6b8f: $5b
	ld d, c                                          ; $6b90: $51
	ld a, b                                          ; $6b91: $78
	ld a, [hl]                                       ; $6b92: $7e
	ld a, d                                          ; $6b93: $7a
	ld e, h                                          ; $6b94: $5c
	sub b                                            ; $6b95: $90
	db $fc                                           ; $6b96: $fc
	ldh a, [c]                                       ; $6b97: $f2
	pop af                                           ; $6b98: $f1
	ldh [$f8], a                                     ; $6b99: $e0 $f8
	rst AddAOntoHL                                          ; $6b9b: $ef
	ret z                                            ; $6b9c: $c8

	ret z                                            ; $6b9d: $c8

	inc bc                                           ; $6b9e: $03
	ld bc, $8000                                     ; $6b9f: $01 $00 $80
	ld b, b                                          ; $6ba2: $40
	ldh a, [$e0]                                     ; $6ba3: $f0 $e0
	ld [hl], d                                       ; $6ba5: $72
	ld sp, hl                                        ; $6ba6: $f9
	ld a, a                                          ; $6ba7: $7f
	ld hl, sp+$7b                                    ; $6ba8: $f8 $7b
	ei                                               ; $6baa: $fb
	ld [hl], d                                       ; $6bab: $72
	jr jr_056_6b8d                                   ; $6bac: $18 $df

	jr nc, @+$76                                     ; $6bae: $30 $74

	inc [hl]                                         ; $6bb0: $34
	rst SubAFromDE                                          ; $6bb1: $df
	ccf                                              ; $6bb2: $3f
	rst SubAFromDE                                          ; $6bb3: $df
	rra                                              ; $6bb4: $1f
	sbc d                                            ; $6bb5: $9a
	ld b, a                                          ; $6bb6: $47
	inc hl                                           ; $6bb7: $23
	inc hl                                           ; $6bb8: $23
	ld d, e                                          ; $6bb9: $53
	ld d, a                                          ; $6bba: $57
	sbc $8f                                          ; $6bbb: $de $8f
	ld a, l                                          ; $6bbd: $7d
	halt                                             ; $6bbe: $76
	ld a, d                                          ; $6bbf: $7a
	sub e                                            ; $6bc0: $93
	sbc [hl]                                         ; $6bc1: $9e
	ld hl, sp+$79                                    ; $6bc2: $f8 $79
	xor l                                            ; $6bc4: $ad
	ld a, d                                          ; $6bc5: $7a
	adc b                                            ; $6bc6: $88
	halt                                             ; $6bc7: $76
	and [hl]                                         ; $6bc8: $a6
	ld a, l                                          ; $6bc9: $7d
	add [hl]                                         ; $6bca: $86
	ld a, a                                          ; $6bcb: $7f
	dec sp                                           ; $6bcc: $3b
	adc c                                            ; $6bcd: $89
	jr jr_056_6c30                                   ; $6bce: $18 $60

	add b                                            ; $6bd0: $80
	nop                                              ; $6bd1: $00
	or b                                             ; $6bd2: $b0
	sub b                                            ; $6bd3: $90
	db $10                                           ; $6bd4: $10
	jr jr_056_6bdf                                   ; $6bd5: $18 $08

	inc c                                            ; $6bd7: $0c
	inc b                                            ; $6bd8: $04
	ld b, $92                                        ; $6bd9: $06 $92
	ld d, $14                                        ; $6bdb: $16 $14
	inc c                                            ; $6bdd: $0c
	inc c                                            ; $6bde: $0c

jr_056_6bdf:
	dec b                                            ; $6bdf: $05
	dec b                                            ; $6be0: $05
	inc bc                                           ; $6be1: $03

jr_056_6be2:
	ld c, b                                          ; $6be2: $48
	ret nc                                           ; $6be3: $d0

	sbc $90                                          ; $6be4: $de $90
	sbc $20                                          ; $6be6: $de $20
	ld a, b                                          ; $6be8: $78

jr_056_6be9:
	or l                                             ; $6be9: $b5
	ld [hl], h                                       ; $6bea: $74
	cpl                                              ; $6beb: $2f
	adc [hl]                                         ; $6bec: $8e
	rra                                              ; $6bed: $1f
	daa                                              ; $6bee: $27
	jr z, @+$4f                                      ; $6bef: $28 $4d

	ld e, c                                          ; $6bf1: $59
	ld e, c                                          ; $6bf2: $59
	ld h, c                                          ; $6bf3: $61
	sbc b                                            ; $6bf4: $98
	add [hl]                                         ; $6bf5: $86
	ret c                                            ; $6bf6: $d8

	rst SubAFromHL                                          ; $6bf7: $d7
	or d                                             ; $6bf8: $b2
	and [hl]                                         ; $6bf9: $a6
	and [hl]                                         ; $6bfa: $a6
	sbc [hl]                                         ; $6bfb: $9e
	ld h, a                                          ; $6bfc: $67
	ld a, c                                          ; $6bfd: $79
	db $fd                                           ; $6bfe: $fd
	sbc e                                            ; $6bff: $9b
	ret nz                                           ; $6c00: $c0

	jr c, jr_056_6c09                                ; $6c01: $38 $06

	ld bc, $ffd9                                     ; $6c03: $01 $d9 $ff
	ld a, [$c09e]                                    ; $6c06: $fa $9e $c0

jr_056_6c09:
	ld c, e                                          ; $6c09: $4b
	ldh a, [$78]                                     ; $6c0a: $f0 $78
	jr z, jr_056_6be9                                ; $6c0c: $28 $db

	rst $38                                          ; $6c0e: $ff
	sbc h                                            ; $6c0f: $9c
	rst SubAFromDE                                          ; $6c10: $df
	dec sp                                           ; $6c11: $3b
	ld b, $fc                                        ; $6c12: $06 $fc
	sbc h                                            ; $6c14: $9c
	inc a                                            ; $6c15: $3c
	rst JumpTable                                          ; $6c16: $c7
	ld sp, hl                                        ; $6c17: $f9
	call c, $9bff                                    ; $6c18: $dc $ff $9b
	rlca                                             ; $6c1b: $07
	rst JumpTable                                          ; $6c1c: $c7
	ld a, h                                          ; $6c1d: $7c
	rrca                                             ; $6c1e: $0f
	halt                                             ; $6c1f: $76
	ld c, e                                          ; $6c20: $4b
	sbc l                                            ; $6c21: $9d
	ld bc, $7886                                     ; $6c22: $01 $86 $78
	dec hl                                           ; $6c25: $2b
	sbc $ff                                          ; $6c26: $de $ff
	sub [hl]                                         ; $6c28: $96
	cp a                                             ; $6c29: $bf
	dec e                                            ; $6c2a: $1d
	inc e                                            ; $6c2b: $1c
	adc h                                            ; $6c2c: $8c
	db $fc                                           ; $6c2d: $fc
	ld a, [hl]                                       ; $6c2e: $7e
	rrca                                             ; $6c2f: $0f

jr_056_6c30:
	inc bc                                           ; $6c30: $03
	db $10                                           ; $6c31: $10
	ld a, b                                          ; $6c32: $78
	cpl                                              ; $6c33: $2f
	sbc l                                            ; $6c34: $9d
	add h                                            ; $6c35: $84
	db $f4                                           ; $6c36: $f4
	ld a, e                                          ; $6c37: $7b
	ld h, a                                          ; $6c38: $67
	sbc h                                            ; $6c39: $9c
	rst SubAFromDE                                          ; $6c3a: $df
	ld e, $1e                                        ; $6c3b: $1e $1e
	sbc $0e                                          ; $6c3d: $de $0e
	ld l, a                                          ; $6c3f: $6f
	set 7, [hl]                                      ; $6c40: $cb $fe
	sub a                                            ; $6c42: $97
	call c, $cecc                                    ; $6c43: $dc $cc $ce
	ld b, [hl]                                       ; $6c46: $46
	ld b, e                                          ; $6c47: $43
	inc hl                                           ; $6c48: $23
	ld hl, $7110                                     ; $6c49: $21 $10 $71
	jp hl                                            ; $6c4c: $e9


	cp $8d                                           ; $6c4d: $fe $8d
	ld de, $070c                                     ; $6c4f: $11 $0c $07
	inc b                                            ; $6c52: $04
	dec bc                                           ; $6c53: $0b
	sbc h                                            ; $6c54: $9c
	ld a, b                                          ; $6c55: $78
	jr c, jr_056_6c09                                ; $6c56: $38 $b1

	call c, $dcef                                    ; $6c58: $dc $ef $dc
	cp e                                             ; $6c5b: $bb
	db $f4                                           ; $6c5c: $f4
	ld a, b                                          ; $6c5d: $78
	jr z, @+$01                                      ; $6c5e: $28 $ff

	nop                                              ; $6c60: $00
	ld a, c                                          ; $6c61: $79
	ld [hl], l                                       ; $6c62: $75
	sbc c                                            ; $6c63: $99
	ld h, b                                          ; $6c64: $60
	jr jr_056_6c6d                                   ; $6c65: $18 $06

	rst $38                                          ; $6c67: $ff
	nop                                              ; $6c68: $00
	ret nz                                           ; $6c69: $c0

	ld a, c                                          ; $6c6a: $79
	pop hl                                           ; $6c6b: $e1
	adc l                                            ; $6c6c: $8d

jr_056_6c6d:
	jr c, jr_056_6c7d                                ; $6c6d: $38 $0e

	rst $38                                          ; $6c6f: $ff
	rra                                              ; $6c70: $1f
	rst $38                                          ; $6c71: $ff
	rra                                              ; $6c72: $1f
	rra                                              ; $6c73: $1f
	ld a, a                                          ; $6c74: $7f
	di                                               ; $6c75: $f3
	xor $e5                                          ; $6c76: $ee $e5
	add hl, bc                                       ; $6c78: $09
	ld sp, $0101                                     ; $6c79: $31 $01 $01
	rra                                              ; $6c7c: $1f

jr_056_6c7d:
	jr nz, @+$42                                     ; $6c7d: $20 $40

	ld l, c                                          ; $6c7f: $69
	ld a, c                                          ; $6c80: $79
	adc l                                            ; $6c81: $8d
	ld a, l                                          ; $6c82: $7d
	sbc [hl]                                         ; $6c83: $9e
	ld c, $06                                        ; $6c84: $0e $06
	ld b, $05                                        ; $6c86: $06 $05
	inc b                                            ; $6c88: $04
	adc b                                            ; $6c89: $88
	ld c, b                                          ; $6c8a: $48
	db $ec                                           ; $6c8b: $ec
	call $8dcd                                       ; $6c8c: $cd $cd $8d
	adc h                                            ; $6c8f: $8c
	adc [hl]                                         ; $6c90: $8e
	adc [hl]                                         ; $6c91: $8e
	add $c8                                          ; $6c92: $c6 $c8
	sbc $88                                          ; $6c94: $de $88
	ld a, a                                          ; $6c96: $7f
	adc a                                            ; $6c97: $8f
	rst SubAFromDE                                          ; $6c98: $df
	add h                                            ; $6c99: $84
	ld a, d                                          ; $6c9a: $7a
	adc $7f                                          ; $6c9b: $ce $7f
	ld c, $df                                        ; $6c9d: $0e $df
	db $10                                           ; $6c9f: $10
	sbc [hl]                                         ; $6ca0: $9e
	jr nc, @-$05                                     ; $6ca1: $30 $f9

	ld a, [hl]                                       ; $6ca3: $7e
	ldh a, [c]                                       ; $6ca4: $f2
	rst SubAFromDE                                          ; $6ca5: $df
	jr @+$7f                                         ; $6ca6: $18 $7d

	ld [hl], c                                       ; $6ca8: $71
	sbc l                                            ; $6ca9: $9d
	ld a, l                                          ; $6caa: $7d
	ld hl, sp+$7a                                    ; $6cab: $f8 $7a
	ld d, l                                          ; $6cad: $55
	ld a, [hl]                                       ; $6cae: $7e
	add c                                            ; $6caf: $81
	sbc h                                            ; $6cb0: $9c
	rlca                                             ; $6cb1: $07
	add hl, bc                                       ; $6cb2: $09
	db $10                                           ; $6cb3: $10
	ld l, d                                          ; $6cb4: $6a
	cp b                                             ; $6cb5: $b8
	sbc l                                            ; $6cb6: $9d
	sbc a                                            ; $6cb7: $9f
	ldh a, [$79]                                     ; $6cb8: $f0 $79
	ld de, $e0df                                     ; $6cba: $11 $df $e0
	rst SubAFromDE                                          ; $6cbd: $df
	ldh a, [rHDMA3]                                  ; $6cbe: $f0 $53
	jr jr_056_6d3f                                   ; $6cc0: $18 $7d

	ld d, d                                          ; $6cc2: $52
	sub c                                            ; $6cc3: $91
	ld a, [de]                                       ; $6cc4: $1a
	ld [bc], a                                       ; $6cc5: $02
	add a                                            ; $6cc6: $87
	adc a                                            ; $6cc7: $8f
	db $fc                                           ; $6cc8: $fc
	or $f2                                           ; $6cc9: $f6 $f2
	ei                                               ; $6ccb: $fb
	ld sp, hl                                        ; $6ccc: $f9
	inc bc                                           ; $6ccd: $03
	inc bc                                           ; $6cce: $03
	inc b                                            ; $6ccf: $04
	jr jr_056_6d42                                   ; $6cd0: $18 $70

	ld a, e                                          ; $6cd2: $7b
	or a                                             ; $6cd3: $b7
	ld [hl], l                                       ; $6cd4: $75
	ld [hl], d                                       ; $6cd5: $72
	sbc e                                            ; $6cd6: $9b
	ld h, c                                          ; $6cd7: $61
	jr nc, jr_056_6cf2                               ; $6cd8: $30 $18

	ld c, $7a                                        ; $6cda: $0e $7a
	ld e, l                                          ; $6cdc: $5d
	sbc c                                            ; $6cdd: $99
	ld a, a                                          ; $6cde: $7f
	ld a, $1e                                        ; $6cdf: $3e $1e
	rrca                                             ; $6ce1: $0f
	dec b                                            ; $6ce2: $05
	ld h, c                                          ; $6ce3: $61
	ld [hl], e                                       ; $6ce4: $73
	add hl, de                                       ; $6ce5: $19
	sbc h                                            ; $6ce6: $9c
	ccf                                              ; $6ce7: $3f
	rrca                                             ; $6ce8: $0f
	sbc [hl]                                         ; $6ce9: $9e
	ld l, h                                          ; $6cea: $6c
	ld l, a                                          ; $6ceb: $6f
	ld a, a                                          ; $6cec: $7f
	ld e, e                                          ; $6ced: $5b
	rst $38                                          ; $6cee: $ff
	sbc d                                            ; $6cef: $9a
	ld h, b                                          ; $6cf0: $60
	ret c                                            ; $6cf1: $d8

jr_056_6cf2:
	or [hl]                                          ; $6cf2: $b6
	ld l, h                                          ; $6cf3: $6c
	ld e, c                                          ; $6cf4: $59
	reti                                             ; $6cf5: $d9


	rst $38                                          ; $6cf6: $ff
	sbc e                                            ; $6cf7: $9b
	jr nc, jr_056_6d08                               ; $6cf8: $30 $0e

	rrca                                             ; $6cfa: $0f
	rra                                              ; $6cfb: $1f
	ld a, b                                          ; $6cfc: $78
	ld h, c                                          ; $6cfd: $61
	ld [hl], d                                       ; $6cfe: $72
	db $f4                                           ; $6cff: $f4
	ld l, a                                          ; $6d00: $6f
	xor b                                            ; $6d01: $a8
	ld a, l                                          ; $6d02: $7d
	ld d, b                                          ; $6d03: $50
	sbc l                                            ; $6d04: $9d
	call z, Call_056_5e83                            ; $6d05: $cc $83 $5e

jr_056_6d08:
	ret nz                                           ; $6d08: $c0

	db $fc                                           ; $6d09: $fc
	sbc h                                            ; $6d0a: $9c
	add b                                            ; $6d0b: $80
	ld [hl], b                                       ; $6d0c: $70
	inc c                                            ; $6d0d: $0c
	ld h, $a0                                        ; $6d0e: $26 $a0
	sbc $01                                          ; $6d10: $de $01
	ld a, h                                          ; $6d12: $7c
	scf                                              ; $6d13: $37
	sub b                                            ; $6d14: $90
	ld [$2010], sp                                   ; $6d15: $08 $10 $20
	rst $38                                          ; $6d18: $ff
	ei                                               ; $6d19: $fb
	ei                                               ; $6d1a: $fb
	di                                               ; $6d1b: $f3
	rst SubAFromBC                                          ; $6d1c: $e7
	rst SubAFromBC                                          ; $6d1d: $e7
	rst GetHLinHL                                          ; $6d1e: $cf
	sbc a                                            ; $6d1f: $9f
	add [hl]                                         ; $6d20: $86
	add [hl]                                         ; $6d21: $86
	add d                                            ; $6d22: $82
	jp nz, Jump_056_5677                             ; $6d23: $c2 $77 $56

	ld l, a                                          ; $6d26: $6f
	ret z                                            ; $6d27: $c8

	rst SubAFromDE                                          ; $6d28: $df
	add b                                            ; $6d29: $80
	halt                                             ; $6d2a: $76
	ld [hl+], a                                      ; $6d2b: $22
	sbc e                                            ; $6d2c: $9b
	inc c                                            ; $6d2d: $0c
	ld c, $06                                        ; $6d2e: $0e $06
	rlca                                             ; $6d30: $07
	ld sp, hl                                        ; $6d31: $f9
	sbc d                                            ; $6d32: $9a
	inc e                                            ; $6d33: $1c
	rrca                                             ; $6d34: $0f
	inc bc                                           ; $6d35: $03
	rlca                                             ; $6d36: $07
	ld [$10dd], sp                                   ; $6d37: $08 $dd $10
	adc b                                            ; $6d3a: $88
	inc c                                            ; $6d3b: $0c
	inc bc                                           ; $6d3c: $03
	rlca                                             ; $6d3d: $07
	rrca                                             ; $6d3e: $0f

jr_056_6d3f:
	ld e, $1e                                        ; $6d3f: $1e $1e
	rra                                              ; $6d41: $1f

jr_056_6d42:
	inc bc                                           ; $6d42: $03
	inc bc                                           ; $6d43: $03
	add $ff                                          ; $6d44: $c6 $ff
	ld a, [hl]                                       ; $6d46: $7e
	inc l                                            ; $6d47: $2c
	jr nz, @+$22                                     ; $6d48: $20 $20

	ld bc, $0301                                     ; $6d4a: $01 $01 $03
	jp $ecf2                                         ; $6d4d: $c3 $f2 $ec


	ld h, b                                          ; $6d50: $60
	ld h, b                                          ; $6d51: $60
	db $dd                                           ; $6d52: $dd
	add b                                            ; $6d53: $80
	sub [hl]                                         ; $6d54: $96
	sub b                                            ; $6d55: $90
	ld c, h                                          ; $6d56: $4c
	jr nz, jr_056_6d78                               ; $6d57: $20 $1f

	call nc, $fafc                                   ; $6d59: $d4 $fc $fa
	db $fd                                           ; $6d5c: $fd
	cp $78                                           ; $6d5d: $fe $78
	ld l, h                                          ; $6d5f: $6c
	adc h                                            ; $6d60: $8c
	jr nc, @+$3a                                     ; $6d61: $30 $38

	ld a, b                                          ; $6d63: $78
	db $fd                                           ; $6d64: $fd
	ld a, a                                          ; $6d65: $7f
	rst $38                                          ; $6d66: $ff
	sbc a                                            ; $6d67: $9f
	rra                                              ; $6d68: $1f
	ld sp, $2829                                     ; $6d69: $31 $29 $28
	dec h                                            ; $6d6c: $25
	ld [hl+], a                                      ; $6d6d: $22
	ld b, b                                          ; $6d6e: $40
	add b                                            ; $6d6f: $80
	nop                                              ; $6d70: $00
	add $e6                                          ; $6d71: $c6 $e6
	rst FarCall                                          ; $6d73: $f7

jr_056_6d74:
	ld [hl], c                                       ; $6d74: $71
	ld [hl], l                                       ; $6d75: $75
	rst SubAFromDE                                          ; $6d76: $df
	add h                                            ; $6d77: $84

jr_056_6d78:
	sbc [hl]                                         ; $6d78: $9e
	add d                                            ; $6d79: $82
	call c, $9a02                                    ; $6d7a: $dc $02 $9a
	jr nc, jr_056_6db8                               ; $6d7d: $30 $39

	ld a, c                                          ; $6d7f: $79
	ld a, c                                          ; $6d80: $79
	ei                                               ; $6d81: $fb
	ld a, b                                          ; $6d82: $78
	ld e, e                                          ; $6d83: $5b
	ld a, [hl]                                       ; $6d84: $7e
	rst JumpTable                                          ; $6d85: $c7
	sbc $10                                          ; $6d86: $de $10
	sbc $20                                          ; $6d88: $de $20
	sbc [hl]                                         ; $6d8a: $9e
	ld hl, sp-$22                                    ; $6d8b: $f8 $de
	ldh a, [$9e]                                     ; $6d8d: $f0 $9e
	pop af                                           ; $6d8f: $f1
	ld a, e                                          ; $6d90: $7b
	sbc $df                                          ; $6d91: $de $df
	jr nz, jr_056_6d74                               ; $6d93: $20 $df

	ld b, b                                          ; $6d95: $40
	ld a, e                                          ; $6d96: $7b
	add b                                            ; $6d97: $80
	adc [hl]                                         ; $6d98: $8e
	ld bc, $474f                                     ; $6d99: $01 $4f $47
	inc hl                                           ; $6d9c: $23
	rla                                              ; $6d9d: $17
	rst $38                                          ; $6d9e: $ff
	rst $38                                          ; $6d9f: $ff
	rst JumpTable                                          ; $6da0: $c7
	rst SubAFromBC                                          ; $6da1: $e7
	ld a, b                                          ; $6da2: $78
	ld a, l                                          ; $6da3: $7d
	ccf                                              ; $6da4: $3f
	ld e, $1a                                        ; $6da5: $1e $1a
	ld h, d                                          ; $6da7: $62
	add d                                            ; $6da8: $82
	ld [bc], a                                       ; $6da9: $02
	ld [hl], h                                       ; $6daa: $74
	dec l                                            ; $6dab: $2d
	sbc c                                            ; $6dac: $99
	di                                               ; $6dad: $f3
	db $e3                                           ; $6dae: $e3
	db $e3                                           ; $6daf: $e3
	rst $38                                          ; $6db0: $ff
	ld h, d                                          ; $6db1: $62
	and b                                            ; $6db2: $a0
	ld [hl], a                                       ; $6db3: $77
	pop de                                           ; $6db4: $d1
	rst SubAFromDE                                          ; $6db5: $df
	ld b, b                                          ; $6db6: $40
	sbc [hl]                                         ; $6db7: $9e

jr_056_6db8:
	pop af                                           ; $6db8: $f1
	ld [hl], l                                       ; $6db9: $75
	ld c, h                                          ; $6dba: $4c
	ld a, l                                          ; $6dbb: $7d
	ld [hl], $9c                                     ; $6dbc: $36 $9c
	db $fc                                           ; $6dbe: $fc
	jr nc, jr_056_6e21                               ; $6dbf: $30 $60

	ei                                               ; $6dc1: $fb
	sub [hl]                                         ; $6dc2: $96
	add a                                            ; $6dc3: $87
	add e                                            ; $6dc4: $83
	jp Jump_056_6143                                 ; $6dc5: $c3 $43 $61


	ld hl, $0121                                     ; $6dc8: $21 $21 $01
	ld [bc], a                                       ; $6dcb: $02
	ld [hl], d                                       ; $6dcc: $72
	pop de                                           ; $6dcd: $d1
	rst $38                                          ; $6dce: $ff
	sbc l                                            ; $6dcf: $9d
	add e                                            ; $6dd0: $83
	ldh a, [$6c]                                     ; $6dd1: $f0 $6c
	ld d, a                                          ; $6dd3: $57
	ld a, [hl]                                       ; $6dd4: $7e
	cp $9c                                           ; $6dd5: $fe $9c
	add e                                            ; $6dd7: $83
	add b                                            ; $6dd8: $80
	add b                                            ; $6dd9: $80
	sbc $40                                          ; $6dda: $de $40
	ld h, c                                          ; $6ddc: $61
	nop                                              ; $6ddd: $00
	call c, $9d66                                    ; $6dde: $dc $66 $9d
	ld h, l                                          ; $6de1: $65
	ld d, l                                          ; $6de2: $55
	reti                                             ; $6de3: $d9


	ld h, [hl]                                       ; $6de4: $66
	rst SubAFromDE                                          ; $6de5: $df
	ld d, l                                          ; $6de6: $55
	ld [hl], a                                       ; $6de7: $77
	ei                                               ; $6de8: $fb
	sbc [hl]                                         ; $6de9: $9e
	ld d, [hl]                                       ; $6dea: $56
	ld a, e                                          ; $6deb: $7b
	db $ed                                           ; $6dec: $ed
	sbc l                                            ; $6ded: $9d
	ld b, h                                          ; $6dee: $44
	ld b, l                                          ; $6def: $45
	ld l, e                                          ; $6df0: $6b
	or $88                                           ; $6df1: $f6 $88
	ld d, l                                          ; $6df3: $55
	ld d, h                                          ; $6df4: $54
	ld b, l                                          ; $6df5: $45
	ld h, l                                          ; $6df6: $65
	ld d, [hl]                                       ; $6df7: $56
	ld h, [hl]                                       ; $6df8: $66
	ld d, h                                          ; $6df9: $54
	ld b, h                                          ; $6dfa: $44
	ld h, $56                                        ; $6dfb: $26 $56
	ld b, l                                          ; $6dfd: $45
	ld b, h                                          ; $6dfe: $44
	ld d, [hl]                                       ; $6dff: $56
	ld d, e                                          ; $6e00: $53
	ld h, [hl]                                       ; $6e01: $66
	ld h, [hl]                                       ; $6e02: $66
	inc h                                            ; $6e03: $24
	ld b, h                                          ; $6e04: $44
	ld [hl+], a                                      ; $6e05: $22
	ld h, l                                          ; $6e06: $65
	ld b, h                                          ; $6e07: $44
	ld b, h                                          ; $6e08: $44
	ld d, [hl]                                       ; $6e09: $56
	ld a, e                                          ; $6e0a: $7b
	sub $97                                          ; $6e0b: $d6 $97
	ld h, d                                          ; $6e0d: $62
	ld b, h                                          ; $6e0e: $44
	ld d, d                                          ; $6e0f: $52
	ld d, h                                          ; $6e10: $54
	ld b, h                                          ; $6e11: $44
	ld b, l                                          ; $6e12: $45
	ld h, d                                          ; $6e13: $62
	inc h                                            ; $6e14: $24
	ld a, e                                          ; $6e15: $7b
	db $db                                           ; $6e16: $db
	adc l                                            ; $6e17: $8d
	ld [hl+], a                                      ; $6e18: $22
	ld [hl-], a                                      ; $6e19: $32
	ld d, e                                          ; $6e1a: $53
	ld b, h                                          ; $6e1b: $44
	ld b, l                                          ; $6e1c: $45
	ld d, d                                          ; $6e1d: $52
	inc h                                            ; $6e1e: $24
	ld d, d                                          ; $6e1f: $52
	ld h, [hl]                                       ; $6e20: $66

jr_056_6e21:
	ld h, [hl]                                       ; $6e21: $66
	ld h, e                                          ; $6e22: $63
	dec [hl]                                         ; $6e23: $35
	ld [hl-], a                                      ; $6e24: $32
	inc h                                            ; $6e25: $24
	ld b, l                                          ; $6e26: $45
	ld d, e                                          ; $6e27: $53
	inc h                                            ; $6e28: $24
	ld [hl-], a                                      ; $6e29: $32
	sbc $66                                          ; $6e2a: $de $66
	sbc $33                                          ; $6e2c: $de $33
	sbc d                                            ; $6e2e: $9a
	scf                                              ; $6e2f: $37
	inc sp                                           ; $6e30: $33
	ld [hl+], a                                      ; $6e31: $22
	inc sp                                           ; $6e32: $33
	dec h                                            ; $6e33: $25
	ld [hl], a                                       ; $6e34: $77
	push af                                          ; $6e35: $f5
	sbc c                                            ; $6e36: $99
	ld [hl], a                                       ; $6e37: $77
	ld [hl], e                                       ; $6e38: $73
	inc sp                                           ; $6e39: $33
	ld [hl-], a                                      ; $6e3a: $32
	inc sp                                           ; $6e3b: $33
	dec h                                            ; $6e3c: $25
	ld h, b                                          ; $6e3d: $60
	add [hl]                                         ; $6e3e: $86
	reti                                             ; $6e3f: $d9


	rst $38                                          ; $6e40: $ff
	ld sp, hl                                        ; $6e41: $f9
	inc bc                                           ; $6e42: $03
	ldh a, [rWX]                                     ; $6e43: $f0 $4b
	ldh a, [$9e]                                     ; $6e45: $f0 $9e
	db $fd                                           ; $6e47: $fd
	sbc $fb                                          ; $6e48: $de $fb
	sbc e                                            ; $6e4a: $9b
	di                                               ; $6e4b: $f3
	rst FarCall                                          ; $6e4c: $f7
	rst FarCall                                          ; $6e4d: $f7
	rst SubAFromBC                                          ; $6e4e: $e7
	inc bc                                           ; $6e4f: $03
	ret nc                                           ; $6e50: $d0

	db $fd                                           ; $6e51: $fd
	sbc [hl]                                         ; $6e52: $9e
	ld bc, $f047                                     ; $6e53: $01 $47 $f0
	sbc l                                            ; $6e56: $9d
	cp $81                                           ; $6e57: $fe $81
	ld e, e                                          ; $6e59: $5b
	ldh a, [$9a]                                     ; $6e5a: $f0 $9a
	inc bc                                           ; $6e5c: $03
	inc e                                            ; $6e5d: $1c
	jp hl                                            ; $6e5e: $e9


	scf                                              ; $6e5f: $37
	sbc h                                            ; $6e60: $9c
	ld h, e                                          ; $6e61: $63
	ldh a, [$98]                                     ; $6e62: $f0 $98
	ld bc, $e23f                                     ; $6e64: $01 $3f $e2
	ld b, c                                          ; $6e67: $41
	ld hl, sp-$3a                                    ; $6e68: $f8 $c6
	ld sp, $f063                                     ; $6e6a: $31 $63 $f0
	sbc b                                            ; $6e6d: $98
	add b                                            ; $6e6e: $80
	nop                                              ; $6e6f: $00
	nop                                              ; $6e70: $00
	ret nz                                           ; $6e71: $c0

	jr nz, jr_056_6e8c                               ; $6e72: $20 $18

	add h                                            ; $6e74: $84
	inc bc                                           ; $6e75: $03
	ld h, b                                          ; $6e76: $60
	rlca                                             ; $6e77: $07
	ld d, b                                          ; $6e78: $50
	rst SubAFromDE                                          ; $6e79: $df
	db $fd                                           ; $6e7a: $fd
	sbc [hl]                                         ; $6e7b: $9e
	db $fc                                           ; $6e7c: $fc
	db $dd                                           ; $6e7d: $dd
	cp $53                                           ; $6e7e: $fe $53
	ldh [$de], a                                     ; $6e80: $e0 $de
	db $fc                                           ; $6e82: $fc
	ld e, e                                          ; $6e83: $5b
	ldh a, [$9e]                                     ; $6e84: $f0 $9e
	ld hl, sp-$0b                                    ; $6e86: $f8 $f5
	sbc h                                            ; $6e88: $9c
	rst $38                                          ; $6e89: $ff
	cp $c0                                           ; $6e8a: $fe $c0

jr_056_6e8c:
	db $f4                                           ; $6e8c: $f4
	ld d, e                                          ; $6e8d: $53
	db $e3                                           ; $6e8e: $e3
	ld [hl], a                                       ; $6e8f: $77
	ldh [rOCPD], a                                   ; $6e90: $e0 $6b
	sbc [hl]                                         ; $6e92: $9e
	inc bc                                           ; $6e93: $03
	ldh a, [$2b]                                     ; $6e94: $f0 $2b
	ldh a, [$97]                                     ; $6e96: $f0 $97
	rst AddAOntoHL                                          ; $6e98: $ef
	nop                                              ; $6e99: $00
	rst GetHLinHL                                          ; $6e9a: $cf
	rst SubAFromDE                                          ; $6e9b: $df
	rst SubAFromDE                                          ; $6e9c: $df
	sbc a                                            ; $6e9d: $9f
	sbc a                                            ; $6e9e: $9f
	cp a                                             ; $6e9f: $bf
	inc bc                                           ; $6ea0: $03
	ret nc                                           ; $6ea1: $d0

	ld a, [hl]                                       ; $6ea2: $7e
	rst AddAOntoHL                                          ; $6ea3: $ef
	rst SubAFromDE                                          ; $6ea4: $df
	ld [bc], a                                       ; $6ea5: $02
	add b                                            ; $6ea6: $80
	inc b                                            ; $6ea7: $04
	dec c                                            ; $6ea8: $0d
	ld a, d                                          ; $6ea9: $7a
	call $35fa                                       ; $6eaa: $cd $fa $35
	jp nz, Jump_056_7081                             ; $6ead: $c2 $81 $70

	sbc $a3                                          ; $6eb0: $de $a3
	ld [hl], b                                       ; $6eb2: $70
	db $fc                                           ; $6eb3: $fc
	adc $07                                          ; $6eb4: $ce $07
	ld a, a                                          ; $6eb6: $7f
	adc a                                            ; $6eb7: $8f
	ccf                                              ; $6eb8: $3f
	ld a, a                                          ; $6eb9: $7f
	ld l, a                                          ; $6eba: $6f
	db $dd                                           ; $6ebb: $dd
	ld b, d                                          ; $6ebc: $42
	and l                                            ; $6ebd: $a5
	or h                                             ; $6ebe: $b4
	jp z, $f9b2                                      ; $6ebf: $ca $b2 $f9

	di                                               ; $6ec2: $f3
	ld h, b                                          ; $6ec3: $60
	db $fc                                           ; $6ec4: $fc
	jp nz, $f980                                     ; $6ec5: $c2 $80 $f9

	call z, $f3c7                                    ; $6ec8: $cc $c7 $f3
	rst SubAFromDE                                          ; $6ecb: $df
	db $ed                                           ; $6ecc: $ed
	ld [hl], a                                       ; $6ecd: $77
	dec hl                                           ; $6ece: $2b
	rst SubAFromHL                                          ; $6ecf: $d7
	dec hl                                           ; $6ed0: $2b
	ld e, [hl]                                       ; $6ed1: $5e
	ld [hl+], a                                      ; $6ed2: $22
	ld e, $cb                                        ; $6ed3: $1e $cb
	ld h, h                                          ; $6ed5: $64
	ld [hl-], a                                      ; $6ed6: $32
	add hl, de                                       ; $6ed7: $19
	call z, $bf67                                    ; $6ed8: $cc $67 $bf
	ei                                               ; $6edb: $fb
	db $dd                                           ; $6edc: $dd
	ld [hl], d                                       ; $6edd: $72
	xor l                                            ; $6ede: $ad
	ld c, d                                          ; $6edf: $4a
	and d                                            ; $6ee0: $a2
	ret c                                            ; $6ee1: $d8

	ld sp, hl                                        ; $6ee2: $f9
	ld h, [hl]                                       ; $6ee3: $66
	or e                                             ; $6ee4: $b3
	call $329a                                       ; $6ee5: $cd $9a $32
	sbc l                                            ; $6ee8: $9d
	rst JumpTable                                          ; $6ee9: $c7
	ld h, c                                          ; $6eea: $61
	cp $7b                                           ; $6eeb: $fe $7b
	or b                                             ; $6eed: $b0
	sbc d                                            ; $6eee: $9a
	ld e, b                                          ; $6eef: $58
	di                                               ; $6ef0: $f3
	ld l, $a1                                        ; $6ef1: $2e $a1
	ld a, c                                          ; $6ef3: $79
	ld [hl], a                                       ; $6ef4: $77
	ld d, $9b                                        ; $6ef5: $16 $9b
	inc a                                            ; $6ef7: $3c
	sbc a                                            ; $6ef8: $9f
	rst GetHLinHL                                          ; $6ef9: $cf
	jr nc, jr_056_6f57                               ; $6efa: $30 $5b

	sub b                                            ; $6efc: $90
	ld a, [hl]                                       ; $6efd: $7e
	and c                                            ; $6efe: $a1
	sbc h                                            ; $6eff: $9c
	db $10                                           ; $6f00: $10
	rst $38                                          ; $6f01: $ff
	rlca                                             ; $6f02: $07
	ld c, a                                          ; $6f03: $4f
	add b                                            ; $6f04: $80
	sbc l                                            ; $6f05: $9d
	add b                                            ; $6f06: $80
	ld a, b                                          ; $6f07: $78
	ld b, a                                          ; $6f08: $47
	ld [hl], b                                       ; $6f09: $70
	ld a, [hl]                                       ; $6f0a: $7e
	rst JumpTable                                          ; $6f0b: $c7
	ld [hl], d                                       ; $6f0c: $72
	pop bc                                           ; $6f0d: $c1
	ld h, d                                          ; $6f0e: $62
	ret nz                                           ; $6f0f: $c0

	ld a, [hl]                                       ; $6f10: $7e
	rst JumpTable                                          ; $6f11: $c7
	db $dd                                           ; $6f12: $dd
	ld a, h                                          ; $6f13: $7c
	rst SubAFromDE                                          ; $6f14: $df
	ld a, [hl]                                       ; $6f15: $7e
	ldh [$c9], a                                     ; $6f16: $e0 $c9
	ld [bc], a                                       ; $6f18: $02
	ld b, b                                          ; $6f19: $40
	ccf                                              ; $6f1a: $3f
	ldh a, [$de]                                     ; $6f1b: $f0 $de
	cp $5e                                           ; $6f1d: $fe $5e
	ld d, b                                          ; $6f1f: $50
	rst SubAFromDE                                          ; $6f20: $df
	ccf                                              ; $6f21: $3f
	sbc $7f                                          ; $6f22: $de $7f
	inc bc                                           ; $6f24: $03
	ret nz                                           ; $6f25: $c0

	rst SubAFromDE                                          ; $6f26: $df
	rst $38                                          ; $6f27: $ff
	add b                                            ; $6f28: $80
	dec h                                            ; $6f29: $25
	add hl, de                                       ; $6f2a: $19
	ld a, [bc]                                       ; $6f2b: $0a
	ld a, [bc]                                       ; $6f2c: $0a
	inc d                                            ; $6f2d: $14
	dec d                                            ; $6f2e: $15
	dec c                                            ; $6f2f: $0d
	dec b                                            ; $6f30: $05
	sub $79                                          ; $6f31: $d6 $79
	or [hl]                                          ; $6f33: $b6
	or a                                             ; $6f34: $b7
	push af                                          ; $6f35: $f5
	ld a, a                                          ; $6f36: $7f
	push af                                          ; $6f37: $f5
	bit 5, a                                         ; $6f38: $cb $6f
	rst GetHLinHL                                          ; $6f3a: $cf
	db $db                                           ; $6f3b: $db
	push de                                          ; $6f3c: $d5
	sub l                                            ; $6f3d: $95
	sub l                                            ; $6f3e: $95
	ld e, a                                          ; $6f3f: $5f
	ld a, a                                          ; $6f40: $7f
	ld [$f7c4], sp                                   ; $6f41: $08 $c4 $f7
	sbc a                                            ; $6f44: $9f
	adc a                                            ; $6f45: $8f
	add a                                            ; $6f46: $87
	add b                                            ; $6f47: $80
	add b                                            ; $6f48: $80
	add c                                            ; $6f49: $81
	db $dd                                           ; $6f4a: $dd
	rst AddAOntoHL                                          ; $6f4b: $ef
	cp a                                             ; $6f4c: $bf
	inc c                                            ; $6f4d: $0c
	inc b                                            ; $6f4e: $04
	ld [bc], a                                       ; $6f4f: $02
	ld bc, $9981                                     ; $6f50: $01 $81 $99
	ld e, l                                          ; $6f53: $5d
	ld a, a                                          ; $6f54: $7f
	rst SubAFromDE                                          ; $6f55: $df
	cp a                                             ; $6f56: $bf

jr_056_6f57:
	ld [hl], b                                       ; $6f57: $70
	db $e4                                           ; $6f58: $e4
	sbc $ff                                          ; $6f59: $de $ff
	rst $38                                          ; $6f5b: $ff
	ldh a, [c]                                       ; $6f5c: $f2
	ldh a, [$78]                                     ; $6f5d: $f0 $78
	ret nz                                           ; $6f5f: $c0

	add d                                            ; $6f60: $82
	inc a                                            ; $6f61: $3c
	nop                                              ; $6f62: $00
	add b                                            ; $6f63: $80
	ldh [$fe], a                                     ; $6f64: $e0 $fe
	rst AddAOntoHL                                          ; $6f66: $ef
	ld l, l                                          ; $6f67: $6d
	sbc l                                            ; $6f68: $9d
	inc a                                            ; $6f69: $3c
	inc e                                            ; $6f6a: $1c
	sbc $ff                                          ; $6f6b: $de $ff

Call_056_6f6d:
	adc [hl]                                         ; $6f6d: $8e
	ld a, a                                          ; $6f6e: $7f
	add hl, sp                                       ; $6f6f: $39
	jr c, jr_056_6f8a                                ; $6f70: $38 $18

	ld [$0051], sp                                   ; $6f72: $08 $51 $00
	ldh a, [$03]                                     ; $6f75: $f0 $03
	rst $38                                          ; $6f77: $ff
	or $fb                                           ; $6f78: $f6 $fb
	call $ff8e                                       ; $6f7a: $cd $8e $ff
	nop                                              ; $6f7d: $00
	db $fc                                           ; $6f7e: $fc

Jump_056_6f7f:
	db $dd                                           ; $6f7f: $dd
	rst $38                                          ; $6f80: $ff
	add b                                            ; $6f81: $80
	adc h                                            ; $6f82: $8c
	db $d3                                           ; $6f83: $d3
	db $e4                                           ; $6f84: $e4
	ld [de], a                                       ; $6f85: $12
	ld l, c                                          ; $6f86: $69
	jp c, $b56e                                      ; $6f87: $da $6e $b5

jr_056_6f8a:
	inc bc                                           ; $6f8a: $03
	ldh [rAUD2LOW], a                                ; $6f8b: $e0 $18
	inc c                                            ; $6f8d: $0c
	add [hl]                                         ; $6f8e: $86
	rst SubAFromBC                                          ; $6f8f: $e7
	or e                                             ; $6f90: $b3
	db $db                                           ; $6f91: $db
	rst JumpTable                                          ; $6f92: $c7
	ld sp, $5c98                                     ; $6f93: $31 $98 $5c
	ld c, [hl]                                       ; $6f96: $4e
	add [hl]                                         ; $6f97: $86
	sub a                                            ; $6f98: $97
	rst SubAFromDE                                          ; $6f99: $df
	cp $ff                                           ; $6f9a: $fe $ff
	ld l, a                                          ; $6f9c: $6f
	daa                                              ; $6f9d: $27
	inc sp                                           ; $6f9e: $33
	dec sp                                           ; $6f9f: $3b
	add hl, hl                                       ; $6fa0: $29
	sbc [hl]                                         ; $6fa1: $9e
	add hl, hl                                       ; $6fa2: $29
	ld e, a                                          ; $6fa3: $5f
	ld [hl], b                                       ; $6fa4: $70
	rst SubAFromDE                                          ; $6fa5: $df
	add b                                            ; $6fa6: $80
	db $dd                                           ; $6fa7: $dd
	ld b, b                                          ; $6fa8: $40
	ld a, a                                          ; $6fa9: $7f
	add sp, $4f                                      ; $6faa: $e8 $4f
	ld h, b                                          ; $6fac: $60
	call c, $de7e                                    ; $6fad: $dc $7e $de
	ccf                                              ; $6fb0: $3f
	ldh [$c9], a                                     ; $6fb1: $e0 $c9
	ld [bc], a                                       ; $6fb3: $02
	ret nc                                           ; $6fb4: $d0

	ld b, l                                          ; $6fb5: $45
	nop                                              ; $6fb6: $00
	rst SubAFromDE                                          ; $6fb7: $df
	ld sp, hl                                        ; $6fb8: $f9
	ld a, h                                          ; $6fb9: $7c
	ld d, b                                          ; $6fba: $50
	ld a, h                                          ; $6fbb: $7c
	ld c, a                                          ; $6fbc: $4f
	nop                                              ; $6fbd: $00
	ld d, b                                          ; $6fbe: $50
	ld b, a                                          ; $6fbf: $47
	ldh a, [hDisp1_LCDC]                                     ; $6fc0: $f0 $8f
	inc bc                                           ; $6fc2: $03
	ldh [c], a                                       ; $6fc3: $e2
	ld e, h                                          ; $6fc4: $5c
	jr nz, jr_056_6fe0                               ; $6fc5: $20 $19

	rlca                                             ; $6fc7: $07
	ld [bc], a                                       ; $6fc8: $02
	inc c                                            ; $6fc9: $0c
	dec hl                                           ; $6fca: $2b
	or l                                             ; $6fcb: $b5
	or l                                             ; $6fcc: $b5
	cp e                                             ; $6fcd: $bb
	xor e                                            ; $6fce: $ab
	rst GetHLinHL                                          ; $6fcf: $cf
	rst SubAFromHL                                          ; $6fd0: $d7
	and a                                            ; $6fd1: $a7
	reti                                             ; $6fd2: $d9


	rst $38                                          ; $6fd3: $ff
	adc l                                            ; $6fd4: $8d
	jp nz, Jump_056_70c3                             ; $6fd5: $c2 $c3 $70

	ld hl, sp-$10                                    ; $6fd8: $f8 $f0
	xor b                                            ; $6fda: $a8
	adc $c1                                          ; $6fdb: $ce $c1
	rst JumpTable                                          ; $6fdd: $c7
	ld h, b                                          ; $6fde: $60
	ret nz                                           ; $6fdf: $c0

jr_056_6fe0:
	add b                                            ; $6fe0: $80
	jr c, jr_056_7043                                ; $6fe1: $38 $60

	add h                                            ; $6fe3: $84
	call nz, $e0b0                                   ; $6fe4: $c4 $b0 $e0
	db $fc                                           ; $6fe7: $fc
	sbc h                                            ; $6fe8: $9c

jr_056_6fe9:
	inc hl                                           ; $6fe9: $23
	ld h, b                                          ; $6fea: $60
	ld b, b                                          ; $6feb: $40
	db $fc                                           ; $6fec: $fc
	sbc h                                            ; $6fed: $9c
	jp $0301                                         ; $6fee: $c3 $01 $03


	sbc $0e                                          ; $6ff1: $de $0e
	adc h                                            ; $6ff3: $8c
	rra                                              ; $6ff4: $1f
	ld e, $fe                                        ; $6ff5: $1e $fe
	ld bc, $0703                                     ; $6ff7: $01 $03 $07
	rlca                                             ; $6ffa: $07
	rrca                                             ; $6ffb: $0f
	dec c                                            ; $6ffc: $0d
	inc c                                            ; $6ffd: $0c
	db $fc                                           ; $6ffe: $fc
	db $ec                                           ; $6fff: $ec
	or a                                             ; $7000: $b7
	db $db                                           ; $7001: $db
	db $db                                           ; $7002: $db
	ld l, a                                          ; $7003: $6f
	ccf                                              ; $7004: $3f
	sbc a                                            ; $7005: $9f
	ld a, [hl]                                       ; $7006: $7e
	halt                                             ; $7007: $76
	jr c, jr_056_6fe9                                ; $7008: $38 $df

	db $fc                                           ; $700a: $fc
	sub c                                            ; $700b: $91
	ld hl, sp+$79                                    ; $700c: $f8 $79
	pop de                                           ; $700e: $d1
	pop af                                           ; $700f: $f1
	ld e, [hl]                                       ; $7010: $5e
	xor a                                            ; $7011: $af
	rst SubAFromHL                                          ; $7012: $d7
	db $eb                                           ; $7013: $eb
	push af                                          ; $7014: $f5
	ei                                               ; $7015: $fb
	rst $38                                          ; $7016: $ff
	rst $38                                          ; $7017: $ff
	rrca                                             ; $7018: $0f
	inc bc                                           ; $7019: $03
	cp $8e                                           ; $701a: $fe $8e
	inc bc                                           ; $701c: $03
	xor a                                            ; $701d: $af
	or l                                             ; $701e: $b5
	ld e, [hl]                                       ; $701f: $5e
	xor e                                            ; $7020: $ab
	push bc                                          ; $7021: $c5
	jp z, $e3f5                                      ; $7022: $ca $f5 $e3

	ld e, c                                          ; $7025: $59
	ld e, e                                          ; $7026: $5b
	or e                                             ; $7027: $b3
	halt                                             ; $7028: $76
	cp $7d                                           ; $7029: $fe $7d
	dec sp                                           ; $702b: $3b
	cp a                                             ; $702c: $bf
	reti                                             ; $702d: $d9


	rst $38                                          ; $702e: $ff
	db $dd                                           ; $702f: $dd
	ld b, b                                          ; $7030: $40
	ld a, a                                          ; $7031: $7f
	sbc [hl]                                         ; $7032: $9e
	sbc [hl]                                         ; $7033: $9e
	add b                                            ; $7034: $80
	ld b, e                                          ; $7035: $43
	ld h, b                                          ; $7036: $60
	sbc [hl]                                         ; $7037: $9e
	ccf                                              ; $7038: $3f
	db $dd                                           ; $7039: $dd
	cp a                                             ; $703a: $bf
	sbc $9f                                          ; $703b: $de $9f
	db $f4                                           ; $703d: $f4
	sbc $80                                          ; $703e: $de $80
	ldh [$d9], a                                     ; $7040: $e0 $d9
	inc bc                                           ; $7042: $03

jr_056_7043:
	nop                                              ; $7043: $00
	ld c, e                                          ; $7044: $4b
	ldh a, [$9b]                                     ; $7045: $f0 $9b
	rst SubAFromBC                                          ; $7047: $e7
	rst AddAOntoHL                                          ; $7048: $ef
	rst GetHLinHL                                          ; $7049: $cf
	rst GetHLinHL                                          ; $704a: $cf
	ld d, b                                          ; $704b: $50
	ld d, b                                          ; $704c: $50
	inc bc                                           ; $704d: $03
	ret nz                                           ; $704e: $c0

	db $db                                           ; $704f: $db
	rst $38                                          ; $7050: $ff
	add b                                            ; $7051: $80
	inc de                                           ; $7052: $13
	ld a, [hl]                                       ; $7053: $7e
	inc b                                            ; $7054: $04
	add hl, bc                                       ; $7055: $09
	add hl, bc                                       ; $7056: $09
	ld [de], a                                       ; $7057: $12
	dec [hl]                                         ; $7058: $35
	ld l, e                                          ; $7059: $6b
	ld e, a                                          ; $705a: $5f
	xor a                                            ; $705b: $af
	rst $38                                          ; $705c: $ff
	ld a, a                                          ; $705d: $7f
	ei                                               ; $705e: $fb
	pop af                                           ; $705f: $f1
	ldh [$d0], a                                     ; $7060: $e0 $d0
	rst AddAOntoHL                                          ; $7062: $ef
	rst SubAFromDE                                          ; $7063: $df
	sbc a                                            ; $7064: $9f
	cp a                                             ; $7065: $bf
	ld [hl], c                                       ; $7066: $71
	ldh [$c0], a                                     ; $7067: $e0 $c0
	add b                                            ; $7069: $80
	pop hl                                           ; $706a: $e1
	ldh a, [$fc]                                     ; $706b: $f0 $fc
	rst $38                                          ; $706d: $ff
	inc bc                                           ; $706e: $03
	add b                                            ; $706f: $80
	add b                                            ; $7070: $80
	adc d                                            ; $7071: $8a
	ld b, e                                          ; $7072: $43
	pop bc                                           ; $7073: $c1
	ldh [$f0], a                                     ; $7074: $e0 $f0
	db $fc                                           ; $7076: $fc
	ccf                                              ; $7077: $3f
	sbc a                                            ; $7078: $9f
	rst GetHLinHL                                          ; $7079: $cf
	rst SubAFromBC                                          ; $707a: $e7
	rst SubAFromBC                                          ; $707b: $e7
	xor a                                            ; $707c: $af
	rrca                                             ; $707d: $0f
	rrca                                             ; $707e: $0f
	rst $38                                          ; $707f: $ff
	ccf                                              ; $7080: $3f

Jump_056_7081:
	rst GetHLinHL                                          ; $7081: $cf
	rrca                                             ; $7082: $0f
	db $e4                                           ; $7083: $e4
	add sp, $08                                      ; $7084: $e8 $08
	ld [$f8de], sp                                   ; $7086: $08 $de $f8
	add b                                            ; $7089: $80
	adc b                                            ; $708a: $88
	cp $fe                                           ; $708b: $fe $fe
	rst $38                                          ; $708d: $ff
	rst FarCall                                          ; $708e: $f7
	ei                                               ; $708f: $fb
	db $fd                                           ; $7090: $fd
	cp $ff                                           ; $7091: $fe $ff
	ld b, $02                                        ; $7093: $06 $02
	ld bc, $0509                                     ; $7095: $01 $09 $05
	ld [bc], a                                       ; $7098: $02
	ld bc, $3f00                                     ; $7099: $01 $00 $3f
	dec e                                            ; $709c: $1d
	di                                               ; $709d: $f3
	rst $38                                          ; $709e: $ff
	ld a, a                                          ; $709f: $7f
	cp e                                             ; $70a0: $bb
	ld l, a                                          ; $70a1: $6f
	ld l, a                                          ; $70a2: $6f
	ld [hl-], a                                      ; $70a3: $32
	ld d, $fc                                        ; $70a4: $16 $fc
	ld [$c484], sp                                   ; $70a6: $08 $84 $c4
	add b                                            ; $70a9: $80
	db $d3                                           ; $70aa: $d3
	call nc, $f9fc                                   ; $70ab: $d4 $fc $f9
	ldh a, [c]                                       ; $70ae: $f2
	push hl                                          ; $70af: $e5
	rst GetHLinHL                                          ; $70b0: $cf
	sbc b                                            ; $70b1: $98
	ldh [$e0], a                                     ; $70b2: $e0 $e0
	rlca                                             ; $70b4: $07
	ld c, $1d                                        ; $70b5: $0e $1d
	ld a, [hl-]                                      ; $70b7: $3a

jr_056_70b8:
	ld [hl], a                                       ; $70b8: $77
	db $fc                                           ; $70b9: $fc
	ldh [$60], a                                     ; $70ba: $e0 $60
	rst $38                                          ; $70bc: $ff
	pop af                                           ; $70bd: $f1
	ldh [$f0], a                                     ; $70be: $e0 $f0
	adc b                                            ; $70c0: $88
	inc b                                            ; $70c1: $04
	ld [bc], a                                       ; $70c2: $02

Jump_056_70c3:
	ld [bc], a                                       ; $70c3: $02
	sbc a                                            ; $70c4: $9f
	sbc c                                            ; $70c5: $99
	jr nc, jr_056_70b8                               ; $70c6: $30 $f0

	ret z                                            ; $70c8: $c8

	ld a, e                                          ; $70c9: $7b
	ld hl, sp-$23                                    ; $70ca: $f8 $dd
	rst $38                                          ; $70cc: $ff
	rst SubAFromDE                                          ; $70cd: $df
	ld a, a                                          ; $70ce: $7f
	ld a, h                                          ; $70cf: $7c
	db $db                                           ; $70d0: $db
	ld a, d                                          ; $70d1: $7a
	db $ec                                           ; $70d2: $ec
	sbc d                                            ; $70d3: $9a
	ret nz                                           ; $70d4: $c0

	ld b, b                                          ; $70d5: $40
	ld b, b                                          ; $70d6: $40
	jr nz, jr_056_7151                               ; $70d7: $20 $78

	ld b, a                                          ; $70d9: $47
	ld h, b                                          ; $70da: $60
	sbc [hl]                                         ; $70db: $9e
	sbc a                                            ; $70dc: $9f
	db $dd                                           ; $70dd: $dd
	rst SubAFromDE                                          ; $70de: $df
	sbc $cf                                          ; $70df: $de $cf

Jump_056_70e1:
	ld e, [hl]                                       ; $70e1: $5e
	push bc                                          ; $70e2: $c5
	db $db                                           ; $70e3: $db
	ret nz                                           ; $70e4: $c0

	ldh [$d9], a                                     ; $70e5: $e0 $d9
	inc bc                                           ; $70e7: $03
	nop                                              ; $70e8: $00

Jump_056_70e9:
	ld l, b                                          ; $70e9: $68
	ld c, a                                          ; $70ea: $4f
	ld d, b                                          ; $70eb: $50
	ld d, b                                          ; $70ec: $50
	ld a, b                                          ; $70ed: $78
	ld c, a                                          ; $70ee: $4f
	inc bc                                           ; $70ef: $03
	ret nz                                           ; $70f0: $c0

	rst $38                                          ; $70f1: $ff
	db $dd                                           ; $70f2: $dd
	ld bc, $0396                                     ; $70f3: $01 $96 $03
	cp $fc                                           ; $70f6: $fe $fc
	ld hl, sp-$34                                    ; $70f8: $f8 $cc
	add d                                            ; $70fa: $82
	ld bc, $c000                                     ; $70fb: $01 $00 $c0
	ld c, a                                          ; $70fe: $4f
	ret c                                            ; $70ff: $d8

	ld a, h                                          ; $7100: $7c
	or l                                             ; $7101: $b5
	sbc l                                            ; $7102: $9d
	sub b                                            ; $7103: $90
	ldh [rPCM12], a                                  ; $7104: $e0 $76
	dec e                                            ; $7106: $1d
	ld a, a                                          ; $7107: $7f
	ld d, e                                          ; $7108: $53
	sub h                                            ; $7109: $94
	ld a, b                                          ; $710a: $78
	nop                                              ; $710b: $00
	jr nz, jr_056_710e                               ; $710c: $20 $00

jr_056_710e:
	ld bc, $1713                                     ; $710e: $01 $13 $17
	ld a, $3c                                        ; $7111: $3e $3c
	jr nz, jr_056_7115                               ; $7113: $20 $00

jr_056_7115:
	db $dd                                           ; $7115: $dd
	db $10                                           ; $7116: $10
	add b                                            ; $7117: $80
	ld de, $0f0f                                     ; $7118: $11 $0f $0f
	dec bc                                           ; $711b: $0b
	inc c                                            ; $711c: $0c
	rlca                                             ; $711d: $07
	inc bc                                           ; $711e: $03
	ld bc, $08fd                                     ; $711f: $01 $fd $08
	add hl, bc                                       ; $7122: $09
	ld c, $0f                                        ; $7123: $0e $0f
	rlca                                             ; $7125: $07
	inc bc                                           ; $7126: $03
	inc bc                                           ; $7127: $03
	rst $38                                          ; $7128: $ff
	ld a, a                                          ; $7129: $7f
	xor b                                            ; $712a: $a8
	ld d, e                                          ; $712b: $53
	and h                                            ; $712c: $a4
	sbc c                                            ; $712d: $99
	ei                                               ; $712e: $fb
	rst FarCall                                          ; $712f: $f7
	rst AddAOntoHL                                          ; $7130: $ef
	rst $38                                          ; $7131: $ff
	rst SubAFromHL                                          ; $7132: $d7
	xor a                                            ; $7133: $af
	ld e, a                                          ; $7134: $5f
	cp $e4                                           ; $7135: $fe $e4
	sbc c                                            ; $7137: $99
	adc b                                            ; $7138: $88
	db $10                                           ; $7139: $10
	ei                                               ; $713a: $fb
	reti                                             ; $713b: $d9


	ld e, h                                          ; $713c: $5c
	cp $7a                                           ; $713d: $fe $7a
	rst AddAOntoHL                                          ; $713f: $ef
	sbc d                                            ; $7140: $9a
	ld l, a                                          ; $7141: $6f
	db $fc                                           ; $7142: $fc
	or $f3                                           ; $7143: $f6 $f3
	or c                                             ; $7145: $b1
	sbc $b0                                          ; $7146: $de $b0
	sbc c                                            ; $7148: $99
	cp c                                             ; $7149: $b9
	ldh a, [$f8]                                     ; $714a: $f0 $f8
	db $fc                                           ; $714c: $fc
	rst $38                                          ; $714d: $ff
	ld hl, sp+$7a                                    ; $714e: $f8 $7a
	ld a, b                                          ; $7150: $78

jr_056_7151:
	sub b                                            ; $7151: $90
	db $10                                           ; $7152: $10
	ld [$0f04], sp                                   ; $7153: $08 $04 $0f
	jr nc, @+$42                                     ; $7156: $30 $40

	add b                                            ; $7158: $80
	nop                                              ; $7159: $00
	inc bc                                           ; $715a: $03
	ld bc, $c101                                     ; $715b: $01 $01 $c1
	ld [hl], c                                       ; $715e: $71
	add hl, de                                       ; $715f: $19
	dec c                                            ; $7160: $0d
	ld a, e                                          ; $7161: $7b
	push bc                                          ; $7162: $c5
	ld a, a                                          ; $7163: $7f
	ld hl, sp-$66                                    ; $7164: $f8 $9a
	ld sp, $070b                                     ; $7166: $31 $0b $07
	inc bc                                           ; $7169: $03
	add a                                            ; $716a: $87
	db $dd                                           ; $716b: $dd
	ld bc, $799c                                     ; $716c: $01 $9c $79
	db $fd                                           ; $716f: $fd
	ld sp, hl                                        ; $7170: $f9
	db $db                                           ; $7171: $db
	rst $38                                          ; $7172: $ff
	sbc l                                            ; $7173: $9d
	sbc a                                            ; $7174: $9f
	rrca                                             ; $7175: $0f
	ld b, a                                          ; $7176: $47
	ld d, b                                          ; $7177: $50
	rst SubAFromDE                                          ; $7178: $df
	rst GetHLinHL                                          ; $7179: $cf
	db $dd                                           ; $717a: $dd
	rst AddAOntoHL                                          ; $717b: $ef
	rst SubAFromDE                                          ; $717c: $df
	rst SubAFromBC                                          ; $717d: $e7
	ld sp, hl                                        ; $717e: $f9
	sbc [hl]                                         ; $717f: $9e
	ret nz                                           ; $7180: $c0

	jp c, $e0e0                                      ; $7181: $da $e0 $e0

	reti                                             ; $7184: $d9


	ld b, $c0                                        ; $7185: $06 $c0
	sbc [hl]                                         ; $7187: $9e
	db $fc                                           ; $7188: $fc
	ld l, b                                          ; $7189: $68
	ld c, a                                          ; $718a: $4f
	inc bc                                           ; $718b: $03
	ret nc                                           ; $718c: $d0

	ld h, a                                          ; $718d: $67
	ldh a, [$7a]                                     ; $718e: $f0 $7a
	rst GetHLinHL                                          ; $7190: $cf
	sbc [hl]                                         ; $7191: $9e
	ldh a, [$7b]                                     ; $7192: $f0 $7b
	jr nc, @-$70                                     ; $7194: $30 $8e

	inc bc                                           ; $7196: $03
	ld b, $0c                                        ; $7197: $06 $0c
	ld [$2010], sp                                   ; $7199: $08 $10 $20
	ld b, b                                          ; $719c: $40
	add b                                            ; $719d: $80
	jr nc, @+$1a                                     ; $719e: $30 $18

	inc c                                            ; $71a0: $0c
	ld b, $02                                        ; $71a1: $06 $02
	inc bc                                           ; $71a3: $03
	inc bc                                           ; $71a4: $03
	rlca                                             ; $71a5: $07
	ccf                                              ; $71a6: $3f
	halt                                             ; $71a7: $76
	ldh a, [c]                                       ; $71a8: $f2
	sbc $01                                          ; $71a9: $de $01
	sbc h                                            ; $71ab: $9c
	jr nz, jr_056_71be                               ; $71ac: $20 $10

	db $10                                           ; $71ae: $10
	sbc $08                                          ; $71af: $de $08
	sbc e                                            ; $71b1: $9b
	dec b                                            ; $71b2: $05
	rlca                                             ; $71b3: $07
	pop hl                                           ; $71b4: $e1
	rst FarCall                                          ; $71b5: $f7
	ld a, e                                          ; $71b6: $7b
	sub $91                                          ; $71b7: $d6 $91
	db $fd                                           ; $71b9: $fd
	rst $38                                          ; $71ba: $ff
	rst $38                                          ; $71bb: $ff
	rla                                              ; $71bc: $17
	rra                                              ; $71bd: $1f

jr_056_71be:
	ld a, $78                                        ; $71be: $3e $78
	ld [hl], b                                       ; $71c0: $70
	ldh a, [$f0]                                     ; $71c1: $f0 $f0
	ld hl, sp-$01                                    ; $71c3: $f8 $ff
	ld hl, sp+$60                                    ; $71c5: $f8 $60
	ld [hl], h                                       ; $71c7: $74
	and b                                            ; $71c8: $a0
	sbc l                                            ; $71c9: $9d
	add b                                            ; $71ca: $80
	rst $38                                          ; $71cb: $ff
	ld l, b                                          ; $71cc: $68
	add $74                                          ; $71cd: $c6 $74
	ld [hl], e                                       ; $71cf: $73
	ld l, a                                          ; $71d0: $6f
	or b                                             ; $71d1: $b0
	adc a                                            ; $71d2: $8f
	ld a, [hl]                                       ; $71d3: $7e
	ld a, a                                          ; $71d4: $7f
	ccf                                              ; $71d5: $3f
	cpl                                              ; $71d6: $2f
	rra                                              ; $71d7: $1f
	inc de                                           ; $71d8: $13
	nop                                              ; $71d9: $00
	add c                                            ; $71da: $81
	ld b, c                                          ; $71db: $41
	ld b, b                                          ; $71dc: $40
	jr nz, jr_056_720f                               ; $71dd: $20 $30

	inc e                                            ; $71df: $1c
	rra                                              ; $71e0: $1f
	set 0, a                                         ; $71e1: $cb $c7
	call c, $9b87                                    ; $71e3: $dc $87 $9b
	rlca                                             ; $71e6: $07
	ld a, [hl]                                       ; $71e7: $7e
	ld a, [hl]                                       ; $71e8: $7e
	sbc $dc                                          ; $71e9: $de $dc
	sbc h                                            ; $71eb: $9c
	halt                                             ; $71ec: $76
	ld a, h                                          ; $71ed: $7c
	ld a, c                                          ; $71ee: $79
	dec a                                            ; $71ef: $3d
	ld h, e                                          ; $71f0: $63
	add b                                            ; $71f1: $80
	ld a, a                                          ; $71f2: $7f
	sbc h                                            ; $71f3: $9c
	ld l, [hl]                                       ; $71f4: $6e
	ld e, a                                          ; $71f5: $5f
	ld l, a                                          ; $71f6: $6f
	ld sp, hl                                        ; $71f7: $f9
	ld [hl], a                                       ; $71f8: $77
	ld h, b                                          ; $71f9: $60
	sub c                                            ; $71fa: $91
	rst SubAFromBC                                          ; $71fb: $e7
	ld h, a                                          ; $71fc: $67
	ld h, e                                          ; $71fd: $63
	inc sp                                           ; $71fe: $33
	dec sp                                           ; $71ff: $3b
	add hl, de                                       ; $7200: $19
	adc a                                            ; $7201: $8f
	adc h                                            ; $7202: $8c
	ld b, h                                          ; $7203: $44
	ld b, d                                          ; $7204: $42
	ld [hl+], a                                      ; $7205: $22
	inc hl                                           ; $7206: $23
	ld de, $4009                                     ; $7207: $11 $09 $40
	or b                                             ; $720a: $b0
	rst SubAFromDE                                          ; $720b: $df
	rst SubAFromBC                                          ; $720c: $e7
	sbc $f7                                          ; $720d: $de $f7

jr_056_720f:
	rst SubAFromDE                                          ; $720f: $df
	di                                               ; $7210: $f3
	ld sp, hl                                        ; $7211: $f9
	rst SubAFromDE                                          ; $7212: $df
	ldh a, [$9e]                                     ; $7213: $f0 $9e
	pop af                                           ; $7215: $f1
	ld d, e                                          ; $7216: $53
	ldh [$9d], a                                     ; $7217: $e0 $9d
	nop                                              ; $7219: $00
	rlca                                             ; $721a: $07
	call c, $9eff                                    ; $721b: $dc $ff $9e
	cp $f9                                           ; $721e: $fe $f9
	sbc [hl]                                         ; $7220: $9e
	rra                                              ; $7221: $1f
	call c, $9eff                                    ; $7222: $dc $ff $9e
	ld hl, sp+$56                                    ; $7225: $f8 $56
	ret nz                                           ; $7227: $c0

	ld [hl], d                                       ; $7228: $72
	db $fc                                           ; $7229: $fc
	daa                                              ; $722a: $27
	ldh a, [$9b]                                     ; $722b: $f0 $9b
	rst FarCall                                          ; $722d: $f7
	rst SubAFromBC                                          ; $722e: $e7
	rst AddAOntoHL                                          ; $722f: $ef
	nop                                              ; $7230: $00
	ld [hl], h                                       ; $7231: $74
	ld c, a                                          ; $7232: $4f
	ld d, e                                          ; $7233: $53
	ldh [$7a], a                                     ; $7234: $e0 $7a
	db $dd                                           ; $7236: $dd
	ld [hl], e                                       ; $7237: $73
	ld d, h                                          ; $7238: $54
	sbc c                                            ; $7239: $99
	inc c                                            ; $723a: $0c
	jr @+$32                                         ; $723b: $18 $30

	rst $38                                          ; $723d: $ff
	db $fc                                           ; $723e: $fc
	ldh a, [$71]                                     ; $723f: $f0 $71
	inc d                                            ; $7241: $14
	ld a, a                                          ; $7242: $7f
	db $f4                                           ; $7243: $f4
	sbc [hl]                                         ; $7244: $9e
	jr nc, @+$5f                                     ; $7245: $30 $5d

	inc c                                            ; $7247: $0c
	ld a, l                                          ; $7248: $7d
	adc c                                            ; $7249: $89
	sbc [hl]                                         ; $724a: $9e
	rlca                                             ; $724b: $07
	ld h, a                                          ; $724c: $67
	rst FarCall                                          ; $724d: $f7
	sbc e                                            ; $724e: $9b
	rrca                                             ; $724f: $0f
	rra                                              ; $7250: $1f
	ld a, $7f                                        ; $7251: $3e $7f
	ld a, d                                          ; $7253: $7a
	or c                                             ; $7254: $b1
	ld [hl], a                                       ; $7255: $77
	db $ed                                           ; $7256: $ed
	sbc [hl]                                         ; $7257: $9e
	rra                                              ; $7258: $1f
	ld a, c                                          ; $7259: $79
	ld c, c                                          ; $725a: $49
	sbc d                                            ; $725b: $9a
	rst $38                                          ; $725c: $ff
	add a                                            ; $725d: $87
	adc a                                            ; $725e: $8f
	ccf                                              ; $725f: $3f
	db $e3                                           ; $7260: $e3
	db $dd                                           ; $7261: $dd
	inc bc                                           ; $7262: $03
	ld l, a                                          ; $7263: $6f
	ld l, d                                          ; $7264: $6a
	rst SubAFromDE                                          ; $7265: $df
	cp $7d                                           ; $7266: $fe $7d
	pop bc                                           ; $7268: $c1
	rst SubAFromDE                                          ; $7269: $df
	db $fc                                           ; $726a: $fc
	db $dd                                           ; $726b: $dd
	cp $6a                                           ; $726c: $fe $6a
	ret                                              ; $726e: $c9


	ld a, e                                          ; $726f: $7b
	or a                                             ; $7270: $b7
	sbc c                                            ; $7271: $99
	rlca                                             ; $7272: $07
	rrca                                             ; $7273: $0f
	ld c, $1c                                        ; $7274: $0e $1c
	jr jr_056_7288                                   ; $7276: $18 $10

	ld sp, hl                                        ; $7278: $f9
	rst SubAFromDE                                          ; $7279: $df
	jr @-$66                                         ; $727a: $18 $98

	ld [$0e0c], sp                                   ; $727c: $08 $0c $0e
	dec c                                            ; $727f: $0d
	ld h, $25                                        ; $7280: $26 $25
	inc c                                            ; $7282: $0c
	ld a, e                                          ; $7283: $7b
	ld sp, hl                                        ; $7284: $f9
	jp c, $9a07                                      ; $7285: $da $07 $9a

jr_056_7288:
	rrca                                             ; $7288: $0f
	rla                                              ; $7289: $17
	daa                                              ; $728a: $27
	rst JumpTable                                          ; $728b: $c7
	rrca                                             ; $728c: $0f
	db $dd                                           ; $728d: $dd
	inc a                                            ; $728e: $3c
	sbc e                                            ; $728f: $9b
	ld a, h                                          ; $7290: $7c
	db $f4                                           ; $7291: $f4
	db $e4                                           ; $7292: $e4
	cp $4e                                           ; $7293: $fe $4e
	ldh a, [$7e]                                     ; $7295: $f0 $7e
	ld h, d                                          ; $7297: $62
	call c, Call_056_7cc0                            ; $7298: $dc $c0 $7c
	dec a                                            ; $729b: $3d
	ld h, e                                          ; $729c: $63
	rra                                              ; $729d: $1f
	sbc [hl]                                         ; $729e: $9e
	dec c                                            ; $729f: $0d
	ld a, d                                          ; $72a0: $7a
	ld c, b                                          ; $72a1: $48
	rst SubAFromDE                                          ; $72a2: $df
	ld bc, $9dff                                     ; $72a3: $01 $ff $9d
	add hl, bc                                       ; $72a6: $09
	dec b                                            ; $72a7: $05
	ld [hl], e                                       ; $72a8: $73
	ld sp, hl                                        ; $72a9: $f9
	ld d, e                                          ; $72aa: $53
	jr nz, jr_056_7325                               ; $72ab: $20 $78

	ld d, h                                          ; $72ad: $54
	sbc [hl]                                         ; $72ae: $9e
	ld [hl], b                                       ; $72af: $70
	sbc $f3                                          ; $72b0: $de $f3
	sbc d                                            ; $72b2: $9a
	nop                                              ; $72b3: $00
	di                                               ; $72b4: $f3
	ei                                               ; $72b5: $fb
	ei                                               ; $72b6: $fb
	ld sp, hl                                        ; $72b7: $f9
	ld h, e                                          ; $72b8: $63
	jr nz, jr_056_733a                               ; $72b9: $20 $7f

	inc h                                            ; $72bb: $24
	sbc [hl]                                         ; $72bc: $9e
	nop                                              ; $72bd: $00
	ld [hl], a                                       ; $72be: $77
	ld l, h                                          ; $72bf: $6c
	ld h, b                                          ; $72c0: $60
	jr nc, jr_056_72c4                               ; $72c1: $30 $01

	add b                                            ; $72c3: $80

jr_056_72c4:
	jr nc, @+$52                                     ; $72c4: $30 $50

	ld h, a                                          ; $72c6: $67
	ldh a, [$98]                                     ; $72c7: $f0 $98
	rlca                                             ; $72c9: $07
	cp a                                             ; $72ca: $bf
	ccf                                              ; $72cb: $3f
	ccf                                              ; $72cc: $3f
	ld a, [hl]                                       ; $72cd: $7e
	ld a, h                                          ; $72ce: $7c

jr_056_72cf:
	ld [hl], b                                       ; $72cf: $70
	halt                                             ; $72d0: $76
	rst $38                                          ; $72d1: $ff
	sbc c                                            ; $72d2: $99
	rlca                                             ; $72d3: $07
	ld c, $1c                                        ; $72d4: $0e $1c
	ld [hl], b                                       ; $72d6: $70
	add b                                            ; $72d7: $80
	nop                                              ; $72d8: $00
	halt                                             ; $72d9: $76
	db $f4                                           ; $72da: $f4
	ld a, e                                          ; $72db: $7b
	dec de                                           ; $72dc: $1b
	sbc l                                            ; $72dd: $9d
	rrca                                             ; $72de: $0f
	ldh [$72], a                                     ; $72df: $e0 $72
	jp nc, $eb7f                                     ; $72e1: $d2 $7f $eb

	ld [hl], a                                       ; $72e4: $77
	call c, $1e9e                                    ; $72e5: $dc $9e $1e
	ld l, h                                          ; $72e8: $6c
	jr nc, jr_056_736a                               ; $72e9: $30 $7f

	db $eb                                           ; $72eb: $eb
	sbc b                                            ; $72ec: $98
	jr c, jr_056_72cf                                ; $72ed: $38 $e0

	nop                                              ; $72ef: $00
	ld c, $38                                        ; $72f0: $0e $38
	di                                               ; $72f2: $f3

jr_056_72f3:
	rst SubAFromDE                                          ; $72f3: $df
	db $dd                                           ; $72f4: $dd
	rst $38                                          ; $72f5: $ff
	ld a, [hl]                                       ; $72f6: $7e
	jp nc, $7c9e                                     ; $72f7: $d2 $9e $7c

	ld [hl], b                                       ; $72fa: $70
	db $fc                                           ; $72fb: $fc
	sbc e                                            ; $72fc: $9b
	jr z, jr_056_72f3                                ; $72fd: $28 $f4

	ld a, [$7bfd]                                    ; $72ff: $fa $fd $7b
	cp $9a                                           ; $7302: $fe $9a
	db $f4                                           ; $7304: $f4
	rst SubAFromHL                                          ; $7305: $d7
	dec bc                                           ; $7306: $0b
	dec b                                            ; $7307: $05
	ld [bc], a                                       ; $7308: $02
	ld a, e                                          ; $7309: $7b
	cp $7c                                           ; $730a: $fe $7c
	xor [hl]                                         ; $730c: $ae
	ld l, [hl]                                       ; $730d: $6e
	db $fd                                           ; $730e: $fd
	sbc l                                            ; $730f: $9d
	rrca                                             ; $7310: $0f
	cp $da                                           ; $7311: $fe $da
	db $fc                                           ; $7313: $fc
	ld l, a                                          ; $7314: $6f
	ld hl, sp-$21                                    ; $7315: $f8 $df
	ld hl, sp-$17                                    ; $7317: $f8 $e9
	rst SubAFromDE                                          ; $7319: $df
	ld h, $99                                        ; $731a: $26 $99
	ld [hl+], a                                      ; $731c: $22
	ld [hl-], a                                      ; $731d: $32
	ld [hl-], a                                      ; $731e: $32
	inc sp                                           ; $731f: $33
	ld sp, $dd31                                     ; $7320: $31 $31 $dd
	inc hl                                           ; $7323: $23
	sub b                                            ; $7324: $90

jr_056_7325:
	inc de                                           ; $7325: $13
	ld de, $1011                                     ; $7326: $11 $11 $10
	sbc a                                            ; $7329: $9f
	ld a, a                                          ; $732a: $7f
	sbc a                                            ; $732b: $9f
	adc l                                            ; $732c: $8d
	adc l                                            ; $732d: $8d
	adc e                                            ; $732e: $8b
	adc c                                            ; $732f: $89
	adc c                                            ; $7330: $89
	ld a, [$f2e2]                                    ; $7331: $fa $e2 $f2
	call nc, $75ff                                   ; $7334: $d4 $ff $75
	ld a, [hl+]                                      ; $7337: $2a
	sbc $04                                          ; $7338: $de $04

jr_056_733a:
	sbc [hl]                                         ; $733a: $9e
	ld [bc], a                                       ; $733b: $02
	ld a, d                                          ; $733c: $7a
	ld [hl], e                                       ; $733d: $73
	ld c, l                                          ; $733e: $4d
	ret nz                                           ; $733f: $c0

jr_056_7340:
	halt                                             ; $7340: $76
	db $fc                                           ; $7341: $fc
	ld a, d                                          ; $7342: $7a
	xor [hl]                                         ; $7343: $ae
	ld sp, hl                                        ; $7344: $f9
	sub d                                            ; $7345: $92
	ld a, a                                          ; $7346: $7f
	inc a                                            ; $7347: $3c
	jr jr_056_7362                                   ; $7348: $18 $18

	inc c                                            ; $734a: $0c
	inc c                                            ; $734b: $0c

jr_056_734c:
	ld b, $06                                        ; $734c: $06 $06
	ccf                                              ; $734e: $3f
	rra                                              ; $734f: $1f
	rrca                                             ; $7350: $0f
	rrca                                             ; $7351: $0f
	rlca                                             ; $7352: $07
	ld a, b                                          ; $7353: $78
	db $ed                                           ; $7354: $ed
	sbc [hl]                                         ; $7355: $9e
	rst $38                                          ; $7356: $ff
	ld [hl], h                                       ; $7357: $74
	db $eb                                           ; $7358: $eb
	sbc $01                                          ; $7359: $de $01
	reti                                             ; $735b: $d9


	rst $38                                          ; $735c: $ff
	ld l, a                                          ; $735d: $6f
	ld l, e                                          ; $735e: $6b
	rst SubAFromDE                                          ; $735f: $df
	cp $e0                                           ; $7360: $fe $e0

jr_056_7362:
	reti                                             ; $7362: $d9


	ld a, d                                          ; $7363: $7a
	jp nc, $f891                                     ; $7364: $d2 $91 $f8

	ldh [$9a], a                                     ; $7367: $e0 $9a
	db $e4                                           ; $7369: $e4

jr_056_736a:
	ret z                                            ; $736a: $c8

	nop                                              ; $736b: $00
	ld bc, $1806                                     ; $736c: $01 $06 $18
	ld h, b                                          ; $736f: $60
	adc b                                            ; $7370: $88
	ld h, b                                          ; $7371: $60
	ret z                                            ; $7372: $c8

	db $fc                                           ; $7373: $fc
	ld [hl], d                                       ; $7374: $72
	add sp, -$64                                     ; $7375: $e8 $9c
	ld b, b                                          ; $7377: $40
	add [hl]                                         ; $7378: $86
	ld a, b                                          ; $7379: $78
	ld d, l                                          ; $737a: $55
	rst AddAOntoHL                                          ; $737b: $ef
	sbc h                                            ; $737c: $9c
	rra                                              ; $737d: $1f
	ccf                                              ; $737e: $3f
	ccf                                              ; $737f: $3f
	ld [hl], l                                       ; $7380: $75
	or h                                             ; $7381: $b4
	sbc [hl]                                         ; $7382: $9e
	ld b, $78                                        ; $7383: $06 $78
	ld l, [hl]                                       ; $7385: $6e
	sbc [hl]                                         ; $7386: $9e
	ccf                                              ; $7387: $3f
	jp c, Jump_056_7fff                              ; $7388: $da $ff $7f

jr_056_738b:
	db $d3                                           ; $738b: $d3
	ld l, l                                          ; $738c: $6d
	sub c                                            ; $738d: $91
	jr jr_056_73c0                                   ; $738e: $18 $30

	sbc $01                                          ; $7390: $de $01
	sbc h                                            ; $7392: $9c
	inc bc                                           ; $7393: $03
	rra                                              ; $7394: $1f
	rst $38                                          ; $7395: $ff
	ld [hl], h                                       ; $7396: $74
	ld l, e                                          ; $7397: $6b
	sbc l                                            ; $7398: $9d
	ld hl, sp-$72                                    ; $7399: $f8 $8e
	ld l, l                                          ; $739b: $6d
	sub b                                            ; $739c: $90
	db $dd                                           ; $739d: $dd
	rst $38                                          ; $739e: $ff
	ld a, h                                          ; $739f: $7c
	ld [hl], d                                       ; $73a0: $72
	sbc $0f                                          ; $73a1: $de $0f
	sbc l                                            ; $73a3: $9d
	rra                                              ; $73a4: $1f
	cpl                                              ; $73a5: $2f
	sub $f8                                          ; $73a6: $d6 $f8
	call c, $e9f0                                    ; $73a8: $dc $f0 $e9
	rst SubAFromDE                                          ; $73ab: $df
	jr nc, jr_056_738b                               ; $73ac: $30 $dd

	ld [hl], b                                       ; $73ae: $70
	rst SubAFromDE                                          ; $73af: $df
	ldh a, [$dc]                                     ; $73b0: $f0 $dc
	db $10                                           ; $73b2: $10
	rst SubAFromDE                                          ; $73b3: $df
	jr nc, jr_056_734c                               ; $73b4: $30 $96

	jr nz, jr_056_7340                               ; $73b6: $20 $88

	adc b                                            ; $73b8: $88
	ret z                                            ; $73b9: $c8

	ld b, h                                          ; $73ba: $44
	ld h, h                                          ; $73bb: $64
	inc h                                            ; $73bc: $24
	inc [hl]                                         ; $73bd: $34
	inc [hl]                                         ; $73be: $34
	ld a, e                                          ; $73bf: $7b

jr_056_73c0:
	or a                                             ; $73c0: $b7
	ld a, a                                          ; $73c1: $7f
	or [hl]                                          ; $73c2: $b6
	ld a, [hl]                                       ; $73c3: $7e
	ei                                               ; $73c4: $fb
	ld l, h                                          ; $73c5: $6c
	or c                                             ; $73c6: $b1
	sbc $ff                                          ; $73c7: $de $ff
	rst SubAFromDE                                          ; $73c9: $df
	add d                                            ; $73ca: $82
	rst SubAFromDE                                          ; $73cb: $df
	add c                                            ; $73cc: $81
	db $dd                                           ; $73cd: $dd
	add b                                            ; $73ce: $80
	ld d, a                                          ; $73cf: $57
	ld [hl], b                                       ; $73d0: $70
	ld a, [hl]                                       ; $73d1: $7e
	ret z                                            ; $73d2: $c8

jr_056_73d3:
	sbc d                                            ; $73d3: $9a
	ld b, b                                          ; $73d4: $40
	ld h, b                                          ; $73d5: $60
	ldh a, [$f8]                                     ; $73d6: $f0 $f8
	ld hl, sp+$72                                    ; $73d8: $f8 $72
	xor l                                            ; $73da: $ad
	ld h, e                                          ; $73db: $63
	ld [hl-], a                                      ; $73dc: $32
	halt                                             ; $73dd: $76
	ret nc                                           ; $73de: $d0

	ld [hl], e                                       ; $73df: $73
	ld h, e                                          ; $73e0: $63

Jump_056_73e1:
	ld l, b                                          ; $73e1: $68
	sbc $98                                          ; $73e2: $de $98
	ld bc, $fb81                                     ; $73e4: $01 $81 $fb
	adc a                                            ; $73e7: $8f
	jp $e0c1                                         ; $73e8: $c3 $c1 $e0


	ld l, a                                          ; $73eb: $6f
	ld h, h                                          ; $73ec: $64
	ld a, a                                          ; $73ed: $7f
	xor l                                            ; $73ee: $ad
	db $dd                                           ; $73ef: $dd
	cp $5f                                           ; $73f0: $fe $5f
	jr nc, jr_056_73d3                               ; $73f2: $30 $df

	add b                                            ; $73f4: $80
	pop hl                                           ; $73f5: $e1
	sub d                                            ; $73f6: $92
	or e                                             ; $73f7: $b3
	and $cc                                          ; $73f8: $e6 $cc
	sbc c                                            ; $73fa: $99
	ldh a, [c]                                       ; $73fb: $f2
	dec e                                            ; $73fc: $1d
	rst $38                                          ; $73fd: $ff
	rst $38                                          ; $73fe: $ff

Jump_056_73ff:
	ld sp, $cc66                                     ; $73ff: $31 $66 $cc
	sbc c                                            ; $7402: $99

jr_056_7403:
	di                                               ; $7403: $f3
	ld a, d                                          ; $7404: $7a
	adc d                                            ; $7405: $8a
	sub e                                            ; $7406: $93
	inc c                                            ; $7407: $0c
	ld a, c                                          ; $7408: $79
	di                                               ; $7409: $f3
	ld b, [hl]                                       ; $740a: $46
	ld a, a                                          ; $740b: $7f
	rst SubAFromDE                                          ; $740c: $df
	sbc a                                            ; $740d: $9f
	cp a                                             ; $740e: $bf
	inc b                                            ; $740f: $04
	jr c, jr_056_7403                                ; $7410: $38 $f1

	jp $3b75                                         ; $7412: $c3 $75 $3b


	sbc l                                            ; $7415: $9d
	ld e, a                                          ; $7416: $5f
	cp a                                             ; $7417: $bf
	ld [hl], h                                       ; $7418: $74
	adc d                                            ; $7419: $8a
	rst SubAFromDE                                          ; $741a: $df
	rst $38                                          ; $741b: $ff
	ld a, [hl]                                       ; $741c: $7e
	pop de                                           ; $741d: $d1
	ld l, a                                          ; $741e: $6f
	or l                                             ; $741f: $b5

Call_056_7420:
	ld e, $d0                                        ; $7420: $1e $d0
	halt                                             ; $7422: $76
	pop de                                           ; $7423: $d1
	rst SubAFromDE                                          ; $7424: $df
	inc bc                                           ; $7425: $03
	sbc [hl]                                         ; $7426: $9e
	ldh [rPCM34], a                                  ; $7427: $e0 $77
	reti                                             ; $7429: $d9


	ld a, e                                          ; $742a: $7b
	ldh a, [c]                                       ; $742b: $f2
	ld e, e                                          ; $742c: $5b
	add sp, -$63                                     ; $742d: $e8 $9d
	ld b, $38                                        ; $742f: $06 $38
	ld a, d                                          ; $7431: $7a
	sub l                                            ; $7432: $95
	reti                                             ; $7433: $d9


	rst $38                                          ; $7434: $ff
	sub a                                            ; $7435: $97
	rst GetHLinHL                                          ; $7436: $cf
	sub a                                            ; $7437: $97
	rla                                              ; $7438: $17
	daa                                              ; $7439: $27
	daa                                              ; $743a: $27
	ld b, a                                          ; $743b: $47
	ld b, a                                          ; $743c: $47
	add a                                            ; $743d: $87
	reti                                             ; $743e: $d9


	db $fc                                           ; $743f: $fc
	db $dd                                           ; $7440: $dd
	ldh a, [$dd]                                     ; $7441: $f0 $dd
	ldh [$f7], a                                     ; $7443: $e0 $f7
	ld [hl], a                                       ; $7445: $77
	cp c                                             ; $7446: $b9
	rst SubAFromDE                                          ; $7447: $df
	rlca                                             ; $7448: $07
	ld sp, hl                                        ; $7449: $f9
	db $dd                                           ; $744a: $dd
	ldh a, [$de]                                     ; $744b: $f0 $de
	ld hl, sp-$65                                    ; $744d: $f8 $9b
	db $fc                                           ; $744f: $fc
	jr nz, jr_056_7472                               ; $7450: $20 $20

	ld h, b                                          ; $7452: $60
	sbc $40                                          ; $7453: $de $40
	ld a, a                                          ; $7455: $7f
	ld a, e                                          ; $7456: $7b
	rst SubAFromDE                                          ; $7457: $df
	dec a                                            ; $7458: $3d
	sbc $1d                                          ; $7459: $de $1d
	sbc l                                            ; $745b: $9d
	dec a                                            ; $745c: $3d
	ccf                                              ; $745d: $3f
	ld a, d                                          ; $745e: $7a
	ld a, e                                          ; $745f: $7b
	db $dd                                           ; $7460: $dd
	rlca                                             ; $7461: $07
	ld a, c                                          ; $7462: $79
	ret nz                                           ; $7463: $c0

	jp c, Jump_056_73ff                              ; $7464: $da $ff $73

	ld h, d                                          ; $7467: $62
	ld [hl], d                                       ; $7468: $72
	ret nz                                           ; $7469: $c0

	sub h                                            ; $746a: $94
	sbc a                                            ; $746b: $9f
	adc a                                            ; $746c: $8f
	add a                                            ; $746d: $87
	add e                                            ; $746e: $83
	jp $30c1                                         ; $746f: $c3 $c1 $30


jr_056_7472:
	jr jr_056_7480                                   ; $7472: $18 $0c

	ld b, $03                                        ; $7474: $06 $03
	ld a, d                                          ; $7476: $7a
	call c, $5053                                    ; $7477: $dc $53 $50
	ld a, [hl]                                       ; $747a: $7e
	xor a                                            ; $747b: $af
	sbc [hl]                                         ; $747c: $9e
	ld h, b                                          ; $747d: $60
	ld a, c                                          ; $747e: $79
	ld [hl], h                                       ; $747f: $74

jr_056_7480:
	ld a, l                                          ; $7480: $7d
	ld [hl], e                                       ; $7481: $73
	sbc l                                            ; $7482: $9d
	ldh [$f0], a                                     ; $7483: $e0 $f0
	ld h, c                                          ; $7485: $61
	db $10                                           ; $7486: $10
	rst SubAFromDE                                          ; $7487: $df
	ld h, b                                          ; $7488: $60
	sbc c                                            ; $7489: $99
	ld [hl], b                                       ; $748a: $70
	jr nc, jr_056_74bd                               ; $748b: $30 $30

	add hl, sp                                       ; $748d: $39
	add hl, sp                                       ; $748e: $39
	dec e                                            ; $748f: $1d
	halt                                             ; $7490: $76
	ld [hl], h                                       ; $7491: $74
	ld [hl], l                                       ; $7492: $75
	ld l, l                                          ; $7493: $6d
	ld h, e                                          ; $7494: $63
	or b                                             ; $7495: $b0
	db $dd                                           ; $7496: $dd
	add b                                            ; $7497: $80
	ld h, [hl]                                       ; $7498: $66
	cp e                                             ; $7499: $bb
	ld h, e                                          ; $749a: $63
	push af                                          ; $749b: $f5
	rst AddAOntoHL                                          ; $749c: $ef
	ld d, b                                          ; $749d: $50
	nop                                              ; $749e: $00
	reti                                             ; $749f: $d9


	inc sp                                           ; $74a0: $33
	rst SubAFromDE                                          ; $74a1: $df
	ld h, [hl]                                       ; $74a2: $66
	sbc $33                                          ; $74a3: $de $33
	sbc h                                            ; $74a5: $9c
	ld [hl-], a                                      ; $74a6: $32
	ld [hl+], a                                      ; $74a7: $22
	ld [hl+], a                                      ; $74a8: $22
	ld h, a                                          ; $74a9: $67
	or $9a                                           ; $74aa: $f6 $9a
	ld b, h                                          ; $74ac: $44
	ld b, d                                          ; $74ad: $42
	ld [hl+], a                                      ; $74ae: $22
	inc sp                                           ; $74af: $33
	ld [hl], $77                                     ; $74b0: $36 $77
	or $9b                                           ; $74b2: $f6 $9b
	inc [hl]                                         ; $74b4: $34
	ld b, h                                          ; $74b5: $44
	ld b, a                                          ; $74b6: $47
	ld [hl], d                                       ; $74b7: $72
	ld l, a                                          ; $74b8: $6f
	or $9b                                           ; $74b9: $f6 $9b
	ld [hl-], a                                      ; $74bb: $32
	ld d, a                                          ; $74bc: $57

jr_056_74bd:
	ld [hl], a                                       ; $74bd: $77
	ld [hl], a                                       ; $74be: $77
	ld l, a                                          ; $74bf: $6f
	or $9a                                           ; $74c0: $f6 $9a
	ld d, l                                          ; $74c2: $55
	daa                                              ; $74c3: $27
	ld [hl], a                                       ; $74c4: $77
	ld [hl], l                                       ; $74c5: $75
	ld d, e                                          ; $74c6: $53
	ld l, a                                          ; $74c7: $6f
	or $9b                                           ; $74c8: $f6 $9b
	ld d, l                                          ; $74ca: $55
	ld [hl], l                                       ; $74cb: $75
	ld d, l                                          ; $74cc: $55
	ld b, e                                          ; $74cd: $43
	ld [hl], a                                       ; $74ce: $77
	or $7f                                           ; $74cf: $f6 $7f
	reti                                             ; $74d1: $d9


	sbc $55                                          ; $74d2: $de $55
	ld [hl], a                                       ; $74d4: $77
	or $9c                                           ; $74d5: $f6 $9c
	inc [hl]                                         ; $74d7: $34
	ld [hl+], a                                      ; $74d8: $22
	inc h                                            ; $74d9: $24
	db $dd                                           ; $74da: $dd
	ld d, l                                          ; $74db: $55
	sbc e                                            ; $74dc: $9b
	ld d, [hl]                                       ; $74dd: $56
	ld h, [hl]                                       ; $74de: $66
	ld [hl+], a                                      ; $74df: $22
	ld [hl-], a                                      ; $74e0: $32
	ld a, e                                          ; $74e1: $7b
	ldh [c], a                                       ; $74e2: $e2
	sbc $55                                          ; $74e3: $de $55
	sbc d                                            ; $74e5: $9a
	ld d, e                                          ; $74e6: $53
	ld h, [hl]                                       ; $74e7: $66
	ld [hl+], a                                      ; $74e8: $22

Jump_056_74e9:
	inc hl                                           ; $74e9: $23
	dec [hl]                                         ; $74ea: $35
	ld l, e                                          ; $74eb: $6b
	or $00                                           ; $74ec: $f6 $00
	add [hl]                                         ; $74ee: $86
	reti                                             ; $74ef: $d9


	rst $38                                          ; $74f0: $ff
	ld sp, hl                                        ; $74f1: $f9
	inc bc                                           ; $74f2: $03
	ldh a, [rBGP]                                    ; $74f3: $f0 $47
	ldh a, [$de]                                     ; $74f5: $f0 $de
	ei                                               ; $74f7: $fb
	sbc e                                            ; $74f8: $9b
	di                                               ; $74f9: $f3
	rst FarCall                                          ; $74fa: $f7
	rst FarCall                                          ; $74fb: $f7
	rst SubAFromBC                                          ; $74fc: $e7
	inc bc                                           ; $74fd: $03
	ret nc                                           ; $74fe: $d0

	db $fd                                           ; $74ff: $fd
	sbc [hl]                                         ; $7500: $9e
	ld bc, $f047                                     ; $7501: $01 $47 $f0
	sbc l                                            ; $7504: $9d
	cp $81                                           ; $7505: $fe $81
	ld e, e                                          ; $7507: $5b
	ldh a, [$9a]                                     ; $7508: $f0 $9a
	inc bc                                           ; $750a: $03
	inc e                                            ; $750b: $1c
	jp hl                                            ; $750c: $e9


	scf                                              ; $750d: $37
	sbc h                                            ; $750e: $9c
	ld h, e                                          ; $750f: $63
	ldh a, [$98]                                     ; $7510: $f0 $98
	ld bc, $e23f                                     ; $7512: $01 $3f $e2
	ld b, c                                          ; $7515: $41
	ld hl, sp-$3a                                    ; $7516: $f8 $c6
	ld sp, $f063                                     ; $7518: $31 $63 $f0
	sbc b                                            ; $751b: $98
	add b                                            ; $751c: $80
	nop                                              ; $751d: $00
	nop                                              ; $751e: $00
	ret nz                                           ; $751f: $c0

	jr nz, jr_056_753a                               ; $7520: $20 $18

	add h                                            ; $7522: $84
	inc bc                                           ; $7523: $03
	ld [hl], b                                       ; $7524: $70
	dec bc                                           ; $7525: $0b
	ldh a, [$de]                                     ; $7526: $f0 $de
	db $fd                                           ; $7528: $fd
	sbc [hl]                                         ; $7529: $9e
	db $fc                                           ; $752a: $fc
	db $dd                                           ; $752b: $dd
	cp $53                                           ; $752c: $fe $53
	ldh [$de], a                                     ; $752e: $e0 $de
	db $fc                                           ; $7530: $fc
	ld e, e                                          ; $7531: $5b
	ldh a, [$9e]                                     ; $7532: $f0 $9e
	ld hl, sp-$0b                                    ; $7534: $f8 $f5
	sbc h                                            ; $7536: $9c
	rst $38                                          ; $7537: $ff
	cp $c0                                           ; $7538: $fe $c0

jr_056_753a:
	db $f4                                           ; $753a: $f4
	ld d, e                                          ; $753b: $53
	db $e3                                           ; $753c: $e3
	ld [hl], a                                       ; $753d: $77
	ldh [rOCPD], a                                   ; $753e: $e0 $6b
	sbc [hl]                                         ; $7540: $9e
	inc bc                                           ; $7541: $03
	ldh a, [$2b]                                     ; $7542: $f0 $2b
	ldh a, [$97]                                     ; $7544: $f0 $97
	rst AddAOntoHL                                          ; $7546: $ef
	nop                                              ; $7547: $00
	rst GetHLinHL                                          ; $7548: $cf
	rst SubAFromDE                                          ; $7549: $df
	rst SubAFromDE                                          ; $754a: $df
	sbc a                                            ; $754b: $9f
	sbc a                                            ; $754c: $9f
	cp a                                             ; $754d: $bf
	inc bc                                           ; $754e: $03
	ret nc                                           ; $754f: $d0

	ld a, [hl]                                       ; $7550: $7e
	rst AddAOntoHL                                          ; $7551: $ef
	rst SubAFromDE                                          ; $7552: $df
	ld [bc], a                                       ; $7553: $02
	add b                                            ; $7554: $80
	inc b                                            ; $7555: $04
	dec c                                            ; $7556: $0d
	ld a, d                                          ; $7557: $7a
	call $35fa                                       ; $7558: $cd $fa $35
	jp nz, Jump_056_7081                             ; $755b: $c2 $81 $70

	sbc $a3                                          ; $755e: $de $a3
	ld [hl], b                                       ; $7560: $70
	db $fc                                           ; $7561: $fc
	adc $07                                          ; $7562: $ce $07
	ld a, a                                          ; $7564: $7f
	adc a                                            ; $7565: $8f
	ccf                                              ; $7566: $3f
	ld a, a                                          ; $7567: $7f
	ld l, a                                          ; $7568: $6f
	db $dd                                           ; $7569: $dd
	ld b, d                                          ; $756a: $42
	and l                                            ; $756b: $a5
	or h                                             ; $756c: $b4
	jp z, $f9b2                                      ; $756d: $ca $b2 $f9

	di                                               ; $7570: $f3
	ld h, b                                          ; $7571: $60
	db $fc                                           ; $7572: $fc
	jp nz, $f980                                     ; $7573: $c2 $80 $f9

	call z, $f3c7                                    ; $7576: $cc $c7 $f3
	rst SubAFromDE                                          ; $7579: $df
	db $ed                                           ; $757a: $ed
	ld [hl], a                                       ; $757b: $77
	dec hl                                           ; $757c: $2b
	rst SubAFromHL                                          ; $757d: $d7
	dec hl                                           ; $757e: $2b
	ld e, [hl]                                       ; $757f: $5e
	ld [hl+], a                                      ; $7580: $22
	ld e, $cb                                        ; $7581: $1e $cb
	ld h, h                                          ; $7583: $64
	ld [hl-], a                                      ; $7584: $32
	add hl, de                                       ; $7585: $19
	call z, $bf67                                    ; $7586: $cc $67 $bf
	ei                                               ; $7589: $fb
	db $dd                                           ; $758a: $dd
	ld [hl], d                                       ; $758b: $72
	xor l                                            ; $758c: $ad
	ld c, d                                          ; $758d: $4a
	and d                                            ; $758e: $a2
	ret c                                            ; $758f: $d8

	ld sp, hl                                        ; $7590: $f9
	ld h, [hl]                                       ; $7591: $66
	or e                                             ; $7592: $b3
	call $329a                                       ; $7593: $cd $9a $32
	sbc l                                            ; $7596: $9d
	rst JumpTable                                          ; $7597: $c7
	ld h, c                                          ; $7598: $61
	cp $7b                                           ; $7599: $fe $7b
	or b                                             ; $759b: $b0
	sbc d                                            ; $759c: $9a
	ld e, b                                          ; $759d: $58
	di                                               ; $759e: $f3
	ld l, $a1                                        ; $759f: $2e $a1
	ld a, c                                          ; $75a1: $79
	ld [hl], a                                       ; $75a2: $77
	ld d, $9b                                        ; $75a3: $16 $9b
	inc a                                            ; $75a5: $3c
	sbc a                                            ; $75a6: $9f
	rst GetHLinHL                                          ; $75a7: $cf
	jr nc, jr_056_7605                               ; $75a8: $30 $5b

	sub b                                            ; $75aa: $90
	ld a, [hl]                                       ; $75ab: $7e
	and c                                            ; $75ac: $a1
	sbc h                                            ; $75ad: $9c
	db $10                                           ; $75ae: $10
	rst $38                                          ; $75af: $ff
	rlca                                             ; $75b0: $07
	ld c, a                                          ; $75b1: $4f
	add b                                            ; $75b2: $80
	sbc l                                            ; $75b3: $9d
	add b                                            ; $75b4: $80
	ld a, b                                          ; $75b5: $78
	ld b, a                                          ; $75b6: $47
	ld [hl], b                                       ; $75b7: $70
	ld a, [hl]                                       ; $75b8: $7e
	rst JumpTable                                          ; $75b9: $c7
	ld [hl], d                                       ; $75ba: $72
	pop bc                                           ; $75bb: $c1
	ld h, d                                          ; $75bc: $62
	ret nz                                           ; $75bd: $c0

	ld a, [hl]                                       ; $75be: $7e
	rst JumpTable                                          ; $75bf: $c7
	db $dd                                           ; $75c0: $dd
	ld a, h                                          ; $75c1: $7c
	rst SubAFromDE                                          ; $75c2: $df
	ld a, [hl]                                       ; $75c3: $7e
	ldh [$c9], a                                     ; $75c4: $e0 $c9
	ld [bc], a                                       ; $75c6: $02
	ld b, b                                          ; $75c7: $40
	ccf                                              ; $75c8: $3f
	ldh a, [$de]                                     ; $75c9: $f0 $de
	cp $5e                                           ; $75cb: $fe $5e
	ld d, b                                          ; $75cd: $50
	rst SubAFromDE                                          ; $75ce: $df
	ccf                                              ; $75cf: $3f
	sbc $7f                                          ; $75d0: $de $7f
	inc bc                                           ; $75d2: $03
	ret nz                                           ; $75d3: $c0

	rst SubAFromDE                                          ; $75d4: $df
	rst $38                                          ; $75d5: $ff
	add b                                            ; $75d6: $80
	dec h                                            ; $75d7: $25
	add hl, de                                       ; $75d8: $19
	ld a, [bc]                                       ; $75d9: $0a
	ld a, [bc]                                       ; $75da: $0a
	inc d                                            ; $75db: $14
	dec d                                            ; $75dc: $15
	dec c                                            ; $75dd: $0d
	dec b                                            ; $75de: $05
	sub $79                                          ; $75df: $d6 $79
	or [hl]                                          ; $75e1: $b6
	or a                                             ; $75e2: $b7
	push af                                          ; $75e3: $f5
	ld a, a                                          ; $75e4: $7f
	db $fd                                           ; $75e5: $fd
	rst SubAFromDE                                          ; $75e6: $df
	ld l, a                                          ; $75e7: $6f
	rst GetHLinHL                                          ; $75e8: $cf
	db $db                                           ; $75e9: $db
	push de                                          ; $75ea: $d5
	sub l                                            ; $75eb: $95
	sub l                                            ; $75ec: $95
	ld d, a                                          ; $75ed: $57
	ld l, e                                          ; $75ee: $6b
	ld [$f7c4], sp                                   ; $75ef: $08 $c4 $f7
	sbc a                                            ; $75f2: $9f
	adc a                                            ; $75f3: $8f
	add a                                            ; $75f4: $87
	add b                                            ; $75f5: $80
	add b                                            ; $75f6: $80
	add c                                            ; $75f7: $81
	db $dd                                           ; $75f8: $dd
	rst AddAOntoHL                                          ; $75f9: $ef
	cp a                                             ; $75fa: $bf
	inc c                                            ; $75fb: $0c
	inc b                                            ; $75fc: $04
	ld [bc], a                                       ; $75fd: $02
	ld bc, $9981                                     ; $75fe: $01 $81 $99
	ld e, l                                          ; $7601: $5d
	ld a, a                                          ; $7602: $7f
	rst SubAFromDE                                          ; $7603: $df
	cp a                                             ; $7604: $bf

jr_056_7605:
	ld [hl], b                                       ; $7605: $70
	db $e4                                           ; $7606: $e4
	sbc $ff                                          ; $7607: $de $ff
	rst $38                                          ; $7609: $ff
	ldh a, [c]                                       ; $760a: $f2
	ldh a, [$78]                                     ; $760b: $f0 $78
	ret nz                                           ; $760d: $c0

	add d                                            ; $760e: $82
	inc a                                            ; $760f: $3c
	nop                                              ; $7610: $00
	add b                                            ; $7611: $80
	ldh [$fe], a                                     ; $7612: $e0 $fe
	rst AddAOntoHL                                          ; $7614: $ef
	ld l, l                                          ; $7615: $6d
	sbc l                                            ; $7616: $9d
	inc a                                            ; $7617: $3c
	inc e                                            ; $7618: $1c
	sbc $ff                                          ; $7619: $de $ff
	adc [hl]                                         ; $761b: $8e
	ld a, a                                          ; $761c: $7f
	add hl, sp                                       ; $761d: $39
	jr c, jr_056_7638                                ; $761e: $38 $18

	ld [$0051], sp                                   ; $7620: $08 $51 $00
	ldh a, [$03]                                     ; $7623: $f0 $03
	rst $38                                          ; $7625: $ff
	or $db                                           ; $7626: $f6 $db
	db $ed                                           ; $7628: $ed
	adc [hl]                                         ; $7629: $8e
	rst $38                                          ; $762a: $ff
	nop                                              ; $762b: $00
	db $fc                                           ; $762c: $fc
	db $dd                                           ; $762d: $dd
	rst $38                                          ; $762e: $ff
	add b                                            ; $762f: $80
	adc h                                            ; $7630: $8c
	db $d3                                           ; $7631: $d3
	db $e4                                           ; $7632: $e4
	ld [de], a                                       ; $7633: $12
	ld l, c                                          ; $7634: $69

jr_056_7635:
	jp c, $d52e                                      ; $7635: $da $2e $d5

jr_056_7638:
	inc bc                                           ; $7638: $03
	ldh [rAUD2LOW], a                                ; $7639: $e0 $18
	inc c                                            ; $763b: $0c
	add [hl]                                         ; $763c: $86
	rst SubAFromBC                                          ; $763d: $e7
	di                                               ; $763e: $f3
	ei                                               ; $763f: $fb
	rst JumpTable                                          ; $7640: $c7
	ld sp, $5c98                                     ; $7641: $31 $98 $5c
	ld c, [hl]                                       ; $7644: $4e
	add [hl]                                         ; $7645: $86
	sub a                                            ; $7646: $97
	rst SubAFromDE                                          ; $7647: $df
	cp $ff                                           ; $7648: $fe $ff
	ld l, a                                          ; $764a: $6f
	daa                                              ; $764b: $27
	inc sp                                           ; $764c: $33
	dec sp                                           ; $764d: $3b
	add hl, hl                                       ; $764e: $29
	sbc [hl]                                         ; $764f: $9e
	add hl, hl                                       ; $7650: $29
	ld e, a                                          ; $7651: $5f
	ld [hl], b                                       ; $7652: $70
	rst SubAFromDE                                          ; $7653: $df
	add b                                            ; $7654: $80
	db $dd                                           ; $7655: $dd
	ld b, b                                          ; $7656: $40
	ld a, a                                          ; $7657: $7f
	add sp, $4f                                      ; $7658: $e8 $4f
	ld h, b                                          ; $765a: $60
	call c, $de7e                                    ; $765b: $dc $7e $de
	ccf                                              ; $765e: $3f
	ldh [$c9], a                                     ; $765f: $e0 $c9
	ld [bc], a                                       ; $7661: $02
	ret nc                                           ; $7662: $d0

	ld b, l                                          ; $7663: $45
	nop                                              ; $7664: $00
	rst SubAFromDE                                          ; $7665: $df
	ld sp, hl                                        ; $7666: $f9
	ld a, h                                          ; $7667: $7c
	ld d, b                                          ; $7668: $50
	ld a, h                                          ; $7669: $7c
	ld c, a                                          ; $766a: $4f
	nop                                              ; $766b: $00
	ld d, b                                          ; $766c: $50
	ld b, a                                          ; $766d: $47
	ldh a, [hDisp1_LCDC]                                     ; $766e: $f0 $8f
	inc bc                                           ; $7670: $03
	ldh [c], a                                       ; $7671: $e2
	ld e, h                                          ; $7672: $5c
	jr nz, jr_056_768e                               ; $7673: $20 $19

	rlca                                             ; $7675: $07
	ld [bc], a                                       ; $7676: $02
	inc c                                            ; $7677: $0c
	xor e                                            ; $7678: $ab
	or l                                             ; $7679: $b5
	or l                                             ; $767a: $b5
	cp e                                             ; $767b: $bb
	dec hl                                           ; $767c: $2b
	call $bb59                                       ; $767d: $cd $59 $bb
	reti                                             ; $7680: $d9


	rst $38                                          ; $7681: $ff
	adc l                                            ; $7682: $8d
	jp nz, Jump_056_70c3                             ; $7683: $c2 $c3 $70

	ld hl, sp-$10                                    ; $7686: $f8 $f0
	xor b                                            ; $7688: $a8
	adc $c1                                          ; $7689: $ce $c1
	rst JumpTable                                          ; $768b: $c7
	ld h, b                                          ; $768c: $60
	ret nz                                           ; $768d: $c0

jr_056_768e:
	add b                                            ; $768e: $80
	jr c, jr_056_76f1                                ; $768f: $38 $60

	add h                                            ; $7691: $84

jr_056_7692:
	call nz, $e0b0                                   ; $7692: $c4 $b0 $e0
	db $fc                                           ; $7695: $fc
	sbc h                                            ; $7696: $9c
	inc hl                                           ; $7697: $23
	ld h, b                                          ; $7698: $60
	ld b, b                                          ; $7699: $40
	db $fc                                           ; $769a: $fc
	adc a                                            ; $769b: $8f
	jp $0301                                         ; $769c: $c3 $01 $03


	ld c, $0e                                        ; $769f: $0e $0e
	rrca                                             ; $76a1: $0f
	rra                                              ; $76a2: $1f
	ld e, $fe                                        ; $76a3: $1e $fe
	ld bc, $0703                                     ; $76a5: $01 $03 $07
	rlca                                             ; $76a8: $07
	rrca                                             ; $76a9: $0f
	dec c                                            ; $76aa: $0d
	inc c                                            ; $76ab: $0c
	ld [hl], d                                       ; $76ac: $72
	call z, $ffde                                    ; $76ad: $cc $de $ff
	sbc [hl]                                         ; $76b0: $9e
	ld a, [hl]                                       ; $76b1: $7e
	halt                                             ; $76b2: $76
	jr c, jr_056_7635                                ; $76b3: $38 $80

	db $fc                                           ; $76b5: $fc
	ld hl, sp-$08                                    ; $76b6: $f8 $f8
	ld a, c                                          ; $76b8: $79
	rst $38                                          ; $76b9: $ff
	rst $38                                          ; $76ba: $ff
	cp a                                             ; $76bb: $bf
	ld e, e                                          ; $76bc: $5b
	xor a                                            ; $76bd: $af
	rst SubAFromHL                                          ; $76be: $d7
	db $eb                                           ; $76bf: $eb
	rst FarCall                                          ; $76c0: $f7
	rst $38                                          ; $76c1: $ff
	rst $38                                          ; $76c2: $ff
	rrca                                             ; $76c3: $0f
	rlca                                             ; $76c4: $07
	ld bc, $0000                                     ; $76c5: $01 $00 $00
	inc bc                                           ; $76c8: $03
	xor a                                            ; $76c9: $af
	or l                                             ; $76ca: $b5
	sbc $fb                                          ; $76cb: $de $fb
	rst SubAFromBC                                          ; $76cd: $e7
	adc $fd                                          ; $76ce: $ce $fd
	di                                               ; $76d0: $f3
	ld e, c                                          ; $76d1: $59
	db $db                                           ; $76d2: $db
	or e                                             ; $76d3: $b3
	sbc d                                            ; $76d4: $9a
	or $fe                                           ; $76d5: $f6 $fe
	ld a, l                                          ; $76d7: $7d
	dec sp                                           ; $76d8: $3b
	cp a                                             ; $76d9: $bf
	reti                                             ; $76da: $d9


	rst $38                                          ; $76db: $ff
	db $dd                                           ; $76dc: $dd
	ld b, b                                          ; $76dd: $40
	ld a, a                                          ; $76de: $7f
	sbc [hl]                                         ; $76df: $9e
	sbc [hl]                                         ; $76e0: $9e
	add b                                            ; $76e1: $80
	ld b, e                                          ; $76e2: $43
	ld h, b                                          ; $76e3: $60
	sbc [hl]                                         ; $76e4: $9e
	ccf                                              ; $76e5: $3f
	db $dd                                           ; $76e6: $dd
	cp a                                             ; $76e7: $bf
	sbc $9f                                          ; $76e8: $de $9f
	db $f4                                           ; $76ea: $f4
	sbc $80                                          ; $76eb: $de $80
	ldh [$d9], a                                     ; $76ed: $e0 $d9
	inc bc                                           ; $76ef: $03
	nop                                              ; $76f0: $00

jr_056_76f1:
	ld c, e                                          ; $76f1: $4b
	ldh a, [$9b]                                     ; $76f2: $f0 $9b
	rst SubAFromBC                                          ; $76f4: $e7
	rst AddAOntoHL                                          ; $76f5: $ef
	rst GetHLinHL                                          ; $76f6: $cf
	rst GetHLinHL                                          ; $76f7: $cf
	ld d, b                                          ; $76f8: $50
	ld d, b                                          ; $76f9: $50
	inc bc                                           ; $76fa: $03
	ret nz                                           ; $76fb: $c0

	db $db                                           ; $76fc: $db
	rst $38                                          ; $76fd: $ff
	sub a                                            ; $76fe: $97
	inc de                                           ; $76ff: $13
	ld a, [hl]                                       ; $7700: $7e
	dec b                                            ; $7701: $05
	add hl, bc                                       ; $7702: $09
	dec bc                                           ; $7703: $0b
	rla                                              ; $7704: $17
	dec l                                            ; $7705: $2d
	ld e, e                                          ; $7706: $5b
	sbc $ff                                          ; $7707: $de $ff
	sbc l                                            ; $7709: $9d
	di                                               ; $770a: $f3
	pop bc                                           ; $770b: $c1
	ld e, e                                          ; $770c: $5b
	jr c, jr_056_7692                                ; $770d: $38 $83

	pop hl                                           ; $770f: $e1
	ldh a, [$fc]                                     ; $7710: $f0 $fc
	rst $38                                          ; $7712: $ff
	inc bc                                           ; $7713: $03
	add b                                            ; $7714: $80
	add b                                            ; $7715: $80
	ld b, e                                          ; $7716: $43
	pop bc                                           ; $7717: $c1
	ldh [$f0], a                                     ; $7718: $e0 $f0
	db $fc                                           ; $771a: $fc
	ccf                                              ; $771b: $3f
	sbc a                                            ; $771c: $9f
	rst GetHLinHL                                          ; $771d: $cf
	rst SubAFromBC                                          ; $771e: $e7
	rst SubAFromBC                                          ; $771f: $e7
	rst AddAOntoHL                                          ; $7720: $ef
	rrca                                             ; $7721: $0f
	rrca                                             ; $7722: $0f
	rst $38                                          ; $7723: $ff
	ccf                                              ; $7724: $3f
	rst GetHLinHL                                          ; $7725: $cf
	rrca                                             ; $7726: $0f
	db $e4                                           ; $7727: $e4
	add sp, $08                                      ; $7728: $e8 $08
	ld [$f8dd], sp                                   ; $772a: $08 $dd $f8
	rst SubAFromDE                                          ; $772d: $df
	cp $80                                           ; $772e: $fe $80
	rst $38                                          ; $7730: $ff
	rst FarCall                                          ; $7731: $f7
	ei                                               ; $7732: $fb
	db $fd                                           ; $7733: $fd
	cp $ff                                           ; $7734: $fe $ff
	ld b, $02                                        ; $7736: $06 $02
	ld bc, $0509                                     ; $7738: $01 $09 $05
	ld [bc], a                                       ; $773b: $02
	ld bc, $3f00                                     ; $773c: $01 $00 $3f
	dec e                                            ; $773f: $1d
	di                                               ; $7740: $f3
	rst $38                                          ; $7741: $ff
	ld a, a                                          ; $7742: $7f
	cp e                                             ; $7743: $bb
	ld l, a                                          ; $7744: $6f
	ld l, a                                          ; $7745: $6f
	ld [hl-], a                                      ; $7746: $32
	ld d, $fc                                        ; $7747: $16 $fc
	ld [$c484], sp                                   ; $7749: $08 $84 $c4
	db $d3                                           ; $774c: $d3
	call nc, $93fc                                   ; $774d: $d4 $fc $93
	ld sp, hl                                        ; $7750: $f9
	ldh a, [c]                                       ; $7751: $f2
	push hl                                          ; $7752: $e5
	rst GetHLinHL                                          ; $7753: $cf
	sbc [hl]                                         ; $7754: $9e
	ldh a, [$e0]                                     ; $7755: $f0 $e0
	rlca                                             ; $7757: $07
	ld c, $1d                                        ; $7758: $0e $1d
	ld a, [hl-]                                      ; $775a: $3a
	ld [hl], a                                       ; $775b: $77
	ld a, c                                          ; $775c: $79
	ld e, h                                          ; $775d: $5c
	sub h                                            ; $775e: $94
	rst $38                                          ; $775f: $ff
	pop af                                           ; $7760: $f1
	ldh [$f0], a                                     ; $7761: $e0 $f0
	ret z                                            ; $7763: $c8

	inc b                                            ; $7764: $04
	inc bc                                           ; $7765: $03
	inc bc                                           ; $7766: $03
	sbc a                                            ; $7767: $9f
	sbc a                                            ; $7768: $9f
	ccf                                              ; $7769: $3f
	ret c                                            ; $776a: $d8

	rst $38                                          ; $776b: $ff
	rst SubAFromDE                                          ; $776c: $df
	ld a, a                                          ; $776d: $7f
	ld a, [hl]                                       ; $776e: $7e
	jp c, $ec7a                                      ; $776f: $da $7a $ec

	sbc $c0                                          ; $7772: $de $c0
	ld a, a                                          ; $7774: $7f
	db $e4                                           ; $7775: $e4
	ld b, a                                          ; $7776: $47
	ld h, b                                          ; $7777: $60
	sbc [hl]                                         ; $7778: $9e
	sbc a                                            ; $7779: $9f
	db $dd                                           ; $777a: $dd
	rst SubAFromDE                                          ; $777b: $df
	sbc $cf                                          ; $777c: $de $cf
	ld e, [hl]                                       ; $777e: $5e
	push bc                                          ; $777f: $c5
	db $db                                           ; $7780: $db
	ret nz                                           ; $7781: $c0

	ldh [$d9], a                                     ; $7782: $e0 $d9
	inc bc                                           ; $7784: $03
	nop                                              ; $7785: $00
	ld l, b                                          ; $7786: $68
	ld c, a                                          ; $7787: $4f
	ld d, b                                          ; $7788: $50

jr_056_7789:
	ld d, b                                          ; $7789: $50
	ld a, b                                          ; $778a: $78
	ld c, a                                          ; $778b: $4f
	inc bc                                           ; $778c: $03
	ret nz                                           ; $778d: $c0

	rst $38                                          ; $778e: $ff
	db $dd                                           ; $778f: $dd
	ld bc, $0391                                     ; $7790: $01 $91 $03
	cp $fc                                           ; $7793: $fe $fc
	ldh a, [$e3]                                     ; $7795: $f0 $e3
	rst SubAFromBC                                          ; $7797: $e7
	ld hl, sp-$80                                    ; $7798: $f8 $80
	nop                                              ; $779a: $00
	ld e, a                                          ; $779b: $5f
	xor a                                            ; $779c: $af
	rst SubAFromDE                                          ; $779d: $df
	cp a                                             ; $779e: $bf
	ccf                                              ; $779f: $3f
	ld h, a                                          ; $77a0: $67
	ret z                                            ; $77a1: $c8

	rst SubAFromDE                                          ; $77a2: $df
	ld [bc], a                                       ; $77a3: $02
	sbc [hl]                                         ; $77a4: $9e
	inc b                                            ; $77a5: $04
	reti                                             ; $77a6: $d9


	rst $38                                          ; $77a7: $ff
	sbc h                                            ; $77a8: $9c
	jr c, @+$22                                      ; $77a9: $38 $20

	jr nz, jr_056_7789                               ; $77ab: $20 $dc

	db $10                                           ; $77ad: $10
	reti                                             ; $77ae: $d9


	rst $38                                          ; $77af: $ff
	rst SubAFromDE                                          ; $77b0: $df
	rrca                                             ; $77b1: $0f
	sub a                                            ; $77b2: $97
	dec bc                                           ; $77b3: $0b
	inc c                                            ; $77b4: $0c
	rlca                                             ; $77b5: $07
	inc bc                                           ; $77b6: $03
	ld bc, $f8fd                                     ; $77b7: $01 $fd $f8
	ld sp, hl                                        ; $77ba: $f9
	ld l, h                                          ; $77bb: $6c
	sub [hl]                                         ; $77bc: $96
	adc e                                            ; $77bd: $8b
	ld a, a                                          ; $77be: $7f
	xor b                                            ; $77bf: $a8
	ld d, e                                          ; $77c0: $53
	and h                                            ; $77c1: $a4
	sbc c                                            ; $77c2: $99
	ei                                               ; $77c3: $fb
	rst FarCall                                          ; $77c4: $f7
	rst AddAOntoHL                                          ; $77c5: $ef
	rst $38                                          ; $77c6: $ff
	rst SubAFromHL                                          ; $77c7: $d7
	xor a                                            ; $77c8: $af
	ld e, a                                          ; $77c9: $5f
	cp $e4                                           ; $77ca: $fe $e4
	adc b                                            ; $77cc: $88
	db $10                                           ; $77cd: $10
	ei                                               ; $77ce: $fb
	reti                                             ; $77cf: $d9


	ld e, h                                          ; $77d0: $5c
	cp $7a                                           ; $77d1: $fe $7a
	rst AddAOntoHL                                          ; $77d3: $ef
	sbc d                                            ; $77d4: $9a
	ld a, a                                          ; $77d5: $7f
	db $fc                                           ; $77d6: $fc
	or $f3                                           ; $77d7: $f6 $f3
	or c                                             ; $77d9: $b1
	sbc $b0                                          ; $77da: $de $b0
	add [hl]                                         ; $77dc: $86
	cp c                                             ; $77dd: $b9
	ldh a, [$f8]                                     ; $77de: $f0 $f8
	db $fc                                           ; $77e0: $fc
	rst $38                                          ; $77e1: $ff
	ld hl, sp-$20                                    ; $77e2: $f8 $e0
	ret nz                                           ; $77e4: $c0

	add b                                            ; $77e5: $80
	rra                                              ; $77e6: $1f
	rrca                                             ; $77e7: $0f
	rlca                                             ; $77e8: $07
	rrca                                             ; $77e9: $0f
	jr nc, jr_056_782c                               ; $77ea: $30 $40

	add b                                            ; $77ec: $80
	nop                                              ; $77ed: $00
	inc bc                                           ; $77ee: $03
	ld bc, $c101                                     ; $77ef: $01 $01 $c1
	ld [hl], c                                       ; $77f2: $71
	add hl, de                                       ; $77f3: $19
	dec c                                            ; $77f4: $0d
	rlca                                             ; $77f5: $07
	db $dd                                           ; $77f6: $dd
	rst $38                                          ; $77f7: $ff
	sub [hl]                                         ; $77f8: $96
	ccf                                              ; $77f9: $3f
	rrca                                             ; $77fa: $0f
	rlca                                             ; $77fb: $07
	inc bc                                           ; $77fc: $03
	rst SubAFromDE                                          ; $77fd: $df
	ld a, a                                          ; $77fe: $7f
	ccf                                              ; $77ff: $3f
	rrca                                             ; $7800: $0f
	inc bc                                           ; $7801: $03
	ld a, e                                          ; $7802: $7b
	db $eb                                           ; $7803: $eb
	ld a, a                                          ; $7804: $7f
	ret c                                            ; $7805: $d8

	ld a, a                                          ; $7806: $7f
	rst SubAFromHL                                          ; $7807: $d7
	ld a, d                                          ; $7808: $7a
	ld [hl], h                                       ; $7809: $74
	ret c                                            ; $780a: $d8

	rst $38                                          ; $780b: $ff
	ld sp, hl                                        ; $780c: $f9
	rst SubAFromDE                                          ; $780d: $df
	rst GetHLinHL                                          ; $780e: $cf
	db $dd                                           ; $780f: $dd
	rst AddAOntoHL                                          ; $7810: $ef
	rst SubAFromDE                                          ; $7811: $df
	rst SubAFromBC                                          ; $7812: $e7
	ld sp, hl                                        ; $7813: $f9
	ld a, [hl]                                       ; $7814: $7e
	sbc l                                            ; $7815: $9d
	db $db                                           ; $7816: $db
	ldh [$e0], a                                     ; $7817: $e0 $e0
	reti                                             ; $7819: $d9


	ld b, $c0                                        ; $781a: $06 $c0
	sbc [hl]                                         ; $781c: $9e
	db $fc                                           ; $781d: $fc
	ld l, b                                          ; $781e: $68
	ld c, a                                          ; $781f: $4f
	ld [de], a                                       ; $7820: $12
	and b                                            ; $7821: $a0
	ld a, h                                          ; $7822: $7c
	or a                                             ; $7823: $b7
	sbc [hl]                                         ; $7824: $9e
	ei                                               ; $7825: $fb
	halt                                             ; $7826: $76
	ret nc                                           ; $7827: $d0

	ld a, h                                          ; $7828: $7c
	sbc l                                            ; $7829: $9d
	ld a, h                                          ; $782a: $7c
	sub [hl]                                         ; $782b: $96

jr_056_782c:
	ld a, [hl]                                       ; $782c: $7e
	pop de                                           ; $782d: $d1
	ld [hl], c                                       ; $782e: $71
	dec b                                            ; $782f: $05
	sbc l                                            ; $7830: $9d
	ret nz                                           ; $7831: $c0

	rrca                                             ; $7832: $0f
	ld a, d                                          ; $7833: $7a
	call nc, $a837                                   ; $7834: $d4 $37 $a8
	rst SubAFromDE                                          ; $7837: $df
	inc b                                            ; $7838: $04
	sbc c                                            ; $7839: $99
	inc c                                            ; $783a: $0c
	ld [$1808], sp                                   ; $783b: $08 $08 $18
	db $10                                           ; $783e: $10
	inc sp                                           ; $783f: $33
	reti                                             ; $7840: $d9


	rst $38                                          ; $7841: $ff
	sub a                                            ; $7842: $97
	rla                                              ; $7843: $17
	rra                                              ; $7844: $1f
	ld a, $78                                        ; $7845: $3e $78
	ld [hl], b                                       ; $7847: $70
	ldh a, [$f0]                                     ; $7848: $f0 $f0
	ld hl, sp+$76                                    ; $784a: $f8 $76
	ei                                               ; $784c: $fb
	ld a, b                                          ; $784d: $78
	and b                                            ; $784e: $a0
	sbc l                                            ; $784f: $9d
	add b                                            ; $7850: $80
	rst $38                                          ; $7851: $ff
	ld l, b                                          ; $7852: $68
	add $9e                                          ; $7853: $c6 $9e
	inc bc                                           ; $7855: $03
	ld h, a                                          ; $7856: $67
	ret z                                            ; $7857: $c8

	adc [hl]                                         ; $7858: $8e
	cp $7e                                           ; $7859: $fe $7e
	ld a, a                                          ; $785b: $7f
	ccf                                              ; $785c: $3f
	cpl                                              ; $785d: $2f
	rra                                              ; $785e: $1f
	rra                                              ; $785f: $1f
	nop                                              ; $7860: $00
	add c                                            ; $7861: $81
	ld b, c                                          ; $7862: $41
	ld b, b                                          ; $7863: $40
	jr nz, jr_056_7896                               ; $7864: $20 $30

	inc e                                            ; $7866: $1c
	rra                                              ; $7867: $1f
	db $db                                           ; $7868: $db
	rst GetHLinHL                                          ; $7869: $cf
	db $db                                           ; $786a: $db
	add a                                            ; $786b: $87
	halt                                             ; $786c: $76
	inc l                                            ; $786d: $2c
	db $dd                                           ; $786e: $dd
	db $fc                                           ; $786f: $fc
	ld a, c                                          ; $7870: $79
	adc $9e                                          ; $7871: $ce $9e
	ret nz                                           ; $7873: $c0

	ld a, c                                          ; $7874: $79
	dec a                                            ; $7875: $3d
	ld h, e                                          ; $7876: $63
	sbc b                                            ; $7877: $98
	ld a, [hl]                                       ; $7878: $7e
	push de                                          ; $7879: $d5
	ld l, l                                          ; $787a: $6d
	cp c                                             ; $787b: $b9
	ld l, a                                          ; $787c: $6f
	ld sp, hl                                        ; $787d: $f9
	rst $38                                          ; $787e: $ff
	sub a                                            ; $787f: $97
	cp c                                             ; $7880: $b9
	pop af                                           ; $7881: $f1
	ld b, c                                          ; $7882: $41
	ld b, c                                          ; $7883: $41
	ld hl, $1121                                     ; $7884: $21 $21 $11
	add hl, bc                                       ; $7887: $09
	ld l, l                                          ; $7888: $6d
	ld a, c                                          ; $7889: $79
	sbc l                                            ; $788a: $9d
	ccf                                              ; $788b: $3f
	rra                                              ; $788c: $1f
	ld b, b                                          ; $788d: $40
	or b                                             ; $788e: $b0
	rst SubAFromDE                                          ; $788f: $df
	rst SubAFromBC                                          ; $7890: $e7
	sbc $f7                                          ; $7891: $de $f7
	rst SubAFromDE                                          ; $7893: $df
	di                                               ; $7894: $f3
	ld sp, hl                                        ; $7895: $f9

jr_056_7896:
	rst SubAFromDE                                          ; $7896: $df
	ldh a, [$9e]                                     ; $7897: $f0 $9e
	pop af                                           ; $7899: $f1
	ld d, e                                          ; $789a: $53
	ldh [$9e], a                                     ; $789b: $e0 $9e
	nop                                              ; $789d: $00
	ld [hl], d                                       ; $789e: $72
	halt                                             ; $789f: $76
	ld a, a                                          ; $78a0: $7f
	ld a, d                                          ; $78a1: $7a
	ld sp, hl                                        ; $78a2: $f9
	ld l, a                                          ; $78a3: $6f
	cp a                                             ; $78a4: $bf
	sbc [hl]                                         ; $78a5: $9e
	ld hl, sp+$56                                    ; $78a6: $f8 $56
	ret nz                                           ; $78a8: $c0

	ld [hl], e                                       ; $78a9: $73
	inc h                                            ; $78aa: $24
	daa                                              ; $78ab: $27
	ldh a, [$9b]                                     ; $78ac: $f0 $9b
	rst FarCall                                          ; $78ae: $f7
	rst SubAFromBC                                          ; $78af: $e7
	rst AddAOntoHL                                          ; $78b0: $ef
	nop                                              ; $78b1: $00
	ld [hl], h                                       ; $78b2: $74
	ld c, a                                          ; $78b3: $4f
	ld e, a                                          ; $78b4: $5f
	ldh [$9c], a                                     ; $78b5: $e0 $9c
	cp $0c                                           ; $78b7: $fe $0c
	ldh a, [$7a]                                     ; $78b9: $f0 $7a
	db $10                                           ; $78bb: $10
	ld a, d                                          ; $78bc: $7a
	jp nc, $d37e                                     ; $78bd: $d2 $7e $d3

	ld [hl], l                                       ; $78c0: $75
	xor a                                            ; $78c1: $af
	ld l, e                                          ; $78c2: $6b
	db $10                                           ; $78c3: $10
	ld l, d                                          ; $78c4: $6a
	pop de                                           ; $78c5: $d1
	sbc [hl]                                         ; $78c6: $9e
	rst $38                                          ; $78c7: $ff
	ld h, [hl]                                       ; $78c8: $66
	ld b, a                                          ; $78c9: $47
	ld d, l                                          ; $78ca: $55
	ld a, b                                          ; $78cb: $78
	sbc h                                            ; $78cc: $9c
	rlca                                             ; $78cd: $07
	ld a, [bc]                                       ; $78ce: $0a
	rra                                              ; $78cf: $1f
	ld l, b                                          ; $78d0: $68
	or e                                             ; $78d1: $b3
	sbc l                                            ; $78d2: $9d
	push af                                          ; $78d3: $f5
	add sp, $77                                      ; $78d4: $e8 $77
	call $ffdc                                       ; $78d6: $cd $dc $ff
	sub a                                            ; $78d9: $97
	db $eb                                           ; $78da: $eb
	rst $38                                          ; $78db: $ff
	xor e                                            ; $78dc: $ab
	ld e, a                                          ; $78dd: $5f
	xor d                                            ; $78de: $aa
	ld d, [hl]                                       ; $78df: $56
	xor [hl]                                         ; $78e0: $ae
	ld hl, sp-$22                                    ; $78e1: $f8 $de
	db $fc                                           ; $78e3: $fc
	db $dd                                           ; $78e4: $dd
	cp $6b                                           ; $78e5: $fe $6b
	cp c                                             ; $78e7: $b9
	ld a, d                                          ; $78e8: $7a
	rst $38                                          ; $78e9: $ff
	ld a, [hl]                                       ; $78ea: $7e
	ld a, e                                          ; $78eb: $7b
	sbc e                                            ; $78ec: $9b
	ld c, $1c                                        ; $78ed: $0e $1c
	jr jr_056_7901                                   ; $78ef: $18 $10

	ld sp, hl                                        ; $78f1: $f9
	sub a                                            ; $78f2: $97
	dec de                                           ; $78f3: $1b
	jr @+$0a                                         ; $78f4: $18 $08

	inc c                                            ; $78f6: $0c
	ld c, $0d                                        ; $78f7: $0e $0d
	ld h, $25                                        ; $78f9: $26 $25
	db $dd                                           ; $78fb: $dd
	rrca                                             ; $78fc: $0f
	jp c, $9a07                                      ; $78fd: $da $07 $9a

	rrca                                             ; $7900: $0f

jr_056_7901:
	rla                                              ; $7901: $17
	daa                                              ; $7902: $27
	rst JumpTable                                          ; $7903: $c7
	rrca                                             ; $7904: $0f
	jp c, $61fc                                      ; $7905: $da $fc $61

	xor [hl]                                         ; $7908: $ae
	ei                                               ; $7909: $fb
	ld a, l                                          ; $790a: $7d
	inc [hl]                                         ; $790b: $34
	call c, Call_056_7cc0                            ; $790c: $dc $c0 $7c
	ld e, c                                          ; $790f: $59
	ld h, e                                          ; $7910: $63
	rra                                              ; $7911: $1f
	sbc l                                            ; $7912: $9d
	add hl, bc                                       ; $7913: $09
	dec b                                            ; $7914: $05
	ld a, c                                          ; $7915: $79
	add e                                            ; $7916: $83
	cp $7b                                           ; $7917: $fe $7b
	jp nz, $f773                                     ; $7919: $c2 $73 $f7

	ld d, a                                          ; $791c: $57
	jr nz, @+$7a                                     ; $791d: $20 $78

	ld d, h                                          ; $791f: $54
	sbc [hl]                                         ; $7920: $9e
	ld [hl], b                                       ; $7921: $70
	sbc $f3                                          ; $7922: $de $f3
	sbc d                                            ; $7924: $9a
	nop                                              ; $7925: $00
	di                                               ; $7926: $f3
	ei                                               ; $7927: $fb
	ei                                               ; $7928: $fb
	ld sp, hl                                        ; $7929: $f9
	ld h, e                                          ; $792a: $63
	jr nz, jr_056_79aa                               ; $792b: $20 $7d

	db $f4                                           ; $792d: $f4
	sbc [hl]                                         ; $792e: $9e
	nop                                              ; $792f: $00
	ld [hl], a                                       ; $7930: $77
	ld l, h                                          ; $7931: $6c
	ld h, b                                          ; $7932: $60
	jr nc, jr_056_7936                               ; $7933: $30 $01

	add b                                            ; $7935: $80

jr_056_7936:
	jr nc, jr_056_7988                               ; $7936: $30 $50

	ld h, a                                          ; $7938: $67
	ldh a, [$97]                                     ; $7939: $f0 $97
	inc bc                                           ; $793b: $03
	cp a                                             ; $793c: $bf
	ld a, $3c                                        ; $793d: $3e $3c
	ld a, b                                          ; $793f: $78
	ld l, b                                          ; $7940: $68
	ld b, h                                          ; $7941: $44
	add d                                            ; $7942: $82
	ld a, b                                          ; $7943: $78
	halt                                             ; $7944: $76
	sbc [hl]                                         ; $7945: $9e
	rlca                                             ; $7946: $07
	ld a, d                                          ; $7947: $7a
	pop de                                           ; $7948: $d1
	sbc l                                            ; $7949: $9d
	sbc a                                            ; $794a: $9f
	adc a                                            ; $794b: $8f
	cpl                                              ; $794c: $2f
	ret z                                            ; $794d: $c8

	ld a, a                                          ; $794e: $7f
	db $e4                                           ; $794f: $e4
	jp c, Jump_056_7fff                              ; $7950: $da $ff $7f

	add e                                            ; $7953: $83
	ld a, [hl]                                       ; $7954: $7e
	jp nc, $a87e                                     ; $7955: $d2 $7e $a8

	ld [hl], d                                       ; $7958: $72
	call c, $fe9a                                    ; $7959: $dc $9a $fe
	ld hl, sp-$10                                    ; $795c: $f8 $f0
	ldh [$80], a                                     ; $795e: $e0 $80
	ld h, d                                          ; $7960: $62
	xor b                                            ; $7961: $a8
	sbc [hl]                                         ; $7962: $9e
	pop bc                                           ; $7963: $c1
	ld a, c                                          ; $7964: $79
	xor $7b                                          ; $7965: $ee $7b
	cp $9e                                           ; $7967: $fe $9e
	ld [bc], a                                       ; $7969: $02
	reti                                             ; $796a: $d9


	rst $38                                          ; $796b: $ff
	sbc h                                            ; $796c: $9c
	ld d, [hl]                                       ; $796d: $56
	xor h                                            ; $796e: $ac
	ld d, h                                          ; $796f: $54
	ld [hl], e                                       ; $7970: $73
	cp $6d                                           ; $7971: $fe $6d
	cp d                                             ; $7973: $ba
	rst SubAFromDE                                          ; $7974: $df
	ld hl, sp-$17                                    ; $7975: $f8 $e9
	rst SubAFromDE                                          ; $7977: $df
	ld h, $99                                        ; $7978: $26 $99
	ld [hl+], a                                      ; $797a: $22
	ld [hl-], a                                      ; $797b: $32
	ld [hl-], a                                      ; $797c: $32
	inc sp                                           ; $797d: $33
	ld sp, $dd31                                     ; $797e: $31 $31 $dd
	inc hl                                           ; $7981: $23
	sub b                                            ; $7982: $90
	inc de                                           ; $7983: $13
	ld de, $1011                                     ; $7984: $11 $11 $10
	sbc a                                            ; $7987: $9f

jr_056_7988:
	ld a, a                                          ; $7988: $7f
	sbc a                                            ; $7989: $9f
	adc l                                            ; $798a: $8d
	adc l                                            ; $798b: $8d
	adc e                                            ; $798c: $8b
	adc c                                            ; $798d: $89
	adc c                                            ; $798e: $89
	ldh a, [c]                                       ; $798f: $f2
	ldh [c], a                                       ; $7990: $e2
	ldh a, [c]                                       ; $7991: $f2
	call nc, $9eff                                   ; $7992: $d4 $ff $9e
	db $10                                           ; $7995: $10
	sbc $08                                          ; $7996: $de $08
	sbc $04                                          ; $7998: $de $04
	sbc [hl]                                         ; $799a: $9e
	ld [bc], a                                       ; $799b: $02
	ld h, h                                          ; $799c: $64
	ld e, e                                          ; $799d: $5b
	push af                                          ; $799e: $f5
	ld a, [hl]                                       ; $799f: $7e
	reti                                             ; $79a0: $d9


jr_056_79a1:
	ld a, [hl]                                       ; $79a1: $7e
	xor [hl]                                         ; $79a2: $ae
	ld sp, hl                                        ; $79a3: $f9
	sub l                                            ; $79a4: $95
	ld a, a                                          ; $79a5: $7f
	inc a                                            ; $79a6: $3c
	jr jr_056_79c1                                   ; $79a7: $18 $18

	inc c                                            ; $79a9: $0c

jr_056_79aa:
	inc c                                            ; $79aa: $0c
	ld b, $06                                        ; $79ab: $06 $06

jr_056_79ad:
	ccf                                              ; $79ad: $3f
	rra                                              ; $79ae: $1f
	halt                                             ; $79af: $76
	ld [hl], b                                       ; $79b0: $70
	rst SubAFromDE                                          ; $79b1: $df
	inc bc                                           ; $79b2: $03
	sbc [hl]                                         ; $79b3: $9e
	rst $38                                          ; $79b4: $ff
	ld a, d                                          ; $79b5: $7a
	xor d                                            ; $79b6: $aa
	db $dd                                           ; $79b7: $dd
	ld bc, $ffd9                                     ; $79b8: $01 $d9 $ff
	ld l, [hl]                                       ; $79bb: $6e
	ld l, d                                          ; $79bc: $6a
	rst SubAFromDE                                          ; $79bd: $df
	cp $e0                                           ; $79be: $fe $e0
	reti                                             ; $79c0: $d9


jr_056_79c1:
	ld a, e                                          ; $79c1: $7b
	jr @-$6c                                         ; $79c2: $18 $92

	ldh a, [$c0]                                     ; $79c4: $f0 $c0
	nop                                              ; $79c6: $00
	ldh [$d8], a                                     ; $79c7: $e0 $d8
	nop                                              ; $79c9: $00
	ld bc, $700e                                     ; $79ca: $01 $0e $70
	add b                                            ; $79cd: $80
	nop                                              ; $79ce: $00
	ld h, b                                          ; $79cf: $60
	ret z                                            ; $79d0: $c8

	ld h, l                                          ; $79d1: $65
	cp a                                             ; $79d2: $bf
	sbc l                                            ; $79d3: $9d
	dec a                                            ; $79d4: $3d
	ret nz                                           ; $79d5: $c0

	ld h, a                                          ; $79d6: $67
	add e                                            ; $79d7: $83
	ld a, h                                          ; $79d8: $7c
	ret                                              ; $79d9: $c9


	sub c                                            ; $79da: $91
	db $10                                           ; $79db: $10
	add hl, de                                       ; $79dc: $19
	ccf                                              ; $79dd: $3f
	ld a, a                                          ; $79de: $7f
	rst JumpTable                                          ; $79df: $c7
	db $e3                                           ; $79e0: $e3
	ld [hl], c                                       ; $79e1: $71
	jr c, jr_056_7a00                                ; $79e2: $38 $1c

	rrca                                             ; $79e4: $0f
	rra                                              ; $79e5: $1f
	jr c, @-$7e                                      ; $79e6: $38 $80

	ld c, a                                          ; $79e8: $4f
	ld h, l                                          ; $79e9: $65
	cp [hl]                                          ; $79ea: $be
	ld a, [hl]                                       ; $79eb: $7e

jr_056_79ec:
	ldh [$7a], a                                     ; $79ec: $e0 $7a
	pop hl                                           ; $79ee: $e1
	ld h, d                                          ; $79ef: $62
	cp b                                             ; $79f0: $b8
	ld [hl], a                                       ; $79f1: $77
	db $f4                                           ; $79f2: $f4
	ld b, l                                          ; $79f3: $45
	adc b                                            ; $79f4: $88
	ld a, d                                          ; $79f5: $7a
	adc e                                            ; $79f6: $8b
	ld a, [hl]                                       ; $79f7: $7e
	xor b                                            ; $79f8: $a8
	ld [hl], h                                       ; $79f9: $74
	ld l, e                                          ; $79fa: $6b
	sbc h                                            ; $79fb: $9c
	ld hl, sp-$72                                    ; $79fc: $f8 $8e
	inc bc                                           ; $79fe: $03
	ret c                                            ; $79ff: $d8

jr_056_7a00:
	rst $38                                          ; $7a00: $ff
	ld [hl], a                                       ; $7a01: $77
	ld b, a                                          ; $7a02: $47
	ld a, a                                          ; $7a03: $7f
	cp b                                             ; $7a04: $b8
	sbc [hl]                                         ; $7a05: $9e
	cpl                                              ; $7a06: $2f
	sub $f8                                          ; $7a07: $d6 $f8
	call c, $e9f0                                    ; $7a09: $dc $f0 $e9
	rst SubAFromDE                                          ; $7a0c: $df
	jr nc, jr_056_79ec                               ; $7a0d: $30 $dd

	ld [hl], b                                       ; $7a0f: $70
	rst SubAFromDE                                          ; $7a10: $df
	ldh a, [$dc]                                     ; $7a11: $f0 $dc
	db $10                                           ; $7a13: $10
	rst SubAFromDE                                          ; $7a14: $df
	jr nc, jr_056_79ad                               ; $7a15: $30 $96

	jr nz, jr_056_79a1                               ; $7a17: $20 $88

	adc b                                            ; $7a19: $88
	ret z                                            ; $7a1a: $c8

	ld b, h                                          ; $7a1b: $44
	ld h, h                                          ; $7a1c: $64
	inc h                                            ; $7a1d: $24
	inc [hl]                                         ; $7a1e: $34
	inc [hl]                                         ; $7a1f: $34
	ld l, b                                          ; $7a20: $68
	ld [hl], c                                       ; $7a21: $71
	ld h, b                                          ; $7a22: $60
	ld [hl], b                                       ; $7a23: $70
	rst SubAFromDE                                          ; $7a24: $df

Jump_056_7a25:
	add d                                            ; $7a25: $82
	rst SubAFromDE                                          ; $7a26: $df
	add c                                            ; $7a27: $81
	db $dd                                           ; $7a28: $dd
	add b                                            ; $7a29: $80
	ld d, [hl]                                       ; $7a2a: $56
	jr z, jr_056_7aab                                ; $7a2b: $28 $7e

	ret z                                            ; $7a2d: $c8

	sbc d                                            ; $7a2e: $9a
	ld b, b                                          ; $7a2f: $40
	ld h, b                                          ; $7a30: $60
	ldh a, [$f8]                                     ; $7a31: $f0 $f8
	ld hl, sp+$72                                    ; $7a33: $f8 $72
	xor l                                            ; $7a35: $ad
	ld h, c                                          ; $7a36: $61
	ld hl, $d076                                     ; $7a37: $21 $76 $d0
	ld [hl], e                                       ; $7a3a: $73
	ld h, e                                          ; $7a3b: $63
	ei                                               ; $7a3c: $fb
	rst SubAFromDE                                          ; $7a3d: $df
	ld bc, $8199                                     ; $7a3e: $01 $99 $81
	ei                                               ; $7a41: $fb
	adc a                                            ; $7a42: $8f
	jp $e0c1                                         ; $7a43: $c3 $c1 $e0


	call c, Call_056_7bff                            ; $7a46: $dc $ff $7b
	xor l                                            ; $7a49: $ad
	db $dd                                           ; $7a4a: $dd
	cp $5e                                           ; $7a4b: $fe $5e

jr_056_7a4d:
	add b                                            ; $7a4d: $80
	rst SubAFromDE                                          ; $7a4e: $df
	add b                                            ; $7a4f: $80
	pop hl                                           ; $7a50: $e1
	sub d                                            ; $7a51: $92
	ld [hl], $6c                                     ; $7a52: $36 $6c
	reti                                             ; $7a54: $d9


	or e                                             ; $7a55: $b3
	ld h, a                                          ; $7a56: $67
	db $fd                                           ; $7a57: $fd
	ld a, a                                          ; $7a58: $7f
	rst $38                                          ; $7a59: $ff
	ld [de], a                                       ; $7a5a: $12
	inc h                                            ; $7a5b: $24
	ld c, b                                          ; $7a5c: $48
	sub c                                            ; $7a5d: $91
	inc hl                                           ; $7a5e: $23
	ld [hl], h                                       ; $7a5f: $74
	cp d                                             ; $7a60: $ba
	sub h                                            ; $7a61: $94
	ld a, c                                          ; $7a62: $79
	db $e3                                           ; $7a63: $e3
	adc a                                            ; $7a64: $8f
	ei                                               ; $7a65: $fb
	rst SubAFromDE                                          ; $7a66: $df
	sbc a                                            ; $7a67: $9f
	cp a                                             ; $7a68: $bf
	nop                                              ; $7a69: $00
	jr jr_056_7a4d                                   ; $7a6a: $18 $e1

	add [hl]                                         ; $7a6c: $86
	ld [hl], l                                       ; $7a6d: $75
	dec sp                                           ; $7a6e: $3b
	reti                                             ; $7a6f: $d9


	rst $38                                          ; $7a70: $ff
	sbc [hl]                                         ; $7a71: $9e
	ld h, b                                          ; $7a72: $60
	ld a, $e0                                        ; $7a73: $3e $e0
	ld c, e                                          ; $7a75: $4b
	ldh a, [rPCM12]                                  ; $7a76: $f0 $76
	pop de                                           ; $7a78: $d1
	rst SubAFromDE                                          ; $7a79: $df
	inc bc                                           ; $7a7a: $03
	ld [hl], d                                       ; $7a7b: $72
	cp b                                             ; $7a7c: $b8
	ld a, e                                          ; $7a7d: $7b
	ldh a, [c]                                       ; $7a7e: $f2
	ld e, e                                          ; $7a7f: $5b
	add sp, -$63                                     ; $7a80: $e8 $9d
	ld b, $38                                        ; $7a82: $06 $38
	ld a, d                                          ; $7a84: $7a
	ld [hl], h                                       ; $7a85: $74
	reti                                             ; $7a86: $d9


	rst $38                                          ; $7a87: $ff
	sub a                                            ; $7a88: $97
	rst GetHLinHL                                          ; $7a89: $cf
	sub a                                            ; $7a8a: $97
	rla                                              ; $7a8b: $17
	daa                                              ; $7a8c: $27
	daa                                              ; $7a8d: $27
	ld b, a                                          ; $7a8e: $47
	ld b, a                                          ; $7a8f: $47
	add a                                            ; $7a90: $87
	reti                                             ; $7a91: $d9


	db $fc                                           ; $7a92: $fc
	db $dd                                           ; $7a93: $dd
	ldh a, [$dd]                                     ; $7a94: $f0 $dd
	ldh [$f7], a                                     ; $7a96: $e0 $f7
	ld [hl], a                                       ; $7a98: $77
	cp c                                             ; $7a99: $b9
	rst SubAFromDE                                          ; $7a9a: $df
	rlca                                             ; $7a9b: $07
	ld sp, hl                                        ; $7a9c: $f9
	db $dd                                           ; $7a9d: $dd

Call_056_7a9e:
	ldh a, [$de]                                     ; $7a9e: $f0 $de
	ld hl, sp-$65                                    ; $7aa0: $f8 $9b
	db $fc                                           ; $7aa2: $fc
	jr nz, @+$22                                     ; $7aa3: $20 $20

	ld h, b                                          ; $7aa5: $60
	sbc $40                                          ; $7aa6: $de $40
	ld a, [hl]                                       ; $7aa8: $7e
	ld [hl], e                                       ; $7aa9: $73
	rst SubAFromDE                                          ; $7aaa: $df

jr_056_7aab:
	dec a                                            ; $7aab: $3d
	sbc $1d                                          ; $7aac: $de $1d
	sbc h                                            ; $7aae: $9c
	dec a                                            ; $7aaf: $3d
	ccf                                              ; $7ab0: $3f
	ccf                                              ; $7ab1: $3f
	ld l, h                                          ; $7ab2: $6c
	ld [hl-], a                                      ; $7ab3: $32
	ld a, c                                          ; $7ab4: $79
	ret nz                                           ; $7ab5: $c0

	jp c, Jump_056_73ff                              ; $7ab6: $da $ff $73

	ld h, c                                          ; $7ab9: $61
	ld [hl], d                                       ; $7aba: $72
	ret nz                                           ; $7abb: $c0

	ld a, h                                          ; $7abc: $7c
	call c, $8796                                    ; $7abd: $dc $96 $87
	add e                                            ; $7ac0: $83
	jp $30c1                                         ; $7ac1: $c3 $c1 $30


	jr @+$0e                                         ; $7ac4: $18 $0c

	ld b, $03                                        ; $7ac6: $06 $03
	ld l, h                                          ; $7ac8: $6c
	ld d, b                                          ; $7ac9: $50
	ld e, a                                          ; $7aca: $5f
	ld d, b                                          ; $7acb: $50
	ld a, [hl]                                       ; $7acc: $7e
	xor a                                            ; $7acd: $af
	ld a, a                                          ; $7ace: $7f
	add hl, sp                                       ; $7acf: $39
	ld [hl], h                                       ; $7ad0: $74
	ld hl, $e09d                                     ; $7ad1: $21 $9d $e0
	ldh a, [$61]                                     ; $7ad4: $f0 $61
	db $10                                           ; $7ad6: $10
	rst SubAFromDE                                          ; $7ad7: $df
	ld h, b                                          ; $7ad8: $60
	sbc c                                            ; $7ad9: $99
	ld [hl], b                                       ; $7ada: $70

Call_056_7adb:
	jr nc, jr_056_7b0d                               ; $7adb: $30 $30

	add hl, sp                                       ; $7add: $39
	add hl, sp                                       ; $7ade: $39
	dec e                                            ; $7adf: $1d
	halt                                             ; $7ae0: $76
	ld [hl], h                                       ; $7ae1: $74
	ld [hl], l                                       ; $7ae2: $75
	ld l, l                                          ; $7ae3: $6d
	ld h, e                                          ; $7ae4: $63
	or b                                             ; $7ae5: $b0
	db $dd                                           ; $7ae6: $dd
	add b                                            ; $7ae7: $80
	ld h, [hl]                                       ; $7ae8: $66
	cp e                                             ; $7ae9: $bb
	ld h, e                                          ; $7aea: $63
	push af                                          ; $7aeb: $f5
	rst AddAOntoHL                                          ; $7aec: $ef
	ld b, h                                          ; $7aed: $44
	nop                                              ; $7aee: $00
	reti                                             ; $7aef: $d9


	inc sp                                           ; $7af0: $33
	rst SubAFromDE                                          ; $7af1: $df
	ld h, [hl]                                       ; $7af2: $66
	sbc $33                                          ; $7af3: $de $33
	sbc h                                            ; $7af5: $9c
	ld [hl-], a                                      ; $7af6: $32
	ld [hl+], a                                      ; $7af7: $22
	ld [hl+], a                                      ; $7af8: $22
	ld h, a                                          ; $7af9: $67
	or $9a                                           ; $7afa: $f6 $9a
	ld b, h                                          ; $7afc: $44
	ld b, d                                          ; $7afd: $42
	ld [hl+], a                                      ; $7afe: $22
	inc sp                                           ; $7aff: $33
	ld [hl], $77                                     ; $7b00: $36 $77
	or $9b                                           ; $7b02: $f6 $9b
	inc [hl]                                         ; $7b04: $34
	ld b, h                                          ; $7b05: $44
	ld b, a                                          ; $7b06: $47
	ld [hl], d                                       ; $7b07: $72
	ld l, a                                          ; $7b08: $6f
	or $9b                                           ; $7b09: $f6 $9b
	dec [hl]                                         ; $7b0b: $35
	ld d, a                                          ; $7b0c: $57

jr_056_7b0d:
	ld [hl], a                                       ; $7b0d: $77
	ld [hl], a                                       ; $7b0e: $77
	ld h, e                                          ; $7b0f: $63
	or $9e                                           ; $7b10: $f6 $9e
	ld [hl], l                                       ; $7b12: $75
	ld l, a                                          ; $7b13: $6f
	or $df                                           ; $7b14: $f6 $df
	ld d, l                                          ; $7b16: $55
	sbc h                                            ; $7b17: $9c
	ld [hl], l                                       ; $7b18: $75
	ld d, l                                          ; $7b19: $55
	ld d, e                                          ; $7b1a: $53
	ld l, a                                          ; $7b1b: $6f
	ret c                                            ; $7b1c: $d8

	sbc $55                                          ; $7b1d: $de $55
	ld e, a                                          ; $7b1f: $5f
	or $9a                                           ; $7b20: $f6 $9a
	ld d, l                                          ; $7b22: $55
	ld d, [hl]                                       ; $7b23: $56
	ld h, [hl]                                       ; $7b24: $66
	ld [hl+], a                                      ; $7b25: $22
	ld d, e                                          ; $7b26: $53
	ld a, e                                          ; $7b27: $7b
	ldh [c], a                                       ; $7b28: $e2
	ld [hl], a                                       ; $7b29: $77
	db $eb                                           ; $7b2a: $eb
	ld a, a                                          ; $7b2b: $7f
	or $7f                                           ; $7b2c: $f6 $7f
	rst GetHLinHL                                          ; $7b2e: $cf
	ld l, e                                          ; $7b2f: $6b
	or $8e                                           ; $7b30: $f6 $8e

jr_056_7b32:
	adc e                                            ; $7b32: $8b
	sbc l                                            ; $7b33: $9d
	db $fd                                           ; $7b34: $fd
	cp $db                                           ; $7b35: $fe $db
	rst $38                                          ; $7b37: $ff
	sbc l                                            ; $7b38: $9d
	ld [bc], a                                       ; $7b39: $02
	ld bc, $80fb                                     ; $7b3a: $01 $fb $80
	sbc $e7                                          ; $7b3d: $de $e7
	ld a, e                                          ; $7b3f: $7b
	cp l                                             ; $7b40: $bd
	adc $f7                                          ; $7b41: $ce $f7
	ei                                               ; $7b43: $fb
	db $fc                                           ; $7b44: $fc
	ld hl, $8418                                     ; $7b45: $21 $18 $84
	ld b, d                                          ; $7b48: $42
	ld sp, $0408                                     ; $7b49: $31 $08 $04
	inc bc                                           ; $7b4c: $03
	nop                                              ; $7b4d: $00
	nop                                              ; $7b4e: $00
	add b                                            ; $7b4f: $80
	ldh [$f0], a                                     ; $7b50: $e0 $f0
	jr c, jr_056_7b32                                ; $7b52: $38 $de

	rst AddAOntoHL                                          ; $7b54: $ef
	rst $38                                          ; $7b55: $ff
	rst $38                                          ; $7b56: $ff
	ld a, a                                          ; $7b57: $7f
	rra                                              ; $7b58: $1f
	rrca                                             ; $7b59: $0f
	rst JumpTable                                          ; $7b5a: $c7
	ld hl, $1080                                     ; $7b5b: $21 $80 $10
	inc b                                            ; $7b5e: $04
	ld de, $2902                                     ; $7b5f: $11 $02 $29
	inc bc                                           ; $7b62: $03
	ld bc, $012a                                     ; $7b63: $01 $2a $01
	ei                                               ; $7b66: $fb
	xor $fd                                          ; $7b67: $ee $fd
	sub $fc                                          ; $7b69: $d6 $fc
	cp $d5                                           ; $7b6b: $fe $d5
	cp $f6                                           ; $7b6d: $fe $f6
	ld e, a                                          ; $7b6f: $5f
	db $fd                                           ; $7b70: $fd
	ld d, a                                          ; $7b71: $57
	cp [hl]                                          ; $7b72: $be
	ld [hl], l                                       ; $7b73: $75
	rst $38                                          ; $7b74: $ff
	ld e, [hl]                                       ; $7b75: $5e
	nop                                              ; $7b76: $00
	and b                                            ; $7b77: $a0
	nop                                              ; $7b78: $00
	and b                                            ; $7b79: $a0
	ld b, b                                          ; $7b7a: $40
	add b                                            ; $7b7b: $80
	ld a, a                                          ; $7b7c: $7f
	db $fc                                           ; $7b7d: $fc
	sub a                                            ; $7b7e: $97
	ret c                                            ; $7b7f: $d8

	xor d                                            ; $7b80: $aa
	push de                                          ; $7b81: $d5
	ld l, b                                          ; $7b82: $68
	jp nc, $4980                                     ; $7b83: $d2 $80 $49

	sub h                                            ; $7b86: $94
	ld sp, hl                                        ; $7b87: $f9
	sub e                                            ; $7b88: $93
	inc bc                                           ; $7b89: $03
	ld b, $04                                        ; $7b8a: $06 $04
	inc c                                            ; $7b8c: $0c
	ld [$1909], sp                                   ; $7b8d: $08 $09 $19
	ld [de], a                                       ; $7b90: $12
	ld bc, $0703                                     ; $7b91: $01 $03 $07
	rlca                                             ; $7b94: $07
	sbc $0f                                          ; $7b95: $de $0f
	add b                                            ; $7b97: $80
	rra                                              ; $7b98: $1f
	ld d, $2d                                        ; $7b99: $16 $2d
	ld a, c                                          ; $7b9b: $79
	or b                                             ; $7b9c: $b0
	ldh [c], a                                       ; $7b9d: $e2
	ld h, b                                          ; $7b9e: $60
	call nz, $f9c5                                   ; $7b9f: $c4 $c5 $f9
	ldh a, [c]                                       ; $7ba2: $f2
	and $ee                                          ; $7ba3: $e6 $ee
	call c, $b8dc                                    ; $7ba5: $dc $dc $b8
	cp b                                             ; $7ba8: $b8
	xor d                                            ; $7ba9: $aa
	inc [hl]                                         ; $7baa: $34
	ld b, h                                          ; $7bab: $44
	ld h, h                                          ; $7bac: $64
	adc c                                            ; $7bad: $89
	ret z                                            ; $7bae: $c8

	ret z                                            ; $7baf: $c8

	ld [bc], a                                       ; $7bb0: $02
	inc e                                            ; $7bb1: $1c
	jr jr_056_7bec                                   ; $7bb2: $18 $38

	jr c, jr_056_7c26                                ; $7bb4: $38 $70

	ld [hl], c                                       ; $7bb6: $71
	sub b                                            ; $7bb7: $90
	ld [hl], c                                       ; $7bb8: $71
	pop af                                           ; $7bb9: $f1
	ld c, e                                          ; $7bba: $4b
	sub e                                            ; $7bbb: $93
	and [hl]                                         ; $7bbc: $a6
	ld h, $44                                        ; $7bbd: $26 $44
	ld c, h                                          ; $7bbf: $4c
	adc h                                            ; $7bc0: $8c
	adc c                                            ; $7bc1: $89
	inc a                                            ; $7bc2: $3c
	ld a, h                                          ; $7bc3: $7c
	ld a, b                                          ; $7bc4: $78
	ld hl, sp-$08                                    ; $7bc5: $f8 $f8
	sbc $f0                                          ; $7bc7: $de $f0
	add b                                            ; $7bc9: $80
	inc bc                                           ; $7bca: $03
	inc b                                            ; $7bcb: $04
	ld c, e                                          ; $7bcc: $4b
	ld [bc], a                                       ; $7bcd: $02
	sbc h                                            ; $7bce: $9c
	ld [$090c], sp                                   ; $7bcf: $08 $0c $09
	inc e                                            ; $7bd2: $1c
	jr c, @+$33                                      ; $7bd3: $38 $31

	ld [hl], a                                       ; $7bd5: $77
	ld h, [hl]                                       ; $7bd6: $66
	db $ec                                           ; $7bd7: $ec
	add sp, -$27                                     ; $7bd8: $e8 $d9
	adc c                                            ; $7bda: $89
	dec c                                            ; $7bdb: $0d
	call nc, $302c                                   ; $7bdc: $d4 $2c $30
	inc e                                            ; $7bdf: $1c
	db $fd                                           ; $7be0: $fd
	adc a                                            ; $7be1: $8f
	ld e, a                                          ; $7be2: $5f
	cpl                                              ; $7be3: $2f
	adc $ef                                          ; $7be4: $ce $ef
	rra                                              ; $7be6: $1f
	ld l, b                                          ; $7be7: $68
	cp $80                                           ; $7be8: $fe $80
	dec bc                                           ; $7bea: $0b
	ld b, a                                          ; $7beb: $47

jr_056_7bec:
	or b                                             ; $7bec: $b0
	inc c                                            ; $7bed: $0c
	ld [hl+], a                                      ; $7bee: $22
	ret                                              ; $7bef: $c9


	push hl                                          ; $7bf0: $e5
	ld [hl], b                                       ; $7bf1: $70
	cp b                                             ; $7bf2: $b8
	cp a                                             ; $7bf3: $bf
	rst $38                                          ; $7bf4: $ff
	rra                                              ; $7bf5: $1f
	rst JumpTable                                          ; $7bf6: $c7
	di                                               ; $7bf7: $f3
	ld a, c                                          ; $7bf8: $79
	dec a                                            ; $7bf9: $3d
	ld e, $78                                        ; $7bfa: $1e $78
	and l                                            ; $7bfc: $a5
	ld e, d                                          ; $7bfd: $5a
	and l                                            ; $7bfe: $a5

Call_056_7bff:
	ld e, b                                          ; $7bff: $58
	dec c                                            ; $7c00: $0d
	adc l                                            ; $7c01: $8d
	adc d                                            ; $7c02: $8a
	add h                                            ; $7c03: $84
	jp nc, Jump_056_70e1                             ; $7c04: $d2 $e1 $70

	or b                                             ; $7c07: $b0
	ret c                                            ; $7c08: $d8

	adc l                                            ; $7c09: $8d
	ret c                                            ; $7c0a: $d8

	db $ec                                           ; $7c0b: $ec
	ld h, h                                          ; $7c0c: $64
	ld [de], a                                       ; $7c0d: $12
	adc d                                            ; $7c0e: $8a
	ld b, l                                          ; $7c0f: $45
	and l                                            ; $7c10: $a5
	db $10                                           ; $7c11: $10
	ld b, d                                          ; $7c12: $42
	adc b                                            ; $7c13: $88
	inc e                                            ; $7c14: $1c
	ld c, $06                                        ; $7c15: $0e $06
	add e                                            ; $7c17: $83
	ld b, e                                          ; $7c18: $43
	ld h, e                                          ; $7c19: $63
	ld sp, $fc31                                     ; $7c1a: $31 $31 $fc
	sbc h                                            ; $7c1d: $9c
	add c                                            ; $7c1e: $81
	add d                                            ; $7c1f: $82
	xor e                                            ; $7c20: $ab
	db $fc                                           ; $7c21: $fc
	sbc $80                                          ; $7c22: $de $80
	sub a                                            ; $7c24: $97
	ld c, [hl]                                       ; $7c25: $4e

jr_056_7c26:
	or e                                             ; $7c26: $b3
	cpl                                              ; $7c27: $2f
	dec e                                            ; $7c28: $1d
	rst SubAFromHL                                          ; $7c29: $d7
	cpl                                              ; $7c2a: $2f
	ld e, a                                          ; $7c2b: $5f
	ld d, a                                          ; $7c2c: $57
	ld sp, hl                                        ; $7c2d: $f9
	adc h                                            ; $7c2e: $8c
	cp $f5                                           ; $7c2f: $fe $f5
	rst $38                                          ; $7c31: $ff
	push af                                          ; $7c32: $f5
	rst SubAFromDE                                          ; $7c33: $df
	ld a, [$da75]                                    ; $7c34: $fa $75 $da
	ld bc, $000a                                     ; $7c37: $01 $0a $00
	ld a, [bc]                                       ; $7c3a: $0a
	jr nz, jr_056_7c42                               ; $7c3b: $20 $05

	adc d                                            ; $7c3d: $8a
	dec h                                            ; $7c3e: $25
	push de                                          ; $7c3f: $d5
	xor d                                            ; $7c40: $aa
	ld d, l                                          ; $7c41: $55

jr_056_7c42:
	ld [hl], e                                       ; $7c42: $73
	cp $9e                                           ; $7c43: $fe $9e
	ld a, [hl+]                                      ; $7c45: $2a
	ld l, a                                          ; $7c46: $6f
	ld sp, hl                                        ; $7c47: $f9
	rst SubAFromDE                                          ; $7c48: $df
	ld d, l                                          ; $7c49: $55
	ld [hl], e                                       ; $7c4a: $73
	ld sp, hl                                        ; $7c4b: $f9
	sbc l                                            ; $7c4c: $9d
	ld d, h                                          ; $7c4d: $54
	xor b                                            ; $7c4e: $a8
	ld l, e                                          ; $7c4f: $6b
	jp hl                                            ; $7c50: $e9


	sbc e                                            ; $7c51: $9b
	ld d, h                                          ; $7c52: $54
	rst AddAOntoHL                                          ; $7c53: $ef
	db $e3                                           ; $7c54: $e3
	pop hl                                           ; $7c55: $e1
	call c, $9ce0                                    ; $7c56: $dc $e0 $9c
	db $10                                           ; $7c59: $10
	inc e                                            ; $7c5a: $1c
	ld e, $dc                                        ; $7c5b: $1e $dc
	rra                                              ; $7c5d: $1f
	sbc $ff                                          ; $7c5e: $de $ff
	sbc h                                            ; $7c60: $9c
	ld a, a                                          ; $7c61: $7f
	ccf                                              ; $7c62: $3f
	rrca                                             ; $7c63: $0f
	ld a, d                                          ; $7c64: $7a
	ret                                              ; $7c65: $c9


	ld a, e                                          ; $7c66: $7b
	and d                                            ; $7c67: $a2
	add b                                            ; $7c68: $80
	ret nz                                           ; $7c69: $c0

	ldh a, [$fc]                                     ; $7c6a: $f0 $fc
	rst $38                                          ; $7c6c: $ff
	ld [hl], e                                       ; $7c6d: $73
	cp c                                             ; $7c6e: $b9
	sbc $e7                                          ; $7c6f: $de $e7
	ei                                               ; $7c71: $fb
	db $fc                                           ; $7c72: $fc
	db $fd                                           ; $7c73: $fd
	db $fd                                           ; $7c74: $fd
	adc h                                            ; $7c75: $8c
	ld b, [hl]                                       ; $7c76: $46
	ld hl, $0418                                     ; $7c77: $21 $18 $04
	inc bc                                           ; $7c7a: $03
	ld [bc], a                                       ; $7c7b: $02
	ld [bc], a                                       ; $7c7c: $02
	add h                                            ; $7c7d: $84
	pop bc                                           ; $7c7e: $c1
	ldh [$72], a                                     ; $7c7f: $e0 $72
	ld sp, $b0b0                                     ; $7c81: $31 $b0 $b0
	cp b                                             ; $7c84: $b8
	ld a, e                                          ; $7c85: $7b
	ld a, $1f                                        ; $7c86: $3e $1f
	sbc l                                            ; $7c88: $9d
	adc l                                            ; $7c89: $8d
	adc $de                                          ; $7c8a: $ce $de
	ld c, a                                          ; $7c8c: $4f
	sbc e                                            ; $7c8d: $9b
	xor a                                            ; $7c8e: $af
	ld a, a                                          ; $7c8f: $7f
	rst AddAOntoHL                                          ; $7c90: $ef
	ld a, a                                          ; $7c91: $7f
	db $dd                                           ; $7c92: $dd
	rst $38                                          ; $7c93: $ff
	add b                                            ; $7c94: $80
	ld e, a                                          ; $7c95: $5f
	cp b                                             ; $7c96: $b8
	ld [hl], a                                       ; $7c97: $77
	ret c                                            ; $7c98: $d8

	and e                                            ; $7c99: $a3
	call z, $a6d9                                    ; $7c9a: $cc $d9 $a6
	cp $ff                                           ; $7c9d: $fe $ff
	rst GetHLinHL                                          ; $7c9f: $cf
	rst $38                                          ; $7ca0: $ff
	rst SubAFromDE                                          ; $7ca1: $df
	rst $38                                          ; $7ca2: $ff
	rst SubAFromDE                                          ; $7ca3: $df
	or $fe                                           ; $7ca4: $f6 $fe
	ld sp, $78f6                                     ; $7ca6: $31 $f6 $78
	or a                                             ; $7ca9: $b7
	ld a, c                                          ; $7caa: $79
	or e                                             ; $7cab: $b3
	ld a, a                                          ; $7cac: $7f
	ld [hl-], a                                      ; $7cad: $32
	ld [hl+], a                                      ; $7cae: $22
	pop hl                                           ; $7caf: $e1
	push bc                                          ; $7cb0: $c5
	push bc                                          ; $7cb1: $c5
	add h                                            ; $7cb2: $84
	ld [bc], a                                       ; $7cb3: $02
	sbc e                                            ; $7cb4: $9b
	ld a, [hl+]                                      ; $7cb5: $2a
	rra                                              ; $7cb6: $1f
	ccf                                              ; $7cb7: $3f
	cp a                                             ; $7cb8: $bf
	call c, $96ff                                    ; $7cb9: $dc $ff $96
	ret z                                            ; $7cbc: $c8

	ld [$0a0a], sp                                   ; $7cbd: $08 $0a $0a

Call_056_7cc0:
	dec b                                            ; $7cc0: $05
	dec d                                            ; $7cc1: $15
	add hl, de                                       ; $7cc2: $19
	sbc d                                            ; $7cc3: $9a
	or c                                             ; $7cc4: $b1
	sbc $f1                                          ; $7cc5: $de $f1
	sub d                                            ; $7cc7: $92
	di                                               ; $7cc8: $f3
	db $e3                                           ; $7cc9: $e3
	rst SubAFromBC                                          ; $7cca: $e7
	rst SubAFromBC                                          ; $7ccb: $e7
	add d                                            ; $7ccc: $82
	sub l                                            ; $7ccd: $95
	sub l                                            ; $7cce: $95
	sbc l                                            ; $7ccf: $9d
	ld a, [de]                                       ; $7cd0: $1a
	ld a, [de]                                       ; $7cd1: $1a
	ld [de], a                                       ; $7cd2: $12
	inc b                                            ; $7cd3: $04
	pop af                                           ; $7cd4: $f1
	sbc $e3                                          ; $7cd5: $de $e3
	rst SubAFromDE                                          ; $7cd7: $df
	rst SubAFromBC                                          ; $7cd8: $e7
	ld a, [hl]                                       ; $7cd9: $7e
	ld e, c                                          ; $7cda: $59
	add b                                            ; $7cdb: $80
	sbc b                                            ; $7cdc: $98
	ld a, [de]                                       ; $7cdd: $1a
	ld sp, $3136                                     ; $7cde: $31 $36 $31
	ld l, l                                          ; $7ce1: $6d
	ld a, d                                          ; $7ce2: $7a
	di                                               ; $7ce3: $f3
	pop hl                                           ; $7ce4: $e1
	pop hl                                           ; $7ce5: $e1

Call_056_7ce6:
	jp $c6c3                                         ; $7ce6: $c3 $c3 $c6


	add [hl]                                         ; $7ce9: $86
	adc l                                            ; $7cea: $8d
	rra                                              ; $7ceb: $1f
	inc de                                           ; $7cec: $13
	ld de, $3212                                     ; $7ced: $11 $12 $32
	ld d, [hl]                                       ; $7cf0: $56
	ld l, d                                          ; $7cf1: $6a
	xor d                                            ; $7cf2: $aa
	ld a, [de]                                       ; $7cf3: $1a
	reti                                             ; $7cf4: $d9


	jp c, $faba                                      ; $7cf5: $da $ba $fa

	ld a, [$9ede]                                    ; $7cf8: $fa $de $9e
	ld a, [hl]                                       ; $7cfb: $7e
	ld a, [$079e]                                    ; $7cfc: $fa $9e $07
	db $db                                           ; $7cff: $db
	inc bc                                           ; $7d00: $03
	ld l, d                                          ; $7d01: $6a
	ld de, $0085                                     ; $7d02: $11 $85 $00
	xor b                                            ; $7d05: $a8
	adc h                                            ; $7d06: $8c
	xor d                                            ; $7d07: $aa
	adc $ca                                          ; $7d08: $ce $ca
	pop de                                           ; $7d0a: $d1
	db $d3                                           ; $7d0b: $d3
	db $d3                                           ; $7d0c: $d3
	sbc [hl]                                         ; $7d0d: $9e
	rst SubAFromDE                                          ; $7d0e: $df
	rst SubAFromDE                                          ; $7d0f: $df
	ld a, e                                          ; $7d10: $7b
	ld a, e                                          ; $7d11: $7b
	ld [hl], e                                       ; $7d12: $73
	ld [hl], c                                       ; $7d13: $71
	ld [hl], c                                       ; $7d14: $71
	ld b, h                                          ; $7d15: $44
	ld c, h                                          ; $7d16: $4c
	ld d, h                                          ; $7d17: $54
	ld d, l                                          ; $7d18: $55
	ld d, l                                          ; $7d19: $55
	ld b, h                                          ; $7d1a: $44
	ld c, h                                          ; $7d1b: $4c
	ld c, h                                          ; $7d1c: $4c
	xor $dd                                          ; $7d1d: $ee $dd
	and $de                                          ; $7d1f: $e6 $de
	rst FarCall                                          ; $7d21: $f7
	sbc d                                            ; $7d22: $9a
	and h                                            ; $7d23: $a4
	ld b, l                                          ; $7d24: $45
	nop                                              ; $7d25: $00
	sub d                                            ; $7d26: $92
	adc d                                            ; $7d27: $8a
	sbc $a9                                          ; $7d28: $de $a9
	sbc d                                            ; $7d2a: $9a
	add hl, de                                       ; $7d2b: $19
	sbc b                                            ; $7d2c: $98
	call c, Call_056_4c4c                            ; $7d2d: $dc $4c $4c
	sbc $4e                                          ; $7d30: $de $4e
	sub h                                            ; $7d32: $94
	push de                                          ; $7d33: $d5
	halt                                             ; $7d34: $76
	ld l, e                                          ; $7d35: $6b
	ld d, a                                          ; $7d36: $57
	ld l, b                                          ; $7d37: $68
	ld d, d                                          ; $7d38: $52
	rst SubAFromBC                                          ; $7d39: $e7
	db $ed                                           ; $7d3a: $ed
	pop bc                                           ; $7d3b: $c1
	rst $38                                          ; $7d3c: $ff
	db $fc                                           ; $7d3d: $fc
	sbc $ff                                          ; $7d3e: $de $ff
	sbc l                                            ; $7d40: $9d
	db $fc                                           ; $7d41: $fc
	ei                                               ; $7d42: $fb
	sbc $ff                                          ; $7d43: $de $ff

jr_056_7d45:
	add d                                            ; $7d45: $82
	inc a                                            ; $7d46: $3c
	rst $38                                          ; $7d47: $ff
	rra                                              ; $7d48: $1f
	rst AddAOntoHL                                          ; $7d49: $ef
	ld a, d                                          ; $7d4a: $7a
	jp $182c                                         ; $7d4b: $c3 $2c $18


	rst GetHLinHL                                          ; $7d4e: $cf
	ld [$fcff], sp                                   ; $7d4f: $08 $ff $fc
	sbc h                                            ; $7d52: $9c
	push af                                          ; $7d53: $f5
	cp $fe                                           ; $7d54: $fe $fe
	ld a, a                                          ; $7d56: $7f
	rst AddAOntoHL                                          ; $7d57: $ef
	dec de                                           ; $7d58: $1b
	dec h                                            ; $7d59: $25
	ld e, d                                          ; $7d5a: $5a
	ld a, [$031d]                                    ; $7d5b: $fa $1d $03
	pop hl                                           ; $7d5e: $e1
	jr jr_056_7d45                                   ; $7d5f: $18 $e4

	jp c, Jump_056_7a25                              ; $7d61: $da $25 $7a

	db $db                                           ; $7d64: $db
	sbc d                                            ; $7d65: $9a
	ld a, [hl+]                                      ; $7d66: $2a
	call nc, $d5a8                                   ; $7d67: $d4 $a8 $d5
	jp hl                                            ; $7d6a: $e9


	ld a, d                                          ; $7d6b: $7a
	call nc, $d593                                   ; $7d6c: $d4 $93 $d5
	xor b                                            ; $7d6f: $a8
	call nc, $4468                                   ; $7d70: $d4 $68 $44
	ld d, b                                          ; $7d73: $50
	and e                                            ; $7d74: $a3
	ld c, $18                                        ; $7d75: $0e $18
	ld [hl], b                                       ; $7d77: $70
	add b                                            ; $7d78: $80
	nop                                              ; $7d79: $00
	ld [hl], c                                       ; $7d7a: $71
	db $d3                                           ; $7d7b: $d3
	db $fd                                           ; $7d7c: $fd
	reti                                             ; $7d7d: $d9


	ldh [$d9], a                                     ; $7d7e: $e0 $d9
	rra                                              ; $7d80: $1f
	rst $38                                          ; $7d81: $ff
	adc a                                            ; $7d82: $8f
	ld bc, $0114                                     ; $7d83: $01 $14 $01
	inc hl                                           ; $7d86: $23
	dec bc                                           ; $7d87: $0b
	rla                                              ; $7d88: $17
	rst $38                                          ; $7d89: $ff
	rst $38                                          ; $7d8a: $ff
	cp $eb                                           ; $7d8b: $fe $eb
	rst $38                                          ; $7d8d: $ff
	db $dd                                           ; $7d8e: $dd
	or $ea                                           ; $7d8f: $f6 $ea
	rrca                                             ; $7d91: $0f
	ccf                                              ; $7d92: $3f
	ld a, d                                          ; $7d93: $7a
	pop hl                                           ; $7d94: $e1
	add b                                            ; $7d95: $80
	or $dd                                           ; $7d96: $f6 $dd
	cp e                                             ; $7d98: $bb
	rst $38                                          ; $7d99: $ff
	ldh a, [$c0]                                     ; $7d9a: $f0 $c0
	add b                                            ; $7d9c: $80
	nop                                              ; $7d9d: $00
	add hl, de                                       ; $7d9e: $19
	ld h, d                                          ; $7d9f: $62
	call nz, $f72f                                   ; $7da0: $c4 $2f $f7
	ld l, h                                          ; $7da3: $6c
	db $e3                                           ; $7da4: $e3
	or a                                             ; $7da5: $b7
	and a                                            ; $7da6: $a7
	and e                                            ; $7da7: $a3
	ld c, a                                          ; $7da8: $4f
	rst $38                                          ; $7da9: $ff
	rst SubAFromDE                                          ; $7daa: $df
	rst SubAFromDE                                          ; $7dab: $df
	inc a                                            ; $7dac: $3c
	ld a, [hl]                                       ; $7dad: $7e
	ld e, c                                          ; $7dae: $59
	ld e, [hl]                                       ; $7daf: $5e
	or c                                             ; $7db0: $b1
	rst $38                                          ; $7db1: $ff
	rst $38                                          ; $7db2: $ff
	rst AddAOntoHL                                          ; $7db3: $ef
	cp e                                             ; $7db4: $bb
	adc e                                            ; $7db5: $8b
	xor $b4                                          ; $7db6: $ee $b4
	push hl                                          ; $7db8: $e5
	rst SubAFromHL                                          ; $7db9: $d7
	adc c                                            ; $7dba: $89
	sub d                                            ; $7dbb: $92
	push af                                          ; $7dbc: $f5
	ld a, a                                          ; $7dbd: $7f
	rra                                              ; $7dbe: $1f
	rst GetHLinHL                                          ; $7dbf: $cf
	ld a, a                                          ; $7dc0: $7f
	ccf                                              ; $7dc1: $3f
	db $fc                                           ; $7dc2: $fc
	ld hl, sp-$10                                    ; $7dc3: $f8 $f0
	pop hl                                           ; $7dc5: $e1
	jp nz, $0484                                     ; $7dc6: $c2 $84 $04

	add hl, bc                                       ; $7dc9: $09
	reti                                             ; $7dca: $d9


	rst $38                                          ; $7dcb: $ff
	add b                                            ; $7dcc: $80
	ld c, b                                          ; $7dcd: $48
	ld d, [hl]                                       ; $7dce: $56
	sub e                                            ; $7dcf: $93
	ld l, $2e                                        ; $7dd0: $2e $2e
	ld e, h                                          ; $7dd2: $5c
	sbc b                                            ; $7dd3: $98
	ld [hl], c                                       ; $7dd4: $71
	rst $38                                          ; $7dd5: $ff
	db $fd                                           ; $7dd6: $fd
	db $fd                                           ; $7dd7: $fd
	ei                                               ; $7dd8: $fb
	ei                                               ; $7dd9: $fb
	rst FarCall                                          ; $7dda: $f7
	rst $38                                          ; $7ddb: $ff
	cp a                                             ; $7ddc: $bf
	sub d                                            ; $7ddd: $92
	inc h                                            ; $7dde: $24
	jr z, @+$1b                                      ; $7ddf: $28 $19

	ld sp, $f472                                     ; $7de1: $31 $72 $f4
	ld l, h                                          ; $7de4: $6c
	rst AddAOntoHL                                          ; $7de5: $ef
	rst SubAFromDE                                          ; $7de6: $df
	rst SubAFromDE                                          ; $7de7: $df
	cp $fe                                           ; $7de8: $fe $fe
	db $ed                                           ; $7dea: $ed
	res 2, a                                         ; $7deb: $cb $97
	sub e                                            ; $7ded: $93
	inc b                                            ; $7dee: $04
	ld [$1209], sp                                   ; $7def: $08 $09 $12
	inc d                                            ; $7df2: $14
	cpl                                              ; $7df3: $2f
	ld e, a                                          ; $7df4: $5f
	db $db                                           ; $7df5: $db
	rst $38                                          ; $7df6: $ff
	ld a, a                                          ; $7df7: $7f
	call nz, $e082                                   ; $7df8: $c4 $82 $e0
	ld c, $7c                                        ; $7dfb: $0e $7c
	or b                                             ; $7dfd: $b0
	rlca                                             ; $7dfe: $07
	rst FarCall                                          ; $7dff: $f7
	rst $38                                          ; $7e00: $ff
	ld hl, sp-$21                                    ; $7e01: $f8 $df
	db $fc                                           ; $7e03: $fc
	ldh a, [$c1]                                     ; $7e04: $f0 $c1
	rst $38                                          ; $7e06: $ff
	ld hl, sp+$00                                    ; $7e07: $f8 $00
	rlca                                             ; $7e09: $07
	ccf                                              ; $7e0a: $3f
	ld [bc], a                                       ; $7e0b: $02
	inc c                                            ; $7e0c: $0c
	rla                                              ; $7e0d: $17
	ld sp, hl                                        ; $7e0e: $f9
	ld sp, hl                                        ; $7e0f: $f9
	db $fc                                           ; $7e10: $fc
	cp $be                                           ; $7e11: $fe $be
	ld c, $06                                        ; $7e13: $0e $06
	ldh a, [c]                                       ; $7e15: $f2
	db $e3                                           ; $7e16: $e3
	cp $9e                                           ; $7e17: $fe $9e
	ret nz                                           ; $7e19: $c0

	sbc $02                                          ; $7e1a: $de $02
	sbc d                                            ; $7e1c: $9a
	inc b                                            ; $7e1d: $04
	add h                                            ; $7e1e: $84
	pop bc                                           ; $7e1f: $c1
	ld bc, $7107                                     ; $7e20: $01 $07 $71
	cp c                                             ; $7e23: $b9
	add h                                            ; $7e24: $84
	ld bc, $0002                                     ; $7e25: $01 $02 $00
	pop hl                                           ; $7e28: $e1
	pop hl                                           ; $7e29: $e1
	ld h, c                                          ; $7e2a: $61
	pop bc                                           ; $7e2b: $c1
	pop de                                           ; $7e2c: $d1
	ei                                               ; $7e2d: $fb
	cp $ff                                           ; $7e2e: $fe $ff
	ld h, c                                          ; $7e30: $61
	ld h, c                                          ; $7e31: $61
	pop bc                                           ; $7e32: $c1
	add b                                            ; $7e33: $80
	ldh [$3c], a                                     ; $7e34: $e0 $3c
	rlca                                             ; $7e36: $07
	nop                                              ; $7e37: $00
	ld b, h                                          ; $7e38: $44
	ld h, h                                          ; $7e39: $64
	ld h, h                                          ; $7e3a: $64
	db $e4                                           ; $7e3b: $e4
	ldh a, [c]                                       ; $7e3c: $f2
	ldh a, [c]                                       ; $7e3d: $f2
	ld a, [$de8d]                                    ; $7e3e: $fa $8d $de
	rst $38                                          ; $7e41: $ff
	add b                                            ; $7e42: $80
	cp a                                             ; $7e43: $bf
	sbc a                                            ; $7e44: $9f
	sbc a                                            ; $7e45: $9f
	rst GetHLinHL                                          ; $7e46: $cf
	rst $38                                          ; $7e47: $ff
	add sp, -$08                                     ; $7e48: $e8 $f8
	call z, Call_056_5cdc                            ; $7e4a: $cc $dc $5c
	sbc h                                            ; $7e4d: $9c
	sbc [hl]                                         ; $7e4e: $9e
	or d                                             ; $7e4f: $b2
	ld c, a                                          ; $7e50: $4f
	ld c, a                                          ; $7e51: $4f

jr_056_7e52:
	ld a, a                                          ; $7e52: $7f
	ld a, a                                          ; $7e53: $7f
	rst $38                                          ; $7e54: $ff
	rst FarCall                                          ; $7e55: $f7
	rst FarCall                                          ; $7e56: $f7
	di                                               ; $7e57: $f3
	ei                                               ; $7e58: $fb
	rst SubAFromBC                                          ; $7e59: $e7
	ei                                               ; $7e5a: $fb
	xor $fa                                          ; $7e5b: $ee $fa
	db $fc                                           ; $7e5d: $fc
	jp hl                                            ; $7e5e: $e9


	xor a                                            ; $7e5f: $af
	or [hl]                                          ; $7e60: $b6
	cp h                                             ; $7e61: $bc
	sub a                                            ; $7e62: $97
	cp l                                             ; $7e63: $bd
	ld a, [$ecee]                                    ; $7e64: $fa $ee $ec
	cp a                                             ; $7e67: $bf
	ld hl, sp-$02                                    ; $7e68: $f8 $fe
	add e                                            ; $7e6a: $83
	halt                                             ; $7e6b: $76
	halt                                             ; $7e6c: $76
	sbc e                                            ; $7e6d: $9b
	ldh [$d1], a                                     ; $7e6e: $e0 $d1
	ld a, a                                          ; $7e70: $7f
	add c                                            ; $7e71: $81
	db $fd                                           ; $7e72: $fd
	add b                                            ; $7e73: $80
	pop af                                           ; $7e74: $f1
	ld hl, $5d9f                                     ; $7e75: $21 $9f $5d
	rst SubAFromBC                                          ; $7e78: $e7
	ld e, [hl]                                       ; $7e79: $5e
	dec hl                                           ; $7e7a: $2b
	inc de                                           ; $7e7b: $13
	ei                                               ; $7e7c: $fb
	halt                                             ; $7e7d: $76
	ld [de], a                                       ; $7e7e: $12
	adc e                                            ; $7e7f: $8b
	adc l                                            ; $7e80: $8d
	ld h, l                                          ; $7e81: $65
	ld [hl], $1e                                     ; $7e82: $36 $1e
	cp $8f                                           ; $7e84: $fe $8f
	push hl                                          ; $7e86: $e5
	jp hl                                            ; $7e87: $e9


	push af                                          ; $7e88: $f5
	cp c                                             ; $7e89: $b9
	or l                                             ; $7e8a: $b5
	jp hl                                            ; $7e8b: $e9


	push hl                                          ; $7e8c: $e5
	ret                                              ; $7e8d: $c9


	xor b                                            ; $7e8e: $a8
	ld h, h                                          ; $7e8f: $64
	ld e, b                                          ; $7e90: $58
	db $f4                                           ; $7e91: $f4
	ld hl, sp-$64                                    ; $7e92: $f8 $9c
	and h                                            ; $7e94: $a4
	xor b                                            ; $7e95: $a8
	call nz, $ddf1                                   ; $7e96: $c4 $f1 $dd
	ldh [$79], a                                     ; $7e99: $e0 $79
	ld a, [hl]                                       ; $7e9b: $7e
	sbc [hl]                                         ; $7e9c: $9e
	ldh [c], a                                       ; $7e9d: $e2
	db $dd                                           ; $7e9e: $dd
	rra                                              ; $7e9f: $1f
	ld a, c                                          ; $7ea0: $79
	ld a, [hl]                                       ; $7ea1: $7e
	adc [hl]                                         ; $7ea2: $8e
	dec e                                            ; $7ea3: $1d
	ld c, a                                          ; $7ea4: $4f
	rrca                                             ; $7ea5: $0f
	daa                                              ; $7ea6: $27
	ld c, a                                          ; $7ea7: $4f
	rla                                              ; $7ea8: $17
	cpl                                              ; $7ea9: $2f
	add e                                            ; $7eaa: $83
	ld d, a                                          ; $7eab: $57
	or h                                             ; $7eac: $b4
	push af                                          ; $7ead: $f5
	db $dd                                           ; $7eae: $dd
	or [hl]                                          ; $7eaf: $b6
	xor $d6                                          ; $7eb0: $ee $d6
	ld a, [hl]                                       ; $7eb2: $7e
	xor e                                            ; $7eb3: $ab
	ld [hl], a                                       ; $7eb4: $77
	ld a, b                                          ; $7eb5: $78
	sub e                                            ; $7eb6: $93
	rst SubAFromDE                                          ; $7eb7: $df
	ld a, a                                          ; $7eb8: $7f
	ld a, a                                          ; $7eb9: $7f
	rst GetHLinHL                                          ; $7eba: $cf
	adc d                                            ; $7ebb: $8a
	ld [de], a                                       ; $7ebc: $12
	ld [hl-], a                                      ; $7ebd: $32
	halt                                             ; $7ebe: $76
	ld a, d                                          ; $7ebf: $7a
	pop de                                           ; $7ec0: $d1
	rst $38                                          ; $7ec1: $ff
	ldh [$dd], a                                     ; $7ec2: $e0 $dd
	rst $38                                          ; $7ec4: $ff
	ld a, a                                          ; $7ec5: $7f
	jr nc, jr_056_7e52                               ; $7ec6: $30 $8a

	ld l, e                                          ; $7ec8: $6b
	daa                                              ; $7ec9: $27
	and b                                            ; $7eca: $a0
	and d                                            ; $7ecb: $a2
	xor d                                            ; $7ecc: $aa
	xor d                                            ; $7ecd: $aa
	xor a                                            ; $7ece: $af
	rst AddAOntoHL                                          ; $7ecf: $ef
	cp a                                             ; $7ed0: $bf
	ldh [$9e], a                                     ; $7ed1: $e0 $9e
	ld a, d                                          ; $7ed3: $7a
	inc [hl]                                         ; $7ed4: $34
	ld [hl], h                                       ; $7ed5: $74
	db $f4                                           ; $7ed6: $f4
	cp b                                             ; $7ed7: $b8
	xor c                                            ; $7ed8: $a9
	xor c                                            ; $7ed9: $a9
	rst $38                                          ; $7eda: $ff
	rst FarCall                                          ; $7edb: $f7
	rst AddAOntoHL                                          ; $7edc: $ef
	sbc $cf                                          ; $7edd: $de $cf
	rst SubAFromDE                                          ; $7edf: $df
	rst SubAFromDE                                          ; $7ee0: $df
	add b                                            ; $7ee1: $80
	ld [de], a                                       ; $7ee2: $12
	dec h                                            ; $7ee3: $25
	ld c, e                                          ; $7ee4: $4b
	ld d, a                                          ; $7ee5: $57
	xor [hl]                                         ; $7ee6: $ae
	cp h                                             ; $7ee7: $bc
	ld d, a                                          ; $7ee8: $57
	cp h                                             ; $7ee9: $bc
	rst $38                                          ; $7eea: $ff
	cp $fc                                           ; $7eeb: $fe $fc
	ld sp, hl                                        ; $7eed: $f9
	di                                               ; $7eee: $f3
	rst SubAFromBC                                          ; $7eef: $e7
	rst AddAOntoHL                                          ; $7ef0: $ef
	rst GetHLinHL                                          ; $7ef1: $cf
	and d                                            ; $7ef2: $a2
	ld c, l                                          ; $7ef3: $4d
	sub [hl]                                         ; $7ef4: $96
	jr z, @+$52                                      ; $7ef5: $28 $50

	xor b                                            ; $7ef7: $a8
	ld d, c                                          ; $7ef8: $51
	and d                                            ; $7ef9: $a2
	ld a, a                                          ; $7efa: $7f
	cp $f8                                           ; $7efb: $fe $f8
	pop af                                           ; $7efd: $f1
	ldh [c], a                                       ; $7efe: $e2

Call_056_7eff:
Jump_056_7eff:
	call nz, $8088                                   ; $7eff: $c4 $88 $80
	db $10                                           ; $7f02: $10
	pop af                                           ; $7f03: $f1
	ld bc, $0483                                     ; $7f04: $01 $83 $04
	dec c                                            ; $7f07: $0d
	ld e, $38                                        ; $7f08: $1e $38
	ld [hl], b                                       ; $7f0a: $70
	rlca                                             ; $7f0b: $07
	cpl                                              ; $7f0c: $2f
	ld e, b                                          ; $7f0d: $58
	or d                                             ; $7f0e: $b2
	ld h, a                                          ; $7f0f: $67
	adc b                                            ; $7f10: $88
	db $10                                           ; $7f11: $10
	jr nz, @-$40                                     ; $7f12: $20 $be

	rst FarCall                                          ; $7f14: $f7
	ld [hl], $1b                                     ; $7f15: $36 $1b
	adc l                                            ; $7f17: $8d
	ld h, [hl]                                       ; $7f18: $66
	ld [de], a                                       ; $7f19: $12
	ret                                              ; $7f1a: $c9


	pop bc                                           ; $7f1b: $c1
	ei                                               ; $7f1c: $fb
	daa                                              ; $7f1d: $27
	ld [de], a                                       ; $7f1e: $12
	ret                                              ; $7f1f: $c9


	inc h                                            ; $7f20: $24
	adc d                                            ; $7f21: $8a
	ld [de], a                                       ; $7f22: $12
	add hl, bc                                       ; $7f23: $09
	rst $38                                          ; $7f24: $ff
	di                                               ; $7f25: $f3
	add d                                            ; $7f26: $82
	ret c                                            ; $7f27: $d8

	jp c, $ffe0                                      ; $7f28: $da $e0 $ff

	ld h, b                                          ; $7f2b: $60
	rst $38                                          ; $7f2c: $ff
	db $e3                                           ; $7f2d: $e3
	rst JumpTable                                          ; $7f2e: $c7
	ld a, a                                          ; $7f2f: $7f
	ld a, d                                          ; $7f30: $7a
	or d                                             ; $7f31: $b2
	cp h                                             ; $7f32: $bc
	ld b, b                                          ; $7f33: $40
	cp h                                             ; $7f34: $bc
	ldh a, [rAUD1SWEEP]                              ; $7f35: $f0 $10
	db $fd                                           ; $7f37: $fd
	sbc e                                            ; $7f38: $9b
	ld bc, $60c0                                     ; $7f39: $01 $c0 $60
	jr nz, @-$02                                     ; $7f3c: $20 $fc

	ld a, l                                          ; $7f3e: $7d
	add b                                            ; $7f3f: $80
	sbc l                                            ; $7f40: $9d
	dec b                                            ; $7f41: $05
	inc b                                            ; $7f42: $04
	ld [hl], h                                       ; $7f43: $74
	push hl                                          ; $7f44: $e5
	rst SubAFromDE                                          ; $7f45: $df
	ld bc, $7c79                                     ; $7f46: $01 $79 $7c
	ld a, e                                          ; $7f49: $7b
	dec b                                            ; $7f4a: $05
	add b                                            ; $7f4b: $80
	rst AddAOntoHL                                          ; $7f4c: $ef
	ld hl, sp-$61                                    ; $7f4d: $f8 $9f
	sbc a                                            ; $7f4f: $9f
	ld sp, $88e5                                     ; $7f50: $31 $e5 $88
	cp h                                             ; $7f53: $bc
	ldh a, [rIE]                                     ; $7f54: $f0 $ff
	cp $0f                                           ; $7f56: $fe $0f
	dec a                                            ; $7f58: $3d
	db $ec                                           ; $7f59: $ec
	add sp, $70                                      ; $7f5a: $e8 $70
	sbc e                                            ; $7f5c: $9b
	ld a, [de]                                       ; $7f5d: $1a
	add hl, de                                       ; $7f5e: $19
	ret                                              ; $7f5f: $c9


	ld a, [$02da]                                    ; $7f60: $fa $da $02
	ld l, d                                          ; $7f63: $6a
	adc a                                            ; $7f64: $8f
	rrca                                             ; $7f65: $0f
	rrca                                             ; $7f66: $0f
	rst SubAFromDE                                          ; $7f67: $df
	sbc a                                            ; $7f68: $9f
	ccf                                              ; $7f69: $3f
	cpl                                              ; $7f6a: $2f
	add b                                            ; $7f6b: $80
	ld l, a                                          ; $7f6c: $6f
	pop hl                                           ; $7f6d: $e1
	ldh [$a4], a                                     ; $7f6e: $e0 $a4
	add $c0                                          ; $7f70: $c6 $c0
	rst AddAOntoHL                                          ; $7f72: $ef
	ldh [$f9], a                                     ; $7f73: $e0 $f9
	pop hl                                           ; $7f75: $e1
	and b                                            ; $7f76: $a0
	ld h, b                                          ; $7f77: $60
	ld b, d                                          ; $7f78: $42
	ld c, b                                          ; $7f79: $48
	ld b, a                                          ; $7f7a: $47
	ld h, b                                          ; $7f7b: $60
	ld [hl], b                                       ; $7f7c: $70
	rst $38                                          ; $7f7d: $ff
	ld a, e                                          ; $7f7e: $7b
	ld a, $3f                                        ; $7f7f: $3e $3f
	cp a                                             ; $7f81: $bf
	ld a, a                                          ; $7f82: $7f
	rst $38                                          ; $7f83: $ff
	ld a, a                                          ; $7f84: $7f
	ret c                                            ; $7f85: $d8

	ld c, h                                          ; $7f86: $4c
	dec c                                            ; $7f87: $0d
	inc c                                            ; $7f88: $0c
	inc e                                            ; $7f89: $1c
	inc e                                            ; $7f8a: $1c
	add b                                            ; $7f8b: $80
	ld a, $fe                                        ; $7f8c: $3e $fe
	pop af                                           ; $7f8e: $f1
	ldh [hDisp0_SCX], a                                     ; $7f8f: $e0 $84
	inc c                                            ; $7f91: $0c
	inc c                                            ; $7f92: $0c
	add b                                            ; $7f93: $80
	or c                                             ; $7f94: $b1
	rst $38                                          ; $7f95: $ff
	nop                                              ; $7f96: $00
	ret nz                                           ; $7f97: $c0

	jr nz, jr_056_7f9a                               ; $7f98: $20 $00

jr_056_7f9a:
	inc b                                            ; $7f9a: $04
	nop                                              ; $7f9b: $00
	ld h, b                                          ; $7f9c: $60
	ccf                                              ; $7f9d: $3f
	ld a, [$03f3]                                    ; $7f9e: $fa $f3 $03
	dec b                                            ; $7fa1: $05
	ld bc, $880e                                     ; $7fa2: $01 $0e $88
	sbc b                                            ; $7fa5: $98
	inc bc                                           ; $7fa6: $03
	ld h, e                                          ; $7fa7: $63
	sub e                                            ; $7fa8: $93
	dec b                                            ; $7fa9: $05
	dec b                                            ; $7faa: $05
	sbc c                                            ; $7fab: $99
	ld b, $c8                                        ; $7fac: $06 $c8
	adc b                                            ; $7fae: $88
	add l                                            ; $7faf: $85
	add hl, bc                                       ; $7fb0: $09
	dec b                                            ; $7fb1: $05
	ld [hl], e                                       ; $7fb2: $73
	cp $9c                                           ; $7fb3: $fe $9c
	adc b                                            ; $7fb5: $88
	inc b                                            ; $7fb6: $04
	ld [$fe73], sp                                   ; $7fb7: $08 $73 $fe
	pop af                                           ; $7fba: $f1
	ld a, a                                          ; $7fbb: $7f
	and b                                            ; $7fbc: $a0
	ld a, d                                          ; $7fbd: $7a
	jp nz, Jump_056_619b                             ; $7fbe: $c2 $9b $61

	ldh [rLCDC], a                                   ; $7fc1: $e0 $40
	ld e, $76                                        ; $7fc3: $1e $76
	jp nz, $fd7b                                     ; $7fc5: $c2 $7b $fd

	adc [hl]                                         ; $7fc8: $8e
	inc hl                                           ; $7fc9: $23
	dec d                                            ; $7fca: $15
	ld c, e                                          ; $7fcb: $4b
	dec d                                            ; $7fcc: $15
	ld a, [hl+]                                      ; $7fcd: $2a
	dec d                                            ; $7fce: $15
	adc d                                            ; $7fcf: $8a
	dec h                                            ; $7fd0: $25
	db $dd                                           ; $7fd1: $dd
	db $eb                                           ; $7fd2: $eb
	or l                                             ; $7fd3: $b5
	ld [$ead5], a                                    ; $7fd4: $ea $d5 $ea
	ld [hl], l                                       ; $7fd7: $75
	jp c, $7aad                                      ; $7fd8: $da $ad $7a

	jp nc, $f080                                     ; $7fdb: $d2 $80 $f0

	ld [hl], b                                       ; $7fde: $70
	cp c                                             ; $7fdf: $b9
	ld e, c                                          ; $7fe0: $59
	xor [hl]                                         ; $7fe1: $ae
	ld [hl], d                                       ; $7fe2: $72
	ld e, a                                          ; $7fe3: $5f
	ret nz                                           ; $7fe4: $c0

	ld b, b                                          ; $7fe5: $40
	and b                                            ; $7fe6: $a0
	ld h, e                                          ; $7fe7: $63
	or c                                             ; $7fe8: $b1
	rst SubAFromBC                                          ; $7fe9: $e7
	cp a                                             ; $7fea: $bf
	adc a                                            ; $7feb: $8f
	adc [hl]                                         ; $7fec: $8e
	nop                                              ; $7fed: $00
	nop                                              ; $7fee: $00
	sbc b                                            ; $7fef: $98
	ld sp, hl                                        ; $7ff0: $f9
	xor [hl]                                         ; $7ff1: $ae
	xor c                                            ; $7ff2: $a9
	ld e, $40                                        ; $7ff3: $1e $40
	ld b, b                                          ; $7ff5: $40
	nop                                              ; $7ff6: $00
	inc c                                            ; $7ff7: $0c
	ld sp, hl                                        ; $7ff8: $f9
	xor e                                            ; $7ff9: $ab
	xor e                                            ; $7ffa: $ab
	xor d                                            ; $7ffb: $aa
	sbc d                                            ; $7ffc: $9a
	adc [hl]                                         ; $7ffd: $8e
	ld c, h                                          ; $7ffe: $4c

Call_056_7fff:
Jump_056_7fff:
	ret z                                            ; $7fff: $c8
