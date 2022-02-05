; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $022", ROMX[$4000], BANK[$22]

Call_022_4000:
	ld d, e                                          ; $4000: $53
	add h                                            ; $4001: $84
	sbc $be                                          ; $4002: $de $be
	call c, $d93e                                    ; $4004: $dc $3e $d9
	pop bc                                           ; $4007: $c1
	db $db                                           ; $4008: $db
	inc sp                                           ; $4009: $33
	rst SubAFromDE                                          ; $400a: $df
	ld [hl], e                                       ; $400b: $73
	reti                                             ; $400c: $d9


	db $fc                                           ; $400d: $fc
	sub [hl]                                         ; $400e: $96
	and a                                            ; $400f: $a7
	and e                                            ; $4010: $a3
	and e                                            ; $4011: $a3
	or e                                             ; $4012: $b3
	inc sp                                           ; $4013: $33
	inc sp                                           ; $4014: $33
	ld a, [hl-]                                      ; $4015: $3a
	add hl, sp                                       ; $4016: $39
	ld a, b                                          ; $4017: $78
	sbc $7c                                          ; $4018: $de $7c
	rst SubAFromDE                                          ; $401a: $df
	db $fc                                           ; $401b: $fc
	sub l                                            ; $401c: $95
	db $fd                                           ; $401d: $fd
	cp $e2                                           ; $401e: $fe $e2
	push hl                                          ; $4020: $e5
	ldh [c], a                                       ; $4021: $e2
	push hl                                          ; $4022: $e5
	jp nz, $82c5                                     ; $4023: $c2 $c5 $82

	ld b, l                                          ; $4026: $45
	db $dd                                           ; $4027: $dd
	rra                                              ; $4028: $1f
	rst SubAFromDE                                          ; $4029: $df
	ccf                                              ; $402a: $3f
	sbc l                                            ; $402b: $9d
	ld a, a                                          ; $402c: $7f
	cp a                                             ; $402d: $bf
	call c, $dff0                                    ; $402e: $dc $f0 $df
	ldh a, [c]                                       ; $4031: $f2
	sbc [hl]                                         ; $4032: $9e
	ld [hl], e                                       ; $4033: $73
	jp c, $9d0f                                      ; $4034: $da $0f $9d

	adc a                                            ; $4037: $8f
	ldh a, [$de]                                     ; $4038: $f0 $de
	ld [hl], b                                       ; $403a: $70
	rst SubAFromDE                                          ; $403b: $df
	ld h, b                                          ; $403c: $60
	sbc h                                            ; $403d: $9c
	ld h, c                                          ; $403e: $61
	ld h, e                                          ; $403f: $63
	rrca                                             ; $4040: $0f
	sbc $8f                                          ; $4041: $de $8f
	db $dd                                           ; $4043: $dd
	sbc a                                            ; $4044: $9f
	db $dd                                           ; $4045: $dd
	pop af                                           ; $4046: $f1
	rst SubAFromDE                                          ; $4047: $df
	pop hl                                           ; $4048: $e1
	rst SubAFromDE                                          ; $4049: $df
	push hl                                          ; $404a: $e5
	db $dd                                           ; $404b: $dd
	ld c, $dd                                        ; $404c: $0e $dd
	ld e, $95                                        ; $404e: $1e $95
	ld e, [hl]                                       ; $4050: $5e
	ld l, $5c                                        ; $4051: $2e $5c
	inc l                                            ; $4053: $2c
	ld e, h                                          ; $4054: $5c
	inc l                                            ; $4055: $2c
	ld d, l                                          ; $4056: $55
	dec h                                            ; $4057: $25
	pop af                                           ; $4058: $f1
	pop af                                           ; $4059: $f1
	db $dd                                           ; $405a: $dd
	di                                               ; $405b: $f3
	rst SubAFromDE                                          ; $405c: $df
	ei                                               ; $405d: $fb
	sub a                                            ; $405e: $97
	rst SubAFromHL                                          ; $405f: $d7
	db $eb                                           ; $4060: $eb
	rst FarCall                                          ; $4061: $f7
	db $eb                                           ; $4062: $eb
	rst SubAFromHL                                          ; $4063: $d7
	rst AddAOntoHL                                          ; $4064: $ef
	rst SubAFromHL                                          ; $4065: $d7
	db $eb                                           ; $4066: $eb
	reti                                             ; $4067: $d9


	rst $38                                          ; $4068: $ff
	ld [hl], a                                       ; $4069: $77
	di                                               ; $406a: $f3
	sbc e                                            ; $406b: $9b
	db $ed                                           ; $406c: $ed
	rst SubAFromHL                                          ; $406d: $d7
	rst AddAOntoHL                                          ; $406e: $ef
	rst FarCall                                          ; $406f: $f7
	reti                                             ; $4070: $d9


	rst $38                                          ; $4071: $ff
	sbc [hl]                                         ; $4072: $9e
	ld e, $dc                                        ; $4073: $1e $dc
	sbc h                                            ; $4075: $9c
	sbc h                                            ; $4076: $9c
	adc h                                            ; $4077: $8c
	adc [hl]                                         ; $4078: $8e
	pop hl                                           ; $4079: $e1
	call c, $9be3                                    ; $407a: $dc $e3 $9b
	di                                               ; $407d: $f3
	pop af                                           ; $407e: $f1
	ld [hl], e                                       ; $407f: $73
	ld [hl], e                                       ; $4080: $73
	sbc $76                                          ; $4081: $de $76
	sbc d                                            ; $4083: $9a
	ld a, [hl]                                       ; $4084: $7e
	ld [hl], l                                       ; $4085: $75
	ld a, [$fcfc]                                    ; $4086: $fa $fc $fc
	sbc $f9                                          ; $4089: $de $f9
	add d                                            ; $408b: $82
	ei                                               ; $408c: $fb
	rst $38                                          ; $408d: $ff
	rst $38                                          ; $408e: $ff
	ld [hl-], a                                      ; $408f: $32
	add hl, sp                                       ; $4090: $39
	ld [hl], $39                                     ; $4091: $36 $39
	ld [hl], h                                       ; $4093: $74
	ld a, e                                          ; $4094: $7b
	ld a, l                                          ; $4095: $7d
	ld a, [$fefd]                                    ; $4096: $fa $fd $fe
	db $fd                                           ; $4099: $fd
	cp $ff                                           ; $409a: $fe $ff

Call_022_409c:
	cp $ff                                           ; $409c: $fe $ff
	rst $38                                          ; $409e: $ff
	add d                                            ; $409f: $82
	ld b, l                                          ; $40a0: $45
	adc d                                            ; $40a1: $8a
	ld b, l                                          ; $40a2: $45
	adc d                                            ; $40a3: $8a
	dec b                                            ; $40a4: $05
	adc d                                            ; $40a5: $8a
	sbc l                                            ; $40a6: $9d
	ld a, a                                          ; $40a7: $7f
	cp a                                             ; $40a8: $bf
	ld a, e                                          ; $40a9: $7b
	cp $9c                                           ; $40aa: $fe $9c
	rst $38                                          ; $40ac: $ff
	ld a, a                                          ; $40ad: $7f
	rst $38                                          ; $40ae: $ff
	sbc $71                                          ; $40af: $de $71
	rst SubAFromDE                                          ; $40b1: $df
	ld [hl], e                                       ; $40b2: $73

jr_022_40b3:
	rst SubAFromDE                                          ; $40b3: $df
	ld a, e                                          ; $40b4: $7b
	sbc [hl]                                         ; $40b5: $9e
	ld a, a                                          ; $40b6: $7f
	call c, $df8f                                    ; $40b7: $dc $8f $df
	add a                                            ; $40ba: $87
	sbc d                                            ; $40bb: $9a
	rst $38                                          ; $40bc: $ff
	ld h, e                                          ; $40bd: $63
	ld h, d                                          ; $40be: $62
	ld h, d                                          ; $40bf: $62
	ld h, e                                          ; $40c0: $63
	sbc $67                                          ; $40c1: $de $67
	sbc [hl]                                         ; $40c3: $9e
	ld l, a                                          ; $40c4: $6f
	reti                                             ; $40c5: $d9


	sbc a                                            ; $40c6: $9f
	sbc $ed                                          ; $40c7: $de $ed
	sbc d                                            ; $40c9: $9a
	db $ec                                           ; $40ca: $ec
	call z, Call_022_5c4c                            ; $40cb: $cc $4c $5c
	sbc h                                            ; $40ce: $9c
	sbc $1e                                          ; $40cf: $de $1e
	ld a, a                                          ; $40d1: $7f
	jr nc, jr_022_40b3                               ; $40d2: $30 $df

	cp a                                             ; $40d4: $bf
	sub a                                            ; $40d5: $97
	rst $38                                          ; $40d6: $ff
	ld de, $1529                                     ; $40d7: $11 $29 $15
	add hl, hl                                       ; $40da: $29
	dec d                                            ; $40db: $15
	dec hl                                           ; $40dc: $2b
	rla                                              ; $40dd: $17
	reti                                             ; $40de: $d9


	rst $38                                          ; $40df: $ff
	sbc [hl]                                         ; $40e0: $9e
	ld sp, hl                                        ; $40e1: $f9
	db $db                                           ; $40e2: $db
	rst $38                                          ; $40e3: $ff
	sbc l                                            ; $40e4: $9d
	db $fd                                           ; $40e5: $fd
	cp d                                             ; $40e6: $ba
	db $db                                           ; $40e7: $db
	rst $38                                          ; $40e8: $ff
	sbc l                                            ; $40e9: $9d
	ld c, $c7                                        ; $40ea: $0e $c7
	db $db                                           ; $40ec: $db
	rst $38                                          ; $40ed: $ff
	sbc l                                            ; $40ee: $9d
	ld a, a                                          ; $40ef: $7f
	rst SubAFromDE                                          ; $40f0: $df
	jp c, $9dff                                      ; $40f1: $da $ff $9d

	ccf                                              ; $40f4: $3f
	adc [hl]                                         ; $40f5: $8e
	sbc $ce                                          ; $40f6: $de $ce
	sbc $ee                                          ; $40f8: $de $ee
	sbc [hl]                                         ; $40fa: $9e
	rst AddAOntoHL                                          ; $40fb: $ef
	reti                                             ; $40fc: $d9


	pop af                                           ; $40fd: $f1
	push de                                          ; $40fe: $d5
	rst $38                                          ; $40ff: $ff
	sbc e                                            ; $4100: $9b
	ld hl, sp-$20                                    ; $4101: $f8 $e0
	ret nz                                           ; $4103: $c0

	add e                                            ; $4104: $83
	ld e, e                                          ; $4105: $5b
	ldh a, [c]                                       ; $4106: $f2
	add b                                            ; $4107: $80
	ld b, $01                                        ; $4108: $06 $01
	nop                                              ; $410a: $00
	ld a, a                                          ; $410b: $7f
	add b                                            ; $410c: $80
	rst $38                                          ; $410d: $ff
	cp d                                             ; $410e: $ba
	ccf                                              ; $410f: $3f
	rst SubAFromDE                                          ; $4110: $df
	adc h                                            ; $4111: $8c
	db $eb                                           ; $4112: $eb
	ei                                               ; $4113: $fb
	rst SubAFromDE                                          ; $4114: $df
	rst $38                                          ; $4115: $ff
	rst JumpTable                                          ; $4116: $c7
	jp nz, $f722                                     ; $4117: $c2 $22 $f7

	ld a, a                                          ; $411a: $7f
	rra                                              ; $411b: $1f
	ld [$f1db], a                                    ; $411c: $ea $db $f1
	adc $38                                          ; $411f: $ce $38
	db $fc                                           ; $4121: $fc
	rst FarCall                                          ; $4122: $f7
	cp a                                             ; $4123: $bf
	ld a, a                                          ; $4124: $7f
	rst SubAFromBC                                          ; $4125: $e7
	ld c, $81                                        ; $4126: $0e $81
	ld sp, $ffc7                                     ; $4128: $31 $c7 $ff
	sbc b                                            ; $412b: $98
	ld h, b                                          ; $412c: $60
	rst $38                                          ; $412d: $ff
	rst $38                                          ; $412e: $ff
	rst GetHLinHL                                          ; $412f: $cf
	ld e, $ff                                        ; $4130: $1e $ff
	ld a, a                                          ; $4132: $7f
	rst FarCall                                          ; $4133: $f7
	cp $3f                                           ; $4134: $fe $3f
	rst $38                                          ; $4136: $ff
	ccf                                              ; $4137: $3f
	pop hl                                           ; $4138: $e1
	nop                                              ; $4139: $00
	ld hl, sp+$0f                                    ; $413a: $f8 $0f
	ld bc, $ffc0                                     ; $413c: $01 $c0 $ff
	cp $fc                                           ; $413f: $fe $fc
	cp h                                             ; $4141: $bc
	call z, $f8f5                                    ; $4142: $cc $f5 $f8
	xor [hl]                                         ; $4145: $ae
	ld a, e                                          ; $4146: $7b
	ld hl, sp-$7a                                    ; $4147: $f8 $86
	ld a, h                                          ; $4149: $7c
	inc a                                            ; $414a: $3c
	inc c                                            ; $414b: $0c
	call nz, $0772                                   ; $414c: $c4 $72 $07
	inc de                                           ; $414f: $13
	add hl, hl                                       ; $4150: $29
	dec d                                            ; $4151: $15
	or l                                             ; $4152: $b5
	ld l, c                                          ; $4153: $69
	push de                                          ; $4154: $d5
	ld l, e                                          ; $4155: $6b
	inc b                                            ; $4156: $04
	ld [bc], a                                       ; $4157: $02
	ld bc, $0901                                     ; $4158: $01 $01 $09
	dec d                                            ; $415b: $15
	add hl, hl                                       ; $415c: $29
	inc de                                           ; $415d: $13
	ld l, a                                          ; $415e: $6f
	rst SubAFromDE                                          ; $415f: $df
	push af                                          ; $4160: $f5
	ld [bc], a                                       ; $4161: $02
	db $dd                                           ; $4162: $dd
	rst $38                                          ; $4163: $ff
	sbc h                                            ; $4164: $9c
	pop af                                           ; $4165: $f1
	jr c, jr_022_4176                                ; $4166: $38 $0e

	call c, $80ff                                    ; $4168: $dc $ff $80
	ld l, a                                          ; $416b: $6f
	ei                                               ; $416c: $fb
	db $fd                                           ; $416d: $fd
	db $db                                           ; $416e: $db
	ld [hl], $ef                                     ; $416f: $36 $ef
	rst $38                                          ; $4171: $ff
	rst FarCall                                          ; $4172: $f7
	sbc a                                            ; $4173: $9f
	adc a                                            ; $4174: $8f
	ld c, e                                          ; $4175: $4b

jr_022_4176:
	ld l, l                                          ; $4176: $6d
	db $ed                                           ; $4177: $ed
	db $f4                                           ; $4178: $f4
	db $f4                                           ; $4179: $f4
	db $fc                                           ; $417a: $fc
	cp $fd                                           ; $417b: $fe $fd
	ld a, a                                          ; $417d: $7f
	ld a, [hl-]                                      ; $417e: $3a
	dec e                                            ; $417f: $1d
	ld d, d                                          ; $4180: $52
	sub l                                            ; $4181: $95
	ld e, e                                          ; $4182: $5b
	rst $38                                          ; $4183: $ff
	cp $7c                                           ; $4184: $fe $7c
	dec a                                            ; $4186: $3d
	dec de                                           ; $4187: $1b
	rra                                              ; $4188: $1f
	ld e, $80                                        ; $4189: $1e $80
	inc e                                            ; $418b: $1c
	rst AddAOntoHL                                          ; $418c: $ef
	or a                                             ; $418d: $b7
	ld e, [hl]                                       ; $418e: $5e
	cp c                                             ; $418f: $b9
	ld [hl], e                                       ; $4190: $73
	rst SubAFromBC                                          ; $4191: $e7
	add $8d                                          ; $4192: $c6 $8d
	inc e                                            ; $4194: $1c
	ld a, b                                          ; $4195: $78
	pop hl                                           ; $4196: $e1
	add $8c                                          ; $4197: $c6 $8c
	jr jr_022_41d4                                   ; $4199: $18 $39

	ld [hl], d                                       ; $419b: $72
	db $e3                                           ; $419c: $e3
	sbc b                                            ; $419d: $98
	ld h, a                                          ; $419e: $67
	call c, Call_022_66b3                            ; $419f: $dc $b3 $66
	call $1c9b                                       ; $41a2: $cd $9b $1c
	ld h, a                                          ; $41a5: $67
	sbc b                                            ; $41a6: $98
	inc hl                                           ; $41a7: $23
	ld c, h                                          ; $41a8: $4c
	sbc c                                            ; $41a9: $99
	adc h                                            ; $41aa: $8c
	ld [hl-], a                                      ; $41ab: $32
	ld h, h                                          ; $41ac: $64
	and [hl]                                         ; $41ad: $a6
	dec e                                            ; $41ae: $1d
	dec sp                                           ; $41af: $3b
	jr @+$46                                         ; $41b0: $18 $44

	call Call_022_6dad                               ; $41b2: $cd $ad $6d
	ld a, c                                          ; $41b5: $79
	ei                                               ; $41b6: $fb
	cp $ff                                           ; $41b7: $fe $ff
	cp e                                             ; $41b9: $bb
	ld [hl-], a                                      ; $41ba: $32
	ld d, d                                          ; $41bb: $52
	sub d                                            ; $41bc: $92
	adc a                                            ; $41bd: $8f
	ld a, e                                          ; $41be: $7b
	ld b, a                                          ; $41bf: $47
	add b                                            ; $41c0: $80
	ld h, $16                                        ; $41c1: $26 $16
	ld e, e                                          ; $41c3: $5b
	ld l, l                                          ; $41c4: $6d
	ldh a, [rP1]                                     ; $41c5: $f0 $00
	nop                                              ; $41c7: $00
	rst $38                                          ; $41c8: $ff
	rst SubAFromDE                                          ; $41c9: $df
	jp hl                                            ; $41ca: $e9


	and h                                            ; $41cb: $a4
	sub d                                            ; $41cc: $92
	ld [hl], a                                       ; $41cd: $77
	db $ed                                           ; $41ce: $ed
	ei                                               ; $41cf: $fb
	ld a, [hl]                                       ; $41d0: $7e
	ld e, a                                          ; $41d1: $5f
	rst FarCall                                          ; $41d2: $f7
	ld [hl], a                                       ; $41d3: $77

jr_022_41d4:
	sbc a                                            ; $41d4: $9f
	ld hl, sp+$1e                                    ; $41d5: $f8 $1e
	rlca                                             ; $41d7: $07
	add c                                            ; $41d8: $81
	ldh [rAUD2LOW], a                                ; $41d9: $e0 $18
	adc h                                            ; $41db: $8c
	ld h, d                                          ; $41dc: $62
	reti                                             ; $41dd: $d9


	and $f2                                          ; $41de: $e6 $f2
	add a                                            ; $41e0: $87
	cp c                                             ; $41e1: $b9
	ld l, h                                          ; $41e2: $6c
	sub [hl]                                         ; $41e3: $96
	adc $e7                                          ; $41e4: $ce $e7
	ccf                                              ; $41e6: $3f
	dec e                                            ; $41e7: $1d
	rrca                                             ; $41e8: $0f
	rst JumpTable                                          ; $41e9: $c7
	di                                               ; $41ea: $f3
	ld a, c                                          ; $41eb: $79
	add hl, sp                                       ; $41ec: $39
	inc e                                            ; $41ed: $1c
	rlca                                             ; $41ee: $07
	ld hl, sp+$71                                    ; $41ef: $f8 $71
	ldh [$e1], a                                     ; $41f1: $e0 $e1
	ld l, d                                          ; $41f3: $6a
	ld h, l                                          ; $41f4: $65
	ld h, $07                                        ; $41f5: $26 $07
	ld hl, sp-$10                                    ; $41f7: $f8 $f0
	db $dd                                           ; $41f9: $dd
	ldh [$99], a                                     ; $41fa: $e0 $99
	pop hl                                           ; $41fc: $e1
	ld a, [$5a35]                                    ; $41fd: $fa $35 $5a
	xor l                                            ; $4200: $ad
	ld c, d                                          ; $4201: $4a
	ld a, e                                          ; $4202: $7b
	cp $7f                                           ; $4203: $fe $7f
	jr nc, @-$65                                     ; $4205: $30 $99

	rra                                              ; $4207: $1f
	rrca                                             ; $4208: $0f
	rrca                                             ; $4209: $0f
	ld c, a                                          ; $420a: $4f
	xor a                                            ; $420b: $af
	ld c, a                                          ; $420c: $4f
	ld [hl], d                                       ; $420d: $72
	or d                                             ; $420e: $b2
	sbc $ff                                          ; $420f: $de $ff
	db $dd                                           ; $4211: $dd
	db $fc                                           ; $4212: $fc
	db $dd                                           ; $4213: $dd
	cp $80                                           ; $4214: $fe $80
	sbc a                                            ; $4216: $9f
	scf                                              ; $4217: $37
	ld a, a                                          ; $4218: $7f
	xor $fe                                          ; $4219: $ee $fe
	ld e, [hl]                                       ; $421b: $5e
	ld a, l                                          ; $421c: $7d
	ld a, l                                          ; $421d: $7d
	jr @+$3a                                         ; $421e: $18 $38

	ld [hl], b                                       ; $4220: $70
	pop af                                           ; $4221: $f1
	pop hl                                           ; $4222: $e1
	ld h, c                                          ; $4223: $61
	ld b, e                                          ; $4224: $43
	ld b, e                                          ; $4225: $43
	cp c                                             ; $4226: $b9
	ld e, a                                          ; $4227: $5f
	halt                                             ; $4228: $76
	or d                                             ; $4229: $b2
	xor $ed                                          ; $422a: $ee $ed
	ld h, l                                          ; $422c: $65
	db $dd                                           ; $422d: $dd
	ld h, [hl]                                       ; $422e: $66
	db $e4                                           ; $422f: $e4
	call $99cd                                       ; $4230: $cd $cd $99
	sbc e                                            ; $4233: $9b
	sbc e                                            ; $4234: $9b
	adc e                                            ; $4235: $8b
	inc sp                                           ; $4236: $33
	cp e                                             ; $4237: $bb
	ld [hl], $ae                                     ; $4238: $36 $ae
	db $fc                                           ; $423a: $fc
	rst AddAOntoHL                                          ; $423b: $ef
	ld e, e                                          ; $423c: $5b
	ld sp, hl                                        ; $423d: $f9
	rst SubAFromHL                                          ; $423e: $d7
	ld b, h                                          ; $423f: $44
	ret                                              ; $4240: $c9


	pop de                                           ; $4241: $d1
	sub e                                            ; $4242: $93
	sub d                                            ; $4243: $92
	and [hl]                                         ; $4244: $a6
	ld h, $2c                                        ; $4245: $26 $2c
	ld e, l                                          ; $4247: $5d
	db $dd                                           ; $4248: $dd
	db $dd                                           ; $4249: $dd
	sbc $b9                                          ; $424a: $de $b9
	sbc d                                            ; $424c: $9a
	ld e, b                                          ; $424d: $58
	ld a, c                                          ; $424e: $79
	and d                                            ; $424f: $a2
	ld [hl+], a                                      ; $4250: $22
	ld [hl+], a                                      ; $4251: $22
	sbc $66                                          ; $4252: $de $66
	add b                                            ; $4254: $80
	rst SubAFromBC                                          ; $4255: $e7
	rst JumpTable                                          ; $4256: $c7
	ld h, $36                                        ; $4257: $26 $36
	inc sp                                           ; $4259: $33
	sub a                                            ; $425a: $97
	cp a                                             ; $425b: $bf
	cp e                                             ; $425c: $bb
	cp e                                             ; $425d: $bb
	xor e                                            ; $425e: $ab
	reti                                             ; $425f: $d9


	ret                                              ; $4260: $c9


	call z, Call_022_646c                            ; $4261: $cc $6c $64
	ld h, [hl]                                       ; $4264: $66
	ld h, [hl]                                       ; $4265: $66
	halt                                             ; $4266: $76
	rst AddAOntoHL                                          ; $4267: $ef
	rst SubAFromHL                                          ; $4268: $d7
	rst AddAOntoHL                                          ; $4269: $ef
	dec sp                                           ; $426a: $3b
	rst FarCall                                          ; $426b: $f7
	db $fd                                           ; $426c: $fd
	sbc e                                            ; $426d: $9b
	rst $38                                          ; $426e: $ff
	ld sp, $9838                                     ; $426f: $31 $38 $98
	call z, $804c                                    ; $4272: $cc $4c $80
	ld b, [hl]                                       ; $4275: $46
	ld h, [hl]                                       ; $4276: $66
	ld [hl+], a                                      ; $4277: $22
	push af                                          ; $4278: $f5
	di                                               ; $4279: $f3
	ld [hl], d                                       ; $427a: $72
	reti                                             ; $427b: $d9


Call_022_427c:
	cp c                                             ; $427c: $b9
	xor l                                            ; $427d: $ad
	call c, $0ed4                                    ; $427e: $dc $d4 $0e
	adc [hl]                                         ; $4281: $8e
	rst GetHLinHL                                          ; $4282: $cf
	ld h, a                                          ; $4283: $67
	ld h, a                                          ; $4284: $67
	ld [hl], e                                       ; $4285: $73
	inc sp                                           ; $4286: $33
	dec sp                                           ; $4287: $3b
	or e                                             ; $4288: $b3
	sbc b                                            ; $4289: $98
	sbc a                                            ; $428a: $9f
	rst SubAFromDE                                          ; $428b: $df
	rst GetHLinHL                                          ; $428c: $cf
	ld c, a                                          ; $428d: $4f
	set 5, d                                         ; $428e: $cb $ea
	ld [hl], b                                       ; $4290: $70
	ld a, b                                          ; $4291: $78
	ld a, a                                          ; $4292: $7f
	ccf                                              ; $4293: $3f
	ld a, d                                          ; $4294: $7a
	db $10                                           ; $4295: $10
	sub h                                            ; $4296: $94
	sbc a                                            ; $4297: $9f
	sbc e                                            ; $4298: $9b
	dec [hl]                                         ; $4299: $35
	db $eb                                           ; $429a: $eb
	push af                                          ; $429b: $f5
	db $eb                                           ; $429c: $eb
	push af                                          ; $429d: $f5
	ei                                               ; $429e: $fb
	push af                                          ; $429f: $f5
	rra                                              ; $42a0: $1f
	ccf                                              ; $42a1: $3f
	db $db                                           ; $42a2: $db
	rst $38                                          ; $42a3: $ff
	ld a, c                                          ; $42a4: $79
	cp e                                             ; $42a5: $bb
	ld a, [hl]                                       ; $42a6: $7e
	sub [hl]                                         ; $42a7: $96
	ld a, c                                          ; $42a8: $79
	and e                                            ; $42a9: $a3
	reti                                             ; $42aa: $d9


	rst $38                                          ; $42ab: $ff
	rst SubAFromDE                                          ; $42ac: $df
	ld a, l                                          ; $42ad: $7d
	db $dd                                           ; $42ae: $dd
	db $fd                                           ; $42af: $fd
	sbc e                                            ; $42b0: $9b
	db $dd                                           ; $42b1: $dd
	ld e, l                                          ; $42b2: $5d
	ld b, e                                          ; $42b3: $43
	ld b, e                                          ; $42b4: $43
	db $dd                                           ; $42b5: $dd
	jp $e3df                                         ; $42b6: $c3 $df $e3


	sbc [hl]                                         ; $42b9: $9e
	ret c                                            ; $42ba: $d8

	sbc $db                                          ; $42bb: $de $db
	rst SubAFromDE                                          ; $42bd: $df
	sbc e                                            ; $42be: $9b
	sbc h                                            ; $42bf: $9c
	sbc d                                            ; $42c0: $9a
	inc de                                           ; $42c1: $13
	scf                                              ; $42c2: $37
	sbc $36                                          ; $42c3: $de $36
	rst SubAFromDE                                          ; $42c5: $df
	halt                                             ; $42c6: $76
	sbc h                                            ; $42c7: $9c
	ld [hl], a                                       ; $42c8: $77
	rst $38                                          ; $42c9: $ff
	or a                                             ; $42ca: $b7
	db $dd                                           ; $42cb: $dd
	rst FarCall                                          ; $42cc: $f7
	sbc h                                            ; $42cd: $9c
	rst SubAFromHL                                          ; $42ce: $d7
	or l                                             ; $42cf: $b5
	and e                                            ; $42d0: $a3
	call c, $924c                                    ; $42d1: $dc $4c $92
	ld l, h                                          ; $42d4: $6c
	ld l, [hl]                                       ; $42d5: $6e
	ld a, [hl]                                       ; $42d6: $7e
	ld a, c                                          ; $42d7: $79
	ld a, c                                          ; $42d8: $79
	ld a, l                                          ; $42d9: $7d
	ld e, l                                          ; $42da: $5d
	ld e, h                                          ; $42db: $5c
	ld c, h                                          ; $42dc: $4c
	ld l, h                                          ; $42dd: $6c
	ld h, h                                          ; $42de: $64
	rst JumpTable                                          ; $42df: $c7
	rst JumpTable                                          ; $42e0: $c7
	ld a, e                                          ; $42e1: $7b
	db $d3                                           ; $42e2: $d3
	ld a, c                                          ; $42e3: $79
	rra                                              ; $42e4: $1f
	sub a                                            ; $42e5: $97
	sbc $dd                                          ; $42e6: $de $dd
	db $dd                                           ; $42e8: $dd
	ld e, l                                          ; $42e9: $5d
	push de                                          ; $42ea: $d5
	or h                                             ; $42eb: $b4
	xor [hl]                                         ; $42ec: $ae
	ld [$33de], a                                    ; $42ed: $ea $de $33
	sub d                                            ; $42f0: $92
	or e                                             ; $42f1: $b3
	cp e                                             ; $42f2: $bb
	db $db                                           ; $42f3: $db
	reti                                             ; $42f4: $d9


	db $dd                                           ; $42f5: $dd
	xor $dd                                          ; $42f6: $ee $dd
	db $dd                                           ; $42f8: $dd
	or $ee                                           ; $42f9: $f6 $ee
	ld [$e5eb], a                                    ; $42fb: $ea $eb $e5
	sbc $33                                          ; $42fe: $de $33
	rst SubAFromDE                                          ; $4300: $df
	add hl, de                                       ; $4301: $19
	add h                                            ; $4302: $84
	sbc l                                            ; $4303: $9d
	sbc h                                            ; $4304: $9c
	sbc $ce                                          ; $4305: $de $ce
	xor $6a                                          ; $4307: $ee $6a
	and $b6                                          ; $4309: $e6 $b6
	halt                                             ; $430b: $76
	ld d, [hl]                                       ; $430c: $56
	ld [hl-], a                                      ; $430d: $32
	add hl, sp                                       ; $430e: $39
	add hl, de                                       ; $430f: $19
	sbc l                                            ; $4310: $9d
	sbc l                                            ; $4311: $9d
	call $edcd                                       ; $4312: $cd $cd $ed
	rst AddAOntoHL                                          ; $4315: $ef
	xor d                                            ; $4316: $aa
	ld l, d                                          ; $4317: $6a
	ld l, d                                          ; $4318: $6a
	ld c, c                                          ; $4319: $49
	ld c, c                                          ; $431a: $49
	ld c, b                                          ; $431b: $48
	ld e, c                                          ; $431c: $59
	ld d, l                                          ; $431d: $55
	sbc $df                                          ; $431e: $de $df
	ld [hl], a                                       ; $4320: $77
	ld [hl], d                                       ; $4321: $72
	ld a, c                                          ; $4322: $79
	ld l, $76                                        ; $4323: $2e $76
	inc l                                            ; $4325: $2c

jr_022_4326:
	ld [hl], l                                       ; $4326: $75
	dec [hl]                                         ; $4327: $35
	ld a, a                                          ; $4328: $7f
	ld d, b                                          ; $4329: $50
	sub e                                            ; $432a: $93
	cp a                                             ; $432b: $bf
	sub a                                            ; $432c: $97
	ret z                                            ; $432d: $c8

	call nz, $fdfb                                   ; $432e: $c4 $fb $fd
	ei                                               ; $4331: $fb
	rst FarCall                                          ; $4332: $f7
	rst AddAOntoHL                                          ; $4333: $ef
	cp h                                             ; $4334: $bc
	ld [hl], c                                       ; $4335: $71
	rst AddAOntoHL                                          ; $4336: $ef
	ld a, e                                          ; $4337: $7b
	ld e, d                                          ; $4338: $5a
	ld a, [hl]                                       ; $4339: $7e

jr_022_433a:
	sbc [hl]                                         ; $433a: $9e
	add h                                            ; $433b: $84
	jp $1fff                                         ; $433c: $c3 $ff $1f


	ld a, l                                          ; $433f: $7d
	xor h                                            ; $4340: $ac
	ld l, h                                          ; $4341: $6c
	db $f4                                           ; $4342: $f4
	call nc, $0c88                                   ; $4343: $d4 $88 $0c
	ld d, $e3                                        ; $4346: $16 $e3
	di                                               ; $4348: $f3
	or e                                             ; $4349: $b3
	dec de                                           ; $434a: $1b
	dec sp                                           ; $434b: $3b
	ld a, a                                          ; $434c: $7f
	rst $38                                          ; $434d: $ff
	rst $38                                          ; $434e: $ff
	ld de, $9899                                     ; $434f: $11 $99 $98
	sbc h                                            ; $4352: $9c
	ld e, [hl]                                       ; $4353: $5e
	ld e, [hl]                                       ; $4354: $5e
	add hl, hl                                       ; $4355: $29
	dec hl                                           ; $4356: $2b
	db $dd                                           ; $4357: $dd
	rst $38                                          ; $4358: $ff
	sub l                                            ; $4359: $95
	rst FarCall                                          ; $435a: $f7
	di                                               ; $435b: $f3
	rst $38                                          ; $435c: $ff
	db $fc                                           ; $435d: $fc
	ld [hl-], a                                      ; $435e: $32
	ld [de], a                                       ; $435f: $12
	sbc e                                            ; $4360: $9b
	rst SubAFromHL                                          ; $4361: $d7
	sbc $bf                                          ; $4362: $de $bf
	jp c, $86ff                                      ; $4364: $da $ff $86

	di                                               ; $4367: $f3
	cp a                                             ; $4368: $bf
	rst $38                                          ; $4369: $ff
	ld [hl], b                                       ; $436a: $70
	ld [hl], b                                       ; $436b: $70
	ld a, b                                          ; $436c: $78
	inc a                                            ; $436d: $3c
	cp [hl]                                          ; $436e: $be
	ld a, a                                          ; $436f: $7f
	rst $38                                          ; $4370: $ff
	cp a                                             ; $4371: $bf
	rst SubAFromDE                                          ; $4372: $df
	rst SubAFromDE                                          ; $4373: $df
	rst GetHLinHL                                          ; $4374: $cf
	rst SubAFromBC                                          ; $4375: $e7
	db $e3                                           ; $4376: $e3
	pop hl                                           ; $4377: $e1
	jr nz, jr_022_433a                               ; $4378: $20 $c0

	call nz, Call_022_6766                           ; $437a: $c4 $66 $67
	halt                                             ; $437d: $76
	ld a, h                                          ; $437e: $7c
	ld a, a                                          ; $437f: $7f
	ld [hl], a                                       ; $4380: $77
	sbc c                                            ; $4381: $99
	ld a, a                                          ; $4382: $7f
	dec de                                           ; $4383: $1b
	sub a                                            ; $4384: $97
	rst GetHLinHL                                          ; $4385: $cf
	add $c3                                          ; $4386: $c6 $c3
	inc bc                                           ; $4388: $03
	ld b, [hl]                                       ; $4389: $46
	ld h, e                                          ; $438a: $63
	ld e, e                                          ; $438b: $5b
	add $78                                          ; $438c: $c6 $78
	ret                                              ; $438e: $c9


	ld [hl], c                                       ; $438f: $71
	jr jr_022_4326                                   ; $4390: $18 $94

	di                                               ; $4392: $f3

Call_022_4393:
	db $fc                                           ; $4393: $fc
	cp $c7                                           ; $4394: $fe $c7
	ld [hl+], a                                      ; $4396: $22
	ld [de], a                                       ; $4397: $12
	sub d                                            ; $4398: $92
	bit 7, a                                         ; $4399: $cb $7f
	rst $38                                          ; $439b: $ff
	rst FarCall                                          ; $439c: $f7
	ld [hl], h                                       ; $439d: $74

Jump_022_439e:
	ld [hl], b                                       ; $439e: $70
	ld a, h                                          ; $439f: $7c
	xor a                                            ; $43a0: $af
	sbc $1f                                          ; $43a1: $de $1f
	sub a                                            ; $43a3: $97
	sub d                                            ; $43a4: $92
	xor e                                            ; $43a5: $ab
	xor e                                            ; $43a6: $ab
	ld c, d                                          ; $43a7: $4a
	adc c                                            ; $43a8: $89
	add l                                            ; $43a9: $85
	dec h                                            ; $43aa: $25
	inc h                                            ; $43ab: $24
	db $db                                           ; $43ac: $db
	rst $38                                          ; $43ad: $ff
	rst SubAFromDE                                          ; $43ae: $df
	rst SubAFromDE                                          ; $43af: $df
	sub h                                            ; $43b0: $94
	ld e, a                                          ; $43b1: $5f
	cpl                                              ; $43b2: $2f
	and $f8                                          ; $43b3: $e6 $f8
	cp a                                             ; $43b5: $bf
	rst SubAFromDE                                          ; $43b6: $df
	rst $38                                          ; $43b7: $ff
	rst AddAOntoHL                                          ; $43b8: $ef
	ldh [c], a                                       ; $43b9: $e2
	pop af                                           ; $43ba: $f1
	ld sp, hl                                        ; $43bb: $f9
	ld a, e                                          ; $43bc: $7b
	ld e, [hl]                                       ; $43bd: $5e
	ld a, [hl]                                       ; $43be: $7e
	and h                                            ; $43bf: $a4
	sbc h                                            ; $43c0: $9c
	rst $38                                          ; $43c1: $ff
	ld a, h                                          ; $43c2: $7c
	jp $b672                                         ; $43c3: $c3 $72 $b6


	sbc [hl]                                         ; $43c6: $9e
	nop                                              ; $43c7: $00
	ld l, c                                          ; $43c8: $69
	ld b, $97                                        ; $43c9: $06 $97
	db $eb                                           ; $43cb: $eb
	dec hl                                           ; $43cc: $2b
	ld e, d                                          ; $43cd: $5a
	cp d                                             ; $43ce: $ba
	ld [hl], h                                       ; $43cf: $74
	or h                                             ; $43d0: $b4
	sub $aa                                          ; $43d1: $d6 $aa
	ld [hl], a                                       ; $43d3: $77
	db $d3                                           ; $43d4: $d3
	ld a, a                                          ; $43d5: $7f
	ld a, [hl-]                                      ; $43d6: $3a
	ld a, [hl]                                       ; $43d7: $7e
	or e                                             ; $43d8: $b3
	sbc e                                            ; $43d9: $9b
	rra                                              ; $43da: $1f
	sbc a                                            ; $43db: $9f
	ld a, a                                          ; $43dc: $7f
	ccf                                              ; $43dd: $3f
	sbc $7f                                          ; $43de: $de $7f
	add [hl]                                         ; $43e0: $86
	ld a, [hl]                                       ; $43e1: $7e
	ld hl, sp-$09                                    ; $43e2: $f8 $f7
	ld sp, hl                                        ; $43e4: $f9
	jp hl                                            ; $43e5: $e9


	call nz, $d4c4                                   ; $43e6: $c4 $c4 $d4
	jp nc, $c3e3                                     ; $43e9: $d2 $e3 $c3

	rst GetHLinHL                                          ; $43ec: $cf
	ld e, a                                          ; $43ed: $5f
	ld c, l                                          ; $43ee: $4d
	ld b, b                                          ; $43ef: $40
	ld [hl+], a                                      ; $43f0: $22
	ld a, a                                          ; $43f1: $7f
	db $e3                                           ; $43f2: $e3
	rst JumpTable                                          ; $43f3: $c7
	ld e, a                                          ; $43f4: $5f
	ld a, a                                          ; $43f5: $7f
	ld a, a                                          ; $43f6: $7f
	ld a, b                                          ; $43f7: $78
	ld a, $1c                                        ; $43f8: $3e $1c
	ld a, e                                          ; $43fa: $7b
	jr @-$61                                         ; $43fb: $18 $9d

	ld a, h                                          ; $43fd: $7c
	ld [hl], b                                       ; $43fe: $70
	cp $9e                                           ; $43ff: $fe $9e
	ret nz                                           ; $4401: $c0

	ld a, [$fd7e]                                    ; $4402: $fa $7e $fd
	sbc b                                            ; $4405: $98
	ld e, $06                                        ; $4406: $1e $06
	nop                                              ; $4408: $00
	nop                                              ; $4409: $00
	add b                                            ; $440a: $80
	ret nz                                           ; $440b: $c0

	ld [bc], a                                       ; $440c: $02
	ld a, [$878e]                                    ; $440d: $fa $8e $87
	rra                                              ; $4410: $1f
	cp $ba                                           ; $4411: $fe $ba
	add c                                            ; $4413: $81
	ld b, l                                          ; $4414: $45
	rst $38                                          ; $4415: $ff
	nop                                              ; $4416: $00
	adc a                                            ; $4417: $8f
	cp [hl]                                          ; $4418: $be
	cp $fe                                           ; $4419: $fe $fe
	ldh a, [$7c]                                     ; $441b: $f0 $7c
	jr c, jr_022_441f                                ; $441d: $38 $00

jr_022_441f:
	rst FarCall                                          ; $441f: $f7
	ld a, d                                          ; $4420: $7a
	ld c, [hl]                                       ; $4421: $4e
	ld a, e                                          ; $4422: $7b
	db $fd                                           ; $4423: $fd
	ld a, [hl]                                       ; $4424: $7e
	ld a, $93                                        ; $4425: $3e $93
	sbc c                                            ; $4427: $99
	dec e                                            ; $4428: $1d
	inc e                                            ; $4429: $1c
	inc d                                            ; $442a: $14
	dec [hl]                                         ; $442b: $35
	add hl, sp                                       ; $442c: $39
	dec sp                                           ; $442d: $3b
	ld [hl-], a                                      ; $442e: $32
	or [hl]                                          ; $442f: $b6
	or l                                             ; $4430: $b5
	or a                                             ; $4431: $b7
	cp l                                             ; $4432: $bd
	ld a, c                                          ; $4433: $79
	and [hl]                                         ; $4434: $a6
	sub [hl]                                         ; $4435: $96
	rst GetHLinHL                                          ; $4436: $cf
	ld c, e                                          ; $4437: $4b
	set 1, c                                         ; $4438: $cb $c9
	jp z, Jump_022_4bcb                              ; $443a: $ca $cb $4b

	ld c, e                                          ; $443d: $4b
	rst FarCall                                          ; $443e: $f7
	ld l, b                                          ; $443f: $68
	ld l, [hl]                                       ; $4440: $6e
	sbc [hl]                                         ; $4441: $9e
	rst AddAOntoHL                                          ; $4442: $ef
	halt                                             ; $4443: $76
	ret nz                                           ; $4444: $c0

	sub h                                            ; $4445: $94
	ld e, a                                          ; $4446: $5f
	ld l, a                                          ; $4447: $6f
	rst $38                                          ; $4448: $ff
	rst AddAOntoHL                                          ; $4449: $ef
	ei                                               ; $444a: $fb
	ei                                               ; $444b: $fb
	db $eb                                           ; $444c: $eb
	db $e3                                           ; $444d: $e3
	db $e3                                           ; $444e: $e3
	rst SubAFromBC                                          ; $444f: $e7
	rst SubAFromBC                                          ; $4450: $e7
	reti                                             ; $4451: $d9


	rst $38                                          ; $4452: $ff
	ld d, $00                                        ; $4453: $16 $00
	ret c                                            ; $4455: $d8

	ld [hl], a                                       ; $4456: $77
	sbc l                                            ; $4457: $9d
	ld h, [hl]                                       ; $4458: $66
	halt                                             ; $4459: $76
	reti                                             ; $445a: $d9


	ld h, [hl]                                       ; $445b: $66
	ld [hl], e                                       ; $445c: $73
	rst FarCall                                          ; $445d: $f7
	ld l, a                                          ; $445e: $6f
	ldh a, [c]                                       ; $445f: $f2
	sbc e                                            ; $4460: $9b
	ld h, l                                          ; $4461: $65
	ld d, l                                          ; $4462: $55
	ld d, l                                          ; $4463: $55
	ld d, [hl]                                       ; $4464: $56
	ld [hl], e                                       ; $4465: $73
	ei                                               ; $4466: $fb
	sbc [hl]                                         ; $4467: $9e
	ld h, a                                          ; $4468: $67
	ld [hl], l                                       ; $4469: $75
	add h                                            ; $446a: $84
	add d                                            ; $446b: $82
	xor d                                            ; $446c: $aa
	jp nc, $ecf4                                     ; $446d: $d2 $f4 $ec

	db $dd                                           ; $4470: $dd
	cp a                                             ; $4471: $bf
	ei                                               ; $4472: $fb
	rst $38                                          ; $4473: $ff
	db $fd                                           ; $4474: $fd
	db $fd                                           ; $4475: $fd
	db $eb                                           ; $4476: $eb
	db $db                                           ; $4477: $db
	cp e                                             ; $4478: $bb
	ei                                               ; $4479: $fb
	rst $38                                          ; $447a: $ff

Call_022_447b:
	rst $38                                          ; $447b: $ff
	ld a, $3e                                        ; $447c: $3e $3e
	rra                                              ; $447e: $1f
	rrca                                             ; $447f: $0f
	ld c, a                                          ; $4480: $4f
	ld b, e                                          ; $4481: $43
	ld d, e                                          ; $4482: $53
	ld d, d                                          ; $4483: $52
	ld [$f3e6], a                                    ; $4484: $ea $e6 $f3
	ld sp, hl                                        ; $4487: $f9
	db $fd                                           ; $4488: $fd
	sbc $ff                                          ; $4489: $de $ff
	db $fd                                           ; $448b: $fd
	rst SubAFromDE                                          ; $448c: $df
	add b                                            ; $448d: $80
	rst SubAFromDE                                          ; $448e: $df
	ret nz                                           ; $448f: $c0

	db $fc                                           ; $4490: $fc
	ld a, e                                          ; $4491: $7b
	rst FarCall                                          ; $4492: $f7
	cp $9a                                           ; $4493: $fe $9a
	ld bc, $0000                                     ; $4495: $01 $00 $00

jr_022_4498:
	dec b                                            ; $4498: $05
	inc bc                                           ; $4499: $03
	ld [hl], e                                       ; $449a: $73
	ld sp, hl                                        ; $449b: $f9
	sbc c                                            ; $449c: $99
	nop                                              ; $449d: $00
	ld [bc], a                                       ; $449e: $02
	rlca                                             ; $449f: $07
	ldh [rSVBK], a                                   ; $44a0: $e0 $70
	and b                                            ; $44a2: $a0
	ld a, e                                          ; $44a3: $7b
	db $ec                                           ; $44a4: $ec
	adc l                                            ; $44a5: $8d
	jr z, jr_022_4498                                ; $44a6: $28 $f0

	nop                                              ; $44a8: $00
	add b                                            ; $44a9: $80
	ret nz                                           ; $44aa: $c0

	add b                                            ; $44ab: $80
	nop                                              ; $44ac: $00
	nop                                              ; $44ad: $00
	db $10                                           ; $44ae: $10
	ld hl, sp+$01                                    ; $44af: $f8 $01
	inc bc                                           ; $44b1: $03
	rlca                                             ; $44b2: $07
	rlca                                             ; $44b3: $07
	rrca                                             ; $44b4: $0f
	rrca                                             ; $44b5: $0f
	rra                                              ; $44b6: $1f
	rra                                              ; $44b7: $1f
	ld a, [$0191]                                    ; $44b8: $fa $91 $01
	xor $fe                                          ; $44bb: $ee $fe
	ld a, [$d2f2]                                    ; $44bd: $fa $f2 $d2
	jp nc, $bbdb                                     ; $44c0: $d2 $db $bb

	inc sp                                           ; $44c3: $33
	daa                                              ; $44c4: $27
	ld l, a                                          ; $44c5: $6f
	ld a, a                                          ; $44c6: $7f
	ld a, a                                          ; $44c7: $7f
	db $dd                                           ; $44c8: $dd
	rst $38                                          ; $44c9: $ff
	sub a                                            ; $44ca: $97
	db $eb                                           ; $44cb: $eb
	rst AddAOntoHL                                          ; $44cc: $ef
	rst AddAOntoHL                                          ; $44cd: $ef
	rst SubAFromDE                                          ; $44ce: $df
	rst SubAFromDE                                          ; $44cf: $df
	cp a                                             ; $44d0: $bf
	rst $38                                          ; $44d1: $ff
	ld c, e                                          ; $44d2: $4b
	sbc $5f                                          ; $44d3: $de $5f
	rst SubAFromDE                                          ; $44d5: $df
	cp a                                             ; $44d6: $bf
	rst SubAFromDE                                          ; $44d7: $df
	rst $38                                          ; $44d8: $ff
	rst SubAFromDE                                          ; $44d9: $df
	rst FarCall                                          ; $44da: $f7
	sbc [hl]                                         ; $44db: $9e
	di                                               ; $44dc: $f3
	call c, $d9fb                                    ; $44dd: $dc $fb $d9
	rst $38                                          ; $44e0: $ff
	sbc [hl]                                         ; $44e1: $9e
	rst SubAFromBC                                          ; $44e2: $e7
	call c, $dfc7                                    ; $44e3: $dc $c7 $df
	add a                                            ; $44e6: $87
	reti                                             ; $44e7: $d9


	rst $38                                          ; $44e8: $ff
	add e                                            ; $44e9: $83
	ccf                                              ; $44ea: $3f
	inc sp                                           ; $44eb: $33
	ld b, e                                          ; $44ec: $43
	ld c, e                                          ; $44ed: $4b
	ret                                              ; $44ee: $c9


	ret                                              ; $44ef: $c9


	jp hl                                            ; $44f0: $e9


	ld h, l                                          ; $44f1: $65
	rst $38                                          ; $44f2: $ff
	rst $38                                          ; $44f3: $ff
	cp a                                             ; $44f4: $bf
	or a                                             ; $44f5: $b7
	scf                                              ; $44f6: $37
	scf                                              ; $44f7: $37
	rla                                              ; $44f8: $17
	sbc e                                            ; $44f9: $9b
	di                                               ; $44fa: $f3
	di                                               ; $44fb: $f3
	ld a, d                                          ; $44fc: $7a
	ld e, e                                          ; $44fd: $5b
	ld e, a                                          ; $44fe: $5f
	rst SubAFromDE                                          ; $44ff: $df
	rst $38                                          ; $4500: $ff
	rst $38                                          ; $4501: $ff
	ld e, [hl]                                       ; $4502: $5e
	ld e, h                                          ; $4503: $5c
	db $dd                                           ; $4504: $dd
	db $fd                                           ; $4505: $fd
	ld [hl], a                                       ; $4506: $77
	ld h, b                                          ; $4507: $60
	sbc d                                            ; $4508: $9a
	ldh [$f0], a                                     ; $4509: $e0 $f0
	ld hl, sp-$04                                    ; $450b: $f8 $fc
	cp $de                                           ; $450d: $fe $de
	rst $38                                          ; $450f: $ff
	sbc [hl]                                         ; $4510: $9e
	ret nz                                           ; $4511: $c0

	ld l, e                                          ; $4512: $6b
	rst FarCall                                          ; $4513: $f7
	ld [hl], a                                       ; $4514: $77
	ld l, d                                          ; $4515: $6a
	ld a, a                                          ; $4516: $7f
	db $fc                                           ; $4517: $fc
	sbc h                                            ; $4518: $9c
	ret nz                                           ; $4519: $c0

	ldh a, [$03]                                     ; $451a: $f0 $03
	ld [hl], a                                       ; $451c: $77
	rst FarCall                                          ; $451d: $f7
	ld a, a                                          ; $451e: $7f
	ld l, e                                          ; $451f: $6b
	rst SubAFromDE                                          ; $4520: $df
	ldh [$7b], a                                     ; $4521: $e0 $7b
	ld b, l                                          ; $4523: $45
	sbc c                                            ; $4524: $99
	ldh [$c1], a                                     ; $4525: $e0 $c1
	ld bc, $f003                                     ; $4527: $01 $03 $f0
	ldh [$73], a                                     ; $452a: $e0 $73
	dec a                                            ; $452c: $3d
	sbc h                                            ; $452d: $9c
	ld bc, $3f3f                                     ; $452e: $01 $3f $3f
	ld l, a                                          ; $4531: $6f
	ld a, c                                          ; $4532: $79
	ld a, e                                          ; $4533: $7b
	ld e, b                                          ; $4534: $58
	ld a, a                                          ; $4535: $7f
	ld e, d                                          ; $4536: $5a
	sub a                                            ; $4537: $97
	ccf                                              ; $4538: $3f
	rst $38                                          ; $4539: $ff
	rst $38                                          ; $453a: $ff
	cp $fd                                           ; $453b: $fe $fd
	ld a, [$eaf5]                                    ; $453d: $fa $f5 $ea
	ld a, e                                          ; $4540: $7b
	cp $d9                                           ; $4541: $fe $d9
	rst $38                                          ; $4543: $ff
	sbc b                                            ; $4544: $98
	cp d                                             ; $4545: $ba
	ld d, l                                          ; $4546: $55
	cp d                                             ; $4547: $ba
	ld e, h                                          ; $4548: $5c
	cp d                                             ; $4549: $ba
	ld a, l                                          ; $454a: $7d
	cp e                                             ; $454b: $bb
	ret c                                            ; $454c: $d8

	rst $38                                          ; $454d: $ff
	sbc [hl]                                         ; $454e: $9e
	ei                                               ; $454f: $fb
	call c, Call_022_73f9                            ; $4550: $dc $f9 $73
	sub l                                            ; $4553: $95
	call c, $9dff                                    ; $4554: $dc $ff $9d
	add a                                            ; $4557: $87
	sub a                                            ; $4558: $97
	db $dd                                           ; $4559: $dd
	rst SubAFromHL                                          ; $455a: $d7
	rst SubAFromDE                                          ; $455b: $df
	rst SubAFromDE                                          ; $455c: $df
	reti                                             ; $455d: $d9


	rst $38                                          ; $455e: $ff
	db $dd                                           ; $455f: $dd
	ld h, l                                          ; $4560: $65
	sbc e                                            ; $4561: $9b
	dec l                                            ; $4562: $2d
	add hl, bc                                       ; $4563: $09
	adc c                                            ; $4564: $89
	reti                                             ; $4565: $d9


	db $dd                                           ; $4566: $dd
	sbc e                                            ; $4567: $9b
	sbc [hl]                                         ; $4568: $9e
	db $db                                           ; $4569: $db
	sbc $ff                                          ; $456a: $de $ff
	sbc h                                            ; $456c: $9c
	db $fd                                           ; $456d: $fd
	db $ed                                           ; $456e: $ed
	rst AddAOntoHL                                          ; $456f: $ef
	sbc $ee                                          ; $4570: $de $ee
	sbc l                                            ; $4572: $9d
	adc $de                                          ; $4573: $ce $de
	db $d3                                           ; $4575: $d3
	rst $38                                          ; $4576: $ff
	sbc l                                            ; $4577: $9d
	cp $f8                                           ; $4578: $fe $f8
	reti                                             ; $457a: $d9


	rst $38                                          ; $457b: $ff
	sub [hl]                                         ; $457c: $96
	db $fc                                           ; $457d: $fc
	rst $38                                          ; $457e: $ff
	cp a                                             ; $457f: $bf
	sbc a                                            ; $4580: $9f
	adc a                                            ; $4581: $8f
	add a                                            ; $4582: $87
	add e                                            ; $4583: $83
	add c                                            ; $4584: $81
	cp b                                             ; $4585: $b8
	ld [hl], a                                       ; $4586: $77
	ei                                               ; $4587: $fb
	sbc $80                                          ; $4588: $de $80
	sbc [hl]                                         ; $458a: $9e
	rrca                                             ; $458b: $0f
	ld a, d                                          ; $458c: $7a
	db $fc                                           ; $458d: $fc
	sbc c                                            ; $458e: $99
	rst $38                                          ; $458f: $ff
	sbc $ec                                          ; $4590: $de $ec
	rst AddAOntoHL                                          ; $4592: $ef
	rlca                                             ; $4593: $07
	rra                                              ; $4594: $1f
	ld a, e                                          ; $4595: $7b
	ld sp, hl                                        ; $4596: $f9
	sbc h                                            ; $4597: $9c
	adc $44                                          ; $4598: $ce $44
	cpl                                              ; $459a: $2f
	db $dd                                           ; $459b: $dd
	rst $38                                          ; $459c: $ff
	sbc [hl]                                         ; $459d: $9e
	di                                               ; $459e: $f3
	sbc $f8                                          ; $459f: $de $f8
	rst SubAFromDE                                          ; $45a1: $df
	rst $38                                          ; $45a2: $ff
	sbc l                                            ; $45a3: $9d
	rst SubAFromDE                                          ; $45a4: $df
	sbc a                                            ; $45a5: $9f
	sbc $5f                                          ; $45a6: $de $5f
	ld l, e                                          ; $45a8: $6b
	pop bc                                           ; $45a9: $c1
	rst $38                                          ; $45aa: $ff
	push de                                          ; $45ab: $d5
	rst $38                                          ; $45ac: $ff
	sbc [hl]                                         ; $45ad: $9e
	ld sp, hl                                        ; $45ae: $f9
	sbc $01                                          ; $45af: $de $01
	ld [hl], e                                       ; $45b1: $73
	jp hl                                            ; $45b2: $e9


	sbc $fe                                          ; $45b3: $de $fe
	db $dd                                           ; $45b5: $dd
	rst $38                                          ; $45b6: $ff
	sbc e                                            ; $45b7: $9b
	sbc a                                            ; $45b8: $9f
	sub a                                            ; $45b9: $97
	sub e                                            ; $45ba: $93
	sub e                                            ; $45bb: $93
	db $dd                                           ; $45bc: $dd
	rst $38                                          ; $45bd: $ff
	db $dd                                           ; $45be: $dd
	ld a, a                                          ; $45bf: $7f
	call c, Call_022_7fcf                            ; $45c0: $dc $cf $7f
	ld h, d                                          ; $45c3: $62
	ld [hl], e                                       ; $45c4: $73
	inc e                                            ; $45c5: $1c
	jp c, $dcff                                      ; $45c6: $da $ff $dc

	sbc a                                            ; $45c9: $9f
	ld l, d                                          ; $45ca: $6a
	dec [hl]                                         ; $45cb: $35
	ld a, a                                          ; $45cc: $7f
	cp b                                             ; $45cd: $b8
	sbc e                                            ; $45ce: $9b
	cp $c0                                           ; $45cf: $fe $c0
	add b                                            ; $45d1: $80
	ldh a, [$73]                                     ; $45d2: $f0 $73
	jp z, $dc7f                                      ; $45d4: $ca $7f $dc

	sbc [hl]                                         ; $45d7: $9e
	rrca                                             ; $45d8: $0f
	ld a, d                                          ; $45d9: $7a
	call c, $e097                                    ; $45da: $dc $97 $e0
	dec b                                            ; $45dd: $05
	rlca                                             ; $45de: $07
	rlca                                             ; $45df: $07
	ld b, $02                                        ; $45e0: $06 $02
	jp nz, Jump_022_6fe2                             ; $45e2: $c2 $e2 $6f

	or b                                             ; $45e5: $b0
	add b                                            ; $45e6: $80
	ld a, $1e                                        ; $45e7: $3e $1e
	add c                                            ; $45e9: $81
	jp $6bcf                                         ; $45ea: $c3 $cf $6b


	ld l, [hl]                                       ; $45ed: $6e
	dec a                                            ; $45ee: $3d
	dec sp                                           ; $45ef: $3b
	ld [hl-], a                                      ; $45f0: $32
	add b                                            ; $45f1: $80
	add c                                            ; $45f2: $81
	add [hl]                                         ; $45f3: $86
	add hl, bc                                       ; $45f4: $09
	ld a, [bc]                                       ; $45f5: $0a
	inc b                                            ; $45f6: $04
	add hl, bc                                       ; $45f7: $09
	ld [de], a                                       ; $45f8: $12
	ld hl, sp-$01                                    ; $45f9: $f8 $ff
	ldh [$1f], a                                     ; $45fb: $e0 $1f
	ld a, b                                          ; $45fd: $78
	ret nz                                           ; $45fe: $c0

	rra                                              ; $45ff: $1f
	ld a, b                                          ; $4600: $78
	jr nc, @+$01                                     ; $4601: $30 $ff

	ret nz                                           ; $4603: $c0

	rrca                                             ; $4604: $0f
	jr nc, jr_022_4686                               ; $4605: $30 $7f

	ld d, d                                          ; $4607: $52
	sbc c                                            ; $4608: $99
	jr nc, jr_022_4687                               ; $4609: $30 $7c

	cp $7e                                           ; $460b: $fe $7e
	db $fc                                           ; $460d: $fc
	ld a, [hl]                                       ; $460e: $7e
	ld a, e                                          ; $460f: $7b
	and d                                            ; $4610: $a2
	sub a                                            ; $4611: $97
	rra                                              ; $4612: $1f
	jp $8f33                                         ; $4613: $c3 $33 $8f


	ld h, e                                          ; $4616: $63
	ld de, $c50f                                     ; $4617: $11 $0f $c5
	ld a, [$709e]                                    ; $461a: $fa $9e $70
	jp c, $9eff                                      ; $461d: $da $ff $9e

	adc a                                            ; $4620: $8f
	ld sp, hl                                        ; $4621: $f9
	reti                                             ; $4622: $d9


	rst $38                                          ; $4623: $ff
	db $dd                                           ; $4624: $dd
	jp z, $66dd                                      ; $4625: $ca $dd $66

	db $dd                                           ; $4628: $dd
	ccf                                              ; $4629: $3f
	ld l, a                                          ; $462a: $6f
	ld a, b                                          ; $462b: $78
	rst SubAFromDE                                          ; $462c: $df
	ld a, a                                          ; $462d: $7f
	rst SubAFromDE                                          ; $462e: $df
	ccf                                              ; $462f: $3f

Call_022_4630:
	rst SubAFromDE                                          ; $4630: $df
	rra                                              ; $4631: $1f
	ld d, e                                          ; $4632: $53
	ld h, e                                          ; $4633: $63
	sbc $9f                                          ; $4634: $de $9f
	ld b, a                                          ; $4636: $47
	ret z                                            ; $4637: $c8

	ld sp, hl                                        ; $4638: $f9
	sbc h                                            ; $4639: $9c
	pop af                                           ; $463a: $f1
	ld sp, hl                                        ; $463b: $f9
	ld sp, hl                                        ; $463c: $f9
	ld [hl], d                                       ; $463d: $72
	jr nz, @-$62                                     ; $463e: $20 $9c

	rrca                                             ; $4640: $0f
	rlca                                             ; $4641: $07
	rlca                                             ; $4642: $07
	ld [hl], d                                       ; $4643: $72
	dec l                                            ; $4644: $2d
	sbc l                                            ; $4645: $9d
	inc de                                           ; $4646: $13
	db $10                                           ; $4647: $10
	sbc $f0                                          ; $4648: $de $f0
	sbc h                                            ; $464a: $9c
	ld d, b                                          ; $464b: $50
	pop de                                           ; $464c: $d1
	cp d                                             ; $464d: $ba
	ld a, e                                          ; $464e: $7b
	ld hl, sp-$21                                    ; $464f: $f8 $df
	sub b                                            ; $4651: $90
	adc b                                            ; $4652: $88
	ret nc                                           ; $4653: $d0

	ld d, c                                          ; $4654: $51
	ld l, d                                          ; $4655: $6a
	ldh [hDisp1_LCDC], a                                     ; $4656: $e0 $8f
	jr c, @+$63                                      ; $4658: $38 $61

	rst GetHLinHL                                          ; $465a: $cf
	sbc a                                            ; $465b: $9f
	ld a, a                                          ; $465c: $7f
	rst $38                                          ; $465d: $ff
	ret nz                                           ; $465e: $c0

	adc a                                            ; $465f: $8f
	db $10                                           ; $4660: $10
	jr nz, jr_022_46a7                               ; $4661: $20 $44

	adc [hl]                                         ; $4663: $8e
	rra                                              ; $4664: $1f
	cpl                                              ; $4665: $2f
	ccf                                              ; $4666: $3f
	sbc a                                            ; $4667: $9f
	rst GetHLinHL                                          ; $4668: $cf
	rst AddAOntoHL                                          ; $4669: $ef
	ld [hl], a                                       ; $466a: $77
	inc h                                            ; $466b: $24
	sub [hl]                                         ; $466c: $96
	ld [hl+], a                                      ; $466d: $22
	db $10                                           ; $466e: $10
	adc b                                            ; $466f: $88
	ld c, b                                          ; $4670: $48
	inc h                                            ; $4671: $24
	inc d                                            ; $4672: $14
	ld [$fc00], sp                                   ; $4673: $08 $00 $fc
	jp c, $9eff                                      ; $4676: $da $ff $9e

	add e                                            ; $4679: $83
	jp c, $ff80                                      ; $467a: $da $80 $ff

	ld [hl], l                                       ; $467d: $75
	sub $77                                          ; $467e: $d6 $77
	xor [hl]                                         ; $4680: $ae
	ld a, a                                          ; $4681: $7f
	ld a, e                                          ; $4682: $7b
	ld a, a                                          ; $4683: $7f
	xor h                                            ; $4684: $ac
	ld a, a                                          ; $4685: $7f

jr_022_4686:
	xor [hl]                                         ; $4686: $ae

jr_022_4687:
	call c, $de32                                    ; $4687: $dc $32 $de
	add hl, de                                       ; $468a: $19
	call c, $decf                                    ; $468b: $dc $cf $de
	rst SubAFromBC                                          ; $468e: $e7
	ld a, a                                          ; $468f: $7f
	db $eb                                           ; $4690: $eb
	rst SubAFromDE                                          ; $4691: $df
	rrca                                             ; $4692: $0f
	sbc $07                                          ; $4693: $de $07
	sbc [hl]                                         ; $4695: $9e
	inc bc                                           ; $4696: $03
	reti                                             ; $4697: $d9


	rst $38                                          ; $4698: $ff
	reti                                             ; $4699: $d9


	rst GetHLinHL                                          ; $469a: $cf
	daa                                              ; $469b: $27
	ld h, b                                          ; $469c: $60
	ld b, a                                          ; $469d: $47
	ldh a, [hDisp0_BGP]                                     ; $469e: $f0 $85
	ld sp, hl                                        ; $46a0: $f9
	ret c                                            ; $46a1: $d8

	ld hl, sp-$18                                    ; $46a2: $f8 $e8
	db $e4                                           ; $46a4: $e4
	db $e4                                           ; $46a5: $e4
	db $f4                                           ; $46a6: $f4

jr_022_46a7:
	db $f4                                           ; $46a7: $f4
	add hl, hl                                       ; $46a8: $29
	jr c, jr_022_46c3                                ; $46a9: $38 $18

	jr jr_022_46c9                                   ; $46ab: $18 $1c

	inc e                                            ; $46ad: $1c
	inc c                                            ; $46ae: $0c
	inc c                                            ; $46af: $0c
	rst $38                                          ; $46b0: $ff
	cp $7e                                           ; $46b1: $fe $7e
	ld a, $3e                                        ; $46b3: $3e $3e
	ld e, $1e                                        ; $46b5: $1e $1e
	inc e                                            ; $46b7: $1c
	add $06                                          ; $46b8: $c6 $06
	sbc $02                                          ; $46ba: $de $02
	sbc $04                                          ; $46bc: $de $04
	ld [hl], a                                       ; $46be: $77
	ld [bc], a                                       ; $46bf: $02
	ld [hl], a                                       ; $46c0: $77
	nop                                              ; $46c1: $00
	reti                                             ; $46c2: $d9


jr_022_46c3:
	ld bc, $5766                                     ; $46c3: $01 $66 $57
	ld a, e                                          ; $46c6: $7b
	ld h, a                                          ; $46c7: $67
	inc sp                                           ; $46c8: $33

jr_022_46c9:
	or b                                             ; $46c9: $b0
	sub e                                            ; $46ca: $93
	sbc c                                            ; $46cb: $99
	reti                                             ; $46cc: $d9


	db $f4                                           ; $46cd: $f4

Call_022_46ce:
	ldh a, [$f2]                                     ; $46ce: $f0 $f2
	ldh a, [c]                                       ; $46d0: $f2
	ld a, [$67f9]                                    ; $46d1: $fa $f9 $67
	daa                                              ; $46d4: $27
	inc bc                                           ; $46d5: $03
	inc bc                                           ; $46d6: $03
	sbc $01                                          ; $46d7: $de $01
	sbc h                                            ; $46d9: $9c
	nop                                              ; $46da: $00
	inc bc                                           ; $46db: $03
	inc de                                           ; $46dc: $13
	sbc $91                                          ; $46dd: $de $91
	rst SubAFromDE                                          ; $46df: $df
	or b                                             ; $46e0: $b0
	ld h, [hl]                                       ; $46e1: $66
	sub b                                            ; $46e2: $90
	ld l, a                                          ; $46e3: $6f
	ld h, b                                          ; $46e4: $60
	rst SubAFromDE                                          ; $46e5: $df
	ret nz                                           ; $46e6: $c0

	ld c, a                                          ; $46e7: $4f
	ld [hl], b                                       ; $46e8: $70
	ld a, e                                          ; $46e9: $7b
	ld sp, hl                                        ; $46ea: $f9
	ld d, e                                          ; $46eb: $53
	ldh a, [$9d]                                     ; $46ec: $f0 $9d
	ld a, a                                          ; $46ee: $7f
	nop                                              ; $46ef: $00
	ld h, a                                          ; $46f0: $67
	and c                                            ; $46f1: $a1
	sbc [hl]                                         ; $46f2: $9e
	nop                                              ; $46f3: $00
	call c, $9cf4                                    ; $46f4: $dc $f4 $9c
	db $fc                                           ; $46f7: $fc
	rst FarCall                                          ; $46f8: $f7
	cp $dc                                           ; $46f9: $fe $dc
	inc c                                            ; $46fb: $0c
	sbc h                                            ; $46fc: $9c
	ld a, h                                          ; $46fd: $7c
	adc a                                            ; $46fe: $8f
	add c                                            ; $46ff: $81
	sbc $1c                                          ; $4700: $de $1c
	rst SubAFromDE                                          ; $4702: $df
	ld a, $7b                                        ; $4703: $3e $7b
	ld a, e                                          ; $4705: $7b
	db $dd                                           ; $4706: $dd
	inc b                                            ; $4707: $04
	rst SubAFromDE                                          ; $4708: $df
	ld [bc], a                                       ; $4709: $02
	sbc l                                            ; $470a: $9d
	ld bc, $dae3                                     ; $470b: $01 $e3 $da
	rra                                              ; $470e: $1f
	sbc [hl]                                         ; $470f: $9e
	cp a                                             ; $4710: $bf
	db $dd                                           ; $4711: $dd
	ld bc, $d178                                     ; $4712: $01 $78 $d1
	sbc [hl]                                         ; $4715: $9e
	rlca                                             ; $4716: $07
	sbc $ff                                          ; $4717: $de $ff
	sbc e                                            ; $4719: $9b
	ld a, b                                          ; $471a: $78
	sbc b                                            ; $471b: $98
	rst SubAFromBC                                          ; $471c: $e7
	rst JumpTable                                          ; $471d: $c7
	ld [hl], a                                       ; $471e: $77
	nop                                              ; $471f: $00
	sbc d                                            ; $4720: $9a
	add b                                            ; $4721: $80
	sbc b                                            ; $4722: $98
	db $fc                                           ; $4723: $fc
	ld a, [$7831]                                    ; $4724: $fa $31 $78
	adc [hl]                                         ; $4727: $8e
	sbc [hl]                                         ; $4728: $9e
	nop                                              ; $4729: $00
	ld a, d                                          ; $472a: $7a
	ld b, e                                          ; $472b: $43
	sbc [hl]                                         ; $472c: $9e
	ld a, b                                          ; $472d: $78
	ei                                               ; $472e: $fb
	ld a, a                                          ; $472f: $7f
	or $9d                                           ; $4730: $f6 $9d
	ld sp, hl                                        ; $4732: $f9
	add c                                            ; $4733: $81

jr_022_4734:
	ld [hl], a                                       ; $4734: $77
	dec a                                            ; $4735: $3d
	sbc l                                            ; $4736: $9d
	jp Jump_022_7003                                 ; $4737: $c3 $03 $70


	and e                                            ; $473a: $a3
	ld a, e                                          ; $473b: $7b
	or $7c                                           ; $473c: $f6 $7c
	sbc b                                            ; $473e: $98
	ld a, h                                          ; $473f: $7c
	sub a                                            ; $4740: $97
	sbc e                                            ; $4741: $9b
	call nz, $8fc6                                   ; $4742: $c4 $c6 $8f
	adc a                                            ; $4745: $8f
	db $dd                                           ; $4746: $dd
	ld a, a                                          ; $4747: $7f
	ld a, h                                          ; $4748: $7c
	call nz, $f0df                                   ; $4749: $c4 $df $f0
	rst SubAFromDE                                          ; $474c: $df
	rst $38                                          ; $474d: $ff
	sbc l                                            ; $474e: $9d
	jr c, jr_022_4781                                ; $474f: $38 $30

	ld a, b                                          ; $4751: $78
	ld c, b                                          ; $4752: $48
	ld a, [hl]                                       ; $4753: $7e
	jr nz, jr_022_4734                               ; $4754: $20 $de

jr_022_4756:
	rst $38                                          ; $4756: $ff
	sbc $f8                                          ; $4757: $de $f8
	ld a, e                                          ; $4759: $7b
	ld c, b                                          ; $475a: $48
	ld a, a                                          ; $475b: $7f
	dec a                                            ; $475c: $3d
	ld a, b                                          ; $475d: $78
	jp c, $2e7d                                      ; $475e: $da $7d $2e

	ld a, b                                          ; $4761: $78
	push af                                          ; $4762: $f5
	rst $38                                          ; $4763: $ff
	ld a, h                                          ; $4764: $7c
	ld a, e                                          ; $4765: $7b
	ld a, e                                          ; $4766: $7b
	ld h, e                                          ; $4767: $63
	adc d                                            ; $4768: $8a
	rst JumpTable                                          ; $4769: $c7
	rst SubAFromDE                                          ; $476a: $df
	ld l, a                                          ; $476b: $6f
	cp [hl]                                          ; $476c: $be
	db $fc                                           ; $476d: $fc
	ld bc, $fe83                                     ; $476e: $01 $83 $fe
	ld a, $3f                                        ; $4771: $3e $3f
	ldh a, [$c1]                                     ; $4773: $f0 $c1
	inc bc                                           ; $4775: $03
	rrca                                             ; $4776: $0f
	inc bc                                           ; $4777: $03
	ldh a, [$fc]                                     ; $4778: $f0 $fc
	ld a, a                                          ; $477a: $7f
	ld [hl], a                                       ; $477b: $77
	ld c, l                                          ; $477c: $4d
	cp l                                             ; $477d: $bd
	ld [hl], b                                       ; $477e: $70
	ld b, d                                          ; $477f: $42
	ld a, [hl]                                       ; $4780: $7e

jr_022_4781:
	ld e, b                                          ; $4781: $58
	sub [hl]                                         ; $4782: $96
	jp $e7df                                         ; $4783: $c3 $df $e7


	db $e3                                           ; $4786: $e3
	ld bc, $bf31                                     ; $4787: $01 $31 $bf
	ld c, $04                                        ; $478a: $0e $04
	ld a, d                                          ; $478c: $7a
	call $3f9b                                       ; $478d: $cd $9b $3f
	rrca                                             ; $4790: $0f
	ld b, e                                          ; $4791: $43
	di                                               ; $4792: $f3
	ld [hl], h                                       ; $4793: $74
	cp [hl]                                          ; $4794: $be
	adc c                                            ; $4795: $89
	ldh a, [$c3]                                     ; $4796: $f0 $c3
	rst AddAOntoHL                                          ; $4798: $ef
	cp a                                             ; $4799: $bf
	sbc a                                            ; $479a: $9f
	sbc b                                            ; $479b: $98
	ldh [$c0], a                                     ; $479c: $e0 $c0
	add b                                            ; $479e: $80
	ret nz                                           ; $479f: $c0

jr_022_47a0:
	ldh [$e0], a                                     ; $47a0: $e0 $e0
	pop af                                           ; $47a2: $f1
	db $dd                                           ; $47a3: $dd
	nop                                              ; $47a4: $00
	jr nc, jr_022_47a0                               ; $47a5: $30 $f9

	or $f8                                           ; $47a7: $f6 $f8
	db $f4                                           ; $47a9: $f4
	adc [hl]                                         ; $47aa: $8e
	inc bc                                           ; $47ab: $03
	ld a, d                                          ; $47ac: $7a
	ld c, c                                          ; $47ad: $49
	ld a, h                                          ; $47ae: $7c
	cpl                                              ; $47af: $2f
	sbc c                                            ; $47b0: $99
	ld a, e                                          ; $47b1: $7b
	ld sp, hl                                        ; $47b2: $f9
	and $c2                                          ; $47b3: $e6 $c2
	ldh [c], a                                       ; $47b5: $e2
	or $75                                           ; $47b6: $f6 $75
	jr z, jr_022_4756                                ; $47b8: $28 $9c

	jp $c383                                         ; $47ba: $c3 $83 $c3


	ld [hl], a                                       ; $47bd: $77
	db $d3                                           ; $47be: $d3
	add e                                            ; $47bf: $83
	rst $38                                          ; $47c0: $ff
	add hl, de                                       ; $47c1: $19
	dec a                                            ; $47c2: $3d
	db $fd                                           ; $47c3: $fd
	ld a, l                                          ; $47c4: $7d
	dec a                                            ; $47c5: $3d
	sbc l                                            ; $47c6: $9d
	ld c, l                                          ; $47c7: $4d
	dec h                                            ; $47c8: $25
	rst SubAFromBC                                          ; $47c9: $e7
	jp $8303                                         ; $47ca: $c3 $03 $83


	jp $f3e3                                         ; $47cd: $c3 $e3 $f3


	ei                                               ; $47d0: $fb
	sbc a                                            ; $47d1: $9f
	ccf                                              ; $47d2: $3f
	ld a, [hl]                                       ; $47d3: $7e
	nop                                              ; $47d4: $00
	ret nz                                           ; $47d5: $c0

	ldh a, [$e0]                                     ; $47d6: $f0 $e0
	jp $c0e0                                         ; $47d8: $c3 $e0 $c0


	add c                                            ; $47db: $81
	ld h, l                                          ; $47dc: $65
	add b                                            ; $47dd: $80
	sbc d                                            ; $47de: $9a
	rst SubAFromDE                                          ; $47df: $df
	rst SubAFromHL                                          ; $47e0: $d7
	rst GetHLinHL                                          ; $47e1: $cf
	adc $cd                                          ; $47e2: $ce $cd
	sbc $70                                          ; $47e4: $de $70
	adc b                                            ; $47e6: $88
	jr nc, jr_022_4821                               ; $47e7: $30 $38

	jr c, @+$3b                                      ; $47e9: $38 $39

	dec sp                                           ; $47eb: $3b
	ei                                               ; $47ec: $fb
	rst AddAOntoHL                                          ; $47ed: $ef
	rst $38                                          ; $47ee: $ff
	rst AddAOntoHL                                          ; $47ef: $ef
	cp a                                             ; $47f0: $bf
	ld a, a                                          ; $47f1: $7f
	cp a                                             ; $47f2: $bf
	ld a, a                                          ; $47f3: $7f
	inc c                                            ; $47f4: $0c
	jr @+$12                                         ; $47f5: $18 $10

	jr nc, jr_022_4859                               ; $47f7: $30 $60

	ret nz                                           ; $47f9: $c0

	ret nz                                           ; $47fa: $c0

	add b                                            ; $47fb: $80
	db $fd                                           ; $47fc: $fd
	db $fd                                           ; $47fd: $fd
	db $db                                           ; $47fe: $db
	rst $38                                          ; $47ff: $ff
	sbc l                                            ; $4800: $9d
	inc bc                                           ; $4801: $03
	ld [bc], a                                       ; $4802: $02
	ei                                               ; $4803: $fb
	sbc [hl]                                         ; $4804: $9e
	ld a, l                                          ; $4805: $7d
	sbc $f9                                          ; $4806: $de $f9
	add b                                            ; $4808: $80
	pop af                                           ; $4809: $f1
	pop hl                                           ; $480a: $e1
	jp $8387                                         ; $480b: $c3 $87 $83


	rlca                                             ; $480e: $07
	ld b, $06                                        ; $480f: $06 $06
	ld c, $1e                                        ; $4811: $0e $1e
	inc a                                            ; $4813: $3c
	ld a, b                                          ; $4814: $78
	rst GetHLinHL                                          ; $4815: $cf
	cp a                                             ; $4816: $bf
	rst GetHLinHL                                          ; $4817: $cf
	db $ed                                           ; $4818: $ed
	db $e4                                           ; $4819: $e4
	push hl                                          ; $481a: $e5
	ldh [c], a                                       ; $481b: $e2
	ldh [c], a                                       ; $481c: $e2
	rst $38                                          ; $481d: $ff
	ld a, [hl]                                       ; $481e: $7e
	dec a                                            ; $481f: $3d
	dec e                                            ; $4820: $1d

jr_022_4821:
	dec e                                            ; $4821: $1d
	inc e                                            ; $4822: $1c
	ld e, $1e                                        ; $4823: $1e $1e
	cp $f8                                           ; $4825: $fe $f8
	ld e, [hl]                                       ; $4827: $5e
	sbc [hl]                                         ; $4828: $9e
	ld a, a                                          ; $4829: $7f
	sbc $2b                                          ; $482a: $de $2b
	sbc d                                            ; $482c: $9a
	ld e, e                                          ; $482d: $5b
	rst $38                                          ; $482e: $ff
	rst GetHLinHL                                          ; $482f: $cf
	ld l, c                                          ; $4830: $69
	jr z, @-$21                                      ; $4831: $28 $dd

	inc l                                            ; $4833: $2c
	add b                                            ; $4834: $80
	dec hl                                           ; $4835: $2b
	daa                                              ; $4836: $27
	ld h, l                                          ; $4837: $65
	db $e3                                           ; $4838: $e3
	ldh [c], a                                       ; $4839: $e2
	ldh a, [$fc]                                     ; $483a: $f0 $fc
	rst $38                                          ; $483c: $ff
	call c, $9edc                                    ; $483d: $dc $dc $9e
	ld e, $1f                                        ; $4840: $1e $1f
	rrca                                             ; $4842: $0f
	inc bc                                           ; $4843: $03
	nop                                              ; $4844: $00
	rlca                                             ; $4845: $07
	add e                                            ; $4846: $83
	jp $f1e1                                         ; $4847: $c3 $e1 $f1


	ld hl, sp+$7c                                    ; $484a: $f8 $7c
	ld a, [hl]                                       ; $484c: $7e
	ld hl, sp+$7c                                    ; $484d: $f8 $7c
	inc a                                            ; $484f: $3c
	ld e, $0e                                        ; $4850: $1e $0e
	rlca                                             ; $4852: $07
	add e                                            ; $4853: $83
	sub l                                            ; $4854: $95
	add c                                            ; $4855: $81
	sub c                                            ; $4856: $91
	ret                                              ; $4857: $c9


	rst SubAFromBC                                          ; $4858: $e7

jr_022_4859:
	pop hl                                           ; $4859: $e1
	ldh a, [$f8]                                     ; $485a: $f0 $f8
	ld hl, sp-$04                                    ; $485c: $f8 $fc
	ld a, a                                          ; $485e: $7f
	ld a, e                                          ; $485f: $7b
	rra                                              ; $4860: $1f
	ld [hl], l                                       ; $4861: $75
	inc e                                            ; $4862: $1c
	sbc c                                            ; $4863: $99
	ld c, $3e                                        ; $4864: $0e $3e
	ld a, h                                          ; $4866: $7c
	ld hl, sp+$38                                    ; $4867: $f8 $38
	rlca                                             ; $4869: $07
	ld h, h                                          ; $486a: $64
	ldh [$df], a                                     ; $486b: $e0 $df
	ldh [hDisp1_BGP], a                                     ; $486d: $e0 $92
	jp z, $0b8d                                      ; $486f: $ca $8d $0b

	rla                                              ; $4872: $17
	cpl                                              ; $4873: $2f
	ccf                                              ; $4874: $3f

Jump_022_4875:
	ld a, a                                          ; $4875: $7f
	rst $38                                          ; $4876: $ff
	ccf                                              ; $4877: $3f
	ld a, [hl]                                       ; $4878: $7e
	db $fc                                           ; $4879: $fc
	ld hl, sp-$10                                    ; $487a: $f8 $f0
	ld a, e                                          ; $487c: $7b
	inc c                                            ; $487d: $0c
	ld b, c                                          ; $487e: $41
	add b                                            ; $487f: $80
	rst SubAFromDE                                          ; $4880: $df
	cp $7e                                           ; $4881: $fe $7e
	rst AddAOntoHL                                          ; $4883: $ef
	sbc [hl]                                         ; $4884: $9e
	ldh [$7a], a                                     ; $4885: $e0 $7a
	ld hl, $01df                                     ; $4887: $21 $df $01
	ld a, [hl]                                       ; $488a: $7e
	db $fd                                           ; $488b: $fd
	sbc c                                            ; $488c: $99
	rra                                              ; $488d: $1f
	ld a, a                                          ; $488e: $7f
	rst $38                                          ; $488f: $ff
	rlca                                             ; $4890: $07
	rrca                                             ; $4891: $0f
	inc c                                            ; $4892: $0c
	db $fc                                           ; $4893: $fc
	ld a, a                                          ; $4894: $7f
	db $d3                                           ; $4895: $d3
	ld [hl], e                                       ; $4896: $73
	ld bc, $667e                                     ; $4897: $01 $7e $66
	sbc b                                            ; $489a: $98
	add e                                            ; $489b: $83
	inc b                                            ; $489c: $04
	inc b                                            ; $489d: $04
	inc c                                            ; $489e: $0c
	dec c                                            ; $489f: $0d
	add hl, de                                       ; $48a0: $19
	ld sp, $c07b                                     ; $48a1: $31 $7b $c0
	rst SubAFromDE                                          ; $48a4: $df
	db $fc                                           ; $48a5: $fc
	adc h                                            ; $48a6: $8c
	db $fd                                           ; $48a7: $fd
	ld sp, hl                                        ; $48a8: $f9
	pop af                                           ; $48a9: $f1
	ld sp, hl                                        ; $48aa: $f9
	cp l                                             ; $48ab: $bd
	db $dd                                           ; $48ac: $dd
	xor h                                            ; $48ad: $ac
	ld d, $0a                                        ; $48ae: $16 $0a
	rla                                              ; $48b0: $17
	dec bc                                           ; $48b1: $0b
	xor $f6                                          ; $48b2: $ee $f6
	add [hl]                                         ; $48b4: $86
	add a                                            ; $48b5: $87
	add e                                            ; $48b6: $83
	add e                                            ; $48b7: $83
	ld bc, $7101                                     ; $48b8: $01 $01 $71
	pop hl                                           ; $48bb: $e1
	ld [hl], a                                       ; $48bc: $77
	ld h, a                                          ; $48bd: $67
	halt                                             ; $48be: $76
	sub b                                            ; $48bf: $90
	ld a, h                                          ; $48c0: $7c
	and $64                                          ; $48c1: $e6 $64
	pop de                                           ; $48c3: $d1
	ld h, e                                          ; $48c4: $63
	and b                                            ; $48c5: $a0
	ld [hl], h                                       ; $48c6: $74
	sub $dd                                          ; $48c7: $d6 $dd
	rst $38                                          ; $48c9: $ff
	ld [hl], h                                       ; $48ca: $74
	add h                                            ; $48cb: $84
	ld [hl], d                                       ; $48cc: $72
	ld c, $9a                                        ; $48cd: $0e $9a
	rrca                                             ; $48cf: $0f
	adc a                                            ; $48d0: $8f
	rst GetHLinHL                                          ; $48d1: $cf
	rst SubAFromBC                                          ; $48d2: $e7
	rst FarCall                                          ; $48d3: $f7
	ld a, e                                          ; $48d4: $7b
	ld h, [hl]                                       ; $48d5: $66
	sbc b                                            ; $48d6: $98
	ldh a, [rSVBK]                                   ; $48d7: $f0 $70
	jr nc, jr_022_48f3                               ; $48d9: $30 $18

	ld [rRAMG], sp                                   ; $48db: $08 $00 $00
	dec de                                           ; $48de: $1b
	nop                                              ; $48df: $00
	sub a                                            ; $48e0: $97
	ld h, l                                          ; $48e1: $65
	ld d, l                                          ; $48e2: $55
	ld d, l                                          ; $48e3: $55
	ld d, [hl]                                       ; $48e4: $56
	ld [hl], a                                       ; $48e5: $77
	halt                                             ; $48e6: $76
	ld d, l                                          ; $48e7: $55
	ld d, l                                          ; $48e8: $55
	sbc $77                                          ; $48e9: $de $77
	sbc d                                            ; $48eb: $9a
	ld b, l                                          ; $48ec: $45
	ld d, l                                          ; $48ed: $55
	ld b, h                                          ; $48ee: $44
	ld b, a                                          ; $48ef: $47
	ld b, h                                          ; $48f0: $44
	ld a, e                                          ; $48f1: $7b
	ei                                               ; $48f2: $fb

jr_022_48f3:
	sbc $44                                          ; $48f3: $de $44
	ld c, e                                          ; $48f5: $4b
	ei                                               ; $48f6: $fb
	call nc, $c244                                   ; $48f7: $d4 $44 $c2
	add e                                            ; $48fa: $83
	add h                                            ; $48fb: $84
	rst $38                                          ; $48fc: $ff
	cp h                                             ; $48fd: $bc
	sbc $7f                                          ; $48fe: $de $7f
	db $fc                                           ; $4900: $fc
	db $e4                                           ; $4901: $e4
	db $e3                                           ; $4902: $e3
	rst $38                                          ; $4903: $ff
	ld hl, sp-$44                                    ; $4904: $f8 $bc
	sbc $47                                          ; $4906: $de $47
	adc h                                            ; $4908: $8c
	and h                                            ; $4909: $a4
	db $e3                                           ; $490a: $e3
	db $fc                                           ; $490b: $fc
	ccf                                              ; $490c: $3f
	rst $38                                          ; $490d: $ff
	push af                                          ; $490e: $f5
	cp c                                             ; $490f: $b9
	pop hl                                           ; $4910: $e1
	pop hl                                           ; $4911: $e1
	rst AddAOntoHL                                          ; $4912: $ef
	ei                                               ; $4913: $fb
	ld a, $3e                                        ; $4914: $3e $3e
	ld [hl], l                                       ; $4916: $75
	ld a, e                                          ; $4917: $7b
	ld hl, sp-$63                                    ; $4918: $f8 $9d
	ldh [$f8], a                                     ; $491a: $e0 $f8
	sbc $ff                                          ; $491c: $de $ff
	sbc c                                            ; $491e: $99
	rst AddAOntoHL                                          ; $491f: $ef
	db $dd                                           ; $4920: $dd
	ldh a, [$fe]                                     ; $4921: $f0 $fe
	rst $38                                          ; $4923: $ff
	ld a, b                                          ; $4924: $78
	ld [hl], e                                       ; $4925: $73
	ld hl, sp-$6c                                    ; $4926: $f8 $94
	sbc [hl]                                         ; $4928: $9e
	rrca                                             ; $4929: $0f
	rst $38                                          ; $492a: $ff
	rst $38                                          ; $492b: $ff
	rst FarCall                                          ; $492c: $f7
	call $9bcb                                       ; $492d: $cd $cb $9b
	rst $38                                          ; $4930: $ff
	cp a                                             ; $4931: $bf
	ld a, a                                          ; $4932: $7f
	ld [hl], e                                       ; $4933: $73
	ld hl, sp-$80                                    ; $4934: $f8 $80
	pop af                                           ; $4936: $f1
	cpl                                              ; $4937: $2f
	rst $38                                          ; $4938: $ff
	inc bc                                           ; $4939: $03
	rst $38                                          ; $493a: $ff
	rst $38                                          ; $493b: $ff
	ccf                                              ; $493c: $3f
	ld a, a                                          ; $493d: $7f
	rst $38                                          ; $493e: $ff
	rst $38                                          ; $493f: $ff
	nop                                              ; $4940: $00
	inc bc                                           ; $4941: $03
	rst $38                                          ; $4942: $ff
	cp $3c                                           ; $4943: $fe $3c
	ld a, b                                          ; $4945: $78
	rst $38                                          ; $4946: $ff
	rst SubAFromBC                                          ; $4947: $e7
	rst $38                                          ; $4948: $ff
	or l                                             ; $4949: $b5
	rst JumpTable                                          ; $494a: $c7
	rst GetHLinHL                                          ; $494b: $cf
	cp a                                             ; $494c: $bf
	rst $38                                          ; $494d: $ff
	cp a                                             ; $494e: $bf
	adc a                                            ; $494f: $8f
	rst JumpTable                                          ; $4950: $c7
	add l                                            ; $4951: $85
	rst JumpTable                                          ; $4952: $c7
	rst JumpTable                                          ; $4953: $c7
	add b                                            ; $4954: $80
	add h                                            ; $4955: $84
	ldh [$b9], a                                     ; $4956: $e0 $b9
	adc a                                            ; $4958: $8f
	rst $38                                          ; $4959: $ff
	di                                               ; $495a: $f3
	rst $38                                          ; $495b: $ff
	rst $38                                          ; $495c: $ff
	rst GetHLinHL                                          ; $495d: $cf
	rst GetHLinHL                                          ; $495e: $cf
	rst $38                                          ; $495f: $ff
	db $fd                                           ; $4960: $fd
	rrca                                             ; $4961: $0f
	di                                               ; $4962: $f3
	db $fc                                           ; $4963: $fc

jr_022_4964:
	inc a                                            ; $4964: $3c
	add hl, bc                                       ; $4965: $09
	rrca                                             ; $4966: $0f
	ccf                                              ; $4967: $3f
	db $fd                                           ; $4968: $fd
	ld a, [hl]                                       ; $4969: $7e
	ld [hl], a                                       ; $496a: $77
	ld sp, hl                                        ; $496b: $f9
	di                                               ; $496c: $f3
	cp $fe                                           ; $496d: $fe $fe
	sbc h                                            ; $496f: $9c
	ld hl, sp+$6b                                    ; $4970: $f8 $6b
	ld hl, sp-$80                                    ; $4972: $f8 $80
	ret c                                            ; $4974: $d8

	rst $38                                          ; $4975: $ff
	ld hl, sp-$03                                    ; $4976: $f8 $fd
	cp a                                             ; $4978: $bf
	ld a, $ff                                        ; $4979: $3e $ff
	rst $38                                          ; $497b: $ff
	rst SubAFromDE                                          ; $497c: $df
	db $10                                           ; $497d: $10
	ld hl, sp+$0d                                    ; $497e: $f8 $0d
	inc a                                            ; $4980: $3c
	jr nz, jr_022_4964                               ; $4981: $20 $e1

	add [hl]                                         ; $4983: $86
	sbc [hl]                                         ; $4984: $9e
	ccf                                              ; $4985: $3f
	ld l, a                                          ; $4986: $6f
	rst AddAOntoHL                                          ; $4987: $ef
	db $fd                                           ; $4988: $fd
	pop af                                           ; $4989: $f1
	db $e3                                           ; $498a: $e3
	rst $38                                          ; $498b: $ff
	cp a                                             ; $498c: $bf
	ccf                                              ; $498d: $3f
	ld h, c                                          ; $498e: $61
	db $eb                                           ; $498f: $eb
	db $fd                                           ; $4990: $fd
	or c                                             ; $4991: $b1
	inc bc                                           ; $4992: $03
	sbc c                                            ; $4993: $99
	ccf                                              ; $4994: $3f
	cp a                                             ; $4995: $bf
	rst $38                                          ; $4996: $ff
	cp b                                             ; $4997: $b8
	db $db                                           ; $4998: $db
	db $e3                                           ; $4999: $e3
	ld a, e                                          ; $499a: $7b
	and c                                            ; $499b: $a1
	adc d                                            ; $499c: $8a
	rst GetHLinHL                                          ; $499d: $cf
	dec c                                            ; $499e: $0d
	cp b                                             ; $499f: $b8
	db $db                                           ; $49a0: $db
	ld h, e                                          ; $49a1: $63
	ld a, a                                          ; $49a2: $7f
	rst $38                                          ; $49a3: $ff
	rrca                                             ; $49a4: $0f
	rrca                                             ; $49a5: $0f
	rst $38                                          ; $49a6: $ff
	cp a                                             ; $49a7: $bf
	rst $38                                          ; $49a8: $ff
	ld sp, hl                                        ; $49a9: $f9
	ei                                               ; $49aa: $fb
	rst $38                                          ; $49ab: $ff
	adc l                                            ; $49ac: $8d
	ei                                               ; $49ad: $fb
	ld a, $bf                                        ; $49ae: $3e $bf
	rst $38                                          ; $49b0: $ff
	add hl, sp                                       ; $49b1: $39
	ld [hl], a                                       ; $49b2: $77
	ld hl, sp+$7f                                    ; $49b3: $f8 $7f
	add e                                            ; $49b5: $83
	add b                                            ; $49b6: $80
	rst $38                                          ; $49b7: $ff
	ld a, a                                          ; $49b8: $7f
	ld [hl], e                                       ; $49b9: $73
	ld a, a                                          ; $49ba: $7f
	ld a, a                                          ; $49bb: $7f
	rst $38                                          ; $49bc: $ff
	ld [hl], e                                       ; $49bd: $73
	ccf                                              ; $49be: $3f
	rst $38                                          ; $49bf: $ff
	ld a, h                                          ; $49c0: $7c
	ld [hl], e                                       ; $49c1: $73
	ld b, a                                          ; $49c2: $47
	ld h, e                                          ; $49c3: $63
	ldh a, [$ef]                                     ; $49c4: $f0 $ef
	rst GetHLinHL                                          ; $49c6: $cf
	jp c, $fffc                                      ; $49c7: $da $fc $ff

	cp $fb                                           ; $49ca: $fe $fb
	rst $38                                          ; $49cc: $ff
	ld h, c                                          ; $49cd: $61
	jp $fcda                                         ; $49ce: $c3 $da $fc


	add a                                            ; $49d1: $87
	adc [hl]                                         ; $49d2: $8e
	sbc e                                            ; $49d3: $9b
	rst $38                                          ; $49d4: $ff
	rst $38                                          ; $49d5: $ff
	ld a, a                                          ; $49d6: $7f
	ld b, l                                          ; $49d7: $45
	ld a, a                                          ; $49d8: $7f
	db $fd                                           ; $49d9: $fd
	add a                                            ; $49da: $87
	rst AddAOntoHL                                          ; $49db: $ef
	rst SubAFromDE                                          ; $49dc: $df
	rst $38                                          ; $49dd: $ff
	ld sp, hl                                        ; $49de: $f9
	ldh a, [$fd]                                     ; $49df: $f0 $fd
	cp $fe                                           ; $49e1: $fe $fe
	ldh [$df], a                                     ; $49e3: $e0 $df
	rst $38                                          ; $49e5: $ff
	db $fc                                           ; $49e6: $fc
	rst $38                                          ; $49e7: $ff
	sbc a                                            ; $49e8: $9f
	ld a, a                                          ; $49e9: $7f
	db $fc                                           ; $49ea: $fc
	db $fc                                           ; $49eb: $fc
	rst JumpTable                                          ; $49ec: $c7
	adc a                                            ; $49ed: $8f
	ld hl, sp-$10                                    ; $49ee: $f8 $f0
	adc [hl]                                         ; $49f0: $8e
	ld b, a                                          ; $49f1: $47
	call z, $f87b                                    ; $49f2: $cc $7b $f8
	sbc $ff                                          ; $49f5: $de $ff
	sbc d                                            ; $49f7: $9a
	di                                               ; $49f8: $f3
	ld l, a                                          ; $49f9: $6f
	rst $38                                          ; $49fa: $ff
	ccf                                              ; $49fb: $3f
	rra                                              ; $49fc: $1f
	ld h, a                                          ; $49fd: $67
	ld hl, sp-$6c                                    ; $49fe: $f8 $94
	ld a, a                                          ; $4a00: $7f
	cp $cd                                           ; $4a01: $fe $cd
	adc [hl]                                         ; $4a03: $8e
	inc c                                            ; $4a04: $0c
	ld a, [hl]                                       ; $4a05: $7e
	rst GetHLinHL                                          ; $4a06: $cf
	rst GetHLinHL                                          ; $4a07: $cf
	ld a, a                                          ; $4a08: $7f
	ld a, [hl]                                       ; $4a09: $7e
	ld c, l                                          ; $4a0a: $4d
	ld [hl], e                                       ; $4a0b: $73
	ld hl, sp-$69                                    ; $4a0c: $f8 $97
	cp [hl]                                          ; $4a0e: $be
	rst $38                                          ; $4a0f: $ff
	cp a                                             ; $4a10: $bf
	rst SubAFromDE                                          ; $4a11: $df
	rst SubAFromDE                                          ; $4a12: $df
	rst AddAOntoHL                                          ; $4a13: $ef
	db $fc                                           ; $4a14: $fc
	rst $38                                          ; $4a15: $ff
	ld h, a                                          ; $4a16: $67
	ld hl, sp+$7f                                    ; $4a17: $f8 $7f
	sbc c                                            ; $4a19: $99
	sbc c                                            ; $4a1a: $99
	cp $f6                                           ; $4a1b: $fe $f6
	halt                                             ; $4a1d: $76
	ld h, a                                          ; $4a1e: $67
	ld e, a                                          ; $4a1f: $5f
	ld a, a                                          ; $4a20: $7f
	ld h, a                                          ; $4a21: $67
	ld hl, sp-$69                                    ; $4a22: $f8 $97
	rst AddAOntoHL                                          ; $4a24: $ef
	ldh [$9f], a                                     ; $4a25: $e0 $9f
	ld a, a                                          ; $4a27: $7f
	di                                               ; $4a28: $f3
	rst JumpTable                                          ; $4a29: $c7
	adc [hl]                                         ; $4a2a: $8e
	ld [$f87b], sp                                   ; $4a2b: $08 $7b $f8
	sbc l                                            ; $4a2e: $9d
	rrca                                             ; $4a2f: $0f
	ld [hl], e                                       ; $4a30: $73
	ld a, e                                          ; $4a31: $7b
	ld hl, sp-$01                                    ; $4a32: $f8 $ff
	ld a, a                                          ; $4a34: $7f
	ld [hl], h                                       ; $4a35: $74
	sbc l                                            ; $4a36: $9d
	jr c, jr_022_4a69                                ; $4a37: $38 $30

	db $fd                                           ; $4a39: $fd
	ld l, a                                          ; $4a3a: $6f
	ld hl, sp-$69                                    ; $4a3b: $f8 $97
	and e                                            ; $4a3d: $a3
	jp $fffc                                         ; $4a3e: $c3 $fc $ff


	ld sp, hl                                        ; $4a41: $f9
	ld a, c                                          ; $4a42: $79
	ld h, d                                          ; $4a43: $62
	ld h, e                                          ; $4a44: $63
	ld [hl], a                                       ; $4a45: $77
	ld hl, sp-$62                                    ; $4a46: $f8 $9e
	pop af                                           ; $4a48: $f1
	ld a, e                                          ; $4a49: $7b
	ld hl, sp-$66                                    ; $4a4a: $f8 $9a
	dec h                                            ; $4a4c: $25
	ccf                                              ; $4a4d: $3f
	rst $38                                          ; $4a4e: $ff
	ld l, $18                                        ; $4a4f: $2e $18
	ld a, e                                          ; $4a51: $7b
	rst SubAFromBC                                          ; $4a52: $e7
	ld h, a                                          ; $4a53: $67
	ld hl, sp-$65                                    ; $4a54: $f8 $9b
	rst GetHLinHL                                          ; $4a56: $cf
	db $fd                                           ; $4a57: $fd
	ei                                               ; $4a58: $fb
	rst FarCall                                          ; $4a59: $f7
	ld a, d                                          ; $4a5a: $7a
	cp [hl]                                          ; $4a5b: $be
	sub c                                            ; $4a5c: $91
	sbc $ce                                          ; $4a5d: $de $ce
	ldh a, [$f0]                                     ; $4a5f: $f0 $f0
	add b                                            ; $4a61: $80
	inc c                                            ; $4a62: $0c
	ret nz                                           ; $4a63: $c0

	cpl                                              ; $4a64: $2f
	sbc $fc                                          ; $4a65: $de $fc
	sbc h                                            ; $4a67: $9c
	ret nz                                           ; $4a68: $c0

jr_022_4a69:
	add b                                            ; $4a69: $80
	add b                                            ; $4a6a: $80
	cp $67                                           ; $4a6b: $fe $67
	ld hl, sp-$7b                                    ; $4a6d: $f8 $85
	rst AddAOntoHL                                          ; $4a6f: $ef
	rst SubAFromBC                                          ; $4a70: $e7
	rst $38                                          ; $4a71: $ff
	cp $fe                                           ; $4a72: $fe $fe
	ld sp, hl                                        ; $4a74: $f9
	ld h, c                                          ; $4a75: $61
	ld [hl], e                                       ; $4a76: $73
	rrca                                             ; $4a77: $0f
	rst SubAFromBC                                          ; $4a78: $e7
	ld a, a                                          ; $4a79: $7f
	ld b, $00                                        ; $4a7a: $06 $00
	pop bc                                           ; $4a7c: $c1
	ld h, c                                          ; $4a7d: $61
	nop                                              ; $4a7e: $00
	ccf                                              ; $4a7f: $3f
	daa                                              ; $4a80: $27
	ld [bc], a                                       ; $4a81: $02
	inc bc                                           ; $4a82: $03
	ld b, $02                                        ; $4a83: $06 $02
	nop                                              ; $4a85: $00
	nop                                              ; $4a86: $00
	jr c, jr_022_4aa9                                ; $4a87: $38 $20

	ld l, a                                          ; $4a89: $6f
	ld hl, sp-$69                                    ; $4a8a: $f8 $97
	ld a, a                                          ; $4a8c: $7f
	rst SubAFromDE                                          ; $4a8d: $df
	ld a, l                                          ; $4a8e: $7d
	ld a, a                                          ; $4a8f: $7f
	ld e, a                                          ; $4a90: $5f
	call $c3e1                                       ; $4a91: $cd $e1 $c3
	ld [hl], a                                       ; $4a94: $77
	ld hl, sp-$6d                                    ; $4a95: $f8 $93
	ld e, [hl]                                       ; $4a97: $5e
	call z, $c3e0                                    ; $4a98: $cc $e0 $c3
	rst $38                                          ; $4a9b: $ff
	cp a                                             ; $4a9c: $bf
	cp b                                             ; $4a9d: $b8
	call z, $3c5c                                    ; $4a9e: $cc $5c $3c
	inc h                                            ; $4aa1: $24
	nop                                              ; $4aa2: $00
	ld h, a                                          ; $4aa3: $67
	ld hl, sp+$7a                                    ; $4aa4: $f8 $7a
	ld [hl], h                                       ; $4aa6: $74
	ld a, [hl]                                       ; $4aa7: $7e
	ld d, [hl]                                       ; $4aa8: $56

jr_022_4aa9:
	ld a, [hl]                                       ; $4aa9: $7e
	and c                                            ; $4aaa: $a1
	sub e                                            ; $4aab: $93
	db $dd                                           ; $4aac: $dd
	cp a                                             ; $4aad: $bf
	db $fc                                           ; $4aae: $fc
	cp h                                             ; $4aaf: $bc
	db $fc                                           ; $4ab0: $fc
	ld [hl], a                                       ; $4ab1: $77
	ccf                                              ; $4ab2: $3f
	rst SubAFromHL                                          ; $4ab3: $d7
	push bc                                          ; $4ab4: $c5
	adc h                                            ; $4ab5: $8c
	inc bc                                           ; $4ab6: $03
	ld c, $de                                        ; $4ab7: $0e $de
	ld e, $9c                                        ; $4ab9: $1e $9c
	jr jr_022_4aed                                   ; $4abb: $18 $30

	add h                                            ; $4abd: $84
	ld l, e                                          ; $4abe: $6b
	ld hl, sp+$7f                                    ; $4abf: $f8 $7f
	db $e3                                           ; $4ac1: $e3
	sbc c                                            ; $4ac2: $99
	add $cd                                          ; $4ac3: $c6 $cd
	ld e, [hl]                                       ; $4ac5: $5e
	ld a, $be                                        ; $4ac6: $3e $be
	ld a, [$f86b]                                    ; $4ac8: $fa $6b $f8
	sbc c                                            ; $4acb: $99
	cp d                                             ; $4acc: $ba
	pop af                                           ; $4acd: $f1
	db $e3                                           ; $4ace: $e3
	ld h, e                                          ; $4acf: $63
	ld b, c                                          ; $4ad0: $41
	ld bc, $9cfe                                     ; $4ad1: $01 $fe $9c
	ld sp, $2303                                     ; $4ad4: $31 $03 $23
	ld [hl], e                                       ; $4ad7: $73
	ld hl, sp-$63                                    ; $4ad8: $f8 $9d
	sbc [hl]                                         ; $4ada: $9e
	rst SubAFromDE                                          ; $4adb: $df
	ld a, e                                          ; $4adc: $7b
	add b                                            ; $4add: $80
	sbc h                                            ; $4ade: $9c
	ld a, $25                                        ; $4adf: $3e $25
	pop bc                                           ; $4ae1: $c1
	ld h, a                                          ; $4ae2: $67
	ld hl, sp-$69                                    ; $4ae3: $f8 $97
	jp $87c7                                         ; $4ae5: $c3 $c7 $87


	add $80                                          ; $4ae8: $c6 $80
	ld bc, $0402                                     ; $4aea: $01 $02 $04

jr_022_4aed:
	ld l, a                                          ; $4aed: $6f
	ld hl, sp-$6b                                    ; $4aee: $f8 $95
	inc bc                                           ; $4af0: $03
	rlca                                             ; $4af1: $07
	rst AddAOntoHL                                          ; $4af2: $ef
	rst $38                                          ; $4af3: $ff
	rst $38                                          ; $4af4: $ff
	ld a, e                                          ; $4af5: $7b
	add hl, bc                                       ; $4af6: $09
	ret c                                            ; $4af7: $d8

	ret c                                            ; $4af8: $d8

	db $ec                                           ; $4af9: $ec
	ld h, a                                          ; $4afa: $67
	ld hl, sp-$69                                    ; $4afb: $f8 $97
	xor $ce                                          ; $4afd: $ee $ce
	ld b, $3f                                        ; $4aff: $06 $3f
	call z, $ff78                                    ; $4b01: $cc $78 $ff
	ld a, b                                          ; $4b04: $78
	ld [hl], a                                       ; $4b05: $77
	ld hl, sp-$6d                                    ; $4b06: $f8 $93
	rst $38                                          ; $4b08: $ff
	add a                                            ; $4b09: $87
	ld bc, rIE                                     ; $4b0a: $01 $ff $ff
	rst SubAFromBC                                          ; $4b0d: $e7
	rst GetHLinHL                                          ; $4b0e: $cf
	ld [hl], a                                       ; $4b0f: $77
	ei                                               ; $4b10: $fb
	di                                               ; $4b11: $f3
	di                                               ; $4b12: $f3
	ld a, a                                          ; $4b13: $7f
	ld h, a                                          ; $4b14: $67
	ld hl, sp-$63                                    ; $4b15: $f8 $9d
	ld a, h                                          ; $4b17: $7c
	ccf                                              ; $4b18: $3f
	ld a, d                                          ; $4b19: $7a
	ld d, e                                          ; $4b1a: $53
	add b                                            ; $4b1b: $80
	ld l, a                                          ; $4b1c: $6f
	rst FarCall                                          ; $4b1d: $f7
	ld l, d                                          ; $4b1e: $6a
	ld a, h                                          ; $4b1f: $7c
	ccf                                              ; $4b20: $3f
	ld [hl], b                                       ; $4b21: $70
	ld h, b                                          ; $4b22: $60
	ret nz                                           ; $4b23: $c0

	ret nc                                           ; $4b24: $d0

	ret z                                            ; $4b25: $c8

	push de                                          ; $4b26: $d5
	ld [$1713], sp                                   ; $4b27: $08 $13 $17
	ld l, $3d                                        ; $4b2a: $2e $3d
	ld e, d                                          ; $4b2c: $5a
	ld [hl], l                                       ; $4b2d: $75
	ld h, e                                          ; $4b2e: $63
	rrca                                             ; $4b2f: $0f
	inc e                                            ; $4b30: $1c
	jr jr_022_4b64                                   ; $4b31: $18 $31

	inc hl                                           ; $4b33: $23
	ld h, a                                          ; $4b34: $67
	ld c, a                                          ; $4b35: $4f
	ld e, l                                          ; $4b36: $5d
	adc a                                            ; $4b37: $8f
	adc d                                            ; $4b38: $8a
	sub d                                            ; $4b39: $92
	or d                                             ; $4b3a: $b2
	adc b                                            ; $4b3b: $88
	and [hl]                                         ; $4b3c: $a6
	db $ed                                           ; $4b3d: $ed
	db $ed                                           ; $4b3e: $ed
	set 6, e                                         ; $4b3f: $cb $f3
	or $ee                                           ; $4b41: $f6 $ee
	adc $da                                          ; $4b43: $ce $da
	sub e                                            ; $4b45: $93
	sub e                                            ; $4b46: $93
	or a                                             ; $4b47: $b7
	rst $38                                          ; $4b48: $ff
	ret nz                                           ; $4b49: $c0

	add hl, de                                       ; $4b4a: $19
	ldh [$c0], a                                     ; $4b4b: $e0 $c0
	add c                                            ; $4b4d: $81
	ld bc, $0701                                     ; $4b4e: $01 $01 $07
	ccf                                              ; $4b51: $3f
	rst $38                                          ; $4b52: $ff
	ld [hl], e                                       ; $4b53: $73
	ld hl, sp-$21                                    ; $4b54: $f8 $df
	ld bc, $67fb                                     ; $4b56: $01 $fb $67
	ld hl, sp-$64                                    ; $4b59: $f8 $9c
	ld [hl], b                                       ; $4b5b: $70
	cp b                                             ; $4b5c: $b8
	rst $38                                          ; $4b5d: $ff
	ld a, c                                          ; $4b5e: $79
	pop hl                                           ; $4b5f: $e1
	sub b                                            ; $4b60: $90
	cp [hl]                                          ; $4b61: $be
	push de                                          ; $4b62: $d5
	rst GetHLinHL                                          ; $4b63: $cf

jr_022_4b64:
	rst SubAFromBC                                          ; $4b64: $e7
	cp $41                                           ; $4b65: $fe $41
	add b                                            ; $4b67: $80
	nop                                              ; $4b68: $00
	ld b, c                                          ; $4b69: $41
	ld a, [hl+]                                      ; $4b6a: $2a
	xor d                                            ; $4b6b: $aa
	pop bc                                           ; $4b6c: $c1
	db $e3                                           ; $4b6d: $e3
	ld a, a                                          ; $4b6e: $7f
	ld a, $7b                                        ; $4b6f: $3e $7b
	ldh [c], a                                       ; $4b71: $e2
	sbc e                                            ; $4b72: $9b
	ld d, l                                          ; $4b73: $55
	ld a, $9c                                        ; $4b74: $3e $9c
	ld b, c                                          ; $4b76: $41
	ld [hl], a                                       ; $4b77: $77
	ld hl, sp-$75                                    ; $4b78: $f8 $8b
	db $db                                           ; $4b7a: $db
	sbc l                                            ; $4b7b: $9d
	ld e, h                                          ; $4b7c: $5c
	ld a, [hl]                                       ; $4b7d: $7e
	ld a, a                                          ; $4b7e: $7f
	scf                                              ; $4b7f: $37
	scf                                              ; $4b80: $37
	rla                                              ; $4b81: $17
	and a                                            ; $4b82: $a7
	rst SubAFromBC                                          ; $4b83: $e7
	ld h, a                                          ; $4b84: $67
	ld b, l                                          ; $4b85: $45
	ld b, h                                          ; $4b86: $44
	inc l                                            ; $4b87: $2c
	inc l                                            ; $4b88: $2c
	inc e                                            ; $4b89: $1c
	rla                                              ; $4b8a: $17
	rrca                                             ; $4b8b: $0f
	dec b                                            ; $4b8c: $05
	ld [bc], a                                       ; $4b8d: $02
	ld [hl], a                                       ; $4b8e: $77
	push bc                                          ; $4b8f: $c5
	sbc e                                            ; $4b90: $9b
	inc e                                            ; $4b91: $1c
	inc c                                            ; $4b92: $0c
	ld b, $03                                        ; $4b93: $06 $03
	ld l, a                                          ; $4b95: $6f
	cp l                                             ; $4b96: $bd
	rst SubAFromDE                                          ; $4b97: $df
	add b                                            ; $4b98: $80
	sbc e                                            ; $4b99: $9b
	ret nz                                           ; $4b9a: $c0

	and b                                            ; $4b9b: $a0
	ld d, b                                          ; $4b9c: $50
	ld a, a                                          ; $4b9d: $7f
	ld [hl], e                                       ; $4b9e: $73
	ld hl, sp-$80                                    ; $4b9f: $f8 $80
	ldh [$f0], a                                     ; $4ba1: $e0 $f0
	rst SubAFromDE                                          ; $4ba3: $df
	ld [hl], a                                       ; $4ba4: $77
	sbc e                                            ; $4ba5: $9b
	cp d                                             ; $4ba6: $ba
	dec l                                            ; $4ba7: $2d
	ld d, $d0                                        ; $4ba8: $16 $d0
	jr c, @+$11                                      ; $4baa: $38 $0f

	ret z                                            ; $4bac: $c8

	ld h, h                                          ; $4bad: $64
	ld h, a                                          ; $4bae: $67
	di                                               ; $4baf: $f3
	ld sp, hl                                        ; $4bb0: $f9
	rst $38                                          ; $4bb1: $ff
	ccf                                              ; $4bb2: $3f
	rrca                                             ; $4bb3: $0f
	ld [bc], a                                       ; $4bb4: $02
	ld [bc], a                                       ; $4bb5: $02
	dec b                                            ; $4bb6: $05
	ld a, [bc]                                       ; $4bb7: $0a
	dec c                                            ; $4bb8: $0d
	dec de                                           ; $4bb9: $1b
	ld l, $fe                                        ; $4bba: $2e $fe
	inc bc                                           ; $4bbc: $03
	inc bc                                           ; $4bbd: $03
	rlca                                             ; $4bbe: $07
	rrca                                             ; $4bbf: $0f
	adc a                                            ; $4bc0: $8f
	ld c, $1c                                        ; $4bc1: $0e $1c
	ld sp, $01ff                                     ; $4bc3: $31 $ff $01
	rst GetHLinHL                                          ; $4bc6: $cf
	ldh a, [$78]                                     ; $4bc7: $f0 $78
	add a                                            ; $4bc9: $87
	ld a, a                                          ; $4bca: $7f

Jump_022_4bcb:
	ld [hl-], a                                      ; $4bcb: $32
	db $e3                                           ; $4bcc: $e3
	rst $38                                          ; $4bcd: $ff
	jr nc, jr_022_4bdf                               ; $4bce: $30 $0f

	add a                                            ; $4bd0: $87
	sbc $ff                                          ; $4bd1: $de $ff
	adc a                                            ; $4bd3: $8f
	cp $27                                           ; $4bd4: $fe $27
	daa                                              ; $4bd6: $27
	ld l, $12                                        ; $4bd7: $2e $12
	inc d                                            ; $4bd9: $14
	jr z, @+$72                                      ; $4bda: $28 $70

	nop                                              ; $4bdc: $00
	inc a                                            ; $4bdd: $3c
	dec a                                            ; $4bde: $3d

jr_022_4bdf:
	ld a, [hl-]                                      ; $4bdf: $3a
	ld e, $1c                                        ; $4be0: $1e $1c
	jr c, jr_022_4c54                                ; $4be2: $38 $70

	ldh [$de], a                                     ; $4be4: $e0 $de
	ld a, d                                          ; $4be6: $7a
	res 3, h                                         ; $4be7: $cb $9c
	dec bc                                           ; $4be9: $0b
	dec de                                           ; $4bea: $1b
	dec de                                           ; $4beb: $1b
	ld a, e                                          ; $4bec: $7b
	ld hl, sp-$71                                    ; $4bed: $f8 $8f
	ld [bc], a                                       ; $4bef: $02
	ld b, $0e                                        ; $4bf0: $06 $0e
	ld d, $16                                        ; $4bf2: $16 $16
	inc sp                                           ; $4bf4: $33
	dec hl                                           ; $4bf5: $2b
	dec sp                                           ; $4bf6: $3b
	ld a, e                                          ; $4bf7: $7b
	ld a, e                                          ; $4bf8: $7b
	ld [hl], a                                       ; $4bf9: $77
	ld a, a                                          ; $4bfa: $7f
	ld a, e                                          ; $4bfb: $7b
	ld a, $3e                                        ; $4bfc: $3e $3e
	ld l, $de                                        ; $4bfe: $2e $de
	ld c, [hl]                                       ; $4c00: $4e
	rst SubAFromDE                                          ; $4c01: $df
	ld b, [hl]                                       ; $4c02: $46
	rst SubAFromDE                                          ; $4c03: $df
	ld a, e                                          ; $4c04: $7b
	sbc $7f                                          ; $4c05: $de $7f
	rst SubAFromDE                                          ; $4c07: $df
	ld a, l                                          ; $4c08: $7d
	sbc h                                            ; $4c09: $9c
	ld a, a                                          ; $4c0a: $7f
	ld b, [hl]                                       ; $4c0b: $46
	ld b, [hl]                                       ; $4c0c: $46
	call c, $9e43                                    ; $4c0d: $dc $43 $9e
	ld b, c                                          ; $4c10: $41
	db $dd                                           ; $4c11: $dd
	ld a, a                                          ; $4c12: $7f
	sbc $5f                                          ; $4c13: $de $5f
	sbc [hl]                                         ; $4c15: $9e
	adc a                                            ; $4c16: $8f
	db $dd                                           ; $4c17: $dd
	ld b, c                                          ; $4c18: $41
	sbc $61                                          ; $4c19: $de $61
	sub [hl]                                         ; $4c1b: $96
	pop af                                           ; $4c1c: $f1
	adc a                                            ; $4c1d: $8f
	adc a                                            ; $4c1e: $8f
	adc [hl]                                         ; $4c1f: $8e
	adc [hl]                                         ; $4c20: $8e
	sbc a                                            ; $4c21: $9f
	sbc a                                            ; $4c22: $9f
	rst $38                                          ; $4c23: $ff
	cp a                                             ; $4c24: $bf
	db $dd                                           ; $4c25: $dd

jr_022_4c26:
	pop af                                           ; $4c26: $f1
	rst SubAFromDE                                          ; $4c27: $df
	ldh [$df], a                                     ; $4c28: $e0 $df
	ret nz                                           ; $4c2a: $c0

	rst SubAFromDE                                          ; $4c2b: $df
	ld bc, $02df                                     ; $4c2c: $01 $df $02
	add e                                            ; $4c2f: $83
	inc bc                                           ; $4c30: $03
	dec b                                            ; $4c31: $05
	rlca                                             ; $4c32: $07
	rlca                                             ; $4c33: $07
	ld bc, $0301                                     ; $4c34: $01 $01 $03
	inc bc                                           ; $4c37: $03
	ld [bc], a                                       ; $4c38: $02
	ld b, $04                                        ; $4c39: $06 $04
	inc b                                            ; $4c3b: $04
	dec bc                                           ; $4c3c: $0b
	rrca                                             ; $4c3d: $0f
	rrca                                             ; $4c3e: $0f
	rla                                              ; $4c3f: $17
	rra                                              ; $4c40: $1f
	cpl                                              ; $4c41: $2f
	ccf                                              ; $4c42: $3f
	ccf                                              ; $4c43: $3f
	inc c                                            ; $4c44: $0c
	ld [$1808], sp                                   ; $4c45: $08 $08 $18
	db $10                                           ; $4c48: $10
	jr nc, jr_022_4c6b                               ; $4c49: $30 $20

	jr nz, jr_022_4cc7                               ; $4c4b: $20 $7a

	db $e3                                           ; $4c4d: $e3
	rst SubAFromDE                                          ; $4c4e: $df
	rst $38                                          ; $4c4f: $ff
	rst SubAFromDE                                          ; $4c50: $df
	ei                                               ; $4c51: $fb
	sbc [hl]                                         ; $4c52: $9e
	ld sp, hl                                        ; $4c53: $f9

jr_022_4c54:
	ld [hl], l                                       ; $4c54: $75
	or h                                             ; $4c55: $b4
	sbc c                                            ; $4c56: $99
	nop                                              ; $4c57: $00
	inc b                                            ; $4c58: $04
	inc b                                            ; $4c59: $04
	ld b, $f8                                        ; $4c5a: $06 $f8
	ld hl, sp-$22                                    ; $4c5c: $f8 $de
	db $fc                                           ; $4c5e: $fc
	sbc $fe                                          ; $4c5f: $de $fe
	rst SubAFromDE                                          ; $4c61: $df
	rlca                                             ; $4c62: $07
	sbc $03                                          ; $4c63: $de $03
	sbc $01                                          ; $4c65: $de $01
	sub a                                            ; $4c67: $97
	rst GetHLinHL                                          ; $4c68: $cf
	ld a, $0d                                        ; $4c69: $3e $0d

jr_022_4c6b:
	rrca                                             ; $4c6b: $0f
	ld b, $06                                        ; $4c6c: $06 $06
	inc bc                                           ; $4c6e: $03
	inc bc                                           ; $4c6f: $03
	ld a, e                                          ; $4c70: $7b
	ld hl, sp-$64                                    ; $4c71: $f8 $9c
	dec c                                            ; $4c73: $0d
	inc b                                            ; $4c74: $04
	inc b                                            ; $4c75: $04
	ld a, e                                          ; $4c76: $7b
	or h                                             ; $4c77: $b4
	adc h                                            ; $4c78: $8c
	ld [bc], a                                       ; $4c79: $02
	rlca                                             ; $4c7a: $07
	rlca                                             ; $4c7b: $07
	rrca                                             ; $4c7c: $0f
	rrca                                             ; $4c7d: $0f
	rra                                              ; $4c7e: $1f
	ccf                                              ; $4c7f: $3f
	inc bc                                           ; $4c80: $03
	ld [bc], a                                       ; $4c81: $02
	inc b                                            ; $4c82: $04
	inc b                                            ; $4c83: $04
	inc c                                            ; $4c84: $0c
	dec c                                            ; $4c85: $0d
	add hl, de                                       ; $4c86: $19
	ld sp, $c8fe                                     ; $4c87: $31 $fe $c8
	ret z                                            ; $4c8a: $c8

	xor b                                            ; $4c8b: $a8
	sbc $f8                                          ; $4c8c: $de $f8
	sbc e                                            ; $4c8e: $9b
	adc b                                            ; $4c8f: $88
	cp $c8                                           ; $4c90: $fe $c8
	ld c, b                                          ; $4c92: $48
	db $dd                                           ; $4c93: $dd
	jr z, jr_022_4c26                                ; $4c94: $28 $90

	ld [$b4e8], sp                                   ; $4c96: $08 $e8 $b4
	and h                                            ; $4c99: $a4
	call nc, Call_022_766a                           ; $4c9a: $d4 $6a $76
	jp hl                                            ; $4c9d: $e9


	push af                                          ; $4c9e: $f5
	add sp, -$4c                                     ; $4c9f: $e8 $b4
	add h                                            ; $4ca1: $84
	add h                                            ; $4ca2: $84
	ld [bc], a                                       ; $4ca3: $02
	ld [bc], a                                       ; $4ca4: $02
	ld h, [hl]                                       ; $4ca5: $66
	ld a, d                                          ; $4ca6: $7a
	sbc l                                            ; $4ca7: $9d
	rra                                              ; $4ca8: $1f
	ld a, b                                          ; $4ca9: $78
	ld h, a                                          ; $4caa: $67
	ld hl, sp-$66                                    ; $4cab: $f8 $9a
	jp c, $debe                                      ; $4cad: $da $be $de

	ld a, [$7b0f]                                    ; $4cb0: $fa $0f $7b
	ld [$c29b], a                                    ; $4cb3: $ea $9b $c2
	add d                                            ; $4cb6: $82
	jp nz, $77f2                                     ; $4cb7: $c2 $f2 $77

	ld hl, sp+$10                                    ; $4cba: $f8 $10
	rrca                                             ; $4cbc: $0f
	add a                                            ; $4cbd: $87
	pop af                                           ; $4cbe: $f1
	db $fc                                           ; $4cbf: $fc
	rst $38                                          ; $4cc0: $ff
	cp a                                             ; $4cc1: $bf
	rst JumpTable                                          ; $4cc2: $c7
	pop af                                           ; $4cc3: $f1
	cp $1f                                           ; $4cc4: $fe $1f
	rst JumpTable                                          ; $4cc6: $c7

jr_022_4cc7:
	di                                               ; $4cc7: $f3
	db $fc                                           ; $4cc8: $fc
	rst $38                                          ; $4cc9: $ff
	ccf                                              ; $4cca: $3f
	rst GetHLinHL                                          ; $4ccb: $cf
	ldh a, [$eb]                                     ; $4ccc: $f0 $eb
	inc b                                            ; $4cce: $04
	di                                               ; $4ccf: $f3
	rst SubAFromDE                                          ; $4cd0: $df
	jr nc, @+$01                                     ; $4cd1: $30 $ff

	rst SubAFromDE                                          ; $4cd3: $df
	ld bc, $0280                                     ; $4cd4: $01 $80 $02
	inc bc                                           ; $4cd7: $03
	rlca                                             ; $4cd8: $07
	dec b                                            ; $4cd9: $05
	dec c                                            ; $4cda: $0d
	dec bc                                           ; $4cdb: $0b

Call_022_4cdc:
	ld d, $1a                                        ; $4cdc: $16 $1a
	ld e, $12                                        ; $4cde: $1e $12
	ld [$e0f6], a                                    ; $4ce0: $ea $f6 $e0
	ldh [$c0], a                                     ; $4ce3: $e0 $c0
	ret nz                                           ; $4ce5: $c0

	add a                                            ; $4ce6: $87
	add a                                            ; $4ce7: $87
	dec bc                                           ; $4ce8: $0b
	inc c                                            ; $4ce9: $0c
	jr jr_022_4cfc                                   ; $4cea: $18 $10

	jr nc, @+$22                                     ; $4cec: $30 $20

	ld h, b                                          ; $4cee: $60
	ld b, b                                          ; $4cef: $40
	jp $0080                                         ; $4cf0: $c3 $80 $00


	nop                                              ; $4cf3: $00
	rst $38                                          ; $4cf4: $ff
	add d                                            ; $4cf5: $82
	rst $38                                          ; $4cf6: $ff
	ccf                                              ; $4cf7: $3f
	ret nz                                           ; $4cf8: $c0

	ldh a, [rP1]                                     ; $4cf9: $f0 $00
	rlca                                             ; $4cfb: $07

jr_022_4cfc:
	nop                                              ; $4cfc: $00
	dec a                                            ; $4cfd: $3d
	inc bc                                           ; $4cfe: $03
	ld [hl], a                                       ; $4cff: $77
	rrca                                             ; $4d00: $0f
	cp c                                             ; $4d01: $b9
	ld a, [hl]                                       ; $4d02: $7e
	nop                                              ; $4d03: $00
	nop                                              ; $4d04: $00
	add b                                            ; $4d05: $80
	add b                                            ; $4d06: $80
	ld a, b                                          ; $4d07: $78
	ld hl, sp+$77                                    ; $4d08: $f8 $77
	rrca                                             ; $4d0a: $0f
	rra                                              ; $4d0b: $1f
	rst $38                                          ; $4d0c: $ff
	ldh [$e0], a                                     ; $4d0d: $e0 $e0
	cp $fe                                           ; $4d0f: $fe $fe
	ld sp, hl                                        ; $4d11: $f9
	rlca                                             ; $4d12: $07
	ld sp, hl                                        ; $4d13: $f9
	rst SubAFromDE                                          ; $4d14: $df
	ret nz                                           ; $4d15: $c0

	rst SubAFromDE                                          ; $4d16: $df
	ld [hl], b                                       ; $4d17: $70
	ld [hl], a                                       ; $4d18: $77
	db $e4                                           ; $4d19: $e4
	rst SubAFromDE                                          ; $4d1a: $df
	inc bc                                           ; $4d1b: $03
	add b                                            ; $4d1c: $80
	dec c                                            ; $4d1d: $0d
	ld c, $17                                        ; $4d1e: $0e $17
	jr jr_022_4d51                                   ; $4d20: $18 $2f

	jr nc, jr_022_4d5d                               ; $4d22: $30 $39

	ld a, $2e                                        ; $4d24: $3e $2e
	inc sp                                           ; $4d26: $33
	ccf                                              ; $4d27: $3f
	ld hl, $263d                                     ; $4d28: $21 $3d $26
	dec e                                            ; $4d2b: $1d
	push hl                                          ; $4d2c: $e5
	cp l                                             ; $4d2d: $bd
	ld h, l                                          ; $4d2e: $65
	cp [hl]                                          ; $4d2f: $be
	ld h, a                                          ; $4d30: $67
	or a                                             ; $4d31: $b7
	ld l, [hl]                                       ; $4d32: $6e
	cp l                                             ; $4d33: $bd
	ld l, [hl]                                       ; $4d34: $6e
	cp a                                             ; $4d35: $bf
	ld l, h                                          ; $4d36: $6c
	ld a, $ed                                        ; $4d37: $3e $ed
	cp e                                             ; $4d39: $bb
	db $ed                                           ; $4d3a: $ed
	ld c, [hl]                                       ; $4d3b: $4e
	add b                                            ; $4d3c: $80
	add c                                            ; $4d3d: $81
	sbc e                                            ; $4d3e: $9b
	rlca                                             ; $4d3f: $07
	or [hl]                                          ; $4d40: $b6
	rrca                                             ; $4d41: $0f
	ei                                               ; $4d42: $fb
	inc e                                            ; $4d43: $1c
	xor h                                            ; $4d44: $ac
	ld [hl], b                                       ; $4d45: $70
	ld e, a                                          ; $4d46: $5f
	ldh [hDisp1_WY], a                                     ; $4d47: $e0 $95
	cp $3a                                           ; $4d49: $fe $3a
	rst SubAFromBC                                          ; $4d4b: $e7
	rst GetHLinHL                                          ; $4d4c: $cf
	ldh a, [$3f]                                     ; $4d4d: $f0 $3f
	ret nz                                           ; $4d4f: $c0

	rra                                              ; $4d50: $1f

jr_022_4d51:
	rst $38                                          ; $4d51: $ff
	rla                                              ; $4d52: $17
	rrca                                             ; $4d53: $0f
	ld c, $01                                        ; $4d54: $0e $01
	db $e3                                           ; $4d56: $e3
	nop                                              ; $4d57: $00
	db $fc                                           ; $4d58: $fc
	nop                                              ; $4d59: $00
	ld a, a                                          ; $4d5a: $7f
	add b                                            ; $4d5b: $80
	add b                                            ; $4d5c: $80

jr_022_4d5d:
	rst $38                                          ; $4d5d: $ff
	nop                                              ; $4d5e: $00
	rst $38                                          ; $4d5f: $ff
	nop                                              ; $4d60: $00
	ccf                                              ; $4d61: $3f
	ret nz                                           ; $4d62: $c0

jr_022_4d63:
	ld sp, hl                                        ; $4d63: $f9
	cp $c7                                           ; $4d64: $fe $c7

jr_022_4d66:
	rst $38                                          ; $4d66: $ff
	ld l, [hl]                                       ; $4d67: $6e
	pop af                                           ; $4d68: $f1
	ld e, a                                          ; $4d69: $5f
	jr c, jr_022_4d63                                ; $4d6a: $38 $f7

	ld c, $70                                        ; $4d6c: $0e $70
	ldh a, [$fc]                                     ; $4d6e: $f0 $fc
	inc a                                            ; $4d70: $3c
	ldh a, [c]                                       ; $4d71: $f2
	ld e, $f9                                        ; $4d72: $1e $f9
	rrca                                             ; $4d74: $0f
	db $fc                                           ; $4d75: $fc
	rlca                                             ; $4d76: $07
	sbc $e3                                          ; $4d77: $de $e3
	cp a                                             ; $4d79: $bf
	ld [hl], c                                       ; $4d7a: $71
	rst AddAOntoHL                                          ; $4d7b: $ef
	sbc [hl]                                         ; $4d7c: $9e
	jr @-$05                                         ; $4d7d: $18 $f9

	rst SubAFromDE                                          ; $4d7f: $df
	add b                                            ; $4d80: $80
	add b                                            ; $4d81: $80
	ld b, b                                          ; $4d82: $40
	ret nz                                           ; $4d83: $c0

	jr nz, jr_022_4d66                               ; $4d84: $20 $e0

	sub b                                            ; $4d86: $90
	ldh a, [$5a]                                     ; $4d87: $f0 $5a
	ld l, a                                          ; $4d89: $6f
	ld l, l                                          ; $4d8a: $6d
	ld e, e                                          ; $4d8b: $5b
	ld [hl], d                                       ; $4d8c: $72
	ld e, c                                          ; $4d8d: $59
	ld l, e                                          ; $4d8e: $6b
	ld d, b                                          ; $4d8f: $50
	ld [hl], h                                       ; $4d90: $74
	ld h, e                                          ; $4d91: $63
	ld b, e                                          ; $4d92: $43
	ld h, a                                          ; $4d93: $67
	ld l, l                                          ; $4d94: $6d
	ld b, [hl]                                       ; $4d95: $46
	ld c, [hl]                                       ; $4d96: $4e
	ld b, h                                          ; $4d97: $44
	bit 7, a                                         ; $4d98: $cb $7f
	ld l, e                                          ; $4d9a: $6b

jr_022_4d9b:
	cp a                                             ; $4d9b: $bf
	cp a                                             ; $4d9c: $bf
	rst $38                                          ; $4d9d: $ff
	ld a, c                                          ; $4d9e: $79
	rst $38                                          ; $4d9f: $ff
	scf                                              ; $4da0: $37
	add b                                            ; $4da1: $80
	ld sp, hl                                        ; $4da2: $f9
	jp hl                                            ; $4da3: $e9


	ldh a, [rSB]                                     ; $4da4: $f0 $01
	nop                                              ; $4da6: $00
	ld e, b                                          ; $4da7: $58
	jr nz, jr_022_4e0f                               ; $4da8: $20 $65

	jp $e1d2                                         ; $4daa: $c3 $d2 $e1


	xor c                                            ; $4dad: $a9
	ld [hl], b                                       ; $4dae: $70
	call nc, $ee38                                   ; $4daf: $d4 $38 $ee
	jr jr_022_4d9b                                   ; $4db2: $18 $e7

	sbc h                                            ; $4db4: $9c
	ld [hl], e                                       ; $4db5: $73
	adc $f9                                          ; $4db6: $ce $f9
	ld b, a                                          ; $4db8: $47
	rra                                              ; $4db9: $1f
	ldh [$fc], a                                     ; $4dba: $e0 $fc
	rst $38                                          ; $4dbc: $ff
	ld b, e                                          ; $4dbd: $43
	rst $38                                          ; $4dbe: $ff
	and b                                            ; $4dbf: $a0
	ld a, a                                          ; $4dc0: $7f
	add b                                            ; $4dc1: $80
	ld d, b                                          ; $4dc2: $50
	ccf                                              ; $4dc3: $3f
	inc a                                            ; $4dc4: $3c
	rrca                                             ; $4dc5: $0f
	sbc $03                                          ; $4dc6: $de $03
	rst AddAOntoHL                                          ; $4dc8: $ef
	ld bc, $03fd                                     ; $4dc9: $01 $fd $03
	rst $38                                          ; $4dcc: $ff
	nop                                              ; $4dcd: $00
	rst FarCall                                          ; $4dce: $f7
	ld hl, sp+$4f                                    ; $4dcf: $f8 $4f
	rst $38                                          ; $4dd1: $ff
	jr nz, @+$01                                     ; $4dd2: $20 $ff

	jr @+$01                                         ; $4dd4: $18 $ff

	inc c                                            ; $4dd6: $0c
	rst FarCall                                          ; $4dd7: $f7
	rst $38                                          ; $4dd8: $ff
	add e                                            ; $4dd9: $83
	rst FarCall                                          ; $4dda: $f7
	inc c                                            ; $4ddb: $0c
	ei                                               ; $4ddc: $fb
	add $fd                                          ; $4ddd: $c6 $fd
	inc hl                                           ; $4ddf: $23
	ld a, [hl]                                       ; $4de0: $7e
	add [hl]                                         ; $4de1: $86
	sub c                                            ; $4de2: $91
	rst $38                                          ; $4de3: $ff
	ld hl, sp+$1f                                    ; $4de4: $f8 $1f
	db $fc                                           ; $4de6: $fc
	srl h                                            ; $4de7: $cb $3c
	ld [hl], l                                       ; $4de9: $75
	adc [hl]                                         ; $4dea: $8e
	ld c, b                                          ; $4deb: $48
	ld hl, sp-$38                                    ; $4dec: $f8 $c8
	ld a, b                                          ; $4dee: $78
	and h                                            ; $4def: $a4
	ld a, h                                          ; $4df0: $7c
	xor h                                            ; $4df1: $ac
	db $f4                                           ; $4df2: $f4
	ld e, d                                          ; $4df3: $5a
	or $d6                                           ; $4df4: $f6 $d6
	ld a, d                                          ; $4df6: $7a
	xor [hl]                                         ; $4df7: $ae
	ld a, d                                          ; $4df8: $7a
	db $ed                                           ; $4df9: $ed
	dec sp                                           ; $4dfa: $3b
	ei                                               ; $4dfb: $fb
	rst SubAFromHL                                          ; $4dfc: $d7
	ld bc, $8680                                     ; $4dfd: $01 $80 $86
	call z, $8cc6                                    ; $4e00: $cc $c6 $8c
	add $8c                                          ; $4e03: $c6 $8c
	inc d                                            ; $4e05: $14
	adc [hl]                                         ; $4e06: $8e
	sub e                                            ; $4e07: $93
	ld c, $93                                        ; $4e08: $0e $93
	ld c, $b6                                        ; $4e0a: $0e $b6
	rrca                                             ; $4e0c: $0f
	or l                                             ; $4e0d: $b5
	rrca                                             ; $4e0e: $0f

jr_022_4e0f:
	ld d, h                                          ; $4e0f: $54
	jr z, @+$7c                                      ; $4e10: $28 $7a

	inc l                                            ; $4e12: $2c
	ld a, [hl]                                       ; $4e13: $7e
	inc l                                            ; $4e14: $2c
	ld l, l                                          ; $4e15: $6d
	ld [hl], $7a                                     ; $4e16: $36 $7a
	scf                                              ; $4e18: $37
	ld [hl], a                                       ; $4e19: $77
	dec sp                                           ; $4e1a: $3b
	ld a, a                                          ; $4e1b: $7f
	dec sp                                           ; $4e1c: $3b
	add hl, sp                                       ; $4e1d: $39
	add b                                            ; $4e1e: $80
	ccf                                              ; $4e1f: $3f
	cp h                                             ; $4e20: $bc
	ld h, e                                          ; $4e21: $63
	xor $31                                          ; $4e22: $ee $31
	ld d, a                                          ; $4e24: $57
	jr c, jr_022_4e52                                ; $4e25: $38 $2b

	inc e                                            ; $4e27: $1c
	and l                                            ; $4e28: $a5
	ld e, $52                                        ; $4e29: $1e $52
	adc a                                            ; $4e2b: $8f
	cp c                                             ; $4e2c: $b9
	rst JumpTable                                          ; $4e2d: $c7
	call c, $ffe3                                    ; $4e2e: $dc $e3 $ff
	add b                                            ; $4e31: $80
	ld e, a                                          ; $4e32: $5f
	ldh [$3f], a                                     ; $4e33: $e0 $3f
	ldh a, [$db]                                     ; $4e35: $f0 $db
	inc a                                            ; $4e37: $3c
	rst AddAOntoHL                                          ; $4e38: $ef
	rra                                              ; $4e39: $1f
	rst FarCall                                          ; $4e3a: $f7
	rrca                                             ; $4e3b: $0f
	ld a, e                                          ; $4e3c: $7b
	add a                                            ; $4e3d: $87
	add b                                            ; $4e3e: $80
	sbc $e1                                          ; $4e3f: $de $e1
	cp $41                                           ; $4e41: $fe $41

jr_022_4e43:
	rst $38                                          ; $4e43: $ff
	jr nc, jr_022_4e43                               ; $4e44: $30 $fd

	ld c, $ff                                        ; $4e46: $0e $ff
	inc bc                                           ; $4e48: $03
	ld a, a                                          ; $4e49: $7f
	add b                                            ; $4e4a: $80
	rst FarCall                                          ; $4e4b: $f7
	ld hl, sp+$0f                                    ; $4e4c: $f8 $0f
	rst $38                                          ; $4e4e: $ff
	ret nz                                           ; $4e4f: $c0

	rst $38                                          ; $4e50: $ff
	cp e                                             ; $4e51: $bb

jr_022_4e52:
	add $5e                                          ; $4e52: $c6 $5e
	db $e3                                           ; $4e54: $e3
	db $ed                                           ; $4e55: $ed
	inc sp                                           ; $4e56: $33
	rla                                              ; $4e57: $17
	ld sp, hl                                        ; $4e58: $f9
	ld a, [$fbfd]                                    ; $4e59: $fa $fd $fb
	inc e                                            ; $4e5c: $1c
	rst $38                                          ; $4e5d: $ff
	adc h                                            ; $4e5e: $8c
	rst $38                                          ; $4e5f: $ff
	ld [hl+], a                                      ; $4e60: $22
	rst $38                                          ; $4e61: $ff
	rst SubAFromDE                                          ; $4e62: $df
	add hl, sp                                       ; $4e63: $39
	rst $38                                          ; $4e64: $ff
	add hl, de                                       ; $4e65: $19
	ei                                               ; $4e66: $fb
	dec e                                            ; $4e67: $1d
	ld a, d                                          ; $4e68: $7a
	adc l                                            ; $4e69: $8d
	ld hl, sp-$71                                    ; $4e6a: $f8 $8f
	or h                                             ; $4e6c: $b4
	rst GetHLinHL                                          ; $4e6d: $cf
	db $f4                                           ; $4e6e: $f4
	rst GetHLinHL                                          ; $4e6f: $cf
	ld [hl], l                                       ; $4e70: $75
	rst AddAOntoHL                                          ; $4e71: $ef
	ld h, a                                          ; $4e72: $67
	ld [bc], a                                       ; $4e73: $02
	db $db                                           ; $4e74: $db
	add b                                            ; $4e75: $80
	rst $38                                          ; $4e76: $ff
	ld a, [hl]                                       ; $4e77: $7e
	ld b, h                                          ; $4e78: $44
	ld [hl], a                                       ; $4e79: $77
	cp $db                                           ; $4e7a: $fe $db
	ld bc, $7ffd                                     ; $4e7c: $01 $fd $7f
	ld a, [hl]                                       ; $4e7f: $7e
	add b                                            ; $4e80: $80
	or a                                             ; $4e81: $b7
	dec c                                            ; $4e82: $0d
	or [hl]                                          ; $4e83: $b6
	dec c                                            ; $4e84: $0d
	and $1d                                          ; $4e85: $e6 $1d
	rst SubAFromBC                                          ; $4e87: $e7
	inc e                                            ; $4e88: $1c
	ld h, a                                          ; $4e89: $67
	sbc h                                            ; $4e8a: $9c
	and $9c                                          ; $4e8b: $e6 $9c
	db $f4                                           ; $4e8d: $f4
	adc [hl]                                         ; $4e8e: $8e
	dec e                                            ; $4e8f: $1d
	or a                                             ; $4e90: $b7
	ld e, $b3                                        ; $4e91: $1e $b3
	sbc a                                            ; $4e93: $9f
	pop de                                           ; $4e94: $d1
	adc a                                            ; $4e95: $8f
	reti                                             ; $4e96: $d9


	ld c, a                                          ; $4e97: $4f
	jp hl                                            ; $4e98: $e9


	ld b, a                                          ; $4e99: $47
	db $fd                                           ; $4e9a: $fd
	daa                                              ; $4e9b: $27
	db $fc                                           ; $4e9c: $fc
	inc sp                                           ; $4e9d: $33
	cp $f0                                           ; $4e9e: $fe $f0
	add b                                            ; $4ea0: $80
	ld a, a                                          ; $4ea1: $7f
	xor b                                            ; $4ea2: $a8
	rst $38                                          ; $4ea3: $ff
	ld a, [hl]                                       ; $4ea4: $7e
	rst JumpTable                                          ; $4ea5: $c7
	cp c                                             ; $4ea6: $b9
	rst JumpTable                                          ; $4ea7: $c7
	ld l, a                                          ; $4ea8: $6f
	sbc a                                            ; $4ea9: $9f
	ld e, c                                          ; $4eaa: $59
	cp l                                             ; $4eab: $bd
	ld a, [hl]                                       ; $4eac: $7e
	rst $38                                          ; $4ead: $ff
	ld l, e                                          ; $4eae: $6b
	ld c, [hl]                                       ; $4eaf: $4e
	ld a, b                                          ; $4eb0: $78
	rst $38                                          ; $4eb1: $ff
	daa                                              ; $4eb2: $27
	rst $38                                          ; $4eb3: $ff
	db $10                                           ; $4eb4: $10
	rst $38                                          ; $4eb5: $ff
	adc b                                            ; $4eb6: $88
	rst $38                                          ; $4eb7: $ff
	and $7f                                          ; $4eb8: $e6 $7f
	rst $38                                          ; $4eba: $ff
	rra                                              ; $4ebb: $1f
	ei                                               ; $4ebc: $fb
	rlca                                             ; $4ebd: $07
	cp $03                                           ; $4ebe: $fe $03
	add b                                            ; $4ec0: $80
	jr nc, @+$01                                     ; $4ec1: $30 $ff

	ld [$feff], sp                                   ; $4ec3: $08 $ff $fe
	rst $38                                          ; $4ec6: $ff
	rra                                              ; $4ec7: $1f
	rst $38                                          ; $4ec8: $ff
	ccf                                              ; $4ec9: $3f
	rst SubAFromBC                                          ; $4eca: $e7
	ld a, $c3                                        ; $4ecb: $3e $c3
	rst $38                                          ; $4ecd: $ff
	db $db                                           ; $4ece: $db
	ld a, [hl]                                       ; $4ecf: $7e
	db $e3                                           ; $4ed0: $e3
	ld de, $c9ff                                     ; $4ed1: $11 $ff $c9
	ccf                                              ; $4ed4: $3f
	ld h, h                                          ; $4ed5: $64
	sbc a                                            ; $4ed6: $9f
	or d                                             ; $4ed7: $b2
	rst GetHLinHL                                          ; $4ed8: $cf
	ld e, d                                          ; $4ed9: $5a
	rst SubAFromBC                                          ; $4eda: $e7
	dec l                                            ; $4edb: $2d
	di                                               ; $4edc: $f3
	ld [hl], a                                       ; $4edd: $77
	sbc c                                            ; $4ede: $99
	cp d                                             ; $4edf: $ba
	add b                                            ; $4ee0: $80
	call $ff25                                       ; $4ee1: $cd $25 $ff
	ld h, h                                          ; $4ee4: $64
	cp a                                             ; $4ee5: $bf
	rst SubAFromHL                                          ; $4ee6: $d7
	cp [hl]                                          ; $4ee7: $be
	or $9e                                           ; $4ee8: $f6 $9e
	or [hl]                                          ; $4eea: $b6
	sbc $6e                                          ; $4eeb: $de $6e
	call c, $dc6c                                    ; $4eed: $dc $6c $dc
	db $ec                                           ; $4ef0: $ec
	call c, $ceb7                                    ; $4ef1: $dc $b7 $ce
	halt                                             ; $4ef4: $76
	ld c, a                                          ; $4ef5: $4f
	ld d, l                                          ; $4ef6: $55
	ld l, l                                          ; $4ef7: $6d
	inc [hl]                                         ; $4ef8: $34
	inc l                                            ; $4ef9: $2c
	ld a, [hl+]                                      ; $4efa: $2a
	ld [hl], $1a                                     ; $4efb: $36 $1a
	ld d, $12                                        ; $4efd: $16 $12
	ld e, $81                                        ; $4eff: $1e $81
	ld a, [bc]                                       ; $4f01: $0a
	ld c, $1a                                        ; $4f02: $0e $1a
	ld a, [hl]                                       ; $4f04: $7e
	dec e                                            ; $4f05: $1d
	ld a, a                                          ; $4f06: $7f
	ld [de], a                                       ; $4f07: $12
	or e                                             ; $4f08: $b3
	adc e                                            ; $4f09: $8b
	ei                                               ; $4f0a: $fb
	ld l, d                                          ; $4f0b: $6a
	ld a, d                                          ; $4f0c: $7a
	ld a, [de]                                       ; $4f0d: $1a
	ld a, [de]                                       ; $4f0e: $1a
	inc c                                            ; $4f0f: $0c
	inc c                                            ; $4f10: $0c
	inc b                                            ; $4f11: $04
	inc b                                            ; $4f12: $04
	ld bc, $0102                                     ; $4f13: $01 $02 $01
	nop                                              ; $4f16: $00
	add e                                            ; $4f17: $83
	add b                                            ; $4f18: $80
	jp $63c0                                         ; $4f19: $c3 $c0 $63


	ld h, b                                          ; $4f1c: $60
	ld bc, $7700                                     ; $4f1d: $01 $00 $77
	ld e, a                                          ; $4f20: $5f
	ld a, a                                          ; $4f21: $7f
	sbc [hl]                                         ; $4f22: $9e
	ld a, d                                          ; $4f23: $7a
	adc [hl]                                         ; $4f24: $8e
	sbc [hl]                                         ; $4f25: $9e
	ld bc, $fe6f                                     ; $4f26: $01 $6f $fe
	add a                                            ; $4f29: $87
	cp $01                                           ; $4f2a: $fe $01
	rst $38                                          ; $4f2c: $ff
	nop                                              ; $4f2d: $00
	ld a, [hl]                                       ; $4f2e: $7e
	db $d3                                           ; $4f2f: $d3
	ld a, e                                          ; $4f30: $7b
	rst SubAFromHL                                          ; $4f31: $d7
	ld a, a                                          ; $4f32: $7f
	rst SubAFromBC                                          ; $4f33: $e7
	ld a, [hl]                                       ; $4f34: $7e
	rst GetHLinHL                                          ; $4f35: $cf
	ld a, $d3                                        ; $4f36: $3e $d3
	ccf                                              ; $4f38: $3f
	pop af                                           ; $4f39: $f1
	cp a                                             ; $4f3a: $bf
	pop hl                                           ; $4f3b: $e1

Jump_022_4f3c:
	cp a                                             ; $4f3c: $bf
	pop hl                                           ; $4f3d: $e1
	db $dd                                           ; $4f3e: $dd
	ld h, [hl]                                       ; $4f3f: $66
	ld l, [hl]                                       ; $4f40: $6e
	or e                                             ; $4f41: $b3
	ld [hl], a                                       ; $4f42: $77
	sbc b                                            ; $4f43: $98
	sub l                                            ; $4f44: $95
	ld e, l                                          ; $4f45: $5d
	and $36                                          ; $4f46: $e6 $36
	ei                                               ; $4f48: $fb
	dec a                                            ; $4f49: $3d
	rst $38                                          ; $4f4a: $ff
	or d                                             ; $4f4b: $b2
	ld a, a                                          ; $4f4c: $7f
	ld c, b                                          ; $4f4d: $48
	ld hl, sp+$77                                    ; $4f4e: $f8 $77
	cp $9e                                           ; $4f50: $fe $9e
	ret z                                            ; $4f52: $c8

	ld a, e                                          ; $4f53: $7b
	db $fc                                           ; $4f54: $fc
	sub l                                            ; $4f55: $95
	ld a, h                                          ; $4f56: $7c
	db $fc                                           ; $4f57: $fc
	db $f4                                           ; $4f58: $f4
	call z, $36fa                                    ; $4f59: $cc $fa $36
	add hl, bc                                       ; $4f5c: $09
	rrca                                             ; $4f5d: $0f
	dec b                                            ; $4f5e: $05
	rlca                                             ; $4f5f: $07
	db $dd                                           ; $4f60: $dd
	inc bc                                           ; $4f61: $03
	ld l, a                                          ; $4f62: $6f
	ld [de], a                                       ; $4f63: $12
	rst $38                                          ; $4f64: $ff
	sbc e                                            ; $4f65: $9b
	rlca                                             ; $4f66: $07
	inc b                                            ; $4f67: $04
	inc bc                                           ; $4f68: $03
	inc bc                                           ; $4f69: $03
	ld e, [hl]                                       ; $4f6a: $5e
	db $ec                                           ; $4f6b: $ec
	ld a, e                                          ; $4f6c: $7b
	ld a, [$008d]                                    ; $4f6d: $fa $8d $00
	sub b                                            ; $4f70: $90
	add b                                            ; $4f71: $80
	ldh a, [hDisp1_SCY]                                     ; $4f72: $f0 $90
	ld h, b                                          ; $4f74: $60
	ld h, b                                          ; $4f75: $60
	jr nc, jr_022_4f98                               ; $4f76: $30 $20

	jr jr_022_4f8a                                   ; $4f78: $18 $10

	inc c                                            ; $4f7a: $0c
	ld [$0406], sp                                   ; $4f7b: $08 $06 $04
	rst $38                                          ; $4f7e: $ff
	nop                                              ; $4f7f: $00
	ld a, a                                          ; $4f80: $7f
	ld [hl], e                                       ; $4f81: $73
	cp $9e                                           ; $4f82: $fe $9e
	ccf                                              ; $4f84: $3f
	ld a, e                                          ; $4f85: $7b
	cp $99                                           ; $4f86: $fe $99
	rra                                              ; $4f88: $1f
	nop                                              ; $4f89: $00

jr_022_4f8a:
	ld e, $07                                        ; $4f8a: $1e $07
	cp a                                             ; $4f8c: $bf
	and c                                            ; $4f8d: $a1
	ld [hl], e                                       ; $4f8e: $73
	cp $9b                                           ; $4f8f: $fe $9b
	and e                                            ; $4f91: $a3
	cp l                                             ; $4f92: $bd
	xor a                                            ; $4f93: $af
	or c                                             ; $4f94: $b1
	ld [hl], e                                       ; $4f95: $73
	rst FarCall                                          ; $4f96: $f7
	add d                                            ; $4f97: $82

jr_022_4f98:
	rst $38                                          ; $4f98: $ff
	ld a, h                                          ; $4f99: $7c
	rst GetHLinHL                                          ; $4f9a: $cf
	ld a, c                                          ; $4f9b: $79
	rst GetHLinHL                                          ; $4f9c: $cf
	ld a, [hl]                                       ; $4f9d: $7e
	rst JumpTable                                          ; $4f9e: $c7
	ld a, l                                          ; $4f9f: $7d
	rst JumpTable                                          ; $4fa0: $c7
	ld a, [hl]                                       ; $4fa1: $7e
	jp $c37f                                         ; $4fa2: $c3 $7f $c3


	ld a, a                                          ; $4fa5: $7f
	pop bc                                           ; $4fa6: $c1
	ld a, a                                          ; $4fa7: $7f
	or $ce                                           ; $4fa8: $f6 $ce
	ld a, d                                          ; $4faa: $7a
	cp [hl]                                          ; $4fab: $be
	sbc $e2                                          ; $4fac: $de $e2
	ld l, l                                          ; $4fae: $6d
	sbc a                                            ; $4faf: $9f
	ld [hl], h                                       ; $4fb0: $74
	rst $38                                          ; $4fb1: $ff
	sub h                                            ; $4fb2: $94
	rst $38                                          ; $4fb3: $ff
	sub d                                            ; $4fb4: $92
	ld a, e                                          ; $4fb5: $7b
	cp $5d                                           ; $4fb6: $fe $5d
	sub b                                            ; $4fb8: $90
	rst SubAFromDE                                          ; $4fb9: $df
	add b                                            ; $4fba: $80
	sbc c                                            ; $4fbb: $99
	ret nz                                           ; $4fbc: $c0

	ld b, b                                          ; $4fbd: $40
	ldh [rAUD4LEN], a                                ; $4fbe: $e0 $20
	inc bc                                           ; $4fc0: $03
	ld [bc], a                                       ; $4fc1: $02
	ld h, a                                          ; $4fc2: $67
	add [hl]                                         ; $4fc3: $86
	ei                                               ; $4fc4: $fb
	sbc b                                            ; $4fc5: $98
	dec bc                                           ; $4fc6: $0b
	dec de                                           ; $4fc7: $1b
	rst FarCall                                          ; $4fc8: $f7
	scf                                              ; $4fc9: $37
	rst JumpTable                                          ; $4fca: $c7
	rst JumpTable                                          ; $4fcb: $c7
	rlca                                             ; $4fcc: $07
	ld a, e                                          ; $4fcd: $7b
	ld l, h                                          ; $4fce: $6c
	halt                                             ; $4fcf: $76
	ld a, b                                          ; $4fd0: $78
	sbc b                                            ; $4fd1: $98
	inc b                                            ; $4fd2: $04
	rlca                                             ; $4fd3: $07
	db $e3                                           ; $4fd4: $e3
	cp [hl]                                          ; $4fd5: $be
	db $e3                                           ; $4fd6: $e3
	cp [hl]                                          ; $4fd7: $be
	rst JumpTable                                          ; $4fd8: $c7
	ld a, e                                          ; $4fd9: $7b
	or b                                             ; $4fda: $b0
	add b                                            ; $4fdb: $80
	rst GetHLinHL                                          ; $4fdc: $cf
	ld a, a                                          ; $4fdd: $7f
	adc [hl]                                         ; $4fde: $8e
	rst $38                                          ; $4fdf: $ff
	cp b                                             ; $4fe0: $b8
	rst $38                                          ; $4fe1: $ff
	ldh [rIE], a                                     ; $4fe2: $e0 $ff
	add c                                            ; $4fe4: $81
	rst $38                                          ; $4fe5: $ff
	add e                                            ; $4fe6: $83
	rst $38                                          ; $4fe7: $ff
	sbc a                                            ; $4fe8: $9f
	rst $38                                          ; $4fe9: $ff
	ld [hl], b                                       ; $4fea: $70
	rst $38                                          ; $4feb: $ff
	adc [hl]                                         ; $4fec: $8e
	pop af                                           ; $4fed: $f1
	ld a, $c1                                        ; $4fee: $3e $c1
	ldh [$1f], a                                     ; $4ff0: $e0 $1f
	nop                                              ; $4ff2: $00
	rst $38                                          ; $4ff3: $ff
	push de                                          ; $4ff4: $d5
	cp e                                             ; $4ff5: $bb
	rst SubAFromDE                                          ; $4ff6: $df
	xor c                                            ; $4ff7: $a9
	rst SubAFromDE                                          ; $4ff8: $df
	xor c                                            ; $4ff9: $a9
	sbc $7b                                          ; $4ffa: $de $7b
	cp $89                                           ; $4ffc: $fe $89
	jp c, $daad                                      ; $4ffe: $da $ad $da

	xor l                                            ; $5001: $ad
	sbc d                                            ; $5002: $9a
	db $ed                                           ; $5003: $ed
	ldh [rAUD4LEN], a                                ; $5004: $e0 $20
	ret nc                                           ; $5006: $d0

	jr nc, jr_022_5059                               ; $5007: $30 $50

	or b                                             ; $5009: $b0
	ld hl, sp-$68                                    ; $500a: $f8 $98
	db $ec                                           ; $500c: $ec
	sbc h                                            ; $500d: $9c
	xor a                                            ; $500e: $af
	rst SubAFromDE                                          ; $500f: $df

jr_022_5010:
	cp e                                             ; $5010: $bb
	rst GetHLinHL                                          ; $5011: $cf
	ld a, a                                          ; $5012: $7f
	set 6, l                                         ; $5013: $cb $f5
	rst SubAFromDE                                          ; $5015: $df
	ldh a, [$9d]                                     ; $5016: $f0 $9d
	ld c, $fe                                        ; $5018: $0e $fe
	ld sp, hl                                        ; $501a: $f9
	rst SubAFromDE                                          ; $501b: $df
	ld bc, $068e                                     ; $501c: $01 $8e $06
	rlca                                             ; $501f: $07
	inc e                                            ; $5020: $1c
	rra                                              ; $5021: $1f
	ld h, d                                          ; $5022: $62
	ld a, a                                          ; $5023: $7f
	dec b                                            ; $5024: $05
	rlca                                             ; $5025: $07
	ld b, $07                                        ; $5026: $06 $07
	inc c                                            ; $5028: $0c
	rrca                                             ; $5029: $0f
	jr nc, jr_022_506b                               ; $502a: $30 $3f

	jp $0ffc                                         ; $502c: $c3 $fc $0f


	ld a, b                                          ; $502f: $78
	add $7f                                          ; $5030: $c6 $7f
	ld h, c                                          ; $5032: $61
	ld a, h                                          ; $5033: $7c
	rst GetHLinHL                                          ; $5034: $cf
	ld a, a                                          ; $5035: $7f
	ld hl, sp+$6c                                    ; $5036: $f8 $6c
	jp z, $fe6f                                      ; $5038: $ca $6f $fe

	sbc h                                            ; $503b: $9c
	db $fc                                           ; $503c: $fc
	inc bc                                           ; $503d: $03
	cp $7a                                           ; $503e: $fe $7a
	xor b                                            ; $5040: $a8
	ld e, a                                          ; $5041: $5f
	cp $99                                           ; $5042: $fe $99
	sub a                                            ; $5044: $97
	db $ec                                           ; $5045: $ec
	or a                                             ; $5046: $b7
	db $ec                                           ; $5047: $ec
	cp a                                             ; $5048: $bf
	db $e4                                           ; $5049: $e4
	ld [hl], a                                       ; $504a: $77
	cp $9e                                           ; $504b: $fe $9e
	cp l                                             ; $504d: $bd
	ld [hl], e                                       ; $504e: $73
	cp $7f                                           ; $504f: $fe $7f
	sbc [hl]                                         ; $5051: $9e
	sub c                                            ; $5052: $91
	ld a, l                                          ; $5053: $7d
	bit 7, e                                         ; $5054: $cb $7b
	call $ed5a                                       ; $5056: $cd $5a $ed

jr_022_5059:
	rst SubAFromHL                                          ; $5059: $d7
	ld l, h                                          ; $505a: $6c
	or l                                             ; $505b: $b5
	ld l, [hl]                                       ; $505c: $6e
	cp l                                             ; $505d: $bd
	ld h, a                                          ; $505e: $67
	cp l                                             ; $505f: $bd
	ld h, a                                          ; $5060: $67
	ld a, c                                          ; $5061: $79
	ld bc, $6d7d                                     ; $5062: $01 $7d $6d
	ld [hl], e                                       ; $5065: $73
	cp $97                                           ; $5066: $fe $97
	ret nz                                           ; $5068: $c0

	ld a, a                                          ; $5069: $7f
	ret nz                                           ; $506a: $c0

jr_022_506b:
	ld a, a                                          ; $506b: $7f
	ldh [$bf], a                                     ; $506c: $e0 $bf
	ld bc, $7701                                     ; $506e: $01 $01 $77
	jr c, jr_022_5010                                ; $5071: $38 $9d

	dec b                                            ; $5073: $05
	ld b, $67                                        ; $5074: $06 $67
	cp $9b                                           ; $5076: $fe $9b
	adc a                                            ; $5078: $8f
	pop af                                           ; $5079: $f1
	ld a, a                                          ; $507a: $7f
	add c                                            ; $507b: $81
	ld e, a                                          ; $507c: $5f
	and d                                            ; $507d: $a2
	ld l, e                                          ; $507e: $6b
	cp $77                                           ; $507f: $fe $77
	pop de                                           ; $5081: $d1
	sbc [hl]                                         ; $5082: $9e
	ld b, b                                          ; $5083: $40
	ld a, e                                          ; $5084: $7b
	cp $7c                                           ; $5085: $fe $7c
	bit 7, a                                         ; $5087: $cb $7f
	cp $4b                                           ; $5089: $fe $4b
	db $e4                                           ; $508b: $e4
	ld [hl], a                                       ; $508c: $77
	adc h                                            ; $508d: $8c
	ld h, [hl]                                       ; $508e: $66
	jr nz, jr_022_5108                               ; $508f: $20 $77

	cp $6f                                           ; $5091: $fe $6f
	adc d                                            ; $5093: $8a
	sbc d                                            ; $5094: $9a
	ld [hl], h                                       ; $5095: $74
	and h                                            ; $5096: $a4
	ld [hl], h                                       ; $5097: $74
	and h                                            ; $5098: $a4
	ld h, h                                          ; $5099: $64
	ld [hl], e                                       ; $509a: $73
	cp $8a                                           ; $509b: $fe $8a
	xor e                                            ; $509d: $ab
	ld [hl], a                                       ; $509e: $77
	xor e                                            ; $509f: $ab
	ld [hl], a                                       ; $50a0: $77
	sbc e                                            ; $50a1: $9b
	scf                                              ; $50a2: $37
	sub a                                            ; $50a3: $97
	inc sp                                           ; $50a4: $33
	dec d                                            ; $50a5: $15
	inc sp                                           ; $50a6: $33
	ld de, $9133                                     ; $50a7: $11 $33 $91
	inc sp                                           ; $50aa: $33
	ld de, $f0b3                                     ; $50ab: $11 $b3 $f0
	sbc a                                            ; $50ae: $9f
	ldh a, [$df]                                     ; $50af: $f0 $df
	jr c, jr_022_5127                                ; $50b1: $38 $74

	add h                                            ; $50b3: $84
	sbc l                                            ; $50b4: $9d
	rst $38                                          ; $50b5: $ff
	ld [bc], a                                       ; $50b6: $02
	ld [hl], e                                       ; $50b7: $73
	cp a                                             ; $50b8: $bf
	ld a, [hl]                                       ; $50b9: $7e
	cp [hl]                                          ; $50ba: $be
	ld c, a                                          ; $50bb: $4f
	cp $7a                                           ; $50bc: $fe $7a
	ld b, b                                          ; $50be: $40
	sub [hl]                                         ; $50bf: $96

jr_022_50c0:
	add b                                            ; $50c0: $80
	ld a, a                                          ; $50c1: $7f
	add b                                            ; $50c2: $80
	ccf                                              ; $50c3: $3f
	ret nz                                           ; $50c4: $c0

	rra                                              ; $50c5: $1f
	ldh [rIF], a                                     ; $50c6: $e0 $0f
	ldh a, [rPCM34]                                  ; $50c8: $f0 $77
	cp $7b                                           ; $50ca: $fe $7b
	adc [hl]                                         ; $50cc: $8e
	ld a, l                                          ; $50cd: $7d
	ld d, c                                          ; $50ce: $51
	ld a, e                                          ; $50cf: $7b
	cp $97                                           ; $50d0: $fe $97
	rst AddAOntoHL                                          ; $50d2: $ef
	jr jr_022_50c0                                   ; $50d3: $18 $eb

	inc e                                            ; $50d5: $1c
	db $eb                                           ; $50d6: $eb
	inc e                                            ; $50d7: $1c
	jp hl                                            ; $50d8: $e9


	ld e, $5f                                        ; $50d9: $1e $5f
	add [hl]                                         ; $50db: $86
	sbc c                                            ; $50dc: $99
	db $fd                                           ; $50dd: $fd
	ld [bc], a                                       ; $50de: $02
	ld sp, hl                                        ; $50df: $f9
	ld b, $fb                                        ; $50e0: $06 $fb
	inc b                                            ; $50e2: $04
	ld d, a                                          ; $50e3: $57
	add h                                            ; $50e4: $84
	ld a, a                                          ; $50e5: $7f
	cp $7d                                           ; $50e6: $fe $7d
	sub h                                            ; $50e8: $94
	ld a, a                                          ; $50e9: $7f
	adc [hl]                                         ; $50ea: $8e
	adc b                                            ; $50eb: $88
	ld b, h                                          ; $50ec: $44
	and h                                            ; $50ed: $a4
	ld b, l                                          ; $50ee: $45
	and h                                            ; $50ef: $a4
	ld c, l                                          ; $50f0: $4d
	and h                                            ; $50f1: $a4
	ld l, l                                          ; $50f2: $6d
	add h                                            ; $50f3: $84
	ld l, l                                          ; $50f4: $6d
	add h                                            ; $50f5: $84
	ld l, a                                          ; $50f6: $6f
	add h                                            ; $50f7: $84
	ld e, a                                          ; $50f8: $5f
	and h                                            ; $50f9: $a4
	ld de, $1bb3                                     ; $50fa: $11 $b3 $1b
	or c                                             ; $50fd: $b1
	dec de                                           ; $50fe: $1b
	or c                                             ; $50ff: $b1
	inc de                                           ; $5100: $13
	cp c                                             ; $5101: $b9
	ld [de], a                                       ; $5102: $12
	ld a, e                                          ; $5103: $7b
	cp $9e                                           ; $5104: $fe $9e
	ld d, d                                          ; $5106: $52
	ld a, e                                          ; $5107: $7b

jr_022_5108:
	cp $57                                           ; $5108: $fe $57
	dec l                                            ; $510a: $2d
	ld [hl], a                                       ; $510b: $77
	cp $7f                                           ; $510c: $fe $7f
	adc [hl]                                         ; $510e: $8e
	ld a, [hl]                                       ; $510f: $7e
	and b                                            ; $5110: $a0
	ld [hl], a                                       ; $5111: $77
	cp $7e                                           ; $5112: $fe $7e
	db $fc                                           ; $5114: $fc
	db $db                                           ; $5115: $db
	inc bc                                           ; $5116: $03
	ld [hl], a                                       ; $5117: $77
	adc h                                            ; $5118: $8c
	sbc l                                            ; $5119: $9d
	rlca                                             ; $511a: $07
	ld hl, sp+$5f                                    ; $511b: $f8 $5f
	cp $9d                                           ; $511d: $fe $9d
	push hl                                          ; $511f: $e5
	ld e, $77                                        ; $5120: $1e $77
	cp $9c                                           ; $5122: $fe $9c

jr_022_5124:
	db $e4                                           ; $5124: $e4
	rra                                              ; $5125: $1f
	ldh [c], a                                       ; $5126: $e2

jr_022_5127:
	ld a, e                                          ; $5127: $7b
	cp $91                                           ; $5128: $fe $91
	ldh a, [c]                                       ; $512a: $f2
	rrca                                             ; $512b: $0f
	ldh a, [c]                                       ; $512c: $f2
	rrca                                             ; $512d: $0f
	di                                               ; $512e: $f3
	inc c                                            ; $512f: $0c
	di                                               ; $5130: $f3
	inc c                                            ; $5131: $0c
	rst SubAFromBC                                          ; $5132: $e7
	jr @+$69                                         ; $5133: $18 $67

	sbc b                                            ; $5135: $98
	ld b, a                                          ; $5136: $47
	cp b                                             ; $5137: $b8
	ld [hl], a                                       ; $5138: $77
	sub $7f                                          ; $5139: $d6 $7f
	ld e, d                                          ; $513b: $5a
	ld a, a                                          ; $513c: $7f
	adc [hl]                                         ; $513d: $8e
	ld e, a                                          ; $513e: $5f
	cp $96                                           ; $513f: $fe $96
	ld sp, hl                                        ; $5141: $f9
	rlca                                             ; $5142: $07
	ld sp, hl                                        ; $5143: $f9
	rlca                                             ; $5144: $07
	ld e, a                                          ; $5145: $5f
	and h                                            ; $5146: $a4
	ld e, a                                          ; $5147: $5f
	and h                                            ; $5148: $a4
	ld a, a                                          ; $5149: $7f
	ld e, e                                          ; $514a: $5b
	cp $9a                                           ; $514b: $fe $9a
	ld d, [hl]                                       ; $514d: $56
	cp c                                             ; $514e: $b9
	ld d, [hl]                                       ; $514f: $56
	cp c                                             ; $5150: $b9
	sub $73                                          ; $5151: $d6 $73
	cp $99                                           ; $5153: $fe $99
	sbc h                                            ; $5155: $9c
	di                                               ; $5156: $f3

jr_022_5157:
	sbc h                                            ; $5157: $9c
	di                                               ; $5158: $f3
	xor h                                            ; $5159: $ac
	di                                               ; $515a: $f3
	ld h, a                                          ; $515b: $67
	adc b                                            ; $515c: $88
	ld h, a                                          ; $515d: $67
	cp $db                                           ; $515e: $fe $db
	inc bc                                           ; $5160: $03
	ld [hl], l                                       ; $5161: $75
	or [hl]                                          ; $5162: $b6
	ld l, a                                          ; $5163: $6f
	cp $9c                                           ; $5164: $fe $9c
	inc bc                                           ; $5166: $03
	db $fc                                           ; $5167: $fc
	add e                                            ; $5168: $83
	ld a, e                                          ; $5169: $7b
	cp $9c                                           ; $516a: $fe $9c
	pop bc                                           ; $516c: $c1
	cp $41                                           ; $516d: $fe $41
	ld a, e                                          ; $516f: $7b
	cp $76                                           ; $5170: $fe $76
	cpl                                              ; $5172: $2f
	ld [hl], a                                       ; $5173: $77
	adc h                                            ; $5174: $8c
	ld a, a                                          ; $5175: $7f
	cp $77                                           ; $5176: $fe $77
	and [hl]                                         ; $5178: $a6
	ld a, a                                          ; $5179: $7f
	cp $77                                           ; $517a: $fe $77
	sbc h                                            ; $517c: $9c
	ld a, [hl]                                       ; $517d: $7e
	and $7f                                          ; $517e: $e6 $7f
	cp $99                                           ; $5180: $fe $99
	cp a                                             ; $5182: $bf
	ret nz                                           ; $5183: $c0

	cp [hl]                                          ; $5184: $be
	pop bc                                           ; $5185: $c1
	jr nc, jr_022_5157                               ; $5186: $30 $cf

	ld l, a                                          ; $5188: $6f
	jr c, jr_022_5124                                ; $5189: $38 $99

	pop af                                           ; $518b: $f1
	rrca                                             ; $518c: $0f
	pop hl                                           ; $518d: $e1
	rra                                              ; $518e: $1f
	add c                                            ; $518f: $81
	ld a, a                                          ; $5190: $7f
	ld e, [hl]                                       ; $5191: $5e
	db $fd                                           ; $5192: $fd
	sub [hl]                                         ; $5193: $96
	ld l, a                                          ; $5194: $6f
	or h                                             ; $5195: $b4
	ld l, a                                          ; $5196: $6f
	or h                                             ; $5197: $b4
	ld l, l                                          ; $5198: $6d
	or [hl]                                          ; $5199: $b6
	db $ed                                           ; $519a: $ed
	ld [hl], $eb                                     ; $519b: $36 $eb
	ld a, e                                          ; $519d: $7b
	cp $9a                                           ; $519e: $fe $9a
	xor e                                            ; $51a0: $ab
	halt                                             ; $51a1: $76
	xor e                                            ; $51a2: $ab
	halt                                             ; $51a3: $76
	xor h                                            ; $51a4: $ac
	ld a, e                                          ; $51a5: $7b
	adc h                                            ; $51a6: $8c
	ld a, a                                          ; $51a7: $7f
	cp $9c                                           ; $51a8: $fe $9c
	cp b                                             ; $51aa: $b8
	rst SubAFromBC                                          ; $51ab: $e7
	cp c                                             ; $51ac: $b9
	ld a, e                                          ; $51ad: $7b
	cp $9b                                           ; $51ae: $fe $9b
	or c                                             ; $51b0: $b1
	rst AddAOntoHL                                          ; $51b1: $ef
	or c                                             ; $51b2: $b1
	rst AddAOntoHL                                          ; $51b3: $ef
	ld h, a                                          ; $51b4: $67
	adc b                                            ; $51b5: $88
	ld h, [hl]                                       ; $51b6: $66
	ld hl, sp+$2d                                    ; $51b7: $f8 $2d
	nop                                              ; $51b9: $00
	ei                                               ; $51ba: $fb
	rst SubAFromDE                                          ; $51bb: $df
	ld de, $109c                                     ; $51bc: $11 $9c $10
	nop                                              ; $51bf: $00
	ld bc, $11de                                     ; $51c0: $01 $de $11
	ld l, a                                          ; $51c3: $6f
	ei                                               ; $51c4: $fb
	db $dd                                           ; $51c5: $dd
	ld de, $fb7f                                     ; $51c6: $11 $7f $fb
	rst SubAFromDE                                          ; $51c9: $df
	ld [hl+], a                                      ; $51ca: $22
	ld a, e                                          ; $51cb: $7b
	pop af                                           ; $51cc: $f1
	rst SubAFromDE                                          ; $51cd: $df
	ld [hl+], a                                      ; $51ce: $22
	sbc [hl]                                         ; $51cf: $9e
	ld [de], a                                       ; $51d0: $12
	ld [hl], a                                       ; $51d1: $77
	ei                                               ; $51d2: $fb
	sbc b                                            ; $51d3: $98
	ld [hl-], a                                      ; $51d4: $32
	stop                                             ; $51d5: $10 $00
	ld [bc], a                                       ; $51d7: $02
	inc hl                                           ; $51d8: $23
	ld bc, $fe10                                     ; $51d9: $01 $10 $fe
	sbc l                                            ; $51dc: $9d
	ld bc, $6313                                     ; $51dd: $01 $13 $63
	ei                                               ; $51e0: $fb
	ld [hl], e                                       ; $51e1: $73
	pop af                                           ; $51e2: $f1
	ld l, a                                          ; $51e3: $6f
	ei                                               ; $51e4: $fb
	ld e, l                                          ; $51e5: $5d
	add [hl]                                         ; $51e6: $86
	rst $38                                          ; $51e7: $ff
	add [hl]                                         ; $51e8: $86
	inc d                                            ; $51e9: $14
	add hl, bc                                       ; $51ea: $09
	inc b                                            ; $51eb: $04
	sbc b                                            ; $51ec: $98
	ld b, b                                          ; $51ed: $40
	dec sp                                           ; $51ee: $3b
	nop                                              ; $51ef: $00
	nop                                              ; $51f0: $00
	inc e                                            ; $51f1: $1c
	rrca                                             ; $51f2: $0f
	rlca                                             ; $51f3: $07
	rst $38                                          ; $51f4: $ff
	ld a, a                                          ; $51f5: $7f
	ccf                                              ; $51f6: $3f
	scf                                              ; $51f7: $37
	cpl                                              ; $51f8: $2f
	ld e, a                                          ; $51f9: $5f
	cp a                                             ; $51fa: $bf
	cp a                                             ; $51fb: $bf
	ld a, a                                          ; $51fc: $7f
	ld e, a                                          ; $51fd: $5f
	xor a                                            ; $51fe: $af
	ccf                                              ; $51ff: $3f
	ccf                                              ; $5200: $3f
	ld a, a                                          ; $5201: $7f
	sbc $ff                                          ; $5202: $de $ff
	sub e                                            ; $5204: $93
	rst SubAFromDE                                          ; $5205: $df
	cp a                                             ; $5206: $bf
	nop                                              ; $5207: $00
	rra                                              ; $5208: $1f
	ld h, b                                          ; $5209: $60
	adc a                                            ; $520a: $8f
	ld a, a                                          ; $520b: $7f
	rrca                                             ; $520c: $0f
	rst $38                                          ; $520d: $ff
	rst $38                                          ; $520e: $ff
	nop                                              ; $520f: $00
	rra                                              ; $5210: $1f
	ld [hl], a                                       ; $5211: $77
	ldh a, [$cf]                                     ; $5212: $f0 $cf
	rst $38                                          ; $5214: $ff
	sub h                                            ; $5215: $94
	ld [$3aec], sp                                   ; $5216: $08 $ec $3a
	sbc c                                            ; $5219: $99
	push hl                                          ; $521a: $e5
	ldh a, [$fc]                                     ; $521b: $f0 $fc
	cp $08                                           ; $521d: $fe $08
	db $ec                                           ; $521f: $ec
	cp $cc                                           ; $5220: $fe $cc
	rst $38                                          ; $5222: $ff
	db $fd                                           ; $5223: $fd
	sbc e                                            ; $5224: $9b
	ldh a, [rAUD2LOW]                                ; $5225: $f0 $18
	ld h, b                                          ; $5227: $60
	ld b, b                                          ; $5228: $40
	ld [hl], e                                       ; $5229: $73
	ld hl, sp-$66                                    ; $522a: $f8 $9a
	ld hl, sp-$20                                    ; $522c: $f8 $e0
	ret nz                                           ; $522e: $c0

	jr nc, @-$6e                                     ; $522f: $30 $90

	sbc $c8                                          ; $5231: $de $c8
	rst SubAFromDE                                          ; $5233: $df
	add sp, -$64                                     ; $5234: $e8 $9c
	ld hl, sp-$10                                    ; $5236: $f8 $f0
	ldh a, [$db]                                     ; $5238: $f0 $db
	ld hl, sp-$76                                    ; $523a: $f8 $8a
	cp a                                             ; $523c: $bf
	cp l                                             ; $523d: $bd
	dec a                                            ; $523e: $3d
	inc a                                            ; $523f: $3c
	inc e                                            ; $5240: $1c
	ld e, $1e                                        ; $5241: $1e $1e
	rra                                              ; $5243: $1f
	cp a                                             ; $5244: $bf
	cp a                                             ; $5245: $bf
	ccf                                              ; $5246: $3f
	ccf                                              ; $5247: $3f
	rla                                              ; $5248: $17
	dec d                                            ; $5249: $15
	dec d                                            ; $524a: $15
	inc d                                            ; $524b: $14
	rrca                                             ; $524c: $0f
	rlca                                             ; $524d: $07
	inc bc                                           ; $524e: $03
	ld bc, $fe01                                     ; $524f: $01 $01 $fe
	sbc h                                            ; $5252: $9c
	ld a, [bc]                                       ; $5253: $0a
	ld b, $02                                        ; $5254: $06 $02
	ld [hl], e                                       ; $5256: $73
	ld hl, sp-$21                                    ; $5257: $f8 $df
	rst $38                                          ; $5259: $ff
	rst SubAFromDE                                          ; $525a: $df
	db $dd                                           ; $525b: $dd
	sbc e                                            ; $525c: $9b
	call $266e                                       ; $525d: $cd $6e $26
	ld [bc], a                                       ; $5260: $02
	reti                                             ; $5261: $d9


	rst $38                                          ; $5262: $ff
	sbc l                                            ; $5263: $9d
	add d                                            ; $5264: $82
	add e                                            ; $5265: $83
	sbc $c0                                          ; $5266: $de $c0
	rst SubAFromDE                                          ; $5268: $df
	ldh [$9c], a                                     ; $5269: $e0 $9c
	ld h, b                                          ; $526b: $60
	ld a, a                                          ; $526c: $7f
	ld a, a                                          ; $526d: $7f
	sbc $3f                                          ; $526e: $de $3f
	sub h                                            ; $5270: $94
	sbc a                                            ; $5271: $9f
	rst SubAFromDE                                          ; $5272: $df
	ld a, a                                          ; $5273: $7f
	rst FarCall                                          ; $5274: $f7
	ei                                               ; $5275: $fb
	ld sp, hl                                        ; $5276: $f9
	db $dd                                           ; $5277: $dd
	call z, Call_022_61c2                            ; $5278: $cc $c2 $61
	inc hl                                           ; $527b: $23
	db $db                                           ; $527c: $db
	rst $38                                          ; $527d: $ff
	sbc l                                            ; $527e: $9d

Jump_022_527f:
	cp $fc                                           ; $527f: $fe $fc
	sbc $07                                          ; $5281: $de $07
	rst SubAFromDE                                          ; $5283: $df
	ld c, $df                                        ; $5284: $0e $df
	inc e                                            ; $5286: $1c
	sbc [hl]                                         ; $5287: $9e
	inc [hl]                                         ; $5288: $34
	sbc $f9                                          ; $5289: $de $f9
	rst SubAFromDE                                          ; $528b: $df
	ldh a, [c]                                       ; $528c: $f2
	sbc h                                            ; $528d: $9c
	db $e4                                           ; $528e: $e4
	db $ec                                           ; $528f: $ec
	call c, $f8de                                    ; $5290: $dc $de $f8
	sbc l                                            ; $5293: $9d
	ldh a, [$b0]                                     ; $5294: $f0 $b0
	sbc $e0                                          ; $5296: $de $e0
	ld [hl], a                                       ; $5298: $77
	ld hl, sp-$62                                    ; $5299: $f8 $9e
	ldh a, [$de]                                     ; $529b: $f0 $de
	and b                                            ; $529d: $a0
	sbc l                                            ; $529e: $9d
	ret nz                                           ; $529f: $c0

	add b                                            ; $52a0: $80
	ei                                               ; $52a1: $fb
	sbc [hl]                                         ; $52a2: $9e
	ld b, b                                          ; $52a3: $40
	ld l, e                                          ; $52a4: $6b
	ld hl, sp-$0d                                    ; $52a5: $f8 $f3
	sbc c                                            ; $52a7: $99
	rrca                                             ; $52a8: $0f
	ccf                                              ; $52a9: $3f
	jr @+$3e                                         ; $52aa: $18 $3c

	ld a, $3f                                        ; $52ac: $3e $3f
	sbc $7f                                          ; $52ae: $de $7f
	ld [hl], a                                       ; $52b0: $77
	db $fc                                           ; $52b1: $fc
	ld h, e                                          ; $52b2: $63
	ld b, b                                          ; $52b3: $40
	rst $38                                          ; $52b4: $ff

jr_022_52b5:
	sbc l                                            ; $52b5: $9d
	ld bc, $fd07                                     ; $52b6: $01 $07 $fd
	sbc [hl]                                         ; $52b9: $9e
	rlca                                             ; $52ba: $07
	ld a, e                                          ; $52bb: $7b
	db $ed                                           ; $52bc: $ed
	ld b, [hl]                                       ; $52bd: $46
	ld sp, hl                                        ; $52be: $f9
	sbc [hl]                                         ; $52bf: $9e
	ld hl, sp-$2e                                    ; $52c0: $f8 $d2
	rst $38                                          ; $52c2: $ff
	ld a, a                                          ; $52c3: $7f
	ld a, [hl]                                       ; $52c4: $7e
	ld a, [hl]                                       ; $52c5: $7e
	db $f4                                           ; $52c6: $f4
	sbc e                                            ; $52c7: $9b
	rst $38                                          ; $52c8: $ff
	ld a, [$c2e5]                                    ; $52c9: $fa $e5 $c2
	reti                                             ; $52cc: $d9


	rst $38                                          ; $52cd: $ff
	sbc l                                            ; $52ce: $9d
	ld a, [hl]                                       ; $52cf: $7e
	cp $6e                                           ; $52d0: $fe $6e
	add sp, -$22                                     ; $52d2: $e8 $de
	cp $db                                           ; $52d4: $fe $db
	rst $38                                          ; $52d6: $ff
	ld [hl], e                                       ; $52d7: $73
	xor b                                            ; $52d8: $a8
	sbc l                                            ; $52d9: $9d
	ld a, a                                          ; $52da: $7f
	cp a                                             ; $52db: $bf
	ld d, [hl]                                       ; $52dc: $56
	ldh [rIE], a                                     ; $52dd: $e0 $ff
	sbc l                                            ; $52df: $9d
	add b                                            ; $52e0: $80
	ldh [$72], a                                     ; $52e1: $e0 $72
	ldh [$de], a                                     ; $52e3: $e0 $de
	rst $38                                          ; $52e5: $ff
	ld a, e                                          ; $52e6: $7b
	jp nz, $c042                                     ; $52e7: $c2 $42 $c0

	cp $9e                                           ; $52ea: $fe $9e
	db $10                                           ; $52ec: $10
	ld l, a                                          ; $52ed: $6f
	reti                                             ; $52ee: $d9


	sbc c                                            ; $52ef: $99
	ld hl, sp-$04                                    ; $52f0: $f8 $fc
	jr c, jr_022_536c                                ; $52f2: $38 $78

	ld a, b                                          ; $52f4: $78
	ld hl, sp+$7b                                    ; $52f5: $f8 $7b
	sbc l                                            ; $52f7: $9d
	ld [hl], a                                       ; $52f8: $77
	sbc c                                            ; $52f9: $99
	ld [hl], e                                       ; $52fa: $73
	sub $73                                          ; $52fb: $d6 $73
	ld h, d                                          ; $52fd: $62
	ld a, d                                          ; $52fe: $7a
	rst SubAFromHL                                          ; $52ff: $d7
	db $dd                                           ; $5300: $dd

jr_022_5301:
	ld bc, $03df                                     ; $5301: $01 $df $03
	rst SubAFromDE                                          ; $5304: $df
	rlca                                             ; $5305: $07
	ld a, a                                          ; $5306: $7f
	db $fd                                           ; $5307: $fd
	rst SubAFromDE                                          ; $5308: $df
	rrca                                             ; $5309: $0f
	rst SubAFromDE                                          ; $530a: $df
	rra                                              ; $530b: $1f
	rst SubAFromDE                                          ; $530c: $df
	ccf                                              ; $530d: $3f
	ld [hl], e                                       ; $530e: $73
	ei                                               ; $530f: $fb
	sbc $7f                                          ; $5310: $de $7f
	sbc [hl]                                         ; $5312: $9e
	rlca                                             ; $5313: $07
	ld [hl], d                                       ; $5314: $72
	jr c, jr_022_52b5                                ; $5315: $38 $9e

	rra                                              ; $5317: $1f
	rst JumpTable                                          ; $5318: $c7
	rst $38                                          ; $5319: $ff
	ld a, e                                          ; $531a: $7b
	or [hl]                                          ; $531b: $b6
	ld b, a                                          ; $531c: $47
	adc h                                            ; $531d: $8c
	push de                                          ; $531e: $d5
	rst $38                                          ; $531f: $ff
	ld a, l                                          ; $5320: $7d
	db $e3                                           ; $5321: $e3
	sbc d                                            ; $5322: $9a
	ld [bc], a                                       ; $5323: $02
	ld de, $111d                                     ; $5324: $11 $1d $11
	ccf                                              ; $5327: $3f
	ld c, a                                          ; $5328: $4f
	jr nz, jr_022_5301                               ; $5329: $20 $d6

	rst $38                                          ; $532b: $ff
	ld [hl], l                                       ; $532c: $75
	jp nc, $9f9e                                     ; $532d: $d2 $9e $9f

	ld d, a                                          ; $5330: $57
	and c                                            ; $5331: $a1
	ld l, d                                          ; $5332: $6a
	ret z                                            ; $5333: $c8

	rra                                              ; $5334: $1f
	sub b                                            ; $5335: $90
	sbc $fe                                          ; $5336: $de $fe

jr_022_5338:
	sbc $fc                                          ; $5338: $de $fc
	ld h, e                                          ; $533a: $63
	pop af                                           ; $533b: $f1
	ld [hl], a                                       ; $533c: $77
	xor $9c                                          ; $533d: $ee $9c
	db $fc                                           ; $533f: $fc
	db $fd                                           ; $5340: $fd
	db $fd                                           ; $5341: $fd
	ld e, e                                          ; $5342: $5b
	cp a                                             ; $5343: $bf
	ld a, a                                          ; $5344: $7f
	ld b, h                                          ; $5345: $44
	ld a, l                                          ; $5346: $7d
	ei                                               ; $5347: $fb
	ld a, l                                          ; $5348: $7d
	ld [hl], l                                       ; $5349: $75
	ld a, e                                          ; $534a: $7b
	ld hl, sp-$21                                    ; $534b: $f8 $df
	rra                                              ; $534d: $1f
	rst SubAFromDE                                          ; $534e: $df
	rrca                                             ; $534f: $0f
	ld [hl], e                                       ; $5350: $73
	add hl, bc                                       ; $5351: $09
	sbc h                                            ; $5352: $9c
	add b                                            ; $5353: $80
	ret nz                                           ; $5354: $c0

	ldh [$7b], a                                     ; $5355: $e0 $7b
	db $fc                                           ; $5357: $fc
	ld a, d                                          ; $5358: $7a
	add hl, bc                                       ; $5359: $09
	rst SubAFromDE                                          ; $535a: $df
	ldh a, [rPCM34]                                  ; $535b: $f0 $77
	db $fc                                           ; $535d: $fc
	sbc $f8                                          ; $535e: $de $f8
	sbc [hl]                                         ; $5360: $9e
	db $fc                                           ; $5361: $fc
	ld a, e                                          ; $5362: $7b
	db $fd                                           ; $5363: $fd
	ld [hl], d                                       ; $5364: $72
	db $fd                                           ; $5365: $fd
	sbc $3f                                          ; $5366: $de $3f
	rst SubAFromDE                                          ; $5368: $df
	rra                                              ; $5369: $1f
	ld a, d                                          ; $536a: $7a
	ld h, d                                          ; $536b: $62

jr_022_536c:
	call c, Call_022_7f7f                            ; $536c: $dc $7f $7f
	push af                                          ; $536f: $f5
	ldh a, [$7f]                                     ; $5370: $f0 $7f
	and h                                            ; $5372: $a4
	ld a, [hl]                                       ; $5373: $7e
	ld [$c37f], sp                                   ; $5374: $08 $7f $c3
	ld [hl], l                                       ; $5377: $75
	cp b                                             ; $5378: $b8
	sbc d                                            ; $5379: $9a
	rst $38                                          ; $537a: $ff
	db $fd                                           ; $537b: $fd
	ld sp, hl                                        ; $537c: $f9
	pop af                                           ; $537d: $f1
	pop bc                                           ; $537e: $c1
	ldh a, [c]                                       ; $537f: $f2
	rst SubAFromDE                                          ; $5380: $df
	ld bc, $4d6f                                     ; $5381: $01 $6f $4d
	ld e, a                                          ; $5384: $5f
	ld c, e                                          ; $5385: $4b
	db $db                                           ; $5386: $db
	ccf                                              ; $5387: $3f
	rst SubAFromDE                                          ; $5388: $df
	rra                                              ; $5389: $1f
	reti                                             ; $538a: $d9


	rst $38                                          ; $538b: $ff
	rst SubAFromDE                                          ; $538c: $df
	db $fc                                           ; $538d: $fc
	db $db                                           ; $538e: $db
	ld hl, sp+$6b                                    ; $538f: $f8 $6b
	ld b, [hl]                                       ; $5391: $46
	sbc [hl]                                         ; $5392: $9e
	cp $da                                           ; $5393: $fe $da
	ld hl, sp-$62                                    ; $5395: $f8 $9e
	ldh a, [$66]                                     ; $5397: $f0 $66
	jr nc, jr_022_5338                               ; $5399: $30 $9d

	inc bc                                           ; $539b: $03
	nop                                              ; $539c: $00
	call c, $7d03                                    ; $539d: $dc $03 $7d
	rst SubAFromDE                                          ; $53a0: $df
	db $db                                           ; $53a1: $db
	rlca                                             ; $53a2: $07
	ld a, c                                          ; $53a3: $79
	ld b, e                                          ; $53a4: $43
	db $db                                           ; $53a5: $db
	ld bc, $03d9                                     ; $53a6: $01 $d9 $03
	ld [hl], a                                       ; $53a9: $77
	ld e, e                                          ; $53aa: $5b
	db $dd                                           ; $53ab: $dd
	cp $5f                                           ; $53ac: $fe $5f
	or b                                             ; $53ae: $b0
	db $dd                                           ; $53af: $dd
	db $fc                                           ; $53b0: $fc
	ld e, a                                          ; $53b1: $5f
	ldh a, [$6f]                                     ; $53b2: $f0 $6f
	ld a, d                                          ; $53b4: $7a
	ld a, e                                          ; $53b5: $7b
	cp a                                             ; $53b6: $bf
	ld [hl], e                                       ; $53b7: $73
	call $bf7b                                       ; $53b8: $cd $7b $bf
	ld a, e                                          ; $53bb: $7b
	db $fc                                           ; $53bc: $fc
	rst SubAFromDE                                          ; $53bd: $df
	rlca                                             ; $53be: $07
	db $db                                           ; $53bf: $db
	rrca                                             ; $53c0: $0f
	sbc $1f                                          ; $53c1: $de $1f
	ld a, c                                          ; $53c3: $79
	dec e                                            ; $53c4: $1d
	jp $9bff                                         ; $53c5: $c3 $ff $9b


	ldh a, [$e6]                                     ; $53c8: $f0 $e6
	adc $be                                          ; $53ca: $ce $be
	ld a, c                                          ; $53cc: $79
	sbc h                                            ; $53cd: $9c
	ld h, e                                          ; $53ce: $63
	or b                                             ; $53cf: $b0
	jp c, Jump_022_62fe                              ; $53d0: $da $fe $62

	and b                                            ; $53d3: $a0
	ld [hl], a                                       ; $53d4: $77
	ld h, h                                          ; $53d5: $64
	ld l, a                                          ; $53d6: $6f
	xor b                                            ; $53d7: $a8
	sbc c                                            ; $53d8: $99
	inc bc                                           ; $53d9: $03
	add c                                            ; $53da: $81
	add d                                            ; $53db: $82
	add d                                            ; $53dc: $82
	add h                                            ; $53dd: $84
	add h                                            ; $53de: $84
	sbc $0f                                          ; $53df: $de $0f
	rst SubAFromDE                                          ; $53e1: $df
	rlca                                             ; $53e2: $07
	ld a, c                                          ; $53e3: $79
	ret nc                                           ; $53e4: $d0

	sub a                                            ; $53e5: $97
	adc b                                            ; $53e6: $88
	ret                                              ; $53e7: $c9


	ret                                              ; $53e8: $c9


	push bc                                          ; $53e9: $c5
	rst JumpTable                                          ; $53ea: $c7
	pop bc                                           ; $53eb: $c1
	ret nz                                           ; $53ec: $c0

	ldh [$de], a                                     ; $53ed: $e0 $de
	rst $38                                          ; $53ef: $ff
	sbc d                                            ; $53f0: $9a
	ld [bc], a                                       ; $53f1: $02
	add [hl]                                         ; $53f2: $86
	add [hl]                                         ; $53f3: $86
	ld b, $06                                        ; $53f4: $06 $06
	ld [hl], a                                       ; $53f6: $77
	push bc                                          ; $53f7: $c5
	rst SubAFromDE                                          ; $53f8: $df
	ld a, d                                          ; $53f9: $7a
	rst SubAFromDE                                          ; $53fa: $df
	ld a, [$06de]                                    ; $53fb: $fa $de $06
	sbc d                                            ; $53fe: $9a
	inc c                                            ; $53ff: $0c
	jr c, @-$3e                                      ; $5400: $38 $c0

	nop                                              ; $5402: $00
	nop                                              ; $5403: $00
	sbc $fa                                          ; $5404: $de $fa
	sbc l                                            ; $5406: $9d
	db $f4                                           ; $5407: $f4
	ld hl, sp+$7b                                    ; $5408: $f8 $7b
	ld hl, sp-$0c                                    ; $540a: $f8 $f4
	ld a, c                                          ; $540c: $79
	or e                                             ; $540d: $b3
	ld a, h                                          ; $540e: $7c
	ldh [$7c], a                                     ; $540f: $e0 $7c
	rst SubAFromDE                                          ; $5411: $df
	call c, Call_022_5f7f                            ; $5412: $dc $7f $5f
	ld b, b                                          ; $5415: $40
	db $dd                                           ; $5416: $dd
	ld bc, $e074                                     ; $5417: $01 $74 $e0
	sbc [hl]                                         ; $541a: $9e
	ld bc, $cb76                                     ; $541b: $01 $76 $cb
	nop                                              ; $541e: $00
	ldh [rOBP1], a                                   ; $541f: $e0 $49
	ret nz                                           ; $5421: $c0

	ld h, a                                          ; $5422: $67
	ld b, h                                          ; $5423: $44
	ld h, d                                          ; $5424: $62
	call c, $c049                                    ; $5425: $dc $49 $c0
	ld a, [$7673]                                    ; $5428: $fa $73 $76
	sbc [hl]                                         ; $542b: $9e
	ret nz                                           ; $542c: $c0

	ld a, e                                          ; $542d: $7b
	ld a, [hl+]                                      ; $542e: $2a
	sbc [hl]                                         ; $542f: $9e
	ldh a, [rOBP1]                                   ; $5430: $f0 $49
	ld d, e                                          ; $5432: $53
	di                                               ; $5433: $f3
	sbc e                                            ; $5434: $9b
	ldh [$f8], a                                     ; $5435: $e0 $f8
	jr nc, jr_022_54b1                               ; $5437: $30 $78

	ld [hl], c                                       ; $5439: $71
	and $6d                                          ; $543a: $e6 $6d
	ldh [c], a                                       ; $543c: $e2
	sbc $fe                                          ; $543d: $de $fe
	ei                                               ; $543f: $fb
	sbc [hl]                                         ; $5440: $9e
	ld [bc], a                                       ; $5441: $02
	halt                                             ; $5442: $76
	ei                                               ; $5443: $fb
	ld a, d                                          ; $5444: $7a
	ld a, [$0377]                                    ; $5445: $fa $77 $03
	ld [hl], d                                       ; $5448: $72
	xor b                                            ; $5449: $a8
	ld a, l                                          ; $544a: $7d
	and [hl]                                         ; $544b: $a6
	halt                                             ; $544c: $76
	and e                                            ; $544d: $a3
	ld a, b                                          ; $544e: $78
	rst SubAFromDE                                          ; $544f: $df
	ld a, a                                          ; $5450: $7f
	rst FarCall                                          ; $5451: $f7
	ld [hl], a                                       ; $5452: $77
	adc h                                            ; $5453: $8c
	jr @-$1e                                         ; $5454: $18 $e0

	cpl                                              ; $5456: $2f
	ld b, b                                          ; $5457: $40
	sbc [hl]                                         ; $5458: $9e
	rst GetHLinHL                                          ; $5459: $cf
	dec c                                            ; $545a: $0d
	rra                                              ; $545b: $1f
	ld e, d                                          ; $545c: $5a
	db $10                                           ; $545d: $10
	ld [hl], a                                       ; $545e: $77
	push af                                          ; $545f: $f5
	ld e, [hl]                                       ; $5460: $5e
	ld [hl], c                                       ; $5461: $71
	ld [hl], c                                       ; $5462: $71
	jr nz, jr_022_54da                               ; $5463: $20 $75

	sbc a                                            ; $5465: $9f
	ld [hl], e                                       ; $5466: $73
	ld d, $7b                                        ; $5467: $16 $7b
	ld hl, sp+$71                                    ; $5469: $f8 $71
	jr nz, jr_022_54e4                               ; $546b: $20 $77

	db $fd                                           ; $546d: $fd
	ld l, l                                          ; $546e: $6d
	rra                                              ; $546f: $1f
	ld a, l                                          ; $5470: $7d
	ld d, l                                          ; $5471: $55
	ld [hl], c                                       ; $5472: $71
	ld a, [de]                                       ; $5473: $1a
	ld a, c                                          ; $5474: $79
	sbc a                                            ; $5475: $9f
	ld [hl], a                                       ; $5476: $77
	ei                                               ; $5477: $fb
	sbc $fc                                          ; $5478: $de $fc
	ld l, l                                          ; $547a: $6d
	ld [hl], c                                       ; $547b: $71
	ld a, [hl]                                       ; $547c: $7e
	and c                                            ; $547d: $a1
	ld l, l                                          ; $547e: $6d
	ld hl, $9976                                     ; $547f: $21 $76 $99
	di                                               ; $5482: $f3
	ld h, a                                          ; $5483: $67
	xor e                                            ; $5484: $ab
	ld h, a                                          ; $5485: $67
	ld hl, sp+$7e                                    ; $5486: $f8 $7e
	inc h                                            ; $5488: $24
	db $dd                                           ; $5489: $dd
	ld bc, $557a                                     ; $548a: $01 $7a $55
	jp c, Jump_022_7b01                              ; $548d: $da $01 $7b

	ld [hl], c                                       ; $5490: $71
	ld h, l                                          ; $5491: $65
	ld b, b                                          ; $5492: $40
	ld l, [hl]                                       ; $5493: $6e
	ld [hl], b                                       ; $5494: $70
	ld [hl], e                                       ; $5495: $73
	ld h, [hl]                                       ; $5496: $66
	ld a, a                                          ; $5497: $7f
	or l                                             ; $5498: $b5
	ld h, c                                          ; $5499: $61
	ldh [$98], a                                     ; $549a: $e0 $98
	add hl, bc                                       ; $549c: $09
	inc b                                            ; $549d: $04
	inc de                                           ; $549e: $13
	add hl, bc                                       ; $549f: $09
	dec h                                            ; $54a0: $25
	inc de                                           ; $54a1: $13
	adc c                                            ; $54a2: $89
	reti                                             ; $54a3: $d9


	rst $38                                          ; $54a4: $ff
	sbc l                                            ; $54a5: $9d
	ld b, a                                          ; $54a6: $47
	ld h, a                                          ; $54a7: $67
	ld c, [hl]                                       ; $54a8: $4e
	and b                                            ; $54a9: $a0
	call c, Call_022_77fc                            ; $54aa: $dc $fc $77
	ret nz                                           ; $54ad: $c0

	jp c, $ddfe                                      ; $54ae: $da $fe $dd

jr_022_54b1:
	ld hl, sp+$6d                                    ; $54b1: $f8 $6d
	ld a, $db                                        ; $54b3: $3e $db
	cp $74                                           ; $54b5: $fe $74
	ld e, h                                          ; $54b7: $5c
	ld l, l                                          ; $54b8: $6d
	ld d, l                                          ; $54b9: $55
	ld h, a                                          ; $54ba: $67
	ld hl, sp+$7a                                    ; $54bb: $f8 $7a
	xor c                                            ; $54bd: $a9
	ld [hl], b                                       ; $54be: $70
	cp [hl]                                          ; $54bf: $be
	ld l, a                                          ; $54c0: $6f
	ld hl, sp+$68                                    ; $54c1: $f8 $68
	ld e, b                                          ; $54c3: $58
	ld h, a                                          ; $54c4: $67
	ret nc                                           ; $54c5: $d0

	ld l, a                                          ; $54c6: $6f
	or e                                             ; $54c7: $b3
	ld a, e                                          ; $54c8: $7b
	ld [hl+], a                                      ; $54c9: $22
	ld h, a                                          ; $54ca: $67
	ld hl, sp+$64                                    ; $54cb: $f8 $64
	ld a, b                                          ; $54cd: $78
	ld l, b                                          ; $54ce: $68
	call Call_022_5875                               ; $54cf: $cd $75 $58
	sbc $07                                          ; $54d2: $de $07
	ld a, e                                          ; $54d4: $7b
	ld b, b                                          ; $54d5: $40
	ld [hl], b                                       ; $54d6: $70
	ei                                               ; $54d7: $fb
	rst $38                                          ; $54d8: $ff
	sbc l                                            ; $54d9: $9d

jr_022_54da:
	rra                                              ; $54da: $1f
	ld e, a                                          ; $54db: $5f
	call $67ff                                       ; $54dc: $cd $ff $67
	ld [$f873], sp                                   ; $54df: $08 $73 $f8
	ld [hl], d                                       ; $54e2: $72
	sub d                                            ; $54e3: $92

jr_022_54e4:
	sbc d                                            ; $54e4: $9a
	ld sp, hl                                        ; $54e5: $f9
	ei                                               ; $54e6: $fb
	db $e3                                           ; $54e7: $e3
	rst GetHLinHL                                          ; $54e8: $cf
	cp a                                             ; $54e9: $bf
	ld e, e                                          ; $54ea: $5b
	ldh [$6e], a                                     ; $54eb: $e0 $6e
	ld a, h                                          ; $54ed: $7c
	rst $38                                          ; $54ee: $ff
	sbc [hl]                                         ; $54ef: $9e
	ld sp, $c679                                     ; $54f0: $31 $79 $c6
	sbc e                                            ; $54f3: $9b
	ld h, b                                          ; $54f4: $60
	ret nz                                           ; $54f5: $c0

	ld [$6730], sp                                   ; $54f6: $08 $30 $67
	rrca                                             ; $54f9: $0f
	sbc d                                            ; $54fa: $9a
	add $d9                                          ; $54fb: $c6 $d9
	and $d9                                          ; $54fd: $e6 $d9
	adc $7b                                          ; $54ff: $ce $7b
	db $ec                                           ; $5501: $ec
	ld a, d                                          ; $5502: $7a
	add d                                            ; $5503: $82
	sbc l                                            ; $5504: $9d
	rra                                              ; $5505: $1f
	ld c, $fe                                        ; $5506: $0e $fe
	sbc e                                            ; $5508: $9b
	ldh a, [rSVBK]                                   ; $5509: $f0 $70
	jr nz, jr_022_556d                               ; $550b: $20 $60

	db $dd                                           ; $550d: $dd
	ld b, b                                          ; $550e: $40
	rst SubAFromDE                                          ; $550f: $df
	ldh a, [$df]                                     ; $5510: $f0 $df
	ldh [$dd], a                                     ; $5512: $e0 $dd
	ret nz                                           ; $5514: $c0

	rst SubAFromDE                                          ; $5515: $df
	ld b, b                                          ; $5516: $40
	ld a, d                                          ; $5517: $7a
	ld [hl], d                                       ; $5518: $72
	ld [hl], l                                       ; $5519: $75
	sub h                                            ; $551a: $94
	sbc [hl]                                         ; $551b: $9e
	ret nz                                           ; $551c: $c0

	ld l, a                                          ; $551d: $6f
	ld hl, sp-$06                                    ; $551e: $f8 $fa
	sbc [hl]                                         ; $5520: $9e
	db $10                                           ; $5521: $10
	db $fc                                           ; $5522: $fc
	sbc e                                            ; $5523: $9b
	inc bc                                           ; $5524: $03
	ccf                                              ; $5525: $3f
	ld a, a                                          ; $5526: $7f
	jr c, jr_022_559a                                ; $5527: $38 $71

	nop                                              ; $5529: $00
	ld e, l                                          ; $552a: $5d
	ld e, c                                          ; $552b: $59
	ld b, c                                          ; $552c: $41
	nop                                              ; $552d: $00
	ld b, e                                          ; $552e: $43
	ld d, [hl]                                       ; $552f: $56
	push af                                          ; $5530: $f5
	sbc [hl]                                         ; $5531: $9e
	add b                                            ; $5532: $80
	ld sp, $df60                                     ; $5533: $31 $60 $df
	ld [bc], a                                       ; $5536: $02
	ld [hl], b                                       ; $5537: $70
	ld e, e                                          ; $5538: $5b
	ld [hl], a                                       ; $5539: $77
	rlca                                             ; $553a: $07
	sbc [hl]                                         ; $553b: $9e
	rrca                                             ; $553c: $0f
	ld l, c                                          ; $553d: $69
	ld e, c                                          ; $553e: $59
	ld l, [hl]                                       ; $553f: $6e
	or l                                             ; $5540: $b5
	sbc $3f                                          ; $5541: $de $3f
	ld [hl], d                                       ; $5543: $72
	ld d, [hl]                                       ; $5544: $56
	ld e, h                                          ; $5545: $5c
	sub c                                            ; $5546: $91
	ld [hl], l                                       ; $5547: $75
	or h                                             ; $5548: $b4
	ld [hl], c                                       ; $5549: $71
	db $e3                                           ; $554a: $e3
	db $dd                                           ; $554b: $dd
	rst $38                                          ; $554c: $ff
	rst SubAFromDE                                          ; $554d: $df
	db $fd                                           ; $554e: $fd
	sbc l                                            ; $554f: $9d
	ld sp, hl                                        ; $5550: $f9
	pop af                                           ; $5551: $f1
	call z, $57ff                                    ; $5552: $cc $ff $57
	ret nc                                           ; $5555: $d0

	dec [hl]                                         ; $5556: $35
	ld e, a                                          ; $5557: $5f
	sbc $fc                                          ; $5558: $de $fc
	ld h, a                                          ; $555a: $67
	push af                                          ; $555b: $f5
	ld a, e                                          ; $555c: $7b
	ld [hl], d                                       ; $555d: $72
	ld a, d                                          ; $555e: $7a
	ret c                                            ; $555f: $d8

	sbc [hl]                                         ; $5560: $9e
	ldh a, [$5a]                                     ; $5561: $f0 $5a
	dec bc                                           ; $5563: $0b
	dec a                                            ; $5564: $3d
	ld h, b                                          ; $5565: $60
	ld a, c                                          ; $5566: $79
	ld h, h                                          ; $5567: $64
	ld [hl], e                                       ; $5568: $73
	ei                                               ; $5569: $fb
	ld [hl], l                                       ; $556a: $75
	ld e, a                                          ; $556b: $5f
	ld l, l                                          ; $556c: $6d

jr_022_556d:
	ld h, b                                          ; $556d: $60
	ld a, d                                          ; $556e: $7a
	jp nc, $6069                                     ; $556f: $d2 $69 $60

	ld [hl], a                                       ; $5572: $77
	ld e, h                                          ; $5573: $5c
	db $dd                                           ; $5574: $dd
	rra                                              ; $5575: $1f
	db $db                                           ; $5576: $db
	ld a, a                                          ; $5577: $7f
	rst SubAFromDE                                          ; $5578: $df
	ccf                                              ; $5579: $3f
	sbc $0f                                          ; $557a: $de $0f
	db $dd                                           ; $557c: $dd
	rlca                                             ; $557d: $07
	ld a, [hl]                                       ; $557e: $7e
	sub $70                                          ; $557f: $d6 $70
	sbc e                                            ; $5581: $9b
	ld a, a                                          ; $5582: $7f
	db $f4                                           ; $5583: $f4
	sbc $e0                                          ; $5584: $de $e0
	ld [hl], c                                       ; $5586: $71
	dec [hl]                                         ; $5587: $35
	sbc h                                            ; $5588: $9c
	pop af                                           ; $5589: $f1
	pop hl                                           ; $558a: $e1
	pop hl                                           ; $558b: $e1
	ld [hl], e                                       ; $558c: $73
	ld hl, sp-$0f                                    ; $558d: $f8 $f1
	ld [hl], l                                       ; $558f: $75
	or c                                             ; $5590: $b1
	sbc e                                            ; $5591: $9b
	and $81                                          ; $5592: $e6 $81
	nop                                              ; $5594: $00
	ld [bc], a                                       ; $5595: $02
	ld [hl], a                                       ; $5596: $77
	ld hl, sp+$77                                    ; $5597: $f8 $77
	ld a, e                                          ; $5599: $7b

jr_022_559a:
	pop af                                           ; $559a: $f1
	ld [hl], a                                       ; $559b: $77
	xor h                                            ; $559c: $ac
	db $dd                                           ; $559d: $dd
	ccf                                              ; $559e: $3f
	reti                                             ; $559f: $d9


	rst $38                                          ; $55a0: $ff
	db $dd                                           ; $55a1: $dd
	ccf                                              ; $55a2: $3f
	ld a, e                                          ; $55a3: $7b
	ld [hl+], a                                      ; $55a4: $22
	ld h, e                                          ; $55a5: $63
	jr nz, jr_022_561a                               ; $55a6: $20 $72

	jr jr_022_5628                                   ; $55a8: $18 $7e

	rst AddAOntoHL                                          ; $55aa: $ef
	sbc [hl]                                         ; $55ab: $9e
	ldh [c], a                                       ; $55ac: $e2
	ld [hl], c                                       ; $55ad: $71
	ld e, h                                          ; $55ae: $5c
	sbc $ff                                          ; $55af: $de $ff
	sbc b                                            ; $55b1: $98
	call nz, $f1c8                                   ; $55b2: $c4 $c8 $f1
	ldh [c], a                                       ; $55b5: $e2
	db $f4                                           ; $55b6: $f4
	ld sp, hl                                        ; $55b7: $f9
	ld a, [$8f60]                                    ; $55b8: $fa $60 $8f
	ld a, d                                          ; $55bb: $7a
	cp e                                             ; $55bc: $bb
	ld a, a                                          ; $55bd: $7f
	call nc, Call_022_737f                           ; $55be: $d4 $7f $73
	ld a, d                                          ; $55c1: $7a
	or d                                             ; $55c2: $b2
	ld a, e                                          ; $55c3: $7b
	ld hl, sp-$22                                    ; $55c4: $f8 $de
	rst $38                                          ; $55c6: $ff
	ld [hl], e                                       ; $55c7: $73
	ld h, d                                          ; $55c8: $62
	sbc h                                            ; $55c9: $9c
	adc h                                            ; $55ca: $8c
	jr nc, jr_022_562d                               ; $55cb: $30 $60

	ld [hl], b                                       ; $55cd: $70
	ld [hl], $9e                                     ; $55ce: $36 $9e
	db $fc                                           ; $55d0: $fc
	ld a, e                                          ; $55d1: $7b
	add hl, sp                                       ; $55d2: $39
	ld l, l                                          ; $55d3: $6d
	ld a, c                                          ; $55d4: $79
	sbc [hl]                                         ; $55d5: $9e
	ldh [rBCPD], a                                   ; $55d6: $e0 $69
	ld h, d                                          ; $55d8: $62
	sbc [hl]                                         ; $55d9: $9e
	ld hl, sp+$79                                    ; $55da: $f8 $79
	push hl                                          ; $55dc: $e5
	db $fc                                           ; $55dd: $fc
	ld a, a                                          ; $55de: $7f
	xor $6d                                          ; $55df: $ee $6d
	rst $38                                          ; $55e1: $ff
	sbc [hl]                                         ; $55e2: $9e
	ld [bc], a                                       ; $55e3: $02
	ld a, d                                          ; $55e4: $7a
	ld h, d                                          ; $55e5: $62
	ld a, b                                          ; $55e6: $78
	or c                                             ; $55e7: $b1
	ld a, l                                          ; $55e8: $7d
	ld [hl], b                                       ; $55e9: $70
	sbc $03                                          ; $55ea: $de $03
	ld [hl], a                                       ; $55ec: $77
	ld hl, sp-$0f                                    ; $55ed: $f8 $f1
	sub a                                            ; $55ef: $97
	ld bc, $1204                                     ; $55f0: $01 $04 $12
	add hl, bc                                       ; $55f3: $09
	inc h                                            ; $55f4: $24
	sub e                                            ; $55f5: $93
	ld c, a                                          ; $55f6: $4f
	inc sp                                           ; $55f7: $33
	ld l, d                                          ; $55f8: $6a
	call nz, $339e                                   ; $55f9: $c4 $9e $33
	ld l, c                                          ; $55fc: $69
	ld b, c                                          ; $55fd: $41
	ld a, l                                          ; $55fe: $7d
	push de                                          ; $55ff: $d5
	ld l, e                                          ; $5600: $6b
	ld hl, sp+$7b                                    ; $5601: $f8 $7b
	ld d, l                                          ; $5603: $55
	ld h, e                                          ; $5604: $63
	ld b, h                                          ; $5605: $44
	ld d, l                                          ; $5606: $55
	db $eb                                           ; $5607: $eb
	ld d, e                                          ; $5608: $53
	ld hl, sp-$23                                    ; $5609: $f8 $dd
	rst $38                                          ; $560b: $ff
	sbc h                                            ; $560c: $9c
	ld sp, hl                                        ; $560d: $f9
	ldh a, [$cc]                                     ; $560e: $f0 $cc
	ld l, l                                          ; $5610: $6d
	ld c, h                                          ; $5611: $4c
	ld l, a                                          ; $5612: $6f
	add sp, $73                                      ; $5613: $e8 $73
	db $f4                                           ; $5615: $f4
	halt                                             ; $5616: $76
	adc d                                            ; $5617: $8a
	ld l, [hl]                                       ; $5618: $6e
	add b                                            ; $5619: $80

jr_022_561a:
	ld [hl], d                                       ; $561a: $72
	ld a, [hl]                                       ; $561b: $7e
	ld l, a                                          ; $561c: $6f
	push af                                          ; $561d: $f5
	sbc $c0                                          ; $561e: $de $c0
	ldh [$da], a                                     ; $5620: $e0 $da
	db $dd                                           ; $5622: $dd
	ld bc, $9efa                                     ; $5623: $01 $fa $9e
	jr @-$02                                         ; $5626: $18 $fc

jr_022_5628:
	sbc c                                            ; $5628: $99

jr_022_5629:
	rlca                                             ; $5629: $07
	ccf                                              ; $562a: $3f
	ld a, a                                          ; $562b: $7f
	inc a                                            ; $562c: $3c

jr_022_562d:
	ld a, $7e                                        ; $562d: $3e $7e
	ld [hl], c                                       ; $562f: $71
	ldh [c], a                                       ; $5630: $e2
	ld h, [hl]                                       ; $5631: $66
	cp a                                             ; $5632: $bf
	ld l, a                                          ; $5633: $6f
	ret c                                            ; $5634: $d8

	ld a, a                                          ; $5635: $7f
	ld d, e                                          ; $5636: $53
	ld [hl], e                                       ; $5637: $73
	pop hl                                           ; $5638: $e1
	dec e                                            ; $5639: $1d
	ld b, b                                          ; $563a: $40
	ld [hl], e                                       ; $563b: $73
	adc l                                            ; $563c: $8d
	ld [hl], l                                       ; $563d: $75
	adc e                                            ; $563e: $8b
	ld a, h                                          ; $563f: $7c
	ld b, a                                          ; $5640: $47
	ld e, c                                          ; $5641: $59
	push de                                          ; $5642: $d5
	ld b, d                                          ; $5643: $42
	ld d, b                                          ; $5644: $50
	sbc e                                            ; $5645: $9b
	ldh [$f8], a                                     ; $5646: $e0 $f8
	jr nz, jr_022_56ba                               ; $5648: $20 $70

	ld h, l                                          ; $564a: $65
	jr nz, jr_022_5629                               ; $564b: $20 $dc

	cp $7f                                           ; $564d: $fe $7f
	ldh [rPCM34], a                                  ; $564f: $e0 $77
	ld a, l                                          ; $5651: $7d
	db $db                                           ; $5652: $db
	inc bc                                           ; $5653: $03
	ld [hl], b                                       ; $5654: $70
	dec l                                            ; $5655: $2d
	ld l, h                                          ; $5656: $6c
	jr z, jr_022_56d2                                ; $5657: $28 $79

	push hl                                          ; $5659: $e5
	ld [hl], c                                       ; $565a: $71
	ld hl, $5869                                     ; $565b: $21 $69 $58
	ld a, a                                          ; $565e: $7f
	ld a, [$fd9e]                                    ; $565f: $fa $9e $fd
	ld h, d                                          ; $5662: $62
	ld sp, hl                                        ; $5663: $f9
	ld [hl], c                                       ; $5664: $71
	ld [hl+], a                                      ; $5665: $22
	rst SubAFromDE                                          ; $5666: $df
	ldh [$75], a                                     ; $5667: $e0 $75
	ld [hl+], a                                      ; $5669: $22
	ld a, l                                          ; $566a: $7d
	ld hl, $202d                                     ; $566b: $21 $2d $20
	db $dd                                           ; $566e: $dd
	ld a, a                                          ; $566f: $7f
	ret z                                            ; $5670: $c8

	rst $38                                          ; $5671: $ff
	ld [hl], a                                       ; $5672: $77
	push hl                                          ; $5673: $e5
	sbc h                                            ; $5674: $9c
	db $fc                                           ; $5675: $fc
	ld sp, hl                                        ; $5676: $f9
	ldh a, [c]                                       ; $5677: $f2
	push bc                                          ; $5678: $c5
	rst $38                                          ; $5679: $ff
	ld a, l                                          ; $567a: $7d
	ld e, e                                          ; $567b: $5b
	sbc l                                            ; $567c: $9d
	rlca                                             ; $567d: $07
	ld bc, $ffd9                                     ; $567e: $01 $d9 $ff
	sbc l                                            ; $5681: $9d
	ldh a, [$f6]                                     ; $5682: $f0 $f6
	ld a, e                                          ; $5684: $7b
	jr nc, jr_022_5704                               ; $5685: $30 $7d

	ld h, d                                          ; $5687: $62
	ret z                                            ; $5688: $c8

	rst $38                                          ; $5689: $ff
	ld h, [hl]                                       ; $568a: $66
	adc d                                            ; $568b: $8a
	ld h, l                                          ; $568c: $65
	nop                                              ; $568d: $00
	ld [hl], a                                       ; $568e: $77
	db $fc                                           ; $568f: $fc
	ld l, c                                          ; $5690: $69
	nop                                              ; $5691: $00
	ld [hl], b                                       ; $5692: $70
	rst $38                                          ; $5693: $ff
	jp c, Jump_022_693f                              ; $5694: $da $3f $69

	nop                                              ; $5697: $00
	rst SubAFromDE                                          ; $5698: $df
	ld a, a                                          ; $5699: $7f
	reti                                             ; $569a: $d9


	rra                                              ; $569b: $1f
	ld l, c                                          ; $569c: $69
	ld c, c                                          ; $569d: $49
	sbc [hl]                                         ; $569e: $9e
	ccf                                              ; $569f: $3f
	db $db                                           ; $56a0: $db
	ret nz                                           ; $56a1: $c0

	rst SubAFromDE                                          ; $56a2: $df
	ldh [$7d], a                                     ; $56a3: $e0 $7d
	nop                                              ; $56a5: $00
	db $db                                           ; $56a6: $db
	ldh [$db], a                                     ; $56a7: $e0 $db
	ldh a, [$9d]                                     ; $56a9: $f0 $9d
	pop af                                           ; $56ab: $f1
	add hl, bc                                       ; $56ac: $09
	ld [hl], a                                       ; $56ad: $77
	ei                                               ; $56ae: $fb
	sbc $f1                                          ; $56af: $de $f1
	sbc [hl]                                         ; $56b1: $9e
	ld sp, hl                                        ; $56b2: $f9
	dec [hl]                                         ; $56b3: $35
	jr nz, jr_022_572a                               ; $56b4: $20 $74

	xor [hl]                                         ; $56b6: $ae
	reti                                             ; $56b7: $d9


	rst $38                                          ; $56b8: $ff
	ld a, a                                          ; $56b9: $7f

jr_022_56ba:
	dec [hl]                                         ; $56ba: $35
	ld a, l                                          ; $56bb: $7d
	inc [hl]                                         ; $56bc: $34
	sbc [hl]                                         ; $56bd: $9e
	ld sp, hl                                        ; $56be: $f9
	ld l, c                                          ; $56bf: $69
	jp hl                                            ; $56c0: $e9


	ld h, a                                          ; $56c1: $67
	ld hl, $ffd5                                     ; $56c2: $21 $d5 $ff

jr_022_56c5:
	sbc b                                            ; $56c5: $98
	add c                                            ; $56c6: $81
	ld bc, $8141                                     ; $56c7: $01 $41 $81
	ld de, $6321                                     ; $56ca: $11 $21 $63
	jp nc, Jump_022_7dff                             ; $56cd: $d2 $ff $7d

	ld [hl], $4b                                     ; $56d0: $36 $4b

jr_022_56d2:
	ldh a, [rPCM12]                                  ; $56d2: $f0 $76
	ld b, l                                          ; $56d4: $45
	ld [hl], e                                       ; $56d5: $73
	rst FarCall                                          ; $56d6: $f7
	ld h, l                                          ; $56d7: $65
	call nz, $f867                                   ; $56d8: $c4 $67 $f8
	ld [hl], l                                       ; $56db: $75
	ld [bc], a                                       ; $56dc: $02
	ld a, h                                          ; $56dd: $7c
	dec hl                                           ; $56de: $2b
	rst $38                                          ; $56df: $ff
	db $dd                                           ; $56e0: $dd
	db $fc                                           ; $56e1: $fc
	ld a, e                                          ; $56e2: $7b
	or $f0                                           ; $56e3: $f6 $f0
	sbc l                                            ; $56e5: $9d
	inc e                                            ; $56e6: $1c
	jr jr_022_56c5                                   ; $56e7: $18 $dc

	ld [$099e], sp                                   ; $56e9: $08 $9e $09
	ld [hl], h                                       ; $56ec: $74
	inc sp                                           ; $56ed: $33
	db $dd                                           ; $56ee: $dd
	rrca                                             ; $56ef: $0f
	sbc l                                            ; $56f0: $9d
	ld b, $03                                        ; $56f1: $06 $03
	ei                                               ; $56f3: $fb
	ld a, h                                          ; $56f4: $7c
	ldh a, [$fb]                                     ; $56f5: $f0 $fb
	rst SubAFromDE                                          ; $56f7: $df
	dec b                                            ; $56f8: $05
	sbc b                                            ; $56f9: $98
	inc bc                                           ; $56fa: $03
	dec de                                           ; $56fb: $1b
	dec bc                                           ; $56fc: $0b
	rlca                                             ; $56fd: $07
	ld h, e                                          ; $56fe: $63
	rra                                              ; $56ff: $1f
	db $fd                                           ; $5700: $fd
	ld h, [hl]                                       ; $5701: $66
	ld a, $9e                                        ; $5702: $3e $9e

jr_022_5704:
	db $e3                                           ; $5704: $e3
	halt                                             ; $5705: $76
	rla                                              ; $5706: $17
	ld a, c                                          ; $5707: $79
	jr z, jr_022_5775                                ; $5708: $28 $6b

	ld hl, sp-$62                                    ; $570a: $f8 $9e
	adc a                                            ; $570c: $8f
	ld a, [hl+]                                      ; $570d: $2a
	xor d                                            ; $570e: $aa
	ld h, a                                          ; $570f: $67
	ld hl, sp+$7f                                    ; $5710: $f8 $7f
	adc h                                            ; $5712: $8c
	sbc l                                            ; $5713: $9d
	db $e4                                           ; $5714: $e4
	call c, $0861                                    ; $5715: $dc $61 $08
	ld [hl], a                                       ; $5718: $77
	ld e, a                                          ; $5719: $5f
	ld c, e                                          ; $571a: $4b
	ldh [$f7], a                                     ; $571b: $e0 $f7
	db $db                                           ; $571d: $db
	add b                                            ; $571e: $80
	ld h, a                                          ; $571f: $67
	or $6e                                           ; $5720: $f6 $6e
	xor d                                            ; $5722: $aa
	rst SubAFromDE                                          ; $5723: $df
	ldh [$fa], a                                     ; $5724: $e0 $fa
	sbc [hl]                                         ; $5726: $9e
	db $10                                           ; $5727: $10
	db $fc                                           ; $5728: $fc
	sbc c                                            ; $5729: $99

jr_022_572a:
	inc bc                                           ; $572a: $03
	ccf                                              ; $572b: $3f
	ld a, a                                          ; $572c: $7f
	jr c, @+$3e                                      ; $572d: $38 $3c

	dec a                                            ; $572f: $3d
	ld [hl], c                                       ; $5730: $71
	xor d                                            ; $5731: $aa
	ld h, [hl]                                       ; $5732: $66
	ret c                                            ; $5733: $d8

	ld l, h                                          ; $5734: $6c
	ld sp, hl                                        ; $5735: $f9
	sbc l                                            ; $5736: $9d
	inc bc                                           ; $5737: $03
	rrca                                             ; $5738: $0f
	ld [hl], a                                       ; $5739: $77
	ld hl, sp+$76                                    ; $573a: $f8 $76
	xor e                                            ; $573c: $ab
	ld b, h                                          ; $573d: $44
	ld [hl], e                                       ; $573e: $73
	sbc [hl]                                         ; $573f: $9e
	ld hl, sp+$42                                    ; $5740: $f8 $42
	add $79                                          ; $5742: $c6 $79
	rra                                              ; $5744: $1f
	sbc h                                            ; $5745: $9c
	cp $fd                                           ; $5746: $fe $fd
	ld a, [$ffd9]                                    ; $5748: $fa $d9 $ff
	sbc [hl]                                         ; $574b: $9e
	ld a, [hl]                                       ; $574c: $7e
	ld l, e                                          ; $574d: $6b
	ld h, h                                          ; $574e: $64
	ld h, e                                          ; $574f: $63
	ld e, h                                          ; $5750: $5c
	ld [hl], a                                       ; $5751: $77
	and a                                            ; $5752: $a7
	sbc h                                            ; $5753: $9c
	cp a                                             ; $5754: $bf
	ld c, a                                          ; $5755: $4f
	add a                                            ; $5756: $87
	ld c, c                                          ; $5757: $49
	ldh [$72], a                                     ; $5758: $e0 $72
	or c                                             ; $575a: $b1
	sbc [hl]                                         ; $575b: $9e
	ret nz                                           ; $575c: $c0

	ld a, d                                          ; $575d: $7a
	adc d                                            ; $575e: $8a
	ld b, b                                          ; $575f: $40
	ldh [$79], a                                     ; $5760: $e0 $79
	nop                                              ; $5762: $00
	rst SubAFromDE                                          ; $5763: $df
	ld [bc], a                                       ; $5764: $02
	ld a, l                                          ; $5765: $7d
	inc c                                            ; $5766: $0c
	halt                                             ; $5767: $76
	ldh a, [c]                                       ; $5768: $f2
	ld [hl], c                                       ; $5769: $71
	ld [$0775], sp                                   ; $576a: $08 $75 $07
	ld a, c                                          ; $576d: $79
	ld b, $7b                                        ; $576e: $06 $7b
	db $fd                                           ; $5770: $fd
	ld a, e                                          ; $5771: $7b
	ld e, b                                          ; $5772: $58
	ld h, l                                          ; $5773: $65
	nop                                              ; $5774: $00

jr_022_5775:
	sbc l                                            ; $5775: $9d
	ld a, a                                          ; $5776: $7f
	ld a, l                                          ; $5777: $7d
	ld h, d                                          ; $5778: $62
	db $10                                           ; $5779: $10
	ld a, c                                          ; $577a: $79
	ld bc, $e0de                                     ; $577b: $01 $de $e0
	sbc [hl]                                         ; $577e: $9e
	ret nz                                           ; $577f: $c0

	ld a, c                                          ; $5780: $79
	nop                                              ; $5781: $00
	ld a, l                                          ; $5782: $7d
	inc bc                                           ; $5783: $03
	rst SubAFromDE                                          ; $5784: $df
	pop af                                           ; $5785: $f1
	sbc c                                            ; $5786: $99
	pop hl                                           ; $5787: $e1
	push af                                          ; $5788: $f5
	ld a, [$fdfa]                                    ; $5789: $fa $fa $fd
	di                                               ; $578c: $f3
	ld e, c                                          ; $578d: $59
	ld h, c                                          ; $578e: $61
	ld [hl], e                                       ; $578f: $73

jr_022_5790:
	ld h, b                                          ; $5790: $60
	sub $ff                                          ; $5791: $d6 $ff
	sbc b                                            ; $5793: $98
	ld hl, $8040                                     ; $5794: $21 $40 $80
	db $10                                           ; $5797: $10
	ld [hl], b                                       ; $5798: $70
	db $10                                           ; $5799: $10
	ld sp, hl                                        ; $579a: $f9
	ld c, l                                          ; $579b: $4d
	nop                                              ; $579c: $00
	ld b, h                                          ; $579d: $44
	jp nc, $ffc6                                     ; $579e: $d2 $c6 $ff

	sbc l                                            ; $57a1: $9d
	ret nz                                           ; $57a2: $c0

	ld hl, sp+$77                                    ; $57a3: $f8 $77
	or b                                             ; $57a5: $b0
	sbc [hl]                                         ; $57a6: $9e
	ldh a, [rVBK]                                    ; $57a7: $f0 $4f
	ld c, e                                          ; $57a9: $4b
	ld b, c                                          ; $57aa: $41
	nop                                              ; $57ab: $00
	ld h, [hl]                                       ; $57ac: $66
	ld a, [hl]                                       ; $57ad: $7e
	rst SubAFromDE                                          ; $57ae: $df
	ret nz                                           ; $57af: $c0

	ld a, a                                          ; $57b0: $7f
	db $fd                                           ; $57b1: $fd
	ld [hl], l                                       ; $57b2: $75
	inc a                                            ; $57b3: $3c
	rst SubAFromDE                                          ; $57b4: $df
	ld hl, sp+$73                                    ; $57b5: $f8 $73
	ei                                               ; $57b7: $fb
	sbc $fc                                          ; $57b8: $de $fc
	ld [hl], e                                       ; $57ba: $73
	dec sp                                           ; $57bb: $3b
	ld e, b                                          ; $57bc: $58
	ld l, a                                          ; $57bd: $6f
	ld c, e                                          ; $57be: $4b
	pop af                                           ; $57bf: $f1
	ld a, a                                          ; $57c0: $7f
	and b                                            ; $57c1: $a0
	ld a, [hl]                                       ; $57c2: $7e
	and $dc                                          ; $57c3: $e6 $dc
	add b                                            ; $57c5: $80
	sbc $e1                                          ; $57c6: $de $e1
	ld [hl], a                                       ; $57c8: $77
	add hl, hl                                       ; $57c9: $29
	ld a, a                                          ; $57ca: $7f
	ret nz                                           ; $57cb: $c0

	jp c, $de80                                      ; $57cc: $da $80 $de

	ret nz                                           ; $57cf: $c0

	call c, $2dc1                                    ; $57d0: $dc $c1 $2d
	nop                                              ; $57d3: $00
	ld a, [hl]                                       ; $57d4: $7e
	pop hl                                           ; $57d5: $e1
	ld h, e                                          ; $57d6: $63
	db $10                                           ; $57d7: $10
	sbc $fe                                          ; $57d8: $de $fe
	db $dd                                           ; $57da: $dd
	db $fc                                           ; $57db: $fc
	ld h, a                                          ; $57dc: $67
	pop af                                           ; $57dd: $f1
	reti                                             ; $57de: $d9


	ld hl, sp-$24                                    ; $57df: $f8 $dc
	cp $73                                           ; $57e1: $fe $73
	adc a                                            ; $57e3: $8f
	ld a, a                                          ; $57e4: $7f
	call nc, $a37e                                   ; $57e5: $d4 $7e $a3
	ld [hl], c                                       ; $57e8: $71
	ret nc                                           ; $57e9: $d0

	ld a, e                                          ; $57ea: $7b
	or $79                                           ; $57eb: $f6 $79
	adc a                                            ; $57ed: $8f
	ldh a, [c]                                       ; $57ee: $f2
	ld [hl], l                                       ; $57ef: $75
	jr nz, jr_022_5790                               ; $57f0: $20 $9e

	ldh a, [$7a]                                     ; $57f2: $f0 $7a
	ld h, d                                          ; $57f4: $62
	call c, Call_022_7ffc                            ; $57f5: $dc $fc $7f
	push af                                          ; $57f8: $f5
	ldh a, [$74]                                     ; $57f9: $f0 $74
	cp l                                             ; $57fb: $bd
	rst SubAFromDE                                          ; $57fc: $df
	jp $c1df                                         ; $57fd: $c3 $df $c1


	db $dd                                           ; $5800: $dd
	rst $38                                          ; $5801: $ff
	rst SubAFromDE                                          ; $5802: $df
	cp h                                             ; $5803: $bc
	rst SubAFromDE                                          ; $5804: $df
	cp [hl]                                          ; $5805: $be
	sbc $c1                                          ; $5806: $de $c1
	sbc l                                            ; $5808: $9d
	ld h, c                                          ; $5809: $61
	add hl, sp                                       ; $580a: $39
	ld a, e                                          ; $580b: $7b
	cp c                                             ; $580c: $b9
	sbc d                                            ; $580d: $9a
	cp [hl]                                          ; $580e: $be
	cp a                                             ; $580f: $bf
	cp a                                             ; $5810: $bf
	ld e, a                                          ; $5811: $5f
	ccf                                              ; $5812: $3f
	ld a, e                                          ; $5813: $7b
	ld hl, sp-$22                                    ; $5814: $f8 $de
	ret nz                                           ; $5816: $c0

	ld [hl], e                                       ; $5817: $73
	ld [$c1de], sp                                   ; $5818: $08 $de $c1
	sbc d                                            ; $581b: $9a
	inc bc                                           ; $581c: $03
	add e                                            ; $581d: $83
	add e                                            ; $581e: $83
	ld b, e                                          ; $581f: $43
	ld b, e                                          ; $5820: $43
	sbc $e1                                          ; $5821: $de $e1
	ld a, e                                          ; $5823: $7b
	or $df                                           ; $5824: $f6 $df
	inc bc                                           ; $5826: $03
	sbc d                                            ; $5827: $9a
	inc hl                                           ; $5828: $23
	daa                                              ; $5829: $27
	daa                                              ; $582a: $27
	ld b, a                                          ; $582b: $47
	rst JumpTable                                          ; $582c: $c7
	ld a, d                                          ; $582d: $7a
	dec l                                            ; $582e: $2d
	sbc h                                            ; $582f: $9c
	rra                                              ; $5830: $1f
	rst GetHLinHL                                          ; $5831: $cf
	rst AddAOntoHL                                          ; $5832: $ef
	call nz, $9dff                                   ; $5833: $c4 $ff $9d
	ldh a, [c]                                       ; $5836: $f2
	or $59                                           ; $5837: $f6 $59
	inc hl                                           ; $5839: $23
	inc bc                                           ; $583a: $03
	rst $38                                          ; $583b: $ff
	ld a, $20                                        ; $583c: $3e $20
	ret nc                                           ; $583e: $d0

	rst $38                                          ; $583f: $ff
	ld c, d                                          ; $5840: $4a
	ld [hl-], a                                      ; $5841: $32
	jp c, $9805                                      ; $5842: $da $05 $98

	sub [hl]                                         ; $5845: $96
	ld a, l                                          ; $5846: $7d
	adc [hl]                                         ; $5847: $8e
	ld a, l                                          ; $5848: $7d
	sbc [hl]                                         ; $5849: $9e
	ld a, l                                          ; $584a: $7d
	sbc a                                            ; $584b: $9f
	ld l, e                                          ; $584c: $6b
	cp $94                                           ; $584d: $fe $94
	sbc e                                            ; $584f: $9b
	ld a, a                                          ; $5850: $7f
	ld d, h                                          ; $5851: $54
	xor a                                            ; $5852: $af
	ld a, [hl+]                                      ; $5853: $2a
	rst SubAFromDE                                          ; $5854: $df
	sub h                                            ; $5855: $94
	rst AddAOntoHL                                          ; $5856: $ef
	ld [$d4d7], a                                    ; $5857: $ea $d7 $d4
	ld [hl], e                                       ; $585a: $73

jr_022_585b:
	db $fc                                           ; $585b: $fc
	sub l                                            ; $585c: $95
	xor d                                            ; $585d: $aa
	rst SubAFromHL                                          ; $585e: $d7
	dec b                                            ; $585f: $05
	ld a, [$fa05]                                    ; $5860: $fa $05 $fa
	inc b                                            ; $5863: $04
	ei                                               ; $5864: $fb
	inc b                                            ; $5865: $04
	ei                                               ; $5866: $fb
	ld [hl], a                                       ; $5867: $77
	ld hl, sp+$77                                    ; $5868: $f8 $77
	cp $9d                                           ; $586a: $fe $9d
	sbc h                                            ; $586c: $9c
	ld h, e                                          ; $586d: $63
	ld c, a                                          ; $586e: $4f
	cp $87                                           ; $586f: $fe $87
	add c                                            ; $5871: $81
	ld a, [hl]                                       ; $5872: $7e
	ret nz                                           ; $5873: $c0

	ccf                                              ; $5874: $3f

Call_022_5875:
	xor $1f                                          ; $5875: $ee $1f
	rst FarCall                                          ; $5877: $f7
	rrca                                             ; $5878: $0f
	rst $38                                          ; $5879: $ff
	rlca                                             ; $587a: $07
	ei                                               ; $587b: $fb
	rlca                                             ; $587c: $07
	rst $38                                          ; $587d: $ff
	inc bc                                           ; $587e: $03
	rst $38                                          ; $587f: $ff
	inc bc                                           ; $5880: $03
	pop hl                                           ; $5881: $e1
	rra                                              ; $5882: $1f
	ld h, c                                          ; $5883: $61
	sbc a                                            ; $5884: $9f

jr_022_5885:
	ld h, c                                          ; $5885: $61
	sbc a                                            ; $5886: $9f
	ld hl, $77df                                     ; $5887: $21 $df $77
	cp $99                                           ; $588a: $fe $99
	ld b, c                                          ; $588c: $41
	cp a                                             ; $588d: $bf
	ld b, c                                          ; $588e: $41
	cp a                                             ; $588f: $bf
	nop                                              ; $5890: $00
	rst $38                                          ; $5891: $ff
	ld [hl], a                                       ; $5892: $77
	cp $94                                           ; $5893: $fe $94
	ld bc, $03fe                                     ; $5895: $01 $fe $03
	db $fc                                           ; $5898: $fc
	inc bc                                           ; $5899: $03
	db $fc                                           ; $589a: $fc
	rlca                                             ; $589b: $07
	ld hl, sp+$0f                                    ; $589c: $f8 $0f
	ldh a, [rAUD1SWEEP]                              ; $589e: $f0 $10
	ld a, e                                          ; $58a0: $7b
	cp $9d                                           ; $58a1: $fe $9d
	jr nz, jr_022_5885                               ; $58a3: $20 $e0

	ld [hl], a                                       ; $58a5: $77
	cp $92                                           ; $58a6: $fe $92
	and b                                            ; $58a8: $a0
	ld h, b                                          ; $58a9: $60
	ldh [rAUD4LEN], a                                ; $58aa: $e0 $20
	ldh a, [rAUD1SWEEP]                              ; $58ac: $f0 $10
	ld b, b                                          ; $58ae: $40
	ld [bc], a                                       ; $58af: $02
	add [hl]                                         ; $58b0: $86
	nop                                              ; $58b1: $00
	inc b                                            ; $58b2: $04
	nop                                              ; $58b3: $00
	ld [$9af8], sp                                   ; $58b4: $08 $f8 $9a
	inc hl                                           ; $58b7: $23
	jr nz, @+$24                                     ; $58b8: $20 $22

	jr nz, jr_022_58dd                               ; $58ba: $20 $21

	sbc $20                                          ; $58bc: $de $20
	ld [hl], a                                       ; $58be: $77
	db $fc                                           ; $58bf: $fc
	db $dd                                           ; $58c0: $dd
	jr nz, jr_022_585b                               ; $58c1: $20 $98

	ld c, a                                          ; $58c3: $4f
	inc bc                                           ; $58c4: $03
	and e                                            ; $58c5: $a3
	nop                                              ; $58c6: $00
	ld b, c                                          ; $58c7: $41
	nop                                              ; $58c8: $00
	add b                                            ; $58c9: $80
	cp $77                                           ; $58ca: $fe $77
	db $fc                                           ; $58cc: $fc
	rst $38                                          ; $58cd: $ff
	sbc c                                            ; $58ce: $99
	ldh a, [rIE]                                     ; $58cf: $f0 $ff
	ret nz                                           ; $58d1: $c0

	rst $38                                          ; $58d2: $ff
	ret nz                                           ; $58d3: $c0

	ld a, a                                          ; $58d4: $7f
	ld e, a                                          ; $58d5: $5f
	cp $9d                                           ; $58d6: $fe $9d
	ld bc, $6fff                                     ; $58d8: $01 $ff $6f
	cp $7b                                           ; $58db: $fe $7b

jr_022_58dd:
	add l                                            ; $58dd: $85
	sbc l                                            ; $58de: $9d
	rst $38                                          ; $58df: $ff
	ld [bc], a                                       ; $58e0: $02
	ld a, e                                          ; $58e1: $7b
	cp $8d                                           ; $58e2: $fe $8d
	db $e3                                           ; $58e4: $e3

jr_022_58e5:
	db $fc                                           ; $58e5: $fc
	di                                               ; $58e6: $f3
	db $fc                                           ; $58e7: $fc
	cp l                                             ; $58e8: $bd
	cp $b7                                           ; $58e9: $fe $b7
	ei                                               ; $58eb: $fb
	jr c, jr_022_58e5                                ; $58ec: $38 $f7

	dec [hl]                                         ; $58ee: $35
	ld a, [$fd32]                                    ; $58ef: $fa $32 $fd
	dec [hl]                                         ; $58f2: $35
	ld a, [$01fe]                                    ; $58f3: $fa $fe $01
	ld a, e                                          ; $58f6: $7b
	add a                                            ; $58f7: $87
	adc b                                            ; $58f8: $88
	inc bc                                           ; $58f9: $03
	ld a, b                                          ; $58fa: $78
	add a                                            ; $58fb: $87
	jp Jump_022_7dff                                 ; $58fc: $c3 $ff $7d


	cp [hl]                                          ; $58ff: $be
	ld [hl+], a                                      ; $5900: $22
	db $dd                                           ; $5901: $dd
	ld d, l                                          ; $5902: $55
	xor d                                            ; $5903: $aa
	jr @-$07                                         ; $5904: $18 $f7

jr_022_5906:
	dec [hl]                                         ; $5906: $35
	ld [$dd62], a                                    ; $5907: $ea $62 $dd
	push de                                          ; $590a: $d5
	xor d                                            ; $590b: $aa
	adc b                                            ; $590c: $88
	ld [hl], a                                       ; $590d: $77
	ld d, l                                          ; $590e: $55
	xor d                                            ; $590f: $aa
	ld [hl], a                                       ; $5910: $77
	ldh a, [$03]                                     ; $5911: $f0 $03
	ld hl, sp+$0b                                    ; $5913: $f8 $0b
	ld hl, sp-$7c                                    ; $5915: $f8 $84
	sbc a                                            ; $5917: $9f
	ld a, a                                          ; $5918: $7f
	dec e                                            ; $5919: $1d
	rst $38                                          ; $591a: $ff
	ccf                                              ; $591b: $3f
	rst $38                                          ; $591c: $ff
	ld e, e                                          ; $591d: $5b
	rst $38                                          ; $591e: $ff
	cp [hl]                                          ; $591f: $be
	rst $38                                          ; $5920: $ff
	ld e, l                                          ; $5921: $5d
	rst $38                                          ; $5922: $ff
	cp d                                             ; $5923: $ba
	rst $38                                          ; $5924: $ff
	push de                                          ; $5925: $d5
	rst $38                                          ; $5926: $ff
	ld [hl], $cf                                     ; $5927: $36 $cf
	xor [hl]                                         ; $5929: $ae
	rst SubAFromHL                                          ; $592a: $d7
	or h                                             ; $592b: $b4
	rst GetHLinHL                                          ; $592c: $cf
	jr z, jr_022_5906                                ; $592d: $28 $d7

	or b                                             ; $592f: $b0
	rst GetHLinHL                                          ; $5930: $cf
	inc l                                            ; $5931: $2c
	ld a, e                                          ; $5932: $7b
	ld hl, sp-$62                                    ; $5933: $f8 $9e
	ld l, $7a                                        ; $5935: $2e $7a
	ret nz                                           ; $5937: $c0

	sbc l                                            ; $5938: $9d
	dec c                                            ; $5939: $0d
	ldh a, [c]                                       ; $593a: $f2
	ld [hl], a                                       ; $593b: $77
	cp $97                                           ; $593c: $fe $97
	add hl, bc                                       ; $593e: $09
	or $01                                           ; $593f: $f6 $01
	cp $21                                           ; $5941: $fe $21
	sbc $31                                          ; $5943: $de $31
	adc $46                                          ; $5945: $ce $46
	ret nz                                           ; $5947: $c0

	sbc [hl]                                         ; $5948: $9e
	db $fd                                           ; $5949: $fd
	halt                                             ; $594a: $76
	rst SubAFromBC                                          ; $594b: $e7
	ld [hl], e                                       ; $594c: $73
	cp $92                                           ; $594d: $fe $92
	ld hl, sp+$07                                    ; $594f: $f8 $07
	ld hl, sp+$07                                    ; $5951: $f8 $07
	ldh a, [rIF]                                     ; $5953: $f0 $0f
	ld b, c                                          ; $5955: $41
	cp a                                             ; $5956: $bf
	ld b, d                                          ; $5957: $42
	cp a                                             ; $5958: $bf
	ld [bc], a                                       ; $5959: $02
	rst $38                                          ; $595a: $ff
	ld b, $7b                                        ; $595b: $06 $7b
	cp $91                                           ; $595d: $fe $91
	ld c, $fb                                        ; $595f: $0e $fb
	ld a, [bc]                                       ; $5961: $0a

jr_022_5962:
	rst $38                                          ; $5962: $ff
	ld d, $fb                                        ; $5963: $16 $fb
	rrca                                             ; $5965: $0f
	ldh a, [$1f]                                     ; $5966: $f0 $1f
	ldh [$1f], a                                     ; $5968: $e0 $1f
	ldh [rIF], a                                     ; $596a: $e0 $0f
	ldh a, [rPCM34]                                  ; $596c: $f0 $77
	cp $7b                                           ; $596e: $fe $7b
	rst SubAFromDE                                          ; $5970: $df
	sub d                                            ; $5971: $92
	ld hl, sp-$10                                    ; $5972: $f8 $f0
	db $10                                           ; $5974: $10
	ld hl, sp+$08                                    ; $5975: $f8 $08
	ld hl, sp+$08                                    ; $5977: $f8 $08
	db $fc                                           ; $5979: $fc
	inc b                                            ; $597a: $04
	db $fc                                           ; $597b: $fc
	inc b                                            ; $597c: $04
	cp $02                                           ; $597d: $fe $02
	ld a, e                                          ; $597f: $7b
	add hl, bc                                       ; $5980: $09
	db $fc                                           ; $5981: $fc
	adc d                                            ; $5982: $8a
	inc bc                                           ; $5983: $03
	ld bc, $0706                                     ; $5984: $01 $06 $07
	jr jr_022_5998                                   ; $5987: $18 $0f

	ld [hl], b                                       ; $5989: $70
	ccf                                              ; $598a: $3f
	ldh [$df], a                                     ; $598b: $e0 $df
	ldh [$1f], a                                     ; $598d: $e0 $1f
	ld [hl], b                                       ; $598f: $70
	jr nz, jr_022_5962                               ; $5990: $20 $d0

	ld [hl], b                                       ; $5992: $70
	adc h                                            ; $5993: $8c
	ld hl, sp+$06                                    ; $5994: $f8 $06
	db $fc                                           ; $5996: $fc
	inc bc                                           ; $5997: $03

jr_022_5998:
	ld [hl], d                                       ; $5998: $72
	adc b                                            ; $5999: $88
	ld a, e                                          ; $599a: $7b
	cp $fe                                           ; $599b: $fe $fe
	db $dd                                           ; $599d: $dd
	ld bc, $828b                                     ; $599e: $01 $8b $82
	inc bc                                           ; $59a1: $03
	jp nz, Jump_022_6483                             ; $59a2: $c2 $83 $64

	rst JumpTable                                          ; $59a5: $c7
	jr c, @+$01                                      ; $59a6: $38 $ff

	ld hl, sp-$79                                    ; $59a8: $f8 $87
	ld hl, sp-$79                                    ; $59aa: $f8 $87
	ld a, h                                          ; $59ac: $7c
	add e                                            ; $59ad: $83
	ld a, h                                          ; $59ae: $7c
	add e                                            ; $59af: $83
	db $fc                                           ; $59b0: $fc
	inc bc                                           ; $59b1: $03
	cp $01                                           ; $59b2: $fe $01
	ld [hl], a                                       ; $59b4: $77
	cp $7f                                           ; $59b5: $fe $7f
	cp e                                             ; $59b7: $bb
	ld l, e                                          ; $59b8: $6b
	ret c                                            ; $59b9: $d8

	sbc [hl]                                         ; $59ba: $9e
	rst $38                                          ; $59bb: $ff
	halt                                             ; $59bc: $76
	ld a, [de]                                       ; $59bd: $1a
	sbc h                                            ; $59be: $9c
	ld b, $f9                                        ; $59bf: $06 $f9
	jr z, jr_022_5a3d                                ; $59c1: $28 $7a

	ldh [$9b], a                                     ; $59c3: $e0 $9b
	ld [hl+], a                                      ; $59c5: $22
	db $fd                                           ; $59c6: $fd
	dec [hl]                                         ; $59c7: $35
	ld [$f867], a                                    ; $59c8: $ea $67 $f8
	ld [bc], a                                       ; $59cb: $02
	ld hl, sp+$03                                    ; $59cc: $f8 $03
	ld hl, sp+$0f                                    ; $59ce: $f8 $0f
	ld hl, sp+$76                                    ; $59d0: $f8 $76
	call z, $fc7f                                    ; $59d2: $cc $7f $fc
	ld a, [hl]                                       ; $59d5: $7e
	call nz, $9e9e                                   ; $59d6: $c4 $9e $9e
	ld a, e                                          ; $59d9: $7b
	db $fc                                           ; $59da: $fc
	sbc [hl]                                         ; $59db: $9e
	sbc d                                            ; $59dc: $9a
	ld a, e                                          ; $59dd: $7b
	db $fc                                           ; $59de: $fc
	sub [hl]                                         ; $59df: $96
	or [hl]                                          ; $59e0: $b6
	rst GetHLinHL                                          ; $59e1: $cf
	ld a, $c7                                        ; $59e2: $3e $c7
	cp [hl]                                          ; $59e4: $be
	rst JumpTable                                          ; $59e5: $c7
	inc a                                            ; $59e6: $3c
	rst JumpTable                                          ; $59e7: $c7
	cp d                                             ; $59e8: $ba
	ld l, e                                          ; $59e9: $6b
	db $fc                                           ; $59ea: $fc
	ld a, [hl]                                       ; $59eb: $7e
	adc $99                                          ; $59ec: $ce $99
	inc sp                                           ; $59ee: $33
	call z, $cc33                                    ; $59ef: $cc $33 $cc
	inc de                                           ; $59f2: $13
	db $ec                                           ; $59f3: $ec
	ld l, a                                          ; $59f4: $6f
	cp $99                                           ; $59f5: $fe $99
	dec de                                           ; $59f7: $1b
	db $e4                                           ; $59f8: $e4
	sbc h                                            ; $59f9: $9c
	ld h, e                                          ; $59fa: $63
	sbc [hl]                                         ; $59fb: $9e
	ld h, c                                          ; $59fc: $61
	ld h, a                                          ; $59fd: $67
	cp $79                                           ; $59fe: $fe $79
	sub a                                            ; $5a00: $97
	sub [hl]                                         ; $5a01: $96
	ld h, c                                          ; $5a02: $61
	ldh [$1f], a                                     ; $5a03: $e0 $1f
	ret nz                                           ; $5a05: $c0

	ccf                                              ; $5a06: $3f
	ret nz                                           ; $5a07: $c0

	ccf                                              ; $5a08: $3f
	add b                                            ; $5a09: $80
	ld a, a                                          ; $5a0a: $7f
	ld l, c                                          ; $5a0b: $69
	sbc b                                            ; $5a0c: $98
	adc [hl]                                         ; $5a0d: $8e
	rst $38                                          ; $5a0e: $ff
	ld a, [de]                                       ; $5a0f: $1a
	rst FarCall                                          ; $5a10: $f7
	ld d, $fb                                        ; $5a11: $16 $fb
	ld a, [hl+]                                      ; $5a13: $2a
	rst FarCall                                          ; $5a14: $f7
	ld [hl], $eb                                     ; $5a15: $36 $eb
	ld l, e                                          ; $5a17: $6b
	rst SubAFromHL                                          ; $5a18: $d7
	ld d, l                                          ; $5a19: $55
	xor $af                                          ; $5a1a: $ee $af
	call nc, $ac57                                   ; $5a1c: $d4 $57 $ac
	halt                                             ; $5a1f: $76
	call z, Call_022_4393                            ; $5a20: $cc $93 $43
	cp h                                             ; $5a23: $bc
	ld b, e                                          ; $5a24: $43
	cp h                                             ; $5a25: $bc
	jp $f9fc                                         ; $5a26: $c3 $fc $f9


	ld a, $c6                                        ; $5a29: $3e $c6
	ccf                                              ; $5a2b: $3f
	pop bc                                           ; $5a2c: $c1
	ld a, $63                                        ; $5a2d: $3e $63
	ld de, $fe7b                                     ; $5a2f: $11 $7b $fe
	sbc e                                            ; $5a32: $9b
	ld a, a                                          ; $5a33: $7f
	add b                                            ; $5a34: $80
	add b                                            ; $5a35: $80
	ld a, a                                          ; $5a36: $7f
	ld a, d                                          ; $5a37: $7a
	and e                                            ; $5a38: $a3
	ld a, e                                          ; $5a39: $7b
	cp $77                                           ; $5a3a: $fe $77
	cp h                                             ; $5a3c: $bc

jr_022_5a3d:
	ld a, a                                          ; $5a3d: $7f
	cp $95                                           ; $5a3e: $fe $95
	cp a                                             ; $5a40: $bf
	ld a, a                                          ; $5a41: $7f
	ld b, b                                          ; $5a42: $40
	cp a                                             ; $5a43: $bf
	inc e                                            ; $5a44: $1c
	db $e3                                           ; $5a45: $e3
	ld e, $e1                                        ; $5a46: $1e $e1
	ld e, $e1                                        ; $5a48: $1e $e1
	ld [hl], e                                       ; $5a4a: $73
	pop af                                           ; $5a4b: $f1
	rst SubAFromDE                                          ; $5a4c: $df
	ret nz                                           ; $5a4d: $c0

	sbc h                                            ; $5a4e: $9c
	rst $38                                          ; $5a4f: $ff
	ld a, a                                          ; $5a50: $7f
	add b                                            ; $5a51: $80
	ld h, a                                          ; $5a52: $67
	db $d3                                           ; $5a53: $d3
	halt                                             ; $5a54: $76
	db $d3                                           ; $5a55: $d3
	sbc e                                            ; $5a56: $9b
	add c                                            ; $5a57: $81
	cp $7e                                           ; $5a58: $fe $7e
	rst $38                                          ; $5a5a: $ff
	halt                                             ; $5a5b: $76
	call z, $be5f                                    ; $5a5c: $cc $5f $be
	ld a, [hl]                                       ; $5a5f: $7e
	cp b                                             ; $5a60: $b8
	ld a, [hl]                                       ; $5a61: $7e
	adc $7f                                          ; $5a62: $ce $7f
	cp $77                                           ; $5a64: $fe $77
	sbc h                                            ; $5a66: $9c
	ld a, a                                          ; $5a67: $7f
	cp $7f                                           ; $5a68: $fe $7f
	ld hl, sp-$79                                    ; $5a6a: $f8 $87
	ld a, c                                          ; $5a6c: $79
	cp $87                                           ; $5a6d: $fe $87
	ld hl, sp+$2a                                    ; $5a6f: $f8 $2a
	push af                                          ; $5a71: $f5
	dec [hl]                                         ; $5a72: $35
	ld [$f52a], a                                    ; $5a73: $ea $2a $f5
	dec d                                            ; $5a76: $15
	ld a, [$f51a]                                    ; $5a77: $fa $1a $f5
	push af                                          ; $5a7a: $f5
	ld a, [$759a]                                    ; $5a7b: $fa $9a $75
	sub l                                            ; $5a7e: $95
	ld a, d                                          ; $5a7f: $7a
	xor d                                            ; $5a80: $aa
	ld d, l                                          ; $5a81: $55
	ld d, l                                          ; $5a82: $55
	xor d                                            ; $5a83: $aa
	inc bc                                           ; $5a84: $03
	db $fc                                           ; $5a85: $fc
	inc bc                                           ; $5a86: $03
	db $fc                                           ; $5a87: $fc
	rra                                              ; $5a88: $1f
	db $fc                                           ; $5a89: $fc
	sub d                                            ; $5a8a: $92
	cp d                                             ; $5a8b: $ba
	rst SubAFromDE                                          ; $5a8c: $df
	ld a, l                                          ; $5a8d: $7d
	rst SubAFromDE                                          ; $5a8e: $df
	cp [hl]                                          ; $5a8f: $be
	rst SubAFromDE                                          ; $5a90: $df
	dec e                                            ; $5a91: $1d
	rst $38                                          ; $5a92: $ff
	ld a, [de]                                       ; $5a93: $1a
	rst $38                                          ; $5a94: $ff
	dec e                                            ; $5a95: $1d
	rst $38                                          ; $5a96: $ff
	ld e, $7b                                        ; $5a97: $1e $7b
	db $fc                                           ; $5a99: $fc
	halt                                             ; $5a9a: $76
	call z, $c07e                                    ; $5a9b: $cc $7e $c0
	sbc h                                            ; $5a9e: $9c
	ld [hl-], a                                      ; $5a9f: $32
	rst GetHLinHL                                          ; $5aa0: $cf
	or [hl]                                          ; $5aa1: $b6
	ld a, e                                          ; $5aa2: $7b
	cp $97                                           ; $5aa3: $fe $97
	ldh a, [c]                                       ; $5aa5: $f2
	adc a                                            ; $5aa6: $8f
	ld a, a                                          ; $5aa7: $7f
	add a                                            ; $5aa8: $87
	dec de                                           ; $5aa9: $1b
	db $e4                                           ; $5aaa: $e4
	dec sp                                           ; $5aab: $3b
	call nz, $fe6f                                   ; $5aac: $c4 $6f $fe
	ld a, a                                          ; $5aaf: $7f
	or $9b                                           ; $5ab0: $f6 $9b
	dec bc                                           ; $5ab2: $0b
	db $f4                                           ; $5ab3: $f4
	dec bc                                           ; $5ab4: $0b
	db $f4                                           ; $5ab5: $f4
	halt                                             ; $5ab6: $76
	call z, $fe57                                    ; $5ab7: $cc $57 $fe
	ld a, [hl]                                       ; $5aba: $7e
	nop                                              ; $5abb: $00
	ld a, l                                          ; $5abc: $7d
	rst FarCall                                          ; $5abd: $f7
	sbc h                                            ; $5abe: $9c
	ld b, $fd                                        ; $5abf: $06 $fd
	dec c                                            ; $5ac1: $0d
	ld a, e                                          ; $5ac2: $7b
	ld d, b                                          ; $5ac3: $50
	adc a                                            ; $5ac4: $8f
	ld [hl], l                                       ; $5ac5: $75
	ld [$d5aa], a                                    ; $5ac6: $ea $aa $d5
	ld d, l                                          ; $5ac9: $55
	xor d                                            ; $5aca: $aa
	xor a                                            ; $5acb: $af
	ld d, h                                          ; $5acc: $54
	ld d, a                                          ; $5acd: $57
	xor h                                            ; $5ace: $ac
	xor a                                            ; $5acf: $af
	ld e, b                                          ; $5ad0: $58
	ld e, a                                          ; $5ad1: $5f
	xor b                                            ; $5ad2: $a8
	xor a                                            ; $5ad3: $af
	ld d, a                                          ; $5ad4: $57
	ld l, a                                          ; $5ad5: $6f
	and b                                            ; $5ad6: $a0
	halt                                             ; $5ad7: $76
	and h                                            ; $5ad8: $a4
	ld [hl], a                                       ; $5ad9: $77
	cp $7e                                           ; $5ada: $fe $7e
	db $f4                                           ; $5adc: $f4
	sbc c                                            ; $5add: $99
	ld hl, sp-$01                                    ; $5ade: $f8 $ff
	adc a                                            ; $5ae0: $8f
	rst $38                                          ; $5ae1: $ff
	add e                                            ; $5ae2: $83
	rst $38                                          ; $5ae3: $ff
	ld d, [hl]                                       ; $5ae4: $56
	jp nz, $ffdd                                     ; $5ae5: $c2 $dd $ff

	ld h, a                                          ; $5ae8: $67
	ldh [$7f], a                                     ; $5ae9: $e0 $7f
	rst AddAOntoHL                                          ; $5aeb: $ef
	sbc [hl]                                         ; $5aec: $9e
	rlca                                             ; $5aed: $07
	sbc $ff                                          ; $5aee: $de $ff
	ld a, a                                          ; $5af0: $7f
	db $ed                                           ; $5af1: $ed
	ld [hl], a                                       ; $5af2: $77
	di                                               ; $5af3: $f3
	ld l, a                                          ; $5af4: $6f
	ldh [$97], a                                     ; $5af5: $e0 $97
	rst FarCall                                          ; $5af7: $f7
	ld hl, sp-$01                                    ; $5af8: $f8 $ff
	rst $38                                          ; $5afa: $ff
	ld b, c                                          ; $5afb: $41
	rst $38                                          ; $5afc: $ff
	add c                                            ; $5afd: $81
	ld a, [hl]                                       ; $5afe: $7e
	ld [hl], a                                       ; $5aff: $77
	cp $7e                                           ; $5b00: $fe $7e
	adc b                                            ; $5b02: $88
	ld [hl], a                                       ; $5b03: $77
	cp $99                                           ; $5b04: $fe $99
	pop af                                           ; $5b06: $f1
	cp $ff                                           ; $5b07: $fe $ff
	rst $38                                          ; $5b09: $ff
	add e                                            ; $5b0a: $83
	ld a, h                                          ; $5b0b: $7c
	ld e, a                                          ; $5b0c: $5f
	cp [hl]                                          ; $5b0d: $be
	ld a, d                                          ; $5b0e: $7a
	or [hl]                                          ; $5b0f: $b6
	sbc h                                            ; $5b10: $9c
	rst $38                                          ; $5b11: $ff
	add a                                            ; $5b12: $87
	ld a, b                                          ; $5b13: $78
	ld [hl], a                                       ; $5b14: $77
	cp $7d                                           ; $5b15: $fe $7d
	ld h, a                                          ; $5b17: $67
	ld [hl], a                                       ; $5b18: $77
	cp $df                                           ; $5b19: $fe $df
	rst $38                                          ; $5b1b: $ff
	adc l                                            ; $5b1c: $8d
	db $fc                                           ; $5b1d: $fc
	rst $38                                          ; $5b1e: $ff
	jp z, $cd3d                                      ; $5b1f: $ca $3d $cd

	ld a, [hl-]                                      ; $5b22: $3a
	ld [$ed1d], a                                    ; $5b23: $ea $1d $ed
	ld a, [de]                                       ; $5b26: $1a
	ld [$fd1d], a                                    ; $5b27: $ea $1d $fd
	ld a, d                                          ; $5b2a: $7a
	ld [$35d5], a                                    ; $5b2b: $ea $d5 $35
	ld [$fc02], a                                    ; $5b2e: $ea $02 $fc
	inc bc                                           ; $5b31: $03
	db $fc                                           ; $5b32: $fc
	rrca                                             ; $5b33: $0f
	db $fc                                           ; $5b34: $fc
	sbc [hl]                                         ; $5b35: $9e
	dec de                                           ; $5b36: $1b
	ld a, d                                          ; $5b37: $7a
	jp z, $fc7f                                      ; $5b38: $ca $7f $fc

	sbc h                                            ; $5b3b: $9c
	rra                                              ; $5b3c: $1f
	rst $38                                          ; $5b3d: $ff
	rla                                              ; $5b3e: $17
	ld a, d                                          ; $5b3f: $7a
	call nz, $fa7f                                   ; $5b40: $c4 $7f $fa
	ld a, a                                          ; $5b43: $7f
	cp $94                                           ; $5b44: $fe $94
	rst FarCall                                          ; $5b46: $f7
	adc a                                            ; $5b47: $8f
	rst FarCall                                          ; $5b48: $f7
	adc a                                            ; $5b49: $8f
	and a                                            ; $5b4a: $a7
	rst SubAFromDE                                          ; $5b4b: $df
	ld d, a                                          ; $5b4c: $57
	xor a                                            ; $5b4d: $af
	xor a                                            ; $5b4e: $af
	rst SubAFromHL                                          ; $5b4f: $d7
	rst SubAFromHL                                          ; $5b50: $d7
	ld a, e                                          ; $5b51: $7b
	db $fc                                           ; $5b52: $fc
	sbc c                                            ; $5b53: $99
	rla                                              ; $5b54: $17
	rst AddAOntoHL                                          ; $5b55: $ef
	dec bc                                           ; $5b56: $0b
	db $f4                                           ; $5b57: $f4
	add hl, bc                                       ; $5b58: $09
	or $74                                           ; $5b59: $f6 $74
	ld b, h                                          ; $5b5b: $44
	ld a, a                                          ; $5b5c: $7f
	cp $6c                                           ; $5b5d: $fe $6c
	ld e, c                                          ; $5b5f: $59
	ld h, [hl]                                       ; $5b60: $66
	ret z                                            ; $5b61: $c8

	sbc l                                            ; $5b62: $9d
	rst SubAFromDE                                          ; $5b63: $df
	ld hl, $fe6f                                     ; $5b64: $21 $6f $fe
	ld a, a                                          ; $5b67: $7f
	cp h                                             ; $5b68: $bc
	sbc c                                            ; $5b69: $99
	db $dd                                           ; $5b6a: $dd
	ld [hl+], a                                      ; $5b6b: $22
	xor d                                            ; $5b6c: $aa
	ld d, l                                          ; $5b6d: $55
	ld [hl], a                                       ; $5b6e: $77
	adc b                                            ; $5b6f: $88
	ld e, e                                          ; $5b70: $5b
	ld hl, sp-$67                                    ; $5b71: $f8 $99
	inc hl                                           ; $5b73: $23
	xor e                                            ; $5b74: $ab
	ld d, l                                          ; $5b75: $55
	ld [hl], a                                       ; $5b76: $77
	adc c                                            ; $5b77: $89
	xor e                                            ; $5b78: $ab
	ld l, e                                          ; $5b79: $6b
	ld hl, sp-$65                                    ; $5b7a: $f8 $9b
	ldh [$9f], a                                     ; $5b7c: $e0 $9f
	ld [hl], b                                       ; $5b7e: $70
	adc a                                            ; $5b7f: $8f
	ld [hl], e                                       ; $5b80: $73
	dec e                                            ; $5b81: $1d
	ld a, l                                          ; $5b82: $7d
	push hl                                          ; $5b83: $e5
	sbc [hl]                                         ; $5b84: $9e
	rlca                                             ; $5b85: $07
	ld [hl], a                                       ; $5b86: $77
	cp a                                             ; $5b87: $bf
	ld a, [hl]                                       ; $5b88: $7e
	db $e3                                           ; $5b89: $e3
	ld [hl], a                                       ; $5b8a: $77
	cp $99                                           ; $5b8b: $fe $99
	or b                                             ; $5b8d: $b0
	rst GetHLinHL                                          ; $5b8e: $cf
	cp b                                             ; $5b8f: $b8
	rst JumpTable                                          ; $5b90: $c7
	db $fc                                           ; $5b91: $fc
	add e                                            ; $5b92: $83
	ld [hl], a                                       ; $5b93: $77
	cp $7f                                           ; $5b94: $fe $7f
	db $f4                                           ; $5b96: $f4
	ld a, a                                          ; $5b97: $7f
	sbc $9b                                          ; $5b98: $de $9b
	ldh a, [hDisp1_LCDC]                                     ; $5b9a: $f0 $8f
	ld hl, sp-$79                                    ; $5b9c: $f8 $87
	ld [hl], a                                       ; $5b9e: $77
	db $f4                                           ; $5b9f: $f4
	ld a, c                                          ; $5ba0: $79
	sbc a                                            ; $5ba1: $9f
	sbc h                                            ; $5ba2: $9c
	add c                                            ; $5ba3: $81
	ld b, b                                          ; $5ba4: $40
	rst $38                                          ; $5ba5: $ff
	ld l, a                                          ; $5ba6: $6f
	cp $96                                           ; $5ba7: $fe $96
	ld d, b                                          ; $5ba9: $50
	rst AddAOntoHL                                          ; $5baa: $ef
	ld e, b                                          ; $5bab: $58
	rst SubAFromBC                                          ; $5bac: $e7
	ld e, b                                          ; $5bad: $58
	rst SubAFromBC                                          ; $5bae: $e7
	ld e, h                                          ; $5baf: $5c
	db $e3                                           ; $5bb0: $e3
	ld b, a                                          ; $5bb1: $47
	ld [hl], e                                       ; $5bb2: $73
	ldh a, [c]                                       ; $5bb3: $f2
	sbc [hl]                                         ; $5bb4: $9e
	jr nz, jr_022_5c32                               ; $5bb5: $20 $7b

	cp $7c                                           ; $5bb7: $fe $7c
	ld l, [hl]                                       ; $5bb9: $6e
	sbc d                                            ; $5bba: $9a
	inc l                                            ; $5bbb: $2c
	di                                               ; $5bbc: $f3
	inc l                                            ; $5bbd: $2c
	di                                               ; $5bbe: $f3
	rst $38                                          ; $5bbf: $ff
	ld a, e                                          ; $5bc0: $7b
	or $9e                                           ; $5bc1: $f6 $9e
	db $10                                           ; $5bc3: $10
	ld [hl], e                                       ; $5bc4: $73
	cp $9e                                           ; $5bc5: $fe $9e
	ld [$fe73], sp                                   ; $5bc7: $08 $73 $fe
	sbc d                                            ; $5bca: $9a
	ldh [rIE], a                                     ; $5bcb: $e0 $ff
	ld [hl], b                                       ; $5bcd: $70
	rst $38                                          ; $5bce: $ff
	jr nc, jr_022_5c4c                               ; $5bcf: $30 $7b

	cp $9e                                           ; $5bd1: $fe $9e
	jr jr_022_5c50                                   ; $5bd3: $18 $7b

	cp $8e                                           ; $5bd5: $fe $8e
	ld c, $fd                                        ; $5bd7: $0e $fd
	dec c                                            ; $5bd9: $0d
	cp $2a                                           ; $5bda: $fe $2a
	push af                                          ; $5bdc: $f5
	dec e                                            ; $5bdd: $1d
	ldh a, [c]                                       ; $5bde: $f2
	ld a, [bc]                                       ; $5bdf: $0a
	db $fd                                           ; $5be0: $fd
	rrca                                             ; $5be1: $0f
	ld hl, sp+$06                                    ; $5be2: $f8 $06
	db $fd                                           ; $5be4: $fd
	inc bc                                           ; $5be5: $03
	cp $02                                           ; $5be6: $fe $02
	ld a, b                                          ; $5be8: $78
	ldh a, [$3b]                                     ; $5be9: $f0 $3b
	ld h, b                                          ; $5beb: $60
	inc bc                                           ; $5bec: $03
	ld hl, sp+$03                                    ; $5bed: $f8 $03
	ld hl, sp+$5b                                    ; $5bef: $f8 $5b
	ld hl, sp+$76                                    ; $5bf1: $f8 $76
	jp z, $8875                                      ; $5bf3: $ca $75 $88

	halt                                             ; $5bf6: $76
	cp d                                             ; $5bf7: $ba
	ld a, a                                          ; $5bf8: $7f
	ld a, [$fc7f]                                    ; $5bf9: $fa $7f $fc
	ld a, [hl]                                       ; $5bfc: $7e
	call z, $939c                                    ; $5bfd: $cc $9c $93
	rst AddAOntoHL                                          ; $5c00: $ef
	cpl                                              ; $5c01: $2f
	ld a, e                                          ; $5c02: $7b
	db $fc                                           ; $5c03: $fc
	ld [hl], a                                       ; $5c04: $77
	ld hl, sp-$65                                    ; $5c05: $f8 $9b
	xor l                                            ; $5c07: $ad
	rst SubAFromHL                                          ; $5c08: $d7
	sbc d                                            ; $5c09: $9a
	rst SubAFromBC                                          ; $5c0a: $e7
	ld l, [hl]                                       ; $5c0b: $6e
	jp z, $fe7f                                      ; $5c0c: $ca $7f $fe

	ld [hl], l                                       ; $5c0f: $75
	add h                                            ; $5c10: $84
	ld [hl], a                                       ; $5c11: $77
	cp $9d                                           ; $5c12: $fe $9d
	rst GetHLinHL                                          ; $5c14: $cf
	ld sp, $fe67                                     ; $5c15: $31 $67 $fe
	sbc c                                            ; $5c18: $99
	adc a                                            ; $5c19: $8f
	ld [hl], c                                       ; $5c1a: $71
	rrca                                             ; $5c1b: $0f
	pop af                                           ; $5c1c: $f1
	rlca                                             ; $5c1d: $07
	ld sp, hl                                        ; $5c1e: $f9
	ld b, a                                          ; $5c1f: $47
	or b                                             ; $5c20: $b0
	ld a, [hl]                                       ; $5c21: $7e
	call z, $de8e                                    ; $5c22: $cc $8e $de
	inc hl                                           ; $5c25: $23
	xor d                                            ; $5c26: $aa
	ld d, a                                          ; $5c27: $57
	halt                                             ; $5c28: $76
	adc e                                            ; $5c29: $8b
	xor d                                            ; $5c2a: $aa
	ld d, a                                          ; $5c2b: $57
	rst SubAFromDE                                          ; $5c2c: $df
	ld [hl+], a                                      ; $5c2d: $22
	xor e                                            ; $5c2e: $ab
	ld d, [hl]                                       ; $5c2f: $56
	ld [hl], a                                       ; $5c30: $77
	adc d                                            ; $5c31: $8a

jr_022_5c32:
	db $fc                                           ; $5c32: $fc
	inc bc                                           ; $5c33: $03
	db $fd                                           ; $5c34: $fd
	ld d, e                                          ; $5c35: $53
	cp $7e                                           ; $5c36: $fe $7e
	sbc $71                                          ; $5c38: $de $71
	xor a                                            ; $5c3a: $af
	ld h, e                                          ; $5c3b: $63
	cp $7f                                           ; $5c3c: $fe $7f
	ldh a, [$9d]                                     ; $5c3e: $f0 $9d
	cp a                                             ; $5c40: $bf
	ret nz                                           ; $5c41: $c0

	ld l, a                                          ; $5c42: $6f
	cp $7d                                           ; $5c43: $fe $7d
	ld e, l                                          ; $5c45: $5d
	ld [hl], a                                       ; $5c46: $77
	cp $7e                                           ; $5c47: $fe $7e
	adc $99                                          ; $5c49: $ce $99
	ld e, [hl]                                       ; $5c4b: $5e

Call_022_5c4c:
jr_022_5c4c:
	pop hl                                           ; $5c4c: $e1
	ld a, $e1                                        ; $5c4d: $3e $e1
	ccf                                              ; $5c4f: $3f

jr_022_5c50:
	ldh [rPCM34], a                                  ; $5c50: $e0 $77
	cp $97                                           ; $5c52: $fe $97
	cp a                                             ; $5c54: $bf
	ld h, b                                          ; $5c55: $60
	xor a                                            ; $5c56: $af
	ld [hl], b                                       ; $5c57: $70
	ld l, $f1                                        ; $5c58: $2e $f1
	rra                                              ; $5c5a: $1f
	ldh a, [rPCM34]                                  ; $5c5b: $f0 $77
	cp $80                                           ; $5c5d: $fe $80
	rla                                              ; $5c5f: $17
	ld hl, sp+$17                                    ; $5c60: $f8 $17
	ld hl, sp-$69                                    ; $5c62: $f8 $97
	ld a, b                                          ; $5c64: $78
	adc a                                            ; $5c65: $8f
	ld a, b                                          ; $5c66: $78
	dec b                                            ; $5c67: $05
	cp $05                                           ; $5c68: $fe $05
	cp $85                                           ; $5c6a: $fe $85
	ld a, [hl]                                       ; $5c6c: $7e
	jp $c33e                                         ; $5c6d: $c3 $3e $c3


	ld a, $e2                                        ; $5c70: $3e $e2
	rra                                              ; $5c72: $1f
	pop af                                           ; $5c73: $f1
	rrca                                             ; $5c74: $0f
	pop af                                           ; $5c75: $f1
	rrca                                             ; $5c76: $0f
	dec b                                            ; $5c77: $05
	cp $07                                           ; $5c78: $fe $07
	cp $83                                           ; $5c7a: $fe $83
	ld a, [hl]                                       ; $5c7c: $7e
	jp nz, $3f96                                     ; $5c7d: $c2 $96 $3f

	pop hl                                           ; $5c80: $e1
	rra                                              ; $5c81: $1f
	pop hl                                           ; $5c82: $e1
	rra                                              ; $5c83: $1f
	ldh a, [rIF]                                     ; $5c84: $f0 $0f
	ld hl, sp+$07                                    ; $5c86: $f8 $07
	ld a, c                                          ; $5c88: $79
	ld d, $7f                                        ; $5c89: $16 $7f
	rst JumpTable                                          ; $5c8b: $c7
	ld [hl], e                                       ; $5c8c: $73
	or $7c                                           ; $5c8d: $f6 $7c
	inc h                                            ; $5c8f: $24
	sub e                                            ; $5c90: $93
	cp h                                             ; $5c91: $bc
	jp $c1be                                         ; $5c92: $c3 $be $c1


	xor d                                            ; $5c95: $aa
	push de                                          ; $5c96: $d5
	db $dd                                           ; $5c97: $dd
	and d                                            ; $5c98: $a2
	ld l, d                                          ; $5c99: $6a
	push de                                          ; $5c9a: $d5
	scf                                              ; $5c9b: $37
	add sp, $66                                      ; $5c9c: $e8 $66
	xor b                                            ; $5c9e: $a8
	ld [bc], a                                       ; $5c9f: $02
	add sp, $03                                      ; $5ca0: $e8 $03
	ld hl, sp+$46                                    ; $5ca2: $f8 $46
	ret nz                                           ; $5ca4: $c0

	ld a, h                                          ; $5ca5: $7c
	ld b, [hl]                                       ; $5ca6: $46
	sbc [hl]                                         ; $5ca7: $9e
	inc d                                            ; $5ca8: $14
	ld a, d                                          ; $5ca9: $7a
	ld b, h                                          ; $5caa: $44
	ld l, a                                          ; $5cab: $6f
	db $fc                                           ; $5cac: $fc
	sub l                                            ; $5cad: $95
	inc e                                            ; $5cae: $1c
	rst $38                                          ; $5caf: $ff
	dec c                                            ; $5cb0: $0d
	rst FarCall                                          ; $5cb1: $f7
	ld a, [bc]                                       ; $5cb2: $0a
	rst FarCall                                          ; $5cb3: $f7
	inc c                                            ; $5cb4: $0c
	rst FarCall                                          ; $5cb5: $f7
	ld a, [bc]                                       ; $5cb6: $0a
	rst $38                                          ; $5cb7: $ff
	ld [hl], a                                       ; $5cb8: $77
	db $fc                                           ; $5cb9: $fc
	sbc c                                            ; $5cba: $99
	inc b                                            ; $5cbb: $04
	rst $38                                          ; $5cbc: $ff
	ld a, [bc]                                       ; $5cbd: $0a
	rst $38                                          ; $5cbe: $ff
	rra                                              ; $5cbf: $1f
	ldh [rVBK], a                                    ; $5cc0: $e0 $4f
	cp $7e                                           ; $5cc2: $fe $7e
	adc $5f                                          ; $5cc4: $ce $5f
	cp $9e                                           ; $5cc6: $fe $9e
	ld b, $7b                                        ; $5cc8: $06 $7b
	cp $7f                                           ; $5cca: $fe $7f
	cp d                                             ; $5ccc: $ba
	ld a, a                                          ; $5ccd: $7f

jr_022_5cce:
	cp h                                             ; $5cce: $bc
	ld d, a                                          ; $5ccf: $57
	db $fc                                           ; $5cd0: $fc
	ld a, [hl]                                       ; $5cd1: $7e
	jp z, Jump_022_759b                              ; $5cd2: $ca $9b $75

	adc [hl]                                         ; $5cd5: $8e
	db $dd                                           ; $5cd6: $dd
	ld h, $77                                        ; $5cd7: $26 $77
	db $fc                                           ; $5cd9: $fc
	sbc c                                            ; $5cda: $99
	ld [hl], a                                       ; $5cdb: $77

jr_022_5cdc:
	adc h                                            ; $5cdc: $8c
	rst SubAFromDE                                          ; $5cdd: $df
	inc h                                            ; $5cde: $24
	ld a, e                                          ; $5cdf: $7b
	adc h                                            ; $5ce0: $8c
	ld c, [hl]                                       ; $5ce1: $4e
	jp nz, $fe7f                                     ; $5ce2: $c2 $7f $fe

	ld [hl], d                                       ; $5ce5: $72
	call z, $3175                                    ; $5ce6: $cc $75 $31
	ld a, e                                          ; $5ce9: $7b
	cp $70                                           ; $5cea: $fe $70
	ld a, [hl-]                                      ; $5cec: $3a
	ld l, d                                          ; $5ced: $6a
	ret z                                            ; $5cee: $c8

	ld h, a                                          ; $5cef: $67
	cp $7e                                           ; $5cf0: $fe $7e
	adc $6f                                          ; $5cf2: $ce $6f
	cp $7d                                           ; $5cf4: $fe $7d
	ld c, c                                          ; $5cf6: $49
	ld a, a                                          ; $5cf7: $7f
	cp $95                                           ; $5cf8: $fe $95
	rst SubAFromDE                                          ; $5cfa: $df
	jr nc, jr_022_5cdc                               ; $5cfb: $30 $df

	jr nc, @-$6f                                     ; $5cfd: $30 $8f

	ld a, b                                          ; $5cff: $78
	rst GetHLinHL                                          ; $5d00: $cf
	jr c, jr_022_5cce                                ; $5d01: $38 $cb

	inc a                                            ; $5d03: $3c
	ld [hl], a                                       ; $5d04: $77
	cp $9d                                           ; $5d05: $fe $9d
	rst SubAFromBC                                          ; $5d07: $e7
	inc e                                            ; $5d08: $1c
	ld [hl], a                                       ; $5d09: $77
	cp $7f                                           ; $5d0a: $fe $7f
	adc c                                            ; $5d0c: $89
	ld l, l                                          ; $5d0d: $6d
	jr c, jr_022_5d77                                ; $5d0e: $38 $67

	cp [hl]                                          ; $5d10: $be
	ld a, [hl]                                       ; $5d11: $7e
	jp c, Jump_022_4875                              ; $5d12: $da $75 $48

	ld a, [hl]                                       ; $5d15: $7e
	ret c                                            ; $5d16: $d8

	ld [hl], a                                       ; $5d17: $77
	call nz, Call_022_5f9e                           ; $5d18: $c4 $9e $5f
	ld a, d                                          ; $5d1b: $7a
	adc h                                            ; $5d1c: $8c
	ld l, a                                          ; $5d1d: $6f
	ld a, [$2f9e]                                    ; $5d1e: $fa $9e $2f
	ld [hl], d                                       ; $5d21: $72
	adc [hl]                                         ; $5d22: $8e
	ld a, a                                          ; $5d23: $7f
	call nz, $8b9c                                   ; $5d24: $c4 $9c $8b
	ld a, h                                          ; $5d27: $7c
	dec b                                            ; $5d28: $05
	ld a, d                                          ; $5d29: $7a
	and d                                            ; $5d2a: $a2
	ld a, [hl]                                       ; $5d2b: $7e
	sub h                                            ; $5d2c: $94
	sbc [hl]                                         ; $5d2d: $9e
	pop bc                                           ; $5d2e: $c1
	ld l, d                                          ; $5d2f: $6a
	xor h                                            ; $5d30: $ac
	ld a, a                                          ; $5d31: $7f
	cp $63                                           ; $5d32: $fe $63
	ld d, h                                          ; $5d34: $54
	sbc b                                            ; $5d35: $98
	and d                                            ; $5d36: $a2
	rst FarCall                                          ; $5d37: $f7
	adc b                                            ; $5d38: $88
	ld e, l                                          ; $5d39: $5d
	ldh [c], a                                       ; $5d3a: $e2
	scf                                              ; $5d3b: $37
	add sp, $47                                      ; $5d3c: $e8 $47
	ld b, b                                          ; $5d3e: $40
	inc bc                                           ; $5d3f: $03
	db $fc                                           ; $5d40: $fc
	ld c, e                                          ; $5d41: $4b
	db $fc                                           ; $5d42: $fc
	ld a, [hl]                                       ; $5d43: $7e
	jp z, $cc7e                                      ; $5d44: $ca $7e $cc

	ld a, a                                          ; $5d47: $7f
	cp $76                                           ; $5d48: $fe $76
	add $9e                                          ; $5d4a: $c6 $9e
	inc [hl]                                         ; $5d4c: $34
	ld a, d                                          ; $5d4d: $7a
	cp [hl]                                          ; $5d4e: $be
	sbc [hl]                                         ; $5d4f: $9e
	jr c, jr_022_5dc4                                ; $5d50: $38 $72

	call z, $f27f                                    ; $5d52: $cc $7f $f2
	ld [hl], a                                       ; $5d55: $77
	db $fc                                           ; $5d56: $fc
	sbc [hl]                                         ; $5d57: $9e
	ld a, [hl+]                                      ; $5d58: $2a
	ld [hl], e                                       ; $5d59: $73
	db $fc                                           ; $5d5a: $fc
	ld l, [hl]                                       ; $5d5b: $6e
	jp z, $3f9d                                      ; $5d5c: $ca $9d $3f

	ret nz                                           ; $5d5f: $c0

	ld [hl], a                                       ; $5d60: $77
	cp $7f                                           ; $5d61: $fe $7f
	ld a, c                                          ; $5d63: $79
	ld a, a                                          ; $5d64: $7f
	cp $76                                           ; $5d65: $fe $76
	call z, $2680                                    ; $5d67: $cc $80 $26
	reti                                             ; $5d6a: $d9


	ld h, $d9                                        ; $5d6b: $26 $d9
	inc h                                            ; $5d6d: $24
	db $db                                           ; $5d6e: $db
	inc [hl]                                         ; $5d6f: $34
	swap [hl]                                        ; $5d70: $cb $36
	ret                                              ; $5d72: $c9


	ld [hl], $c9                                     ; $5d73: $36 $c9
	db $dd                                           ; $5d75: $dd
	ld [hl+], a                                      ; $5d76: $22

jr_022_5d77:
	rst $38                                          ; $5d77: $ff
	nop                                              ; $5d78: $00

jr_022_5d79:
	rst SubAFromDE                                          ; $5d79: $df
	jr nz, jr_022_5d79                               ; $5d7a: $20 $fd

	ld [bc], a                                       ; $5d7c: $02
	rst $38                                          ; $5d7d: $ff
	nop                                              ; $5d7e: $00
	ld a, e                                          ; $5d7f: $7b
	add h                                            ; $5d80: $84
	rst AddAOntoHL                                          ; $5d81: $ef
	db $10                                           ; $5d82: $10
	rst $38                                          ; $5d83: $ff
	nop                                              ; $5d84: $00
	db $db                                           ; $5d85: $db
	inc l                                            ; $5d86: $2c
	ei                                               ; $5d87: $fb
	sbc [hl]                                         ; $5d88: $9e
	inc c                                            ; $5d89: $0c
	ld [hl], a                                       ; $5d8a: $77
	db $fc                                           ; $5d8b: $fc
	ld a, h                                          ; $5d8c: $7c
	and l                                            ; $5d8d: $a5
	sub l                                            ; $5d8e: $95
	ld a, a                                          ; $5d8f: $7f
	adc b                                            ; $5d90: $88
	rst AddAOntoHL                                          ; $5d91: $ef
	jr @+$01                                         ; $5d92: $18 $ff

	ld [$03fe], sp                                   ; $5d94: $08 $fe $03
	ld a, [$6707]                                    ; $5d97: $fa $07 $67
	cp $9b                                           ; $5d9a: $fe $9b
	ei                                               ; $5d9c: $fb
	ld b, $fb                                        ; $5d9d: $06 $fb
	ld b, $76                                        ; $5d9f: $06 $76
	call z, $fe57                                    ; $5da1: $cc $57 $fe
	ld e, [hl]                                       ; $5da4: $5e
	add $7f                                          ; $5da5: $c6 $7f
	ld [$fe77], sp                                   ; $5da7: $08 $77 $fe
	ld a, [hl]                                       ; $5daa: $7e
	adc $9d                                          ; $5dab: $ce $9d
	rst SubAFromHL                                          ; $5dad: $d7
	jr c, jr_022_5e1f                                ; $5dae: $38 $6f

	cp $7e                                           ; $5db0: $fe $7e
	ret z                                            ; $5db2: $c8

	ld [hl], a                                       ; $5db3: $77
	cp $93                                           ; $5db4: $fe $93
	push hl                                          ; $5db6: $e5
	ld e, $f5                                        ; $5db7: $1e $f5
	ld c, $f5                                        ; $5db9: $0e $f5
	ld c, $f3                                        ; $5dbb: $0e $f3
	ld c, $f2                                        ; $5dbd: $0e $f2
	rrca                                             ; $5dbf: $0f
	ldh a, [c]                                       ; $5dc0: $f2
	rrca                                             ; $5dc1: $0f
	ld [hl], a                                       ; $5dc2: $77
	cp h                                             ; $5dc3: $bc

jr_022_5dc4:
	ld b, a                                          ; $5dc4: $47
	ret nz                                           ; $5dc5: $c0

	halt                                             ; $5dc6: $76
	call nc, $967e                                   ; $5dc7: $d4 $7e $96

Jump_022_5dca:
	ld a, l                                          ; $5dca: $7d
	ld h, [hl]                                       ; $5dcb: $66
	ld a, a                                          ; $5dcc: $7f
	cp $76                                           ; $5dcd: $fe $76
	sbc h                                            ; $5dcf: $9c
	sbc [hl]                                         ; $5dd0: $9e
	rst JumpTable                                          ; $5dd1: $c7
	ld a, e                                          ; $5dd2: $7b
	cp $9b                                           ; $5dd3: $fe $9b
	push bc                                          ; $5dd5: $c5
	ld a, $e3                                        ; $5dd6: $3e $e3
	ld e, $6d                                        ; $5dd8: $1e $6d
	ld h, h                                          ; $5dda: $64
	halt                                             ; $5ddb: $76
	ret nc                                           ; $5ddc: $d0

	ld l, [hl]                                       ; $5ddd: $6e
	sub [hl]                                         ; $5dde: $96
	ld [hl], e                                       ; $5ddf: $73
	sub [hl]                                         ; $5de0: $96
	sbc b                                            ; $5de1: $98
	add b                                            ; $5de2: $80
	rst $38                                          ; $5de3: $ff
	add b                                            ; $5de4: $80
	cp a                                             ; $5de5: $bf
	ret nz                                           ; $5de6: $c0

	dec a                                            ; $5de7: $3d
	ldh [c], a                                       ; $5de8: $e2
	halt                                             ; $5de9: $76
	or a                                             ; $5dea: $b7
	sub e                                            ; $5deb: $93
	dec c                                            ; $5dec: $0d
	ld a, [$fc07]                                    ; $5ded: $fa $07 $fc
	add a                                            ; $5df0: $87
	ld a, h                                          ; $5df1: $7c
	add e                                            ; $5df2: $83
	ld a, [hl]                                       ; $5df3: $7e
	pop bc                                           ; $5df4: $c1
	ccf                                              ; $5df5: $3f
	rst $38                                          ; $5df6: $ff
	nop                                              ; $5df7: $00
	ld [hl], a                                       ; $5df8: $77
	ld a, $7a                                        ; $5df9: $3e $7a
	ld [$209c], sp                                   ; $5dfb: $08 $9c $20
	ei                                               ; $5dfe: $fb
	inc b                                            ; $5dff: $04
	ld [hl], a                                       ; $5e00: $77
	jp c, $3047                                      ; $5e01: $da $47 $30

	ld a, a                                          ; $5e04: $7f
	or $9b                                           ; $5e05: $f6 $9b
	cp a                                             ; $5e07: $bf
	ld b, b                                          ; $5e08: $40
	ei                                               ; $5e09: $fb
	inc b                                            ; $5e0a: $04
	ld [hl], a                                       ; $5e0b: $77
	or $77                                           ; $5e0c: $f6 $77
	ld hl, sp+$6f                                    ; $5e0e: $f8 $6f
	ldh [$97], a                                     ; $5e10: $e0 $97
	or a                                             ; $5e12: $b7
	ld c, b                                          ; $5e13: $48
	cp $01                                           ; $5e14: $fe $01
	ld a, a                                          ; $5e16: $7f
	add b                                            ; $5e17: $80
	rst FarCall                                          ; $5e18: $f7
	ld [$d077], sp                                   ; $5e19: $08 $77 $d0
	ld de, $df00                                     ; $5e1c: $11 $00 $df

jr_022_5e1f:
	ld h, [hl]                                       ; $5e1f: $66
	sbc e                                            ; $5e20: $9b
	nop                                              ; $5e21: $00
	inc bc                                           ; $5e22: $03

jr_022_5e23:
	inc sp                                           ; $5e23: $33
	jr nc, jr_022_5e23                               ; $5e24: $30 $fd

	ld d, e                                          ; $5e26: $53
	or $fa                                           ; $5e27: $f6 $fa
	inc bc                                           ; $5e29: $03
	or $43                                           ; $5e2a: $f6 $43
	or $56                                           ; $5e2c: $f6 $56
	ld [bc], a                                       ; $5e2e: $02
	adc d                                            ; $5e2f: $8a
	xor c                                            ; $5e30: $a9
	ld a, [hl]                                       ; $5e31: $7e
	sbc b                                            ; $5e32: $98
	ld a, a                                          ; $5e33: $7f
	xor c                                            ; $5e34: $a9
	ld a, [hl]                                       ; $5e35: $7e
	or b                                             ; $5e36: $b0
	ld a, a                                          ; $5e37: $7f
	cp c                                             ; $5e38: $b9
	ld a, [hl]                                       ; $5e39: $7e
	sbc d                                            ; $5e3a: $9a
	ld a, l                                          ; $5e3b: $7d
	xor l                                            ; $5e3c: $ad
	ld a, d                                          ; $5e3d: $7a
	ldh a, [c]                                       ; $5e3e: $f2
	ld a, l                                          ; $5e3f: $7d
	call nc, $ae7f                                   ; $5e40: $d4 $7f $ae
	ld a, a                                          ; $5e43: $7f
	call c, $fc7b                                    ; $5e44: $dc $7b $fc
	sbc d                                            ; $5e47: $9a
	ld a, [$b67f]                                    ; $5e48: $fa $7f $b6
	ld a, a                                          ; $5e4b: $7f
	sbc $7b                                          ; $5e4c: $de $7b
	ld a, [$3e99]                                    ; $5e4e: $fa $99 $3e
	pop bc                                           ; $5e51: $c1
	ld a, $c1                                        ; $5e52: $3e $c1
	ld e, $e1                                        ; $5e54: $1e $e1
	ld e, a                                          ; $5e56: $5f
	cp $96                                           ; $5e57: $fe $96
	inc [hl]                                         ; $5e59: $34
	srl h                                            ; $5e5a: $cb $3c
	jp $e31c                                         ; $5e5c: $c3 $1c $e3


	dec a                                            ; $5e5f: $3d
	jp Jump_022_6b1d                                 ; $5e60: $c3 $1d $6b


	db $fc                                           ; $5e63: $fc
	sbc l                                            ; $5e64: $9d
	rst $38                                          ; $5e65: $ff
	nop                                              ; $5e66: $00
	ld c, a                                          ; $5e67: $4f
	cp $9d                                           ; $5e68: $fe $9d
	rst FarCall                                          ; $5e6a: $f7
	jr @+$69                                         ; $5e6b: $18 $67

	cp $9d                                           ; $5e6d: $fe $9d
	rst $38                                          ; $5e6f: $ff
	db $10                                           ; $5e70: $10
	ld [hl], a                                       ; $5e71: $77

jr_022_5e72:
	cp $9d                                           ; $5e72: $fe $9d
	ei                                               ; $5e74: $fb
	ld b, $4f                                        ; $5e75: $06 $4f
	cp $47                                           ; $5e77: $fe $47
	ret nc                                           ; $5e79: $d0

	sbc l                                            ; $5e7a: $9d
	ld e, a                                          ; $5e7b: $5f
	ldh [rPCM34], a                                  ; $5e7c: $e0 $77
	cp $9e                                           ; $5e7e: $fe $9e
	ccf                                              ; $5e80: $3f
	ld h, e                                          ; $5e81: $63
	cp $9b                                           ; $5e82: $fe $9b
	rst AddAOntoHL                                          ; $5e84: $ef
	jr jr_022_5e72                                   ; $5e85: $18 $eb

	inc e                                            ; $5e87: $1c
	ld h, a                                          ; $5e88: $67
	cp $9e                                           ; $5e89: $fe $9e
	rst SubAFromBC                                          ; $5e8b: $e7
	ld a, e                                          ; $5e8c: $7b
	cp $9d                                           ; $5e8d: $fe $9d
	ld sp, hl                                        ; $5e8f: $f9
	rlca                                             ; $5e90: $07
	ld l, a                                          ; $5e91: $6f
	cp $9d                                           ; $5e92: $fe $9d
	db $fc                                           ; $5e94: $fc
	inc bc                                           ; $5e95: $03
	ld l, a                                          ; $5e96: $6f
	cp $7f                                           ; $5e97: $fe $7f
	adc $9d                                          ; $5e99: $ce $9d
	ld a, a                                          ; $5e9b: $7f
	add b                                            ; $5e9c: $80
	ld [hl], a                                       ; $5e9d: $77
	cp $9b                                           ; $5e9e: $fe $9b
	rst $38                                          ; $5ea0: $ff
	add b                                            ; $5ea1: $80
	cp a                                             ; $5ea2: $bf
	ret nz                                           ; $5ea3: $c0

	ld [hl], a                                       ; $5ea4: $77
	cp $93                                           ; $5ea5: $fe $93
	push hl                                          ; $5ea7: $e5
	ld e, $e5                                        ; $5ea8: $1e $e5
	ld e, $e3                                        ; $5eaa: $1e $e3
	ld e, $f2                                        ; $5eac: $1e $f2
	rrca                                             ; $5eae: $0f
	ldh a, [c]                                       ; $5eaf: $f2
	rrca                                             ; $5eb0: $0f
	pop af                                           ; $5eb1: $f1
	rrca                                             ; $5eb2: $0f
	ld h, a                                          ; $5eb3: $67
	ret c                                            ; $5eb4: $d8

	sbc e                                            ; $5eb5: $9b
	cp $01                                           ; $5eb6: $fe $01
	cp $01                                           ; $5eb8: $fe $01
	ld [hl], a                                       ; $5eba: $77
	and h                                            ; $5ebb: $a4
	ld [hl], e                                       ; $5ebc: $73
	sub $9e                                          ; $5ebd: $d6 $9e
	ret nz                                           ; $5ebf: $c0

	ld [hl], a                                       ; $5ec0: $77
	and d                                            ; $5ec1: $a2
	adc h                                            ; $5ec2: $8c
	cpl                                              ; $5ec3: $2f
	ldh a, [$1f]                                     ; $5ec4: $f0 $1f
	ldh a, [rAUD2ENV]                                ; $5ec6: $f0 $17
	ld hl, sp-$71                                    ; $5ec8: $f8 $8f
	ld a, b                                          ; $5eca: $78
	adc e                                            ; $5ecb: $8b
	ld a, h                                          ; $5ecc: $7c
	pop hl                                           ; $5ecd: $e1
	rra                                              ; $5ece: $1f
	ldh [$1f], a                                     ; $5ecf: $e0 $1f
	ldh a, [rIF]                                     ; $5ed1: $f0 $0f
	ldh a, [rIF]                                     ; $5ed3: $f0 $0f
	ld hl, sp+$6b                                    ; $5ed5: $f8 $6b
	sub $7b                                          ; $5ed7: $d6 $7b
	ret c                                            ; $5ed9: $d8

	ld a, e                                          ; $5eda: $7b
	or h                                             ; $5edb: $b4
	ld a, a                                          ; $5edc: $7f
	jp c, $8477                                      ; $5edd: $da $77 $84

	ld a, a                                          ; $5ee0: $7f
	rst SubAFromBC                                          ; $5ee1: $e7
	ld a, a                                          ; $5ee2: $7f
	cp $47                                           ; $5ee3: $fe $47
	ld h, b                                          ; $5ee5: $60
	rlca                                             ; $5ee6: $07
	cp $92                                           ; $5ee7: $fe $92
	push de                                          ; $5ee9: $d5
	ld a, d                                          ; $5eea: $7a
	ld l, d                                          ; $5eeb: $6a
	db $fd                                           ; $5eec: $fd
	ld d, l                                          ; $5eed: $55
	ld a, [$fd2a]                                    ; $5eee: $fa $2a $fd
	ld d, c                                          ; $5ef1: $51
	cp $2a                                           ; $5ef2: $fe $2a
	db $fd                                           ; $5ef4: $fd
	dec d                                            ; $5ef5: $15
	ld a, e                                          ; $5ef6: $7b
	db $fc                                           ; $5ef7: $fc
	sub h                                            ; $5ef8: $94
	db $ec                                           ; $5ef9: $ec
	ld a, a                                          ; $5efa: $7f
	cp [hl]                                          ; $5efb: $be
	ld a, a                                          ; $5efc: $7f
	ld a, d                                          ; $5efd: $7a
	rst $38                                          ; $5efe: $ff
	sbc $7f                                          ; $5eff: $de $7f
	ld a, [hl]                                       ; $5f01: $7e
	rst $38                                          ; $5f02: $ff
	or [hl]                                          ; $5f03: $b6
	ld a, e                                          ; $5f04: $7b
	db $fc                                           ; $5f05: $fc
	ld a, a                                          ; $5f06: $7f
	ld hl, sp+$56                                    ; $5f07: $f8 $56
	call nz, $fe77                                   ; $5f09: $c4 $77 $fe
	halt                                             ; $5f0c: $76
	call z, $199b                                    ; $5f0d: $cc $9b $19
	rst SubAFromBC                                          ; $5f10: $e7
	add hl, sp                                       ; $5f11: $39
	rst JumpTable                                          ; $5f12: $c7
	ld h, a                                          ; $5f13: $67
	db $fc                                           ; $5f14: $fc
	ld b, e                                          ; $5f15: $43
	xor [hl]                                         ; $5f16: $ae
	ld a, d                                          ; $5f17: $7a
	call z, $ef9d                                    ; $5f18: $cc $9d $ef
	jr nc, jr_022_5f84                               ; $5f1b: $30 $67

jr_022_5f1d:
	cp $96                                           ; $5f1d: $fe $96
	rst $38                                          ; $5f1f: $ff
	jr nz, jr_022_5f1d                               ; $5f20: $20 $fb

	ld b, $f3                                        ; $5f22: $06 $f3
	ld c, $f3                                        ; $5f24: $0e $f3
	ld c, $f5                                        ; $5f26: $0e $f5
	ld h, e                                          ; $5f28: $63
	cp $47                                           ; $5f29: $fe $47
	ret nc                                           ; $5f2b: $d0

	ld l, [hl]                                       ; $5f2c: $6e
	jp z, $bf99                                      ; $5f2d: $ca $99 $bf

	ld h, b                                          ; $5f30: $60
	cp a                                             ; $5f31: $bf
	ld h, b                                          ; $5f32: $60
	xor a                                            ; $5f33: $af
	ld [hl], b                                       ; $5f34: $70
	ld [hl], a                                       ; $5f35: $77
	cp $76                                           ; $5f36: $fe $76
	call z, $d25f                                    ; $5f38: $cc $5f $d2
	ld a, a                                          ; $5f3b: $7f
	add $66                                          ; $5f3c: $c6 $66
	ldh a, [$6f]                                     ; $5f3e: $f0 $6f
	cp $7f                                           ; $5f40: $fe $7f
	ret nc                                           ; $5f42: $d0

	ld a, [hl]                                       ; $5f43: $7e
	adc $76                                          ; $5f44: $ce $76
	xor $6e                                          ; $5f46: $ee $6e
	adc h                                            ; $5f48: $8c
	ld a, [hl]                                       ; $5f49: $7e
	ld [$fe7f], a                                    ; $5f4a: $ea $7f $fe
	ld l, [hl]                                       ; $5f4d: $6e
	ld hl, sp+$67                                    ; $5f4e: $f8 $67
	call c, $f276                                    ; $5f50: $dc $76 $f2
	halt                                             ; $5f53: $76
	xor d                                            ; $5f54: $aa
	ld l, a                                          ; $5f55: $6f
	call c, $de77                                    ; $5f56: $dc $77 $de
	sub [hl]                                         ; $5f59: $96
	rst JumpTable                                          ; $5f5a: $c7
	inc a                                            ; $5f5b: $3c
	push bc                                          ; $5f5c: $c5
	ld a, $e3                                        ; $5f5d: $3e $e3
	ld e, $e2                                        ; $5f5f: $1e $e2
	rra                                              ; $5f61: $1f
	pop af                                           ; $5f62: $f1
	ld a, d                                          ; $5f63: $7a
	and b                                            ; $5f64: $a0
	ld a, a                                          ; $5f65: $7f
	call nc, $fe7f                                   ; $5f66: $d4 $7f $fe
	ld l, [hl]                                       ; $5f69: $6e
	and [hl]                                         ; $5f6a: $a6
	ld l, [hl]                                       ; $5f6b: $6e
	and d                                            ; $5f6c: $a2
	ld [hl], a                                       ; $5f6d: $77
	call nc, $b776                                   ; $5f6e: $d4 $76 $b7
	sbc b                                            ; $5f71: $98
	add a                                            ; $5f72: $87
	ld a, h                                          ; $5f73: $7c
	add e                                            ; $5f74: $83
	ld a, [hl]                                       ; $5f75: $7e
	pop bc                                           ; $5f76: $c1
	ccf                                              ; $5f77: $3f
	pop bc                                           ; $5f78: $c1
	ld a, d                                          ; $5f79: $7a
	cp a                                             ; $5f7a: $bf
	ld a, a                                          ; $5f7b: $7f

jr_022_5f7c:
	cp $53                                           ; $5f7c: $fe $53
	ld h, d                                          ; $5f7e: $62

Call_022_5f7f:
	ld a, e                                          ; $5f7f: $7b
	sbc $06                                          ; $5f80: $de $06
	ret nz                                           ; $5f82: $c0

	ld a, [hl]                                       ; $5f83: $7e

jr_022_5f84:
	call z, $3e9a                                    ; $5f84: $cc $9a $3e
	db $fd                                           ; $5f87: $fd
	dec e                                            ; $5f88: $1d
	cp $1e                                           ; $5f89: $fe $1e
	ld [hl], e                                       ; $5f8b: $73
	db $fc                                           ; $5f8c: $fc
	sbc b                                            ; $5f8d: $98
	inc e                                            ; $5f8e: $1c
	rst $38                                          ; $5f8f: $ff
	inc e                                            ; $5f90: $1c
	rst $38                                          ; $5f91: $ff
	ld a, [hl]                                       ; $5f92: $7e
	rst $38                                          ; $5f93: $ff
	cp $7a                                           ; $5f94: $fe $7a
	ret z                                            ; $5f96: $c8

	ld e, a                                          ; $5f97: $5f
	cp $66                                           ; $5f98: $fe $66
	ret z                                            ; $5f9a: $c8

	sbc l                                            ; $5f9b: $9d
	ld c, $f1                                        ; $5f9c: $0e $f1

Call_022_5f9e:
	ld l, a                                          ; $5f9e: $6f
	cp $95                                           ; $5f9f: $fe $95
	ld e, b                                          ; $5fa1: $58
	and a                                            ; $5fa2: $a7
	jr z, jr_022_5f7c                                ; $5fa3: $28 $d7

	ld e, b                                          ; $5fa5: $58
	and a                                            ; $5fa6: $a7
	xor h                                            ; $5fa7: $ac
	ld d, e                                          ; $5fa8: $53
	ld e, h                                          ; $5fa9: $5c
	and e                                            ; $5faa: $a3
	ld l, a                                          ; $5fab: $6f
	db $fc                                           ; $5fac: $fc
	ld b, e                                          ; $5fad: $43
	xor [hl]                                         ; $5fae: $ae
	sbc [hl]                                         ; $5faf: $9e
	jr nz, jr_022_6029                               ; $5fb0: $20 $77

	cp $9d                                           ; $5fb2: $fe $9d
	rst SubAFromDE                                          ; $5fb4: $df
	ld h, b                                          ; $5fb5: $60
	ld h, a                                          ; $5fb6: $67
	cp $7e                                           ; $5fb7: $fe $7e
	db $fc                                           ; $5fb9: $fc
	sbc l                                            ; $5fba: $9d
	rst FarCall                                          ; $5fbb: $f7
	inc c                                            ; $5fbc: $0c
	ld [hl], a                                       ; $5fbd: $77
	cp $76                                           ; $5fbe: $fe $76
	add sp, $77                                      ; $5fc0: $e8 $77
	cp $47                                           ; $5fc2: $fe $47
	ret nc                                           ; $5fc4: $d0

	ld l, [hl]                                       ; $5fc5: $6e
	jp z, $9f9e                                      ; $5fc6: $ca $9e $9f

	ld h, e                                          ; $5fc9: $63
	cp $76                                           ; $5fca: $fe $76
	sub d                                            ; $5fcc: $92
	ld [hl], a                                       ; $5fcd: $77
	cp $9d                                           ; $5fce: $fe $9d
	ld a, [$6f07]                                    ; $5fd0: $fa $07 $6f
	cp $47                                           ; $5fd3: $fe $47
	ret nc                                           ; $5fd5: $d0

	halt                                             ; $5fd6: $76
	call z, $b475                                    ; $5fd7: $cc $75 $b4
	sbc l                                            ; $5fda: $9d
	sub a                                            ; $5fdb: $97
	ld a, b                                          ; $5fdc: $78
	ld l, a                                          ; $5fdd: $6f
	cp $3f                                           ; $5fde: $fe $3f
	ldh [$6f], a                                     ; $5fe0: $e0 $6f
	ldh [c], a                                       ; $5fe2: $e2
	ld [hl], l                                       ; $5fe3: $75
	sub h                                            ; $5fe4: $94
	ld a, h                                          ; $5fe5: $7c
	push de                                          ; $5fe6: $d5
	ld a, [hl]                                       ; $5fe7: $7e
	jp nz, $a452                                     ; $5fe8: $c2 $52 $a4

	halt                                             ; $5feb: $76
	jp z, $a672                                      ; $5fec: $ca $72 $a6

	ld [hl], a                                       ; $5fef: $77
	cp d                                             ; $5ff0: $ba
	ld a, a                                          ; $5ff1: $7f
	jp c, $fe7f                                      ; $5ff2: $da $7f $fe

	sbc l                                            ; $5ff5: $9d
	dec bc                                           ; $5ff6: $0b
	db $fc                                           ; $5ff7: $fc
	ld l, l                                          ; $5ff8: $6d
	ld [hl], h                                       ; $5ff9: $74
	ld h, l                                          ; $5ffa: $65
	ld [hl], d                                       ; $5ffb: $72
	ld a, a                                          ; $5ffc: $7f
	cp $5d                                           ; $5ffd: $fe $5d
	halt                                             ; $5fff: $76
	ld a, a                                          ; $6000: $7f
	jp hl                                            ; $6001: $e9


	halt                                             ; $6002: $76
	and h                                            ; $6003: $a4
	ld b, $c0                                        ; $6004: $06 $c0
	halt                                             ; $6006: $76
	call z, $fe7f                                    ; $6007: $cc $7f $fe
	ld a, l                                          ; $600a: $7d
	jp hl                                            ; $600b: $e9


	ld h, a                                          ; $600c: $67
	cp $56                                           ; $600d: $fe $56
	call nz, $fe77                                   ; $600f: $c4 $77 $fe
	ld l, [hl]                                       ; $6012: $6e
	jp z, $c07e                                      ; $6013: $ca $7e $c0

	ld [hl], h                                       ; $6016: $74
	jr c, jr_022_6090                                ; $6017: $38 $77

	cp $95                                           ; $6019: $fe $95
	ld e, [hl]                                       ; $601b: $5e
	and c                                            ; $601c: $a1
	xor [hl]                                         ; $601d: $ae
	ld d, c                                          ; $601e: $51
	ld e, [hl]                                       ; $601f: $5e
	and c                                            ; $6020: $a1
	xor d                                            ; $6021: $aa
	ld d, l                                          ; $6022: $55
	ld e, d                                          ; $6023: $5a
	and l                                            ; $6024: $a5
	ld l, a                                          ; $6025: $6f
	db $fc                                           ; $6026: $fc
	ld b, e                                          ; $6027: $43
	xor [hl]                                         ; $6028: $ae

jr_022_6029:
	sbc [hl]                                         ; $6029: $9e
	ld b, b                                          ; $602a: $40
	ld [hl], a                                       ; $602b: $77
	cp $6c                                           ; $602c: $fe $6c
	and h                                            ; $602e: $a4
	ld [hl], a                                       ; $602f: $77
	cp $66                                           ; $6030: $fe $66
	ret z                                            ; $6032: $c8

	ld a, a                                          ; $6033: $7f
	ld [hl], $6f                                     ; $6034: $36 $6f
	cp $47                                           ; $6036: $fe $47
	ret nc                                           ; $6038: $d0

	ld e, [hl]                                       ; $6039: $5e
	add $6f                                          ; $603a: $c6 $6f
	cp $64                                           ; $603c: $fe $64
	ld d, b                                          ; $603e: $50
	ld h, a                                          ; $603f: $67
	cp $65                                           ; $6040: $fe $65
	call nc, $fe67                                   ; $6042: $d4 $67 $fe
	ld a, [hl]                                       ; $6045: $7e
	ld [$e876], a                                    ; $6046: $ea $76 $e8
	ld a, a                                          ; $6049: $7f
	cp $7f                                           ; $604a: $fe $7f
	ld [hl], l                                       ; $604c: $75
	ld a, l                                          ; $604d: $7d
	xor b                                            ; $604e: $a8
	ld [hl], a                                       ; $604f: $77
	cp $47                                           ; $6050: $fe $47
	or b                                             ; $6052: $b0
	ld a, a                                          ; $6053: $7f
	xor $74                                          ; $6054: $ee $74
	jr nc, @+$7f                                     ; $6056: $30 $7d

	sub b                                            ; $6058: $90
	ld [hl], h                                       ; $6059: $74
	jr nc, jr_022_60d0                               ; $605a: $30 $74

	ld l, $57                                        ; $605c: $2e $57
	db $e4                                           ; $605e: $e4
	ld l, a                                          ; $605f: $6f
	ret nz                                           ; $6060: $c0

	sbc l                                            ; $6061: $9d
	add l                                            ; $6062: $85
	ld a, [hl]                                       ; $6063: $7e
	ld [hl], a                                       ; $6064: $77
	cp $9d                                           ; $6065: $fe $9d
	jp nz, Jump_022_773f                             ; $6067: $c2 $3f $77

	cp $7c                                           ; $606a: $fe $7c
	ld [hl-], a                                      ; $606c: $32
	ld b, a                                          ; $606d: $47
	ldh [$7a], a                                     ; $606e: $e0 $7a
	or a                                             ; $6070: $b7
	sbc b                                            ; $6071: $98
	cp $83                                           ; $6072: $fe $83
	ld a, [hl]                                       ; $6074: $7e
	add c                                            ; $6075: $81
	ld a, a                                          ; $6076: $7f
	pop bc                                           ; $6077: $c1
	ccf                                              ; $6078: $3f
	ld a, d                                          ; $6079: $7a
	or a                                             ; $607a: $b7
	ld c, l                                          ; $607b: $4d
	ld [hl], b                                       ; $607c: $70
	ld a, c                                          ; $607d: $79
	ld [hl], d                                       ; $607e: $72
	ld a, [hl]                                       ; $607f: $7e
	and d                                            ; $6080: $a2
	ld b, a                                          ; $6081: $47
	sub b                                            ; $6082: $90
	rlca                                             ; $6083: $07
	nop                                              ; $6084: $00
	rst SubAFromDE                                          ; $6085: $df
	ld h, [hl]                                       ; $6086: $66
	ld sp, hl                                        ; $6087: $f9
	rrca                                             ; $6088: $0f
	or $b9                                           ; $6089: $f6 $b9
	nop                                              ; $608b: $00
	sub a                                            ; $608c: $97
	ld b, $ff                                        ; $608d: $06 $ff
	inc c                                            ; $608f: $0c

jr_022_6090:
	rst $38                                          ; $6090: $ff
	ld d, $fd                                        ; $6091: $16 $fd
	ld c, $fd                                        ; $6093: $0e $fd
	ld h, a                                          ; $6095: $67
	db $fc                                           ; $6096: $fc
	sbc e                                            ; $6097: $9b
	ld d, h                                          ; $6098: $54
	xor a                                            ; $6099: $af
	ld a, [hl+]                                      ; $609a: $2a
	rst SubAFromDE                                          ; $609b: $df
	ld d, a                                          ; $609c: $57
	db $fc                                           ; $609d: $fc
	sub a                                            ; $609e: $97
	jp $c33c                                         ; $609f: $c3 $3c $c3


	inc a                                            ; $60a2: $3c
	ld b, a                                          ; $60a3: $47
	cp b                                             ; $60a4: $b8
	dec b                                            ; $60a5: $05
	ld a, [$fe67]                                    ; $60a6: $fa $67 $fe
	sbc l                                            ; $60a9: $9d
	inc e                                            ; $60aa: $1c
	db $e3                                           ; $60ab: $e3
	ld c, a                                          ; $60ac: $4f
	cp $95                                           ; $60ad: $fe $95
	rst SubAFromDE                                          ; $60af: $df
	ld h, b                                          ; $60b0: $60
	ld a, a                                          ; $60b1: $7f
	ret nz                                           ; $60b2: $c0

	cp a                                             ; $60b3: $bf
	ret nz                                           ; $60b4: $c0

	ld a, a                                          ; $60b5: $7f
	add b                                            ; $60b6: $80
	rst $38                                          ; $60b7: $ff
	nop                                              ; $60b8: $00
	ld l, a                                          ; $60b9: $6f
	cp $9d                                           ; $60ba: $fe $9d
	pop af                                           ; $60bc: $f1
	rrca                                             ; $60bd: $0f
	ld c, a                                          ; $60be: $4f
	cp $6b                                           ; $60bf: $fe $6b
	jp hl                                            ; $60c1: $e9


	ld h, e                                          ; $60c2: $63
	cp $df                                           ; $60c3: $fe $df
	add b                                            ; $60c5: $80
	add b                                            ; $60c6: $80
	ret nz                                           ; $60c7: $c0

	add b                                            ; $60c8: $80
	nop                                              ; $60c9: $00
	ret nz                                           ; $60ca: $c0

	ld b, b                                          ; $60cb: $40
	ret nz                                           ; $60cc: $c0

	ccf                                              ; $60cd: $3f
	rst $38                                          ; $60ce: $ff
	ld [bc], a                                       ; $60cf: $02

jr_022_60d0:
	cp $04                                           ; $60d0: $fe $04
	db $fc                                           ; $60d2: $fc
	ld [$47f8], sp                                   ; $60d3: $08 $f8 $47
	inc bc                                           ; $60d6: $03
	dec c                                            ; $60d7: $0d
	ld b, $1a                                        ; $60d8: $06 $1a
	inc e                                            ; $60da: $1c
	db $e4                                           ; $60db: $e4
	ld hl, sp+$71                                    ; $60dc: $f8 $71
	adc b                                            ; $60de: $88
	jr nz, jr_022_60f2                               ; $60df: $20 $11

	db $10                                           ; $60e1: $10
	ld hl, $0261                                     ; $60e2: $21 $61 $02
	and l                                            ; $60e5: $a5
	adc a                                            ; $60e6: $8f
	ld [hl], h                                       ; $60e7: $74
	inc l                                            ; $60e8: $2c
	and $36                                          ; $60e9: $e6 $36
	and [hl]                                         ; $60eb: $a6
	adc h                                            ; $60ec: $8c
	daa                                              ; $60ed: $27
	sub h                                            ; $60ee: $94
	daa                                              ; $60ef: $27
	inc l                                            ; $60f0: $2c
	ld [hl+], a                                      ; $60f1: $22

jr_022_60f2:
	dec [hl]                                         ; $60f2: $35
	ld [hl+], a                                      ; $60f3: $22
	ld a, [hl+]                                      ; $60f4: $2a
	jr nz, jr_022_611f                               ; $60f5: $20 $28

	ld a, [$c87b]                                    ; $60f7: $fa $7b $c8
	sub e                                            ; $60fa: $93
	ld b, b                                          ; $60fb: $40
	ld [hl], b                                       ; $60fc: $70
	jr nz, @-$42                                     ; $60fd: $20 $bc

	inc e                                            ; $60ff: $1c
	inc c                                            ; $6100: $0c
	rlca                                             ; $6101: $07
	jr jr_022_6113                                   ; $6102: $18 $0f

	jr jr_022_6115                                   ; $6104: $18 $0f

	ld [$fe6b], sp                                   ; $6106: $08 $6b $fe
	ld a, a                                          ; $6109: $7f
	or $94                                           ; $610a: $f6 $94
	db $fc                                           ; $610c: $fc
	rlca                                             ; $610d: $07
	ld a, [$3a07]                                    ; $610e: $fa $07 $3a
	rst JumpTable                                          ; $6111: $c7
	ld a, [bc]                                       ; $6112: $0a

jr_022_6113:
	rst FarCall                                          ; $6113: $f7
	inc bc                                           ; $6114: $03

jr_022_6115:
	rst $38                                          ; $6115: $ff
	ld bc, $fe73                                     ; $6116: $01 $73 $fe
	adc l                                            ; $6119: $8d
	ccf                                              ; $611a: $3f
	ret nz                                           ; $611b: $c0

	ccf                                              ; $611c: $3f
	ret nz                                           ; $611d: $c0

	rra                                              ; $611e: $1f

jr_022_611f:
	ldh [$1f], a                                     ; $611f: $e0 $1f
	ldh [rIF], a                                     ; $6121: $e0 $0f
	ldh a, [hDisp1_LCDC]                                     ; $6123: $f0 $8f
	ldh a, [hDisp0_OBP1]                                     ; $6125: $f0 $87
	ld hl, sp-$39                                    ; $6127: $f8 $c7
	ld hl, sp-$02                                    ; $6129: $f8 $fe
	ld bc, $fe4f                                     ; $612b: $01 $4f $fe
	ld l, a                                          ; $612e: $6f
	jp c, $029e                                      ; $612f: $da $9e $02

	ld a, e                                          ; $6132: $7b
	cp $95                                           ; $6133: $fe $95
	ld b, $fd                                        ; $6135: $06 $fd
	ld [$0aff], sp                                   ; $6137: $08 $ff $0a
	db $fd                                           ; $613a: $fd
	adc b                                            ; $613b: $88
	ld [hl], a                                       ; $613c: $77
	ld [hl+], a                                      ; $613d: $22
	db $dd                                           ; $613e: $dd
	inc bc                                           ; $613f: $03
	db $fc                                           ; $6140: $fc
	dec de                                           ; $6141: $1b
	db $fc                                           ; $6142: $fc
	ld a, [bc]                                       ; $6143: $0a
	nop                                              ; $6144: $00
	rst SubAFromDE                                          ; $6145: $df
	ld h, [hl]                                       ; $6146: $66
	sbc e                                            ; $6147: $9b
	nop                                              ; $6148: $00
	inc bc                                           ; $6149: $03
	inc sp                                           ; $614a: $33
	inc sp                                           ; $614b: $33
	db $fd                                           ; $614c: $fd
	inc b                                            ; $614d: $04
	ld bc, $069b                                     ; $614e: $01 $9b $06
	rst $38                                          ; $6151: $ff
	ld a, [bc]                                       ; $6152: $0a
	rst $38                                          ; $6153: $ff

jr_022_6154:
	ld d, a                                          ; $6154: $57
	db $fc                                           ; $6155: $fc
	sbc l                                            ; $6156: $9d
	dec b                                            ; $6157: $05
	ld a, [$fe77]                                    ; $6158: $fa $77 $fe
	sub e                                            ; $615b: $93
	ld bc, $05fe                                     ; $615c: $01 $fe $05
	cp $2b                                           ; $615f: $fe $2b
	sbc $45                                          ; $6161: $de $45
	cp [hl]                                          ; $6163: $be
	ld a, [hl+]                                      ; $6164: $2a
	rst SubAFromDE                                          ; $6165: $df
	jp Jump_022_4f3c                                 ; $6166: $c3 $3c $4f


	cp $9c                                           ; $6169: $fe $9c
	jr jr_022_6154                                   ; $616b: $18 $e7

	add hl, de                                       ; $616d: $19
	ld a, e                                          ; $616e: $7b
	cp $98                                           ; $616f: $fe $98
	dec e                                            ; $6171: $1d
	db $e3                                           ; $6172: $e3
	rra                                              ; $6173: $1f
	pop hl                                           ; $6174: $e1
	rra                                              ; $6175: $1f
	pop hl                                           ; $6176: $e1
	ld e, $7b                                        ; $6177: $1e $7b
	cp $8b                                           ; $6179: $fe $8b
	inc b                                            ; $617b: $04
	rst $38                                          ; $617c: $ff
	add h                                            ; $617d: $84
	ld a, a                                          ; $617e: $7f
	add hl, hl                                       ; $617f: $29
	sbc $0b                                          ; $6180: $de $0b
	db $fc                                           ; $6182: $fc
	sbc a                                            ; $6183: $9f
	ld l, b                                          ; $6184: $68
	rla                                              ; $6185: $17
	ld hl, sp+$6f                                    ; $6186: $f8 $6f
	or b                                             ; $6188: $b0
	ccf                                              ; $6189: $3f
	ldh [$78], a                                     ; $618a: $e0 $78
	add a                                            ; $618c: $87
	pop af                                           ; $618d: $f1
	rrca                                             ; $618e: $0f
	ld d, a                                          ; $618f: $57
	cp $95                                           ; $6190: $fe $95
	cp $81                                           ; $6192: $fe $81
	ld a, a                                          ; $6194: $7f
	add b                                            ; $6195: $80
	ccf                                              ; $6196: $3f
	ret nz                                           ; $6197: $c0

	rra                                              ; $6198: $1f
	ldh [rP1], a                                     ; $6199: $e0 $00
	rst $38                                          ; $619b: $ff
	ld l, a                                          ; $619c: $6f
	cp $dd                                           ; $619d: $fe $dd
	add b                                            ; $619f: $80
	sbc d                                            ; $61a0: $9a
	pop bc                                           ; $61a1: $c1
	add b                                            ; $61a2: $80
	ld b, d                                          ; $61a3: $42
	ret nz                                           ; $61a4: $c0

	ld b, b                                          ; $61a5: $40
	ld a, e                                          ; $61a6: $7b
	cp $9e                                           ; $61a7: $fe $9e
	ret nz                                           ; $61a9: $c0

	sbc $80                                          ; $61aa: $de $80
	rst $38                                          ; $61ac: $ff
	add b                                            ; $61ad: $80
	xor b                                            ; $61ae: $a8
	rlca                                             ; $61af: $07
	ld e, a                                          ; $61b0: $5f
	nop                                              ; $61b1: $00
	or d                                             ; $61b2: $b2
	ld bc, $0601                                     ; $61b3: $01 $01 $06
	ld [bc], a                                       ; $61b6: $02
	inc c                                            ; $61b7: $0c
	ld [$3110], sp                                   ; $61b8: $08 $10 $31
	ld bc, $c247                                     ; $61bb: $01 $47 $c2
	add d                                            ; $61be: $82
	jp nz, $83e2                                     ; $61bf: $c2 $e2 $83

Call_022_61c2:
	add l                                            ; $61c2: $85
	and [hl]                                         ; $61c3: $a6
	xor [hl]                                         ; $61c4: $ae
	and h                                            ; $61c5: $a4
	ld [hl], l                                       ; $61c6: $75
	ld h, [hl]                                       ; $61c7: $66
	xor $f5                                          ; $61c8: $ee $f5
	ld a, [hl-]                                      ; $61ca: $3a
	db $fc                                           ; $61cb: $fc
	ld a, [$708a]                                    ; $61cc: $fa $8a $70
	rrca                                             ; $61cf: $0f
	rrca                                             ; $61d0: $0f
	ld bc, $1000                                     ; $61d1: $01 $00 $10
	ldh [$a8], a                                     ; $61d4: $e0 $a8
	db $10                                           ; $61d6: $10

jr_022_61d7:
	ld d, b                                          ; $61d7: $50
	nop                                              ; $61d8: $00

jr_022_61d9:
	and b                                            ; $61d9: $a0
	nop                                              ; $61da: $00
	ret nc                                           ; $61db: $d0

	nop                                              ; $61dc: $00
	xor d                                            ; $61dd: $aa
	ld bc, $0055                                     ; $61de: $01 $55 $00
	ld a, [$77f1]                                    ; $61e1: $fa $f1 $77
	db $ec                                           ; $61e4: $ec
	rst SubAFromDE                                          ; $61e5: $df
	ld bc, $0296                                     ; $61e6: $01 $96 $02
	inc bc                                           ; $61e9: $03
	ld b, $03                                        ; $61ea: $06 $03
	rst $38                                          ; $61ec: $ff
	rst $38                                          ; $61ed: $ff
	add a                                            ; $61ee: $87
	rst $38                                          ; $61ef: $ff
	add [hl]                                         ; $61f0: $86
	ld a, e                                          ; $61f1: $7b
	cp $97                                           ; $61f2: $fe $97
	add h                                            ; $61f4: $84
	rst $38                                          ; $61f5: $ff
	ld h, h                                          ; $61f6: $64
	sbc a                                            ; $61f7: $9f
	db $f4                                           ; $61f8: $f4
	rrca                                             ; $61f9: $0f
	db $f4                                           ; $61fa: $f4
	rrca                                             ; $61fb: $0f
	ld l, e                                          ; $61fc: $6b
	sbc c                                            ; $61fd: $99
	sbc h                                            ; $61fe: $9c
	nop                                              ; $61ff: $00
	ld a, a                                          ; $6200: $7f
	add b                                            ; $6201: $80
	ld [hl], a                                       ; $6202: $77
	cp $7f                                           ; $6203: $fe $7f
	add [hl]                                         ; $6205: $86
	sbc l                                            ; $6206: $9d
	cp $01                                           ; $6207: $fe $01
	ld c, a                                          ; $6209: $4f
	cp $93                                           ; $620a: $fe $93
	ld a, h                                          ; $620c: $7c
	add e                                            ; $620d: $83
	jr c, jr_022_61d7                                ; $620e: $38 $c7

	jr c, jr_022_61d9                                ; $6210: $38 $c7

	db $10                                           ; $6212: $10
	rst AddAOntoHL                                          ; $6213: $ef
	db $10                                           ; $6214: $10
	rst AddAOntoHL                                          ; $6215: $ef
	ld bc, $77ff                                     ; $6216: $01 $ff $77
	cp $9e                                           ; $6219: $fe $9e
	add d                                            ; $621b: $82
	ld a, e                                          ; $621c: $7b
	cp $95                                           ; $621d: $fe $95
	add [hl]                                         ; $621f: $86
	ei                                               ; $6220: $fb
	and d                                            ; $6221: $a2
	rst SubAFromDE                                          ; $6222: $df
	adc d                                            ; $6223: $8a
	rst FarCall                                          ; $6224: $f7
	add b                                            ; $6225: $80
	rst $38                                          ; $6226: $ff
	ld [hl+], a                                      ; $6227: $22
	db $dd                                           ; $6228: $dd
	ld [hl], a                                       ; $6229: $77
	push bc                                          ; $622a: $c5
	ld a, a                                          ; $622b: $7f
	and $96                                          ; $622c: $e6 $96
	add h                                            ; $622e: $84
	ld a, e                                          ; $622f: $7b
	nop                                              ; $6230: $00
	rst $38                                          ; $6231: $ff
	ld [bc], a                                       ; $6232: $02
	db $fd                                           ; $6233: $fd
	and b                                            ; $6234: $a0
	ld e, a                                          ; $6235: $5f
	nop                                              ; $6236: $00
	ld [hl], e                                       ; $6237: $73
	xor $9b                                          ; $6238: $ee $9b
	inc b                                            ; $623a: $04
	ei                                               ; $623b: $fb
	ld b, b                                          ; $623c: $40
	cp a                                             ; $623d: $bf
	ld [hl], a                                       ; $623e: $77
	ld [$f877], a                                    ; $623f: $ea $77 $f8
	ld a, a                                          ; $6242: $7f
	ld [$de77], a                                    ; $6243: $ea $77 $de
	sub a                                            ; $6246: $97
	ld [$80f7], sp                                   ; $6247: $08 $f7 $80
	ld a, a                                          ; $624a: $7f
	ld bc, $48fe                                     ; $624b: $01 $fe $48
	or a                                             ; $624e: $b7
	ld [hl], a                                       ; $624f: $77
	ldh [$0a], a                                     ; $6250: $e0 $0a
	nop                                              ; $6252: $00
	rst SubAFromDE                                          ; $6253: $df
	ld h, [hl]                                       ; $6254: $66
	sbc e                                            ; $6255: $9b
	nop                                              ; $6256: $00
	inc bc                                           ; $6257: $03
	inc sp                                           ; $6258: $33
	inc sp                                           ; $6259: $33
	db $fd                                           ; $625a: $fd
	db $dd                                           ; $625b: $dd
	add b                                            ; $625c: $80
	sub a                                            ; $625d: $97
	ld e, a                                          ; $625e: $5f

jr_022_625f:
	xor e                                            ; $625f: $ab
	ld d, a                                          ; $6260: $57
	xor e                                            ; $6261: $ab
	ld b, a                                          ; $6262: $47
	ld a, [bc]                                       ; $6263: $0a
	ld b, $0a                                        ; $6264: $06 $0a
	reti                                             ; $6266: $d9


	rst $38                                          ; $6267: $ff
	sbc $d7                                          ; $6268: $de $d7
	sbc d                                            ; $626a: $9a
	sub a                                            ; $626b: $97
	sbc a                                            ; $626c: $9f
	sbc a                                            ; $626d: $9f
	adc a                                            ; $626e: $8f
	dec c                                            ; $626f: $0d
	db $dd                                           ; $6270: $dd
	ld hl, sp-$22                                    ; $6271: $f8 $de
	ldh a, [$9e]                                     ; $6273: $f0 $9e
	ldh a, [c]                                       ; $6275: $f2
	jp c, $9ee3                                      ; $6276: $da $e3 $9e

	jp $3cd9                                         ; $6279: $c3 $d9 $3c


	call c, $9c19                                    ; $627c: $dc $19 $9c
	dec e                                            ; $627f: $1d
	inc e                                            ; $6280: $1c
	jr jr_022_625f                                   ; $6281: $18 $dc

	rst SubAFromBC                                          ; $6283: $e7
	rst SubAFromDE                                          ; $6284: $df
	db $e3                                           ; $6285: $e3
	sbc [hl]                                         ; $6286: $9e
	rst SubAFromBC                                          ; $6287: $e7
	cp $de                                           ; $6288: $fe $de
	ld bc, $02df                                     ; $628a: $01 $df $02
	reti                                             ; $628d: $d9


	rst $38                                          ; $628e: $ff
	sbc $be                                          ; $628f: $de $be
	db $dd                                           ; $6291: $dd
	ld a, $9e                                        ; $6292: $3e $9e
	ld a, h                                          ; $6294: $7c
	jp c, $99c1                                      ; $6295: $da $c1 $99

	add e                                            ; $6298: $83
	cp a                                             ; $6299: $bf
	add b                                            ; $629a: $80
	cp b                                             ; $629b: $b8
	db $fd                                           ; $629c: $fd
	db $fd                                           ; $629d: $fd
	call c, $9cff                                    ; $629e: $dc $ff $9c
	rst JumpTable                                          ; $62a1: $c7
	add e                                            ; $62a2: $83
	add e                                            ; $62a3: $83
	sbc $81                                          ; $62a4: $de $81
	adc b                                            ; $62a6: $88
	rst $38                                          ; $62a7: $ff
	ld a, a                                          ; $62a8: $7f
	call nc, $d5aa                                   ; $62a9: $d4 $aa $d5
	ld a, a                                          ; $62ac: $7f
	nop                                              ; $62ad: $00
	nop                                              ; $62ae: $00
	add b                                            ; $62af: $80
	rst $38                                          ; $62b0: $ff
	add e                                            ; $62b1: $83
	nop                                              ; $62b2: $00
	ret nz                                           ; $62b3: $c0

	ccf                                              ; $62b4: $3f
	nop                                              ; $62b5: $00
	nop                                              ; $62b6: $00
	rst $38                                          ; $62b7: $ff
	rst $38                                          ; $62b8: $ff
	ld a, a                                          ; $62b9: $7f
	xor b                                            ; $62ba: $a8
	ld d, l                                          ; $62bb: $55
	ld a, [$770f]                                    ; $62bc: $fa $0f $77
	rst AddAOntoHL                                          ; $62bf: $ef
	add d                                            ; $62c0: $82
	inc bc                                           ; $62c1: $03
	nop                                              ; $62c2: $00
	ldh a, [rTAC]                                    ; $62c3: $f0 $07
	nop                                              ; $62c5: $00
	rst GetHLinHL                                          ; $62c6: $cf
	ld a, [$fdfb]                                    ; $62c7: $fa $fb $fd
	ld e, a                                          ; $62ca: $5f
	cp a                                             ; $62cb: $bf
	ld a, [$096f]                                    ; $62cc: $fa $6f $09
	ld c, $8e                                        ; $62cf: $0e $8e
	cp $3f                                           ; $62d1: $fe $3f
	rra                                              ; $62d3: $1f
	db $fc                                           ; $62d4: $fc
	ld b, a                                          ; $62d5: $47
	rrca                                             ; $62d6: $0f
	nop                                              ; $62d7: $00
	ldh a, [rIE]                                     ; $62d8: $f0 $ff
	rst AddAOntoHL                                          ; $62da: $ef
	rra                                              ; $62db: $1f
	xor d                                            ; $62dc: $aa
	sub l                                            ; $62dd: $95
	db $fd                                           ; $62de: $fd
	ld a, a                                          ; $62df: $7f
	or $93                                           ; $62e0: $f6 $93
	ld d, l                                          ; $62e2: $55
	ret nz                                           ; $62e3: $c0

	rst $38                                          ; $62e4: $ff
	ld a, a                                          ; $62e5: $7f
	inc bc                                           ; $62e6: $03
	ret nz                                           ; $62e7: $c0

	db $fc                                           ; $62e8: $fc
	cp a                                             ; $62e9: $bf
	ld a, e                                          ; $62ea: $7b
	ld d, a                                          ; $62eb: $57
	ld [$fe08], sp                                   ; $62ec: $08 $08 $fe
	ld a, a                                          ; $62ef: $7f
	or $9e                                           ; $62f0: $f6 $9e
	rrca                                             ; $62f2: $0f
	sbc $f6                                          ; $62f3: $de $f6
	sbc c                                            ; $62f5: $99
	halt                                             ; $62f6: $76
	inc bc                                           ; $62f7: $03
	add e                                            ; $62f8: $83
	rst $38                                          ; $62f9: $ff
	ld [hl], a                                       ; $62fa: $77
	dec bc                                           ; $62fb: $0b
	sbc $03                                          ; $62fc: $de $03

Jump_022_62fe:
	sbc $07                                          ; $62fe: $de $07
	sbc [hl]                                         ; $6300: $9e
	adc a                                            ; $6301: $8f
	sbc $1f                                          ; $6302: $de $1f
	rst SubAFromDE                                          ; $6304: $df
	ccf                                              ; $6305: $3f
	rst SubAFromDE                                          ; $6306: $df
	ld a, a                                          ; $6307: $7f
	sbc [hl]                                         ; $6308: $9e
	rst $38                                          ; $6309: $ff
	sbc $e0                                          ; $630a: $de $e0
	rst SubAFromDE                                          ; $630c: $df
	ret nz                                           ; $630d: $c0

	rst SubAFromDE                                          ; $630e: $df
	add b                                            ; $630f: $80
	sbc [hl]                                         ; $6310: $9e
	nop                                              ; $6311: $00
	reti                                             ; $6312: $d9


	cp $d9                                           ; $6313: $fe $d9
	ld bc, $f0de                                     ; $6315: $01 $de $f0
	sbc d                                            ; $6318: $9a
	ld hl, sp+$78                                    ; $6319: $f8 $78
	ld a, b                                          ; $631b: $78
	ld a, h                                          ; $631c: $7c
	ld a, h                                          ; $631d: $7c
	sbc $0f                                          ; $631e: $de $0f
	sub l                                            ; $6320: $95
	rlca                                             ; $6321: $07
	add a                                            ; $6322: $87
	add a                                            ; $6323: $87
	add e                                            ; $6324: $83
	add e                                            ; $6325: $83
	rst AddAOntoHL                                          ; $6326: $ef
	rst AddAOntoHL                                          ; $6327: $ef
	rst SubAFromBC                                          ; $6328: $e7
	rst JumpTable                                          ; $6329: $c7
	rst JumpTable                                          ; $632a: $c7
	sbc $87                                          ; $632b: $de $87
	rst SubAFromDE                                          ; $632d: $df
	cp c                                             ; $632e: $b9
	sbc [hl]                                         ; $632f: $9e
	cp l                                             ; $6330: $bd
	call c, $f9fd                                    ; $6331: $dc $fd $f9
	reti                                             ; $6334: $d9


	rst $38                                          ; $6335: $ff
	rlca                                             ; $6336: $07
	ldh a, [$0c]                                     ; $6337: $f0 $0c
	nop                                              ; $6339: $00
	rst SubAFromDE                                          ; $633a: $df
	ld h, [hl]                                       ; $633b: $66
	sbc h                                            ; $633c: $9c
	nop                                              ; $633d: $00
	inc bc                                           ; $633e: $03
	inc sp                                           ; $633f: $33
	cp $9d                                           ; $6340: $fe $9d
	ld [hl], b                                       ; $6342: $70
	nop                                              ; $6343: $00
	cp d                                             ; $6344: $ba
	add b                                            ; $6345: $80
	sub a                                            ; $6346: $97
	ld e, h                                          ; $6347: $5c
	cp l                                             ; $6348: $bd
	ld e, l                                          ; $6349: $5d
	cp l                                             ; $634a: $bd
	ld e, l                                          ; $634b: $5d
	cp a                                             ; $634c: $bf
	ld e, a                                          ; $634d: $5f
	xor a                                            ; $634e: $af
	ret c                                            ; $634f: $d8

	rst $38                                          ; $6350: $ff
	jp c, $d9df                                      ; $6351: $da $df $d9

	ld hl, sp-$21                                    ; $6354: $f8 $df
	or d                                             ; $6356: $b2
	sbc $f2                                          ; $6357: $de $f2
	sbc d                                            ; $6359: $9a
	ldh [c], a                                       ; $635a: $e2
	db $e3                                           ; $635b: $e3
	db $e3                                           ; $635c: $e3
	ld a, l                                          ; $635d: $7d
	ld a, l                                          ; $635e: $7d
	db $dd                                           ; $635f: $dd
	dec a                                            ; $6360: $3d
	rst SubAFromDE                                          ; $6361: $df
	inc a                                            ; $6362: $3c
	sbc $31                                          ; $6363: $de $31
	sbc $39                                          ; $6365: $de $39
	rst SubAFromDE                                          ; $6367: $df
	add hl, de                                       ; $6368: $19
	sbc $cf                                          ; $6369: $de $cf
	sbc $c7                                          ; $636b: $de $c7
	rst SubAFromDE                                          ; $636d: $df
	rst SubAFromBC                                          ; $636e: $e7
	ld sp, hl                                        ; $636f: $f9
	reti                                             ; $6370: $d9


	rst $38                                          ; $6371: $ff
	sbc h                                            ; $6372: $9c
	ld l, $3e                                        ; $6373: $2e $3e
	ccf                                              ; $6375: $3f
	sbc $5f                                          ; $6376: $de $5f
	sbc h                                            ; $6378: $9c
	ld e, [hl]                                       ; $6379: $5e
	cp [hl]                                          ; $637a: $be
	pop af                                           ; $637b: $f1
	db $db                                           ; $637c: $db
	pop hl                                           ; $637d: $e1
	sub h                                            ; $637e: $94
	pop bc                                           ; $637f: $c1
	di                                               ; $6380: $f3
	di                                               ; $6381: $f3
	ld [hl], e                                       ; $6382: $73
	ld [hl], e                                       ; $6383: $73
	ldh a, [$f0]                                     ; $6384: $f0 $f0
	rst $38                                          ; $6386: $ff
	rst $38                                          ; $6387: $ff
	ld b, b                                          ; $6388: $40
	ld b, b                                          ; $6389: $40
	db $db                                           ; $638a: $db
	ret nz                                           ; $638b: $c0

	db $dd                                           ; $638c: $dd
	rst $38                                          ; $638d: $ff
	sbc e                                            ; $638e: $9b
	ld a, a                                          ; $638f: $7f
	nop                                              ; $6390: $00
	add b                                            ; $6391: $80
	rst $38                                          ; $6392: $ff
	ld d, e                                          ; $6393: $53
	ret z                                            ; $6394: $c8

	ld a, e                                          ; $6395: $7b
	rst AddAOntoHL                                          ; $6396: $ef
	sbc [hl]                                         ; $6397: $9e
	jr nz, jr_022_6401                               ; $6398: $20 $67

	ldh a, [$9d]                                     ; $639a: $f0 $9d
	rst AddAOntoHL                                          ; $639c: $ef
	rst SubAFromDE                                          ; $639d: $df
	sbc $ff                                          ; $639e: $de $ff
	sbc d                                            ; $63a0: $9a
	ccf                                              ; $63a1: $3f
	ld d, $20                                        ; $63a2: $16 $20
	jr nc, jr_022_63d6                               ; $63a4: $30 $30

	db $dd                                           ; $63a6: $dd
	db $10                                           ; $63a7: $10
	adc [hl]                                         ; $63a8: $8e
	add hl, de                                       ; $63a9: $19
	rst $38                                          ; $63aa: $ff
	rst FarCall                                          ; $63ab: $f7
	rst SubAFromDE                                          ; $63ac: $df
	rst $38                                          ; $63ad: $ff
	rst SubAFromDE                                          ; $63ae: $df
	rst $38                                          ; $63af: $ff
	cp a                                             ; $63b0: $bf
	rst $38                                          ; $63b1: $ff
	ld [$3018], sp                                   ; $63b2: $08 $18 $30
	jr nz, jr_022_6417                               ; $63b5: $20 $60

	ld b, b                                          ; $63b7: $40
	ret nz                                           ; $63b8: $c0

	add b                                            ; $63b9: $80
	db $db                                           ; $63ba: $db
	rst FarCall                                          ; $63bb: $f7
	rst SubAFromDE                                          ; $63bc: $df
	rst $38                                          ; $63bd: $ff
	rst SubAFromDE                                          ; $63be: $df
	ld e, $dd                                        ; $63bf: $1e $dd
	inc e                                            ; $63c1: $1c
	rst SubAFromDE                                          ; $63c2: $df
	ld [$f8de], sp                                   ; $63c3: $08 $de $f8
	sbc $f4                                          ; $63c6: $de $f4
	rst SubAFromDE                                          ; $63c8: $df
	or $da                                           ; $63c9: $f6 $da
	rrca                                             ; $63cb: $0f
	sbc e                                            ; $63cc: $9b
	dec bc                                           ; $63cd: $0b
	sbc a                                            ; $63ce: $9f
	rra                                              ; $63cf: $1f
	rra                                              ; $63d0: $1f
	db $dd                                           ; $63d1: $dd
	rrca                                             ; $63d2: $0f
	sbc e                                            ; $63d3: $9b
	rra                                              ; $63d4: $1f
	ld h, b                                          ; $63d5: $60

jr_022_63d6:
	ldh [$e0], a                                     ; $63d6: $e0 $e0
	db $dd                                           ; $63d8: $dd
	ldh a, [$9e]                                     ; $63d9: $f0 $9e
	ldh [$d9], a                                     ; $63db: $e0 $d9
	rst $38                                          ; $63dd: $ff
	ld sp, hl                                        ; $63de: $f9
	rst SubAFromDE                                          ; $63df: $df
	add e                                            ; $63e0: $83
	rst SubAFromDE                                          ; $63e1: $df
	pop bc                                           ; $63e2: $c1
	rst SubAFromDE                                          ; $63e3: $df
	pop hl                                           ; $63e4: $e1
	rst SubAFromDE                                          ; $63e5: $df
	pop af                                           ; $63e6: $f1
	rst SubAFromDE                                          ; $63e7: $df
	ld a, a                                          ; $63e8: $7f
	rst SubAFromDE                                          ; $63e9: $df
	ccf                                              ; $63ea: $3f
	ld [hl], a                                       ; $63eb: $77
	push de                                          ; $63ec: $d5
	db $dd                                           ; $63ed: $dd
	cp $de                                           ; $63ee: $fe $de
	rst $38                                          ; $63f0: $ff
	sbc l                                            ; $63f1: $9d
	rst AddAOntoHL                                          ; $63f2: $ef
	inc hl                                           ; $63f3: $23
	sbc $13                                          ; $63f4: $de $13
	sbc $19                                          ; $63f6: $de $19
	sbc [hl]                                         ; $63f8: $9e
	add hl, sp                                       ; $63f9: $39
	ld b, a                                          ; $63fa: $47
	jr nc, jr_022_6404                               ; $63fb: $30 $07

jr_022_63fd:
	ldh a, [$0b]                                     ; $63fd: $f0 $0b
	nop                                              ; $63ff: $00
	rst SubAFromDE                                          ; $6400: $df

jr_022_6401:
	ld h, [hl]                                       ; $6401: $66
	cp $9a                                           ; $6402: $fe $9a

jr_022_6404:
	dec b                                            ; $6404: $05
	nop                                              ; $6405: $00
	nop                                              ; $6406: $00
	ld [hl], b                                       ; $6407: $70
	nop                                              ; $6408: $00
	pop de                                           ; $6409: $d1
	add b                                            ; $640a: $80
	sub a                                            ; $640b: $97
	ld a, a                                          ; $640c: $7f
	cp a                                             ; $640d: $bf
	ld a, a                                          ; $640e: $7f
	cp a                                             ; $640f: $bf
	ld a, [hl]                                       ; $6410: $7e
	cp [hl]                                          ; $6411: $be
	ld e, [hl]                                       ; $6412: $5e
	cp [hl]                                          ; $6413: $be
	db $dd                                           ; $6414: $dd
	db $fc                                           ; $6415: $fc
	db $dd                                           ; $6416: $dd

jr_022_6417:
	db $fd                                           ; $6417: $fd
	sbc l                                            ; $6418: $9d
	rst AddAOntoHL                                          ; $6419: $ef
	rst FarCall                                          ; $641a: $f7
	ld [hl], a                                       ; $641b: $77
	cp $df                                           ; $641c: $fe $df
	rst $38                                          ; $641e: $ff
	reti                                             ; $641f: $d9


	ld hl, sp-$21                                    ; $6420: $f8 $df
	ld h, e                                          ; $6422: $63
	sbc [hl]                                         ; $6423: $9e
	and e                                            ; $6424: $a3
	call c, $dfb3                                    ; $6425: $dc $b3 $df
	db $fc                                           ; $6428: $fc
	db $db                                           ; $6429: $db
	ld a, h                                          ; $642a: $7c
	reti                                             ; $642b: $d9


	ld sp, $cfd9                                     ; $642c: $31 $d9 $cf
	ld sp, hl                                        ; $642f: $f9
	reti                                             ; $6430: $d9


	rst $38                                          ; $6431: $ff
	sbc [hl]                                         ; $6432: $9e
	rla                                              ; $6433: $17
	sbc $1f                                          ; $6434: $de $1f
	sbc $1d                                          ; $6436: $de $1d
	sbc l                                            ; $6438: $9d
	inc e                                            ; $6439: $1c
	ld hl, sp-$22                                    ; $643a: $f8 $de
	ldh a, [$de]                                     ; $643c: $f0 $de
	ldh a, [c]                                       ; $643e: $f2
	sbc l                                            ; $643f: $9d
	di                                               ; $6440: $f3
	ld sp, hl                                        ; $6441: $f9
	sbc $79                                          ; $6442: $de $79
	rst SubAFromDE                                          ; $6444: $df
	ld [hl], e                                       ; $6445: $73
	rst SubAFromDE                                          ; $6446: $df
	di                                               ; $6447: $f3
	db $dd                                           ; $6448: $dd
	ldh [$df], a                                     ; $6449: $e0 $df
	ret nz                                           ; $644b: $c0

	rst SubAFromDE                                          ; $644c: $df
	ld b, b                                          ; $644d: $40
	reti                                             ; $644e: $d9


	rst $38                                          ; $644f: $ff
	ld sp, hl                                        ; $6450: $f9
	sub a                                            ; $6451: $97
	sub e                                            ; $6452: $93
	sbc e                                            ; $6453: $9b
	sbc e                                            ; $6454: $9b
	db $db                                           ; $6455: $db
	db $db                                           ; $6456: $db
	rst SubAFromDE                                          ; $6457: $df
	rst SubAFromDE                                          ; $6458: $df
	rst $38                                          ; $6459: $ff
	sbc $fe                                          ; $645a: $de $fe
	rst SubAFromDE                                          ; $645c: $df
	ld a, [hl]                                       ; $645d: $7e
	rst SubAFromDE                                          ; $645e: $df
	halt                                             ; $645f: $76
	sub l                                            ; $6460: $95
	ld [hl+], a                                      ; $6461: $22
	cp a                                             ; $6462: $bf
	cp a                                             ; $6463: $bf
	ld b, b                                          ; $6464: $40
	ret nz                                           ; $6465: $c0

	rst SubAFromDE                                          ; $6466: $df
	cp a                                             ; $6467: $bf
	rst $38                                          ; $6468: $ff
	rst $38                                          ; $6469: $ff
	pop bc                                           ; $646a: $c1
	ld a, e                                          ; $646b: $7b

Call_022_646c:
	db $d3                                           ; $646c: $d3
	rst SubAFromDE                                          ; $646d: $df
	ld h, b                                          ; $646e: $60
	rst SubAFromDE                                          ; $646f: $df
	jr nz, jr_022_63fd                               ; $6470: $20 $8b

	ldh a, [$fe]                                     ; $6472: $f0 $fe
	db $fd                                           ; $6474: $fd
	ld c, $01                                        ; $6475: $0e $01
	ldh a, [c]                                       ; $6477: $f2
	ei                                               ; $6478: $fb
	rst $38                                          ; $6479: $ff
	ldh a, [$0e]                                     ; $647a: $f0 $0e
	inc bc                                           ; $647c: $03
	ld bc, $0301                                     ; $647d: $01 $01 $03
	ld b, $04                                        ; $6480: $06 $04
	ld a, [hl-]                                      ; $6482: $3a

Jump_022_6483:
	ld a, d                                          ; $6483: $7a
	ldh a, [c]                                       ; $6484: $f2
	db $f4                                           ; $6485: $f4
	db $dd                                           ; $6486: $dd
	push af                                          ; $6487: $f5
	sbc e                                            ; $6488: $9b
	cpl                                              ; $6489: $2f
	ld c, a                                          ; $648a: $4f
	sbc a                                            ; $648b: $9f
	sbc a                                            ; $648c: $9f
	db $dd                                           ; $648d: $dd
	rra                                              ; $648e: $1f
	adc e                                            ; $648f: $8b
	cp $ff                                           ; $6490: $fe $ff
	ei                                               ; $6492: $fb
	db $fd                                           ; $6493: $fd
	db $fd                                           ; $6494: $fd
	ld sp, hl                                        ; $6495: $f9
	ld sp, hl                                        ; $6496: $f9
	ld hl, sp-$7d                                    ; $6497: $f8 $83
	add d                                            ; $6499: $82
	add [hl]                                         ; $649a: $86
	add [hl]                                         ; $649b: $86
	ld b, $0e                                        ; $649c: $06 $0e
	ld c, $0f                                        ; $649e: $0e $0f
	xor a                                            ; $64a0: $af
	rst GetHLinHL                                          ; $64a1: $cf
	rst GetHLinHL                                          ; $64a2: $cf
	rst SubAFromDE                                          ; $64a3: $df
	db $dd                                           ; $64a4: $dd
	sbc a                                            ; $64a5: $9f
	sbc $70                                          ; $64a6: $de $70
	call c, $8760                                    ; $64a8: $dc $60 $87
	inc a                                            ; $64ab: $3c
	inc e                                            ; $64ac: $1c
	inc e                                            ; $64ad: $1c
	sbc [hl]                                         ; $64ae: $9e
	sbc $de                                          ; $64af: $de $de
	rst $38                                          ; $64b1: $ff
	rst $38                                          ; $64b2: $ff
	jp $e3e3                                         ; $64b3: $c3 $e3 $e3


	ld h, c                                          ; $64b6: $61
	ld hl, $0021                                     ; $64b7: $21 $21 $00
	nop                                              ; $64ba: $00
	ccf                                              ; $64bb: $3f
	rra                                              ; $64bc: $1f
	rrca                                             ; $64bd: $0f
	rrca                                             ; $64be: $0f
	rlca                                             ; $64bf: $07
	rlca                                             ; $64c0: $07
	inc bc                                           ; $64c1: $03
	inc bc                                           ; $64c2: $03
	sbc $f8                                          ; $64c3: $de $f8
	rst SubAFromDE                                          ; $64c5: $df
	db $fc                                           ; $64c6: $fc
	sbc $fe                                          ; $64c7: $de $fe
	ld [hl], e                                       ; $64c9: $73
	ld hl, sp+$7b                                    ; $64ca: $f8 $7b
	or $df                                           ; $64cc: $f6 $df
	adc a                                            ; $64ce: $8f
	sbc c                                            ; $64cf: $99
	ld c, a                                          ; $64d0: $4f
	ld b, a                                          ; $64d1: $47
	ld b, a                                          ; $64d2: $47
	daa                                              ; $64d3: $27
	daa                                              ; $64d4: $27
	inc hl                                           ; $64d5: $23
	ld b, a                                          ; $64d6: $47
	jr nc, jr_022_64e0                               ; $64d7: $30 $07

	ldh a, [$0c]                                     ; $64d9: $f0 $0c
	nop                                              ; $64db: $00
	rst SubAFromDE                                          ; $64dc: $df
	ld h, [hl]                                       ; $64dd: $66
	rst $38                                          ; $64de: $ff
	sbc c                                            ; $64df: $99

jr_022_64e0:
	ld d, b                                          ; $64e0: $50
	dec b                                            ; $64e1: $05
	nop                                              ; $64e2: $00
	rlca                                             ; $64e3: $07
	ld [hl], b                                       ; $64e4: $70
	nop                                              ; $64e5: $00
	add $80                                          ; $64e6: $c6 $80
	sbc l                                            ; $64e8: $9d
	ld a, h                                          ; $64e9: $7c
	cp h                                             ; $64ea: $bc
	ld [hl], e                                       ; $64eb: $73
	cp $9e                                           ; $64ec: $fe $9e
	cp l                                             ; $64ee: $bd
	jp c, $9bff                                      ; $64ef: $da $ff $9b

	cp $f7                                           ; $64f2: $fe $f7
	di                                               ; $64f4: $f3
	rst AddAOntoHL                                          ; $64f5: $ef
	ld [hl], e                                       ; $64f6: $73
	cp $9d                                           ; $64f7: $fe $9d
	ld hl, sp-$04                                    ; $64f9: $f8 $fc
	ld l, a                                          ; $64fb: $6f
	cp $dd                                           ; $64fc: $fe $dd
	jp Jump_022_439e                                 ; $64fe: $c3 $9e $43


	sbc $63                                          ; $6501: $de $63
	reti                                             ; $6503: $d9


	db $fc                                           ; $6504: $fc
	call c, $def1                                    ; $6505: $dc $f1 $de
	or c                                             ; $6508: $b1

jr_022_6509:
	call c, $de0f                                    ; $6509: $dc $0f $de
	ld c, a                                          ; $650c: $4f
	ld sp, hl                                        ; $650d: $f9
	reti                                             ; $650e: $d9


	rst $38                                          ; $650f: $ff
	sub l                                            ; $6510: $95
	ld [bc], a                                       ; $6511: $02
	dec b                                            ; $6512: $05
	rlca                                             ; $6513: $07
	rlca                                             ; $6514: $07
	dec bc                                           ; $6515: $0b
	ld c, $0f                                        ; $6516: $0e $0f
	rrca                                             ; $6518: $0f
	rst $38                                          ; $6519: $ff
	rst $38                                          ; $651a: $ff
	sbc $fd                                          ; $651b: $de $fd
	sbc h                                            ; $651d: $9c
	ld sp, hl                                        ; $651e: $f9
	ld hl, sp-$08                                    ; $651f: $f8 $f8
	db $dd                                           ; $6521: $dd
	ld sp, hl                                        ; $6522: $f9
	sbc e                                            ; $6523: $9b
	ld a, c                                          ; $6524: $79
	ld sp, hl                                        ; $6525: $f9
	ld sp, hl                                        ; $6526: $f9
	cp c                                             ; $6527: $b9
	db $dd                                           ; $6528: $dd
	jr nz, jr_022_6509                               ; $6529: $20 $de

	and b                                            ; $652b: $a0
	sbc [hl]                                         ; $652c: $9e
	ldh [$d9], a                                     ; $652d: $e0 $d9
	rst $38                                          ; $652f: $ff
	ld sp, hl                                        ; $6530: $f9
	reti                                             ; $6531: $d9


	sub e                                            ; $6532: $93
	ld [hl], e                                       ; $6533: $73
	add e                                            ; $6534: $83
	sbc $fe                                          ; $6535: $de $fe
	rst SubAFromDE                                          ; $6537: $df
	add b                                            ; $6538: $80
	sbc c                                            ; $6539: $99
	ldh a, [$fc]                                     ; $653a: $f0 $fc
	cp [hl]                                          ; $653c: $be
	add d                                            ; $653d: $82
	add b                                            ; $653e: $80
	cp $fd                                           ; $653f: $fe $fd
	sbc $80                                          ; $6541: $de $80
	sub a                                            ; $6543: $97
	rst $38                                          ; $6544: $ff
	rlca                                             ; $6545: $07
	rlca                                             ; $6546: $07
	rrca                                             ; $6547: $0f
	rrca                                             ; $6548: $0f
	rra                                              ; $6549: $1f
	rra                                              ; $654a: $1f
	inc bc                                           ; $654b: $03
	ld hl, sp+$7b                                    ; $654c: $f8 $7b
	xor b                                            ; $654e: $a8
	ld a, a                                          ; $654f: $7f
	ret c                                            ; $6550: $d8

	sbc h                                            ; $6551: $9c
	rst $38                                          ; $6552: $ff
	ld sp, hl                                        ; $6553: $f9
	ld a, [hl-]                                      ; $6554: $3a
	sbc $06                                          ; $6555: $de $06
	add c                                            ; $6557: $81
	inc b                                            ; $6558: $04
	dec c                                            ; $6559: $0d
	dec c                                            ; $655a: $0d
	rrca                                             ; $655b: $0f
	rra                                              ; $655c: $1f
	ld b, a                                          ; $655d: $47
	ld c, a                                          ; $655e: $4f
	adc a                                            ; $655f: $8f
	sbc [hl]                                         ; $6560: $9e
	sbc [hl]                                         ; $6561: $9e
	ccf                                              ; $6562: $3f
	ld a, a                                          ; $6563: $7f
	ld a, a                                          ; $6564: $7f
	rst AddAOntoHL                                          ; $6565: $ef
	call c, $f2dc                                    ; $6566: $dc $dc $f2
	ldh a, [c]                                       ; $6569: $f2
	pop hl                                           ; $656a: $e1
	pop bc                                           ; $656b: $c1
	pop bc                                           ; $656c: $c1
	rst $38                                          ; $656d: $ff
	ld hl, sp-$40                                    ; $656e: $f8 $c0
	rlca                                             ; $6570: $07
	ccf                                              ; $6571: $3f
	rst $38                                          ; $6572: $ff
	db $fc                                           ; $6573: $fc
	cp $80                                           ; $6574: $fe $80
	db $fd                                           ; $6576: $fd
	sub h                                            ; $6577: $94
	inc bc                                           ; $6578: $03
	rra                                              ; $6579: $1f
	pop af                                           ; $657a: $f1
	ld sp, hl                                        ; $657b: $f9
	add hl, bc                                       ; $657c: $09
	ld [$fffc], sp                                   ; $657d: $08 $fc $ff
	db $fd                                           ; $6580: $fd
	ld a, h                                          ; $6581: $7c
	ld a, h                                          ; $6582: $7c
	sbc $0f                                          ; $6583: $de $0f
	rst SubAFromDE                                          ; $6585: $df
	rlca                                             ; $6586: $07
	adc h                                            ; $6587: $8c
	rst $38                                          ; $6588: $ff
	jp $3fc3                                         ; $6589: $c3 $c3 $3f


	ld l, $ad                                        ; $658c: $2e $ad
	sbc a                                            ; $658e: $9f
	sbc a                                            ; $658f: $9f
	sub a                                            ; $6590: $97
	adc [hl]                                         ; $6591: $8e
	rst GetHLinHL                                          ; $6592: $cf
	ldh [c], a                                       ; $6593: $e2
	di                                               ; $6594: $f3
	di                                               ; $6595: $f3
	pop af                                           ; $6596: $f1
	pop af                                           ; $6597: $f1
	ld sp, hl                                        ; $6598: $f9
	ld sp, hl                                        ; $6599: $f9
	ld hl, sp-$23                                    ; $659a: $f8 $dd
	ldh [$de], a                                     ; $659c: $e0 $de
	ldh a, [$9e]                                     ; $659e: $f0 $9e
	ld hl, sp-$23                                    ; $65a0: $f8 $dd
	ccf                                              ; $65a2: $3f
	rst SubAFromDE                                          ; $65a3: $df
	rra                                              ; $65a4: $1f
	sbc l                                            ; $65a5: $9d
	sbc a                                            ; $65a6: $9f
	adc a                                            ; $65a7: $8f
	ld b, a                                          ; $65a8: $47
	jr nc, jr_022_65b2                               ; $65a9: $30 $07

	ldh a, [$0c]                                     ; $65ab: $f0 $0c
	nop                                              ; $65ad: $00
	rst SubAFromDE                                          ; $65ae: $df
	ld h, [hl]                                       ; $65af: $66
	rst $38                                          ; $65b0: $ff
	sbc c                                            ; $65b1: $99

jr_022_65b2:
	ld d, d                                          ; $65b2: $52
	ld [hl+], a                                      ; $65b3: $22
	ld d, b                                          ; $65b4: $50
	ld [bc], a                                       ; $65b5: $02
	ld [hl], b                                       ; $65b6: $70
	nop                                              ; $65b7: $00
	cp l                                             ; $65b8: $bd
	add b                                            ; $65b9: $80
	sbc l                                            ; $65ba: $9d
	ld a, h                                          ; $65bb: $7c
	cp h                                             ; $65bc: $bc
	ld l, a                                          ; $65bd: $6f
	cp $d9                                           ; $65be: $fe $d9
	rst $38                                          ; $65c0: $ff
	sbc l                                            ; $65c1: $9d
	rst AddAOntoHL                                          ; $65c2: $ef
	di                                               ; $65c3: $f3
	ld l, a                                          ; $65c4: $6f
	cp $9d                                           ; $65c5: $fe $9d
	ld hl, sp-$04                                    ; $65c7: $f8 $fc
	ld l, a                                          ; $65c9: $6f
	cp $9e                                           ; $65ca: $fe $9e
	jp $83db                                         ; $65cc: $c3 $db $83


	sbc l                                            ; $65cf: $9d
	jp $dabc                                         ; $65d0: $c3 $bc $da


	db $fc                                           ; $65d3: $fc
	sbc [hl]                                         ; $65d4: $9e
	and $db                                          ; $65d5: $e6 $db
	ldh [c], a                                       ; $65d7: $e2
	sbc l                                            ; $65d8: $9d
	pop af                                           ; $65d9: $f1
	add hl, de                                       ; $65da: $19
	db $db                                           ; $65db: $db
	dec e                                            ; $65dc: $1d
	sbc [hl]                                         ; $65dd: $9e
	rrca                                             ; $65de: $0f
	ld sp, hl                                        ; $65df: $f9
	reti                                             ; $65e0: $d9


	rst $38                                          ; $65e1: $ff
	ld a, [$019e]                                    ; $65e2: $fa $9e $01
	reti                                             ; $65e5: $d9


	rst $38                                          ; $65e6: $ff
	db $dd                                           ; $65e7: $dd
	ld bc, $3f9b                                     ; $65e8: $01 $9b $3f
	add hl, sp                                       ; $65eb: $39
	ld a, c                                          ; $65ec: $79
	cp c                                             ; $65ed: $b9
	call c, $deff                                    ; $65ee: $dc $ff $de
	ldh [$de], a                                     ; $65f1: $e0 $de
	ld h, $9e                                        ; $65f3: $26 $9e
	and a                                            ; $65f5: $a7
	reti                                             ; $65f6: $d9


	rst $38                                          ; $65f7: $ff
	sbc [hl]                                         ; $65f8: $9e
	db $fc                                           ; $65f9: $fc
	cp $96                                           ; $65fa: $fe $96
	cp h                                             ; $65fc: $bc
	xor h                                            ; $65fd: $ac
	xor l                                            ; $65fe: $ad
	xor l                                            ; $65ff: $ad
	or l                                             ; $6600: $b5
	or c                                             ; $6601: $b1
	or c                                             ; $6602: $b1
	sub c                                            ; $6603: $91
	set 3, l                                         ; $6604: $cb $dd
	db $db                                           ; $6606: $db
	rst SubAFromDE                                          ; $6607: $df
	rst SubAFromDE                                          ; $6608: $df
	sub [hl]                                         ; $6609: $96
	rst $38                                          ; $660a: $ff
	ld hl, sp-$08                                    ; $660b: $f8 $f8
	ldh a, [$f0]                                     ; $660d: $f0 $f0
	ldh [$80], a                                     ; $660f: $e0 $80
	nop                                              ; $6611: $00
	add b                                            ; $6612: $80
	sbc $f0                                          ; $6613: $de $f0
	sub a                                            ; $6615: $97
	ldh [$c0], a                                     ; $6616: $e0 $c0
	ret nz                                           ; $6618: $c0

	add b                                            ; $6619: $80
	nop                                              ; $661a: $00
	rrca                                             ; $661b: $0f
	rlca                                             ; $661c: $07
	inc bc                                           ; $661d: $03
	sbc $01                                          ; $661e: $de $01
	rst SubAFromDE                                          ; $6620: $df
	inc bc                                           ; $6621: $03
	ld sp, hl                                        ; $6622: $f9
	sbc l                                            ; $6623: $9d
	ld [$def2], a                                    ; $6624: $ea $f2 $de
	di                                               ; $6627: $f3
	sbc h                                            ; $6628: $9c
	ei                                               ; $6629: $fb
	db $eb                                           ; $662a: $eb
	or $da                                           ; $662b: $f6 $da
	rra                                              ; $662d: $1f
	adc h                                            ; $662e: $8c
	rrca                                             ; $662f: $0f
	db $d3                                           ; $6630: $d3
	or c                                             ; $6631: $b1
	add hl, de                                       ; $6632: $19
	add a                                            ; $6633: $87
	sub e                                            ; $6634: $93
	inc bc                                           ; $6635: $03
	ld c, a                                          ; $6636: $4f
	add a                                            ; $6637: $87
	sbc c                                            ; $6638: $99
	sbc e                                            ; $6639: $9b
	or e                                             ; $663a: $b3
	inc sp                                           ; $663b: $33
	daa                                              ; $663c: $27
	rlca                                             ; $663d: $07
	daa                                              ; $663e: $27
	ld l, a                                          ; $663f: $6f
	rra                                              ; $6640: $1f
	rra                                              ; $6641: $1f
	call c, Call_022_6b3f                            ; $6642: $dc $3f $6b
	ld a, b                                          ; $6645: $78
	sub l                                            ; $6646: $95
	rlca                                             ; $6647: $07
	ld a, b                                          ; $6648: $78
	db $fc                                           ; $6649: $fc
	db $f4                                           ; $664a: $f4
	ldh a, [c]                                       ; $664b: $f2
	jp nc, $9292                                     ; $664c: $d2 $92 $92

	pop af                                           ; $664f: $f1
	ld sp, hl                                        ; $6650: $f9
	ld a, e                                          ; $6651: $7b
	jp hl                                            ; $6652: $e9


	sbc [hl]                                         ; $6653: $9e
	ld a, a                                          ; $6654: $7f
	sbc $ff                                          ; $6655: $de $ff
	sub c                                            ; $6657: $91
	rra                                              ; $6658: $1f
	xor a                                            ; $6659: $af
	cp a                                             ; $665a: $bf
	ld a, a                                          ; $665b: $7f
	ld a, e                                          ; $665c: $7b
	ld e, a                                          ; $665d: $5f
	ld e, l                                          ; $665e: $5d
	dec sp                                           ; $665f: $3b
	dec sp                                           ; $6660: $3b
	reti                                             ; $6661: $d9


	ret                                              ; $6662: $c9


	ret z                                            ; $6663: $c8

	call nz, $dee4                                   ; $6664: $c4 $e4 $de
	and $ff                                          ; $6667: $e6 $ff
	sbc $80                                          ; $6669: $de $80
	sbc $c0                                          ; $666b: $de $c0
	call c, $deff                                    ; $666d: $dc $ff $de
	ld a, a                                          ; $6670: $7f
	dec hl                                           ; $6671: $2b
	jr nc, @+$25                                     ; $6672: $30 $23

	ldh a, [$0c]                                     ; $6674: $f0 $0c
	nop                                              ; $6676: $00
	rst SubAFromDE                                          ; $6677: $df
	ld h, [hl]                                       ; $6678: $66
	sbc l                                            ; $6679: $9d
	nop                                              ; $667a: $00
	dec b                                            ; $667b: $05
	db $dd                                           ; $667c: $dd
	ld [hl+], a                                      ; $667d: $22
	sbc l                                            ; $667e: $9d
	ld [hl], b                                       ; $667f: $70
	nop                                              ; $6680: $00
	cp d                                             ; $6681: $ba
	add b                                            ; $6682: $80
	sbc $ff                                          ; $6683: $de $ff
	sbc d                                            ; $6685: $9a
	cp a                                             ; $6686: $bf
	rst $38                                          ; $6687: $ff
	cp a                                             ; $6688: $bf
	db $fd                                           ; $6689: $fd
	cp l                                             ; $668a: $bd
	reti                                             ; $668b: $d9


	rst $38                                          ; $668c: $ff
	sbc l                                            ; $668d: $9d
	rst AddAOntoHL                                          ; $668e: $ef
	db $d3                                           ; $668f: $d3
	ld l, a                                          ; $6690: $6f
	cp $9d                                           ; $6691: $fe $9d
	ld hl, sp-$04                                    ; $6693: $f8 $fc
	ld l, a                                          ; $6695: $6f
	cp $dc                                           ; $6696: $fe $dc
	ld b, e                                          ; $6698: $43
	sbc $c3                                          ; $6699: $de $c3
	reti                                             ; $669b: $d9


	cp h                                             ; $669c: $bc
	sbc h                                            ; $669d: $9c
	push bc                                          ; $669e: $c5
	call nz, $dcc4                                   ; $669f: $c4 $c4 $dc
	and $de                                          ; $66a2: $e6 $de
	dec sp                                           ; $66a4: $3b
	call c, $f919                                    ; $66a5: $dc $19 $f9
	reti                                             ; $66a8: $d9


	rst $38                                          ; $66a9: $ff
	cpl                                              ; $66aa: $2f
	ldh a, [$df]                                     ; $66ab: $f0 $df
	ld bc, $ffd9                                     ; $66ad: $01 $d9 $ff
	sub h                                            ; $66b0: $94
	or a                                             ; $66b1: $b7
	rst FarCall                                          ; $66b2: $f7

Call_022_66b3:
	rst SubAFromDE                                          ; $66b3: $df
	db $db                                           ; $66b4: $db
	db $db                                           ; $66b5: $db
	db $eb                                           ; $66b6: $eb
	cpl                                              ; $66b7: $2f
	daa                                              ; $66b8: $27
	jp c, $b29a                                      ; $66b9: $da $9a $b2

	sbc $b6                                          ; $66bc: $de $b6
	sub d                                            ; $66be: $92
	or $fe                                           ; $66bf: $f6 $fe
	jr z, jr_022_672b                                ; $66c1: $28 $68

	ld b, h                                          ; $66c3: $44
	ld h, [hl]                                       ; $66c4: $66
	ld h, [hl]                                       ; $66c5: $66
	halt                                             ; $66c6: $76
	ld a, [hl]                                       ; $66c7: $7e
	cp [hl]                                          ; $66c8: $be
	push hl                                          ; $66c9: $e5
	push hl                                          ; $66ca: $e5
	jp hl                                            ; $66cb: $e9


	call c, $93c9                                    ; $66cc: $dc $c9 $93
	ld e, a                                          ; $66cf: $5f
	ld d, a                                          ; $66d0: $57
	sub [hl]                                         ; $66d1: $96
	cp e                                             ; $66d2: $bb
	xor l                                            ; $66d3: $ad
	xor h                                            ; $66d4: $ac
	xor b                                            ; $66d5: $a8
	or b                                             ; $66d6: $b0
	cp $fd                                           ; $66d7: $fe $fd
	db $fd                                           ; $66d9: $fd
	db $fc                                           ; $66da: $fc
	db $dd                                           ; $66db: $dd
	ld hl, sp-$7c                                    ; $66dc: $f8 $84
	ld [$c080], sp                                   ; $66de: $08 $80 $c0
	ld h, e                                          ; $66e1: $63
	cp a                                             ; $66e2: $bf
	ld c, a                                          ; $66e3: $4f
	scf                                              ; $66e4: $37
	dec e                                            ; $66e5: $1d
	nop                                              ; $66e6: $00
	nop                                              ; $66e7: $00
	add b                                            ; $66e8: $80
	ret nz                                           ; $66e9: $c0

	ld a, a                                          ; $66ea: $7f
	ccf                                              ; $66eb: $3f
	rrca                                             ; $66ec: $0f
	inc bc                                           ; $66ed: $03
	rrca                                             ; $66ee: $0f
	rra                                              ; $66ef: $1f
	ld h, a                                          ; $66f0: $67
	ld a, a                                          ; $66f1: $7f
	cp $fe                                           ; $66f2: $fe $fe
	ld a, [$00ea]                                    ; $66f4: $fa $ea $00
	ld bc, $dc1f                                     ; $66f7: $01 $1f $dc
	rst $38                                          ; $66fa: $ff
	rst SubAFromDE                                          ; $66fb: $df
	ldh a, [c]                                       ; $66fc: $f2
	sbc b                                            ; $66fd: $98
	ldh [c], a                                       ; $66fe: $e2
	db $f4                                           ; $66ff: $f4
	call nc, $bffb                                   ; $6700: $d4 $fb $bf
	bit 7, a                                         ; $6703: $cb $7f
	ld a, e                                          ; $6705: $7b
	ld b, l                                          ; $6706: $45
	adc [hl]                                         ; $6707: $8e
	rst AddAOntoHL                                          ; $6708: $ef
	call $99c9                                       ; $6709: $cd $c9 $99
	db $10                                           ; $670c: $10
	ld hl, $8743                                     ; $670d: $21 $43 $87
	adc a                                            ; $6710: $8f
	adc a                                            ; $6711: $8f
	rrca                                             ; $6712: $0f
	rra                                              ; $6713: $1f
	ldh a, [$e0]                                     ; $6714: $f0 $e0
	ret nz                                           ; $6716: $c0

	add b                                            ; $6717: $80
	add b                                            ; $6718: $80
	cp $de                                           ; $6719: $fe $de
	cp $df                                           ; $671b: $fe $df
	rst $38                                          ; $671d: $ff
	ld a, a                                          ; $671e: $7f
	or l                                             ; $671f: $b5
	sbc d                                            ; $6720: $9a
	db $fc                                           ; $6721: $fc
	rlca                                             ; $6722: $07
	dec bc                                           ; $6723: $0b
	inc bc                                           ; $6724: $03
	inc bc                                           ; $6725: $03
	sbc $07                                          ; $6726: $de $07
	sbc [hl]                                         ; $6728: $9e
	rrca                                             ; $6729: $0f
	ld [hl], e                                       ; $672a: $73

jr_022_672b:
	ldh a, [$de]                                     ; $672b: $f0 $de
	rst $38                                          ; $672d: $ff
	rst SubAFromDE                                          ; $672e: $df
	ld c, e                                          ; $672f: $4b
	sbc c                                            ; $6730: $99
	dec hl                                           ; $6731: $2b
	dec h                                            ; $6732: $25
	dec h                                            ; $6733: $25
	inc de                                           ; $6734: $13
	sub e                                            ; $6735: $93
	sub c                                            ; $6736: $91
	inc bc                                           ; $6737: $03
	ld b, b                                          ; $6738: $40
	dec bc                                           ; $6739: $0b
	ldh a, [$0d]                                     ; $673a: $f0 $0d
	nop                                              ; $673c: $00
	rst SubAFromDE                                          ; $673d: $df
	ld h, [hl]                                       ; $673e: $66
	sbc l                                            ; $673f: $9d
	nop                                              ; $6740: $00
	ld [bc], a                                       ; $6741: $02
	sbc $22                                          ; $6742: $de $22
	sbc h                                            ; $6744: $9c
	daa                                              ; $6745: $27
	nop                                              ; $6746: $00
	nop                                              ; $6747: $00
	or a                                             ; $6748: $b7
	add b                                            ; $6749: $80
	db $dd                                           ; $674a: $dd
	and $9e                                          ; $674b: $e6 $9e
	xor $de                                          ; $674d: $ee $de
	cp $d9                                           ; $674f: $fe $d9
	rst $38                                          ; $6751: $ff
	sbc [hl]                                         ; $6752: $9e
	ld [hl], a                                       ; $6753: $77
	db $dd                                           ; $6754: $dd
	rst SubAFromBC                                          ; $6755: $e7
	sbc h                                            ; $6756: $9c
	rst FarCall                                          ; $6757: $f7
	rst SubAFromBC                                          ; $6758: $e7
	db $d3                                           ; $6759: $d3
	jp c, $9bf8                                      ; $675a: $da $f8 $9b

	db $fc                                           ; $675d: $fc
	db $eb                                           ; $675e: $eb
	ld a, e                                          ; $675f: $7b
	ld [hl], e                                       ; $6760: $73
	db $dd                                           ; $6761: $dd
	ld h, e                                          ; $6762: $63
	sbc l                                            ; $6763: $9d
	ld b, e                                          ; $6764: $43
	inc e                                            ; $6765: $1c

Call_022_6766:
	db $db                                           ; $6766: $db
	sbc h                                            ; $6767: $9c
	sbc [hl]                                         ; $6768: $9e
	cp h                                             ; $6769: $bc
	db $dd                                           ; $676a: $dd
	rst JumpTable                                          ; $676b: $c7
	db $dd                                           ; $676c: $dd
	push bc                                          ; $676d: $c5
	reti                                             ; $676e: $d9


	dec sp                                           ; $676f: $3b
	ld sp, hl                                        ; $6770: $f9
	reti                                             ; $6771: $d9


	rst $38                                          ; $6772: $ff
	rlca                                             ; $6773: $07
	ldh a, [$9a]                                     ; $6774: $f0 $9a
	rla                                              ; $6776: $17
	ld [hl], $26                                     ; $6777: $36 $26
	cpl                                              ; $6779: $2f
	ld l, a                                          ; $677a: $6f
	sbc $7f                                          ; $677b: $de $7f
	add a                                            ; $677d: $87
	ldh a, [c]                                       ; $677e: $f2
	ldh [c], a                                       ; $677f: $e2
	db $e4                                           ; $6780: $e4
	push hl                                          ; $6781: $e5
	push bc                                          ; $6782: $c5
	ret                                              ; $6783: $c9


	jp z, Jump_022_5dca                              ; $6784: $ca $ca $5d

	push de                                          ; $6787: $d5
	pop af                                           ; $6788: $f1
	ld [hl], e                                       ; $6789: $73
	and e                                            ; $678a: $a3
	and l                                            ; $678b: $a5
	and c                                            ; $678c: $a1
	inc h                                            ; $678d: $24
	ld [hl-], a                                      ; $678e: $32
	or d                                             ; $678f: $b2
	and [hl]                                         ; $6790: $a6
	and h                                            ; $6791: $a4
	ld h, h                                          ; $6792: $64
	ld h, b                                          ; $6793: $60
	ld h, b                                          ; $6794: $60
	pop hl                                           ; $6795: $e1
	sbc $40                                          ; $6796: $de $40
	sub l                                            ; $6798: $95
	ld [hl], b                                       ; $6799: $70
	ld h, b                                          ; $679a: $60
	ld d, b                                          ; $679b: $50
	ld e, h                                          ; $679c: $5c
	ld e, [hl]                                       ; $679d: $5e
	ret nz                                           ; $679e: $c0

	ret nz                                           ; $679f: $c0

	ldh [$e0], a                                     ; $67a0: $e0 $e0
	ldh a, [$7b]                                     ; $67a2: $f0 $7b
	add b                                            ; $67a4: $80
	rst $38                                          ; $67a5: $ff
	sub e                                            ; $67a6: $93
	inc e                                            ; $67a7: $1c
	rra                                              ; $67a8: $1f
	rra                                              ; $67a9: $1f
	ld [$1c00], sp                                   ; $67aa: $08 $00 $1c
	nop                                              ; $67ad: $00
	jr jr_022_67c9                                   ; $67ae: $18 $19

	rra                                              ; $67b0: $1f
	ld c, $0c                                        ; $67b1: $0e $0c
	ld a, [$019c]                                    ; $67b3: $fa $9c $01
	inc bc                                           ; $67b6: $03
	rlca                                             ; $67b7: $07
	cp $9e                                           ; $67b8: $fe $9e
	add b                                            ; $67ba: $80
	db $fd                                           ; $67bb: $fd
	add b                                            ; $67bc: $80
	rlca                                             ; $67bd: $07
	ld a, $7f                                        ; $67be: $3e $7f
	ld a, l                                          ; $67c0: $7d
	ei                                               ; $67c1: $fb
	rst FarCall                                          ; $67c2: $f7
	db $ed                                           ; $67c3: $ed
	reti                                             ; $67c4: $d9


	nop                                              ; $67c5: $00
	ld bc, $0201                                     ; $67c6: $01 $01 $02

jr_022_67c9:
	rlca                                             ; $67c9: $07
	rrca                                             ; $67ca: $0f
	rra                                              ; $67cb: $1f
	ccf                                              ; $67cc: $3f
	db $fc                                           ; $67cd: $fc
	rst AddAOntoHL                                          ; $67ce: $ef
	rst SubAFromHL                                          ; $67cf: $d7
	rst SubAFromBC                                          ; $67d0: $e7
	adc a                                            ; $67d1: $8f
	rrca                                             ; $67d2: $0f
	ld c, $18                                        ; $67d3: $0e $18
	xor h                                            ; $67d5: $ac
	call c, Call_022_7f3f                            ; $67d6: $dc $3f $7f
	rst $38                                          ; $67d9: $ff
	cp $fc                                           ; $67da: $fe $fc
	adc [hl]                                         ; $67dc: $8e
	ld hl, sp-$19                                    ; $67dd: $f8 $e7
	scf                                              ; $67df: $37
	sbc e                                            ; $67e0: $9b
	jp c, $3d9f                                      ; $67e1: $da $9f $3d

	ccf                                              ; $67e4: $3f
	ld a, a                                          ; $67e5: $7f
	ld a, c                                          ; $67e6: $79
	add hl, de                                       ; $67e7: $19
	dec c                                            ; $67e8: $0d
	adc l                                            ; $67e9: $8d
	inc c                                            ; $67ea: $0c
	ld d, $12                                        ; $67eb: $16 $12
	ld [hl+], a                                      ; $67ed: $22
	call c, $defc                                    ; $67ee: $dc $fc $de
	cp $97                                           ; $67f1: $fe $97
	ld b, a                                          ; $67f3: $47
	daa                                              ; $67f4: $27
	daa                                              ; $67f5: $27
	and a                                            ; $67f6: $a7
	sub a                                            ; $67f7: $97
	sub e                                            ; $67f8: $93
	sub e                                            ; $67f9: $93
	ld d, e                                          ; $67fa: $53
	inc bc                                           ; $67fb: $03
	ld b, b                                          ; $67fc: $40
	dec bc                                           ; $67fd: $0b
	ldh a, [$0d]                                     ; $67fe: $f0 $0d
	nop                                              ; $6800: $00
	rst SubAFromDE                                          ; $6801: $df
	ld h, [hl]                                       ; $6802: $66
	sbc l                                            ; $6803: $9d
	nop                                              ; $6804: $00
	rlca                                             ; $6805: $07
	sbc $22                                          ; $6806: $de $22
	sbc h                                            ; $6808: $9c
	daa                                              ; $6809: $27
	nop                                              ; $680a: $00
	nop                                              ; $680b: $00
	cp h                                             ; $680c: $bc
	nop                                              ; $680d: $00
	sbc h                                            ; $680e: $9c
	db $e4                                           ; $680f: $e4
	rst $38                                          ; $6810: $ff
	and $53                                          ; $6811: $e6 $53
	cp $85                                           ; $6813: $fe $85
	ld a, l                                          ; $6815: $7d
	cp $b5                                           ; $6816: $fe $b5
	ld a, [hl]                                       ; $6818: $7e
	or e                                             ; $6819: $b3
	ld a, h                                          ; $681a: $7c
	ld [hl], $f9                                     ; $681b: $36 $f9
	inc sp                                           ; $681d: $33
	db $fc                                           ; $681e: $fc
	ld sp, $71fe                                     ; $681f: $31 $fe $71
	cp $75                                           ; $6822: $fe $75
	ld a, [$fe0d]                                    ; $6824: $fa $0d $fe
	rrca                                             ; $6827: $0f
	db $fc                                           ; $6828: $fc
	ld l, a                                          ; $6829: $6f
	sbc h                                            ; $682a: $9c
	ld l, a                                          ; $682b: $6f
	sbc h                                            ; $682c: $9c
	db $eb                                           ; $682d: $eb
	inc e                                            ; $682e: $1c
	ld l, a                                          ; $682f: $6f
	cp $96                                           ; $6830: $fe $96
	rst FarCall                                          ; $6832: $f7
	add hl, sp                                       ; $6833: $39
	rst SubAFromHL                                          ; $6834: $d7
	add hl, sp                                       ; $6835: $39
	push de                                          ; $6836: $d5
	dec sp                                           ; $6837: $3b
	push de                                          ; $6838: $d5
	dec sp                                           ; $6839: $3b
	rst SubAFromHL                                          ; $683a: $d7
	ld [hl], e                                       ; $683b: $73
	cp $9b                                           ; $683c: $fe $9b
	rst JumpTable                                          ; $683e: $c7
	dec sp                                           ; $683f: $3b
	nop                                              ; $6840: $00
	rst $38                                          ; $6841: $ff
	inc bc                                           ; $6842: $03
	cp $53                                           ; $6843: $fe $53

jr_022_6845:
	cp $80                                           ; $6845: $fe $80
	rlca                                             ; $6847: $07
	db $fc                                           ; $6848: $fc
	rlca                                             ; $6849: $07
	db $fc                                           ; $684a: $fc
	dec c                                            ; $684b: $0d
	ld hl, sp+$0d                                    ; $684c: $f8 $0d
	ld hl, sp+$09                                    ; $684e: $f8 $09
	ld sp, hl                                        ; $6850: $f9
	dec bc                                           ; $6851: $0b
	ld sp, hl                                        ; $6852: $f9
	jr jr_022_6845                                   ; $6853: $18 $f0

	inc de                                           ; $6855: $13
	ldh a, [$ae]                                     ; $6856: $f0 $ae
	call c, $de8a                                    ; $6858: $dc $8a $de
	res 3, [hl]                                      ; $685b: $cb $9e
	adc e                                            ; $685d: $8b
	sbc a                                            ; $685e: $9f
	inc sp                                           ; $685f: $33
	sbc a                                            ; $6860: $9f
	cp d                                             ; $6861: $ba
	rla                                              ; $6862: $17
	ld a, $13                                        ; $6863: $3e $13
	ld a, [hl]                                       ; $6865: $7e
	sbc d                                            ; $6866: $9a
	inc de                                           ; $6867: $13
	add h                                            ; $6868: $84
	add a                                            ; $6869: $87
	add e                                            ; $686a: $83
	add e                                            ; $686b: $83
	reti                                             ; $686c: $d9


	add b                                            ; $686d: $80
	sbc [hl]                                         ; $686e: $9e
	ret nz                                           ; $686f: $c0

	ld a, e                                          ; $6870: $7b
	db $fd                                           ; $6871: $fd
	rst $38                                          ; $6872: $ff
	rst SubAFromDE                                          ; $6873: $df
	add b                                            ; $6874: $80
	ei                                               ; $6875: $fb
	sbc b                                            ; $6876: $98
	ld bc, $0000                                     ; $6877: $01 $00 $00
	inc bc                                           ; $687a: $03
	ld [bc], a                                       ; $687b: $02
	inc bc                                           ; $687c: $03
	ld a, [hl]                                       ; $687d: $7e
	ld l, a                                          ; $687e: $6f
	db $f4                                           ; $687f: $f4
	add b                                            ; $6880: $80
	ld bc, $0181                                     ; $6881: $01 $81 $01
	pop bc                                           ; $6884: $c1
	nop                                              ; $6885: $00
	ldh [rP1], a                                     ; $6886: $e0 $00
	ret nz                                           ; $6888: $c0

	nop                                              ; $6889: $00
	rlca                                             ; $688a: $07
	adc [hl]                                         ; $688b: $8e
	adc [hl]                                         ; $688c: $8e
	sbc a                                            ; $688d: $9f
	rst $38                                          ; $688e: $ff
	db $fd                                           ; $688f: $fd
	ld [hl], c                                       ; $6890: $71
	ld sp, hl                                        ; $6891: $f9
	ld h, e                                          ; $6892: $63
	ldh [$97], a                                     ; $6893: $e0 $97
	ldh a, [$7f]                                     ; $6895: $f0 $7f
	ld h, b                                          ; $6897: $60
	rrca                                             ; $6898: $0f
	nop                                              ; $6899: $00
	jp hl                                            ; $689a: $e9


	ccf                                              ; $689b: $3f
	ld [$ec3f], a                                    ; $689c: $ea $3f $ec
	ccf                                              ; $689f: $3f
	adc l                                            ; $68a0: $8d
	ei                                               ; $68a1: $fb
	rst SubAFromDE                                          ; $68a2: $df
	cp $1f                                           ; $68a3: $fe $1f
	cp $37                                           ; $68a5: $fe $37
	cp [hl]                                          ; $68a7: $be
	ld h, a                                          ; $68a8: $67
	rst $38                                          ; $68a9: $ff
	ld h, a                                          ; $68aa: $67
	dec l                                            ; $68ab: $2d
	or $6b                                           ; $68ac: $f6 $6b
	or $ab                                           ; $68ae: $f6 $ab
	or $2f                                           ; $68b0: $f6 $2f
	ldh a, [c]                                       ; $68b2: $f2
	ld [hl], a                                       ; $68b3: $77
	cp $99                                           ; $68b4: $fe $99
	ld l, $f3                                        ; $68b6: $2e $f3
	and l                                            ; $68b8: $a5
	ei                                               ; $68b9: $fb
	ld hl, sp-$71                                    ; $68ba: $f8 $8f
	ld h, e                                          ; $68bc: $63
	cp $9a                                           ; $68bd: $fe $9a
	ld c, a                                          ; $68bf: $4f
	ld hl, sp+$4f                                    ; $68c0: $f8 $4f
	db $fc                                           ; $68c2: $fc
	ld b, a                                          ; $68c3: $47
	inc bc                                           ; $68c4: $03
	ld c, [hl]                                       ; $68c5: $4e
	dec bc                                           ; $68c6: $0b
	cp $0d                                           ; $68c7: $fe $0d
	nop                                              ; $68c9: $00
	rst SubAFromDE                                          ; $68ca: $df
	ld h, [hl]                                       ; $68cb: $66
	sbc l                                            ; $68cc: $9d
	nop                                              ; $68cd: $00
	rlca                                             ; $68ce: $07
	sbc $22                                          ; $68cf: $de $22
	sbc h                                            ; $68d1: $9c
	daa                                              ; $68d2: $27
	nop                                              ; $68d3: $00
	nop                                              ; $68d4: $00
	pop bc                                           ; $68d5: $c1
	add b                                            ; $68d6: $80
	sbc $d0                                          ; $68d7: $de $d0
	sbc $d4                                          ; $68d9: $de $d4
	rst SubAFromDE                                          ; $68db: $df
	call nz, $efdb                                   ; $68dc: $c4 $db $ef
	rst SubAFromDE                                          ; $68df: $df
	rst $38                                          ; $68e0: $ff
	sub a                                            ; $68e1: $97
	ld h, e                                          ; $68e2: $63
	ld [hl], e                                       ; $68e3: $73
	ld [hl], c                                       ; $68e4: $71
	ldh a, [$e2]                                     ; $68e5: $f0 $e2
	pop hl                                           ; $68e7: $e1
	ld l, h                                          ; $68e8: $6c
	ld l, [hl]                                       ; $68e9: $6e
	db $dd                                           ; $68ea: $dd
	rst $38                                          ; $68eb: $ff

Call_022_68ec:
	add b                                            ; $68ec: $80
	db $fd                                           ; $68ed: $fd
	cp $ff                                           ; $68ee: $fe $ff
	db $fd                                           ; $68f0: $fd
	add hl, de                                       ; $68f1: $19
	dec de                                           ; $68f2: $1b
	ld a, $6e                                        ; $68f3: $3e $6e
	ld l, h                                          ; $68f5: $6c
	ld l, c                                          ; $68f6: $69
	ld c, c                                          ; $68f7: $49
	add hl, bc                                       ; $68f8: $09
	cp $fe                                           ; $68f9: $fe $fe
	rst SubAFromDE                                          ; $68fb: $df
	sbc a                                            ; $68fc: $9f
	sbc a                                            ; $68fd: $9f
	sbc [hl]                                         ; $68fe: $9e
	cp [hl]                                          ; $68ff: $be
	cp $e2                                           ; $6900: $fe $e2
	ldh a, [c]                                       ; $6902: $f2
	ld [hl], e                                       ; $6903: $73
	ld [hl], e                                       ; $6904: $73
	scf                                              ; $6905: $37
	scf                                              ; $6906: $37
	rst FarCall                                          ; $6907: $f7
	rst FarCall                                          ; $6908: $f7
	dec a                                            ; $6909: $3d
	dec a                                            ; $690a: $3d
	cp l                                             ; $690b: $bd
	sbc d                                            ; $690c: $9a
	cp l                                             ; $690d: $bd
	ld sp, hl                                        ; $690e: $f9
	ld sp, hl                                        ; $690f: $f9
	add hl, sp                                       ; $6910: $39
	add hl, sp                                       ; $6911: $39
	ld sp, hl                                        ; $6912: $f9
	reti                                             ; $6913: $d9


	rst $38                                          ; $6914: $ff
	rlca                                             ; $6915: $07
	ldh a, [$df]                                     ; $6916: $f0 $df
	ld bc, $03dc                                     ; $6918: $01 $dc $03
	sbc h                                            ; $691b: $9c
	rlca                                             ; $691c: $07
	rst $38                                          ; $691d: $ff
	rst $38                                          ; $691e: $ff
	call c, $96fe                                    ; $691f: $dc $fe $96
	db $fc                                           ; $6922: $fc
	ld [de], a                                       ; $6923: $12
	ld h, e                                          ; $6924: $63
	ld h, e                                          ; $6925: $63
	and e                                            ; $6926: $a3
	and a                                            ; $6927: $a7
	rst JumpTable                                          ; $6928: $c7
	add $6e                                          ; $6929: $c6 $6e
	sbc $3f                                          ; $692b: $de $3f
	rst SubAFromDE                                          ; $692d: $df
	ld a, [hl]                                       ; $692e: $7e
	rst SubAFromDE                                          ; $692f: $df
	ld a, h                                          ; $6930: $7c
	sub c                                            ; $6931: $91
	call c, $bbff                                    ; $6932: $dc $ff $bb
	rst $38                                          ; $6935: $ff
	call c, $e5f4                                    ; $6936: $dc $f4 $e5
	add a                                            ; $6939: $87
	add e                                            ; $693a: $83
	ret nz                                           ; $693b: $c0

	rst JumpTable                                          ; $693c: $c7
	rst $38                                          ; $693d: $ff
	cp h                                             ; $693e: $bc

Jump_022_693f:
	sub h                                            ; $693f: $94
	sbc $87                                          ; $6940: $de $87
	adc h                                            ; $6942: $8c
	rst AddAOntoHL                                          ; $6943: $ef
	rst SubAFromDE                                          ; $6944: $df
	rst $38                                          ; $6945: $ff
	ccf                                              ; $6946: $3f
	ld l, a                                          ; $6947: $6f
	rst AddAOntoHL                                          ; $6948: $ef
	and c                                            ; $6949: $a1
	add b                                            ; $694a: $80
	cp e                                             ; $694b: $bb
	ld sp, hl                                        ; $694c: $f9
	ld hl, sp+$78                                    ; $694d: $f8 $78
	db $fc                                           ; $694f: $fc
	ldh [$e0], a                                     ; $6950: $e0 $e0
	ret nz                                           ; $6952: $c0

	ld [hl], a                                       ; $6953: $77
	ld [hl], a                                       ; $6954: $77
	rst FarCall                                          ; $6955: $f7
	call c, $8fff                                    ; $6956: $dc $ff $8f
	db $dd                                           ; $6959: $dd
	call c, Call_022_4cdc                            ; $695a: $dc $dc $4c
	inc c                                            ; $695d: $0c
	inc b                                            ; $695e: $04
	ld bc, $1903                                     ; $695f: $01 $03 $19
	sbc c                                            ; $6962: $99
	sbc c                                            ; $6963: $99
	sbc l                                            ; $6964: $9d
	db $dd                                           ; $6965: $dd
	rst $38                                          ; $6966: $ff
	ei                                               ; $6967: $fb
	db $dd                                           ; $6968: $dd
	db $dd                                           ; $6969: $dd
	rst $38                                          ; $696a: $ff
	sbc c                                            ; $696b: $99
	ld [hl], a                                       ; $696c: $77
	ld [hl], e                                       ; $696d: $73
	db $fd                                           ; $696e: $fd
	rst $38                                          ; $696f: $ff
	adc $ce                                          ; $6970: $ce $ce
	sbc $8c                                          ; $6972: $de $8c
	sbc d                                            ; $6974: $9a
	ld c, b                                          ; $6975: $48
	ret z                                            ; $6976: $c8

	ret                                              ; $6977: $c9


	cp c                                             ; $6978: $b9
	cp c                                             ; $6979: $b9
	sbc $fb                                          ; $697a: $de $fb
	rst SubAFromDE                                          ; $697c: $df
	rst $38                                          ; $697d: $ff
	sbc [hl]                                         ; $697e: $9e
	ld a, a                                          ; $697f: $7f
	db $dd                                           ; $6980: $dd
	ld b, a                                          ; $6981: $47
	rst SubAFromDE                                          ; $6982: $df
	adc a                                            ; $6983: $8f
	sbc l                                            ; $6984: $9d
	sbc [hl]                                         ; $6985: $9e
	dec a                                            ; $6986: $3d
	db $db                                           ; $6987: $db
	db $fd                                           ; $6988: $fd
	sbc l                                            ; $6989: $9d
	push af                                          ; $698a: $f5
	or $d9                                           ; $698b: $f6 $d9
	ldh a, [$db]                                     ; $698d: $f0 $db
	rra                                              ; $698f: $1f
	rst SubAFromDE                                          ; $6990: $df
	sbc a                                            ; $6991: $9f
	inc bc                                           ; $6992: $03
	ld b, b                                          ; $6993: $40
	dec bc                                           ; $6994: $0b
	ldh a, [$0d]                                     ; $6995: $f0 $0d
	nop                                              ; $6997: $00
	rst SubAFromDE                                          ; $6998: $df
	ld h, [hl]                                       ; $6999: $66
	sbc l                                            ; $699a: $9d
	nop                                              ; $699b: $00
	rlca                                             ; $699c: $07
	sbc $22                                          ; $699d: $de $22
	sbc h                                            ; $699f: $9c
	daa                                              ; $69a0: $27
	nop                                              ; $69a1: $00
	nop                                              ; $69a2: $00
	call $de80                                       ; $69a3: $cd $80 $de
	or e                                             ; $69a6: $b3
	sbc l                                            ; $69a7: $9d
	or c                                             ; $69a8: $b1
	or b                                             ; $69a9: $b0
	sbc $d0                                          ; $69aa: $de $d0
	reti                                             ; $69ac: $d9


	rst AddAOntoHL                                          ; $69ad: $ef
	add b                                            ; $69ae: $80
	ld h, b                                          ; $69af: $60
	nop                                              ; $69b0: $00
	inc l                                            ; $69b1: $2c
	dec l                                            ; $69b2: $2d
	ld bc, $2221                                     ; $69b3: $01 $21 $22
	ld h, d                                          ; $69b6: $62
	rst $38                                          ; $69b7: $ff
	rst $38                                          ; $69b8: $ff
	di                                               ; $69b9: $f3
	ldh a, [c]                                       ; $69ba: $f2
	cp $fe                                           ; $69bb: $fe $fe
	rst $38                                          ; $69bd: $ff
	rst $38                                          ; $69be: $ff
	ld a, h                                          ; $69bf: $7c
	ld a, b                                          ; $69c0: $78
	halt                                             ; $69c1: $76
	xor $ea                                          ; $69c2: $ee $ea
	db $ed                                           ; $69c4: $ed
	ld h, c                                          ; $69c5: $61
	add hl, bc                                       ; $69c6: $09
	sbc e                                            ; $69c7: $9b
	sbc a                                            ; $69c8: $9f
	sbc c                                            ; $69c9: $99
	ld de, $1215                                     ; $69ca: $11 $15 $12
	sbc [hl]                                         ; $69cd: $9e
	sub [hl]                                         ; $69ce: $96
	cp $1a                                           ; $69cf: $fe $1a
	dec de                                           ; $69d1: $1b
	dec de                                           ; $69d2: $1b
	dec sp                                           ; $69d3: $3b
	scf                                              ; $69d4: $37
	add $c4                                          ; $69d5: $c6 $c4
	db $e3                                           ; $69d7: $e3
	call c, $dfff                                    ; $69d8: $dc $ff $df
	ccf                                              ; $69db: $3f
	sbc [hl]                                         ; $69dc: $9e
	dec a                                            ; $69dd: $3d
	sbc $38                                          ; $69de: $de $38

jr_022_69e0:
	sbc [hl]                                         ; $69e0: $9e
	jr jr_022_69e0                                   ; $69e1: $18 $fd

	rst SubAFromDE                                          ; $69e3: $df
	rst SubAFromDE                                          ; $69e4: $df
	db $db                                           ; $69e5: $db
	rst $38                                          ; $69e6: $ff
	ld sp, hl                                        ; $69e7: $f9
	reti                                             ; $69e8: $d9


	rst $38                                          ; $69e9: $ff
	sbc h                                            ; $69ea: $9c
	cp h                                             ; $69eb: $bc
	inc a                                            ; $69ec: $3c
	jr jr_022_6a62                                   ; $69ed: $18 $73

	ldh [$df], a                                     ; $69ef: $e0 $df
	db $e3                                           ; $69f1: $e3
	rst SubAFromDE                                          ; $69f2: $df
	rst FarCall                                          ; $69f3: $f7
	ld h, e                                          ; $69f4: $63
	ldh [$de], a                                     ; $69f5: $e0 $de
	ld bc, $ffd9                                     ; $69f7: $01 $d9 $ff
	sub [hl]                                         ; $69fa: $96
	jp c, $bed2                                      ; $69fb: $da $d2 $be

	xor [hl]                                         ; $69fe: $ae
	xor d                                            ; $69ff: $aa
	jr @-$6a                                         ; $6a00: $18 $94

	sub d                                            ; $6a02: $92
	sub c                                            ; $6a03: $91
	sbc $99                                          ; $6a04: $de $99
	adc e                                            ; $6a06: $8b
	sbc l                                            ; $6a07: $9d
	cp a                                             ; $6a08: $bf
	ccf                                              ; $6a09: $3f
	ccf                                              ; $6a0a: $3f
	rst SubAFromDE                                          ; $6a0b: $df
	sbc a                                            ; $6a0c: $9f
	sub l                                            ; $6a0d: $95
	or [hl]                                          ; $6a0e: $b6
	cp [hl]                                          ; $6a0f: $be
	cp e                                             ; $6a10: $bb
	xor a                                            ; $6a11: $af
	rst $38                                          ; $6a12: $ff
	or h                                             ; $6a13: $b4
	db $f4                                           ; $6a14: $f4
	cp $ff                                           ; $6a15: $fe $ff
	ei                                               ; $6a17: $fb
	rst AddAOntoHL                                          ; $6a18: $ef
	rst $38                                          ; $6a19: $ff
	ret                                              ; $6a1a: $c9


	sbc $57                                          ; $6a1b: $de $57
	sbc e                                            ; $6a1d: $9b
	ld d, l                                          ; $6a1e: $55
	ld b, l                                          ; $6a1f: $45
	ld b, l                                          ; $6a20: $45
	xor l                                            ; $6a21: $ad
	db $dd                                           ; $6a22: $dd
	db $ed                                           ; $6a23: $ed
	ld a, a                                          ; $6a24: $7f
	ldh a, [c]                                       ; $6a25: $f2
	sbc $ff                                          ; $6a26: $de $ff
	sbc h                                            ; $6a28: $9c
	ld l, d                                          ; $6a29: $6a
	ld a, [hl+]                                      ; $6a2a: $2a
	ld [hl+], a                                      ; $6a2b: $22
	sbc $62                                          ; $6a2c: $de $62
	sbc h                                            ; $6a2e: $9c
	ld h, a                                          ; $6a2f: $67
	ld [hl], a                                       ; $6a30: $77
	or a                                             ; $6a31: $b7
	ld [hl], e                                       ; $6a32: $73

jr_022_6a33:
	or d                                             ; $6a33: $b2
	sbc [hl]                                         ; $6a34: $9e
	db $fd                                           ; $6a35: $fd
	sbc $dd                                          ; $6a36: $de $dd
	rst SubAFromDE                                          ; $6a38: $df
	sbc l                                            ; $6a39: $9d
	sub [hl]                                         ; $6a3a: $96
	dec e                                            ; $6a3b: $1d
	dec d                                            ; $6a3c: $15
	dec e                                            ; $6a3d: $1d
	dec e                                            ; $6a3e: $1d
	inc sp                                           ; $6a3f: $33
	inc sp                                           ; $6a40: $33
	ld [hl], e                                       ; $6a41: $73
	ld [hl], e                                       ; $6a42: $73
	di                                               ; $6a43: $f3
	sbc $fb                                          ; $6a44: $de $fb
	sbc l                                            ; $6a46: $9d
	adc $c6                                          ; $6a47: $ce $c6
	sbc $d7                                          ; $6a49: $de $d7
	rst SubAFromDE                                          ; $6a4b: $df
	ld c, a                                          ; $6a4c: $4f
	sbc h                                            ; $6a4d: $9c
	ld c, [hl]                                       ; $6a4e: $4e
	ld sp, $de39                                     ; $6a4f: $31 $39 $de
	jr c, jr_022_6a33                                ; $6a52: $38 $df

	cp b                                             ; $6a54: $b8
	sbc l                                            ; $6a55: $9d
	cp c                                             ; $6a56: $b9
	rla                                              ; $6a57: $17
	sbc $0e                                          ; $6a58: $de $0e
	sbc d                                            ; $6a5a: $9a
	add hl, bc                                       ; $6a5b: $09
	ld b, l                                          ; $6a5c: $45
	ld b, a                                          ; $6a5d: $47
	ld b, a                                          ; $6a5e: $47
	ld a, [$fbde]                                    ; $6a5f: $fa $de $fb

jr_022_6a62:
	ld a, e                                          ; $6a62: $7b
	ret nc                                           ; $6a63: $d0

	sbc [hl]                                         ; $6a64: $9e
	db $fd                                           ; $6a65: $fd
	reti                                             ; $6a66: $d9


	ldh [$d9], a                                     ; $6a67: $e0 $d9
	ccf                                              ; $6a69: $3f
	ld b, a                                          ; $6a6a: $47
	ld d, b                                          ; $6a6b: $50
	inc bc                                           ; $6a6c: $03
	ldh a, [rWX]                                     ; $6a6d: $f0 $4b
	ldh a, [$0d]                                     ; $6a6f: $f0 $0d
	nop                                              ; $6a71: $00
	rst SubAFromDE                                          ; $6a72: $df
	ld h, [hl]                                       ; $6a73: $66
	sbc l                                            ; $6a74: $9d
	db $10                                           ; $6a75: $10
	ld de, $22de                                     ; $6a76: $11 $de $22
	sbc h                                            ; $6a79: $9c
	daa                                              ; $6a7a: $27
	nop                                              ; $6a7b: $00
	nop                                              ; $6a7c: $00
	ld hl, $df81                                     ; $6a7d: $21 $81 $df
	ld h, $df                                        ; $6a80: $26 $df
	inc b                                            ; $6a82: $04
	sbc $17                                          ; $6a83: $de $17
	sbc [hl]                                         ; $6a85: $9e
	or a                                             ; $6a86: $b7
	db $dd                                           ; $6a87: $dd
	rst $38                                          ; $6a88: $ff
	db $dd                                           ; $6a89: $dd
	rst AddAOntoHL                                          ; $6a8a: $ef
	add b                                            ; $6a8b: $80
	jr nz, @+$62                                     ; $6a8c: $20 $60

	ld l, h                                          ; $6a8e: $6c
	ld [hl], h                                       ; $6a8f: $74
	ld a, c                                          ; $6a90: $79
	ld h, e                                          ; $6a91: $63
	ld h, e                                          ; $6a92: $63
	ld h, a                                          ; $6a93: $67
	rst $38                                          ; $6a94: $ff
	rst $38                                          ; $6a95: $ff
	di                                               ; $6a96: $f3
	db $eb                                           ; $6a97: $eb
	and $fc                                          ; $6a98: $e6 $fc
	db $fc                                           ; $6a9a: $fc
	ld hl, sp+$1e                                    ; $6a9b: $f8 $1e
	inc e                                            ; $6a9d: $1c
	jr c, jr_022_6ae0                                ; $6a9e: $38 $40

	inc b                                            ; $6aa0: $04
	jr z, @+$6b                                      ; $6aa1: $28 $69

	ld a, h                                          ; $6aa3: $7c
	rst $38                                          ; $6aa4: $ff
	ei                                               ; $6aa5: $fb
	rst SubAFromDE                                          ; $6aa6: $df
	cp a                                             ; $6aa7: $bf
	ei                                               ; $6aa8: $fb
	rst SubAFromDE                                          ; $6aa9: $df
	sbc [hl]                                         ; $6aaa: $9e
	add [hl]                                         ; $6aab: $86
	sbc e                                            ; $6aac: $9b
	sub a                                            ; $6aad: $97
	adc e                                            ; $6aae: $8b
	or c                                             ; $6aaf: $b1
	and b                                            ; $6ab0: $a0
	add [hl]                                         ; $6ab1: $86
	rst JumpTable                                          ; $6ab2: $c7
	reti                                             ; $6ab3: $d9


	cp a                                             ; $6ab4: $bf
	ld a, a                                          ; $6ab5: $7f
	ld [hl], a                                       ; $6ab6: $77
	ld c, a                                          ; $6ab7: $4f
	ld e, a                                          ; $6ab8: $5f
	ld a, a                                          ; $6ab9: $7f
	ccf                                              ; $6aba: $3f
	ccf                                              ; $6abb: $3f
	ld a, a                                          ; $6abc: $7f
	ld a, [$77f7]                                    ; $6abd: $fa $f7 $77
	rrca                                             ; $6ac0: $0f
	ld c, $1f                                        ; $6ac1: $0e $1f
	dec sp                                           ; $6ac3: $3b
	dec sp                                           ; $6ac4: $3b
	call c, $83ff                                    ; $6ac5: $dc $ff $83
	di                                               ; $6ac8: $f3
	rst AddAOntoHL                                          ; $6ac9: $ef
	rst JumpTable                                          ; $6aca: $c7
	ld a, a                                          ; $6acb: $7f
	ld a, a                                          ; $6acc: $7f
	rst $38                                          ; $6acd: $ff
	rst $38                                          ; $6ace: $ff
	ld a, a                                          ; $6acf: $7f
	scf                                              ; $6ad0: $37
	ld [hl+], a                                      ; $6ad1: $22
	add b                                            ; $6ad2: $80
	ld sp, hl                                        ; $6ad3: $f9
	ldh a, [c]                                       ; $6ad4: $f2
	di                                               ; $6ad5: $f3
	db $e3                                           ; $6ad6: $e3
	db $e3                                           ; $6ad7: $e3
	rst AddAOntoHL                                          ; $6ad8: $ef
	rst SubAFromDE                                          ; $6ad9: $df
	rst $38                                          ; $6ada: $ff
	dec sp                                           ; $6adb: $3b
	add hl, sp                                       ; $6adc: $39
	jr c, jr_022_6b17                                ; $6add: $38 $38

	ld l, h                                          ; $6adf: $6c

jr_022_6ae0:
	call nz, $b0e4                                   ; $6ae0: $c4 $e4 $b0
	db $fd                                           ; $6ae3: $fd
	jp c, Jump_022_7fff                              ; $6ae4: $da $ff $7f

	cp l                                             ; $6ae7: $bd
	add h                                            ; $6ae8: $84
	adc $4e                                          ; $6ae9: $ce $4e
	ld l, $0c                                        ; $6aeb: $2e $0c
	ld b, $02                                        ; $6aed: $06 $02
	rst AddAOntoHL                                          ; $6aef: $ef
	rst $38                                          ; $6af0: $ff
	db $fd                                           ; $6af1: $fd
	ld sp, hl                                        ; $6af2: $f9
	pop af                                           ; $6af3: $f1
	di                                               ; $6af4: $f3
	ld sp, hl                                        ; $6af5: $f9
	db $fd                                           ; $6af6: $fd
	sbc $de                                          ; $6af7: $de $de
	inc e                                            ; $6af9: $1c
	dec a                                            ; $6afa: $3d
	add hl, sp                                       ; $6afb: $39
	ld a, c                                          ; $6afc: $79
	ld a, e                                          ; $6afd: $7b
	ld e, e                                          ; $6afe: $5b
	db $f4                                           ; $6aff: $f4
	db $f4                                           ; $6b00: $f4
	ld hl, sp-$18                                    ; $6b01: $f8 $e8
	add sp, -$22                                     ; $6b03: $e8 $de
	ret nc                                           ; $6b05: $d0

	add b                                            ; $6b06: $80
	db $eb                                           ; $6b07: $eb
	add [hl]                                         ; $6b08: $86
	rst SubAFromHL                                          ; $6b09: $d7
	call $2a0e                                       ; $6b0a: $cd $0e $2a
	adc h                                            ; $6b0d: $8c
	sbc $26                                          ; $6b0e: $de $26
	ld l, l                                          ; $6b10: $6d
	ld c, l                                          ; $6b11: $4d
	ld e, e                                          ; $6b12: $5b
	db $db                                           ; $6b13: $db
	sub [hl]                                         ; $6b14: $96
	or [hl]                                          ; $6b15: $b6
	or h                                             ; $6b16: $b4

jr_022_6b17:
	ld de, $10a2                                     ; $6b17: $11 $a2 $10
	rla                                              ; $6b1a: $17
	inc hl                                           ; $6b1b: $23
	xor a                                            ; $6b1c: $af

Jump_022_6b1d:
	cpl                                              ; $6b1d: $2f
	ld e, a                                          ; $6b1e: $5f
	call z, $3b99                                    ; $6b1f: $cc $99 $3b
	ld [hl], d                                       ; $6b22: $72
	halt                                             ; $6b23: $76
	ld h, h                                          ; $6b24: $64
	push hl                                          ; $6b25: $e5
	adc l                                            ; $6b26: $8d
	push hl                                          ; $6b27: $e5
	ld e, a                                          ; $6b28: $5f
	sbc [hl]                                         ; $6b29: $9e
	rst FarCall                                          ; $6b2a: $f7
	ld l, l                                          ; $6b2b: $6d
	cp l                                             ; $6b2c: $bd
	db $fd                                           ; $6b2d: $fd
	ld e, l                                          ; $6b2e: $5d
	ld l, c                                          ; $6b2f: $69
	and b                                            ; $6b30: $a0
	ld h, c                                          ; $6b31: $61
	ld c, c                                          ; $6b32: $49
	db $d3                                           ; $6b33: $d3
	db $d3                                           ; $6b34: $d3
	sub e                                            ; $6b35: $93
	or e                                             ; $6b36: $b3
	or a                                             ; $6b37: $b7
	rst $38                                          ; $6b38: $ff
	sbc $ee                                          ; $6b39: $de $ee
	rst SubAFromDE                                          ; $6b3b: $df
	call z, $dcdf                                    ; $6b3c: $cc $df $dc

Call_022_6b3f:
	sbc [hl]                                         ; $6b3f: $9e
	nop                                              ; $6b40: $00
	sbc $11                                          ; $6b41: $de $11
	db $dd                                           ; $6b43: $dd
	inc sp                                           ; $6b44: $33
	sbc e                                            ; $6b45: $9b
	db $e4                                           ; $6b46: $e4
	ldh a, [c]                                       ; $6b47: $f2
	ld sp, hl                                        ; $6b48: $f9
	ld hl, sp-$22                                    ; $6b49: $f8 $de
	db $ec                                           ; $6b4b: $ec
	sbc d                                            ; $6b4c: $9a
	adc $1c                                          ; $6b4d: $ce $1c
	ld c, $07                                        ; $6b4f: $0e $07
	rlca                                             ; $6b51: $07
	sbc $13                                          ; $6b52: $de $13
	adc d                                            ; $6b54: $8a
	ld sp, $5f77                                     ; $6b55: $31 $77 $5f
	dec a                                            ; $6b58: $3d
	xor e                                            ; $6b59: $ab
	ld e, a                                          ; $6b5a: $5f
	ld e, a                                          ; $6b5b: $5f
	ccf                                              ; $6b5c: $3f
	scf                                              ; $6b5d: $37
	ld c, h                                          ; $6b5e: $4c
	ld h, h                                          ; $6b5f: $64
	ld h, $b6                                        ; $6b60: $26 $b6
	jp nc, $f2d2                                     ; $6b62: $d2 $d2 $f2

	ld a, [$bf9f]                                    ; $6b65: $fa $9f $bf
	db $fc                                           ; $6b68: $fc
	ldh a, [$dd]                                     ; $6b69: $f0 $dd
	ret nz                                           ; $6b6b: $c0

	ld a, e                                          ; $6b6c: $7b
	ld e, d                                          ; $6b6d: $5a
	call c, $937f                                    ; $6b6e: $dc $7f $93
	add a                                            ; $6b71: $87
	rra                                              ; $6b72: $1f
	dec a                                            ; $6b73: $3d
	ld h, a                                          ; $6b74: $67
	rrca                                             ; $6b75: $0f
	ld c, $0c                                        ; $6b76: $0e $0c
	ld [$e1fb], sp                                   ; $6b78: $08 $fb $e1
	jp $dd9b                                         ; $6b7b: $c3 $9b $dd


	rst $38                                          ; $6b7e: $ff
	sbc d                                            ; $6b7f: $9a
	ld hl, sp-$04                                    ; $6b80: $f8 $fc
	sbc $9f                                          ; $6b82: $de $9f
	ld c, $fe                                        ; $6b84: $0e $fe
	sbc [hl]                                         ; $6b86: $9e
	rst FarCall                                          ; $6b87: $f7
	jp c, $95ff                                      ; $6b88: $da $ff $95

	ld a, $3c                                        ; $6b8b: $3e $3c
	ld a, h                                          ; $6b8d: $7c
	inc a                                            ; $6b8e: $3c
	db $10                                           ; $6b8f: $10
	stop                                             ; $6b90: $10 $00
	nop                                              ; $6b92: $00
	ei                                               ; $6b93: $fb
	ei                                               ; $6b94: $fb
	db $db                                           ; $6b95: $db
	rst $38                                          ; $6b96: $ff
	sbc h                                            ; $6b97: $9c
	rrca                                             ; $6b98: $0f
	rlca                                             ; $6b99: $07
	inc bc                                           ; $6b9a: $03
	db $fc                                           ; $6b9b: $fc
	reti                                             ; $6b9c: $d9


	rst $38                                          ; $6b9d: $ff
	dec c                                            ; $6b9e: $0d
	nop                                              ; $6b9f: $00
	rst SubAFromDE                                          ; $6ba0: $df
	ld h, [hl]                                       ; $6ba1: $66
	rst SubAFromDE                                          ; $6ba2: $df
	ld de, $7299                                     ; $6ba3: $11 $99 $72
	ld [hl+], a                                      ; $6ba6: $22
	inc h                                            ; $6ba7: $24
	ld b, a                                          ; $6ba8: $47
	ld de, $3511                                     ; $6ba9: $11 $11 $35
	add c                                            ; $6bac: $81
	rst SubAFromDE                                          ; $6bad: $df
	ld a, a                                          ; $6bae: $7f
	sbc [hl]                                         ; $6baf: $9e
	ld [hl], a                                       ; $6bb0: $77
	sbc $37                                          ; $6bb1: $de $37
	sbc e                                            ; $6bb3: $9b
	daa                                              ; $6bb4: $27
	ld h, $f7                                        ; $6bb5: $26 $f7
	rst FarCall                                          ; $6bb7: $f7
	db $db                                           ; $6bb8: $db
	rst $38                                          ; $6bb9: $ff
	sub a                                            ; $6bba: $97
	ld l, l                                          ; $6bbb: $6d
	ld h, l                                          ; $6bbc: $65
	ld b, b                                          ; $6bbd: $40
	ld b, b                                          ; $6bbe: $40
	ld e, b                                          ; $6bbf: $58
	add hl, de                                       ; $6bc0: $19
	inc bc                                           ; $6bc1: $03
	inc bc                                           ; $6bc2: $03
	db $dd                                           ; $6bc3: $dd
	rst $38                                          ; $6bc4: $ff
	add b                                            ; $6bc5: $80
	rst SubAFromBC                                          ; $6bc6: $e7
	and $fc                                          ; $6bc7: $e6 $fc
	db $fc                                           ; $6bc9: $fc
	sbc $e8                                          ; $6bca: $de $e8
	ld c, l                                          ; $6bcc: $4d
	add hl, bc                                       ; $6bcd: $09
	add sp, -$3a                                     ; $6bce: $e8 $c6
	and $8e                                          ; $6bd0: $e6 $8e
	rst $38                                          ; $6bd2: $ff
	rst $38                                          ; $6bd3: $ff
	cp $fe                                           ; $6bd4: $fe $fe
	rla                                              ; $6bd6: $17
	ccf                                              ; $6bd7: $3f
	rra                                              ; $6bd8: $1f
	ld a, a                                          ; $6bd9: $7f
	rst SubAFromDE                                          ; $6bda: $df
	cp a                                             ; $6bdb: $bf
	rst $38                                          ; $6bdc: $ff
	call $ad79                                       ; $6bdd: $cd $79 $ad
	cp a                                             ; $6be0: $bf
	ccf                                              ; $6be1: $3f
	rst $38                                          ; $6be2: $ff
	ld a, a                                          ; $6be3: $7f
	ld a, a                                          ; $6be4: $7f
	add d                                            ; $6be5: $82
	di                                               ; $6be6: $f3
	rst $38                                          ; $6be7: $ff
	rst SubAFromDE                                          ; $6be8: $df
	rst SubAFromDE                                          ; $6be9: $df
	rst $38                                          ; $6bea: $ff
	rst $38                                          ; $6beb: $ff
	ei                                               ; $6bec: $fb
	rst $38                                          ; $6bed: $ff
	rst $38                                          ; $6bee: $ff
	db $fd                                           ; $6bef: $fd
	rst JumpTable                                          ; $6bf0: $c7
	rst AddAOntoHL                                          ; $6bf1: $ef
	rst $38                                          ; $6bf2: $ff
	ld a, a                                          ; $6bf3: $7f
	ld c, a                                          ; $6bf4: $4f
	adc a                                            ; $6bf5: $8f
	adc a                                            ; $6bf6: $8f
	rra                                              ; $6bf7: $1f
	ccf                                              ; $6bf8: $3f
	rst $38                                          ; $6bf9: $ff
	rst $38                                          ; $6bfa: $ff
	jp $fbc3                                         ; $6bfb: $c3 $c3 $fb


	sbc [hl]                                         ; $6bfe: $9e
	rst $38                                          ; $6bff: $ff
	rst $38                                          ; $6c00: $ff
	db $eb                                           ; $6c01: $eb
	rst SubAFromBC                                          ; $6c02: $e7
	sbc $ff                                          ; $6c03: $de $ff
	sbc l                                            ; $6c05: $9d
	ld sp, hl                                        ; $6c06: $f9
	pop af                                           ; $6c07: $f1
	sbc $ff                                          ; $6c08: $de $ff
	sub l                                            ; $6c0a: $95
	ld a, a                                          ; $6c0b: $7f
	pop af                                           ; $6c0c: $f1
	ld b, e                                          ; $6c0d: $43
	rst SubAFromBC                                          ; $6c0e: $e7
	rst $38                                          ; $6c0f: $ff
	xor a                                            ; $6c10: $af
	sbc a                                            ; $6c11: $9f
	sbc a                                            ; $6c12: $9f
	adc a                                            ; $6c13: $8f
	cp a                                             ; $6c14: $bf
	ld a, e                                          ; $6c15: $7b
	cp a                                             ; $6c16: $bf
	rst SubAFromDE                                          ; $6c17: $df
	ld hl, sp-$7a                                    ; $6c18: $f8 $86
	db $fc                                           ; $6c1a: $fc
	rst SubAFromDE                                          ; $6c1b: $df
	rst SubAFromDE                                          ; $6c1c: $df
	cp $ce                                           ; $6c1d: $fe $ce
	sbc [hl]                                         ; $6c1f: $9e
	sbc [hl]                                         ; $6c20: $9e
	cp a                                             ; $6c21: $bf
	cp a                                             ; $6c22: $bf
	rst SubAFromBC                                          ; $6c23: $e7
	rst AddAOntoHL                                          ; $6c24: $ef
	ld a, a                                          ; $6c25: $7f
	ld a, c                                          ; $6c26: $79
	pop af                                           ; $6c27: $f1
	ld [hl], c                                       ; $6c28: $71
	ld b, c                                          ; $6c29: $41
	ld b, a                                          ; $6c2a: $47
	adc $fd                                          ; $6c2b: $ce $fd
	rst $38                                          ; $6c2d: $ff
	rst AddAOntoHL                                          ; $6c2e: $ef
	rst SubAFromBC                                          ; $6c2f: $e7
	rst JumpTable                                          ; $6c30: $c7
	ld a, a                                          ; $6c31: $7f
	xor a                                            ; $6c32: $af
	sbc $ff                                          ; $6c33: $de $ff
	add b                                            ; $6c35: $80
	db $fc                                           ; $6c36: $fc
	rst $38                                          ; $6c37: $ff
	db $fd                                           ; $6c38: $fd
	ld sp, hl                                        ; $6c39: $f9
	ld a, [$feff]                                    ; $6c3a: $fa $ff $fe
	db $fd                                           ; $6c3d: $fd
	adc [hl]                                         ; $6c3e: $8e
	ld a, a                                          ; $6c3f: $7f
	rst SubAFromHL                                          ; $6c40: $d7
	xor $5d                                          ; $6c41: $ee $5d
	adc c                                            ; $6c43: $89
	ld [de], a                                       ; $6c44: $12
	db $fd                                           ; $6c45: $fd
	ld a, a                                          ; $6c46: $7f
	add b                                            ; $6c47: $80
	db $ec                                           ; $6c48: $ec
	add hl, de                                       ; $6c49: $19
	inc sp                                           ; $6c4a: $33
	ld bc, $df3e                                     ; $6c4b: $01 $3e $df
	ld a, a                                          ; $6c4e: $7f
	rst $38                                          ; $6c4f: $ff
	xor [hl]                                         ; $6c50: $ae
	ld e, l                                          ; $6c51: $5d
	cp e                                             ; $6c52: $bb
	ld bc, $973f                                     ; $6c53: $01 $3f $97
	ldh [$80], a                                     ; $6c56: $e0 $80
	nop                                              ; $6c58: $00
	ld d, c                                          ; $6c59: $51
	and d                                            ; $6c5a: $a2
	ld b, h                                          ; $6c5b: $44
	rst $38                                          ; $6c5c: $ff
	cp $dd                                           ; $6c5d: $fe $dd
	rst $38                                          ; $6c5f: $ff
	rst SubAFromDE                                          ; $6c60: $df
	rst AddAOntoHL                                          ; $6c61: $ef
	sbc l                                            ; $6c62: $9d
	rst $38                                          ; $6c63: $ff
	ld bc, $dffd                                     ; $6c64: $01 $fd $df
	db $10                                           ; $6c67: $10
	sbc d                                            ; $6c68: $9a
	nop                                              ; $6c69: $00
	ldh [$9c], a                                     ; $6c6a: $e0 $9c
	di                                               ; $6c6c: $f3
	db $fc                                           ; $6c6d: $fc
	sbc $ff                                          ; $6c6e: $de $ff
	ld a, a                                          ; $6c70: $7f
	ld hl, sp-$64                                    ; $6c71: $f8 $9c
	ld a, h                                          ; $6c73: $7c
	rrca                                             ; $6c74: $0f
	inc bc                                           ; $6c75: $03
	cp $8d                                           ; $6c76: $fe $8d
	ld a, a                                          ; $6c78: $7f
	rra                                              ; $6c79: $1f
	rrca                                             ; $6c7a: $0f
	rlca                                             ; $6c7b: $07
	add e                                            ; $6c7c: $83
	ld h, c                                          ; $6c7d: $61
	sub c                                            ; $6c7e: $91
	ret z                                            ; $6c7f: $c8

	ld h, c                                          ; $6c80: $61
	db $10                                           ; $6c81: $10
	ld [$8204], sp                                   ; $6c82: $08 $04 $82
	pop hl                                           ; $6c85: $e1

jr_022_6c86:
	ld [hl], c                                       ; $6c86: $71
	jr c, jr_022_6c86                                ; $6c87: $38 $fd

	db $fd                                           ; $6c89: $fd
	ld l, a                                          ; $6c8a: $6f
	adc $80                                          ; $6c8b: $ce $80
	rra                                              ; $6c8d: $1f
	adc a                                            ; $6c8e: $8f
	ld b, a                                          ; $6c8f: $47
	inc hl                                           ; $6c90: $23
	inc de                                           ; $6c91: $13
	ld de, $8889                                     ; $6c92: $11 $89 $88
	rst $38                                          ; $6c95: $ff
	cp a                                             ; $6c96: $bf
	rst FarCall                                          ; $6c97: $f7
	ld a, [hl]                                       ; $6c98: $7e
	cp [hl]                                          ; $6c99: $be
	cp $1e                                           ; $6c9a: $fe $1e
	adc a                                            ; $6c9c: $8f
	ret nz                                           ; $6c9d: $c0

	call c, $e7fe                                    ; $6c9e: $dc $fe $e7
	rst AddAOntoHL                                          ; $6ca1: $ef
	ld sp, hl                                        ; $6ca2: $f9
	db $fd                                           ; $6ca3: $fd
	db $fc                                           ; $6ca4: $fc
	rst $38                                          ; $6ca5: $ff
	rst SubAFromBC                                          ; $6ca6: $e7
	rst $38                                          ; $6ca7: $ff
	rst GetHLinHL                                          ; $6ca8: $cf
	rst $38                                          ; $6ca9: $ff
	cp [hl]                                          ; $6caa: $be
	rla                                              ; $6cab: $17
	sbc c                                            ; $6cac: $99
	add a                                            ; $6cad: $87
	ld h, a                                          ; $6cae: $67
	ld a, h                                          ; $6caf: $7c
	ldh a, [$f7]                                     ; $6cb0: $f0 $f7
	jp $317b                                         ; $6cb2: $c3 $7b $31


	ld a, e                                          ; $6cb5: $7b
	jr jr_022_6d37                                   ; $6cb6: $18 $7f

	ld b, a                                          ; $6cb8: $47
	adc d                                            ; $6cb9: $8a
	ld a, h                                          ; $6cba: $7c
	cp $fc                                           ; $6cbb: $fe $fc
	ccf                                              ; $6cbd: $3f
	ccf                                              ; $6cbe: $3f
	ld a, a                                          ; $6cbf: $7f
	rst $38                                          ; $6cc0: $ff
	rst GetHLinHL                                          ; $6cc1: $cf
	add e                                            ; $6cc2: $83
	add e                                            ; $6cc3: $83
	jp $fcfd                                         ; $6cc4: $c3 $fd $fc


	ld a, a                                          ; $6cc7: $7f
	ccf                                              ; $6cc8: $3f
	rst $38                                          ; $6cc9: $ff
	di                                               ; $6cca: $f3
	ld sp, hl                                        ; $6ccb: $f9
	ld a, h                                          ; $6ccc: $7c
	ld [bc], a                                       ; $6ccd: $02
	cp a                                             ; $6cce: $bf
	ld [hl], a                                       ; $6ccf: $77
	adc c                                            ; $6cd0: $89
	sub l                                            ; $6cd1: $95
	rst JumpTable                                          ; $6cd2: $c7
	db $e3                                           ; $6cd3: $e3
	db $e3                                           ; $6cd4: $e3
	rst FarCall                                          ; $6cd5: $f7
	rst $38                                          ; $6cd6: $ff
	ei                                               ; $6cd7: $fb
	ld hl, sp-$04                                    ; $6cd8: $f8 $fc
	inc a                                            ; $6cda: $3c
	ld c, $7b                                        ; $6cdb: $0e $7b
	dec d                                            ; $6cdd: $15
	call c, $0dff                                    ; $6cde: $dc $ff $0d
	nop                                              ; $6ce1: $00
	rst SubAFromDE                                          ; $6ce2: $df
	ld h, [hl]                                       ; $6ce3: $66
	rst SubAFromDE                                          ; $6ce4: $df
	ld de, $7499                                     ; $6ce5: $11 $99 $74
	ld b, d                                          ; $6ce8: $42
	ld b, h                                          ; $6ce9: $44
	ld [hl], c                                       ; $6cea: $71
	ld de, $1b11                                     ; $6ceb: $11 $11 $1b
	add c                                            ; $6cee: $81
	sbc [hl]                                         ; $6cef: $9e
	rst FarCall                                          ; $6cf0: $f7
	sbc $ff                                          ; $6cf1: $de $ff
	sbc e                                            ; $6cf3: $9b
	ld [hl], a                                       ; $6cf4: $77
	ld a, a                                          ; $6cf5: $7f
	ld a, a                                          ; $6cf6: $7f
	ld [hl], a                                       ; $6cf7: $77
	reti                                             ; $6cf8: $d9


	rst $38                                          ; $6cf9: $ff
	sub a                                            ; $6cfa: $97
	ccf                                              ; $6cfb: $3f
	rst SubAFromBC                                          ; $6cfc: $e7
	rst JumpTable                                          ; $6cfd: $c7
	pop bc                                           ; $6cfe: $c1
	sub e                                            ; $6cff: $93
	nop                                              ; $6d00: $00
	inc b                                            ; $6d01: $04
	inc l                                            ; $6d02: $2c
	ret c                                            ; $6d03: $d8

	rst $38                                          ; $6d04: $ff
	sbc b                                            ; $6d05: $98
	ei                                               ; $6d06: $fb
	rst AddAOntoHL                                          ; $6d07: $ef
	inc hl                                           ; $6d08: $23
	and e                                            ; $6d09: $a3
	xor l                                            ; $6d0a: $ad
	xor a                                            ; $6d0b: $af
	rst $38                                          ; $6d0c: $ff
	sbc $fe                                          ; $6d0d: $de $fe
	sbc [hl]                                         ; $6d0f: $9e
	rst $38                                          ; $6d10: $ff
	db $dd                                           ; $6d11: $dd
	rst SubAFromDE                                          ; $6d12: $df
	sub h                                            ; $6d13: $94
	ld l, l                                          ; $6d14: $6d
	db $fd                                           ; $6d15: $fd
	add hl, sp                                       ; $6d16: $39
	ld a, c                                          ; $6d17: $79
	ld a, l                                          ; $6d18: $7d
	ld [hl], a                                       ; $6d19: $77
	ld e, a                                          ; $6d1a: $5f
	ld a, l                                          ; $6d1b: $7d
	rst $38                                          ; $6d1c: $ff
	ld a, a                                          ; $6d1d: $7f
	rst $38                                          ; $6d1e: $ff
	ld [hl], a                                       ; $6d1f: $77
	push bc                                          ; $6d20: $c5
	sbc h                                            ; $6d21: $9c
	rst $38                                          ; $6d22: $ff
	ldh a, [$cb]                                     ; $6d23: $f0 $cb
	sbc $ff                                          ; $6d25: $de $ff
	rst SubAFromDE                                          ; $6d27: $df
	ld a, a                                          ; $6d28: $7f
	add l                                            ; $6d29: $85
	rst $38                                          ; $6d2a: $ff
	adc a                                            ; $6d2b: $8f
	db $fc                                           ; $6d2c: $fc
	call nz, $ecc1                                   ; $6d2d: $c4 $c1 $ec
	ldh a, [$e3]                                     ; $6d30: $f0 $e3
	rlca                                             ; $6d32: $07
	ld a, e                                          ; $6d33: $7b
	ld sp, hl                                        ; $6d34: $f9
	db $d3                                           ; $6d35: $d3
	db $e3                                           ; $6d36: $e3

jr_022_6d37:
	db $e3                                           ; $6d37: $e3
	rst $38                                          ; $6d38: $ff
	xor $e6                                          ; $6d39: $ee $e6
	cp $3e                                           ; $6d3b: $fe $3e
	rst $38                                          ; $6d3d: $ff
	db $fc                                           ; $6d3e: $fc
	inc e                                            ; $6d3f: $1c
	db $fc                                           ; $6d40: $fc
	rst $38                                          ; $6d41: $ff
	rst $38                                          ; $6d42: $ff
	pop af                                           ; $6d43: $f1
	call c, $86ff                                    ; $6d44: $dc $ff $86
	rra                                              ; $6d47: $1f
	ld a, a                                          ; $6d48: $7f
	ld a, a                                          ; $6d49: $7f
	ld a, h                                          ; $6d4a: $7c
	ldh a, [rSVBK]                                   ; $6d4b: $f0 $70
	rst $38                                          ; $6d4d: $ff
	rst $38                                          ; $6d4e: $ff
	db $e3                                           ; $6d4f: $e3
	rst JumpTable                                          ; $6d50: $c7
	rst $38                                          ; $6d51: $ff
	rst $38                                          ; $6d52: $ff
	cp a                                             ; $6d53: $bf
	cp l                                             ; $6d54: $bd
	cp a                                             ; $6d55: $bf
	rst $38                                          ; $6d56: $ff
	rst $38                                          ; $6d57: $ff
	rst SubAFromDE                                          ; $6d58: $df
	rst $38                                          ; $6d59: $ff
	ldh a, [$7c]                                     ; $6d5a: $f0 $7c
	cp $f1                                           ; $6d5c: $fe $f1
	ldh a, [$f8]                                     ; $6d5e: $f0 $f8
	db $dd                                           ; $6d60: $dd
	cp $95                                           ; $6d61: $fe $95
	db $fc                                           ; $6d63: $fc
	ldh [$e4], a                                     ; $6d64: $e0 $e4
	sbc $8e                                          ; $6d66: $de $8e
	rst $38                                          ; $6d68: $ff
	ccf                                              ; $6d69: $3f
	rra                                              ; $6d6a: $1f
	rra                                              ; $6d6b: $1f
	sbc a                                            ; $6d6c: $9f
	sbc $ff                                          ; $6d6d: $de $ff
	rst SubAFromDE                                          ; $6d6f: $df
	db $fd                                           ; $6d70: $fd
	sbc c                                            ; $6d71: $99
	ei                                               ; $6d72: $fb
	ld a, a                                          ; $6d73: $7f
	ld a, a                                          ; $6d74: $7f
	rra                                              ; $6d75: $1f
	ccf                                              ; $6d76: $3f
	ld a, a                                          ; $6d77: $7f
	sbc $ff                                          ; $6d78: $de $ff
	sbc d                                            ; $6d7a: $9a
	db $fc                                           ; $6d7b: $fc
	ld hl, sp-$10                                    ; $6d7c: $f8 $f0
	db $e3                                           ; $6d7e: $e3
	call nz, Call_022_7f7b                           ; $6d7f: $c4 $7b $7f
	adc l                                            ; $6d82: $8d
	db $dd                                           ; $6d83: $dd
	xor $b7                                          ; $6d84: $ee $b7
	cp b                                             ; $6d86: $b8
	ret nz                                           ; $6d87: $c0

	db $fc                                           ; $6d88: $fc
	ret nz                                           ; $6d89: $c0

	rlca                                             ; $6d8a: $07
	ld a, $71                                        ; $6d8b: $3e $71
	rst GetHLinHL                                          ; $6d8d: $cf
	ld a, b                                          ; $6d8e: $78
	ret nz                                           ; $6d8f: $c0

	db $fd                                           ; $6d90: $fd
	ld a, l                                          ; $6d91: $7d
	cp c                                             ; $6d92: $b9
	ret nz                                           ; $6d93: $c0

	rst $38                                          ; $6d94: $ff
	cp $9b                                           ; $6d95: $fe $9b
	inc bc                                           ; $6d97: $03
	cp $c7                                           ; $6d98: $fe $c7
	ccf                                              ; $6d9a: $3f
	ld [hl], a                                       ; $6d9b: $77
	ld hl, sp-$75                                    ; $6d9c: $f8 $8b
	cp a                                             ; $6d9e: $bf
	rst SubAFromDE                                          ; $6d9f: $df
	or l                                             ; $6da0: $b5
	ld l, [hl]                                       ; $6da1: $6e
	ld sp, hl                                        ; $6da2: $f9
	ld a, a                                          ; $6da3: $7f
	ld b, $01                                        ; $6da4: $06 $01
	rst SubAFromDE                                          ; $6da6: $df
	ld a, b                                          ; $6da7: $78
	ei                                               ; $6da8: $fb
	rst FarCall                                          ; $6da9: $f7
	cp $7f                                           ; $6daa: $fe $7f
	rlca                                             ; $6dac: $07

Call_022_6dad:
	ld bc, $fbe7                                     ; $6dad: $01 $e7 $fb
	ldh [$fd], a                                     ; $6db0: $e0 $fd
	ld l, a                                          ; $6db2: $6f
	adc l                                            ; $6db3: $8d
	ld a, a                                          ; $6db4: $7f
	xor [hl]                                         ; $6db5: $ae
	sbc e                                            ; $6db6: $9b
	rlca                                             ; $6db7: $07
	pop af                                           ; $6db8: $f1
	inc c                                            ; $6db9: $0c
	add d                                            ; $6dba: $82
	ld a, e                                          ; $6dbb: $7b
	ld h, e                                          ; $6dbc: $63
	sbc e                                            ; $6dbd: $9b
	ei                                               ; $6dbe: $fb
	add a                                            ; $6dbf: $87
	jp $dae7                                         ; $6dc0: $c3 $e7 $da


	rst $38                                          ; $6dc3: $ff
	sbc e                                            ; $6dc4: $9b
	ld a, a                                          ; $6dc5: $7f
	ccf                                              ; $6dc6: $3f
	rst $38                                          ; $6dc7: $ff
	cp $de                                           ; $6dc8: $fe $de
	rst $38                                          ; $6dca: $ff
	adc a                                            ; $6dcb: $8f
	sbc a                                            ; $6dcc: $9f
	ccf                                              ; $6dcd: $3f
	rst $38                                          ; $6dce: $ff
	ld hl, sp-$63                                    ; $6dcf: $f8 $9d
	add a                                            ; $6dd1: $87
	db $e3                                           ; $6dd2: $e3
	di                                               ; $6dd3: $f3
	cp $fc                                           ; $6dd4: $fe $fc
	ld sp, hl                                        ; $6dd6: $f9
	db $eb                                           ; $6dd7: $eb
	ld a, c                                          ; $6dd8: $79
	ccf                                              ; $6dd9: $3f
	cp $ef                                           ; $6dda: $fe $ef
	reti                                             ; $6ddc: $d9


	rst $38                                          ; $6ddd: $ff
	sbc d                                            ; $6dde: $9a
	inc a                                            ; $6ddf: $3c
	inc e                                            ; $6de0: $1c
	adc a                                            ; $6de1: $8f
	rst $38                                          ; $6de2: $ff
	rst AddAOntoHL                                          ; $6de3: $ef
	ld a, e                                          ; $6de4: $7b
	add $9a                                          ; $6de5: $c6 $9a
	jp nz, $e385                                     ; $6de7: $c2 $85 $e3

	ldh a, [$f9]                                     ; $6dea: $f0 $f9
	ld [hl], e                                       ; $6dec: $73
	ret nc                                           ; $6ded: $d0

	ld [hl], a                                       ; $6dee: $77
	ld a, c                                          ; $6def: $79
	sbc e                                            ; $6df0: $9b
	cp $9e                                           ; $6df1: $fe $9e
	ld e, l                                          ; $6df3: $5d
	rst $38                                          ; $6df4: $ff
	ld l, a                                          ; $6df5: $6f
	xor h                                            ; $6df6: $ac
	sub c                                            ; $6df7: $91
	rst $38                                          ; $6df8: $ff
	jp $ffc3                                         ; $6df9: $c3 $c3 $ff


	rst $38                                          ; $6dfc: $ff
	cp $7e                                           ; $6dfd: $fe $7e
	cp $ee                                           ; $6dff: $fe $ee
	rst JumpTable                                          ; $6e01: $c7
	add a                                            ; $6e02: $87
	rst SubAFromBC                                          ; $6e03: $e7
	rst JumpTable                                          ; $6e04: $c7
	rst GetHLinHL                                          ; $6e05: $cf
	call c, $0dff                                    ; $6e06: $dc $ff $0d
	nop                                              ; $6e09: $00
	rst SubAFromDE                                          ; $6e0a: $df
	ld h, [hl]                                       ; $6e0b: $66
	rst SubAFromDE                                          ; $6e0c: $df
	ld de, $1799                                     ; $6e0d: $11 $99 $17
	ld b, h                                          ; $6e10: $44
	ld b, a                                          ; $6e11: $47
	ld [hl], c                                       ; $6e12: $71
	ld de, $0511                                     ; $6e13: $11 $11 $05
	add c                                            ; $6e16: $81
	sbc b                                            ; $6e17: $98
	rst $38                                          ; $6e18: $ff
	rst SubAFromDE                                          ; $6e19: $df
	rst $38                                          ; $6e1a: $ff
	rst $38                                          ; $6e1b: $ff
	rst SubAFromBC                                          ; $6e1c: $e7
	rst FarCall                                          ; $6e1d: $f7
	rst FarCall                                          ; $6e1e: $f7
	ret c                                            ; $6e1f: $d8

	rst $38                                          ; $6e20: $ff
	sub a                                            ; $6e21: $97
	dec e                                            ; $6e22: $1d
	ld e, h                                          ; $6e23: $5c
	ldh a, [$d4]                                     ; $6e24: $f0 $d4
	call c, Call_022_68ec                            ; $6e26: $dc $ec $68
	rra                                              ; $6e29: $1f
	db $dd                                           ; $6e2a: $dd
	rst $38                                          ; $6e2b: $ff
	sbc h                                            ; $6e2c: $9c
	cp a                                             ; $6e2d: $bf
	sbc a                                            ; $6e2e: $9f
	sbc a                                            ; $6e2f: $9f
	sbc $ff                                          ; $6e30: $de $ff
	sbc c                                            ; $6e32: $99
	db $fd                                           ; $6e33: $fd
	db $eb                                           ; $6e34: $eb
	ld l, l                                          ; $6e35: $6d
	adc l                                            ; $6e36: $8d
	xor l                                            ; $6e37: $ad
	and l                                            ; $6e38: $a5
	sbc $fe                                          ; $6e39: $de $fe
	sub d                                            ; $6e3b: $92
	db $fc                                           ; $6e3c: $fc
	ldh a, [c]                                       ; $6e3d: $f2
	di                                               ; $6e3e: $f3
	di                                               ; $6e3f: $f3
	rst $38                                          ; $6e40: $ff
	ld a, l                                          ; $6e41: $7d
	rst SubAFromDE                                          ; $6e42: $df
	dec c                                            ; $6e43: $0d
	ld l, a                                          ; $6e44: $6f
	rst $38                                          ; $6e45: $ff
	db $eb                                           ; $6e46: $eb
	rst JumpTable                                          ; $6e47: $c7
	rst SubAFromBC                                          ; $6e48: $e7
	ret c                                            ; $6e49: $d8

	rst $38                                          ; $6e4a: $ff
	adc h                                            ; $6e4b: $8c
	inc a                                            ; $6e4c: $3c
	cp $fe                                           ; $6e4d: $fe $fe
	rst $38                                          ; $6e4f: $ff
	db $fd                                           ; $6e50: $fd
	ld sp, hl                                        ; $6e51: $f9
	db $fc                                           ; $6e52: $fc
	ei                                               ; $6e53: $fb
	rst $38                                          ; $6e54: $ff
	rst $38                                          ; $6e55: $ff
	ld sp, hl                                        ; $6e56: $f9
	rst $38                                          ; $6e57: $ff
	rst AddAOntoHL                                          ; $6e58: $ef
	rst JumpTable                                          ; $6e59: $c7
	add e                                            ; $6e5a: $83
	rst AddAOntoHL                                          ; $6e5b: $ef
	db $e3                                           ; $6e5c: $e3
	di                                               ; $6e5d: $f3
	ld a, e                                          ; $6e5e: $7b
	sbc $ff                                          ; $6e5f: $de $ff
	ld [hl], e                                       ; $6e61: $73
	xor a                                            ; $6e62: $af
	rst SubAFromDE                                          ; $6e63: $df
	rst JumpTable                                          ; $6e64: $c7
	sub l                                            ; $6e65: $95
	rst GetHLinHL                                          ; $6e66: $cf
	cp $78                                           ; $6e67: $fe $78
	ld hl, sp-$04                                    ; $6e69: $f8 $fc
	cp $e7                                           ; $6e6b: $fe $e7
	jp $e1c1                                         ; $6e6d: $c3 $c1 $e1


	reti                                             ; $6e70: $d9


	rst $38                                          ; $6e71: $ff
	sbc l                                            ; $6e72: $9d
	cp a                                             ; $6e73: $bf
	ld a, a                                          ; $6e74: $7f
	sbc $ff                                          ; $6e75: $de $ff
	sbc d                                            ; $6e77: $9a
	db $db                                           ; $6e78: $db
	cp a                                             ; $6e79: $bf
	ld a, b                                          ; $6e7a: $78
	cp $fc                                           ; $6e7b: $fe $fc
	jp c, Jump_022_7fff                              ; $6e7d: $da $ff $7f

	rst JumpTable                                          ; $6e80: $c7
	sub a                                            ; $6e81: $97
	cp a                                             ; $6e82: $bf
	rst SubAFromDE                                          ; $6e83: $df
	rst AddAOntoHL                                          ; $6e84: $ef
	rst $38                                          ; $6e85: $ff
	cp $47                                           ; $6e86: $fe $47
	call nz, $7bf8                                   ; $6e88: $c4 $f8 $7b
	sub $df                                          ; $6e8b: $d6 $df
	rst GetHLinHL                                          ; $6e8d: $cf
	ld a, a                                          ; $6e8e: $7f
	ldh a, [$97]                                     ; $6e8f: $f0 $97
	cp e                                             ; $6e91: $bb
	ld sp, hl                                        ; $6e92: $f9
	ldh a, [$c7]                                     ; $6e93: $f0 $c7
	xor a                                            ; $6e95: $af
	rst AddAOntoHL                                          ; $6e96: $ef
	di                                               ; $6e97: $f3
	rst $38                                          ; $6e98: $ff
	sbc $7f                                          ; $6e99: $de $7f
	ld l, e                                          ; $6e9b: $6b
	sbc $96                                          ; $6e9c: $de $96
	cp $ee                                           ; $6e9e: $fe $ee
	and $c3                                          ; $6ea0: $e6 $c3
	ldh [$f1], a                                     ; $6ea2: $e0 $f1
	sub a                                            ; $6ea4: $97
	rlca                                             ; $6ea5: $07
	rst GetHLinHL                                          ; $6ea6: $cf
	db $dd                                           ; $6ea7: $dd
	rst $38                                          ; $6ea8: $ff
	ld a, a                                          ; $6ea9: $7f
	ldh [c], a                                       ; $6eaa: $e2
	sbc d                                            ; $6eab: $9a
	di                                               ; $6eac: $f3
	cp d                                             ; $6ead: $ba
	ld a, [hl]                                       ; $6eae: $7e
	ld a, h                                          ; $6eaf: $7c
	cp $6b                                           ; $6eb0: $fe $6b
	db $e4                                           ; $6eb2: $e4
	sbc $ff                                          ; $6eb3: $de $ff
	ld a, a                                          ; $6eb5: $7f
	adc e                                            ; $6eb6: $8b
	sbc e                                            ; $6eb7: $9b
	rst GetHLinHL                                          ; $6eb8: $cf
	rst AddAOntoHL                                          ; $6eb9: $ef
	rst FarCall                                          ; $6eba: $f7
	di                                               ; $6ebb: $f3
	ld l, a                                          ; $6ebc: $6f
	and e                                            ; $6ebd: $a3
	ld a, a                                          ; $6ebe: $7f
	ld c, [hl]                                       ; $6ebf: $4e
	ld a, e                                          ; $6ec0: $7b
	ldh a, [$8c]                                     ; $6ec1: $f0 $8c
	rst GetHLinHL                                          ; $6ec3: $cf
	sbc a                                            ; $6ec4: $9f
	cp a                                             ; $6ec5: $bf
	cp $ef                                           ; $6ec6: $fe $ef
	db $e3                                           ; $6ec8: $e3
	ld h, e                                          ; $6ec9: $63
	ccf                                              ; $6eca: $3f
	cp a                                             ; $6ecb: $bf
	db $fc                                           ; $6ecc: $fc
	ld hl, sp-$0f                                    ; $6ecd: $f8 $f1
	di                                               ; $6ecf: $f3
	rst $38                                          ; $6ed0: $ff
	set 7, a                                         ; $6ed1: $cb $ff
	sub a                                            ; $6ed3: $97
	rst SubAFromDE                                          ; $6ed4: $df
	ldh [c], a                                       ; $6ed5: $e2
	ld l, a                                          ; $6ed6: $6f
	jp nc, $3f9b                                     ; $6ed7: $d2 $9b $3f

	rst $38                                          ; $6eda: $ff
	add $c2                                          ; $6edb: $c6 $c2
	sbc $ff                                          ; $6edd: $de $ff
	ld a, e                                          ; $6edf: $7b
	ld c, a                                          ; $6ee0: $4f
	ld [hl], a                                       ; $6ee1: $77
	add hl, hl                                       ; $6ee2: $29
	ld a, a                                          ; $6ee3: $7f
	xor [hl]                                         ; $6ee4: $ae
	sbc c                                            ; $6ee5: $99
	ld sp, hl                                        ; $6ee6: $f9
	rrca                                             ; $6ee7: $0f
	rra                                              ; $6ee8: $1f
	ld a, c                                          ; $6ee9: $79
	db $fd                                           ; $6eea: $fd
	sbc a                                            ; $6eeb: $9f
	ld [hl], a                                       ; $6eec: $77
	ld l, l                                          ; $6eed: $6d
	sbc [hl]                                         ; $6eee: $9e
	db $fc                                           ; $6eef: $fc
	ld e, [hl]                                       ; $6ef0: $5e
	rst $38                                          ; $6ef1: $ff
	sbc $ff                                          ; $6ef2: $de $ff
	sbc h                                            ; $6ef4: $9c
	di                                               ; $6ef5: $f3
	ld [hl], d                                       ; $6ef6: $72
	ld a, [$ffd9]                                    ; $6ef7: $fa $d9 $ff
	sbc e                                            ; $6efa: $9b
	pop af                                           ; $6efb: $f1
	rst GetHLinHL                                          ; $6efc: $cf
	rst SubAFromDE                                          ; $6efd: $df
	db $fd                                           ; $6efe: $fd
	ld a, e                                          ; $6eff: $7b
	halt                                             ; $6f00: $76
	ld a, a                                          ; $6f01: $7f
	dec c                                            ; $6f02: $0d
	adc e                                            ; $6f03: $8b
	ldh a, [$e0]                                     ; $6f04: $f0 $e0
	cp $ff                                           ; $6f06: $fe $ff
	jp $9f87                                         ; $6f08: $c3 $87 $9f


	ccf                                              ; $6f0b: $3f
	rst AddAOntoHL                                          ; $6f0c: $ef
	rst AddAOntoHL                                          ; $6f0d: $ef
	rst SubAFromDE                                          ; $6f0e: $df
	cp a                                             ; $6f0f: $bf
	rst $38                                          ; $6f10: $ff
	rst SubAFromBC                                          ; $6f11: $e7
	rst JumpTable                                          ; $6f12: $c7
	and a                                            ; $6f13: $a7
	sbc a                                            ; $6f14: $9f
	sbc a                                            ; $6f15: $9f
	db $e3                                           ; $6f16: $e3
	pop hl                                           ; $6f17: $e1
	ld [hl], a                                       ; $6f18: $77
	adc e                                            ; $6f19: $8b
	ld a, [bc]                                       ; $6f1a: $0a
	nop                                              ; $6f1b: $00
	rst SubAFromDE                                          ; $6f1c: $df
	ld h, [hl]                                       ; $6f1d: $66
	db $dd                                           ; $6f1e: $dd
	ld de, $719e                                     ; $6f1f: $11 $9e $71
	sbc $11                                          ; $6f22: $de $11
	rst SubAFromBC                                          ; $6f24: $e7
	add b                                            ; $6f25: $80
	rst SubAFromDE                                          ; $6f26: $df
	db $fc                                           ; $6f27: $fc
	rst SubAFromDE                                          ; $6f28: $df
	xor $9b                                          ; $6f29: $ee $9b
	db $ec                                           ; $6f2b: $ec
	add sp, -$1f                                     ; $6f2c: $e8 $e1
	db $fd                                           ; $6f2e: $fd
	reti                                             ; $6f2f: $d9


	rst $38                                          ; $6f30: $ff
	sbc h                                            ; $6f31: $9c
	rst SubAFromBC                                          ; $6f32: $e7
	rst AddAOntoHL                                          ; $6f33: $ef
	rst AddAOntoHL                                          ; $6f34: $ef
	db $dd                                           ; $6f35: $dd
	db $fd                                           ; $6f36: $fd
	sbc [hl]                                         ; $6f37: $9e
	ld e, l                                          ; $6f38: $5d
	reti                                             ; $6f39: $d9


	rst $38                                          ; $6f3a: $ff
	sbc $fe                                          ; $6f3b: $de $fe
	rst SubAFromDE                                          ; $6f3d: $df
	db $fc                                           ; $6f3e: $fc
	sbc l                                            ; $6f3f: $9d
	cp $ee                                           ; $6f40: $fe $ee
	ret c                                            ; $6f42: $d8

	rst $38                                          ; $6f43: $ff
	rst SubAFromDE                                          ; $6f44: $df
	ld a, a                                          ; $6f45: $7f
	rst SubAFromDE                                          ; $6f46: $df
	rra                                              ; $6f47: $1f
	sbc e                                            ; $6f48: $9b
	ld a, $79                                        ; $6f49: $3e $79
	ld sp, hl                                        ; $6f4b: $f9
	ld [hl], c                                       ; $6f4c: $71
	reti                                             ; $6f4d: $d9


	rst $38                                          ; $6f4e: $ff
	sbc [hl]                                         ; $6f4f: $9e
	ld sp, hl                                        ; $6f50: $f9
	sbc $ff                                          ; $6f51: $de $ff
	sub e                                            ; $6f53: $93
	db $fc                                           ; $6f54: $fc
	ld sp, hl                                        ; $6f55: $f9
	ei                                               ; $6f56: $fb
	rst $38                                          ; $6f57: $ff
	rst JumpTable                                          ; $6f58: $c7
	add a                                            ; $6f59: $87
	rrca                                             ; $6f5a: $0f
	ccf                                              ; $6f5b: $3f
	rst $38                                          ; $6f5c: $ff
	cp $fc                                           ; $6f5d: $fe $fc
	ld hl, sp+$73                                    ; $6f5f: $f8 $73
	call z, $ce7b                                    ; $6f61: $cc $7b $ce
	sbc l                                            ; $6f64: $9d
	ldh [$f8], a                                     ; $6f65: $e0 $f8
	ld a, e                                          ; $6f67: $7b
	jp hl                                            ; $6f68: $e9


	sbc e                                            ; $6f69: $9b
	dec sp                                           ; $6f6a: $3b
	ccf                                              ; $6f6b: $3f
	rst $38                                          ; $6f6c: $ff
	ld hl, sp+$77                                    ; $6f6d: $f8 $77
	and [hl]                                         ; $6f6f: $a6
	sub a                                            ; $6f70: $97
	cp $7c                                           ; $6f71: $fe $7c
	pop af                                           ; $6f73: $f1
	ccf                                              ; $6f74: $3f
	rst $38                                          ; $6f75: $ff
	rra                                              ; $6f76: $1f
	rra                                              ; $6f77: $1f
	ccf                                              ; $6f78: $3f
	sbc $ff                                          ; $6f79: $de $ff
	sbc [hl]                                         ; $6f7b: $9e
	dec a                                            ; $6f7c: $3d
	ld [hl], e                                       ; $6f7d: $73
	cp e                                             ; $6f7e: $bb
	sbc l                                            ; $6f7f: $9d
	rst $38                                          ; $6f80: $ff
	db $eb                                           ; $6f81: $eb
	reti                                             ; $6f82: $d9


	rst $38                                          ; $6f83: $ff
	sbc [hl]                                         ; $6f84: $9e
	rst AddAOntoHL                                          ; $6f85: $ef
	ld l, a                                          ; $6f86: $6f
	adc d                                            ; $6f87: $8a
	sbc b                                            ; $6f88: $98
	rst $38                                          ; $6f89: $ff
	ldh a, [$f0]                                     ; $6f8a: $f0 $f0
	rst $38                                          ; $6f8c: $ff
	ccf                                              ; $6f8d: $3f
	ld de, $7bc7                                     ; $6f8e: $11 $c7 $7b
	pop af                                           ; $6f91: $f1
	sbc [hl]                                         ; $6f92: $9e
	cp $6f                                           ; $6f93: $fe $6f
	ld [hl], l                                       ; $6f95: $75
	sub a                                            ; $6f96: $97
	rst SubAFromDE                                          ; $6f97: $df
	rra                                              ; $6f98: $1f
	cp $c6                                           ; $6f99: $fe $c6
	add [hl]                                         ; $6f9b: $86
	rst $38                                          ; $6f9c: $ff
	ld sp, hl                                        ; $6f9d: $f9
	pop af                                           ; $6f9e: $f1
	ld a, e                                          ; $6f9f: $7b
	call nc, $ff96                                   ; $6fa0: $d4 $96 $ff
	xor a                                            ; $6fa3: $af
	rst AddAOntoHL                                          ; $6fa4: $ef
	sbc a                                            ; $6fa5: $9f
	rst $38                                          ; $6fa6: $ff
	rst $38                                          ; $6fa7: $ff
	cp [hl]                                          ; $6fa8: $be
	ld a, $3e                                        ; $6fa9: $3e $3e
	ld a, e                                          ; $6fab: $7b
	push af                                          ; $6fac: $f5
	sbc [hl]                                         ; $6fad: $9e
	pop hl                                           ; $6fae: $e1
	db $dd                                           ; $6faf: $dd
	rst $38                                          ; $6fb0: $ff
	sbc [hl]                                         ; $6fb1: $9e
	cp [hl]                                          ; $6fb2: $be
	sbc $ff                                          ; $6fb3: $de $ff
	sbc e                                            ; $6fb5: $9b
	rrca                                             ; $6fb6: $0f
	daa                                              ; $6fb7: $27
	rra                                              ; $6fb8: $1f
	ccf                                              ; $6fb9: $3f
	ld a, e                                          ; $6fba: $7b
	ldh a, [rPCM34]                                  ; $6fbb: $f0 $77
	ld c, a                                          ; $6fbd: $4f
	rst GetHLinHL                                          ; $6fbe: $cf
	rst $38                                          ; $6fbf: $ff
	sbc h                                            ; $6fc0: $9c
	ld hl, sp-$04                                    ; $6fc1: $f8 $fc
	db $fc                                           ; $6fc3: $fc
	call c, $9cff                                    ; $6fc4: $dc $ff $9c
	rra                                              ; $6fc7: $1f
	sbc a                                            ; $6fc8: $9f
	sbc e                                            ; $6fc9: $9b
	sbc $ff                                          ; $6fca: $de $ff
	sbc l                                            ; $6fcc: $9d
	pop hl                                           ; $6fcd: $e1
	rst FarCall                                          ; $6fce: $f7
	ld a, e                                          ; $6fcf: $7b
	cp e                                             ; $6fd0: $bb
	sbc h                                            ; $6fd1: $9c
	rst SubAFromBC                                          ; $6fd2: $e7
	jp Jump_022_6fe7                                 ; $6fd3: $c3 $e7 $6f


	jr nc, @+$7d                                     ; $6fd6: $30 $7b

	ld h, h                                          ; $6fd8: $64
	jp c, $9eff                                      ; $6fd9: $da $ff $9e

	pop af                                           ; $6fdc: $f1
	ld [hl], e                                       ; $6fdd: $73
	ld d, e                                          ; $6fde: $53
	rst SubAFromDE                                          ; $6fdf: $df
	ld a, a                                          ; $6fe0: $7f
	ld [hl], a                                       ; $6fe1: $77

Jump_022_6fe2:
	ld l, c                                          ; $6fe2: $69
	db $db                                           ; $6fe3: $db
	rst $38                                          ; $6fe4: $ff
	sbc d                                            ; $6fe5: $9a
	rst JumpTable                                          ; $6fe6: $c7

Jump_022_6fe7:
	add e                                            ; $6fe7: $83
	rst SubAFromBC                                          ; $6fe8: $e7
	ld e, $df                                        ; $6fe9: $1e $df
	call c, Call_022_7fff                            ; $6feb: $dc $ff $7f
	cpl                                              ; $6fee: $2f
	ld a, e                                          ; $6fef: $7b
	ldh [$7f], a                                     ; $6ff0: $e0 $7f
	rst SubAFromDE                                          ; $6ff2: $df
	ld l, a                                          ; $6ff3: $6f
	push de                                          ; $6ff4: $d5
	ld a, a                                          ; $6ff5: $7f
	di                                               ; $6ff6: $f3
	sbc l                                            ; $6ff7: $9d
	ei                                               ; $6ff8: $fb
	ret                                              ; $6ff9: $c9


	ld l, e                                          ; $6ffa: $6b
	inc bc                                           ; $6ffb: $03
	sbc $ff                                          ; $6ffc: $de $ff
	sbc [hl]                                         ; $6ffe: $9e
	rst GetHLinHL                                          ; $6fff: $cf
	ld [hl], a                                       ; $7000: $77
	sbc $99                                          ; $7001: $de $99

Jump_022_7003:
	cp a                                             ; $7003: $bf
	rst $38                                          ; $7004: $ff
	rst $38                                          ; $7005: $ff
	db $fd                                           ; $7006: $fd
	ldh [c], a                                       ; $7007: $e2
	db $e3                                           ; $7008: $e3
	sbc $ff                                          ; $7009: $de $ff
	ld b, $00                                        ; $700b: $06 $00
	rst SubAFromDE                                          ; $700d: $df
	ld h, [hl]                                       ; $700e: $66
	reti                                             ; $700f: $d9


	ld de, $84d3                                     ; $7010: $11 $d3 $84
	reti                                             ; $7013: $d9


	rst $38                                          ; $7014: $ff
	ld sp, hl                                        ; $7015: $f9
	inc bc                                           ; $7016: $03
	ldh a, [$db]                                     ; $7017: $f0 $db
	rst $38                                          ; $7019: $ff
	sbc [hl]                                         ; $701a: $9e
	cp $f9                                           ; $701b: $fe $f9
	sbc $c0                                          ; $701d: $de $c0
	rst SubAFromDE                                          ; $701f: $df
	add b                                            ; $7020: $80
	or $9c                                           ; $7021: $f6 $9c
	ld a, a                                          ; $7023: $7f
	rra                                              ; $7024: $1f
	inc bc                                           ; $7025: $03
	or $9d                                           ; $7026: $f6 $9d
	inc bc                                           ; $7028: $03
	rlca                                             ; $7029: $07
	db $dd                                           ; $702a: $dd
	rst $38                                          ; $702b: $ff
	sbc l                                            ; $702c: $9d
	rra                                              ; $702d: $1f
	rlca                                             ; $702e: $07
	ld sp, hl                                        ; $702f: $f9

Call_022_7030:
	sbc l                                            ; $7030: $9d
	add b                                            ; $7031: $80
	ldh [$da], a                                     ; $7032: $e0 $da
	rst $38                                          ; $7034: $ff
	sbc [hl]                                         ; $7035: $9e
	rra                                              ; $7036: $1f
	inc bc                                           ; $7037: $03
	sub b                                            ; $7038: $90
	inc bc                                           ; $7039: $03
	ldh a, [$03]                                     ; $703a: $f0 $03
	ldh a, [$03]                                     ; $703c: $f0 $03
	ldh a, [$03]                                     ; $703e: $f0 $03
	ldh a, [$03]                                     ; $7040: $f0 $03
	ldh a, [$03]                                     ; $7042: $f0 $03
	ldh a, [rSCX]                                    ; $7044: $f0 $43
	ldh a, [$df]                                     ; $7046: $f0 $df
	cp $df                                           ; $7048: $fe $df
	db $fc                                           ; $704a: $fc
	rst SubAFromDE                                          ; $704b: $df
	ld hl, sp-$21                                    ; $704c: $f8 $df
	ldh a, [$e9]                                     ; $704e: $f0 $e9
	add [hl]                                         ; $7050: $86
	ld [$1010], sp                                   ; $7051: $08 $10 $10
	jr nz, jr_022_7096                               ; $7054: $20 $40

	ld b, b                                          ; $7056: $40
	add b                                            ; $7057: $80
	add b                                            ; $7058: $80
	rlca                                             ; $7059: $07
	rrca                                             ; $705a: $0f
	rrca                                             ; $705b: $0f
	rra                                              ; $705c: $1f
	ccf                                              ; $705d: $3f
	ccf                                              ; $705e: $3f
	ld a, a                                          ; $705f: $7f
	ld a, a                                          ; $7060: $7f
	nop                                              ; $7061: $00
	ld [bc], a                                       ; $7062: $02
	ld [bc], a                                       ; $7063: $02
	inc b                                            ; $7064: $04
	inc b                                            ; $7065: $04
	ld [$1000], sp                                   ; $7066: $08 $00 $10
	ld hl, sp+$6f                                    ; $7069: $f8 $6f
	ret                                              ; $706b: $c9


	sbc h                                            ; $706c: $9c
	ldh [rIF], a                                     ; $706d: $e0 $0f
	ld bc, $dff3                                     ; $706f: $01 $f3 $df
	rst $38                                          ; $7072: $ff
	sbc [hl]                                         ; $7073: $9e
	ld a, a                                          ; $7074: $7f
	ld [hl], a                                       ; $7075: $77
	db $ed                                           ; $7076: $ed
	sbc [hl]                                         ; $7077: $9e
	inc a                                            ; $7078: $3c
	ld a, [$3c9e]                                    ; $7079: $fa $9e $3c
	call c, Call_022_73ff                            ; $707c: $dc $ff $73
	db $ed                                           ; $707f: $ed
	inc bc                                           ; $7080: $03
	ld [hl], b                                       ; $7081: $70
	inc bc                                           ; $7082: $03
	ldh a, [$03]                                     ; $7083: $f0 $03
	ldh a, [$03]                                     ; $7085: $f0 $03
	ldh a, [$03]                                     ; $7087: $f0 $03
	ldh a, [$03]                                     ; $7089: $f0 $03
	ldh a, [rBGP]                                    ; $708b: $f0 $47
	ldh a, [$de]                                     ; $708d: $f0 $de
	ldh [$75], a                                     ; $708f: $e0 $75
	adc [hl]                                         ; $7091: $8e
	ld h, c                                          ; $7092: $61
	adc l                                            ; $7093: $8d
	ld a, a                                          ; $7094: $7f
	rla                                              ; $7095: $17

jr_022_7096:
	ld a, d                                          ; $7096: $7a
	ldh [$7e], a                                     ; $7097: $e0 $7e
	jp z, $f77b                                      ; $7099: $ca $7b $f7

	sbc c                                            ; $709c: $99
	ld bc, $0303                                     ; $709d: $01 $03 $03
	rlca                                             ; $70a0: $07
	rlca                                             ; $70a1: $07
	rrca                                             ; $70a2: $0f
	ld l, e                                          ; $70a3: $6b
	ld [$019e], a                                    ; $70a4: $ea $9e $01
	ld l, c                                          ; $70a7: $69
	ld e, c                                          ; $70a8: $59
	sbc l                                            ; $70a9: $9d
	cp $20                                           ; $70aa: $fe $20
	ld [hl], d                                       ; $70ac: $72
	or d                                             ; $70ad: $b2
	ld [hl], l                                       ; $70ae: $75
	ld e, b                                          ; $70af: $58
	ld l, e                                          ; $70b0: $6b
	call z, $0180                                    ; $70b1: $cc $80 $01
	ld [bc], a                                       ; $70b4: $02
	dec b                                            ; $70b5: $05
	ld a, [bc]                                       ; $70b6: $0a
	ld c, $14                                        ; $70b7: $0e $14
	dec e                                            ; $70b9: $1d
	nop                                              ; $70ba: $00
	ld bc, $0603                                     ; $70bb: $01 $03 $06
	inc c                                            ; $70be: $0c
	ld [$1018], sp                                   ; $70bf: $08 $18 $10
	reti                                             ; $70c2: $d9


	ld [hl], h                                       ; $70c3: $74
	jp $300c                                         ; $70c4: $c3 $0c $30


	ld [hl], h                                       ; $70c7: $74
	ldh [$c5], a                                     ; $70c8: $e0 $c5
	and $88                                          ; $70ca: $e6 $88
	nop                                              ; $70cc: $00
	inc bc                                           ; $70cd: $03
	ld c, $18                                        ; $70ce: $0e $18
	ld sp, $8f62                                     ; $70d0: $31 $62 $8f
	nop                                              ; $70d3: $00
	ld [hl], b                                       ; $70d4: $70
	inc c                                            ; $70d5: $0c
	ld a, l                                          ; $70d6: $7d
	dec a                                            ; $70d7: $3d
	or e                                             ; $70d8: $b3
	ld c, [hl]                                       ; $70d9: $4e
	jr jr_022_70dc                                   ; $70da: $18 $00

jr_022_70dc:
	nop                                              ; $70dc: $00
	ldh a, [hDisp0_LCDC]                                     ; $70dd: $f0 $82
	nop                                              ; $70df: $00
	ld b, b                                          ; $70e0: $40
	add c                                            ; $70e1: $81
	rlca                                             ; $70e2: $07
	ld e, d                                          ; $70e3: $5a
	or l                                             ; $70e4: $b5
	ld a, a                                          ; $70e5: $7f
	add h                                            ; $70e6: $84
	sbc [hl]                                         ; $70e7: $9e
	db $fc                                           ; $70e8: $fc
	ld b, [hl]                                       ; $70e9: $46
	and d                                            ; $70ea: $a2
	sbc l                                            ; $70eb: $9d
	add b                                            ; $70ec: $80
	ldh a, [$db]                                     ; $70ed: $f0 $db
	rst $38                                          ; $70ef: $ff
	ld a, a                                          ; $70f0: $7f
	db $ed                                           ; $70f1: $ed
	inc bc                                           ; $70f2: $03
	ld b, b                                          ; $70f3: $40
	inc bc                                           ; $70f4: $03
	ldh a, [$03]                                     ; $70f5: $f0 $03
	ldh a, [$03]                                     ; $70f7: $f0 $03
	ldh a, [$2f]                                     ; $70f9: $f0 $2f
	ldh a, [$6d]                                     ; $70fb: $f0 $6d
	adc [hl]                                         ; $70fd: $8e
	di                                               ; $70fe: $f3
	ld h, e                                          ; $70ff: $63
	ccf                                              ; $7100: $3f
	sbc c                                            ; $7101: $99
	ld bc, $2010                                     ; $7102: $01 $10 $20
	nop                                              ; $7105: $00
	ld b, b                                          ; $7106: $40
	nop                                              ; $7107: $00
	ld a, d                                          ; $7108: $7a
	and $6d                                          ; $7109: $e6 $6d
	sub d                                            ; $710b: $92
	rst SubAFromDE                                          ; $710c: $df
	rst $38                                          ; $710d: $ff
	ld a, c                                          ; $710e: $79
	sub c                                            ; $710f: $91
	rst SubAFromDE                                          ; $7110: $df
	ld [$7c79], sp                                   ; $7111: $08 $79 $7c
	ld a, e                                          ; $7114: $7b
	call z, $9279                                    ; $7115: $cc $79 $92
	ld a, [hl]                                       ; $7118: $7e
	sub h                                            ; $7119: $94
	pop af                                           ; $711a: $f1
	add b                                            ; $711b: $80
	dec de                                           ; $711c: $1b
	dec hl                                           ; $711d: $2b
	dec a                                            ; $711e: $3d
	ld a, $5b                                        ; $711f: $3e $5b
	ld e, e                                          ; $7121: $5b
	ld d, l                                          ; $7122: $55
	ld d, a                                          ; $7123: $57
	db $10                                           ; $7124: $10
	ld sp, $2323                                     ; $7125: $31 $23 $23
	ld h, [hl]                                       ; $7128: $66
	ld h, [hl]                                       ; $7129: $66
	ld l, [hl]                                       ; $712a: $6e
	ld l, h                                          ; $712b: $6c
	adc d                                            ; $712c: $8a
	inc d                                            ; $712d: $14
	xor b                                            ; $712e: $a8
	ld d, $2c                                        ; $712f: $16 $2c
	sbc c                                            ; $7131: $99
	ld [hl], h                                       ; $7132: $74
	ld l, [hl]                                       ; $7133: $6e
	call nz, $1088                                   ; $7134: $c4 $88 $10
	ld hl, $4643                                     ; $7137: $21 $43 $46
	adc [hl]                                         ; $713a: $8e
	sub [hl]                                         ; $713b: $96
	sbc h                                            ; $713c: $9c
	dec hl                                           ; $713d: $2b
	ld d, a                                          ; $713e: $57
	ld b, [hl]                                       ; $713f: $46
	add hl, bc                                       ; $7140: $09
	ld [bc], a                                       ; $7141: $02
	dec b                                            ; $7142: $05
	nop                                              ; $7143: $00
	jr z, jr_022_71c1                                ; $7144: $28 $7b

	xor b                                            ; $7146: $a8
	ld a, d                                          ; $7147: $7a
	sub l                                            ; $7148: $95
	ld a, l                                          ; $7149: $7d
	ld c, b                                          ; $714a: $48
	add e                                            ; $714b: $83
	ldh a, [$61]                                     ; $714c: $f0 $61
	db $d3                                           ; $714e: $d3
	ld b, $8c                                        ; $714f: $06 $8c
	ld a, [hl-]                                      ; $7151: $3a
	ld h, h                                          ; $7152: $64
	adc c                                            ; $7153: $89
	rrca                                             ; $7154: $0f
	ld e, $20                                        ; $7155: $1e $20
	pop bc                                           ; $7157: $c1
	inc bc                                           ; $7158: $03
	inc b                                            ; $7159: $04
	jr @+$72                                         ; $715a: $18 $70

	nop                                              ; $715c: $00
	ldh [$80], a                                     ; $715d: $e0 $80
	ld e, $fe                                        ; $715f: $1e $fe
	ld l, h                                          ; $7161: $6c
	ret                                              ; $7162: $c9


	sub e                                            ; $7163: $93
	db $fc                                           ; $7164: $fc
	rra                                              ; $7165: $1f
	ld a, a                                          ; $7166: $7f
	pop hl                                           ; $7167: $e1
	halt                                             ; $7168: $76
	ld a, l                                          ; $7169: $7d
	sbc [hl]                                         ; $716a: $9e
	inc bc                                           ; $716b: $03
	ld h, d                                          ; $716c: $62
	or l                                             ; $716d: $b5
	ld h, d                                          ; $716e: $62
	and d                                            ; $716f: $a2
	ld e, a                                          ; $7170: $5f
	db $ed                                           ; $7171: $ed
	sbc [hl]                                         ; $7172: $9e
	ldh a, [$3f]                                     ; $7173: $f0 $3f
	db $ed                                           ; $7175: $ed
	jp c, $7cff                                      ; $7176: $da $ff $7c

	add sp, $03                                      ; $7179: $e8 $03
	nop                                              ; $717b: $00
	inc bc                                           ; $717c: $03

jr_022_717d:
	ldh a, [$03]                                     ; $717d: $f0 $03
	ldh a, [$fd]                                     ; $717f: $f0 $fd
	ld l, [hl]                                       ; $7181: $6e
	ld a, [$c37d]                                    ; $7182: $fa $7d $c3
	ld sp, hl                                        ; $7185: $f9
	ld a, a                                          ; $7186: $7f
	dec l                                            ; $7187: $2d
	ld [hl], l                                       ; $7188: $75
	sub d                                            ; $7189: $92
	ld a, a                                          ; $718a: $7f
	ld [hl+], a                                      ; $718b: $22
	ld l, l                                          ; $718c: $6d
	sub d                                            ; $718d: $92
	ld a, [hl]                                       ; $718e: $7e
	jp z, $ac69                                      ; $718f: $ca $69 $ac

	sbc [hl]                                         ; $7192: $9e
	ld [bc], a                                       ; $7193: $02
	ld l, l                                          ; $7194: $6d
	sub c                                            ; $7195: $91
	rst SubAFromDE                                          ; $7196: $df
	db $fc                                           ; $7197: $fc
	ld a, [hl]                                       ; $7198: $7e
	or d                                             ; $7199: $b2
	ld a, l                                          ; $719a: $7d
	sub c                                            ; $719b: $91
	db $fd                                           ; $719c: $fd
	ld h, l                                          ; $719d: $65
	sub c                                            ; $719e: $91

jr_022_719f:
	pop af                                           ; $719f: $f1
	sbc h                                            ; $71a0: $9c
	ld d, [hl]                                       ; $71a1: $56
	ld b, [hl]                                       ; $71a2: $46
	ld b, [hl]                                       ; $71a3: $46
	sbc $24                                          ; $71a4: $de $24
	rst SubAFromDE                                          ; $71a6: $df
	ld d, d                                          ; $71a7: $52
	sbc h                                            ; $71a8: $9c
	ld l, l                                          ; $71a9: $6d
	ld a, l                                          ; $71aa: $7d
	ld a, l                                          ; $71ab: $7d
	sbc $3f                                          ; $71ac: $de $3f
	rst SubAFromDE                                          ; $71ae: $df
	ld a, a                                          ; $71af: $7f
	add b                                            ; $71b0: $80
	ret z                                            ; $71b1: $c8

	db $dd                                           ; $71b2: $dd
	sub d                                            ; $71b3: $92
	or d                                             ; $71b4: $b2
	inc a                                            ; $71b5: $3c
	ld a, l                                          ; $71b6: $7d
	ld a, c                                          ; $71b7: $79
	ld sp, hl                                        ; $71b8: $f9
	inc a                                            ; $71b9: $3c
	jr c, jr_022_7235                                ; $71ba: $38 $79

	ld a, c                                          ; $71bc: $79
	di                                               ; $71bd: $f3
	db $d3                                           ; $71be: $d3
	rst SubAFromHL                                          ; $71bf: $d7
	sub a                                            ; $71c0: $97

jr_022_71c1:
	ld b, c                                          ; $71c1: $41
	ld [bc], a                                       ; $71c2: $02
	ld h, h                                          ; $71c3: $64
	adc b                                            ; $71c4: $88
	adc c                                            ; $71c5: $89
	sub c                                            ; $71c6: $91
	jp nz, $30e7                                     ; $71c7: $c2 $e7 $30

	pop hl                                           ; $71ca: $e1
	jp $c7c7                                         ; $71cb: $c3 $c7 $c7


	rst GetHLinHL                                          ; $71ce: $cf
	sbc a                                            ; $71cf: $9f
	sub h                                            ; $71d0: $94
	sbc [hl]                                         ; $71d1: $9e
	ld [de], a                                       ; $71d2: $12
	ld h, c                                          ; $71d3: $61
	add b                                            ; $71d4: $80
	add b                                            ; $71d5: $80
	jr jr_022_717d                                   ; $71d6: $18 $a5

	nop                                              ; $71d8: $00
	ld d, d                                          ; $71d9: $52
	pop hl                                           ; $71da: $e1
	jp nz, $ae7b                                     ; $71db: $c2 $7b $ae

	add c                                            ; $71de: $81
	jr @+$3b                                         ; $71df: $18 $39

	add hl, sp                                       ; $71e1: $39
	dec [hl]                                         ; $71e2: $35
	ld l, d                                          ; $71e3: $6a
	ld d, d                                          ; $71e4: $52
	call nz, $09a5                                   ; $71e5: $c4 $a5 $09
	ld [$0850], sp                                   ; $71e8: $08 $50 $08
	ld de, $2321                                     ; $71eb: $11 $21 $23
	ld b, d                                          ; $71ee: $42
	add $c6                                          ; $71ef: $c6 $c6
	adc [hl]                                         ; $71f1: $8e
	ld l, h                                          ; $71f2: $6c
	inc l                                            ; $71f3: $2c
	and [hl]                                         ; $71f4: $a6
	add [hl]                                         ; $71f5: $86
	ld [bc], a                                       ; $71f6: $02
	ld [bc], a                                       ; $71f7: $02
	ld d, b                                          ; $71f8: $50
	ld d, b                                          ; $71f9: $50
	sub e                                            ; $71fa: $93
	sub e                                            ; $71fb: $93
	ld de, $31de                                     ; $71fc: $11 $de $31
	rst SubAFromDE                                          ; $71ff: $df
	ld hl, $657f                                     ; $7200: $21 $7f $65
	add c                                            ; $7203: $81
	jr jr_022_719f                                   ; $7204: $18 $99

	adc l                                            ; $7206: $8d
	call z, Call_022_46ce                            ; $7207: $cc $ce $46
	rst $38                                          ; $720a: $ff
	rst AddAOntoHL                                          ; $720b: $ef
	rst SubAFromBC                                          ; $720c: $e7
	ld h, [hl]                                       ; $720d: $66
	ld [hl], d                                       ; $720e: $72
	inc sp                                           ; $720f: $33
	ld sp, $00b9                                     ; $7210: $31 $b9 $00
	nop                                              ; $7213: $00
	ld b, b                                          ; $7214: $40
	jr nz, jr_022_724b                               ; $7215: $20 $34

	sub [hl]                                         ; $7217: $96
	sub [hl]                                         ; $7218: $96
	jp nc, $fce0                                     ; $7219: $d2 $e0 $fc

	cp a                                             ; $721c: $bf
	rst SubAFromDE                                          ; $721d: $df
	bit 5, c                                         ; $721e: $cb $69
	ld l, c                                          ; $7220: $69
	dec l                                            ; $7221: $2d
	halt                                             ; $7222: $76
	or l                                             ; $7223: $b5
	db $dd                                           ; $7224: $dd
	jr nz, jr_022_729e                               ; $7225: $20 $77

	ld e, l                                          ; $7227: $5d
	db $dd                                           ; $7228: $dd
	ldh [rHDMA2], a                                  ; $7229: $e0 $52
	and d                                            ; $722b: $a2
	ld h, a                                          ; $722c: $67
	nop                                              ; $722d: $00
	sbc l                                            ; $722e: $9d
	ld a, a                                          ; $722f: $7f
	rra                                              ; $7230: $1f
	ld h, e                                          ; $7231: $63
	db $ed                                           ; $7232: $ed
	ld [bc], a                                       ; $7233: $02
	ret nc                                           ; $7234: $d0

jr_022_7235:
	dec sp                                           ; $7235: $3b
	ldh a, [$de]                                     ; $7236: $f0 $de
	cp $7e                                           ; $7238: $fe $7e
	ld hl, sp+$66                                    ; $723a: $f8 $66
	ld c, a                                          ; $723c: $4f
	ld d, [hl]                                       ; $723d: $56
	ld sp, hl                                        ; $723e: $f9
	ld a, b                                          ; $723f: $78
	ld e, h                                          ; $7240: $5c
	ld l, l                                          ; $7241: $6d
	sub d                                            ; $7242: $92
	rst $38                                          ; $7243: $ff
	ld l, l                                          ; $7244: $6d
	sub d                                            ; $7245: $92
	rst SubAFromDE                                          ; $7246: $df
	rst $38                                          ; $7247: $ff
	rst SubAFromDE                                          ; $7248: $df
	inc b                                            ; $7249: $04
	ld a, c                                          ; $724a: $79

jr_022_724b:
	sub c                                            ; $724b: $91
	ld a, b                                          ; $724c: $78
	ld e, e                                          ; $724d: $5b
	rst SubAFromDE                                          ; $724e: $df
	ld hl, sp+$7a                                    ; $724f: $f8 $7a
	sub a                                            ; $7251: $97
	ld e, d                                          ; $7252: $5a
	sbc b                                            ; $7253: $98
	ld d, e                                          ; $7254: $53
	jp z, $6b79                                      ; $7255: $ca $79 $6b

	ld l, a                                          ; $7258: $6f
	jp nz, $8c7e                                     ; $7259: $c2 $7e $8c

	sub a                                            ; $725c: $97
	ld c, d                                          ; $725d: $4a
	adc d                                            ; $725e: $8a
	adc a                                            ; $725f: $8f
	rra                                              ; $7260: $1f
	dec de                                           ; $7261: $1b
	ld [hl], $ab                                     ; $7262: $36 $ab
	db $e3                                           ; $7264: $e3
	ld [hl], a                                       ; $7265: $77
	jp $f280                                         ; $7266: $c3 $80 $f2


	db $e3                                           ; $7269: $e3
	ld h, a                                          ; $726a: $67
	ld l, [hl]                                       ; $726b: $6e
	jp nc, $fbf3                                     ; $726c: $d2 $f3 $fb

	ei                                               ; $726f: $fb
	rst $38                                          ; $7270: $ff
	rst $38                                          ; $7271: $ff
	ld e, a                                          ; $7272: $5f
	rst $38                                          ; $7273: $ff
	cp a                                             ; $7274: $bf
	cp a                                             ; $7275: $bf
	ld c, $0e                                        ; $7276: $0e $0e
	inc c                                            ; $7278: $0c
	inc b                                            ; $7279: $04
	cp a                                             ; $727a: $bf
	rst $38                                          ; $727b: $ff
	rst SubAFromBC                                          ; $727c: $e7
	adc a                                            ; $727d: $8f
	adc a                                            ; $727e: $8f
	db $db                                           ; $727f: $db
	rst SubAFromDE                                          ; $7280: $df
	rst SubAFromDE                                          ; $7281: $df
	ld a, [hl]                                       ; $7282: $7e
	cp [hl]                                          ; $7283: $be
	sbc [hl]                                         ; $7284: $9e
	ld a, [$91fa]                                    ; $7285: $fa $fa $91
	ld a, [hl]                                       ; $7288: $7e
	halt                                             ; $7289: $76
	ld [hl], d                                       ; $728a: $72
	and e                                            ; $728b: $a3
	db $e3                                           ; $728c: $e3
	ld e, b                                          ; $728d: $58
	sbc h                                            ; $728e: $9c
	sbc h                                            ; $728f: $9c
	xor l                                            ; $7290: $ad
	dec l                                            ; $7291: $2d
	add hl, hl                                       ; $7292: $29
	add hl, hl                                       ; $7293: $29
	ld l, c                                          ; $7294: $69
	inc sp                                           ; $7295: $33
	sbc $73                                          ; $7296: $de $73
	sbc [hl]                                         ; $7298: $9e
	di                                               ; $7299: $f3
	sbc $f7                                          ; $729a: $de $f7
	add b                                            ; $729c: $80
	ret nc                                           ; $729d: $d0

jr_022_729e:
	or d                                             ; $729e: $b2
	and [hl]                                         ; $729f: $a6
	ld h, $46                                        ; $72a0: $26 $46
	ld c, [hl]                                       ; $72a2: $4e
	rrca                                             ; $72a3: $0f
	rrca                                             ; $72a4: $0f
	adc [hl]                                         ; $72a5: $8e
	adc h                                            ; $72a6: $8c
	sbc h                                            ; $72a7: $9c
	sbc h                                            ; $72a8: $9c
	cp h                                             ; $72a9: $bc
	cp h                                             ; $72aa: $bc
	db $fc                                           ; $72ab: $fc
	db $fc                                           ; $72ac: $fc
	ld d, b                                          ; $72ad: $50
	ld d, d                                          ; $72ae: $52
	ld [de], a                                       ; $72af: $12
	sub [hl]                                         ; $72b0: $96
	or h                                             ; $72b1: $b4
	or h                                             ; $72b2: $b4
	inc [hl]                                         ; $72b3: $34
	inc [hl]                                         ; $72b4: $34
	ld hl, $6121                                     ; $72b5: $21 $21 $61
	ld h, c                                          ; $72b8: $61
	ld h, e                                          ; $72b9: $63
	ld h, e                                          ; $72ba: $63
	db $e3                                           ; $72bb: $e3
	sbc l                                            ; $72bc: $9d
	db $e3                                           ; $72bd: $e3
	ld l, [hl]                                       ; $72be: $6e
	db $dd                                           ; $72bf: $dd
	rst AddAOntoHL                                          ; $72c0: $ef
	sbc $cf                                          ; $72c1: $de $cf
	sbc [hl]                                         ; $72c3: $9e
	sbc c                                            ; $72c4: $99
	db $dd                                           ; $72c5: $dd
	sbc b                                            ; $72c6: $98
	sbc $b8                                          ; $72c7: $de $b8
	sbc l                                            ; $72c9: $9d
	jp z, $de4a                                      ; $72ca: $ca $4a $de

	ld l, d                                          ; $72cd: $6a
	sbc $70                                          ; $72ce: $de $70
	sbc l                                            ; $72d0: $9d
	dec [hl]                                         ; $72d1: $35
	or l                                             ; $72d2: $b5
	sbc $95                                          ; $72d3: $de $95
	sbc $9f                                          ; $72d5: $de $9f
	jp c, $9e20                                      ; $72d7: $da $20 $9e

	ld b, b                                          ; $72da: $40
	jp c, $96e0                                      ; $72db: $da $e0 $96

	ret nz                                           ; $72de: $c0

	dec d                                            ; $72df: $15
	dec bc                                           ; $72e0: $0b
	rla                                              ; $72e1: $17
	ld l, $1c                                        ; $72e2: $2e $1c
	ld a, [hl+]                                      ; $72e4: $2a
	ld e, l                                          ; $72e5: $5d
	cp d                                             ; $72e6: $ba
	ld [hl], a                                       ; $72e7: $77
	ld h, b                                          ; $72e8: $60
	adc [hl]                                         ; $72e9: $8e
	inc bc                                           ; $72ea: $03
	dec b                                            ; $72eb: $05
	ld [bc], a                                       ; $72ec: $02
	dec b                                            ; $72ed: $05
	ret nz                                           ; $72ee: $c0

	or b                                             ; $72ef: $b0
	inc e                                            ; $72f0: $1c
	ld l, $5a                                        ; $72f1: $2e $5a
	or h                                             ; $72f3: $b4
	ld l, b                                          ; $72f4: $68
	call nc, Call_022_4000                           ; $72f5: $d4 $00 $40
	ldh [$d0], a                                     ; $72f8: $e0 $d0
	and b                                            ; $72fa: $a0
	ld a, c                                          ; $72fb: $79
	push af                                          ; $72fc: $f5
	ld e, d                                          ; $72fd: $5a
	or l                                             ; $72fe: $b5
	ld h, d                                          ; $72ff: $62
	ldh [$57], a                                     ; $7300: $e0 $57
	db $ed                                           ; $7302: $ed
	ld b, [hl]                                       ; $7303: $46
	ret nz                                           ; $7304: $c0

	ld a, b                                          ; $7305: $78
	ld d, l                                          ; $7306: $55
	ld h, b                                          ; $7307: $60
	adc b                                            ; $7308: $88
	ld [hl], a                                       ; $7309: $77
	rrca                                             ; $730a: $0f
	adc a                                            ; $730b: $8f
	inc b                                            ; $730c: $04
	ld l, c                                          ; $730d: $69
	sub d                                            ; $730e: $92
	ld [de], a                                       ; $730f: $12
	inc hl                                           ; $7310: $23
	ld [hl+], a                                      ; $7311: $22
	ld b, d                                          ; $7312: $42
	ld b, d                                          ; $7313: $42
	inc bc                                           ; $7314: $03
	ld b, $6c                                        ; $7315: $06 $6c
	db $ec                                           ; $7317: $ec
	call c, $bcdc                                    ; $7318: $dc $dc $bc
	cp h                                             ; $731b: $bc
	ld a, d                                          ; $731c: $7a
	ld sp, $c273                                     ; $731d: $31 $73 $c2
	sbc h                                            ; $7320: $9c
	rst $38                                          ; $7321: $ff
	ccf                                              ; $7322: $3f
	rra                                              ; $7323: $1f
	ld [hl], e                                       ; $7324: $73
	call c, $9d7f                                    ; $7325: $dc $7f $9d
	ld a, d                                          ; $7328: $7a
	call Call_022_409c                               ; $7329: $cd $9c $40
	ld h, b                                          ; $732c: $60
	jr nz, jr_022_73a1                               ; $732d: $20 $72

	rst JumpTable                                          ; $732f: $c7
	ld a, a                                          ; $7330: $7f
	ei                                               ; $7331: $fb
	ld a, [hl]                                       ; $7332: $7e
	and d                                            ; $7333: $a2
	ldh a, [c]                                       ; $7334: $f2
	add b                                            ; $7335: $80
	dec b                                            ; $7336: $05
	add hl, bc                                       ; $7337: $09
	dec c                                            ; $7338: $0d
	dec e                                            ; $7339: $1d
	ld a, [hl+]                                      ; $733a: $2a
	ld e, e                                          ; $733b: $5b
	ld [hl], l                                       ; $733c: $75
	or $06                                           ; $733d: $f6 $06
	ld c, $0a                                        ; $733f: $0e $0a
	ld [de], a                                       ; $7341: $12
	dec [hl]                                         ; $7342: $35
	ld h, l                                          ; $7343: $65
	ld c, e                                          ; $7344: $4b
	adc e                                            ; $7345: $8b
	ld h, a                                          ; $7346: $67
	ld l, e                                          ; $7347: $6b
	and e                                            ; $7348: $a3
	or a                                             ; $7349: $b7
	or l                                             ; $734a: $b5
	inc e                                            ; $734b: $1c
	sbc h                                            ; $734c: $9c
	adc h                                            ; $734d: $8c
	ldh [c], a                                       ; $734e: $e2
	and $ee                                          ; $734f: $e6 $ee
	xor $e6                                          ; $7351: $ee $e6
	db $f4                                           ; $7353: $f4
	ld [hl], h                                       ; $7354: $74
	sub e                                            ; $7355: $93
	ld a, h                                          ; $7356: $7c
	pop af                                           ; $7357: $f1
	nop                                              ; $7358: $00
	sub c                                            ; $7359: $91
	cp a                                             ; $735a: $bf
	xor [hl]                                         ; $735b: $ae
	adc h                                            ; $735c: $8c
	ld h, c                                          ; $735d: $61
	inc [hl]                                         ; $735e: $34
	ret c                                            ; $735f: $d8

	sub b                                            ; $7360: $90
	inc de                                           ; $7361: $13
	sbc $3f                                          ; $7362: $de $3f
	sub d                                            ; $7364: $92
	add hl, sp                                       ; $7365: $39
	inc e                                            ; $7366: $1c
	cp $6f                                           ; $7367: $fe $6f
	rst AddAOntoHL                                          ; $7369: $ef
	sbc a                                            ; $736a: $9f
	sbc a                                            ; $736b: $9f
	ccf                                              ; $736c: $3f
	ld bc, $e300                                     ; $736d: $01 $00 $e3
	pop af                                           ; $7370: $f1
	or c                                             ; $7371: $b1
	ld [hl], d                                       ; $7372: $72
	ld b, l                                          ; $7373: $45

jr_022_7374:
	sbc c                                            ; $7374: $99
	ld d, c                                          ; $7375: $51
	ld [hl], c                                       ; $7376: $71
	ld [hl], c                                       ; $7377: $71
	ld sp, hl                                        ; $7378: $f9
	db $fd                                           ; $7379: $fd
	db $fd                                           ; $737a: $fd
	sbc $ff                                          ; $737b: $de $ff
	rst SubAFromDE                                          ; $737d: $df
	rst SubAFromDE                                          ; $737e: $df

Call_022_737f:
	sub b                                            ; $737f: $90
	rst GetHLinHL                                          ; $7380: $cf
	rst JumpTable                                          ; $7381: $c7
	ld h, a                                          ; $7382: $67
	inc hl                                           ; $7383: $23
	rlca                                             ; $7384: $07
	adc a                                            ; $7385: $8f
	adc l                                            ; $7386: $8d
	ld e, h                                          ; $7387: $5c
	ld d, h                                          ; $7388: $54
	ld e, [hl]                                       ; $7389: $5e
	ld a, [$f7fe]                                    ; $738a: $fa $fe $f7
	db $fc                                           ; $738d: $fc
	cp $de                                           ; $738e: $fe $de
	rst $38                                          ; $7390: $ff
	sbc e                                            ; $7391: $9b
	scf                                              ; $7392: $37
	inc sp                                           ; $7393: $33
	ld sp, hl                                        ; $7394: $f9
	jr c, jr_022_7374                                ; $7395: $38 $dd

	add hl, sp                                       ; $7397: $39
	sbc h                                            ; $7398: $9c
	ld a, [hl-]                                      ; $7399: $3a
	dec sp                                           ; $739a: $3b
	dec hl                                           ; $739b: $2b
	db $db                                           ; $739c: $db
	rst SubAFromBC                                          ; $739d: $e7
	adc d                                            ; $739e: $8a
	and $f6                                          ; $739f: $e6 $f6

jr_022_73a1:
	rst GetHLinHL                                          ; $73a1: $cf
	ld c, a                                          ; $73a2: $4f
	sub $9e                                          ; $73a3: $d6 $9e
	sbc h                                            ; $73a5: $9c
	xor h                                            ; $73a6: $ac
	jr c, jr_022_7401                                ; $73a7: $38 $58

	cp b                                             ; $73a9: $b8
	cp b                                             ; $73aa: $b8
	add hl, sp                                       ; $73ab: $39
	ld [hl], c                                       ; $73ac: $71
	ld [hl], e                                       ; $73ad: $73
	ld [hl], e                                       ; $73ae: $73
	rst SubAFromBC                                          ; $73af: $e7
	rst SubAFromBC                                          ; $73b0: $e7
	ld d, b                                          ; $73b1: $50
	ld d, b                                          ; $73b2: $50
	db $10                                           ; $73b3: $10
	ld a, d                                          ; $73b4: $7a
	ld hl, $609b                                     ; $73b5: $21 $9b $60
	ld h, c                                          ; $73b8: $61
	cp a                                             ; $73b9: $bf
	cp a                                             ; $73ba: $bf
	db $db                                           ; $73bb: $db
	rst $38                                          ; $73bc: $ff
	rst SubAFromDE                                          ; $73bd: $df
	ld b, b                                          ; $73be: $40
	sbc c                                            ; $73bf: $99
	ld b, c                                          ; $73c0: $41
	add d                                            ; $73c1: $82
	add c                                            ; $73c2: $81
	add d                                            ; $73c3: $82
	add l                                            ; $73c4: $85
	dec bc                                           ; $73c5: $0b
	sbc $c0                                          ; $73c6: $de $c0
	db $dd                                           ; $73c8: $dd
	add b                                            ; $73c9: $80
	add [hl]                                         ; $73ca: $86
	nop                                              ; $73cb: $00
	ld [hl], l                                       ; $73cc: $75
	db $eb                                           ; $73cd: $eb
	ld d, a                                          ; $73ce: $57
	db $eb                                           ; $73cf: $eb
	sub $ed                                          ; $73d0: $d6 $ed
	sbc $bd                                          ; $73d2: $de $bd
	ld a, [bc]                                       ; $73d4: $0a
	inc d                                            ; $73d5: $14
	jr z, @+$16                                      ; $73d6: $28 $14

	jr z, jr_022_73ea                                ; $73d8: $28 $10

	jr nz, @+$42                                     ; $73da: $20 $40

	xor b                                            ; $73dc: $a8
	ret nc                                           ; $73dd: $d0

	and c                                            ; $73de: $a1
	ld b, d                                          ; $73df: $42
	add l                                            ; $73e0: $85
	ld a, [bc]                                       ; $73e1: $0a
	sub l                                            ; $73e2: $95
	dec hl                                           ; $73e3: $2b
	ld l, b                                          ; $73e4: $68
	xor b                                            ; $73e5: $a8
	sub [hl]                                         ; $73e6: $96
	inc b                                            ; $73e7: $04
	ld d, b                                          ; $73e8: $50
	or b                                             ; $73e9: $b0

jr_022_73ea:
	ld [hl], b                                       ; $73ea: $70
	ldh [$e0], a                                     ; $73eb: $e0 $e0
	ret nc                                           ; $73ed: $d0

	ldh [$d0], a                                     ; $73ee: $e0 $d0
	dec [hl]                                         ; $73f0: $35
	jp hl                                            ; $73f1: $e9


	ld [hl], l                                       ; $73f2: $75
	ldh a, [$db]                                     ; $73f3: $f0 $db
	rst $38                                          ; $73f5: $ff
	rst SubAFromDE                                          ; $73f6: $df
	cp $f9                                           ; $73f7: $fe $f9

Call_022_73f9:
	ld [hl], a                                       ; $73f9: $77
	xor c                                            ; $73fa: $a9
	db $fd                                           ; $73fb: $fd
	ld [hl], b                                       ; $73fc: $70
	ld h, d                                          ; $73fd: $62
	rst SubAFromDE                                          ; $73fe: $df

Call_022_73ff:
	ld e, $81                                        ; $73ff: $1e $81

jr_022_7401:
	inc a                                            ; $7401: $3c
	add e                                            ; $7402: $83
	sbc e                                            ; $7403: $9b
	ld b, l                                          ; $7404: $45
	ld c, $73                                        ; $7405: $0e $73
	rst JumpTable                                          ; $7407: $c7
	inc a                                            ; $7408: $3c
	rra                                              ; $7409: $1f
	ld a, h                                          ; $740a: $7c
	ld h, h                                          ; $740b: $64
	add d                                            ; $740c: $82
	ld bc, $380c                                     ; $740d: $01 $0c $38
	nop                                              ; $7410: $00
	nop                                              ; $7411: $00
	add c                                            ; $7412: $81
	ldh a, [c]                                       ; $7413: $f2
	rst $38                                          ; $7414: $ff
	ld a, a                                          ; $7415: $7f
	add hl, sp                                       ; $7416: $39
	jp nz, $3e04                                     ; $7417: $c2 $04 $3e

	ld b, b                                          ; $741a: $40
	ld bc, $8000                                     ; $741b: $01 $00 $80
	add $75                                          ; $741e: $c6 $75
	xor d                                            ; $7420: $aa
	ld c, b                                          ; $7421: $48
	ld e, b                                          ; $7422: $58
	ld a, a                                          ; $7423: $7f
	adc l                                            ; $7424: $8d
	ld a, a                                          ; $7425: $7f
	add $80                                          ; $7426: $c6 $80
	ld a, [bc]                                       ; $7428: $0a
	dec c                                            ; $7429: $0d
	ld [de], a                                       ; $742a: $12
	dec d                                            ; $742b: $15
	ld bc, $0203                                     ; $742c: $01 $03 $02
	inc b                                            ; $742f: $04
	dec c                                            ; $7430: $0d
	ld a, [bc]                                       ; $7431: $0a
	dec e                                            ; $7432: $1d
	rra                                              ; $7433: $1f
	rst AddAOntoHL                                          ; $7434: $ef
	db $dd                                           ; $7435: $dd
	or a                                             ; $7436: $b7
	ld a, d                                          ; $7437: $7a
	rst AddAOntoHL                                          ; $7438: $ef
	ld [hl], l                                       ; $7439: $75
	sbc $6b                                          ; $743a: $de $6b
	ld [de], a                                       ; $743c: $12
	ld [hl], $6c                                     ; $743d: $36 $6c
	xor l                                            ; $743f: $ad
	ld e, c                                          ; $7440: $59
	db $db                                           ; $7441: $db
	or e                                             ; $7442: $b3
	or [hl]                                          ; $7443: $b6
	adc b                                            ; $7444: $88
	ld [$9e18], sp                                   ; $7445: $08 $18 $9e
	sbc b                                            ; $7448: $98
	sbc $a8                                          ; $7449: $de $a8
	sbc e                                            ; $744b: $9b
	ld b, [hl]                                       ; $744c: $46
	ld a, h                                          ; $744d: $7c
	db $fc                                           ; $744e: $fc
	db $fc                                           ; $744f: $fc
	db $dd                                           ; $7450: $dd
	ld a, h                                          ; $7451: $7c
	sbc d                                            ; $7452: $9a
	db $fc                                           ; $7453: $fc
	rlca                                             ; $7454: $07
	ld [hl], b                                       ; $7455: $70
	inc a                                            ; $7456: $3c
	ld c, $f2                                        ; $7457: $0e $f2
	sbc d                                            ; $7459: $9a
	inc b                                            ; $745a: $04
	inc c                                            ; $745b: $0c
	ld e, $1e                                        ; $745c: $1e $1e
	ld l, $fb                                        ; $745e: $2e $fb
	sbc d                                            ; $7460: $9a
	jr nz, jr_022_7493                               ; $7461: $20 $30

	db $fd                                           ; $7463: $fd
	ld a, b                                          ; $7464: $78
	jr c, jr_022_74e0                                ; $7465: $38 $79

	ld b, b                                          ; $7467: $40
	sbc h                                            ; $7468: $9c
	nop                                              ; $7469: $00
	ld [bc], a                                       ; $746a: $02
	inc bc                                           ; $746b: $03
	ld l, a                                          ; $746c: $6f
	ld d, b                                          ; $746d: $50
	add b                                            ; $746e: $80
	inc bc                                           ; $746f: $03
	ei                                               ; $7470: $fb
	call $0e07                                       ; $7471: $cd $07 $0e
	rst $38                                          ; $7474: $ff
	db $fd                                           ; $7475: $fd
	ld l, c                                          ; $7476: $69
	ld b, e                                          ; $7477: $43
	db $fd                                           ; $7478: $fd
	sbc [hl]                                         ; $7479: $9e
	ld c, $1f                                        ; $747a: $0e $1f
	rst $38                                          ; $747c: $ff
	rst $38                                          ; $747d: $ff
	ei                                               ; $747e: $fb
	add b                                            ; $747f: $80
	dec l                                            ; $7480: $2d
	or [hl]                                          ; $7481: $b6
	or $f9                                           ; $7482: $f6 $f9
	ldh a, [c]                                       ; $7484: $f2
	ld a, h                                          ; $7485: $7c
	sub c                                            ; $7486: $91
	di                                               ; $7487: $f3
	or $fd                                           ; $7488: $f6 $fd
	db $fd                                           ; $748a: $fd
	ld a, a                                          ; $748b: $7f
	ld a, a                                          ; $748c: $7f
	cp a                                             ; $748d: $bf
	sub e                                            ; $748e: $93
	rst $38                                          ; $748f: $ff
	ld e, $70                                        ; $7490: $1e $70
	and c                                            ; $7492: $a1

jr_022_7493:
	jp $1c06                                         ; $7493: $c3 $06 $1c


	inc a                                            ; $7496: $3c
	ld sp, hl                                        ; $7497: $f9
	cp c                                             ; $7498: $b9
	rst GetHLinHL                                          ; $7499: $cf
	rst SubAFromDE                                          ; $749a: $df
	ld [hl], d                                       ; $749b: $72
	rst GetHLinHL                                          ; $749c: $cf
	sub [hl]                                         ; $749d: $96
	ld a, a                                          ; $749e: $7f
	pop bc                                           ; $749f: $c1
	jp nz, $84c2                                     ; $74a0: $c2 $c2 $84

	add h                                            ; $74a3: $84
	adc b                                            ; $74a4: $88
	ld [$7b10], sp                                   ; $74a5: $08 $10 $7b
	dec e                                            ; $74a8: $1d
	rst SubAFromDE                                          ; $74a9: $df
	db $fc                                           ; $74aa: $fc
	ld a, c                                          ; $74ab: $79
	db $e4                                           ; $74ac: $e4
	ld a, a                                          ; $74ad: $7f
	ld a, [hl+]                                      ; $74ae: $2a
	sbc c                                            ; $74af: $99
	rra                                              ; $74b0: $1f
	cpl                                              ; $74b1: $2f
	rra                                              ; $74b2: $1f
	ccf                                              ; $74b3: $3f
	ld e, a                                          ; $74b4: $5f
	ccf                                              ; $74b5: $3f
	ld sp, hl                                        ; $74b6: $f9
	sub a                                            ; $74b7: $97
	ld a, [$f8f4]                                    ; $74b8: $fa $f4 $f8
	ldh a, [$e1]                                     ; $74bb: $f0 $e1
	jp nz, $82c5                                     ; $74bd: $c2 $c5 $82

	ld sp, hl                                        ; $74c0: $f9
	adc a                                            ; $74c1: $8f
	ld d, l                                          ; $74c2: $55
	dec hl                                           ; $74c3: $2b
	ld d, e                                          ; $74c4: $53
	and a                                            ; $74c5: $a7
	ld b, a                                          ; $74c6: $47
	xor a                                            ; $74c7: $af
	ld c, d                                          ; $74c8: $4a
	sub l                                            ; $74c9: $95
	ld a, [bc]                                       ; $74ca: $0a
	inc d                                            ; $74cb: $14
	inc l                                            ; $74cc: $2c
	jr jr_022_7507                                   ; $74cd: $18 $38

	ld d, b                                          ; $74cf: $50
	or b                                             ; $74d0: $b0
	ld h, b                                          ; $74d1: $60
	ld a, c                                          ; $74d2: $79
	ld a, h                                          ; $74d3: $7c
	ld a, c                                          ; $74d4: $79
	ld a, d                                          ; $74d5: $7a
	ld d, d                                          ; $74d6: $52
	ret                                              ; $74d7: $c9


	sbc [hl]                                         ; $74d8: $9e
	inc de                                           ; $74d9: $13
	ld a, d                                          ; $74da: $7a
	ret                                              ; $74db: $c9


	rst SubAFromDE                                          ; $74dc: $df
	rlca                                             ; $74dd: $07
	ld a, b                                          ; $74de: $78
	pop de                                           ; $74df: $d1

jr_022_74e0:
	rst SubAFromDE                                          ; $74e0: $df
	inc e                                            ; $74e1: $1c
	rst SubAFromDE                                          ; $74e2: $df
	jr c, jr_022_751f                                ; $74e3: $38 $3a

	nop                                              ; $74e5: $00
	rst SubAFromDE                                          ; $74e6: $df
	ld de, $159d                                     ; $74e7: $11 $9d $15
	ld d, c                                          ; $74ea: $51
	reti                                             ; $74eb: $d9


	ld de, $049c                                     ; $74ec: $11 $9c $04
	ld b, c                                          ; $74ef: $41
	ld sp, $11da                                     ; $74f0: $31 $da $11
	sbc e                                            ; $74f3: $9b
	ld b, h                                          ; $74f4: $44
	ld b, b                                          ; $74f5: $40
	nop                                              ; $74f6: $00
	inc sp                                           ; $74f7: $33
	call c, $9d11                                    ; $74f8: $dc $11 $9d
	inc d                                            ; $74fb: $14
	ld b, h                                          ; $74fc: $44
	cp $9e                                           ; $74fd: $fe $9e
	inc sp                                           ; $74ff: $33
	ld [hl], a                                       ; $7500: $77
	jp hl                                            ; $7501: $e9


	ld [hl], e                                       ; $7502: $73
	or $9d                                           ; $7503: $f6 $9d
	nop                                              ; $7505: $00
	inc bc                                           ; $7506: $03

jr_022_7507:
	sbc $11                                          ; $7507: $de $11
	sbc l                                            ; $7509: $9d
	ld d, h                                          ; $750a: $54
	ld b, b                                          ; $750b: $40
	db $fc                                           ; $750c: $fc
	sbc h                                            ; $750d: $9c
	ld b, h                                          ; $750e: $44
	ld de, $7b15                                     ; $750f: $11 $15 $7b
	reti                                             ; $7512: $d9


	cp $9c                                           ; $7513: $fe $9c
	rlca                                             ; $7515: $07
	ld b, h                                          ; $7516: $44
	ld b, c                                          ; $7517: $41
	ld l, e                                          ; $7518: $6b
	or $9c                                           ; $7519: $f6 $9c
	inc b                                            ; $751b: $04
	ld b, h                                          ; $751c: $44
	ld b, c                                          ; $751d: $41
	sbc d                                            ; $751e: $9a

jr_022_751f:
	rlca                                             ; $751f: $07
	sbc h                                            ; $7520: $9c
	cp $00                                           ; $7521: $fe $00
	db $fc                                           ; $7523: $fc
	ld a, e                                          ; $7524: $7b
	cp $9e                                           ; $7525: $fe $9e
	ld hl, sp+$7b                                    ; $7527: $f8 $7b
	cp $80                                           ; $7529: $fe $80
	ldh a, [rP1]                                     ; $752b: $f0 $00
	pop af                                           ; $752d: $f1
	nop                                              ; $752e: $00
	ldh a, [rSB]                                     ; $752f: $f0 $01
	ld a, [bc]                                       ; $7531: $0a
	inc a                                            ; $7532: $3c
	rra                                              ; $7533: $1f
	inc a                                            ; $7534: $3c
	ld e, l                                          ; $7535: $5d
	ld a, $08                                        ; $7536: $3e $08
	ld [hl], a                                       ; $7538: $77
	add l                                            ; $7539: $85
	ld a, b                                          ; $753a: $78
	inc bc                                           ; $753b: $03
	db $fc                                           ; $753c: $fc
	nop                                              ; $753d: $00
	rst $38                                          ; $753e: $ff
	nop                                              ; $753f: $00
	rst $38                                          ; $7540: $ff
	rra                                              ; $7541: $1f
	nop                                              ; $7542: $00
	sub a                                            ; $7543: $97
	ld [$04fb], sp                                   ; $7544: $08 $fb $04
	ld hl, sp+$07                                    ; $7547: $f8 $07
	sbc [hl]                                         ; $7549: $9e
	add b                                            ; $754a: $80
	ld a, a                                          ; $754b: $7f
	cpl                                              ; $754c: $2f
	rra                                              ; $754d: $1f
	ld h, l                                          ; $754e: $65
	add e                                            ; $754f: $83
	add hl, de                                       ; $7550: $19
	ldh [rIE], a                                     ; $7551: $e0 $ff
	nop                                              ; $7553: $00
	call z, Call_022_7030                            ; $7554: $cc $30 $70
	add b                                            ; $7557: $80
	ret nz                                           ; $7558: $c0

	nop                                              ; $7559: $00
	ret nz                                           ; $755a: $c0

	nop                                              ; $755b: $00
	ld b, c                                          ; $755c: $41
	add b                                            ; $755d: $80
	or d                                             ; $755e: $b2
	pop bc                                           ; $755f: $c1
	ld [hl], c                                       ; $7560: $71
	cp $60                                           ; $7561: $fe $60
	nop                                              ; $7563: $00
	rst $38                                          ; $7564: $ff
	inc bc                                           ; $7565: $03
	xor [hl]                                         ; $7566: $ae
	ld e, h                                          ; $7567: $5c
	ld e, b                                          ; $7568: $58
	or b                                             ; $7569: $b0
	add b                                            ; $756a: $80
	or b                                             ; $756b: $b0
	ld h, b                                          ; $756c: $60
	ld h, b                                          ; $756d: $60
	ret nz                                           ; $756e: $c0

	pop bc                                           ; $756f: $c1
	ld b, c                                          ; $7570: $41
	jp nz, $ff83                                     ; $7571: $c2 $83 $ff

	rst $38                                          ; $7574: $ff
	adc a                                            ; $7575: $8f
	ld b, $1e                                        ; $7576: $06 $1e
	dec c                                            ; $7578: $0d
	dec [hl]                                         ; $7579: $35
	dec de                                           ; $757a: $1b
	ld h, e                                          ; $757b: $63
	ccf                                              ; $757c: $3f
	rst GetHLinHL                                          ; $757d: $cf
	ld a, a                                          ; $757e: $7f
	cp a                                             ; $757f: $bf
	ldh a, [c]                                       ; $7580: $f2
	ld a, [hl]                                       ; $7581: $7e
	push bc                                          ; $7582: $c5
	cp l                                             ; $7583: $bd
	ld h, [hl]                                       ; $7584: $66
	ld d, a                                          ; $7585: $57
	db $ec                                           ; $7586: $ec
	ld a, d                                          ; $7587: $7a
	call $82a8                                       ; $7588: $cd $a8 $82
	db $dd                                           ; $758b: $dd
	ld e, h                                          ; $758c: $5c
	cp c                                             ; $758d: $b9
	or h                                             ; $758e: $b4
	ld a, c                                          ; $758f: $79
	ld d, d                                          ; $7590: $52
	ld sp, hl                                        ; $7591: $f9
	sbc c                                            ; $7592: $99
	ldh a, [c]                                       ; $7593: $f2
	ld b, [hl]                                       ; $7594: $46
	db $fc                                           ; $7595: $fc
	ld c, h                                          ; $7596: $4c
	cp $8b                                           ; $7597: $fe $8b
	cp $d6                                           ; $7599: $fe $d6

Jump_022_759b:
	cp e                                             ; $759b: $bb
	ld d, a                                          ; $759c: $57
	cp c                                             ; $759d: $b9
	sbc [hl]                                         ; $759e: $9e
	ld [hl], c                                       ; $759f: $71
	cp [hl]                                          ; $75a0: $be
	ld [hl], c                                       ; $75a1: $71
	ld a, [hl]                                       ; $75a2: $7e
	pop af                                           ; $75a3: $f1
	nop                                              ; $75a4: $00
	nop                                              ; $75a5: $00
	ld bc, $7b01                                     ; $75a6: $01 $01 $7b
	db $fd                                           ; $75a9: $fd
	adc c                                            ; $75aa: $89
	ld bc, $0181                                     ; $75ab: $01 $81 $01
	add c                                            ; $75ae: $81
	add b                                            ; $75af: $80
	ret nz                                           ; $75b0: $c0

	add b                                            ; $75b1: $80
	jp nz, $3440                                     ; $75b2: $c2 $40 $34

	jr c, @+$42                                      ; $75b5: $38 $40

	add b                                            ; $75b7: $80
	nop                                              ; $75b8: $00
	jr nz, jr_022_75bb                               ; $75b9: $20 $00

jr_022_75bb:
	sub b                                            ; $75bb: $90
	ret c                                            ; $75bc: $d8

	ld hl, sp-$18                                    ; $75bd: $f8 $e8
	ldh a, [$60]                                     ; $75bf: $f0 $60
	cp $98                                           ; $75c1: $fe $98
	add hl, de                                       ; $75c3: $19
	ld bc, $000e                                     ; $75c4: $01 $0e $00
	rlca                                             ; $75c7: $07
	nop                                              ; $75c8: $00
	ld bc, $7ffe                                     ; $75c9: $01 $fe $7f
	db $fc                                           ; $75cc: $fc
	sbc [hl]                                         ; $75cd: $9e
	inc bc                                           ; $75ce: $03
	ld a, e                                          ; $75cf: $7b
	or $9a                                           ; $75d0: $f6 $9a
	daa                                              ; $75d2: $27
	ldh [$6f], a                                     ; $75d3: $e0 $6f
	nop                                              ; $75d5: $00
	sbc a                                            ; $75d6: $9f
	ld a, e                                          ; $75d7: $7b
	ld h, a                                          ; $75d8: $67
	add b                                            ; $75d9: $80
	ld a, [hl]                                       ; $75da: $7e
	ld bc, $03fd                                     ; $75db: $01 $fd $03
	ei                                               ; $75de: $fb
	inc b                                            ; $75df: $04
	pop af                                           ; $75e0: $f1
	ld c, $e2                                        ; $75e1: $0e $e2
	ccf                                              ; $75e3: $3f
	and a                                            ; $75e4: $a7
	ld a, a                                          ; $75e5: $7f
	jp z, $9f7f                                      ; $75e6: $ca $7f $9f

	ldh a, [$be]                                     ; $75e9: $f0 $be
	db $fd                                           ; $75eb: $fd
	ld l, l                                          ; $75ec: $6d
	di                                               ; $75ed: $f3
	ei                                               ; $75ee: $fb
	rlca                                             ; $75ef: $07
	rst GetHLinHL                                          ; $75f0: $cf
	ccf                                              ; $75f1: $3f
	pop af                                           ; $75f2: $f1
	ccf                                              ; $75f3: $3f
	or e                                             ; $75f4: $b3
	ld a, a                                          ; $75f5: $7f
	jp nc, Jump_022_527f                             ; $75f6: $d2 $7f $52

	sbc l                                            ; $75f9: $9d
	rst $38                                          ; $75fa: $ff
	and d                                            ; $75fb: $a2
	ld a, e                                          ; $75fc: $7b
	cp $8a                                           ; $75fd: $fe $8a
	and h                                            ; $75ff: $a4
	rst $38                                          ; $7600: $ff
	inc h                                            ; $7601: $24
	rst $38                                          ; $7602: $ff
	db $10                                           ; $7603: $10
	ldh a, [rAUD4LEN]                                ; $7604: $f0 $20
	ldh [rAUD4LEN], a                                ; $7606: $e0 $20
	ldh [rLCDC], a                                   ; $7608: $e0 $40
	ret nz                                           ; $760a: $c0

	ld b, c                                          ; $760b: $41
	ret nz                                           ; $760c: $c0

	add b                                            ; $760d: $80
	add b                                            ; $760e: $80
	add c                                            ; $760f: $81
	add b                                            ; $7610: $80
	add d                                            ; $7611: $82
	add b                                            ; $7612: $80
	ld a, a                                          ; $7613: $7f
	ld a, e                                          ; $7614: $7b
	call nz, $fc7f                                   ; $7615: $c4 $7f $fc
	ld a, a                                          ; $7618: $7f
	ld a, [bc]                                       ; $7619: $0a
	sbc [hl]                                         ; $761a: $9e
	ld a, [hl]                                       ; $761b: $7e
	ld a, e                                          ; $761c: $7b
	ld a, [bc]                                       ; $761d: $0a
	add [hl]                                         ; $761e: $86
	db $fd                                           ; $761f: $fd
	nop                                              ; $7620: $00
	ld a, [$8500]                                    ; $7621: $fa $00 $85
	nop                                              ; $7624: $00
	ld a, [bc]                                       ; $7625: $0a
	ld bc, $0215                                     ; $7626: $01 $15 $02
	ld a, [hl+]                                      ; $7629: $2a
	ld bc, $0354                                     ; $762a: $01 $54 $03
	xor b                                            ; $762d: $a8
	rlca                                             ; $762e: $07
	ld d, b                                          ; $762f: $50
	rrca                                             ; $7630: $0f
	xor b                                            ; $7631: $a8
	rla                                              ; $7632: $17
	ld a, [de]                                       ; $7633: $1a
	ldh [$34], a                                     ; $7634: $e0 $34
	ret nz                                           ; $7636: $c0

	ld a, [bc]                                       ; $7637: $0a
	ld a, e                                          ; $7638: $7b
	db $fc                                           ; $7639: $fc
	sub a                                            ; $763a: $97
	ld l, d                                          ; $763b: $6a
	add b                                            ; $763c: $80
	sub h                                            ; $763d: $94
	ld b, b                                          ; $763e: $40
	ld l, e                                          ; $763f: $6b
	add b                                            ; $7640: $80
	sbc a                                            ; $7641: $9f
	ld b, b                                          ; $7642: $40
	ei                                               ; $7643: $fb
	sbc h                                            ; $7644: $9c
	ld [$3800], sp                                   ; $7645: $08 $00 $38
	ld a, d                                          ; $7648: $7a
	db $e4                                           ; $7649: $e4
	sub l                                            ; $764a: $95
	ldh [rSB], a                                     ; $764b: $e0 $01
	ret nz                                           ; $764d: $c0

	inc bc                                           ; $764e: $03
	rrca                                             ; $764f: $0f
	ld [hl], b                                       ; $7650: $70
	rrca                                             ; $7651: $0f
	ld [hl], b                                       ; $7652: $70
	rra                                              ; $7653: $1f
	ldh [rPCM34], a                                  ; $7654: $e0 $77
	cp $8c                                           ; $7656: $fe $8c
	ccf                                              ; $7658: $3f
	ret nz                                           ; $7659: $c0

	ccf                                              ; $765a: $3f
	ret nz                                           ; $765b: $c0

	ld a, a                                          ; $765c: $7f
	add b                                            ; $765d: $80
	ldh [rSB], a                                     ; $765e: $e0 $01
	ldh [$03], a                                     ; $7660: $e0 $03
	ret nz                                           ; $7662: $c0

	inc bc                                           ; $7663: $03
	ret nz                                           ; $7664: $c0

	rlca                                             ; $7665: $07
	add [hl]                                         ; $7666: $86
	rlca                                             ; $7667: $07
	add e                                            ; $7668: $83
	rrca                                             ; $7669: $0f

Call_022_766a:
jr_022_766a:
	inc c                                            ; $766a: $0c
	sbc $0f                                          ; $766b: $de $0f
	halt                                             ; $766d: $76
	call z, $fe77                                    ; $766e: $cc $77 $fe
	ld a, a                                          ; $7671: $7f
	rst SubAFromDE                                          ; $7672: $df
	sbc c                                            ; $7673: $99
	call c, Call_022_7be3                            ; $7674: $dc $e3 $7b
	db $fc                                           ; $7677: $fc
	adc a                                            ; $7678: $8f
	rst $38                                          ; $7679: $ff
	ld l, [hl]                                       ; $767a: $6e
	cp d                                             ; $767b: $ba
	ld l, a                                          ; $767c: $6f
	cp $7f                                           ; $767d: $fe $7f
	add e                                            ; $767f: $83

jr_022_7680:
	sbc d                                            ; $7680: $9a
	ld [hl], b                                       ; $7681: $70
	adc a                                            ; $7682: $8f
	nop                                              ; $7683: $00
	rst $38                                          ; $7684: $ff
	ld bc, $fe73                                     ; $7685: $01 $73 $fe
	sbc l                                            ; $7688: $9d
	ld [bc], a                                       ; $7689: $02
	cp $6f                                           ; $768a: $fe $6f
	cp $80                                           ; $768c: $fe $80
	add l                                            ; $768e: $85
	add a                                            ; $768f: $87
	dec bc                                           ; $7690: $0b
	ld c, $16                                        ; $7691: $0e $16
	inc e                                            ; $7693: $1c
	inc e                                            ; $7694: $1c
	jr jr_022_76c7                                   ; $7695: $18 $30

	jr nz, jr_022_76d9                               ; $7697: $20 $40

	ld b, b                                          ; $7699: $40
	add c                                            ; $769a: $81
	add c                                            ; $769b: $81
	ld [bc], a                                       ; $769c: $02
	inc bc                                           ; $769d: $03
	call $8b87                                       ; $769e: $cd $87 $8b
	rrca                                             ; $76a1: $0f
	ld d, $1c                                        ; $76a2: $16 $1c
	dec l                                            ; $76a4: $2d
	jr c, @+$61                                      ; $76a5: $38 $5f

	ld [hl], b                                       ; $76a7: $70
	cp a                                             ; $76a8: $bf
	pop hl                                           ; $76a9: $e1
	ld a, a                                          ; $76aa: $7f
	pop bc                                           ; $76ab: $c1
	cp $91                                           ; $76ac: $fe $91
	add e                                            ; $76ae: $83
	or a                                             ; $76af: $b7
	ldh [$67], a                                     ; $76b0: $e0 $67
	ldh [$6f], a                                     ; $76b2: $e0 $6f
	pop bc                                           ; $76b4: $c1
	ld c, [hl]                                       ; $76b5: $4e
	jp $87dc                                         ; $76b6: $c3 $dc $87


	cp b                                             ; $76b9: $b8
	rrca                                             ; $76ba: $0f
	cp b                                             ; $76bb: $b8
	ld a, e                                          ; $76bc: $7b
	add l                                            ; $76bd: $85
	sbc b                                            ; $76be: $98
	db $dd                                           ; $76bf: $dd
	ldh a, [$dd]                                     ; $76c0: $f0 $dd
	ldh a, [$59]                                     ; $76c2: $f0 $59
	ldh a, [rHDMA1]                                  ; $76c4: $f0 $51
	ld [hl], e                                       ; $76c6: $73

jr_022_76c7:
	cp $8b                                           ; $76c7: $fe $8b
	ld d, b                                          ; $76c9: $50
	ldh a, [$5c]                                     ; $76ca: $f0 $5c
	ldh a, [$e1]                                     ; $76cc: $f0 $e1
	jr nz, jr_022_7680                               ; $76ce: $20 $b0

	jr nz, jr_022_766a                               ; $76d0: $20 $98

	db $10                                           ; $76d2: $10
	adc h                                            ; $76d3: $8c
	ld [$048e], sp                                   ; $76d4: $08 $8e $04
	add e                                            ; $76d7: $83
	inc bc                                           ; $76d8: $03

jr_022_76d9:
	add b                                            ; $76d9: $80
	nop                                              ; $76da: $00
	nop                                              ; $76db: $00
	add b                                            ; $76dc: $80
	ld a, e                                          ; $76dd: $7b
	db $fc                                           ; $76de: $fc
	ld [hl], d                                       ; $76df: $72
	call nc, $1b80                                   ; $76e0: $d4 $80 $1b
	rlca                                             ; $76e3: $07
	rst $38                                          ; $76e4: $ff
	rst $38                                          ; $76e5: $ff
	pop bc                                           ; $76e6: $c1
	ccf                                              ; $76e7: $3f
	jr jr_022_76f1                                   ; $76e8: $18 $07

	rrca                                             ; $76ea: $0f
	nop                                              ; $76eb: $00
	rra                                              ; $76ec: $1f
	nop                                              ; $76ed: $00
	ld a, e                                          ; $76ee: $7b
	rlca                                             ; $76ef: $07
	rst SubAFromDE                                          ; $76f0: $df

jr_022_76f1:
	ccf                                              ; $76f1: $3f
	rst $38                                          ; $76f2: $ff
	rst $38                                          ; $76f3: $ff
	ld sp, hl                                        ; $76f4: $f9
	rst $38                                          ; $76f5: $ff
	db $e3                                           ; $76f6: $e3
	cp $07                                           ; $76f7: $fe $07
	db $fc                                           ; $76f9: $fc
	rst $38                                          ; $76fa: $ff
	rra                                              ; $76fb: $1f
	rst $38                                          ; $76fc: $ff
	ld [hl], e                                       ; $76fd: $73
	rst $38                                          ; $76fe: $ff
	db $e4                                           ; $76ff: $e4
	rst $38                                          ; $7700: $ff
	sub [hl]                                         ; $7701: $96
	ret z                                            ; $7702: $c8

	rst $38                                          ; $7703: $ff
	sub c                                            ; $7704: $91
	cp $23                                           ; $7705: $fe $23
	db $fc                                           ; $7707: $fc
	ld b, a                                          ; $7708: $47
	ld hl, sp-$71                                    ; $7709: $f8 $8f
	db $dd                                           ; $770b: $dd
	rst $38                                          ; $770c: $ff
	ld a, a                                          ; $770d: $7f
	sub a                                            ; $770e: $97
	sub e                                            ; $770f: $93
	add b                                            ; $7710: $80
	rst $38                                          ; $7711: $ff
	rlca                                             ; $7712: $07
	rst $38                                          ; $7713: $ff
	rra                                              ; $7714: $1f
	ld hl, sp+$7f                                    ; $7715: $f8 $7f
	ldh [$cf], a                                     ; $7717: $e0 $cf
	add b                                            ; $7719: $80
	dec h                                            ; $771a: $25
	rst $38                                          ; $771b: $ff
	ld [hl], a                                       ; $771c: $77
	cp $95                                           ; $771d: $fe $95
	push hl                                          ; $771f: $e5
	rst $38                                          ; $7720: $ff
	and $fe                                          ; $7721: $e6 $fe
	sub [hl]                                         ; $7723: $96
	ld a, [hl]                                       ; $7724: $7e
	xor $1e                                          ; $7725: $ee $1e
	or $0e                                           ; $7727: $f6 $0e
	halt                                             ; $7729: $76
	adc d                                            ; $772a: $8a
	sbc [hl]                                         ; $772b: $9e
	dec b                                            ; $772c: $05
	ld [hl], d                                       ; $772d: $72
	add [hl]                                         ; $772e: $86
	ld l, a                                          ; $772f: $6f
	db $fc                                           ; $7730: $fc
	halt                                             ; $7731: $76
	call z, $f59c                                    ; $7732: $cc $9c $f5
	nop                                              ; $7735: $00
	jp hl                                            ; $7736: $e9


	ld a, c                                          ; $7737: $79
	call nc, $e280                                   ; $7738: $d4 $80 $e2
	ld bc, $02d1                                     ; $773b: $01 $d1 $02
	add [hl]                                         ; $773e: $86

Jump_022_773f:
	ld bc, $2e51                                     ; $773f: $01 $51 $2e
	and d                                            ; $7742: $a2
	ld e, l                                          ; $7743: $5d
	ld b, c                                          ; $7744: $41
	cp [hl]                                          ; $7745: $be
	add d                                            ; $7746: $82
	ld a, l                                          ; $7747: $7d
	ld b, l                                          ; $7748: $45
	cp d                                             ; $7749: $ba
	adc d                                            ; $774a: $8a
	ld [hl], l                                       ; $774b: $75
	dec d                                            ; $774c: $15
	ld [$f50a], a                                    ; $774d: $ea $0a $f5
	ld a, a                                          ; $7750: $7f
	add b                                            ; $7751: $80
	xor $10                                          ; $7752: $ee $10
	ld e, l                                          ; $7754: $5d
	and b                                            ; $7755: $a0
	xor d                                            ; $7756: $aa
	ld b, b                                          ; $7757: $40
	ld [hl], h                                       ; $7758: $74
	sbc b                                            ; $7759: $98
	add b                                            ; $775a: $80
	xor d                                            ; $775b: $aa
	ld b, b                                          ; $775c: $40
	ld [hl], l                                       ; $775d: $75
	add b                                            ; $775e: $80
	rst $38                                          ; $775f: $ff
	nop                                              ; $7760: $00
	ld [hl], e                                       ; $7761: $73
	ret                                              ; $7762: $c9


	sbc h                                            ; $7763: $9c
	rlca                                             ; $7764: $07
	ld bc, $770e                                     ; $7765: $01 $0e $77
	cp $9b                                           ; $7768: $fe $9b
	inc bc                                           ; $776a: $03
	inc e                                            ; $776b: $1c
	inc bc                                           ; $776c: $03
	inc e                                            ; $776d: $1c
	ld a, e                                          ; $776e: $7b
	sub l                                            ; $776f: $95
	ld e, [hl]                                       ; $7770: $5e
	rst AddAOntoHL                                          ; $7771: $ef
	ld a, e                                          ; $7772: $7b
	cp $9b                                           ; $7773: $fe $9b
	rrca                                             ; $7775: $0f
	rlca                                             ; $7776: $07
	inc bc                                           ; $7777: $03
	ld bc, $b379                                     ; $7778: $01 $79 $b3
	ld a, l                                          ; $777b: $7d
	add e                                            ; $777c: $83
	ld a, d                                          ; $777d: $7a
	ret c                                            ; $777e: $d8

	ld a, [hl]                                       ; $777f: $7e
	ldh [$97], a                                     ; $7780: $e0 $97
	ldh a, [rIF]                                     ; $7782: $f0 $0f
	pop af                                           ; $7784: $f1
	rst $38                                          ; $7785: $ff
	cp $ff                                           ; $7786: $fe $ff
	ld a, a                                          ; $7788: $7f
	ccf                                              ; $7789: $3f
	ld [hl], a                                       ; $778a: $77
	ld [$367f], a                                    ; $778b: $ea $7f $36
	sub h                                            ; $778e: $94
	db $10                                           ; $778f: $10
	ldh [rP1], a                                     ; $7790: $e0 $00
	db $fc                                           ; $7792: $fc
	xor $f1                                          ; $7793: $ee $f1
	dec a                                            ; $7795: $3d
	cp $c7                                           ; $7796: $fe $c7
	rst $38                                          ; $7798: $ff
	ld hl, sp-$22                                    ; $7799: $f8 $de
	rst $38                                          ; $779b: $ff
	ld l, a                                          ; $779c: $6f
	ld [$ce7e], a                                    ; $779d: $ea $7e $ce
	sub h                                            ; $77a0: $94
	jp nz, $ba3e                                     ; $77a1: $c2 $3e $ba

	add $f6                                          ; $77a4: $c6 $f6
	ld a, [$ff1f]                                    ; $77a6: $fa $1f $ff
	pop hl                                           ; $77a9: $e1
	rst $38                                          ; $77aa: $ff
	db $fd                                           ; $77ab: $fd
	sbc $ff                                          ; $77ac: $de $ff
	add b                                            ; $77ae: $80
	dec b                                            ; $77af: $05
	rlca                                             ; $77b0: $07
	ld a, [bc]                                       ; $77b1: $0a
	ld c, $04                                        ; $77b2: $0e $04
	inc c                                            ; $77b4: $0c
	db $10                                           ; $77b5: $10
	jr jr_022_77c0                                   ; $77b6: $18 $08

	jr @+$22                                         ; $77b8: $18 $20

	jr nc, jr_022_77cc                               ; $77ba: $30 $10

	jr nc, jr_022_77be                               ; $77bc: $30 $00

jr_022_77be:
	jr nz, @+$3f                                     ; $77be: $20 $3d

jr_022_77c0:
	ld b, $3c                                        ; $77c0: $06 $3c
	ld b, $39                                        ; $77c2: $06 $39
	ld c, $1b                                        ; $77c4: $0e $1b
	inc c                                            ; $77c6: $0c
	ld [de], a                                       ; $77c7: $12
	dec e                                            ; $77c8: $1d
	rla                                              ; $77c9: $17
	add hl, de                                       ; $77ca: $19
	dec l                                            ; $77cb: $2d

jr_022_77cc:
	inc sp                                           ; $77cc: $33
	cpl                                              ; $77cd: $2f
	sub [hl]                                         ; $77ce: $96
	ld [hl-], a                                      ; $77cf: $32
	ld h, b                                          ; $77d0: $60
	jr nc, @-$1e                                     ; $77d1: $30 $e0

	inc hl                                           ; $77d3: $23
	ret nz                                           ; $77d4: $c0

	ld a, a                                          ; $77d5: $7f
	ret nz                                           ; $77d6: $c0

	db $e3                                           ; $77d7: $e3
	ld a, e                                          ; $77d8: $7b
	cp $8e                                           ; $77d9: $fe $8e
	ld h, b                                          ; $77db: $60
	ldh [$30], a                                     ; $77dc: $e0 $30
	ldh [$3c], a                                     ; $77de: $e0 $3c
	rla                                              ; $77e0: $17
	ld d, b                                          ; $77e1: $50
	inc de                                           ; $77e2: $13
	ret nc                                           ; $77e3: $d0

	ld de, $1090                                     ; $77e4: $11 $90 $10
	sub b                                            ; $77e7: $90
	db $10                                           ; $77e8: $10
	or b                                             ; $77e9: $b0
	jr nz, @-$5e                                     ; $77ea: $20 $a0

	ld [hl], a                                       ; $77ec: $77
	cp $7e                                           ; $77ed: $fe $7e
	adc $7f                                          ; $77ef: $ce $7f
	cp $7d                                           ; $77f1: $fe $7d
	adc [hl]                                         ; $77f3: $8e
	ld a, a                                          ; $77f4: $7f
	db $fd                                           ; $77f5: $fd
	ld a, [hl]                                       ; $77f6: $7e
	add c                                            ; $77f7: $81
	sub a                                            ; $77f8: $97
	ld d, b                                          ; $77f9: $50
	jr nz, jr_022_7804                               ; $77fa: $20 $08

Call_022_77fc:
	jr nc, jr_022_781f                               ; $77fc: $30 $21

	ld e, $0c                                        ; $77fe: $1e $0c
	inc bc                                           ; $7800: $03
	ld a, e                                          ; $7801: $7b
	ld d, c                                          ; $7802: $51
	add b                                            ; $7803: $80

jr_022_7804:
	nop                                              ; $7804: $00
	dec bc                                           ; $7805: $0b
	inc b                                            ; $7806: $04
	inc de                                           ; $7807: $13
	inc c                                            ; $7808: $0c
	daa                                              ; $7809: $27
	jr jr_022_7852                                   ; $780a: $18 $46

	add hl, sp                                       ; $780c: $39
	pop hl                                           ; $780d: $e1
	ld bc, $cc37                                     ; $780e: $01 $37 $cc
	rst AddAOntoHL                                          ; $7811: $ef
	add hl, de                                       ; $7812: $19
	di                                               ; $7813: $f3
	ld a, [de]                                       ; $7814: $1a
	sub $32                                          ; $7815: $d6 $32
	and [hl]                                         ; $7817: $a6
	ld [hl], b                                       ; $7818: $70
	ld h, c                                          ; $7819: $61
	ldh [$cc], a                                     ; $781a: $e0 $cc
	pop hl                                           ; $781c: $e1
	db $d3                                           ; $781d: $d3
	ld c, c                                          ; $781e: $49

jr_022_781f:
	pop af                                           ; $781f: $f1
	sbc a                                            ; $7820: $9f
	db $e3                                           ; $7821: $e3
	ld a, $93                                        ; $7822: $3e $93
	ld h, [hl]                                       ; $7824: $66
	inc a                                            ; $7825: $3c

jr_022_7826:
	ld c, h                                          ; $7826: $4c
	ld a, b                                          ; $7827: $78
	ret c                                            ; $7828: $d8

	ld [hl], b                                       ; $7829: $70
	sbc b                                            ; $782a: $98
	ldh a, [$b8]                                     ; $782b: $f0 $b8
	ldh [$b8], a                                     ; $782d: $e0 $b8
	ldh [rPCM34], a                                  ; $782f: $e0 $77
	jp nc, $1d7f                                     ; $7831: $d2 $7f $1d

	ld e, a                                          ; $7834: $5f
	cp $9d                                           ; $7835: $fe $9d
	cp $06                                           ; $7837: $fe $06
	halt                                             ; $7839: $76
	add hl, hl                                       ; $783a: $29
	ld a, l                                          ; $783b: $7d
	ld h, h                                          ; $783c: $64
	halt                                             ; $783d: $76
	dec de                                           ; $783e: $1b
	sbc h                                            ; $783f: $9c
	cp $01                                           ; $7840: $fe $01
	rst $38                                          ; $7842: $ff
	ld [hl], d                                       ; $7843: $72
	call nz, $bc76                                   ; $7844: $c4 $76 $bc
	ld a, a                                          ; $7847: $7f
	db $fc                                           ; $7848: $fc
	ld a, e                                          ; $7849: $7b
	sub a                                            ; $784a: $97
	ld a, c                                          ; $784b: $79
	ld e, $87                                        ; $784c: $1e $87
	push bc                                          ; $784e: $c5
	ld [bc], a                                       ; $784f: $02
	add d                                            ; $7850: $82
	dec b                                            ; $7851: $05

jr_022_7852:
	call z, $8803                                    ; $7852: $cc $03 $88
	rlca                                             ; $7855: $07
	call nc, $a80b                                   ; $7856: $d4 $0b $a8
	rla                                              ; $7859: $17
	ld d, b                                          ; $785a: $50
	rrca                                             ; $785b: $0f
	ld hl, $151e                                     ; $785c: $21 $1e $15
	ld [$d42a], a                                    ; $785f: $ea $2a $d4
	ld e, b                                          ; $7862: $58
	and b                                            ; $7863: $a0
	jr c, jr_022_7826                                ; $7864: $38 $c0

	ld [hl], h                                       ; $7866: $74
	xor h                                            ; $7867: $ac
	add a                                            ; $7868: $87
	add e                                            ; $7869: $83
	nop                                              ; $786a: $00
	ld b, $01                                        ; $786b: $06 $01
	add [hl]                                         ; $786d: $86
	nop                                              ; $786e: $00
	ld b, $00                                        ; $786f: $06 $00
	inc e                                            ; $7871: $1c
	nop                                              ; $7872: $00
	jr c, jr_022_7879                                ; $7873: $38 $04

	ld [hl], b                                       ; $7875: $70
	ld [$50a8], sp                                   ; $7876: $08 $a8 $50

jr_022_7879:
	ld d, b                                          ; $7879: $50
	and b                                            ; $787a: $a0
	and b                                            ; $787b: $a0
	ld d, c                                          ; $787c: $51
	rlca                                             ; $787d: $07
	jr c, jr_022_7887                                ; $787e: $38 $07

	jr c, jr_022_78f7                                ; $7880: $38 $75

	adc h                                            ; $7882: $8c
	sbc [hl]                                         ; $7883: $9e
	adc a                                            ; $7884: $8f
	ld [hl], c                                       ; $7885: $71
	adc d                                            ; $7886: $8a

jr_022_7887:
	ld a, l                                          ; $7887: $7d
	adc [hl]                                         ; $7888: $8e
	ld c, [hl]                                       ; $7889: $4e
	jp nz, $fe7f                                     ; $788a: $c2 $7f $fe

	ld [hl], a                                       ; $788d: $77
	sbc h                                            ; $788e: $9c
	ld d, a                                          ; $788f: $57
	cp $7f                                           ; $7890: $fe $7f
	db $fd                                           ; $7892: $fd
	ld a, l                                          ; $7893: $7d
	ld l, c                                          ; $7894: $69
	ld a, h                                          ; $7895: $7c
	ld d, d                                          ; $7896: $52
	ld e, a                                          ; $7897: $5f
	ld [$ba6e], a                                    ; $7898: $ea $6e $ba
	ld [hl], a                                       ; $789b: $77
	ld [$a47e], a                                    ; $789c: $ea $7e $a4
	ld [hl], a                                       ; $789f: $77
	ld [$7e9b], a                                    ; $78a0: $ea $9b $7e
	ld a, $0e                                        ; $78a3: $3e $0e
	ld b, $79                                        ; $78a5: $06 $79
	reti                                             ; $78a7: $d9


jr_022_78a8:
	ld h, e                                          ; $78a8: $63
	ld [$ce7e], a                                    ; $78a9: $ea $7e $ce
	rst SubAFromDE                                          ; $78ac: $df
	jr nz, jr_022_78a8                               ; $78ad: $20 $f9

	ld [hl], a                                       ; $78af: $77
	ld [$5b95], a                                    ; $78b0: $ea $95 $5b
	ld h, [hl]                                       ; $78b3: $66
	ld d, a                                          ; $78b4: $57
	ld l, h                                          ; $78b5: $6c
	ld [hl], a                                       ; $78b6: $77
	ld c, h                                          ; $78b7: $4c
	ld [hl], a                                       ; $78b8: $77
	ld c, h                                          ; $78b9: $4c
	ld l, a                                          ; $78ba: $6f
	ld e, b                                          ; $78bb: $58
	ld a, e                                          ; $78bc: $7b
	cp $7d                                           ; $78bd: $fe $7d
	pop bc                                           ; $78bf: $c1
	sub d                                            ; $78c0: $92
	nop                                              ; $78c1: $00
	ldh [$3f], a                                     ; $78c2: $e0 $3f
	ldh a, [$1f]                                     ; $78c4: $f0 $1f
	ldh a, [rAUD3LEVEL]                              ; $78c6: $f0 $1c
	ldh a, [rAUD2LOW]                                ; $78c8: $f0 $18
	ldh a, [rAUD2LOW]                                ; $78ca: $f0 $18
	ld hl, sp+$0f                                    ; $78cc: $f8 $0f
	ld [hl], a                                       ; $78ce: $77
	cp $6e                                           ; $78cf: $fe $6e
	jp z, $229e                                      ; $78d1: $ca $9e $22

	ld a, e                                          ; $78d4: $7b
	cp $9c                                           ; $78d5: $fe $9c
	ld b, e                                          ; $78d7: $43
	ld b, b                                          ; $78d8: $40
	ld b, a                                          ; $78d9: $47
	ld a, e                                          ; $78da: $7b
	cp $7d                                           ; $78db: $fe $7d
	and d                                            ; $78dd: $a2
	push af                                          ; $78de: $f5
	ld a, a                                          ; $78df: $7f
	cp [hl]                                          ; $78e0: $be
	sbc [hl]                                         ; $78e1: $9e
	inc bc                                           ; $78e2: $03
	sbc $02                                          ; $78e3: $de $02
	add b                                            ; $78e5: $80
	rlca                                             ; $78e6: $07
	inc b                                            ; $78e7: $04
	dec c                                            ; $78e8: $0d
	add hl, bc                                       ; $78e9: $09
	dec bc                                           ; $78ea: $0b
	add hl, bc                                       ; $78eb: $09
	rra                                              ; $78ec: $1f
	ld de, $2137                                     ; $78ed: $11 $37 $21
	ld l, $23                                        ; $78f0: $2e $23
	adc c                                            ; $78f2: $89
	db $d3                                           ; $78f3: $d3
	rst JumpTable                                          ; $78f4: $c7
	sub e                                            ; $78f5: $93
	sbc e                                            ; $78f6: $9b

jr_022_78f7:
	and a                                            ; $78f7: $a7
	ld e, $a7                                        ; $78f8: $1e $a7
	rst SubAFromHL                                          ; $78fa: $d7
	ld l, $b6                                        ; $78fb: $2e $b6
	ld c, h                                          ; $78fd: $4c
	xor b                                            ; $78fe: $a8
	ld e, h                                          ; $78ff: $5c
	add sp, $58                                      ; $7900: $e8 $58
	ldh a, [$c0]                                     ; $7902: $f0 $c0
	and b                                            ; $7904: $a0
	sbc [hl]                                         ; $7905: $9e
	ret nz                                           ; $7906: $c0

	ld a, d                                          ; $7907: $7a
	sub b                                            ; $7908: $90
	ld hl, sp+$76                                    ; $7909: $f8 $76
	call z, $bc76                                    ; $790b: $cc $76 $bc
	ld a, l                                          ; $790e: $7d
	ld e, b                                          ; $790f: $58
	ld [hl], l                                       ; $7910: $75
	ld d, [hl]                                       ; $7911: $56
	ld a, a                                          ; $7912: $7f
	ld [hl], c                                       ; $7913: $71
	ld e, e                                          ; $7914: $5b
	jr z, @-$6b                                      ; $7915: $28 $93

	ld bc, $03fd                                     ; $7917: $01 $fd $03
	cp $02                                           ; $791a: $fe $02
	and b                                            ; $791c: $a0
	add b                                            ; $791d: $80
	call nz, $aa80                                   ; $791e: $c4 $80 $aa
	add b                                            ; $7921: $80
	push de                                          ; $7922: $d5
	ld a, e                                          ; $7923: $7b
	db $fc                                           ; $7924: $fc
	add e                                            ; $7925: $83
	ld d, l                                          ; $7926: $55
	nop                                              ; $7927: $00
	dec hl                                           ; $7928: $2b
	nop                                              ; $7929: $00
	rla                                              ; $792a: $17
	nop                                              ; $792b: $00
	inc de                                           ; $792c: $13
	inc c                                            ; $792d: $0c
	dec bc                                           ; $792e: $0b
	inc b                                            ; $792f: $04
	dec hl                                           ; $7930: $2b
	inc b                                            ; $7931: $04
	ld e, l                                          ; $7932: $5d
	ld [bc], a                                       ; $7933: $02
	cp h                                             ; $7934: $bc
	inc bc                                           ; $7935: $03
	ld [hl], b                                       ; $7936: $70
	rrca                                             ; $7937: $0f
	ldh [$1f], a                                     ; $7938: $e0 $1f
	ret nz                                           ; $793a: $c0

	ccf                                              ; $793b: $3f
	add hl, de                                       ; $793c: $19
	ld b, $22                                        ; $793d: $06 $22
	dec e                                            ; $793f: $1d
	pop bc                                           ; $7940: $c1
	ld a, $78                                        ; $7941: $3e $78
	xor d                                            ; $7943: $aa
	ld a, h                                          ; $7944: $7c
	dec l                                            ; $7945: $2d
	ld [hl], e                                       ; $7946: $73
	rst JumpTable                                          ; $7947: $c7
	sbc l                                            ; $7948: $9d
	ld b, b                                          ; $7949: $40
	and c                                            ; $794a: $a1
	ld a, e                                          ; $794b: $7b
	ld h, a                                          ; $794c: $67
	sbc c                                            ; $794d: $99
	add e                                            ; $794e: $83
	add b                                            ; $794f: $80
	ld b, a                                          ; $7950: $47
	nop                                              ; $7951: $00
	add a                                            ; $7952: $87
	adc b                                            ; $7953: $88
	ld [hl], c                                       ; $7954: $71
	adc d                                            ; $7955: $8a
	ld [hl], h                                       ; $7956: $74
	ld e, h                                          ; $7957: $5c
	ld b, l                                          ; $7958: $45
	adc h                                            ; $7959: $8c
	inc bc                                           ; $795a: $03
	cp $1b                                           ; $795b: $fe $1b
	cp $56                                           ; $795d: $fe $56
	and h                                            ; $795f: $a4
	ld [hl], d                                       ; $7960: $72
	sub b                                            ; $7961: $90
	ld [hl], d                                       ; $7962: $72
	cp d                                             ; $7963: $ba
	ld e, a                                          ; $7964: $5f
	ld [$a456], a                                    ; $7965: $ea $56 $a4
	ld [hl], a                                       ; $7968: $77
	ld [$ce7e], a                                    ; $7969: $ea $7e $ce
	sbc d                                            ; $796c: $9a
	jr jr_022_797e                                   ; $796d: $18 $0f

	ld [$000f], sp                                   ; $796f: $08 $0f $00
	ld l, c                                          ; $7972: $69
	ld [hl-], a                                      ; $7973: $32
	ld a, a                                          ; $7974: $7f
	ld [$ce7e], a                                    ; $7975: $ea $7e $ce
	sub h                                            ; $7978: $94
	ld c, a                                          ; $7979: $4f
	ld b, b                                          ; $797a: $40
	ld e, [hl]                                       ; $797b: $5e
	ld b, c                                          ; $797c: $41
	ld a, h                                          ; $797d: $7c

jr_022_797e:
	ld b, e                                          ; $797e: $43
	inc e                                            ; $797f: $1c
	inc bc                                           ; $7980: $03
	ld b, $03                                        ; $7981: $06 $03
	inc bc                                           ; $7983: $03
	ld a, e                                          ; $7984: $7b
	call nc, $077d                                   ; $7985: $d4 $7d $07
	ld a, [hl]                                       ; $7988: $7e
	ld [$f276], sp                                   ; $7989: $08 $76 $f2
	db $db                                           ; $798c: $db
	ld bc, $02df                                     ; $798d: $01 $df $02
	adc d                                            ; $7990: $8a
	ld a, d                                          ; $7991: $7a
	ld b, e                                          ; $7992: $43
	ld d, d                                          ; $7993: $52
	ld b, e                                          ; $7994: $43
	and d                                            ; $7995: $a2
	add e                                            ; $7996: $83
	and d                                            ; $7997: $a2
	add e                                            ; $7998: $83
	cp h                                             ; $7999: $bc
	rlca                                             ; $799a: $07
	ld b, h                                          ; $799b: $44
	rlca                                             ; $799c: $07
	ld c, h                                          ; $799d: $4c
	rlca                                             ; $799e: $07
	db $fd                                           ; $799f: $fd
	rlca                                             ; $79a0: $07
	ret nc                                           ; $79a1: $d0

	ld a, b                                          ; $79a2: $78
	ld e, b                                          ; $79a3: $58
	ldh a, [$b0]                                     ; $79a4: $f0 $b0
	ld a, e                                          ; $79a6: $7b
	cp $9b                                           ; $79a7: $fe $9b
	ret nc                                           ; $79a9: $d0

	ldh a, [hDisp1_SCY]                                     ; $79aa: $f0 $90
	ret nc                                           ; $79ac: $d0

	sbc $80                                          ; $79ad: $de $80
	ld l, b                                          ; $79af: $68
	ld [hl+], a                                      ; $79b0: $22
	ld l, [hl]                                       ; $79b1: $6e
	jp z, $cc76                                      ; $79b2: $ca $76 $cc

	sbc [hl]                                         ; $79b5: $9e
	ld a, a                                          ; $79b6: $7f
	ld c, e                                          ; $79b7: $4b
	ld h, b                                          ; $79b8: $60
	add b                                            ; $79b9: $80
	ld a, [$fc06]                                    ; $79ba: $fa $06 $fc
	inc b                                            ; $79bd: $04
	db $f4                                           ; $79be: $f4
	inc c                                            ; $79bf: $0c
	ld hl, sp+$08                                    ; $79c0: $f8 $08
	add sp, $18                                      ; $79c2: $e8 $18
	ldh a, [rAUD1SWEEP]                              ; $79c4: $f0 $10
	ldh [rAUD4LEN], a                                ; $79c6: $e0 $20
	and b                                            ; $79c8: $a0
	ld h, b                                          ; $79c9: $60
	rrca                                             ; $79ca: $0f
	nop                                              ; $79cb: $00
	rla                                              ; $79cc: $17
	ld [$1d22], sp                                   ; $79cd: $08 $22 $1d
	inc c                                            ; $79d0: $0c
	inc sp                                           ; $79d1: $33
	inc c                                            ; $79d2: $0c
	inc sp                                           ; $79d3: $33
	jr jr_022_7a3d                                   ; $79d4: $18 $67

	sbc h                                            ; $79d6: $9c
	ld h, e                                          ; $79d7: $63
	jr c, @-$68                                      ; $79d8: $38 $96

	rst JumpTable                                          ; $79da: $c7
	add b                                            ; $79db: $80
	ld a, a                                          ; $79dc: $7f
	ld [bc], a                                       ; $79dd: $02
	db $fd                                           ; $79de: $fd
	dec b                                            ; $79df: $05
	ld a, [$f50a]                                    ; $79e0: $fa $0a $f5
	ld a, c                                          ; $79e3: $79
	adc b                                            ; $79e4: $88
	sub d                                            ; $79e5: $92
	push de                                          ; $79e6: $d5
	ld d, l                                          ; $79e7: $55
	xor d                                            ; $79e8: $aa
	ld a, [hl+]                                      ; $79e9: $2a
	push de                                          ; $79ea: $d5
	ld d, b                                          ; $79eb: $50
	xor [hl]                                         ; $79ec: $ae
	and b                                            ; $79ed: $a0
	ld e, [hl]                                       ; $79ee: $5e
	ld b, b                                          ; $79ef: $40
	cp h                                             ; $79f0: $bc
	add b                                            ; $79f1: $80
	ld a, h                                          ; $79f2: $7c
	ld a, e                                          ; $79f3: $7b
	db $fc                                           ; $79f4: $fc
	sbc d                                            ; $79f5: $9a
	ld a, b                                          ; $79f6: $78
	ld b, b                                          ; $79f7: $40
	cp b                                             ; $79f8: $b8
	and b                                            ; $79f9: $a0
	ld d, b                                          ; $79fa: $50
	ld [hl], h                                       ; $79fb: $74
	ld e, h                                          ; $79fc: $5c
	ld [hl], l                                       ; $79fd: $75
	adc h                                            ; $79fe: $8c
	sbc l                                            ; $79ff: $9d
	ld c, a                                          ; $7a00: $4f
	jr nc, jr_022_7a78                               ; $7a01: $30 $75

	adc d                                            ; $7a03: $8a
	ld a, l                                          ; $7a04: $7d
	adc [hl]                                         ; $7a05: $8e
	ld [bc], a                                       ; $7a06: $02
	xor $03                                          ; $7a07: $ee $03
	cp $03                                           ; $7a09: $fe $03
	cp $13                                           ; $7a0b: $fe $13
	cp $4d                                           ; $7a0d: $fe $4d
	ld [hl-], a                                      ; $7a0f: $32
	ld a, a                                          ; $7a10: $7f
	cp $7f                                           ; $7a11: $fe $7f
	dec hl                                           ; $7a13: $2b
	sbc l                                            ; $7a14: $9d
	inc b                                            ; $7a15: $04
	ld hl, sp+$5d                                    ; $7a16: $f8 $5d
	ld [hl-], a                                      ; $7a18: $32
	ld a, a                                          ; $7a19: $7f
	cp $df                                           ; $7a1a: $fe $df
	ld [bc], a                                       ; $7a1c: $02
	ld l, [hl]                                       ; $7a1d: $6e
	adc [hl]                                         ; $7a1e: $8e
	ld h, a                                          ; $7a1f: $67
	ld [$ff9a], a                                    ; $7a20: $ea $9a $ff
	rlca                                             ; $7a23: $07
	cp $06                                           ; $7a24: $fe $06
	ld a, $79                                        ; $7a26: $3e $79
	ld e, $6f                                        ; $7a28: $1e $6f
	ld [$069d], a                                    ; $7a2a: $ea $9d $06
	ld hl, sp-$09                                    ; $7a2d: $f8 $f7
	ld a, [hl]                                       ; $7a2f: $7e
	jp z, $fe7f                                      ; $7a30: $ca $7f $fe

	rst $38                                          ; $7a33: $ff
	ld [hl], l                                       ; $7a34: $75
	sbc h                                            ; $7a35: $9c
	ld c, [hl]                                       ; $7a36: $4e
	call z, $b87f                                    ; $7a37: $cc $7f $b8
	ld a, l                                          ; $7a3a: $7d
	sbc b                                            ; $7a3b: $98
	add b                                            ; $7a3c: $80

jr_022_7a3d:
	ld a, [$f407]                                    ; $7a3d: $fa $07 $f4
	rrca                                             ; $7a40: $0f
	add sp, $1f                                      ; $7a41: $e8 $1f
	ret nc                                           ; $7a43: $d0

	ccf                                              ; $7a44: $3f
	jr nz, @+$01                                     ; $7a45: $20 $ff

jr_022_7a47:
	ld b, c                                          ; $7a47: $41
	ret nz                                           ; $7a48: $c0

	add c                                            ; $7a49: $81
	add b                                            ; $7a4a: $80
	add d                                            ; $7a4b: $82
	add c                                            ; $7a4c: $81
	add d                                            ; $7a4d: $82
	add c                                            ; $7a4e: $81
	add [hl]                                         ; $7a4f: $86
	add c                                            ; $7a50: $81
	add h                                            ; $7a51: $84
	add e                                            ; $7a52: $83
	add h                                            ; $7a53: $84
	add e                                            ; $7a54: $83
	adc d                                            ; $7a55: $8a
	add l                                            ; $7a56: $85
	inc e                                            ; $7a57: $1c
	db $e3                                           ; $7a58: $e3
	jr c, @-$37                                      ; $7a59: $38 $c7

	inc d                                            ; $7a5b: $14
	add h                                            ; $7a5c: $84
	db $eb                                           ; $7a5d: $eb
	jr c, @-$37                                      ; $7a5e: $38 $c7

	ld [hl], b                                       ; $7a60: $70
	adc a                                            ; $7a61: $8f
	xor b                                            ; $7a62: $a8
	ld d, a                                          ; $7a63: $57
	ld [hl], c                                       ; $7a64: $71
	adc [hl]                                         ; $7a65: $8e
	jr nz, jr_022_7a47                               ; $7a66: $20 $df

	ld d, l                                          ; $7a68: $55
	xor d                                            ; $7a69: $aa
	xor [hl]                                         ; $7a6a: $ae
	ld d, c                                          ; $7a6b: $51
	ld e, l                                          ; $7a6c: $5d
	and d                                            ; $7a6d: $a2
	cp d                                             ; $7a6e: $ba
	ld b, l                                          ; $7a6f: $45
	ld a, l                                          ; $7a70: $7d
	add d                                            ; $7a71: $82
	cp d                                             ; $7a72: $ba
	ld b, l                                          ; $7a73: $45
	ld [hl], l                                       ; $7a74: $75
	adc d                                            ; $7a75: $8a
	xor d                                            ; $7a76: $aa
	ld d, l                                          ; $7a77: $55

jr_022_7a78:
	ld a, b                                          ; $7a78: $78
	ld e, h                                          ; $7a79: $5c
	sbc [hl]                                         ; $7a7a: $9e
	ld b, c                                          ; $7a7b: $41
	ld l, l                                          ; $7a7c: $6d
	adc h                                            ; $7a7d: $8c
	sbc l                                            ; $7a7e: $9d
	add h                                            ; $7a7f: $84
	ld b, e                                          ; $7a80: $43
	ld [hl], l                                       ; $7a81: $75
	adc h                                            ; $7a82: $8c
	ld [hl], h                                       ; $7a83: $74
	ld e, h                                          ; $7a84: $5c
	ld l, l                                          ; $7a85: $6d
	adc h                                            ; $7a86: $8c
	ld bc, $038a                                     ; $7a87: $01 $8a $03
	cp $03                                           ; $7a8a: $fe $03
	cp $03                                           ; $7a8c: $fe $03
	cp $03                                           ; $7a8e: $fe $03
	cp $43                                           ; $7a90: $fe $43
	cp $56                                           ; $7a92: $fe $56
	and h                                            ; $7a94: $a4
	ld [hl], a                                       ; $7a95: $77
	cp $56                                           ; $7a96: $fe $56

jr_022_7a98:
	and h                                            ; $7a98: $a4
	ld [hl], a                                       ; $7a99: $77
	ld [$c17a], a                                    ; $7a9a: $ea $7a $c1
	ld a, h                                          ; $7a9d: $7c
	xor b                                            ; $7a9e: $a8
	ld a, c                                          ; $7a9f: $79
	ld [hl-], a                                      ; $7aa0: $32
	sbc [hl]                                         ; $7aa1: $9e
	nop                                              ; $7aa2: $00
	ld l, e                                          ; $7aa3: $6b
	ld [$419b], a                                    ; $7aa4: $ea $9b $41
	rst $38                                          ; $7aa7: $ff
	add c                                            ; $7aa8: $81
	rst $38                                          ; $7aa9: $ff
	ld a, b                                          ; $7aaa: $78
	ld d, l                                          ; $7aab: $55
	sbc h                                            ; $7aac: $9c
	ccf                                              ; $7aad: $3f
	ld bc, $770f                                     ; $7aae: $01 $0f $77
	ld [$d47f], a                                    ; $7ab1: $ea $7f $d4
	adc c                                            ; $7ab4: $89
	inc d                                            ; $7ab5: $14
	dec bc                                           ; $7ab6: $0b
	ld a, [hl+]                                      ; $7ab7: $2a
	dec d                                            ; $7ab8: $15
	ld d, h                                          ; $7ab9: $54
	dec hl                                           ; $7aba: $2b
	xor d                                            ; $7abb: $aa
	ld d, l                                          ; $7abc: $55
	ld d, h                                          ; $7abd: $54
	xor e                                            ; $7abe: $ab
	jr z, jr_022_7a98                                ; $7abf: $28 $d7

	ld b, b                                          ; $7ac1: $40
	ccf                                              ; $7ac2: $3f
	ld [$5107], sp                                   ; $7ac3: $08 $07 $51
	xor [hl]                                         ; $7ac6: $ae
	and d                                            ; $7ac7: $a2
	ld e, l                                          ; $7ac8: $5d
	ld b, c                                          ; $7ac9: $41
	cp [hl]                                          ; $7aca: $be
	ld h, a                                          ; $7acb: $67
	db $fc                                           ; $7acc: $fc
	adc l                                            ; $7acd: $8d
	and b                                            ; $7ace: $a0
	ld e, a                                          ; $7acf: $5f
	ld d, l                                          ; $7ad0: $55
	xor d                                            ; $7ad1: $aa
	xor b                                            ; $7ad2: $a8
	ld d, a                                          ; $7ad3: $57
	ld d, c                                          ; $7ad4: $51
	xor [hl]                                         ; $7ad5: $ae
	xor b                                            ; $7ad6: $a8
	ld d, [hl]                                       ; $7ad7: $56
	ld d, d                                          ; $7ad8: $52
	xor h                                            ; $7ad9: $ac
	and b                                            ; $7ada: $a0
	ld e, h                                          ; $7adb: $5c
	ld b, h                                          ; $7adc: $44
	cp b                                             ; $7add: $b8
	xor b                                            ; $7ade: $a8
	ld d, b                                          ; $7adf: $50
	ld [hl], h                                       ; $7ae0: $74
	ld e, h                                          ; $7ae1: $5c
	ld h, l                                          ; $7ae2: $65
	adc h                                            ; $7ae3: $8c
	sbc e                                            ; $7ae4: $9b
	ld b, a                                          ; $7ae5: $47
	jr c, @+$11                                      ; $7ae6: $38 $0f

	ld [hl], b                                       ; $7ae8: $70
	inc bc                                           ; $7ae9: $03
	ld e, [hl]                                       ; $7aea: $5e
	inc bc                                           ; $7aeb: $03
	cp $03                                           ; $7aec: $fe $03
	cp $03                                           ; $7aee: $fe $03
	cp $03                                           ; $7af0: $fe $03
	cp $03                                           ; $7af2: $fe $03
	cp $1f                                           ; $7af4: $fe $1f
	cp $56                                           ; $7af6: $fe $56
	and h                                            ; $7af8: $a4
	ld [hl], a                                       ; $7af9: $77
	cp $79                                           ; $7afa: $fe $79
	ld e, [hl]                                       ; $7afc: $5e
	ld d, d                                          ; $7afd: $52
	adc [hl]                                         ; $7afe: $8e
	ld a, l                                          ; $7aff: $7d
	ld e, e                                          ; $7b00: $5b

Jump_022_7b01:
	ld c, [hl]                                       ; $7b01: $4e
	adc [hl]                                         ; $7b02: $8e
	ld a, [hl]                                       ; $7b03: $7e
	call z, Call_022_427c                            ; $7b04: $cc $7c $42
	ld a, [hl]                                       ; $7b07: $7e
	sbc $5d                                          ; $7b08: $de $5d
	inc e                                            ; $7b0a: $1c
	sbc e                                            ; $7b0b: $9b
	ld e, b                                          ; $7b0c: $58
	and b                                            ; $7b0d: $a0
	and b                                            ; $7b0e: $a0
	ld d, b                                          ; $7b0f: $50
	ld [hl], l                                       ; $7b10: $75
	adc h                                            ; $7b11: $8c
	sub a                                            ; $7b12: $97
	nop                                              ; $7b13: $00
	ld hl, $0102                                     ; $7b14: $21 $02 $01
	nop                                              ; $7b17: $00
	inc bc                                           ; $7b18: $03
	add h                                            ; $7b19: $84
	inc bc                                           ; $7b1a: $03
	ld [hl], h                                       ; $7b1b: $74
	ld e, h                                          ; $7b1c: $5c
	ld l, l                                          ; $7b1d: $6d
	adc h                                            ; $7b1e: $8c
	ld l, l                                          ; $7b1f: $6d
	adc d                                            ; $7b20: $8a
	inc bc                                           ; $7b21: $03
	ld a, [hl]                                       ; $7b22: $7e
	dec hl                                           ; $7b23: $2b
	cp $97                                           ; $7b24: $fe $97
	pop af                                           ; $7b26: $f1
	nop                                              ; $7b27: $00
	ldh [$0e], a                                     ; $7b28: $e0 $0e
	ret nz                                           ; $7b2a: $c0

	ld de, $17c0                                     ; $7b2b: $11 $c0 $17
	ld h, a                                          ; $7b2e: $67
	ldh a, [$97]                                     ; $7b2f: $f0 $97
	db $ec                                           ; $7b31: $ec
	nop                                              ; $7b32: $00
	ld b, b                                          ; $7b33: $40
	adc e                                            ; $7b34: $8b
	ld bc, $206a                                     ; $7b35: $01 $6a $20
	ld c, h                                          ; $7b38: $4c
	ld h, a                                          ; $7b39: $67
	ldh a, [$97]                                     ; $7b3a: $f0 $97
	rst SubAFromBC                                          ; $7b3c: $e7
	nop                                              ; $7b3d: $00
	ld bc, $095a                                     ; $7b3e: $01 $5a $09
	ld d, d                                          ; $7b41: $52
	nop                                              ; $7b42: $00
	ld h, d                                          ; $7b43: $62
	ld h, a                                          ; $7b44: $67
	ldh a, [$97]                                     ; $7b45: $f0 $97
	cp l                                             ; $7b47: $bd
	nop                                              ; $7b48: $00
	jr jr_022_7b6c                                   ; $7b49: $18 $21

	jr @+$27                                         ; $7b4b: $18 $25

	inc e                                            ; $7b4d: $1c
	and c                                            ; $7b4e: $a1
	ld h, a                                          ; $7b4f: $67
	ldh a, [$97]                                     ; $7b50: $f0 $97
	sbc h                                            ; $7b52: $9c
	nop                                              ; $7b53: $00
	nop                                              ; $7b54: $00
	ld l, e                                          ; $7b55: $6b
	ld hl, $004a                                     ; $7b56: $21 $4a $00
	adc h                                            ; $7b59: $8c
	ld c, a                                          ; $7b5a: $4f
	ret nc                                           ; $7b5b: $d0

	sbc [hl]                                         ; $7b5c: $9e
	ld bc, $d063                                     ; $7b5d: $01 $63 $d0
	sbc e                                            ; $7b60: $9b
	ld l, h                                          ; $7b61: $6c
	nop                                              ; $7b62: $00
	jr nz, jr_022_7bb0                               ; $7b63: $20 $4b

	ld a, e                                          ; $7b65: $7b
	xor $9e                                          ; $7b66: $ee $9e
	ld [de], a                                       ; $7b68: $12
	ld h, a                                          ; $7b69: $67
	ldh a, [$9b]                                     ; $7b6a: $f0 $9b

jr_022_7b6c:
	db $db                                           ; $7b6c: $db
	nop                                              ; $7b6d: $00
	ld bc, $7b4a                                     ; $7b6e: $01 $4a $7b
	cp $9e                                           ; $7b71: $fe $9e
	ld d, d                                          ; $7b73: $52
	ld h, a                                          ; $7b74: $67
	ldh a, [$97]                                     ; $7b75: $f0 $97
	sub a                                            ; $7b77: $97
	nop                                              ; $7b78: $00
	add b                                            ; $7b79: $80
	ld [de], a                                       ; $7b7a: $12
	nop                                              ; $7b7b: $00
	ld d, b                                          ; $7b7c: $50
	nop                                              ; $7b7d: $00
	ld d, l                                          ; $7b7e: $55
	ld h, a                                          ; $7b7f: $67

Jump_022_7b80:
jr_022_7b80:
	ldh a, [$97]                                     ; $7b80: $f0 $97
	ld e, $40                                        ; $7b82: $1e $40
	ld c, $50                                        ; $7b84: $0e $50
	inc c                                            ; $7b86: $0c
	ld d, c                                          ; $7b87: $51
	inc c                                            ; $7b88: $0c
	ld d, c                                          ; $7b89: $51
	ld h, a                                          ; $7b8a: $67
	ldh a, [$9d]                                     ; $7b8b: $f0 $9d
	ld e, l                                          ; $7b8d: $5d
	nop                                              ; $7b8e: $00
	ld [hl], a                                       ; $7b8f: $77
	ldh a, [c]                                       ; $7b90: $f2
	ld e, a                                          ; $7b91: $5f
	ldh a, [$97]                                     ; $7b92: $f0 $97
	db $e3                                           ; $7b94: $e3
	nop                                              ; $7b95: $00

jr_022_7b96:
	ldh [$0d], a                                     ; $7b96: $e0 $0d
	db $e4                                           ; $7b98: $e4
	add hl, bc                                       ; $7b99: $09
	ldh [$03], a                                     ; $7b9a: $e0 $03
	ld h, a                                          ; $7b9c: $67
	ldh a, [$98]                                     ; $7b9d: $f0 $98
	ld h, [hl]                                       ; $7b9f: $66
	nop                                              ; $7ba0: $00
	nop                                              ; $7ba1: $00
	ld e, d                                          ; $7ba2: $5a
	ld [$0056], sp                                   ; $7ba3: $08 $56 $00
	ld h, e                                          ; $7ba6: $63
	or b                                             ; $7ba7: $b0
	sub l                                            ; $7ba8: $95
	ret nc                                           ; $7ba9: $d0

	ld bc, $9b40                                     ; $7baa: $01 $40 $9b
	ld c, c                                          ; $7bad: $49
	sub d                                            ; $7bae: $92
	add hl, bc                                       ; $7baf: $09

jr_022_7bb0:
	ld [de], a                                       ; $7bb0: $12
	add b                                            ; $7bb1: $80
	ld a, a                                          ; $7bb2: $7f
	ld l, [hl]                                       ; $7bb3: $6e
	and h                                            ; $7bb4: $a4
	ld a, a                                          ; $7bb5: $7f
	ld h, b                                          ; $7bb6: $60
	sbc c                                            ; $7bb7: $99
	inc b                                            ; $7bb8: $04

jr_022_7bb9:
	ld l, c                                          ; $7bb9: $69
	inc h                                            ; $7bba: $24
	ld e, c                                          ; $7bbb: $59
	inc e                                            ; $7bbc: $1c
	add b                                            ; $7bbd: $80
	ld a, e                                          ; $7bbe: $7b
	ld h, a                                          ; $7bbf: $67
	ld a, l                                          ; $7bc0: $7d
	ld d, d                                          ; $7bc1: $52
	sub h                                            ; $7bc2: $94
	cp $c1                                           ; $7bc3: $fe $c1
	ld a, $63                                        ; $7bc5: $3e $63
	nop                                              ; $7bc7: $00
	nop                                              ; $7bc8: $00
	xor [hl]                                         ; $7bc9: $ae
	add [hl]                                         ; $7bca: $86
	jr z, jr_022_7bcd                                ; $7bcb: $28 $00

jr_022_7bcd:
	ld h, e                                          ; $7bcd: $63
	ld h, a                                          ; $7bce: $67
	ret nc                                           ; $7bcf: $d0

	sub a                                            ; $7bd0: $97
	ld sp, $0000                                     ; $7bd1: $31 $00 $00
	rst SubAFromHL                                          ; $7bd4: $d7
	ld b, e                                          ; $7bd5: $43
	or h                                             ; $7bd6: $b4
	db $10                                           ; $7bd7: $10
	ld hl, $f067                                     ; $7bd8: $21 $67 $f0
	ld a, a                                          ; $7bdb: $7f
	add $7f                                          ; $7bdc: $c6 $7f
	ld [bc], a                                       ; $7bde: $02
	ld a, e                                          ; $7bdf: $7b
	jr nc, jr_022_7b80                               ; $7be0: $30 $9e

	ld a, [de]                                       ; $7be2: $1a

Call_022_7be3:
	ld h, b                                          ; $7be3: $60
	add sp, -$68                                     ; $7be4: $e8 $98
	ld b, h                                          ; $7be6: $44
	nop                                              ; $7be7: $00
	ld e, l                                          ; $7be8: $5d
	inc c                                            ; $7be9: $0c
	ld d, c                                          ; $7bea: $51
	nop                                              ; $7beb: $00
	ld b, l                                          ; $7bec: $45
	ld h, a                                          ; $7bed: $67
	ldh a, [hDisp1_LCDC]                                     ; $7bee: $f0 $8f
	ld a, a                                          ; $7bf0: $7f
	nop                                              ; $7bf1: $00
	ccf                                              ; $7bf2: $3f
	add b                                            ; $7bf3: $80
	sbc a                                            ; $7bf4: $9f
	jr nz, jr_022_7b96                               ; $7bf5: $20 $9f

	jr nz, jr_022_7bb9                               ; $7bf7: $20 $c0

	ld de, $0ee0                                     ; $7bf9: $11 $e0 $0e
	ldh [rAUD1LEN], a                                ; $7bfc: $e0 $11
	ldh a, [rIF]                                     ; $7bfe: $f0 $0f
	ld h, a                                          ; $7c00: $67
	add sp, -$69                                     ; $7c01: $e8 $97
	inc h                                            ; $7c03: $24
	ld c, e                                          ; $7c04: $4b
	ld hl, $60ca                                     ; $7c05: $21 $ca $60
	adc h                                            ; $7c08: $8c
	db $e4                                           ; $7c09: $e4
	dec de                                           ; $7c0a: $1b
	ld h, a                                          ; $7c0b: $67
	ldh a, [$97]                                     ; $7c0c: $f0 $97
	jr nz, @+$5c                                     ; $7c0e: $20 $5a

	ld [$0052], sp                                   ; $7c10: $08 $52 $00
	rst SubAFromBC                                          ; $7c13: $e7
	ld h, e                                          ; $7c14: $63
	sbc h                                            ; $7c15: $9c
	ld h, a                                          ; $7c16: $67
	ldh a, [$7e]                                     ; $7c17: $f0 $7e
	adc $97                                          ; $7c19: $ce $97
	inc c                                            ; $7c1b: $0c
	ld de, $b500                                     ; $7c1c: $11 $00 $b5
	sub b                                            ; $7c1f: $90
	ld h, a                                          ; $7c20: $67
	di                                               ; $7c21: $f3
	inc c                                            ; $7c22: $0c
	ld l, a                                          ; $7c23: $6f
	ldh a, [$9e]                                     ; $7c24: $f0 $9e
	add h                                            ; $7c26: $84
	halt                                             ; $7c27: $76
	jp z, $9c9c                                      ; $7c28: $ca $9c $9c

	adc h                                            ; $7c2b: $8c
	ld [hl], e                                       ; $7c2c: $73
	ld h, a                                          ; $7c2d: $67
	ldh [$9e], a                                     ; $7c2e: $e0 $9e
	ld hl, $ca76                                     ; $7c30: $21 $76 $ca
	sbc [hl]                                         ; $7c33: $9e
	and $5f                                          ; $7c34: $e6 $5f
	ret nc                                           ; $7c36: $d0

	ld [hl], a                                       ; $7c37: $77
	ld a, d                                          ; $7c38: $7a
	ld a, [hl]                                       ; $7c39: $7e
	ld a, d                                          ; $7c3a: $7a
	sbc l                                            ; $7c3b: $9d
	inc h                                            ; $7c3c: $24
	db $db                                           ; $7c3d: $db
	ld h, e                                          ; $7c3e: $63
	ld a, b                                          ; $7c3f: $78
	ld a, a                                          ; $7c40: $7f
	or d                                             ; $7c41: $b2
	ld a, a                                          ; $7c42: $7f
	xor [hl]                                         ; $7c43: $ae
	sbc h                                            ; $7c44: $9c
	jp nc, $b748                                     ; $7c45: $d2 $48 $b7

	ld h, e                                          ; $7c48: $63
	ldh [$98], a                                     ; $7c49: $e0 $98
	ld d, $03                                        ; $7c4b: $16 $03
	call nc, $9443                                   ; $7c4d: $d4 $43 $94
	ld b, e                                          ; $7c50: $43
	cp h                                             ; $7c51: $bc
	ld h, a                                          ; $7c52: $67
	ldh a, [$97]                                     ; $7c53: $f0 $97
	inc c                                            ; $7c55: $0c
	ld d, b                                          ; $7c56: $50
	ld [$0953], sp                                   ; $7c57: $08 $53 $09
	ld d, d                                          ; $7c5a: $52
	add hl, bc                                       ; $7c5b: $09
	or $63                                           ; $7c5c: $f6 $63
	ldh a, [$7a]                                     ; $7c5e: $f0 $7a
	call z, Call_022_447b                            ; $7c60: $cc $7b $44
	rst SubAFromDE                                          ; $7c63: $df
	rst $38                                          ; $7c64: $ff
	ld l, e                                          ; $7c65: $6b
	ldh a, [rPCM12]                                  ; $7c66: $f0 $76
	jp z, $249d                                      ; $7c68: $ca $9d $24

	ld c, c                                          ; $7c6b: $49
	ld e, e                                          ; $7c6c: $5b
	or b                                             ; $7c6d: $b0
	ld [hl], a                                       ; $7c6e: $77
	ld h, b                                          ; $7c6f: $60
	sbc h                                            ; $7c70: $9c
	ld h, [hl]                                       ; $7c71: $66
	ld [hl+], a                                      ; $7c72: $22
	db $dd                                           ; $7c73: $dd
	ld h, e                                          ; $7c74: $63
	ld [$d29c], sp                                   ; $7c75: $08 $9c $d2
	ld c, c                                          ; $7c78: $49
	sub d                                            ; $7c79: $92
	ld a, e                                          ; $7c7a: $7b
	cp $9e                                           ; $7c7b: $fe $9e
	or [hl]                                          ; $7c7d: $b6
	ld h, a                                          ; $7c7e: $67
	ldh a, [$99]                                     ; $7c7f: $f0 $99
	add h                                            ; $7c81: $84
	ld l, c                                          ; $7c82: $69
	inc h                                            ; $7c83: $24
	ld c, c                                          ; $7c84: $49
	inc b                                            ; $7c85: $04
	sbc c                                            ; $7c86: $99
	ld e, a                                          ; $7c87: $5f
	ld h, b                                          ; $7c88: $60
	sbc [hl]                                         ; $7c89: $9e
	ld bc, $ca7a                                     ; $7c8a: $01 $7a $ca
	sbc e                                            ; $7c8d: $9b
	add b                                            ; $7c8e: $80
	inc hl                                           ; $7c8f: $23
	add c                                            ; $7c90: $81
	ld a, [hl]                                       ; $7c91: $7e
	ld h, e                                          ; $7c92: $63
	ret nz                                           ; $7c93: $c0

	ld a, [hl]                                       ; $7c94: $7e
	jp z, $949a                                      ; $7c95: $ca $9a $94

	nop                                              ; $7c98: $00
	ld sp, $ef10                                     ; $7c99: $31 $10 $ef
	ld h, e                                          ; $7c9c: $63
	ldh a, [$79]                                     ; $7c9d: $f0 $79
	call z, $249d                                    ; $7c9f: $cc $9d $24
	ld c, b                                          ; $7ca2: $48
	ld e, e                                          ; $7ca3: $5b
	and b                                            ; $7ca4: $a0
	ld a, [hl]                                       ; $7ca5: $7e
	jp z, $d19a                                      ; $7ca6: $ca $9a $d1

	ld b, b                                          ; $7ca9: $40
	add h                                            ; $7caa: $84
	ld b, b                                          ; $7cab: $40
	cp a                                             ; $7cac: $bf
	ld h, a                                          ; $7cad: $67
	ldh a, [rPCM12]                                  ; $7cae: $f0 $76
	call z, $079b                                    ; $7cb0: $cc $9b $07
	ld l, b                                          ; $7cb3: $68
	daa                                              ; $7cb4: $27
	ret c                                            ; $7cb5: $d8

	ld h, a                                          ; $7cb6: $67
	ldh a, [$3e]                                     ; $7cb7: $f0 $3e
	nop                                              ; $7cb9: $00
	sbc h                                            ; $7cba: $9c
	inc d                                            ; $7cbb: $14
	ld b, h                                          ; $7cbc: $44
	ld b, b                                          ; $7cbd: $40
	db $fd                                           ; $7cbe: $fd
	sub c                                            ; $7cbf: $91
	ld [hl], h                                       ; $7cc0: $74
	ld b, h                                          ; $7cc1: $44
	ld h, c                                          ; $7cc2: $61
	ld d, h                                          ; $7cc3: $54
	ld b, h                                          ; $7cc4: $44
	nop                                              ; $7cc5: $00
	ld [hl+], a                                      ; $7cc6: $22
	nop                                              ; $7cc7: $00
	ld [bc], a                                       ; $7cc8: $02
	jr nz, @+$46                                     ; $7cc9: $20 $44

	ld b, h                                          ; $7ccb: $44
	ld de, $7311                                     ; $7ccc: $11 $11 $73
	or $9e                                           ; $7ccf: $f6 $9e
	nop                                              ; $7cd1: $00
	ld [hl], a                                       ; $7cd2: $77
	or $97                                           ; $7cd3: $f6 $97
	ld de, $2220                                     ; $7cd5: $11 $20 $22
	inc bc                                           ; $7cd8: $03
	nop                                              ; $7cd9: $00
	nop                                              ; $7cda: $00
	ld b, h                                          ; $7cdb: $44
	ld b, [hl]                                       ; $7cdc: $46
	db $dd                                           ; $7cdd: $dd
	ld de, $109e                                     ; $7cde: $11 $9e $10
	ld [hl], a                                       ; $7ce1: $77
	or $9e                                           ; $7ce2: $f6 $9e
	ld b, c                                          ; $7ce4: $41
	db $db                                           ; $7ce5: $db
	ld de, $009b                                     ; $7ce6: $11 $9b $00
	inc h                                            ; $7ce9: $24
	ld b, h                                          ; $7cea: $44
	ld h, c                                          ; $7ceb: $61
	jp c, $7f11                                      ; $7cec: $da $11 $7f

	or $d8                                           ; $7cef: $f6 $d8
	ld de, $669e                                     ; $7cf1: $11 $9e $66
	rl c                                             ; $7cf4: $cb $11
	inc e                                            ; $7cf6: $1c
	add c                                            ; $7cf7: $81
	pop hl                                           ; $7cf8: $e1
	rst SubAFromDE                                          ; $7cf9: $df
	rst $38                                          ; $7cfa: $ff
	sbc h                                            ; $7cfb: $9c
	db $fc                                           ; $7cfc: $fc
	rst $38                                          ; $7cfd: $ff
	ldh [$fd], a                                     ; $7cfe: $e0 $fd
	sbc h                                            ; $7d00: $9c
	ld bc, $9f04                                     ; $7d01: $01 $04 $9f
	ld [hl], a                                       ; $7d04: $77
	ld hl, sp-$6d                                    ; $7d05: $f8 $93
	sub h                                            ; $7d07: $94
	sbc e                                            ; $7d08: $9b
	inc a                                            ; $7d09: $3c
	jr nc, jr_022_7d0c                               ; $7d0a: $30 $00

jr_022_7d0c:
	ld [bc], a                                       ; $7d0c: $02
	nop                                              ; $7d0d: $00
	ld bc, $3cef                                     ; $7d0e: $01 $ef $3c
	ldh [$c0], a                                     ; $7d11: $e0 $c0
	db $fd                                           ; $7d13: $fd
	sub b                                            ; $7d14: $90
	ld a, a                                          ; $7d15: $7f
	sbc a                                            ; $7d16: $9f
	ld h, a                                          ; $7d17: $67
	dec de                                           ; $7d18: $1b
	dec b                                            ; $7d19: $05
	ld [bc], a                                       ; $7d1a: $02
	add d                                            ; $7d1b: $82
	ld d, l                                          ; $7d1c: $55
	rst $38                                          ; $7d1d: $ff
	ld a, a                                          ; $7d1e: $7f
	rra                                              ; $7d1f: $1f
	rlca                                             ; $7d20: $07
	inc bc                                           ; $7d21: $03
	ld bc, $7b01                                     ; $7d22: $01 $01 $7b
	ret nc                                           ; $7d25: $d0

	call c, $9eff                                    ; $7d26: $dc $ff $9e
	ld a, a                                          ; $7d29: $7f
	ret                                              ; $7d2a: $c9


	rst $38                                          ; $7d2b: $ff
	add a                                            ; $7d2c: $87
	ld a, [$f0fd]                                    ; $7d2d: $fa $fd $f0
	ldh a, [c]                                       ; $7d30: $f2
	ld a, [$f8e4]                                    ; $7d31: $fa $e4 $f8
	pop af                                           ; $7d34: $f1
	db $fc                                           ; $7d35: $fc
	ld hl, sp-$02                                    ; $7d36: $f8 $fe
	pop af                                           ; $7d38: $f1
	pop af                                           ; $7d39: $f1
	di                                               ; $7d3a: $f3
	rst SubAFromBC                                          ; $7d3b: $e7
	call z, Call_022_4000                            ; $7d3c: $cc $00 $40
	and b                                            ; $7d3f: $a0
	or h                                             ; $7d40: $b4
	ld e, [hl]                                       ; $7d41: $5e
	ld h, a                                          ; $7d42: $67
	or e                                             ; $7d43: $b3
	add hl, de                                       ; $7d44: $19
	cp $92                                           ; $7d45: $fe $92
	ret nz                                           ; $7d47: $c0

	ldh [$b8], a                                     ; $7d48: $e0 $b8
	ld a, h                                          ; $7d4a: $7c
	cp $00                                           ; $7d4b: $fe $00
	nop                                              ; $7d4d: $00
	and b                                            ; $7d4e: $a0
	ld d, c                                          ; $7d4f: $51
	xor d                                            ; $7d50: $aa
	ld d, l                                          ; $7d51: $55
	ld [$f9f5], a                                    ; $7d52: $ea $f5 $f9
	sub a                                            ; $7d55: $97
	xor e                                            ; $7d56: $ab
	ld d, l                                          ; $7d57: $55
	xor e                                            ; $7d58: $ab
	ld [hl], l                                       ; $7d59: $75
	cp d                                             ; $7d5a: $ba
	ld a, a                                          ; $7d5b: $7f
	cp a                                             ; $7d5c: $bf
	ld a, a                                          ; $7d5d: $7f
	ld sp, hl                                        ; $7d5e: $f9
	ld a, a                                          ; $7d5f: $7f
	push af                                          ; $7d60: $f5
	sbc $bf                                          ; $7d61: $de $bf
	sbc $df                                          ; $7d63: $de $df
	ld a, a                                          ; $7d65: $7f
	sbc [hl]                                         ; $7d66: $9e
	sbc $7f                                          ; $7d67: $de $7f
	sbc $3f                                          ; $7d69: $de $3f
	db $db                                           ; $7d6b: $db
	rst $38                                          ; $7d6c: $ff
	sbc l                                            ; $7d6d: $9d
	cp $fc                                           ; $7d6e: $fe $fc
	reti                                             ; $7d70: $d9


	rst $38                                          ; $7d71: $ff
	add d                                            ; $7d72: $82
	and d                                            ; $7d73: $a2
	call nc, $1249                                   ; $7d74: $d4 $49 $12
	ld h, [hl]                                       ; $7d77: $66
	ld c, h                                          ; $7d78: $4c
	add hl, sp                                       ; $7d79: $39
	ld e, d                                          ; $7d7a: $5a
	reti                                             ; $7d7b: $d9


	and e                                            ; $7d7c: $a3
	add [hl]                                         ; $7d7d: $86
	dec c                                            ; $7d7e: $0d
	add hl, de                                       ; $7d7f: $19
	inc sp                                           ; $7d80: $33
	add $85                                          ; $7d81: $c6 $85
	inc e                                            ; $7d83: $1c
	inc l                                            ; $7d84: $2c
	ld l, [hl]                                       ; $7d85: $6e
	ld e, [hl]                                       ; $7d86: $5e
	sbc $b7                                          ; $7d87: $de $b7
	ld l, e                                          ; $7d89: $6b
	rst SubAFromHL                                          ; $7d8a: $d7
	rst $38                                          ; $7d8b: $ff
	rst SubAFromDE                                          ; $7d8c: $df
	sbc a                                            ; $7d8d: $9f
	cp a                                             ; $7d8e: $bf
	ccf                                              ; $7d8f: $3f
	ld a, e                                          ; $7d90: $7b
	ld l, d                                          ; $7d91: $6a
	adc a                                            ; $7d92: $8f
	ei                                               ; $7d93: $fb
	ld a, l                                          ; $7d94: $7d
	ld a, $5e                                        ; $7d95: $3e $5e
	xor a                                            ; $7d97: $af
	ld a, a                                          ; $7d98: $7f
	ccf                                              ; $7d99: $3f
	cp a                                             ; $7d9a: $bf
	nop                                              ; $7d9b: $00
	add b                                            ; $7d9c: $80
	ret nz                                           ; $7d9d: $c0

	and c                                            ; $7d9e: $a1
	ld d, b                                          ; $7d9f: $50
	add b                                            ; $7da0: $80
	ret nz                                           ; $7da1: $c0

	ret nz                                           ; $7da2: $c0

	ld [hl], e                                       ; $7da3: $73
	ld d, e                                          ; $7da4: $53
	sbc h                                            ; $7da5: $9c
	ccf                                              ; $7da6: $3f
	sbc a                                            ; $7da7: $9f
	xor a                                            ; $7da8: $af
	db $fd                                           ; $7da9: $fd
	ld a, a                                          ; $7daa: $7f
	pop af                                           ; $7dab: $f1
	sbc l                                            ; $7dac: $9d
	ld h, b                                          ; $7dad: $60
	ld [hl], b                                       ; $7dae: $70
	call c, $9cef                                    ; $7daf: $dc $ef $9c
	rst SubAFromHL                                          ; $7db2: $d7
	rst SubAFromBC                                          ; $7db3: $e7
	rst SubAFromHL                                          ; $7db4: $d7
	call c, $961f                                    ; $7db5: $dc $1f $96
	cpl                                              ; $7db8: $2f
	rra                                              ; $7db9: $1f
	cpl                                              ; $7dba: $2f
	ld hl, sp-$0d                                    ; $7dbb: $f8 $f3
	db $fc                                           ; $7dbd: $fc
	ldh a, [$f1]                                     ; $7dbe: $f0 $f1
	di                                               ; $7dc0: $f3
	ld a, d                                          ; $7dc1: $7a
	ei                                               ; $7dc2: $fb
	ld a, a                                          ; $7dc3: $7f
	ld sp, hl                                        ; $7dc4: $f9
	db $dd                                           ; $7dc5: $dd
	ldh a, [hDisp1_OBP0]                                     ; $7dc6: $f0 $93
	ei                                               ; $7dc8: $fb
	or l                                             ; $7dc9: $b5
	ld a, [hl+]                                      ; $7dca: $2a
	ld h, b                                          ; $7dcb: $60
	ret nz                                           ; $7dcc: $c0

	add c                                            ; $7dcd: $81
	inc bc                                           ; $7dce: $03
	rlca                                             ; $7dcf: $07
	rra                                              ; $7dd0: $1f
	dec bc                                           ; $7dd1: $0b
	rla                                              ; $7dd2: $17
	rra                                              ; $7dd3: $1f
	ld [hl], a                                       ; $7dd4: $77
	or c                                             ; $7dd5: $b1
	sbc b                                            ; $7dd6: $98
	rst $38                                          ; $7dd7: $ff
	dec c                                            ; $7dd8: $0d
	jr nc, jr_022_7e3b                               ; $7dd9: $30 $60

	ld hl, sp-$04                                    ; $7ddb: $f8 $fc
	cp $d7                                           ; $7ddd: $fe $d7
	rst $38                                          ; $7ddf: $ff
	add b                                            ; $7de0: $80
	cp a                                             ; $7de1: $bf
	sbc a                                            ; $7de2: $9f
	ld c, a                                          ; $7de3: $4f
	ld b, a                                          ; $7de4: $47
	ld a, [hl+]                                      ; $7de5: $2a
	dec h                                            ; $7de6: $25
	ld [de], a                                       ; $7de7: $12
	add c                                            ; $7de8: $81
	ret nz                                           ; $7de9: $c0

	ldh [$f0], a                                     ; $7dea: $e0 $f0
	ld hl, sp-$0b                                    ; $7dec: $f8 $f5
	ld a, [$fefd]                                    ; $7dee: $fa $fd $fe
	sbc a                                            ; $7df1: $9f
	rst SubAFromHL                                          ; $7df2: $d7
	xor a                                            ; $7df3: $af
	ld c, e                                          ; $7df4: $4b
	and l                                            ; $7df5: $a5
	ld b, l                                          ; $7df6: $45
	and h                                            ; $7df7: $a4
	ld b, d                                          ; $7df8: $42
	ld [hl], b                                       ; $7df9: $70

jr_022_7dfa:
	jr c, jr_022_7e54                                ; $7dfa: $38 $58

	cp h                                             ; $7dfc: $bc
	ld e, [hl]                                       ; $7dfd: $5e
	cp [hl]                                          ; $7dfe: $be

Jump_022_7dff:
	ld e, a                                          ; $7dff: $5f
	adc [hl]                                         ; $7e00: $8e
	cp a                                             ; $7e01: $bf
	and a                                            ; $7e02: $a7
	rst SubAFromHL                                          ; $7e03: $d7
	and a                                            ; $7e04: $a7
	ld b, e                                          ; $7e05: $43
	and e                                            ; $7e06: $a3
	ld c, e                                          ; $7e07: $4b
	adc e                                            ; $7e08: $8b
	dec bc                                           ; $7e09: $0b
	ld e, a                                          ; $7e0a: $5f
	cpl                                              ; $7e0b: $2f
	ld e, a                                          ; $7e0c: $5f
	cp a                                             ; $7e0d: $bf
	ld e, a                                          ; $7e0e: $5f
	cp a                                             ; $7e0f: $bf
	ld a, a                                          ; $7e10: $7f
	rst $38                                          ; $7e11: $ff
	rlca                                             ; $7e12: $07
	nop                                              ; $7e13: $00
	sbc l                                            ; $7e14: $9d
	inc sp                                           ; $7e15: $33
	inc h                                            ; $7e16: $24
	rst SubAFromHL                                          ; $7e17: $d7
	ld b, h                                          ; $7e18: $44
	pop bc                                           ; $7e19: $c1
	ld bc, $ffc1                                     ; $7e1a: $01 $c1 $ff
	adc $ff                                          ; $7e1d: $ce $ff
	sbc [hl]                                         ; $7e1f: $9e
	cp $db                                           ; $7e20: $fe $db
	db $fc                                           ; $7e22: $fc
	sbc [hl]                                         ; $7e23: $9e
	db $fd                                           ; $7e24: $fd
	ld a, e                                          ; $7e25: $7b
	cp $80                                           ; $7e26: $fe $80
	rst $38                                          ; $7e28: $ff
	db $fc                                           ; $7e29: $fc
	sbc a                                            ; $7e2a: $9f
	rrca                                             ; $7e2b: $0f
	dec c                                            ; $7e2c: $0d
	inc bc                                           ; $7e2d: $03
	ld b, $01                                        ; $7e2e: $06 $01
	inc bc                                           ; $7e30: $03
	nop                                              ; $7e31: $00
	add e                                            ; $7e32: $83
	nop                                              ; $7e33: $00
	inc bc                                           ; $7e34: $03
	add b                                            ; $7e35: $80
	ld d, c                                          ; $7e36: $51
	add b                                            ; $7e37: $80
	jr c, jr_022_7dfa                                ; $7e38: $38 $c0

	rst $38                                          ; $7e3a: $ff

jr_022_7e3b:
	rst $38                                          ; $7e3b: $ff
	db $fd                                           ; $7e3c: $fd
	di                                               ; $7e3d: $f3
	nop                                              ; $7e3e: $00
	rst $38                                          ; $7e3f: $ff
	nop                                              ; $7e40: $00
	rst $38                                          ; $7e41: $ff
	ldh a, [rIF]                                     ; $7e42: $f0 $0f
	ret c                                            ; $7e44: $d8

	rlca                                             ; $7e45: $07
	db $ec                                           ; $7e46: $ec
	sbc h                                            ; $7e47: $9c
	inc bc                                           ; $7e48: $03
	and $01                                          ; $7e49: $e6 $01
	db $dd                                           ; $7e4b: $dd
	rst $38                                          ; $7e4c: $ff
	sub d                                            ; $7e4d: $92
	rra                                              ; $7e4e: $1f
	rst $38                                          ; $7e4f: $ff
	inc bc                                           ; $7e50: $03
	rst $38                                          ; $7e51: $ff
	ld b, b                                          ; $7e52: $40
	ccf                                              ; $7e53: $3f

jr_022_7e54:
	ld [de], a                                       ; $7e54: $12
	adc l                                            ; $7e55: $8d
	ld c, l                                          ; $7e56: $4d
	add d                                            ; $7e57: $82
	dec h                                            ; $7e58: $25
	jp nz, Jump_022_7b80                             ; $7e59: $c2 $80 $7b

	db $e4                                           ; $7e5c: $e4
	sub b                                            ; $7e5d: $90
	add d                                            ; $7e5e: $82
	rst $38                                          ; $7e5f: $ff
	pop bc                                           ; $7e60: $c1
	rst $38                                          ; $7e61: $ff
	ldh a, [$bf]                                     ; $7e62: $f0 $bf
	cp $1f                                           ; $7e64: $fe $1f
	rst $38                                          ; $7e66: $ff
	ccf                                              ; $7e67: $3f
	rst $38                                          ; $7e68: $ff
	ld a, d                                          ; $7e69: $7a
	ld [bc], a                                       ; $7e6a: $02
	rst $38                                          ; $7e6b: $ff
	ld [bc], a                                       ; $7e6c: $02
	ld a, e                                          ; $7e6d: $7b
	ldh [c], a                                       ; $7e6e: $e2
	sbc h                                            ; $7e6f: $9c
	add e                                            ; $7e70: $83
	rst $38                                          ; $7e71: $ff
	ld [hl], e                                       ; $7e72: $73
	ld a, e                                          ; $7e73: $7b
	di                                               ; $7e74: $f3
	ld [hl], a                                       ; $7e75: $77
	push de                                          ; $7e76: $d5
	sbc l                                            ; $7e77: $9d
	rla                                              ; $7e78: $17
	rst $38                                          ; $7e79: $ff
	ld [hl], a                                       ; $7e7a: $77
	cp $95                                           ; $7e7b: $fe $95
	ccf                                              ; $7e7d: $3f
	ei                                               ; $7e7e: $fb
	cp a                                             ; $7e7f: $bf
	ei                                               ; $7e80: $fb
	rst $38                                          ; $7e81: $ff
	rst FarCall                                          ; $7e82: $f7
	rst $38                                          ; $7e83: $ff
	rst SubAFromBC                                          ; $7e84: $e7
	rst $38                                          ; $7e85: $ff
	db $ec                                           ; $7e86: $ec
	db $d3                                           ; $7e87: $d3
	rst $38                                          ; $7e88: $ff
	sbc [hl]                                         ; $7e89: $9e
	rlca                                             ; $7e8a: $07
	inc bc                                           ; $7e8b: $03
	ld h, e                                          ; $7e8c: $63
	inc de                                           ; $7e8d: $13
	ld b, a                                          ; $7e8e: $47
	ld a, a                                          ; $7e8f: $7f
	ld d, c                                          ; $7e90: $51
	ld l, e                                          ; $7e91: $6b
	ld hl, sp-$68                                    ; $7e92: $f8 $98
	ld sp, hl                                        ; $7e94: $f9
	cp $c0                                           ; $7e95: $fe $c0
	ldh a, [rAUD4LEN]                                ; $7e97: $f0 $20
	ret nz                                           ; $7e99: $c0

	add b                                            ; $7e9a: $80
	cp $7f                                           ; $7e9b: $fe $7f
	db $f4                                           ; $7e9d: $f4
	sbc h                                            ; $7e9e: $9c
	add c                                            ; $7e9f: $81
	cp $78                                           ; $7ea0: $fe $78
	ld [hl], a                                       ; $7ea2: $77
	rst FarCall                                          ; $7ea3: $f7
	ld a, [$727f]                                    ; $7ea4: $fa $7f $72
	ld a, a                                          ; $7ea7: $7f

jr_022_7ea8:
	ld [hl], c                                       ; $7ea8: $71
	sbc [hl]                                         ; $7ea9: $9e
	inc bc                                           ; $7eaa: $03
	ld a, e                                          ; $7eab: $7b
	jr nc, jr_022_7ea8                               ; $7eac: $30 $fa

	add b                                            ; $7eae: $80

jr_022_7eaf:
	ld bc, $c03f                                     ; $7eaf: $01 $3f $c0
	ld c, $f1                                        ; $7eb2: $0e $f1
	add e                                            ; $7eb4: $83
	db $fc                                           ; $7eb5: $fc
	ret nz                                           ; $7eb6: $c0

	rst $38                                          ; $7eb7: $ff
	jp $3f7f                                         ; $7eb8: $c3 $7f $3f


	ld a, h                                          ; $7ebb: $7c
	ld e, b                                          ; $7ebc: $58
	jr nc, jr_022_7eaf                               ; $7ebd: $30 $f0

	ldh [$f3], a                                     ; $7ebf: $e0 $f3
	nop                                              ; $7ec1: $00
	add hl, sp                                       ; $7ec2: $39
	ret nz                                           ; $7ec3: $c0

	ld b, $f8                                        ; $7ec4: $06 $f8
	ld h, c                                          ; $7ec6: $61
	sbc [hl]                                         ; $7ec7: $9e
	sbc b                                            ; $7ec8: $98
	rst SubAFromBC                                          ; $7ec9: $e7
	and $f9                                          ; $7eca: $e6 $f9
	ld e, c                                          ; $7ecc: $59
	ld a, $80                                        ; $7ecd: $3e $80
	ld l, $1f                                        ; $7ecf: $2e $1f
	ld [hl-], a                                      ; $7ed1: $32
	pop bc                                           ; $7ed2: $c1
	sbc e                                            ; $7ed3: $9b
	ld h, b                                          ; $7ed4: $60
	call Call_022_4630                               ; $7ed5: $cd $30 $46
	add hl, sp                                       ; $7ed8: $39
	ld h, a                                          ; $7ed9: $67
	sbc b                                            ; $7eda: $98
	ld bc, $80fe                                     ; $7edb: $01 $fe $80
	ld a, a                                          ; $7ede: $7f
	nop                                              ; $7edf: $00
	rst $38                                          ; $7ee0: $ff
	sbc a                                            ; $7ee1: $9f
	ld a, a                                          ; $7ee2: $7f
	call c, $cd3b                                    ; $7ee3: $dc $3b $cd
	ld a, [hl-]                                      ; $7ee6: $3a
	and $1d                                          ; $7ee7: $e6 $1d
	ld h, d                                          ; $7ee9: $62
	sbc l                                            ; $7eea: $9d
	sub c                                            ; $7eeb: $91
	ld l, a                                          ; $7eec: $6f
	xor c                                            ; $7eed: $a9
	add b                                            ; $7eee: $80
	ld d, a                                          ; $7eef: $57
	ld b, e                                          ; $7ef0: $43
	cp [hl]                                          ; $7ef1: $be
	sbc h                                            ; $7ef2: $9c
	db $e3                                           ; $7ef3: $e3
	ld [hl], a                                       ; $7ef4: $77
	ld hl, sp-$11                                    ; $7ef5: $f8 $ef
	rra                                              ; $7ef7: $1f
	rst $38                                          ; $7ef8: $ff
	ldh [$bf], a                                     ; $7ef9: $e0 $bf
	rst SubAFromDE                                          ; $7efb: $df
	ldh [$7f], a                                     ; $7efc: $e0 $7f
	ld e, a                                          ; $7efe: $5f
	rst $38                                          ; $7eff: $ff
	add b                                            ; $7f00: $80
	rst $38                                          ; $7f01: $ff
	dec de                                           ; $7f02: $1b
	cp $1a                                           ; $7f03: $fe $1a
	cp $f4                                           ; $7f05: $fe $f4
	cp $14                                           ; $7f07: $fe $14
	cp $d6                                           ; $7f09: $fe $d6
	db $fc                                           ; $7f0b: $fc
	ld c, d                                          ; $7f0c: $4a
	db $fc                                           ; $7f0d: $fc
	sbc c                                            ; $7f0e: $99
	adc h                                            ; $7f0f: $8c
	ld hl, sp-$6c                                    ; $7f10: $f8 $94
	ld hl, sp-$08                                    ; $7f12: $f8 $f8
	rlca                                             ; $7f14: $07
	di                                               ; $7f15: $f3
	sbc c                                            ; $7f16: $99
	ld a, a                                          ; $7f17: $7f
	rst $38                                          ; $7f18: $ff
	add c                                            ; $7f19: $81
	ld a, a                                          ; $7f1a: $7f
	ld e, $01                                        ; $7f1b: $1e $01
	rst FarCall                                          ; $7f1d: $f7
	db $dd                                           ; $7f1e: $dd
	rst $38                                          ; $7f1f: $ff
	ld a, a                                          ; $7f20: $7f
	db $ec                                           ; $7f21: $ec
	ld a, a                                          ; $7f22: $7f
	xor d                                            ; $7f23: $aa
	sbc e                                            ; $7f24: $9b
	inc bc                                           ; $7f25: $03
	rrca                                             ; $7f26: $0f
	inc b                                            ; $7f27: $04
	inc bc                                           ; $7f28: $03
	ld [hl], a                                       ; $7f29: $77
	jp hl                                            ; $7f2a: $e9


	push de                                          ; $7f2b: $d5
	rst $38                                          ; $7f2c: $ff
	ld a, a                                          ; $7f2d: $7f
	add sp, $7e                                      ; $7f2e: $e8 $7e
	call z, $fd9a                                    ; $7f30: $cc $9a $fd
	cp $fd                                           ; $7f33: $fe $fd
	cp $fc                                           ; $7f35: $fe $fc
	ld a, e                                          ; $7f37: $7b
	ld l, $d9                                        ; $7f38: $2e $d9
	rst $38                                          ; $7f3a: $ff
	ei                                               ; $7f3b: $fb
	ld a, a                                          ; $7f3c: $7f
	cpl                                              ; $7f3d: $2f
	sbc d                                            ; $7f3e: $9a

Call_022_7f3f:
	and b                                            ; $7f3f: $a0
	ret nz                                           ; $7f40: $c0

	db $e4                                           ; $7f41: $e4
	ld hl, sp-$07                                    ; $7f42: $f8 $f9
	ld a, e                                          ; $7f44: $7b
	jp hl                                            ; $7f45: $e9


	push af                                          ; $7f46: $f5
	sub l                                            ; $7f47: $95
	ldh [rP1], a                                     ; $7f48: $e0 $00
	sbc [hl]                                         ; $7f4a: $9e
	ldh [$03], a                                     ; $7f4b: $e0 $03
	rlca                                             ; $7f4d: $07
	inc bc                                           ; $7f4e: $03
	rlca                                             ; $7f4f: $07
	dec b                                            ; $7f50: $05
	inc bc                                           ; $7f51: $03
	ld h, e                                          ; $7f52: $63
	jr nz, jr_022_7fd4                               ; $7f53: $20 $7f

	db $ec                                           ; $7f55: $ec
	ld a, [hl]                                       ; $7f56: $7e
	rst FarCall                                          ; $7f57: $f7
	sbc b                                            ; $7f58: $98
	ldh [rIE], a                                     ; $7f59: $e0 $ff
	ldh a, [$1f]                                     ; $7f5b: $f0 $1f
	rst $38                                          ; $7f5d: $ff
	nop                                              ; $7f5e: $00
	rra                                              ; $7f5f: $1f
	ei                                               ; $7f60: $fb
	sbc d                                            ; $7f61: $9a
	scf                                              ; $7f62: $37
	rrca                                             ; $7f63: $0f
	rst SubAFromDE                                          ; $7f64: $df
	ccf                                              ; $7f65: $3f
	ld a, a                                          ; $7f66: $7f
	ld [hl], a                                       ; $7f67: $77
	cp b                                             ; $7f68: $b8
	ld l, e                                          ; $7f69: $6b
	add $9e                                          ; $7f6a: $c6 $9e
	ldh a, [$67]                                     ; $7f6c: $f0 $67
	xor b                                            ; $7f6e: $a8
	ld l, e                                          ; $7f6f: $6b
	ldh a, [$7e]                                     ; $7f70: $f0 $7e
	ldh [$9c], a                                     ; $7f72: $e0 $9c
	add c                                            ; $7f74: $81
	rst $38                                          ; $7f75: $ff
	ei                                               ; $7f76: $fb
	ld e, e                                          ; $7f77: $5b
	xor $7f                                          ; $7f78: $ee $7f
	ldh a, [c]                                       ; $7f7a: $f2

Call_022_7f7b:
	ld a, a                                          ; $7f7b: $7f
	xor $9e                                          ; $7f7c: $ee $9e
	adc l                                            ; $7f7e: $8d

Call_022_7f7f:
	ld e, e                                          ; $7f7f: $5b

jr_022_7f80:
	ldh a, [hDisp1_OBP0]                                     ; $7f80: $f0 $93
	jr c, jr_022_7f80                                ; $7f82: $38 $fc

	ld a, h                                          ; $7f84: $7c
	cp $fc                                           ; $7f85: $fe $fc
	cp $f8                                           ; $7f87: $fe $f8
	db $fc                                           ; $7f89: $fc
	ret nz                                           ; $7f8a: $c0

	ld hl, sp+$00                                    ; $7f8b: $f8 $00
	ret nz                                           ; $7f8d: $c0

	pop hl                                           ; $7f8e: $e1
	ld a, a                                          ; $7f8f: $7f
	dec b                                            ; $7f90: $05
	sbc [hl]                                         ; $7f91: $9e
	ld a, c                                          ; $7f92: $79
	ld l, e                                          ; $7f93: $6b
	ld [bc], a                                       ; $7f94: $02
	ld a, a                                          ; $7f95: $7f
	ld h, $7f                                        ; $7f96: $26 $7f
	ld l, h                                          ; $7f98: $6c
	sbc h                                            ; $7f99: $9c
	daa                                              ; $7f9a: $27
	rra                                              ; $7f9b: $1f
	sbc a                                            ; $7f9c: $9f
	ld a, e                                          ; $7f9d: $7b
	add a                                            ; $7f9e: $87
	sbc d                                            ; $7f9f: $9a
	cp a                                             ; $7fa0: $bf
	ld a, a                                          ; $7fa1: $7f
	cp a                                             ; $7fa2: $bf
	ld a, a                                          ; $7fa3: $7f
	ccf                                              ; $7fa4: $3f
	ld a, e                                          ; $7fa5: $7b
	ld h, $03                                        ; $7fa6: $26 $03
	rst $38                                          ; $7fa8: $ff
	jp c, $9eff                                      ; $7fa9: $da $ff $9e

	pop hl                                           ; $7fac: $e1
	ld e, a                                          ; $7fad: $5f
	dec b                                            ; $7fae: $05
	ld l, e                                          ; $7faf: $6b
	ld d, a                                          ; $7fb0: $57
	ld a, [hl]                                       ; $7fb1: $7e
	jr nc, @+$70                                     ; $7fb2: $30 $6e

	ld a, [de]                                       ; $7fb4: $1a
	ld h, [hl]                                       ; $7fb5: $66
	ldh a, [$9a]                                     ; $7fb6: $f0 $9a
	ldh a, [rP1]                                     ; $7fb8: $f0 $00
	rlca                                             ; $7fba: $07
	ld hl, sp-$08                                    ; $7fbb: $f8 $f8
	ld d, d                                          ; $7fbd: $52
	ldh [$7b], a                                     ; $7fbe: $e0 $7b
	ei                                               ; $7fc0: $fb
	inc bc                                           ; $7fc1: $03
	ldh a, [$1f]                                     ; $7fc2: $f0 $1f
	ldh a, [$7e]                                     ; $7fc4: $f0 $7e
	call nz, $fc9c                                   ; $7fc6: $c4 $9c $fc
	inc bc                                           ; $7fc9: $03
	inc bc                                           ; $7fca: $03
	ret c                                            ; $7fcb: $d8

	rst $38                                          ; $7fcc: $ff
	sbc e                                            ; $7fcd: $9b
	ccf                                              ; $7fce: $3f

Call_022_7fcf:
	nop                                              ; $7fcf: $00
	ld hl, sp+$07                                    ; $7fd0: $f8 $07
	ld d, l                                          ; $7fd2: $55
	ld l, d                                          ; $7fd3: $6a

jr_022_7fd4:
	sbc [hl]                                         ; $7fd4: $9e
	add a                                            ; $7fd5: $87
	inc bc                                           ; $7fd6: $03
	ld b, l                                          ; $7fd7: $45
	db $d3                                           ; $7fd8: $d3
	rst $38                                          ; $7fd9: $ff
	stop                                             ; $7fda: $10 $00
	sbc d                                            ; $7fdc: $9a
	inc sp                                           ; $7fdd: $33
	dec [hl]                                         ; $7fde: $35
	ld d, l                                          ; $7fdf: $55
	ld d, [hl]                                       ; $7fe0: $56
	ld h, [hl]                                       ; $7fe1: $66
	db $dd                                           ; $7fe2: $dd
	inc sp                                           ; $7fe3: $33
	sbc $55                                          ; $7fe4: $de $55
	ld e, e                                          ; $7fe6: $5b
	ld sp, hl                                        ; $7fe7: $f9
	call c, $ff33                                    ; $7fe8: $dc $33 $ff
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

Call_022_7ffc:
	rst $38                                          ; $7ffc: $ff
	rst $38                                          ; $7ffd: $ff
	rst $38                                          ; $7ffe: $ff

Call_022_7fff:
Jump_022_7fff:
	rst $38                                          ; $7fff: $ff
