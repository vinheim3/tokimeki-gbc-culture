; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $017", ROMX[$4000], BANK[$17]

	ld l, a                                          ; $4000: $6f
	add [hl]                                         ; $4001: $86
	cp $9a                                           ; $4002: $fe $9a
	ld bc, $0703                                     ; $4004: $01 $03 $07
	ld b, $0a                                        ; $4007: $06 $0a
	db $dd                                           ; $4009: $dd
	rst $38                                          ; $400a: $ff
	adc e                                            ; $400b: $8b
	cp $fc                                           ; $400c: $fe $fc
	db $fd                                           ; $400e: $fd
	db $fc                                           ; $400f: $fc
	nop                                              ; $4010: $00
	nop                                              ; $4011: $00
	ld [hl], b                                       ; $4012: $70
	cp $ff                                           ; $4013: $fe $ff
	add e                                            ; $4015: $83
	ld a, $61                                        ; $4016: $3e $61
	rst $38                                          ; $4018: $ff
	rst $38                                          ; $4019: $ff
	rst AddAOntoHL                                          ; $401a: $ef
	sbc a                                            ; $401b: $9f
	ld bc, $0000                                     ; $401c: $01 $00 $00
	inc d                                            ; $401f: $14
	db $fd                                           ; $4020: $fd
	rst SubAFromDE                                          ; $4021: $df
	ldh [$9d], a                                     ; $4022: $e0 $9d
	ld b, b                                          ; $4024: $40
	and b                                            ; $4025: $a0
	call c, $94ff                                    ; $4026: $dc $ff $94
	ccf                                              ; $4029: $3f
	ld a, c                                          ; $402a: $79
	ld [hl], e                                       ; $402b: $73
	nop                                              ; $402c: $00
	ld a, [bc]                                       ; $402d: $0a
	ccf                                              ; $402e: $3f
	dec a                                            ; $402f: $3d
	ld a, [hl]                                       ; $4030: $7e
	ld a, [hl]                                       ; $4031: $7e
	ld a, a                                          ; $4032: $7f
	ld a, a                                          ; $4033: $7f
	ld [hl], a                                       ; $4034: $77
	pop de                                           ; $4035: $d1
	db $dd                                           ; $4036: $dd
	rst $38                                          ; $4037: $ff
	rst $38                                          ; $4038: $ff
	sbc c                                            ; $4039: $99
	ldh a, [$fe]                                     ; $403a: $f0 $fe
	ld e, h                                          ; $403c: $5c
	adc $fe                                          ; $403d: $ce $fe
	ld [$ffde], a                                    ; $403f: $ea $de $ff
	ld [hl], a                                       ; $4042: $77
	db $ec                                           ; $4043: $ec
	sub [hl]                                         ; $4044: $96
	rst $38                                          ; $4045: $ff
	ret nc                                           ; $4046: $d0

	ld h, b                                          ; $4047: $60
	add b                                            ; $4048: $80
	ret nz                                           ; $4049: $c0

	ldh [rAUD1SWEEP], a                              ; $404a: $e0 $10
	ld a, [$6754]                                    ; $404c: $fa $54 $67
	ldh a, [$df]                                     ; $404f: $f0 $df
	inc bc                                           ; $4051: $03
	add b                                            ; $4052: $80
	ld c, $11                                        ; $4053: $0e $11
	ld l, $c2                                        ; $4055: $2e $c2
	add d                                            ; $4057: $82
	db $fd                                           ; $4058: $fd
	cp $fc                                           ; $4059: $fe $fc
	ld sp, hl                                        ; $405b: $f9
	rst FarCall                                          ; $405c: $f7
	rst $38                                          ; $405d: $ff
	rst JumpTable                                          ; $405e: $c7
	rst $38                                          ; $405f: $ff
	rst $38                                          ; $4060: $ff
	add e                                            ; $4061: $83
	add [hl]                                         ; $4062: $86
	ld b, h                                          ; $4063: $44
	ld [hl+], a                                      ; $4064: $22
	ld de, $bf60                                     ; $4065: $11 $60 $bf
	nop                                              ; $4068: $00
	pop bc                                           ; $4069: $c1
	adc a                                            ; $406a: $8f
	rst JumpTable                                          ; $406b: $c7
	db $e3                                           ; $406c: $e3

jr_017_406d:
	pop af                                           ; $406d: $f1
	rst FarCall                                          ; $406e: $f7
	rst $38                                          ; $406f: $ff
	rst $38                                          ; $4070: $ff
	ld h, e                                          ; $4071: $63
	sub l                                            ; $4072: $95
	add h                                            ; $4073: $84
	db $10                                           ; $4074: $10
	ld h, b                                          ; $4075: $60
	jr nz, jr_017_406d                               ; $4076: $20 $f5

	xor d                                            ; $4078: $aa
	nop                                              ; $4079: $00
	db $e3                                           ; $407a: $e3
	adc a                                            ; $407b: $8f
	ccf                                              ; $407c: $3f
	ld l, e                                          ; $407d: $6b
	ret nz                                           ; $407e: $c0

	sbc c                                            ; $407f: $99
	add c                                            ; $4080: $81
	jp nz, $1fe4                                     ; $4081: $c2 $e4 $1f

	ld a, [$de50]                                    ; $4084: $fa $50 $de
	rst $38                                          ; $4087: $ff
	sbc [hl]                                         ; $4088: $9e
	ld a, [hl]                                       ; $4089: $7e
	db $dd                                           ; $408a: $dd
	rst $38                                          ; $408b: $ff
	sub h                                            ; $408c: $94
	or h                                             ; $408d: $b4
	ld c, a                                          ; $408e: $4f
	adc [hl]                                         ; $408f: $8e
	dec b                                            ; $4090: $05
	inc bc                                           ; $4091: $03
	inc b                                            ; $4092: $04
	xor a                                            ; $4093: $af
	ld d, l                                          ; $4094: $55
	ld a, a                                          ; $4095: $7f
	ld hl, sp-$07                                    ; $4096: $f8 $f9
	ld l, e                                          ; $4098: $6b
	sub b                                            ; $4099: $90
	sbc c                                            ; $409a: $99
	inc bc                                           ; $409b: $03
	inc a                                            ; $409c: $3c
	ld l, d                                          ; $409d: $6a
	add b                                            ; $409e: $80
	rst AddAOntoHL                                          ; $409f: $ef
	or c                                             ; $40a0: $b1
	db $dd                                           ; $40a1: $dd
	rst $38                                          ; $40a2: $ff
	sbc e                                            ; $40a3: $9b
	db $fd                                           ; $40a4: $fd
	rst $38                                          ; $40a5: $ff
	ldh a, [$ee]                                     ; $40a6: $f0 $ee
	ld a, e                                          ; $40a8: $7b
	add b                                            ; $40a9: $80
	sbc d                                            ; $40aa: $9a
	ld [$1c74], sp                                   ; $40ab: $08 $74 $1c
	or d                                             ; $40ae: $b2
	xor d                                            ; $40af: $aa
	db $dd                                           ; $40b0: $dd
	rst $38                                          ; $40b1: $ff
	sbc e                                            ; $40b2: $9b
	adc a                                            ; $40b3: $8f
	rst SubAFromBC                                          ; $40b4: $e7
	ld c, a                                          ; $40b5: $4f
	ld d, a                                          ; $40b6: $57
	cp $9a                                           ; $40b7: $fe $9a
	inc bc                                           ; $40b9: $03
	rrca                                             ; $40ba: $0f
	rrca                                             ; $40bb: $0f
	rlca                                             ; $40bc: $07
	dec c                                            ; $40bd: $0d
	db $dd                                           ; $40be: $dd
	rst $38                                          ; $40bf: $ff
	sbc e                                            ; $40c0: $9b
	db $fc                                           ; $40c1: $fc
	ld hl, sp-$04                                    ; $40c2: $f8 $fc

jr_017_40c4:
	ld hl, sp-$02                                    ; $40c4: $f8 $fe
	sbc [hl]                                         ; $40c6: $9e
	db $fc                                           ; $40c7: $fc
	sbc $ff                                          ; $40c8: $de $ff
	sbc [hl]                                         ; $40ca: $9e
	ldh a, [c]                                       ; $40cb: $f2
	ld [hl], e                                       ; $40cc: $73
	ld [hl], h                                       ; $40cd: $74
	db $fc                                           ; $40ce: $fc

jr_017_40cf:
	sbc c                                            ; $40cf: $99
	ld bc, $0202                                     ; $40d0: $01 $02 $02
	add d                                            ; $40d3: $82
	add d                                            ; $40d4: $82
	pop bc                                           ; $40d5: $c1
	jp c, $8aff                                      ; $40d6: $da $ff $8a

	ld a, a                                          ; $40d9: $7f
	nop                                              ; $40da: $00
	ldh a, [$2f]                                     ; $40db: $f0 $2f
	ld [hl], b                                       ; $40dd: $70
	ld a, d                                          ; $40de: $7a
	ld h, b                                          ; $40df: $60
	rra                                              ; $40e0: $1f
	ld sp, rIE                                     ; $40e1: $31 $ff $ff
	rst SubAFromDE                                          ; $40e4: $df
	adc a                                            ; $40e5: $8f
	add l                                            ; $40e6: $85
	sbc a                                            ; $40e7: $9f
	ldh a, [$ee]                                     ; $40e8: $f0 $ee
	rst SubAFromDE                                          ; $40ea: $df
	rst SubAFromDE                                          ; $40eb: $df
	call $7b23                                       ; $40ec: $cd $23 $7b
	cp l                                             ; $40ef: $bd
	sub e                                            ; $40f0: $93
	rst JumpTable                                          ; $40f1: $c7
	nop                                              ; $40f2: $00
	nop                                              ; $40f3: $00
	call z, Call_017_44aa                            ; $40f4: $cc $aa $44
	add hl, sp                                       ; $40f7: $39
	add c                                            ; $40f8: $81
	ld [bc], a                                       ; $40f9: $02
	ld b, $07                                        ; $40fa: $06 $07
	rlca                                             ; $40fc: $07
	call c, $de03                                    ; $40fd: $dc $03 $de
	db $fc                                           ; $4100: $fc
	call c, $fdfe                                    ; $4101: $dc $fe $fd
	rst SubAFromDE                                          ; $4104: $df
	inc bc                                           ; $4105: $03
	ld a, [hl]                                       ; $4106: $7e
	call $ffdc                                       ; $4107: $cd $dc $ff
	ld a, a                                          ; $410a: $7f
	ld l, [hl]                                       ; $410b: $6e
	sbc [hl]                                         ; $410c: $9e
	cp $7b                                           ; $410d: $fe $7b
	db $10                                           ; $410f: $10
	cp $9d                                           ; $4110: $fe $9d
	and b                                            ; $4112: $a0
	nop                                              ; $4113: $00
	reti                                             ; $4114: $d9


	rst $38                                          ; $4115: $ff
	sbc b                                            ; $4116: $98
	add e                                            ; $4117: $83
	ld b, $08                                        ; $4118: $06 $08
	db $10                                           ; $411a: $10
	jr nz, jr_017_4131                               ; $411b: $20 $14

	ld a, [$207b]                                    ; $411d: $fa $7b $20
	sbc h                                            ; $4120: $9c
	rra                                              ; $4121: $1f
	rst $38                                          ; $4122: $ff
	ccf                                              ; $4123: $3f
	sbc $ff                                          ; $4124: $de $ff
	ld a, e                                          ; $4126: $7b
	jr nz, jr_017_40c4                               ; $4127: $20 $9b

	ld h, c                                          ; $4129: $61
	ld [hl+], a                                      ; $412a: $22
	db $e4                                           ; $412b: $e4
	xor a                                            ; $412c: $af
	ld [hl], e                                       ; $412d: $73
	jr nz, jr_017_41a7                               ; $412e: $20 $77

	ccf                                              ; $4130: $3f

jr_017_4131:
	ld a, e                                          ; $4131: $7b
	jr nz, jr_017_40cf                               ; $4132: $20 $9b

	ld [bc], a                                       ; $4134: $02
	inc b                                            ; $4135: $04
	rrca                                             ; $4136: $0f
	xor d                                            ; $4137: $aa
	ld [hl], a                                       ; $4138: $77
	ret nc                                           ; $4139: $d0

	ld [hl], e                                       ; $413a: $73
	jr nc, @-$6a                                     ; $413b: $30 $94

	or b                                             ; $413d: $b0
	ld c, [hl]                                       ; $413e: $4e
	rst $38                                          ; $413f: $ff
	ld b, h                                          ; $4140: $44
	ld a, h                                          ; $4141: $7c
	add h                                            ; $4142: $84
	cp $55                                           ; $4143: $fe $55
	ld a, a                                          ; $4145: $7f
	pop af                                           ; $4146: $f1
	rst GetHLinHL                                          ; $4147: $cf
	ld a, d                                          ; $4148: $7a
	ldh [c], a                                       ; $4149: $e2
	ld l, d                                          ; $414a: $6a
	ret nc                                           ; $414b: $d0

	sbc [hl]                                         ; $414c: $9e
	ld b, d                                          ; $414d: $42
	ld e, [hl]                                       ; $414e: $5e
	ret nc                                           ; $414f: $d0

jr_017_4150:
	sub h                                            ; $4150: $94
	ld d, $8c                                        ; $4151: $16 $8c
	jp $f070                                         ; $4153: $c3 $70 $f0


	ld [$0014], a                                    ; $4156: $ea $14 $00
	rst $38                                          ; $4159: $ff
	ld a, a                                          ; $415a: $7f
	cp a                                             ; $415b: $bf
	ld a, e                                          ; $415c: $7b
	ld d, d                                          ; $415d: $52
	add c                                            ; $415e: $81
	ld e, [hl]                                       ; $415f: $5e
	rst $38                                          ; $4160: $ff
	add $21                                          ; $4161: $c6 $21
	db $10                                           ; $4163: $10
	add [hl]                                         ; $4164: $86
	ld b, b                                          ; $4165: $40
	jr nz, jr_017_4150                               ; $4166: $20 $e8

	nop                                              ; $4168: $00
	rst JumpTable                                          ; $4169: $c7
	pop af                                           ; $416a: $f1
	ld hl, sp-$51                                    ; $416b: $f8 $af
	ld d, l                                          ; $416d: $55
	ld [$fffd], a                                    ; $416e: $ea $fd $ff
	pop hl                                           ; $4171: $e1
	ld h, b                                          ; $4172: $60
	db $10                                           ; $4173: $10
	ld [$a804], sp                                   ; $4174: $08 $04 $a8
	rra                                              ; $4177: $1f
	nop                                              ; $4178: $00
	add e                                            ; $4179: $83
	pop af                                           ; $417a: $f1
	ld hl, sp-$01                                    ; $417b: $f8 $ff
	ld [hl], a                                       ; $417d: $77
	rla                                              ; $417e: $17
	rst SubAFromDE                                          ; $417f: $df

jr_017_4180:
	add b                                            ; $4180: $80
	add h                                            ; $4181: $84
	and $1a                                          ; $4182: $e6 $1a
	jp nc, $ca84                                     ; $4184: $d2 $84 $ca

	db $f4                                           ; $4187: $f4
	rst $38                                          ; $4188: $ff
	ld a, a                                          ; $4189: $7f
	ccf                                              ; $418a: $3f
	rst SubAFromDE                                          ; $418b: $df
	and a                                            ; $418c: $a7
	ld c, a                                          ; $418d: $4f
	ccf                                              ; $418e: $3f
	rra                                              ; $418f: $1f
	sbc d                                            ; $4190: $9a
	reti                                             ; $4191: $d9


	halt                                             ; $4192: $76
	ld b, a                                          ; $4193: $47
	inc hl                                           ; $4194: $23
	jr nz, @+$28                                     ; $4195: $20 $26

	jr jr_017_4180                                   ; $4197: $18 $e7

	and a                                            ; $4199: $a7
	set 7, b                                         ; $419a: $cb $f8
	db $fc                                           ; $419c: $fc
	ld a, d                                          ; $419d: $7a
	ld e, $8b                                        ; $419e: $1e $8b
	xor h                                            ; $41a0: $ac
	ret c                                            ; $41a1: $d8

	ld hl, sp-$08                                    ; $41a2: $f8 $f8
	ldh [$f0], a                                     ; $41a4: $e0 $f0
	and b                                            ; $41a6: $a0

jr_017_41a7:
	ld [hl], b                                       ; $41a7: $70
	ld a, a                                          ; $41a8: $7f
	rrca                                             ; $41a9: $0f
	daa                                              ; $41aa: $27
	rrca                                             ; $41ab: $0f
	rra                                              ; $41ac: $1f
	rrca                                             ; $41ad: $0f
	rst $38                                          ; $41ae: $ff
	sbc a                                            ; $41af: $9f
	ld c, $0e                                        ; $41b0: $0e $0e
	rrca                                             ; $41b2: $0f
	inc c                                            ; $41b3: $0c
	ld a, e                                          ; $41b4: $7b
	db $fc                                           ; $41b5: $fc
	sbc [hl]                                         ; $41b6: $9e
	rrca                                             ; $41b7: $0f
	sbc $f8                                          ; $41b8: $de $f8
	adc b                                            ; $41ba: $88

jr_017_41bb:
	ld a, [$f9f8]                                    ; $41bb: $fa $f8 $f9
	ld hl, sp-$07                                    ; $41be: $f8 $f9
	res 6, b                                         ; $41c0: $cb $b0
	nop                                              ; $41c2: $00
	inc sp                                           ; $41c3: $33
	nop                                              ; $41c4: $00
	nop                                              ; $41c5: $00
	ret nz                                           ; $41c6: $c0

	ld h, e                                          ; $41c7: $63
	inc d                                            ; $41c8: $14
	ld a, [bc]                                       ; $41c9: $0a
	ret nz                                           ; $41ca: $c0

	cp e                                             ; $41cb: $bb
	nop                                              ; $41cc: $00
	adc h                                            ; $41cd: $8c
	add c                                            ; $41ce: $81
	ret nz                                           ; $41cf: $c0

	ld h, b                                          ; $41d0: $60
	ld h, b                                          ; $41d1: $60
	db $dd                                           ; $41d2: $dd
	ld b, b                                          ; $41d3: $40
	rst SubAFromDE                                          ; $41d4: $df
	ret nz                                           ; $41d5: $c0

	rst SubAFromDE                                          ; $41d6: $df
	cp a                                             ; $41d7: $bf
	sbc e                                            ; $41d8: $9b
	db $fd                                           ; $41d9: $fd
	di                                               ; $41da: $f3
	rst FarCall                                          ; $41db: $f7
	rst $38                                          ; $41dc: $ff
	call c, $7f7f                                    ; $41dd: $dc $7f $7f
	xor e                                            ; $41e0: $ab
	sbc h                                            ; $41e1: $9c
	ld e, $0c                                        ; $41e2: $1e $0c
	jr jr_017_4260                                   ; $41e4: $18 $7a

	add d                                            ; $41e6: $82
	sbc c                                            ; $41e7: $99
	db $fc                                           ; $41e8: $fc
	sbc $bd                                          ; $41e9: $de $bd
	ld a, $fc                                        ; $41eb: $3e $fc
	ld hl, sp+$77                                    ; $41ed: $f8 $77
	or b                                             ; $41ef: $b0
	sbc e                                            ; $41f0: $9b
	ld [hl], b                                       ; $41f1: $70
	and b                                            ; $41f2: $a0
	ld [hl], b                                       ; $41f3: $70
	ld l, a                                          ; $41f4: $6f
	ld [hl], a                                       ; $41f5: $77
	or b                                             ; $41f6: $b0
	adc d                                            ; $41f7: $8a
	adc a                                            ; $41f8: $8f
	rst $38                                          ; $41f9: $ff
	sbc a                                            ; $41fa: $9f
	dec de                                           ; $41fb: $1b
	push hl                                          ; $41fc: $e5
	cp $4d                                           ; $41fd: $fe $4d
	ld a, d                                          ; $41ff: $7a
	ld b, [hl]                                       ; $4200: $46
	rst $38                                          ; $4201: $ff
	push af                                          ; $4202: $f5
	db $fc                                           ; $4203: $fc
	ld e, $e7                                        ; $4204: $1e $e7
	rst JumpTable                                          ; $4206: $c7
	ld sp, hl                                        ; $4207: $f9
	jr nc, jr_017_4210                               ; $4208: $30 $06

	adc a                                            ; $420a: $8f
	ld d, $0c                                        ; $420b: $16 $0c
	halt                                             ; $420d: $76
	adc d                                            ; $420e: $8a
	sbc l                                            ; $420f: $9d

jr_017_4210:
	inc b                                            ; $4210: $04
	ld [bc], a                                       ; $4211: $02
	db $db                                           ; $4212: $db
	rst $38                                          ; $4213: $ff
	ld a, a                                          ; $4214: $7f
	dec c                                            ; $4215: $0d
	sub [hl]                                         ; $4216: $96
	jr nc, @+$22                                     ; $4217: $30 $20

	jr nz, jr_017_41bb                               ; $4219: $20 $a0

	jr nz, @+$01                                     ; $421b: $20 $ff

	xor d                                            ; $421d: $aa
	cp $5f                                           ; $421e: $fe $5f
	sbc $3f                                          ; $4220: $de $3f
	halt                                             ; $4222: $76
	rrca                                             ; $4223: $0f
	adc c                                            ; $4224: $89
	jr c, jr_017_4227                                ; $4225: $38 $00

jr_017_4227:
	add a                                            ; $4227: $87
	and b                                            ; $4228: $a0
	nop                                              ; $4229: $00
	add a                                            ; $422a: $87
	ld a, [bc]                                       ; $422b: $0a
	rst $38                                          ; $422c: $ff
	add b                                            ; $422d: $80
	ld [bc], a                                       ; $422e: $02
	nop                                              ; $422f: $00
	ld e, c                                          ; $4230: $59
	ld hl, $1f87                                     ; $4231: $21 $87 $1f
	rst $38                                          ; $4234: $ff
	inc bc                                           ; $4235: $03

jr_017_4236:
	ld [bc], a                                       ; $4236: $02
	dec b                                            ; $4237: $05
	jr nc, @+$42                                     ; $4238: $30 $40

	rst $38                                          ; $423a: $ff
	halt                                             ; $423b: $76
	ld sp, $fc9d                                     ; $423c: $31 $9d $fc
	ldh a, [rPCM12]                                  ; $423f: $f0 $76
	rst AddAOntoHL                                          ; $4241: $ef
	add b                                            ; $4242: $80
	inc b                                            ; $4243: $04
	ld b, d                                          ; $4244: $42
	ld h, $06                                        ; $4245: $26 $06
	and [hl]                                         ; $4247: $a6
	rra                                              ; $4248: $1f
	ld a, [bc]                                       ; $4249: $0a
	ld c, a                                          ; $424a: $4f
	rrca                                             ; $424b: $0f
	rlca                                             ; $424c: $07
	inc bc                                           ; $424d: $03
	inc hl                                           ; $424e: $23
	srl a                                            ; $424f: $cb $3f
	ld e, a                                          ; $4251: $5f
	rst SubAFromDE                                          ; $4252: $df
	scf                                              ; $4253: $37
	ld [hl], d                                       ; $4254: $72
	ld a, [hl]                                       ; $4255: $7e
	cpl                                              ; $4256: $2f
	rrca                                             ; $4257: $0f
	inc e                                            ; $4258: $1c
	dec bc                                           ; $4259: $0b
	inc a                                            ; $425a: $3c
	add sp, -$1b                                     ; $425b: $e8 $e5
	ret                                              ; $425d: $c9


	ldh [$e0], a                                     ; $425e: $e0 $e0

jr_017_4260:
	db $e3                                           ; $4260: $e3
	rst $38                                          ; $4261: $ff
	sub h                                            ; $4262: $94
	ldh [c], a                                       ; $4263: $e2
	ld h, d                                          ; $4264: $62
	ld [de], a                                       ; $4265: $12
	add h                                            ; $4266: $84
	add h                                            ; $4267: $84
	ld [$9008], sp                                   ; $4268: $08 $08 $90
	ld [hl], b                                       ; $426b: $70
	sbc a                                            ; $426c: $9f
	rst AddAOntoHL                                          ; $426d: $ef
	ld [hl], c                                       ; $426e: $71
	ld l, h                                          ; $426f: $6c
	sbc e                                            ; $4270: $9b
	rst $38                                          ; $4271: $ff
	dec de                                           ; $4272: $1b
	rra                                              ; $4273: $1f
	rra                                              ; $4274: $1f
	db $dd                                           ; $4275: $dd
	inc c                                            ; $4276: $0c
	sbc c                                            ; $4277: $99
	rlca                                             ; $4278: $07
	ldh a, [$f0]                                     ; $4279: $f0 $f0
	di                                               ; $427b: $f3
	ld a, [$7bf9]                                    ; $427c: $fa $f9 $7b
	dec l                                            ; $427f: $2d
	adc [hl]                                         ; $4280: $8e

jr_017_4281:
	ld a, l                                          ; $4281: $7d
	ld a, a                                          ; $4282: $7f
	scf                                              ; $4283: $37
	adc h                                            ; $4284: $8c
	ld bc, $0f01                                     ; $4285: $01 $01 $0f
	dec de                                           ; $4288: $1b
	nop                                              ; $4289: $00
	nop                                              ; $428a: $00
	jr nc, jr_017_4236                               ; $428b: $30 $a9

	db $10                                           ; $428d: $10
	add $c4                                          ; $428e: $c6 $c4
	ld c, $c1                                        ; $4290: $0e $c1
	jp c, Jump_017_77c0                              ; $4292: $da $c0 $77

	jp nc, Jump_017_7fdd                             ; $4295: $d2 $dd $7f

	sbc l                                            ; $4298: $9d
	scf                                              ; $4299: $37
	ldh a, [c]                                       ; $429a: $f2
	ld a, e                                          ; $429b: $7b
	or b                                             ; $429c: $b0
	sbc [hl]                                         ; $429d: $9e
	ld e, $6b                                        ; $429e: $1e $6b
	or b                                             ; $42a0: $b0
	sbc [hl]                                         ; $42a1: $9e
	pop hl                                           ; $42a2: $e1
	ld h, a                                          ; $42a3: $67
	or b                                             ; $42a4: $b0
	sbc [hl]                                         ; $42a5: $9e
	ret nc                                           ; $42a6: $d0

	ld h, e                                          ; $42a7: $63
	or b                                             ; $42a8: $b0
	adc a                                            ; $42a9: $8f
	rrca                                             ; $42aa: $0f
	dec e                                            ; $42ab: $1d
	dec l                                            ; $42ac: $2d
	ld [hl], d                                       ; $42ad: $72
	rst AddAOntoHL                                          ; $42ae: $ef
	call c, $efba                                    ; $42af: $dc $ba $ef
	ld sp, hl                                        ; $42b2: $f9
	di                                               ; $42b3: $f3
	ldh a, [c]                                       ; $42b4: $f2
	rst GetHLinHL                                          ; $42b5: $cf
	sbc a                                            ; $42b6: $9f
	ld h, [hl]                                       ; $42b7: $66
	add $1f                                          ; $42b8: $c6 $1f
	db $fc                                           ; $42ba: $fc
	ld a, e                                          ; $42bb: $7b
	ld b, b                                          ; $42bc: $40
	reti                                             ; $42bd: $d9


	rst $38                                          ; $42be: $ff
	cp $9b                                           ; $42bf: $fe $9b
	add b                                            ; $42c1: $80
	ldh a, [$7f]                                     ; $42c2: $f0 $7f
	cp l                                             ; $42c4: $bd
	ld l, l                                          ; $42c5: $6d
	or e                                             ; $42c6: $b3
	add b                                            ; $42c7: $80
	sbc a                                            ; $42c8: $9f
	rst GetHLinHL                                          ; $42c9: $cf
	rst $38                                          ; $42ca: $ff
	jr jr_017_4306                                   ; $42cb: $18 $39

	ld a, [hl-]                                      ; $42cd: $3a
	jr nz, jr_017_4281                               ; $42ce: $20 $b1

	db $f4                                           ; $42d0: $f4
	ld d, b                                          ; $42d1: $50
	push af                                          ; $42d2: $f5
	db $fc                                           ; $42d3: $fc
	add sp, -$18                                     ; $42d4: $e8 $e8
	ldh a, [c]                                       ; $42d6: $f2
	rst FarCall                                          ; $42d7: $f7
	ld hl, sp-$0c                                    ; $42d8: $f8 $f4
	rst FarCall                                          ; $42da: $f7
	jr nz, jr_017_42dd                               ; $42db: $20 $00

jr_017_42dd:
	ld h, b                                          ; $42dd: $60
	ld b, e                                          ; $42de: $43
	nop                                              ; $42df: $00
	ld a, a                                          ; $42e0: $7f
	dec d                                            ; $42e1: $15
	rst $38                                          ; $42e2: $ff
	ld e, a                                          ; $42e3: $5f
	ccf                                              ; $42e4: $3f
	rrca                                             ; $42e5: $0f
	add e                                            ; $42e6: $83
	adc e                                            ; $42e7: $8b
	jr c, jr_017_4369                                ; $42e8: $38 $7f

	ccf                                              ; $42ea: $3f
	rst $38                                          ; $42eb: $ff
	rlca                                             ; $42ec: $07
	nop                                              ; $42ed: $00
	jr c, jr_017_4331                                ; $42ee: $38 $41

	nop                                              ; $42f0: $00
	ld hl, sp+$54                                    ; $42f1: $f8 $54
	rst $38                                          ; $42f3: $ff
	add b                                            ; $42f4: $80
	stop                                             ; $42f5: $10 $00
	ld h, $a1                                        ; $42f7: $26 $a1
	ld hl, sp-$02                                    ; $42f9: $f8 $fe
	rst $38                                          ; $42fb: $ff
	sbc $02                                          ; $42fc: $de $02
	sbc l                                            ; $42fe: $9d
	add d                                            ; $42ff: $82
	ldh a, [c]                                       ; $4300: $f2
	ld e, e                                          ; $4301: $5b
	ret nz                                           ; $4302: $c0

	adc a                                            ; $4303: $8f
	ld a, [hl-]                                      ; $4304: $3a
	inc l                                            ; $4305: $2c

jr_017_4306:
	ld l, a                                          ; $4306: $6f
	cpl                                              ; $4307: $2f
	push af                                          ; $4308: $f5
	ld [hl], l                                       ; $4309: $75
	cp d                                             ; $430a: $ba
	cp $47                                           ; $430b: $fe $47
	ld [hl], e                                       ; $430d: $73
	ld sp, $fe18                                     ; $430e: $31 $18 $fe
	rst GetHLinHL                                          ; $4311: $cf
	rst JumpTable                                          ; $4312: $c7
	pop hl                                           ; $4313: $e1
	ld [hl], a                                       ; $4314: $77
	or b                                             ; $4315: $b0
	sbc [hl]                                         ; $4316: $9e
	ld sp, $b05b                                     ; $4317: $31 $5b $b0
	sub h                                            ; $431a: $94
	or c                                             ; $431b: $b1
	add hl, bc                                       ; $431c: $09
	ld b, d                                          ; $431d: $42
	jp nz, $0484                                     ; $431e: $c2 $84 $04

	ld l, b                                          ; $4321: $68
	jr jr_017_4373                                   ; $4322: $18 $4f

	rst FarCall                                          ; $4324: $f7
	cp a                                             ; $4325: $bf
	ld a, d                                          ; $4326: $7a
	ret nz                                           ; $4327: $c0

	ld a, a                                          ; $4328: $7f
	xor a                                            ; $4329: $af
	adc d                                            ; $432a: $8a
	sbc e                                            ; $432b: $9b
	ld a, c                                          ; $432c: $79
	ccf                                              ; $432d: $3f
	rra                                              ; $432e: $1f
	rlca                                             ; $432f: $07
	rrca                                             ; $4330: $0f

jr_017_4331:
	dec b                                            ; $4331: $05
	ld c, $f4                                        ; $4332: $0e $f4
	ldh a, [c]                                       ; $4334: $f2
	db $e4                                           ; $4335: $e4
	ldh a, [$f8]                                     ; $4336: $f0 $f8
	ldh a, [rIE]                                     ; $4338: $f0 $ff
	ld sp, hl                                        ; $433a: $f9
	ld [hl], b                                       ; $433b: $70
	ldh a, [$f0]                                     ; $433c: $f0 $f0
	jr nc, @+$72                                     ; $433e: $30 $70

	ld a, e                                          ; $4340: $7b
	ei                                               ; $4341: $fb
	rst SubAFromDE                                          ; $4342: $df
	rra                                              ; $4343: $1f
	ld a, a                                          ; $4344: $7f
	pop hl                                           ; $4345: $e1
	add b                                            ; $4346: $80
	rra                                              ; $4347: $1f
	sbc a                                            ; $4348: $9f
	rra                                              ; $4349: $1f
	sbc a                                            ; $434a: $9f
	jr nz, jr_017_438f                               ; $434b: $20 $42

	ld h, h                                          ; $434d: $64
	ld h, b                                          ; $434e: $60
	ld h, l                                          ; $434f: $65
	ld hl, sp+$50                                    ; $4350: $f8 $50
	ldh a, [c]                                       ; $4352: $f2
	ldh a, [$e0]                                     ; $4353: $f0 $e0
	ret nz                                           ; $4355: $c0

	call nz, $fcd3                                   ; $4356: $c4 $d3 $fc
	ld a, [$f0fb]                                    ; $4359: $fa $fb $f0
	cp b                                             ; $435c: $b8
	or h                                             ; $435d: $b4
	ld c, [hl]                                       ; $435e: $4e
	rst FarCall                                          ; $435f: $f7
	dec sp                                           ; $4360: $3b
	ld e, l                                          ; $4361: $5d
	rst FarCall                                          ; $4362: $f7
	sbc a                                            ; $4363: $9f
	rst GetHLinHL                                          ; $4364: $cf
	ld c, a                                          ; $4365: $4f
	sub b                                            ; $4366: $90
	di                                               ; $4367: $f3
	ld sp, hl                                        ; $4368: $f9

jr_017_4369:
	ld h, [hl]                                       ; $4369: $66
	ld h, e                                          ; $436a: $63
	ld hl, sp+$0c                                    ; $436b: $f8 $0c
	inc c                                            ; $436d: $0c
	inc b                                            ; $436e: $04
	dec b                                            ; $436f: $05
	inc b                                            ; $4370: $04
	rst $38                                          ; $4371: $ff
	ld d, l                                          ; $4372: $55

jr_017_4373:
	ld a, a                                          ; $4373: $7f
	ld a, [$79f8]                                    ; $4374: $fa $f8 $79
	rra                                              ; $4377: $1f
	sbc $ff                                          ; $4378: $de $ff
	add d                                            ; $437a: $82
	inc e                                            ; $437b: $1c
	nop                                              ; $437c: $00
	pop hl                                           ; $437d: $e1
	dec b                                            ; $437e: $05
	nop                                              ; $437f: $00
	pop hl                                           ; $4380: $e1
	ld d, b                                          ; $4381: $50
	rst $38                                          ; $4382: $ff
	ld bc, $0040                                     ; $4383: $01 $40 $00
	sbc d                                            ; $4386: $9a
	add h                                            ; $4387: $84
	pop hl                                           ; $4388: $e1
	ld hl, sp-$01                                    ; $4389: $f8 $ff
	ldh [$60], a                                     ; $438b: $e0 $60
	and b                                            ; $438d: $a0
	inc c                                            ; $438e: $0c

jr_017_438f:
	ld [bc], a                                       ; $438f: $02
	rst $38                                          ; $4390: $ff
	ld d, l                                          ; $4391: $55
	rst $38                                          ; $4392: $ff
	ccf                                              ; $4393: $3f
	cp a                                             ; $4394: $bf
	ccf                                              ; $4395: $3f
	rrca                                             ; $4396: $0f
	db $e3                                           ; $4397: $e3
	sbc $ff                                          ; $4398: $de $ff

jr_017_439a:
	rst SubAFromDE                                          ; $439a: $df
	rst SubAFromDE                                          ; $439b: $df
	sbc l                                            ; $439c: $9d
	ld bc, $6ccd                                     ; $439d: $01 $cd $6c
	ldh [$9b], a                                     ; $43a0: $e0 $9b
	nop                                              ; $43a2: $00
	call c, $3100                                    ; $43a3: $dc $00 $31
	ld d, h                                          ; $43a6: $54
	ldh [$9c], a                                     ; $43a7: $e0 $9c
	cp h                                             ; $43a9: $bc
	adc $ee                                          ; $43aa: $ce $ee
	ld l, b                                          ; $43ac: $68
	ldh [$7e], a                                     ; $43ad: $e0 $7e
	ldh [$7f], a                                     ; $43af: $e0 $7f
	or b                                             ; $43b1: $b0
	reti                                             ; $43b2: $d9


	rst $38                                          ; $43b3: $ff
	ld [hl], a                                       ; $43b4: $77
	ld d, b                                          ; $43b5: $50
	sbc [hl]                                         ; $43b6: $9e
	add b                                            ; $43b7: $80
	ld l, e                                          ; $43b8: $6b
	ld d, b                                          ; $43b9: $50
	sbc c                                            ; $43ba: $99
	ld a, e                                          ; $43bb: $7b
	db $fd                                           ; $43bc: $fd
	ld a, h                                          ; $43bd: $7c
	ccf                                              ; $43be: $3f
	dec de                                           ; $43bf: $1b
	add hl, sp                                       ; $43c0: $39
	ld c, a                                          ; $43c1: $4f
	ld d, b                                          ; $43c2: $50
	adc a                                            ; $43c3: $8f
	db $f4                                           ; $43c4: $f4
	db $ec                                           ; $43c5: $ec
	db $fc                                           ; $43c6: $fc
	db $fc                                           ; $43c7: $fc
	ldh a, [$38]                                     ; $43c8: $f0 $38
	ret nc                                           ; $43ca: $d0

	inc a                                            ; $43cb: $3c
	cp a                                             ; $43cc: $bf
	add a                                            ; $43cd: $87
	sub e                                            ; $43ce: $93
	rlca                                             ; $43cf: $07
	rlca                                             ; $43d0: $07
	rst JumpTable                                          ; $43d1: $c7
	rst $38                                          ; $43d2: $ff
	ld b, a                                          ; $43d3: $47
	sbc $3f                                          ; $43d4: $de $3f
	ld a, l                                          ; $43d6: $7d
	ld l, c                                          ; $43d7: $69
	ld a, [hl]                                       ; $43d8: $7e
	inc de                                           ; $43d9: $13
	sbc [hl]                                         ; $43da: $9e
	ld b, $79                                        ; $43db: $06 $79
	call nc, $9c72                                   ; $43dd: $d4 $72 $9c
	ld [hl], h                                       ; $43e0: $74
	ld c, a                                          ; $43e1: $4f
	sbc l                                            ; $43e2: $9d
	rrca                                             ; $43e3: $0f
	cp $6e                                           ; $43e4: $fe $6e
	ldh [$80], a                                     ; $43e6: $e0 $80
	cp $f9                                           ; $43e8: $fe $f9
	di                                               ; $43ea: $f3
	rst $38                                          ; $43eb: $ff
	ld e, h                                          ; $43ec: $5c
	inc [hl]                                         ; $43ed: $34
	or $f4                                           ; $43ee: $f6 $f4
	xor a                                            ; $43f0: $af
	xor [hl]                                         ; $43f1: $ae
	ld e, l                                          ; $43f2: $5d
	ld a, a                                          ; $43f3: $7f
	ldh [c], a                                       ; $43f4: $e2
	adc $8c                                          ; $43f5: $ce $8c
	jr jr_017_4478                                   ; $43f7: $18 $7f

	di                                               ; $43f9: $f3
	db $e3                                           ; $43fa: $e3
	add a                                            ; $43fb: $87
	jr jr_017_439a                                   ; $43fc: $18 $9c

	ld e, h                                          ; $43fe: $5c
	inc b                                            ; $43ff: $04
	adc l                                            ; $4400: $8d
	cpl                                              ; $4401: $2f
	ld a, [bc]                                       ; $4402: $0a
	xor a                                            ; $4403: $af
	ccf                                              ; $4404: $3f
	rla                                              ; $4405: $17
	rla                                              ; $4406: $17
	add b                                            ; $4407: $80
	ld c, a                                          ; $4408: $4f

jr_017_4409:
	rst AddAOntoHL                                          ; $4409: $ef
	rra                                              ; $440a: $1f
	cpl                                              ; $440b: $2f
	rst AddAOntoHL                                          ; $440c: $ef
	inc b                                            ; $440d: $04
	nop                                              ; $440e: $00
	ld b, $c2                                        ; $440f: $06 $c2
	nop                                              ; $4411: $00
	cp $a8                                           ; $4412: $fe $a8
	rst $38                                          ; $4414: $ff
	ld a, [$f0fc]                                    ; $4415: $fa $fc $f0
	pop bc                                           ; $4418: $c1
	inc e                                            ; $4419: $1c
	cp $fc                                           ; $441a: $fe $fc
	rst $38                                          ; $441c: $ff
	ldh [rP1], a                                     ; $441d: $e0 $00
	inc e                                            ; $441f: $1c
	add d                                            ; $4420: $82
	nop                                              ; $4421: $00
	rra                                              ; $4422: $1f
	ld a, [hl+]                                      ; $4423: $2a
	rst $38                                          ; $4424: $ff
	ld bc, $9a08                                     ; $4425: $01 $08 $9a
	nop                                              ; $4428: $00
	ld h, h                                          ; $4429: $64
	add l                                            ; $442a: $85
	rra                                              ; $442b: $1f
	ld a, a                                          ; $442c: $7f

jr_017_442d:
	ld a, b                                          ; $442d: $78
	ldh [$9c], a                                     ; $442e: $e0 $9c
	add b                                            ; $4430: $80
	add c                                            ; $4431: $81
	adc a                                            ; $4432: $8f
	ld e, e                                          ; $4433: $5b
	or b                                             ; $4434: $b0
	sbc h                                            ; $4435: $9c
	sbc b                                            ; $4436: $98
	jr jr_017_4409                                   ; $4437: $18 $d0

	sbc $10                                          ; $4439: $de $10
	sbc e                                            ; $443b: $9b
	jr nc, @-$1e                                     ; $443c: $30 $e0

	ld l, a                                          ; $443e: $6f
	xor a                                            ; $443f: $af
	ld a, b                                          ; $4440: $78
	sbc [hl]                                         ; $4441: $9e
	ld a, l                                          ; $4442: $7d
	and b                                            ; $4443: $a0
	sbc [hl]                                         ; $4444: $9e
	rra                                              ; $4445: $1f
	ld [hl], a                                       ; $4446: $77
	or b                                             ; $4447: $b0
	sbc [hl]                                         ; $4448: $9e
	adc h                                            ; $4449: $8c
	ld e, e                                          ; $444a: $5b
	or b                                             ; $444b: $b0
	adc a                                            ; $444c: $8f
	or d                                             ; $444d: $b2
	xor [hl]                                         ; $444e: $ae
	call z, $8011                                    ; $444f: $cc $11 $80
	add b                                            ; $4452: $80
	ldh a, [$d8]                                     ; $4453: $f0 $d8
	dec b                                            ; $4455: $05
	nop                                              ; $4456: $00
	inc a                                            ; $4457: $3c
	or l                                             ; $4458: $b5
	ld [$2363], sp                                   ; $4459: $08 $63 $23
	ld [hl], b                                       ; $445c: $70
	jp c, $9e03                                      ; $445d: $da $03 $9e

	ld [bc], a                                       ; $4460: $02
	jp c, $98fe                                      ; $4461: $da $fe $98

	rst $38                                          ; $4464: $ff
	ld d, [hl]                                       ; $4465: $56
	db $ec                                           ; $4466: $ec
	ld a, h                                          ; $4467: $7c
	db $fc                                           ; $4468: $fc
	ldh a, [$78]                                     ; $4469: $f0 $78
	ld l, e                                          ; $446b: $6b
	ld b, b                                          ; $446c: $40
	sub c                                            ; $446d: $91
	add a                                            ; $446e: $87
	rst $38                                          ; $446f: $ff
	ld b, a                                          ; $4470: $47
	ld c, l                                          ; $4471: $4d
	ld l, h                                          ; $4472: $6c
	dec sp                                           ; $4473: $3b
	inc hl                                           ; $4474: $23
	ld de, $1310                                     ; $4475: $11 $10 $13

jr_017_4478:
	ld c, $f3                                        ; $4478: $0e $f3
	db $d3                                           ; $447a: $d3
	push hl                                          ; $447b: $e5
	ld [hl], d                                       ; $447c: $72
	or b                                             ; $447d: $b0
	adc a                                            ; $447e: $8f
	nop                                              ; $447f: $00
	ld a, b                                          ; $4480: $78
	sub a                                            ; $4481: $97
	jr c, jr_017_44c1                                ; $4482: $38 $3d

	jr nc, jr_017_4495                               ; $4484: $30 $0f

	sbc b                                            ; $4486: $98
	rst $38                                          ; $4487: $ff
	rst $38                                          ; $4488: $ff
	rst AddAOntoHL                                          ; $4489: $ef
	rst JumpTable                                          ; $448a: $c7
	jp nz, $f8cf                                     ; $448b: $c2 $cf $f8

	rst FarCall                                          ; $448e: $f7
	ld [hl], a                                       ; $448f: $77
	jr nc, jr_017_442d                               ; $4490: $30 $9b

	pop bc                                           ; $4492: $c1
	pop hl                                           ; $4493: $e1
	pop hl                                           ; $4494: $e1

jr_017_4495:
	or b                                             ; $4495: $b0
	call c, Call_017_7bff                            ; $4496: $dc $ff $7b
	inc d                                            ; $4499: $14
	halt                                             ; $449a: $76
	jp nc, $ffde                                     ; $449b: $d2 $de $ff

	sbc [hl]                                         ; $449e: $9e
	ld a, h                                          ; $449f: $7c
	ld l, e                                          ; $44a0: $6b
	inc d                                            ; $44a1: $14
	db $fc                                           ; $44a2: $fc
	rst SubAFromDE                                          ; $44a3: $df
	inc bc                                           ; $44a4: $03
	sbc l                                            ; $44a5: $9d
	ld bc, $6f03                                     ; $44a6: $01 $03 $6f
	ld e, a                                          ; $44a9: $5f

Call_017_44aa:
	sub l                                            ; $44aa: $95
	sbc a                                            ; $44ab: $9f
	adc $00                                          ; $44ac: $ce $00
	nop                                              ; $44ae: $00
	ld hl, sp+$04                                    ; $44af: $f8 $04
	ld a, [hl-]                                      ; $44b1: $3a
	ld c, $d9                                        ; $44b2: $0e $d9
	push de                                          ; $44b4: $d5
	db $dd                                           ; $44b5: $dd
	rst $38                                          ; $44b6: $ff
	sbc e                                            ; $44b7: $9b
	rst JumpTable                                          ; $44b8: $c7
	di                                               ; $44b9: $f3
	daa                                              ; $44ba: $27
	dec hl                                           ; $44bb: $2b
	ld a, e                                          ; $44bc: $7b
	pop bc                                           ; $44bd: $c1
	sbc d                                            ; $44be: $9a
	ld e, $35                                        ; $44bf: $1e $35

jr_017_44c1:
	ld b, b                                          ; $44c1: $40
	ld [hl], a                                       ; $44c2: $77
	ld e, b                                          ; $44c3: $58
	ld l, h                                          ; $44c4: $6c
	or d                                             ; $44c5: $b2
	ld [hl], a                                       ; $44c6: $77
	or b                                             ; $44c7: $b0
	ld a, [hl]                                       ; $44c8: $7e
	ld e, h                                          ; $44c9: $5c
	sbc e                                            ; $44ca: $9b
	ld l, $67                                        ; $44cb: $2e $67
	rst $38                                          ; $44cd: $ff
	db $fd                                           ; $44ce: $fd
	ld [hl], a                                       ; $44cf: $77
	or d                                             ; $44d0: $b2
	ld [hl], e                                       ; $44d1: $73
	cp h                                             ; $44d2: $bc
	sbc h                                            ; $44d3: $9c
	dec b                                            ; $44d4: $05
	rra                                              ; $44d5: $1f
	ld e, $dd                                        ; $44d6: $1e $dd
	ccf                                              ; $44d8: $3f
	reti                                             ; $44d9: $d9


	rst $38                                          ; $44da: $ff
	sbc h                                            ; $44db: $9c
	dec bc                                           ; $44dc: $0b
	ld b, $01                                        ; $44dd: $06 $01
	cp $7f                                           ; $44df: $fe $7f
	ld b, d                                          ; $44e1: $42
	reti                                             ; $44e2: $d9


	rst $38                                          ; $44e3: $ff
	sub h                                            ; $44e4: $94
	dec c                                            ; $44e5: $0d
	ld [hl], d                                       ; $44e6: $72
	rst $38                                          ; $44e7: $ff
	ld [hl+], a                                      ; $44e8: $22
	ld a, $21                                        ; $44e9: $3e $21
	ld a, a                                          ; $44eb: $7f
	xor d                                            ; $44ec: $aa
	cp $8f                                           ; $44ed: $fe $8f
	di                                               ; $44ef: $f3
	halt                                             ; $44f0: $76
	ld sp, $ff91                                     ; $44f1: $31 $91 $ff
	ret nz                                           ; $44f4: $c0

	ret nz                                           ; $44f5: $c0

	ld [hl], b                                       ; $44f6: $70
	adc b                                            ; $44f7: $88
	ld [hl], h                                       ; $44f8: $74
	ld b, d                                          ; $44f9: $42
	ld b, c                                          ; $44fa: $41
	cp a                                             ; $44fb: $bf
	ld a, a                                          ; $44fc: $7f
	ccf                                              ; $44fd: $3f
	sbc a                                            ; $44fe: $9f
	rst AddAOntoHL                                          ; $44ff: $ef
	rst $38                                          ; $4500: $ff
	ld a, e                                          ; $4501: $7b
	xor $92                                          ; $4502: $ee $92
	pop bc                                           ; $4504: $c1
	ld h, b                                          ; $4505: $60
	db $10                                           ; $4506: $10
	ld [$2804], sp                                   ; $4507: $08 $04 $28
	ld e, a                                          ; $450a: $5f
	nop                                              ; $450b: $00
	add e                                            ; $450c: $83
	pop af                                           ; $450d: $f1
	ld hl, sp-$01                                    ; $450e: $f8 $ff
	db $fc                                           ; $4510: $fc
	sbc $ff                                          ; $4511: $de $ff
	sub e                                            ; $4513: $93
	add $21                                          ; $4514: $c6 $21
	ld [$4486], sp                                   ; $4516: $08 $86 $44

jr_017_4519:
	daa                                              ; $4519: $27
	push af                                          ; $451a: $f5
	nop                                              ; $451b: $00
	rst JumpTable                                          ; $451c: $c7
	pop af                                           ; $451d: $f1
	db $fc                                           ; $451e: $fc
	cp $76                                           ; $451f: $fe $76
	dec hl                                           ; $4521: $2b
	ld a, a                                          ; $4522: $7f
	or b                                             ; $4523: $b0
	sbc d                                            ; $4524: $9a
	add c                                            ; $4525: $81
	ld b, b                                          ; $4526: $40
	jr nz, jr_017_4519                               ; $4527: $20 $f0

	ld d, l                                          ; $4529: $55
	ld [hl], a                                       ; $452a: $77
	or b                                             ; $452b: $b0
	ld [hl], d                                       ; $452c: $72
	inc e                                            ; $452d: $1c
	ld [hl], l                                       ; $452e: $75
	nop                                              ; $452f: $00
	rst SubAFromDE                                          ; $4530: $df
	ld hl, sp-$63                                    ; $4531: $f8 $9d
	sub b                                            ; $4533: $90
	ld l, b                                          ; $4534: $68
	ld [hl], c                                       ; $4535: $71
	ld b, b                                          ; $4536: $40
	sbc l                                            ; $4537: $9d
	rrca                                             ; $4538: $0f
	rra                                              ; $4539: $1f
	ld a, e                                          ; $453a: $7b
	jr nc, @-$64                                     ; $453b: $30 $9a

	inc e                                            ; $453d: $1c
	ld a, a                                          ; $453e: $7f
	rst $38                                          ; $453f: $ff
	ldh [$cf], a                                     ; $4540: $e0 $cf
	ld a, e                                          ; $4542: $7b
	db $10                                           ; $4543: $10
	sbc h                                            ; $4544: $9c
	ei                                               ; $4545: $fb

jr_017_4546:
	rst AddAOntoHL                                          ; $4546: $ef
	add b                                            ; $4547: $80
	ld [hl], a                                       ; $4548: $77
	add a                                            ; $4549: $87
	db $fd                                           ; $454a: $fd
	rst SubAFromDE                                          ; $454b: $df
	ld bc, $bd7d                                     ; $454c: $01 $7d $bd
	ld h, b                                          ; $454f: $60
	ret nc                                           ; $4550: $d0

	sbc c                                            ; $4551: $99
	and b                                            ; $4552: $a0
	ld e, h                                          ; $4553: $5c
	cp [hl]                                          ; $4554: $be
	inc d                                            ; $4555: $14
	ld b, d                                          ; $4556: $42
	xor c                                            ; $4557: $a9
	db $dd                                           ; $4558: $dd
	rst $38                                          ; $4559: $ff
	sbc l                                            ; $455a: $9d
	ld d, e                                          ; $455b: $53
	rst AddAOntoHL                                          ; $455c: $ef
	ld a, e                                          ; $455d: $7b
	ldh a, [$98]                                     ; $455e: $f0 $98
	ld [bc], a                                       ; $4560: $02
	dec c                                            ; $4561: $0d
	ld d, $27                                        ; $4562: $16 $27
	ld l, $5b                                        ; $4564: $2e $5b
	jr nc, jr_017_4546                               ; $4566: $30 $de

	rst $38                                          ; $4568: $ff
	sbc d                                            ; $4569: $9a

jr_017_456a:
	ei                                               ; $456a: $fb
	ld hl, sp-$0f                                    ; $456b: $f8 $f1
	push hl                                          ; $456d: $e5
	rst AddAOntoHL                                          ; $456e: $ef
	ld a, e                                          ; $456f: $7b
	and b                                            ; $4570: $a0
	sbc d                                            ; $4571: $9a
	ld b, e                                          ; $4572: $43
	daa                                              ; $4573: $27
	ld hl, sp+$5f                                    ; $4574: $f8 $5f
	ld a, [bc]                                       ; $4576: $0a
	sbc $ff                                          ; $4577: $de $ff
	sbc [hl]                                         ; $4579: $9e
	ld a, [hl]                                       ; $457a: $7e
	db $dd                                           ; $457b: $dd
	rst $38                                          ; $457c: $ff
	rst SubAFromDE                                          ; $457d: $df
	ld bc, $6780                                     ; $457e: $01 $80 $67
	ld e, b                                          ; $4581: $58
	ld c, e                                          ; $4582: $4b
	ld hl, $2f53                                     ; $4583: $21 $53 $2f
	rst $38                                          ; $4586: $ff
	cp $fc                                           ; $4587: $fe $fc
	ei                                               ; $4589: $fb
	push hl                                          ; $458a: $e5
	ldh a, [c]                                       ; $458b: $f2
	db $fc                                           ; $458c: $fc
	ld hl, sp-$28                                    ; $458d: $f8 $d8
	and a                                            ; $458f: $a7
	ld a, a                                          ; $4590: $7f
	or d                                             ; $4591: $b2
	ld e, [hl]                                       ; $4592: $5e
	ld h, d                                          ; $4593: $62
	rst $38                                          ; $4594: $ff
	xor a                                            ; $4595: $af
	ccf                                              ; $4596: $3f
	ld a, b                                          ; $4597: $78
	rst SubAFromBC                                          ; $4598: $e7
	db $e3                                           ; $4599: $e3
	sbc a                                            ; $459a: $9f
	inc c                                            ; $459b: $0c
	ld h, b                                          ; $459c: $60
	pop af                                           ; $459d: $f1

Jump_017_459e:
	ld l, b                                          ; $459e: $68
	sub [hl]                                         ; $459f: $96
	ld sp, $0ec3                                     ; $45a0: $31 $c3 $0e
	rrca                                             ; $45a3: $0f
	ld d, a                                          ; $45a4: $57
	jr z, jr_017_45a7                                ; $45a5: $28 $00

jr_017_45a7:
	rst $38                                          ; $45a7: $ff
	cp $7a                                           ; $45a8: $fe $7a
	db $fd                                           ; $45aa: $fd

jr_017_45ab:
	add c                                            ; $45ab: $81
	cp $7a                                           ; $45ac: $fe $7a
	rst $38                                          ; $45ae: $ff
	ld h, e                                          ; $45af: $63
	add h                                            ; $45b0: $84
	ld [$0261], sp                                   ; $45b1: $08 $61 $02
	inc b                                            ; $45b4: $04
	rla                                              ; $45b5: $17
	nop                                              ; $45b6: $00
	db $e3                                           ; $45b7: $e3
	adc a                                            ; $45b8: $8f
	rra                                              ; $45b9: $1f
	push af                                          ; $45ba: $f5
	xor d                                            ; $45bb: $aa
	ld d, a                                          ; $45bc: $57
	cp a                                             ; $45bd: $bf
	rst $38                                          ; $45be: $ff
	add a                                            ; $45bf: $87
	ld b, $08                                        ; $45c0: $06 $08
	db $10                                           ; $45c2: $10
	jr nz, jr_017_45da                               ; $45c3: $20 $15

	ld hl, sp+$00                                    ; $45c5: $f8 $00
	pop bc                                           ; $45c7: $c1
	adc a                                            ; $45c8: $8f
	rra                                              ; $45c9: $1f
	ld [hl], d                                       ; $45ca: $72
	rst SubAFromDE                                          ; $45cb: $df
	ld a, e                                          ; $45cc: $7b
	jr nc, jr_017_456a                               ; $45cd: $30 $9b

	ld b, $04                                        ; $45cf: $06 $04
	xor a                                            ; $45d1: $af
	ld d, l                                          ; $45d2: $55
	ld [hl], e                                       ; $45d3: $73
	jr nc, @-$21                                     ; $45d4: $30 $dd

	rst $38                                          ; $45d6: $ff
	sbc b                                            ; $45d7: $98
	pop bc                                           ; $45d8: $c1
	ld h, c                                          ; $45d9: $61

jr_017_45da:
	ld [hl+], a                                      ; $45da: $22
	ld b, h                                          ; $45db: $44
	adc b                                            ; $45dc: $88
	ld b, $fd                                        ; $45dd: $06 $fd
	ld a, e                                          ; $45df: $7b
	db $10                                           ; $45e0: $10
	sbc h                                            ; $45e1: $9c
	db $e3                                           ; $45e2: $e3
	rst JumpTable                                          ; $45e3: $c7
	adc a                                            ; $45e4: $8f
	ld a, e                                          ; $45e5: $7b
	ld [hl], b                                       ; $45e6: $70
	sbc h                                            ; $45e7: $9c
	ld l, b                                          ; $45e8: $68
	jr nc, jr_017_45ab                               ; $45e9: $30 $c0

	cp $9d                                           ; $45eb: $fe $9d
	jr nz, jr_017_462f                               ; $45ed: $20 $40

	db $db                                           ; $45ef: $db
	rst $38                                          ; $45f0: $ff
	ld a, a                                          ; $45f1: $7f
	dec [hl]                                         ; $45f2: $35
	ld [hl], d                                       ; $45f3: $72
	ldh [$9e], a                                     ; $45f4: $e0 $9e

jr_017_45f6:
	ld b, e                                          ; $45f6: $43
	ld e, [hl]                                       ; $45f7: $5e
	ldh [hDisp1_OBP1], a                                     ; $45f8: $e0 $94
	dec l                                            ; $45fa: $2d
	ldh a, [c]                                       ; $45fb: $f2
	ld [hl], c                                       ; $45fc: $71
	and b                                            ; $45fd: $a0
	ret nz                                           ; $45fe: $c0

	jr nz, jr_017_45f6                               ; $45ff: $20 $f5

	xor d                                            ; $4601: $aa
	cp $1f                                           ; $4602: $fe $1f
	sbc a                                            ; $4604: $9f
	ld [hl], e                                       ; $4605: $73
	nop                                              ; $4606: $00
	ld a, d                                          ; $4607: $7a
	and b                                            ; $4608: $a0
	sbc d                                            ; $4609: $9a
	inc bc                                           ; $460a: $03
	rlca                                             ; $460b: $07
	ld [$2a5f], sp                                   ; $460c: $08 $5f $2a
	ld [hl], d                                       ; $460f: $72
	ld [hl], c                                       ; $4610: $71
	sbc $ff                                          ; $4611: $de $ff
	sbc [hl]                                         ; $4613: $9e
	ld c, $68                                        ; $4614: $0e $68
	or b                                             ; $4616: $b0
	rst SubAFromDE                                          ; $4617: $df
	ld hl, sp+$6c                                    ; $4618: $f8 $6c
	or b                                             ; $461a: $b0
	sbc $7f                                          ; $461b: $de $7f
	rst SubAFromDE                                          ; $461d: $df
	ccf                                              ; $461e: $3f
	sub d                                            ; $461f: $92
	ld e, $0c                                        ; $4620: $1e $0c
	jr @+$01                                         ; $4622: $18 $ff

	rst $38                                          ; $4624: $ff
	db $fd                                           ; $4625: $fd
	db $fc                                           ; $4626: $fc
	cp $fd                                           ; $4627: $fe $fd
	cp $fc                                           ; $4629: $fe $fc
	ld h, b                                          ; $462b: $60
	ld h, b                                          ; $462c: $60
	db $dd                                           ; $462d: $dd
	ld b, b                                          ; $462e: $40

jr_017_462f:
	rst SubAFromDE                                          ; $462f: $df
	ret nz                                           ; $4630: $c0

	rst SubAFromDE                                          ; $4631: $df
	cp a                                             ; $4632: $bf
	ld [hl], e                                       ; $4633: $73
	and b                                            ; $4634: $a0
	adc a                                            ; $4635: $8f
	ld a, a                                          ; $4636: $7f
	res 6, b                                         ; $4637: $cb $b0
	inc sp                                           ; $4639: $33
	ld b, h                                          ; $463a: $44
	nop                                              ; $463b: $00
	nop                                              ; $463c: $00
	ret nz                                           ; $463d: $c0

	ld h, e                                          ; $463e: $63
	inc d                                            ; $463f: $14
	ld a, [bc]                                       ; $4640: $0a
	di                                               ; $4641: $f3
	push de                                          ; $4642: $d5
	ld [hl+], a                                      ; $4643: $22
	sbc h                                            ; $4644: $9c
	add c                                            ; $4645: $81
	ld [hl], a                                       ; $4646: $77
	add e                                            ; $4647: $83
	sbc d                                            ; $4648: $9a
	nop                                              ; $4649: $00
	ldh [$e0], a                                     ; $464a: $e0 $e0
	ld b, b                                          ; $464c: $40
	and b                                            ; $464d: $a0
	ld l, l                                          ; $464e: $6d
	ldh [$df], a                                     ; $464f: $e0 $df
	ld a, a                                          ; $4651: $7f
	ret c                                            ; $4652: $d8

	rst $38                                          ; $4653: $ff
	ei                                               ; $4654: $fb
	ld [hl], l                                       ; $4655: $75
	call z, $216e                                    ; $4656: $cc $6e $21
	db $db                                           ; $4659: $db
	ret nz                                           ; $465a: $c0

	rst SubAFromDE                                          ; $465b: $df
	rst $38                                          ; $465c: $ff
	db $db                                           ; $465d: $db
	rrca                                             ; $465e: $0f
	rst SubAFromDE                                          ; $465f: $df
	rst $38                                          ; $4660: $ff
	db $db                                           ; $4661: $db
	ldh a, [$df]                                     ; $4662: $f0 $df
	rst $38                                          ; $4664: $ff
	db $db                                           ; $4665: $db
	inc bc                                           ; $4666: $03
	rst SubAFromDE                                          ; $4667: $df
	rst $38                                          ; $4668: $ff
	db $db                                           ; $4669: $db
	db $fc                                           ; $466a: $fc
	ld e, a                                          ; $466b: $5f
	ret z                                            ; $466c: $c8

	jp c, $06ff                                      ; $466d: $da $ff $06

	ld b, $f1                                        ; $4670: $06 $f1
	db $db                                           ; $4672: $db

Jump_017_4673:
	rst $38                                          ; $4673: $ff
	ld a, a                                          ; $4674: $7f
	ld sp, hl                                        ; $4675: $f9
	ld [hl], a                                       ; $4676: $77
	cp $86                                           ; $4677: $fe $86
	ld d, l                                          ; $4679: $55
	xor d                                            ; $467a: $aa
	xor d                                            ; $467b: $aa
	ld d, l                                          ; $467c: $55
	ld de, $80e6                                     ; $467d: $11 $e6 $80
	rst FarCall                                          ; $4680: $f7
	nop                                              ; $4681: $00
	rst FarCall                                          ; $4682: $f7
	ld bc, $00f6                                     ; $4683: $01 $f6 $00
	rst FarCall                                          ; $4686: $f7
	nop                                              ; $4687: $00
	rst AddAOntoHL                                          ; $4688: $ef
	add e                                            ; $4689: $83
	ld l, h                                          ; $468a: $6c
	inc b                                            ; $468b: $04
	rst AddAOntoHL                                          ; $468c: $ef
	ld b, c                                          ; $468d: $41
	db $fc                                           ; $468e: $fc
	inc d                                            ; $468f: $14
	ld sp, hl                                        ; $4690: $f9
	nop                                              ; $4691: $00
	sbc $fb                                          ; $4692: $de $fb
	rst $38                                          ; $4694: $ff
	sub d                                            ; $4695: $92
	jr nz, @-$03                                     ; $4696: $20 $fb

	ld b, b                                          ; $4698: $40
	ei                                               ; $4699: $fb
	inc b                                            ; $469a: $04
	rst FarCall                                          ; $469b: $f7
	db $10                                           ; $469c: $10
	xor $80                                          ; $469d: $ee $80
	cp $08                                           ; $469f: $fe $08
	cp $00                                           ; $46a1: $fe $00
	ld a, e                                          ; $46a3: $7b
	cp $94                                           ; $46a4: $fe $94
	db $10                                           ; $46a6: $10
	db $ed                                           ; $46a7: $ed
	add c                                            ; $46a8: $81
	ld a, h                                          ; $46a9: $7c
	inc b                                            ; $46aa: $04
	db $fd                                           ; $46ab: $fd
	inc bc                                           ; $46ac: $03
	cp h                                             ; $46ad: $bc
	inc d                                            ; $46ae: $14
	cp e                                             ; $46af: $bb
	nop                                              ; $46b0: $00
	sbc $7f                                          ; $46b1: $de $7f
	ld a, e                                          ; $46b3: $7b
	ldh [hDisp0_BGP], a                                     ; $46b4: $e0 $85
	ld a, a                                          ; $46b6: $7f
	ld b, b                                          ; $46b7: $40
	ld a, a                                          ; $46b8: $7f
	inc c                                            ; $46b9: $0c
	ld [hl], a                                       ; $46ba: $77
	ld de, $80ce                                     ; $46bb: $11 $ce $80
	rst SubAFromDE                                          ; $46be: $df
	ld [$01df], sp                                   ; $46bf: $08 $df $01
	sbc $00                                          ; $46c2: $de $00
	rst SubAFromDE                                          ; $46c4: $df
	db $10                                           ; $46c5: $10
	xor a                                            ; $46c6: $af
	add e                                            ; $46c7: $83
	inc a                                            ; $46c8: $3c
	inc b                                            ; $46c9: $04
	cp a                                             ; $46ca: $bf
	ld b, e                                          ; $46cb: $43
	db $f4                                           ; $46cc: $f4
	inc d                                            ; $46cd: $14
	di                                               ; $46ce: $f3
	nop                                              ; $46cf: $00
	sbc $ef                                          ; $46d0: $de $ef
	ld a, e                                          ; $46d2: $7b
	ldh [hDisp0_LCDC], a                                     ; $46d3: $e0 $82
	rst AddAOntoHL                                          ; $46d5: $ef
	ld b, b                                          ; $46d6: $40
	rst AddAOntoHL                                          ; $46d7: $ef
	inc c                                            ; $46d8: $0c
	rst SubAFromBC                                          ; $46d9: $e7
	ld de, $80ea                                     ; $46da: $11 $ea $80
	ei                                               ; $46dd: $fb
	ld [$01fb], sp                                   ; $46de: $08 $fb $01
	ld a, [$fb00]                                    ; $46e1: $fa $00 $fb
	db $10                                           ; $46e4: $10
	rst SubAFromBC                                          ; $46e5: $e7
	add e                                            ; $46e6: $83
	ld [hl], h                                       ; $46e7: $74
	inc b                                            ; $46e8: $04
	rst FarCall                                          ; $46e9: $f7
	ld b, b                                          ; $46ea: $40
	cp $14                                           ; $46eb: $fe $14
	ld a, [$fe00]                                    ; $46ed: $fa $00 $fe
	db $fd                                           ; $46f0: $fd
	db $fd                                           ; $46f1: $fd
	ld a, e                                          ; $46f2: $7b
	ldh [$80], a                                     ; $46f3: $e0 $80
	db $fd                                           ; $46f5: $fd
	ld b, b                                          ; $46f6: $40
	db $fd                                           ; $46f7: $fd
	inc c                                            ; $46f8: $0c
	push af                                          ; $46f9: $f5
	ld de, $80ae                                     ; $46fa: $11 $ae $80
	cp a                                             ; $46fd: $bf
	ld [$017f], sp                                   ; $46fe: $08 $7f $01
	ld a, [hl]                                       ; $4701: $7e
	nop                                              ; $4702: $00
	ld a, a                                          ; $4703: $7f
	db $10                                           ; $4704: $10
	ld l, a                                          ; $4705: $6f
	inc bc                                           ; $4706: $03
	ld a, h                                          ; $4707: $7c
	inc b                                            ; $4708: $04
	rst $38                                          ; $4709: $ff
	ld de, $80ee                                     ; $470a: $11 $ee $80
	rst $38                                          ; $470d: $ff
	ld [$01ff], sp                                   ; $470e: $08 $ff $01
	cp $00                                           ; $4711: $fe $00
	rst $38                                          ; $4713: $ff
	sub l                                            ; $4714: $95
	db $10                                           ; $4715: $10
	rst AddAOntoHL                                          ; $4716: $ef
	add e                                            ; $4717: $83
	ld a, h                                          ; $4718: $7c
	inc b                                            ; $4719: $04
	cp $43                                           ; $471a: $fe $43
	db $fc                                           ; $471c: $fc
	inc d                                            ; $471d: $14
	ei                                               ; $471e: $fb
	ld [hl], a                                       ; $471f: $77
	ld c, e                                          ; $4720: $4b
	ld a, e                                          ; $4721: $7b
	ret nc                                           ; $4722: $d0

	sbc d                                            ; $4723: $9a
	rst $38                                          ; $4724: $ff
	ld b, b                                          ; $4725: $40
	rst $38                                          ; $4726: $ff
	inc c                                            ; $4727: $0c
	rst FarCall                                          ; $4728: $f7
	ld c, e                                          ; $4729: $4b
	ldh [$8c], a                                     ; $472a: $e0 $8c
	rst $38                                          ; $472c: $ff
	ld [bc], a                                       ; $472d: $02
	rst $38                                          ; $472e: $ff
	ld c, e                                          ; $472f: $4b
	ld [hl-], a                                      ; $4730: $32
	ld a, e                                          ; $4731: $7b
	ld [hl+], a                                      ; $4732: $22
	rst $38                                          ; $4733: $ff
	ld [hl+], a                                      ; $4734: $22
	rst $38                                          ; $4735: $ff
	ld d, d                                          ; $4736: $52
	rst $38                                          ; $4737: $ff
	ld [de], a                                       ; $4738: $12
	ld a, a                                          ; $4739: $7f
	ld e, [hl]                                       ; $473a: $5e
	di                                               ; $473b: $f3
	db $d3                                           ; $473c: $d3
	rst $38                                          ; $473d: $ff
	db $fc                                           ; $473e: $fc
	ld a, e                                          ; $473f: $7b
	daa                                              ; $4740: $27
	ld h, a                                          ; $4741: $67
	rra                                              ; $4742: $1f
	ld [hl], a                                       ; $4743: $77
	cp $9e                                           ; $4744: $fe $9e
	ld hl, $f04f                                     ; $4746: $21 $4f $f0
	sbc [hl]                                         ; $4749: $9e
	add c                                            ; $474a: $81
	ld [hl], a                                       ; $474b: $77
	db $f4                                           ; $474c: $f4
	ld c, a                                          ; $474d: $4f
	ldh a, [$7f]                                     ; $474e: $f0 $7f
	xor a                                            ; $4750: $af
	ld [hl], a                                       ; $4751: $77
	db $fc                                           ; $4752: $fc
	ld [hl], e                                       ; $4753: $73
	cp $7f                                           ; $4754: $fe $7f
	dec l                                            ; $4756: $2d
	sbc [hl]                                         ; $4757: $9e
	pop bc                                           ; $4758: $c1
	ld a, e                                          ; $4759: $7b
	ld sp, hl                                        ; $475a: $f9
	add b                                            ; $475b: $80
	and d                                            ; $475c: $a2
	sbc h                                            ; $475d: $9c
	cp [hl]                                          ; $475e: $be
	adc b                                            ; $475f: $88
	rst $38                                          ; $4760: $ff
	sbc h                                            ; $4761: $9c
	rst $38                                          ; $4762: $ff
	sub h                                            ; $4763: $94
	rst $38                                          ; $4764: $ff
	rst FarCall                                          ; $4765: $f7
	ld a, $36                                        ; $4766: $3e $36
	dec e                                            ; $4768: $1d
	sbc d                                            ; $4769: $9a
	ld a, [bc]                                       ; $476a: $0a
	dec b                                            ; $476b: $05

jr_017_476c:
	ld c, l                                          ; $476c: $4d
	ld c, d                                          ; $476d: $4a
	rst $38                                          ; $476e: $ff
	ld hl, sp-$11                                    ; $476f: $f8 $ef
	ld c, b                                          ; $4771: $48
	rst AddAOntoHL                                          ; $4772: $ef
	ld c, b                                          ; $4773: $48
	rst $38                                          ; $4774: $ff
	cp b                                             ; $4775: $b8
	rst AddAOntoHL                                          ; $4776: $ef
	and l                                            ; $4777: $a5
	rst $38                                          ; $4778: $ff
	db $10                                           ; $4779: $10
	ldh [c], a                                       ; $477a: $e2
	adc d                                            ; $477b: $8a
	and d                                            ; $477c: $a2
	sub d                                            ; $477d: $92
	sub d                                            ; $477e: $92
	rst $38                                          ; $477f: $ff
	rst $38                                          ; $4780: $ff
	cp d                                             ; $4781: $ba
	sub d                                            ; $4782: $92
	cp d                                             ; $4783: $ba
	sub d                                            ; $4784: $92
	rst $38                                          ; $4785: $ff
	rst AddAOntoHL                                          ; $4786: $ef
	jr c, jr_017_47b1                                ; $4787: $38 $28

	ld bc, $45ff                                     ; $4789: $01 $ff $45
	add hl, sp                                       ; $478c: $39
	ld a, l                                          ; $478d: $7d
	ld de, $29ff                                     ; $478e: $11 $ff $29
	ld [hl], a                                       ; $4791: $77
	cp $91                                           ; $4792: $fe $91
	cp $ee                                           ; $4794: $fe $ee
	jr c, @+$2a                                      ; $4796: $38 $28

	adc e                                            ; $4798: $8b
	or l                                             ; $4799: $b5
	sub l                                            ; $479a: $95
	dec bc                                           ; $479b: $0b
	db $eb                                           ; $479c: $eb
	push af                                          ; $479d: $f5
	rst $38                                          ; $479e: $ff
	pop hl                                           ; $479f: $e1
	rst $38                                          ; $47a0: $ff
	ld bc, $5b77                                     ; $47a1: $01 $77 $5b
	sub a                                            ; $47a4: $97
	cp $02                                           ; $47a5: $fe $02
	ld [$d5d5], a                                    ; $47a7: $ea $d5 $d5
	ld [$95ea], a                                    ; $47aa: $ea $ea $95
	ld d, a                                          ; $47ad: $57
	and b                                            ; $47ae: $a0
	sbc e                                            ; $47af: $9b
	ld [hl+], a                                      ; $47b0: $22

jr_017_47b1:
	sbc h                                            ; $47b1: $9c
	or [hl]                                          ; $47b2: $b6
	adc b                                            ; $47b3: $88
	ld a, e                                          ; $47b4: $7b
	and b                                            ; $47b5: $a0
	ld a, a                                          ; $47b6: $7f
	and d                                            ; $47b7: $a2
	ld l, e                                          ; $47b8: $6b
	and b                                            ; $47b9: $a0
	sbc e                                            ; $47ba: $9b
	ld c, d                                          ; $47bb: $4a
	ld b, l                                          ; $47bc: $45
	db $fd                                           ; $47bd: $fd
	ld a, [$a273]                                    ; $47be: $fa $73 $a2
	ld [hl], e                                       ; $47c1: $73
	and b                                            ; $47c2: $a0
	ld a, a                                          ; $47c3: $7f
	dec hl                                           ; $47c4: $2b
	sbc l                                            ; $47c5: $9d
	cp $d6                                           ; $47c6: $fe $d6
	ld l, e                                          ; $47c8: $6b
	and d                                            ; $47c9: $a2
	ld a, e                                          ; $47ca: $7b
	and b                                            ; $47cb: $a0
	sbc h                                            ; $47cc: $9c
	ld a, [hl-]                                      ; $47cd: $3a
	ld a, [hl+]                                      ; $47ce: $2a
	inc bc                                           ; $47cf: $03
	ld c, e                                          ; $47d0: $4b
	jr nz, jr_017_476c                               ; $47d1: $20 $99

	ld d, a                                          ; $47d3: $57
	xor e                                            ; $47d4: $ab
	xor e                                            ; $47d5: $ab
	ld d, l                                          ; $47d6: $55
	ld d, l                                          ; $47d7: $55
	xor e                                            ; $47d8: $ab
	ld [hl], a                                       ; $47d9: $77
	and d                                            ; $47da: $a2
	ld a, e                                          ; $47db: $7b
	and b                                            ; $47dc: $a0
	ld a, a                                          ; $47dd: $7f
	inc bc                                           ; $47de: $03
	sbc c                                            ; $47df: $99
	rlca                                             ; $47e0: $07
	ld e, $12                                        ; $47e1: $1e $12
	rrca                                             ; $47e3: $0f
	ld c, $23                                        ; $47e4: $0e $23
	ld l, a                                          ; $47e6: $6f
	ldh [$7f], a                                     ; $47e7: $e0 $7f
	cp $96                                           ; $47e9: $fe $96
	jp c, Jump_017_5273                              ; $47eb: $da $73 $52

	jp $81c3                                         ; $47ee: $c3 $c3 $81


	add c                                            ; $47f1: $81
	sbc c                                            ; $47f2: $99
	sbc c                                            ; $47f3: $99
	sbc $ff                                          ; $47f4: $de $ff
	ld a, a                                          ; $47f6: $7f
	db $fc                                           ; $47f7: $fc
	ld a, a                                          ; $47f8: $7f
	cp $8a                                           ; $47f9: $fe $8a
	or l                                             ; $47fb: $b5
	sbc l                                            ; $47fc: $9d
	sub l                                            ; $47fd: $95
	ret nz                                           ; $47fe: $c0

	cp a                                             ; $47ff: $bf
	pop hl                                           ; $4800: $e1
	sbc [hl]                                         ; $4801: $9e
	pop af                                           ; $4802: $f1
	adc l                                            ; $4803: $8d
	call $dd89                                       ; $4804: $cd $89 $dd
	sub l                                            ; $4807: $95
	rst $38                                          ; $4808: $ff
	sub l                                            ; $4809: $95
	rst $38                                          ; $480a: $ff
	rst FarCall                                          ; $480b: $f7
	dec e                                            ; $480c: $1d
	dec d                                            ; $480d: $15
	xor d                                            ; $480e: $aa
	ld d, l                                          ; $480f: $55
	halt                                             ; $4810: $76
	ld a, [bc]                                       ; $4811: $0a
	ld h, e                                          ; $4812: $63
	nop                                              ; $4813: $00
	ld a, a                                          ; $4814: $7f
	cp h                                             ; $4815: $bc
	sub a                                            ; $4816: $97
	di                                               ; $4817: $f3
	rrca                                             ; $4818: $0f
	db $fc                                           ; $4819: $fc
	ld b, $f5                                        ; $481a: $06 $f5
	rst FarCall                                          ; $481c: $f7
	ld h, h                                          ; $481d: $64
	rst $38                                          ; $481e: $ff
	ld [hl], a                                       ; $481f: $77
	cp $93                                           ; $4820: $fe $93
	cp h                                             ; $4822: $bc
	di                                               ; $4823: $f3
	and d                                            ; $4824: $a2
	rst FarCall                                          ; $4825: $f7
	call nz, $03ff                                   ; $4826: $c4 $ff $03
	cp $82                                           ; $4829: $fe $82
	cp $82                                           ; $482b: $fe $82
	rst $38                                          ; $482d: $ff
	ld [hl], a                                       ; $482e: $77
	cp $93                                           ; $482f: $fe $93
	add a                                            ; $4831: $87
	ld a, c                                          ; $4832: $79
	ld c, b                                          ; $4833: $48
	di                                               ; $4834: $f3
	ld [hl], e                                       ; $4835: $73
	and b                                            ; $4836: $a0
	ld a, a                                          ; $4837: $7f
	ld h, b                                          ; $4838: $60
	xor [hl]                                         ; $4839: $ae
	xor $24                                          ; $483a: $ee $24
	rst $38                                          ; $483c: $ff
	ld [hl], a                                       ; $483d: $77
	cp $92                                           ; $483e: $fe $92
	dec sp                                           ; $4840: $3b
	adc $4a                                          ; $4841: $ce $4a
	ld h, [hl]                                       ; $4843: $66
	ld a, [$0d0e]                                    ; $4844: $fa $0e $0d
	dec c                                            ; $4847: $0d
	ld a, [bc]                                       ; $4848: $0a
	ld c, a                                          ; $4849: $4f
	ld c, b                                          ; $484a: $48
	rst $38                                          ; $484b: $ff
	ld hl, sp+$7b                                    ; $484c: $f8 $7b
	ld d, b                                          ; $484e: $50
	sub [hl]                                         ; $484f: $96
	xor b                                            ; $4850: $a8
	rst AddAOntoHL                                          ; $4851: $ef
	and h                                            ; $4852: $a4
	rst $38                                          ; $4853: $ff
	nop                                              ; $4854: $00
	jp $8283                                         ; $4855: $c3 $83 $82


	add d                                            ; $4858: $82
	halt                                             ; $4859: $76
	xor $7b                                          ; $485a: $ee $7b
	ld d, b                                          ; $485c: $50
	sub e                                            ; $485d: $93
	xor d                                            ; $485e: $aa
	add hl, sp                                       ; $485f: $39
	add hl, hl                                       ; $4860: $29
	jp nz, $c381                                     ; $4861: $c2 $81 $c3

	rst $38                                          ; $4864: $ff
	and l                                            ; $4865: $a5
	cp l                                             ; $4866: $bd
	cp l                                             ; $4867: $bd
	sbc c                                            ; $4868: $99
	cp l                                             ; $4869: $bd
	ld [hl], a                                       ; $486a: $77
	add b                                            ; $486b: $80
	sbc h                                            ; $486c: $9c
	jp hl                                            ; $486d: $e9


	add hl, sp                                       ; $486e: $39
	add hl, hl                                       ; $486f: $29
	ld l, l                                          ; $4870: $6d
	sbc d                                            ; $4871: $9a
	ld e, a                                          ; $4872: $5f
	sub b                                            ; $4873: $90
	ld a, [hl]                                       ; $4874: $7e
	ei                                               ; $4875: $fb
	ld d, e                                          ; $4876: $53
	ldh a, [hDisp1_WY]                                     ; $4877: $f0 $95
	nop                                              ; $4879: $00
	adc [hl]                                         ; $487a: $8e
	nop                                              ; $487b: $00
	add a                                            ; $487c: $87
	rst $38                                          ; $487d: $ff
	adc $7b                                          ; $487e: $ce $7b
	di                                               ; $4880: $f3
	or d                                             ; $4881: $b2
	sub e                                            ; $4882: $93
	ld [hl], a                                       ; $4883: $77
	db $10                                           ; $4884: $10
	ld a, a                                          ; $4885: $7f
	cp $9e                                           ; $4886: $fe $9e
	or $4b                                           ; $4888: $f6 $4b
	ld h, b                                          ; $488a: $60
	sbc h                                            ; $488b: $9c
	nop                                              ; $488c: $00
	ld [$4ff5], a                                    ; $488d: $ea $f5 $4f
	ldh a, [$df]                                     ; $4890: $f0 $df
	rst $38                                          ; $4892: $ff
	ld c, a                                          ; $4893: $4f
	ldh a, [$9d]                                     ; $4894: $f0 $9d
	cp a                                             ; $4896: $bf
	ld e, a                                          ; $4897: $5f
	ld c, e                                          ; $4898: $4b
	ldh [hDisp0_WY], a                                     ; $4899: $e0 $88
	ld c, e                                          ; $489b: $4b
	rst $38                                          ; $489c: $ff
	inc bc                                           ; $489d: $03
	rst $38                                          ; $489e: $ff
	add [hl]                                         ; $489f: $86
	ld a, a                                          ; $48a0: $7f
	ld a, a                                          ; $48a1: $7f
	ei                                               ; $48a2: $fb
	jp c, $0bff                                      ; $48a3: $da $ff $0b

	rst $38                                          ; $48a6: $ff
	inc hl                                           ; $48a7: $23
	rst $38                                          ; $48a8: $ff
	cp $9f                                           ; $48a9: $fe $9f
	and e                                            ; $48ab: $a3
	ccf                                              ; $48ac: $3f
	and e                                            ; $48ad: $a3
	ld e, a                                          ; $48ae: $5f
	db $e3                                           ; $48af: $e3
	sbc a                                            ; $48b0: $9f
	cp l                                             ; $48b1: $bd
	ld a, e                                          ; $48b2: $7b
	ld a, [$ff9a]                                    ; $48b3: $fa $9a $ff
	sbc a                                            ; $48b6: $9f
	cp a                                             ; $48b7: $bf
	scf                                              ; $48b8: $37
	xor e                                            ; $48b9: $ab
	ld a, c                                          ; $48ba: $79
	rst GetHLinHL                                          ; $48bb: $cf
	ld [hl], a                                       ; $48bc: $77
	cp $df                                           ; $48bd: $fe $df
	rst $38                                          ; $48bf: $ff
	ld [hl], a                                       ; $48c0: $77
	db $fc                                           ; $48c1: $fc
	ld a, e                                          ; $48c2: $7b
	or h                                             ; $48c3: $b4
	ld e, e                                          ; $48c4: $5b
	add $7f                                          ; $48c5: $c6 $7f
	cp $9a                                           ; $48c7: $fe $9a
	db $fc                                           ; $48c9: $fc
	daa                                              ; $48ca: $27
	db $fc                                           ; $48cb: $fc
	ei                                               ; $48cc: $fb
	jr nz, jr_017_492a                               ; $48cd: $20 $5b

	cp $9c                                           ; $48cf: $fe $9c
	ld hl, $21fb                                     ; $48d1: $21 $fb $21
	ld [hl], c                                       ; $48d4: $71
	ldh [c], a                                       ; $48d5: $e2
	sbc l                                            ; $48d6: $9d
	rst $38                                          ; $48d7: $ff
	add c                                            ; $48d8: $81
	ld h, e                                          ; $48d9: $63
	cp $5f                                           ; $48da: $fe $5f
	ldh a, [rPCM12]                                  ; $48dc: $f0 $76
	ld a, l                                          ; $48de: $7d
	ld a, e                                          ; $48df: $7b
	ldh a, [$80]                                     ; $48e0: $f0 $80
	call nc, $80ff                                   ; $48e2: $d4 $ff $80
	db $dd                                           ; $48e5: $dd
	db $e3                                           ; $48e6: $e3
	and b                                            ; $48e7: $a0
	sbc a                                            ; $48e8: $9f
	inc e                                            ; $48e9: $1c
	inc e                                            ; $48ea: $1c
	rst $38                                          ; $48eb: $ff
	ret                                              ; $48ec: $c9


	rst FarCall                                          ; $48ed: $f7
	inc d                                            ; $48ee: $14
	db $e3                                           ; $48ef: $e3
	ld [hl+], a                                      ; $48f0: $22
	db $fc                                           ; $48f1: $fc
	inc c                                            ; $48f2: $0c
	db $fc                                           ; $48f3: $fc
	ld d, h                                          ; $48f4: $54
	ld hl, sp+$00                                    ; $48f5: $f8 $00
	ld hl, sp+$00                                    ; $48f7: $f8 $00
	pop af                                           ; $48f9: $f1
	dec h                                            ; $48fa: $25
	ld bc, $83c3                                     ; $48fb: $01 $c3 $83
	inc bc                                           ; $48fe: $03
	sbc a                                            ; $48ff: $9f
	ld b, e                                          ; $4900: $43
	sbc l                                            ; $4901: $9d
	rst $38                                          ; $4902: $ff
	jp $e679                                         ; $4903: $c3 $79 $e6


	ld a, d                                          ; $4906: $7a
	or h                                             ; $4907: $b4
	sub l                                            ; $4908: $95
	db $fd                                           ; $4909: $fd
	rst JumpTable                                          ; $490a: $c7
	add e                                            ; $490b: $83
	sub d                                            ; $490c: $92
	jp $ed42                                         ; $490d: $c3 $42 $ed


	jr nz, @+$01                                     ; $4910: $20 $ff

	ld c, d                                          ; $4912: $4a
	ld a, e                                          ; $4913: $7b
	ld e, [hl]                                       ; $4914: $5e
	sub h                                            ; $4915: $94
	db $e4                                           ; $4916: $e4
	rst $38                                          ; $4917: $ff
	cp c                                             ; $4918: $b9
	rst $38                                          ; $4919: $ff
	cp c                                             ; $491a: $b9
	rst SubAFromBC                                          ; $491b: $e7
	dec h                                            ; $491c: $25
	jp $8142                                         ; $491d: $c3 $42 $81


	add b                                            ; $4920: $80
	ld h, a                                          ; $4921: $67
	ld h, b                                          ; $4922: $60
	sbc c                                            ; $4923: $99
	ld a, $a2                                        ; $4924: $3e $a2
	ld e, a                                          ; $4926: $5f
	db $fd                                           ; $4927: $fd
	sbc a                                            ; $4928: $9f
	cp h                                             ; $4929: $bc

jr_017_492a:
	ld a, e                                          ; $492a: $7b
	ld h, b                                          ; $492b: $60
	sbc [hl]                                         ; $492c: $9e
	add h                                            ; $492d: $84
	ld [hl], e                                       ; $492e: $73
	cp $94                                           ; $492f: $fe $94
	rst $38                                          ; $4931: $ff
	ld a, a                                          ; $4932: $7f
	call nz, Call_017_7f3f                           ; $4933: $c4 $3f $7f
	rst $38                                          ; $4936: $ff
	rst $38                                          ; $4937: $ff
	push de                                          ; $4938: $d5
	ld l, d                                          ; $4939: $6a
	rst $38                                          ; $493a: $ff
	push de                                          ; $493b: $d5
	ld a, e                                          ; $493c: $7b
	adc [hl]                                         ; $493d: $8e
	adc a                                            ; $493e: $8f
	pop bc                                           ; $493f: $c1
	ld [$dc95], a                                    ; $4940: $ea $95 $dc
	inc d                                            ; $4943: $14
	rst $38                                          ; $4944: $ff
	ld h, e                                          ; $4945: $63
	rst $38                                          ; $4946: $ff
	adc b                                            ; $4947: $88
	rst FarCall                                          ; $4948: $f7
	ld [hl], $ff                                     ; $4949: $36 $ff
	nop                                              ; $494b: $00
	ld d, l                                          ; $494c: $55
	nop                                              ; $494d: $00
	xor d                                            ; $494e: $aa
	or $67                                           ; $494f: $f6 $67
	sub b                                            ; $4951: $90
	sbc l                                            ; $4952: $9d
	ldh a, [rAUDVOL]                                 ; $4953: $f0 $24
	ld c, a                                          ; $4955: $4f
	sub b                                            ; $4956: $90
	sub a                                            ; $4957: $97
	ld a, l                                          ; $4958: $7d
	dec hl                                           ; $4959: $2b
	ld bc, $c711                                     ; $495a: $01 $11 $c7
	rst JumpTable                                          ; $495d: $c7
	rst AddAOntoHL                                          ; $495e: $ef
	add hl, hl                                       ; $495f: $29
	ld a, e                                          ; $4960: $7b
	sub b                                            ; $4961: $90
	ld a, [hl]                                       ; $4962: $7e
	ldh a, [hDisp1_BGP]                                     ; $4963: $f0 $92
	add l                                            ; $4965: $85
	rst $38                                          ; $4966: $ff
	ld a, a                                          ; $4967: $7f
	rst GetHLinHL                                          ; $4968: $cf
	dec bc                                           ; $4969: $0b
	cp [hl]                                          ; $496a: $be
	and d                                            ; $496b: $a2
	ccf                                              ; $496c: $3f
	rlca                                             ; $496d: $07
	ccf                                              ; $496e: $3f
	ccf                                              ; $496f: $3f
	rst $38                                          ; $4970: $ff
	adc e                                            ; $4971: $8b
	ld a, e                                          ; $4972: $7b
	cp $9e                                           ; $4973: $fe $9e
	adc d                                            ; $4975: $8a
	sbc $ff                                          ; $4976: $de $ff
	sub e                                            ; $4978: $93
	ld a, [bc]                                       ; $4979: $0a
	ld a, a                                          ; $497a: $7f
	ld a, h                                          ; $497b: $7c
	ld a, a                                          ; $497c: $7f
	ld sp, hl                                        ; $497d: $f9
	xor a                                            ; $497e: $af
	ld d, l                                          ; $497f: $55
	rst $38                                          ; $4980: $ff
	ld b, $ff                                        ; $4981: $06 $ff
	ld b, $ef                                        ; $4983: $06 $ef
	ld a, e                                          ; $4985: $7b
	db $fc                                           ; $4986: $fc
	ld [hl], e                                       ; $4987: $73
	cp $6a                                           ; $4988: $fe $6a
	ld hl, sp+$7c                                    ; $498a: $f8 $7c
	ld h, e                                          ; $498c: $63
	ld e, [hl]                                       ; $498d: $5e
	db $ec                                           ; $498e: $ec
	adc a                                            ; $498f: $8f
	cp $90                                           ; $4990: $fe $90
	cp $2a                                           ; $4992: $fe $2a
	cp $4a                                           ; $4994: $fe $4a
	db $fc                                           ; $4996: $fc
	sbc h                                            ; $4997: $9c
	ldh [c], a                                       ; $4998: $e2
	ld [hl+], a                                      ; $4999: $22
	pop de                                           ; $499a: $d1
	ld d, c                                          ; $499b: $51
	cp e                                             ; $499c: $bb
	adc e                                            ; $499d: $8b
	ccf                                              ; $499e: $3f
	dec h                                            ; $499f: $25
	ld a, c                                          ; $49a0: $79
	ld a, [$0b7f]                                    ; $49a1: $fa $7f $0b
	sub h                                            ; $49a4: $94
	ld e, d                                          ; $49a5: $5a
	rst $38                                          ; $49a6: $ff
	rst $38                                          ; $49a7: $ff
	cp l                                             ; $49a8: $bd
	and l                                            ; $49a9: $a5
	sbc c                                            ; $49aa: $99
	sbc c                                            ; $49ab: $99
	add c                                            ; $49ac: $81
	ld bc, $0181                                     ; $49ad: $01 $81 $01
	ld a, c                                          ; $49b0: $79
	xor d                                            ; $49b1: $aa
	ld a, a                                          ; $49b2: $7f

jr_017_49b3:
	or b                                             ; $49b3: $b0
	adc c                                            ; $49b4: $89
	pop af                                           ; $49b5: $f1
	rst SubAFromDE                                          ; $49b6: $df
	ld hl, sp+$3f                                    ; $49b7: $f8 $3f
	inc b                                            ; $49b9: $04
	ei                                               ; $49ba: $fb
	adc d                                            ; $49bb: $8a
	pop af                                           ; $49bc: $f1
	ld de, $e0e0                                     ; $49bd: $11 $e0 $e0
	db $fd                                           ; $49c0: $fd
	rst $38                                          ; $49c1: $ff
	ld b, l                                          ; $49c2: $45
	rst $38                                          ; $49c3: $ff
	ld b, l                                          ; $49c4: $45
	rst GetHLinHL                                          ; $49c5: $cf
	ld b, l                                          ; $49c6: $45
	adc $45                                          ; $49c7: $ce $45
	rst GetHLinHL                                          ; $49c9: $cf
	rst JumpTable                                          ; $49ca: $c7
	ld a, d                                          ; $49cb: $7a
	ldh [$79], a                                     ; $49cc: $e0 $79
	ld d, [hl]                                       ; $49ce: $56
	ld a, e                                          ; $49cf: $7b
	add c                                            ; $49d0: $81
	sbc b                                            ; $49d1: $98
	di                                               ; $49d2: $f3
	rst FarCall                                          ; $49d3: $f7
	inc sp                                           ; $49d4: $33
	ld [hl], a                                       ; $49d5: $77
	inc sp                                           ; $49d6: $33
	ld [hl], a                                       ; $49d7: $77
	cp e                                             ; $49d8: $bb
	ld a, e                                          ; $49d9: $7b
	scf                                              ; $49da: $37
	ld a, d                                          ; $49db: $7a
	sub b                                            ; $49dc: $90
	adc h                                            ; $49dd: $8c
	rlca                                             ; $49de: $07
	rst $38                                          ; $49df: $ff
	sub e                                            ; $49e0: $93
	rst $38                                          ; $49e1: $ff
	rlca                                             ; $49e2: $07
	rst FarCall                                          ; $49e3: $f7
	rrca                                             ; $49e4: $0f

Call_017_49e5:
	ld h, e                                          ; $49e5: $63
	sub e                                            ; $49e6: $93
	ld h, c                                          ; $49e7: $61
	ld h, c                                          ; $49e8: $61
	rst FarCall                                          ; $49e9: $f7
	sub a                                            ; $49ea: $97
	rst $38                                          ; $49eb: $ff
	ld h, c                                          ; $49ec: $61
	rst SubAFromBC                                          ; $49ed: $e7
	and $e7                                          ; $49ee: $e6 $e7
	ld h, [hl]                                       ; $49f0: $66
	ld a, e                                          ; $49f1: $7b
	cp $7b                                           ; $49f2: $fe $7b
	db $fd                                           ; $49f4: $fd
	add b                                            ; $49f5: $80
	inc a                                            ; $49f6: $3c
	ld a, h                                          ; $49f7: $7c
	cp [hl]                                          ; $49f8: $be
	xor [hl]                                         ; $49f9: $ae
	rst $38                                          ; $49fa: $ff
	inc [hl]                                         ; $49fb: $34
	rst $38                                          ; $49fc: $ff
	ldh [rIE], a                                     ; $49fd: $e0 $ff
	jp z, $c0ff                                      ; $49ff: $ca $ff $c0

	rst $38                                          ; $4a02: $ff
	ldh [$4e], a                                     ; $4a03: $e0 $4e
	pop af                                           ; $4a05: $f1
	add b                                            ; $4a06: $80
	adc [hl]                                         ; $4a07: $8e
	rst $38                                          ; $4a08: $ff
	and h                                            ; $4a09: $a4
	rst $38                                          ; $4a0a: $ff
	adc [hl]                                         ; $4a0b: $8e
	rst $38                                          ; $4a0c: $ff
	rrca                                             ; $4a0d: $0f
	db $fc                                           ; $4a0e: $fc
	ld d, a                                          ; $4a0f: $57
	db $fc                                           ; $4a10: $fc
	rlca                                             ; $4a11: $07
	db $fc                                           ; $4a12: $fc
	rrca                                             ; $4a13: $0f
	db $f4                                           ; $4a14: $f4
	sbc c                                            ; $4a15: $99
	sub a                                            ; $4a16: $97
	ld [hl+], a                                      ; $4a17: $22
	db $d3                                           ; $4a18: $d3
	add d                                            ; $4a19: $82
	inc hl                                           ; $4a1a: $23
	sbc [hl]                                         ; $4a1b: $9e
	ld l, a                                          ; $4a1c: $6f
	jr nz, jr_017_49b3                               ; $4a1d: $20 $94

	add e                                            ; $4a1f: $83
	rst $38                                          ; $4a20: $ff
	add e                                            ; $4a21: $83
	db $fd                                           ; $4a22: $fd
	rst JumpTable                                          ; $4a23: $c7
	sub e                                            ; $4a24: $93
	xor d                                            ; $4a25: $aa
	add e                                            ; $4a26: $83
	ld [de], a                                       ; $4a27: $12
	call Call_017_7b00                               ; $4a28: $cd $00 $7b
	ldh a, [$7c]                                     ; $4a2b: $f0 $7c
	ld l, h                                          ; $4a2d: $6c
	ld a, a                                          ; $4a2e: $7f
	ld l, [hl]                                       ; $4a2f: $6e
	sub h                                            ; $4a30: $94
	ld b, e                                          ; $4a31: $43
	add hl, de                                       ; $4a32: $19
	and l                                            ; $4a33: $a5
	inc bc                                           ; $4a34: $03
	ld a, [de]                                       ; $4a35: $1a
	ld b, e                                          ; $4a36: $43

jr_017_4a37:
	ld b, d                                          ; $4a37: $42
	jp $ef42                                         ; $4a38: $c3 $42 $ef


	rlca                                             ; $4a3b: $07
	ld h, a                                          ; $4a3c: $67
	cp $9d                                           ; $4a3d: $fe $9d
	cp $f7                                           ; $4a3f: $fe $f7
	ld [hl], a                                       ; $4a41: $77
	ld a, [$8a74]                                    ; $4a42: $fa $74 $8a
	sbc d                                            ; $4a45: $9a
	cp a                                             ; $4a46: $bf
	add b                                            ; $4a47: $80
	rst SubAFromDE                                          ; $4a48: $df
	ret nz                                           ; $4a49: $c0

	rra                                              ; $4a4a: $1f
	ld a, c                                          ; $4a4b: $79
	add $7f                                          ; $4a4c: $c6 $7f
	xor b                                            ; $4a4e: $a8
	ld a, h                                          ; $4a4f: $7c
	add b                                            ; $4a50: $80
	sbc c                                            ; $4a51: $99
	cp h                                             ; $4a52: $bc
	adc a                                            ; $4a53: $8f
	or $c3                                           ; $4a54: $f6 $c3
	cp $89                                           ; $4a56: $fe $89
	ld a, e                                          ; $4a58: $7b
	ret nz                                           ; $4a59: $c0

	sub d                                            ; $4a5a: $92
	ld c, a                                          ; $4a5b: $4f
	ldh a, [$f1]                                     ; $4a5c: $f0 $f1
	add h                                            ; $4a5e: $84
	add d                                            ; $4a5f: $82
	add [hl]                                         ; $4a60: $86
	inc b                                            ; $4a61: $04
	ld sp, hl                                        ; $4a62: $f9
	rrca                                             ; $4a63: $0f
	rst $38                                          ; $4a64: $ff
	ld c, $ff                                        ; $4a65: $0e $ff
	ld [$ffde], sp                                   ; $4a67: $08 $de $ff
	ld [hl], a                                       ; $4a6a: $77
	db $fc                                           ; $4a6b: $fc
	ld a, [hl]                                       ; $4a6c: $7e
	sub e                                            ; $4a6d: $93
	ld a, a                                          ; $4a6e: $7f
	ld h, b                                          ; $4a6f: $60
	ld a, [hl]                                       ; $4a70: $7e
	sbc [hl]                                         ; $4a71: $9e
	ld a, a                                          ; $4a72: $7f
	ldh a, [hDisp1_OBP1]                                     ; $4a73: $f0 $94
	inc l                                            ; $4a75: $2c
	rst $38                                          ; $4a76: $ff
	call c, $afff                                    ; $4a77: $dc $ff $af
	rst $38                                          ; $4a7a: $ff
	sbc h                                            ; $4a7b: $9c
	rst $38                                          ; $4a7c: $ff
	dec l                                            ; $4a7d: $2d
	ld a, a                                          ; $4a7e: $7f
	cp $7b                                           ; $4a7f: $fe $7b
	add sp, $77                                      ; $4a81: $e8 $77
	cp $6b                                           ; $4a83: $fe $6b
	ldh [$7f], a                                     ; $4a85: $e0 $7f
	ld b, b                                          ; $4a87: $40
	ld h, d                                          ; $4a88: $62
	adc b                                            ; $4a89: $88
	sub e                                            ; $4a8a: $93
	db $fc                                           ; $4a8b: $fc
	cp $fe                                           ; $4a8c: $fe $fe
	rst $38                                          ; $4a8e: $ff
	rst GetHLinHL                                          ; $4a8f: $cf
	rst $38                                          ; $4a90: $ff
	add a                                            ; $4a91: $87
	ldh [rAUD4LEN], a                                ; $4a92: $e0 $20
	add b                                            ; $4a94: $80
	jr nz, jr_017_4a37                               ; $4a95: $20 $a0

	ld a, e                                          ; $4a97: $7b
	db $fc                                           ; $4a98: $fc
	sub a                                            ; $4a99: $97
	jr nz, @-$5c                                     ; $4a9a: $20 $a2

	ld b, c                                          ; $4a9c: $41
	db $e3                                           ; $4a9d: $e3
	sbc a                                            ; $4a9e: $9f
	cp a                                             ; $4a9f: $bf
	ccf                                              ; $4aa0: $3f
	and e                                            ; $4aa1: $a3
	ld a, d                                          ; $4aa2: $7a
	jp $fb9e                                         ; $4aa3: $c3 $9e $fb


	ld [hl], d                                       ; $4aa6: $72
	rst JumpTable                                          ; $4aa7: $c7
	sbc $80                                          ; $4aa8: $de $80
	rst SubAFromDE                                          ; $4aaa: $df
	rst $38                                          ; $4aab: $ff
	rst SubAFromDE                                          ; $4aac: $df
	add h                                            ; $4aad: $84
	sbc h                                            ; $4aae: $9c
	or $bb                                           ; $4aaf: $f6 $bb
	cp a                                             ; $4ab1: $bf
	ld [hl], l                                       ; $4ab2: $75
	ld c, e                                          ; $4ab3: $4b
	sbc [hl]                                         ; $4ab4: $9e
	ld a, $db                                        ; $4ab5: $3e $db
	rst $38                                          ; $4ab7: $ff
	rst SubAFromDE                                          ; $4ab8: $df
	db $e3                                           ; $4ab9: $e3
	sbc h                                            ; $4aba: $9c
	rlca                                             ; $4abb: $07
	ld a, [$7bc0]                                    ; $4abc: $fa $c0 $7b
	ldh a, [$9c]                                     ; $4abf: $f0 $9c
	ld h, e                                          ; $4ac1: $63
	ld a, d                                          ; $4ac2: $7a
	di                                               ; $4ac3: $f3
	ld a, b                                          ; $4ac4: $78
	cp a                                             ; $4ac5: $bf
	ld a, [hl]                                       ; $4ac6: $7e
	call nc, $0d9a                                   ; $4ac7: $d4 $9a $0d
	rrca                                             ; $4aca: $0f
	ei                                               ; $4acb: $fb
	xor l                                            ; $4acc: $ad
	daa                                              ; $4acd: $27
	ld [hl], a                                       ; $4ace: $77
	ldh [$9e], a                                     ; $4acf: $e0 $9e
	ei                                               ; $4ad1: $fb
	db $db                                           ; $4ad2: $db
	rst $38                                          ; $4ad3: $ff
	rst SubAFromDE                                          ; $4ad4: $df
	add a                                            ; $4ad5: $87
	sub a                                            ; $4ad6: $97
	ld bc, $00de                                     ; $4ad7: $01 $de $00
	rst AddAOntoHL                                          ; $4ada: $ef
	nop                                              ; $4adb: $00
	rst $38                                          ; $4adc: $ff
	ld l, a                                          ; $4add: $6f
	ld l, h                                          ; $4ade: $6c
	db $dd                                           ; $4adf: $dd
	rst $38                                          ; $4ae0: $ff
	rst SubAFromDE                                          ; $4ae1: $df
	rst GetHLinHL                                          ; $4ae2: $cf
	rst SubAFromDE                                          ; $4ae3: $df
	add a                                            ; $4ae4: $87
	rst SubAFromDE                                          ; $4ae5: $df
	rst $38                                          ; $4ae6: $ff
	rst $38                                          ; $4ae7: $ff
	ld a, l                                          ; $4ae8: $7d
	ld a, [hl-]                                      ; $4ae9: $3a
	sbc e                                            ; $4aea: $9b
	ld d, e                                          ; $4aeb: $53
	cp $ff                                           ; $4aec: $fe $ff
	cp $6d                                           ; $4aee: $fe $6d
	ld e, [hl]                                       ; $4af0: $5e
	ld [hl], a                                       ; $4af1: $77
	ldh a, [$9c]                                     ; $4af2: $f0 $9c
	ei                                               ; $4af4: $fb
	add e                                            ; $4af5: $83
	ld a, [$fe7a]                                    ; $4af6: $fa $7a $fe
	ld [hl], e                                       ; $4af9: $73
	ldh a, [$9e]                                     ; $4afa: $f0 $9e
	db $e3                                           ; $4afc: $e3
	ld [hl], e                                       ; $4afd: $73
	ldh [$6d], a                                     ; $4afe: $e0 $6d
	ld l, e                                          ; $4b00: $6b
	ld a, e                                          ; $4b01: $7b
	ld d, $dd                                        ; $4b02: $16 $dd
	rst $38                                          ; $4b04: $ff
	rst $38                                          ; $4b05: $ff
	sbc l                                            ; $4b06: $9d
	db $fd                                           ; $4b07: $fd
	pop bc                                           ; $4b08: $c1
	call c, $9cff                                    ; $4b09: $dc $ff $9c
	ld a, a                                          ; $4b0c: $7f
	db $e3                                           ; $4b0d: $e3
	db $e3                                           ; $4b0e: $e3
	ld h, a                                          ; $4b0f: $67
	ldh [$9e], a                                     ; $4b10: $e0 $9e
	ldh a, [$dd]                                     ; $4b12: $f0 $dd
	rst $38                                          ; $4b14: $ff
	ld a, a                                          ; $4b15: $7f
	ei                                               ; $4b16: $fb
	sbc h                                            ; $4b17: $9c
	ld a, b                                          ; $4b18: $78

jr_017_4b19:
	ccf                                              ; $4b19: $3f
	jr c, jr_017_4b19                                ; $4b1a: $38 $fd

	sbc l                                            ; $4b1c: $9d
	ld bc, $6700                                     ; $4b1d: $01 $00 $67
	sub b                                            ; $4b20: $90
	rst SubAFromDE                                          ; $4b21: $df
	rst GetHLinHL                                          ; $4b22: $cf
	sbc h                                            ; $4b23: $9c
	ld [bc], a                                       ; $4b24: $02
	cp $db                                           ; $4b25: $fe $db
	ld a, d                                          ; $4b27: $7a
	ld e, [hl]                                       ; $4b28: $5e
	sbc [hl]                                         ; $4b29: $9e
	db $ed                                           ; $4b2a: $ed
	ld a, e                                          ; $4b2b: $7b
	and c                                            ; $4b2c: $a1
	rst SubAFromDE                                          ; $4b2d: $df
	rst $38                                          ; $4b2e: $ff
	rst SubAFromDE                                          ; $4b2f: $df
	rst JumpTable                                          ; $4b30: $c7
	rst SubAFromDE                                          ; $4b31: $df
	rst $38                                          ; $4b32: $ff
	sbc e                                            ; $4b33: $9b
	jr nz, jr_017_4b65                               ; $4b34: $20 $2f

	ld b, $2f                                        ; $4b36: $06 $2f
	ld [hl], a                                       ; $4b38: $77
	db $fc                                           ; $4b39: $fc
	sub e                                            ; $4b3a: $93
	ld [hl], c                                       ; $4b3b: $71
	cp a                                             ; $4b3c: $bf
	ld d, a                                          ; $4b3d: $57
	rst $38                                          ; $4b3e: $ff
	db $db                                           ; $4b3f: $db
	cp a                                             ; $4b40: $bf
	ld a, a                                          ; $4b41: $7f
	and e                                            ; $4b42: $a3
	add b                                            ; $4b43: $80
	add b                                            ; $4b44: $80
	ret nz                                           ; $4b45: $c0

	ret nz                                           ; $4b46: $c0

	db $fd                                           ; $4b47: $fd
	sbc l                                            ; $4b48: $9d

jr_017_4b49:
	ld a, a                                          ; $4b49: $7f
	nop                                              ; $4b4a: $00
	ld [hl], e                                       ; $4b4b: $73
	and d                                            ; $4b4c: $a2
	sub a                                            ; $4b4d: $97
	add h                                            ; $4b4e: $84
	xor a                                            ; $4b4f: $af
	rst AddAOntoHL                                          ; $4b50: $ef
	cp a                                             ; $4b51: $bf
	cp a                                             ; $4b52: $bf
	nop                                              ; $4b53: $00
	nop                                              ; $4b54: $00
	ld a, $6b                                        ; $4b55: $3e $6b
	jr nc, jr_017_4bd8                               ; $4b57: $30 $7f

	and b                                            ; $4b59: $a0
	db $dd                                           ; $4b5a: $dd
	add b                                            ; $4b5b: $80
	db $fd                                           ; $4b5c: $fd
	rst SubAFromDE                                          ; $4b5d: $df
	rst $38                                          ; $4b5e: $ff
	rst SubAFromDE                                          ; $4b5f: $df
	ld hl, sp-$21                                    ; $4b60: $f8 $df
	db $fd                                           ; $4b62: $fd
	rst SubAFromDE                                          ; $4b63: $df
	dec c                                            ; $4b64: $0d

jr_017_4b65:
	sbc e                                            ; $4b65: $9b
	ld l, $20                                        ; $4b66: $2e $20
	ccf                                              ; $4b68: $3f
	ccf                                              ; $4b69: $3f
	db $fd                                           ; $4b6a: $fd
	rst SubAFromDE                                          ; $4b6b: $df
	db $fd                                           ; $4b6c: $fd
	ld l, a                                          ; $4b6d: $6f
	jr nc, jr_017_4b49                               ; $4b6e: $30 $d9

	add b                                            ; $4b70: $80
	ld a, d                                          ; $4b71: $7a
	jp nc, $917b                                     ; $4b72: $d2 $7b $91

	rst SubAFromDE                                          ; $4b75: $df
	add a                                            ; $4b76: $87
	rst FarCall                                          ; $4b77: $f7
	rst SubAFromDE                                          ; $4b78: $df
	ld bc, $ffde                                     ; $4b79: $01 $de $ff
	sbc h                                            ; $4b7c: $9c
	add hl, bc                                       ; $4b7d: $09
	rst $38                                          ; $4b7e: $ff
	jr nc, jr_017_4bfc                               ; $4b7f: $30 $7b

	ld l, b                                          ; $4b81: $68
	sbc h                                            ; $4b82: $9c
	or b                                             ; $4b83: $b0
	rst SubAFromDE                                          ; $4b84: $df
	ret nz                                           ; $4b85: $c0

	sbc $ff                                          ; $4b86: $de $ff
	ld [hl], a                                       ; $4b88: $77
	sbc $77                                          ; $4b89: $de $77
	ld a, [de]                                       ; $4b8b: $1a
	ld a, e                                          ; $4b8c: $7b
	ld a, e                                          ; $4b8d: $7b
	db $db                                           ; $4b8e: $db
	rst $38                                          ; $4b8f: $ff
	rst SubAFromDE                                          ; $4b90: $df
	adc e                                            ; $4b91: $8b
	sbc $ff                                          ; $4b92: $de $ff
	sub d                                            ; $4b94: $92
	ld b, $5f                                        ; $4b95: $06 $5f
	rst FarCall                                          ; $4b97: $f7
	ld e, a                                          ; $4b98: $5f
	db $f4                                           ; $4b99: $f4
	rst $38                                          ; $4b9a: $ff
	daa                                              ; $4b9b: $27
	rst $38                                          ; $4b9c: $ff
	rst $38                                          ; $4b9d: $ff
	rst SubAFromDE                                          ; $4b9e: $df
	rst SubAFromDE                                          ; $4b9f: $df
	and e                                            ; $4ba0: $a3
	and e                                            ; $4ba1: $a3
	sbc $ff                                          ; $4ba2: $de $ff
	sbc [hl]                                         ; $4ba4: $9e
	inc c                                            ; $4ba5: $0c
	ld a, d                                          ; $4ba6: $7a
	ret                                              ; $4ba7: $c9


	ld a, l                                          ; $4ba8: $7d
	sbc l                                            ; $4ba9: $9d
	ld a, l                                          ; $4baa: $7d
	rst AddAOntoHL                                          ; $4bab: $ef
	db $db                                           ; $4bac: $db
	rst $38                                          ; $4bad: $ff
	sbc l                                            ; $4bae: $9d
	db $fd                                           ; $4baf: $fd
	ld a, a                                          ; $4bb0: $7f
	ld a, b                                          ; $4bb1: $78
	call nc, $ff9c                                   ; $4bb2: $d4 $9c $ff
	ld b, h                                          ; $4bb5: $44
	rst $38                                          ; $4bb6: $ff
	ld a, c                                          ; $4bb7: $79
	ret                                              ; $4bb8: $c9


	jp c, Jump_017_7fff                              ; $4bb9: $da $ff $7f

	inc sp                                           ; $4bbc: $33
	ld a, h                                          ; $4bbd: $7c
	ret c                                            ; $4bbe: $d8

	ld a, [hl]                                       ; $4bbf: $7e
	db $e4                                           ; $4bc0: $e4
	ld a, a                                          ; $4bc1: $7f
	ld a, [$db9d]                                    ; $4bc2: $fa $9d $db
	ld a, a                                          ; $4bc5: $7f
	ld a, b                                          ; $4bc6: $78
	ret nz                                           ; $4bc7: $c0

	rst SubAFromDE                                          ; $4bc8: $df
	ld c, $9d                                        ; $4bc9: $0e $9d
	ld a, a                                          ; $4bcb: $7f
	ldh [$7a], a                                     ; $4bcc: $e0 $7a
	db $fc                                           ; $4bce: $fc
	sbc d                                            ; $4bcf: $9a
	ld h, b                                          ; $4bd0: $60
	rst $38                                          ; $4bd1: $ff
	ldh [$7f], a                                     ; $4bd2: $e0 $7f
	ld h, c                                          ; $4bd4: $61
	ld l, [hl]                                       ; $4bd5: $6e
	add b                                            ; $4bd6: $80
	sbc [hl]                                         ; $4bd7: $9e

jr_017_4bd8:
	db $10                                           ; $4bd8: $10
	db $dd                                           ; $4bd9: $dd
	rst $38                                          ; $4bda: $ff
	sbc [hl]                                         ; $4bdb: $9e
	ld de, $8f7a                                     ; $4bdc: $11 $7a $8f
	adc [hl]                                         ; $4bdf: $8e
	ccf                                              ; $4be0: $3f
	rst AddAOntoHL                                          ; $4be1: $ef
	rst AddAOntoHL                                          ; $4be2: $ef
	rst SubAFromDE                                          ; $4be3: $df
	rst SubAFromDE                                          ; $4be4: $df
	pop af                                           ; $4be5: $f1
	pop af                                           ; $4be6: $f1
	ld hl, sp+$1f                                    ; $4be7: $f8 $1f
	ld a, a                                          ; $4be9: $7f
	rst SubAFromDE                                          ; $4bea: $df
	ld a, a                                          ; $4beb: $7f
	db $dd                                           ; $4bec: $dd
	rst $38                                          ; $4bed: $ff
	rra                                              ; $4bee: $1f
	rst $38                                          ; $4bef: $ff
	cp h                                             ; $4bf0: $bc
	db $dd                                           ; $4bf1: $dd
	rst $38                                          ; $4bf2: $ff
	rst SubAFromDE                                          ; $4bf3: $df
	sbc a                                            ; $4bf4: $9f
	sbc c                                            ; $4bf5: $99
	ccf                                              ; $4bf6: $3f
	ret nc                                           ; $4bf7: $d0

	db $fd                                           ; $4bf8: $fd
	rst FarCall                                          ; $4bf9: $f7
	db $fd                                           ; $4bfa: $fd
	rla                                              ; $4bfb: $17

jr_017_4bfc:
	ld a, e                                          ; $4bfc: $7b
	ld l, h                                          ; $4bfd: $6c
	ld a, a                                          ; $4bfe: $7f
	and [hl]                                         ; $4bff: $a6
	ld [hl], d                                       ; $4c00: $72
	xor $77                                          ; $4c01: $ee $77
	ld [hl], c                                       ; $4c03: $71
	sub d                                            ; $4c04: $92
	rst $38                                          ; $4c05: $ff
	ld b, d                                          ; $4c06: $42
	rst $38                                          ; $4c07: $ff
	rst $38                                          ; $4c08: $ff
	ccf                                              ; $4c09: $3f
	rst $38                                          ; $4c0a: $ff
	bit 1, e                                         ; $4c0b: $cb $4b
	cp l                                             ; $4c0d: $bd
	cp l                                             ; $4c0e: $bd
	db $e3                                           ; $4c0f: $e3
	db $e3                                           ; $4c10: $e3
	xor $75                                          ; $4c11: $ee $75
	and h                                            ; $4c13: $a4
	ld a, h                                          ; $4c14: $7c
	adc $9c                                          ; $4c15: $ce $9c
	rlca                                             ; $4c17: $07
	xor $e7                                          ; $4c18: $ee $e7
	ld [hl], b                                       ; $4c1a: $70
	add $7d                                          ; $4c1b: $c6 $7d
	and b                                            ; $4c1d: $a0
	ld [hl], d                                       ; $4c1e: $72
	inc de                                           ; $4c1f: $13
	sub e                                            ; $4c20: $93
	ccf                                              ; $4c21: $3f
	ret nz                                           ; $4c22: $c0

	rst SubAFromDE                                          ; $4c23: $df
	ld a, a                                          ; $4c24: $7f
	rst SubAFromDE                                          ; $4c25: $df
	and b                                            ; $4c26: $a0
	ccf                                              ; $4c27: $3f
	ldh [rIE], a                                     ; $4c28: $e0 $ff
	ret nz                                           ; $4c2a: $c0

	ccf                                              ; $4c2b: $3f
	jr nc, jr_017_4ca5                               ; $4c2c: $30 $77

	cp $95                                           ; $4c2e: $fe $95
	sbc a                                            ; $4c30: $9f
	ldh a, [$3f]                                     ; $4c31: $f0 $3f
	cp a                                             ; $4c33: $bf
	jp nz, $81ff                                     ; $4c34: $c2 $ff $81

	rst AddAOntoHL                                          ; $4c37: $ef
	jr nc, @-$02                                     ; $4c38: $30 $fc

	push af                                          ; $4c3a: $f5
	ld [hl], l                                       ; $4c3b: $75
	cp d                                             ; $4c3c: $ba
	pop af                                           ; $4c3d: $f1
	sbc c                                            ; $4c3e: $99

jr_017_4c3f:
	ld hl, sp+$6e                                    ; $4c3f: $f8 $6e
	add [hl]                                         ; $4c41: $86
	adc a                                            ; $4c42: $8f
	inc bc                                           ; $4c43: $03
	inc bc                                           ; $4c44: $03
	db $fc                                           ; $4c45: $fc
	add b                                            ; $4c46: $80
	ldh a, [$57]                                     ; $4c47: $f0 $57
	rst $38                                          ; $4c49: $ff
	di                                               ; $4c4a: $f3
	db $fc                                           ; $4c4b: $fc
	scf                                              ; $4c4c: $37
	pop bc                                           ; $4c4d: $c1
	ccf                                              ; $4c4e: $3f
	ld [hl], d                                       ; $4c4f: $72
	rra                                              ; $4c50: $1f
	add hl, de                                       ; $4c51: $19
	ld c, $02                                        ; $4c52: $0e $02
	ld c, $86                                        ; $4c54: $0e $86
	ld c, [hl]                                       ; $4c56: $4e
	add d                                            ; $4c57: $82
	rst $38                                          ; $4c58: $ff
	sub a                                            ; $4c59: $97
	rst $38                                          ; $4c5a: $ff
	ld c, a                                          ; $4c5b: $4f
	nop                                              ; $4c5c: $00
	rlca                                             ; $4c5d: $07
	ld [bc], a                                       ; $4c5e: $02
	ld b, $00                                        ; $4c5f: $06 $00
	ld [$0600], sp                                   ; $4c61: $08 $00 $06
	ld [bc], a                                       ; $4c64: $02
	rra                                              ; $4c65: $1f
	sbc h                                            ; $4c66: $9c
	rrca                                             ; $4c67: $0f
	ccf                                              ; $4c68: $3f
	sbc $43                                          ; $4c69: $de $43
	ret nz                                           ; $4c6b: $c0

	ld a, [hl]                                       ; $4c6c: $7e
	ld l, d                                          ; $4c6d: $6a
	di                                               ; $4c6e: $f3
	ld a, d                                          ; $4c6f: $7a
	inc de                                           ; $4c70: $13
	db $f4                                           ; $4c71: $f4
	sbc l                                            ; $4c72: $9d
	db $fc                                           ; $4c73: $fc
	inc b                                            ; $4c74: $04
	ld b, e                                          ; $4c75: $43
	ld [bc], a                                       ; $4c76: $02
	rst $38                                          ; $4c77: $ff
	rst SubAFromDE                                          ; $4c78: $df
	ldh [$7f], a                                     ; $4c79: $e0 $7f
	db $fd                                           ; $4c7b: $fd
	sbc l                                            ; $4c7c: $9d
	jr nz, jr_017_4c3f                               ; $4c7d: $20 $c0

	ld l, a                                          ; $4c7f: $6f
	db $fc                                           ; $4c80: $fc
	ld a, e                                          ; $4c81: $7b
	cp $f6                                           ; $4c82: $fe $f6
	sbc e                                            ; $4c84: $9b
	inc bc                                           ; $4c85: $03
	nop                                              ; $4c86: $00
	rlca                                             ; $4c87: $07
	rlca                                             ; $4c88: $07
	push af                                          ; $4c89: $f5
	ld a, a                                          ; $4c8a: $7f
	db $dd                                           ; $4c8b: $dd
	sbc l                                            ; $4c8c: $9d
	ldh a, [$b0]                                     ; $4c8d: $f0 $b0
	db $fc                                           ; $4c8f: $fc
	adc d                                            ; $4c90: $8a
	rst $38                                          ; $4c91: $ff
	nop                                              ; $4c92: $00
	di                                               ; $4c93: $f3
	nop                                              ; $4c94: $00
	db $e3                                           ; $4c95: $e3
	nop                                              ; $4c96: $00
	db $ec                                           ; $4c97: $ec
	nop                                              ; $4c98: $00
	reti                                             ; $4c99: $d9


	nop                                              ; $4c9a: $00
	or e                                             ; $4c9b: $b3
	inc bc                                           ; $4c9c: $03
	inc bc                                           ; $4c9d: $03
	ccf                                              ; $4c9e: $3f
	jr nz, @+$81                                     ; $4c9f: $20 $7f

	ld h, b                                          ; $4ca1: $60
	ld a, a                                          ; $4ca2: $7f
	ld l, a                                          ; $4ca3: $6f
	ld a, e                                          ; $4ca4: $7b

jr_017_4ca5:
	ld l, e                                          ; $4ca5: $6b
	ld [hl], a                                       ; $4ca6: $77
	cp $93                                           ; $4ca7: $fe $93
	ld a, a                                          ; $4ca9: $7f
	ld l, e                                          ; $4caa: $6b
	ldh [$e0], a                                     ; $4cab: $e0 $e0
	cp $02                                           ; $4cad: $fe $02
	rst $38                                          ; $4caf: $ff
	inc bc                                           ; $4cb0: $03
	rst $38                                          ; $4cb1: $ff
	ei                                               ; $4cb2: $fb
	ld l, a                                          ; $4cb3: $6f
	ld l, e                                          ; $4cb4: $6b
	ld [hl], a                                       ; $4cb5: $77
	cp $9d                                           ; $4cb6: $fe $9d
	rst $38                                          ; $4cb8: $ff
	ld l, e                                          ; $4cb9: $6b
	ld l, a                                          ; $4cba: $6f
	ret nc                                           ; $4cbb: $d0

	sub l                                            ; $4cbc: $95
	add b                                            ; $4cbd: $80
	rst $38                                          ; $4cbe: $ff
	sbc [hl]                                         ; $4cbf: $9e
	ld a, a                                          ; $4cc0: $7f
	sub [hl]                                         ; $4cc1: $96
	ei                                               ; $4cc2: $fb
	sbc $7f                                          ; $4cc3: $de $7f
	or $fb                                           ; $4cc5: $f6 $fb
	push af                                          ; $4cc7: $f5
	rst SubAFromDE                                          ; $4cc8: $df
	ld bc, $03df                                     ; $4cc9: $01 $df $03
	push af                                          ; $4ccc: $f5
	sbc e                                            ; $4ccd: $9b
	ld hl, sp+$08                                    ; $4cce: $f8 $08
	ld hl, sp-$18                                    ; $4cd0: $f8 $e8
	ld l, e                                          ; $4cd2: $6b
	and b                                            ; $4cd3: $a0
	sub [hl]                                         ; $4cd4: $96
	rst $38                                          ; $4cd5: $ff
	add c                                            ; $4cd6: $81
	rst $38                                          ; $4cd7: $ff
	ld bc, $01fe                                     ; $4cd8: $01 $fe $01
	rst $38                                          ; $4cdb: $ff
	inc bc                                           ; $4cdc: $03
	db $fd                                           ; $4cdd: $fd
	di                                               ; $4cde: $f3
	sbc l                                            ; $4cdf: $9d
	rra                                              ; $4ce0: $1f
	db $10                                           ; $4ce1: $10
	ld l, a                                          ; $4ce2: $6f
	ldh [hDisp1_WY], a                                     ; $4ce3: $e0 $95
	jr nz, @+$01                                     ; $4ce5: $20 $ff

	ld h, a                                          ; $4ce7: $67
	rst SubAFromDE                                          ; $4ce8: $df
	ld h, e                                          ; $4ce9: $63
	cp l                                             ; $4cea: $bd
	ld [hl], e                                       ; $4ceb: $73
	db $dd                                           ; $4cec: $dd
	ei                                               ; $4ced: $fb
	ld a, l                                          ; $4cee: $7d
	ld [hl], e                                       ; $4cef: $73
	ld b, b                                          ; $4cf0: $40
	ld a, a                                          ; $4cf1: $7f
	ret nc                                           ; $4cf2: $d0

	sbc [hl]                                         ; $4cf3: $9e
	rst SubAFromBC                                          ; $4cf4: $e7
	ld a, e                                          ; $4cf5: $7b
	ld [hl], b                                       ; $4cf6: $70
	sub [hl]                                         ; $4cf7: $96
	sbc e                                            ; $4cf8: $9b
	nop                                              ; $4cf9: $00
	call Call_017_6600                               ; $4cfa: $cd $00 $66
	nop                                              ; $4cfd: $00
	add d                                            ; $4cfe: $82
	add d                                            ; $4cff: $82
	rst AddAOntoHL                                          ; $4d00: $ef
	ld [hl], a                                       ; $4d01: $77
	cp $9a                                           ; $4d02: $fe $9a
	ld a, l                                          ; $4d04: $7d
	rst $38                                          ; $4d05: $ff
	add d                                            ; $4d06: $82
	rst AddAOntoHL                                          ; $4d07: $ef
	rst AddAOntoHL                                          ; $4d08: $ef
	sbc $ff                                          ; $4d09: $de $ff
	sbc e                                            ; $4d0b: $9b
	nop                                              ; $4d0c: $00
	ld [$be08], sp                                   ; $4d0d: $08 $08 $be
	ld [hl], a                                       ; $4d10: $77
	cp $9a                                           ; $4d11: $fe $9a
	rst FarCall                                          ; $4d13: $f7
	rst $38                                          ; $4d14: $ff
	ld [$bebe], sp                                   ; $4d15: $08 $be $be
	ld [hl], a                                       ; $4d18: $77
	ldh a, [$7b]                                     ; $4d19: $f0 $7b
	ret nc                                           ; $4d1b: $d0

	ld a, e                                          ; $4d1c: $7b
	adc $de                                          ; $4d1d: $ce $de
	jr nz, jr_017_4d98                               ; $4d1f: $20 $77

	db $fc                                           ; $4d21: $fc
	ld a, e                                          ; $4d22: $7b
	ld a, [$b177]                                    ; $4d23: $fa $77 $b1
	ld a, e                                          ; $4d26: $7b
	ld [$80d9], a                                    ; $4d27: $ea $d9 $80
	ld l, a                                          ; $4d2a: $6f
	ldh a, [$df]                                     ; $4d2b: $f0 $df
	jr nz, @-$67                                     ; $4d2d: $20 $97

	ld h, a                                          ; $4d2f: $67
	ld b, a                                          ; $4d30: $47
	ld [hl], l                                       ; $4d31: $75
	inc h                                            ; $4d32: $24
	ld [hl], a                                       ; $4d33: $77
	ld d, a                                          ; $4d34: $57
	ld [hl], l                                       ; $4d35: $75
	ld [hl], h                                       ; $4d36: $74
	ld h, a                                          ; $4d37: $67
	ldh [$67], a                                     ; $4d38: $e0 $67
	sbc $67                                          ; $4d3a: $de $67
	ldh a, [$df]                                     ; $4d3c: $f0 $df
	ld [$3fdf], sp                                   ; $4d3e: $08 $df $3f
	sbc e                                            ; $4d41: $9b
	ld l, $20                                        ; $4d42: $2e $20
	ccf                                              ; $4d44: $3f
	ccf                                              ; $4d45: $3f
	ld [hl], a                                       ; $4d46: $77
	or b                                             ; $4d47: $b0
	rst SubAFromDE                                          ; $4d48: $df
	rst $38                                          ; $4d49: $ff
	rst SubAFromHL                                          ; $4d4a: $d7
	add b                                            ; $4d4b: $80
	sbc e                                            ; $4d4c: $9b
	rst $38                                          ; $4d4d: $ff
	add [hl]                                         ; $4d4e: $86
	ld a, a                                          ; $4d4f: $7f
	ld b, $7b                                        ; $4d50: $06 $7b
	ld b, c                                          ; $4d52: $41
	ld a, a                                          ; $4d53: $7f
	cp $9c                                           ; $4d54: $fe $9c
	cp $ff                                           ; $4d56: $fe $ff
	ld b, $73                                        ; $4d58: $06 $73
	cp $77                                           ; $4d5a: $fe $77
	db $f4                                           ; $4d5c: $f4
	ld [hl], a                                       ; $4d5d: $77
	cp $7b                                           ; $4d5e: $fe $7b
	bit 6, a                                         ; $4d60: $cb $77
	cp $91                                           ; $4d62: $fe $91

jr_017_4d64:
	ei                                               ; $4d64: $fb
	ldh a, [$fb]                                     ; $4d65: $f0 $fb
	jr nc, jr_017_4d64                               ; $4d67: $30 $fb

	ldh a, [rIE]                                     ; $4d69: $f0 $ff
	ldh a, [rIE]                                     ; $4d6b: $f0 $ff
	scf                                              ; $4d6d: $37
	dec sp                                           ; $4d6e: $3b
	ldh a, [$3b]                                     ; $4d6f: $f0 $3b
	ldh a, [$7b]                                     ; $4d71: $f0 $7b
	or $9a                                           ; $4d73: $f6 $9a
	rst FarCall                                          ; $4d75: $f7
	ld e, a                                          ; $4d76: $5f
	or $ff                                           ; $4d77: $f6 $ff
	rst FarCall                                          ; $4d79: $f7
	ld a, d                                          ; $4d7a: $7a
	adc $df                                          ; $4d7b: $ce $df
	db $fc                                           ; $4d7d: $fc
	sbc h                                            ; $4d7e: $9c
	rrca                                             ; $4d7f: $0f
	db $fc                                           ; $4d80: $fc
	rst $38                                          ; $4d81: $ff
	ld a, e                                          ; $4d82: $7b
	or $9c                                           ; $4d83: $f6 $9c
	db $fd                                           ; $4d85: $fd
	rst $38                                          ; $4d86: $ff
	dec c                                            ; $4d87: $0d
	ld a, e                                          ; $4d88: $7b
	db $fc                                           ; $4d89: $fc
	sbc b                                            ; $4d8a: $98
	ld hl, sp-$01                                    ; $4d8b: $f8 $ff
	rrca                                             ; $4d8d: $0f
	adc a                                            ; $4d8e: $8f
	ld a, [hl]                                       ; $4d8f: $7e
	adc a                                            ; $4d90: $8f
	ld a, a                                          ; $4d91: $7f
	ld a, e                                          ; $4d92: $7b
	or $7e                                           ; $4d93: $f6 $7e
	cp d                                             ; $4d95: $ba
	ld a, [hl]                                       ; $4d96: $7e
	or h                                             ; $4d97: $b4

jr_017_4d98:
	ld [hl], e                                       ; $4d98: $73
	cp $7a                                           ; $4d99: $fe $7a
	xor h                                            ; $4d9b: $ac
	ld [hl], a                                       ; $4d9c: $77
	ld a, [$eb9e]                                    ; $4d9d: $fa $9e $eb
	ld a, e                                          ; $4da0: $7b
	ei                                               ; $4da1: $fb
	sbc [hl]                                         ; $4da2: $9e
	rst AddAOntoHL                                          ; $4da3: $ef
	ld [hl], a                                       ; $4da4: $77
	cp $9e                                           ; $4da5: $fe $9e
	rst $38                                          ; $4da7: $ff
	ld l, a                                          ; $4da8: $6f
	ld a, [$df92]                                    ; $4da9: $fa $92 $df
	ld a, a                                          ; $4dac: $7f
	call c, $dfff                                    ; $4dad: $dc $ff $df
	rst $38                                          ; $4db0: $ff
	rrca                                             ; $4db1: $0f
	rst $38                                          ; $4db2: $ff
	ld hl, sp-$08                                    ; $4db3: $f8 $f8
	ccf                                              ; $4db5: $3f
	ld hl, sp-$01                                    ; $4db6: $f8 $ff
	ld a, e                                          ; $4db8: $7b
	or $9c                                           ; $4db9: $f6 $9c
	rst FarCall                                          ; $4dbb: $f7
	db $fd                                           ; $4dbc: $fd
	rla                                              ; $4dbd: $17
	ld a, e                                          ; $4dbe: $7b
	cp d                                             ; $4dbf: $ba
	ld a, a                                          ; $4dc0: $7f
	ld l, h                                          ; $4dc1: $6c
	rst SubAFromDE                                          ; $4dc2: $df
	ccf                                              ; $4dc3: $3f
	ld a, a                                          ; $4dc4: $7f
	rst AddAOntoHL                                          ; $4dc5: $ef
	ld [hl], a                                       ; $4dc6: $77
	or b                                             ; $4dc7: $b0
	ld a, e                                          ; $4dc8: $7b
	ld d, h                                          ; $4dc9: $54
	call c, $94ff                                    ; $4dca: $dc $ff $94
	inc b                                            ; $4dcd: $04
	add h                                            ; $4dce: $84
	ld a, a                                          ; $4dcf: $7f
	add h                                            ; $4dd0: $84
	ld a, a                                          ; $4dd1: $7f
	rst $38                                          ; $4dd2: $ff
	rst $38                                          ; $4dd3: $ff
	rst AddAOntoHL                                          ; $4dd4: $ef
	rlca                                             ; $4dd5: $07
	rst AddAOntoHL                                          ; $4dd6: $ef
	inc b                                            ; $4dd7: $04
	ld a, e                                          ; $4dd8: $7b
	db $fc                                           ; $4dd9: $fc
	sbc c                                            ; $4dda: $99
	rlca                                             ; $4ddb: $07
	rst $38                                          ; $4ddc: $ff
	or $fe                                           ; $4ddd: $f6 $fe
	rlca                                             ; $4ddf: $07
	cp $7b                                           ; $4de0: $fe $7b
	ld hl, sp-$62                                    ; $4de2: $f8 $9e
	cp $4b                                           ; $4de4: $fe $4b
	ld h, b                                          ; $4de6: $60
	sbc l                                            ; $4de7: $9d
	rst $38                                          ; $4de8: $ff
	jr nc, jr_017_4e66                               ; $4de9: $30 $7b

	cp $77                                           ; $4deb: $fe $77
	ld hl, sp+$7f                                    ; $4ded: $f8 $7f
	jp $309d                                         ; $4def: $c3 $9d $30


	cp a                                             ; $4df2: $bf
	ld a, e                                          ; $4df3: $7b
	cp $7e                                           ; $4df4: $fe $7e
	jp c, $0097                                      ; $4df6: $da $97 $00

	db $fc                                           ; $4df9: $fc
	add b                                            ; $4dfa: $80
	ld a, [hl]                                       ; $4dfb: $7e
	call nz, $834f                                   ; $4dfc: $c4 $4f $83
	add e                                            ; $4dff: $83
	db $dd                                           ; $4e00: $dd
	add b                                            ; $4e01: $80
	adc l                                            ; $4e02: $8d
	ret nz                                           ; $4e03: $c0

	db $fc                                           ; $4e04: $fc
	nop                                              ; $4e05: $00
	ld a, b                                          ; $4e06: $78

jr_017_4e07:
	jr nz, jr_017_4e07                               ; $4e07: $20 $fe

	ld a, [de]                                       ; $4e09: $1a
	jr jr_017_4e1d                                   ; $4e0a: $18 $11

	db $fc                                           ; $4e0c: $fc
	ld c, [hl]                                       ; $4e0d: $4e
	ld hl, sp-$79                                    ; $4e0e: $f8 $87
	add h                                            ; $4e10: $84
	inc bc                                           ; $4e11: $03
	ld [bc], a                                       ; $4e12: $02
	inc bc                                           ; $4e13: $03
	jp $3976                                         ; $4e14: $c3 $76 $39


	ld [hl], l                                       ; $4e17: $75
	push de                                          ; $4e18: $d5
	sbc e                                            ; $4e19: $9b
	dec b                                            ; $4e1a: $05
	rlca                                             ; $4e1b: $07
	ld [bc], a                                       ; $4e1c: $02

jr_017_4e1d:
	ld [bc], a                                       ; $4e1d: $02
	ld [hl], c                                       ; $4e1e: $71
	call $e072                                       ; $4e1f: $cd $72 $e0
	halt                                             ; $4e22: $76
	ld a, [hl]                                       ; $4e23: $7e
	ld a, a                                          ; $4e24: $7f
	ld sp, hl                                        ; $4e25: $f9
	ld a, e                                          ; $4e26: $7b
	db $fc                                           ; $4e27: $fc
	ld l, [hl]                                       ; $4e28: $6e
	ld d, c                                          ; $4e29: $51
	ld a, d                                          ; $4e2a: $7a
	add h                                            ; $4e2b: $84
	ld a, a                                          ; $4e2c: $7f
	cp $7f                                           ; $4e2d: $fe $7f
	ld sp, hl                                        ; $4e2f: $f9
	ld a, e                                          ; $4e30: $7b
	db $fc                                           ; $4e31: $fc
	ld e, [hl]                                       ; $4e32: $5e
	add sp, $6b                                      ; $4e33: $e8 $6b
	cp $99                                           ; $4e35: $fe $99
	dec sp                                           ; $4e37: $3b
	inc sp                                           ; $4e38: $33
	ld a, e                                          ; $4e39: $7b
	ld [hl], b                                       ; $4e3a: $70
	ei                                               ; $4e3b: $fb
	db $10                                           ; $4e3c: $10
	ld a, e                                          ; $4e3d: $7b
	cp $7a                                           ; $4e3e: $fe $7a
	add sp, $76                                      ; $4e40: $e8 $76
	xor $79                                          ; $4e42: $ee $79
	db $fc                                           ; $4e44: $fc
	ld a, a                                          ; $4e45: $7f
	add hl, sp                                       ; $4e46: $39
	ld [hl], a                                       ; $4e47: $77
	call c, Call_017_5e7f                            ; $4e48: $dc $7f $5e
	sub [hl]                                         ; $4e4b: $96
	inc b                                            ; $4e4c: $04
	cp $05                                           ; $4e4d: $fe $05
	cp $f5                                           ; $4e4f: $fe $f5
	inc bc                                           ; $4e51: $03
	inc bc                                           ; $4e52: $03
	rlca                                             ; $4e53: $07
	rlca                                             ; $4e54: $07
	ld a, e                                          ; $4e55: $7b
	db $f4                                           ; $4e56: $f4
	sub [hl]                                         ; $4e57: $96
	inc c                                            ; $4e58: $0c
	rst $38                                          ; $4e59: $ff
	db $fc                                           ; $4e5a: $fc
	rst $38                                          ; $4e5b: $ff
	inc c                                            ; $4e5c: $0c
	add a                                            ; $4e5d: $87
	ld a, h                                          ; $4e5e: $7c
	add a                                            ; $4e5f: $87
	ld a, l                                          ; $4e60: $7d
	ld h, [hl]                                       ; $4e61: $66
	ldh a, [c]                                       ; $4e62: $f2
	halt                                             ; $4e63: $76
	ldh a, [$7a]                                     ; $4e64: $f0 $7a

jr_017_4e66:
	jp z, $639b                                      ; $4e66: $ca $9b $63

	ld a, e                                          ; $4e69: $7b
	ld l, a                                          ; $4e6a: $6f
	ld a, e                                          ; $4e6b: $7b
	ld [hl], a                                       ; $4e6c: $77
	di                                               ; $4e6d: $f3
	halt                                             ; $4e6e: $76
	or $86                                           ; $4e6f: $f6 $86
	ld l, a                                          ; $4e71: $6f
	ld a, a                                          ; $4e72: $7f
	ldh [$7f], a                                     ; $4e73: $e0 $7f
	db $e3                                           ; $4e75: $e3
	ld hl, sp+$38                                    ; $4e76: $f8 $38
	ld hl, sp-$08                                    ; $4e78: $f8 $f8
	di                                               ; $4e7a: $f3

jr_017_4e7b:
	ldh a, [rIE]                                     ; $4e7b: $f0 $ff
	jr @+$01                                         ; $4e7d: $18 $ff

	rra                                              ; $4e7f: $1f
	rst $38                                          ; $4e80: $ff
	jr jr_017_4e7b                                   ; $4e81: $18 $f8

	rra                                              ; $4e83: $1f
	ld hl, sp-$21                                    ; $4e84: $f8 $df
	rlca                                             ; $4e86: $07
	inc b                                            ; $4e87: $04
	rrca                                             ; $4e88: $0f
	rrca                                             ; $4e89: $0f
	ld a, e                                          ; $4e8a: $7b
	db $f4                                           ; $4e8b: $f4
	sbc [hl]                                         ; $4e8c: $9e
	db $10                                           ; $4e8d: $10
	ld a, d                                          ; $4e8e: $7a
	adc [hl]                                         ; $4e8f: $8e
	sbc d                                            ; $4e90: $9a
	db $10                                           ; $4e91: $10
	ccf                                              ; $4e92: $3f
	ret nc                                           ; $4e93: $d0

	ccf                                              ; $4e94: $3f
	rst SubAFromHL                                          ; $4e95: $d7
	ld l, c                                          ; $4e96: $69
	and c                                            ; $4e97: $a1
	ld [hl], a                                       ; $4e98: $77
	db $10                                           ; $4e99: $10
	ld [hl], d                                       ; $4e9a: $72
	xor $9d                                          ; $4e9b: $ee $9d
	xor $e6                                          ; $4e9d: $ee $e6
	ld [hl], d                                       ; $4e9f: $72
	xor $76                                          ; $4ea0: $ee $76
	db $ec                                           ; $4ea2: $ec
	sbc d                                            ; $4ea3: $9a
	ld b, $ee                                        ; $4ea4: $06 $ee
	rlca                                             ; $4ea6: $07
	xor $07                                          ; $4ea7: $ee $07
	halt                                             ; $4ea9: $76
	ld hl, sp+$7d                                    ; $4eaa: $f8 $7d
	adc e                                            ; $4eac: $8b
	sbc e                                            ; $4ead: $9b
	rst $38                                          ; $4eae: $ff
	ld [bc], a                                       ; $4eaf: $02
	rst $38                                          ; $4eb0: $ff
	nop                                              ; $4eb1: $00
	ld l, d                                          ; $4eb2: $6a
	and $7a                                          ; $4eb3: $e6 $7a
	ld hl, sp+$57                                    ; $4eb5: $f8 $57
	cp $3c                                           ; $4eb7: $fe $3c
	ld bc, $ffde                                     ; $4eb9: $01 $de $ff
	add l                                            ; $4ebc: $85
	add b                                            ; $4ebd: $80
	add c                                            ; $4ebe: $81
	rst $38                                          ; $4ebf: $ff
	or e                                             ; $4ec0: $b3
	call $cbb7                                       ; $4ec1: $cd $b7 $cb
	and a                                            ; $4ec4: $a7
	db $db                                           ; $4ec5: $db
	xor a                                            ; $4ec6: $af
	pop de                                           ; $4ec7: $d1
	adc a                                            ; $4ec8: $8f
	pop af                                           ; $4ec9: $f1
	sbc a                                            ; $4eca: $9f
	pop hl                                           ; $4ecb: $e1
	sbc a                                            ; $4ecc: $9f
	pop hl                                           ; $4ecd: $e1
	cp l                                             ; $4ece: $bd
	jp $c5bb                                         ; $4ecf: $c3 $bb $c5


	cp e                                             ; $4ed2: $bb
	push bc                                          ; $4ed3: $c5
	or a                                             ; $4ed4: $b7
	res 0, e                                         ; $4ed5: $cb $83
	db $db                                           ; $4ed7: $db
	rst $38                                          ; $4ed8: $ff
	sub h                                            ; $4ed9: $94
	ld bc, $ff81                                     ; $4eda: $01 $81 $ff
	db $dd                                           ; $4edd: $dd
	and e                                            ; $4ede: $a3
	cp l                                             ; $4edf: $bd
	jp $c3bd                                         ; $4ee0: $c3 $bd $c3


	db $fd                                           ; $4ee3: $fd
	add e                                            ; $4ee4: $83
	ld [hl], a                                       ; $4ee5: $77
	cp $94                                           ; $4ee6: $fe $94
	ld sp, hl                                        ; $4ee8: $f9
	add a                                            ; $4ee9: $87
	ld sp, hl                                        ; $4eea: $f9
	add a                                            ; $4eeb: $87
	push af                                          ; $4eec: $f5
	adc e                                            ; $4eed: $8b
	push af                                          ; $4eee: $f5
	adc e                                            ; $4eef: $8b
	db $ed                                           ; $4ef0: $ed
	db $d3                                           ; $4ef1: $d3
	pop bc                                           ; $4ef2: $c1
	db $db                                           ; $4ef3: $db
	rst $38                                          ; $4ef4: $ff
	sub d                                            ; $4ef5: $92
	add b                                            ; $4ef6: $80
	add e                                            ; $4ef7: $83
	rst $38                                          ; $4ef8: $ff
	or a                                             ; $4ef9: $b7
	rst GetHLinHL                                          ; $4efa: $cf
	or a                                             ; $4efb: $b7
	adc $a7                                          ; $4efc: $ce $a7
	call c, $d0af                                    ; $4efe: $dc $af $d0
	adc a                                            ; $4f01: $8f
	ldh a, [$7b]                                     ; $4f02: $f0 $7b
	ret nz                                           ; $4f04: $c0

	sub l                                            ; $4f05: $95
	db $e3                                           ; $4f06: $e3
	cp e                                             ; $4f07: $bb
	rst JumpTable                                          ; $4f08: $c7
	cp [hl]                                          ; $4f09: $be
	rst JumpTable                                          ; $4f0a: $c7
	cp a                                             ; $4f0b: $bf
	add $b7                                          ; $4f0c: $c6 $b7
	rst GetHLinHL                                          ; $4f0e: $cf
	add a                                            ; $4f0f: $87
	ld l, e                                          ; $4f10: $6b
	ret nz                                           ; $4f11: $c0

	sub c                                            ; $4f12: $91
	pop hl                                           ; $4f13: $e1
	rst $38                                          ; $4f14: $ff
	db $fd                                           ; $4f15: $fd
	di                                               ; $4f16: $f3
	db $fd                                           ; $4f17: $fd
	inc sp                                           ; $4f18: $33
	cp l                                             ; $4f19: $bd
	ld [hl], e                                       ; $4f1a: $73
	ld a, l                                          ; $4f1b: $7d
	di                                               ; $4f1c: $f3
	db $fd                                           ; $4f1d: $fd
	db $e3                                           ; $4f1e: $e3
	db $fd                                           ; $4f1f: $fd
	jp $c07b                                         ; $4f20: $c3 $7b $c0


	sub a                                            ; $4f23: $97
	rlca                                             ; $4f24: $07
	push af                                          ; $4f25: $f5
	dec de                                           ; $4f26: $1b
	push af                                          ; $4f27: $f5
	dec de                                           ; $4f28: $1b
	db $fd                                           ; $4f29: $fd
	di                                               ; $4f2a: $f3
	pop af                                           ; $4f2b: $f1
	ccf                                              ; $4f2c: $3f
	ret nz                                           ; $4f2d: $c0

	ld a, e                                          ; $4f2e: $7b
	add b                                            ; $4f2f: $80
	sbc c                                            ; $4f30: $99
	sbc [hl]                                         ; $4f31: $9e
	pop hl                                           ; $4f32: $e1
	cp l                                             ; $4f33: $bd
	jp nz, $c4bf                                     ; $4f34: $c2 $bf $c4

	ld [hl], a                                       ; $4f37: $77
	ret nz                                           ; $4f38: $c0

	ld h, a                                          ; $4f39: $67
	add b                                            ; $4f3a: $80
	ld a, e                                          ; $4f3b: $7b
	ret nz                                           ; $4f3c: $c0

	ld a, a                                          ; $4f3d: $7f
	ret z                                            ; $4f3e: $c8

	sbc [hl]                                         ; $4f3f: $9e
	ld [hl], e                                       ; $4f40: $73
	ld l, e                                          ; $4f41: $6b
	ret nz                                           ; $4f42: $c0

	sub e                                            ; $4f43: $93
	db $e3                                           ; $4f44: $e3
	ld sp, hl                                        ; $4f45: $f9
	ld [hl], a                                       ; $4f46: $77
	ld sp, hl                                        ; $4f47: $f9
	scf                                              ; $4f48: $37
	push af                                          ; $4f49: $f5
	dec sp                                           ; $4f4a: $3b
	push af                                          ; $4f4b: $f5
	ld a, e                                          ; $4f4c: $7b
	db $ed                                           ; $4f4d: $ed
	di                                               ; $4f4e: $f3
	pop hl                                           ; $4f4f: $e1
	ld l, e                                          ; $4f50: $6b
	ret nz                                           ; $4f51: $c0

	sbc [hl]                                         ; $4f52: $9e
	add b                                            ; $4f53: $80
	ld [hl], a                                       ; $4f54: $77
	ld b, b                                          ; $4f55: $40
	sbc [hl]                                         ; $4f56: $9e
	ret                                              ; $4f57: $c9


	ld a, e                                          ; $4f58: $7b
	ld b, b                                          ; $4f59: $40
	adc a                                            ; $4f5a: $8f
	jp nc, $f68f                                     ; $4f5b: $d2 $8f $f6

	sbc [hl]                                         ; $4f5e: $9e
	push hl                                          ; $4f5f: $e5
	sbc a                                            ; $4f60: $9f
	db $ec                                           ; $4f61: $ec
	cp a                                             ; $4f62: $bf
	rst GetHLinHL                                          ; $4f63: $cf
	cp a                                             ; $4f64: $bf
	rst GetHLinHL                                          ; $4f65: $cf
	cp e                                             ; $4f66: $bb
	call nz, $c9b7                                   ; $4f67: $c4 $b7 $c9
	add c                                            ; $4f6a: $81
	ld l, e                                          ; $4f6b: $6b
	ret nz                                           ; $4f6c: $c0

	ld a, a                                          ; $4f6d: $7f
	ld e, b                                          ; $4f6e: $58
	sbc [hl]                                         ; $4f6f: $9e
	db $dd                                           ; $4f70: $dd
	ld a, e                                          ; $4f71: $7b
	adc b                                            ; $4f72: $88
	ld h, a                                          ; $4f73: $67
	cp $97                                           ; $4f74: $fe $97
	ld sp, hl                                        ; $4f76: $f9
	rst JumpTable                                          ; $4f77: $c7
	ld sp, hl                                        ; $4f78: $f9
	rst SubAFromBC                                          ; $4f79: $e7
	push af                                          ; $4f7a: $f5
	db $eb                                           ; $4f7b: $eb
	push af                                          ; $4f7c: $f5
	bit 2, a                                         ; $4f7d: $cb $57
	ret nz                                           ; $4f7f: $c0

	adc b                                            ; $4f80: $88
	cp e                                             ; $4f81: $bb
	call c, $d8bf                                    ; $4f82: $dc $bf $d8
	cp a                                             ; $4f85: $bf
	cp $af                                           ; $4f86: $fe $af
	ld hl, sp-$51                                    ; $4f88: $f8 $af
	ld hl, sp-$62                                    ; $4f8a: $f8 $9e
	jp hl                                            ; $4f8c: $e9


	cp a                                             ; $4f8d: $bf
	cp $bd                                           ; $4f8e: $fe $bd
	jp z, $ccbf                                      ; $4f90: $ca $bf $cc

	or a                                             ; $4f93: $b7
	call c, $fab7                                    ; $4f94: $dc $b7 $fa
	and e                                            ; $4f97: $a3
	ld l, e                                          ; $4f98: $6b
	ret nz                                           ; $4f99: $c0

	adc d                                            ; $4f9a: $8a
	ld bc, $ddff                                     ; $4f9b: $01 $ff $dd
	ld h, e                                          ; $4f9e: $63
	db $fd                                           ; $4f9f: $fd
	ld e, a                                          ; $4fa0: $5f
	db $fd                                           ; $4fa1: $fd
	ld d, a                                          ; $4fa2: $57
	db $fd                                           ; $4fa3: $fd
	rst AddAOntoHL                                          ; $4fa4: $ef
	db $fd                                           ; $4fa5: $fd
	ld e, a                                          ; $4fa6: $5f
	rst $38                                          ; $4fa7: $ff
	ld [hl], a                                       ; $4fa8: $77
	ei                                               ; $4fa9: $fb
	ld d, a                                          ; $4faa: $57
	db $fd                                           ; $4fab: $fd
	rst SubAFromDE                                          ; $4fac: $df
	push af                                          ; $4fad: $f5
	rst SubAFromDE                                          ; $4fae: $df
	push af                                          ; $4faf: $f5
	ld a, e                                          ; $4fb0: $7b
	ldh a, [$9b]                                     ; $4fb1: $f0 $9b
	db $dd                                           ; $4fb3: $dd
	ld a, a                                          ; $4fb4: $7f
	rst $38                                          ; $4fb5: $ff
	rst $38                                          ; $4fb6: $ff
	db $fd                                           ; $4fb7: $fd
	rst SubAFromDE                                          ; $4fb8: $df
	rrca                                             ; $4fb9: $0f
	adc l                                            ; $4fba: $8d
	rra                                              ; $4fbb: $1f
	add hl, de                                       ; $4fbc: $19
	ld a, [hl-]                                      ; $4fbd: $3a
	jr nc, jr_017_5033                               ; $4fbe: $30 $73

	ld h, d                                          ; $4fc0: $62
	ld h, a                                          ; $4fc1: $67
	ld b, b                                          ; $4fc2: $40
	ld c, a                                          ; $4fc3: $4f
	ld b, d                                          ; $4fc4: $42
	ld e, a                                          ; $4fc5: $5f
	ld b, l                                          ; $4fc6: $45
	ld a, [hl]                                       ; $4fc7: $7e
	ld e, d                                          ; $4fc8: $5a
	ld a, h                                          ; $4fc9: $7c
	ld a, h                                          ; $4fca: $7c
	jr nc, jr_017_4ffd                               ; $4fcb: $30 $30

	push af                                          ; $4fcd: $f5
	rst SubAFromDE                                          ; $4fce: $df
	ld a, b                                          ; $4fcf: $78
	adc l                                            ; $4fd0: $8d
	db $fc                                           ; $4fd1: $fc
	adc h                                            ; $4fd2: $8c
	adc $86                                          ; $4fd3: $ce $86
	rst FarCall                                          ; $4fd5: $f7
	add e                                            ; $4fd6: $83
	ei                                               ; $4fd7: $fb
	ld b, c                                          ; $4fd8: $41
	rst $38                                          ; $4fd9: $ff
	xor c                                            ; $4fda: $a9
	rst $38                                          ; $4fdb: $ff
	push de                                          ; $4fdc: $d5
	ccf                                              ; $4fdd: $3f
	dec hl                                           ; $4fde: $2b
	rra                                              ; $4fdf: $1f
	rra                                              ; $4fe0: $1f
	ld b, $06                                        ; $4fe1: $06 $06
	db $ed                                           ; $4fe3: $ed
	sbc c                                            ; $4fe4: $99
	ld [$0a0f], sp                                   ; $4fe5: $08 $0f $0a
	rrca                                             ; $4fe8: $0f
	add hl, bc                                       ; $4fe9: $09
	rrca                                             ; $4fea: $0f
	rst SubAFromBC                                          ; $4feb: $e7
	sbc c                                            ; $4fec: $99
	ld [$28f8], sp                                   ; $4fed: $08 $f8 $28
	ld hl, sp+$48                                    ; $4ff0: $f8 $48
	ld hl, sp-$0d                                    ; $4ff2: $f8 $f3
	sub $02                                          ; $4ff4: $d6 $02
	db $ec                                           ; $4ff6: $ec
	sub h                                            ; $4ff7: $94
	ld bc, $0303                                     ; $4ff8: $01 $03 $03
	db $fc                                           ; $4ffb: $fc
	nop                                              ; $4ffc: $00

jr_017_4ffd:
	jr nz, @+$01                                     ; $4ffd: $20 $ff

	ld b, b                                          ; $4fff: $40
	rst $38                                          ; $5000: $ff
	inc c                                            ; $5001: $0c
	rst FarCall                                          ; $5002: $f7
	db $fd                                           ; $5003: $fd
	sbc d                                            ; $5004: $9a
	ld l, $1f                                        ; $5005: $2e $1f
	ld a, a                                          ; $5007: $7f
	rst $38                                          ; $5008: $ff
	nop                                              ; $5009: $00
	ld e, e                                          ; $500a: $5b
	ldh a, [rIE]                                     ; $500b: $f0 $ff
	sbc h                                            ; $500d: $9c
	ld b, $01                                        ; $500e: $06 $01
	ld hl, sp+$5b                                    ; $5010: $f8 $5b
	ldh a, [$9a]                                     ; $5012: $f0 $9a
	and b                                            ; $5014: $a0
	ret nz                                           ; $5015: $c0

	ld sp, hl                                        ; $5016: $f9
	cp $01                                           ; $5017: $fe $01
	ld e, e                                          ; $5019: $5b
	ldh a, [$99]                                     ; $501a: $f0 $99
	add hl, bc                                       ; $501c: $09
	rlca                                             ; $501d: $07
	sbc a                                            ; $501e: $9f
	ld a, a                                          ; $501f: $7f
	nop                                              ; $5020: $00
	add b                                            ; $5021: $80
	ld d, a                                          ; $5022: $57
	ret nc                                           ; $5023: $d0

	rst $38                                          ; $5024: $ff
	ld a, a                                          ; $5025: $7f
	cp a                                             ; $5026: $bf
	ld e, a                                          ; $5027: $5f
	ldh a, [$df]                                     ; $5028: $f0 $df
	add b                                            ; $502a: $80
	rst SubAFromDE                                          ; $502b: $df
	ret nz                                           ; $502c: $c0

	sbc [hl]                                         ; $502d: $9e
	ccf                                              ; $502e: $3f
	ld l, e                                          ; $502f: $6b
	ldh a, [$df]                                     ; $5030: $f0 $df
	inc bc                                           ; $5032: $03

jr_017_5033:
	ld a, e                                          ; $5033: $7b
	sub e                                            ; $5034: $93
	ld a, a                                          ; $5035: $7f
	jp $01df                                         ; $5036: $c3 $df $01


	ld a, [$c0df]                                    ; $5039: $fa $df $c0
	ld a, e                                          ; $503c: $7b
	db $e3                                           ; $503d: $e3
	ld a, a                                          ; $503e: $7f
	db $fd                                           ; $503f: $fd
	sbc h                                            ; $5040: $9c
	add b                                            ; $5041: $80
	nop                                              ; $5042: $00
	add b                                            ; $5043: $80
	ld h, e                                          ; $5044: $63
	ld [hl], e                                       ; $5045: $73
	ld [hl], e                                       ; $5046: $73
	cp $7b                                           ; $5047: $fe $7b
	ld l, h                                          ; $5049: $6c
	rst SubAFromDE                                          ; $504a: $df
	ld bc, $03de                                     ; $504b: $01 $de $03
	ld a, e                                          ; $504e: $7b
	jp nz, $fe73                                     ; $504f: $c2 $73 $fe

	sbc [hl]                                         ; $5052: $9e
	ld b, b                                          ; $5053: $40
	ld a, e                                          ; $5054: $7b
	call c, $d67b                                    ; $5055: $dc $7b $d6
	sbc [hl]                                         ; $5058: $9e
	ret nz                                           ; $5059: $c0

	ld l, a                                          ; $505a: $6f
	pop hl                                           ; $505b: $e1
	ld l, a                                          ; $505c: $6f
	call c, $bc77                                    ; $505d: $dc $77 $bc
	ld [hl], a                                       ; $5060: $77
	db $ec                                           ; $5061: $ec
	ld l, a                                          ; $5062: $6f
	cp h                                             ; $5063: $bc
	ld a, a                                          ; $5064: $7f
	sbc $7b                                          ; $5065: $de $7b
	sub a                                            ; $5067: $97
	ld a, [$cc5f]                                    ; $5068: $fa $5f $cc
	sbc d                                            ; $506b: $9a
	add c                                            ; $506c: $81
	cp $11                                           ; $506d: $fe $11
	cp $00                                           ; $506f: $fe $00
	sbc $ff                                          ; $5071: $de $ff
	rst $38                                          ; $5073: $ff
	sbc d                                            ; $5074: $9a
	add [hl]                                         ; $5075: $86
	ld a, a                                          ; $5076: $7f
	inc h                                            ; $5077: $24
	rst $38                                          ; $5078: $ff
	ld bc, $487b                                     ; $5079: $01 $7b $48
	db $eb                                           ; $507c: $eb
	ld [hl], a                                       ; $507d: $77
	adc [hl]                                         ; $507e: $8e
	ld [hl], a                                       ; $507f: $77
	xor c                                            ; $5080: $a9
	ld h, a                                          ; $5081: $67
	sbc b                                            ; $5082: $98
	ld a, a                                          ; $5083: $7f
	db $fc                                           ; $5084: $fc
	ld l, a                                          ; $5085: $6f
	or b                                             ; $5086: $b0
	sbc c                                            ; $5087: $99
	db $10                                           ; $5088: $10
	rst $38                                          ; $5089: $ff
	ld c, c                                          ; $508a: $49
	rst FarCall                                          ; $508b: $f7
	ld [bc], a                                       ; $508c: $02
	db $fd                                           ; $508d: $fd
	ld [hl], a                                       ; $508e: $77
	ret nz                                           ; $508f: $c0

	adc c                                            ; $5090: $89
	ld c, e                                          ; $5091: $4b
	rst $38                                          ; $5092: $ff
	ld [de], a                                       ; $5093: $12
	rst AddAOntoHL                                          ; $5094: $ef
	ld b, b                                          ; $5095: $40
	rst $38                                          ; $5096: $ff
	jr @+$01                                         ; $5097: $18 $ff

	jr nc, @+$01                                     ; $5099: $30 $ff

	ld bc, $06ff                                     ; $509b: $01 $ff $06
	ei                                               ; $509e: $fb
	ld d, d                                          ; $509f: $52
	rst AddAOntoHL                                          ; $50a0: $ef
	jr nz, @+$01                                     ; $50a1: $20 $ff

	ld [bc], a                                       ; $50a3: $02
	db $fd                                           ; $50a4: $fd
	inc b                                            ; $50a5: $04
	rst $38                                          ; $50a6: $ff
	ld a, e                                          ; $50a7: $7b
	ld e, a                                          ; $50a8: $5f
	ld [hl], e                                       ; $50a9: $73
	ld [hl], d                                       ; $50aa: $72
	ld h, e                                          ; $50ab: $63
	ld [$ff99], sp                                   ; $50ac: $08 $99 $ff
	ld d, l                                          ; $50af: $55
	xor d                                            ; $50b0: $aa
	xor d                                            ; $50b1: $aa
	ld d, l                                          ; $50b2: $55
	rst $38                                          ; $50b3: $ff
	ld a, e                                          ; $50b4: $7b
	nop                                              ; $50b5: $00
	ld l, a                                          ; $50b6: $6f
	cp $9e                                           ; $50b7: $fe $9e
	ld [bc], a                                       ; $50b9: $02
	ld [hl], e                                       ; $50ba: $73
	ld a, [hl-]                                      ; $50bb: $3a
	ld l, a                                          ; $50bc: $6f
	inc c                                            ; $50bd: $0c
	ld [hl], a                                       ; $50be: $77
	sub $7b                                          ; $50bf: $d6 $7b
	ld e, [hl]                                       ; $50c1: $5e
	ld a, e                                          ; $50c2: $7b
	xor b                                            ; $50c3: $a8
	ld a, a                                          ; $50c4: $7f
	and h                                            ; $50c5: $a4
	ld a, e                                          ; $50c6: $7b
	sbc c                                            ; $50c7: $99
	ld a, a                                          ; $50c8: $7f
	inc [hl]                                         ; $50c9: $34
	ld a, e                                          ; $50ca: $7b
	sbc h                                            ; $50cb: $9c
	adc a                                            ; $50cc: $8f
	rst $38                                          ; $50cd: $ff
	ld [hl], $ff                                     ; $50ce: $36 $ff
	ld c, $ff                                        ; $50d0: $0e $ff
	inc l                                            ; $50d2: $2c
	rst $38                                          ; $50d3: $ff
	call c, $afff                                    ; $50d4: $dc $ff $af
	rst $38                                          ; $50d7: $ff
	sbc h                                            ; $50d8: $9c
	rst $38                                          ; $50d9: $ff
	dec l                                            ; $50da: $2d
	ld a, a                                          ; $50db: $7f
	cp $46                                           ; $50dc: $fe $46
	ld a, [$378f]                                    ; $50de: $fa $8f $37
	pop bc                                           ; $50e1: $c1
	ccf                                              ; $50e2: $3f
	ld [hl], d                                       ; $50e3: $72
	rra                                              ; $50e4: $1f
	add hl, de                                       ; $50e5: $19
	ld c, $02                                        ; $50e6: $0e $02
	ld c, $86                                        ; $50e8: $0e $86
	ld c, [hl]                                       ; $50ea: $4e
	add d                                            ; $50eb: $82
	rst $38                                          ; $50ec: $ff
	sub a                                            ; $50ed: $97
	rst $38                                          ; $50ee: $ff
	ld c, a                                          ; $50ef: $4f
	ldh [$e0], a                                     ; $50f0: $e0 $e0
	ld l, a                                          ; $50f2: $6f
	dec b                                            ; $50f3: $05
	ld e, a                                          ; $50f4: $5f
	cp $85                                           ; $50f5: $fe $85
	ld a, b                                          ; $50f7: $78

jr_017_50f8:
	jr nz, jr_017_50f8                               ; $50f8: $20 $fe

	ld a, [de]                                       ; $50fa: $1a
	jr jr_017_510e                                   ; $50fb: $18 $11

	db $fc                                           ; $50fd: $fc
	ld c, $f8                                        ; $50fe: $0e $f8
	add a                                            ; $5100: $87
	add h                                            ; $5101: $84
	inc bc                                           ; $5102: $03
	ld [bc], a                                       ; $5103: $02
	inc bc                                           ; $5104: $03
	jp $0400                                         ; $5105: $c3 $00 $04


	nop                                              ; $5108: $00
	inc b                                            ; $5109: $04
	inc b                                            ; $510a: $04
	nop                                              ; $510b: $00
	ld [bc], a                                       ; $510c: $02
	nop                                              ; $510d: $00

jr_017_510e:
	nop                                              ; $510e: $00
	ld [bc], a                                       ; $510f: $02
	ld [bc], a                                       ; $5110: $02
	ld [hl], e                                       ; $5111: $73
	sbc [hl]                                         ; $5112: $9e
	sub c                                            ; $5113: $91
	ldh a, [$d0]                                     ; $5114: $f0 $d0
	ldh a, [rAUD1SWEEP]                              ; $5116: $f0 $10
	ldh a, [$d0]                                     ; $5118: $f0 $d0
	ld [hl], b                                       ; $511a: $70
	ld d, b                                          ; $511b: $50
	ld [hl], b                                       ; $511c: $70
	ld d, b                                          ; $511d: $50
	ldh a, [hDisp1_SCY]                                     ; $511e: $f0 $90
	ldh a, [$f0]                                     ; $5120: $f0 $f0
	ld a, e                                          ; $5122: $7b
	ld b, b                                          ; $5123: $40
	adc [hl]                                         ; $5124: $8e
	ld [hl], l                                       ; $5125: $75
	rst $38                                          ; $5126: $ff
	inc b                                            ; $5127: $04
	rst $38                                          ; $5128: $ff
	db $fd                                           ; $5129: $fd
	rrca                                             ; $512a: $0f
	add hl, bc                                       ; $512b: $09
	ld c, $0a                                        ; $512c: $0e $0a
	inc e                                            ; $512e: $1c
	inc d                                            ; $512f: $14
	jr jr_017_514a                                   ; $5130: $18 $18

	nop                                              ; $5132: $00
	nop                                              ; $5133: $00
	add c                                            ; $5134: $81
	add c                                            ; $5135: $81
	halt                                             ; $5136: $76
	ld d, l                                          ; $5137: $55
	ld a, e                                          ; $5138: $7b
	ld d, c                                          ; $5139: $51
	sbc [hl]                                         ; $513a: $9e
	ld b, b                                          ; $513b: $40
	ld a, d                                          ; $513c: $7a
	db $ec                                           ; $513d: $ec
	ld a, e                                          ; $513e: $7b
	ld b, e                                          ; $513f: $43
	adc [hl]                                         ; $5140: $8e
	rst $38                                          ; $5141: $ff
	jr nz, @+$01                                     ; $5142: $20 $ff

	push de                                          ; $5144: $d5
	rst $38                                          ; $5145: $ff
	dec [hl]                                         ; $5146: $35
	rst $38                                          ; $5147: $ff
	and l                                            ; $5148: $a5
	rst $38                                          ; $5149: $ff

jr_017_514a:
	xor l                                            ; $514a: $ad
	rst FarCall                                          ; $514b: $f7
	inc d                                            ; $514c: $14
	db $e3                                           ; $514d: $e3
	db $e3                                           ; $514e: $e3
	nop                                              ; $514f: $00
	nop                                              ; $5150: $00
	inc bc                                           ; $5151: $03
	ld [hl], a                                       ; $5152: $77
	rra                                              ; $5153: $1f
	ld a, a                                          ; $5154: $7f
	xor b                                            ; $5155: $a8
	ld [hl], e                                       ; $5156: $73
	cp $67                                           ; $5157: $fe $67
	sub $df                                          ; $5159: $d6 $df
	add b                                            ; $515b: $80
	rst SubAFromDE                                          ; $515c: $df
	ldh [$7f], a                                     ; $515d: $e0 $7f
	xor d                                            ; $515f: $aa
	rst SubAFromDE                                          ; $5160: $df
	ldh [$fd], a                                     ; $5161: $e0 $fd
	sub e                                            ; $5163: $93
	ld a, a                                          ; $5164: $7f
	ld a, e                                          ; $5165: $7b
	ld a, a                                          ; $5166: $7f
	ld e, b                                          ; $5167: $58
	rst $38                                          ; $5168: $ff
	db $db                                           ; $5169: $db
	rst $38                                          ; $516a: $ff
	and e                                            ; $516b: $a3
	rst $38                                          ; $516c: $ff
	ld a, h                                          ; $516d: $7c
	jp Jump_017_5ac3                                 ; $516e: $c3 $c3 $5a


	sub d                                            ; $5171: $92
	call c, $fd01                                    ; $5172: $dc $01 $fd
	add b                                            ; $5175: $80
	ld hl, sp+$68                                    ; $5176: $f8 $68
	ld hl, sp+$08                                    ; $5178: $f8 $08
	ldh a, [$b0]                                     ; $517a: $f0 $b0
	ld hl, sp-$48                                    ; $517c: $f8 $b8
	db $fc                                           ; $517e: $fc
	ld d, h                                          ; $517f: $54
	db $fc                                           ; $5180: $fc
	db $ec                                           ; $5181: $ec
	inc a                                            ; $5182: $3c
	inc a                                            ; $5183: $3c
	nop                                              ; $5184: $00
	nop                                              ; $5185: $00
	ccf                                              ; $5186: $3f
	dec l                                            ; $5187: $2d
	ccf                                              ; $5188: $3f
	ld hl, $373f                                     ; $5189: $21 $3f $37
	ccf                                              ; $518c: $3f
	ld [hl], $7f                                     ; $518d: $36 $7f
	ld l, e                                          ; $518f: $6b
	ld a, a                                          ; $5190: $7f
	ld e, [hl]                                       ; $5191: $5e
	ld [hl], a                                       ; $5192: $77
	ld [hl], a                                       ; $5193: $77
	nop                                              ; $5194: $00
	sub d                                            ; $5195: $92
	nop                                              ; $5196: $00
	cp $7e                                           ; $5197: $fe $7e
	ld hl, sp+$58                                    ; $5199: $f8 $58
	db $fc                                           ; $519b: $fc
	ld l, h                                          ; $519c: $6c
	db $fc                                           ; $519d: $fc
	ld [hl], h                                       ; $519e: $74
	adc $4a                                          ; $519f: $ce $4a
	adc $4e                                          ; $51a1: $ce $4e
	ld a, d                                          ; $51a3: $7a
	ld [bc], a                                       ; $51a4: $02
	ld a, a                                          ; $51a5: $7f
	ldh [hDisp1_OBP1], a                                     ; $51a6: $e0 $94
	ccf                                              ; $51a8: $3f
	rrca                                             ; $51a9: $0f
	dec c                                            ; $51aa: $0d
	rra                                              ; $51ab: $1f
	dec de                                           ; $51ac: $1b
	ccf                                              ; $51ad: $3f
	scf                                              ; $51ae: $37
	add hl, sp                                       ; $51af: $39
	add hl, hl                                       ; $51b0: $29
	add hl, sp                                       ; $51b1: $39
	add hl, sp                                       ; $51b2: $39
	ld [hl], a                                       ; $51b3: $77
	cp [hl]                                          ; $51b4: $be
	ld a, e                                          ; $51b5: $7b
	ld l, b                                          ; $51b6: $68
	ld e, a                                          ; $51b7: $5f
	cp $7b                                           ; $51b8: $fe $7b
	ldh [$9b], a                                     ; $51ba: $e0 $9b
	rst $38                                          ; $51bc: $ff
	cp a                                             ; $51bd: $bf
	rst $38                                          ; $51be: $ff
	add b                                            ; $51bf: $80
	ld a, e                                          ; $51c0: $7b
	db $fc                                           ; $51c1: $fc
	ld [hl], e                                       ; $51c2: $73
	ld a, [$e1df]                                    ; $51c3: $fa $df $e1
	rst $38                                          ; $51c6: $ff
	rst SubAFromDE                                          ; $51c7: $df
	ld b, b                                          ; $51c8: $40
	ld [hl], a                                       ; $51c9: $77
	db $fd                                           ; $51ca: $fd
	halt                                             ; $51cb: $76
	adc d                                            ; $51cc: $8a
	db $dd                                           ; $51cd: $dd
	add b                                            ; $51ce: $80
	ld a, a                                          ; $51cf: $7f
	ld a, [$a86e]                                    ; $51d0: $fa $6e $a8
	ld l, a                                          ; $51d3: $6f
	nop                                              ; $51d4: $00
	ld a, [hl]                                       ; $51d5: $7e
	ld hl, sp+$77                                    ; $51d6: $f8 $77
	db $fd                                           ; $51d8: $fd
	ld a, e                                          ; $51d9: $7b
	ld d, h                                          ; $51da: $54
	sbc [hl]                                         ; $51db: $9e
	jr nc, jr_017_5258                               ; $51dc: $30 $7a

	ld a, [$007f]                                    ; $51de: $fa $7f $00
	ld [hl], d                                       ; $51e1: $72
	or $7b                                           ; $51e2: $f6 $7b
	ld l, $9a                                        ; $51e4: $2e $9a
	inc bc                                           ; $51e6: $03
	rst $38                                          ; $51e7: $ff
	db $fc                                           ; $51e8: $fc
	rst $38                                          ; $51e9: $ff
	dec b                                            ; $51ea: $05
	ld a, d                                          ; $51eb: $7a
	ld hl, sp+$76                                    ; $51ec: $f8 $76
	or $9e                                           ; $51ee: $f6 $9e
	ld [hl], l                                       ; $51f0: $75
	ld l, l                                          ; $51f1: $6d
	ld b, b                                          ; $51f2: $40
	rst SubAFromDE                                          ; $51f3: $df
	ld bc, $81d9                                     ; $51f4: $01 $d9 $81
	rst $38                                          ; $51f7: $ff
	rst SubAFromDE                                          ; $51f8: $df
	db $db                                           ; $51f9: $db
	sbc e                                            ; $51fa: $9b
	rst $38                                          ; $51fb: $ff
	ld l, $ff                                        ; $51fc: $2e $ff
	push af                                          ; $51fe: $f5
	ld a, d                                          ; $51ff: $7a
	ld hl, sp-$66                                    ; $5200: $f8 $9a
	xor $ff                                          ; $5202: $ee $ff
	ld a, [hl+]                                      ; $5204: $2a
	rst $38                                          ; $5205: $ff
	xor $77                                          ; $5206: $ee $77
	inc [hl]                                         ; $5208: $34
	ld a, e                                          ; $5209: $7b
	inc b                                            ; $520a: $04
	sbc h                                            ; $520b: $9c
	inc bc                                           ; $520c: $03
	rlca                                             ; $520d: $07
	inc b                                            ; $520e: $04
	sbc $03                                          ; $520f: $de $03
	ld [hl], d                                       ; $5211: $72
	cp $4e                                           ; $5212: $fe $4e
	db $fc                                           ; $5214: $fc
	rst SubAFromDE                                          ; $5215: $df
	inc b                                            ; $5216: $04
	ld a, [hl]                                       ; $5217: $7e
	or [hl]                                          ; $5218: $b6
	sub a                                            ; $5219: $97
	ccf                                              ; $521a: $3f
	dec sp                                           ; $521b: $3b
	ld a, a                                          ; $521c: $7f
	ld b, b                                          ; $521d: $40
	ccf                                              ; $521e: $3f
	dec sp                                           ; $521f: $3b
	rst $38                                          ; $5220: $ff
	ei                                               ; $5221: $fb
	ld a, c                                          ; $5222: $79
	ldh a, [$9e]                                     ; $5223: $f0 $9e
	ei                                               ; $5225: $fb
	ld d, c                                          ; $5226: $51
	adc h                                            ; $5227: $8c
	ld [hl], e                                       ; $5228: $73
	jp nc, $e0df                                     ; $5229: $d2 $df $e0

	ld a, e                                          ; $522c: $7b
	ld [bc], a                                       ; $522d: $02
	sbc [hl]                                         ; $522e: $9e
	inc c                                            ; $522f: $0c
	ld a, d                                          ; $5230: $7a
	ld hl, sp-$6e                                    ; $5231: $f8 $92
	ld hl, sp-$04                                    ; $5233: $f8 $fc
	inc b                                            ; $5235: $04
	ld hl, sp+$78                                    ; $5236: $f8 $78
	nop                                              ; $5238: $00
	nop                                              ; $5239: $00
	inc e                                            ; $523a: $1c
	inc e                                            ; $523b: $1c
	ccf                                              ; $523c: $3f
	scf                                              ; $523d: $37
	ld a, a                                          ; $523e: $7f
	ld h, b                                          ; $523f: $60
	ld a, d                                          ; $5240: $7a
	ld hl, sp-$62                                    ; $5241: $f8 $9e
	ccf                                              ; $5243: $3f
	ld a, e                                          ; $5244: $7b
	jp z, $2f9e                                      ; $5245: $ca $9e $2f

	rst AddAOntoHL                                          ; $5248: $ef
	rst SubAFromDE                                          ; $5249: $df
	ret nz                                           ; $524a: $c0

	sub h                                            ; $524b: $94
	call c, $dc5c                                    ; $524c: $dc $5c $dc
	ld d, h                                          ; $524f: $54
	db $fc                                           ; $5250: $fc
	ld [hl], h                                       ; $5251: $74
	ld hl, sp+$68                                    ; $5252: $f8 $68
	cp $6e                                           ; $5254: $fe $6e
	cp $7b                                           ; $5256: $fe $7b

jr_017_5258:
	scf                                              ; $5258: $37
	rst SubAFromDE                                          ; $5259: $df
	ld bc, $1dde                                     ; $525a: $01 $de $1d
	sub h                                            ; $525d: $94
	dec d                                            ; $525e: $15
	dec e                                            ; $525f: $1d
	dec d                                            ; $5260: $15
	rrca                                             ; $5261: $0f
	dec bc                                           ; $5262: $0b
	ccf                                              ; $5263: $3f
	dec a                                            ; $5264: $3d
	ccf                                              ; $5265: $3f
	jr nz, jr_017_5268                               ; $5266: $20 $00

jr_017_5268:
	nop                                              ; $5268: $00
	sbc $f0                                          ; $5269: $de $f0
	ld a, a                                          ; $526b: $7f
	jr c, jr_017_52e8                                ; $526c: $38 $7a

	ld [hl], $de                                     ; $526e: $36 $de
	ret nz                                           ; $5270: $c0

	ld a, d                                          ; $5271: $7a
	db $ec                                           ; $5272: $ec

Jump_017_5273:
	ld [hl], l                                       ; $5273: $75
	ld l, [hl]                                       ; $5274: $6e
	ld [hl], a                                       ; $5275: $77
	adc b                                            ; $5276: $88
	ld a, a                                          ; $5277: $7f
	ld a, d                                          ; $5278: $7a
	sbc l                                            ; $5279: $9d
	rst $38                                          ; $527a: $ff
	rst FarCall                                          ; $527b: $f7
	ld a, e                                          ; $527c: $7b
	ld hl, sp-$62                                    ; $527d: $f8 $9e
	cp a                                             ; $527f: $bf
	ld [hl], a                                       ; $5280: $77
	jr nz, jr_017_52fa                               ; $5281: $20 $77

	ld d, b                                          ; $5283: $50
	ld h, [hl]                                       ; $5284: $66
	ld a, h                                          ; $5285: $7c
	ld d, l                                          ; $5286: $55
	push de                                          ; $5287: $d5
	ld a, e                                          ; $5288: $7b
	db $d3                                           ; $5289: $d3
	ld a, e                                          ; $528a: $7b
	db $fd                                           ; $528b: $fd
	di                                               ; $528c: $f3
	ld a, a                                          ; $528d: $7f
	call z, $0f9a                                    ; $528e: $cc $9a $0f
	ldh a, [rSC]                                     ; $5291: $f0 $02
	inc b                                            ; $5293: $04
	ld bc, $d36d                                     ; $5294: $01 $6d $d3
	ld a, e                                          ; $5297: $7b
	cp $75                                           ; $5298: $fe $75
	inc l                                            ; $529a: $2c
	sbc e                                            ; $529b: $9b
	jr c, @+$46                                      ; $529c: $38 $44

	nop                                              ; $529e: $00
	db $10                                           ; $529f: $10
	ld e, a                                          ; $52a0: $5f
	ldh [$7f], a                                     ; $52a1: $e0 $7f
	cp $9b                                           ; $52a3: $fe $9b
	inc e                                            ; $52a5: $1c
	ld [hl+], a                                      ; $52a6: $22
	nop                                              ; $52a7: $00
	ld [$f05f], sp                                   ; $52a8: $08 $5f $f0
	ld [hl], a                                       ; $52ab: $77
	db $fd                                           ; $52ac: $fd
	ld d, a                                          ; $52ad: $57
	ret nz                                           ; $52ae: $c0

	sbc e                                            ; $52af: $9b
	ldh a, [rIF]                                     ; $52b0: $f0 $0f
	add b                                            ; $52b2: $80
	jr nz, @+$7a                                     ; $52b3: $20 $78

	ld [hl], l                                       ; $52b5: $75
	halt                                             ; $52b6: $76
	ld a, e                                          ; $52b7: $7b
	ld a, e                                          ; $52b8: $7b
	cp $77                                           ; $52b9: $fe $77
	ret nc                                           ; $52bb: $d0

	sbc h                                            ; $52bc: $9c
	xor d                                            ; $52bd: $aa
	nop                                              ; $52be: $00
	ld d, l                                          ; $52bf: $55
	ld a, e                                          ; $52c0: $7b
	db $fc                                           ; $52c1: $fc
	ld h, h                                          ; $52c2: $64
	ret nc                                           ; $52c3: $d0

	call Call_017_6cff                               ; $52c4: $cd $ff $6c
	jp $b674                                         ; $52c7: $c3 $74 $b6


	jp z, $ec02                                      ; $52ca: $ca $02 $ec

	sub h                                            ; $52cd: $94
	ld bc, $0303                                     ; $52ce: $01 $03 $03
	db $fc                                           ; $52d1: $fc
	nop                                              ; $52d2: $00
	jr nz, @+$01                                     ; $52d3: $20 $ff

	ld b, b                                          ; $52d5: $40
	rst $38                                          ; $52d6: $ff
	inc c                                            ; $52d7: $0c
	rst FarCall                                          ; $52d8: $f7
	db $fd                                           ; $52d9: $fd
	sbc d                                            ; $52da: $9a
	ld l, $1f                                        ; $52db: $2e $1f
	ld a, a                                          ; $52dd: $7f
	rst $38                                          ; $52de: $ff
	nop                                              ; $52df: $00
	ld e, e                                          ; $52e0: $5b
	ldh a, [rIE]                                     ; $52e1: $f0 $ff
	sbc h                                            ; $52e3: $9c
	ld b, $01                                        ; $52e4: $06 $01
	ld hl, sp+$5b                                    ; $52e6: $f8 $5b

jr_017_52e8:
	ldh a, [$9a]                                     ; $52e8: $f0 $9a
	and b                                            ; $52ea: $a0
	ret nz                                           ; $52eb: $c0

	ld sp, hl                                        ; $52ec: $f9
	cp $01                                           ; $52ed: $fe $01
	ld e, e                                          ; $52ef: $5b
	ldh a, [$99]                                     ; $52f0: $f0 $99
	add hl, bc                                       ; $52f2: $09
	rlca                                             ; $52f3: $07
	sbc a                                            ; $52f4: $9f
	ld a, a                                          ; $52f5: $7f
	nop                                              ; $52f6: $00
	add b                                            ; $52f7: $80
	ld d, a                                          ; $52f8: $57
	ret nc                                           ; $52f9: $d0

jr_017_52fa:
	rst $38                                          ; $52fa: $ff
	ld a, a                                          ; $52fb: $7f
	cp a                                             ; $52fc: $bf
	ld e, a                                          ; $52fd: $5f
	ldh a, [$df]                                     ; $52fe: $f0 $df
	add b                                            ; $5300: $80
	rst SubAFromDE                                          ; $5301: $df
	ret nz                                           ; $5302: $c0

	sbc [hl]                                         ; $5303: $9e
	ccf                                              ; $5304: $3f
	ld l, e                                          ; $5305: $6b
	ldh a, [$df]                                     ; $5306: $f0 $df
	inc bc                                           ; $5308: $03
	ld a, e                                          ; $5309: $7b
	sub e                                            ; $530a: $93
	ld a, a                                          ; $530b: $7f
	jp $01df                                         ; $530c: $c3 $df $01


	ld a, [$c0df]                                    ; $530f: $fa $df $c0
	ld a, e                                          ; $5312: $7b
	db $e3                                           ; $5313: $e3
	ld a, a                                          ; $5314: $7f
	db $fd                                           ; $5315: $fd
	sbc h                                            ; $5316: $9c
	add b                                            ; $5317: $80
	nop                                              ; $5318: $00
	add b                                            ; $5319: $80
	ld h, e                                          ; $531a: $63
	ld [hl], e                                       ; $531b: $73
	ld [hl], e                                       ; $531c: $73
	cp $7b                                           ; $531d: $fe $7b
	ld l, h                                          ; $531f: $6c
	rst SubAFromDE                                          ; $5320: $df
	ld bc, $03de                                     ; $5321: $01 $de $03
	ld a, e                                          ; $5324: $7b
	jp nz, $fe73                                     ; $5325: $c2 $73 $fe

	sbc [hl]                                         ; $5328: $9e
	ld b, b                                          ; $5329: $40
	ld a, e                                          ; $532a: $7b
	call c, $d67b                                    ; $532b: $dc $7b $d6
	sbc [hl]                                         ; $532e: $9e
	ret nz                                           ; $532f: $c0

	ld l, a                                          ; $5330: $6f
	pop hl                                           ; $5331: $e1
	ld l, a                                          ; $5332: $6f
	call c, $bc77                                    ; $5333: $dc $77 $bc
	ld [hl], a                                       ; $5336: $77
	db $ec                                           ; $5337: $ec
	ld l, a                                          ; $5338: $6f
	cp h                                             ; $5339: $bc
	ld a, a                                          ; $533a: $7f
	sbc $7b                                          ; $533b: $de $7b
	sub a                                            ; $533d: $97
	ld a, [$cc5f]                                    ; $533e: $fa $5f $cc
	sbc d                                            ; $5341: $9a
	add c                                            ; $5342: $81
	cp $11                                           ; $5343: $fe $11
	cp $00                                           ; $5345: $fe $00
	sbc $ff                                          ; $5347: $de $ff
	rst $38                                          ; $5349: $ff
	sbc d                                            ; $534a: $9a
	add [hl]                                         ; $534b: $86
	ld a, a                                          ; $534c: $7f
	inc h                                            ; $534d: $24
	rst $38                                          ; $534e: $ff
	ld bc, $487b                                     ; $534f: $01 $7b $48
	db $eb                                           ; $5352: $eb
	ld [hl], a                                       ; $5353: $77
	adc [hl]                                         ; $5354: $8e
	ld [hl], a                                       ; $5355: $77
	xor c                                            ; $5356: $a9
	ld h, a                                          ; $5357: $67
	sbc b                                            ; $5358: $98
	ld a, a                                          ; $5359: $7f
	db $fc                                           ; $535a: $fc
	ld l, a                                          ; $535b: $6f
	or b                                             ; $535c: $b0
	sbc c                                            ; $535d: $99
	db $10                                           ; $535e: $10
	rst $38                                          ; $535f: $ff
	ld c, c                                          ; $5360: $49
	rst FarCall                                          ; $5361: $f7
	ld [bc], a                                       ; $5362: $02
	db $fd                                           ; $5363: $fd
	ld [hl], a                                       ; $5364: $77
	ret nz                                           ; $5365: $c0

	adc c                                            ; $5366: $89
	ld c, e                                          ; $5367: $4b
	rst $38                                          ; $5368: $ff
	ld [de], a                                       ; $5369: $12
	rst AddAOntoHL                                          ; $536a: $ef
	ld b, b                                          ; $536b: $40
	rst $38                                          ; $536c: $ff
	jr @+$01                                         ; $536d: $18 $ff

	jr nc, @+$01                                     ; $536f: $30 $ff

	ld bc, $06ff                                     ; $5371: $01 $ff $06
	ei                                               ; $5374: $fb
	ld d, d                                          ; $5375: $52
	rst AddAOntoHL                                          ; $5376: $ef
	jr nz, @+$01                                     ; $5377: $20 $ff

	ld [bc], a                                       ; $5379: $02
	db $fd                                           ; $537a: $fd
	inc b                                            ; $537b: $04
	rst $38                                          ; $537c: $ff
	ld a, e                                          ; $537d: $7b
	ld e, a                                          ; $537e: $5f
	ld [hl], e                                       ; $537f: $73
	ld [hl], d                                       ; $5380: $72
	ld h, e                                          ; $5381: $63
	ld [$ff99], sp                                   ; $5382: $08 $99 $ff
	ld d, l                                          ; $5385: $55
	xor d                                            ; $5386: $aa
	xor d                                            ; $5387: $aa
	ld d, l                                          ; $5388: $55
	rst $38                                          ; $5389: $ff
	ld a, e                                          ; $538a: $7b
	nop                                              ; $538b: $00
	ld l, a                                          ; $538c: $6f
	cp $9e                                           ; $538d: $fe $9e
	ld [bc], a                                       ; $538f: $02
	ld [hl], e                                       ; $5390: $73
	ld a, [hl-]                                      ; $5391: $3a
	ld l, a                                          ; $5392: $6f
	inc c                                            ; $5393: $0c
	ld [hl], a                                       ; $5394: $77
	sub $7b                                          ; $5395: $d6 $7b
	ld e, [hl]                                       ; $5397: $5e
	ld a, e                                          ; $5398: $7b
	xor b                                            ; $5399: $a8
	ld a, a                                          ; $539a: $7f
	and h                                            ; $539b: $a4
	ld a, e                                          ; $539c: $7b
	sbc c                                            ; $539d: $99
	ld a, a                                          ; $539e: $7f
	inc [hl]                                         ; $539f: $34
	ld a, e                                          ; $53a0: $7b
	sbc h                                            ; $53a1: $9c
	adc a                                            ; $53a2: $8f
	rst $38                                          ; $53a3: $ff
	ld [hl], $ff                                     ; $53a4: $36 $ff
	ld c, $ff                                        ; $53a6: $0e $ff
	inc l                                            ; $53a8: $2c
	rst $38                                          ; $53a9: $ff
	call c, $afff                                    ; $53aa: $dc $ff $af
	rst $38                                          ; $53ad: $ff
	sbc h                                            ; $53ae: $9c
	rst $38                                          ; $53af: $ff
	dec l                                            ; $53b0: $2d
	ld a, a                                          ; $53b1: $7f
	cp $46                                           ; $53b2: $fe $46
	ld a, [$378f]                                    ; $53b4: $fa $8f $37
	pop bc                                           ; $53b7: $c1
	ccf                                              ; $53b8: $3f
	ld [hl], d                                       ; $53b9: $72
	rra                                              ; $53ba: $1f
	add hl, de                                       ; $53bb: $19
	ld c, $02                                        ; $53bc: $0e $02
	ld c, $86                                        ; $53be: $0e $86
	ld c, [hl]                                       ; $53c0: $4e
	add d                                            ; $53c1: $82
	rst $38                                          ; $53c2: $ff
	sub a                                            ; $53c3: $97
	rst $38                                          ; $53c4: $ff
	ld c, a                                          ; $53c5: $4f
	ldh [$e0], a                                     ; $53c6: $e0 $e0
	ld l, a                                          ; $53c8: $6f
	dec b                                            ; $53c9: $05
	ld e, a                                          ; $53ca: $5f
	cp $85                                           ; $53cb: $fe $85
	ld a, b                                          ; $53cd: $78

jr_017_53ce:
	jr nz, jr_017_53ce                               ; $53ce: $20 $fe

	ld a, [de]                                       ; $53d0: $1a
	jr jr_017_53e4                                   ; $53d1: $18 $11

	db $fc                                           ; $53d3: $fc
	ld c, $f8                                        ; $53d4: $0e $f8
	add a                                            ; $53d6: $87
	add h                                            ; $53d7: $84
	inc bc                                           ; $53d8: $03
	ld [bc], a                                       ; $53d9: $02
	inc bc                                           ; $53da: $03
	jp $0400                                         ; $53db: $c3 $00 $04


	nop                                              ; $53de: $00
	inc b                                            ; $53df: $04
	inc b                                            ; $53e0: $04
	nop                                              ; $53e1: $00
	ld [bc], a                                       ; $53e2: $02
	nop                                              ; $53e3: $00

jr_017_53e4:
	nop                                              ; $53e4: $00
	ld [bc], a                                       ; $53e5: $02
	ld [bc], a                                       ; $53e6: $02
	ld [hl], e                                       ; $53e7: $73
	sbc [hl]                                         ; $53e8: $9e
	sbc e                                            ; $53e9: $9b
	ldh [$a0], a                                     ; $53ea: $e0 $a0
	ldh [rAUD4LEN], a                                ; $53ec: $e0 $20
	ld a, e                                          ; $53ee: $7b
	db $fc                                           ; $53ef: $fc
	ld [hl], a                                       ; $53f0: $77
	cp $7f                                           ; $53f1: $fe $7f
	ld hl, sp-$62                                    ; $53f3: $f8 $9e
	ldh [$7b], a                                     ; $53f5: $e0 $7b
	ld b, b                                          ; $53f7: $40
	adc b                                            ; $53f8: $88
	db $eb                                           ; $53f9: $eb
	rst $38                                          ; $53fa: $ff
	ld [$fbff], sp                                   ; $53fb: $08 $ff $fb
	ld d, $1a                                        ; $53fe: $16 $1a
	inc e                                            ; $5400: $1c
	inc d                                            ; $5401: $14
	add hl, sp                                       ; $5402: $39
	add hl, hl                                       ; $5403: $29
	ld sp, $0031                                     ; $5404: $31 $31 $00
	nop                                              ; $5407: $00
	jp $8342                                         ; $5408: $c3 $42 $83


	add d                                            ; $540b: $82
	add c                                            ; $540c: $81
	add c                                            ; $540d: $81
	ret nz                                           ; $540e: $c0

	ret nz                                           ; $540f: $c0

	ld a, e                                          ; $5410: $7b
	ldh [$9e], a                                     ; $5411: $e0 $9e
	ld h, b                                          ; $5413: $60
	ld a, d                                          ; $5414: $7a
	add d                                            ; $5415: $82
	ld a, a                                          ; $5416: $7f
	ldh [$7e], a                                     ; $5417: $e0 $7e
	rst AddAOntoHL                                          ; $5419: $ef
	adc [hl]                                         ; $541a: $8e
	ld [$1aff], a                                    ; $541b: $ea $ff $1a
	rst $38                                          ; $541e: $ff
	ld d, d                                          ; $541f: $52
	rst $38                                          ; $5420: $ff
	ld d, [hl]                                       ; $5421: $56
	ei                                               ; $5422: $fb
	ld a, [bc]                                       ; $5423: $0a
	pop af                                           ; $5424: $f1
	pop af                                           ; $5425: $f1
	nop                                              ; $5426: $00
	nop                                              ; $5427: $00
	ld sp, hl                                        ; $5428: $f9
	add hl, bc                                       ; $5429: $09
	ld hl, sp-$08                                    ; $542a: $f8 $f8
	reti                                             ; $542c: $d9


	ld bc, $9bfd                                     ; $542d: $01 $fd $9b
	rra                                              ; $5430: $1f
	db $10                                           ; $5431: $10
	rra                                              ; $5432: $1f
	rra                                              ; $5433: $1f
	push af                                          ; $5434: $f5
	sub e                                            ; $5435: $93
	jp $c743                                         ; $5436: $c3 $43 $c7


	ld b, l                                          ; $5439: $45
	adc $4a                                          ; $543a: $ce $4a
	call c, $f854                                    ; $543c: $dc $54 $f8
	ld l, b                                          ; $543f: $68
	ldh a, [rAUD1SWEEP]                              ; $5440: $f0 $10
	ld [hl], a                                       ; $5442: $77
	and b                                            ; $5443: $a0
	adc l                                            ; $5444: $8d
	ld [hl], c                                       ; $5445: $71
	ld d, c                                          ; $5446: $51
	ld [hl], c                                       ; $5447: $71
	ld d, c                                          ; $5448: $51
	pop af                                           ; $5449: $f1
	sub c                                            ; $544a: $91
	pop af                                           ; $544b: $f1
	or c                                             ; $544c: $b1
	pop hl                                           ; $544d: $e1
	ld h, c                                          ; $544e: $61
	pop bc                                           ; $544f: $c1
	pop bc                                           ; $5450: $c1
	add c                                            ; $5451: $81
	add c                                            ; $5452: $81
	nop                                              ; $5453: $00
	nop                                              ; $5454: $00
	ld [$6b08], sp                                   ; $5455: $08 $08 $6b
	db $10                                           ; $5458: $10
	ld a, [hl]                                       ; $5459: $7e
	db $dd                                           ; $545a: $dd
	ld a, a                                          ; $545b: $7f
	ld h, d                                          ; $545c: $62
	ld a, d                                          ; $545d: $7a
	or e                                             ; $545e: $b3
	ld a, a                                          ; $545f: $7f
	adc b                                            ; $5460: $88
	ld a, a                                          ; $5461: $7f
	cp $99                                           ; $5462: $fe $99
	jr c, jr_017_548e                                ; $5464: $38 $28

	ldh a, [$d0]                                     ; $5466: $f0 $d0
	ldh [rAUD4LEN], a                                ; $5468: $e0 $20
	ld a, d                                          ; $546a: $7a
	ld a, h                                          ; $546b: $7c
	ld h, c                                          ; $546c: $61
	db $ec                                           ; $546d: $ec
	rst $38                                          ; $546e: $ff
	rst SubAFromDE                                          ; $546f: $df
	rlca                                             ; $5470: $07
	sbc e                                            ; $5471: $9b
	rrca                                             ; $5472: $0f
	ld [$0f0f], sp                                   ; $5473: $08 $0f $0f
	ld a, e                                          ; $5476: $7b
	add b                                            ; $5477: $80
	ld a, [hl]                                       ; $5478: $7e
	add e                                            ; $5479: $83
	ld a, d                                          ; $547a: $7a
	ld [hl], h                                       ; $547b: $74
	rst FarCall                                          ; $547c: $f7
	ld a, a                                          ; $547d: $7f
	ld h, d                                          ; $547e: $62
	rst SubAFromDE                                          ; $547f: $df
	add e                                            ; $5480: $83
	push af                                          ; $5481: $f5
	ld a, a                                          ; $5482: $7f
	cp d                                             ; $5483: $ba
	sbc c                                            ; $5484: $99
	rlca                                             ; $5485: $07
	dec b                                            ; $5486: $05
	rlca                                             ; $5487: $07
	dec b                                            ; $5488: $05
	ld c, $0a                                        ; $5489: $0e $0a
	ld [hl], a                                       ; $548b: $77
	cp d                                             ; $548c: $ba
	rst SubAFromDE                                          ; $548d: $df

jr_017_548e:
	jr nc, @+$01                                     ; $548e: $30 $ff

	ld [hl], e                                       ; $5490: $73
	ld h, $96                                        ; $5491: $26 $96
	ld h, b                                          ; $5493: $60
	ldh a, [$d0]                                     ; $5494: $f0 $d0
	ld a, b                                          ; $5496: $78
	ld l, b                                          ; $5497: $68
	jr c, jr_017_54c2                                ; $5498: $38 $28

	jr @+$1a                                         ; $549a: $18 $18

	ld h, a                                          ; $549c: $67
	sub h                                            ; $549d: $94
	sub e                                            ; $549e: $93
	rlca                                             ; $549f: $07
	ld b, $1f                                        ; $54a0: $06 $1f
	add hl, de                                       ; $54a2: $19
	ld a, $26                                        ; $54a3: $3e $26
	inc a                                            ; $54a5: $3c
	inc a                                            ; $54a6: $3c
	nop                                              ; $54a7: $00
	nop                                              ; $54a8: $00
	ld b, b                                          ; $54a9: $40
	ld b, b                                          ; $54aa: $40
	ld [hl], a                                       ; $54ab: $77
	db $fd                                           ; $54ac: $fd
	halt                                             ; $54ad: $76
	ld l, d                                          ; $54ae: $6a
	db $dd                                           ; $54af: $dd
	add b                                            ; $54b0: $80
	ld a, a                                          ; $54b1: $7f
	ld a, [$886e]                                    ; $54b2: $fa $6e $88
	ld l, [hl]                                       ; $54b5: $6e
	ldh [$7e], a                                     ; $54b6: $e0 $7e
	ret c                                            ; $54b8: $d8

	ld [hl], a                                       ; $54b9: $77
	db $fd                                           ; $54ba: $fd
	ld a, e                                          ; $54bb: $7b
	inc b                                            ; $54bc: $04
	sbc [hl]                                         ; $54bd: $9e
	ld h, b                                          ; $54be: $60
	ld h, d                                          ; $54bf: $62
	sbc $9e                                          ; $54c0: $de $9e

jr_017_54c2:
	and b                                            ; $54c2: $a0
	ld [hl], a                                       ; $54c3: $77
	halt                                             ; $54c4: $76
	sbc e                                            ; $54c5: $9b
	rst $38                                          ; $54c6: $ff
	ld hl, sp-$01                                    ; $54c7: $f8 $ff
	dec bc                                           ; $54c9: $0b
	ld a, d                                          ; $54ca: $7a
	ld a, [$d676]                                    ; $54cb: $fa $76 $d6
	sbc [hl]                                         ; $54ce: $9e
	db $eb                                           ; $54cf: $eb
	ld [hl], a                                       ; $54d0: $77
	rst JumpTable                                          ; $54d1: $c7
	sbc c                                            ; $54d2: $99
	pop bc                                           ; $54d3: $c1
	ld b, c                                          ; $54d4: $41
	add e                                            ; $54d5: $83
	add d                                            ; $54d6: $82
	jp Jump_017_6f42                                 ; $54d7: $c3 $42 $6f


	cp $ff                                           ; $54da: $fe $ff
	rst SubAFromDE                                          ; $54dc: $df
	db $ed                                           ; $54dd: $ed
	sbc e                                            ; $54de: $9b
	rst $38                                          ; $54df: $ff
	rla                                              ; $54e0: $17
	rst $38                                          ; $54e1: $ff
	ld a, [$d87a]                                    ; $54e2: $fa $7a $d8
	sbc e                                            ; $54e5: $9b
	rst FarCall                                          ; $54e6: $f7
	rst $38                                          ; $54e7: $ff
	dec d                                            ; $54e8: $15
	rst $38                                          ; $54e9: $ff
	ld [hl], c                                       ; $54ea: $71
	nop                                              ; $54eb: $00
	db $dd                                           ; $54ec: $dd
	ld bc, $687f                                     ; $54ed: $01 $7f $68
	db $dd                                           ; $54f0: $dd
	ld bc, $f8df                                     ; $54f1: $01 $df $f8
	di                                               ; $54f4: $f3
	halt                                             ; $54f5: $76
	call nc, $c0de                                   ; $54f6: $d4 $de $c0
	sbc [hl]                                         ; $54f9: $9e
	ld b, b                                          ; $54fa: $40
	ld e, a                                          ; $54fb: $5f

Call_017_54fc:
	cp $77                                           ; $54fc: $fe $77
	jp nc, $71de                                     ; $54fe: $d2 $de $71

	ld a, d                                          ; $5501: $7a
	jp c, $fe6f                                      ; $5502: $da $6f $fe

	db $fd                                           ; $5505: $fd
	sbc $1c                                          ; $5506: $de $1c
	ld a, d                                          ; $5508: $7a
	ld [$fe6f], a                                    ; $5509: $ea $6f $fe
	ld h, d                                          ; $550c: $62
	add hl, de                                       ; $550d: $19
	sbc b                                            ; $550e: $98
	add b                                            ; $550f: $80
	add $46                                          ; $5510: $c6 $46
	adc $4a                                          ; $5512: $ce $4a
	adc $ca                                          ; $5514: $ce $ca
	ei                                               ; $5516: $fb
	rst SubAFromDE                                          ; $5517: $df
	ld c, $9b                                        ; $5518: $0e $9b
	rrca                                             ; $551a: $0f
	add hl, bc                                       ; $551b: $09
	rlca                                             ; $551c: $07
	ld b, $60                                        ; $551d: $06 $60
	xor e                                            ; $551f: $ab
	ld e, c                                          ; $5520: $59
	ld [hl], d                                       ; $5521: $72
	rst $38                                          ; $5522: $ff
	sbc $70                                          ; $5523: $de $70
	sbc h                                            ; $5525: $9c
	ld d, b                                          ; $5526: $50
	ld [hl], b                                       ; $5527: $70
	ld [hl], b                                       ; $5528: $70
	db $db                                           ; $5529: $db
	add b                                            ; $552a: $80
	ld h, [hl]                                       ; $552b: $66
	call nc, $ffde                                   ; $552c: $d4 $de $ff
	sbc h                                            ; $552f: $9c
	add c                                            ; $5530: $81
	rst $38                                          ; $5531: $ff
	cp $7a                                           ; $5532: $fe $7a
	adc [hl]                                         ; $5534: $8e
	ld a, e                                          ; $5535: $7b
	rla                                              ; $5536: $17
	db $fd                                           ; $5537: $fd
	rst SubAFromDE                                          ; $5538: $df
	ldh [$7e], a                                     ; $5539: $e0 $7e
	ld h, d                                          ; $553b: $62
	ld a, [hl]                                       ; $553c: $7e
	call c, $d87b                                    ; $553d: $dc $7b $d8
	sbc [hl]                                         ; $5540: $9e
	ld d, b                                          ; $5541: $50
	ei                                               ; $5542: $fb
	rst SubAFromDE                                          ; $5543: $df
	rrca                                             ; $5544: $0f
	ld a, [hl]                                       ; $5545: $7e
	jr c, jr_017_55be                                ; $5546: $38 $76

	sub d                                            ; $5548: $92
	ld c, l                                          ; $5549: $4d
	or c                                             ; $554a: $b1
	ld a, e                                          ; $554b: $7b
	ld h, e                                          ; $554c: $63
	ld a, e                                          ; $554d: $7b
	db $fd                                           ; $554e: $fd
	ld c, e                                          ; $554f: $4b
	sbc [hl]                                         ; $5550: $9e
	ld a, a                                          ; $5551: $7f
	call nc, $f09b                                   ; $5552: $d4 $9b $f0
	ld [bc], a                                       ; $5555: $02
	inc b                                            ; $5556: $04
	ld bc, $b36d                                     ; $5557: $01 $6d $b3
	ld a, e                                          ; $555a: $7b
	cp $75                                           ; $555b: $fe $75
	inc c                                            ; $555d: $0c
	sbc e                                            ; $555e: $9b
	jr c, jr_017_55a5                                ; $555f: $38 $44

	nop                                              ; $5561: $00
	db $10                                           ; $5562: $10
	ld e, a                                          ; $5563: $5f
	ldh [$7f], a                                     ; $5564: $e0 $7f
	cp $9c                                           ; $5566: $fe $9c
	inc e                                            ; $5568: $1c
	ld [hl+], a                                      ; $5569: $22
	nop                                              ; $556a: $00
	ld l, d                                          ; $556b: $6a
	ld a, [de]                                       ; $556c: $1a
	ld [hl], a                                       ; $556d: $77
	ldh a, [rPCM34]                                  ; $556e: $f0 $77
	db $fd                                           ; $5570: $fd
	ld d, a                                          ; $5571: $57
	ret nz                                           ; $5572: $c0

	sbc e                                            ; $5573: $9b
	ldh a, [rIF]                                     ; $5574: $f0 $0f
	add b                                            ; $5576: $80
	jr nz, @+$7a                                     ; $5577: $20 $78

	ld d, l                                          ; $5579: $55
	halt                                             ; $557a: $76
	ld a, e                                          ; $557b: $7b
	ld a, e                                          ; $557c: $7b
	cp $77                                           ; $557d: $fe $77
	ret nc                                           ; $557f: $d0

	sbc h                                            ; $5580: $9c
	xor d                                            ; $5581: $aa
	nop                                              ; $5582: $00
	ld d, l                                          ; $5583: $55
	ld a, e                                          ; $5584: $7b
	db $fc                                           ; $5585: $fc
	ld h, e                                          ; $5586: $63
	ld d, [hl]                                       ; $5587: $56
	adc $ff                                          ; $5588: $ce $ff
	ld l, h                                          ; $558a: $6c
	and e                                            ; $558b: $a3
	ld a, h                                          ; $558c: $7c
	sbc b                                            ; $558d: $98
	ld a, h                                          ; $558e: $7c
	sub h                                            ; $558f: $94
	ld d, a                                          ; $5590: $57
	ldh a, [$74]                                     ; $5591: $f0 $74
	add [hl]                                         ; $5593: $86
	sub [hl]                                         ; $5594: $96
	ld [bc], a                                       ; $5595: $02
	db $ec                                           ; $5596: $ec
	sub h                                            ; $5597: $94
	ld bc, $0303                                     ; $5598: $01 $03 $03
	db $fc                                           ; $559b: $fc
	nop                                              ; $559c: $00
	jr nz, @+$01                                     ; $559d: $20 $ff

	ld b, b                                          ; $559f: $40
	rst $38                                          ; $55a0: $ff
	inc c                                            ; $55a1: $0c
	rst FarCall                                          ; $55a2: $f7
	db $fd                                           ; $55a3: $fd
	sbc d                                            ; $55a4: $9a

jr_017_55a5:
	ld l, $1f                                        ; $55a5: $2e $1f
	ld a, a                                          ; $55a7: $7f
	rst $38                                          ; $55a8: $ff
	nop                                              ; $55a9: $00
	ld e, e                                          ; $55aa: $5b
	ldh a, [rIE]                                     ; $55ab: $f0 $ff
	sbc h                                            ; $55ad: $9c
	ld b, $01                                        ; $55ae: $06 $01
	ld hl, sp+$5b                                    ; $55b0: $f8 $5b
	ldh a, [$9a]                                     ; $55b2: $f0 $9a
	and b                                            ; $55b4: $a0
	ret nz                                           ; $55b5: $c0

	ld sp, hl                                        ; $55b6: $f9
	cp $01                                           ; $55b7: $fe $01
	ld e, e                                          ; $55b9: $5b
	ldh a, [$99]                                     ; $55ba: $f0 $99
	add hl, bc                                       ; $55bc: $09
	rlca                                             ; $55bd: $07

jr_017_55be:
	sbc a                                            ; $55be: $9f
	ld a, a                                          ; $55bf: $7f
	nop                                              ; $55c0: $00
	add b                                            ; $55c1: $80
	ld d, a                                          ; $55c2: $57
	ret nc                                           ; $55c3: $d0

	rst $38                                          ; $55c4: $ff
	ld a, a                                          ; $55c5: $7f
	cp a                                             ; $55c6: $bf
	ld e, a                                          ; $55c7: $5f
	ldh a, [$df]                                     ; $55c8: $f0 $df
	add b                                            ; $55ca: $80
	rst SubAFromDE                                          ; $55cb: $df
	ret nz                                           ; $55cc: $c0

	sbc [hl]                                         ; $55cd: $9e
	ccf                                              ; $55ce: $3f
	ld l, e                                          ; $55cf: $6b
	ldh a, [$df]                                     ; $55d0: $f0 $df
	inc bc                                           ; $55d2: $03
	ld a, e                                          ; $55d3: $7b
	sub e                                            ; $55d4: $93
	ld a, a                                          ; $55d5: $7f
	jp $01df                                         ; $55d6: $c3 $df $01


	ld a, [$c0df]                                    ; $55d9: $fa $df $c0
	ld a, e                                          ; $55dc: $7b
	db $e3                                           ; $55dd: $e3
	ld a, a                                          ; $55de: $7f
	db $fd                                           ; $55df: $fd
	sbc h                                            ; $55e0: $9c
	add b                                            ; $55e1: $80
	nop                                              ; $55e2: $00
	add b                                            ; $55e3: $80
	ld h, e                                          ; $55e4: $63
	ld [hl], e                                       ; $55e5: $73
	ld [hl], e                                       ; $55e6: $73
	cp $7b                                           ; $55e7: $fe $7b
	ld l, h                                          ; $55e9: $6c
	rst SubAFromDE                                          ; $55ea: $df
	ld bc, $03de                                     ; $55eb: $01 $de $03
	ld a, e                                          ; $55ee: $7b
	jp nz, $fe73                                     ; $55ef: $c2 $73 $fe

	sbc [hl]                                         ; $55f2: $9e
	ld b, b                                          ; $55f3: $40
	ld a, e                                          ; $55f4: $7b
	call c, $d67b                                    ; $55f5: $dc $7b $d6
	sbc [hl]                                         ; $55f8: $9e
	ret nz                                           ; $55f9: $c0

	ld l, a                                          ; $55fa: $6f
	pop hl                                           ; $55fb: $e1
	ld l, a                                          ; $55fc: $6f
	call c, $bc77                                    ; $55fd: $dc $77 $bc
	ld [hl], a                                       ; $5600: $77
	db $ec                                           ; $5601: $ec
	ld l, a                                          ; $5602: $6f
	cp h                                             ; $5603: $bc
	ld a, a                                          ; $5604: $7f
	sbc $7b                                          ; $5605: $de $7b
	sub a                                            ; $5607: $97
	ld a, [$cc5f]                                    ; $5608: $fa $5f $cc
	sbc d                                            ; $560b: $9a
	add c                                            ; $560c: $81
	cp $11                                           ; $560d: $fe $11
	cp $00                                           ; $560f: $fe $00
	sbc $ff                                          ; $5611: $de $ff
	rst $38                                          ; $5613: $ff
	sbc d                                            ; $5614: $9a
	add [hl]                                         ; $5615: $86
	ld a, a                                          ; $5616: $7f
	inc h                                            ; $5617: $24
	rst $38                                          ; $5618: $ff
	ld bc, $487b                                     ; $5619: $01 $7b $48
	db $eb                                           ; $561c: $eb
	ld [hl], a                                       ; $561d: $77
	adc [hl]                                         ; $561e: $8e
	ld [hl], a                                       ; $561f: $77
	xor c                                            ; $5620: $a9
	ld h, a                                          ; $5621: $67
	sbc b                                            ; $5622: $98
	ld a, a                                          ; $5623: $7f
	db $fc                                           ; $5624: $fc
	ld l, a                                          ; $5625: $6f
	or b                                             ; $5626: $b0
	sbc c                                            ; $5627: $99
	db $10                                           ; $5628: $10
	rst $38                                          ; $5629: $ff
	ld c, c                                          ; $562a: $49
	rst FarCall                                          ; $562b: $f7
	ld [bc], a                                       ; $562c: $02
	db $fd                                           ; $562d: $fd
	ld [hl], a                                       ; $562e: $77
	ret nz                                           ; $562f: $c0

	adc c                                            ; $5630: $89
	ld c, e                                          ; $5631: $4b
	rst $38                                          ; $5632: $ff
	ld [de], a                                       ; $5633: $12
	rst AddAOntoHL                                          ; $5634: $ef
	ld b, b                                          ; $5635: $40
	rst $38                                          ; $5636: $ff
	jr @+$01                                         ; $5637: $18 $ff

	jr nc, @+$01                                     ; $5639: $30 $ff

	ld bc, $06ff                                     ; $563b: $01 $ff $06
	ei                                               ; $563e: $fb
	ld d, d                                          ; $563f: $52
	rst AddAOntoHL                                          ; $5640: $ef
	jr nz, @+$01                                     ; $5641: $20 $ff

	ld [bc], a                                       ; $5643: $02
	db $fd                                           ; $5644: $fd
	inc b                                            ; $5645: $04
	rst $38                                          ; $5646: $ff
	ld a, e                                          ; $5647: $7b
	ld e, a                                          ; $5648: $5f
	ld [hl], e                                       ; $5649: $73
	ld [hl], d                                       ; $564a: $72
	ld h, e                                          ; $564b: $63
	ld [$ff99], sp                                   ; $564c: $08 $99 $ff
	ld d, l                                          ; $564f: $55

Call_017_5650:
	xor d                                            ; $5650: $aa
	xor d                                            ; $5651: $aa
	ld d, l                                          ; $5652: $55
	rst $38                                          ; $5653: $ff
	ld a, e                                          ; $5654: $7b
	nop                                              ; $5655: $00
	ld l, a                                          ; $5656: $6f
	cp $9e                                           ; $5657: $fe $9e
	ld [bc], a                                       ; $5659: $02
	ld [hl], e                                       ; $565a: $73
	ld a, [hl-]                                      ; $565b: $3a
	ld l, a                                          ; $565c: $6f
	inc c                                            ; $565d: $0c
	ld [hl], a                                       ; $565e: $77
	sub $7b                                          ; $565f: $d6 $7b

jr_017_5661:
	ld e, [hl]                                       ; $5661: $5e
	ld a, e                                          ; $5662: $7b
	xor b                                            ; $5663: $a8
	ld a, a                                          ; $5664: $7f
	and h                                            ; $5665: $a4
	ld a, e                                          ; $5666: $7b
	sbc c                                            ; $5667: $99
	ld a, a                                          ; $5668: $7f
	inc [hl]                                         ; $5669: $34
	ld a, e                                          ; $566a: $7b
	sbc h                                            ; $566b: $9c
	adc a                                            ; $566c: $8f
	rst $38                                          ; $566d: $ff
	ld [hl], $ff                                     ; $566e: $36 $ff
	ld c, $ff                                        ; $5670: $0e $ff
	inc l                                            ; $5672: $2c
	rst $38                                          ; $5673: $ff
	call c, $afff                                    ; $5674: $dc $ff $af
	rst $38                                          ; $5677: $ff
	sbc h                                            ; $5678: $9c
	rst $38                                          ; $5679: $ff
	dec l                                            ; $567a: $2d
	ld a, a                                          ; $567b: $7f
	cp $46                                           ; $567c: $fe $46
	ld a, [$378f]                                    ; $567e: $fa $8f $37
	pop bc                                           ; $5681: $c1
	ccf                                              ; $5682: $3f
	ld [hl], d                                       ; $5683: $72
	rra                                              ; $5684: $1f
	add hl, de                                       ; $5685: $19
	ld c, $02                                        ; $5686: $0e $02
	ld c, $86                                        ; $5688: $0e $86
	ld c, [hl]                                       ; $568a: $4e
	add d                                            ; $568b: $82
	rst $38                                          ; $568c: $ff
	sub a                                            ; $568d: $97
	rst $38                                          ; $568e: $ff
	ld c, a                                          ; $568f: $4f
	ldh [$e0], a                                     ; $5690: $e0 $e0
	ld l, a                                          ; $5692: $6f
	dec b                                            ; $5693: $05
	ld e, a                                          ; $5694: $5f
	cp $85                                           ; $5695: $fe $85
	ld a, b                                          ; $5697: $78

jr_017_5698:
	jr nz, jr_017_5698                               ; $5698: $20 $fe

	ld a, [de]                                       ; $569a: $1a
	jr jr_017_56ae                                   ; $569b: $18 $11

	db $fc                                           ; $569d: $fc
	ld c, $f8                                        ; $569e: $0e $f8
	add a                                            ; $56a0: $87
	add h                                            ; $56a1: $84
	inc bc                                           ; $56a2: $03
	ld [bc], a                                       ; $56a3: $02
	inc bc                                           ; $56a4: $03
	jp $0400                                         ; $56a5: $c3 $00 $04


	nop                                              ; $56a8: $00
	inc b                                            ; $56a9: $04
	inc b                                            ; $56aa: $04
	nop                                              ; $56ab: $00
	ld [bc], a                                       ; $56ac: $02
	nop                                              ; $56ad: $00

jr_017_56ae:
	nop                                              ; $56ae: $00
	ld [bc], a                                       ; $56af: $02
	ld [bc], a                                       ; $56b0: $02
	ld [hl], e                                       ; $56b1: $73
	sbc [hl]                                         ; $56b2: $9e
	sbc e                                            ; $56b3: $9b
	ldh [$a0], a                                     ; $56b4: $e0 $a0
	ldh [rAUD4LEN], a                                ; $56b6: $e0 $20
	ld a, e                                          ; $56b8: $7b
	db $fc                                           ; $56b9: $fc
	ld [hl], a                                       ; $56ba: $77
	cp $7f                                           ; $56bb: $fe $7f
	ld hl, sp-$62                                    ; $56bd: $f8 $9e
	ldh [$7b], a                                     ; $56bf: $e0 $7b
	ld b, b                                          ; $56c1: $40
	sub d                                            ; $56c2: $92
	db $eb                                           ; $56c3: $eb
	rst $38                                          ; $56c4: $ff
	ld [$fbff], sp                                   ; $56c5: $08 $ff $fb
	ld e, $1a                                        ; $56c8: $1e $1a
	inc e                                            ; $56ca: $1c
	inc d                                            ; $56cb: $14
	add hl, sp                                       ; $56cc: $39
	add hl, hl                                       ; $56cd: $29
	ld sp, $6b31                                     ; $56ce: $31 $31 $6b
	ld a, b                                          ; $56d1: $78
	ld a, e                                          ; $56d2: $7b
	ld [hl], a                                       ; $56d3: $77
	db $dd                                           ; $56d4: $dd
	add b                                            ; $56d5: $80
	ld [hl], e                                       ; $56d6: $73
	jr nz, jr_017_5661                               ; $56d7: $20 $88

	ld b, c                                          ; $56d9: $41
	cp [hl]                                          ; $56da: $be
	xor d                                            ; $56db: $aa
	cp $6a                                           ; $56dc: $fe $6a
	rst $38                                          ; $56de: $ff
	ld c, e                                          ; $56df: $4b
	rst $38                                          ; $56e0: $ff
	ld e, d                                          ; $56e1: $5a
	rst AddAOntoHL                                          ; $56e2: $ef
	add hl, hl                                       ; $56e3: $29
	rst JumpTable                                          ; $56e4: $c7
	rst JumpTable                                          ; $56e5: $c7
	nop                                              ; $56e6: $00
	nop                                              ; $56e7: $00
	rlca                                             ; $56e8: $07
	inc b                                            ; $56e9: $04
	inc bc                                           ; $56ea: $03
	inc bc                                           ; $56eb: $03
	rlca                                             ; $56ec: $07
	inc b                                            ; $56ed: $04
	rlca                                             ; $56ee: $07
	dec b                                            ; $56ef: $05
	ld a, e                                          ; $56f0: $7b
	cp $7b                                           ; $56f1: $fe $7b
	or $ff                                           ; $56f3: $f6 $ff
	sbc l                                            ; $56f5: $9d
	ldh a, [$50]                                     ; $56f6: $f0 $50
	ld [hl], e                                       ; $56f8: $73
	cp $9a                                           ; $56f9: $fe $9a
	db $10                                           ; $56fb: $10
	ldh a, [$50]                                     ; $56fc: $f0 $50
	ldh [$60], a                                     ; $56fe: $e0 $60
	ld [hl], a                                       ; $5700: $77
	adc $91                                          ; $5701: $ce $91
	rst $38                                          ; $5703: $ff
	adc e                                            ; $5704: $8b
	rst $38                                          ; $5705: $ff
	xor e                                            ; $5706: $ab
	rst $38                                          ; $5707: $ff
	xor d                                            ; $5708: $aa
	rst $38                                          ; $5709: $ff
	and h                                            ; $570a: $a4
	rst $38                                          ; $570b: $ff
	and e                                            ; $570c: $a3
	rst $38                                          ; $570d: $ff
	ld l, a                                          ; $570e: $6f
	sub b                                            ; $570f: $90
	sub b                                            ; $5710: $90
	ld e, d                                          ; $5711: $5a
	sub b                                            ; $5712: $90
	call c, $ff01                                    ; $5713: $dc $01 $ff
	ld [hl], a                                       ; $5716: $77
	adc h                                            ; $5717: $8c
	ld a, e                                          ; $5718: $7b
	jp z, $f09a                                      ; $5719: $ca $9a $f0

	ld hl, sp+$18                                    ; $571c: $f8 $18
	ld hl, sp-$08                                    ; $571e: $f8 $f8
	db $fd                                           ; $5720: $fd
	rst SubAFromDE                                          ; $5721: $df
	rra                                              ; $5722: $1f
	db $fd                                           ; $5723: $fd
	rst SubAFromDE                                          ; $5724: $df
	ld a, a                                          ; $5725: $7f
	sbc e                                            ; $5726: $9b
	rst $38                                          ; $5727: $ff
	ret nz                                           ; $5728: $c0

	ld a, a                                          ; $5729: $7f
	ld a, a                                          ; $572a: $7f
	ld [hl], e                                       ; $572b: $73
	and $7b                                          ; $572c: $e6 $7b
	or d                                             ; $572e: $b2
	sub l                                            ; $572f: $95
	ld hl, sp-$18                                    ; $5730: $f8 $e8
	cp b                                             ; $5732: $b8
	xor b                                            ; $5733: $a8
	cp [hl]                                          ; $5734: $be
	or [hl]                                          ; $5735: $b6
	rra                                              ; $5736: $1f
	add hl, de                                       ; $5737: $19
	rrca                                             ; $5738: $0f
	rrca                                             ; $5739: $0f
	ld [hl], a                                       ; $573a: $77
	ret z                                            ; $573b: $c8

	sbc $03                                          ; $573c: $de $03
	sub [hl]                                         ; $573e: $96
	ld [bc], a                                       ; $573f: $02
	rlca                                             ; $5740: $07
	ld b, $0f                                        ; $5741: $06 $0f
	dec c                                            ; $5743: $0d
	rra                                              ; $5744: $1f
	inc de                                           ; $5745: $13
	ld e, $1e                                        ; $5746: $1e $1e
	ld sp, hl                                        ; $5748: $f9
	rst SubAFromDE                                          ; $5749: $df
	ret nz                                           ; $574a: $c0

	ld a, a                                          ; $574b: $7f
	sub d                                            ; $574c: $92
	ld a, c                                          ; $574d: $79
	db $e4                                           ; $574e: $e4
	ld e, d                                          ; $574f: $5a
	ld a, d                                          ; $5750: $7a
	ld a, d                                          ; $5751: $7a
	add h                                            ; $5752: $84
	ld a, d                                          ; $5753: $7a
	ld c, h                                          ; $5754: $4c
	ld sp, hl                                        ; $5755: $f9
	ld a, e                                          ; $5756: $7b
	ld e, h                                          ; $5757: $5c
	sbc [hl]                                         ; $5758: $9e
	ld b, $77                                        ; $5759: $06 $77
	ld h, d                                          ; $575b: $62
	rst $38                                          ; $575c: $ff
	rst SubAFromDE                                          ; $575d: $df
	ld b, b                                          ; $575e: $40
	ld [hl], a                                       ; $575f: $77
	db $fd                                           ; $5760: $fd
	halt                                             ; $5761: $76
	ld a, d                                          ; $5762: $7a
	ld [hl], e                                       ; $5763: $73
	ld l, $9e                                        ; $5764: $2e $9e
	add b                                            ; $5766: $80
	ld l, [hl]                                       ; $5767: $6e
	sbc b                                            ; $5768: $98
	ld l, [hl]                                       ; $5769: $6e
	ldh a, [$7e]                                     ; $576a: $f0 $7e
	add sp, $77                                      ; $576c: $e8 $77
	db $fd                                           ; $576e: $fd
	ld [hl], a                                       ; $576f: $77
	or h                                             ; $5770: $b4
	ld h, d                                          ; $5771: $62
	xor $9e                                          ; $5772: $ee $9e
	and b                                            ; $5774: $a0
	ld a, e                                          ; $5775: $7b
	ld e, $98                                        ; $5776: $1e $98
	rlca                                             ; $5778: $07
	rst $38                                          ; $5779: $ff
	ld hl, sp-$01                                    ; $577a: $f8 $ff
	dec bc                                           ; $577c: $0b
	cp $ea                                           ; $577d: $fe $ea
	ld [hl], d                                       ; $577f: $72
	and $9e                                          ; $5780: $e6 $9e
	db $eb                                           ; $5782: $eb
	ld l, e                                          ; $5783: $6b
	ld b, h                                          ; $5784: $44
	ld l, d                                          ; $5785: $6a
	ld h, b                                          ; $5786: $60
	halt                                             ; $5787: $76
	ld [$b6df], sp                                   ; $5788: $08 $df $b6
	sub e                                            ; $578b: $93
	rst $38                                          ; $578c: $ff
	ld e, l                                          ; $578d: $5d
	cp $fe                                           ; $578e: $fe $fe
	rst $38                                          ; $5790: $ff
	ld b, c                                          ; $5791: $41
	rst $38                                          ; $5792: $ff
	db $dd                                           ; $5793: $dd
	rst FarCall                                          ; $5794: $f7
	ld d, l                                          ; $5795: $55
	rst $38                                          ; $5796: $ff
	db $dd                                           ; $5797: $dd
	ld [hl], e                                       ; $5798: $73
	sub h                                            ; $5799: $94
	ld a, [hl]                                       ; $579a: $7e
	ldh a, [$9c]                                     ; $579b: $f0 $9c
	rlca                                             ; $579d: $07
	rrca                                             ; $579e: $0f
	ld [$07de], sp                                   ; $579f: $08 $de $07
	ld [hl], d                                       ; $57a2: $72
	xor $df                                          ; $57a3: $ee $df
	ldh [rPCM12], a                                  ; $57a5: $e0 $76
	ldh a, [c]                                       ; $57a7: $f2
	ld h, a                                          ; $57a8: $67
	cp $ff                                           ; $57a9: $fe $ff
	rst SubAFromDE                                          ; $57ab: $df
	ld [hl], h                                       ; $57ac: $74

jr_017_57ad:
	sbc l                                            ; $57ad: $9d
	rst $38                                          ; $57ae: $ff
	sbc e                                            ; $57af: $9b
	ld a, d                                          ; $57b0: $7a
	db $ec                                           ; $57b1: $ec
	sbc [hl]                                         ; $57b2: $9e
	and b                                            ; $57b3: $a0
	ld [hl], d                                       ; $57b4: $72
	and $7b                                          ; $57b5: $e6 $7b
	and b                                            ; $57b7: $a0
	ld [hl], e                                       ; $57b8: $73
	sbc $9c                                          ; $57b9: $de $9c
	jr nc, jr_017_57ad                               ; $57bb: $30 $f0

jr_017_57bd:
	ldh a, [$6f]                                     ; $57bd: $f0 $6f
	add [hl]                                         ; $57bf: $86
	db $fd                                           ; $57c0: $fd
	rst SubAFromDE                                          ; $57c1: $df
	ccf                                              ; $57c2: $3f
	sbc e                                            ; $57c3: $9b
	ld a, a                                          ; $57c4: $7f
	ld h, b                                          ; $57c5: $60
	ccf                                              ; $57c6: $3f
	ccf                                              ; $57c7: $3f
	halt                                             ; $57c8: $76
	db $f4                                           ; $57c9: $f4
	sbc l                                            ; $57ca: $9d
	ccf                                              ; $57cb: $3f
	jr nc, jr_017_57bd                               ; $57cc: $30 $ef

	rst SubAFromDE                                          ; $57ce: $df
	ld b, b                                          ; $57cf: $40
	sbc $e0                                          ; $57d0: $de $e0
	ld l, a                                          ; $57d2: $6f
	ld h, b                                          ; $57d3: $60
	ld a, e                                          ; $57d4: $7b
	cp $49                                           ; $57d5: $fe $49
	ld a, [hl-]                                      ; $57d7: $3a
	ld h, c                                          ; $57d8: $61
	ld [hl], a                                       ; $57d9: $77
	ld h, b                                          ; $57da: $60
	push af                                          ; $57db: $f5
	ld h, [hl]                                       ; $57dc: $66
	ldh a, [$7d]                                     ; $57dd: $f0 $7d
	ld c, e                                          ; $57df: $4b
	ld e, d                                          ; $57e0: $5a
	ldh a, [rPCM12]                                  ; $57e1: $f0 $76
	cp d                                             ; $57e3: $ba
	ld l, a                                          ; $57e4: $6f
	call nc, $d555                                   ; $57e5: $d4 $55 $d5
	ld a, [hl]                                       ; $57e8: $7e
	add sp, $77                                      ; $57e9: $e8 $77
	db $fd                                           ; $57eb: $fd
	di                                               ; $57ec: $f3
	ld a, a                                          ; $57ed: $7f
	res 3, d                                         ; $57ee: $cb $9a
	rrca                                             ; $57f0: $0f
	ldh a, [rSC]                                     ; $57f1: $f0 $02
	inc b                                            ; $57f3: $04
	ld bc, $d36d                                     ; $57f4: $01 $6d $d3
	ld a, e                                          ; $57f7: $7b
	cp $75                                           ; $57f8: $fe $75
	inc l                                            ; $57fa: $2c
	sbc e                                            ; $57fb: $9b
	jr c, @+$46                                      ; $57fc: $38 $44

	nop                                              ; $57fe: $00
	db $10                                           ; $57ff: $10
	ld e, a                                          ; $5800: $5f
	ldh [$7f], a                                     ; $5801: $e0 $7f
	cp $9b                                           ; $5803: $fe $9b
	inc e                                            ; $5805: $1c
	ld [hl+], a                                      ; $5806: $22
	nop                                              ; $5807: $00
	ld [$f05f], sp                                   ; $5808: $08 $5f $f0
	ld [hl], a                                       ; $580b: $77
	db $fd                                           ; $580c: $fd
	ld d, a                                          ; $580d: $57
	ret nz                                           ; $580e: $c0

	sbc e                                            ; $580f: $9b
	ldh a, [rIF]                                     ; $5810: $f0 $0f
	add b                                            ; $5812: $80
	jr nz, @+$7a                                     ; $5813: $20 $78

	ld [hl], l                                       ; $5815: $75
	halt                                             ; $5816: $76
	adc e                                            ; $5817: $8b
	ld a, e                                          ; $5818: $7b
	cp $77                                           ; $5819: $fe $77
	ret nc                                           ; $581b: $d0

	sbc h                                            ; $581c: $9c
	xor d                                            ; $581d: $aa
	nop                                              ; $581e: $00
	ld d, l                                          ; $581f: $55
	ld a, e                                          ; $5820: $7b
	db $fc                                           ; $5821: $fc
	ld h, e                                          ; $5822: $63
	ld h, [hl]                                       ; $5823: $66
	adc $ff                                          ; $5824: $ce $ff
	ld l, h                                          ; $5826: $6c
	jp $b674                                         ; $5827: $c3 $74 $b6


	ld e, h                                          ; $582a: $5c
	ld [bc], a                                       ; $582b: $02
	db $ec                                           ; $582c: $ec
	sub h                                            ; $582d: $94
	ld bc, $0303                                     ; $582e: $01 $03 $03
	db $fc                                           ; $5831: $fc
	nop                                              ; $5832: $00
	jr nz, @+$01                                     ; $5833: $20 $ff

	ld b, b                                          ; $5835: $40
	rst $38                                          ; $5836: $ff
	inc c                                            ; $5837: $0c
	rst FarCall                                          ; $5838: $f7
	db $fd                                           ; $5839: $fd
	sbc d                                            ; $583a: $9a
	ld l, $1f                                        ; $583b: $2e $1f
	ld a, a                                          ; $583d: $7f
	rst $38                                          ; $583e: $ff
	nop                                              ; $583f: $00
	ld e, e                                          ; $5840: $5b
	ldh a, [rIE]                                     ; $5841: $f0 $ff
	sbc h                                            ; $5843: $9c
	ld b, $01                                        ; $5844: $06 $01
	ld hl, sp+$5b                                    ; $5846: $f8 $5b
	ldh a, [$9a]                                     ; $5848: $f0 $9a
	and b                                            ; $584a: $a0
	ret nz                                           ; $584b: $c0

	ld sp, hl                                        ; $584c: $f9
	cp $01                                           ; $584d: $fe $01
	ld e, e                                          ; $584f: $5b
	ldh a, [$99]                                     ; $5850: $f0 $99
	add hl, bc                                       ; $5852: $09
	rlca                                             ; $5853: $07
	sbc a                                            ; $5854: $9f
	ld a, a                                          ; $5855: $7f
	nop                                              ; $5856: $00
	add b                                            ; $5857: $80
	ld d, a                                          ; $5858: $57
	ret nc                                           ; $5859: $d0

	rst $38                                          ; $585a: $ff
	ld a, a                                          ; $585b: $7f
	cp a                                             ; $585c: $bf
	ld e, a                                          ; $585d: $5f
	ldh a, [$df]                                     ; $585e: $f0 $df
	add b                                            ; $5860: $80
	rst SubAFromDE                                          ; $5861: $df
	ret nz                                           ; $5862: $c0

	sbc [hl]                                         ; $5863: $9e
	ccf                                              ; $5864: $3f
	ld l, e                                          ; $5865: $6b
	ldh a, [$df]                                     ; $5866: $f0 $df
	inc bc                                           ; $5868: $03
	ld a, e                                          ; $5869: $7b
	sub e                                            ; $586a: $93
	ld a, a                                          ; $586b: $7f
	jp $01df                                         ; $586c: $c3 $df $01


	ld a, [$c0df]                                    ; $586f: $fa $df $c0
	ld a, e                                          ; $5872: $7b
	db $e3                                           ; $5873: $e3
	ld a, a                                          ; $5874: $7f
	db $fd                                           ; $5875: $fd
	sbc h                                            ; $5876: $9c
	add b                                            ; $5877: $80
	nop                                              ; $5878: $00
	add b                                            ; $5879: $80
	ld h, e                                          ; $587a: $63
	ld [hl], e                                       ; $587b: $73
	ld [hl], e                                       ; $587c: $73
	cp $7b                                           ; $587d: $fe $7b
	ld l, h                                          ; $587f: $6c
	rst SubAFromDE                                          ; $5880: $df
	ld bc, $03de                                     ; $5881: $01 $de $03
	ld a, e                                          ; $5884: $7b
	jp nz, $fe73                                     ; $5885: $c2 $73 $fe

	sbc [hl]                                         ; $5888: $9e
	ld b, b                                          ; $5889: $40
	ld a, e                                          ; $588a: $7b
	call c, $d67b                                    ; $588b: $dc $7b $d6
	sbc [hl]                                         ; $588e: $9e
	ret nz                                           ; $588f: $c0

	ld l, a                                          ; $5890: $6f
	pop hl                                           ; $5891: $e1
	ld l, a                                          ; $5892: $6f
	call c, $bc77                                    ; $5893: $dc $77 $bc
	ld [hl], a                                       ; $5896: $77
	db $ec                                           ; $5897: $ec
	ld l, a                                          ; $5898: $6f
	cp h                                             ; $5899: $bc
	ld a, a                                          ; $589a: $7f
	sbc $7b                                          ; $589b: $de $7b
	sub a                                            ; $589d: $97
	ld a, [$cc5f]                                    ; $589e: $fa $5f $cc
	sbc d                                            ; $58a1: $9a
	add c                                            ; $58a2: $81
	cp $11                                           ; $58a3: $fe $11
	cp $00                                           ; $58a5: $fe $00
	sbc $ff                                          ; $58a7: $de $ff
	rst $38                                          ; $58a9: $ff
	sbc d                                            ; $58aa: $9a
	add [hl]                                         ; $58ab: $86
	ld a, a                                          ; $58ac: $7f
	inc h                                            ; $58ad: $24
	rst $38                                          ; $58ae: $ff
	ld bc, $487b                                     ; $58af: $01 $7b $48
	db $eb                                           ; $58b2: $eb
	ld [hl], a                                       ; $58b3: $77
	adc [hl]                                         ; $58b4: $8e
	ld [hl], a                                       ; $58b5: $77
	xor c                                            ; $58b6: $a9
	ld h, a                                          ; $58b7: $67
	sbc b                                            ; $58b8: $98
	ld a, a                                          ; $58b9: $7f
	db $fc                                           ; $58ba: $fc
	ld l, a                                          ; $58bb: $6f
	or b                                             ; $58bc: $b0
	sbc c                                            ; $58bd: $99
	db $10                                           ; $58be: $10
	rst $38                                          ; $58bf: $ff
	ld c, c                                          ; $58c0: $49
	rst FarCall                                          ; $58c1: $f7
	ld [bc], a                                       ; $58c2: $02
	db $fd                                           ; $58c3: $fd
	ld [hl], a                                       ; $58c4: $77
	ret nz                                           ; $58c5: $c0

	adc c                                            ; $58c6: $89
	ld c, e                                          ; $58c7: $4b
	rst $38                                          ; $58c8: $ff
	ld [de], a                                       ; $58c9: $12
	rst AddAOntoHL                                          ; $58ca: $ef
	ld b, b                                          ; $58cb: $40
	rst $38                                          ; $58cc: $ff
	jr @+$01                                         ; $58cd: $18 $ff

	jr nc, @+$01                                     ; $58cf: $30 $ff

	ld bc, $06ff                                     ; $58d1: $01 $ff $06
	ei                                               ; $58d4: $fb
	ld d, d                                          ; $58d5: $52
	rst AddAOntoHL                                          ; $58d6: $ef
	jr nz, @+$01                                     ; $58d7: $20 $ff

	ld [bc], a                                       ; $58d9: $02
	db $fd                                           ; $58da: $fd
	inc b                                            ; $58db: $04
	rst $38                                          ; $58dc: $ff
	ld a, e                                          ; $58dd: $7b
	ld e, a                                          ; $58de: $5f
	ld [hl], e                                       ; $58df: $73
	ld [hl], d                                       ; $58e0: $72
	ld h, e                                          ; $58e1: $63
	ld [$ff99], sp                                   ; $58e2: $08 $99 $ff
	ld d, l                                          ; $58e5: $55
	xor d                                            ; $58e6: $aa
	xor d                                            ; $58e7: $aa
	ld d, l                                          ; $58e8: $55
	rst $38                                          ; $58e9: $ff
	ld a, e                                          ; $58ea: $7b
	nop                                              ; $58eb: $00
	ld l, a                                          ; $58ec: $6f
	cp $9e                                           ; $58ed: $fe $9e
	ld [bc], a                                       ; $58ef: $02
	ld [hl], e                                       ; $58f0: $73
	ld a, [hl-]                                      ; $58f1: $3a
	ld l, a                                          ; $58f2: $6f
	inc c                                            ; $58f3: $0c
	ld [hl], a                                       ; $58f4: $77
	sub $7b                                          ; $58f5: $d6 $7b
	ld e, [hl]                                       ; $58f7: $5e
	ld a, e                                          ; $58f8: $7b
	xor b                                            ; $58f9: $a8
	ld a, a                                          ; $58fa: $7f
	and h                                            ; $58fb: $a4
	ld a, e                                          ; $58fc: $7b
	sbc c                                            ; $58fd: $99
	ld a, a                                          ; $58fe: $7f
	inc [hl]                                         ; $58ff: $34
	ld a, e                                          ; $5900: $7b
	sbc h                                            ; $5901: $9c
	adc a                                            ; $5902: $8f
	rst $38                                          ; $5903: $ff
	ld [hl], $ff                                     ; $5904: $36 $ff
	ld c, $ff                                        ; $5906: $0e $ff
	inc l                                            ; $5908: $2c
	rst $38                                          ; $5909: $ff
	call c, $afff                                    ; $590a: $dc $ff $af
	rst $38                                          ; $590d: $ff
	sbc h                                            ; $590e: $9c
	rst $38                                          ; $590f: $ff
	dec l                                            ; $5910: $2d
	ld a, a                                          ; $5911: $7f
	cp $46                                           ; $5912: $fe $46
	ld a, [$378f]                                    ; $5914: $fa $8f $37
	pop bc                                           ; $5917: $c1
	ccf                                              ; $5918: $3f
	ld [hl], d                                       ; $5919: $72
	rra                                              ; $591a: $1f
	add hl, de                                       ; $591b: $19
	ld c, $02                                        ; $591c: $0e $02
	ld c, $86                                        ; $591e: $0e $86
	ld c, [hl]                                       ; $5920: $4e
	add d                                            ; $5921: $82
	rst $38                                          ; $5922: $ff
	sub a                                            ; $5923: $97
	rst $38                                          ; $5924: $ff
	ld c, a                                          ; $5925: $4f
	ldh [$e0], a                                     ; $5926: $e0 $e0
	ld l, a                                          ; $5928: $6f
	dec b                                            ; $5929: $05
	ld e, a                                          ; $592a: $5f
	cp $85                                           ; $592b: $fe $85
	ld a, b                                          ; $592d: $78

jr_017_592e:
	jr nz, jr_017_592e                               ; $592e: $20 $fe

	ld a, [de]                                       ; $5930: $1a
	jr jr_017_5944                                   ; $5931: $18 $11

	db $fc                                           ; $5933: $fc
	ld c, $f8                                        ; $5934: $0e $f8
	add a                                            ; $5936: $87
	add h                                            ; $5937: $84
	inc bc                                           ; $5938: $03
	ld [bc], a                                       ; $5939: $02
	inc bc                                           ; $593a: $03
	jp $0400                                         ; $593b: $c3 $00 $04


	nop                                              ; $593e: $00
	inc b                                            ; $593f: $04
	inc b                                            ; $5940: $04
	nop                                              ; $5941: $00
	ld [bc], a                                       ; $5942: $02
	nop                                              ; $5943: $00

jr_017_5944:
	nop                                              ; $5944: $00
	ld [bc], a                                       ; $5945: $02
	ld [bc], a                                       ; $5946: $02
	ld [hl], e                                       ; $5947: $73
	sbc [hl]                                         ; $5948: $9e
	sub e                                            ; $5949: $93
	ld hl, sp+$08                                    ; $594a: $f8 $08
	ld hl, sp-$18                                    ; $594c: $f8 $e8
	cp b                                             ; $594e: $b8
	xor b                                            ; $594f: $a8
	jr c, jr_017_597a                                ; $5950: $38 $28

	ld a, b                                          ; $5952: $78
	ld c, b                                          ; $5953: $48
	ld a, b                                          ; $5954: $78
	ld a, b                                          ; $5955: $78
	ld [hl], e                                       ; $5956: $73
	ld b, b                                          ; $5957: $40
	sub h                                            ; $5958: $94
	add d                                            ; $5959: $82
	ld a, a                                          ; $595a: $7f
	ld a, [hl]                                       ; $595b: $7e
	rlca                                             ; $595c: $07
	ld b, $07                                        ; $595d: $06 $07
	dec b                                            ; $595f: $05
	ld c, $0a                                        ; $5960: $0e $0a
	inc c                                            ; $5962: $0c
	inc c                                            ; $5963: $0c
	ld l, [hl]                                       ; $5964: $6e
	ld b, h                                          ; $5965: $44
	halt                                             ; $5966: $76
	pop af                                           ; $5967: $f1
	sbc e                                            ; $5968: $9b
	ldh [$a0], a                                     ; $5969: $e0 $a0
	ldh [$60], a                                     ; $596b: $e0 $60
	ld a, d                                          ; $596d: $7a
	add h                                            ; $596e: $84
	cp $93                                           ; $596f: $fe $93
	rst AddAOntoHL                                          ; $5971: $ef
	ld [$1aff], a                                    ; $5972: $ea $ff $1a
	rst $38                                          ; $5975: $ff
	ld d, d                                          ; $5976: $52
	rst $38                                          ; $5977: $ff
	ld d, [hl]                                       ; $5978: $56
	ei                                               ; $5979: $fb

jr_017_597a:
	ld a, [bc]                                       ; $597a: $0a
	pop af                                           ; $597b: $f1
	pop af                                           ; $597c: $f1
	ld l, e                                          ; $597d: $6b
	ld d, [hl]                                       ; $597e: $56
	jp c, $fb01                                      ; $597f: $da $01 $fb

	sbc l                                            ; $5982: $9d
	xor $aa                                          ; $5983: $ee $aa
	ld l, e                                          ; $5985: $6b
	cp $9c                                           ; $5986: $fe $9c
	ld l, d                                          ; $5988: $6a
	adc $ce                                          ; $5989: $ce $ce
	db $fd                                           ; $598b: $fd
	rst SubAFromDE                                          ; $598c: $df
	rrca                                             ; $598d: $0f
	ld l, a                                          ; $598e: $6f
	ld a, [$0f9d]                                    ; $598f: $fa $9d $0f
	ld [$f66f], sp                                   ; $5992: $08 $6f $f6
	sbc l                                            ; $5995: $9d
	ldh [rAUD4LEN], a                                ; $5996: $e0 $20
	ld l, e                                          ; $5998: $6b
	cp $9c                                           ; $5999: $fe $9c
	and b                                            ; $599b: $a0
	ld h, b                                          ; $599c: $60
	ld h, b                                          ; $599d: $60
	ld [hl], e                                       ; $599e: $73
	sub b                                            ; $599f: $90
	sbc h                                            ; $59a0: $9c
	and l                                            ; $59a1: $a5
	rst $38                                          ; $59a2: $ff
	add l                                            ; $59a3: $85
	ld a, e                                          ; $59a4: $7b
	db $fc                                           ; $59a5: $fc
	sbc d                                            ; $59a6: $9a
	and b                                            ; $59a7: $a0
	rst $38                                          ; $59a8: $ff
	xor a                                            ; $59a9: $af
	ld [hl], b                                       ; $59aa: $70
	ld [hl], b                                       ; $59ab: $70
	ld l, a                                          ; $59ac: $6f
	or d                                             ; $59ad: $b2
	ld a, e                                          ; $59ae: $7b
	ld e, d                                          ; $59af: $5a
	ld a, e                                          ; $59b0: $7b
	cp $67                                           ; $59b1: $fe $67
	or b                                             ; $59b3: $b0
	rst SubAFromDE                                          ; $59b4: $df
	ld b, b                                          ; $59b5: $40
	ld [hl], a                                       ; $59b6: $77
	db $fd                                           ; $59b7: $fd
	halt                                             ; $59b8: $76
	jp z, $80dd                                      ; $59b9: $ca $dd $80

	ld a, a                                          ; $59bc: $7f
	ld a, [$e86e]                                    ; $59bd: $fa $6e $e8
	ld l, a                                          ; $59c0: $6f
	ld b, b                                          ; $59c1: $40
	ld a, a                                          ; $59c2: $7f
	jr c, @+$81                                      ; $59c3: $38 $7f

	db $fd                                           ; $59c5: $fd
	rst SubAFromDE                                          ; $59c6: $df
	ldh a, [$9d]                                     ; $59c7: $f0 $9d
	ld hl, sp+$18                                    ; $59c9: $f8 $18
	ld [hl], a                                       ; $59cb: $77
	ld a, $7f                                        ; $59cc: $3e $7f
	db $fc                                           ; $59ce: $fc
	ld [hl], a                                       ; $59cf: $77
	ld [hl], $7f                                     ; $59d0: $36 $7f
	cp $df                                           ; $59d2: $fe $df
	ld bc, $407f                                     ; $59d4: $01 $7f $40
	ld a, a                                          ; $59d7: $7f
	inc a                                            ; $59d8: $3c
	sbc l                                            ; $59d9: $9d
	rst $38                                          ; $59da: $ff
	cp d                                             ; $59db: $ba
	ld a, e                                          ; $59dc: $7b
	cp $73                                           ; $59dd: $fe $73
	ld a, [$427b]                                    ; $59df: $fa $7b $42
	halt                                             ; $59e2: $76
	sub e                                            ; $59e3: $93
	sbc [hl]                                         ; $59e4: $9e
	ld b, b                                          ; $59e5: $40
	ld h, a                                          ; $59e6: $67
	cp $df                                           ; $59e7: $fe $df
	db $ed                                           ; $59e9: $ed
	sbc l                                            ; $59ea: $9d
	rst $38                                          ; $59eb: $ff
	rla                                              ; $59ec: $17
	sbc $ff                                          ; $59ed: $de $ff
	ld a, [hl]                                       ; $59ef: $7e
	add hl, hl                                       ; $59f0: $29
	sbc b                                            ; $59f1: $98
	rst FarCall                                          ; $59f2: $f7
	db $fd                                           ; $59f3: $fd
	dec d                                            ; $59f4: $15
	rst $38                                          ; $59f5: $ff
	rst FarCall                                          ; $59f6: $f7
	rst $38                                          ; $59f7: $ff
	db $10                                           ; $59f8: $10
	ld l, a                                          ; $59f9: $6f
	ld b, b                                          ; $59fa: $40
	ld [hl], a                                       ; $59fb: $77
	sub b                                            ; $59fc: $90
	ld [hl], a                                       ; $59fd: $77
	adc [hl]                                         ; $59fe: $8e
	rst SubAFromDE                                          ; $59ff: $df
	ld bc, $eede                                     ; $5a00: $01 $de $ee
	sbc [hl]                                         ; $5a03: $9e
	ld a, [hl+]                                      ; $5a04: $2a
	ld [hl], e                                       ; $5a05: $73
	ld b, b                                          ; $5a06: $40
	ld a, a                                          ; $5a07: $7f
	ld a, [$ea9e]                                    ; $5a08: $fa $9e $ea
	ld a, e                                          ; $5a0b: $7b
	cp $9e                                           ; $5a0c: $fe $9e
	ld a, [hl+]                                      ; $5a0e: $2a
	sbc $1f                                          ; $5a0f: $de $1f
	sbc h                                            ; $5a11: $9c
	db $10                                           ; $5a12: $10
	rra                                              ; $5a13: $1f
	rra                                              ; $5a14: $1f
	ld [hl], e                                       ; $5a15: $73
	ld b, b                                          ; $5a16: $40
	sbc [hl]                                         ; $5a17: $9e
	dec bc                                           ; $5a18: $0b
	ld a, e                                          ; $5a19: $7b
	cp $9e                                           ; $5a1a: $fe $9e
	ld [$deef], sp                                   ; $5a1c: $08 $ef $de
	ldh [$7b], a                                     ; $5a1f: $e0 $7b
	ld [hl-], a                                      ; $5a21: $32
	ld [hl], e                                       ; $5a22: $73
	cp $77                                           ; $5a23: $fe $77
	ld hl, sp-$70                                    ; $5a25: $f8 $90
	ldh [rIE], a                                     ; $5a27: $e0 $ff
	cp a                                             ; $5a29: $bf
	rst $38                                          ; $5a2a: $ff
	ld h, b                                          ; $5a2b: $60
	rst $38                                          ; $5a2c: $ff
	rst GetHLinHL                                          ; $5a2d: $cf
	rst $38                                          ; $5a2e: $ff
	ld a, [hl+]                                      ; $5a2f: $2a
	rst $38                                          ; $5a30: $ff
	ld l, d                                          ; $5a31: $6a
	rst $38                                          ; $5a32: $ff
	ret nz                                           ; $5a33: $c0

	rst $38                                          ; $5a34: $ff
	dec c                                            ; $5a35: $0d
	ld [hl], e                                       ; $5a36: $73
	ld l, $df                                        ; $5a37: $2e $df
	inc bc                                           ; $5a39: $03
	ld a, a                                          ; $5a3a: $7f
	ld l, $75                                        ; $5a3b: $2e $75
	ld sp, $287b                                     ; $5a3d: $31 $7b $28
	ld d, [hl]                                       ; $5a40: $56
	ld h, l                                          ; $5a41: $65
	ld a, a                                          ; $5a42: $7f
	jr z, @+$79                                      ; $5a43: $28 $77

	db $fd                                           ; $5a45: $fd
	di                                               ; $5a46: $f3
	ld a, l                                          ; $5a47: $7d
	adc $9a                                          ; $5a48: $ce $9a
	rrca                                             ; $5a4a: $0f
	ldh a, [rSC]                                     ; $5a4b: $f0 $02
	inc b                                            ; $5a4d: $04
	ld bc, $636e                                     ; $5a4e: $01 $6e $63
	ld a, e                                          ; $5a51: $7b
	cp $75                                           ; $5a52: $fe $75
	cp h                                             ; $5a54: $bc
	sbc h                                            ; $5a55: $9c
	jr c, jr_017_5a9c                                ; $5a56: $38 $44

	nop                                              ; $5a58: $00
	ld a, e                                          ; $5a59: $7b
	ld e, b                                          ; $5a5a: $58
	ld h, a                                          ; $5a5b: $67
	ldh [$7f], a                                     ; $5a5c: $e0 $7f
	cp $9c                                           ; $5a5e: $fe $9c
	inc e                                            ; $5a60: $1c
	ld [hl+], a                                      ; $5a61: $22
	nop                                              ; $5a62: $00
	ld h, e                                          ; $5a63: $63
	ld a, b                                          ; $5a64: $78
	ld a, c                                          ; $5a65: $79
	ld h, a                                          ; $5a66: $67
	ld a, e                                          ; $5a67: $7b
	db $fd                                           ; $5a68: $fd
	ld d, a                                          ; $5a69: $57
	ret nz                                           ; $5a6a: $c0

	sbc e                                            ; $5a6b: $9b
	ldh a, [rIF]                                     ; $5a6c: $f0 $0f
	add b                                            ; $5a6e: $80
	jr nz, jr_017_5aea                               ; $5a6f: $20 $79

	dec b                                            ; $5a71: $05
	halt                                             ; $5a72: $76
	bit 7, e                                         ; $5a73: $cb $7b
	cp $77                                           ; $5a75: $fe $77
	ret nc                                           ; $5a77: $d0

	sbc h                                            ; $5a78: $9c
	xor d                                            ; $5a79: $aa
	nop                                              ; $5a7a: $00
	ld d, l                                          ; $5a7b: $55
	ld a, e                                          ; $5a7c: $7b
	db $fc                                           ; $5a7d: $fc
	ld h, l                                          ; $5a7e: $65
	ld h, b                                          ; $5a7f: $60
	call $6dff                                       ; $5a80: $cd $ff $6d
	ld d, e                                          ; $5a83: $53
	ld [hl], l                                       ; $5a84: $75
	ld b, [hl]                                       ; $5a85: $46
	cp [hl]                                          ; $5a86: $be
	ld bc, $82fe                                     ; $5a87: $01 $fe $82
	ld bc, $0000                                     ; $5a8a: $01 $00 $00
	inc b                                            ; $5a8d: $04
	rlca                                             ; $5a8e: $07
	inc de                                           ; $5a8f: $13
	sbc h                                            ; $5a90: $9c
	rst GetHLinHL                                          ; $5a91: $cf
	rst FarCall                                          ; $5a92: $f7
	ld a, [hl-]                                      ; $5a93: $3a
	ld l, a                                          ; $5a94: $6f
	dec b                                            ; $5a95: $05
	ld d, a                                          ; $5a96: $57
	inc b                                            ; $5a97: $04
	ld d, l                                          ; $5a98: $55
	ld c, c                                          ; $5a99: $49
	ld a, a                                          ; $5a9a: $7f
	dec l                                            ; $5a9b: $2d

jr_017_5a9c:
	ccf                                              ; $5a9c: $3f
	rra                                              ; $5a9d: $1f
	ld a, $0f                                        ; $5a9e: $3e $0f
	inc a                                            ; $5aa0: $3c
	rrca                                             ; $5aa1: $0f
	inc [hl]                                         ; $5aa2: $34
	rrca                                             ; $5aa3: $0f
	ld [hl-], a                                      ; $5aa4: $32
	rlca                                             ; $5aa5: $07
	add hl, sp                                       ; $5aa6: $39
	db $fd                                           ; $5aa7: $fd
	add b                                            ; $5aa8: $80
	ld h, b                                          ; $5aa9: $60
	ldh [hDisp0_WY], a                                     ; $5aaa: $e0 $88
	ld hl, sp-$3c                                    ; $5aac: $f8 $c4
	inc a                                            ; $5aae: $3c
	ldh [c], a                                       ; $5aaf: $e2
	ld e, $90                                        ; $5ab0: $1e $90
	xor $69                                          ; $5ab2: $ee $69
	rst FarCall                                          ; $5ab4: $f7
	add b                                            ; $5ab5: $80
	ccf                                              ; $5ab6: $3f
	inc d                                            ; $5ab7: $14
	rst $38                                          ; $5ab8: $ff
	ld [hl], h                                       ; $5ab9: $74
	rst SubAFromDE                                          ; $5aba: $df
	ld hl, sp-$11                                    ; $5abb: $f8 $ef
	db $fc                                           ; $5abd: $fc
	ld h, a                                          ; $5abe: $67
	db $fc                                           ; $5abf: $fc
	ld c, a                                          ; $5ac0: $4f
	db $f4                                           ; $5ac1: $f4
	sbc a                                            ; $5ac2: $9f

Jump_017_5ac3:
	db $e4                                           ; $5ac3: $e4
	ccf                                              ; $5ac4: $3f
	rlca                                             ; $5ac5: $07
	ld a, [hl-]                                      ; $5ac6: $3a
	rra                                              ; $5ac7: $1f
	sbc h                                            ; $5ac8: $9c
	dec [hl]                                         ; $5ac9: $35
	rra                                              ; $5aca: $1f
	jr z, jr_017_5b48                                ; $5acb: $28 $7b

	cp $93                                           ; $5acd: $fe $93
	inc d                                            ; $5acf: $14
	ld [$040f], sp                                   ; $5ad0: $08 $0f $04
	rlca                                             ; $5ad3: $07
	ld b, $03                                        ; $5ad4: $06 $03
	rlca                                             ; $5ad6: $07
	ld bc, $0103                                     ; $5ad7: $01 $03 $01
	inc bc                                           ; $5ada: $03
	ld a, e                                          ; $5adb: $7b
	xor l                                            ; $5adc: $ad
	ld a, e                                          ; $5add: $7b
	cp $7f                                           ; $5ade: $fe $7f
	ld hl, sp+$7f                                    ; $5ae0: $f8 $7f
	ldh a, [c]                                       ; $5ae2: $f2
	adc b                                            ; $5ae3: $88
	rlca                                             ; $5ae4: $07
	db $f4                                           ; $5ae5: $f4
	ld c, a                                          ; $5ae6: $4f
	db $fc                                           ; $5ae7: $fc

jr_017_5ae8:
	add a                                            ; $5ae8: $87

jr_017_5ae9:
	db $fc                                           ; $5ae9: $fc

jr_017_5aea:
	ld l, $fe                                        ; $5aea: $2e $fe
	ld [de], a                                       ; $5aec: $12
	db $fc                                           ; $5aed: $fc
	inc h                                            ; $5aee: $24
	jr jr_017_5ae9                                   ; $5aef: $18 $f8

	jr nc, @-$3e                                     ; $5af1: $30 $c0

	ld [hl], b                                       ; $5af3: $70
	add b                                            ; $5af4: $80
	ldh a, [rP1]                                     ; $5af5: $f0 $00
	ldh a, [rP1]                                     ; $5af7: $f0 $00
	ldh [$80], a                                     ; $5af9: $e0 $80
	ld [hl], e                                       ; $5afb: $73
	cp $8a                                           ; $5afc: $fe $8a
	ldh [$f0], a                                     ; $5afe: $e0 $f0
	sub b                                            ; $5b00: $90
	ld hl, sp+$78                                    ; $5b01: $f8 $78
	jp $e7a4                                         ; $5b03: $c3 $a4 $e7


	ld e, b                                          ; $5b06: $58
	rst $38                                          ; $5b07: $ff
	add d                                            ; $5b08: $82
	rst $38                                          ; $5b09: $ff
	add c                                            ; $5b0a: $81
	rst $38                                          ; $5b0b: $ff
	ld b, d                                          ; $5b0c: $42
	add c                                            ; $5b0d: $81
	rst $38                                          ; $5b0e: $ff
	ld b, b                                          ; $5b0f: $40
	ld a, h                                          ; $5b10: $7c
	jr nz, jr_017_5b4b                               ; $5b11: $20 $38

	db $dd                                           ; $5b13: $dd
	db $10                                           ; $5b14: $10
	db $db                                           ; $5b15: $db
	ld [$1edf], sp                                   ; $5b16: $08 $df $1e
	sbc e                                            ; $5b19: $9b
	ccf                                              ; $5b1a: $3f
	add hl, sp                                       ; $5b1b: $39
	ld a, a                                          ; $5b1c: $7f
	ld [hl], a                                       ; $5b1d: $77
	inc bc                                           ; $5b1e: $03
	ld h, b                                          ; $5b1f: $60
	ld c, e                                          ; $5b20: $4b
	ld h, b                                          ; $5b21: $60
	sbc [hl]                                         ; $5b22: $9e
	nop                                              ; $5b23: $00
	ld e, e                                          ; $5b24: $5b
	ld h, b                                          ; $5b25: $60
	sbc e                                            ; $5b26: $9b
	ld a, [$ff9f]                                    ; $5b27: $fa $9f $ff
	inc a                                            ; $5b2a: $3c
	jp hl                                            ; $5b2b: $e9


	sub a                                            ; $5b2c: $97
	jr nc, @+$22                                     ; $5b2d: $30 $20

	ld h, b                                          ; $5b2f: $60
	ld b, b                                          ; $5b30: $40
	ldh [rP1], a                                     ; $5b31: $e0 $00
	ldh a, [$30]                                     ; $5b33: $f0 $30
	ei                                               ; $5b35: $fb
	sbc d                                            ; $5b36: $9a
	rrca                                             ; $5b37: $0f
	ld [$000f], sp                                   ; $5b38: $08 $0f $00
	ld [bc], a                                       ; $5b3b: $02
	db $ec                                           ; $5b3c: $ec
	sub d                                            ; $5b3d: $92
	rra                                              ; $5b3e: $1f
	ld [hl-], a                                      ; $5b3f: $32
	ccf                                              ; $5b40: $3f
	ld hl, $88ff                                     ; $5b41: $21 $ff $88
	rst $38                                          ; $5b44: $ff
	ld [$8487], sp                                   ; $5b45: $08 $87 $84

jr_017_5b48:
	nop                                              ; $5b48: $00
	inc bc                                           ; $5b49: $03
	ld [bc], a                                       ; $5b4a: $02

jr_017_5b4b:
	ld a, e                                          ; $5b4b: $7b
	ld h, $7b                                        ; $5b4c: $26 $7b
	cp $7f                                           ; $5b4e: $fe $7f
	ld sp, hl                                        ; $5b50: $f9
	ld [hl], e                                       ; $5b51: $73
	ld [hl+], a                                      ; $5b52: $22
	ld [hl], e                                       ; $5b53: $73
	jr nz, jr_017_5ae8                               ; $5b54: $20 $92

	dec b                                            ; $5b56: $05
	rst $38                                          ; $5b57: $ff
	ld b, h                                          ; $5b58: $44
	db $fc                                           ; $5b59: $fc
	add a                                            ; $5b5a: $87
	ldh a, [rIF]                                     ; $5b5b: $f0 $0f
	ldh a, [rAUD3ENA]                                ; $5b5d: $f0 $1a
	sub b                                            ; $5b5f: $90
	ld [hl], b                                       ; $5b60: $70
	db $10                                           ; $5b61: $10
	ldh [$73], a                                     ; $5b62: $e0 $73
	jr nz, @-$60                                     ; $5b64: $20 $9e

	sub b                                            ; $5b66: $90
	ld a, e                                          ; $5b67: $7b
	ld a, [hl+]                                      ; $5b68: $2a
	sub d                                            ; $5b69: $92
	ld c, b                                          ; $5b6a: $48
	db $fc                                           ; $5b6b: $fc
	ld a, h                                          ; $5b6c: $7c
	call c, $dc54                                    ; $5b6d: $dc $54 $dc
	call nc, $c8d8                                   ; $5b70: $d4 $d8 $c8
	ret nz                                           ; $5b73: $c0

	ld b, b                                          ; $5b74: $40
	add b                                            ; $5b75: $80
	add b                                            ; $5b76: $80
	db $e3                                           ; $5b77: $e3
	add b                                            ; $5b78: $80
	jp $e724                                         ; $5b79: $c3 $24 $e7


	jr @+$01                                         ; $5b7c: $18 $ff

	add b                                            ; $5b7e: $80
	rst $38                                          ; $5b7f: $ff
	add c                                            ; $5b80: $81
	ld a, c                                          ; $5b81: $79
	ld b, a                                          ; $5b82: $47
	nop                                              ; $5b83: $00
	ld a, $40                                        ; $5b84: $3e $40
	ld e, h                                          ; $5b86: $5c
	nop                                              ; $5b87: $00
	ld [$0909], sp                                   ; $5b88: $08 $09 $09
	ld hl, $0421                                     ; $5b8b: $21 $21 $04
	inc b                                            ; $5b8e: $04
	inc bc                                           ; $5b8f: $03
	inc bc                                           ; $5b90: $03
	ld de, $1911                                     ; $5b91: $11 $11 $19
	add hl, de                                       ; $5b94: $19
	dec a                                            ; $5b95: $3d
	inc a                                            ; $5b96: $3c
	ld a, h                                          ; $5b97: $7c
	sbc [hl]                                         ; $5b98: $9e
	ld d, h                                          ; $5b99: $54
	inc sp                                           ; $5b9a: $33
	nop                                              ; $5b9b: $00
	sbc b                                            ; $5b9c: $98
	dec sp                                           ; $5b9d: $3b
	rra                                              ; $5b9e: $1f
	inc a                                            ; $5b9f: $3c
	rrca                                             ; $5ba0: $0f
	ld a, [hl-]                                      ; $5ba1: $3a
	rrca                                             ; $5ba2: $0f
	jr nc, jr_017_5bac                               ; $5ba3: $30 $07

	nop                                              ; $5ba5: $00
	halt                                             ; $5ba6: $76
	ld h, b                                          ; $5ba7: $60
	jp hl                                            ; $5ba8: $e9


	ld a, a                                          ; $5ba9: $7f
	ld a, [hl-]                                      ; $5baa: $3a
	ld a, a                                          ; $5bab: $7f

jr_017_5bac:
	cp $7a                                           ; $5bac: $fe $7a
	ld d, c                                          ; $5bae: $51
	ld a, [$f37f]                                    ; $5baf: $fa $7f $f3
	add a                                            ; $5bb2: $87
	add hl, bc                                       ; $5bb3: $09
	ld c, [hl]                                       ; $5bb4: $4e
	ld c, c                                          ; $5bb5: $49
	ld [hl], a                                       ; $5bb6: $77
	ld a, [hl+]                                      ; $5bb7: $2a
	ccf                                              ; $5bb8: $3f
	ld bc, $0135                                     ; $5bb9: $01 $35 $01
	dec [hl]                                         ; $5bbc: $35
	jr nz, jr_017_5bfe                               ; $5bbd: $20 $3f

	rla                                              ; $5bbf: $17
	rra                                              ; $5bc0: $1f
	rrca                                             ; $5bc1: $0f
	rra                                              ; $5bc2: $1f
	adc a                                            ; $5bc3: $8f
	sub [hl]                                         ; $5bc4: $96
	adc a                                            ; $5bc5: $8f
	ld a, [de]                                       ; $5bc6: $1a
	rst JumpTable                                          ; $5bc7: $c7
	ld e, c                                          ; $5bc8: $59
	db $e3                                           ; $5bc9: $e3
	inc e                                            ; $5bca: $1c
	cp $82                                           ; $5bcb: $fe $82
	add b                                            ; $5bcd: $80
	jr nc, @+$72                                     ; $5bce: $30 $70

	ld b, h                                          ; $5bd0: $44
	db $fc                                           ; $5bd1: $fc
	ldh a, [c]                                       ; $5bd2: $f2
	ld c, $f9                                        ; $5bd3: $0e $f9
	rst JumpTable                                          ; $5bd5: $c7
	and h                                            ; $5bd6: $a4
	ei                                               ; $5bd7: $fb
	ld e, b                                          ; $5bd8: $58
	rst $38                                          ; $5bd9: $ff
	nop                                              ; $5bda: $00
	ld c, a                                          ; $5bdb: $4f
	ld c, d                                          ; $5bdc: $4a
	rst $38                                          ; $5bdd: $ff
	ld a, [$fc6f]                                    ; $5bde: $fa $6f $fc
	ld [hl], a                                       ; $5be1: $77
	db $fc                                           ; $5be2: $fc
	inc sp                                           ; $5be3: $33
	db $fc                                           ; $5be4: $fc
	daa                                              ; $5be5: $27
	ld hl, sp+$4f                                    ; $5be6: $f8 $4f
	ldh a, [$9f]                                     ; $5be8: $f0 $9f
	di                                               ; $5bea: $f3
	ld a, e                                          ; $5beb: $7b
	ld [de], a                                       ; $5bec: $12
	ld c, e                                          ; $5bed: $4b
	cp $9b                                           ; $5bee: $fe $9b
	rst $38                                          ; $5bf0: $ff
	add e                                            ; $5bf1: $83
	ccf                                              ; $5bf2: $3f
	inc h                                            ; $5bf3: $24
	ld a, c                                          ; $5bf4: $79
	rst SubAFromBC                                          ; $5bf5: $e7
	ld a, e                                          ; $5bf6: $7b
	sub b                                            ; $5bf7: $90
	ld l, $c0                                        ; $5bf8: $2e $c0
	adc [hl]                                         ; $5bfa: $8e
	db $fc                                           ; $5bfb: $fc
	cpl                                              ; $5bfc: $2f
	rst $38                                          ; $5bfd: $ff

jr_017_5bfe:
	jp $04ff                                         ; $5bfe: $c3 $ff $04


	rst $38                                          ; $5c01: $ff
	inc c                                            ; $5c02: $0c
	di                                               ; $5c03: $f3
	ld de, $f000                                     ; $5c04: $11 $00 $f0
	db $10                                           ; $5c07: $10
	ldh [rSVBK], a                                   ; $5c08: $e0 $70
	ret nz                                           ; $5c0a: $c0

	ldh a, [$6e]                                     ; $5c0b: $f0 $6e
	cp [hl]                                          ; $5c0d: $be
	add b                                            ; $5c0e: $80
	ld a, b                                          ; $5c0f: $78
	ld hl, sp+$68                                    ; $5c10: $f8 $68
	ld hl, sp-$58                                    ; $5c12: $f8 $a8
	ret nc                                           ; $5c14: $d0

	ret nc                                           ; $5c15: $d0

	ret nz                                           ; $5c16: $c0

	ld b, b                                          ; $5c17: $40
	pop hl                                           ; $5c18: $e1
	ld [hl-], a                                      ; $5c19: $32
	di                                               ; $5c1a: $f3
	ld c, h                                          ; $5c1b: $4c
	rst $38                                          ; $5c1c: $ff
	ld b, b                                          ; $5c1d: $40
	ld a, a                                          ; $5c1e: $7f
	nop                                              ; $5c1f: $00
	ccf                                              ; $5c20: $3f
	ld hl, $3f00                                     ; $5c21: $21 $00 $3f
	nop                                              ; $5c24: $00
	ld e, $04                                        ; $5c25: $1e $04
	inc c                                            ; $5c27: $0c
	ld [$2908], sp                                   ; $5c28: $08 $08 $29
	add hl, hl                                       ; $5c2b: $29
	add hl, bc                                       ; $5c2c: $09
	add hl, bc                                       ; $5c2d: $09
	rst SubAFromDE                                          ; $5c2e: $df
	rlca                                             ; $5c2f: $07
	rst SubAFromDE                                          ; $5c30: $df
	ld d, $df                                        ; $5c31: $16 $df
	ld a, [de]                                       ; $5c33: $1a
	rst SubAFromDE                                          ; $5c34: $df
	dec a                                            ; $5c35: $3d
	ld a, d                                          ; $5c36: $7a
	ldh [$7b], a                                     ; $5c37: $e0 $7b
	sbc h                                            ; $5c39: $9c
	rst SubAFromDE                                          ; $5c3a: $df
	add b                                            ; $5c3b: $80
	ld a, a                                          ; $5c3c: $7f
	ret c                                            ; $5c3d: $d8

	sbc e                                            ; $5c3e: $9b
	ld hl, sp+$08                                    ; $5c3f: $f8 $08

jr_017_5c41:
	ld h, b                                          ; $5c41: $60
	jr nz, jr_017_5c41                               ; $5c42: $20 $fd

	ld b, d                                          ; $5c44: $42
	ld bc, $85fb                                     ; $5c45: $01 $fb $85
	ld c, $0f                                        ; $5c48: $0e $0f
	ld hl, $4f3f                                     ; $5c4a: $21 $3f $4f
	ld [hl], b                                       ; $5c4d: $70
	rra                                              ; $5c4e: $1f

jr_017_5c4f:
	ld h, e                                          ; $5c4f: $63
	inc l                                            ; $5c50: $2c
	rst SubAFromDE                                          ; $5c51: $df
	dec d                                            ; $5c52: $15
	rst $38                                          ; $5c53: $ff
	jr z, jr_017_5c4f                                ; $5c54: $28 $f9

	add hl, bc                                       ; $5c56: $09
	rst $38                                          ; $5c57: $ff
	dec e                                            ; $5c58: $1d
	rst $38                                          ; $5c59: $ff
	ccf                                              ; $5c5a: $3f
	xor $3f                                          ; $5c5b: $ee $3f
	call z, $e43f                                    ; $5c5d: $cc $3f $e4
	rra                                              ; $5c60: $1f
	di                                               ; $5c61: $f3
	db $fc                                           ; $5c62: $fc
	add b                                            ; $5c63: $80
	add b                                            ; $5c64: $80
	nop                                              ; $5c65: $00
	nop                                              ; $5c66: $00
	ret nz                                           ; $5c67: $c0

	ret nz                                           ; $5c68: $c0

	sub b                                            ; $5c69: $90
	ld [hl], b                                       ; $5c6a: $70
	add sp, -$67                                     ; $5c6b: $e8 $99
	and h                                            ; $5c6d: $a4
	cp $40                                           ; $5c6e: $fe $40
	call nc, Call_017_5650                           ; $5c70: $d4 $50 $56
	ld [hl-], a                                      ; $5c73: $32
	cp $62                                           ; $5c74: $fe $62

Jump_017_5c76:
	cp $f4                                           ; $5c76: $fe $f4
	db $fc                                           ; $5c78: $fc
	ld hl, sp-$38                                    ; $5c79: $f8 $c8
	ld hl, sp+$58                                    ; $5c7b: $f8 $58
	ret z                                            ; $5c7d: $c8

	jr c, jr_017_5c8f                                ; $5c7e: $38 $0f

	ld hl, sp+$1f                                    ; $5c80: $f8 $1f
	rst $38                                          ; $5c82: $ff
	add b                                            ; $5c83: $80
	ccf                                              ; $5c84: $3f
	db $e3                                           ; $5c85: $e3
	ld a, a                                          ; $5c86: $7f
	bit 7, a                                         ; $5c87: $cb $7f
	inc a                                            ; $5c89: $3c
	ld a, a                                          ; $5c8a: $7f
	ld bc, $063f                                     ; $5c8b: $01 $3f $06
	inc de                                           ; $5c8e: $13

jr_017_5c8f:
	rra                                              ; $5c8f: $1f
	jr @+$09                                         ; $5c90: $18 $07

	ld e, $03                                        ; $5c92: $1e $03
	rra                                              ; $5c94: $1f
	ld [bc], a                                       ; $5c95: $02
	rra                                              ; $5c96: $1f
	nop                                              ; $5c97: $00
	ld e, $04                                        ; $5c98: $1e $04
	ld e, $1c                                        ; $5c9a: $1e $1c
	rra                                              ; $5c9c: $1f
	rlca                                             ; $5c9d: $07
	ccf                                              ; $5c9e: $3f
	daa                                              ; $5c9f: $27
	sub b                                            ; $5ca0: $90
	ld [hl], b                                       ; $5ca1: $70
	cp a                                             ; $5ca2: $bf
	rst SubAFromDE                                          ; $5ca3: $df
	rst $38                                          ; $5ca4: $ff
	sub e                                            ; $5ca5: $93
	ld h, c                                          ; $5ca6: $61
	cp $c6                                           ; $5ca7: $fe $c6
	cp $8a                                           ; $5ca9: $fe $8a
	db $fc                                           ; $5cab: $fc
	inc d                                            ; $5cac: $14
	ld hl, sp+$18                                    ; $5cad: $f8 $18
	ldh [$e0], a                                     ; $5caf: $e0 $e0
	nop                                              ; $5cb1: $00
	sbc $80                                          ; $5cb2: $de $80
	rst FarCall                                          ; $5cb4: $f7
	rst SubAFromDE                                          ; $5cb5: $df
	add b                                            ; $5cb6: $80
	rst SubAFromDE                                          ; $5cb7: $df
	add c                                            ; $5cb8: $81
	rst SubAFromDE                                          ; $5cb9: $df
	ei                                               ; $5cba: $fb
	add e                                            ; $5cbb: $83
	rst $38                                          ; $5cbc: $ff
	ld [hl], $ff                                     ; $5cbd: $36 $ff
	cp h                                             ; $5cbf: $bc
	rst GetHLinHL                                          ; $5cc0: $cf
	ret z                                            ; $5cc1: $c8

	rra                                              ; $5cc2: $1f
	ld de, $617f                                     ; $5cc3: $11 $7f $61
	ld a, $fe                                        ; $5cc6: $3e $fe
	nop                                              ; $5cc8: $00
	ld a, b                                          ; $5cc9: $78
	jr z, jr_017_5d04                                ; $5cca: $28 $38

	jr nz, jr_017_5cee                               ; $5ccc: $20 $20

	nop                                              ; $5cce: $00
	nop                                              ; $5ccf: $00
	ld b, b                                          ; $5cd0: $40
	ld b, b                                          ; $5cd1: $40
	ret nz                                           ; $5cd2: $c0

	ret nz                                           ; $5cd3: $c0

	ldh a, [rSVBK]                                   ; $5cd4: $f0 $70
	ret z                                            ; $5cd6: $c8

	ret z                                            ; $5cd7: $c8

	ld [hl], e                                       ; $5cd8: $73
	and b                                            ; $5cd9: $a0
	sub [hl]                                         ; $5cda: $96
	and $7f                                          ; $5cdb: $e6 $7f
	ret                                              ; $5cdd: $c9


	ld a, a                                          ; $5cde: $7f
	ld sp, SetWramBankToHighByteInStackAfterReturn                                     ; $5cdf: $31 $7f $07
	ccf                                              ; $5ce2: $3f
	ld c, $23                                        ; $5ce3: $0e $23
	and b                                            ; $5ce5: $a0
	sbc [hl]                                         ; $5ce6: $9e
	ld b, [hl]                                       ; $5ce7: $46
	inc de                                           ; $5ce8: $13
	and b                                            ; $5ce9: $a0
	sub [hl]                                         ; $5cea: $96
	ld h, [hl]                                       ; $5ceb: $66
	sbc a                                            ; $5cec: $9f
	sub h                                            ; $5ced: $94

jr_017_5cee:
	rra                                              ; $5cee: $1f
	jr jr_017_5d70                                   ; $5cef: $18 $7f

	ld [hl], c                                       ; $5cf1: $71
	rst $38                                          ; $5cf2: $ff
	pop hl                                           ; $5cf3: $e1
	ccf                                              ; $5cf4: $3f
	and b                                            ; $5cf5: $a0
	rla                                              ; $5cf6: $17

jr_017_5cf7:
	nop                                              ; $5cf7: $00
	sbc l                                            ; $5cf8: $9d
	inc [hl]                                         ; $5cf9: $34
	rst AddAOntoHL                                          ; $5cfa: $ef
	rrca                                             ; $5cfb: $0f
	nop                                              ; $5cfc: $00
	sbc e                                            ; $5cfd: $9b
	ld a, b                                          ; $5cfe: $78
	ret c                                            ; $5cff: $d8

	ret z                                            ; $5d00: $c8

	jr c, jr_017_5cf7                                ; $5d01: $38 $f4

	sbc [hl]                                         ; $5d03: $9e

jr_017_5d04:
	ld bc, $fe3b                                     ; $5d04: $01 $3b $fe
	ld [hl], e                                       ; $5d07: $73
	and d                                            ; $5d08: $a2
	add l                                            ; $5d09: $85
	jr nz, jr_017_5d4b                               ; $5d0a: $20 $3f

	rrca                                             ; $5d0c: $0f
	ld [hl], b                                       ; $5d0d: $70
	sbc h                                            ; $5d0e: $9c
	db $e3                                           ; $5d0f: $e3
	ccf                                              ; $5d10: $3f
	rst GetHLinHL                                          ; $5d11: $cf
	jr nz, @+$01                                     ; $5d12: $20 $ff

	ld b, l                                          ; $5d14: $45
	push de                                          ; $5d15: $d5
	dec d                                            ; $5d16: $15
	rst $38                                          ; $5d17: $ff
	ld h, a                                          ; $5d18: $67
	rst $38                                          ; $5d19: $ff
	ld a, a                                          ; $5d1a: $7f
	db $fd                                           ; $5d1b: $fd
	ld a, a                                          ; $5d1c: $7f
	reti                                             ; $5d1d: $d9


	ld a, a                                          ; $5d1e: $7f
	adc h                                            ; $5d1f: $8c
	ld h, b                                          ; $5d20: $60
	rst SubAFromDE                                          ; $5d21: $df
	ccf                                              ; $5d22: $3f
	and $6f                                          ; $5d23: $e6 $6f
	and d                                            ; $5d25: $a2
	rst SubAFromDE                                          ; $5d26: $df
	add b                                            ; $5d27: $80
	add a                                            ; $5d28: $87
	jr nz, @-$1e                                     ; $5d29: $20 $e0

	ret nc                                           ; $5d2b: $d0

	ld [hl-], a                                      ; $5d2c: $32
	ld l, b                                          ; $5d2d: $68
	call c, $7850                                    ; $5d2e: $dc $50 $78
	jr nz, jr_017_5daf                               ; $5d31: $20 $7c

	ld b, b                                          ; $5d33: $40
	db $fc                                           ; $5d34: $fc
	ld b, b                                          ; $5d35: $40
	db $fc                                           ; $5d36: $fc
	db $e4                                           ; $5d37: $e4
	db $fc                                           ; $5d38: $fc
	add sp, -$68                                     ; $5d39: $e8 $98
	ldh a, [$d0]                                     ; $5d3b: $f0 $d0
	ld b, b                                          ; $5d3d: $40
	or b                                             ; $5d3e: $b0
	add b                                            ; $5d3f: $80
	ld [hl], b                                       ; $5d40: $70
	ld d, a                                          ; $5d41: $57
	cp b                                             ; $5d42: $b8
	db $ed                                           ; $5d43: $ed
	sbc c                                            ; $5d44: $99
	rra                                              ; $5d45: $1f
	ldh a, [$1f]                                     ; $5d46: $f0 $1f
	ldh [$3f], a                                     ; $5d48: $e0 $3f
	ret nz                                           ; $5d4a: $c0

jr_017_5d4b:
	ld a, e                                          ; $5d4b: $7b
	cp $92                                           ; $5d4c: $fe $92
	pop af                                           ; $5d4e: $f1
	cp a                                             ; $5d4f: $bf
	bit 7, a                                         ; $5d50: $cb $7f
	ld c, d                                          ; $5d52: $4a
	dec sp                                           ; $5d53: $3b
	rrca                                             ; $5d54: $0f
	inc a                                            ; $5d55: $3c
	rlca                                             ; $5d56: $07
	ld e, $0b                                        ; $5d57: $1e $0b
	rra                                              ; $5d59: $1f
	ld [de], a                                       ; $5d5a: $12
	ld e, d                                          ; $5d5b: $5a
	ldh [hDisp1_SCY], a                                     ; $5d5c: $e0 $90
	ldh a, [rIE]                                     ; $5d5e: $f0 $ff
	rst $38                                          ; $5d60: $ff
	cp $62                                           ; $5d61: $fe $62
	db $fc                                           ; $5d63: $fc
	call z, $94fc                                    ; $5d64: $cc $fc $94
	db $fc                                           ; $5d67: $fc
	inc h                                            ; $5d68: $24
	ld hl, sp+$38                                    ; $5d69: $f8 $38
	ret nz                                           ; $5d6b: $c0

	ret nz                                           ; $5d6c: $c0

	ld b, [hl]                                       ; $5d6d: $46
	ldh [$8b], a                                     ; $5d6e: $e0 $8b

jr_017_5d70:
	add hl, de                                       ; $5d70: $19
	sbc c                                            ; $5d71: $99
	sbc a                                            ; $5d72: $9f
	ld c, a                                          ; $5d73: $4f
	rst SubAFromDE                                          ; $5d74: $df
	ld h, $ff                                        ; $5d75: $26 $ff
	inc c                                            ; $5d77: $0c
	rst $38                                          ; $5d78: $ff
	add hl, de                                       ; $5d79: $19
	rst $38                                          ; $5d7a: $ff
	or d                                             ; $5d7b: $b2
	rst $38                                          ; $5d7c: $ff
	and e                                            ; $5d7d: $a3
	cp h                                             ; $5d7e: $bc
	db $fc                                           ; $5d7f: $fc
	ret nz                                           ; $5d80: $c0

	ld a, b                                          ; $5d81: $78
	xor b                                            ; $5d82: $a8
	cp b                                             ; $5d83: $b8
	ld d, [hl]                                       ; $5d84: $56
	ldh [$f8], a                                     ; $5d85: $e0 $f8
	ld bc, $dffd                                     ; $5d87: $01 $fd $df
	inc bc                                           ; $5d8a: $03
	add l                                            ; $5d8b: $85
	ld [$270f], sp                                   ; $5d8c: $08 $0f $27
	jr c, jr_017_5d9f                                ; $5d8f: $38 $0e

	ld sp, $6f17                                     ; $5d91: $31 $17 $6f
	adc d                                            ; $5d94: $8a
	rst $38                                          ; $5d95: $ff
	inc d                                            ; $5d96: $14
	db $fc                                           ; $5d97: $fc
	ld d, h                                          ; $5d98: $54
	rst $38                                          ; $5d99: $ff
	ld e, [hl]                                       ; $5d9a: $5e
	ei                                               ; $5d9b: $fb
	ld e, a                                          ; $5d9c: $5f
	rst FarCall                                          ; $5d9d: $f7
	ccf                                              ; $5d9e: $3f

jr_017_5d9f:
	db $e3                                           ; $5d9f: $e3
	ccf                                              ; $5da0: $3f
	ldh a, [c]                                       ; $5da1: $f2
	cpl                                              ; $5da2: $2f
	ld sp, hl                                        ; $5da3: $f9
	daa                                              ; $5da4: $27
	db $fc                                           ; $5da5: $fc
	cp $80                                           ; $5da6: $fe $80
	ld b, b                                          ; $5da8: $40
	add b                                            ; $5da9: $80
	add b                                            ; $5daa: $80
	and b                                            ; $5dab: $a0
	ldh [$c8], a                                     ; $5dac: $e0 $c8
	add hl, sp                                       ; $5dae: $39

jr_017_5daf:
	di                                               ; $5daf: $f3
	rst AddAOntoHL                                          ; $5db0: $ef
	ld d, b                                          ; $5db1: $50
	cp $a0                                           ; $5db2: $fe $a0
	ld [$aa20], a                                    ; $5db4: $ea $20 $aa
	sub d                                            ; $5db7: $92
	cp $b4                                           ; $5db8: $fe $b4
	db $fc                                           ; $5dba: $fc
	db $fc                                           ; $5dbb: $fc
	ld a, h                                          ; $5dbc: $7c
	db $fc                                           ; $5dbd: $fc
	inc a                                            ; $5dbe: $3c
	db $fc                                           ; $5dbf: $fc
	inc l                                            ; $5dc0: $2c
	db $f4                                           ; $5dc1: $f4
	ld e, h                                          ; $5dc2: $5c
	db $e4                                           ; $5dc3: $e4
	cp h                                             ; $5dc4: $bc
	daa                                              ; $5dc5: $27
	ei                                               ; $5dc6: $fb
	adc d                                            ; $5dc7: $8a
	ccf                                              ; $5dc8: $3f
	push af                                          ; $5dc9: $f5
	ccf                                              ; $5dca: $3f
	ld l, b                                          ; $5dcb: $68
	ld a, a                                          ; $5dcc: $7f
	ld l, h                                          ; $5dcd: $6c
	rra                                              ; $5dce: $1f
	inc d                                            ; $5dcf: $14
	ld [$040f], sp                                   ; $5dd0: $08 $0f $04
	rlca                                             ; $5dd3: $07
	ld b, $03                                        ; $5dd4: $06 $03
	rlca                                             ; $5dd6: $07
	ld bc, $0103                                     ; $5dd7: $01 $03 $01
	inc bc                                           ; $5dda: $03
	nop                                              ; $5ddb: $00
	ld bc, $fe77                                     ; $5ddc: $01 $77 $fe
	ld a, a                                          ; $5ddf: $7f
	ld hl, sp+$7f                                    ; $5de0: $f8 $7f
	ldh a, [c]                                       ; $5de2: $f2
	adc b                                            ; $5de3: $88
	rlca                                             ; $5de4: $07
	db $f4                                           ; $5de5: $f4
	call z, Call_017_54fc                            ; $5de6: $cc $fc $54

jr_017_5de9:
	db $fc                                           ; $5de9: $fc
	adc h                                            ; $5dea: $8c
	cp $02                                           ; $5deb: $fe $02
	db $fc                                           ; $5ded: $fc
	inc d                                            ; $5dee: $14
	jr jr_017_5de9                                   ; $5def: $18 $f8

	jr nc, @-$3e                                     ; $5df1: $30 $c0

	ld [hl], b                                       ; $5df3: $70
	add b                                            ; $5df4: $80
	ldh a, [rP1]                                     ; $5df5: $f0 $00
	ldh a, [rP1]                                     ; $5df7: $f0 $00
	ldh [$80], a                                     ; $5df9: $e0 $80
	ld [hl], e                                       ; $5dfb: $73
	cp $8a                                           ; $5dfc: $fe $8a
	ldh [$f0], a                                     ; $5dfe: $e0 $f0
	sub b                                            ; $5e00: $90
	ld hl, sp+$78                                    ; $5e01: $f8 $78
	rst $38                                          ; $5e03: $ff
	cp l                                             ; $5e04: $bd
	db $e3                                           ; $5e05: $e3
	dec d                                            ; $5e06: $15
	rst FarCall                                          ; $5e07: $f7
	adc b                                            ; $5e08: $88
	rst $38                                          ; $5e09: $ff
	ret nz                                           ; $5e0a: $c0

	ld a, a                                          ; $5e0b: $7f
	ld b, c                                          ; $5e0c: $41
	add c                                            ; $5e0d: $81
	rst $38                                          ; $5e0e: $ff
	ld b, b                                          ; $5e0f: $40
	ld a, h                                          ; $5e10: $7c
	jr nz, jr_017_5e4b                               ; $5e11: $20 $38

	db $dd                                           ; $5e13: $dd
	db $10                                           ; $5e14: $10
	db $db                                           ; $5e15: $db
	ld [$1edf], sp                                   ; $5e16: $08 $df $1e
	sbc e                                            ; $5e19: $9b
	ccf                                              ; $5e1a: $3f
	add hl, sp                                       ; $5e1b: $39
	ld a, a                                          ; $5e1c: $7f
	ld [hl], a                                       ; $5e1d: $77
	db $eb                                           ; $5e1e: $eb
	ld [hl], a                                       ; $5e1f: $77
	and b                                            ; $5e20: $a0
	ld a, a                                          ; $5e21: $7f
	sbc d                                            ; $5e22: $9a
	ld a, a                                          ; $5e23: $7f
	sub [hl]                                         ; $5e24: $96
	ld a, a                                          ; $5e25: $7f
	ld a, [$82fe]                                    ; $5e26: $fa $fe $82
	ld [bc], a                                       ; $5e29: $02
	ld bc, $0501                                     ; $5e2a: $01 $01 $05
	rlca                                             ; $5e2d: $07
	inc de                                           ; $5e2e: $13
	sbc h                                            ; $5e2f: $9c
	rst GetHLinHL                                          ; $5e30: $cf
	rst FarCall                                          ; $5e31: $f7
	ld a, [bc]                                       ; $5e32: $0a
	ld a, a                                          ; $5e33: $7f
	dec b                                            ; $5e34: $05
	ld d, a                                          ; $5e35: $57
	inc b                                            ; $5e36: $04
	ld d, l                                          ; $5e37: $55
	ld c, c                                          ; $5e38: $49
	ld a, a                                          ; $5e39: $7f
	dec l                                            ; $5e3a: $2d
	ccf                                              ; $5e3b: $3f
	ccf                                              ; $5e3c: $3f
	ld a, $3f                                        ; $5e3d: $3e $3f
	inc a                                            ; $5e3f: $3c
	cp a                                             ; $5e40: $bf
	inc [hl]                                         ; $5e41: $34
	rst AddAOntoHL                                          ; $5e42: $ef
	ld a, d                                          ; $5e43: $7a
	rst FarCall                                          ; $5e44: $f7
	sbc l                                            ; $5e45: $9d
	db $fd                                           ; $5e46: $fd
	rst SubAFromDE                                          ; $5e47: $df
	ret nz                                           ; $5e48: $c0

	add b                                            ; $5e49: $80
	db $10                                           ; $5e4a: $10

jr_017_5e4b:
	ldh a, [$e4]                                     ; $5e4b: $f0 $e4
	inc e                                            ; $5e4d: $1c
	ld [hl], b                                       ; $5e4e: $70
	adc h                                            ; $5e4f: $8c
	add sp, -$0a                                     ; $5e50: $e8 $f6
	ld d, c                                          ; $5e52: $51
	rst $38                                          ; $5e53: $ff
	jr z, jr_017_5e95                                ; $5e54: $28 $3f

	ld a, [hl+]                                      ; $5e56: $2a
	rst $38                                          ; $5e57: $ff
	ld a, d                                          ; $5e58: $7a
	rst SubAFromDE                                          ; $5e59: $df
	ld a, [$fcef]                                    ; $5e5a: $fa $ef $fc
	rst JumpTable                                          ; $5e5d: $c7
	db $fc                                           ; $5e5e: $fc
	ld c, a                                          ; $5e5f: $4f
	db $f4                                           ; $5e60: $f4
	sbc a                                            ; $5e61: $9f
	db $e4                                           ; $5e62: $e4
	ccf                                              ; $5e63: $3f
	ld a, e                                          ; $5e64: $7b
	rlca                                             ; $5e65: $07
	ld a, a                                          ; $5e66: $7f
	ld b, d                                          ; $5e67: $42
	ccf                                              ; $5e68: $3f
	sbc b                                            ; $5e69: $98
	add hl, hl                                       ; $5e6a: $29
	rrca                                             ; $5e6b: $0f
	ld [$0407], sp                                   ; $5e6c: $08 $07 $04
	nop                                              ; $5e6f: $00
	rlca                                             ; $5e70: $07
	inc sp                                           ; $5e71: $33
	ld b, b                                          ; $5e72: $40

jr_017_5e73:
	sub [hl]                                         ; $5e73: $96
	rst GetHLinHL                                          ; $5e74: $cf
	db $fc                                           ; $5e75: $fc
	add a                                            ; $5e76: $87
	db $fc                                           ; $5e77: $fc
	ld l, $fe                                        ; $5e78: $2e $fe
	ld [de], a                                       ; $5e7a: $12
	db $fc                                           ; $5e7b: $fc
	inc h                                            ; $5e7c: $24
	dec hl                                           ; $5e7d: $2b
	ld b, b                                          ; $5e7e: $40

Call_017_5e7f:
	sub h                                            ; $5e7f: $94
	db $fd                                           ; $5e80: $fd
	rst JumpTable                                          ; $5e81: $c7
	jr z, jr_017_5e73                                ; $5e82: $28 $ef

	sub d                                            ; $5e84: $92
	rst $38                                          ; $5e85: $ff
	add c                                            ; $5e86: $81
	ld a, [hl]                                       ; $5e87: $7e
	ld b, d                                          ; $5e88: $42
	ld bc, $277f                                     ; $5e89: $01 $7f $27
	ld b, b                                          ; $5e8c: $40
	rst SubAFromDE                                          ; $5e8d: $df
	inc bc                                           ; $5e8e: $03
	sbc d                                            ; $5e8f: $9a
	jr jr_017_5eb1                                   ; $5e90: $18 $1f

	daa                                              ; $5e92: $27
	jr c, jr_017_5ea4                                ; $5e93: $38 $0f

jr_017_5e95:
	ld l, [hl]                                       ; $5e95: $6e
	and b                                            ; $5e96: $a0
	sbc [hl]                                         ; $5e97: $9e
	cp $02                                           ; $5e98: $fe $02
	and b                                            ; $5e9a: $a0
	ld l, d                                          ; $5e9b: $6a
	and b                                            ; $5e9c: $a0
	sbc c                                            ; $5e9d: $99
	db $fd                                           ; $5e9e: $fd
	inc l                                            ; $5e9f: $2c
	push af                                          ; $5ea0: $f5
	ld e, h                                          ; $5ea1: $5c
	rst AddAOntoHL                                          ; $5ea2: $ef
	cp c                                             ; $5ea3: $b9

jr_017_5ea4:
	db $eb                                           ; $5ea4: $eb
	sbc [hl]                                         ; $5ea5: $9e
	add b                                            ; $5ea6: $80
	ld a, e                                          ; $5ea7: $7b
	cp $8b                                           ; $5ea8: $fe $8b
	ret nz                                           ; $5eaa: $c0

	nop                                              ; $5eab: $00
	ret nz                                           ; $5eac: $c0

	add b                                            ; $5ead: $80
	add b                                            ; $5eae: $80
	nop                                              ; $5eaf: $00
	cpl                                              ; $5eb0: $2f

jr_017_5eb1:
	di                                               ; $5eb1: $f3
	ccf                                              ; $5eb2: $3f
	pop hl                                           ; $5eb3: $e1
	ccf                                              ; $5eb4: $3f
	ld d, h                                          ; $5eb5: $54
	ld a, a                                          ; $5eb6: $7f
	ld c, b                                          ; $5eb7: $48
	ccf                                              ; $5eb8: $3f
	inc h                                            ; $5eb9: $24
	ld [$0c0f], sp                                   ; $5eba: $08 $0f $0c
	rrca                                             ; $5ebd: $0f
	ccf                                              ; $5ebe: $3f
	ld b, b                                          ; $5ebf: $40
	sub e                                            ; $5ec0: $93
	cp $f0                                           ; $5ec1: $fe $f0
	cp $52                                           ; $5ec3: $fe $52
	db $fc                                           ; $5ec5: $fc
	adc h                                            ; $5ec6: $8c
	ld hl, sp+$08                                    ; $5ec7: $f8 $08
	ldh a, [rAUD1SWEEP]                              ; $5ec9: $f0 $10
	db $10                                           ; $5ecb: $10
	ldh a, [$37]                                     ; $5ecc: $f0 $37
	ld b, b                                          ; $5ece: $40
	ld a, [hl+]                                      ; $5ecf: $2a
	nop                                              ; $5ed0: $00
	sbc d                                            ; $5ed1: $9a
	ldh a, [c]                                       ; $5ed2: $f2
	ccf                                              ; $5ed3: $3f
	push hl                                          ; $5ed4: $e5
	ccf                                              ; $5ed5: $3f
	ldh a, [rAUD3LEN]                                ; $5ed6: $f0 $1b
	ld h, b                                          ; $5ed8: $60
	sbc [hl]                                         ; $5ed9: $9e
	inc l                                            ; $5eda: $2c
	ld a, d                                          ; $5edb: $7a
	ld a, [hl+]                                      ; $5edc: $2a
	sbc [hl]                                         ; $5edd: $9e
	inc c                                            ; $5ede: $0c

jr_017_5edf:
	halt                                             ; $5edf: $76
	nop                                              ; $5ee0: $00
	sbc $7f                                          ; $5ee1: $de $7f
	sbc h                                            ; $5ee3: $9c
	add b                                            ; $5ee4: $80
	rst $38                                          ; $5ee5: $ff
	nop                                              ; $5ee6: $00
	ld c, a                                          ; $5ee7: $4f
	cp $7f                                           ; $5ee8: $fe $7f
	xor $df                                          ; $5eea: $ee $df
	ld a, a                                          ; $5eec: $7f
	ld sp, hl                                        ; $5eed: $f9
	sbc $ff                                          ; $5eee: $de $ff
	ld c, e                                          ; $5ef0: $4b
	ldh [c], a                                       ; $5ef1: $e2
	ld [hl], e                                       ; $5ef2: $73
	cp $9a                                           ; $5ef3: $fe $9a
	rst SubAFromBC                                          ; $5ef5: $e7
	ld a, b                                          ; $5ef6: $78
	ld c, b                                          ; $5ef7: $48
	ret nz                                           ; $5ef8: $c0

	and b                                            ; $5ef9: $a0
	pop af                                           ; $5efa: $f1
	rst SubAFromDE                                          ; $5efb: $df
	ld h, $91                                        ; $5efc: $26 $91
	ld [hl], a                                       ; $5efe: $77
	ld h, e                                          ; $5eff: $63
	ld a, [hl-]                                      ; $5f00: $3a
	ld a, a                                          ; $5f01: $7f
	ld [hl-], a                                      ; $5f02: $32
	ld [hl+], a                                      ; $5f03: $22
	ld h, $22                                        ; $5f04: $26 $22
	inc h                                            ; $5f06: $24
	ld h, $20                                        ; $5f07: $26 $20
	jr nz, jr_017_5f49                               ; $5f09: $20 $3e

	ld e, $f1                                        ; $5f0b: $1e $f1
	adc a                                            ; $5f0d: $8f
	db $10                                           ; $5f0e: $10
	jr jr_017_5f29                                   ; $5f0f: $18 $18

jr_017_5f11:
	ld c, b                                          ; $5f11: $48
	ld [hl], h                                       ; $5f12: $74
	ld a, h                                          ; $5f13: $7c
	ld [$180c], sp                                   ; $5f14: $08 $0c $18
	db $10                                           ; $5f17: $10
	jr nz, jr_017_5f4a                               ; $5f18: $20 $30

	ld [hl], b                                       ; $5f1a: $70
	ld e, b                                          ; $5f1b: $58
	adc $8e                                          ; $5f1c: $ce $8e
	pop af                                           ; $5f1e: $f1
	sbc d                                            ; $5f1f: $9a
	jr c, jr_017_5f9e                                ; $5f20: $38 $7c

	ld h, [hl]                                       ; $5f22: $66
	jp nc, $dc52                                     ; $5f23: $d2 $52 $dc

	sub d                                            ; $5f26: $92
	sbc c                                            ; $5f27: $99
	and [hl]                                         ; $5f28: $a6

jr_017_5f29:
	or d                                             ; $5f29: $b2
	db $fc                                           ; $5f2a: $fc
	and [hl]                                         ; $5f2b: $a6
	ld l, b                                          ; $5f2c: $68
	ld c, h                                          ; $5f2d: $4c
	rst AddAOntoHL                                          ; $5f2e: $ef
	rst SubAFromDE                                          ; $5f2f: $df
	ld b, d                                          ; $5f30: $42
	sbc [hl]                                         ; $5f31: $9e
	ld b, c                                          ; $5f32: $41
	ld a, e                                          ; $5f33: $7b
	db $fd                                           ; $5f34: $fd
	rst SubAFromDE                                          ; $5f35: $df
	ld b, c                                          ; $5f36: $41
	sbc c                                            ; $5f37: $99
	jr nz, @+$42                                     ; $5f38: $20 $40

	jr nc, jr_017_5fa4                               ; $5f3a: $30 $68

	jr nc, jr_017_5f6e                               ; $5f3c: $30 $30

	db $eb                                           ; $5f3e: $eb
	rst SubAFromDE                                          ; $5f3f: $df
	inc c                                            ; $5f40: $0c
	sub a                                            ; $5f41: $97
	ld l, [hl]                                       ; $5f42: $6e
	ld [hl], d                                       ; $5f43: $72
	ld [bc], a                                       ; $5f44: $02
	ld [bc], a                                       ; $5f45: $02
	inc b                                            ; $5f46: $04
	ld [bc], a                                       ; $5f47: $02
	inc c                                            ; $5f48: $0c

jr_017_5f49:
	inc c                                            ; $5f49: $0c

jr_017_5f4a:
	pop af                                           ; $5f4a: $f1
	rst SubAFromDE                                          ; $5f4b: $df
	jr nz, jr_017_5edf                               ; $5f4c: $20 $91

	ld a, b                                          ; $5f4e: $78
	jr c, jr_017_5f11                                ; $5f4f: $38 $c0

	ldh [$28], a                                     ; $5f51: $e0 $28
	ld e, h                                          ; $5f53: $5c
	ld [hl], d                                       ; $5f54: $72
	ld h, [hl]                                       ; $5f55: $66
	ld b, $02                                        ; $5f56: $06 $02
	ld [$1806], sp                                   ; $5f58: $08 $06 $18
	inc a                                            ; $5f5b: $3c
	ldh a, [$df]                                     ; $5f5c: $f0 $df
	inc b                                            ; $5f5e: $04
	sbc l                                            ; $5f5f: $9d
	dec c                                            ; $5f60: $0d
	inc c                                            ; $5f61: $0c
	jp c, $de08                                      ; $5f62: $da $08 $de

	dec c                                            ; $5f65: $0d
	sbc [hl]                                         ; $5f66: $9e
	ld [$deef], sp                                   ; $5f67: $08 $ef $de
	ldh [$9e], a                                     ; $5f6a: $e0 $9e
	ld b, b                                          ; $5f6c: $40
	halt                                             ; $5f6d: $76

jr_017_5f6e:
	sub b                                            ; $5f6e: $90
	ld l, a                                          ; $5f6f: $6f
	db $f4                                           ; $5f70: $f4
	db $eb                                           ; $5f71: $eb
	rst SubAFromDE                                          ; $5f72: $df
	ld h, b                                          ; $5f73: $60
	sub a                                            ; $5f74: $97
	ld [hl], b                                       ; $5f75: $70
	sub b                                            ; $5f76: $90
	db $10                                           ; $5f77: $10
	db $10                                           ; $5f78: $10
	jr nz, jr_017_5f8b                               ; $5f79: $20 $10

	ld h, b                                          ; $5f7b: $60
	ld h, b                                          ; $5f7c: $60
	db $fd                                           ; $5f7d: $fd
	ret nc                                           ; $5f7e: $d0

Call_017_5f7f:
	nop                                              ; $5f7f: $00
	jp hl                                            ; $5f80: $e9


	sbc d                                            ; $5f81: $9a
	inc bc                                           ; $5f82: $03
	ld [bc], a                                       ; $5f83: $02
	ld bc, $0301                                     ; $5f84: $01 $01 $03
	ld a, e                                          ; $5f87: $7b
	ld a, [$81ff]                                    ; $5f88: $fa $ff $81

jr_017_5f8b:
	ld [bc], a                                       ; $5f8b: $02
	ld b, $01                                        ; $5f8c: $06 $01
	inc bc                                           ; $5f8e: $03
	ld [$110f], sp                                   ; $5f8f: $08 $0f $11
	sbc a                                            ; $5f92: $9f
	and a                                            ; $5f93: $a7
	add sp, $5f                                      ; $5f94: $e8 $5f
	ld [hl], b                                       ; $5f96: $70
	dec b                                            ; $5f97: $05
	rst $38                                          ; $5f98: $ff
	ld a, [bc]                                       ; $5f99: $0a
	xor a                                            ; $5f9a: $af
	ld a, [bc]                                       ; $5f9b: $0a
	db $eb                                           ; $5f9c: $eb
	inc l                                            ; $5f9d: $2c

jr_017_5f9e:
	rst $38                                          ; $5f9e: $ff
	ccf                                              ; $5f9f: $3f
	ld a, [hl]                                       ; $5fa0: $7e
	sbc a                                            ; $5fa1: $9f
	xor h                                            ; $5fa2: $ac
	rst SubAFromDE                                          ; $5fa3: $df

jr_017_5fa4:
	ld h, h                                          ; $5fa4: $64
	rst SubAFromDE                                          ; $5fa5: $df
	ld [hl], d                                       ; $5fa6: $72
	rst GetHLinHL                                          ; $5fa7: $cf
	ld sp, hl                                        ; $5fa8: $f9
	db $fd                                           ; $5fa9: $fd
	add c                                            ; $5faa: $81
	ld b, b                                          ; $5fab: $40
	ret nz                                           ; $5fac: $c0

	sub b                                            ; $5fad: $90
	ldh a, [rDIV]                                    ; $5fae: $f0 $04
	db $fc                                           ; $5fb0: $fc
	ldh a, [c]                                       ; $5fb1: $f2
	ld a, $e8                                        ; $5fb2: $3e $e8
	ld e, $75                                        ; $5fb4: $1e $75
	rst AddAOntoHL                                          ; $5fb6: $ef
	dec e                                            ; $5fb7: $1d
	ld [hl], a                                       ; $5fb8: $77
	ld b, l                                          ; $5fb9: $45
	ld l, a                                          ; $5fba: $6f
	rst AddAOntoHL                                          ; $5fbb: $ef
	push de                                          ; $5fbc: $d5
	ei                                               ; $5fbd: $fb
	db $ed                                           ; $5fbe: $ed
	rst $38                                          ; $5fbf: $ff
	push bc                                          ; $5fc0: $c5
	ei                                               ; $5fc1: $fb
	ld c, l                                          ; $5fc2: $4d
	pop af                                           ; $5fc3: $f1
	sbc a                                            ; $5fc4: $9f
	pop hl                                           ; $5fc5: $e1
	ccf                                              ; $5fc6: $3f
	ld bc, $e301                                     ; $5fc7: $01 $01 $e3
	adc a                                            ; $5fca: $8f
	rst $38                                          ; $5fcb: $ff
	sub [hl]                                         ; $5fcc: $96
	ld a, a                                          ; $5fcd: $7f
	inc bc                                           ; $5fce: $03
	ccf                                              ; $5fcf: $3f
	add hl, bc                                       ; $5fd0: $09
	rra                                              ; $5fd1: $1f
	jr @+$11                                         ; $5fd2: $18 $0f

	add hl, bc                                       ; $5fd4: $09
	rlca                                             ; $5fd5: $07
	inc b                                            ; $5fd6: $04
	nop                                              ; $5fd7: $00
	rlca                                             ; $5fd8: $07
	inc b                                            ; $5fd9: $04
	inc bc                                           ; $5fda: $03
	ld a, e                                          ; $5fdb: $7b
	sub e                                            ; $5fdc: $93
	cp [hl]                                          ; $5fdd: $be
	inc bc                                           ; $5fde: $03
	ld bc, $de01                                     ; $5fdf: $01 $01 $de
	ld bc, $827f                                     ; $5fe2: $01 $7f $82
	rst SubAFromDE                                          ; $5fe5: $df
	rlca                                             ; $5fe6: $07
	adc e                                            ; $5fe7: $8b
	pop af                                           ; $5fe8: $f1
	rst GetHLinHL                                          ; $5fe9: $cf
	ld sp, hl                                        ; $5fea: $f9
	sub a                                            ; $5feb: $97
	db $fd                                           ; $5fec: $fd
	inc bc                                           ; $5fed: $03
	db $fd                                           ; $5fee: $fd
	rla                                              ; $5fef: $17
	db $fc                                           ; $5ff0: $fc
	sbc d                                            ; $5ff1: $9a
	adc $32                                          ; $5ff2: $ce $32
	ld [$70f0], sp                                   ; $5ff4: $08 $f0 $70
	add b                                            ; $5ff7: $80
	ldh a, [rP1]                                     ; $5ff8: $f0 $00
	ldh [$80], a                                     ; $5ffa: $e0 $80
	ld [hl], e                                       ; $5ffc: $73
	cp $df                                           ; $5ffd: $fe $df
	ldh [$8e], a                                     ; $5fff: $e0 $8e
	and b                                            ; $6001: $a0
	ldh a, [hDisp1_SCY]                                     ; $6002: $f0 $90
	ld hl, sp-$08                                    ; $6004: $f8 $f8
	add e                                            ; $6006: $83
	ld l, h                                          ; $6007: $6c
	rst JumpTable                                          ; $6008: $c7
	cp c                                             ; $6009: $b9
	rst AddAOntoHL                                          ; $600a: $ef
	db $10                                           ; $600b: $10
	rst $38                                          ; $600c: $ff
	ld bc, $81ff                                     ; $600d: $01 $ff $81
	ld a, h                                          ; $6010: $7c
	ld b, e                                          ; $6011: $43
	cp [hl]                                          ; $6012: $be
	ld a, a                                          ; $6013: $7f
	jr c, jr_017_6026                                ; $6014: $38 $10

	db $db                                           ; $6016: $db
	ld [$1ede], sp                                   ; $6017: $08 $de $1e
	sbc d                                            ; $601a: $9a
	ld a, [de]                                       ; $601b: $1a
	ccf                                              ; $601c: $3f
	add hl, hl                                       ; $601d: $29
	ld a, a                                          ; $601e: $7f
	ld a, a                                          ; $601f: $7f
	daa                                              ; $6020: $27
	ld b, b                                          ; $6021: $40
	sub b                                            ; $6022: $90
	rra                                              ; $6023: $1f
	inc l                                            ; $6024: $2c
	rra                                              ; $6025: $1f

jr_017_6026:
	inc h                                            ; $6026: $24
	rra                                              ; $6027: $1f
	ld [hl-], a                                      ; $6028: $32
	rrca                                             ; $6029: $0f
	add hl, sp                                       ; $602a: $39
	rra                                              ; $602b: $1f
	db $10                                           ; $602c: $10
	rlca                                             ; $602d: $07
	ld b, $07                                        ; $602e: $06 $07
	ld [bc], a                                       ; $6030: $02
	inc bc                                           ; $6031: $03
	inc hl                                           ; $6032: $23
	ld e, d                                          ; $6033: $5a
	sbc c                                            ; $6034: $99
	rst $38                                          ; $6035: $ff
	ld d, $ff                                        ; $6036: $16 $ff
	inc bc                                           ; $6038: $03
	rst $38                                          ; $6039: $ff
	cp c                                             ; $603a: $b9
	rra                                              ; $603b: $1f
	ld h, b                                          ; $603c: $60
	rlca                                             ; $603d: $07
	add b                                            ; $603e: $80

Call_017_603f:
	sub a                                            ; $603f: $97
	rrca                                             ; $6040: $0f
	ld [hl], $1f                                     ; $6041: $36 $1f
	dec hl                                           ; $6043: $2b
	ccf                                              ; $6044: $3f
	add hl, hl                                       ; $6045: $29
	ccf                                              ; $6046: $3f
	jr c, jr_017_60c4                                ; $6047: $38 $7b

	inc e                                            ; $6049: $1c
	inc bc                                           ; $604a: $03
	ret nz                                           ; $604b: $c0

	scf                                              ; $604c: $37
	ret nz                                           ; $604d: $c0

	jr c, jr_017_6053                                ; $604e: $38 $03

	pop af                                           ; $6050: $f1
	pop de                                           ; $6051: $d1
	rst $38                                          ; $6052: $ff

jr_017_6053:
	or $df                                           ; $6053: $f6 $df
	ld bc, $029c                                     ; $6055: $01 $9c $02
	inc bc                                           ; $6058: $03
	db $fc                                           ; $6059: $fc
	or $df                                           ; $605a: $f6 $df
	ld hl, sp-$62                                    ; $605c: $f8 $9e
	rlca                                             ; $605e: $07
	ld d, a                                          ; $605f: $57
	pop hl                                           ; $6060: $e1
	cp $df                                           ; $6061: $fe $df
	rra                                              ; $6063: $1f
	sbc [hl]                                         ; $6064: $9e
	ldh [rBGP], a                                    ; $6065: $e0 $47
	or c                                             ; $6067: $b1
	or $df                                           ; $6068: $f6 $df
	add b                                            ; $606a: $80
	sbc h                                            ; $606b: $9c
	ld b, b                                          ; $606c: $40
	ret nz                                           ; $606d: $c0

	ccf                                              ; $606e: $3f
	ld a, e                                          ; $606f: $7b
	ld sp, hl                                        ; $6070: $f9
	ld h, e                                          ; $6071: $63
	cp $9e                                           ; $6072: $fe $9e
	ret nz                                           ; $6074: $c0

	ld a, e                                          ; $6075: $7b
	cp $7b                                           ; $6076: $fe $7b
	xor c                                            ; $6078: $a9
	ld h, e                                          ; $6079: $63
	cp $9e                                           ; $607a: $fe $9e
	inc bc                                           ; $607c: $03
	ld a, e                                          ; $607d: $7b
	cp $7f                                           ; $607e: $fe $7f
	rst GetHLinHL                                          ; $6080: $cf
	sbc h                                            ; $6081: $9c
	ei                                               ; $6082: $fb
	inc b                                            ; $6083: $04
	rst $38                                          ; $6084: $ff
	ld a, e                                          ; $6085: $7b
	ld a, [$af8d]                                    ; $6086: $fa $8d $af
	ld d, b                                          ; $6089: $50
	ld d, l                                          ; $608a: $55
	xor d                                            ; $608b: $aa
	rst $38                                          ; $608c: $ff
	nop                                              ; $608d: $00
	cp $01                                           ; $608e: $fe $01
	rst AddAOntoHL                                          ; $6090: $ef
	rra                                              ; $6091: $1f
	ld a, e                                          ; $6092: $7b
	add a                                            ; $6093: $87
	db $dd                                           ; $6094: $dd
	inc hl                                           ; $6095: $23
	xor e                                            ; $6096: $ab
	ld d, h                                          ; $6097: $54
	rst SubAFromHL                                          ; $6098: $d7
	jr z, jr_017_6112                                ; $6099: $28 $77

	db $fc                                           ; $609b: $fc
	sbc l                                            ; $609c: $9d
	db $eb                                           ; $609d: $eb
	inc d                                            ; $609e: $14
	ld l, a                                          ; $609f: $6f
	add $57                                          ; $60a0: $c6 $57
	sbc a                                            ; $60a2: $9f
	sbc l                                            ; $60a3: $9d
	rst SubAFromDE                                          ; $60a4: $df
	jr nz, jr_017_611e                               ; $60a5: $20 $77

	ret nc                                           ; $60a7: $d0

	adc h                                            ; $60a8: $8c
	push af                                          ; $60a9: $f5
	ld a, [bc]                                       ; $60aa: $0a
	xor d                                            ; $60ab: $aa
	ld d, l                                          ; $60ac: $55
	rst $38                                          ; $60ad: $ff
	nop                                              ; $60ae: $00
	ld a, a                                          ; $60af: $7f
	add b                                            ; $60b0: $80
	rst $38                                          ; $60b1: $ff
	rst $38                                          ; $60b2: $ff
	ccf                                              ; $60b3: $3f

jr_017_60b4:
	rst $38                                          ; $60b4: $ff
	adc a                                            ; $60b5: $8f
	rst $38                                          ; $60b6: $ff
	db $e3                                           ; $60b7: $e3
	rst $38                                          ; $60b8: $ff
	ldh a, [rIE]                                     ; $60b9: $f0 $ff
	db $fc                                           ; $60bb: $fc
	sbc $ff                                          ; $60bc: $de $ff
	sbc l                                            ; $60be: $9d
	cp a                                             ; $60bf: $bf
	ld a, a                                          ; $60c0: $7f
	ld e, e                                          ; $60c1: $5b
	and c                                            ; $60c2: $a1
	ld a, a                                          ; $60c3: $7f

jr_017_60c4:
	cp $6b                                           ; $60c4: $fe $6b
	ld a, c                                          ; $60c6: $79
	ld e, a                                          ; $60c7: $5f
	ld a, [hl]                                       ; $60c8: $7e
	ld a, e                                          ; $60c9: $7b
	or [hl]                                          ; $60ca: $b6
	sub h                                            ; $60cb: $94
	db $fc                                           ; $60cc: $fc
	ld bc, $06f9                                     ; $60cd: $01 $f9 $06
	rst SubAFromBC                                          ; $60d0: $e7
	dec bc                                           ; $60d1: $0b
	adc h                                            ; $60d2: $8c
	cpl                                              ; $60d3: $2f
	jr nc, @+$01                                     ; $60d4: $30 $ff

jr_017_60d6:
	ret nz                                           ; $60d6: $c0

	ld a, e                                          ; $60d7: $7b
	jp nz, $0091                                     ; $60d8: $c2 $91 $00

	ld d, $ef                                        ; $60db: $16 $ef
	cp h                                             ; $60dd: $bc
	di                                               ; $60de: $f3
	adc b                                            ; $60df: $88
	rst $38                                          ; $60e0: $ff
	or $8f                                           ; $60e1: $f6 $8f
	jr nc, jr_017_60b4                               ; $60e3: $30 $cf

	ld c, b                                          ; $60e5: $48
	or a                                             ; $60e6: $b7
	ld a, a                                          ; $60e7: $7f
	sbc $ff                                          ; $60e8: $de $ff
	sbc l                                            ; $60ea: $9d
	ld [bc], a                                       ; $60eb: $02
	ld bc, $fe6f                                     ; $60ec: $01 $6f $fe
	ld a, a                                          ; $60ef: $7f
	ld h, [hl]                                       ; $60f0: $66
	ld l, a                                          ; $60f1: $6f
	cp l                                             ; $60f2: $bd
	sbc h                                            ; $60f3: $9c
	jr nz, jr_017_60d6                               ; $60f4: $20 $e0

	nop                                              ; $60f6: $00
	ld a, e                                          ; $60f7: $7b
	cp $7b                                           ; $60f8: $fe $7b
	ld a, [$c09d]                                    ; $60fa: $fa $9d $c0
	ld b, b                                          ; $60fd: $40
	ld a, e                                          ; $60fe: $7b
	cp $df                                           ; $60ff: $fe $df
	add b                                            ; $6101: $80
	push de                                          ; $6102: $d5
	rst $38                                          ; $6103: $ff
	ld a, a                                          ; $6104: $7f
	adc b                                            ; $6105: $88
	sbc l                                            ; $6106: $9d
	rst FarCall                                          ; $6107: $f7
	rrca                                             ; $6108: $0f
	ldh a, [rPCM34]                                  ; $6109: $f0 $77
	ld h, e                                          ; $610b: $63
	ld e, e                                          ; $610c: $5b
	cp $8f                                           ; $610d: $fe $8f
	dec [hl]                                         ; $610f: $35
	ei                                               ; $6110: $fb
	dec b                                            ; $6111: $05

jr_017_6112:
	ei                                               ; $6112: $fb
	push bc                                          ; $6113: $c5
	cp e                                             ; $6114: $bb
	db $dd                                           ; $6115: $dd
	cp e                                             ; $6116: $bb
	rst FarCall                                          ; $6117: $f7
	ei                                               ; $6118: $fb
	db $eb                                           ; $6119: $eb
	rst FarCall                                          ; $611a: $f7
	rst SubAFromHL                                          ; $611b: $d7
	rst AddAOntoHL                                          ; $611c: $ef
	ret nc                                           ; $611d: $d0

jr_017_611e:
	rst AddAOntoHL                                          ; $611e: $ef
	ld l, e                                          ; $611f: $6b
	ld l, [hl]                                       ; $6120: $6e
	ld [hl], e                                       ; $6121: $73
	ld l, e                                          ; $6122: $6b
	ld [hl], a                                       ; $6123: $77
	xor [hl]                                         ; $6124: $ae
	sbc c                                            ; $6125: $99
	ld [$2087], sp                                   ; $6126: $08 $87 $20
	rra                                              ; $6129: $1f
	add b                                            ; $612a: $80
	ld a, a                                          ; $612b: $7f
	ld e, a                                          ; $612c: $5f
	ret nc                                           ; $612d: $d0

	sbc c                                            ; $612e: $99
	rst SubAFromDE                                          ; $612f: $df
	ccf                                              ; $6130: $3f
	db $fd                                           ; $6131: $fd
	inc bc                                           ; $6132: $03
	rst GetHLinHL                                          ; $6133: $cf
	ldh a, [rPCM34]                                  ; $6134: $f0 $77
	inc [hl]                                         ; $6136: $34
	sbc c                                            ; $6137: $99
	rra                                              ; $6138: $1f
	rst $38                                          ; $6139: $ff
	rla                                              ; $613a: $17
	rst AddAOntoHL                                          ; $613b: $ef
	ei                                               ; $613c: $fb
	rst FarCall                                          ; $613d: $f7
	ld l, e                                          ; $613e: $6b
	dec sp                                           ; $613f: $3b
	ld hl, sp+$76                                    ; $6140: $f8 $76
	adc $91                                          ; $6142: $ce $91
	db $fc                                           ; $6144: $fc
	inc bc                                           ; $6145: $03
	di                                               ; $6146: $f3
	rrca                                             ; $6147: $0f
	call c, Call_017_603f                            ; $6148: $dc $3f $60
	cp $80                                           ; $614b: $fe $80
	ld hl, sp+$02                                    ; $614d: $f8 $02
	pop hl                                           ; $614f: $e1
	rst $38                                          ; $6150: $ff
	ld d, b                                          ; $6151: $50
	ld [hl], a                                       ; $6152: $77
	ret                                              ; $6153: $c9


	sbc d                                            ; $6154: $9a
	ccf                                              ; $6155: $3f
	ldh a, [$fe]                                     ; $6156: $f0 $fe
	rst $38                                          ; $6158: $ff
	di                                               ; $6159: $f3
	ld d, d                                          ; $615a: $52
	ld b, b                                          ; $615b: $40
	ld d, d                                          ; $615c: $52
	db $fd                                           ; $615d: $fd
	or $95                                           ; $615e: $f6 $95
	or a                                             ; $6160: $b7
	nop                                              ; $6161: $00
	ld [hl], a                                       ; $6162: $77
	nop                                              ; $6163: $00
	ld [hl], $00                                     ; $6164: $36 $00
	rst FarCall                                          ; $6166: $f7
	nop                                              ; $6167: $00
	rst FarCall                                          ; $6168: $f7
	jp $fc7b                                         ; $6169: $c3 $7b $fc


	sbc l                                            ; $616c: $9d
	nop                                              ; $616d: $00
	di                                               ; $616e: $f3
	ld b, d                                          ; $616f: $42
	nop                                              ; $6170: $00
	rst SubAFromDE                                          ; $6171: $df
	rst $38                                          ; $6172: $ff
	sbc e                                            ; $6173: $9b
	cp $f0                                           ; $6174: $fe $f0
	ldh a, [$c0]                                     ; $6176: $f0 $c0
	ld a, e                                          ; $6178: $7b
	rla                                              ; $6179: $17
	ld h, c                                          ; $617a: $61
	ldh [$9e], a                                     ; $617b: $e0 $9e
	rra                                              ; $617d: $1f
	ld d, e                                          ; $617e: $53
	cp e                                             ; $617f: $bb
	db $dd                                           ; $6180: $dd
	rst $38                                          ; $6181: $ff
	sbc h                                            ; $6182: $9c
	ld hl, sp+$70                                    ; $6183: $f8 $70
	jr nz, @+$59                                     ; $6185: $20 $57

	ldh a, [$9e]                                     ; $6187: $f0 $9e
	db $fc                                           ; $6189: $fc
	ld c, a                                          ; $618a: $4f
	ldh a, [$f3]                                     ; $618b: $f0 $f3
	sbc b                                            ; $618d: $98
	ld d, l                                          ; $618e: $55
	nop                                              ; $618f: $00
	xor d                                            ; $6190: $aa
	nop                                              ; $6191: $00
	ld b, l                                          ; $6192: $45
	nop                                              ; $6193: $00
	adc d                                            ; $6194: $8a
	ld a, e                                          ; $6195: $7b
	db $fc                                           ; $6196: $fc
	ld a, a                                          ; $6197: $7f
	xor [hl]                                         ; $6198: $ae
	sbc e                                            ; $6199: $9b
	ld b, h                                          ; $619a: $44
	nop                                              ; $619b: $00
	adc b                                            ; $619c: $88
	nop                                              ; $619d: $00
	halt                                             ; $619e: $76
	and h                                            ; $619f: $a4
	ld d, a                                          ; $61a0: $57
	ld l, b                                          ; $61a1: $68
	reti                                             ; $61a2: $d9


	add b                                            ; $61a3: $80
	ld e, a                                          ; $61a4: $5f
	ret nz                                           ; $61a5: $c0

	ld [hl], l                                       ; $61a6: $75
	call c, $9cf7                                    ; $61a7: $dc $f7 $9c
	or l                                             ; $61aa: $b5
	nop                                              ; $61ab: $00
	halt                                             ; $61ac: $76
	ld h, e                                          ; $61ad: $63
	db $fc                                           ; $61ae: $fc
	ld [hl], a                                       ; $61af: $77
	ld b, h                                          ; $61b0: $44
	call c, $9cff                                    ; $61b1: $dc $ff $9c
	db $fd                                           ; $61b4: $fd
	rst $38                                          ; $61b5: $ff
	ld hl, sp+$7a                                    ; $61b6: $f8 $7a
	rrca                                             ; $61b8: $0f
	sbc d                                            ; $61b9: $9a
	ldh [rIE], a                                     ; $61ba: $e0 $ff
	pop af                                           ; $61bc: $f1
	rst $38                                          ; $61bd: $ff
	ldh [c], a                                       ; $61be: $e2
	ld a, e                                          ; $61bf: $7b
	or [hl]                                          ; $61c0: $b6
	ld a, e                                          ; $61c1: $7b
	or c                                             ; $61c2: $b1
	ld [hl], a                                       ; $61c3: $77
	xor d                                            ; $61c4: $aa
	ld [hl], c                                       ; $61c5: $71
	or c                                             ; $61c6: $b1
	sbc [hl]                                         ; $61c7: $9e
	inc bc                                           ; $61c8: $03
	db $db                                           ; $61c9: $db
	add b                                            ; $61ca: $80
	reti                                             ; $61cb: $d9


	ret nz                                           ; $61cc: $c0

	rst SubAFromDE                                          ; $61cd: $df
	add b                                            ; $61ce: $80
	sbc d                                            ; $61cf: $9a
	db $f4                                           ; $61d0: $f4
	add b                                            ; $61d1: $80
	or $00                                           ; $61d2: $f6 $00
	or h                                             ; $61d4: $b4
	ld e, e                                          ; $61d5: $5b
	cp h                                             ; $61d6: $bc
	ld a, l                                          ; $61d7: $7d
	sub $dd                                          ; $61d8: $d6 $dd
	rst $38                                          ; $61da: $ff
	sbc l                                            ; $61db: $9d
	pop bc                                           ; $61dc: $c1
	cp $7b                                           ; $61dd: $fe $7b
	ld e, c                                          ; $61df: $59
	sbc $ff                                          ; $61e0: $de $ff
	sbc [hl]                                         ; $61e2: $9e
	sbc h                                            ; $61e3: $9c
	ld d, e                                          ; $61e4: $53
	ld d, d                                          ; $61e5: $52
	ld e, a                                          ; $61e6: $5f
	ld l, b                                          ; $61e7: $68
	rst SubAFromHL                                          ; $61e8: $d7
	add b                                            ; $61e9: $80
	rst SubAFromDE                                          ; $61ea: $df
	rst $38                                          ; $61eb: $ff
	sbc d                                            ; $61ec: $9a
	ld a, a                                          ; $61ed: $7f
	rrca                                             ; $61ee: $0f
	rlca                                             ; $61ef: $07
	inc bc                                           ; $61f0: $03
	inc bc                                           ; $61f1: $03
	ld a, e                                          ; $61f2: $7b
	ld c, h                                          ; $61f3: $4c
	ei                                               ; $61f4: $fb
	sbc h                                            ; $61f5: $9c
	cp e                                             ; $61f6: $bb
	rst JumpTable                                          ; $61f7: $c7
	ei                                               ; $61f8: $fb
	ld a, e                                          ; $61f9: $7b
	cp $9b                                           ; $61fa: $fe $9b
	or a                                             ; $61fc: $b7
	rst GetHLinHL                                          ; $61fd: $cf
	rst AddAOntoHL                                          ; $61fe: $ef
	rra                                              ; $61ff: $1f
	db $db                                           ; $6200: $db
	rst $38                                          ; $6201: $ff
	adc [hl]                                         ; $6202: $8e
	xor a                                            ; $6203: $af
	rst SubAFromDE                                          ; $6204: $df
	ld d, a                                          ; $6205: $57
	ld l, a                                          ; $6206: $6f
	db $eb                                           ; $6207: $eb
	rst FarCall                                          ; $6208: $f7
	sub c                                            ; $6209: $91
	rst AddAOntoHL                                          ; $620a: $ef
	cp e                                             ; $620b: $bb
	rst SubAFromBC                                          ; $620c: $e7
	ld [hl], a                                       ; $620d: $77
	jp $c2f6                                         ; $620e: $c3 $f6 $c2


	db $f4                                           ; $6211: $f4
	ret nz                                           ; $6212: $c0

	ld bc, $7079                                     ; $6213: $01 $79 $70
	ld a, l                                          ; $6216: $7d
	cp b                                             ; $6217: $b8
	sbc h                                            ; $6218: $9c
	ld h, c                                          ; $6219: $61
	rst $38                                          ; $621a: $ff
	ld sp, hl                                        ; $621b: $f9
	call c, $9dff                                    ; $621c: $dc $ff $9d
	sbc b                                            ; $621f: $98
	rst $38                                          ; $6220: $ff
	ld a, [hl-]                                      ; $6221: $3a
	ld a, l                                          ; $6222: $7d
	db $f4                                           ; $6223: $f4
	adc a                                            ; $6224: $8f
	di                                               ; $6225: $f3
	add h                                            ; $6226: $84
	ld [hl], e                                       ; $6227: $73
	call nz, $c473                                   ; $6228: $c4 $73 $c4
	scf                                              ; $622b: $37
	rst JumpTable                                          ; $622c: $c7
	or a                                             ; $622d: $b7
	ld h, a                                          ; $622e: $67
	sub a                                            ; $622f: $97
	ld h, a                                          ; $6230: $67
	ld d, a                                          ; $6231: $57
	or a                                             ; $6232: $b7
	add a                                            ; $6233: $87
	rst FarCall                                          ; $6234: $f7
	db $dd                                           ; $6235: $dd
	rst $38                                          ; $6236: $ff
	ld a, [hl]                                       ; $6237: $7e
	ld [bc], a                                       ; $6238: $02
	sub l                                            ; $6239: $95
	add c                                            ; $623a: $81
	cp $5e                                           ; $623b: $fe $5e
	and c                                            ; $623d: $a1
	ldh [$1f], a                                     ; $623e: $e0 $1f
	ld b, d                                          ; $6240: $42
	xor l                                            ; $6241: $ad
	add c                                            ; $6242: $81
	ld b, d                                          ; $6243: $42
	ret c                                            ; $6244: $d8

	inc bc                                           ; $6245: $03
	ld a, l                                          ; $6246: $7d
	ld l, [hl]                                       ; $6247: $6e
	db $dd                                           ; $6248: $dd
	ld bc, $7b7c                                     ; $6249: $01 $7c $7b
	sbc e                                            ; $624c: $9b
	add sp, $08                                      ; $624d: $e8 $08
	ld hl, sp-$18                                    ; $624f: $f8 $e8
	ld a, e                                          ; $6251: $7b
	cp $8c                                           ; $6252: $fe $8c
	xor b                                            ; $6254: $a8
	cp b                                             ; $6255: $b8
	xor b                                            ; $6256: $a8
	cp b                                             ; $6257: $b8
	ld c, b                                          ; $6258: $48
	ld a, b                                          ; $6259: $78
	jr c, jr_017_6294                                ; $625a: $38 $38

	rst $38                                          ; $625c: $ff
	cp d                                             ; $625d: $ba
	cp d                                             ; $625e: $ba
	rst $38                                          ; $625f: $ff
	add d                                            ; $6260: $82
	rst $38                                          ; $6261: $ff
	cp $ff                                           ; $6262: $fe $ff
	inc b                                            ; $6264: $04
	rlca                                             ; $6265: $07
	add hl, bc                                       ; $6266: $09
	sbc $0f                                          ; $6267: $de $0f
	ld h, c                                          ; $6269: $61
	and h                                            ; $626a: $a4
	ld [hl], b                                       ; $626b: $70
	add e                                            ; $626c: $83
	ld a, a                                          ; $626d: $7f
	cp $df                                           ; $626e: $fe $df
	ret nz                                           ; $6270: $c0

	sub [hl]                                         ; $6271: $96
	rst $38                                          ; $6272: $ff
	xor $20                                          ; $6273: $ee $20
	rst $38                                          ; $6275: $ff
	push af                                          ; $6276: $f5
	rst $38                                          ; $6277: $ff
	dec [hl]                                         ; $6278: $35
	rst $38                                          ; $6279: $ff
	or l                                             ; $627a: $b5
	ld a, e                                          ; $627b: $7b
	cp $9e                                           ; $627c: $fe $9e
	inc h                                            ; $627e: $24
	sbc $ff                                          ; $627f: $de $ff
	rst SubAFromDE                                          ; $6281: $df
	inc bc                                           ; $6282: $03
	ld a, h                                          ; $6283: $7c
	dec hl                                           ; $6284: $2b
	ld [hl], a                                       ; $6285: $77
	db $fc                                           ; $6286: $fc
	ld l, a                                          ; $6287: $6f
	cp $df                                           ; $6288: $fe $df
	inc bc                                           ; $628a: $03
	sbc e                                            ; $628b: $9b
	ld e, [hl]                                       ; $628c: $5e
	ld a, [hl]                                       ; $628d: $7e
	ld d, b                                          ; $628e: $50
	ld [hl], b                                       ; $628f: $70
	ld [hl], a                                       ; $6290: $77
	cp $9a                                           ; $6291: $fe $9a
	ret nc                                           ; $6293: $d0

jr_017_6294:
	ldh a, [$30]                                     ; $6294: $f0 $30
	ldh a, [$e0]                                     ; $6296: $f0 $e0
	ld e, b                                          ; $6298: $58
	ld [hl-], a                                      ; $6299: $32
	ld [hl], b                                       ; $629a: $70
	jp nc, $b87e                                     ; $629b: $d2 $7e $b8

	ld d, h                                          ; $629e: $54
	add l                                            ; $629f: $85
	db $fc                                           ; $62a0: $fc
	sub e                                            ; $62a1: $93
	inc d                                            ; $62a2: $14
	inc e                                            ; $62a3: $1c
	rla                                              ; $62a4: $17
	rra                                              ; $62a5: $1f
	dec d                                            ; $62a6: $15
	rra                                              ; $62a7: $1f
	inc de                                           ; $62a8: $13
	rra                                              ; $62a9: $1f
	rla                                              ; $62aa: $17
	rra                                              ; $62ab: $1f
	dec e                                            ; $62ac: $1d
	dec e                                            ; $62ad: $1d
	ld l, [hl]                                       ; $62ae: $6e
	db $eb                                           ; $62af: $eb
	rst SubAFromDE                                          ; $62b0: $df
	rlca                                             ; $62b1: $07
	ld a, a                                          ; $62b2: $7f
	push af                                          ; $62b3: $f5
	sbc l                                            ; $62b4: $9d
	rra                                              ; $62b5: $1f
	db $10                                           ; $62b6: $10
	ld a, e                                          ; $62b7: $7b
	db $fc                                           ; $62b8: $fc
	ld [hl], a                                       ; $62b9: $77
	ld a, [$1592]                                    ; $62ba: $fa $92 $15
	nop                                              ; $62bd: $00
	nop                                              ; $62be: $00
	inc e                                            ; $62bf: $1c
	inc e                                            ; $62c0: $1c
	cp $f6                                           ; $62c1: $fe $f6
	rst $38                                          ; $62c3: $ff
	ld h, e                                          ; $62c4: $63
	rst $38                                          ; $62c5: $ff
	db $eb                                           ; $62c6: $eb
	rst $38                                          ; $62c7: $ff
	db $dd                                           ; $62c8: $dd
	ld a, e                                          ; $62c9: $7b
	ld a, [$267d]                                    ; $62ca: $fa $7d $26
	ld h, l                                          ; $62cd: $65
	ld c, b                                          ; $62ce: $48
	ld [hl], e                                       ; $62cf: $73
	add a                                            ; $62d0: $87
	db $fd                                           ; $62d1: $fd
	sbc $ef                                          ; $62d2: $de $ef
	sub h                                            ; $62d4: $94
	xor b                                            ; $62d5: $a8
	rst AddAOntoHL                                          ; $62d6: $ef
	xor d                                            ; $62d7: $aa
	rst $38                                          ; $62d8: $ff
	cp d                                             ; $62d9: $ba
	rst $38                                          ; $62da: $ff
	ld a, [bc]                                       ; $62db: $0a
	rst $38                                          ; $62dc: $ff
	or [hl]                                          ; $62dd: $b6
	rst $38                                          ; $62de: $ff
	xor a                                            ; $62df: $af
	ld h, a                                          ; $62e0: $67
	ld c, [hl]                                       ; $62e1: $4e
	sbc $e0                                          ; $62e2: $de $e0
	sbc [hl]                                         ; $62e4: $9e
	and b                                            ; $62e5: $a0
	ld a, b                                          ; $62e6: $78
	sbc c                                            ; $62e7: $99
	ld l, e                                          ; $62e8: $6b
	ld a, [hl]                                       ; $62e9: $7e
	sbc $1c                                          ; $62ea: $de $1c
	sbc [hl]                                         ; $62ec: $9e
	inc d                                            ; $62ed: $14
	ld a, e                                          ; $62ee: $7b
	sbc l                                            ; $62ef: $9d
	sbc h                                            ; $62f0: $9c
	ld d, $1f                                        ; $62f1: $16 $1f
	rla                                              ; $62f3: $17
	ei                                               ; $62f4: $fb
	rst SubAFromDE                                          ; $62f5: $df
	ld a, h                                          ; $62f6: $7c
	sub a                                            ; $62f7: $97
	ld a, [hl]                                       ; $62f8: $7e
	ld d, [hl]                                       ; $62f9: $56
	cp $da                                           ; $62fa: $fe $da
	cp $06                                           ; $62fc: $fe $06
	cp $da                                           ; $62fe: $fe $da
	ld [hl], d                                       ; $6300: $72
	ld e, b                                          ; $6301: $58
	ld a, [hl]                                       ; $6302: $7e
	db $f4                                           ; $6303: $f4
	ld a, e                                          ; $6304: $7b
	or h                                             ; $6305: $b4
	sbc c                                            ; $6306: $99
	rlca                                             ; $6307: $07
	inc b                                            ; $6308: $04
	rlca                                             ; $6309: $07
	rlca                                             ; $630a: $07
	inc bc                                           ; $630b: $03
	ld [bc], a                                       ; $630c: $02
	db $fd                                           ; $630d: $fd
	rst SubAFromDE                                          ; $630e: $df
	pop af                                           ; $630f: $f1
	sbc c                                            ; $6310: $99
	rst $38                                          ; $6311: $ff
	ld l, $ff                                        ; $6312: $2e $ff
	db $e4                                           ; $6314: $e4
	rst $38                                          ; $6315: $ff
	ld sp, $ee79                                     ; $6316: $31 $79 $ee
	sbc [hl]                                         ; $6319: $9e
	ld l, $4e                                        ; $631a: $2e $4e
	ld b, d                                          ; $631c: $42
	ld l, l                                          ; $631d: $6d
	xor b                                            ; $631e: $a8
	rst SubAFromDE                                          ; $631f: $df
	inc bc                                           ; $6320: $03
	ld a, d                                          ; $6321: $7a
	rst SubAFromDE                                          ; $6322: $df
	ld a, [hl]                                       ; $6323: $7e
	db $db                                           ; $6324: $db
	ld a, a                                          ; $6325: $7f
	adc [hl]                                         ; $6326: $8e
	ld a, d                                          ; $6327: $7a
	push de                                          ; $6328: $d5
	db $fd                                           ; $6329: $fd
	sbc $f8                                          ; $632a: $de $f8
	ld l, [hl]                                       ; $632c: $6e
	cp e                                             ; $632d: $bb
	ld a, e                                          ; $632e: $7b
	ld a, [$da76]                                    ; $632f: $fa $76 $da
	ld l, [hl]                                       ; $6332: $6e
	sub $df                                          ; $6333: $d6 $df
	ldh [$7b], a                                     ; $6335: $e0 $7b
	add c                                            ; $6337: $81
	sub c                                            ; $6338: $91
	ldh [hDisp1_SCY], a                                     ; $6339: $e0 $90
	rst $38                                          ; $633b: $ff
	dec sp                                           ; $633c: $3b
	rst $38                                          ; $633d: $ff
	xor e                                            ; $633e: $ab
	rst AddAOntoHL                                          ; $633f: $ef
	xor l                                            ; $6340: $ad
	rst AddAOntoHL                                          ; $6341: $ef
	and [hl]                                         ; $6342: $a6
	rst SubAFromBC                                          ; $6343: $e7
	inc a                                            ; $6344: $3c
	rst $38                                          ; $6345: $ff
	inc sp                                           ; $6346: $33
	ld [hl], b                                       ; $6347: $70
	or b                                             ; $6348: $b0
	ld [hl], b                                       ; $6349: $70
	cp b                                             ; $634a: $b8
	sbc $01                                          ; $634b: $de $01
	halt                                             ; $634d: $76
	ld a, [hl]                                       ; $634e: $7e
	db $dd                                           ; $634f: $dd
	inc bc                                           ; $6350: $03
	halt                                             ; $6351: $76
	jp z, $7a6f                                      ; $6352: $ca $6f $7a

	db $dd                                           ; $6355: $dd
	ld bc, $4196                                     ; $6356: $01 $96 $41
	rst $38                                          ; $6359: $ff
	ld d, l                                          ; $635a: $55
	rst $38                                          ; $635b: $ff
	ld b, c                                          ; $635c: $41
	rst $38                                          ; $635d: $ff
	push de                                          ; $635e: $d5
	rst $38                                          ; $635f: $ff
	pop bc                                           ; $6360: $c1
	ld a, e                                          ; $6361: $7b
	ld hl, sp+$7f                                    ; $6362: $f8 $7f
	rrca                                             ; $6364: $0f
	rst SubAFromDE                                          ; $6365: $df
	ld [hl], a                                       ; $6366: $77
	ld a, d                                          ; $6367: $7a
	db $fd                                           ; $6368: $fd
	ld h, d                                          ; $6369: $62
	di                                               ; $636a: $f3
	ld a, a                                          ; $636b: $7f
	db $fc                                           ; $636c: $fc
	rst SubAFromDE                                          ; $636d: $df
	rlca                                             ; $636e: $07
	ld a, [hl]                                       ; $636f: $7e
	cp [hl]                                          ; $6370: $be
	ld [hl], h                                       ; $6371: $74
	or h                                             ; $6372: $b4
	ld [hl], a                                       ; $6373: $77
	cp $fb                                           ; $6374: $fe $fb
	sbc l                                            ; $6376: $9d
	rst FarCall                                          ; $6377: $f7
	rst JumpTable                                          ; $6378: $c7
	ld [hl], a                                       ; $6379: $77
	cp $95                                           ; $637a: $fe $95
	ld a, $28                                        ; $637c: $3e $28
	rst FarCall                                          ; $637e: $f7
	db $10                                           ; $637f: $10
	rst $38                                          ; $6380: $ff
	jr z, @-$47                                      ; $6381: $28 $b7

	rst JumpTable                                          ; $6383: $c7
	rst FarCall                                          ; $6384: $f7
	add a                                            ; $6385: $87
	cp c                                             ; $6386: $b9
	add h                                            ; $6387: $84
	pop af                                           ; $6388: $f1
	rst SubAFromDE                                          ; $6389: $df
	rst $38                                          ; $638a: $ff
	sub d                                            ; $638b: $92
	ld d, l                                          ; $638c: $55
	rst $38                                          ; $638d: $ff
	ld d, l                                          ; $638e: $55
	xor d                                            ; $638f: $aa
	nop                                              ; $6390: $00
	rst $38                                          ; $6391: $ff
	nop                                              ; $6392: $00
	nop                                              ; $6393: $00
	xor d                                            ; $6394: $aa
	nop                                              ; $6395: $00
	xor d                                            ; $6396: $aa
	ld d, l                                          ; $6397: $55
	rst $38                                          ; $6398: $ff
	ld a, e                                          ; $6399: $7b
	ld hl, sp+$67                                    ; $639a: $f8 $67
	add sp, -$25                                     ; $639c: $e8 $db
	rst $38                                          ; $639e: $ff
	ld a, a                                          ; $639f: $7f
	db $ec                                           ; $63a0: $ec
	ld a, a                                          ; $63a1: $7f
	cp $f5                                           ; $63a2: $fe $f5
	ld a, a                                          ; $63a4: $7f
	ldh a, [c]                                       ; $63a5: $f2
	sbc l                                            ; $63a6: $9d
	ld a, [hl+]                                      ; $63a7: $2a
	ld bc, $f053                                     ; $63a8: $01 $53 $f0
	sbc [hl]                                         ; $63ab: $9e
	dec b                                            ; $63ac: $05
	di                                               ; $63ad: $f3
	sbc l                                            ; $63ae: $9d
	ld d, l                                          ; $63af: $55
	and b                                            ; $63b0: $a0
	ld c, e                                          ; $63b1: $4b
	ldh a, [$9c]                                     ; $63b2: $f0 $9c
	xor d                                            ; $63b4: $aa
	ld d, h                                          ; $63b5: $54
	add b                                            ; $63b6: $80
	ld c, a                                          ; $63b7: $4f
	ldh a, [$7b]                                     ; $63b8: $f0 $7b
	sub d                                            ; $63ba: $92
	ld d, e                                          ; $63bb: $53
	add b                                            ; $63bc: $80
	ld l, a                                          ; $63bd: $6f
	sbc d                                            ; $63be: $9a
	ld d, e                                          ; $63bf: $53
	ldh a, [$9e]                                     ; $63c0: $f0 $9e
	ld d, a                                          ; $63c2: $57
	ld d, e                                          ; $63c3: $53
	ldh a, [$9d]                                     ; $63c4: $f0 $9d
	ld a, a                                          ; $63c6: $7f
	xor e                                            ; $63c7: $ab
	ld e, e                                          ; $63c8: $5b
	ld a, h                                          ; $63c9: $7c
	rst SubAFromDE                                          ; $63ca: $df
	rst $38                                          ; $63cb: $ff
	sbc [hl]                                         ; $63cc: $9e
	xor a                                            ; $63cd: $af
	ld [hl], a                                       ; $63ce: $77
	cp l                                             ; $63cf: $bd
	sbc [hl]                                         ; $63d0: $9e
	dec d                                            ; $63d1: $15
	ld sp, hl                                        ; $63d2: $f9
	ld [hl], e                                       ; $63d3: $73
	ldh a, [c]                                       ; $63d4: $f2
	ld e, e                                          ; $63d5: $5b
	ld a, h                                          ; $63d6: $7c
	ld a, e                                          ; $63d7: $7b
	ld h, b                                          ; $63d8: $60
	ld d, e                                          ; $63d9: $53
	ld l, [hl]                                       ; $63da: $6e
	sbc [hl]                                         ; $63db: $9e
	ld a, [bc]                                       ; $63dc: $0a
	ld d, e                                          ; $63dd: $53
	ld d, d                                          ; $63de: $52
	rst $38                                          ; $63df: $ff
	sbc [hl]                                         ; $63e0: $9e
	ld d, b                                          ; $63e1: $50
	ld d, e                                          ; $63e2: $53
	ld [hl], d                                       ; $63e3: $72
	ld [hl], e                                       ; $63e4: $73
	ld h, b                                          ; $63e5: $60
	ld d, e                                          ; $63e6: $53
	ld c, [hl]                                       ; $63e7: $4e
	sbc [hl]                                         ; $63e8: $9e
	push af                                          ; $63e9: $f5
	ld [hl], a                                       ; $63ea: $77
	rrca                                             ; $63eb: $0f
	ld e, e                                          ; $63ec: $5b
	xor $df                                          ; $63ed: $ee $df
	rst $38                                          ; $63ef: $ff
	ld [hl], e                                       ; $63f0: $73
	xor $9e                                          ; $63f1: $ee $9e
	xor b                                            ; $63f3: $a8
	ld e, e                                          ; $63f4: $5b
	ld [hl], b                                       ; $63f5: $70
	sbc l                                            ; $63f6: $9d
	cp $d5                                           ; $63f7: $fe $d5
	ld d, a                                          ; $63f9: $57
	inc a                                            ; $63fa: $3c
	halt                                             ; $63fb: $76
	bit 7, e                                         ; $63fc: $cb $7b
	rst SubAFromDE                                          ; $63fe: $df
	halt                                             ; $63ff: $76
	cp e                                             ; $6400: $bb
	ld h, e                                          ; $6401: $63
	ld b, b                                          ; $6402: $40
	sbc [hl]                                         ; $6403: $9e
	ld [$e05f], a                                    ; $6404: $ea $5f $e0
	db $db                                           ; $6407: $db
	rst $38                                          ; $6408: $ff
	ld d, e                                          ; $6409: $53
	inc c                                            ; $640a: $0c
	sbc e                                            ; $640b: $9b
	ld hl, sp-$02                                    ; $640c: $f8 $fe
	ld bc, $72fe                                     ; $640e: $01 $fe $72
	sbc b                                            ; $6411: $98
	rst SubAFromDE                                          ; $6412: $df
	rst $38                                          ; $6413: $ff
	ld a, e                                          ; $6414: $7b
	ld h, e                                          ; $6415: $63
	sbc d                                            ; $6416: $9a
	add b                                            ; $6417: $80
	ld a, h                                          ; $6418: $7c
	ld a, [hl]                                       ; $6419: $7e
	add c                                            ; $641a: $81
	db $fc                                           ; $641b: $fc
	halt                                             ; $641c: $76
	adc b                                            ; $641d: $88
	sub l                                            ; $641e: $95
	add b                                            ; $641f: $80
	rst $38                                          ; $6420: $ff
	ld a, a                                          ; $6421: $7f
	inc bc                                           ; $6422: $03
	nop                                              ; $6423: $00
	nop                                              ; $6424: $00
	ld a, b                                          ; $6425: $78
	ld [hl], a                                       ; $6426: $77
	add a                                            ; $6427: $87
	ld hl, sp+$77                                    ; $6428: $f8 $77
	inc c                                            ; $642a: $0c
	sbc e                                            ; $642b: $9b
	add b                                            ; $642c: $80
	ld hl, sp+$7f                                    ; $642d: $f8 $7f
	rlca                                             ; $642f: $07
	db $fd                                           ; $6430: $fd
	sbc [hl]                                         ; $6431: $9e
	rst JumpTable                                          ; $6432: $c7
	ld [hl], a                                       ; $6433: $77
	ldh a, [c]                                       ; $6434: $f2
	sbc e                                            ; $6435: $9b
	ld e, a                                          ; $6436: $5f
	xor e                                            ; $6437: $ab
	ld d, l                                          ; $6438: $55
	ccf                                              ; $6439: $3f
	ld [hl], e                                       ; $643a: $73
	ldh a, [c]                                       ; $643b: $f2
	ld l, a                                          ; $643c: $6f
	sub b                                            ; $643d: $90
	sbc e                                            ; $643e: $9b
	cp $59                                           ; $643f: $fe $59
	add [hl]                                         ; $6441: $86
	dec sp                                           ; $6442: $3b
	ld [hl], a                                       ; $6443: $77
	xor l                                            ; $6444: $ad
	add d                                            ; $6445: $82
	ld bc, $3f07                                     ; $6446: $01 $07 $3f
	db $fc                                           ; $6449: $fc
	ld bc, $4ca3                                     ; $644a: $01 $a3 $4c
	sub b                                            ; $644d: $90
	ld l, c                                          ; $644e: $69
	or [hl]                                          ; $644f: $b6
	call $ffb2                                       ; $6450: $cd $b2 $ff
	ld e, a                                          ; $6453: $5f
	cp a                                             ; $6454: $bf
	ld a, a                                          ; $6455: $7f
	rst FarCall                                          ; $6456: $f7
	rst GetHLinHL                                          ; $6457: $cf
	ccf                                              ; $6458: $3f
	ld a, a                                          ; $6459: $7f
	ldh a, [rPCM34]                                  ; $645a: $f0 $77
	push af                                          ; $645c: $f5
	or h                                             ; $645d: $b4
	ld [hl], h                                       ; $645e: $74
	or l                                             ; $645f: $b5
	halt                                             ; $6460: $76
	add sp, -$01                                     ; $6461: $e8 $ff
	call c, $94f8                                    ; $6463: $dc $f8 $94
	ld sp, hl                                        ; $6466: $f9
	rst $38                                          ; $6467: $ff
	rrca                                             ; $6468: $0f
	xor $af                                          ; $6469: $ee $af
	dec l                                            ; $646b: $2d
	ld l, $ad                                        ; $646c: $2e $ad
	ld l, [hl]                                       ; $646e: $6e
	rla                                              ; $646f: $17
	rst $38                                          ; $6470: $ff
	call c, $8d1f                                    ; $6471: $dc $1f $8d
	sbc a                                            ; $6474: $9f
	rst $38                                          ; $6475: $ff
	add b                                            ; $6476: $80
	push bc                                          ; $6477: $c5
	ld [hl-], a                                      ; $6478: $32
	add hl, bc                                       ; $6479: $09
	sub [hl]                                         ; $647a: $96
	ld l, l                                          ; $647b: $6d
	or e                                             ; $647c: $b3
	ld c, l                                          ; $647d: $4d
	rst $38                                          ; $647e: $ff
	ld a, [$fefd]                                    ; $647f: $fa $fd $fe
	rst AddAOntoHL                                          ; $6482: $ef
	di                                               ; $6483: $f3
	db $fc                                           ; $6484: $fc
	cp $7a                                           ; $6485: $fe $7a
	rst $38                                          ; $6487: $ff
	ld a, a                                          ; $6488: $7f
	sub e                                            ; $6489: $93
	sbc h                                            ; $648a: $9c
	sbc d                                            ; $648b: $9a
	ld h, c                                          ; $648c: $61
	call c, Call_017_7d76                            ; $648d: $dc $76 $7d
	sbc e                                            ; $6490: $9b
	add b                                            ; $6491: $80
	ldh [$fc], a                                     ; $6492: $e0 $fc
	ccf                                              ; $6494: $3f
	ld [hl], a                                       ; $6495: $77
	ldh a, [rPCM12]                                  ; $6496: $f0 $76
	dec bc                                           ; $6498: $0b
	ld h, [hl]                                       ; $6499: $66
	ld l, l                                          ; $649a: $6d
	ld a, a                                          ; $649b: $7f
	db $e3                                           ; $649c: $e3
	sbc [hl]                                         ; $649d: $9e
	xor a                                            ; $649e: $af
	ld a, d                                          ; $649f: $7a
	ld [hl], d                                       ; $64a0: $72
	ld e, [hl]                                       ; $64a1: $5e

jr_017_64a2:
	add b                                            ; $64a2: $80
	ld [hl], a                                       ; $64a3: $77
	db $f4                                           ; $64a4: $f4
	ld a, [hl]                                       ; $64a5: $7e
	sbc [hl]                                         ; $64a6: $9e
	sbc [hl]                                         ; $64a7: $9e
	ld [bc], a                                       ; $64a8: $02
	ld e, e                                          ; $64a9: $5b
	ld bc, $f45f                                     ; $64aa: $01 $5f $f4
	ld l, a                                          ; $64ad: $6f
	ldh a, [rDMA]                                    ; $64ae: $f0 $46
	and b                                            ; $64b0: $a0
	ld b, a                                          ; $64b1: $47
	ldh a, [$9e]                                     ; $64b2: $f0 $9e
	ld b, b                                          ; $64b4: $40
	db $e4                                           ; $64b5: $e4
	halt                                             ; $64b6: $76
	ld sp, $6e7e                                     ; $64b7: $31 $7e $6e
	ld e, a                                          ; $64ba: $5f
	call c, $137f                                    ; $64bb: $dc $7f $13
	sbc [hl]                                         ; $64be: $9e
	push af                                          ; $64bf: $f5
	ld a, d                                          ; $64c0: $7a
	or d                                             ; $64c1: $b2
	ld e, a                                          ; $64c2: $5f
	cp d                                             ; $64c3: $ba
	sbc l                                            ; $64c4: $9d
	db $e3                                           ; $64c5: $e3
	rra                                              ; $64c6: $1f
	sbc $ff                                          ; $64c7: $de $ff
	sbc d                                            ; $64c9: $9a
	ld a, [$aad5]                                    ; $64ca: $fa $d5 $aa
	db $fc                                           ; $64cd: $fc
	ldh [$f7], a                                     ; $64ce: $e0 $f7
	sbc h                                            ; $64d0: $9c
	ld bc, $7f19                                     ; $64d1: $01 $19 $7f
	ei                                               ; $64d4: $fb
	sbc [hl]                                         ; $64d5: $9e
	ld b, $fd                                        ; $64d6: $06 $fd
	sbc d                                            ; $64d8: $9a
	inc b                                            ; $64d9: $04
	di                                               ; $64da: $f3
	dec sp                                           ; $64db: $3b
	ldh a, [rP1]                                     ; $64dc: $f0 $00
	ld a, d                                          ; $64de: $7a
	and a                                            ; $64df: $a7
	sbc h                                            ; $64e0: $9c
	inc bc                                           ; $64e1: $03
	rrca                                             ; $64e2: $0f
	db $fc                                           ; $64e3: $fc
	cp $93                                           ; $64e4: $fe $93
	add hl, bc                                       ; $64e6: $09
	ld c, [hl]                                       ; $64e7: $4e
	ld [hl], h                                       ; $64e8: $74
	and b                                            ; $64e9: $a0
	inc bc                                           ; $64ea: $03
	inc c                                            ; $64eb: $0c
	inc sp                                           ; $64ec: $33
	sbc l                                            ; $64ed: $9d
	rlca                                             ; $64ee: $07
	ccf                                              ; $64ef: $3f
	ld hl, sp-$40                                    ; $64f0: $f8 $c0
	ld a, e                                          ; $64f2: $7b
	db $ed                                           ; $64f3: $ed
	adc [hl]                                         ; $64f4: $8e
	ld a, [hl]                                       ; $64f5: $7e
	db $d3                                           ; $64f6: $d3
	call z, $cd33                                    ; $64f7: $cc $33 $cd
	scf                                              ; $64fa: $37
	jp nc, $334d                                     ; $64fb: $d2 $4d $33

	ldh [$03], a                                     ; $64fe: $e0 $03
	rrca                                             ; $6500: $0f
	ld a, $f8                                        ; $6501: $3e $f8
	pop hl                                           ; $6503: $e1
	add e                                            ; $6504: $83
	rrca                                             ; $6505: $0f
	halt                                             ; $6506: $76
	jr nc, jr_017_64a2                               ; $6507: $30 $99

	db $fc                                           ; $6509: $fc
	db $fd                                           ; $650a: $fd
	ld [$e7d4], a                                    ; $650b: $ea $d4 $e7
	rst GetHLinHL                                          ; $650e: $cf
	ld a, d                                          ; $650f: $7a
	cp a                                             ; $6510: $bf
	sbc $ff                                          ; $6511: $de $ff
	sub a                                            ; $6513: $97
	rst JumpTable                                          ; $6514: $c7
	add b                                            ; $6515: $80
	nop                                              ; $6516: $00
	db $10                                           ; $6517: $10
	jr nz, jr_017_652a                               ; $6518: $20 $10

	jr nz, jr_017_656c                               ; $651a: $20 $50

	reti                                             ; $651c: $d9


	rst $38                                          ; $651d: $ff
	sub a                                            ; $651e: $97
	db $e3                                           ; $651f: $e3
	ld bc, $0800                                     ; $6520: $01 $00 $08
	inc b                                            ; $6523: $04
	ld [$0a04], sp                                   ; $6524: $08 $04 $0a
	sub $ff                                          ; $6527: $d6 $ff
	sbc b                                            ; $6529: $98

jr_017_652a:
	ld a, a                                          ; $652a: $7f
	ccf                                              ; $652b: $3f
	cp a                                             ; $652c: $bf
	ld d, a                                          ; $652d: $57
	dec hl                                           ; $652e: $2b
	rst SubAFromBC                                          ; $652f: $e7
	di                                               ; $6530: $f3
	ld a, d                                          ; $6531: $7a
	cp a                                             ; $6532: $bf
	sbc $ff                                          ; $6533: $de $ff
	add b                                            ; $6535: $80
	swap e                                           ; $6536: $cb $33
	call z, $ecb3                                    ; $6538: $cc $b3 $ec
	ld c, e                                          ; $653b: $4b
	or d                                             ; $653c: $b2
	call z, $c007                                    ; $653d: $cc $07 $c0
	ldh a, [$7c]                                     ; $6540: $f0 $7c
	rra                                              ; $6542: $1f
	add a                                            ; $6543: $87
	pop bc                                           ; $6544: $c1
	ldh a, [hDisp1_SCY]                                     ; $6545: $f0 $90
	ld [hl], d                                       ; $6547: $72
	ld l, $05                                        ; $6548: $2e $05
	ret nz                                           ; $654a: $c0

	jr nc, @-$32                                     ; $654b: $30 $cc

	cp c                                             ; $654d: $b9
	ldh [$fc], a                                     ; $654e: $e0 $fc
	rra                                              ; $6550: $1f
	inc bc                                           ; $6551: $03
	nop                                              ; $6552: $00
	ret nz                                           ; $6553: $c0

	ldh a, [$97]                                     ; $6554: $f0 $97
	ld a, [hl]                                       ; $6556: $7e
	nop                                              ; $6557: $00
	nop                                              ; $6558: $00
	jr nz, jr_017_652a                               ; $6559: $20 $cf

	call c, $000f                                    ; $655b: $dc $0f $00
	ld a, c                                          ; $655e: $79
	adc d                                            ; $655f: $8a
	ld a, a                                          ; $6560: $7f
	di                                               ; $6561: $f3
	ld a, [hl]                                       ; $6562: $7e
	and e                                            ; $6563: $a3
	ei                                               ; $6564: $fb
	sbc h                                            ; $6565: $9c
	add b                                            ; $6566: $80
	sbc b                                            ; $6567: $98
	cp $fb                                           ; $6568: $fe $fb
	sbc c                                            ; $656a: $99
	ld h, b                                          ; $656b: $60

jr_017_656c:
	nop                                              ; $656c: $00
	nop                                              ; $656d: $00
	ld e, $ee                                        ; $656e: $1e $ee
	pop hl                                           ; $6570: $e1

jr_017_6571:
	ld [hl], a                                       ; $6571: $77
	ld l, $7d                                        ; $6572: $2e $7d
	db $ed                                           ; $6574: $ed
	sbc l                                            ; $6575: $9d
	rra                                              ; $6576: $1f
	cp $6f                                           ; $6577: $fe $6f
	ld l, $9a                                        ; $6579: $2e $9a
	ld bc, $7e3e                                     ; $657b: $01 $3e $7e
	add c                                            ; $657e: $81
	ccf                                              ; $657f: $3f
	ld [hl], l                                       ; $6580: $75
	ldh a, [$9b]                                     ; $6581: $f0 $9b
	ld bc, $feff                                     ; $6583: $01 $ff $fe
	ret nz                                           ; $6586: $c0

	db $fc                                           ; $6587: $fc
	sbc e                                            ; $6588: $9b
	rra                                              ; $6589: $1f
	ld a, a                                          ; $658a: $7f
	add b                                            ; $658b: $80
	ld a, a                                          ; $658c: $7f
	ld l, c                                          ; $658d: $69
	ret nc                                           ; $658e: $d0

	ld l, l                                          ; $658f: $6d
	ld b, e                                          ; $6590: $43
	ld a, e                                          ; $6591: $7b
	ldh [c], a                                       ; $6592: $e2
	ld l, h                                          ; $6593: $6c
	ld e, b                                          ; $6594: $58
	ld [hl], b                                       ; $6595: $70
	ld d, c                                          ; $6596: $51
	ld a, a                                          ; $6597: $7f
	sub d                                            ; $6598: $92
	sbc [hl]                                         ; $6599: $9e
	ld e, $7b                                        ; $659a: $1e $7b
	xor l                                            ; $659c: $ad
	ld [hl], a                                       ; $659d: $77
	rst FarCall                                          ; $659e: $f7
	db $fd                                           ; $659f: $fd
	sub h                                            ; $65a0: $94
	jr nc, jr_017_6571                               ; $65a1: $30 $ce

	ld [hl], c                                       ; $65a3: $71
	ld b, $80                                        ; $65a4: $06 $80
	ldh a, [$be]                                     ; $65a6: $f0 $be
	scf                                              ; $65a8: $37
	ret nz                                           ; $65a9: $c0

	ldh a, [$0e]                                     ; $65aa: $f0 $0e
	ld a, d                                          ; $65ac: $7a
	db $fc                                           ; $65ad: $fc
	sub l                                            ; $65ae: $95
	ret nz                                           ; $65af: $c0

	ld hl, sp+$17                                    ; $65b0: $f8 $17
	add a                                            ; $65b2: $87
	ld [hl], b                                       ; $65b3: $70
	call c, $c637                                    ; $65b4: $dc $37 $c6
	pop af                                           ; $65b7: $f1
	cp $7b                                           ; $65b8: $fe $7b
	ld a, l                                          ; $65ba: $7d
	sbc d                                            ; $65bb: $9a
	ldh [$f8], a                                     ; $65bc: $e0 $f8
	ccf                                              ; $65be: $3f
	rrca                                             ; $65bf: $0f
	ld bc, $ffdb                                     ; $65c0: $01 $db $ff
	ld a, a                                          ; $65c3: $7f
	ccf                                              ; $65c4: $3f
	ld a, l                                          ; $65c5: $7d
	ld a, e                                          ; $65c6: $7b
	sbc [hl]                                         ; $65c7: $9e
	rrca                                             ; $65c8: $0f
	ld a, c                                          ; $65c9: $79
	sub d                                            ; $65ca: $92
	db $fd                                           ; $65cb: $fd
	ld a, [hl]                                       ; $65cc: $7e
	ldh [c], a                                       ; $65cd: $e2
	sbc [hl]                                         ; $65ce: $9e
	ld a, b                                          ; $65cf: $78
	ld a, e                                          ; $65d0: $7b
	sub e                                            ; $65d1: $93
	ld [hl], a                                       ; $65d2: $77
	rst FarCall                                          ; $65d3: $f7
	db $fd                                           ; $65d4: $fd
	sub h                                            ; $65d5: $94
	inc c                                            ; $65d6: $0c
	ld [hl], e                                       ; $65d7: $73
	adc [hl]                                         ; $65d8: $8e
	ld h, b                                          ; $65d9: $60
	ld bc, $7d0f                                     ; $65da: $01 $0f $7d
	db $ec                                           ; $65dd: $ec
	inc bc                                           ; $65de: $03
	rrca                                             ; $65df: $0f
	ld [hl], b                                       ; $65e0: $70
	ld a, e                                          ; $65e1: $7b
	xor h                                            ; $65e2: $ac
	sub l                                            ; $65e3: $95
	inc bc                                           ; $65e4: $03
	rra                                              ; $65e5: $1f
	add sp, -$1f                                     ; $65e6: $e8 $e1
	ld c, $3b                                        ; $65e8: $0e $3b
	db $ec                                           ; $65ea: $ec
	ld h, e                                          ; $65eb: $63
	adc a                                            ; $65ec: $8f
	ld a, a                                          ; $65ed: $7f
	ld a, d                                          ; $65ee: $7a
	xor l                                            ; $65ef: $ad
	sbc d                                            ; $65f0: $9a
	rlca                                             ; $65f1: $07
	rra                                              ; $65f2: $1f
	db $fc                                           ; $65f3: $fc
	ldh a, [$80]                                     ; $65f4: $f0 $80
	db $db                                           ; $65f6: $db
	rst $38                                          ; $65f7: $ff
	ld a, [hl]                                       ; $65f8: $7e
	rst GetHLinHL                                          ; $65f9: $cf
	ld a, a                                          ; $65fa: $7f
	ld l, e                                          ; $65fb: $6b
	sbc [hl]                                         ; $65fc: $9e
	ldh a, [$73]                                     ; $65fd: $f0 $73
	sub b                                            ; $65ff: $90

Call_017_6600:
	ld h, l                                          ; $6600: $65
	jr nz, jr_017_6676                               ; $6601: $20 $73

	ld [hl], l                                       ; $6603: $75
	ld e, b                                          ; $6604: $58
	jr nc, jr_017_666e                               ; $6605: $30 $67

	ldh a, [$73]                                     ; $6607: $f0 $73
	dec l                                            ; $6609: $2d
	ld a, a                                          ; $660a: $7f
	db $d3                                           ; $660b: $d3
	ld l, h                                          ; $660c: $6c
	ld a, d                                          ; $660d: $7a
	ld a, a                                          ; $660e: $7f
	sbc [hl]                                         ; $660f: $9e
	ld [hl], a                                       ; $6610: $77
	ld hl, sp-$65                                    ; $6611: $f8 $9b
	rlca                                             ; $6613: $07
	ld a, $f8                                        ; $6614: $3e $f8
	db $fc                                           ; $6616: $fc
	ld a, e                                          ; $6617: $7b
	ldh [c], a                                       ; $6618: $e2
	ld a, [hl]                                       ; $6619: $7e
	ld l, [hl]                                       ; $661a: $6e
	sbc e                                            ; $661b: $9b
	rst $38                                          ; $661c: $ff
	add sp, -$3c                                     ; $661d: $e8 $c4
	add d                                            ; $661f: $82
	call c, $9cf0                                    ; $6620: $dc $f0 $9c
	ldh [$c0], a                                     ; $6623: $e0 $c0
	nop                                              ; $6625: $00
	sbc $1f                                          ; $6626: $de $1f
	ld a, l                                          ; $6628: $7d
	ld b, e                                          ; $6629: $43
	sbc $ff                                          ; $662a: $de $ff
	sbc d                                            ; $662c: $9a
	jp $330c                                         ; $662d: $c3 $0c $33


	db $fd                                           ; $6630: $fd
	rst $38                                          ; $6631: $ff
	ld a, d                                          ; $6632: $7a
	and a                                            ; $6633: $a7
	sub [hl]                                         ; $6634: $96
	di                                               ; $6635: $f3
	rst GetHLinHL                                          ; $6636: $cf
	ccf                                              ; $6637: $3f
	rst $38                                          ; $6638: $ff
	rst AddAOntoHL                                          ; $6639: $ef
	jp $83c1                                         ; $663a: $c3 $c1 $83


	rlca                                             ; $663d: $07
	sbc $7f                                          ; $663e: $de $7f
	sub a                                            ; $6640: $97
	ccf                                              ; $6641: $3f
	rra                                              ; $6642: $1f
	rlca                                             ; $6643: $07
	nop                                              ; $6644: $00
	cp $fe                                           ; $6645: $fe $fe
	ldh [$f0], a                                     ; $6647: $e0 $f0
	ld a, b                                          ; $6649: $78
	reti                                             ; $664a: $d9


	ld [bc], a                                       ; $664b: $02
	ld h, b                                          ; $664c: $60
	ld e, [hl]                                       ; $664d: $5e
	ld h, b                                          ; $664e: $60
	ld a, a                                          ; $664f: $7f
	sbc e                                            ; $6650: $9b
	halt                                             ; $6651: $76
	ld h, b                                          ; $6652: $60
	ld a, a                                          ; $6653: $7f
	add hl, bc                                       ; $6654: $09
	rst SubAFromDE                                          ; $6655: $df
	add b                                            ; $6656: $80
	ld e, a                                          ; $6657: $5f
	ld l, b                                          ; $6658: $68
	ld l, e                                          ; $6659: $6b
	rst SubAFromDE                                          ; $665a: $df
	ld a, d                                          ; $665b: $7a
	rst GetHLinHL                                          ; $665c: $cf
	ld a, a                                          ; $665d: $7f
	ld [hl], l                                       ; $665e: $75
	sbc l                                            ; $665f: $9d
	pop hl                                           ; $6660: $e1
	ld sp, hl                                        ; $6661: $f9
	db $dd                                           ; $6662: $dd
	rst $38                                          ; $6663: $ff
	ld a, d                                          ; $6664: $7a
	ld h, b                                          ; $6665: $60
	sbc [hl]                                         ; $6666: $9e
	adc $46                                          ; $6667: $ce $46
	ld h, b                                          ; $6669: $60
	sbc l                                            ; $666a: $9d
	ret nz                                           ; $666b: $c0

	jr @+$6c                                         ; $666c: $18 $6a

jr_017_666e:
	ld h, b                                          ; $666e: $60
	ld a, d                                          ; $666f: $7a
	ld l, [hl]                                       ; $6670: $6e
	adc a                                            ; $6671: $8f
	inc bc                                           ; $6672: $03
	rlca                                             ; $6673: $07
	rrca                                             ; $6674: $0f
	rra                                              ; $6675: $1f

jr_017_6676:
	dec [hl]                                         ; $6676: $35
	ld l, d                                          ; $6677: $6a
	ld h, b                                          ; $6678: $60
	ld [hl], b                                       ; $6679: $70
	inc bc                                           ; $667a: $03
	ld b, $0c                                        ; $667b: $06 $0c
	jr @+$32                                         ; $667d: $18 $30

	ld h, b                                          ; $667f: $60
	ld h, b                                          ; $6680: $60
	ld [hl], b                                       ; $6681: $70
	db $dd                                           ; $6682: $dd
	rst $38                                          ; $6683: $ff
	sbc e                                            ; $6684: $9b
	ld [hl], l                                       ; $6685: $75
	ld [$0040], a                                    ; $6686: $ea $40 $00
	ld l, a                                          ; $6689: $6f
	ldh a, [$7f]                                     ; $668a: $f0 $7f
	ld hl, sp-$71                                    ; $668c: $f8 $8f
	pop hl                                           ; $668e: $e1
	add c                                            ; $668f: $81
	jp $5fe3                                         ; $6690: $c3 $e3 $5f


	xor h                                            ; $6693: $ac
	ld e, b                                          ; $6694: $58
	or b                                             ; $6695: $b0
	ld sp, hl                                        ; $6696: $f9
	pop hl                                           ; $6697: $e1
	ld c, a                                          ; $6698: $4f
	ccf                                              ; $6699: $3f
	ld e, $3c                                        ; $669a: $1e $3c
	ld a, b                                          ; $669c: $78
	ldh a, [$72]                                     ; $669d: $f0 $72
	ldh a, [c]                                       ; $669f: $f2
	sbc e                                            ; $66a0: $9b
	xor a                                            ; $66a1: $af
	rrca                                             ; $66a2: $0f
	inc b                                            ; $66a3: $04
	add e                                            ; $66a4: $83
	db $fd                                           ; $66a5: $fd
	rst SubAFromDE                                          ; $66a6: $df
	rrca                                             ; $66a7: $0f
	sbc [hl]                                         ; $66a8: $9e
	inc b                                            ; $66a9: $04

jr_017_66aa:
	ld [hl], e                                       ; $66aa: $73
	ldh a, [$9c]                                     ; $66ab: $f0 $9c
	ld [$c1e0], a                                    ; $66ad: $ea $e0 $c1
	ld [hl], d                                       ; $66b0: $72
	pop af                                           ; $66b1: $f1
	rst SubAFromDE                                          ; $66b2: $df
	ldh [$7f], a                                     ; $66b3: $e0 $7f
	ld hl, sp-$69                                    ; $66b5: $f8 $97
	rst $38                                          ; $66b7: $ff
	ret nz                                           ; $66b8: $c0

	ret nz                                           ; $66b9: $c0

	ld b, b                                          ; $66ba: $40
	ret nz                                           ; $66bb: $c0

	add b                                            ; $66bc: $80
	add b                                            ; $66bd: $80
	rst $38                                          ; $66be: $ff
	db $dd                                           ; $66bf: $dd
	ld a, a                                          ; $66c0: $7f
	sbc l                                            ; $66c1: $9d
	rst $38                                          ; $66c2: $ff
	push de                                          ; $66c3: $d5
	ld a, d                                          ; $66c4: $7a
	ret z                                            ; $66c5: $c8

	db $dd                                           ; $66c6: $dd
	rlca                                             ; $66c7: $07
	ld [hl], l                                       ; $66c8: $75
	jr jr_017_66aa                                   ; $66c9: $18 $df

	cp $6e                                           ; $66cb: $fe $6e
	ret z                                            ; $66cd: $c8

	ld l, a                                          ; $66ce: $6f
	ld l, d                                          ; $66cf: $6a
	ld [hl], a                                       ; $66d0: $77
	ret nc                                           ; $66d1: $d0

	ccf                                              ; $66d2: $3f
	ldh a, [$7f]                                     ; $66d3: $f0 $7f
	daa                                              ; $66d5: $27
	jp c, $9eff                                      ; $66d6: $da $ff $9e

	ld e, $6f                                        ; $66d9: $1e $6f
	ldh a, [rPCM12]                                  ; $66db: $f0 $76
	sub $df                                          ; $66dd: $d6 $df
	rst $38                                          ; $66df: $ff
	ld a, h                                          ; $66e0: $7c
	sbc $9d                                          ; $66e1: $de $9d
	push de                                          ; $66e3: $d5
	inc bc                                           ; $66e4: $03
	ld [hl], a                                       ; $66e5: $77
	ldh a, [$7e]                                     ; $66e6: $f0 $7e
	cp c                                             ; $66e8: $b9
	sbc l                                            ; $66e9: $9d
	add c                                            ; $66ea: $81
	inc bc                                           ; $66eb: $03
	db $dd                                           ; $66ec: $dd
	ldh [$9a], a                                     ; $66ed: $e0 $9a
	ld h, b                                          ; $66ef: $60
	ret nz                                           ; $66f0: $c0

	add b                                            ; $66f1: $80
	nop                                              ; $66f2: $00
	ldh [$de], a                                     ; $66f3: $e0 $de
	jr nz, jr_017_676e                               ; $66f5: $20 $77

	ld hl, sp-$63                                    ; $66f7: $f8 $9d
	jr c, jr_017_6737                                ; $66f9: $38 $3c

	ld a, e                                          ; $66fb: $7b
	db $dd                                           ; $66fc: $dd
	ld a, l                                          ; $66fd: $7d
	ld e, $9a                                        ; $66fe: $1e $9a
	ld hl, sp+$38                                    ; $6700: $f8 $38
	db $fc                                           ; $6702: $fc
	cp $07                                           ; $6703: $fe $07
	ld [hl], a                                       ; $6705: $77
	ld c, h                                          ; $6706: $4c

Call_017_6707:
	ld a, a                                          ; $6707: $7f
	db $fc                                           ; $6708: $fc
	ld a, a                                          ; $6709: $7f
	cp $7a                                           ; $670a: $fe $7a
	ret nc                                           ; $670c: $d0

	sbc l                                            ; $670d: $9d
	ld [bc], a                                       ; $670e: $02
	inc bc                                           ; $670f: $03
	ld a, e                                          ; $6710: $7b
	ldh a, [c]                                       ; $6711: $f2
	ld [hl], a                                       ; $6712: $77
	ld hl, sp+$7f                                    ; $6713: $f8 $7f
	call c, $e198                                    ; $6715: $dc $98 $e1
	ld [hl], e                                       ; $6718: $73
	ccf                                              ; $6719: $3f
	ld e, $0c                                        ; $671a: $1e $0c
	dec b                                            ; $671c: $05
	ldh [rOCPD], a                                   ; $671d: $e0 $6b
	ld hl, sp-$69                                    ; $671f: $f8 $97
	inc bc                                           ; $6721: $03
	ld bc, $8000                                     ; $6722: $01 $00 $80
	ret nz                                           ; $6725: $c0

	ldh [$c0], a                                     ; $6726: $e0 $c0
	add b                                            ; $6728: $80
	ld h, a                                          ; $6729: $67
	ld hl, sp+$7f                                    ; $672a: $f8 $7f
	xor [hl]                                         ; $672c: $ae
	ld a, e                                          ; $672d: $7b
	res 3, h                                         ; $672e: $cb $9c
	jr jr_017_673e                                   ; $6730: $18 $0c

	inc bc                                           ; $6732: $03
	ld h, a                                          ; $6733: $67
	ld hl, sp-$21                                    ; $6734: $f8 $df
	rst $38                                          ; $6736: $ff

jr_017_6737:
	ld a, c                                          ; $6737: $79

jr_017_6738:
	jr z, jr_017_6738                                ; $6738: $28 $fe

	sbc [hl]                                         ; $673a: $9e
	ldh a, [$73]                                     ; $673b: $f0 $73
	add [hl]                                         ; $673d: $86

jr_017_673e:
	ld a, d                                          ; $673e: $7a
	or h                                             ; $673f: $b4
	sbc [hl]                                         ; $6740: $9e
	inc c                                            ; $6741: $0c
	ld d, [hl]                                       ; $6742: $56
	ld [$957b], sp                                   ; $6743: $08 $7b $95
	call c, $fffe                                    ; $6746: $dc $fe $ff
	db $dd                                           ; $6749: $dd
	jp Jump_017_4673                                 ; $674a: $c3 $73 $46


	sbc l                                            ; $674d: $9d
	ld bc, $dc03                                     ; $674e: $01 $03 $dc
	ld b, $7f                                        ; $6751: $06 $7f
	ld [hl], $9c                                     ; $6753: $36 $9c
	xor e                                            ; $6755: $ab
	ld d, [hl]                                       ; $6756: $56
	ld l, $de                                        ; $6757: $2e $de

jr_017_6759:
	ld b, $96                                        ; $6759: $06 $96
	ld a, b                                          ; $675b: $78
	ldh [$80], a                                     ; $675c: $e0 $80
	inc bc                                           ; $675e: $03
	rrca                                             ; $675f: $0f
	inc e                                            ; $6760: $1c
	db $10                                           ; $6761: $10
	db $10                                           ; $6762: $10
	ld hl, sp+$77                                    ; $6763: $f8 $77
	ld hl, sp-$66                                    ; $6765: $f8 $9a
	dec e                                            ; $6767: $1d
	ld a, [de]                                       ; $6768: $1a
	dec d                                            ; $6769: $15
	rrca                                             ; $676a: $0f
	jr c, @-$20                                      ; $676b: $38 $de

	rst $38                                          ; $676d: $ff

jr_017_676e:
	sbc d                                            ; $676e: $9a
	ld e, a                                          ; $676f: $5f
	xor e                                            ; $6770: $ab
	ld d, l                                          ; $6771: $55
	rrca                                             ; $6772: $0f
	ccf                                              ; $6773: $3f
	ld l, l                                          ; $6774: $6d
	or b                                             ; $6775: $b0
	sbc [hl]                                         ; $6776: $9e
	inc a                                            ; $6777: $3c
	ld c, e                                          ; $6778: $4b
	or b                                             ; $6779: $b0
	sub a                                            ; $677a: $97
	jr nc, @+$77                                     ; $677b: $30 $75

	jp z, Jump_017_7bf5                              ; $677d: $ca $f5 $7b

	ld a, $1f                                        ; $6780: $3e $1f
	dec c                                            ; $6782: $0d
	ld a, c                                          ; $6783: $79
	call c, Call_017_5f7f                            ; $6784: $dc $7f $5f
	sub h                                            ; $6787: $94
	cp [hl]                                          ; $6788: $be
	rra                                              ; $6789: $1f
	inc c                                            ; $678a: $0c
	nop                                              ; $678b: $00
	ld d, l                                          ; $678c: $55
	xor d                                            ; $678d: $aa
	rst SubAFromHL                                          ; $678e: $d7
	rst AddAOntoHL                                          ; $678f: $ef
	rst SubAFromHL                                          ; $6790: $d7
	db $eb                                           ; $6791: $eb
	rst SubAFromHL                                          ; $6792: $d7
	cp $9d                                           ; $6793: $fe $9d
	add d                                            ; $6795: $82
	rst JumpTable                                          ; $6796: $c7
	sbc $c3                                          ; $6797: $de $c3
	sbc h                                            ; $6799: $9c
	rlca                                             ; $679a: $07
	ld e, [hl]                                       ; $679b: $5e
	cp d                                             ; $679c: $ba
	ld a, e                                          ; $679d: $7b
	ld bc, $ea8d                                     ; $679e: $01 $8d $ea
	ld [hl], a                                       ; $67a1: $77
	rlca                                             ; $67a2: $07
	ld c, $38                                        ; $67a3: $0e $38
	ldh [$c0], a                                     ; $67a5: $e0 $c0
	ret nz                                           ; $67a7: $c0

	ldh [$33], a                                     ; $67a8: $e0 $33
	nop                                              ; $67aa: $00
	inc bc                                           ; $67ab: $03
	xor a                                            ; $67ac: $af
	ld e, a                                          ; $67ad: $5f
	cp e                                             ; $67ae: $bb
	ld [hl], l                                       ; $67af: $75
	ld [$76f5], a                                    ; $67b0: $ea $f5 $76
	ld b, a                                          ; $67b3: $47
	sbc h                                            ; $67b4: $9c
	dec de                                           ; $67b5: $1b
	jr nc, @-$1e                                     ; $67b6: $30 $e0

	ld a, d                                          ; $67b8: $7a
	ld a, $7f                                        ; $67b9: $3e $7f
	db $f4                                           ; $67bb: $f4
	sbc e                                            ; $67bc: $9b
	ld a, $cf                                        ; $67bd: $3e $cf
	or e                                             ; $67bf: $b3
	ld e, b                                          ; $67c0: $58
	halt                                             ; $67c1: $76
	jr nz, jr_017_6759                               ; $67c2: $20 $95

	inc a                                            ; $67c4: $3c
	rst GetHLinHL                                          ; $67c5: $cf
	inc sp                                           ; $67c6: $33
	ld [$30c0], sp                                   ; $67c7: $08 $c0 $30
	xor b                                            ; $67ca: $a8
	ld e, b                                          ; $67cb: $58
	cp b                                             ; $67cc: $b8
	ld [hl], b                                       ; $67cd: $70
	ld a, e                                          ; $67ce: $7b
	push de                                          ; $67cf: $d5
	sbc d                                            ; $67d0: $9a
	jr nc, jr_017_67db                               ; $67d1: $30 $08

	ld [$3018], sp                                   ; $67d3: $08 $18 $30
	ld a, c                                          ; $67d6: $79
	add a                                            ; $67d7: $87
	ldh a, [c]                                       ; $67d8: $f2
	sbc l                                            ; $67d9: $9d
	or b                                             ; $67da: $b0

jr_017_67db:
	ld d, b                                          ; $67db: $50
	db $db                                           ; $67dc: $db
	ldh a, [$d9]                                     ; $67dd: $f0 $d9
	db $10                                           ; $67df: $10
	sbc $06                                          ; $67e0: $de $06
	sbc [hl]                                         ; $67e2: $9e
	rlca                                             ; $67e3: $07
	ld [hl], e                                       ; $67e4: $73
	cp $da                                           ; $67e5: $fe $da
	ld b, $de                                        ; $67e7: $06 $de
	db $10                                           ; $67e9: $10
	sbc l                                            ; $67ea: $9d
	ld d, b                                          ; $67eb: $50
	or b                                             ; $67ec: $b0
	ld a, e                                          ; $67ed: $7b
	cp $9d                                           ; $67ee: $fe $9d
	ld a, [de]                                       ; $67f0: $1a
	ld de, $e06b                                     ; $67f1: $11 $6b $e0
	jp c, $d907                                      ; $67f4: $da $07 $d9

	ld b, $9e                                        ; $67f7: $06 $9e
	xor b                                            ; $67f9: $a8
	ld [hl], c                                       ; $67fa: $71
	ld [hl-], a                                      ; $67fb: $32
	sbc d                                            ; $67fc: $9a
	ldh [$fc], a                                     ; $67fd: $e0 $fc
	ld [$9010], sp                                   ; $67ff: $08 $10 $90
	ld [hl], a                                       ; $6802: $77
	ld hl, sp-$64                                    ; $6803: $f8 $9c
	inc e                                            ; $6805: $1c
	ld c, $0f                                        ; $6806: $0e $0f
	ld [hl], l                                       ; $6808: $75
	daa                                              ; $6809: $27
	rst SubAFromDE                                          ; $680a: $df
	ld a, [hl]                                       ; $680b: $7e
	sub [hl]                                         ; $680c: $96
	inc c                                            ; $680d: $0c
	ld [$1018], sp                                   ; $680e: $08 $18 $10
	ld sp, $6261                                     ; $6811: $31 $61 $62
	ld [hl], d                                       ; $6814: $72
	ld [$da6a], a                                    ; $6815: $ea $6a $da
	rst SubAFromDE                                          ; $6818: $df
	ld b, d                                          ; $6819: $42
	db $dd                                           ; $681a: $dd
	jp $c2df                                         ; $681b: $c3 $df $c2


	sbc d                                            ; $681e: $9a
	cp a                                             ; $681f: $bf
	db $fc                                           ; $6820: $fc
	ldh a, [$f9]                                     ; $6821: $f0 $f9
	ei                                               ; $6823: $fb
	sbc $ff                                          ; $6824: $de $ff
	sub d                                            ; $6826: $92
	ccf                                              ; $6827: $3f
	inc e                                            ; $6828: $1c
	db $10                                           ; $6829: $10
	add hl, bc                                       ; $682a: $09
	adc d                                            ; $682b: $8a
	add [hl]                                         ; $682c: $86
	call nz, $3acf                                   ; $682d: $c4 $cf $3a
	rra                                              ; $6830: $1f
	rlca                                             ; $6831: $07
	pop bc                                           ; $6832: $c1
	ld hl, sp-$22                                    ; $6833: $f8 $de
	rst $38                                          ; $6835: $ff
	sub a                                            ; $6836: $97
	jr c, @+$20                                      ; $6837: $38 $1e

	rlca                                             ; $6839: $07
	pop bc                                           ; $683a: $c1
	jr c, @+$09                                      ; $683b: $38 $07

	nop                                              ; $683d: $00
	add b                                            ; $683e: $80
	adc $00                                          ; $683f: $ce $00
	sbc l                                            ; $6841: $9d
	ld bc, $3f02                                     ; $6842: $01 $02 $3f
	cp $f5                                           ; $6845: $fe $f5
	ld a, a                                          ; $6847: $7f
	di                                               ; $6848: $f3
	ccf                                              ; $6849: $3f
	cp $f5                                           ; $684a: $fe $f5
	sbc l                                            ; $684c: $9d
	ld bc, $dd2a                                     ; $684d: $01 $2a $dd
	dec hl                                           ; $6850: $2b
	sbc [hl]                                         ; $6851: $9e
	cpl                                              ; $6852: $2f
	ld l, a                                          ; $6853: $6f
	add $9e                                          ; $6854: $c6 $9e
	ld [hl], $dd                                     ; $6856: $36 $dd
	scf                                              ; $6858: $37
	sbc [hl]                                         ; $6859: $9e
	dec sp                                           ; $685a: $3b
	ld c, a                                          ; $685b: $4f
	ret nz                                           ; $685c: $c0

	sbc c                                            ; $685d: $99
	ld a, $3f                                        ; $685e: $3e $3f
	ld b, b                                          ; $6860: $40
	ld b, b                                          ; $6861: $40
	ld b, d                                          ; $6862: $42
	ld b, e                                          ; $6863: $43
	ld l, a                                          ; $6864: $6f
	add $99                                          ; $6865: $c6 $99
	ld c, d                                          ; $6867: $4a
	ld c, e                                          ; $6868: $4b
	ld c, h                                          ; $6869: $4c
	ld c, h                                          ; $686a: $4c
	ld c, [hl]                                       ; $686b: $4e
	ld c, a                                          ; $686c: $4f
	ld c, a                                          ; $686d: $4f
	ret nz                                           ; $686e: $c0

	sbc l                                            ; $686f: $9d
	ld a, $53                                        ; $6870: $3e $53
	ld a, e                                          ; $6872: $7b
	ldh [$9e], a                                     ; $6873: $e0 $9e
	ld d, a                                          ; $6875: $57
	ld l, a                                          ; $6876: $6f
	ret nz                                           ; $6877: $c0

	sbc l                                            ; $6878: $9d
	ld c, d                                          ; $6879: $4a
	ld e, c                                          ; $687a: $59
	ld a, e                                          ; $687b: $7b
	ldh [$9e], a                                     ; $687c: $e0 $9e
	ld e, b                                          ; $687e: $58
	ld c, a                                          ; $687f: $4f
	ret nz                                           ; $6880: $c0

	sbc c                                            ; $6881: $99
	ld d, [hl]                                       ; $6882: $56
	ld d, l                                          ; $6883: $55
	ld d, h                                          ; $6884: $54
	ld d, h                                          ; $6885: $54
	ld d, d                                          ; $6886: $52
	ld d, c                                          ; $6887: $51
	ld l, a                                          ; $6888: $6f
	ret nz                                           ; $6889: $c0

	sbc c                                            ; $688a: $99
	ld d, b                                          ; $688b: $50
	ld c, l                                          ; $688c: $4d
	ld c, c                                          ; $688d: $49
	ld c, c                                          ; $688e: $49
	ld c, b                                          ; $688f: $48
	ld b, a                                          ; $6890: $47
	ld c, a                                          ; $6891: $4f
	ret nz                                           ; $6892: $c0

	sbc c                                            ; $6893: $99
	ld b, [hl]                                       ; $6894: $46
	ld b, l                                          ; $6895: $45
	ld b, h                                          ; $6896: $44
	ld b, h                                          ; $6897: $44
	ld b, c                                          ; $6898: $41
	dec a                                            ; $6899: $3d
	ld l, a                                          ; $689a: $6f
	ret nz                                           ; $689b: $c0

	sbc c                                            ; $689c: $99
	inc a                                            ; $689d: $3c
	ld a, [hl-]                                      ; $689e: $3a
	add hl, sp                                       ; $689f: $39
	add hl, sp                                       ; $68a0: $39
	jr c, jr_017_68d8                                ; $68a1: $38 $35

	ld c, a                                          ; $68a3: $4f
	ret nz                                           ; $68a4: $c0

	sbc c                                            ; $68a5: $99
	inc [hl]                                         ; $68a6: $34
	inc sp                                           ; $68a7: $33
	ld [hl-], a                                      ; $68a8: $32
	ld sp, $2e30                                     ; $68a9: $31 $30 $2e
	ld l, a                                          ; $68ac: $6f
	ret nz                                           ; $68ad: $c0

	sbc c                                            ; $68ae: $99
	dec l                                            ; $68af: $2d
	inc l                                            ; $68b0: $2c
	add hl, hl                                       ; $68b1: $29
	jr z, jr_017_68db                                ; $68b2: $28 $27

	ld h, $4b                                        ; $68b4: $26 $4b
	ret nz                                           ; $68b6: $c0

	sbc d                                            ; $68b7: $9a
	dec h                                            ; $68b8: $25
	inc h                                            ; $68b9: $24
	inc hl                                           ; $68ba: $23
	ld [hl+], a                                      ; $68bb: $22
	ld hl, $c06b                                     ; $68bc: $21 $6b $c0
	sbc d                                            ; $68bf: $9a
	jr nz, @+$21                                     ; $68c0: $20 $1f

	ld e, $1d                                        ; $68c2: $1e $1d
	inc e                                            ; $68c4: $1c
	ld c, a                                          ; $68c5: $4f
	ret nz                                           ; $68c6: $c0

	sbc c                                            ; $68c7: $99
	ld b, [hl]                                       ; $68c8: $46
	inc h                                            ; $68c9: $24
	dec de                                           ; $68ca: $1b
	dec de                                           ; $68cb: $1b
	ld a, [de]                                       ; $68cc: $1a
	add hl, de                                       ; $68cd: $19
	ld l, a                                          ; $68ce: $6f
	ret nz                                           ; $68cf: $c0

	sbc c                                            ; $68d0: $99
	inc a                                            ; $68d1: $3c
	rra                                              ; $68d2: $1f
	jr jr_017_68ed                                   ; $68d3: $18 $18

	rla                                              ; $68d5: $17
	ld d, $4f                                        ; $68d6: $16 $4f

jr_017_68d8:
	ret nz                                           ; $68d8: $c0

	sbc c                                            ; $68d9: $99
	dec d                                            ; $68da: $15

jr_017_68db:
	inc d                                            ; $68db: $14
	inc de                                           ; $68dc: $13
	inc de                                           ; $68dd: $13
	ld [de], a                                       ; $68de: $12
	ld de, $c06f                                     ; $68df: $11 $6f $c0
	sbc c                                            ; $68e2: $99
	db $10                                           ; $68e3: $10
	rrca                                             ; $68e4: $0f
	ld c, $0e                                        ; $68e5: $0e $0e
	dec c                                            ; $68e7: $0d
	inc c                                            ; $68e8: $0c
	ld [bc], a                                       ; $68e9: $02
	ret nz                                           ; $68ea: $c0

	ld d, e                                          ; $68eb: $53
	ret nz                                           ; $68ec: $c0

jr_017_68ed:
	sbc [hl]                                         ; $68ed: $9e
	dec bc                                           ; $68ee: $0b
	pop de                                           ; $68ef: $d1
	ld a, [bc]                                       ; $68f0: $0a
	sbc [hl]                                         ; $68f1: $9e
	add hl, bc                                       ; $68f2: $09
	ld c, a                                          ; $68f3: $4f
	ret nz                                           ; $68f4: $c0

	sbc [hl]                                         ; $68f5: $9e
	ld [$07d1], sp                                   ; $68f6: $08 $d1 $07
	sbc [hl]                                         ; $68f9: $9e
	ld b, $4f                                        ; $68fa: $06 $4f
	ret nz                                           ; $68fc: $c0

	ccf                                              ; $68fd: $3f
	ldh [rVBK], a                                    ; $68fe: $e0 $4f
	ret nz                                           ; $6900: $c0

	sbc [hl]                                         ; $6901: $9e
	dec b                                            ; $6902: $05
	pop de                                           ; $6903: $d1
	inc b                                            ; $6904: $04
	sbc [hl]                                         ; $6905: $9e
	inc bc                                           ; $6906: $03
	ld c, a                                          ; $6907: $4f
	ret nz                                           ; $6908: $c0

	ld [bc], a                                       ; $6909: $02
	nop                                              ; $690a: $00
	ccf                                              ; $690b: $3f
	cp $26                                           ; $690c: $fe $26
	nop                                              ; $690e: $00
	pop hl                                           ; $690f: $e1
	sub l                                            ; $6910: $95
	dec b                                            ; $6911: $05
	ld d, l                                          ; $6912: $55
	ld d, l                                          ; $6913: $55
	ld d, b                                          ; $6914: $50
	nop                                              ; $6915: $00
	nop                                              ; $6916: $00
	inc b                                            ; $6917: $04
	ld b, h                                          ; $6918: $44
	ld b, h                                          ; $6919: $44
	ld b, b                                          ; $691a: $40
	inc bc                                           ; $691b: $03
	ldh a, [$03]                                     ; $691c: $f0 $03
	ldh a, [$03]                                     ; $691e: $f0 $03
	ldh a, [$03]                                     ; $6920: $f0 $03
	ldh a, [$ef]                                     ; $6922: $f0 $ef
	sbc [hl]                                         ; $6924: $9e
	ld bc, $11d9                                     ; $6925: $01 $d9 $11
	sbc [hl]                                         ; $6928: $9e
	db $10                                           ; $6929: $10
	ld l, e                                          ; $692a: $6b
	ldh a, [$d9]                                     ; $692b: $f0 $d9
	ld [hl+], a                                      ; $692d: $22
	daa                                              ; $692e: $27
	ldh a, [rWX]                                     ; $692f: $f0 $4b
	ret nc                                           ; $6931: $d0

	rst SubAFromBC                                          ; $6932: $e7
	and a                                            ; $6933: $a7
	nop                                              ; $6934: $00
	rst SubAFromDE                                          ; $6935: $df
	ld bc, $0399                                     ; $6936: $01 $99 $03
	inc b                                            ; $6939: $04
	dec b                                            ; $693a: $05
	ld b, $07                                        ; $693b: $06 $07
	ld [$fa6f], sp                                   ; $693d: $08 $6f $fa
	sbc c                                            ; $6940: $99
	rrca                                             ; $6941: $0f
	db $10                                           ; $6942: $10
	ld de, $1312                                     ; $6943: $11 $12 $13
	inc d                                            ; $6946: $14
	call nc, $9915                                   ; $6947: $d4 $15 $99
	ld d, $17                                        ; $694a: $16 $17
	jr @+$1b                                         ; $694c: $18 $19

	ld a, [de]                                       ; $694e: $1a
	ld a, [de]                                       ; $694f: $1a
	ld e, a                                          ; $6950: $5f
	db $fc                                           ; $6951: $fc
	sbc h                                            ; $6952: $9c
	ld h, $27                                        ; $6953: $26 $27
	jr z, @-$29                                      ; $6955: $28 $d5

	dec d                                            ; $6957: $15
	adc e                                            ; $6958: $8b
	add hl, hl                                       ; $6959: $29
	ld a, [hl+]                                      ; $695a: $2a
	dec hl                                           ; $695b: $2b
	inc l                                            ; $695c: $2c
	dec l                                            ; $695d: $2d
	ld l, $2f                                        ; $695e: $2e $2f
	jr nc, jr_017_6993                               ; $6960: $30 $31

	ld [hl-], a                                      ; $6962: $32
	inc sp                                           ; $6963: $33
	inc [hl]                                         ; $6964: $34
	dec [hl]                                         ; $6965: $35
	ld [hl], $37                                     ; $6966: $36 $37
	jr c, jr_017_69a3                                ; $6968: $38 $39

	ld a, [hl-]                                      ; $696a: $3a
	dec sp                                           ; $696b: $3b
	inc a                                            ; $696c: $3c
	push de                                          ; $696d: $d5
	dec d                                            ; $696e: $15
	adc e                                            ; $696f: $8b
	dec a                                            ; $6970: $3d
	ld a, $3f                                        ; $6971: $3e $3f
	ld b, b                                          ; $6973: $40
	ld b, c                                          ; $6974: $41
	ld b, d                                          ; $6975: $42
	ld b, e                                          ; $6976: $43
	ld b, h                                          ; $6977: $44
	ld b, l                                          ; $6978: $45
	ld b, [hl]                                       ; $6979: $46
	ld b, a                                          ; $697a: $47
	ld c, b                                          ; $697b: $48
	ld c, c                                          ; $697c: $49
	ld c, d                                          ; $697d: $4a
	ld c, e                                          ; $697e: $4b
	ld c, h                                          ; $697f: $4c
	ld c, l                                          ; $6980: $4d
	ld c, [hl]                                       ; $6981: $4e
	ld c, a                                          ; $6982: $4f
	ld d, b                                          ; $6983: $50
	push de                                          ; $6984: $d5
	dec d                                            ; $6985: $15
	sbc l                                            ; $6986: $9d
	ld [$d152], sp                                   ; $6987: $08 $52 $d1
	ld d, e                                          ; $698a: $53
	sbc l                                            ; $698b: $9d
	ld d, h                                          ; $698c: $54
	ld d, c                                          ; $698d: $51
	ld d, e                                          ; $698e: $53
	ldh [$9e], a                                     ; $698f: $e0 $9e
	dec h                                            ; $6991: $25
	pop de                                           ; $6992: $d1

jr_017_6993:
	ld d, e                                          ; $6993: $53
	sbc l                                            ; $6994: $9d
	inc h                                            ; $6995: $24
	inc hl                                           ; $6996: $23
	ld d, e                                          ; $6997: $53
	ldh [$9e], a                                     ; $6998: $e0 $9e
	ld [hl+], a                                      ; $699a: $22
	pop de                                           ; $699b: $d1
	ld d, e                                          ; $699c: $53
	sbc l                                            ; $699d: $9d
	ld hl, $5320                                     ; $699e: $21 $20 $53
	ldh [$9e], a                                     ; $69a1: $e0 $9e

jr_017_69a3:
	nop                                              ; $69a3: $00
	pop de                                           ; $69a4: $d1
	ld d, e                                          ; $69a5: $53
	sbc l                                            ; $69a6: $9d
	nop                                              ; $69a7: $00
	rra                                              ; $69a8: $1f
	dec bc                                           ; $69a9: $0b
	add b                                            ; $69aa: $80
	sbc [hl]                                         ; $69ab: $9e
	ld e, $0f                                        ; $69ac: $1e $0f
	add b                                            ; $69ae: $80
	sbc l                                            ; $69af: $9d
	dec e                                            ; $69b0: $1d
	inc e                                            ; $69b1: $1c
	dec bc                                           ; $69b2: $0b
	add b                                            ; $69b3: $80
	sbc [hl]                                         ; $69b4: $9e
	dec de                                           ; $69b5: $1b
	dec bc                                           ; $69b6: $0b
	add b                                            ; $69b7: $80
	sbc [hl]                                         ; $69b8: $9e
	ld [$800b], sp                                   ; $69b9: $08 $0b $80
	ld c, a                                          ; $69bc: $4f
	ldh [$3f], a                                     ; $69bd: $e0 $3f
	add b                                            ; $69bf: $80
	ld c, a                                          ; $69c0: $4f
	ldh [$3f], a                                     ; $69c1: $e0 $3f
	add b                                            ; $69c3: $80
	ld c, a                                          ; $69c4: $4f
	ldh [$cf], a                                     ; $69c5: $e0 $cf
	ld d, e                                          ; $69c7: $53
	ld c, a                                          ; $69c8: $4f
	ldh [$99], a                                     ; $69c9: $e0 $99
	ld c, $0d                                        ; $69cb: $0e $0d
	inc c                                            ; $69cd: $0c
	dec bc                                           ; $69ce: $0b
	ld a, [bc]                                       ; $69cf: $0a
	ld a, [bc]                                       ; $69d0: $0a
	ld e, a                                          ; $69d1: $5f
	db $fc                                           ; $69d2: $fc
	sbc l                                            ; $69d3: $9d
	add hl, bc                                       ; $69d4: $09
	ld [bc], a                                       ; $69d5: $02
	ld c, a                                          ; $69d6: $4f
	ldh [$ce], a                                     ; $69d7: $e0 $ce
	ld [$0031], sp                                   ; $69d9: $08 $31 $00
	cp $9e                                           ; $69dc: $fe $9e
	rlca                                             ; $69de: $07
	ld [hl], e                                       ; $69df: $73
	db $fd                                           ; $69e0: $fd
	sbc [hl]                                         ; $69e1: $9e
	nop                                              ; $69e2: $00
	db $db                                           ; $69e3: $db
	ld de, $dbf7                                     ; $69e4: $11 $f7 $db
	ld de, $079e                                     ; $69e7: $11 $9e $07
	reti                                             ; $69ea: $d9


	ld [hl], a                                       ; $69eb: $77
	sbc [hl]                                         ; $69ec: $9e
	ld [hl], b                                       ; $69ed: $70
	cpl                                              ; $69ee: $2f
	ldh a, [$9e]                                     ; $69ef: $f0 $9e
	ld [hl], b                                       ; $69f1: $70
	reti                                             ; $69f2: $d9


	ld [hl], a                                       ; $69f3: $77
	ld l, e                                          ; $69f4: $6b
	ret nc                                           ; $69f5: $d0

	inc bc                                           ; $69f6: $03
	ldh a, [$03]                                     ; $69f7: $f0 $03
	ldh a, [$2b]                                     ; $69f9: $f0 $2b
	ldh a, [$9e]                                     ; $69fb: $f0 $9e
	rlca                                             ; $69fd: $07
	inc bc                                           ; $69fe: $03
	ldh a, [$03]                                     ; $69ff: $f0 $03
	ldh a, [$dd]                                     ; $6a01: $f0 $dd
	ld de, $77d7                                     ; $6a03: $11 $d7 $77
	ld l, e                                          ; $6a06: $6b
	ldh [$f9], a                                     ; $6a07: $e0 $f9
	ld b, e                                          ; $6a09: $43
	ldh [$65], a                                     ; $6a0a: $e0 $65
	nop                                              ; $6a0c: $00
	rst GetHLinHL                                          ; $6a0d: $cf
	ld bc, $07df                                     ; $6a0e: $01 $df $07
	ld d, a                                          ; $6a11: $57
	db $fc                                           ; $6a12: $fc
	sbc $07                                          ; $6a13: $de $07
	sbc [hl]                                         ; $6a15: $9e
	inc c                                            ; $6a16: $0c
	ld h, a                                          ; $6a17: $67
	db $fc                                           ; $6a18: $fc
	sbc $1f                                          ; $6a19: $de $1f
	ret nc                                           ; $6a1b: $d0

	inc c                                            ; $6a1c: $0c
	sbc l                                            ; $6a1d: $9d
	inc bc                                           ; $6a1e: $03
	ld [bc], a                                       ; $6a1f: $02
	ld e, a                                          ; $6a20: $5f
	ldh [rOCPD], a                                   ; $6a21: $e0 $6b
	db $fc                                           ; $6a23: $fc
	sbc [hl]                                         ; $6a24: $9e
	inc b                                            ; $6a25: $04
	db $d3                                           ; $6a26: $d3
	rlca                                             ; $6a27: $07
	sbc [hl]                                         ; $6a28: $9e
	dec b                                            ; $6a29: $05
	call nc, Call_017_6707                           ; $6a2a: $d4 $07 $67
	xor b                                            ; $6a2d: $a8
	sub a                                            ; $6a2e: $97
	db $10                                           ; $6a2f: $10
	rrca                                             ; $6a30: $0f
	ld c, $07                                        ; $6a31: $0e $07
	add hl, bc                                       ; $6a33: $09
	ld [$1f06], sp                                   ; $6a34: $08 $06 $1f
	reti                                             ; $6a37: $d9


	ld bc, $1397                                     ; $6a38: $01 $97 $13
	ld [de], a                                       ; $6a3b: $12
	ld de, $0712                                     ; $6a3c: $11 $12 $07
	dec c                                            ; $6a3f: $0d
	dec bc                                           ; $6a40: $0b
	ld a, [bc]                                       ; $6a41: $0a
	pop de                                           ; $6a42: $d1
	rlca                                             ; $6a43: $07
	sbc [hl]                                         ; $6a44: $9e
	dec d                                            ; $6a45: $15
	ld b, a                                          ; $6a46: $47
	ldh a, [$de]                                     ; $6a47: $f0 $de
	dec d                                            ; $6a49: $15
	ld d, e                                          ; $6a4a: $53
	ldh a, [$9d]                                     ; $6a4b: $f0 $9d
	ld e, $18                                        ; $6a4d: $1e $18
	db $d3                                           ; $6a4f: $d3
	rlca                                             ; $6a50: $07
	sbc [hl]                                         ; $6a51: $9e
	inc b                                            ; $6a52: $04
	ld a, e                                          ; $6a53: $7b
	ld l, [hl]                                       ; $6a54: $6e
	jp nc, $de07                                     ; $6a55: $d2 $07 $de

	rra                                              ; $6a58: $1f
	sbc l                                            ; $6a59: $9d
	rlca                                             ; $6a5a: $07
	inc d                                            ; $6a5b: $14
	ld [hl], a                                       ; $6a5c: $77
	ld hl, sp-$22                                    ; $6a5d: $f8 $de
	inc de                                           ; $6a5f: $13
	ld h, a                                          ; $6a60: $67
	ldh a, [rOCPD]                                   ; $6a61: $f0 $6b
	ld hl, sp+$6f                                    ; $6a63: $f8 $6f
	rst FarCall                                          ; $6a65: $f7
	ld a, e                                          ; $6a66: $7b
	push af                                          ; $6a67: $f5
	ld a, a                                          ; $6a68: $7f
	ld [hl], d                                       ; $6a69: $72
	rst SubAFromDE                                          ; $6a6a: $df
	rlca                                             ; $6a6b: $07
	ld a, a                                          ; $6a6c: $7f
	ld [hl], d                                       ; $6a6d: $72
	rst SubAFromDE                                          ; $6a6e: $df
	rra                                              ; $6a6f: $1f
	jr c, jr_017_6a72                                ; $6a70: $38 $00

jr_017_6a72:
	bit 0, h                                         ; $6a72: $cb $44
	sbc l                                            ; $6a74: $9d
	ld d, l                                          ; $6a75: $55
	ld d, h                                          ; $6a76: $54
	reti                                             ; $6a77: $d9


	ld b, h                                          ; $6a78: $44
	sbc [hl]                                         ; $6a79: $9e
	ld h, [hl]                                       ; $6a7a: $66
	reti                                             ; $6a7b: $d9


	ld b, h                                          ; $6a7c: $44
	sbc [hl]                                         ; $6a7d: $9e
	ld b, [hl]                                       ; $6a7e: $46
	rst GetHLinHL                                          ; $6a7f: $cf
	ld b, h                                          ; $6a80: $44
	sbc e                                            ; $6a81: $9b
	ld h, [hl]                                       ; $6a82: $66
	ld h, h                                          ; $6a83: $64
	ld b, h                                          ; $6a84: $44
	ld b, l                                          ; $6a85: $45
	ld [hl], e                                       ; $6a86: $73
	ld hl, sp+$63                                    ; $6a87: $f8 $63
	db $db                                           ; $6a89: $db
	rst SubAFromDE                                          ; $6a8a: $df
	ld b, h                                          ; $6a8b: $44
	ld h, a                                          ; $6a8c: $67
	rst JumpTable                                          ; $6a8d: $c7
	rst SubAFromDE                                          ; $6a8e: $df
	ld d, l                                          ; $6a8f: $55
	ld c, a                                          ; $6a90: $4f
	or [hl]                                          ; $6a91: $b6
	sbc [hl]                                         ; $6a92: $9e
	ld b, [hl]                                       ; $6a93: $46
	ld h, e                                          ; $6a94: $63
	call c, $ee7f                                    ; $6a95: $dc $7f $ee
	ld a, a                                          ; $6a98: $7f
	db $ed                                           ; $6a99: $ed
	sbc [hl]                                         ; $6a9a: $9e
	ld d, [hl]                                       ; $6a9b: $56
	ld a, e                                          ; $6a9c: $7b
	ldh a, [c]                                       ; $6a9d: $f2
	ld [hl], a                                       ; $6a9e: $77
	and $73                                          ; $6a9f: $e6 $73
	jp c, Jump_017_459e                              ; $6aa1: $da $9e $45

	ld a, e                                          ; $6aa4: $7b
	cp c                                             ; $6aa5: $b9
	sbc [hl]                                         ; $6aa6: $9e
	ld d, l                                          ; $6aa7: $55
	cp e                                             ; $6aa8: $bb
	nop                                              ; $6aa9: $00
	sub a                                            ; $6aaa: $97
	ld bc, $0302                                     ; $6aab: $01 $02 $03
	inc b                                            ; $6aae: $04
	inc bc                                           ; $6aaf: $03
	inc b                                            ; $6ab0: $04
	rlca                                             ; $6ab1: $07
	ld [$f837], sp                                   ; $6ab2: $08 $37 $f8
	ld [hl], a                                       ; $6ab5: $77
	db $fc                                           ; $6ab6: $fc
	sbc h                                            ; $6ab7: $9c
	ld [bc], a                                       ; $6ab8: $02
	rlca                                             ; $6ab9: $07
	dec e                                            ; $6aba: $1d
	db $d3                                           ; $6abb: $d3
	inc e                                            ; $6abc: $1c
	sub [hl]                                         ; $6abd: $96
	dec de                                           ; $6abe: $1b
	ld [$191a], sp                                   ; $6abf: $08 $1a $19
	jr @+$04                                         ; $6ac2: $18 $02

	ld bc, $0702                                     ; $6ac4: $01 $02 $07
	ld l, a                                          ; $6ac7: $6f
	ld hl, sp+$7f                                    ; $6ac8: $f8 $7f
	sbc $9b                                          ; $6aca: $de $9b
	rla                                              ; $6acc: $17
	ld d, $15                                        ; $6acd: $16 $15
	inc d                                            ; $6acf: $14
	sub $13                                          ; $6ad0: $d6 $13
	sbc h                                            ; $6ad2: $9c
	ld [de], a                                       ; $6ad3: $12
	ld a, [de]                                       ; $6ad4: $1a
	add hl, de                                       ; $6ad5: $19
	ld [hl], a                                       ; $6ad6: $77
	push hl                                          ; $6ad7: $e5
	ld a, a                                          ; $6ad8: $7f
	add sp, $6f                                      ; $6ad9: $e8 $6f
	ld hl, sp-$64                                    ; $6adb: $f8 $9c
	add hl, de                                       ; $6add: $19
	ld a, [de]                                       ; $6ade: $1a
	rla                                              ; $6adf: $17
	db $d3                                           ; $6ae0: $d3
	inc de                                           ; $6ae1: $13
	sbc [hl]                                         ; $6ae2: $9e
	ld [de], a                                       ; $6ae3: $12
	ld [hl], a                                       ; $6ae4: $77
	jp z, $e37b                                      ; $6ae5: $ca $7b $e3

	ld [hl], e                                       ; $6ae8: $73
	jp nz, $f87f                                     ; $6ae9: $c2 $7f $f8

	ld a, e                                          ; $6aec: $7b
	ret nz                                           ; $6aed: $c0

	sbc h                                            ; $6aee: $9c
	ld de, $0f10                                     ; $6aef: $11 $10 $0f
	ld d, a                                          ; $6af2: $57
	ldh [$5f], a                                     ; $6af3: $e0 $5f
	add h                                            ; $6af5: $84
	ld [hl], a                                       ; $6af6: $77
	db $fc                                           ; $6af7: $fc
	ld a, a                                          ; $6af8: $7f
	jp c, $c047                                      ; $6af9: $da $47 $c0

	ld a, a                                          ; $6afc: $7f
	jp z, $8057                                      ; $6afd: $ca $57 $80

	ld a, a                                          ; $6b00: $7f
	ld sp, hl                                        ; $6b01: $f9
	sbc h                                            ; $6b02: $9c
	rla                                              ; $6b03: $17
	ld c, $0d                                        ; $6b04: $0e $0d
	ld d, e                                          ; $6b06: $53
	ret nz                                           ; $6b07: $c0

	ld c, a                                          ; $6b08: $4f
	add b                                            ; $6b09: $80
	ld a, a                                          ; $6b0a: $7f
	sbc $47                                          ; $6b0b: $de $47
	ret nz                                           ; $6b0d: $c0

	ld a, a                                          ; $6b0e: $7f
	rst SubAFromBC                                          ; $6b0f: $e7
	ld d, a                                          ; $6b10: $57

Jump_017_6b11:
	add b                                            ; $6b11: $80
	ld a, a                                          ; $6b12: $7f
	or a                                             ; $6b13: $b7
	sbc e                                            ; $6b14: $9b
	rla                                              ; $6b15: $17
	inc c                                            ; $6b16: $0c
	inc d                                            ; $6b17: $14
	dec bc                                           ; $6b18: $0b
	ld d, a                                          ; $6b19: $57
	ldh [$5f], a                                     ; $6b1a: $e0 $5f
	add h                                            ; $6b1c: $84
	ld l, a                                          ; $6b1d: $6f
	nop                                              ; $6b1e: $00
	ld b, a                                          ; $6b1f: $47
	ret nz                                           ; $6b20: $c0

	ld b, e                                          ; $6b21: $43
	nop                                              ; $6b22: $00
	sbc [hl]                                         ; $6b23: $9e
	ld a, [bc]                                       ; $6b24: $0a
	ld c, a                                          ; $6b25: $4f
	ret nz                                           ; $6b26: $c0

	ld b, a                                          ; $6b27: $47
	nop                                              ; $6b28: $00
	sbc [hl]                                         ; $6b29: $9e
	add hl, bc                                       ; $6b2a: $09
	db $d3                                           ; $6b2b: $d3
	ld b, $9e                                        ; $6b2c: $06 $9e
	dec b                                            ; $6b2e: $05
	ld b, a                                          ; $6b2f: $47
	nop                                              ; $6b30: $00
	ld e, $84                                        ; $6b31: $1e $84
	ld l, a                                          ; $6b33: $6f
	nop                                              ; $6b34: $00
	ld e, a                                          ; $6b35: $5f
	sub h                                            ; $6b36: $94
	scf                                              ; $6b37: $37
	ld hl, sp-$76                                    ; $6b38: $f8 $8a
	ld b, [hl]                                       ; $6b3a: $46
	ld b, a                                          ; $6b3b: $47
	ld c, b                                          ; $6b3c: $48
	ld c, c                                          ; $6b3d: $49
	ld c, d                                          ; $6b3e: $4a
	ld c, e                                          ; $6b3f: $4b
	ld c, h                                          ; $6b40: $4c
	ld c, l                                          ; $6b41: $4d
	ld c, [hl]                                       ; $6b42: $4e
	daa                                              ; $6b43: $27
	jr z, jr_017_6b6f                                ; $6b44: $28 $29

	ld a, [hl+]                                      ; $6b46: $2a
	dec hl                                           ; $6b47: $2b
	inc l                                            ; $6b48: $2c
	dec l                                            ; $6b49: $2d
	ld l, $2f                                        ; $6b4a: $2e $2f
	jr nc, jr_017_6b7f                               ; $6b4c: $30 $31

	ld [hl-], a                                      ; $6b4e: $32
	ld l, e                                          ; $6b4f: $6b
	add h                                            ; $6b50: $84
	ld a, e                                          ; $6b51: $7b
	ld a, h                                          ; $6b52: $7c
	sbc [hl]                                         ; $6b53: $9e
	ld b, l                                          ; $6b54: $45
	ld d, a                                          ; $6b55: $57
	sub h                                            ; $6b56: $94
	ld b, a                                          ; $6b57: $47
	ld hl, sp+$6f                                    ; $6b58: $f8 $6f
	nop                                              ; $6b5a: $00
	ld c, a                                          ; $6b5b: $4f
	db $10                                           ; $6b5c: $10
	ld d, a                                          ; $6b5d: $57
	db $fc                                           ; $6b5e: $fc
	ld [hl], a                                       ; $6b5f: $77
	ld [hl], h                                       ; $6b60: $74
	scf                                              ; $6b61: $37
	adc h                                            ; $6b62: $8c
	inc d                                            ; $6b63: $14
	nop                                              ; $6b64: $00
	pop bc                                           ; $6b65: $c1
	ld b, h                                          ; $6b66: $44
	inc bc                                           ; $6b67: $03
	rst $38                                          ; $6b68: $ff
	inc bc                                           ; $6b69: $03
	rst $38                                          ; $6b6a: $ff
	inc bc                                           ; $6b6b: $03
	rst $38                                          ; $6b6c: $ff
	inc bc                                           ; $6b6d: $03
	rst $38                                          ; $6b6e: $ff

jr_017_6b6f:
	inc bc                                           ; $6b6f: $03
	rst $38                                          ; $6b70: $ff
	inc bc                                           ; $6b71: $03
	rst $38                                          ; $6b72: $ff
	inc bc                                           ; $6b73: $03
	rst $38                                          ; $6b74: $ff
	adc $44                                          ; $6b75: $ce $44
	ld e, $01                                        ; $6b77: $1e $01
	rst SubAFromDE                                          ; $6b79: $df
	dec hl                                           ; $6b7a: $2b
	add c                                            ; $6b7b: $81
	dec l                                            ; $6b7c: $2d
	ld l, $2b                                        ; $6b7d: $2e $2b

jr_017_6b7f:
	jr c, jr_017_6bba                                ; $6b7f: $38 $39

	ld a, [hl-]                                      ; $6b81: $3a
	dec hl                                           ; $6b82: $2b
	ld b, h                                          ; $6b83: $44
	ld b, l                                          ; $6b84: $45
	ld b, [hl]                                       ; $6b85: $46
	ld c, a                                          ; $6b86: $4f
	ld d, b                                          ; $6b87: $50
	ld d, c                                          ; $6b88: $51
	ld d, d                                          ; $6b89: $52
	cpl                                              ; $6b8a: $2f
	jr nc, jr_017_6bb8                               ; $6b8b: $30 $2b

	dec hl                                           ; $6b8d: $2b
	dec sp                                           ; $6b8e: $3b
	inc a                                            ; $6b8f: $3c
	dec a                                            ; $6b90: $3d
	ld a, $47                                        ; $6b91: $3e $47
	ld c, b                                          ; $6b93: $48
	ld c, c                                          ; $6b94: $49
	ld c, d                                          ; $6b95: $4a
	ld d, e                                          ; $6b96: $53
	ld d, h                                          ; $6b97: $54
	ld d, l                                          ; $6b98: $55
	ld d, [hl]                                       ; $6b99: $56
	pop de                                           ; $6b9a: $d1
	dec hl                                           ; $6b9b: $2b
	add b                                            ; $6b9c: $80
	ld e, e                                          ; $6b9d: $5b
	ld e, h                                          ; $6b9e: $5c
	ld e, l                                          ; $6b9f: $5d
	ld e, [hl]                                       ; $6ba0: $5e
	dec hl                                           ; $6ba1: $2b
	ld l, b                                          ; $6ba2: $68
	ld l, c                                          ; $6ba3: $69
	ld l, d                                          ; $6ba4: $6a
	dec hl                                           ; $6ba5: $2b
	ld [hl], h                                       ; $6ba6: $74
	ld [hl], l                                       ; $6ba7: $75
	halt                                             ; $6ba8: $76
	dec hl                                           ; $6ba9: $2b
	add b                                            ; $6baa: $80
	add c                                            ; $6bab: $81
	add d                                            ; $6bac: $82
	ld e, a                                          ; $6bad: $5f
	ld h, b                                          ; $6bae: $60
	ld h, c                                          ; $6baf: $61
	ld h, d                                          ; $6bb0: $62
	ld l, e                                          ; $6bb1: $6b
	ld l, h                                          ; $6bb2: $6c
	ld l, l                                          ; $6bb3: $6d
	ld l, [hl]                                       ; $6bb4: $6e
	ld [hl], a                                       ; $6bb5: $77
	ld a, b                                          ; $6bb6: $78
	ld a, c                                          ; $6bb7: $79

jr_017_6bb8:
	ld a, d                                          ; $6bb8: $7a
	add e                                            ; $6bb9: $83

jr_017_6bba:
	add h                                            ; $6bba: $84
	add l                                            ; $6bbb: $85
	sbc [hl]                                         ; $6bbc: $9e
	add [hl]                                         ; $6bbd: $86
	db $dd                                           ; $6bbe: $dd
	dec hl                                           ; $6bbf: $2b
	add b                                            ; $6bc0: $80
	ld l, a                                          ; $6bc1: $6f
	dec hl                                           ; $6bc2: $2b
	dec hl                                           ; $6bc3: $2b
	ld [hl], d                                       ; $6bc4: $72
	ld a, e                                          ; $6bc5: $7b
	dec hl                                           ; $6bc6: $2b
	ld a, l                                          ; $6bc7: $7d
	ld a, [hl]                                       ; $6bc8: $7e
	add a                                            ; $6bc9: $87
	adc b                                            ; $6bca: $88
	adc c                                            ; $6bcb: $89
	adc d                                            ; $6bcc: $8a
	dec hl                                           ; $6bcd: $2b
	adc h                                            ; $6bce: $8c
	adc l                                            ; $6bcf: $8d
	adc [hl]                                         ; $6bd0: $8e
	dec hl                                           ; $6bd1: $2b
	ld a, h                                          ; $6bd2: $7c
	ld [hl], e                                       ; $6bd3: $73
	ld [hl], c                                       ; $6bd4: $71
	dec hl                                           ; $6bd5: $2b
	ld e, c                                          ; $6bd6: $59
	ld e, b                                          ; $6bd7: $58
	ld d, a                                          ; $6bd8: $57
	dec hl                                           ; $6bd9: $2b
	ld b, b                                          ; $6bda: $40
	ccf                                              ; $6bdb: $3f
	scf                                              ; $6bdc: $37
	adc a                                            ; $6bdd: $8f
	sub b                                            ; $6bde: $90
	sub c                                            ; $6bdf: $91
	add b                                            ; $6be0: $80
	sub d                                            ; $6be1: $92
	ld [hl], b                                       ; $6be2: $70
	ld h, a                                          ; $6be3: $67
	ld h, [hl]                                       ; $6be4: $66
	ld h, l                                          ; $6be5: $65
	ld c, [hl]                                       ; $6be6: $4e
	ld c, l                                          ; $6be7: $4d
	ld c, h                                          ; $6be8: $4c
	ld c, e                                          ; $6be9: $4b
	ld [hl], $35                                     ; $6bea: $36 $35
	inc [hl]                                         ; $6bec: $34
	inc sp                                           ; $6bed: $33
	sub e                                            ; $6bee: $93
	sub h                                            ; $6bef: $94
	adc e                                            ; $6bf0: $8b
	ld a, a                                          ; $6bf1: $7f
	ld h, h                                          ; $6bf2: $64
	ld h, e                                          ; $6bf3: $63
	ld e, d                                          ; $6bf4: $5a
	dec hl                                           ; $6bf5: $2b
	ld b, e                                          ; $6bf6: $43
	ld b, d                                          ; $6bf7: $42
	ld b, c                                          ; $6bf8: $41
	dec hl                                           ; $6bf9: $2b
	ld [hl-], a                                      ; $6bfa: $32
	ld sp, $2b2c                                     ; $6bfb: $31 $2c $2b
	sub l                                            ; $6bfe: $95
	sub [hl]                                         ; $6bff: $96
	add b                                            ; $6c00: $80
	sub a                                            ; $6c01: $97
	sbc b                                            ; $6c02: $98
	and c                                            ; $6c03: $a1
	and d                                            ; $6c04: $a2
	and e                                            ; $6c05: $a3
	and h                                            ; $6c06: $a4
	xor l                                            ; $6c07: $ad
	xor [hl]                                         ; $6c08: $ae
	and e                                            ; $6c09: $a3
	or b                                             ; $6c0a: $b0
	cp c                                             ; $6c0b: $b9
	cp d                                             ; $6c0c: $ba
	cp e                                             ; $6c0d: $bb
	cp h                                             ; $6c0e: $bc
	sbc c                                            ; $6c0f: $99
	sbc d                                            ; $6c10: $9a
	sbc e                                            ; $6c11: $9b
	sbc h                                            ; $6c12: $9c
	and l                                            ; $6c13: $a5
	and [hl]                                         ; $6c14: $a6
	and a                                            ; $6c15: $a7
	xor b                                            ; $6c16: $a8
	or c                                             ; $6c17: $b1
	or d                                             ; $6c18: $b2
	or e                                             ; $6c19: $b3
	or h                                             ; $6c1a: $b4
	cp l                                             ; $6c1b: $bd
	or h                                             ; $6c1c: $b4
	cp a                                             ; $6c1d: $bf
	ret nz                                           ; $6c1e: $c0

	sbc l                                            ; $6c1f: $9d
	add b                                            ; $6c20: $80
	sbc [hl]                                         ; $6c21: $9e
	sub l                                            ; $6c22: $95
	sub l                                            ; $6c23: $95
	xor c                                            ; $6c24: $a9
	xor d                                            ; $6c25: $aa
	sub l                                            ; $6c26: $95
	sub l                                            ; $6c27: $95
	or l                                             ; $6c28: $b5
	or [hl]                                          ; $6c29: $b6
	or a                                             ; $6c2a: $b7
	cp b                                             ; $6c2b: $b8
	pop bc                                           ; $6c2c: $c1
	jp nz, $c4c3                                     ; $6c2d: $c2 $c3 $c4

	push bc                                          ; $6c30: $c5
	add $c7                                          ; $6c31: $c6 $c7
	ret z                                            ; $6c33: $c8

	nop                                              ; $6c34: $00
	jp nc, $d4d3                                     ; $6c35: $d2 $d3 $d4

	nop                                              ; $6c38: $00
	sbc $df                                          ; $6c39: $de $df
	ldh [rP1], a                                     ; $6c3b: $e0 $00
	ld [$eceb], a                                    ; $6c3d: $ea $eb $ec
	sbc d                                            ; $6c40: $9a
	ret                                              ; $6c41: $c9


	or h                                             ; $6c42: $b4
	cp a                                             ; $6c43: $bf
	call z, $ded5                                    ; $6c44: $cc $d5 $de
	cp a                                             ; $6c47: $bf
	sbc e                                            ; $6c48: $9b
	pop hl                                           ; $6c49: $e1
	ldh [c], a                                       ; $6c4a: $e2
	db $e3                                           ; $6c4b: $e3
	or h                                             ; $6c4c: $b4
	db $dd                                           ; $6c4d: $dd
	db $ed                                           ; $6c4e: $ed
	add b                                            ; $6c4f: $80
	call $cfce                                       ; $6c50: $cd $ce $cf
	ret nc                                           ; $6c53: $d0

	reti                                             ; $6c54: $d9


	jp c, $00db                                      ; $6c55: $da $db $00

	push hl                                          ; $6c58: $e5
	and $e7                                          ; $6c59: $e6 $e7
	nop                                              ; $6c5b: $00
	pop af                                           ; $6c5c: $f1
	ldh a, [c]                                       ; $6c5d: $f2
	di                                               ; $6c5e: $f3
	nop                                              ; $6c5f: $00
	nop                                              ; $6c60: $00
	or $f7                                           ; $6c61: $f6 $f7
	ld hl, sp+$00                                    ; $6c63: $f8 $00
	jp hl                                            ; $6c65: $e9


	add sp, -$1c                                     ; $6c66: $e8 $e4
	nop                                              ; $6c68: $00
	rst SubAFromHL                                          ; $6c69: $d7
	sub $d1                                          ; $6c6a: $d6 $d1
	nop                                              ; $6c6c: $00
	xor h                                            ; $6c6d: $ac
	xor e                                            ; $6c6e: $ab
	sbc c                                            ; $6c6f: $99
	sub l                                            ; $6c70: $95
	ld sp, hl                                        ; $6c71: $f9
	push af                                          ; $6c72: $f5
	db $f4                                           ; $6c73: $f4
	ldh a, [$dd]                                     ; $6c74: $f0 $dd
	sbc $95                                          ; $6c76: $de $95
	sbc [hl]                                         ; $6c78: $9e
	set 3, c                                         ; $6c79: $cb $d9
	sub l                                            ; $6c7b: $95
	sub b                                            ; $6c7c: $90
	rst AddAOntoHL                                          ; $6c7d: $ef
	xor $00                                          ; $6c7e: $ee $00
	sub l                                            ; $6c80: $95
	call c, $00d8                                    ; $6c81: $dc $d8 $00
	sub l                                            ; $6c84: $95
	jp z, $afbe                                      ; $6c85: $ca $be $af

	sub l                                            ; $6c88: $95
	sub l                                            ; $6c89: $95
	and b                                            ; $6c8a: $a0
	sbc a                                            ; $6c8b: $9f
	ld h, a                                          ; $6c8c: $67
	ldh [$9b], a                                     ; $6c8d: $e0 $9b
	ld a, [$fcfb]                                    ; $6c8f: $fa $fb $fc
	db $fd                                           ; $6c92: $fd
	db $dd                                           ; $6c93: $dd
	sub l                                            ; $6c94: $95
	inc hl                                           ; $6c95: $23
	nop                                              ; $6c96: $00
	pop bc                                           ; $6c97: $c1
	ld [hl+], a                                      ; $6c98: $22
	inc bc                                           ; $6c99: $03
	rst $38                                          ; $6c9a: $ff
	jp c, $9d22                                      ; $6c9b: $da $22 $9d

	nop                                              ; $6c9e: $00
	ld de, $fe6f                                     ; $6c9f: $11 $6f $fe
	jp c, Jump_017_6b11                              ; $6ca2: $da $11 $6b

	pop af                                           ; $6ca5: $f1
	cp $9e                                           ; $6ca6: $fe $9e
	db $10                                           ; $6ca8: $10
	db $fc                                           ; $6ca9: $fc
	rst SubAFromDE                                          ; $6caa: $df
	ld bc, $73fe                                     ; $6cab: $01 $fe $73
	rst SubAFromBC                                          ; $6cae: $e7
	ld a, e                                          ; $6caf: $7b
	rst AddAOntoHL                                          ; $6cb0: $ef
	ld l, e                                          ; $6cb1: $6b
	and $e8                                          ; $6cb2: $e6 $e8
	ld a, e                                          ; $6cb4: $7b
	or d                                             ; $6cb5: $b2
	sbc [hl]                                         ; $6cb6: $9e
	nop                                              ; $6cb7: $00
	add hl, de                                       ; $6cb8: $19
	nop                                              ; $6cb9: $00
	sbc d                                            ; $6cba: $9a
	nop                                              ; $6cbb: $00
	ld bc, $0302                                     ; $6cbc: $01 $02 $03
	inc bc                                           ; $6cbf: $03
	sbc $80                                          ; $6cc0: $de $80
	ld b, a                                          ; $6cc2: $47
	ld hl, sp-$63                                    ; $6cc3: $f8 $9d
	ld [$6f07], sp                                   ; $6cc5: $08 $07 $6f
	ld hl, sp-$64                                    ; $6cc8: $f8 $9c
	ld b, $05                                        ; $6cca: $06 $05
	inc b                                            ; $6ccc: $04
	ld [hl], e                                       ; $6ccd: $73
	ld hl, sp-$37                                    ; $6cce: $f8 $c9
	add b                                            ; $6cd0: $80
	dec d                                            ; $6cd1: $15
	nop                                              ; $6cd2: $00
	call c, $fe09                                    ; $6cd3: $dc $09 $fe
	ld b, a                                          ; $6cd6: $47
	ld hl, sp-$64                                    ; $6cd7: $f8 $9c
	db $10                                           ; $6cd9: $10
	rrca                                             ; $6cda: $0f
	ld c, $73                                        ; $6cdb: $0e $73
	ld hl, sp-$65                                    ; $6cdd: $f8 $9b
	dec c                                            ; $6cdf: $0d
	inc c                                            ; $6ce0: $0c
	dec bc                                           ; $6ce1: $0b
	ld a, [bc]                                       ; $6ce2: $0a
	ld [hl], a                                       ; $6ce3: $77
	ld hl, sp-$17                                    ; $6ce4: $f8 $e9
	ld d, a                                          ; $6ce6: $57
	ld bc, $018b                                     ; $6ce7: $01 $8b $01
	ld [bc], a                                       ; $6cea: $02
	inc bc                                           ; $6ceb: $03
	inc b                                            ; $6cec: $04
	dec b                                            ; $6ced: $05
	ld b, $07                                        ; $6cee: $06 $07
	ld [$0a09], sp                                   ; $6cf0: $08 $09 $0a
	dec bc                                           ; $6cf3: $0b
	inc c                                            ; $6cf4: $0c
	dec c                                            ; $6cf5: $0d
	ld c, $0f                                        ; $6cf6: $0e $0f
	ld [$1211], sp                                   ; $6cf8: $08 $11 $12
	inc de                                           ; $6cfb: $13
	inc d                                            ; $6cfc: $14
	push de                                          ; $6cfd: $d5
	dec d                                            ; $6cfe: $15

Call_017_6cff:
	adc h                                            ; $6cff: $8c
	ld hl, $2322                                     ; $6d00: $21 $22 $23
	inc h                                            ; $6d03: $24
	dec h                                            ; $6d04: $25
	ld h, $27                                        ; $6d05: $26 $27
	jr z, jr_017_6d32                                ; $6d07: $28 $29

	ld a, [hl+]                                      ; $6d09: $2a
	dec hl                                           ; $6d0a: $2b
	inc l                                            ; $6d0b: $2c
	dec l                                            ; $6d0c: $2d
	ld l, $2f                                        ; $6d0d: $2e $2f
	ld [$3211], sp                                   ; $6d0f: $08 $11 $32
	inc sp                                           ; $6d12: $33
	ld d, e                                          ; $6d13: $53
	ldh [$8b], a                                     ; $6d14: $e0 $8b
	ld b, c                                          ; $6d16: $41
	ld b, d                                          ; $6d17: $42
	ld b, e                                          ; $6d18: $43
	ld b, h                                          ; $6d19: $44
	ld b, l                                          ; $6d1a: $45
	ld b, [hl]                                       ; $6d1b: $46
	ld b, a                                          ; $6d1c: $47
	ld c, b                                          ; $6d1d: $48
	ld c, c                                          ; $6d1e: $49
	ld c, d                                          ; $6d1f: $4a
	dec hl                                           ; $6d20: $2b
	ld c, h                                          ; $6d21: $4c
	ld c, l                                          ; $6d22: $4d
	ld c, [hl]                                       ; $6d23: $4e
	dec hl                                           ; $6d24: $2b
	ld d, b                                          ; $6d25: $50
	ld d, c                                          ; $6d26: $51
	ld d, d                                          ; $6d27: $52
	ld d, e                                          ; $6d28: $53
	ld d, h                                          ; $6d29: $54
	push de                                          ; $6d2a: $d5
	dec d                                            ; $6d2b: $15
	adc e                                            ; $6d2c: $8b
	ld h, c                                          ; $6d2d: $61
	ld h, d                                          ; $6d2e: $62
	ld h, e                                          ; $6d2f: $63
	ld h, h                                          ; $6d30: $64
	ld h, l                                          ; $6d31: $65

jr_017_6d32:
	ld h, [hl]                                       ; $6d32: $66
	ld h, a                                          ; $6d33: $67
	ld l, b                                          ; $6d34: $68
	ld l, c                                          ; $6d35: $69
	ld l, d                                          ; $6d36: $6a
	ld l, e                                          ; $6d37: $6b
	ld l, h                                          ; $6d38: $6c
	ld l, l                                          ; $6d39: $6d
	ld l, [hl]                                       ; $6d3a: $6e
	ld l, a                                          ; $6d3b: $6f
	ld [hl], b                                       ; $6d3c: $70
	ld [hl], c                                       ; $6d3d: $71
	ld [hl], d                                       ; $6d3e: $72
	ld [hl], e                                       ; $6d3f: $73
	ld h, e                                          ; $6d40: $63
	push de                                          ; $6d41: $d5
	dec d                                            ; $6d42: $15
	sbc b                                            ; $6d43: $98
	add c                                            ; $6d44: $81
	add d                                            ; $6d45: $82
	add e                                            ; $6d46: $83
	add h                                            ; $6d47: $84
	add l                                            ; $6d48: $85
	add [hl]                                         ; $6d49: $86
	add a                                            ; $6d4a: $87
	ld a, e                                          ; $6d4b: $7b
	add b                                            ; $6d4c: $80
	sub [hl]                                         ; $6d4d: $96
	adc e                                            ; $6d4e: $8b
	adc h                                            ; $6d4f: $8c
	adc l                                            ; $6d50: $8d
	adc [hl]                                         ; $6d51: $8e
	adc a                                            ; $6d52: $8f
	sub b                                            ; $6d53: $90
	ld de, $9392                                     ; $6d54: $11 $92 $93
	ld d, e                                          ; $6d57: $53
	and b                                            ; $6d58: $a0
	adc h                                            ; $6d59: $8c
	and c                                            ; $6d5a: $a1
	and d                                            ; $6d5b: $a2
	and e                                            ; $6d5c: $a3
	and h                                            ; $6d5d: $a4
	and l                                            ; $6d5e: $a5
	and [hl]                                         ; $6d5f: $a6
	and a                                            ; $6d60: $a7
	xor b                                            ; $6d61: $a8
	xor c                                            ; $6d62: $a9
	xor d                                            ; $6d63: $aa
	xor e                                            ; $6d64: $ab
	xor h                                            ; $6d65: $ac
	xor l                                            ; $6d66: $ad
	xor [hl]                                         ; $6d67: $ae
	xor a                                            ; $6d68: $af
	or b                                             ; $6d69: $b0
	or c                                             ; $6d6a: $b1
	or d                                             ; $6d6b: $b2
	or e                                             ; $6d6c: $b3
	ld d, e                                          ; $6d6d: $53
	ldh [$8b], a                                     ; $6d6e: $e0 $8b
	pop bc                                           ; $6d70: $c1
	jp nz, $c4c3                                     ; $6d71: $c2 $c3 $c4

	push bc                                          ; $6d74: $c5
	add $c7                                          ; $6d75: $c6 $c7
	ret z                                            ; $6d77: $c8

	ret                                              ; $6d78: $c9


	jp z, $cccb                                      ; $6d79: $ca $cb $cc

	call $cbce                                       ; $6d7c: $cd $ce $cb
	ret nc                                           ; $6d7f: $d0

	pop de                                           ; $6d80: $d1
	jp nc, $d4d3                                     ; $6d81: $d2 $d3 $d4

	push de                                          ; $6d84: $d5
	dec d                                            ; $6d85: $15
	adc e                                            ; $6d86: $8b
	pop hl                                           ; $6d87: $e1
	ldh [c], a                                       ; $6d88: $e2
	db $e3                                           ; $6d89: $e3
	db $e4                                           ; $6d8a: $e4
	push hl                                          ; $6d8b: $e5
	and $e7                                          ; $6d8c: $e6 $e7
	add sp, -$17                                     ; $6d8e: $e8 $e9
	ld [$eceb], a                                    ; $6d90: $ea $eb $ec
	ldh [$df], a                                     ; $6d93: $e0 $df
	sbc $dd                                          ; $6d95: $de $dd
	call c, $dadb                                    ; $6d97: $dc $db $da
	db $e3                                           ; $6d9a: $e3
	push de                                          ; $6d9b: $d5
	dec d                                            ; $6d9c: $15
	adc e                                            ; $6d9d: $8b
	reti                                             ; $6d9e: $d9


	ret c                                            ; $6d9f: $d8

	rst SubAFromHL                                          ; $6da0: $d7
	sub $d5                                          ; $6da1: $d6 $d5
	rst GetHLinHL                                          ; $6da3: $cf
	ret nz                                           ; $6da4: $c0

	cp a                                             ; $6da5: $bf
	cp [hl]                                          ; $6da6: $be
	cp l                                             ; $6da7: $bd
	cp h                                             ; $6da8: $bc
	cp e                                             ; $6da9: $bb
	cp d                                             ; $6daa: $ba
	cp c                                             ; $6dab: $b9
	cp b                                             ; $6dac: $b8
	cp a                                             ; $6dad: $bf
	or a                                             ; $6dae: $b7
	or [hl]                                          ; $6daf: $b6
	or l                                             ; $6db0: $b5
	cp l                                             ; $6db1: $bd
	push de                                          ; $6db2: $d5
	dec d                                            ; $6db3: $15
	adc h                                            ; $6db4: $8c

jr_017_6db5:
	or h                                             ; $6db5: $b4
	and b                                            ; $6db6: $a0
	sbc a                                            ; $6db7: $9f
	sbc [hl]                                         ; $6db8: $9e
	sbc l                                            ; $6db9: $9d
	sbc h                                            ; $6dba: $9c
	sbc e                                            ; $6dbb: $9b
	sbc d                                            ; $6dbc: $9a
	sbc c                                            ; $6dbd: $99
	sbc b                                            ; $6dbe: $98
	sub a                                            ; $6dbf: $97
	sub [hl]                                         ; $6dc0: $96
	sub l                                            ; $6dc1: $95
	sub h                                            ; $6dc2: $94
	sub c                                            ; $6dc3: $91
	cp a                                             ; $6dc4: $bf
	or a                                             ; $6dc5: $b7
	adc d                                            ; $6dc6: $8a
	adc c                                            ; $6dc7: $89
	ld d, e                                          ; $6dc8: $53
	ldh [$8b], a                                     ; $6dc9: $e0 $8b
	adc b                                            ; $6dcb: $88
	add b                                            ; $6dcc: $80
	ld a, a                                          ; $6dcd: $7f
	ld a, [hl]                                       ; $6dce: $7e
	ld a, l                                          ; $6dcf: $7d
	ld a, h                                          ; $6dd0: $7c
	ld a, e                                          ; $6dd1: $7b
	ld a, d                                          ; $6dd2: $7a
	ld a, c                                          ; $6dd3: $79
	ld a, b                                          ; $6dd4: $78
	sub a                                            ; $6dd5: $97
	ld [hl], a                                       ; $6dd6: $77
	halt                                             ; $6dd7: $76
	ld [hl], l                                       ; $6dd8: $75
	sub a                                            ; $6dd9: $97
	ld [hl], h                                       ; $6dda: $74
	ld h, b                                          ; $6ddb: $60
	ld e, a                                          ; $6ddc: $5f
	ld e, [hl]                                       ; $6ddd: $5e
	ld e, l                                          ; $6dde: $5d
	ld d, e                                          ; $6ddf: $53
	nop                                              ; $6de0: $00
	sbc [hl]                                         ; $6de1: $9e
	ld e, h                                          ; $6de2: $5c
	ld l, a                                          ; $6de3: $6f
	nop                                              ; $6de4: $00
	sbc h                                            ; $6de5: $9c
	ld e, e                                          ; $6de6: $5b
	ld e, d                                          ; $6de7: $5a
	ld e, c                                          ; $6de8: $59
	ld a, e                                          ; $6de9: $7b
	nop                                              ; $6dea: $00
	sbc e                                            ; $6deb: $9b
	ld e, b                                          ; $6dec: $58
	ld d, a                                          ; $6ded: $57
	ld d, [hl]                                       ; $6dee: $56
	ld d, l                                          ; $6def: $55
	ld c, e                                          ; $6df0: $4b
	nop                                              ; $6df1: $00
	sbc l                                            ; $6df2: $9d
	ld c, a                                          ; $6df3: $4f
	ld c, e                                          ; $6df4: $4b
	ld l, e                                          ; $6df5: $6b
	nop                                              ; $6df6: $00
	sub [hl]                                         ; $6df7: $96
	ld b, b                                          ; $6df8: $40
	adc h                                            ; $6df9: $8c
	adc l                                            ; $6dfa: $8d
	ccf                                              ; $6dfb: $3f
	ld a, $3d                                        ; $6dfc: $3e $3d
	ld de, $3b3c                                     ; $6dfe: $11 $3c $3b
	cpl                                              ; $6e01: $2f
	nop                                              ; $6e02: $00
	sub a                                            ; $6e03: $97
	ld a, [hl-]                                      ; $6e04: $3a
	add hl, sp                                       ; $6e05: $39
	jr c, jr_017_6db5                                ; $6e06: $38 $ad

	xor [hl]                                         ; $6e08: $ae
	scf                                              ; $6e09: $37
	ld [hl], $11                                     ; $6e0a: $36 $11
	cpl                                              ; $6e0c: $2f
	nop                                              ; $6e0d: $00
	sub h                                            ; $6e0e: $94
	dec [hl]                                         ; $6e0f: $35
	inc [hl]                                         ; $6e10: $34
	ld sp, $30cb                                     ; $6e11: $31 $cb $30
	call $2bce                                       ; $6e14: $cd $ce $2b
	jr nz, jr_017_6e38                               ; $6e17: $20 $1f

	ld e, $4f                                        ; $6e19: $1e $4f
	nop                                              ; $6e1b: $00
	ld e, [hl]                                       ; $6e1c: $5e
	add b                                            ; $6e1d: $80
	sbc [hl]                                         ; $6e1e: $9e
	dec e                                            ; $6e1f: $1d
	halt                                             ; $6e20: $76
	add b                                            ; $6e21: $80
	sbc h                                            ; $6e22: $9c
	ld l, b                                          ; $6e23: $68
	ld [hl], c                                       ; $6e24: $71
	inc e                                            ; $6e25: $1c
	ld b, [hl]                                       ; $6e26: $46
	add b                                            ; $6e27: $80
	ld h, a                                          ; $6e28: $67
	add b                                            ; $6e29: $80
	sbc c                                            ; $6e2a: $99
	dec de                                           ; $6e2b: $1b
	ld a, [de]                                       ; $6e2c: $1a
	adc l                                            ; $6e2d: $8d
	ccf                                              ; $6e2e: $3f
	add hl, de                                       ; $6e2f: $19
	ld [$8023], sp                                   ; $6e30: $08 $23 $80
	sbc b                                            ; $6e33: $98
	jr @+$2d                                         ; $6e34: $18 $2b

	rla                                              ; $6e36: $17
	xor l                                            ; $6e37: $ad

jr_017_6e38:
	xor [hl]                                         ; $6e38: $ae
	ld d, $08                                        ; $6e39: $16 $08
	ld [hl], a                                       ; $6e3b: $77
	add b                                            ; $6e3c: $80
	ld b, a                                          ; $6e3d: $47
	nop                                              ; $6e3e: $00
	rst SubAFromHL                                          ; $6e3f: $d7
	ld [hl+], a                                      ; $6e40: $22
	db $db                                           ; $6e41: $db
	ld de, $f003                                     ; $6e42: $11 $03 $f0
	db $dd                                           ; $6e45: $dd
	ld [hl+], a                                      ; $6e46: $22
	sbc e                                            ; $6e47: $9b
	ld [de], a                                       ; $6e48: $12
	ld [hl+], a                                      ; $6e49: $22
	ld hl, $5721                                     ; $6e4a: $21 $21 $57
	ldh a, [$9a]                                     ; $6e4d: $f0 $9a
	inc de                                           ; $6e4f: $13
	inc hl                                           ; $6e50: $23
	ld b, c                                          ; $6e51: $41
	ld hl, $5f32                                     ; $6e52: $21 $32 $5f
	ldh a, [$9a]                                     ; $6e55: $f0 $9a
	inc hl                                           ; $6e57: $23
	ld de, $4122                                     ; $6e58: $11 $22 $41
	ld b, d                                          ; $6e5b: $42
	ld e, a                                          ; $6e5c: $5f
	ldh [$99], a                                     ; $6e5d: $e0 $99
	ld hl, $1114                                     ; $6e5f: $21 $14 $11
	ld [hl+], a                                      ; $6e62: $22
	ld de, $6b41                                     ; $6e63: $11 $41 $6b
	ldh a, [$f7]                                     ; $6e66: $f0 $f7
	inc bc                                           ; $6e68: $03
	ldh a, [$33]                                     ; $6e69: $f0 $33
	ldh a, [$dd]                                     ; $6e6b: $f0 $dd
	ld [hl+], a                                      ; $6e6d: $22
	sbc e                                            ; $6e6e: $9b
	ld b, h                                          ; $6e6f: $44
	ld [de], a                                       ; $6e70: $12
	ld [hl+], a                                      ; $6e71: $22
	ld b, c                                          ; $6e72: $41
	ld h, a                                          ; $6e73: $67
	or b                                             ; $6e74: $b0
	ld l, a                                          ; $6e75: $6f
	add b                                            ; $6e76: $80
	sbc l                                            ; $6e77: $9d
	ld [hl+], a                                      ; $6e78: $22
	ld b, e                                          ; $6e79: $43
	ld d, e                                          ; $6e7a: $53
	ld h, b                                          ; $6e7b: $60
	ld a, e                                          ; $6e7c: $7b
	add b                                            ; $6e7d: $80
	ld c, e                                          ; $6e7e: $4b
	ld d, b                                          ; $6e7f: $50
	inc bc                                           ; $6e80: $03
	jr nz, jr_017_6ec2                               ; $6e81: $20 $3f

	ldh a, [$eb]                                     ; $6e83: $f0 $eb
	nop                                              ; $6e85: $00
	adc e                                            ; $6e86: $8b
	ld bc, $0302                                     ; $6e87: $01 $02 $03
	inc b                                            ; $6e8a: $04
	dec b                                            ; $6e8b: $05
	ld b, $07                                        ; $6e8c: $06 $07
	ld [$0a09], sp                                   ; $6e8e: $08 $09 $0a
	dec bc                                           ; $6e91: $0b
	inc c                                            ; $6e92: $0c
	dec c                                            ; $6e93: $0d
	ld c, $0f                                        ; $6e94: $0e $0f
	db $10                                           ; $6e96: $10
	ld de, $1312                                     ; $6e97: $11 $12 $13
	inc d                                            ; $6e9a: $14
	push de                                          ; $6e9b: $d5
	ld h, b                                          ; $6e9c: $60
	adc e                                            ; $6e9d: $8b
	dec d                                            ; $6e9e: $15
	ld d, $17                                        ; $6e9f: $16 $17
	jr jr_017_6ebc                                   ; $6ea1: $18 $19

	ld a, [de]                                       ; $6ea3: $1a
	dec de                                           ; $6ea4: $1b
	inc e                                            ; $6ea5: $1c
	dec e                                            ; $6ea6: $1d
	ld a, [bc]                                       ; $6ea7: $0a
	rra                                              ; $6ea8: $1f
	jr nz, jr_017_6ecc                               ; $6ea9: $20 $21

	ld [hl+], a                                      ; $6eab: $22
	inc hl                                           ; $6eac: $23
	inc h                                            ; $6ead: $24
	dec h                                            ; $6eae: $25
	ld h, $27                                        ; $6eaf: $26 $27
	jr z, @-$29                                      ; $6eb1: $28 $d5

	ld h, b                                          ; $6eb3: $60
	adc e                                            ; $6eb4: $8b
	add hl, hl                                       ; $6eb5: $29
	ld a, [hl+]                                      ; $6eb6: $2a
	dec hl                                           ; $6eb7: $2b
	inc l                                            ; $6eb8: $2c
	dec l                                            ; $6eb9: $2d
	ld l, $2f                                        ; $6eba: $2e $2f

jr_017_6ebc:
	dec l                                            ; $6ebc: $2d
	ld sp, $3332                                     ; $6ebd: $31 $32 $33
	inc [hl]                                         ; $6ec0: $34
	dec [hl]                                         ; $6ec1: $35

jr_017_6ec2:
	ld [hl], $37                                     ; $6ec2: $36 $37
	jr c, jr_017_6eff                                ; $6ec4: $38 $39

	ld a, [hl-]                                      ; $6ec6: $3a
	inc sp                                           ; $6ec7: $33
	inc [hl]                                         ; $6ec8: $34
	push de                                          ; $6ec9: $d5
	ld h, b                                          ; $6eca: $60
	adc e                                            ; $6ecb: $8b

jr_017_6ecc:
	dec a                                            ; $6ecc: $3d
	ld a, $3f                                        ; $6ecd: $3e $3f
	ld b, b                                          ; $6ecf: $40
	ld b, c                                          ; $6ed0: $41
	ld b, d                                          ; $6ed1: $42
	ccf                                              ; $6ed2: $3f
	ld b, h                                          ; $6ed3: $44
	ld b, l                                          ; $6ed4: $45
	ld b, [hl]                                       ; $6ed5: $46
	ld b, a                                          ; $6ed6: $47
	add hl, hl                                       ; $6ed7: $29
	ld c, c                                          ; $6ed8: $49
	ld c, d                                          ; $6ed9: $4a
	ld c, e                                          ; $6eda: $4b
	ld c, h                                          ; $6edb: $4c
	ld c, l                                          ; $6edc: $4d
	ld c, [hl]                                       ; $6edd: $4e
	ld c, a                                          ; $6ede: $4f
	ld d, b                                          ; $6edf: $50
	push de                                          ; $6ee0: $d5
	ld h, b                                          ; $6ee1: $60
	adc e                                            ; $6ee2: $8b
	ld d, c                                          ; $6ee3: $51
	ld d, d                                          ; $6ee4: $52
	ld d, e                                          ; $6ee5: $53
	ld d, h                                          ; $6ee6: $54
	ld d, l                                          ; $6ee7: $55
	ld d, [hl]                                       ; $6ee8: $56
	ld d, a                                          ; $6ee9: $57
	ld e, b                                          ; $6eea: $58
	ld e, c                                          ; $6eeb: $59
	ld e, d                                          ; $6eec: $5a
	ld e, e                                          ; $6eed: $5b
	ld e, h                                          ; $6eee: $5c
	ld e, l                                          ; $6eef: $5d
	ld e, [hl]                                       ; $6ef0: $5e
	ld e, a                                          ; $6ef1: $5f
	ld h, b                                          ; $6ef2: $60
	ld h, c                                          ; $6ef3: $61
	ld h, d                                          ; $6ef4: $62
	ld h, e                                          ; $6ef5: $63
	ld h, h                                          ; $6ef6: $64
	push de                                          ; $6ef7: $d5
	ld h, b                                          ; $6ef8: $60
	adc e                                            ; $6ef9: $8b
	ld h, l                                          ; $6efa: $65
	ld h, [hl]                                       ; $6efb: $66
	ld h, a                                          ; $6efc: $67
	ld l, b                                          ; $6efd: $68
	ld l, c                                          ; $6efe: $69

jr_017_6eff:
	ld l, d                                          ; $6eff: $6a
	ld l, e                                          ; $6f00: $6b
	ld l, h                                          ; $6f01: $6c
	ld l, l                                          ; $6f02: $6d
	ld e, d                                          ; $6f03: $5a
	ld l, a                                          ; $6f04: $6f
	ld [hl], b                                       ; $6f05: $70
	ld [hl], c                                       ; $6f06: $71
	ld [hl], d                                       ; $6f07: $72
	ld [hl], e                                       ; $6f08: $73
	ld [hl], h                                       ; $6f09: $74
	ld [hl], l                                       ; $6f0a: $75
	halt                                             ; $6f0b: $76
	ld [hl], a                                       ; $6f0c: $77
	ld a, b                                          ; $6f0d: $78
	push de                                          ; $6f0e: $d5
	ld h, b                                          ; $6f0f: $60
	adc e                                            ; $6f10: $8b
	ld a, c                                          ; $6f11: $79
	ld a, d                                          ; $6f12: $7a
	ld a, e                                          ; $6f13: $7b
	ld a, h                                          ; $6f14: $7c
	ld a, l                                          ; $6f15: $7d
	ld a, [hl]                                       ; $6f16: $7e
	ld a, a                                          ; $6f17: $7f
	ld a, l                                          ; $6f18: $7d
	add c                                            ; $6f19: $81
	add d                                            ; $6f1a: $82
	add e                                            ; $6f1b: $83
	add h                                            ; $6f1c: $84
	add l                                            ; $6f1d: $85
	add [hl]                                         ; $6f1e: $86
	add a                                            ; $6f1f: $87
	adc b                                            ; $6f20: $88
	adc c                                            ; $6f21: $89
	adc d                                            ; $6f22: $8a
	add e                                            ; $6f23: $83
	add h                                            ; $6f24: $84
	push de                                          ; $6f25: $d5
	ld h, b                                          ; $6f26: $60
	adc e                                            ; $6f27: $8b
	adc l                                            ; $6f28: $8d
	adc [hl]                                         ; $6f29: $8e
	ld d, b                                          ; $6f2a: $50
	ld c, h                                          ; $6f2b: $4c
	ld c, l                                          ; $6f2c: $4d
	sub d                                            ; $6f2d: $92
	ld d, b                                          ; $6f2e: $50
	sub h                                            ; $6f2f: $94
	sub l                                            ; $6f30: $95
	sub [hl]                                         ; $6f31: $96
	sub a                                            ; $6f32: $97
	ld a, c                                          ; $6f33: $79
	sbc c                                            ; $6f34: $99
	sbc d                                            ; $6f35: $9a
	sbc b                                            ; $6f36: $98
	ld b, b                                          ; $6f37: $40
	ld b, c                                          ; $6f38: $41
	sub e                                            ; $6f39: $93
	sub c                                            ; $6f3a: $91
	ccf                                              ; $6f3b: $3f
	push de                                          ; $6f3c: $d5
	ld h, b                                          ; $6f3d: $60
	inc bc                                           ; $6f3e: $03
	nop                                              ; $6f3f: $00
	inc bc                                           ; $6f40: $03
	nop                                              ; $6f41: $00

Jump_017_6f42:
	inc bc                                           ; $6f42: $03
	nop                                              ; $6f43: $00
	dec bc                                           ; $6f44: $0b
	nop                                              ; $6f45: $00
	sbc e                                            ; $6f46: $9b
	sub b                                            ; $6f47: $90
	ld d, h                                          ; $6f48: $54
	ld d, l                                          ; $6f49: $55
	adc a                                            ; $6f4a: $8f
	dec bc                                           ; $6f4b: $0b
	nop                                              ; $6f4c: $00
	sbc [hl]                                         ; $6f4d: $9e
	adc h                                            ; $6f4e: $8c
	ld e, a                                          ; $6f4f: $5f
	nop                                              ; $6f50: $00
	sbc [hl]                                         ; $6f51: $9e
	adc e                                            ; $6f52: $8b
	dec sp                                           ; $6f53: $3b
	nop                                              ; $6f54: $00
	sbc e                                            ; $6f55: $9b
	add b                                            ; $6f56: $80
	ld l, [hl]                                       ; $6f57: $6e
	ld a, a                                          ; $6f58: $7f
	ld c, b                                          ; $6f59: $48
	ld h, e                                          ; $6f5a: $63
	nop                                              ; $6f5b: $00
	sbc [hl]                                         ; $6f5c: $9e
	ld b, e                                          ; $6f5d: $43
	inc bc                                           ; $6f5e: $03
	nop                                              ; $6f5f: $00
	ld c, e                                          ; $6f60: $4b
	nop                                              ; $6f61: $00
	sbc [hl]                                         ; $6f62: $9e
	inc a                                            ; $6f63: $3c
	ld c, a                                          ; $6f64: $4f
	nop                                              ; $6f65: $00
	sbc [hl]                                         ; $6f66: $9e
	dec sp                                           ; $6f67: $3b
	inc de                                           ; $6f68: $13
	nop                                              ; $6f69: $00
	sbc l                                            ; $6f6a: $9d
	jr nc, jr_017_6f8b                               ; $6f6b: $30 $1e

	ld a, e                                          ; $6f6d: $7b
	nop                                              ; $6f6e: $00
	dec e                                            ; $6f6f: $1d
	nop                                              ; $6f70: $00
	db $dd                                           ; $6f71: $dd
	ld de, $109e                                     ; $6f72: $11 $9e $10
	or $07                                           ; $6f75: $f6 $07
	ldh a, [$fd]                                     ; $6f77: $f0 $fd
	sbc [hl]                                         ; $6f79: $9e
	ld bc, $11dc                                     ; $6f7a: $01 $dc $11
	inc bc                                           ; $6f7d: $03
	ldh a, [$33]                                     ; $6f7e: $f0 $33
	ldh a, [$03]                                     ; $6f80: $f0 $03
	sub b                                            ; $6f82: $90
	inc bc                                           ; $6f83: $03
	add b                                            ; $6f84: $80
	inc bc                                           ; $6f85: $03
	sub b                                            ; $6f86: $90
	inc bc                                           ; $6f87: $03
	add b                                            ; $6f88: $80
	inc bc                                           ; $6f89: $03
	sub b                                            ; $6f8a: $90

jr_017_6f8b:
	db $fc                                           ; $6f8b: $fc
	jr z, jr_017_6f8f                                ; $6f8c: $28 $01

	rst SubAFromDE                                          ; $6f8e: $df

jr_017_6f8f:
	ld bc, $038d                                     ; $6f8f: $01 $8d $03
	inc b                                            ; $6f92: $04
	dec b                                            ; $6f93: $05
	ld b, $07                                        ; $6f94: $06 $07
	ld [$0a09], sp                                   ; $6f96: $08 $09 $0a
	ld bc, $0d0c                                     ; $6f99: $01 $0c $0d
	ld bc, $100f                                     ; $6f9c: $01 $0f $10
	ld de, $0112                                     ; $6f9f: $11 $12 $01
	ld bc, $10d5                                     ; $6fa2: $01 $d5 $10
	ld a, e                                          ; $6fa5: $7b
	ldh [hDisp1_SCY], a                                     ; $6fa6: $e0 $90
	jr jr_017_6fc3                                   ; $6fa8: $18 $19

	ld a, [de]                                       ; $6faa: $1a
	rlca                                             ; $6fab: $07
	inc e                                            ; $6fac: $1c
	dec e                                            ; $6fad: $1d
	ld e, $1f                                        ; $6fae: $1e $1f
	jr nz, jr_017_6fd3                               ; $6fb0: $20 $21

	ld [hl+], a                                      ; $6fb2: $22
	inc hl                                           ; $6fb3: $23
	inc h                                            ; $6fb4: $24
	dec h                                            ; $6fb5: $25
	ld h, $47                                        ; $6fb6: $26 $47
	ldh [hDisp1_LCDC], a                                     ; $6fb8: $e0 $8f
	dec hl                                           ; $6fba: $2b
	inc l                                            ; $6fbb: $2c
	dec l                                            ; $6fbc: $2d
	ld bc, $302f                                     ; $6fbd: $01 $2f $30
	ld sp, $3332                                     ; $6fc0: $31 $32 $33

jr_017_6fc3:
	inc [hl]                                         ; $6fc3: $34
	dec [hl]                                         ; $6fc4: $35
	ld [hl], $37                                     ; $6fc5: $36 $37
	jr c, jr_017_7002                                ; $6fc7: $38 $39

	ld a, [hl-]                                      ; $6fc9: $3a
	ld b, a                                          ; $6fca: $47
	ldh [hDisp1_LCDC], a                                     ; $6fcb: $e0 $8f
	ccf                                              ; $6fcd: $3f
	ld b, b                                          ; $6fce: $40
	ld b, c                                          ; $6fcf: $41
	ld b, d                                          ; $6fd0: $42
	ld b, e                                          ; $6fd1: $43
	ld b, h                                          ; $6fd2: $44

jr_017_6fd3:
	ld b, l                                          ; $6fd3: $45
	ld b, [hl]                                       ; $6fd4: $46
	ld b, a                                          ; $6fd5: $47
	ld c, b                                          ; $6fd6: $48
	ld c, c                                          ; $6fd7: $49
	ld b, a                                          ; $6fd8: $47
	ld c, e                                          ; $6fd9: $4b
	ld c, h                                          ; $6fda: $4c
	ld c, l                                          ; $6fdb: $4d
	ld c, [hl]                                       ; $6fdc: $4e
	ld b, a                                          ; $6fdd: $47
	ldh [hDisp1_LCDC], a                                     ; $6fde: $e0 $8f
	ld d, e                                          ; $6fe0: $53
	ld d, h                                          ; $6fe1: $54
	ld d, l                                          ; $6fe2: $55
	ld d, [hl]                                       ; $6fe3: $56
	inc bc                                           ; $6fe4: $03
	ld e, b                                          ; $6fe5: $58
	ld e, c                                          ; $6fe6: $59
	ld e, d                                          ; $6fe7: $5a
	ld b, a                                          ; $6fe8: $47
	ld e, h                                          ; $6fe9: $5c
	ld e, l                                          ; $6fea: $5d
	ld e, [hl]                                       ; $6feb: $5e
	ld e, a                                          ; $6fec: $5f
	db $10                                           ; $6fed: $10
	ld de, $4362                                     ; $6fee: $11 $62 $43
	ldh [hDisp1_SCY], a                                     ; $6ff1: $e0 $90
	ld l, b                                          ; $6ff3: $68
	ld l, c                                          ; $6ff4: $69
	ld l, d                                          ; $6ff5: $6a
	inc bc                                           ; $6ff6: $03
	ld l, h                                          ; $6ff7: $6c
	ld l, l                                          ; $6ff8: $6d
	ld l, [hl]                                       ; $6ff9: $6e
	ld l, a                                          ; $6ffa: $6f
	ld [hl], b                                       ; $6ffb: $70
	ld [hl], c                                       ; $6ffc: $71
	ld [hl], d                                       ; $6ffd: $72
	ld [hl], e                                       ; $6ffe: $73
	inc h                                            ; $6fff: $24
	dec h                                            ; $7000: $25
	halt                                             ; $7001: $76

jr_017_7002:
	ld c, a                                          ; $7002: $4f
	ldh [$df], a                                     ; $7003: $e0 $df
	ld a, c                                          ; $7005: $79
	sub b                                            ; $7006: $90
	ld a, e                                          ; $7007: $7b
	ld a, h                                          ; $7008: $7c
	ld a, l                                          ; $7009: $7d
	ld a, [hl]                                       ; $700a: $7e
	dec hl                                           ; $700b: $2b
	add b                                            ; $700c: $80
	add c                                            ; $700d: $81
	add d                                            ; $700e: $82
	add e                                            ; $700f: $83
	add h                                            ; $7010: $84
	add l                                            ; $7011: $85
	add [hl]                                         ; $7012: $86
	ld bc, $8988                                     ; $7013: $01 $88 $89
	sbc $01                                          ; $7016: $de $01
	ld c, a                                          ; $7018: $4f
	ldh [hDisp1_LCDC], a                                     ; $7019: $e0 $8f
	adc a                                            ; $701b: $8f
	sub b                                            ; $701c: $90
	sub c                                            ; $701d: $91
	ld a, c                                          ; $701e: $79
	sub e                                            ; $701f: $93
	sub h                                            ; $7020: $94
	sub l                                            ; $7021: $95
	sub [hl]                                         ; $7022: $96
	ld a, c                                          ; $7023: $79
	sbc b                                            ; $7024: $98
	sbc c                                            ; $7025: $99
	ld a, c                                          ; $7026: $79
	sbc e                                            ; $7027: $9b
	sbc h                                            ; $7028: $9c
	sbc l                                            ; $7029: $9d
	sbc [hl]                                         ; $702a: $9e
	ld b, a                                          ; $702b: $47
	ldh [hDisp1_LCDC], a                                     ; $702c: $e0 $8f
	and e                                            ; $702e: $a3
	and h                                            ; $702f: $a4
	and l                                            ; $7030: $a5
	and [hl]                                         ; $7031: $a6
	and a                                            ; $7032: $a7
	xor b                                            ; $7033: $a8
	xor c                                            ; $7034: $a9
	xor d                                            ; $7035: $aa
	ld a, c                                          ; $7036: $79
	xor h                                            ; $7037: $ac
	xor l                                            ; $7038: $ad
	ld a, c                                          ; $7039: $79
	xor a                                            ; $703a: $af
	or b                                             ; $703b: $b0
	or c                                             ; $703c: $b1
	or d                                             ; $703d: $b2
	ld b, e                                          ; $703e: $43
	ldh [hDisp1_SCY], a                                     ; $703f: $e0 $90
	cp b                                             ; $7041: $b8
	or a                                             ; $7042: $b7
	or [hl]                                          ; $7043: $b6
	and a                                            ; $7044: $a7
	or l                                             ; $7045: $b5
	or h                                             ; $7046: $b4
	or e                                             ; $7047: $b3
	xor [hl]                                         ; $7048: $ae
	xor e                                            ; $7049: $ab
	and d                                            ; $704a: $a2
	and c                                            ; $704b: $a1
	and b                                            ; $704c: $a0
	sbc a                                            ; $704d: $9f
	sbc d                                            ; $704e: $9a
	sub a                                            ; $704f: $97
	ld b, a                                          ; $7050: $47
	ldh [hDisp1_LCDC], a                                     ; $7051: $e0 $8f
	sub d                                            ; $7053: $92
	adc [hl]                                         ; $7054: $8e
	adc l                                            ; $7055: $8d
	ld a, c                                          ; $7056: $79
	adc h                                            ; $7057: $8c
	adc e                                            ; $7058: $8b
	adc d                                            ; $7059: $8a
	add a                                            ; $705a: $87
	ld a, a                                          ; $705b: $7f
	ld a, d                                          ; $705c: $7a
	ld a, b                                          ; $705d: $78
	ld [hl], a                                       ; $705e: $77
	ld [hl], l                                       ; $705f: $75
	ld [hl], h                                       ; $7060: $74
	ld l, e                                          ; $7061: $6b
	ld h, a                                          ; $7062: $67
	ld b, a                                          ; $7063: $47
	ldh [$63], a                                     ; $7064: $e0 $63
	nop                                              ; $7066: $00
	sbc l                                            ; $7067: $9d
	ld h, [hl]                                       ; $7068: $66
	ld h, l                                          ; $7069: $65
	dec sp                                           ; $706a: $3b
	nop                                              ; $706b: $00
	rst SubAFromDE                                          ; $706c: $df
	ld a, c                                          ; $706d: $79
	ld h, a                                          ; $706e: $67
	nop                                              ; $706f: $00
	sbc e                                            ; $7070: $9b
	ld h, h                                          ; $7071: $64
	ld h, e                                          ; $7072: $63
	ld h, c                                          ; $7073: $61
	ld b, a                                          ; $7074: $47
	ccf                                              ; $7075: $3f
	nop                                              ; $7076: $00
	ld a, e                                          ; $7077: $7b
	ldh [rOCPD], a                                   ; $7078: $e0 $6b
	nop                                              ; $707a: $00
	sbc e                                            ; $707b: $9b
	ld h, b                                          ; $707c: $60
	ld e, e                                          ; $707d: $5b
	ld d, a                                          ; $707e: $57
	ld d, d                                          ; $707f: $52
	rla                                              ; $7080: $17
	nop                                              ; $7081: $00
	sbc e                                            ; $7082: $9b
	ld d, c                                          ; $7083: $51
	ld d, b                                          ; $7084: $50
	ld c, a                                          ; $7085: $4f
	ld c, d                                          ; $7086: $4a
	scf                                              ; $7087: $37
	nop                                              ; $7088: $00
	ld a, a                                          ; $7089: $7f
	add h                                            ; $708a: $84
	sub c                                            ; $708b: $91
	ld a, $01                                        ; $708c: $3e $01
	dec a                                            ; $708e: $3d
	ld b, b                                          ; $708f: $40
	inc a                                            ; $7090: $3c
	dec sp                                           ; $7091: $3b
	ld bc, $4e2e                                     ; $7092: $01 $2e $4e
	ld bc, $292a                                     ; $7095: $01 $2a $29
	jr z, jr_017_70c1                                ; $7098: $28 $27

	ld b, a                                          ; $709a: $47
	ldh [rPCM12], a                                  ; $709b: $e0 $76
	nop                                              ; $709d: $00
	sbc e                                            ; $709e: $9b
	dec de                                           ; $709f: $1b
	rla                                              ; $70a0: $17
	ld d, $15                                        ; $70a1: $16 $15
	halt                                             ; $70a3: $76
	nop                                              ; $70a4: $00
	sbc [hl]                                         ; $70a5: $9e
	inc d                                            ; $70a6: $14
	ld a, [hl+]                                      ; $70a7: $2a
	nop                                              ; $70a8: $00
	sbc e                                            ; $70a9: $9b
	dec de                                           ; $70aa: $1b
	inc de                                           ; $70ab: $13
	ld c, $0b                                        ; $70ac: $0e $0b
	halt                                             ; $70ae: $76
	nop                                              ; $70af: $00
	sbc [hl]                                         ; $70b0: $9e
	ld [bc], a                                       ; $70b1: $02
	ld [hl], d                                       ; $70b2: $72
	nop                                              ; $70b3: $00
	ld a, [de]                                       ; $70b4: $1a
	nop                                              ; $70b5: $00
	rst SubAFromHL                                          ; $70b6: $d7
	ld de, $03fb                                     ; $70b7: $11 $fb $03
	ldh a, [$03]                                     ; $70ba: $f0 $03
	ldh a, [rVBK]                                    ; $70bc: $f0 $4f
	ldh a, [$5f]                                     ; $70be: $f0 $5f
	rst AddAOntoHL                                          ; $70c0: $ef

jr_017_70c1:
	ldh a, [c]                                       ; $70c1: $f2
	inc bc                                           ; $70c2: $03
	ldh a, [$2b]                                     ; $70c3: $f0 $2b
	ldh a, [rTAC]                                    ; $70c5: $f0 $07
	and b                                            ; $70c7: $a0
	inc bc                                           ; $70c8: $03
	ldh a, [rIF]                                     ; $70c9: $f0 $0f
	ldh a, [$d7]                                     ; $70cb: $f0 $d7
	ld de, $845b                                     ; $70cd: $11 $5b $84
	pop af                                           ; $70d0: $f1
	add b                                            ; $70d1: $80
	ld d, b                                          ; $70d2: $50
	ld d, c                                          ; $70d3: $51
	jp c, $f8e3                                      ; $70d4: $da $e3 $f8

	adc $ed                                          ; $70d7: $ce $ed
	rst AddAOntoHL                                          ; $70d9: $ef
	rst $38                                          ; $70da: $ff
	sbc $69                                          ; $70db: $de $69
	scf                                              ; $70dd: $37
	dec b                                            ; $70de: $05
	ld h, $03                                        ; $70df: $26 $03
	ld bc, $987a                                     ; $70e1: $01 $7a $98
	dec [hl]                                         ; $70e4: $35
	ld a, [hl+]                                      ; $70e5: $2a
	and l                                            ; $70e6: $a5
	ld h, [hl]                                       ; $70e7: $66
	ld [hl], l                                       ; $70e8: $75
	ld [hl], h                                       ; $70e9: $74
	db $fc                                           ; $70ea: $fc
	ld a, h                                          ; $70eb: $7c
	ld hl, sp-$0f                                    ; $70ec: $f8 $f1
	di                                               ; $70ee: $f3
	di                                               ; $70ef: $f3
	ld b, e                                          ; $70f0: $43
	sub d                                            ; $70f1: $92
	and e                                            ; $70f2: $a3
	rst $38                                          ; $70f3: $ff
	ldh [rTMA], a                                    ; $70f4: $e0 $06
	ld a, [bc]                                       ; $70f6: $0a
	ld d, l                                          ; $70f7: $55
	db $d3                                           ; $70f8: $d3
	ld b, a                                          ; $70f9: $47
	jp $0000                                        ; $70fa: $c3 $00 $00


	pop bc                                           ; $70fd: $c1
	rst JumpTable                                          ; $70fe: $c7
	db $dd                                           ; $70ff: $dd
	adc a                                            ; $7100: $8f
	sub a                                            ; $7101: $97
	rst $38                                          ; $7102: $ff
	rrca                                             ; $7103: $0f
	jp $c411                                         ; $7104: $c3 $11 $c4


	ld [$e8f2], a                                    ; $7107: $ea $f2 $e8
	cp $9d                                           ; $710a: $fe $9d

jr_017_710c:
	ldh [$f8], a                                     ; $710c: $e0 $f8
	sbc $fc                                          ; $710e: $de $fc
	add a                                            ; $7110: $87
	pop bc                                           ; $7111: $c1
	and b                                            ; $7112: $a0
	ld h, c                                          ; $7113: $61
	ldh [$c1], a                                     ; $7114: $e0 $c1
	ld bc, $8783                                     ; $7116: $01 $83 $87
	scf                                              ; $7119: $37
	ld [hl], e                                       ; $711a: $73
	ei                                               ; $711b: $fb
	di                                               ; $711c: $f3
	rst FarCall                                          ; $711d: $f7
	rst SubAFromBC                                          ; $711e: $e7
	rst GetHLinHL                                          ; $711f: $cf
	ld e, a                                          ; $7120: $5f
	ld b, b                                          ; $7121: $40
	or h                                             ; $7122: $b4
	ld e, d                                          ; $7123: $5a
	cp a                                             ; $7124: $bf
	ld a, a                                          ; $7125: $7f
	rst $38                                          ; $7126: $ff
	push de                                          ; $7127: $d5
	xor d                                            ; $7128: $aa
	ret c                                            ; $7129: $d8

	rst $38                                          ; $712a: $ff
	sub a                                            ; $712b: $97
	ld bc, $54a8                                     ; $712c: $01 $a8 $54
	cp [hl]                                          ; $712f: $be
	cp $fe                                           ; $7130: $fe $fe
	cp [hl]                                          ; $7132: $be
	inc bc                                           ; $7133: $03
	jp c, $94ff                                      ; $7134: $da $ff $94

	add e                                            ; $7137: $83
	ldh [rSVBK], a                                   ; $7138: $e0 $70
	cp b                                             ; $713a: $b8
	ld e, h                                          ; $713b: $5c
	cp b                                             ; $713c: $b8
	ld e, b                                          ; $713d: $58
	jr nc, jr_017_710c                               ; $713e: $30 $cc

	rst SubAFromBC                                          ; $7140: $e7
	ld sp, hl                                        ; $7141: $f9
	db $dd                                           ; $7142: $dd
	db $fd                                           ; $7143: $fd
	add h                                            ; $7144: $84
	ld sp, hl                                        ; $7145: $f9
	ld b, b                                          ; $7146: $40
	nop                                              ; $7147: $00
	ld [hl+], a                                      ; $7148: $22
	adc l                                            ; $7149: $8d
	jp z, $eecd                                      ; $714a: $ca $cd $ee

	xor $9f                                          ; $714d: $ee $9f
	rst GetHLinHL                                          ; $714f: $cf
	call $2562                                       ; $7150: $cd $62 $25
	ld [hl+], a                                      ; $7153: $22
	ld bc, $7a01                                     ; $7154: $01 $01 $7a
	jr jr_017_718e                                   ; $7157: $18 $35

	ld a, [hl+]                                      ; $7159: $2a
	ld h, $24                                        ; $715a: $26 $24
	ld [hl], l                                       ; $715c: $75
	push de                                          ; $715d: $d5
	db $fc                                           ; $715e: $fc
	db $fc                                           ; $715f: $fc
	ld [hl], a                                       ; $7160: $77
	add b                                            ; $7161: $80
	sbc l                                            ; $7162: $9d
	db $e3                                           ; $7163: $e3
	ld h, e                                          ; $7164: $63
	ld [hl], e                                       ; $7165: $73
	add b                                            ; $7166: $80
	sbc l                                            ; $7167: $9d
	ld d, e                                          ; $7168: $53
	rst JumpTable                                          ; $7169: $c7
	ld e, a                                          ; $716a: $5f
	add b                                            ; $716b: $80
	adc [hl]                                         ; $716c: $8e
	cp $1c                                           ; $716d: $fe $1c
	nop                                              ; $716f: $00
	ld bc, $0001                                     ; $7170: $01 $01 $00
	inc b                                            ; $7173: $04
	rst $38                                          ; $7174: $ff
	cp $fd                                           ; $7175: $fe $fd
	ld sp, hl                                        ; $7177: $f9
	ei                                               ; $7178: $fb
	ei                                               ; $7179: $fb
	ld sp, hl                                        ; $717a: $f9
	ld hl, sp-$74                                    ; $717b: $f8 $8c
	ld b, a                                          ; $717d: $47
	db $dd                                           ; $717e: $dd
	ld bc, $408b                                     ; $717f: $01 $8b $40
	ret nz                                           ; $7182: $c0

	ld a, a                                          ; $7183: $7f
	dec sp                                           ; $7184: $3b
	nop                                              ; $7185: $00
	db $fc                                           ; $7186: $fc
	db $fc                                           ; $7187: $fc
	jr jr_017_71a4                                   ; $7188: $18 $1a

	rra                                              ; $718a: $1f
	ld e, b                                          ; $718b: $58
	jr c, jr_017_7206                                ; $718c: $38 $78

jr_017_718e:
	ld hl, sp-$08                                    ; $718e: $f8 $f8
	ret c                                            ; $7190: $d8

	nop                                              ; $7191: $00
	rlca                                             ; $7192: $07
	ld a, $7e                                        ; $7193: $3e $7e
	db $dd                                           ; $7195: $dd
	rst $38                                          ; $7196: $ff
	sbc l                                            ; $7197: $9d
	ldh [rP1], a                                     ; $7198: $e0 $00
	ld l, a                                          ; $719a: $6f
	ret nc                                           ; $719b: $d0

	sbc [hl]                                         ; $719c: $9e
	inc c                                            ; $719d: $0c
	ld l, e                                          ; $719e: $6b
	ret nc                                           ; $719f: $d0

	sub l                                            ; $71a0: $95
	pop af                                           ; $71a1: $f1
	ld hl, sp+$07                                    ; $71a2: $f8 $07

jr_017_71a4:
	rlca                                             ; $71a4: $07
	sbc a                                            ; $71a5: $9f
	ld a, a                                          ; $71a6: $7f
	ld e, $80                                        ; $71a7: $1e $80
	jr nc, jr_017_71b3                               ; $71a9: $30 $08

	call c, $8fff                                    ; $71ab: $dc $ff $8f
	ld a, a                                          ; $71ae: $7f
	rrca                                             ; $71af: $0f
	rlca                                             ; $71b0: $07
	add b                                            ; $71b1: $80
	nop                                              ; $71b2: $00

jr_017_71b3:
	nop                                              ; $71b3: $00
	ldh a, [$f8]                                     ; $71b4: $f0 $f8
	ei                                               ; $71b6: $fb
	ld hl, sp-$01                                    ; $71b7: $f8 $ff
	ld a, a                                          ; $71b9: $7f
	ld a, a                                          ; $71ba: $7f
	rlca                                             ; $71bb: $07
	rlca                                             ; $71bc: $07
	inc bc                                           ; $71bd: $03
	cp $97                                           ; $71be: $fe $97
	ld a, [hl]                                       ; $71c0: $7e
	ld b, b                                          ; $71c1: $40
	db $dd                                           ; $71c2: $dd
	ld b, c                                          ; $71c3: $41
	ccf                                              ; $71c4: $3f
	rlca                                             ; $71c5: $07
	jp $fee0                                         ; $71c6: $c3 $e0 $fe


	add b                                            ; $71c9: $80
	add b                                            ; $71ca: $80
	ret nz                                           ; $71cb: $c0

	ld hl, sp-$04                                    ; $71cc: $f8 $fc
	rst $38                                          ; $71ce: $ff
	ld e, [hl]                                       ; $71cf: $5e
	xor [hl]                                         ; $71d0: $ae
	ld d, h                                          ; $71d1: $54
	inc l                                            ; $71d2: $2c
	db $10                                           ; $71d3: $10
	ld b, [hl]                                       ; $71d4: $46
	add $ee                                          ; $71d5: $c6 $ee
	and b                                            ; $71d7: $a0
	ld d, b                                          ; $71d8: $50
	xor b                                            ; $71d9: $a8
	ret nc                                           ; $71da: $d0

	db $ec                                           ; $71db: $ec
	cp b                                             ; $71dc: $b8
	ld hl, sp-$10                                    ; $71dd: $f8 $f0
	push hl                                          ; $71df: $e5
	ldh [c], a                                       ; $71e0: $e2
	ld [hl], b                                       ; $71e1: $70
	ldh a, [$fc]                                     ; $71e2: $f0 $fc
	cp $37                                           ; $71e4: $fe $37
	dec bc                                           ; $71e6: $0b
	ld a, [$77fd]                                    ; $71e7: $fa $fd $77
	pop bc                                           ; $71ea: $c1
	ld a, a                                          ; $71eb: $7f
	ret nz                                           ; $71ec: $c0

	add a                                            ; $71ed: $87
	sub e                                            ; $71ee: $93
	daa                                              ; $71ef: $27
	ld c, [hl]                                       ; $71f0: $4e
	sub l                                            ; $71f1: $95
	inc hl                                           ; $71f2: $23
	ld b, h                                          ; $71f3: $44
	sbc b                                            ; $71f4: $98
	sub b                                            ; $71f5: $90
	ld h, b                                          ; $71f6: $60
	ret nz                                           ; $71f7: $c0

	add c                                            ; $71f8: $81
	dec bc                                           ; $71f9: $0b
	rra                                              ; $71fa: $1f
	ccf                                              ; $71fb: $3f
	ld a, a                                          ; $71fc: $7f
	ld a, a                                          ; $71fd: $7f
	add d                                            ; $71fe: $82
	inc c                                            ; $71ff: $0c
	inc e                                            ; $7200: $1c
	jr z, jr_017_7273                                ; $7201: $28 $70

	ldh [$c4], a                                     ; $7203: $e0 $c4
	adc h                                            ; $7205: $8c

jr_017_7206:
	ld a, d                                          ; $7206: $7a
	pop bc                                           ; $7207: $c1
	sub c                                            ; $7208: $91
	pop af                                           ; $7209: $f1
	db $e3                                           ; $720a: $e3
	add $ce                                          ; $720b: $c6 $ce
	cp [hl]                                          ; $720d: $be
	xor d                                            ; $720e: $aa
	ld d, l                                          ; $720f: $55
	nop                                              ; $7210: $00
	nop                                              ; $7211: $00
	sub b                                            ; $7212: $90
	db $fc                                           ; $7213: $fc
	db $fc                                           ; $7214: $fc
	db $fd                                           ; $7215: $fd
	ld d, l                                          ; $7216: $55
	ld l, d                                          ; $7217: $6a
	xor $93                                          ; $7218: $ee $93
	push af                                          ; $721a: $f5
	ld [$aa55], a                                    ; $721b: $ea $55 $aa
	ld b, c                                          ; $721e: $41
	add e                                            ; $721f: $83
	rlca                                             ; $7220: $07
	inc bc                                           ; $7221: $03
	ld a, [bc]                                       ; $7222: $0a
	dec d                                            ; $7223: $15
	xor d                                            ; $7224: $aa
	ld d, l                                          ; $7225: $55
	ld a, d                                          ; $7226: $7a
	rst SubAFromHL                                          ; $7227: $d7
	sbc [hl]                                         ; $7228: $9e
	rst $38                                          ; $7229: $ff
	pop af                                           ; $722a: $f1
	adc a                                            ; $722b: $8f
	or e                                             ; $722c: $b3
	ld h, a                                          ; $722d: $67
	rst GetHLinHL                                          ; $722e: $cf
	sbc [hl]                                         ; $722f: $9e
	dec a                                            ; $7230: $3d
	ld a, d                                          ; $7231: $7a
	db $f4                                           ; $7232: $f4
	xor c                                            ; $7233: $a9
	ld b, b                                          ; $7234: $40
	add b                                            ; $7235: $80
	nop                                              ; $7236: $00
	ld bc, $0502                                     ; $7237: $01 $02 $05
	dec bc                                           ; $723a: $0b
	ld d, [hl]                                       ; $723b: $56
	ld [hl], a                                       ; $723c: $77
	ret c                                            ; $723d: $d8

	sbc e                                            ; $723e: $9b
	xor e                                            ; $723f: $ab
	sub $7c                                          ; $7240: $d6 $7c
	ld a, h                                          ; $7242: $7c
	ld [hl], a                                       ; $7243: $77
	ret z                                            ; $7244: $c8

	sub e                                            ; $7245: $93
	ld d, h                                          ; $7246: $54
	jr z, jr_017_7249                                ; $7247: $28 $00

jr_017_7249:
	nop                                              ; $7249: $00
	db $10                                           ; $724a: $10
	ret nz                                           ; $724b: $c0

	add sp, -$5b                                     ; $724c: $e8 $a5
	ld l, d                                          ; $724e: $6a
	and a                                            ; $724f: $a7
	ld [hl], b                                       ; $7250: $70
	cp a                                             ; $7251: $bf
	ld a, e                                          ; $7252: $7b
	add l                                            ; $7253: $85
	sub b                                            ; $7254: $90
	ld c, d                                          ; $7255: $4a
	add l                                            ; $7256: $85
	ld b, b                                          ; $7257: $40
	add b                                            ; $7258: $80
	ld b, b                                          ; $7259: $40
	add a                                            ; $725a: $87
	ld bc, $0a00                                     ; $725b: $01 $00 $0a
	sub l                                            ; $725e: $95
	jp z, $cac5                                      ; $725f: $ca $c5 $ca

	ld a, b                                          ; $7262: $78
	cp $7b                                           ; $7263: $fe $7b
	and l                                            ; $7265: $a5
	add b                                            ; $7266: $80
	push af                                          ; $7267: $f5
	ld a, [$1af5]                                    ; $7268: $fa $f5 $1a
	ld d, [hl]                                       ; $726b: $56
	ld [hl], $6e                                     ; $726c: $36 $6e
	adc $9f                                          ; $726e: $ce $9f
	inc e                                            ; $7270: $1c
	ld a, b                                          ; $7271: $78
	pop hl                                           ; $7272: $e1

jr_017_7273:
	pop hl                                           ; $7273: $e1
	jp $87c3                                         ; $7274: $c3 $c3 $87


	rrca                                             ; $7277: $0f
	ld a, $3d                                        ; $7278: $3e $3d
	ld a, a                                          ; $727a: $7f
	ld a, b                                          ; $727b: $78
	ld [hl], b                                       ; $727c: $70
	ldh [$e0], a                                     ; $727d: $e0 $e0
	ret                                              ; $727f: $c9


	and e                                            ; $7280: $a3
	ld b, h                                          ; $7281: $44
	nop                                              ; $7282: $00
	rlca                                             ; $7283: $07
	rrca                                             ; $7284: $0f
	rra                                              ; $7285: $1f
	add b                                            ; $7286: $80
	rra                                              ; $7287: $1f
	scf                                              ; $7288: $37
	ld e, [hl]                                       ; $7289: $5e
	cp [hl]                                          ; $728a: $be
	ld a, l                                          ; $728b: $7d
	xor e                                            ; $728c: $ab
	ld d, h                                          ; $728d: $54
	ld a, [bc]                                       ; $728e: $0a
	dec b                                            ; $728f: $05
	ld sp, $fe87                                     ; $7290: $31 $87 $fe
	ld [bc], a                                       ; $7293: $02
	ld d, h                                          ; $7294: $54
	xor d                                            ; $7295: $aa
	db $f4                                           ; $7296: $f4
	ld hl, sp+$00                                    ; $7297: $f8 $00
	nop                                              ; $7299: $00
	ld bc, $dede                                     ; $729a: $01 $de $de
	call c, $3c9e                                    ; $729d: $dc $9e $3c
	ld a, d                                          ; $72a0: $7a
	db $f4                                           ; $72a1: $f4
	ld hl, sp+$01                                    ; $72a2: $f8 $01
	ld bc, $7f03                                     ; $72a4: $01 $03 $7f
	cp $7f                                           ; $72a7: $fe $7f
	sub b                                            ; $72a9: $90
	add [hl]                                         ; $72aa: $86
	rlca                                             ; $72ab: $07
	or c                                             ; $72ac: $b1
	or b                                             ; $72ad: $b0
	cp e                                             ; $72ae: $bb
	or b                                             ; $72af: $b0
	call nz, Call_017_49e5                           ; $72b0: $c4 $e5 $49
	or e                                             ; $72b3: $b3
	and e                                            ; $72b4: $a3
	and e                                            ; $72b5: $a3
	and c                                            ; $72b6: $a1
	and e                                            ; $72b7: $a3
	and e                                            ; $72b8: $a3
	add d                                            ; $72b9: $82
	add [hl]                                         ; $72ba: $86
	inc c                                            ; $72bb: $0c
	ld h, a                                          ; $72bc: $67
	and e                                            ; $72bd: $a3
	dec h                                            ; $72be: $25
	ld h, e                                          ; $72bf: $63
	rst JumpTable                                          ; $72c0: $c7
	rst SubAFromHL                                          ; $72c1: $d7
	adc a                                            ; $72c2: $8f
	ld l, a                                          ; $72c3: $6f
	sbc $cf                                          ; $72c4: $de $cf
	sbc l                                            ; $72c6: $9d
	adc a                                            ; $72c7: $8f
	rrca                                             ; $72c8: $0f
	ld a, e                                          ; $72c9: $7b
	cp l                                             ; $72ca: $bd
	ld a, a                                          ; $72cb: $7f
	dec hl                                           ; $72cc: $2b
	sbc b                                            ; $72cd: $98
	db $d3                                           ; $72ce: $d3
	db $e3                                           ; $72cf: $e3
	pop de                                           ; $72d0: $d1
	add sp, -$10                                     ; $72d1: $e8 $f0
	ld hl, sp-$08                                    ; $72d3: $f8 $f8
	sbc $f0                                          ; $72d5: $de $f0
	ld a, [hl]                                       ; $72d7: $7e
	pop hl                                           ; $72d8: $e1
	ld a, a                                          ; $72d9: $7f
	adc e                                            ; $72da: $8b
	add b                                            ; $72db: $80
	add a                                            ; $72dc: $87
	ret nz                                           ; $72dd: $c0

	add b                                            ; $72de: $80
	ret nz                                           ; $72df: $c0

	and b                                            ; $72e0: $a0
	ld [hl], b                                       ; $72e1: $70
	jr c, @-$7e                                      ; $72e2: $38 $80

	rst SubAFromDE                                          ; $72e4: $df
	ld c, a                                          ; $72e5: $4f
	pop hl                                           ; $72e6: $e1
	ld a, h                                          ; $72e7: $7c
	ld a, a                                          ; $72e8: $7f
	rst SubAFromDE                                          ; $72e9: $df
	rlca                                             ; $72ea: $07
	rra                                              ; $72eb: $1f
	ld d, l                                          ; $72ec: $55
	xor d                                            ; $72ed: $aa
	ld a, b                                          ; $72ee: $78
	rrca                                             ; $72ef: $0f
	ld [hl], e                                       ; $72f0: $73
	dec de                                           ; $72f1: $1b
	ld a, [bc]                                       ; $72f2: $0a
	ld a, [bc]                                       ; $72f3: $0a
	rst $38                                          ; $72f4: $ff
	rst $38                                          ; $72f5: $ff
	add a                                            ; $72f6: $87
	nop                                              ; $72f7: $00
	add b                                            ; $72f8: $80
	ldh [$f1], a                                     ; $72f9: $e0 $f1
	sub [hl]                                         ; $72fb: $96
	pop af                                           ; $72fc: $f1
	ld e, l                                          ; $72fd: $5d
	xor [hl]                                         ; $72fe: $ae
	ld e, l                                          ; $72ff: $5d
	ld a, [hl+]                                      ; $7300: $2a
	dec d                                            ; $7301: $15
	adc [hl]                                         ; $7302: $8e
	or l                                             ; $7303: $b5
	ld a, [hl+]                                      ; $7304: $2a
	db $dd                                           ; $7305: $dd
	rst $38                                          ; $7306: $ff
	add b                                            ; $7307: $80
	cp $78                                           ; $7308: $fe $78
	ld a, b                                          ; $730a: $78
	pop af                                           ; $730b: $f1
	jp nc, $0905                                     ; $730c: $d2 $05 $09

	sbc e                                            ; $730f: $9b
	scf                                              ; $7310: $37
	adc [hl]                                         ; $7311: $8e
	inc [hl]                                         ; $7312: $34
	add hl, hl                                       ; $7313: $29
	ld [hl], e                                       ; $7314: $73
	and $ce                                          ; $7315: $e6 $ce
	inc e                                            ; $7317: $1c
	jr c, jr_017_738a                                ; $7318: $38 $70

	ret z                                            ; $731a: $c8

	ret nc                                           ; $731b: $d0

	adc h                                            ; $731c: $8c
	sub c                                            ; $731d: $91
	ld b, [hl]                                       ; $731e: $46
	sub b                                            ; $731f: $90
	inc bc                                           ; $7320: $03
	ld [hl], b                                       ; $7321: $70
	rst SubAFromHL                                          ; $7322: $d7
	xor d                                            ; $7323: $aa
	ld b, b                                          ; $7324: $40
	ld h, b                                          ; $7325: $60
	cp c                                             ; $7326: $b9
	adc a                                            ; $7327: $8f
	rrca                                             ; $7328: $0f
	inc c                                            ; $7329: $0c
	nop                                              ; $732a: $00
	jr z, jr_017_7382                                ; $732b: $28 $55

	pop de                                           ; $732d: $d1
	ret nc                                           ; $732e: $d0

	jp c, $c590                                      ; $732f: $da $90 $c5

	push bc                                          ; $7332: $c5
	jp hl                                            ; $7333: $e9


	db $d3                                           ; $7334: $d3
	db $e3                                           ; $7335: $e3
	db $e3                                           ; $7336: $e3
	pop hl                                           ; $7337: $e1
	sbc $e3                                          ; $7338: $de $e3
	sbc c                                            ; $733a: $99
	rst JumpTable                                          ; $733b: $c7
	rst GetHLinHL                                          ; $733c: $cf
	rst SubAFromBC                                          ; $733d: $e7
	ld h, e                                          ; $733e: $63
	ld h, l                                          ; $733f: $65
	db $e3                                           ; $7340: $e3
	ld a, e                                          ; $7341: $7b
	add b                                            ; $7342: $80
	sbc [hl]                                         ; $7343: $9e
	xor a                                            ; $7344: $af
	call c, $9ccf                                    ; $7345: $dc $cf $9c
	adc a                                            ; $7348: $8f
	rra                                              ; $7349: $1f
	rra                                              ; $734a: $1f
	db $dd                                           ; $734b: $dd
	rlca                                             ; $734c: $07
	sbc e                                            ; $734d: $9b
	rrca                                             ; $734e: $0f
	ld e, $3c                                        ; $734f: $1e $3c
	ld sp, hl                                        ; $7351: $f9
	sbc $f0                                          ; $7352: $de $f0
	sbc h                                            ; $7354: $9c
	ldh [$c0], a                                     ; $7355: $e0 $c0
	nop                                              ; $7357: $00
	ld a, d                                          ; $7358: $7a
	ld b, d                                          ; $7359: $42
	halt                                             ; $735a: $76
	ld d, a                                          ; $735b: $57
	cp $db                                           ; $735c: $fe $db
	rst $38                                          ; $735e: $ff
	sbc c                                            ; $735f: $99
	add b                                            ; $7360: $80
	rra                                              ; $7361: $1f
	and b                                            ; $7362: $a0
	or b                                             ; $7363: $b0
	jr jr_017_7374                                   ; $7364: $18 $0e

	halt                                             ; $7366: $76
	jr c, @-$20                                      ; $7367: $38 $de

	rst $38                                          ; $7369: $ff
	sbc c                                            ; $736a: $99
	rra                                              ; $736b: $1f
	rst GetHLinHL                                          ; $736c: $cf
	db $e3                                           ; $736d: $e3
	ld [hl], b                                       ; $736e: $70
	ccf                                              ; $736f: $3f
	ld b, $77                                        ; $7370: $06 $77
	di                                               ; $7372: $f3
	add h                                            ; $7373: $84

jr_017_7374:
	nop                                              ; $7374: $00

jr_017_7375:
	jr c, jr_017_7375                                ; $7375: $38 $fe

	rst SubAFromDE                                          ; $7377: $df
	rst GetHLinHL                                          ; $7378: $cf
	ldh [$fc], a                                     ; $7379: $e0 $fc
	rst $38                                          ; $737b: $ff
	ld bc, $0000                                     ; $737c: $01 $00 $00
	db $e4                                           ; $737f: $e4
	rst GetHLinHL                                          ; $7380: $cf
	rrca                                             ; $7381: $0f

jr_017_7382:
	add e                                            ; $7382: $83
	inc sp                                           ; $7383: $33
	ld sp, hl                                        ; $7384: $f9
	adc b                                            ; $7385: $88
	ld a, [bc]                                       ; $7386: $0a
	rra                                              ; $7387: $1f
	ccf                                              ; $7388: $3f
	rst $38                                          ; $7389: $ff

jr_017_738a:
	rlca                                             ; $738a: $07
	inc bc                                           ; $738b: $03
	inc bc                                           ; $738c: $03
	ld [hl], e                                       ; $738d: $73
	pop af                                           ; $738e: $f1
	ld a, d                                          ; $738f: $7a
	ld a, l                                          ; $7390: $7d
	sbc d                                            ; $7391: $9a
	ld a, h                                          ; $7392: $7c
	ldh a, [c]                                       ; $7393: $f2
	ret z                                            ; $7394: $c8

	jp Jump_017_7b1f                                 ; $7395: $c3 $1f $7b


	cp h                                             ; $7398: $bc
	sub b                                            ; $7399: $90
	inc bc                                           ; $739a: $03
	inc c                                            ; $739b: $0c
	jr nc, jr_017_739e                               ; $739c: $30 $00

jr_017_739e:
	nop                                              ; $739e: $00
	jp c, Jump_017_5c76                              ; $739f: $da $76 $5c

	xor d                                            ; $73a2: $aa
	push de                                          ; $73a3: $d5
	jp hl                                            ; $73a4: $e9


	rst SubAFromHL                                          ; $73a5: $d7
	add a                                            ; $73a6: $87
	inc h                                            ; $73a7: $24
	ld [$84fb], sp                                   ; $73a8: $08 $fb $84
	ld a, a                                          ; $73ab: $7f
	inc a                                            ; $73ac: $3c
	cp c                                             ; $73ad: $b9
	sbc c                                            ; $73ae: $99
	reti                                             ; $73af: $d9


	ld e, h                                          ; $73b0: $5c
	call c, $3a9f                                    ; $73b1: $dc $9f $3a
	rla                                              ; $73b4: $17
	ld e, $0e                                        ; $73b5: $1e $0e
	ld e, $9b                                        ; $73b7: $1e $9b
	rrca                                             ; $73b9: $0f
	ld b, b                                          ; $73ba: $40
	call c, $dfaf                                    ; $73bb: $dc $af $df
	rst $38                                          ; $73be: $ff
	ld a, a                                          ; $73bf: $7f
	ccf                                              ; $73c0: $3f
	rra                                              ; $73c1: $1f
	rlca                                             ; $73c2: $07
	inc hl                                           ; $73c3: $23
	ld d, b                                          ; $73c4: $50
	jr nz, jr_017_743c                               ; $73c5: $20 $75

	sbc $9e                                          ; $73c7: $de $9e
	ldh [$7b], a                                     ; $73c9: $e0 $7b
	xor l                                            ; $73cb: $ad
	db $fc                                           ; $73cc: $fc
	rst SubAFromDE                                          ; $73cd: $df
	db $fc                                           ; $73ce: $fc
	sbc $fe                                          ; $73cf: $de $fe
	sbc $ff                                          ; $73d1: $de $ff
	sbc e                                            ; $73d3: $9b
	db $f4                                           ; $73d4: $f4
	xor b                                            ; $73d5: $a8
	ld b, b                                          ; $73d6: $40
	and b                                            ; $73d7: $a0
	ld a, e                                          ; $73d8: $7b
	cp $9e                                           ; $73d9: $fe $9e
	add b                                            ; $73db: $80
	ld h, c                                          ; $73dc: $61
	ld bc, $03dc                                     ; $73dd: $01 $dc $03
	rst SubAFromDE                                          ; $73e0: $df
	rlca                                             ; $73e1: $07
	ld a, a                                          ; $73e2: $7f
	scf                                              ; $73e3: $37
	sbc l                                            ; $73e4: $9d
	rst SubAFromBC                                          ; $73e5: $e7
	rst FarCall                                          ; $73e6: $f7
	ld a, b                                          ; $73e7: $78
	ldh [$99], a                                     ; $73e8: $e0 $99
	rst SubAFromDE                                          ; $73ea: $df
	ldh [rP1], a                                     ; $73eb: $e0 $00
	rlca                                             ; $73ed: $07
	rra                                              ; $73ee: $1f
	xor a                                            ; $73ef: $af
	ld a, e                                          ; $73f0: $7b
	adc e                                            ; $73f1: $8b
	ld a, [hl]                                       ; $73f2: $7e
	ldh [c], a                                       ; $73f3: $e2
	ld a, l                                          ; $73f4: $7d
	db $d3                                           ; $73f5: $d3
	db $dd                                           ; $73f6: $dd
	rst $38                                          ; $73f7: $ff
	sbc e                                            ; $73f8: $9b
	rst SubAFromDE                                          ; $73f9: $df
	ld e, $c4                                        ; $73fa: $1e $c4

jr_017_73fc:
	inc b                                            ; $73fc: $04
	ld a, d                                          ; $73fd: $7a
	ld d, $8e                                        ; $73fe: $16 $8e
	inc bc                                           ; $7400: $03
	ccf                                              ; $7401: $3f
	rst $38                                          ; $7402: $ff
	ld a, $00                                        ; $7403: $3e $00
	pop hl                                           ; $7405: $e1
	rst $38                                          ; $7406: $ff
	ccf                                              ; $7407: $3f
	rrca                                             ; $7408: $0f
	rst SubAFromBC                                          ; $7409: $e7
	adc a                                            ; $740a: $8f
	ld b, a                                          ; $740b: $47
	inc c                                            ; $740c: $0c
	add hl, sp                                       ; $740d: $39
	di                                               ; $740e: $f3
	ldh [$f0], a                                     ; $740f: $e0 $f0
	ld a, e                                          ; $7411: $7b
	ld c, h                                          ; $7412: $4c
	sub c                                            ; $7413: $91
	ldh a, [$c0]                                     ; $7414: $f0 $c0
	nop                                              ; $7416: $00
	ld bc, $330c                                     ; $7417: $01 $0c $33
	rst SubAFromBC                                          ; $741a: $e7
	jp z, $f0c0                                      ; $741b: $ca $c0 $f0

	ei                                               ; $741e: $fb
	rst $38                                          ; $741f: $ff
	rst $38                                          ; $7420: $ff
	ret nz                                           ; $7421: $c0

	cp $80                                           ; $7422: $fe $80
	rrca                                             ; $7424: $0f
	inc b                                            ; $7425: $04
	nop                                              ; $7426: $00
	nop                                              ; $7427: $00
	jr nz, jr_017_743a                               ; $7428: $20 $10

	jr jr_017_7435                                   ; $742a: $18 $09

	add h                                            ; $742c: $84
	ld b, d                                          ; $742d: $42
	xor c                                            ; $742e: $a9
	ld d, h                                          ; $742f: $54
	rra                                              ; $7430: $1f
	adc a                                            ; $7431: $8f
	add a                                            ; $7432: $87
	add $e3                                          ; $7433: $c6 $e3

jr_017_7435:
	pop af                                           ; $7435: $f1
	ldh a, [$f8]                                     ; $7436: $f0 $f8
	cp $fd                                           ; $7438: $fe $fd

jr_017_743a:
	xor d                                            ; $743a: $aa
	push de                                          ; $743b: $d5

jr_017_743c:
	xor d                                            ; $743c: $aa
	push de                                          ; $743d: $d5
	ld [$eb75], a                                    ; $743e: $ea $75 $eb
	ld [hl], a                                       ; $7441: $77
	rst $38                                          ; $7442: $ff
	ld [hl], e                                       ; $7443: $73
	or b                                             ; $7444: $b0
	add b                                            ; $7445: $80
	ld c, d                                          ; $7446: $4a
	inc h                                            ; $7447: $24
	cp e                                             ; $7448: $bb
	ret c                                            ; $7449: $d8

	dec b                                            ; $744a: $05
	jr nz, jr_017_745d                               ; $744b: $20 $10

	jr z, jr_017_748e                                ; $744d: $28 $3f

	rra                                              ; $744f: $1f
	ld b, $07                                        ; $7450: $06 $07
	jp z, $e3c7                                      ; $7452: $ca $c7 $e3

	ret nc                                           ; $7455: $d0

	inc e                                            ; $7456: $1c
	inc c                                            ; $7457: $0c
	sub h                                            ; $7458: $94
	call z, $d0e0                                    ; $7459: $cc $e0 $d0
	xor b                                            ; $745c: $a8

jr_017_745d:
	ld b, b                                          ; $745d: $40
	rst $38                                          ; $745e: $ff
	ccf                                              ; $745f: $3f
	adc a                                            ; $7460: $8f
	rst JumpTable                                          ; $7461: $c7
	rst SubAFromBC                                          ; $7462: $e7
	di                                               ; $7463: $f3
	ei                                               ; $7464: $fb
	sbc h                                            ; $7465: $9c
	ld sp, hl                                        ; $7466: $f9
	ld l, d                                          ; $7467: $6a
	call z, $806f                                    ; $7468: $cc $6f $80
	sbc [hl]                                         ; $746b: $9e
	add l                                            ; $746c: $85
	ld l, e                                          ; $746d: $6b
	add b                                            ; $746e: $80
	add c                                            ; $746f: $81
	pop hl                                           ; $7470: $e1
	add d                                            ; $7471: $82
	dec b                                            ; $7472: $05
	dec bc                                           ; $7473: $0b
	inc d                                            ; $7474: $14

jr_017_7475:
	jr z, jr_017_73fc                                ; $7475: $28 $85

	ld a, [hl+]                                      ; $7477: $2a
	ld e, $7d                                        ; $7478: $1e $7d
	ld a, [$eaf4]                                    ; $747a: $fa $f4 $ea
	pop de                                           ; $747d: $d1
	ld [bc], a                                       ; $747e: $02
	dec d                                            ; $747f: $15
	ld h, a                                          ; $7480: $67
	ld sp, hl                                        ; $7481: $f9
	jp nc, $c3dd                                     ; $7482: $d2 $dd $c3

	and c                                            ; $7485: $a1
	db $10                                           ; $7486: $10
	rlca                                             ; $7487: $07
	ccf                                              ; $7488: $3f
	inc a                                            ; $7489: $3c
	cp b                                             ; $748a: $b8
	cp c                                             ; $748b: $b9
	ld a, e                                          ; $748c: $7b
	ld a, d                                          ; $748d: $7a

jr_017_748e:
	sbc $f7                                          ; $748e: $de $f7
	adc a                                            ; $7490: $8f
	ld e, a                                          ; $7491: $5f
	xor a                                            ; $7492: $af
	ld e, d                                          ; $7493: $5a
	rst SubAFromBC                                          ; $7494: $e7
	ld d, $ac                                        ; $7495: $16 $ac
	ldh a, [$7f]                                     ; $7497: $f0 $7f
	ld c, a                                          ; $7499: $4f
	and l                                            ; $749a: $a5
	ld e, a                                          ; $749b: $5f
	cp $0e                                           ; $749c: $fe $0e
	ld e, $fe                                        ; $749e: $1e $fe
	db $f4                                           ; $74a0: $f4
	ld [hl], h                                       ; $74a1: $74
	ret                                              ; $74a2: $c9


	sbc h                                            ; $74a3: $9c
	cp [hl]                                          ; $74a4: $be
	rra                                              ; $74a5: $1f
	ld e, h                                          ; $74a6: $5c
	ld l, h                                          ; $74a7: $6c
	ret nz                                           ; $74a8: $c0

	ld a, [hl]                                       ; $74a9: $7e
	or $96                                           ; $74aa: $f6 $96
	ld bc, $d080                                     ; $74ac: $01 $80 $d0
	ldh [$50], a                                     ; $74af: $e0 $50
	xor b                                            ; $74b1: $a8
	nop                                              ; $74b2: $00
	ld l, b                                          ; $74b3: $68
	ldh [$79], a                                     ; $74b4: $e0 $79
	db $f4                                           ; $74b6: $f4
	add b                                            ; $74b7: $80
	rst $38                                          ; $74b8: $ff
	rst FarCall                                          ; $74b9: $f7
	rst $38                                          ; $74ba: $ff
	rst SubAFromHL                                          ; $74bb: $d7
	adc d                                            ; $74bc: $8a
	adc d                                            ; $74bd: $8a
	add hl, bc                                       ; $74be: $09
	nop                                              ; $74bf: $00
	ld b, h                                          ; $74c0: $44
	ld b, c                                          ; $74c1: $41
	ld b, b                                          ; $74c2: $40
	ld b, b                                          ; $74c3: $40
	ld [hl], c                                       ; $74c4: $71
	ld [hl], c                                       ; $74c5: $71
	ld [hl], b                                       ; $74c6: $70
	ld a, b                                          ; $74c7: $78
	jr c, jr_017_7508                                ; $74c8: $38 $3e

	ccf                                              ; $74ca: $3f
	ccf                                              ; $74cb: $3f
	ld [de], a                                       ; $74cc: $12
	inc [hl]                                         ; $74cd: $34
	pop hl                                           ; $74ce: $e1
	add e                                            ; $74cf: $83
	rlca                                             ; $74d0: $07
	adc [hl]                                         ; $74d1: $8e
	dec e                                            ; $74d2: $1d
	dec sp                                           ; $74d3: $3b
	pop hl                                           ; $74d4: $e1
	jp $8006                                         ; $74d5: $c3 $06 $80


	inc c                                            ; $74d8: $0c
	jr jr_017_754b                                   ; $74d9: $18 $70

	ldh [$c0], a                                     ; $74db: $e0 $c0
	ld bc, $4f07                                     ; $74dd: $01 $07 $4f
	xor d                                            ; $74e0: $aa
	ld b, b                                          ; $74e1: $40
	adc l                                            ; $74e2: $8d
	ld a, $f0                                        ; $74e3: $3e $f0
	ldh a, [c]                                       ; $74e5: $f2
	ldh [$80], a                                     ; $74e6: $e0 $80
	dec d                                            ; $74e8: $15
	ccf                                              ; $74e9: $3f
	ld [hl], d                                       ; $74ea: $72
	ret nz                                           ; $74eb: $c0

	nop                                              ; $74ec: $00
	db $e3                                           ; $74ed: $e3
	add a                                            ; $74ee: $87
	rrca                                             ; $74ef: $0f
	dec c                                            ; $74f0: $0d
	ld a, [hl-]                                      ; $74f1: $3a
	jr nz, jr_017_7475                               ; $74f2: $20 $81

	cpl                                              ; $74f4: $2f
	rra                                              ; $74f5: $1f
	ld a, a                                          ; $74f6: $7f
	ld a, l                                          ; $74f7: $7d
	pop hl                                           ; $74f8: $e1
	adc a                                            ; $74f9: $8f
	db $fc                                           ; $74fa: $fc
	ld hl, sp+$07                                    ; $74fb: $f8 $07
	rra                                              ; $74fd: $1f
	sub a                                            ; $74fe: $97
	sub a                                            ; $74ff: $97
	ld c, a                                          ; $7500: $4f
	adc a                                            ; $7501: $8f
	ccf                                              ; $7502: $3f
	cp a                                             ; $7503: $bf
	db $fc                                           ; $7504: $fc
	ldh [$cf], a                                     ; $7505: $e0 $cf
	rst GetHLinHL                                          ; $7507: $cf

jr_017_7508:
	sbc a                                            ; $7508: $9f
	rra                                              ; $7509: $1f
	ld a, e                                          ; $750a: $7b
	db $ec                                           ; $750b: $ec
	sub d                                            ; $750c: $92
	rst $38                                          ; $750d: $ff
	rla                                              ; $750e: $17
	dec hl                                           ; $750f: $2b
	dec d                                            ; $7510: $15
	add [hl]                                         ; $7511: $86
	pop bc                                           ; $7512: $c1
	ret nz                                           ; $7513: $c0

	ldh a, [$78]                                     ; $7514: $f0 $78
	ccf                                              ; $7516: $3f
	rra                                              ; $7517: $1f
	adc a                                            ; $7518: $8f
	pop bc                                           ; $7519: $c1
	ld a, c                                          ; $751a: $79
	sub b                                            ; $751b: $90
	sbc e                                            ; $751c: $9b
	cp $d4                                           ; $751d: $fe $d4
	nop                                              ; $751f: $00
	jp $d072                                         ; $7520: $c3 $72 $d0


	sbc h                                            ; $7523: $9c
	dec hl                                           ; $7524: $2b
	rst $38                                          ; $7525: $ff
	inc a                                            ; $7526: $3c
	ld [hl], d                                       ; $7527: $72
	ret nc                                           ; $7528: $d0

	ld a, d                                          ; $7529: $7a
	inc bc                                           ; $752a: $03
	and $df                                          ; $752b: $e6 $df
	ld bc, $029c                                     ; $752d: $01 $9c $02
	inc bc                                           ; $7530: $03
	db $fc                                           ; $7531: $fc
	or $df                                           ; $7532: $f6 $df
	ld hl, sp-$63                                    ; $7534: $f8 $9d
	rlca                                             ; $7536: $07
	rst $38                                          ; $7537: $ff
	di                                               ; $7538: $f3
	rst SubAFromDE                                          ; $7539: $df
	rra                                              ; $753a: $1f
	sbc [hl]                                         ; $753b: $9e
	ldh [$f2], a                                     ; $753c: $e0 $f2
	ld d, a                                          ; $753e: $57
	rst SubAFromDE                                          ; $753f: $df
	rst SubAFromDE                                          ; $7540: $df
	add b                                            ; $7541: $80
	sbc h                                            ; $7542: $9c
	ld b, b                                          ; $7543: $40
	ret nz                                           ; $7544: $c0

	ccf                                              ; $7545: $3f
	ld a, e                                          ; $7546: $7b
	ld sp, hl                                        ; $7547: $f9
	ld h, e                                          ; $7548: $63
	cp $9e                                           ; $7549: $fe $9e

jr_017_754b:
	ret nz                                           ; $754b: $c0

	ld a, e                                          ; $754c: $7b
	cp $7b                                           ; $754d: $fe $7b
	xor c                                            ; $754f: $a9
	ld h, e                                          ; $7550: $63
	cp $9e                                           ; $7551: $fe $9e
	inc bc                                           ; $7553: $03
	ld a, e                                          ; $7554: $7b
	cp $7f                                           ; $7555: $fe $7f
	rst GetHLinHL                                          ; $7557: $cf
	sbc h                                            ; $7558: $9c
	ei                                               ; $7559: $fb
	inc b                                            ; $755a: $04
	rst $38                                          ; $755b: $ff
	ld a, e                                          ; $755c: $7b
	ld a, [$af8d]                                    ; $755d: $fa $8d $af
	ld d, b                                          ; $7560: $50
	ld d, l                                          ; $7561: $55
	xor d                                            ; $7562: $aa
	rst $38                                          ; $7563: $ff
	nop                                              ; $7564: $00
	cp $01                                           ; $7565: $fe $01
	rst AddAOntoHL                                          ; $7567: $ef
	rra                                              ; $7568: $1f
	ld a, e                                          ; $7569: $7b
	add a                                            ; $756a: $87
	db $dd                                           ; $756b: $dd
	inc hl                                           ; $756c: $23
	xor e                                            ; $756d: $ab
	ld d, h                                          ; $756e: $54
	rst SubAFromHL                                          ; $756f: $d7
	jr z, jr_017_75e9                                ; $7570: $28 $77

	db $fc                                           ; $7572: $fc
	sbc l                                            ; $7573: $9d
	db $eb                                           ; $7574: $eb
	inc d                                            ; $7575: $14
	ld l, a                                          ; $7576: $6f
	add $57                                          ; $7577: $c6 $57
	sbc a                                            ; $7579: $9f
	sbc l                                            ; $757a: $9d
	rst SubAFromDE                                          ; $757b: $df
	jr nz, jr_017_75f5                               ; $757c: $20 $77

	ret nc                                           ; $757e: $d0

	adc h                                            ; $757f: $8c
	push af                                          ; $7580: $f5
	ld a, [bc]                                       ; $7581: $0a
	xor d                                            ; $7582: $aa
	ld d, l                                          ; $7583: $55
	rst $38                                          ; $7584: $ff
	nop                                              ; $7585: $00
	ld a, a                                          ; $7586: $7f
	add b                                            ; $7587: $80
	rst $38                                          ; $7588: $ff
	rst $38                                          ; $7589: $ff
	ccf                                              ; $758a: $3f

jr_017_758b:
	rst $38                                          ; $758b: $ff
	adc a                                            ; $758c: $8f
	rst $38                                          ; $758d: $ff
	db $e3                                           ; $758e: $e3
	rst $38                                          ; $758f: $ff
	ldh a, [rIE]                                     ; $7590: $f0 $ff
	db $fc                                           ; $7592: $fc
	sbc $ff                                          ; $7593: $de $ff
	sbc l                                            ; $7595: $9d
	cp a                                             ; $7596: $bf
	ld a, a                                          ; $7597: $7f
	ld e, e                                          ; $7598: $5b
	and c                                            ; $7599: $a1
	ld a, a                                          ; $759a: $7f
	cp $6b                                           ; $759b: $fe $6b
	ld a, c                                          ; $759d: $79
	ld e, a                                          ; $759e: $5f
	ld a, [hl]                                       ; $759f: $7e
	ld a, e                                          ; $75a0: $7b
	or [hl]                                          ; $75a1: $b6
	sub h                                            ; $75a2: $94
	db $fc                                           ; $75a3: $fc
	ld bc, $06f9                                     ; $75a4: $01 $f9 $06
	rst SubAFromBC                                          ; $75a7: $e7
	dec bc                                           ; $75a8: $0b
	adc h                                            ; $75a9: $8c
	cpl                                              ; $75aa: $2f
	jr nc, @+$01                                     ; $75ab: $30 $ff

jr_017_75ad:
	ret nz                                           ; $75ad: $c0

	ld a, e                                          ; $75ae: $7b
	jp nz, $0091                                     ; $75af: $c2 $91 $00

	ld d, $ef                                        ; $75b2: $16 $ef
	cp h                                             ; $75b4: $bc
	di                                               ; $75b5: $f3
	adc b                                            ; $75b6: $88
	rst $38                                          ; $75b7: $ff
	or $8f                                           ; $75b8: $f6 $8f
	jr nc, jr_017_758b                               ; $75ba: $30 $cf

	ld c, b                                          ; $75bc: $48
	or a                                             ; $75bd: $b7
	ld a, a                                          ; $75be: $7f
	sbc $ff                                          ; $75bf: $de $ff
	sbc l                                            ; $75c1: $9d
	ld [bc], a                                       ; $75c2: $02
	ld bc, $fe6f                                     ; $75c3: $01 $6f $fe
	ld a, a                                          ; $75c6: $7f
	ld h, [hl]                                       ; $75c7: $66
	ld l, a                                          ; $75c8: $6f
	cp l                                             ; $75c9: $bd
	sbc h                                            ; $75ca: $9c
	jr nz, jr_017_75ad                               ; $75cb: $20 $e0

	nop                                              ; $75cd: $00
	ld a, e                                          ; $75ce: $7b
	cp $7b                                           ; $75cf: $fe $7b
	ld a, [$c09d]                                    ; $75d1: $fa $9d $c0
	ld b, b                                          ; $75d4: $40
	ld a, e                                          ; $75d5: $7b
	cp $7b                                           ; $75d6: $fe $7b
	or l                                             ; $75d8: $b5
	ld [hl], a                                       ; $75d9: $77
	add e                                            ; $75da: $83
	ld e, e                                          ; $75db: $5b
	cp $8f                                           ; $75dc: $fe $8f
	dec [hl]                                         ; $75de: $35
	ei                                               ; $75df: $fb
	dec b                                            ; $75e0: $05
	ei                                               ; $75e1: $fb
	push bc                                          ; $75e2: $c5
	cp e                                             ; $75e3: $bb
	db $dd                                           ; $75e4: $dd
	cp e                                             ; $75e5: $bb
	rst FarCall                                          ; $75e6: $f7
	ei                                               ; $75e7: $fb
	db $eb                                           ; $75e8: $eb

jr_017_75e9:
	rst FarCall                                          ; $75e9: $f7
	rst SubAFromHL                                          ; $75ea: $d7
	rst AddAOntoHL                                          ; $75eb: $ef
	ret nc                                           ; $75ec: $d0

	rst AddAOntoHL                                          ; $75ed: $ef
	ld l, e                                          ; $75ee: $6b
	adc [hl]                                         ; $75ef: $8e
	ld [hl], e                                       ; $75f0: $73
	adc e                                            ; $75f1: $8b
	ld [hl], a                                       ; $75f2: $77
	adc $99                                          ; $75f3: $ce $99

jr_017_75f5:
	ld [$2087], sp                                   ; $75f5: $08 $87 $20
	rra                                              ; $75f8: $1f
	add b                                            ; $75f9: $80
	ld a, a                                          ; $75fa: $7f
	ld e, a                                          ; $75fb: $5f
	ret nc                                           ; $75fc: $d0

	sbc c                                            ; $75fd: $99
	rst SubAFromDE                                          ; $75fe: $df
	ccf                                              ; $75ff: $3f
	db $fd                                           ; $7600: $fd
	inc bc                                           ; $7601: $03
	rst GetHLinHL                                          ; $7602: $cf
	ldh a, [rPCM34]                                  ; $7603: $f0 $77
	ld d, h                                          ; $7605: $54
	sbc c                                            ; $7606: $99
	rra                                              ; $7607: $1f
	rst $38                                          ; $7608: $ff
	rla                                              ; $7609: $17
	rst AddAOntoHL                                          ; $760a: $ef
	ei                                               ; $760b: $fb
	rst FarCall                                          ; $760c: $f7
	ld l, e                                          ; $760d: $6b
	ld e, e                                          ; $760e: $5b
	ld hl, sp+$76                                    ; $760f: $f8 $76
	xor $91                                          ; $7611: $ee $91
	db $fc                                           ; $7613: $fc
	inc bc                                           ; $7614: $03
	di                                               ; $7615: $f3
	rrca                                             ; $7616: $0f
	call c, Call_017_603f                            ; $7617: $dc $3f $60
	cp $80                                           ; $761a: $fe $80
	ld hl, sp+$02                                    ; $761c: $f8 $02
	pop hl                                           ; $761e: $e1
	rst $38                                          ; $761f: $ff
	ld d, b                                          ; $7620: $50
	ld [hl], a                                       ; $7621: $77
	ret                                              ; $7622: $c9


	sbc d                                            ; $7623: $9a
	ccf                                              ; $7624: $3f
	ldh a, [$fe]                                     ; $7625: $f0 $fe
	rst $38                                          ; $7627: $ff
	di                                               ; $7628: $f3
	call c, $62ff                                    ; $7629: $dc $ff $62
	ld h, e                                          ; $762c: $63
	ld d, a                                          ; $762d: $57
	dec e                                            ; $762e: $1d
	or $95                                           ; $762f: $f6 $95
	or a                                             ; $7631: $b7
	nop                                              ; $7632: $00
	ld [hl], a                                       ; $7633: $77
	nop                                              ; $7634: $00
	ld [hl], $00                                     ; $7635: $36 $00
	rst FarCall                                          ; $7637: $f7
	nop                                              ; $7638: $00
	rst FarCall                                          ; $7639: $f7
	jp $fc7b                                         ; $763a: $c3 $7b $fc


	sub l                                            ; $763d: $95
	nop                                              ; $763e: $00
	di                                               ; $763f: $f3
	nop                                              ; $7640: $00
	ld d, l                                          ; $7641: $55
	nop                                              ; $7642: $00
	xor d                                            ; $7643: $aa
	nop                                              ; $7644: $00
	ld b, l                                          ; $7645: $45
	nop                                              ; $7646: $00
	adc d                                            ; $7647: $8a
	ld a, e                                          ; $7648: $7b
	db $fc                                           ; $7649: $fc
	ld a, a                                          ; $764a: $7f
	ld l, a                                          ; $764b: $6f
	sbc e                                            ; $764c: $9b
	ld b, h                                          ; $764d: $44
	nop                                              ; $764e: $00
	adc b                                            ; $764f: $88
	nop                                              ; $7650: $00
	ld [hl], a                                       ; $7651: $77
	inc h                                            ; $7652: $24
	ld d, a                                          ; $7653: $57
	ret z                                            ; $7654: $c8

	reti                                             ; $7655: $d9


	add b                                            ; $7656: $80
	ld sp, hl                                        ; $7657: $f9
	sbc h                                            ; $7658: $9c
	or l                                             ; $7659: $b5
	nop                                              ; $765a: $00
	halt                                             ; $765b: $76
	ld h, e                                          ; $765c: $63
	db $fc                                           ; $765d: $fc
	ld [hl], a                                       ; $765e: $77
	or h                                             ; $765f: $b4
	call c, $9cff                                    ; $7660: $dc $ff $9c
	db $fd                                           ; $7663: $fd
	rst $38                                          ; $7664: $ff
	ld hl, sp+$7a                                    ; $7665: $f8 $7a
	sbc a                                            ; $7667: $9f
	sbc d                                            ; $7668: $9a
	ldh [rIE], a                                     ; $7669: $e0 $ff
	pop af                                           ; $766b: $f1
	rst $38                                          ; $766c: $ff
	ldh [c], a                                       ; $766d: $e2
	ld a, e                                          ; $766e: $7b
	add $7b                                          ; $766f: $c6 $7b
	pop bc                                           ; $7671: $c1
	ld [hl], a                                       ; $7672: $77
	cp d                                             ; $7673: $ba
	ld [hl], d                                       ; $7674: $72
	ld b, c                                          ; $7675: $41
	sbc [hl]                                         ; $7676: $9e
	inc bc                                           ; $7677: $03
	db $db                                           ; $7678: $db
	add b                                            ; $7679: $80
	reti                                             ; $767a: $d9


	ret nz                                           ; $767b: $c0

	rst SubAFromDE                                          ; $767c: $df
	add b                                            ; $767d: $80
	sbc d                                            ; $767e: $9a
	db $f4                                           ; $767f: $f4
	add b                                            ; $7680: $80
	or $00                                           ; $7681: $f6 $00
	or h                                             ; $7683: $b4
	ld e, e                                          ; $7684: $5b
	cp h                                             ; $7685: $bc
	ld a, [hl]                                       ; $7686: $7e
	ld h, [hl]                                       ; $7687: $66
	db $dd                                           ; $7688: $dd
	rst $38                                          ; $7689: $ff
	sbc l                                            ; $768a: $9d
	pop bc                                           ; $768b: $c1
	cp $7b                                           ; $768c: $fe $7b
	ld b, a                                          ; $768e: $47
	sbc $ff                                          ; $768f: $de $ff
	sbc [hl]                                         ; $7691: $9e
	sbc h                                            ; $7692: $9c
	ld d, c                                          ; $7693: $51
	cp a                                             ; $7694: $bf
	ld e, a                                          ; $7695: $5f
	ld a, b                                          ; $7696: $78
	rst SubAFromHL                                          ; $7697: $d7
	add b                                            ; $7698: $80
	adc [hl]                                         ; $7699: $8e
	xor a                                            ; $769a: $af
	rst SubAFromDE                                          ; $769b: $df
	ld d, a                                          ; $769c: $57
	ld l, a                                          ; $769d: $6f
	db $eb                                           ; $769e: $eb
	rst FarCall                                          ; $769f: $f7
	sub c                                            ; $76a0: $91
	rst AddAOntoHL                                          ; $76a1: $ef
	cp e                                             ; $76a2: $bb
	rst SubAFromBC                                          ; $76a3: $e7
	ld [hl], a                                       ; $76a4: $77
	jp $c2f6                                         ; $76a5: $c3 $f6 $c2


	db $f4                                           ; $76a8: $f4
	ret nz                                           ; $76a9: $c0

	ld bc, $207a                                     ; $76aa: $01 $7a $20
	ld a, [hl]                                       ; $76ad: $7e
	ld l, b                                          ; $76ae: $68
	sbc h                                            ; $76af: $9c
	ld h, c                                          ; $76b0: $61
	rst $38                                          ; $76b1: $ff
	ld sp, hl                                        ; $76b2: $f9
	call c, $9dff                                    ; $76b3: $dc $ff $9d
	sbc b                                            ; $76b6: $98
	rst $38                                          ; $76b7: $ff
	dec sp                                           ; $76b8: $3b
	dec c                                            ; $76b9: $0d
	db $f4                                           ; $76ba: $f4
	adc a                                            ; $76bb: $8f
	di                                               ; $76bc: $f3
	add h                                            ; $76bd: $84
	ld [hl], e                                       ; $76be: $73
	call nz, $c473                                   ; $76bf: $c4 $73 $c4
	scf                                              ; $76c2: $37
	rst JumpTable                                          ; $76c3: $c7
	or a                                             ; $76c4: $b7
	ld h, a                                          ; $76c5: $67
	sub a                                            ; $76c6: $97
	ld h, a                                          ; $76c7: $67
	ld d, a                                          ; $76c8: $57
	or a                                             ; $76c9: $b7
	add a                                            ; $76ca: $87
	rst FarCall                                          ; $76cb: $f7
	db $dd                                           ; $76cc: $dd
	rst $38                                          ; $76cd: $ff
	ld a, [hl]                                       ; $76ce: $7e
	sub d                                            ; $76cf: $92
	sub l                                            ; $76d0: $95
	add c                                            ; $76d1: $81
	cp $5e                                           ; $76d2: $fe $5e
	and c                                            ; $76d4: $a1

jr_017_76d5:
	ldh [$1f], a                                     ; $76d5: $e0 $1f
	ld b, d                                          ; $76d7: $42
	xor l                                            ; $76d8: $ad
	add c                                            ; $76d9: $81
	ld b, d                                          ; $76da: $42
	ret c                                            ; $76db: $d8

	inc bc                                           ; $76dc: $03
	ld a, [hl]                                       ; $76dd: $7e
	ld e, $dd                                        ; $76de: $1e $dd
	ld bc, $009b                                     ; $76e0: $01 $9b $00
	add d                                            ; $76e3: $82
	cp $ba                                           ; $76e4: $fe $ba
	ld a, e                                          ; $76e6: $7b
	cp $92                                           ; $76e7: $fe $92
	ld a, [hl+]                                      ; $76e9: $2a
	xor $6a                                          ; $76ea: $ee $6a
	xor $d2                                          ; $76ec: $ee $d2
	sbc $0e                                          ; $76ee: $de $0e
	ld c, $00                                        ; $76f0: $0e $00
	nop                                              ; $76f2: $00
	ld l, $3f                                        ; $76f3: $2e $3f
	jr nz, jr_017_76d5                               ; $76f5: $20 $de

	ccf                                              ; $76f7: $3f
	ld [hl], l                                       ; $76f8: $75
	dec b                                            ; $76f9: $05
	rst SubAFromDE                                          ; $76fa: $df
	inc bc                                           ; $76fb: $03
	db $fd                                           ; $76fc: $fd
	sub h                                            ; $76fd: $94
	inc b                                            ; $76fe: $04
	db $fc                                           ; $76ff: $fc
	xor h                                            ; $7700: $ac
	db $fc                                           ; $7701: $fc
	xor b                                            ; $7702: $a8
	ld hl, sp-$54                                    ; $7703: $f8 $ac
	db $fc                                           ; $7705: $fc
	xor d                                            ; $7706: $aa
	cp $22                                           ; $7707: $fe $22
	sbc $fe                                          ; $7709: $de $fe
	rst $38                                          ; $770b: $ff
	sbc [hl]                                         ; $770c: $9e
	ld de, $1fde                                     ; $770d: $11 $de $1f
	ld a, a                                          ; $7710: $7f
	db $fc                                           ; $7711: $fc
	sbc [hl]                                         ; $7712: $9e
	dec d                                            ; $7713: $15
	ld a, e                                          ; $7714: $7b
	cp $77                                           ; $7715: $fe $77
	or $ff                                           ; $7717: $f6 $ff
	sbc c                                            ; $7719: $99
	inc d                                            ; $771a: $14
	inc e                                            ; $771b: $1c
	inc d                                            ; $771c: $14
	inc e                                            ; $771d: $1c
	adc b                                            ; $771e: $88
	adc b                                            ; $771f: $88
	ld e, [hl]                                       ; $7720: $5e
	cp [hl]                                          ; $7721: $be
	ld [hl], a                                       ; $7722: $77
	ldh a, [hDisp1_WY]                                     ; $7723: $f0 $95
	dec d                                            ; $7725: $15
	dec e                                            ; $7726: $1d
	ld [de], a                                       ; $7727: $12
	rra                                              ; $7728: $1f
	jr jr_017_774a                                   ; $7729: $18 $1f

	inc c                                            ; $772b: $0c
	rrca                                             ; $772c: $0f
	rlca                                             ; $772d: $07
	rlca                                             ; $772e: $07
	ld l, a                                          ; $772f: $6f
	inc h                                            ; $7730: $24
	rst SubAFromDE                                          ; $7731: $df
	ret nz                                           ; $7732: $c0

	sbc [hl]                                         ; $7733: $9e
	ld h, b                                          ; $7734: $60
	ld a, c                                          ; $7735: $79
	cp [hl]                                          ; $7736: $be
	ld a, a                                          ; $7737: $7f
	cp $df                                           ; $7738: $fe $df
	ldh [rIE], a                                     ; $773a: $e0 $ff
	sub a                                            ; $773c: $97
	add hl, bc                                       ; $773d: $09
	rrca                                             ; $773e: $0f
	ld [$0c0f], sp                                   ; $773f: $08 $0f $0c
	rrca                                             ; $7742: $0f
	ld b, $07                                        ; $7743: $06 $07
	ld a, e                                          ; $7745: $7b
	ld a, a                                          ; $7746: $7f
	ld [hl], e                                       ; $7747: $73
	ld [hl], $77                                     ; $7748: $36 $77

jr_017_774a:
	add sp, $7f                                      ; $774a: $e8 $7f
	cp $9b                                           ; $774c: $fe $9b
	and b                                            ; $774e: $a0
	ldh [$60], a                                     ; $774f: $e0 $60
	ldh [rPCM12], a                                  ; $7751: $e0 $76
	jp nz, $9cff                                     ; $7753: $c2 $ff $9c

	dec bc                                           ; $7756: $0b
	rrca                                             ; $7757: $0f
	dec bc                                           ; $7758: $0b
	ld a, e                                          ; $7759: $7b
	sbc $dd                                          ; $775a: $de $dd
	rlca                                             ; $775c: $07
	sbc [hl]                                         ; $775d: $9e
	inc b                                            ; $775e: $04
	sbc $07                                          ; $775f: $de $07
	ld [hl], a                                       ; $7761: $77
	add b                                            ; $7762: $80
	sbc h                                            ; $7763: $9c
	ld [hl], h                                       ; $7764: $74
	db $fc                                           ; $7765: $fc
	inc b                                            ; $7766: $04

jr_017_7767:
	sbc $fc                                          ; $7767: $de $fc
	sub d                                            ; $7769: $92
	or h                                             ; $776a: $b4
	db $fc                                           ; $776b: $fc
	sub d                                            ; $776c: $92
	cp $6e                                           ; $776d: $fe $6e
	ld l, [hl]                                       ; $776f: $6e
	nop                                              ; $7770: $00
	nop                                              ; $7771: $00
	db $10                                           ; $7772: $10
	rra                                              ; $7773: $1f
	rla                                              ; $7774: $17
	rra                                              ; $7775: $1f
	db $10                                           ; $7776: $10
	sbc $1f                                          ; $7777: $de $1f
	ld a, a                                          ; $7779: $7f
	add b                                            ; $777a: $80
	adc [hl]                                         ; $777b: $8e
	inc h                                            ; $777c: $24
	ccf                                              ; $777d: $3f
	dec sp                                           ; $777e: $3b
	dec sp                                           ; $777f: $3b
	nop                                              ; $7780: $00
	nop                                              ; $7781: $00
	cp $fe                                           ; $7782: $fe $fe
	ld [$78f8], sp                                   ; $7784: $08 $f8 $78
	ld hl, sp+$68                                    ; $7787: $f8 $68
	ld hl, sp+$5c                                    ; $7789: $f8 $5c
	db $fc                                           ; $778b: $fc
	ld [bc], a                                       ; $778c: $02
	ld [hl], e                                       ; $778d: $73
	ld h, b                                          ; $778e: $60
	rst SubAFromDE                                          ; $778f: $df
	ccf                                              ; $7790: $3f
	ld a, a                                          ; $7791: $7f
	jp nz, $0fdf                                     ; $7792: $c2 $df $0f

	ld a, a                                          ; $7795: $7f
	cp h                                             ; $7796: $bc
	sbc l                                            ; $7797: $9d
	dec e                                            ; $7798: $1d
	rra                                              ; $7799: $1f
	ld [hl], a                                       ; $779a: $77
	jr c, @+$01                                      ; $779b: $38 $ff

	ld a, a                                          ; $779d: $7f
	xor e                                            ; $779e: $ab
	ld [hl], a                                       ; $779f: $77
	xor c                                            ; $77a0: $a9
	ld e, h                                          ; $77a1: $5c
	cp h                                             ; $77a2: $bc
	sbc l                                            ; $77a3: $9d
	rst FarCall                                          ; $77a4: $f7
	rst JumpTable                                          ; $77a5: $c7
	ld [hl], a                                       ; $77a6: $77
	cp $95                                           ; $77a7: $fe $95
	ld a, $28                                        ; $77a9: $3e $28
	rst FarCall                                          ; $77ab: $f7
	db $10                                           ; $77ac: $10
	rst $38                                          ; $77ad: $ff
	jr z, jr_017_7767                                ; $77ae: $28 $b7

	rst JumpTable                                          ; $77b0: $c7
	rst FarCall                                          ; $77b1: $f7
	add a                                            ; $77b2: $87
	ld l, c                                          ; $77b3: $69
	or [hl]                                          ; $77b4: $b6
	sbc $01                                          ; $77b5: $de $01
	halt                                             ; $77b7: $76
	xor $77                                          ; $77b8: $ee $77
	inc c                                            ; $77ba: $0c
	sbc $fe                                          ; $77bb: $de $fe
	ld l, [hl]                                       ; $77bd: $6e
	db $eb                                           ; $77be: $eb
	ld [hl], e                                       ; $77bf: $73

Jump_017_77c0:
	ld a, [$defd]                                    ; $77c0: $fa $fd $de
	ccf                                              ; $77c3: $3f
	ld a, a                                          ; $77c4: $7f
	or e                                             ; $77c5: $b3
	ld a, [hl]                                       ; $77c6: $7e
	rst SubAFromBC                                          ; $77c7: $e7
	halt                                             ; $77c8: $76
	push hl                                          ; $77c9: $e5
	sbc d                                            ; $77ca: $9a
	ld l, $00                                        ; $77cb: $2e $00
	nop                                              ; $77cd: $00
	adc h                                            ; $77ce: $8c
	adc h                                            ; $77cf: $8c
	ld a, e                                          ; $77d0: $7b
	ld l, l                                          ; $77d1: $6d
	sbc h                                            ; $77d2: $9c
	inc h                                            ; $77d3: $24
	db $fc                                           ; $77d4: $fc
	adc h                                            ; $77d5: $8c
	ld a, e                                          ; $77d6: $7b
	ld l, c                                          ; $77d7: $69
	ld a, a                                          ; $77d8: $7f
	ld hl, sp-$66                                    ; $77d9: $f8 $9a
	ld [hl], h                                       ; $77db: $74
	nop                                              ; $77dc: $00
	nop                                              ; $77dd: $00
	rrca                                             ; $77de: $0f
	rrca                                             ; $77df: $0f
	halt                                             ; $77e0: $76
	push af                                          ; $77e1: $f5
	sbc e                                            ; $77e2: $9b
	ccf                                              ; $77e3: $3f
	ld hl, $3f3f                                     ; $77e4: $21 $3f $3f
	ld [hl], a                                       ; $77e7: $77
	ld hl, sp-$05                                    ; $77e8: $f8 $fb
	rst SubAFromDE                                          ; $77ea: $df
	ld [hl], b                                       ; $77eb: $70
	sub a                                            ; $77ec: $97
	ld a, b                                          ; $77ed: $78
	ld c, b                                          ; $77ee: $48
	ld a, b                                          ; $77ef: $78
	ld l, b                                          ; $77f0: $68
	inc a                                            ; $77f1: $3c
	inc h                                            ; $77f2: $24
	inc a                                            ; $77f3: $3c
	inc h                                            ; $77f4: $24
	db $fd                                           ; $77f5: $fd
	rst SubAFromDE                                          ; $77f6: $df
	jr jr_017_7870                                   ; $77f7: $18 $77

	or $9d                                           ; $77f9: $f6 $9d
	inc a                                            ; $77fb: $3c
	inc [hl]                                         ; $77fc: $34
	ld a, d                                          ; $77fd: $7a
	push hl                                          ; $77fe: $e5
	sbc [hl]                                         ; $77ff: $9e
	inc d                                            ; $7800: $14
	db $fd                                           ; $7801: $fd
	sbc $e0                                          ; $7802: $de $e0
	ld a, e                                          ; $7804: $7b
	dec bc                                           ; $7805: $0b
	ld a, h                                          ; $7806: $7c
	db $e3                                           ; $7807: $e3
	ld e, l                                          ; $7808: $5d
	adc d                                            ; $7809: $8a
	ld a, e                                          ; $780a: $7b
	add d                                            ; $780b: $82
	sbc h                                            ; $780c: $9c
	ld [bc], a                                       ; $780d: $02
	rlca                                             ; $780e: $07
	inc b                                            ; $780f: $04
	ld a, e                                          ; $7810: $7b
	rlca                                             ; $7811: $07
	sbc [hl]                                         ; $7812: $9e
	add hl, bc                                       ; $7813: $09
	ld l, a                                          ; $7814: $6f
	ldh [$99], a                                     ; $7815: $e0 $99
	db $fc                                           ; $7817: $fc
	cp h                                             ; $7818: $bc
	db $fc                                           ; $7819: $fc
	add h                                            ; $781a: $84
	db $fc                                           ; $781b: $fc
	inc a                                            ; $781c: $3c
	ld [hl], a                                       ; $781d: $77
	jp c, $e26f                                      ; $781e: $da $6f $e2

	rst SubAFromDE                                          ; $7821: $df
	add hl, sp                                       ; $7822: $39
	sbc l                                            ; $7823: $9d
	ccf                                              ; $7824: $3f
	cpl                                              ; $7825: $2f
	halt                                             ; $7826: $76
	ld h, a                                          ; $7827: $67
	ld a, a                                          ; $7828: $7f
	sbc $76                                          ; $7829: $de $76
	or b                                             ; $782b: $b0
	sbc $f8                                          ; $782c: $de $f8
	sbc h                                            ; $782e: $9c
	ld [$90f0], sp                                   ; $782f: $08 $f0 $90
	ld a, e                                          ; $7832: $7b
	call c, Call_017_7e7b                            ; $7833: $dc $7b $7e
	ld l, a                                          ; $7836: $6f
	call nz, $ad7e                                   ; $7837: $c4 $7e $ad
	ld [hl], d                                       ; $783a: $72
	ld [hl], c                                       ; $783b: $71
	ld a, d                                          ; $783c: $7a
	db $e3                                           ; $783d: $e3
	ld a, e                                          ; $783e: $7b
	ld c, $92                                        ; $783f: $0e $92
	ret nz                                           ; $7841: $c0

	ldh [$60], a                                     ; $7842: $e0 $60
	ldh a, [$30]                                     ; $7844: $f0 $30
	ld hl, sp-$68                                    ; $7846: $f8 $98
	db $fc                                           ; $7848: $fc
	call z, $e6fe                                    ; $7849: $cc $fe $e6
	cp $02                                           ; $784c: $fe $02
	ld [hl], e                                       ; $784e: $73
	ldh [$9c], a                                     ; $784f: $e0 $9c
	inc bc                                           ; $7851: $03
	rlca                                             ; $7852: $07
	ld b, $7b                                        ; $7853: $06 $7b
	sbc $9b                                          ; $7855: $de $9b
	add hl, de                                       ; $7857: $19
	ccf                                              ; $7858: $3f
	inc sp                                           ; $7859: $33
	ccf                                              ; $785a: $3f
	ld [hl], e                                       ; $785b: $73
	or b                                             ; $785c: $b0
	db $ed                                           ; $785d: $ed
	ld [hl], d                                       ; $785e: $72
	call c, $d47a                                    ; $785f: $dc $7a $d4
	sbc h                                            ; $7862: $9c
	cp e                                             ; $7863: $bb
	rst JumpTable                                          ; $7864: $c7
	ei                                               ; $7865: $fb
	ld a, e                                          ; $7866: $7b
	cp $9b                                           ; $7867: $fe $9b
	or a                                             ; $7869: $b7
	rst GetHLinHL                                          ; $786a: $cf
	rst AddAOntoHL                                          ; $786b: $ef
	rra                                              ; $786c: $1f
	reti                                             ; $786d: $d9


	rst $38                                          ; $786e: $ff
	sbc l                                            ; $786f: $9d

jr_017_7870:
	ld a, a                                          ; $7870: $7f
	rrca                                             ; $7871: $0f
	ld h, d                                          ; $7872: $62
	ld d, e                                          ; $7873: $53
	cp $df                                           ; $7874: $fe $df
	rst $38                                          ; $7876: $ff
	sbc [hl]                                         ; $7877: $9e
	ret nz                                           ; $7878: $c0

	db $f4                                           ; $7879: $f4
	ld e, h                                          ; $787a: $5c
	ld l, [hl]                                       ; $787b: $6e
	ld h, a                                          ; $787c: $67
	ldh a, [$7d]                                     ; $787d: $f0 $7d
	sub c                                            ; $787f: $91
	sbc l                                            ; $7880: $9d
	ld hl, sp+$70                                    ; $7881: $f8 $70
	ld e, a                                          ; $7883: $5f
	sbc c                                            ; $7884: $99
	db $dd                                           ; $7885: $dd
	rst $38                                          ; $7886: $ff
	ld c, a                                          ; $7887: $4f
	ldh a, [$9e]                                     ; $7888: $f0 $9e
	rra                                              ; $788a: $1f
	ld d, c                                          ; $788b: $51
	ld a, $df                                        ; $788c: $3e $df
	rst $38                                          ; $788e: $ff
	sbc h                                            ; $788f: $9c
	cp $f0                                           ; $7890: $fe $f0
	ldh a, [$6e]                                     ; $7892: $f0 $6e

jr_017_7894:
	dec b                                            ; $7894: $05
	ld h, e                                          ; $7895: $63
	ret nc                                           ; $7896: $d0

	push de                                          ; $7897: $d5
	rst $38                                          ; $7898: $ff
	pop af                                           ; $7899: $f1
	push de                                          ; $789a: $d5
	rst $38                                          ; $789b: $ff
	sbc e                                            ; $789c: $9b
	adc a                                            ; $789d: $8f
	rst $38                                          ; $789e: $ff
	rst FarCall                                          ; $789f: $f7
	rrca                                             ; $78a0: $0f
	pop de                                           ; $78a1: $d1
	rst $38                                          ; $78a2: $ff
	sbc c                                            ; $78a3: $99
	inc b                                            ; $78a4: $04
	rst SubAFromDE                                          ; $78a5: $df
	inc bc                                           ; $78a6: $03
	sbc e                                            ; $78a7: $9b
	inc c                                            ; $78a8: $0c
	rrca                                             ; $78a9: $0f

jr_017_78aa:
	inc e                                            ; $78aa: $1c
	dec de                                           ; $78ab: $1b
	ld a, e                                          ; $78ac: $7b
	cp $92                                           ; $78ad: $fe $92
	rla                                              ; $78af: $17
	ld [$090f], sp                                   ; $78b0: $08 $0f $09
	rrca                                             ; $78b3: $0f
	ld bc, $c00f                                     ; $78b4: $01 $0f $c0
	ret nz                                           ; $78b7: $c0

	jr nc, jr_017_78aa                               ; $78b8: $30 $f0

	jr c, jr_017_7894                                ; $78ba: $38 $d8

	ld a, e                                          ; $78bc: $7b
	cp $80                                           ; $78bd: $fe $80
	add sp, $10                                      ; $78bf: $e8 $10
	ldh a, [rAUD1SWEEP]                              ; $78c1: $f0 $10
	ldh a, [rP1]                                     ; $78c3: $f0 $00
	ldh a, [rP1]                                     ; $78c5: $f0 $00
	rrca                                             ; $78c7: $0f
	dec b                                            ; $78c8: $05
	rra                                              ; $78c9: $1f
	nop                                              ; $78ca: $00
	dec sp                                           ; $78cb: $3b
	jr nc, jr_017_7905                               ; $78cc: $30 $37

	nop                                              ; $78ce: $00
	rlca                                             ; $78cf: $07
	inc bc                                           ; $78d0: $03
	rrca                                             ; $78d1: $0f
	dec c                                            ; $78d2: $0d
	rra                                              ; $78d3: $1f
	inc de                                           ; $78d4: $13
	inc sp                                           ; $78d5: $33
	add b                                            ; $78d6: $80
	db $fc                                           ; $78d7: $fc
	ret nc                                           ; $78d8: $d0

	cp $ce                                           ; $78d9: $fe $ce
	adc $a0                                          ; $78db: $ce $a0
	ldh [$8c], a                                     ; $78dd: $e0 $8c
	ret nz                                           ; $78df: $c0

	ldh a, [$a0]                                     ; $78e0: $f0 $a0
	ldh a, [$c0]                                     ; $78e2: $f0 $c0
	ldh a, [rP1]                                     ; $78e4: $f0 $00
	ld h, b                                          ; $78e6: $60
	nop                                              ; $78e7: $00
	ccf                                              ; $78e8: $3f
	dec b                                            ; $78e9: $05
	ld a, a                                          ; $78ea: $7f
	jr nc, jr_017_7920                               ; $78eb: $30 $33

	nop                                              ; $78ed: $00
	rlca                                             ; $78ee: $07
	ld bc, $0707                                     ; $78ef: $01 $07 $07
	sbc $0f                                          ; $78f2: $de $0f
	sub h                                            ; $78f4: $94
	dec de                                           ; $78f5: $1b
	rra                                              ; $78f6: $1f
	add b                                            ; $78f7: $80
	ldh a, [$c0]                                     ; $78f8: $f0 $c0
	ld hl, sp-$30                                    ; $78fa: $f8 $d0
	call c, $ec8c                                    ; $78fc: $dc $8c $ec
	add b                                            ; $78ff: $80
	ld a, e                                          ; $7900: $7b
	jp nz, $309b                                     ; $7901: $c2 $9b $30

	or b                                             ; $7904: $b0

jr_017_7905:
	ld h, b                                          ; $7905: $60
	ld h, b                                          ; $7906: $60
	ld [hl], a                                       ; $7907: $77
	ret nz                                           ; $7908: $c0

	sub e                                            ; $7909: $93
	ld bc, $333b                                     ; $790a: $01 $3b $33
	scf                                              ; $790d: $37
	inc bc                                           ; $790e: $03
	rrca                                             ; $790f: $0f
	dec b                                            ; $7910: $05
	rrca                                             ; $7911: $0f
	ld bc, $0507                                     ; $7912: $01 $07 $05
	dec b                                            ; $7915: $05
	ld [hl], a                                       ; $7916: $77
	ret nz                                           ; $7917: $c0

	sub e                                            ; $7918: $93
	adc [hl]                                         ; $7919: $8e
	adc $80                                          ; $791a: $ce $80
	ldh [$e0], a                                     ; $791c: $e0 $e0
	ldh a, [$b0]                                     ; $791e: $f0 $b0

jr_017_7920:
	ldh a, [$50]                                     ; $7920: $f0 $50
	ldh a, [$30]                                     ; $7922: $f0 $30
	ldh a, [rPCM34]                                  ; $7924: $f0 $77
	ret nz                                           ; $7926: $c0

	sbc h                                            ; $7927: $9c
	ld sp, $0337                                     ; $7928: $31 $37 $03
	ld a, e                                          ; $792b: $7b
	and d                                            ; $792c: $a2
	ld a, a                                          ; $792d: $7f
	cp $7f                                           ; $792e: $fe $7f
	ldh [hDisp1_WY], a                                     ; $7930: $e0 $95
	nop                                              ; $7932: $00
	ld bc, $f080                                     ; $7933: $01 $80 $f0
	add b                                            ; $7936: $80
	ld hl, sp+$10                                    ; $7937: $f8 $10
	call c, $cc0c                                    ; $7939: $dc $0c $cc
	ld a, e                                          ; $793c: $7b
	sbc $86                                          ; $793d: $de $86
	ld hl, sp+$18                                    ; $793f: $f8 $18
	call c, $e080                                    ; $7941: $dc $80 $e0
	nop                                              ; $7944: $00
	nop                                              ; $7945: $00
	rrca                                             ; $7946: $0f
	rrca                                             ; $7947: $0f
	inc de                                           ; $7948: $13
	dec e                                            ; $7949: $1d
	ld hl, $403e                                     ; $794a: $21 $3e $40
	ld a, a                                          ; $794d: $7f
	ld h, h                                          ; $794e: $64
	ld e, a                                          ; $794f: $5f
	ld [hl], d                                       ; $7950: $72
	ld l, a                                          ; $7951: $6f
	ld [hl], e                                       ; $7952: $73
	ld l, a                                          ; $7953: $6f
	nop                                              ; $7954: $00
	nop                                              ; $7955: $00
	add b                                            ; $7956: $80
	add b                                            ; $7957: $80
	sbc $c0                                          ; $7958: $de $c0
	sbc d                                            ; $795a: $9a
	ld c, h                                          ; $795b: $4c

jr_017_795c:
	ld b, b                                          ; $795c: $40
	call c, $f808                                    ; $795d: $dc $08 $f8
	ld a, e                                          ; $7960: $7b
	jp nz, $e097                                     ; $7961: $c2 $97 $e0

	ld sp, $083f                                     ; $7964: $31 $3f $08
	rrca                                             ; $7967: $0f
	ld bc, $0103                                     ; $7968: $01 $03 $01

jr_017_796b:
	ld a, e                                          ; $796b: $7b
	add b                                            ; $796c: $80
	rst SubAFromDE                                          ; $796d: $df
	ld b, $fd                                        ; $796e: $06 $fd
	adc a                                            ; $7970: $8f

jr_017_7971:
	ret nz                                           ; $7971: $c0

	db $fc                                           ; $7972: $fc
	jr nc, jr_017_7971                               ; $7973: $30 $fc

jr_017_7975:
	jr jr_017_7975                                   ; $7975: $18 $fe

	inc e                                            ; $7977: $1c
	ld a, [hl]                                       ; $7978: $7e

jr_017_7979:
	jr c, jr_017_7979                                ; $7979: $38 $fe

	jr z, jr_017_796b                                ; $797b: $28 $ee

	ld [$186c], sp                                   ; $797d: $08 $6c $18
	call c, $e077                                    ; $7980: $dc $77 $e0
	ld a, a                                          ; $7983: $7f
	ld h, d                                          ; $7984: $62
	sbc c                                            ; $7985: $99
	ld [bc], a                                       ; $7986: $02
	ld c, $02                                        ; $7987: $0e $02
	ld c, $0c                                        ; $7989: $0e $0c
	inc c                                            ; $798b: $0c
	db $fd                                           ; $798c: $fd
	ld a, a                                          ; $798d: $7f
	xor d                                            ; $798e: $aa
	sub c                                            ; $798f: $91

jr_017_7990:
	ld [hl], b                                       ; $7990: $70
	db $fc                                           ; $7991: $fc
	jr jr_017_7990                                   ; $7992: $18 $fc

	ld l, b                                          ; $7994: $68
	cp $18                                           ; $7995: $fe $18
	ld a, $0a                                        ; $7997: $3e $0a
	ld a, $10                                        ; $7999: $3e $10
	or $60                                           ; $799b: $f6 $60
	ldh [c], a                                       ; $799d: $e2
	ccf                                              ; $799e: $3f
	ret nz                                           ; $799f: $c0

	sbc l                                            ; $79a0: $9d
	ld h, b                                          ; $79a1: $60
	cp $7b                                           ; $79a2: $fe $7b
	cp $96                                           ; $79a4: $fe $96
	db $fc                                           ; $79a6: $fc
	ld [hl], $fe                                     ; $79a7: $36 $fe
	cp [hl]                                          ; $79a9: $be
	cp $f0                                           ; $79aa: $fe $f0
	ld hl, sp+$7c                                    ; $79ac: $f8 $7c
	ld a, [hl]                                       ; $79ae: $7e
	ld b, a                                          ; $79af: $47
	ret nz                                           ; $79b0: $c0

	sbc b                                            ; $79b1: $98
	ret nz                                           ; $79b2: $c0

	ldh [c], a                                       ; $79b3: $e2
	ld h, b                                          ; $79b4: $60
	ldh a, [c]                                       ; $79b5: $f2
	ld h, b                                          ; $79b6: $60
	cp $e2                                           ; $79b7: $fe $e2
	sbc $fe                                          ; $79b9: $de $fe
	sbc c                                            ; $79bb: $99
	ld h, h                                          ; $79bc: $64

jr_017_79bd:
	or $60                                           ; $79bd: $f6 $60

jr_017_79bf:
	ld hl, sp+$38                                    ; $79bf: $f8 $38
	ld a, [hl]                                       ; $79c1: $7e
	ei                                               ; $79c2: $fb
	rst SubAFromDE                                          ; $79c3: $df
	jr c, jr_017_795c                                ; $79c4: $38 $96

	ld a, [hl]                                       ; $79c6: $7e
	ld [hl], a                                       ; $79c7: $77
	ld a, b                                          ; $79c8: $78
	ld c, a                                          ; $79c9: $4f
	add b                                            ; $79ca: $80
	rst $38                                          ; $79cb: $ff
	add b                                            ; $79cc: $80
	rst $38                                          ; $79cd: $ff
	add e                                            ; $79ce: $83
	ld a, e                                          ; $79cf: $7b
	db $fc                                           ; $79d0: $fc

jr_017_79d1:
	ld a, a                                          ; $79d1: $7f
	or $7f                                           ; $79d2: $f6 $7f
	ldh a, [c]                                       ; $79d4: $f2
	rst SubAFromDE                                          ; $79d5: $df
	jr c, jr_017_79d1                                ; $79d6: $38 $f9

	add l                                            ; $79d8: $85
	jr nz, jr_017_7a3b                               ; $79d9: $20 $60

	jr nz, jr_017_79bd                               ; $79db: $20 $e0

	jr nz, jr_017_79bf                               ; $79dd: $20 $e0

	ld b, b                                          ; $79df: $40
	adc $14                                          ; $79e0: $ce $14
	rst SubAFromDE                                          ; $79e2: $df
	ld l, d                                          ; $79e3: $6a
	rst $38                                          ; $79e4: $ff
	cp $fe                                           ; $79e5: $fe $fe
	ld b, a                                          ; $79e7: $47
	rst $38                                          ; $79e8: $ff
	dec b                                            ; $79e9: $05
	rst $38                                          ; $79ea: $ff
	ld b, d                                          ; $79eb: $42
	sbc $02                                          ; $79ec: $de $02
	and $11                                          ; $79ee: $e6 $11
	ld [hl], e                                       ; $79f0: $73
	db $10                                           ; $79f1: $10
	ld sp, $85f9                                     ; $79f2: $31 $f9 $85
	db $10                                           ; $79f5: $10
	jr nc, jr_017_7a08                               ; $79f6: $30 $10

	ld [hl], b                                       ; $79f8: $70
	ld h, $ee                                        ; $79f9: $26 $ee
	inc bc                                           ; $79fb: $03
	rst SubAFromDE                                          ; $79fc: $df
	ld h, c                                          ; $79fd: $61
	db $fd                                           ; $79fe: $fd
	ld hl, sp-$02                                    ; $79ff: $f8 $fe
	ld c, a                                          ; $7a01: $4f
	rst $38                                          ; $7a02: $ff
	rlca                                             ; $7a03: $07
	rst $38                                          ; $7a04: $ff
	ld b, [hl]                                       ; $7a05: $46
	rst SubAFromDE                                          ; $7a06: $df
	inc bc                                           ; $7a07: $03

jr_017_7a08:
	rst JumpTable                                          ; $7a08: $c7
	ld hl, $20e1                                     ; $7a09: $21 $e1 $20
	ldh [rP1], a                                     ; $7a0c: $e0 $00
	ld b, b                                          ; $7a0e: $40
	ld e, a                                          ; $7a0f: $5f
	ret nz                                           ; $7a10: $c0

	adc e                                            ; $7a11: $8b
	ld b, a                                          ; $7a12: $47
	rst GetHLinHL                                          ; $7a13: $cf
	dec c                                            ; $7a14: $0d
	rst SubAFromDE                                          ; $7a15: $df
	ld c, d                                          ; $7a16: $4a
	rst $38                                          ; $7a17: $ff
	db $fc                                           ; $7a18: $fc
	rst $38                                          ; $7a19: $ff
	ld a, h                                          ; $7a1a: $7c
	rst $38                                          ; $7a1b: $ff

jr_017_7a1c:
	jr jr_017_7a1c                                   ; $7a1c: $18 $fe

	ld b, l                                          ; $7a1e: $45
	rst SubAFromDE                                          ; $7a1f: $df
	nop                                              ; $7a20: $00
	db $ec                                           ; $7a21: $ec
	db $10                                           ; $7a22: $10
	ld [hl], b                                       ; $7a23: $70
	db $10                                           ; $7a24: $10
	jr nc, jr_017_7a8a                               ; $7a25: $30 $63

	ret nz                                           ; $7a27: $c0

	adc h                                            ; $7a28: $8c
	ld [hl-], a                                      ; $7a29: $32
	ld [de], a                                       ; $7a2a: $12
	halt                                             ; $7a2b: $76
	ld [hl+], a                                      ; $7a2c: $22
	and $04                                          ; $7a2d: $e6 $04
	call $ff04                                       ; $7a2f: $cd $04 $ff
	call Call_017_7eff                               ; $7a32: $cd $ff $7e
	rst $38                                          ; $7a35: $ff
	inc e                                            ; $7a36: $1c
	cp $40                                           ; $7a37: $fe $40
	cp $00                                           ; $7a39: $fe $00

jr_017_7a3b:
	call z, $cc77                                    ; $7a3b: $cc $77 $cc
	ld l, a                                          ; $7a3e: $6f
	ret nz                                           ; $7a3f: $c0

	ld a, [hl]                                       ; $7a40: $7e
	xor h                                            ; $7a41: $ac
	rst SubAFromDE                                          ; $7a42: $df
	inc bc                                           ; $7a43: $03
	sub l                                            ; $7a44: $95
	ld l, h                                          ; $7a45: $6c
	ld c, a                                          ; $7a46: $4f
	add hl, de                                       ; $7a47: $19
	ld a, [hl]                                       ; $7a48: $7e
	rra                                              ; $7a49: $1f
	dec a                                            ; $7a4a: $3d
	ld [hl-], a                                      ; $7a4b: $32
	ccf                                              ; $7a4c: $3f
	dec h                                            ; $7a4d: $25
	ld a, [hl-]                                      ; $7a4e: $3a
	ld a, d                                          ; $7a4f: $7a
	pop bc                                           ; $7a50: $c1
	add b                                            ; $7a51: $80
	ld b, b                                          ; $7a52: $40
	and $e2                                          ; $7a53: $e6 $e2
	sbc b                                            ; $7a55: $98
	cp $cc                                           ; $7a56: $fe $cc
	cp h                                             ; $7a58: $bc
	ld a, h                                          ; $7a59: $7c
	sbc $a6                                          ; $7a5a: $de $a6
	ld a, [hl]                                       ; $7a5c: $7e
	jp nc, $252e                                     ; $7a5d: $d2 $2e $25

	ld a, [hl-]                                      ; $7a60: $3a
	dec h                                            ; $7a61: $25
	ld a, [hl-]                                      ; $7a62: $3a
	ld [hl-], a                                      ; $7a63: $32
	ccf                                              ; $7a64: $3f
	rra                                              ; $7a65: $1f
	dec a                                            ; $7a66: $3d
	ld e, c                                          ; $7a67: $59
	ld a, [hl]                                       ; $7a68: $7e
	ld l, h                                          ; $7a69: $6c
	rrca                                             ; $7a6a: $0f
	inc bc                                           ; $7a6b: $03
	inc bc                                           ; $7a6c: $03
	nop                                              ; $7a6d: $00
	ld bc, $2ed2                                     ; $7a6e: $01 $d2 $2e
	ld a, a                                          ; $7a71: $7f
	cp $7f                                           ; $7a72: $fe $7f
	add sp, $7f                                      ; $7a74: $e8 $7f
	db $e4                                           ; $7a76: $e4
	ld a, a                                          ; $7a77: $7f
	ldh [$99], a                                     ; $7a78: $e0 $99
	sbc h                                            ; $7a7a: $9c
	ld hl, sp-$14                                    ; $7a7b: $f8 $ec
	db $e4                                           ; $7a7d: $e4
	add b                                            ; $7a7e: $80
	add b                                            ; $7a7f: $80
	ld [hl], a                                       ; $7a80: $77
	ret nz                                           ; $7a81: $c0

	sbc c                                            ; $7a82: $99
	inc sp                                           ; $7a83: $33
	inc hl                                           ; $7a84: $23
	inc c                                            ; $7a85: $0c
	ccf                                              ; $7a86: $3f
	add hl, de                                       ; $7a87: $19
	ld e, $6f                                        ; $7a88: $1e $6f

jr_017_7a8a:
	ret nz                                           ; $7a8a: $c0

	sbc $80                                          ; $7a8b: $de $80
	sbc b                                            ; $7a8d: $98
	ld b, b                                          ; $7a8e: $40
	ldh [$e0], a                                     ; $7a8f: $e0 $e0
	sbc e                                            ; $7a91: $9b
	ld sp, hl                                        ; $7a92: $f9
	call z, $4fbf                                    ; $7a93: $cc $bf $4f
	ret nz                                           ; $7a96: $c0

	ld a, a                                          ; $7a97: $7f
	ldh [$99], a                                     ; $7a98: $e0 $99
	inc l                                            ; $7a9a: $2c
	rra                                              ; $7a9b: $1f
	inc sp                                           ; $7a9c: $33
	inc hl                                           ; $7a9d: $23
	nop                                              ; $7a9e: $00
	nop                                              ; $7a9f: $00
	ld h, a                                          ; $7aa0: $67
	ret nz                                           ; $7aa1: $c0

	add a                                            ; $7aa2: $87
	call $9bbf                                       ; $7aa3: $cd $bf $9b
	ld hl, sp-$20                                    ; $7aa6: $f8 $e0
	ldh [rLCDC], a                                   ; $7aa8: $e0 $40
	ret nz                                           ; $7aaa: $c0

	nop                                              ; $7aab: $00
	nop                                              ; $7aac: $00
	inc hl                                           ; $7aad: $23
	scf                                              ; $7aae: $37
	ld l, $1f                                        ; $7aaf: $2e $1f
	inc e                                            ; $7ab1: $1c
	rra                                              ; $7ab2: $1f
	dec d                                            ; $7ab3: $15
	ld e, $26                                        ; $7ab4: $1e $26
	dec sp                                           ; $7ab6: $3b
	dec l                                            ; $7ab7: $2d
	halt                                             ; $7ab8: $76
	ld a, e                                          ; $7ab9: $7b
	cp h                                             ; $7aba: $bc
	ld a, d                                          ; $7abb: $7a
	ld a, [hl]                                       ; $7abc: $7e
	add b                                            ; $7abd: $80
	ldh a, [$3e]                                     ; $7abe: $f0 $3e

Call_017_7ac0:
	ld a, [$fc1e]                                    ; $7ac0: $fa $1e $fc
	call nc, $323c                                   ; $7ac3: $d4 $3c $32
	xor $da                                          ; $7ac6: $ee $da
	ld [hl], $ef                                     ; $7ac8: $36 $ef
	rra                                              ; $7aca: $1f
	dec l                                            ; $7acb: $2d
	halt                                             ; $7acc: $76
	ld h, $3b                                        ; $7acd: $26 $3b
	dec d                                            ; $7acf: $15
	ld e, $1c                                        ; $7ad0: $1e $1c
	rra                                              ; $7ad2: $1f
	ld c, $0f                                        ; $7ad3: $0e $0f
	inc de                                           ; $7ad5: $13
	rrca                                             ; $7ad6: $0f
	db $10                                           ; $7ad7: $10
	jr jr_017_7ada                                   ; $7ad8: $18 $00

jr_017_7ada:
	nop                                              ; $7ada: $00
	jp c, Jump_017_7f37                              ; $7adb: $da $37 $7f

jr_017_7ade:
	add sp, $7f                                      ; $7ade: $e8 $7f
	db $e4                                           ; $7ae0: $e4
	sub a                                            ; $7ae1: $97
	inc e                                            ; $7ae2: $1c
	db $fc                                           ; $7ae3: $fc
	jr c, jr_017_7ade                                ; $7ae4: $38 $f8

	db $e4                                           ; $7ae6: $e4
	ld hl, sp+$0c                                    ; $7ae7: $f8 $0c
	ld [$247b], sp                                   ; $7ae9: $08 $7b $24
	sbc d                                            ; $7aec: $9a
	jr @+$15                                         ; $7aed: $18 $13

	rrca                                             ; $7aef: $0f
	ld c, $0f                                        ; $7af0: $0e $0f
	ld e, a                                          ; $7af2: $5f
	ret nz                                           ; $7af3: $c0

	ld a, a                                          ; $7af4: $7f
	db $ec                                           ; $7af5: $ec
	ld a, a                                          ; $7af6: $7f
	add sp, $7f                                      ; $7af7: $e8 $7f
	db $e4                                           ; $7af9: $e4
	ld a, a                                          ; $7afa: $7f
	ldh [rPCM34], a                                  ; $7afb: $e0 $77
	ret nz                                           ; $7afd: $c0

	sbc h                                            ; $7afe: $9c
	db $db                                           ; $7aff: $db

Call_017_7b00:
	scf                                              ; $7b00: $37
	xor $63                                          ; $7b01: $ee $63
	ret nz                                           ; $7b03: $c0

	ld a, a                                          ; $7b04: $7f
	sbc h                                            ; $7b05: $9c
	ld a, a                                          ; $7b06: $7f
	sbc b                                            ; $7b07: $98
	db $fd                                           ; $7b08: $fd
	ld a, a                                          ; $7b09: $7f
	xor h                                            ; $7b0a: $ac
	ld l, a                                          ; $7b0b: $6f
	ret nz                                           ; $7b0c: $c0

	sbc e                                            ; $7b0d: $9b
	ld a, [hl-]                                      ; $7b0e: $3a
	db $fc                                           ; $7b0f: $fc
	and $f2                                          ; $7b10: $e6 $f2
	db $fd                                           ; $7b12: $fd
	adc a                                            ; $7b13: $8f
	ld [bc], a                                       ; $7b14: $02
	ld bc, $5737                                     ; $7b15: $01 $37 $57
	ld c, [hl]                                       ; $7b18: $4e
	ccf                                              ; $7b19: $3f
	ld d, b                                          ; $7b1a: $50
	ld a, a                                          ; $7b1b: $7f
	cpl                                              ; $7b1c: $2f
	jr c, jr_017_7b8b                                ; $7b1d: $38 $6c

Jump_017_7b1f:
	ld [hl], a                                       ; $7b1f: $77
	ld l, e                                          ; $7b20: $6b
	ld [hl], h                                       ; $7b21: $74
	bit 6, h                                         ; $7b22: $cb $74
	ld a, d                                          ; $7b24: $7a
	ld a, $7d                                        ; $7b25: $3e $7d
	ld c, c                                          ; $7b27: $49
	adc c                                            ; $7b28: $89
	ldh a, [$98]                                     ; $7b29: $f0 $98
	ld hl, sp-$74                                    ; $7b2b: $f8 $8c
	db $fc                                           ; $7b2d: $fc
	push bc                                          ; $7b2e: $c5
	cp [hl]                                          ; $7b2f: $be
	rst SubAFromBC                                          ; $7b30: $e7
	ld e, [hl]                                       ; $7b31: $5e
	rst $38                                          ; $7b32: $ff
	ccf                                              ; $7b33: $3f
	ld a, a                                          ; $7b34: $7f
	db $fc                                           ; $7b35: $fc
	ld h, a                                          ; $7b36: $67
	ld a, d                                          ; $7b37: $7a
	inc hl                                           ; $7b38: $23
	dec a                                            ; $7b39: $3d
	ld sp, $193f                                     ; $7b3a: $31 $3f $19
	rra                                              ; $7b3d: $1f
	rrca                                             ; $7b3e: $0f
	ld a, e                                          ; $7b3f: $7b
	nop                                              ; $7b40: $00
	sbc [hl]                                         ; $7b41: $9e
	ld bc, $4073                                     ; $7b42: $01 $73 $40
	sub h                                            ; $7b45: $94
	inc [hl]                                         ; $7b46: $34
	db $ec                                           ; $7b47: $ec
	db $f4                                           ; $7b48: $f4
	inc e                                            ; $7b49: $1c
	inc c                                            ; $7b4a: $0c
	db $fc                                           ; $7b4b: $fc
	inc a                                            ; $7b4c: $3c
	db $fc                                           ; $7b4d: $fc
	ret nz                                           ; $7b4e: $c0

	call nz, Call_017_7ac0                           ; $7b4f: $c4 $c0 $7a
	cp [hl]                                          ; $7b52: $be
	ld e, a                                          ; $7b53: $5f
	ret nz                                           ; $7b54: $c0

	sbc c                                            ; $7b55: $99
	db $eb                                           ; $7b56: $eb
	ld [hl], h                                       ; $7b57: $74
	ld c, e                                          ; $7b58: $4b
	db $f4                                           ; $7b59: $f4
	add b                                            ; $7b5a: $80
	ld b, b                                          ; $7b5b: $40
	ld h, a                                          ; $7b5c: $67
	ret nz                                           ; $7b5d: $c0

	sub a                                            ; $7b5e: $97
	call nz, $e6bc                                   ; $7b5f: $c4 $bc $e6
	ld e, [hl]                                       ; $7b62: $5e
	rst $38                                          ; $7b63: $ff
	ld a, $7f                                        ; $7b64: $3e $7f
	ld a, h                                          ; $7b66: $7c
	ld d, a                                          ; $7b67: $57
	ret nz                                           ; $7b68: $c0

	ld a, [hl]                                       ; $7b69: $7e
	cp a                                             ; $7b6a: $bf
	sbc e                                            ; $7b6b: $9b
	db $d3                                           ; $7b6c: $d3
	ld l, $d3                                        ; $7b6d: $2e $d3
	cpl                                              ; $7b6f: $2f
	ld [hl], a                                       ; $7b70: $77
	ret nz                                           ; $7b71: $c0

	sbc l                                            ; $7b72: $9d
	ld [$7bfe], sp                                   ; $7b73: $08 $fe $7b
	ret nz                                           ; $7b76: $c0

	sbc [hl]                                         ; $7b77: $9e
	ret nz                                           ; $7b78: $c0

	ld [hl], d                                       ; $7b79: $72
	ret nz                                           ; $7b7a: $c0

	sbc h                                            ; $7b7b: $9c
	nop                                              ; $7b7c: $00
	inc bc                                           ; $7b7d: $03
	inc bc                                           ; $7b7e: $03
	ld a, b                                          ; $7b7f: $78
	db $e3                                           ; $7b80: $e3
	sbc c                                            ; $7b81: $99
	ld c, $1f                                        ; $7b82: $0e $1f
	inc e                                            ; $7b84: $1c
	ccf                                              ; $7b85: $3f
	jr c, jr_017_7bc7                                ; $7b86: $38 $3f

	ld a, d                                          ; $7b88: $7a
	ld c, h                                          ; $7b89: $4c
	ld a, [hl]                                       ; $7b8a: $7e

jr_017_7b8b:
	ld e, [hl]                                       ; $7b8b: $5e
	rst SubAFromDE                                          ; $7b8c: $df
	rst $38                                          ; $7b8d: $ff
	sbc e                                            ; $7b8e: $9b
	inc a                                            ; $7b8f: $3c
	jp $00ff                                         ; $7b90: $c3 $ff $00


	ld l, a                                          ; $7b93: $6f
	cp $99                                           ; $7b94: $fe $99
	cpl                                              ; $7b96: $2f
	ld [hl], b                                       ; $7b97: $70
	ld l, a                                          ; $7b98: $6f
	ld [hl], b                                       ; $7b99: $70
	ld a, a                                          ; $7b9a: $7f
	ld h, b                                          ; $7b9b: $60
	ld l, a                                          ; $7b9c: $6f
	cp $7f                                           ; $7b9d: $fe $7f
	or $7f                                           ; $7b9f: $f6 $7f
	ldh a, [c]                                       ; $7ba1: $f2
	ld h, a                                          ; $7ba2: $67
	add sp, $47                                      ; $7ba3: $e8 $47
	cp $9d                                           ; $7ba5: $fe $9d
	dec a                                            ; $7ba7: $3d
	jp $ffdd                                         ; $7ba8: $c3 $dd $ff


	rst SubAFromDE                                          ; $7bab: $df
	inc bc                                           ; $7bac: $03
	sub e                                            ; $7bad: $93
	db $fc                                           ; $7bae: $fc
	inc c                                            ; $7baf: $0c
	db $fc                                           ; $7bb0: $fc
	inc e                                            ; $7bb1: $1c
	ld hl, sp+$38                                    ; $7bb2: $f8 $38
	ldh a, [rSVBK]                                   ; $7bb4: $f0 $70
	ldh [$e0], a                                     ; $7bb6: $e0 $e0
	ret nz                                           ; $7bb8: $c0

	ret nz                                           ; $7bb9: $c0

	db $dd                                           ; $7bba: $dd
	ldh [$dd], a                                     ; $7bbb: $e0 $dd
	ld bc, $ddf5                                     ; $7bbd: $01 $f5 $dd
	ldh a, [$dd]                                     ; $7bc0: $f0 $dd
	ld hl, sp-$23                                    ; $7bc2: $f8 $dd
	ld a, h                                          ; $7bc4: $7c
	rst SubAFromDE                                          ; $7bc5: $df
	inc a                                            ; $7bc6: $3c

jr_017_7bc7:
	db $fd                                           ; $7bc7: $fd
	call c, $73ff                                    ; $7bc8: $dc $ff $73
	sub b                                            ; $7bcb: $90
	sbc h                                            ; $7bcc: $9c
	ld a, a                                          ; $7bcd: $7f
	nop                                              ; $7bce: $00
	ld a, $63                                        ; $7bcf: $3e $63
	sub b                                            ; $7bd1: $90
	sbc h                                            ; $7bd2: $9c
	ld a, l                                          ; $7bd3: $7d
	ld h, b                                          ; $7bd4: $60
	ld a, b                                          ; $7bd5: $78
	ld [hl], e                                       ; $7bd6: $73
	sub b                                            ; $7bd7: $90
	ld a, [hl]                                       ; $7bd8: $7e
	ld l, a                                          ; $7bd9: $6f
	sbc d                                            ; $7bda: $9a
	sbc c                                            ; $7bdb: $99
	nop                                              ; $7bdc: $00
	sub c                                            ; $7bdd: $91
	nop                                              ; $7bde: $00
	add b                                            ; $7bdf: $80
	ld a, e                                          ; $7be0: $7b
	cp $fd                                           ; $7be1: $fe $fd
	ld a, a                                          ; $7be3: $7f
	ld a, [$f496]                                    ; $7be4: $fa $96 $f4
	ld c, $f6                                        ; $7be7: $0e $f6
	ld c, $fe                                        ; $7be9: $0e $fe
	ld b, $fe                                        ; $7beb: $06 $fe
	ld b, $7e                                        ; $7bed: $06 $7e
	ld a, e                                          ; $7bef: $7b
	cp $98                                           ; $7bf0: $fe $98
	halt                                             ; $7bf2: $76
	ld c, $34                                        ; $7bf3: $0e $34

Jump_017_7bf5:
	ld c, $c4                                        ; $7bf5: $0e $c4
	nop                                              ; $7bf7: $00
	rst SubAFromBC                                          ; $7bf8: $e7
	ld a, e                                          ; $7bf9: $7b
	cp $9e                                           ; $7bfa: $fe $9e
	rst AddAOntoHL                                          ; $7bfc: $ef
	ld h, e                                          ; $7bfd: $63
	add b                                            ; $7bfe: $80

Call_017_7bff:
	ld h, a                                          ; $7bff: $67
	jr nc, jr_017_7c80                               ; $7c00: $30 $7e

	ld l, h                                          ; $7c02: $6c
	ld [hl], a                                       ; $7c03: $77
	jr nc, @-$60                                     ; $7c04: $30 $9e

	scf                                              ; $7c06: $37
	ld a, c                                          ; $7c07: $79
	ld a, [de]                                       ; $7c08: $1a
	db $dd                                           ; $7c09: $dd
	rst $38                                          ; $7c0a: $ff
	sbc [hl]                                         ; $7c0b: $9e
	cp l                                             ; $7c0c: $bd
	ld h, e                                          ; $7c0d: $63
	jr nc, jr_017_7c8f                               ; $7c0e: $30 $7f

	ld e, $57                                        ; $7c10: $1e $57
	jr nc, jr_017_7c93                               ; $7c12: $30 $7f

	ldh a, [c]                                       ; $7c14: $f2
	ld h, a                                          ; $7c15: $67
	add sp, $7b                                      ; $7c16: $e8 $7b
	sbc $98                                          ; $7c18: $de $98
	rst $38                                          ; $7c1a: $ff
	ld a, a                                          ; $7c1b: $7f
	ld a, a                                          ; $7c1c: $7f
	ld bc, $ec01                                     ; $7c1d: $01 $01 $ec
	inc e                                            ; $7c20: $1c
	ld [hl], a                                       ; $7c21: $77
	ld b, b                                          ; $7c22: $40
	sbc l                                            ; $7c23: $9d
	ld [hl], b                                       ; $7c24: $70
	ldh a, [$5f]                                     ; $7c25: $f0 $5f
	ld b, b                                          ; $7c27: $40
	di                                               ; $7c28: $f3
	ld l, a                                          ; $7c29: $6f
	ld b, b                                          ; $7c2a: $40
	rst SubAFromDE                                          ; $7c2b: $df
	ld a, b                                          ; $7c2c: $78
	ld [hl], a                                       ; $7c2d: $77
	ld b, d                                          ; $7c2e: $42
	ld l, a                                          ; $7c2f: $6f
	ld b, b                                          ; $7c30: $40
	rst SubAFromDE                                          ; $7c31: $df
	ld a, [hl]                                       ; $7c32: $7e
	ld h, a                                          ; $7c33: $67
	and b                                            ; $7c34: $a0
	ld [hl], a                                       ; $7c35: $77
	ld b, b                                          ; $7c36: $40
	ld h, a                                          ; $7c37: $67
	and b                                            ; $7c38: $a0
	ld l, a                                          ; $7c39: $6f
	ld b, b                                          ; $7c3a: $40
	ld a, a                                          ; $7c3b: $7f
	ldh a, [c]                                       ; $7c3c: $f2
	ld b, a                                          ; $7c3d: $47
	ld b, b                                          ; $7c3e: $40
	ld a, [hl]                                       ; $7c3f: $7e
	ldh [$57], a                                     ; $7c40: $e0 $57
	ld b, b                                          ; $7c42: $40
	sbc l                                            ; $7c43: $9d
	inc a                                            ; $7c44: $3c
	inc c                                            ; $7c45: $0c
	ld h, a                                          ; $7c46: $67
	ld b, b                                          ; $7c47: $40
	ld h, a                                          ; $7c48: $67
	add b                                            ; $7c49: $80
	ld b, [hl]                                       ; $7c4a: $46
	xor b                                            ; $7c4b: $a8
	ld a, e                                          ; $7c4c: $7b
	call z, $809e                                    ; $7c4d: $cc $9e $80
	sbc $c0                                          ; $7c50: $de $c0
	rst SubAFromDE                                          ; $7c52: $df
	ld b, b                                          ; $7c53: $40
	ld a, h                                          ; $7c54: $7c
	adc $98                                          ; $7c55: $ce $98
	cp $0c                                           ; $7c57: $fe $0c
	db $fc                                           ; $7c59: $fc
	nop                                              ; $7c5a: $00
	ldh [$78], a                                     ; $7c5b: $e0 $78
	ld c, b                                          ; $7c5d: $48
	ld l, a                                          ; $7c5e: $6f
	cp $97                                           ; $7c5f: $fe $97
	ld hl, sp-$38                                    ; $7c61: $f8 $c8
	ld hl, sp+$08                                    ; $7c63: $f8 $08
	ld hl, sp+$18                                    ; $7c65: $f8 $18
	ldh a, [$f0]                                     ; $7c67: $f0 $f0
	ld a, e                                          ; $7c69: $7b
	inc d                                            ; $7c6a: $14
	sub d                                            ; $7c6b: $92
	ld b, $0f                                        ; $7c6c: $06 $0f
	inc c                                            ; $7c6e: $0c
	rra                                              ; $7c6f: $1f
	jr jr_017_7c91                                   ; $7c70: $18 $1f

	db $10                                           ; $7c72: $10
	rra                                              ; $7c73: $1f
	ld e, $03                                        ; $7c74: $1e $03
	ld [bc], a                                       ; $7c76: $02
	inc bc                                           ; $7c77: $03
	ld [bc], a                                       ; $7c78: $02
	ld [hl], a                                       ; $7c79: $77
	call nc, $fe57                                   ; $7c7a: $d4 $57 $fe
	ld [hl], a                                       ; $7c7d: $77
	db $ec                                           ; $7c7e: $ec
	ld [hl], a                                       ; $7c7f: $77

jr_017_7c80:
	cp $7f                                           ; $7c80: $fe $7f
	ldh [c], a                                       ; $7c82: $e2
	ld a, e                                          ; $7c83: $7b
	sbc $7f                                          ; $7c84: $de $7f
	cp $79                                           ; $7c86: $fe $79
	ld a, [$d473]                                    ; $7c88: $fa $73 $d4
	sbc d                                            ; $7c8b: $9a
	inc de                                           ; $7c8c: $13
	ld e, $12                                        ; $7c8d: $1e $12

jr_017_7c8f:
	ld e, $1e                                        ; $7c8f: $1e $1e

jr_017_7c91:
	ld a, b                                          ; $7c91: $78
	push bc                                          ; $7c92: $c5

jr_017_7c93:
	sbc [hl]                                         ; $7c93: $9e
	ld bc, $327b                                     ; $7c94: $01 $7b $32
	sbc [hl]                                         ; $7c97: $9e
	jr jr_017_7d15                                   ; $7c98: $18 $7b

	or [hl]                                          ; $7c9a: $b6
	sbc [hl]                                         ; $7c9b: $9e
	ret z                                            ; $7c9c: $c8

	ld l, e                                          ; $7c9d: $6b
	xor h                                            ; $7c9e: $ac
	sbc [hl]                                         ; $7c9f: $9e
	sbc b                                            ; $7ca0: $98
	ld l, e                                          ; $7ca1: $6b
	or b                                             ; $7ca2: $b0
	ld a, l                                          ; $7ca3: $7d
	pop de                                           ; $7ca4: $d1
	sbc [hl]                                         ; $7ca5: $9e
	inc de                                           ; $7ca6: $13
	ld l, a                                          ; $7ca7: $6f
	ret nc                                           ; $7ca8: $d0

	sbc e                                            ; $7ca9: $9b
	ldh a, [$30]                                     ; $7caa: $f0 $30
	ldh [$60], a                                     ; $7cac: $e0 $60
	ld [hl], l                                       ; $7cae: $75
	ret c                                            ; $7caf: $d8

	sbc $f8                                          ; $7cb0: $de $f8
	ld a, a                                          ; $7cb2: $7f
	jp c, $fe7f                                      ; $7cb3: $da $7f $fe

	sbc [hl]                                         ; $7cb6: $9e
	ld hl, sp+$63                                    ; $7cb7: $f8 $63
	ret nz                                           ; $7cb9: $c0

	ld a, e                                          ; $7cba: $7b
	jp nz, $03de                                     ; $7cbb: $c2 $de $03

	sbc [hl]                                         ; $7cbe: $9e
	ld [bc], a                                       ; $7cbf: $02
	ld c, a                                          ; $7cc0: $4f
	ret nz                                           ; $7cc1: $c0

	sbc l                                            ; $7cc2: $9d
	ldh a, [rAUD1SWEEP]                              ; $7cc3: $f0 $10
	ld [hl], a                                       ; $7cc5: $77
	xor h                                            ; $7cc6: $ac
	rst SubAFromDE                                          ; $7cc7: $df
	ld bc, $e677                                     ; $7cc8: $01 $77 $e6
	ld a, a                                          ; $7ccb: $7f
	cp b                                             ; $7ccc: $b8
	sbc e                                            ; $7ccd: $9b
	rlca                                             ; $7cce: $07
	inc b                                            ; $7ccf: $04
	rrca                                             ; $7cd0: $0f
	dec c                                            ; $7cd1: $0d
	sbc $f0                                          ; $7cd2: $de $f0
	sbc h                                            ; $7cd4: $9c
	sub b                                            ; $7cd5: $90
	ldh a, [rAUD1SWEEP]                              ; $7cd6: $f0 $10
	ld [hl], e                                       ; $7cd8: $73
	cp $7f                                           ; $7cd9: $fe $7f
	ld hl, sp+$7b                                    ; $7cdb: $f8 $7b
	cp $9b                                           ; $7cdd: $fe $9b
	rrca                                             ; $7cdf: $0f
	add hl, bc                                       ; $7ce0: $09
	rra                                              ; $7ce1: $1f
	dec de                                           ; $7ce2: $1b
	ld l, a                                          ; $7ce3: $6f
	and [hl]                                         ; $7ce4: $a6
	ld l, d                                          ; $7ce5: $6a
	or b                                             ; $7ce6: $b0
	sbc d                                            ; $7ce7: $9a
	sub b                                            ; $7ce8: $90
	db $fc                                           ; $7ce9: $fc
	sbc h                                            ; $7cea: $9c
	db $fc                                           ; $7ceb: $fc
	inc b                                            ; $7cec: $04
	ld a, e                                          ; $7ced: $7b
	cp $9e                                           ; $7cee: $fe $9e
	sbc h                                            ; $7cf0: $9c
	ld [hl], e                                       ; $7cf1: $73
	ldh [$9e], a                                     ; $7cf2: $e0 $9e
	ldh a, [$5b]                                     ; $7cf4: $f0 $5b
	ld h, b                                          ; $7cf6: $60
	sbc [hl]                                         ; $7cf7: $9e
	ld [de], a                                       ; $7cf8: $12
	ld [hl], a                                       ; $7cf9: $77
	ld a, h                                          ; $7cfa: $7c
	ld h, a                                          ; $7cfb: $67
	adc b                                            ; $7cfc: $88
	ld l, [hl]                                       ; $7cfd: $6e
	add h                                            ; $7cfe: $84
	ld a, a                                          ; $7cff: $7f
	sub h                                            ; $7d00: $94
	ld a, a                                          ; $7d01: $7f
	ldh [c], a                                       ; $7d02: $e2
	rst SubAFromDE                                          ; $7d03: $df
	rrca                                             ; $7d04: $0f
	rst $38                                          ; $7d05: $ff
	rst SubAFromDE                                          ; $7d06: $df
	ld e, $73                                        ; $7d07: $1e $73
	ld h, b                                          ; $7d09: $60
	ld a, e                                          ; $7d0a: $7b
	db $f4                                           ; $7d0b: $f4
	ld e, e                                          ; $7d0c: $5b
	ld b, h                                          ; $7d0d: $44
	ld [hl], d                                       ; $7d0e: $72
	ldh a, [$63]                                     ; $7d0f: $f0 $63
	ld [hl], b                                       ; $7d11: $70
	sbc [hl]                                         ; $7d12: $9e
	ld a, b                                          ; $7d13: $78
	ld l, e                                          ; $7d14: $6b

jr_017_7d15:
	ret nc                                           ; $7d15: $d0

	rst SubAFromDE                                          ; $7d16: $df
	rra                                              ; $7d17: $1f
	ld [hl], a                                       ; $7d18: $77
	sub d                                            ; $7d19: $92
	ld [hl], e                                       ; $7d1a: $73
	db $10                                           ; $7d1b: $10
	ld [hl], a                                       ; $7d1c: $77
	ld l, b                                          ; $7d1d: $68
	ld l, e                                          ; $7d1e: $6b
	or b                                             ; $7d1f: $b0
	ld a, e                                          ; $7d20: $7b
	call z, AHLequAtimesHL                                    ; $7d21: $cc $77 $12
	ld a, a                                          ; $7d24: $7f
	ld [hl+], a                                      ; $7d25: $22
	ld h, [hl]                                       ; $7d26: $66
	ldh [rOCPD], a                                   ; $7d27: $e0 $6b
	cp $9e                                           ; $7d29: $fe $9e
	inc bc                                           ; $7d2b: $03
	ld a, e                                          ; $7d2c: $7b
	ld [de], a                                       ; $7d2d: $12
	ld d, [hl]                                       ; $7d2e: $56
	ret nz                                           ; $7d2f: $c0

	sbc [hl]                                         ; $7d30: $9e
	ret nz                                           ; $7d31: $c0

	ld d, a                                          ; $7d32: $57
	ld [hl], h                                       ; $7d33: $74
	ld [hl], a                                       ; $7d34: $77
	sub b                                            ; $7d35: $90
	ld d, a                                          ; $7d36: $57
	db $10                                           ; $7d37: $10
	ld [hl], a                                       ; $7d38: $77
	cp h                                             ; $7d39: $bc
	ld b, a                                          ; $7d3a: $47
	ld [hl], b                                       ; $7d3b: $70
	cp a                                             ; $7d3c: $bf
	nop                                              ; $7d3d: $00
	call $d541                                       ; $7d3e: $cd $41 $d5
	ld b, b                                          ; $7d41: $40
	sub a                                            ; $7d42: $97
	ccf                                              ; $7d43: $3f
	ld a, $3d                                        ; $7d44: $3e $3d
	dec a                                            ; $7d46: $3d
	inc a                                            ; $7d47: $3c
	dec a                                            ; $7d48: $3d
	dec a                                            ; $7d49: $3d
	dec sp                                           ; $7d4a: $3b
	ld h, a                                          ; $7d4b: $67
	db $fc                                           ; $7d4c: $fc
	rst SubAFromDE                                          ; $7d4d: $df
	dec a                                            ; $7d4e: $3d
	sbc l                                            ; $7d4f: $9d
	ld a, [hl-]                                      ; $7d50: $3a
	ccf                                              ; $7d51: $3f
	push de                                          ; $7d52: $d5
	ld b, b                                          ; $7d53: $40
	adc e                                            ; $7d54: $8b
	add hl, sp                                       ; $7d55: $39
	jr c, jr_017_7d8f                                ; $7d56: $38 $37

	ld [hl], $35                                     ; $7d58: $36 $35
	inc [hl]                                         ; $7d5a: $34
	inc [hl]                                         ; $7d5b: $34
	inc sp                                           ; $7d5c: $33
	ld [hl-], a                                      ; $7d5d: $32
	inc [hl]                                         ; $7d5e: $34
	inc [hl]                                         ; $7d5f: $34
	ld sp, $2f30                                     ; $7d60: $31 $30 $2f
	inc [hl]                                         ; $7d63: $34
	inc [hl]                                         ; $7d64: $34
	ld l, $2d                                        ; $7d65: $2e $2d
	inc l                                            ; $7d67: $2c

jr_017_7d68:
	add hl, sp                                       ; $7d68: $39
	ld d, e                                          ; $7d69: $53
	ldh [$8d], a                                     ; $7d6a: $e0 $8d
	dec hl                                           ; $7d6c: $2b
	ld a, [hl+]                                      ; $7d6d: $2a
	add hl, hl                                       ; $7d6e: $29
	jr z, @+$36                                      ; $7d6f: $28 $34

	inc [hl]                                         ; $7d71: $34
	daa                                              ; $7d72: $27
	ld h, $34                                        ; $7d73: $26 $34
	inc [hl]                                         ; $7d75: $34

Call_017_7d76:
	dec h                                            ; $7d76: $25
	inc h                                            ; $7d77: $24
	inc hl                                           ; $7d78: $23
	inc [hl]                                         ; $7d79: $34
	inc [hl]                                         ; $7d7a: $34
	ld [hl+], a                                      ; $7d7b: $22
	ld hl, $5320                                     ; $7d7c: $21 $20 $53
	ldh [$9d], a                                     ; $7d7f: $e0 $9d
	rra                                              ; $7d81: $1f
	ld e, $d1                                        ; $7d82: $1e $d1
	dec e                                            ; $7d84: $1d
	sbc l                                            ; $7d85: $9d
	inc e                                            ; $7d86: $1c
	rra                                              ; $7d87: $1f
	push de                                          ; $7d88: $d5
	ld b, b                                          ; $7d89: $40
	sbc [hl]                                         ; $7d8a: $9e
	dec de                                           ; $7d8b: $1b
	ld b, e                                          ; $7d8c: $43
	ldh [$9d], a                                     ; $7d8d: $e0 $9d

jr_017_7d8f:
	ld a, [de]                                       ; $7d8f: $1a
	dec de                                           ; $7d90: $1b
	push de                                          ; $7d91: $d5
	ld b, b                                          ; $7d92: $40
	sbc l                                            ; $7d93: $9d
	add hl, de                                       ; $7d94: $19
	jr jr_017_7d68                                   ; $7d95: $18 $d1

	dec e                                            ; $7d97: $1d
	sbc l                                            ; $7d98: $9d
	rla                                              ; $7d99: $17
	add hl, de                                       ; $7d9a: $19
	push de                                          ; $7d9b: $d5
	ld b, b                                          ; $7d9c: $40
	sbc l                                            ; $7d9d: $9d
	ld d, $1c                                        ; $7d9e: $16 $1c
	pop de                                           ; $7da0: $d1
	dec e                                            ; $7da1: $1d
	sbc l                                            ; $7da2: $9d
	dec d                                            ; $7da3: $15
	ld d, $d5                                        ; $7da4: $16 $d5
	ld b, b                                          ; $7da6: $40
	sbc [hl]                                         ; $7da7: $9e
	inc d                                            ; $7da8: $14
	ld b, e                                          ; $7da9: $43
	ldh [$9d], a                                     ; $7daa: $e0 $9d
	inc e                                            ; $7dac: $1c
	inc d                                            ; $7dad: $14
	push de                                          ; $7dae: $d5
	ld b, b                                          ; $7daf: $40
	sbc l                                            ; $7db0: $9d
	inc de                                           ; $7db1: $13
	ld [de], a                                       ; $7db2: $12
	pop de                                           ; $7db3: $d1
	dec e                                            ; $7db4: $1d
	sbc l                                            ; $7db5: $9d
	ld de, $5313                                     ; $7db6: $11 $13 $53
	ret nz                                           ; $7db9: $c0

	sbc [hl]                                         ; $7dba: $9e
	nop                                              ; $7dbb: $00
	pop de                                           ; $7dbc: $d1
	dec e                                            ; $7dbd: $1d
	sbc [hl]                                         ; $7dbe: $9e
	db $10                                           ; $7dbf: $10
	ld d, e                                          ; $7dc0: $53
	ret nz                                           ; $7dc1: $c0

	sbc l                                            ; $7dc2: $9d
	rrca                                             ; $7dc3: $0f
	ld c, $43                                        ; $7dc4: $0e $43
	ld b, b                                          ; $7dc6: $40
	sbc [hl]                                         ; $7dc7: $9e
	rrca                                             ; $7dc8: $0f
	ld d, e                                          ; $7dc9: $53
	ret nz                                           ; $7dca: $c0

	sbc [hl]                                         ; $7dcb: $9e
	dec c                                            ; $7dcc: $0d
	ld b, e                                          ; $7dcd: $43
	ld b, b                                          ; $7dce: $40
	ld c, a                                          ; $7dcf: $4f
	ret nz                                           ; $7dd0: $c0

	ld b, e                                          ; $7dd1: $43
	ld h, b                                          ; $7dd2: $60
	sbc [hl]                                         ; $7dd3: $9e
	inc c                                            ; $7dd4: $0c
	ld c, a                                          ; $7dd5: $4f
	ret nz                                           ; $7dd6: $c0

	dec bc                                           ; $7dd7: $0b
	ld b, b                                          ; $7dd8: $40
	sbc l                                            ; $7dd9: $9d
	rrca                                             ; $7dda: $0f
	dec bc                                           ; $7ddb: $0b
	pop de                                           ; $7ddc: $d1
	dec e                                            ; $7ddd: $1d
	sbc [hl]                                         ; $7dde: $9e
	ld a, [bc]                                       ; $7ddf: $0a
	ld c, a                                          ; $7de0: $4f
	ret nz                                           ; $7de1: $c0

	sbc [hl]                                         ; $7de2: $9e
	add hl, bc                                       ; $7de3: $09
	pop de                                           ; $7de4: $d1
	dec e                                            ; $7de5: $1d
	sbc [hl]                                         ; $7de6: $9e
	ld [$c04f], sp                                   ; $7de7: $08 $4f $c0
	sbc e                                            ; $7dea: $9b
	rlca                                             ; $7deb: $07
	ld b, $05                                        ; $7dec: $06 $05
	inc b                                            ; $7dee: $04
	ld a, e                                          ; $7def: $7b
	db $fd                                           ; $7df0: $fd
	ld [hl], e                                       ; $7df1: $73
	ei                                               ; $7df2: $fb
	sbc b                                            ; $7df3: $98
	inc bc                                           ; $7df4: $03
	ld [bc], a                                       ; $7df5: $02
	inc b                                            ; $7df6: $04
	ld b, $06                                        ; $7df7: $06 $06
	ld bc, $340f                                     ; $7df9: $01 $0f $34
	nop                                              ; $7dfc: $00
	pop de                                           ; $7dfd: $d1
	ld [hl+], a                                      ; $7dfe: $22
	sbc [hl]                                         ; $7dff: $9e
	inc h                                            ; $7e00: $24
	reti                                             ; $7e01: $d9


	ld b, h                                          ; $7e02: $44
	sbc [hl]                                         ; $7e03: $9e
	ld b, d                                          ; $7e04: $42
	db $db                                           ; $7e05: $db
	ld [hl+], a                                      ; $7e06: $22
	sbc [hl]                                         ; $7e07: $9e
	ld hl, $44d9                                     ; $7e08: $21 $d9 $44
	sbc [hl]                                         ; $7e0b: $9e
	ld [de], a                                       ; $7e0c: $12
	cpl                                              ; $7e0d: $2f
	ldh a, [$9e]                                     ; $7e0e: $f0 $9e
	inc b                                            ; $7e10: $04
	reti                                             ; $7e11: $d9


	ld [hl], a                                       ; $7e12: $77
	sbc [hl]                                         ; $7e13: $9e
	db $10                                           ; $7e14: $10
	cpl                                              ; $7e15: $2f
	ldh a, [$9e]                                     ; $7e16: $f0 $9e
	ld bc, $f00b                                     ; $7e18: $01 $0b $f0
	sbc [hl]                                         ; $7e1b: $9e
	ld de, $77d9                                     ; $7e1c: $11 $d9 $77
	sbc [hl]                                         ; $7e1f: $9e
	ld de, $f02f                                     ; $7e20: $11 $2f $f0
	sbc [hl]                                         ; $7e23: $9e
	db $10                                           ; $7e24: $10
	dec bc                                           ; $7e25: $0b
	ldh [$03], a                                     ; $7e26: $e0 $03
	ldh a, [$03]                                     ; $7e28: $f0 $03
	ldh a, [rWX]                                     ; $7e2a: $f0 $4b
	ldh a, [$d8]                                     ; $7e2c: $f0 $d8
	ld de, $0027                                     ; $7e2e: $11 $27 $00
	sbc [hl]                                         ; $7e31: $9e
	nop                                              ; $7e32: $00
	sbc $01                                          ; $7e33: $de $01
	sbc [hl]                                         ; $7e35: $9e
	inc b                                            ; $7e36: $04
	sbc $05                                          ; $7e37: $de $05
	sbc d                                            ; $7e39: $9a
	ld [$0a09], sp                                   ; $7e3a: $08 $09 $0a
	dec bc                                           ; $7e3d: $0b
	inc c                                            ; $7e3e: $0c
	sbc $05                                          ; $7e3f: $de $05
	adc a                                            ; $7e41: $8f
	db $10                                           ; $7e42: $10
	ld de, $1312                                     ; $7e43: $11 $12 $13
	inc d                                            ; $7e46: $14
	dec d                                            ; $7e47: $15
	dec b                                            ; $7e48: $05
	dec d                                            ; $7e49: $15
	ld d, $0f                                        ; $7e4a: $16 $0f
	ld c, $0d                                        ; $7e4c: $0e $0d
	rlca                                             ; $7e4e: $07
	ld b, $05                                        ; $7e4f: $06 $05
	inc bc                                           ; $7e51: $03
	call c, $c602                                    ; $7e52: $dc $02 $c6
	dec b                                            ; $7e55: $05
	ld e, $00                                        ; $7e56: $1e $00
	sub l                                            ; $7e58: $95
	rla                                              ; $7e59: $17
	jr @+$1b                                         ; $7e5a: $18 $19

	ld a, [de]                                       ; $7e5c: $1a
	dec de                                           ; $7e5d: $1b
	inc e                                            ; $7e5e: $1c
	dec b                                            ; $7e5f: $05
	ld e, $1f                                        ; $7e60: $1e $1f
	jr nz, @+$71                                     ; $7e62: $20 $6f

	ld hl, sp-$66                                    ; $7e64: $f8 $9a
	dec h                                            ; $7e66: $25
	inc h                                            ; $7e67: $24
	add hl, de                                       ; $7e68: $19
	inc hl                                           ; $7e69: $23
	ld [hl+], a                                      ; $7e6a: $22
	ld l, a                                          ; $7e6b: $6f
	ld hl, sp-$63                                    ; $7e6c: $f8 $9d
	ld hl, $7b1d                                     ; $7e6e: $21 $1d $7b
	ld hl, sp-$3f                                    ; $7e71: $f8 $c1
	dec b                                            ; $7e73: $05
	ld hl, $8f00                                     ; $7e74: $21 $00 $8f
	nop                                              ; $7e77: $00
	ld bc, $0302                                     ; $7e78: $01 $02 $03

Call_017_7e7b:
	inc b                                            ; $7e7b: $04
	nop                                              ; $7e7c: $00
	nop                                              ; $7e7d: $00
	rlca                                             ; $7e7e: $07
	rrca                                             ; $7e7f: $0f
	db $10                                           ; $7e80: $10
	ld de, $1312                                     ; $7e81: $11 $12 $13
	inc d                                            ; $7e84: $14
	dec d                                            ; $7e85: $15
	ld d, $c8                                        ; $7e86: $16 $c8
	ld a, [bc]                                       ; $7e88: $0a
	sbc [hl]                                         ; $7e89: $9e
	add hl, bc                                       ; $7e8a: $09
	jp c, $9e0a                                      ; $7e8b: $da $0a $9e

	ld b, $da                                        ; $7e8e: $06 $da
	ld a, [bc]                                       ; $7e90: $0a
	sbc [hl]                                         ; $7e91: $9e
	dec b                                            ; $7e92: $05
	db $db                                           ; $7e93: $db
	ld a, [bc]                                       ; $7e94: $0a
	jp $dd00                                         ; $7e95: $c3 $00 $dd


	ld c, l                                          ; $7e98: $4d
	push de                                          ; $7e99: $d5
	ld c, h                                          ; $7e9a: $4c
	db $dd                                           ; $7e9b: $dd
	ld c, l                                          ; $7e9c: $4d
	push de                                          ; $7e9d: $d5
	ld c, e                                          ; $7e9e: $4b
	sub a                                            ; $7e9f: $97
	ld c, d                                          ; $7ea0: $4a
	ld c, c                                          ; $7ea1: $49
	ld c, b                                          ; $7ea2: $48
	ld c, b                                          ; $7ea3: $48
	ld b, a                                          ; $7ea4: $47
	ld c, b                                          ; $7ea5: $48
	ld c, b                                          ; $7ea6: $48
	ld b, [hl]                                       ; $7ea7: $46
	ld h, a                                          ; $7ea8: $67
	db $fc                                           ; $7ea9: $fc
	rst SubAFromDE                                          ; $7eaa: $df
	ld c, b                                          ; $7eab: $48
	sbc l                                            ; $7eac: $9d
	ld b, l                                          ; $7ead: $45
	ld c, d                                          ; $7eae: $4a
	push de                                          ; $7eaf: $d5
	ld c, e                                          ; $7eb0: $4b
	adc e                                            ; $7eb1: $8b
	ld b, h                                          ; $7eb2: $44
	ld b, e                                          ; $7eb3: $43
	ld b, d                                          ; $7eb4: $42
	ld b, c                                          ; $7eb5: $41
	ld b, b                                          ; $7eb6: $40
	ccf                                              ; $7eb7: $3f
	ld a, $3d                                        ; $7eb8: $3e $3d
	inc a                                            ; $7eba: $3c
	dec sp                                           ; $7ebb: $3b
	ld a, [hl-]                                      ; $7ebc: $3a
	add hl, sp                                       ; $7ebd: $39
	jr c, jr_017_7ef7                                ; $7ebe: $38 $37

	ld [hl], $35                                     ; $7ec0: $36 $35
	inc [hl]                                         ; $7ec2: $34
	inc sp                                           ; $7ec3: $33
	ld [hl-], a                                      ; $7ec4: $32

jr_017_7ec5:
	ld b, h                                          ; $7ec5: $44
	ld d, e                                          ; $7ec6: $53
	ldh [$8d], a                                     ; $7ec7: $e0 $8d
	ld sp, $2f30                                     ; $7ec9: $31 $30 $2f
	ld l, $2d                                        ; $7ecc: $2e $2d
	inc l                                            ; $7ece: $2c
	dec hl                                           ; $7ecf: $2b
	ld a, [hl+]                                      ; $7ed0: $2a
	add hl, hl                                       ; $7ed1: $29
	jr z, jr_017_7efb                                ; $7ed2: $28 $27

	ld h, $25                                        ; $7ed4: $26 $25
	inc h                                            ; $7ed6: $24
	inc hl                                           ; $7ed7: $23
	ld [hl+], a                                      ; $7ed8: $22
	ld hl, $5320                                     ; $7ed9: $21 $20 $53
	ldh [$9d], a                                     ; $7edc: $e0 $9d
	rra                                              ; $7ede: $1f
	ld e, $d1                                        ; $7edf: $1e $d1
	dec e                                            ; $7ee1: $1d
	sbc l                                            ; $7ee2: $9d
	inc e                                            ; $7ee3: $1c
	rra                                              ; $7ee4: $1f
	push de                                          ; $7ee5: $d5
	ld c, e                                          ; $7ee6: $4b
	sbc [hl]                                         ; $7ee7: $9e
	dec de                                           ; $7ee8: $1b
	ld b, e                                          ; $7ee9: $43
	ldh [$9d], a                                     ; $7eea: $e0 $9d
	ld a, [de]                                       ; $7eec: $1a
	dec de                                           ; $7eed: $1b
	push de                                          ; $7eee: $d5
	ld c, e                                          ; $7eef: $4b
	sbc l                                            ; $7ef0: $9d
	add hl, de                                       ; $7ef1: $19
	jr jr_017_7ec5                                   ; $7ef2: $18 $d1

	dec e                                            ; $7ef4: $1d
	sbc l                                            ; $7ef5: $9d
	rla                                              ; $7ef6: $17

jr_017_7ef7:
	add hl, de                                       ; $7ef7: $19
	push de                                          ; $7ef8: $d5
	ld c, e                                          ; $7ef9: $4b
	sbc l                                            ; $7efa: $9d

jr_017_7efb:
	ld d, $1c                                        ; $7efb: $16 $1c
	pop de                                           ; $7efd: $d1
	dec e                                            ; $7efe: $1d

Call_017_7eff:
	sbc l                                            ; $7eff: $9d
	dec d                                            ; $7f00: $15
	ld d, $d5                                        ; $7f01: $16 $d5
	ld c, e                                          ; $7f03: $4b
	sbc [hl]                                         ; $7f04: $9e
	inc d                                            ; $7f05: $14
	ld b, e                                          ; $7f06: $43
	ldh [$9d], a                                     ; $7f07: $e0 $9d
	inc e                                            ; $7f09: $1c
	inc d                                            ; $7f0a: $14
	push de                                          ; $7f0b: $d5
	ld c, e                                          ; $7f0c: $4b
	sbc l                                            ; $7f0d: $9d
	inc de                                           ; $7f0e: $13
	ld [de], a                                       ; $7f0f: $12
	pop de                                           ; $7f10: $d1
	dec e                                            ; $7f11: $1d
	sbc l                                            ; $7f12: $9d
	ld de, $5313                                     ; $7f13: $11 $13 $53
	ret nz                                           ; $7f16: $c0

	sbc [hl]                                         ; $7f17: $9e
	nop                                              ; $7f18: $00
	pop de                                           ; $7f19: $d1
	dec e                                            ; $7f1a: $1d
	sbc [hl]                                         ; $7f1b: $9e
	db $10                                           ; $7f1c: $10
	ld d, e                                          ; $7f1d: $53
	ret nz                                           ; $7f1e: $c0

	sbc l                                            ; $7f1f: $9d
	rrca                                             ; $7f20: $0f
	ld c, $43                                        ; $7f21: $0e $43
	ld b, b                                          ; $7f23: $40
	sbc [hl]                                         ; $7f24: $9e
	rrca                                             ; $7f25: $0f
	ld d, e                                          ; $7f26: $53
	ret nz                                           ; $7f27: $c0

	sbc [hl]                                         ; $7f28: $9e
	dec c                                            ; $7f29: $0d
	ld b, e                                          ; $7f2a: $43
	ld b, b                                          ; $7f2b: $40
	ld c, a                                          ; $7f2c: $4f
	ret nz                                           ; $7f2d: $c0

	ld b, e                                          ; $7f2e: $43
	ld h, b                                          ; $7f2f: $60
	sbc [hl]                                         ; $7f30: $9e
	inc c                                            ; $7f31: $0c
	ld c, a                                          ; $7f32: $4f
	ret nz                                           ; $7f33: $c0

	dec bc                                           ; $7f34: $0b
	ld b, b                                          ; $7f35: $40
	sbc l                                            ; $7f36: $9d

Jump_017_7f37:
	rrca                                             ; $7f37: $0f
	dec bc                                           ; $7f38: $0b
	pop de                                           ; $7f39: $d1
	dec e                                            ; $7f3a: $1d
	sbc [hl]                                         ; $7f3b: $9e
	ld a, [bc]                                       ; $7f3c: $0a
	ld c, a                                          ; $7f3d: $4f
	ret nz                                           ; $7f3e: $c0

Call_017_7f3f:
	sbc [hl]                                         ; $7f3f: $9e
	add hl, bc                                       ; $7f40: $09
	pop de                                           ; $7f41: $d1
	dec e                                            ; $7f42: $1d
	sbc [hl]                                         ; $7f43: $9e
	ld [$c04f], sp                                   ; $7f44: $08 $4f $c0
	sbc e                                            ; $7f47: $9b
	rlca                                             ; $7f48: $07
	ld b, $05                                        ; $7f49: $06 $05
	inc b                                            ; $7f4b: $04
	ld a, e                                          ; $7f4c: $7b
	db $fd                                           ; $7f4d: $fd
	ld [hl], e                                       ; $7f4e: $73
	ei                                               ; $7f4f: $fb
	sbc b                                            ; $7f50: $98
	inc bc                                           ; $7f51: $03
	ld [bc], a                                       ; $7f52: $02
	inc b                                            ; $7f53: $04
	ld b, $06                                        ; $7f54: $06 $06
	ld bc, $340f                                     ; $7f56: $01 $0f $34
	nop                                              ; $7f59: $00
	pop de                                           ; $7f5a: $d1
	ld [hl+], a                                      ; $7f5b: $22
	sbc [hl]                                         ; $7f5c: $9e
	inc h                                            ; $7f5d: $24
	reti                                             ; $7f5e: $d9


	ld b, h                                          ; $7f5f: $44
	sbc [hl]                                         ; $7f60: $9e
	ld b, d                                          ; $7f61: $42
	db $db                                           ; $7f62: $db
	ld [hl+], a                                      ; $7f63: $22
	sbc [hl]                                         ; $7f64: $9e
	ld hl, $44d9                                     ; $7f65: $21 $d9 $44
	sbc [hl]                                         ; $7f68: $9e
	ld [de], a                                       ; $7f69: $12
	cpl                                              ; $7f6a: $2f
	ldh a, [$9e]                                     ; $7f6b: $f0 $9e
	inc b                                            ; $7f6d: $04
	reti                                             ; $7f6e: $d9


	ld [hl], a                                       ; $7f6f: $77
	sbc [hl]                                         ; $7f70: $9e
	db $10                                           ; $7f71: $10
	cpl                                              ; $7f72: $2f
	ldh a, [$9e]                                     ; $7f73: $f0 $9e
	ld bc, $f00b                                     ; $7f75: $01 $0b $f0
	sbc [hl]                                         ; $7f78: $9e
	ld de, $77d9                                     ; $7f79: $11 $d9 $77
	sbc [hl]                                         ; $7f7c: $9e
	ld de, $f02f                                     ; $7f7d: $11 $2f $f0
	sbc [hl]                                         ; $7f80: $9e
	db $10                                           ; $7f81: $10
	dec bc                                           ; $7f82: $0b
	ldh [$03], a                                     ; $7f83: $e0 $03
	ldh a, [$03]                                     ; $7f85: $f0 $03
	ldh a, [rWX]                                     ; $7f87: $f0 $4b
	ldh a, [$d8]                                     ; $7f89: $f0 $d8
	ld de, rIE                                     ; $7f8b: $11 $ff $ff
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

Jump_017_7fdd:
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

Jump_017_7fff:
	rst $38                                          ; $7fff: $ff
