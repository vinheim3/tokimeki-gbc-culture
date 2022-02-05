; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $044", ROMX[$4000], BANK[$44]

	rst FarCall                                          ; $4000: $f7
	ld a, d                                          ; $4001: $7a
	call z, $f690                                    ; $4002: $cc $90 $f6
	ld a, l                                          ; $4005: $7d
	ld a, [$1d7d]                                    ; $4006: $fa $7d $1d
	ldh [$80], a                                     ; $4009: $e0 $80
	rst $38                                          ; $400b: $ff
	ld a, [$a27d]                                    ; $400c: $fa $7d $a2
	ld a, l                                          ; $400f: $7d
	cp h                                             ; $4010: $bc
	db $e3                                           ; $4011: $e3
	ld d, h                                          ; $4012: $54
	ld a, d                                          ; $4013: $7a
	jr nz, jr_044_4083                               ; $4014: $20 $6d

	jp hl                                            ; $4016: $e9


	ld a, [hl]                                       ; $4017: $7e
	ld b, [hl]                                       ; $4018: $46
	ld a, a                                          ; $4019: $7f
	ld h, b                                          ; $401a: $60
	add b                                            ; $401b: $80
	ld d, d                                          ; $401c: $52
	db $ed                                           ; $401d: $ed
	push hl                                          ; $401e: $e5
	jp c, $ef58                                      ; $401f: $da $58 $ef

	push hl                                          ; $4022: $e5
	rst SubAFromDE                                          ; $4023: $df
	jp c, $e7ef                                      ; $4024: $da $ef $e7

	rst SubAFromDE                                          ; $4027: $df
	sbc e                                            ; $4028: $9b
	rst AddAOntoHL                                          ; $4029: $ef
	add b                                            ; $402a: $80
	rst $38                                          ; $402b: $ff
	cp $01                                           ; $402c: $fe $01
	ld a, a                                          ; $402e: $7f
	add b                                            ; $402f: $80
	xor d                                            ; $4030: $aa
	push de                                          ; $4031: $d5
	ld d, l                                          ; $4032: $55
	ld [$f58a], a                                    ; $4033: $ea $8a $f5
	dec b                                            ; $4036: $05
	ld a, [$fda2]                                    ; $4037: $fa $a2 $fd
	db $10                                           ; $403a: $10
	add h                                            ; $403b: $84
	rst $38                                          ; $403c: $ff
	ld d, h                                          ; $403d: $54
	ld hl, sp-$59                                    ; $403e: $f8 $a7
	ei                                               ; $4040: $fb
	ld b, a                                          ; $4041: $47
	ld hl, sp+$40                                    ; $4042: $f8 $40
	cp a                                             ; $4044: $bf
	xor b                                            ; $4045: $a8
	ld a, a                                          ; $4046: $7f
	ld d, [hl]                                       ; $4047: $56
	rst $38                                          ; $4048: $ff
	jr z, @+$01                                      ; $4049: $28 $ff

	ld e, h                                          ; $404b: $5c
	rst $38                                          ; $404c: $ff
	rst GetHLinHL                                          ; $404d: $cf
	ccf                                              ; $404e: $3f
	ld sp, $f1ff                                     ; $404f: $31 $ff $f1
	rst AddAOntoHL                                          ; $4052: $ef
	pop af                                           ; $4053: $f1
	rst AddAOntoHL                                          ; $4054: $ef
	pop hl                                           ; $4055: $e1
	rst GetHLinHL                                          ; $4056: $cf
	ld a, e                                          ; $4057: $7b
	cp $94                                           ; $4058: $fe $94
	adc a                                            ; $405a: $8f
	rst JumpTable                                          ; $405b: $c7
	adc a                                            ; $405c: $8f
	rst $38                                          ; $405d: $ff
	xor $ff                                          ; $405e: $ee $ff
	rst $38                                          ; $4060: $ff
	ld sp, hl                                        ; $4061: $f9
	rst AddAOntoHL                                          ; $4062: $ef
	db $fd                                           ; $4063: $fd
	rst SubAFromDE                                          ; $4064: $df
	ld a, c                                          ; $4065: $79
	inc de                                           ; $4066: $13
	sbc c                                            ; $4067: $99
	rst SubAFromDE                                          ; $4068: $df
	ei                                               ; $4069: $fb
	xor a                                            ; $406a: $af
	ld sp, hl                                        ; $406b: $f9
	ld e, a                                          ; $406c: $5f
	ld b, c                                          ; $406d: $41
	ld [hl], b                                       ; $406e: $70
	ld a, [$857e]                                    ; $406f: $fa $7e $85
	ld [hl], e                                       ; $4072: $73
	sbc [hl]                                         ; $4073: $9e

Jump_044_4074:
	add d                                            ; $4074: $82
	push de                                          ; $4075: $d5
	rst $38                                          ; $4076: $ff
	xor d                                            ; $4077: $aa
	ld d, e                                          ; $4078: $53
	ldh [$bf], a                                     ; $4079: $e0 $bf
	rst $38                                          ; $407b: $ff
	ld e, a                                          ; $407c: $5f
	db $e3                                           ; $407d: $e3
	xor a                                            ; $407e: $af
	cp $df                                           ; $407f: $fe $df
	db $fc                                           ; $4081: $fc
	xor a                                            ; $4082: $af

jr_044_4083:
	db $fc                                           ; $4083: $fc
	rst $38                                          ; $4084: $ff
	ld l, b                                          ; $4085: $68
	cp a                                             ; $4086: $bf
	ret c                                            ; $4087: $d8

	rst $38                                          ; $4088: $ff
	ld a, h                                          ; $4089: $7c
	sbc a                                            ; $408a: $9f
	db $fd                                           ; $408b: $fd
	sbc a                                            ; $408c: $9f
	sbc $9f                                          ; $408d: $de $9f
	ld a, l                                          ; $408f: $7d
	sbc a                                            ; $4090: $9f
	ld a, [hl]                                       ; $4091: $7e
	ld a, e                                          ; $4092: $7b
	db $fc                                           ; $4093: $fc
	ld a, d                                          ; $4094: $7a
	adc l                                            ; $4095: $8d
	sub h                                            ; $4096: $94
	jp nz, $fdff                                     ; $4097: $c2 $ff $fd

	rst $38                                          ; $409a: $ff
	ld a, [hl-]                                      ; $409b: $3a
	ld a, a                                          ; $409c: $7f
	scf                                              ; $409d: $37
	ld a, a                                          ; $409e: $7f
	jr c, @+$01                                      ; $409f: $38 $ff

	or $79                                           ; $40a1: $f6 $79
	ld hl, sp-$6c                                    ; $40a3: $f8 $94
	reti                                             ; $40a5: $d9


	ld sp, hl                                        ; $40a6: $f9
	add d                                            ; $40a7: $82
	rst $38                                          ; $40a8: $ff
	ld hl, $c2ff                                     ; $40a9: $21 $ff $c2
	rst $38                                          ; $40ac: $ff
	ld e, b                                          ; $40ad: $58
	rst FarCall                                          ; $40ae: $f7
	xor b                                            ; $40af: $a8
	ld a, e                                          ; $40b0: $7b
	sub h                                            ; $40b1: $94
	adc e                                            ; $40b2: $8b
	xor l                                            ; $40b3: $ad
	rst $38                                          ; $40b4: $ff
	ld a, [$52ff]                                    ; $40b5: $fa $ff $52
	xor b                                            ; $40b8: $a8
	ld [hl+], a                                      ; $40b9: $22
	db $dd                                           ; $40ba: $dd
	ld b, l                                          ; $40bb: $45
	cp d                                             ; $40bc: $ba
	jr nz, @+$01                                     ; $40bd: $20 $ff

	ld d, b                                          ; $40bf: $50
	rst $38                                          ; $40c0: $ff
	cp b                                             ; $40c1: $b8
	rst $38                                          ; $40c2: $ff
	ld c, b                                          ; $40c3: $48
	rst $38                                          ; $40c4: $ff
	xor h                                            ; $40c5: $ac
	di                                               ; $40c6: $f3
	halt                                             ; $40c7: $76
	or h                                             ; $40c8: $b4
	sub e                                            ; $40c9: $93
	ld a, [hl+]                                      ; $40ca: $2a
	add b                                            ; $40cb: $80
	dec d                                            ; $40cc: $15
	ldh [$0c], a                                     ; $40cd: $e0 $0c
	cp $0d                                           ; $40cf: $fe $0d
	cp $04                                           ; $40d1: $fe $04
	rst $38                                          ; $40d3: $ff
	dec bc                                           ; $40d4: $0b
	ldh a, [c]                                       ; $40d5: $f2
	db $fd                                           ; $40d6: $fd
	ld a, [hl]                                       ; $40d7: $7e
	ld [$5094], a                                    ; $40d8: $ea $94 $50
	nop                                              ; $40db: $00
	xor b                                            ; $40dc: $a8
	nop                                              ; $40dd: $00
	ld d, h                                          ; $40de: $54
	add b                                            ; $40df: $80
	xor d                                            ; $40e0: $aa
	ld b, e                                          ; $40e1: $43
	inc de                                           ; $40e2: $13
	db $e3                                           ; $40e3: $e3
	rra                                              ; $40e4: $1f
	ld a, c                                          ; $40e5: $79
	add b                                            ; $40e6: $80
	ld a, h                                          ; $40e7: $7c
	ld b, [hl]                                       ; $40e8: $46
	ld a, h                                          ; $40e9: $7c
	ldh a, [$97]                                     ; $40ea: $f0 $97
	rst JumpTable                                          ; $40ec: $c7
	rst $38                                          ; $40ed: $ff
	jp $07ff                                         ; $40ee: $c3 $ff $07


	rst $38                                          ; $40f1: $ff
	ld h, e                                          ; $40f2: $63
	ccf                                              ; $40f3: $3f
	ld a, d                                          ; $40f4: $7a
	call z, $c976                                    ; $40f5: $cc $76 $c9
	add c                                            ; $40f8: $81
	nop                                              ; $40f9: $00
	add e                                            ; $40fa: $83
	nop                                              ; $40fb: $00
	ld h, h                                          ; $40fc: $64
	add e                                            ; $40fd: $83
	sbc e                                            ; $40fe: $9b
	rst SubAFromBC                                          ; $40ff: $e7
	db $db                                           ; $4100: $db
	rst SubAFromBC                                          ; $4101: $e7
	ld [bc], a                                       ; $4102: $02
	rra                                              ; $4103: $1f
	dec d                                            ; $4104: $15
	rrca                                             ; $4105: $0f
	rlca                                             ; $4106: $07
	rrca                                             ; $4107: $0f
	daa                                              ; $4108: $27
	rra                                              ; $4109: $1f
	rst JumpTable                                          ; $410a: $c7
	ccf                                              ; $410b: $3f
	rra                                              ; $410c: $1f
	rst $38                                          ; $410d: $ff
	inc hl                                           ; $410e: $23
	db $e3                                           ; $410f: $e3
	add hl, sp                                       ; $4110: $39
	pop af                                           ; $4111: $f1
	adc d                                            ; $4112: $8a
	push af                                          ; $4113: $f5
	inc d                                            ; $4114: $14
	ei                                               ; $4115: $fb
	xor c                                            ; $4116: $a9
	ld a, b                                          ; $4117: $78
	ld e, b                                          ; $4118: $58
	ld a, a                                          ; $4119: $7f
	sub [hl]                                         ; $411a: $96
	ld a, a                                          ; $411b: $7f
	ld a, b                                          ; $411c: $78
	ld a, a                                          ; $411d: $7f
	add b                                            ; $411e: $80
	sbc [hl]                                         ; $411f: $9e
	pop af                                           ; $4120: $f1
	ld a, d                                          ; $4121: $7a
	ld c, h                                          ; $4122: $4c
	adc l                                            ; $4123: $8d
	add l                                            ; $4124: $85
	ld a, [$f5ea]                                    ; $4125: $fa $ea $f5
	push af                                          ; $4128: $f5
	ld a, [$f5fa]                                    ; $4129: $fa $fa $f5
	rst $38                                          ; $412c: $ff
	cp $fd                                           ; $412d: $fe $fd
	rst $38                                          ; $412f: $ff
	cp l                                             ; $4130: $bd
	rst $38                                          ; $4131: $ff
	or $79                                           ; $4132: $f6 $79
	ld [$6771], a                                    ; $4134: $ea $71 $67
	cp $9b                                           ; $4137: $fe $9b
	db $d3                                           ; $4139: $d3
	jp hl                                            ; $413a: $e9


	jp Jump_044_74e9                                 ; $413b: $c3 $e9 $74


	ldh [c], a                                       ; $413e: $e2
	adc h                                            ; $413f: $8c
	sub c                                            ; $4140: $91
	ld a, a                                          ; $4141: $7f
	xor [hl]                                         ; $4142: $ae
	ld [hl], c                                       ; $4143: $71
	add [hl]                                         ; $4144: $86
	ld a, c                                          ; $4145: $79
	xor d                                            ; $4146: $aa
	ld [hl], l                                       ; $4147: $75
	ld b, h                                          ; $4148: $44
	cp e                                             ; $4149: $bb
	ld l, d                                          ; $414a: $6a
	sub l                                            ; $414b: $95
	db $eb                                           ; $414c: $eb
	rst $38                                          ; $414d: $ff
	rst SubAFromDE                                          ; $414e: $df
	rst $38                                          ; $414f: $ff
	db $eb                                           ; $4150: $eb
	rst $38                                          ; $4151: $ff
	db $db                                           ; $4152: $db
	ld a, e                                          ; $4153: $7b
	adc [hl]                                         ; $4154: $8e
	sbc b                                            ; $4155: $98
	reti                                             ; $4156: $d9


	rst $38                                          ; $4157: $ff
	db $ed                                           ; $4158: $ed
	rst $38                                          ; $4159: $ff
	call nc, $eaff                                   ; $415a: $d4 $ff $ea
	ld [hl], e                                       ; $415d: $73
	ld b, $7f                                        ; $415e: $06 $7f
	inc c                                            ; $4160: $0c
	ld h, a                                          ; $4161: $67
	cp $7f                                           ; $4162: $fe $7f
	ld c, d                                          ; $4164: $4a
	sbc h                                            ; $4165: $9c
	ld a, b                                          ; $4166: $78
	ei                                               ; $4167: $fb
	ld hl, sp-$2a                                    ; $4168: $f8 $d6
	rst $38                                          ; $416a: $ff
	adc a                                            ; $416b: $8f
	adc d                                            ; $416c: $8a
	rst GetHLinHL                                          ; $416d: $cf
	dec b                                            ; $416e: $05
	rst GetHLinHL                                          ; $416f: $cf

Call_044_4170:
	adc a                                            ; $4170: $8f
	rst GetHLinHL                                          ; $4171: $cf
	add a                                            ; $4172: $87
	rst GetHLinHL                                          ; $4173: $cf
	add a                                            ; $4174: $87
	rst SubAFromDE                                          ; $4175: $df
	rlca                                             ; $4176: $07
	rst SubAFromDE                                          ; $4177: $df
	rlca                                             ; $4178: $07
	sbc a                                            ; $4179: $9f
	inc bc                                           ; $417a: $03
	sbc a                                            ; $417b: $9f
	halt                                             ; $417c: $76
	call z, $f99d                                    ; $417d: $cc $9d $f9
	cp a                                             ; $4180: $bf
	ld h, e                                          ; $4181: $63
	db $fc                                           ; $4182: $fc
	sbc l                                            ; $4183: $9d
	ld a, a                                          ; $4184: $7f
	push de                                          ; $4185: $d5
	ld a, e                                          ; $4186: $7b
	ld a, d                                          ; $4187: $7a
	adc b                                            ; $4188: $88
	or l                                             ; $4189: $b5
	ei                                               ; $418a: $fb
	jp z, $b5f5                                      ; $418b: $ca $f5 $b5

	db $eb                                           ; $418e: $eb
	jp z, $bdf5                                      ; $418f: $ca $f5 $bd

	db $e3                                           ; $4192: $e3
	sbc d                                            ; $4193: $9a
	push hl                                          ; $4194: $e5
	rst SubAFromDE                                          ; $4195: $df
	ldh [hDisp1_LCDC], a                                     ; $4196: $e0 $8f
	db $e4                                           ; $4198: $e4
	rra                                              ; $4199: $1f
	db $e4                                           ; $419a: $e4
	sbc a                                            ; $419b: $9f
	db $fc                                           ; $419c: $fc
	rrca                                             ; $419d: $0f
	db $fc                                           ; $419e: $fc
	adc a                                            ; $419f: $8f
	ld a, e                                          ; $41a0: $7b
	db $fc                                           ; $41a1: $fc
	ld a, a                                          ; $41a2: $7f
	cp $71                                           ; $41a3: $fe $71
	ld d, l                                          ; $41a5: $55
	add b                                            ; $41a6: $80
	ld a, e                                          ; $41a7: $7b
	ccf                                              ; $41a8: $3f
	rst FarCall                                          ; $41a9: $f7
	ccf                                              ; $41aa: $3f
	ei                                               ; $41ab: $fb
	ccf                                              ; $41ac: $3f
	rst SubAFromHL                                          ; $41ad: $d7
	rst $38                                          ; $41ae: $ff
	ccf                                              ; $41af: $3f
	ld a, $d7                                        ; $41b0: $3e $d7
	cp a                                             ; $41b2: $bf
	reti                                             ; $41b3: $d9


	sub $bb                                          ; $41b4: $d6 $bb
	or e                                             ; $41b6: $b3
	db $dd                                           ; $41b7: $dd
	push de                                          ; $41b8: $d5
	cp c                                             ; $41b9: $b9
	or l                                             ; $41ba: $b5
	reti                                             ; $41bb: $d9


	push de                                          ; $41bc: $d5
	cp c                                             ; $41bd: $b9
	cp d                                             ; $41be: $ba
	push de                                          ; $41bf: $d5
	db $d3                                           ; $41c0: $d3
	cp a                                             ; $41c1: $bf
	xor e                                            ; $41c2: $ab
	rst $38                                          ; $41c3: $ff
	db $f4                                           ; $41c4: $f4
	db $fd                                           ; $41c5: $fd
	sbc b                                            ; $41c6: $98
	add h                                            ; $41c7: $84
	db $fd                                           ; $41c8: $fd
	add d                                            ; $41c9: $82
	ccf                                              ; $41ca: $3f
	adc e                                            ; $41cb: $8b
	scf                                              ; $41cc: $37
	inc bc                                           ; $41cd: $03
	ld a, d                                          ; $41ce: $7a
	ld [hl+], a                                      ; $41cf: $22
	ld a, [hl]                                       ; $41d0: $7e
	inc [hl]                                         ; $41d1: $34
	add b                                            ; $41d2: $80
	ret z                                            ; $41d3: $c8

	rst SubAFromBC                                          ; $41d4: $e7
	ld l, b                                          ; $41d5: $68
	rst SubAFromBC                                          ; $41d6: $e7
	ldh [rIE], a                                     ; $41d7: $e0 $ff
	ld a, $fd                                        ; $41d9: $3e $fd
	sbc $3d                                          ; $41db: $de $3d
	ld e, $fd                                        ; $41dd: $1e $fd
	sbc [hl]                                         ; $41df: $9e
	inc a                                            ; $41e0: $3c
	ld e, $34                                        ; $41e1: $1e $34
	sub d                                            ; $41e3: $92
	db $e3                                           ; $41e4: $e3
	jp $cfe3                                         ; $41e5: $c3 $e3 $cf


	rst AddAOntoHL                                          ; $41e8: $ef
	sbc e                                            ; $41e9: $9b
	ld [hl], a                                       ; $41ea: $77
	rst SubAFromDE                                          ; $41eb: $df
	ccf                                              ; $41ec: $3f
	ld c, d                                          ; $41ed: $4a
	sub a                                            ; $41ee: $97
	ld h, [hl]                                       ; $41ef: $66
	sbc h                                            ; $41f0: $9c
	ld b, $8b                                        ; $41f1: $06 $8b
	inc e                                            ; $41f3: $1c
	ld l, e                                          ; $41f4: $6b
	db $d3                                           ; $41f5: $d3
	db $d3                                           ; $41f6: $d3
	db $e3                                           ; $41f7: $e3
	adc e                                            ; $41f8: $8b
	di                                               ; $41f9: $f3
	inc de                                           ; $41fa: $13
	and e                                            ; $41fb: $a3
	dec bc                                           ; $41fc: $0b
	or e                                             ; $41fd: $b3
	ld d, e                                          ; $41fe: $53
	and e                                            ; $41ff: $a3
	adc e                                            ; $4200: $8b
	ld [hl], e                                       ; $4201: $73
	inc bc                                           ; $4202: $03
	inc bc                                           ; $4203: $03
	and a                                            ; $4204: $a7
	ld a, a                                          ; $4205: $7f
	inc hl                                           ; $4206: $23
	ld a, d                                          ; $4207: $7a
	call nz, $839e                                   ; $4208: $c4 $9e $83
	ld h, e                                          ; $420b: $63
	db $fc                                           ; $420c: $fc
	sbc b                                            ; $420d: $98
	call z, $cef8                                    ; $420e: $cc $f8 $ce
	ld hl, sp-$03                                    ; $4211: $f8 $fd
	ld a, [$7bc7]                                    ; $4213: $fa $c7 $7b
	db $f4                                           ; $4216: $f4
	sbc l                                            ; $4217: $9d
	rst SubAFromHL                                          ; $4218: $d7
	rst AddAOntoHL                                          ; $4219: $ef
	ld a, e                                          ; $421a: $7b
	cp $89                                           ; $421b: $fe $89
	rst SubAFromBC                                          ; $421d: $e7
	db $fd                                           ; $421e: $fd
	pop af                                           ; $421f: $f1
	cp $cb                                           ; $4220: $fe $cb
	ld [hl], h                                       ; $4222: $74
	rst $38                                          ; $4223: $ff
	ld [hl], l                                       ; $4224: $75
	cp $c9                                           ; $4225: $fe $c9
	cp [hl]                                          ; $4227: $be
	srl h                                            ; $4228: $cb $3c
	jp z, $cb3f                                      ; $422a: $ca $3f $cb

	dec a                                            ; $422d: $3d
	ccf                                              ; $422e: $3f
	rst $38                                          ; $422f: $ff
	cp d                                             ; $4230: $ba
	rst $38                                          ; $4231: $ff
	dec [hl]                                         ; $4232: $35
	ld a, e                                          ; $4233: $7b
	ld l, e                                          ; $4234: $6b
	sbc [hl]                                         ; $4235: $9e
	ld a, a                                          ; $4236: $7f
	ld [hl], d                                       ; $4237: $72
	ld [de], a                                       ; $4238: $12
	ld a, [hl]                                       ; $4239: $7e
	dec b                                            ; $423a: $05
	ld a, [hl]                                       ; $423b: $7e
	call z, $fa7e                                    ; $423c: $cc $7e $fa
	sbc [hl]                                         ; $423f: $9e
	ld e, l                                          ; $4240: $5d
	ld a, e                                          ; $4241: $7b
	db $fc                                           ; $4242: $fc
	sub c                                            ; $4243: $91
	db $dd                                           ; $4244: $dd
	rst $38                                          ; $4245: $ff
	db $fd                                           ; $4246: $fd
	ld a, a                                          ; $4247: $7f
	db $fd                                           ; $4248: $fd
	xor a                                            ; $4249: $af
	db $fc                                           ; $424a: $fc
	ld d, a                                          ; $424b: $57
	jp $f3f9                                         ; $424c: $c3 $f9 $f3


	ld sp, hl                                        ; $424f: $f9
	db $eb                                           ; $4250: $eb
	pop af                                           ; $4251: $f1
	ld e, a                                          ; $4252: $5f
	cp $83                                           ; $4253: $fe $83
	adc e                                            ; $4255: $8b
	ld a, a                                          ; $4256: $7f
	ld e, [hl]                                       ; $4257: $5e
	cp a                                             ; $4258: $bf
	ld a, a                                          ; $4259: $7f
	rst $38                                          ; $425a: $ff
	and b                                            ; $425b: $a0
	rst $38                                          ; $425c: $ff
	inc de                                           ; $425d: $13
	ldh [$9a], a                                     ; $425e: $e0 $9a
	ld h, l                                          ; $4260: $65
	rst FarCall                                          ; $4261: $f7
	ld [rRAMG], sp                                   ; $4262: $08 $00 $00
	db $f4                                           ; $4265: $f4
	rst AddAOntoHL                                          ; $4266: $ef
	add sp, -$09                                     ; $4267: $e8 $f7
	ld sp, hl                                        ; $4269: $f9
	rst $38                                          ; $426a: $ff
	xor e                                            ; $426b: $ab
	push de                                          ; $426c: $d5
	ld d, l                                          ; $426d: $55
	dec hl                                           ; $426e: $2b
	xor e                                            ; $426f: $ab
	ld d, l                                          ; $4270: $55
	ld [hl], h                                       ; $4271: $74
	db $d3                                           ; $4272: $d3
	push de                                          ; $4273: $d5
	rst $38                                          ; $4274: $ff
	ld a, l                                          ; $4275: $7d
	ld [hl], h                                       ; $4276: $74
	ld a, e                                          ; $4277: $7b
	ldh a, [$9a]                                     ; $4278: $f0 $9a
	ldh a, [$fb]                                     ; $427a: $f0 $fb
	ldh a, [rIE]                                     ; $427c: $f0 $ff
	ldh a, [rPCM34]                                  ; $427e: $f0 $77
	di                                               ; $4280: $f3
	adc c                                            ; $4281: $89
	di                                               ; $4282: $f3
	cp $0f                                           ; $4283: $fe $0f
	cp $03                                           ; $4285: $fe $03
	ld b, $97                                        ; $4287: $06 $97
	rrca                                             ; $4289: $0f
	sbc a                                            ; $428a: $9f
	rrca                                             ; $428b: $0f
	sbc b                                            ; $428c: $98
	adc a                                            ; $428d: $8f
	or c                                             ; $428e: $b1
	adc a                                            ; $428f: $8f
	or e                                             ; $4290: $b3
	rrca                                             ; $4291: $0f
	cp a                                             ; $4292: $bf
	rrca                                             ; $4293: $0f
	dec a                                            ; $4294: $3d
	rrca                                             ; $4295: $0f
	ld a, [hl-]                                      ; $4296: $3a
	rrca                                             ; $4297: $0f
	halt                                             ; $4298: $76
	call z, $fc77                                    ; $4299: $cc $77 $fc
	sbc h                                            ; $429c: $9c
	ei                                               ; $429d: $fb
	cp a                                             ; $429e: $bf
	cp $79                                           ; $429f: $fe $79
	adc b                                            ; $42a1: $88
	ld a, a                                          ; $42a2: $7f
	ld a, a                                          ; $42a3: $7f
	sub l                                            ; $42a4: $95
	or l                                             ; $42a5: $b5
	set 4, b                                         ; $42a6: $cb $e0
	add b                                            ; $42a8: $80
	db $fc                                           ; $42a9: $fc
	add e                                            ; $42aa: $83
	nop                                              ; $42ab: $00
	add b                                            ; $42ac: $80
	ld d, l                                          ; $42ad: $55
	push de                                          ; $42ae: $d5
	ld a, b                                          ; $42af: $78
	inc hl                                           ; $42b0: $23
	ld a, h                                          ; $42b1: $7c
	inc sp                                           ; $42b2: $33
	sbc [hl]                                         ; $42b3: $9e
	xor d                                            ; $42b4: $aa
	ld a, d                                          ; $42b5: $7a
	call z, $e099                                    ; $42b6: $cc $99 $e0
	rra                                              ; $42b9: $1f
	ldh [$1f], a                                     ; $42ba: $e0 $1f
	inc b                                            ; $42bc: $04
	ld d, a                                          ; $42bd: $57
	ld a, c                                          ; $42be: $79
	add b                                            ; $42bf: $80
	ld [hl], a                                       ; $42c0: $77
	db $fc                                           ; $42c1: $fc
	ld a, a                                          ; $42c2: $7f
	ld d, a                                          ; $42c3: $57
	add c                                            ; $42c4: $81
	cp $57                                           ; $42c5: $fe $57
	ld a, a                                          ; $42c7: $7f
	cp a                                             ; $42c8: $bf
	ld e, $f7                                        ; $42c9: $1e $f7
	db $fd                                           ; $42cb: $fd
	ld a, a                                          ; $42cc: $7f
	sbc $77                                          ; $42cd: $de $77
	ld [$d57f], a                                    ; $42cf: $ea $7f $d5
	ld a, a                                          ; $42d2: $7f
	cp c                                             ; $42d3: $b9
	pop de                                           ; $42d4: $d1
	jp nc, $b0b0                                     ; $42d5: $d2 $b0 $b0

	ret nc                                           ; $42d8: $d0

	rst SubAFromDE                                          ; $42d9: $df
	or b                                             ; $42da: $b0
	cp a                                             ; $42db: $bf
	jp c, $b5df                                      ; $42dc: $da $df $b5

	xor a                                            ; $42df: $af
	ld a, [$f55f]                                    ; $42e0: $fa $5f $f5
	ld [hl], c                                       ; $42e3: $71
	db $d3                                           ; $42e4: $d3
	ld [hl], h                                       ; $42e5: $74
	ld b, l                                          ; $42e6: $45
	ld [hl], l                                       ; $42e7: $75
	add hl, sp                                       ; $42e8: $39
	ld a, e                                          ; $42e9: $7b
	db $fc                                           ; $42ea: $fc
	sbc c                                            ; $42eb: $99
	ld [de], a                                       ; $42ec: $12
	ld [hl], $12                                     ; $42ed: $36 $12
	jr nc, jr_044_4350                               ; $42ef: $30 $5f

	jr nz, jr_044_4352                               ; $42f1: $20 $5f

	ldh a, [$99]                                     ; $42f3: $f0 $99
	inc c                                            ; $42f5: $0c
	jr jr_044_4314                                   ; $42f6: $18 $1c

	jr jr_044_4302                                   ; $42f8: $18 $08

	jr jr_044_435b                                   ; $42fa: $18 $5f

	ldh a, [$dd]                                     ; $42fc: $f0 $dd
	inc bc                                           ; $42fe: $03
	sbc c                                            ; $42ff: $99
	rlca                                             ; $4300: $07
	inc bc                                           ; $4301: $03

jr_044_4302:
	rst $38                                          ; $4302: $ff
	inc bc                                           ; $4303: $03
	rst $38                                          ; $4304: $ff
	xor e                                            ; $4305: $ab
	ld a, c                                          ; $4306: $79
	cp e                                             ; $4307: $bb
	ld a, e                                          ; $4308: $7b
	db $fc                                           ; $4309: $fc
	sbc [hl]                                         ; $430a: $9e
	daa                                              ; $430b: $27
	ld a, c                                          ; $430c: $79
	adc h                                            ; $430d: $8c
	ld a, [hl]                                       ; $430e: $7e
	cp h                                             ; $430f: $bc
	ld a, l                                          ; $4310: $7d
	add h                                            ; $4311: $84
	ld h, [hl]                                       ; $4312: $66
	ret nz                                           ; $4313: $c0

jr_044_4314:
	ld a, [hl]                                       ; $4314: $7e
	adc $8d                                          ; $4315: $ce $8d
	pop de                                           ; $4317: $d1
	and $d0                                          ; $4318: $e6 $d0
	ldh [$df], a                                     ; $431a: $e0 $df
	ldh [$df], a                                     ; $431c: $e0 $df
	push af                                          ; $431e: $f5
	rst SubAFromDE                                          ; $431f: $df
	ld a, [$f5df]                                    ; $4320: $fa $df $f5
	rst $38                                          ; $4323: $ff
	ld [$3cfb], a                                    ; $4324: $ea $fb $3c
	rrca                                             ; $4327: $0f
	jr nc, @+$75                                     ; $4328: $30 $73

	and b                                            ; $432a: $a0
	ld [hl], e                                       ; $432b: $73
	jp nz, $fc7b                                     ; $432c: $c2 $7b $fc

	sbc e                                            ; $432f: $9b
	ld a, [bc]                                       ; $4330: $0a
	rst $38                                          ; $4331: $ff
	nop                                              ; $4332: $00
	dec d                                            ; $4333: $15
	ld e, e                                          ; $4334: $5b
	ldh a, [rPCM12]                                  ; $4335: $f0 $76
	call z, Call_044_5d9a                            ; $4337: $cc $9a $5d
	rrca                                             ; $433a: $0f
	db $fc                                           ; $433b: $fc
	rlca                                             ; $433c: $07
	db $fd                                           ; $433d: $fd
	ld a, e                                          ; $433e: $7b
	ld d, e                                          ; $433f: $53
	ld [hl], a                                       ; $4340: $77
	xor [hl]                                         ; $4341: $ae
	ld a, l                                          ; $4342: $7d
	adc [hl]                                         ; $4343: $8e
	ld a, l                                          ; $4344: $7d
	adc d                                            ; $4345: $8a
	sbc [hl]                                         ; $4346: $9e
	ld b, e                                          ; $4347: $43
	ld a, d                                          ; $4348: $7a
	cp h                                             ; $4349: $bc
	sbc [hl]                                         ; $434a: $9e
	ld l, e                                          ; $434b: $6b
	ld a, d                                          ; $434c: $7a
	call nz, $fc77                                   ; $434d: $c4 $77 $fc

jr_044_4350:
	ld b, a                                          ; $4350: $47
	nop                                              ; $4351: $00

jr_044_4352:
	ret nc                                           ; $4352: $d0

	ld h, [hl]                                       ; $4353: $66
	sbc c                                            ; $4354: $99
	ld d, h                                          ; $4355: $54
	ld b, [hl]                                       ; $4356: $46
	ld h, [hl]                                       ; $4357: $66
	ld d, l                                          ; $4358: $55
	ld h, [hl]                                       ; $4359: $66
	ld h, [hl]                                       ; $435a: $66

jr_044_435b:
	call c, $9944                                    ; $435b: $dc $44 $99
	ld b, [hl]                                       ; $435e: $46
	ld h, e                                          ; $435f: $63
	ld d, l                                          ; $4360: $55
	ld d, e                                          ; $4361: $53
	ld d, [hl]                                       ; $4362: $56
	ld d, h                                          ; $4363: $54
	db $db                                           ; $4364: $db
	ld b, h                                          ; $4365: $44
	sbc e                                            ; $4366: $9b
	inc sp                                           ; $4367: $33
	dec [hl]                                         ; $4368: $35
	ld d, [hl]                                       ; $4369: $56
	ld h, h                                          ; $436a: $64
	db $db                                           ; $436b: $db
	ld b, h                                          ; $436c: $44
	sbc [hl]                                         ; $436d: $9e
	inc [hl]                                         ; $436e: $34
	ret c                                            ; $436f: $d8

	ld b, h                                          ; $4370: $44
	rst SubAFromDE                                          ; $4371: $df
	inc sp                                           ; $4372: $33
	ld e, a                                          ; $4373: $5f
	or $8f                                           ; $4374: $f6 $8f
	scf                                              ; $4376: $37
	inc sp                                           ; $4377: $33
	ld [hl], l                                       ; $4378: $75
	ld d, l                                          ; $4379: $55
	ld b, h                                          ; $437a: $44
	ld b, h                                          ; $437b: $44
	ld d, l                                          ; $437c: $55
	ld d, h                                          ; $437d: $54
	inc sp                                           ; $437e: $33
	scf                                              ; $437f: $37
	ld [hl], a                                       ; $4380: $77
	ld [hl], a                                       ; $4381: $77
	ld [hl], l                                       ; $4382: $75
	ld d, l                                          ; $4383: $55
	ld d, h                                          ; $4384: $54
	ld b, l                                          ; $4385: $45
	ld a, e                                          ; $4386: $7b
	or $99                                           ; $4387: $f6 $99
	inc [hl]                                         ; $4389: $34
	ld b, a                                          ; $438a: $47
	scf                                              ; $438b: $37
	ld [hl], l                                       ; $438c: $75
	ld d, l                                          ; $438d: $55
	ld d, l                                          ; $438e: $55
	ld a, e                                          ; $438f: $7b
	or $9c                                           ; $4390: $f6 $9c
	ld d, l                                          ; $4392: $55
	ld d, a                                          ; $4393: $57
	ld [hl], a                                       ; $4394: $77
	ld l, e                                          ; $4395: $6b
	or $2a                                           ; $4396: $f6 $2a
	rlca                                             ; $4398: $07
	db $dd                                           ; $4399: $dd
	rst $38                                          ; $439a: $ff
	add b                                            ; $439b: $80
	cp $ff                                           ; $439c: $fe $ff
	push af                                          ; $439e: $f5
	rst $38                                          ; $439f: $ff
	cp a                                             ; $43a0: $bf
	ld [$d07a], a                                    ; $43a1: $ea $7a $d0
	or l                                             ; $43a4: $b5
	ldh [$2a], a                                     ; $43a5: $e0 $2a
	add c                                            ; $43a7: $81
	ld [$55ff], a                                    ; $43a8: $ea $ff $55
	cp $ae                                           ; $43ab: $fe $ae
	pop af                                           ; $43ad: $f1
	ld d, l                                          ; $43ae: $55
	ld [$a45b], a                                    ; $43af: $ea $5b $a4
	xor l                                            ; $43b2: $ad
	ld [de], a                                       ; $43b3: $12
	ld d, d                                          ; $43b4: $52
	xor l                                            ; $43b5: $ad
	xor l                                            ; $43b6: $ad
	ld a, d                                          ; $43b7: $7a
	xor d                                            ; $43b8: $aa
	db $fd                                           ; $43b9: $fd
	ld d, l                                          ; $43ba: $55
	add b                                            ; $43bb: $80
	ld a, [$a45a]                                    ; $43bc: $fa $5a $a4
	or [hl]                                          ; $43bf: $b6
	ld c, c                                          ; $43c0: $49
	ld e, a                                          ; $43c1: $5f
	and b                                            ; $43c2: $a0
	xor d                                            ; $43c3: $aa
	ld d, l                                          ; $43c4: $55
	ld d, l                                          ; $43c5: $55
	xor b                                            ; $43c6: $a8
	ld [$fa00], a                                    ; $43c7: $ea $00 $fa
	nop                                              ; $43ca: $00
	push de                                          ; $43cb: $d5
	nop                                              ; $43cc: $00
	cp a                                             ; $43cd: $bf
	nop                                              ; $43ce: $00
	xor a                                            ; $43cf: $af
	ld d, b                                          ; $43d0: $50
	ld d, l                                          ; $43d1: $55
	nop                                              ; $43d2: $00
	add d                                            ; $43d3: $82
	nop                                              ; $43d4: $00
	ld d, l                                          ; $43d5: $55
	nop                                              ; $43d6: $00
	cp $00                                           ; $43d7: $fe $00
	and b                                            ; $43d9: $a0
	rrca                                             ; $43da: $0f
	sbc d                                            ; $43db: $9a
	di                                               ; $43dc: $f3
	rrca                                             ; $43dd: $0f
	ld [$ff15], a                                    ; $43de: $ea $15 $ff
	ld a, e                                          ; $43e1: $7b
	db $f4                                           ; $43e2: $f4
	sbc [hl]                                         ; $43e3: $9e
	xor b                                            ; $43e4: $a8
	db $fc                                           ; $43e5: $fc
	sub a                                            ; $43e6: $97
	ld l, $ff                                        ; $43e7: $2e $ff
	ld d, c                                          ; $43e9: $51
	cp $aa                                           ; $43ea: $fe $aa
	ld d, l                                          ; $43ec: $55
	ld e, a                                          ; $43ed: $5f
	and b                                            ; $43ee: $a0
	ld [hl], a                                       ; $43ef: $77
	ldh [$fc], a                                     ; $43f0: $e0 $fc
	sub e                                            ; $43f2: $93
	rst $38                                          ; $43f3: $ff
	ld e, a                                          ; $43f4: $5f
	and b                                            ; $43f5: $a0
	xor a                                            ; $43f6: $af
	ld d, b                                          ; $43f7: $50
	ld a, [$5d00]                                    ; $43f8: $fa $00 $5d
	nop                                              ; $43fb: $00
	xor d                                            ; $43fc: $aa
	nop                                              ; $43fd: $00
	dec b                                            ; $43fe: $05
	cp $96                                           ; $43ff: $fe $96
	ld a, a                                          ; $4401: $7f
	add b                                            ; $4402: $80
	xor l                                            ; $4403: $ad
	ld [bc], a                                       ; $4404: $02
	ld d, d                                          ; $4405: $52

jr_044_4406:
	dec c                                            ; $4406: $0d
	cp d                                             ; $4407: $ba
	dec b                                            ; $4408: $05
	ld [hl], a                                       ; $4409: $77
	ld a, e                                          ; $440a: $7b
	ldh a, [$7f]                                     ; $440b: $f0 $7f
	call c, $0a9d                                    ; $440d: $dc $9d $0a
	nop                                              ; $4410: $00
	ld a, e                                          ; $4411: $7b
	add $df                                          ; $4412: $c6 $df
	xor d                                            ; $4414: $aa
	add b                                            ; $4415: $80
	ld d, l                                          ; $4416: $55
	add a                                            ; $4417: $87
	ld a, a                                          ; $4418: $7f
	ccf                                              ; $4419: $3f
	rst $38                                          ; $441a: $ff
	rst SubAFromHL                                          ; $441b: $d7
	ccf                                              ; $441c: $3f
	dec l                                            ; $441d: $2d
	ld d, d                                          ; $441e: $52
	ld a, [hl+]                                      ; $441f: $2a
	nop                                              ; $4420: $00
	rra                                              ; $4421: $1f
	rst $38                                          ; $4422: $ff
	ld b, c                                          ; $4423: $41
	cp a                                             ; $4424: $bf
	jr nz, jr_044_4406                               ; $4425: $20 $df

	ld d, l                                          ; $4427: $55
	ld [$e0b7], a                                    ; $4428: $ea $b7 $e0
	ld l, c                                          ; $442b: $69
	add b                                            ; $442c: $80
	jp nc, $8100                                     ; $442d: $d2 $00 $81

	ld [hl], b                                       ; $4430: $70
	rst $38                                          ; $4431: $ff
	rst $38                                          ; $4432: $ff
	push de                                          ; $4433: $d5
	rst $38                                          ; $4434: $ff
	sbc e                                            ; $4435: $9b
	ld a, [bc]                                       ; $4436: $0a
	push af                                          ; $4437: $f5
	ld d, l                                          ; $4438: $55
	xor d                                            ; $4439: $aa
	ld a, e                                          ; $443a: $7b
	adc [hl]                                         ; $443b: $8e
	adc e                                            ; $443c: $8b
	xor d                                            ; $443d: $aa
	cp d                                             ; $443e: $ba

jr_044_443f:
	ld b, h                                          ; $443f: $44
	push de                                          ; $4440: $d5
	jr nz, jr_044_443f                               ; $4441: $20 $fc

	rst $38                                          ; $4443: $ff
	ld b, c                                          ; $4444: $41
	cp $80                                           ; $4445: $fe $80
	ld a, a                                          ; $4447: $7f
	ld d, l                                          ; $4448: $55
	cp [hl]                                          ; $4449: $be
	xor e                                            ; $444a: $ab
	ld [hl], h                                       ; $444b: $74
	ld a, a                                          ; $444c: $7f
	ret nz                                           ; $444d: $c0

	xor d                                            ; $444e: $aa
	nop                                              ; $444f: $00
	ld d, h                                          ; $4450: $54
	ld a, e                                          ; $4451: $7b
	and b                                            ; $4452: $a0
	ld a, a                                          ; $4453: $7f
	add sp, -$68                                     ; $4454: $e8 $98
	inc bc                                           ; $4456: $03
	db $fc                                           ; $4457: $fc
	ld d, l                                          ; $4458: $55
	xor d                                            ; $4459: $aa
	ld a, [$5505]                                    ; $445a: $fa $05 $55
	ld a, e                                          ; $445d: $7b
	xor [hl]                                         ; $445e: $ae
	ld [hl], a                                       ; $445f: $77
	sub b                                            ; $4460: $90
	ld a, a                                          ; $4461: $7f
	db $f4                                           ; $4462: $f4
	sbc c                                            ; $4463: $99
	cp $01                                           ; $4464: $fe $01
	rst $38                                          ; $4466: $ff
	nop                                              ; $4467: $00
	sbc a                                            ; $4468: $9f
	ld h, b                                          ; $4469: $60
	ld e, a                                          ; $446a: $5f
	ldh a, [$7f]                                     ; $446b: $f0 $7f
	and b                                            ; $446d: $a0
	ld a, a                                          ; $446e: $7f
	ldh a, [$7f]                                     ; $446f: $f0 $7f
	cp $9e                                           ; $4471: $fe $9e
	ld d, a                                          ; $4473: $57
	ld l, a                                          ; $4474: $6f
	ld a, [hl]                                       ; $4475: $7e
	ld h, e                                          ; $4476: $63
	ldh a, [$7f]                                     ; $4477: $f0 $7f
	cp $7b                                           ; $4479: $fe $7b
	ld a, [hl]                                       ; $447b: $7e
	adc [hl]                                         ; $447c: $8e
	ld [$ff00], sp                                   ; $447d: $08 $00 $ff
	ld b, b                                          ; $4480: $40
	cp a                                             ; $4481: $bf
	xor b                                            ; $4482: $a8
	ld d, a                                          ; $4483: $57
	push de                                          ; $4484: $d5
	ld a, [hl+]                                      ; $4485: $2a
	cp $01                                           ; $4486: $fe $01
	db $fc                                           ; $4488: $fc
	inc bc                                           ; $4489: $03
	cp e                                             ; $448a: $bb
	ld b, l                                          ; $448b: $45
	ld d, a                                          ; $448c: $57
	rst AddAOntoHL                                          ; $448d: $ef
	ld [hl], a                                       ; $448e: $77
	rst SubAFromBC                                          ; $448f: $e7
	ld [hl], a                                       ; $4490: $77
	ld b, b                                          ; $4491: $40
	sub [hl]                                         ; $4492: $96
	push af                                          ; $4493: $f5
	ld a, [bc]                                       ; $4494: $0a
	ld [$d41f], a                                    ; $4495: $ea $1f $d4
	ld a, a                                          ; $4498: $7f
	ld [hl-], a                                      ; $4499: $32
	push hl                                          ; $449a: $e5
	ld [bc], a                                       ; $449b: $02
	ld [hl], e                                       ; $449c: $73
	ldh a, [$7f]                                     ; $449d: $f0 $7f
	ldh a, [c]                                       ; $449f: $f2
	ld a, a                                          ; $44a0: $7f
	ld c, b                                          ; $44a1: $48
	add d                                            ; $44a2: $82
	cp l                                             ; $44a3: $bd
	ldh [c], a                                       ; $44a4: $e2
	ret nz                                           ; $44a5: $c0

	ccf                                              ; $44a6: $3f
	xor a                                            ; $44a7: $af
	ld d, b                                          ; $44a8: $50
	xor a                                            ; $44a9: $af
	rst $38                                          ; $44aa: $ff
	ld e, a                                          ; $44ab: $5f
	rst $38                                          ; $44ac: $ff
	and a                                            ; $44ad: $a7
	ld e, a                                          ; $44ae: $5f
	ld d, a                                          ; $44af: $57
	xor a                                            ; $44b0: $af
	xor [hl]                                         ; $44b1: $ae
	ld e, a                                          ; $44b2: $5f
	ld d, [hl]                                       ; $44b3: $56
	cp l                                             ; $44b4: $bd
	dec d                                            ; $44b5: $15
	ld [$00f7], a                                    ; $44b6: $ea $f7 $00
	ld d, b                                          ; $44b9: $50
	ld d, a                                          ; $44ba: $57
	and d                                            ; $44bb: $a2
	rst $38                                          ; $44bc: $ff
	dec d                                            ; $44bd: $15
	rst $38                                          ; $44be: $ff
	xor [hl]                                         ; $44bf: $ae
	ld a, e                                          ; $44c0: $7b
	ld [$e67f], a                                    ; $44c1: $ea $7f $e6
	adc l                                            ; $44c4: $8d
	ld a, a                                          ; $44c5: $7f
	rst $38                                          ; $44c6: $ff
	xor d                                            ; $44c7: $aa
	rst $38                                          ; $44c8: $ff
	ld e, c                                          ; $44c9: $59
	db $f4                                           ; $44ca: $f4
	ld [$57f4], a                                    ; $44cb: $ea $f4 $57
	add sp, -$41                                     ; $44ce: $e8 $bf
	ld [$ff55], a                                    ; $44d0: $ea $55 $ff
	xor e                                            ; $44d3: $ab
	cp $f7                                           ; $44d4: $fe $f7
	rst $38                                          ; $44d6: $ff
	ld a, d                                          ; $44d7: $7a
	or d                                             ; $44d8: $b2
	ld a, d                                          ; $44d9: $7a
	add sp, -$6d                                     ; $44da: $e8 $93
	ret nc                                           ; $44dc: $d0

	nop                                              ; $44dd: $00
	ld [$d700], a                                    ; $44de: $ea $00 $d7
	ld l, b                                          ; $44e1: $68
	add d                                            ; $44e2: $82
	db $fd                                           ; $44e3: $fd
	dec l                                            ; $44e4: $2d
	ld a, [$fd57]                                    ; $44e5: $fa $57 $fd
	ld [hl], a                                       ; $44e8: $77
	inc c                                            ; $44e9: $0c
	db $fd                                           ; $44ea: $fd
	ld a, a                                          ; $44eb: $7f
	halt                                             ; $44ec: $76
	ld a, e                                          ; $44ed: $7b
	ld b, d                                          ; $44ee: $42
	sub a                                            ; $44ef: $97
	xor e                                            ; $44f0: $ab
	ei                                               ; $44f1: $fb
	ld d, l                                          ; $44f2: $55
	ld b, l                                          ; $44f3: $45
	jr nz, @-$5e                                     ; $44f4: $20 $a0

	ld d, b                                          ; $44f6: $50
	nop                                              ; $44f7: $00
	ld a, e                                          ; $44f8: $7b
	db $f4                                           ; $44f9: $f4
	sbc l                                            ; $44fa: $9d
	xor e                                            ; $44fb: $ab
	ld d, h                                          ; $44fc: $54
	ld a, e                                          ; $44fd: $7b
	ld l, b                                          ; $44fe: $68
	ld a, a                                          ; $44ff: $7f
	jr z, jr_044_4581                                ; $4500: $28 $7f

	cp [hl]                                          ; $4502: $be
	sbc l                                            ; $4503: $9d
	nop                                              ; $4504: $00
	ld b, b                                          ; $4505: $40
	cp $9e                                           ; $4506: $fe $9e
	and d                                            ; $4508: $a2
	ld [hl], d                                       ; $4509: $72
	and h                                            ; $450a: $a4
	sbc e                                            ; $450b: $9b
	add c                                            ; $450c: $81
	cp $54                                           ; $450d: $fe $54
	rst $38                                          ; $450f: $ff
	ld l, a                                          ; $4510: $6f
	call nc, $2a92                                   ; $4511: $d4 $92 $2a
	dec b                                            ; $4514: $05
	dec b                                            ; $4515: $05
	ld [bc], a                                       ; $4516: $02
	ld a, [bc]                                       ; $4517: $0a
	ld bc, $0302                                     ; $4518: $01 $02 $03
	xor c                                            ; $451b: $a9
	xor c                                            ; $451c: $a9
	nop                                              ; $451d: $00
	nop                                              ; $451e: $00
	ld a, [hl+]                                      ; $451f: $2a
	ld [hl], e                                       ; $4520: $73
	db $fd                                           ; $4521: $fd
	sbc d                                            ; $4522: $9a
	nop                                              ; $4523: $00
	add b                                            ; $4524: $80
	add b                                            ; $4525: $80
	ld d, l                                          ; $4526: $55
	push af                                          ; $4527: $f5
	ld a, e                                          ; $4528: $7b
	scf                                              ; $4529: $37
	sbc c                                            ; $452a: $99
	dec hl                                           ; $452b: $2b
	rst $38                                          ; $452c: $ff
	dec b                                            ; $452d: $05
	cp a                                             ; $452e: $bf
	ld [bc], a                                       ; $452f: $02
	ld e, a                                          ; $4530: $5f
	ld a, e                                          ; $4531: $7b
	cp a                                             ; $4532: $bf
	sub d                                            ; $4533: $92
	dec d                                            ; $4534: $15
	ld b, b                                          ; $4535: $40
	ld a, [hl+]                                      ; $4536: $2a
	xor d                                            ; $4537: $aa
	ld b, b                                          ; $4538: $40
	ld d, l                                          ; $4539: $55
	xor d                                            ; $453a: $aa
	ldh [$fc], a                                     ; $453b: $e0 $fc
	ld b, b                                          ; $453d: $40
	ld sp, hl                                        ; $453e: $f9
	and b                                            ; $453f: $a0
	rst $38                                          ; $4540: $ff
	ld a, e                                          ; $4541: $7b
	adc e                                            ; $4542: $8b
	ld a, [hl]                                       ; $4543: $7e
	push hl                                          ; $4544: $e5
	ld a, [hl]                                       ; $4545: $7e
	ld a, a                                          ; $4546: $7f
	sbc h                                            ; $4547: $9c
	rlca                                             ; $4548: $07
	and b                                            ; $4549: $a0
	inc bc                                           ; $454a: $03
	ld a, d                                          ; $454b: $7a
	ld l, d                                          ; $454c: $6a
	sbc [hl]                                         ; $454d: $9e
	ret nz                                           ; $454e: $c0

	ld a, e                                          ; $454f: $7b
	cp $ff                                           ; $4550: $fe $ff
	ld a, a                                          ; $4552: $7f
	sbc d                                            ; $4553: $9a
	ld a, a                                          ; $4554: $7f
	push af                                          ; $4555: $f5
	sbc h                                            ; $4556: $9c
	ldh a, [rP1]                                     ; $4557: $f0 $00
	and b                                            ; $4559: $a0
	ldh [$c1], a                                     ; $455a: $e0 $c1
	sbc d                                            ; $455c: $9a
	ld a, [hl+]                                      ; $455d: $2a
	dec e                                            ; $455e: $1d
	dec b                                            ; $455f: $05
	nop                                              ; $4560: $00
	ld [bc], a                                       ; $4561: $02
	or $7f                                           ; $4562: $f6 $7f
	ld c, h                                          ; $4564: $4c
	sbc e                                            ; $4565: $9b
	push de                                          ; $4566: $d5
	ccf                                              ; $4567: $3f
	xor d                                            ; $4568: $aa
	dec d                                            ; $4569: $15
	halt                                             ; $456a: $76
	ld h, $fb                                        ; $456b: $26 $fb
	sbc e                                            ; $456d: $9b
	xor c                                            ; $456e: $a9
	rst SubAFromHL                                          ; $456f: $d7
	ld d, a                                          ; $4570: $57
	cp a                                             ; $4571: $bf
	ld a, e                                          ; $4572: $7b
	jr c, @-$60                                      ; $4573: $38 $9e

	ld c, $77                                        ; $4575: $0e $77
	ld e, l                                          ; $4577: $5d
	db $fd                                           ; $4578: $fd
	ld a, [hl]                                       ; $4579: $7e
	cp $7e                                           ; $457a: $fe $7e
	ld b, b                                          ; $457c: $40
	sbc d                                            ; $457d: $9a
	ld a, [hl+]                                      ; $457e: $2a
	sub l                                            ; $457f: $95
	ld d, l                                          ; $4580: $55

jr_044_4581:
	nop                                              ; $4581: $00
	adc d                                            ; $4582: $8a
	ld a, d                                          ; $4583: $7a
	add b                                            ; $4584: $80
	ld a, l                                          ; $4585: $7d
	ret z                                            ; $4586: $c8

	adc l                                            ; $4587: $8d
	rlca                                             ; $4588: $07
	nop                                              ; $4589: $00
	and b                                            ; $458a: $a0
	rst SubAFromDE                                          ; $458b: $df
	ld d, h                                          ; $458c: $54
	xor e                                            ; $458d: $ab
	cp [hl]                                          ; $458e: $be
	ld b, c                                          ; $458f: $41
	sub h                                            ; $4590: $94
	dec bc                                           ; $4591: $0b
	ldh [$1f], a                                     ; $4592: $e0 $1f
	push af                                          ; $4594: $f5
	ld a, [bc]                                       ; $4595: $0a
	rst $38                                          ; $4596: $ff
	nop                                              ; $4597: $00
	di                                               ; $4598: $f3
	rrca                                             ; $4599: $0f
	ld a, e                                          ; $459a: $7b
	ld c, $7a                                        ; $459b: $0e $7a
	call nz, $089b                                   ; $459d: $c4 $9b $08
	rst $38                                          ; $45a0: $ff
	ld d, c                                          ; $45a1: $51
	xor [hl]                                         ; $45a2: $ae
	ld a, c                                          ; $45a3: $79
	and b                                            ; $45a4: $a0
	halt                                             ; $45a5: $76
	ld l, [hl]                                       ; $45a6: $6e
	ld a, a                                          ; $45a7: $7f
	ldh a, [$7d]                                     ; $45a8: $f0 $7d
	sbc a                                            ; $45aa: $9f
	adc [hl]                                         ; $45ab: $8e
	rst $38                                          ; $45ac: $ff
	ld [bc], a                                       ; $45ad: $02
	db $fd                                           ; $45ae: $fd
	ld d, l                                          ; $45af: $55
	xor d                                            ; $45b0: $aa
	rst $38                                          ; $45b1: $ff
	nop                                              ; $45b2: $00
	ld e, a                                          ; $45b3: $5f
	nop                                              ; $45b4: $00
	xor e                                            ; $45b5: $ab
	nop                                              ; $45b6: $00
	db $f4                                           ; $45b7: $f4
	xor e                                            ; $45b8: $ab
	xor e                                            ; $45b9: $ab
	ld d, l                                          ; $45ba: $55
	ld a, a                                          ; $45bb: $7f
	add b                                            ; $45bc: $80
	halt                                             ; $45bd: $76
	ld d, d                                          ; $45be: $52
	sbc e                                            ; $45bf: $9b
	ld a, [hl+]                                      ; $45c0: $2a
	push de                                          ; $45c1: $d5
	push de                                          ; $45c2: $d5
	ld a, [hl+]                                      ; $45c3: $2a
	ld a, e                                          ; $45c4: $7b
	ld a, [$547d]                                    ; $45c5: $fa $7d $54
	adc d                                            ; $45c8: $8a
	ld e, a                                          ; $45c9: $5f
	ldh [$1f], a                                     ; $45ca: $e0 $1f
	sub l                                            ; $45cc: $95
	ld l, d                                          ; $45cd: $6a
	sbc $21                                          ; $45ce: $de $21
	xor d                                            ; $45d0: $aa
	ld d, b                                          ; $45d1: $50
	ld [hl], l                                       ; $45d2: $75
	add b                                            ; $45d3: $80
	add sp, $00                                      ; $45d4: $e8 $00
	add b                                            ; $45d6: $80
	rst $38                                          ; $45d7: $ff
	dec d                                            ; $45d8: $15
	ld [$c03f], a                                    ; $45d9: $ea $3f $c0
	nop                                              ; $45dc: $00
	rst $38                                          ; $45dd: $ff
	ld a, d                                          ; $45de: $7a
	ret nz                                           ; $45df: $c0

	ld [hl], c                                       ; $45e0: $71
	xor [hl]                                         ; $45e1: $ae
	sub h                                            ; $45e2: $94
	cp [hl]                                          ; $45e3: $be
	rst $38                                          ; $45e4: $ff
	ld d, b                                          ; $45e5: $50
	xor a                                            ; $45e6: $af
	xor b                                            ; $45e7: $a8
	rlca                                             ; $45e8: $07
	ld d, h                                          ; $45e9: $54
	add e                                            ; $45ea: $83
	xor d                                            ; $45eb: $aa
	ld bc, $7a55                                     ; $45ec: $01 $55 $7a
	cp d                                             ; $45ef: $ba
	add [hl]                                         ; $45f0: $86
	ld d, c                                          ; $45f1: $51
	nop                                              ; $45f2: $00
	rst $38                                          ; $45f3: $ff
	rst $38                                          ; $45f4: $ff
	xor d                                            ; $45f5: $aa

jr_044_45f6:
	push af                                          ; $45f6: $f5
	rla                                              ; $45f7: $17
	add sp, $28                                      ; $45f8: $e8 $28
	call nc, Call_044_6098                           ; $45fa: $d4 $98 $60
	ld l, b                                          ; $45fd: $68
	sub l                                            ; $45fe: $95
	push bc                                          ; $45ff: $c5
	ld a, [hl-]                                      ; $4600: $3a
	ldh [$1f], a                                     ; $4601: $e0 $1f
	rst $38                                          ; $4603: $ff
	rst $38                                          ; $4604: $ff
	cp l                                             ; $4605: $bd
	ld d, a                                          ; $4606: $57
	sub $2b                                          ; $4607: $d6 $2b
	dec hl                                           ; $4609: $2b
	ld a, d                                          ; $460a: $7a
	xor h                                            ; $460b: $ac
	sbc d                                            ; $460c: $9a
	add b                                            ; $460d: $80
	nop                                              ; $460e: $00
	ld b, b                                          ; $460f: $40
	xor b                                            ; $4610: $a8
	jr z, @+$7d                                      ; $4611: $28 $7b

	sub h                                            ; $4613: $94
	ld a, [hl]                                       ; $4614: $7e
	ld b, d                                          ; $4615: $42
	sbc c                                            ; $4616: $99
	adc d                                            ; $4617: $8a
	ld a, a                                          ; $4618: $7f
	ld l, d                                          ; $4619: $6a
	sub l                                            ; $461a: $95
	rst SubAFromHL                                          ; $461b: $d7

jr_044_461c:
	jr z, jr_044_461c                                ; $461c: $28 $fe

	ld a, l                                          ; $461e: $7d
	ldh a, [c]                                       ; $461f: $f2
	sub h                                            ; $4620: $94
	ld d, l                                          ; $4621: $55
	ld d, b                                          ; $4622: $50
	and l                                            ; $4623: $a5
	jr nz, jr_044_45f6                               ; $4624: $20 $d0

	ret nz                                           ; $4626: $c0

	cp e                                             ; $4627: $bb
	add b                                            ; $4628: $80
	ld b, b                                          ; $4629: $40
	nop                                              ; $462a: $00
	add c                                            ; $462b: $81
	rst FarCall                                          ; $462c: $f7
	sbc [hl]                                         ; $462d: $9e
	ld bc, $77f2                                     ; $462e: $01 $f2 $77
	sub [hl]                                         ; $4631: $96
	sbc [hl]                                         ; $4632: $9e
	dec d                                            ; $4633: $15
	db $fc                                           ; $4634: $fc
	sbc [hl]                                         ; $4635: $9e
	db $10                                           ; $4636: $10
	ld h, [hl]                                       ; $4637: $66
	ld a, [$a17a]                                    ; $4638: $fa $7a $a1
	ldh [$cd], a                                     ; $463b: $e0 $cd
	ld e, [hl]                                       ; $463d: $5e
	ret z                                            ; $463e: $c8

	ld a, l                                          ; $463f: $7d
	ld [$119e], a                                    ; $4640: $ea $9e $11
	ld e, e                                          ; $4643: $5b
	db $f4                                           ; $4644: $f4
	ld a, a                                          ; $4645: $7f
	ld b, $9c                                        ; $4646: $06 $9c
	or l                                             ; $4648: $b5
	ld a, [bc]                                       ; $4649: $0a
	ld [hl], a                                       ; $464a: $77
	ld a, e                                          ; $464b: $7b
	ld hl, sp+$7f                                    ; $464c: $f8 $7f
	sub [hl]                                         ; $464e: $96
	ld a, [hl]                                       ; $464f: $7e
	sub h                                            ; $4650: $94
	ld a, a                                          ; $4651: $7f
	db $fc                                           ; $4652: $fc
	ld a, [hl]                                       ; $4653: $7e
	ld a, [$f28c]                                    ; $4654: $fa $8c $f2
	dec c                                            ; $4657: $0d
	nop                                              ; $4658: $00
	rst $38                                          ; $4659: $ff
	ret                                              ; $465a: $c9


	nop                                              ; $465b: $00
	add hl, hl                                       ; $465c: $29
	add b                                            ; $465d: $80
	ld d, l                                          ; $465e: $55
	nop                                              ; $465f: $00
	db $fc                                           ; $4660: $fc
	inc bc                                           ; $4661: $03
	ld a, [$d505]                                    ; $4662: $fa $05 $d5
	cpl                                              ; $4665: $2f
	xor a                                            ; $4666: $af
	ld a, a                                          ; $4667: $7f
	ld d, a                                          ; $4668: $57
	ld [hl], l                                       ; $4669: $75
	ld l, b                                          ; $466a: $68
	ld a, e                                          ; $466b: $7b
	db $e4                                           ; $466c: $e4
	ld a, a                                          ; $466d: $7f
	cp $fa                                           ; $466e: $fe $fa
	ld a, e                                          ; $4670: $7b
	ldh a, [rPCM12]                                  ; $4671: $f0 $76
	or h                                             ; $4673: $b4
	rlca                                             ; $4674: $07
	ldh a, [$75]                                     ; $4675: $f0 $75
	and d                                            ; $4677: $a2
	ld h, a                                          ; $4678: $67
	ldh a, [$7d]                                     ; $4679: $f0 $7d
	and d                                            ; $467b: $a2
	ld a, a                                          ; $467c: $7f
	ldh a, [$7e]                                     ; $467d: $f0 $7e
	ld e, b                                          ; $467f: $58
	ld l, e                                          ; $4680: $6b
	ld b, [hl]                                       ; $4681: $46
	ld a, e                                          ; $4682: $7b
	ldh a, [$7e]                                     ; $4683: $f0 $7e
	or $7f                                           ; $4685: $f6 $7f
	ldh a, [$6c]                                     ; $4687: $f0 $6c
	ld l, d                                          ; $4689: $6a
	ld e, a                                          ; $468a: $5f
	ret nc                                           ; $468b: $d0

	ld a, a                                          ; $468c: $7f
	ldh a, [$9c]                                     ; $468d: $f0 $9c
	ld a, a                                          ; $468f: $7f
	nop                                              ; $4690: $00
	push de                                          ; $4691: $d5
	ld l, e                                          ; $4692: $6b
	ldh a, [$7b]                                     ; $4693: $f0 $7b
	adc [hl]                                         ; $4695: $8e
	sbc l                                            ; $4696: $9d
	rst $38                                          ; $4697: $ff
	and b                                            ; $4698: $a0
	ld a, c                                          ; $4699: $79
	cp e                                             ; $469a: $bb
	ld a, a                                          ; $469b: $7f
	cp h                                             ; $469c: $bc
	ld a, [hl]                                       ; $469d: $7e
	xor $7c                                          ; $469e: $ee $7c
	sbc $9b                                          ; $46a0: $de $9b
	dec b                                            ; $46a2: $05
	ld a, [$ff00]                                    ; $46a3: $fa $00 $ff
	ld a, d                                          ; $46a6: $7a
	ld h, a                                          ; $46a7: $67
	ld [hl], e                                       ; $46a8: $73
	ld d, b                                          ; $46a9: $50
	ld a, a                                          ; $46aa: $7f
	ld sp, hl                                        ; $46ab: $f9
	ld a, h                                          ; $46ac: $7c
	ret nz                                           ; $46ad: $c0

	ld a, [hl]                                       ; $46ae: $7e
	ld c, [hl]                                       ; $46af: $4e
	sbc l                                            ; $46b0: $9d
	and b                                            ; $46b1: $a0
	ld e, a                                          ; $46b2: $5f
	ld [hl], a                                       ; $46b3: $77
	ld l, h                                          ; $46b4: $6c
	sbc [hl]                                         ; $46b5: $9e
	ld b, c                                          ; $46b6: $41
	ld a, c                                          ; $46b7: $79
	sub a                                            ; $46b8: $97
	ld a, c                                          ; $46b9: $79
	ld a, a                                          ; $46ba: $7f
	sbc b                                            ; $46bb: $98
	ld d, a                                          ; $46bc: $57
	ld b, b                                          ; $46bd: $40
	cp a                                             ; $46be: $bf
	nop                                              ; $46bf: $00
	rst $38                                          ; $46c0: $ff
	dec b                                            ; $46c1: $05
	ld a, [$3c77]                                    ; $46c2: $fa $77 $3c
	ld [hl], a                                       ; $46c5: $77
	jp $f477                                         ; $46c6: $c3 $77 $f4


	ld [hl], h                                       ; $46c9: $74
	xor b                                            ; $46ca: $a8
	ld [hl], a                                       ; $46cb: $77
	and b                                            ; $46cc: $a0
	ld a, a                                          ; $46cd: $7f
	db $fc                                           ; $46ce: $fc
	ld a, a                                          ; $46cf: $7f
	ldh a, [$9b]                                     ; $46d0: $f0 $9b
	dec hl                                           ; $46d2: $2b
	call nc, $a857                                   ; $46d3: $d4 $57 $a8
	ld [hl], a                                       ; $46d6: $77
	xor l                                            ; $46d7: $ad
	ld [hl], l                                       ; $46d8: $75
	or h                                             ; $46d9: $b4
	ld a, l                                          ; $46da: $7d
	dec hl                                           ; $46db: $2b
	ld a, l                                          ; $46dc: $7d
	inc d                                            ; $46dd: $14
	ld a, a                                          ; $46de: $7f
	sbc h                                            ; $46df: $9c
	ld a, h                                          ; $46e0: $7c
	call c, $fd9e                                    ; $46e1: $dc $9e $fd
	ld a, e                                          ; $46e4: $7b
	ld hl, sp+$7a                                    ; $46e5: $f8 $7a
	ld l, d                                          ; $46e7: $6a
	ld a, c                                          ; $46e8: $79
	call nc, $9c6e                                   ; $46e9: $d4 $6e $9c
	ld [hl], h                                       ; $46ec: $74
	call nz, $8c5e                                   ; $46ed: $c4 $5e $8c
	ld e, a                                          ; $46f0: $5f
	db $f4                                           ; $46f1: $f4
	ld l, a                                          ; $46f2: $6f
	ldh a, [rPCM34]                                  ; $46f3: $f0 $77
	add $65                                          ; $46f5: $c6 $65
	sbc d                                            ; $46f7: $9a
	rst $38                                          ; $46f8: $ff
	ld a, l                                          ; $46f9: $7d
	and d                                            ; $46fa: $a2
	sbc [hl]                                         ; $46fb: $9e
	xor a                                            ; $46fc: $af
	ld [hl], e                                       ; $46fd: $73
	db $fc                                           ; $46fe: $fc
	ld sp, hl                                        ; $46ff: $f9
	ld [hl], h                                       ; $4700: $74
	inc l                                            ; $4701: $2c
	sbc h                                            ; $4702: $9c
	ld [$fd15], a                                    ; $4703: $ea $15 $fd
	ld e, l                                          ; $4706: $5d
	ld d, l                                          ; $4707: $55
	ld a, e                                          ; $4708: $7b
	sub e                                            ; $4709: $93
	sbc e                                            ; $470a: $9b
	add b                                            ; $470b: $80
	ld a, a                                          ; $470c: $7f
	ld d, h                                          ; $470d: $54
	xor e                                            ; $470e: $ab
	ld d, a                                          ; $470f: $57
	ldh a, [$6f]                                     ; $4710: $f0 $6f
	cp $7f                                           ; $4712: $fe $7f
	ld a, c                                          ; $4714: $79
	halt                                             ; $4715: $76
	ld hl, sp+$77                                    ; $4716: $f8 $77
	inc d                                            ; $4718: $14
	ld [hl], a                                       ; $4719: $77
	jr nz, jr_044_4783                               ; $471a: $20 $67

	jr jr_044_4795                                   ; $471c: $18 $77

	ldh a, [$9e]                                     ; $471e: $f0 $9e
	dec b                                            ; $4720: $05
	ld [hl], e                                       ; $4721: $73
	ldh a, [$7d]                                     ; $4722: $f0 $7d
	adc b                                            ; $4724: $88
	sbc l                                            ; $4725: $9d
	ld bc, $79fe                                     ; $4726: $01 $fe $79
	add a                                            ; $4729: $87
	ld a, e                                          ; $472a: $7b
	cp $9e                                           ; $472b: $fe $9e
	ld b, b                                          ; $472d: $40
	ld l, a                                          ; $472e: $6f
	call c, $55df                                    ; $472f: $dc $df $55
	rst SubAFromDE                                          ; $4732: $df
	xor d                                            ; $4733: $aa
	ld a, d                                          ; $4734: $7a
	call nc, $c46f                                   ; $4735: $d4 $6f $c4
	ld h, a                                          ; $4738: $67
	ldh a, [$7f]                                     ; $4739: $f0 $7f
	ret nc                                           ; $473b: $d0

	ld a, a                                          ; $473c: $7f
	or $9e                                           ; $473d: $f6 $9e
	ld d, b                                          ; $473f: $50
	ld l, a                                          ; $4740: $6f
	call nz, Call_044_657f                           ; $4741: $c4 $7f $65
	ld [hl], e                                       ; $4744: $73
	call nc, $2173                                   ; $4745: $d4 $73 $21
	ld [hl], e                                       ; $4748: $73
	adc d                                            ; $4749: $8a
	ld e, a                                          ; $474a: $5f
	sub h                                            ; $474b: $94
	ld h, a                                          ; $474c: $67
	ldh [c], a                                       ; $474d: $e2
	ld d, a                                          ; $474e: $57
	ldh a, [$7f]                                     ; $474f: $f0 $7f
	jp nz, $127d                                     ; $4751: $c2 $7d $12

	ld h, a                                          ; $4754: $67
	ldh a, [c]                                       ; $4755: $f2
	halt                                             ; $4756: $76
	call c, $f07f                                    ; $4757: $dc $7f $f0
	sbc h                                            ; $475a: $9c
	adc b                                            ; $475b: $88
	ld [hl], a                                       ; $475c: $77
	ld d, l                                          ; $475d: $55
	ld a, d                                          ; $475e: $7a
	db $dd                                           ; $475f: $dd
	ld a, a                                          ; $4760: $7f
	db $f4                                           ; $4761: $f4
	ld [hl], h                                       ; $4762: $74
	ld a, [$2879]                                    ; $4763: $fa $79 $28
	ld a, e                                          ; $4766: $7b
	db $f4                                           ; $4767: $f4
	ld a, e                                          ; $4768: $7b
	sbc [hl]                                         ; $4769: $9e
	ld [hl], a                                       ; $476a: $77
	sbc d                                            ; $476b: $9a
	ld a, e                                          ; $476c: $7b
	db $fc                                           ; $476d: $fc
	ld a, a                                          ; $476e: $7f
	db $db                                           ; $476f: $db
	ld [hl], a                                       ; $4770: $77
	ld hl, sp+$7e                                    ; $4771: $f8 $7e
	call nz, $af9d                                   ; $4773: $c4 $9d $af
	ld d, b                                          ; $4776: $50
	ld l, h                                          ; $4777: $6c
	ld [$fe47], a                                    ; $4778: $ea $47 $fe
	sbc [hl]                                         ; $477b: $9e
	ld d, h                                          ; $477c: $54
	ld [hl], d                                       ; $477d: $72
	ret z                                            ; $477e: $c8

	ld a, a                                          ; $477f: $7f
	db $fc                                           ; $4780: $fc
	sbc l                                            ; $4781: $9d
	push af                                          ; $4782: $f5

jr_044_4783:
	nop                                              ; $4783: $00
	ld a, d                                          ; $4784: $7a
	ld h, c                                          ; $4785: $61
	halt                                             ; $4786: $76
	adc b                                            ; $4787: $88
	ld a, d                                          ; $4788: $7a
	xor [hl]                                         ; $4789: $ae
	ld a, a                                          ; $478a: $7f
	ldh a, [$7e]                                     ; $478b: $f0 $7e
	ld c, d                                          ; $478d: $4a
	ld a, [hl]                                       ; $478e: $7e
	ld a, [de]                                       ; $478f: $1a
	ld a, a                                          ; $4790: $7f
	db $fc                                           ; $4791: $fc
	ld a, a                                          ; $4792: $7f
	db $e4                                           ; $4793: $e4
	ld a, [hl]                                       ; $4794: $7e

jr_044_4795:
	sbc h                                            ; $4795: $9c
	ld a, l                                          ; $4796: $7d
	adc [hl]                                         ; $4797: $8e
	sbc h                                            ; $4798: $9c
	dec bc                                           ; $4799: $0b
	nop                                              ; $479a: $00

jr_044_479b:
	ld b, l                                          ; $479b: $45
	ld a, d                                          ; $479c: $7a
	ld c, [hl]                                       ; $479d: $4e
	ld a, a                                          ; $479e: $7f
	ld hl, sp+$7f                                    ; $479f: $f8 $7f
	db $fc                                           ; $47a1: $fc
	ld a, l                                          ; $47a2: $7d
	inc a                                            ; $47a3: $3c
	ld a, [hl]                                       ; $47a4: $7e
	ret nc                                           ; $47a5: $d0

	ld l, a                                          ; $47a6: $6f
	ld h, e                                          ; $47a7: $63
	ld a, [hl]                                       ; $47a8: $7e
	ld d, l                                          ; $47a9: $55
	ld a, [hl]                                       ; $47aa: $7e
	ld b, l                                          ; $47ab: $45
	ld a, d                                          ; $47ac: $7a
	ld d, c                                          ; $47ad: $51
	ld c, e                                          ; $47ae: $4b
	cp $7d                                           ; $47af: $fe $7d
	sub [hl]                                         ; $47b1: $96
	ld [hl], a                                       ; $47b2: $77
	sub b                                            ; $47b3: $90
	ld [hl], a                                       ; $47b4: $77
	cp $7e                                           ; $47b5: $fe $7e
	cp b                                             ; $47b7: $b8
	ld a, a                                          ; $47b8: $7f
	db $f4                                           ; $47b9: $f4
	sbc l                                            ; $47ba: $9d
	db $f4                                           ; $47bb: $f4
	dec bc                                           ; $47bc: $0b
	ld l, a                                          ; $47bd: $6f
	add b                                            ; $47be: $80
	ld l, a                                          ; $47bf: $6f
	add sp, -$6a                                     ; $47c0: $e8 $96
	jr z, jr_044_479b                                ; $47c2: $28 $d7

	nop                                              ; $47c4: $00
	rst $38                                          ; $47c5: $ff
	and b                                            ; $47c6: $a0
	ld e, a                                          ; $47c7: $5f
	ld d, l                                          ; $47c8: $55
	xor e                                            ; $47c9: $ab
	nop                                              ; $47ca: $00
	ld a, b                                          ; $47cb: $78
	ld b, h                                          ; $47cc: $44
	ld [hl], c                                       ; $47cd: $71
	sbc b                                            ; $47ce: $98
	ld [hl], l                                       ; $47cf: $75
	db $f4                                           ; $47d0: $f4
	ld [hl], e                                       ; $47d1: $73
	cp $9e                                           ; $47d2: $fe $9e
	and b                                            ; $47d4: $a0
	ld l, d                                          ; $47d5: $6a
	or h                                             ; $47d6: $b4
	ld e, a                                          ; $47d7: $5f
	cp $76                                           ; $47d8: $fe $76
	and b                                            ; $47da: $a0
	ld [hl], a                                       ; $47db: $77
	jr nc, jr_044_485c                               ; $47dc: $30 $7e

	or [hl]                                          ; $47de: $b6
	ld a, a                                          ; $47df: $7f
	db $fc                                           ; $47e0: $fc
	halt                                             ; $47e1: $76
	ret c                                            ; $47e2: $d8

	halt                                             ; $47e3: $76
	ret z                                            ; $47e4: $c8

	ld [hl], a                                       ; $47e5: $77
	inc h                                            ; $47e6: $24
	ld [hl], a                                       ; $47e7: $77
	or b                                             ; $47e8: $b0
	ld l, a                                          ; $47e9: $6f
	sbc $5f                                          ; $47ea: $de $5f
	jr nz, jr_044_4861                               ; $47ec: $20 $73

	ldh [c], a                                       ; $47ee: $e2
	sbc h                                            ; $47ef: $9c
	ld d, a                                          ; $47f0: $57
	ld d, b                                          ; $47f1: $50
	xor a                                            ; $47f2: $af
	ld e, a                                          ; $47f3: $5f
	ldh a, [$7e]                                     ; $47f4: $f0 $7e
	add d                                            ; $47f6: $82
	ld l, [hl]                                       ; $47f7: $6e
	ldh [$5f], a                                     ; $47f8: $e0 $5f
	db $ec                                           ; $47fa: $ec
	ld h, [hl]                                       ; $47fb: $66
	ret nc                                           ; $47fc: $d0

	ld [hl], a                                       ; $47fd: $77
	db $f4                                           ; $47fe: $f4
	ld a, a                                          ; $47ff: $7f
	xor h                                            ; $4800: $ac
	ld [hl], a                                       ; $4801: $77
	db $ec                                           ; $4802: $ec
	ld e, a                                          ; $4803: $5f
	ldh a, [rPCM34]                                  ; $4804: $f0 $77
	db $fc                                           ; $4806: $fc
	ld [hl], l                                       ; $4807: $75
	ld a, b                                          ; $4808: $78
	ld d, a                                          ; $4809: $57
	ldh a, [$9d]                                     ; $480a: $f0 $9d
	ld a, [bc]                                       ; $480c: $0a
	push af                                          ; $480d: $f5
	ld l, a                                          ; $480e: $6f
	cp h                                             ; $480f: $bc
	ld a, [hl]                                       ; $4810: $7e
	halt                                             ; $4811: $76
	ld h, [hl]                                       ; $4812: $66
	ret nz                                           ; $4813: $c0

	ld d, [hl]                                       ; $4814: $56
	or b                                             ; $4815: $b0
	ld a, a                                          ; $4816: $7f
	cp $7e                                           ; $4817: $fe $7e
	or h                                             ; $4819: $b4
	ld l, a                                          ; $481a: $6f
	db $f4                                           ; $481b: $f4
	ld l, [hl]                                       ; $481c: $6e
	xor h                                            ; $481d: $ac
	ld a, l                                          ; $481e: $7d
	ld a, h                                          ; $481f: $7c
	ld [hl], l                                       ; $4820: $75
	ld a, b                                          ; $4821: $78
	ld a, a                                          ; $4822: $7f
	ld hl, sp+$6e                                    ; $4823: $f8 $6e
	and b                                            ; $4825: $a0
	ld a, a                                          ; $4826: $7f
	db $f4                                           ; $4827: $f4
	ld a, a                                          ; $4828: $7f
	ld a, l                                          ; $4829: $7d
	ld a, l                                          ; $482a: $7d
	ld l, [hl]                                       ; $482b: $6e
	ld a, l                                          ; $482c: $7d
	add h                                            ; $482d: $84
	ld [hl], l                                       ; $482e: $75
	ld h, b                                          ; $482f: $60
	ld a, [hl]                                       ; $4830: $7e
	xor h                                            ; $4831: $ac
	ld a, a                                          ; $4832: $7f
	ldh a, [rPCM12]                                  ; $4833: $f0 $76
	ret c                                            ; $4835: $d8

	ld a, a                                          ; $4836: $7f
	db $fc                                           ; $4837: $fc
	ld a, a                                          ; $4838: $7f
	add hl, bc                                       ; $4839: $09
	ld a, l                                          ; $483a: $7d
	sub h                                            ; $483b: $94
	ld a, a                                          ; $483c: $7f
	db $fc                                           ; $483d: $fc
	halt                                             ; $483e: $76
	call nz, $087d                                   ; $483f: $c4 $7d $08
	ld a, [hl]                                       ; $4842: $7e
	db $e4                                           ; $4843: $e4
	ld [hl], a                                       ; $4844: $77
	db $fc                                           ; $4845: $fc
	ld h, a                                          ; $4846: $67
	inc de                                           ; $4847: $13
	ld a, a                                          ; $4848: $7f
	sbc h                                            ; $4849: $9c
	ld a, l                                          ; $484a: $7d
	jp z, $8a91                                      ; $484b: $ca $91 $8a

	ld a, a                                          ; $484e: $7f
	ld b, b                                          ; $484f: $40
	cp a                                             ; $4850: $bf
	xor d                                            ; $4851: $aa
	ld d, l                                          ; $4852: $55
	push de                                          ; $4853: $d5
	ld a, [hl+]                                      ; $4854: $2a
	ld a, [$ff05]                                    ; $4855: $fa $05 $ff
	nop                                              ; $4858: $00
	ld a, [hl+]                                      ; $4859: $2a
	push de                                          ; $485a: $d5
	ld [hl], l                                       ; $485b: $75

jr_044_485c:
	or d                                             ; $485c: $b2
	ld a, l                                          ; $485d: $7d
	jp nc, $829e                                     ; $485e: $d2 $9e $82

jr_044_4861:
	ld [hl], e                                       ; $4861: $73
	db $ec                                           ; $4862: $ec
	ld a, a                                          ; $4863: $7f
	sbc h                                            ; $4864: $9c
	ld [hl], l                                       ; $4865: $75
	ldh a, [c]                                       ; $4866: $f2
	ld a, a                                          ; $4867: $7f
	and a                                            ; $4868: $a7
	ld l, l                                          ; $4869: $6d
	and d                                            ; $486a: $a2
	sbc e                                            ; $486b: $9b
	and d                                            ; $486c: $a2
	ld e, a                                          ; $486d: $5f
	ld d, c                                          ; $486e: $51
	xor a                                            ; $486f: $af
	ld h, b                                          ; $4870: $60
	ld e, b                                          ; $4871: $58
	ld h, c                                          ; $4872: $61
	ld a, h                                          ; $4873: $7c
	ccf                                              ; $4874: $3f
	ldh a, [rPCM12]                                  ; $4875: $f0 $76
	xor h                                            ; $4877: $ac
	ld a, l                                          ; $4878: $7d
	or b                                             ; $4879: $b0
	ld l, a                                          ; $487a: $6f
	jp z, $a856                                      ; $487b: $ca $56 $a8

	ld [hl], b                                       ; $487e: $70
	ld h, b                                          ; $487f: $60
	sbc l                                            ; $4880: $9d
	ld d, l                                          ; $4881: $55
	ld bc, $5377                                     ; $4882: $01 $77 $53
	ld [hl], e                                       ; $4885: $73
	cp $7d                                           ; $4886: $fe $7d
	add b                                            ; $4888: $80
	ld [hl], a                                       ; $4889: $77
	ldh a, [$66]                                     ; $488a: $f0 $66
	xor h                                            ; $488c: $ac
	ld [hl], c                                       ; $488d: $71
	add h                                            ; $488e: $84
	ld c, e                                          ; $488f: $4b
	ldh a, [rPCM12]                                  ; $4890: $f0 $76
	db $ec                                           ; $4892: $ec
	ld a, [hl]                                       ; $4893: $7e
	cp b                                             ; $4894: $b8
	ld d, l                                          ; $4895: $55
	ld l, [hl]                                       ; $4896: $6e
	dec a                                            ; $4897: $3d
	ld [hl], b                                       ; $4898: $70
	ld [hl], h                                       ; $4899: $74
	jr z, jr_044_4902                                ; $489a: $28 $66

	ld l, h                                          ; $489c: $6c
	ld [hl], a                                       ; $489d: $77
	ldh a, [$7c]                                     ; $489e: $f0 $7c
	call z, $3c77                                    ; $48a0: $cc $77 $3c
	ld e, [hl]                                       ; $48a3: $5e
	add b                                            ; $48a4: $80
	ld e, a                                          ; $48a5: $5f
	sub b                                            ; $48a6: $90
	ld a, [hl]                                       ; $48a7: $7e
	xor b                                            ; $48a8: $a8
	halt                                             ; $48a9: $76
	call z, Call_044_7c76                            ; $48aa: $cc $76 $7c
	sbc h                                            ; $48ad: $9c
	dec d                                            ; $48ae: $15
	ld [$7a0a], a                                    ; $48af: $ea $0a $7a
	db $e3                                           ; $48b2: $e3
	ld [hl], a                                       ; $48b3: $77
	xor b                                            ; $48b4: $a8
	halt                                             ; $48b5: $76
	ret z                                            ; $48b6: $c8

	ld [hl], l                                       ; $48b7: $75
	ld c, h                                          ; $48b8: $4c
	ld h, a                                          ; $48b9: $67
	adc b                                            ; $48ba: $88
	ld l, a                                          ; $48bb: $6f
	push de                                          ; $48bc: $d5
	ld a, l                                          ; $48bd: $7d
	ld d, b                                          ; $48be: $50
	ld h, a                                          ; $48bf: $67
	inc b                                            ; $48c0: $04
	ld h, l                                          ; $48c1: $65
	or b                                             ; $48c2: $b0
	ld h, [hl]                                       ; $48c3: $66
	jr c, jr_044_493d                                ; $48c4: $38 $77

	ldh a, [c]                                       ; $48c6: $f2
	ld a, h                                          ; $48c7: $7c
	ld e, b                                          ; $48c8: $58
	ld [hl], a                                       ; $48c9: $77
	ret nc                                           ; $48ca: $d0

	ld a, a                                          ; $48cb: $7f
	sbc b                                            ; $48cc: $98
	halt                                             ; $48cd: $76

jr_044_48ce:
	ld c, b                                          ; $48ce: $48

Call_044_48cf:
	ld [hl], c                                       ; $48cf: $71
	ld [hl], d                                       ; $48d0: $72
	sbc [hl]                                         ; $48d1: $9e
	ld b, b                                          ; $48d2: $40
	ld e, a                                          ; $48d3: $5f
	ret nz                                           ; $48d4: $c0

	halt                                             ; $48d5: $76
	cp h                                             ; $48d6: $bc
	ld [hl], a                                       ; $48d7: $77
	cp $77                                           ; $48d8: $fe $77
	ldh a, [$9d]                                     ; $48da: $f0 $9d
	adc d                                            ; $48dc: $8a
	ld [hl], l                                       ; $48dd: $75
	ld [hl], l                                       ; $48de: $75
	db $e4                                           ; $48df: $e4
	ld a, l                                          ; $48e0: $7d
	ld a, b                                          ; $48e1: $78
	ld a, a                                          ; $48e2: $7f
	db $ec                                           ; $48e3: $ec
	sbc l                                            ; $48e4: $9d
	push af                                          ; $48e5: $f5
	ld a, [bc]                                       ; $48e6: $0a
	ld [hl], a                                       ; $48e7: $77
	ret nc                                           ; $48e8: $d0

	ld [hl], a                                       ; $48e9: $77
	or b                                             ; $48ea: $b0
	ld d, [hl]                                       ; $48eb: $56
	call nc, $fc03                                   ; $48ec: $d4 $03 $fc
	inc bc                                           ; $48ef: $03
	db $fc                                           ; $48f0: $fc
	ld a, a                                          ; $48f1: $7f
	db $fc                                           ; $48f2: $fc
	ld a, [hl]                                       ; $48f3: $7e
	sbc b                                            ; $48f4: $98
	ld c, a                                          ; $48f5: $4f
	ldh a, [rPCM12]                                  ; $48f6: $f0 $76
	add h                                            ; $48f8: $84
	halt                                             ; $48f9: $76
	xor b                                            ; $48fa: $a8
	ld c, [hl]                                       ; $48fb: $4e
	ld [hl], b                                       ; $48fc: $70
	ld b, a                                          ; $48fd: $47
	ldh a, [$6e]                                     ; $48fe: $f0 $6e
	ld h, h                                          ; $4900: $64
	ld a, a                                          ; $4901: $7f

jr_044_4902:
	db $fc                                           ; $4902: $fc
	ld a, a                                          ; $4903: $7f
	call nc, $b65a                                   ; $4904: $d4 $5a $b6
	ld a, e                                          ; $4907: $7b
	ldh a, [$6f]                                     ; $4908: $f0 $6f
	or $7e                                           ; $490a: $f6 $7e
	ldh [$9e], a                                     ; $490c: $e0 $9e
	ld a, [bc]                                       ; $490e: $0a
	ld a, c                                          ; $490f: $79
	cp $77                                           ; $4910: $fe $77
	ld d, h                                          ; $4912: $54
	ld a, a                                          ; $4913: $7f
	db $fc                                           ; $4914: $fc
	ld l, l                                          ; $4915: $6d
	ld [$e47f], sp                                   ; $4916: $08 $7f $e4
	ld a, h                                          ; $4919: $7c
	db $ec                                           ; $491a: $ec
	ld d, l                                          ; $491b: $55
	ld e, h                                          ; $491c: $5c
	sbc [hl]                                         ; $491d: $9e
	add c                                            ; $491e: $81
	ld h, d                                          ; $491f: $62
	xor h                                            ; $4920: $ac
	ld a, b                                          ; $4921: $78
	xor h                                            ; $4922: $ac
	ld e, b                                          ; $4923: $58
	add sp, $66                                      ; $4924: $e8 $66
	ld a, b                                          ; $4926: $78
	ld a, a                                          ; $4927: $7f
	inc d                                            ; $4928: $14
	ld e, a                                          ; $4929: $5f
	ldh a, [$7e]                                     ; $492a: $f0 $7e
	ld a, b                                          ; $492c: $78
	ld h, l                                          ; $492d: $65
	jr nz, jr_044_48ce                               ; $492e: $20 $9e

	ld bc, $4652                                     ; $4930: $01 $52 $46
	ld a, l                                          ; $4933: $7d
	ld a, l                                          ; $4934: $7d
	ld h, a                                          ; $4935: $67
	sub b                                            ; $4936: $90
	ld l, a                                          ; $4937: $6f
	db $e4                                           ; $4938: $e4
	ld e, a                                          ; $4939: $5f
	add b                                            ; $493a: $80
	ld a, a                                          ; $493b: $7f
	db $f4                                           ; $493c: $f4

jr_044_493d:
	sbc [hl]                                         ; $493d: $9e
	ld a, [hl+]                                      ; $493e: $2a
	ld l, e                                          ; $493f: $6b
	ld h, b                                          ; $4940: $60
	ld e, l                                          ; $4941: $5d
	ret z                                            ; $4942: $c8

	ld h, a                                          ; $4943: $67
	db $fc                                           ; $4944: $fc
	ld a, h                                          ; $4945: $7c
	halt                                             ; $4946: $76
	ld a, e                                          ; $4947: $7b
	ld a, [$8c73]                                    ; $4948: $fa $73 $8c
	ld a, b                                          ; $494b: $78
	ld e, [hl]                                       ; $494c: $5e
	ld a, e                                          ; $494d: $7b
	ldh a, [$7f]                                     ; $494e: $f0 $7f
	call nc, $fe7a                                   ; $4950: $d4 $7a $fe
	sbc [hl]                                         ; $4953: $9e
	push af                                          ; $4954: $f5
	halt                                             ; $4955: $76
	and h                                            ; $4956: $a4
	ld [hl], a                                       ; $4957: $77
	or b                                             ; $4958: $b0
	ld l, a                                          ; $4959: $6f
	call z, $907f                                    ; $495a: $cc $7f $90
	sbc e                                            ; $495d: $9b
	ld [de], a                                       ; $495e: $12
	db $ed                                           ; $495f: $ed
	add hl, bc                                       ; $4960: $09
	or $67                                           ; $4961: $f6 $67
	inc e                                            ; $4963: $1c
	ld h, a                                          ; $4964: $67
	ld e, d                                          ; $4965: $5a
	ld a, a                                          ; $4966: $7f
	ld [hl], $6e                                     ; $4967: $36 $6e
	add sp, -$62                                     ; $4969: $e8 $9e
	and d                                            ; $496b: $a2
	ld h, e                                          ; $496c: $63
	ld a, [hl+]                                      ; $496d: $2a
	ld a, l                                          ; $496e: $7d
	and $7f                                          ; $496f: $e6 $7f
	nop                                              ; $4971: $00
	ld [hl], a                                       ; $4972: $77
	call c, $246f                                    ; $4973: $dc $6f $24
	ld [hl], a                                       ; $4976: $77
	call c, $946f                                    ; $4977: $dc $6f $94
	ld d, a                                          ; $497a: $57
	ld e, d                                          ; $497b: $5a
	ld a, a                                          ; $497c: $7f
	db $e4                                           ; $497d: $e4
	ld d, [hl]                                       ; $497e: $56
	call c, $fe5f                                    ; $497f: $dc $5f $fe
	ld l, d                                          ; $4982: $6a
	add hl, de                                       ; $4983: $19
	ld e, e                                          ; $4984: $5b
	ret c                                            ; $4985: $d8

	ld [hl], h                                       ; $4986: $74
	sbc $37                                          ; $4987: $de $37
	sub $03                                          ; $4989: $d6 $03
	cp $5a                                           ; $498b: $fe $5a
	db $fc                                           ; $498d: $fc
	ld c, a                                          ; $498e: $4f
	ldh a, [rRP]                                     ; $498f: $f0 $56
	ldh [$79], a                                     ; $4991: $e0 $79
	ld b, d                                          ; $4993: $42
	ld c, e                                          ; $4994: $4b
	ld h, h                                          ; $4995: $64
	ld d, [hl]                                       ; $4996: $56
	jr nc, jr_044_4a17                               ; $4997: $30 $7e

	ret nc                                           ; $4999: $d0

	ld a, [hl]                                       ; $499a: $7e
	ld d, b                                          ; $499b: $50
	inc l                                            ; $499c: $2c
	ld [hl], b                                       ; $499d: $70
	ld a, a                                          ; $499e: $7f
	db $fc                                           ; $499f: $fc
	ld h, [hl]                                       ; $49a0: $66
	or h                                             ; $49a1: $b4
	ld h, a                                          ; $49a2: $67
	db $fc                                           ; $49a3: $fc
	ld a, e                                          ; $49a4: $7b
	add $9a                                          ; $49a5: $c6 $9a
	ld d, a                                          ; $49a7: $57
	ld d, l                                          ; $49a8: $55
	xor e                                            ; $49a9: $ab
	add d                                            ; $49aa: $82
	ld a, l                                          ; $49ab: $7d
	ld [hl], h                                       ; $49ac: $74
	ldh a, [$7c]                                     ; $49ad: $f0 $7c
	call nz, Call_044_5194                           ; $49af: $c4 $94 $51
	rst $38                                          ; $49b2: $ff
	inc b                                            ; $49b3: $04
	ei                                               ; $49b4: $fb
	xor b                                            ; $49b5: $a8
	rst SubAFromHL                                          ; $49b6: $d7
	ld d, h                                          ; $49b7: $54
	ei                                               ; $49b8: $fb
	ld a, [hl+]                                      ; $49b9: $2a
	rst SubAFromDE                                          ; $49ba: $df
	dec b                                            ; $49bb: $05
	ld [hl], d                                       ; $49bc: $72
	cp $77                                           ; $49bd: $fe $77
	ldh [$7d], a                                     ; $49bf: $e0 $7d
	ld c, h                                          ; $49c1: $4c
	ld a, d                                          ; $49c2: $7a
	ldh [c], a                                       ; $49c3: $e2
	ld a, e                                          ; $49c4: $7b
	sub $9a                                          ; $49c5: $d6 $9a
	ld [$41ff], sp                                   ; $49c7: $08 $ff $41
	cp [hl]                                          ; $49ca: $be
	ld d, l                                          ; $49cb: $55
	ld a, d                                          ; $49cc: $7a
	ld e, b                                          ; $49cd: $58
	ld a, a                                          ; $49ce: $7f
	add sp, -$66                                     ; $49cf: $e8 $9a
	ld d, [hl]                                       ; $49d1: $56
	xor e                                            ; $49d2: $ab
	ld a, [bc]                                       ; $49d3: $0a
	push af                                          ; $49d4: $f5
	ld d, b                                          ; $49d5: $50
	ld a, e                                          ; $49d6: $7b
	jr nz, @+$80                                     ; $49d7: $20 $7e

	sbc b                                            ; $49d9: $98
	ld l, a                                          ; $49da: $6f
	cp h                                             ; $49db: $bc
	ld a, [hl]                                       ; $49dc: $7e
	ld a, d                                          ; $49dd: $7a
	sbc l                                            ; $49de: $9d
	add l                                            ; $49df: $85
	ld a, a                                          ; $49e0: $7f
	halt                                             ; $49e1: $76
	xor [hl]                                         ; $49e2: $ae
	ld a, a                                          ; $49e3: $7f
	ret nz                                           ; $49e4: $c0

	ld [hl], a                                       ; $49e5: $77
	ldh a, [$9e]                                     ; $49e6: $f0 $9e
	ld b, c                                          ; $49e8: $41
	ld a, e                                          ; $49e9: $7b
	call z, Call_044_4a9b                            ; $49ea: $cc $9b $4a
	push af                                          ; $49ed: $f5
	inc d                                            ; $49ee: $14
	db $eb                                           ; $49ef: $eb
	ld [hl], h                                       ; $49f0: $74
	ld d, h                                          ; $49f1: $54
	ld a, [hl]                                       ; $49f2: $7e
	ld [hl], d                                       ; $49f3: $72
	ld a, a                                          ; $49f4: $7f
	db $e4                                           ; $49f5: $e4
	ld a, [hl]                                       ; $49f6: $7e
	db $f4                                           ; $49f7: $f4
	ld a, a                                          ; $49f8: $7f
	add $6c                                          ; $49f9: $c6 $6c
	add b                                            ; $49fb: $80
	ld a, a                                          ; $49fc: $7f
	and h                                            ; $49fd: $a4
	cpl                                              ; $49fe: $2f
	jr jr_044_4a80                                   ; $49ff: $18 $7f

	inc [hl]                                         ; $4a01: $34
	ld d, a                                          ; $4a02: $57
	inc d                                            ; $4a03: $14
	ld h, a                                          ; $4a04: $67
	ld h, h                                          ; $4a05: $64
	ld e, [hl]                                       ; $4a06: $5e
	ret nz                                           ; $4a07: $c0

	sbc [hl]                                         ; $4a08: $9e
	jr nz, jr_044_4a84                               ; $4a09: $20 $79

	inc a                                            ; $4a0b: $3c
	ld [hl], d                                       ; $4a0c: $72
	ld d, $73                                        ; $4a0d: $16 $73
	ld [$d467], sp                                   ; $4a0f: $08 $67 $d4
	ld a, a                                          ; $4a12: $7f
	and h                                            ; $4a13: $a4
	ld a, [hl]                                       ; $4a14: $7e
	inc l                                            ; $4a15: $2c
	ld [hl], l                                       ; $4a16: $75

jr_044_4a17:
	jr nz, jr_044_4a88                               ; $4a17: $20 $6f

	ret nc                                           ; $4a19: $d0

	ld [hl], a                                       ; $4a1a: $77
	db $f4                                           ; $4a1b: $f4
	ld d, l                                          ; $4a1c: $55
	inc [hl]                                         ; $4a1d: $34
	halt                                             ; $4a1e: $76
	db $fc                                           ; $4a1f: $fc
	ld a, a                                          ; $4a20: $7f
	db $fc                                           ; $4a21: $fc
	ld [hl], a                                       ; $4a22: $77
	and h                                            ; $4a23: $a4
	nop                                              ; $4a24: $00
	ret z                                            ; $4a25: $c8

	inc bc                                           ; $4a26: $03
	db $fc                                           ; $4a27: $fc
	rra                                              ; $4a28: $1f
	db $fc                                           ; $4a29: $fc
	ld a, d                                          ; $4a2a: $7a
	ld d, $9b                                        ; $4a2b: $16 $9b
	xor e                                            ; $4a2d: $ab
	xor d                                            ; $4a2e: $aa
	ld b, c                                          ; $4a2f: $41
	ld d, l                                          ; $4a30: $55
	cp $99                                           ; $4a31: $fe $99
	xor b                                            ; $4a33: $a8
	nop                                              ; $4a34: $00
	ld d, l                                          ; $4a35: $55
	nop                                              ; $4a36: $00
	ld [bc], a                                       ; $4a37: $02
	nop                                              ; $4a38: $00
	ld l, b                                          ; $4a39: $68
	db $ec                                           ; $4a3a: $ec
	ld [hl], a                                       ; $4a3b: $77
	or $98                                           ; $4a3c: $f6 $98
	nop                                              ; $4a3e: $00
	ld b, b                                          ; $4a3f: $40
	nop                                              ; $4a40: $00
	xor d                                            ; $4a41: $aa
	nop                                              ; $4a42: $00
	ld a, [hl+]                                      ; $4a43: $2a
	push de                                          ; $4a44: $d5
	ld l, a                                          ; $4a45: $6f
	ldh a, [$9e]                                     ; $4a46: $f0 $9e
	add b                                            ; $4a48: $80
	db $fc                                           ; $4a49: $fc
	sbc l                                            ; $4a4a: $9d
	ld e, d                                          ; $4a4b: $5a
	nop                                              ; $4a4c: $00
	ld [hl], l                                       ; $4a4d: $75
	ld e, b                                          ; $4a4e: $58
	ld a, l                                          ; $4a4f: $7d
	ld h, h                                          ; $4a50: $64
	sbc h                                            ; $4a51: $9c
	ld d, l                                          ; $4a52: $55
	ld a, [hl+]                                      ; $4a53: $2a
	ld a, [hl+]                                      ; $4a54: $2a
	ld a, [$a47a]                                    ; $4a55: $fa $7a $a4
	sbc [hl]                                         ; $4a58: $9e
	cp a                                             ; $4a59: $bf
	ld [hl], b                                       ; $4a5a: $70
	cp h                                             ; $4a5b: $bc
	sbc l                                            ; $4a5c: $9d
	dec b                                            ; $4a5d: $05
	dec d                                            ; $4a5e: $15
	ei                                               ; $4a5f: $fb
	ld h, c                                          ; $4a60: $61
	jr nc, @-$61                                     ; $4a61: $30 $9d

	ld d, l                                          ; $4a63: $55
	ld [bc], a                                       ; $4a64: $02
	ld [hl], a                                       ; $4a65: $77
	call c, $2a9b                                    ; $4a66: $dc $9b $2a
	db $fd                                           ; $4a69: $fd
	ld d, l                                          ; $4a6a: $55
	xor a                                            ; $4a6b: $af
	halt                                             ; $4a6c: $76
	or $7f                                           ; $4a6d: $f6 $7f
	ret c                                            ; $4a6f: $d8

	ld a, a                                          ; $4a70: $7f
	sbc b                                            ; $4a71: $98
	sub a                                            ; $4a72: $97
	xor b                                            ; $4a73: $a8
	rla                                              ; $4a74: $17
	ld d, h                                          ; $4a75: $54
	ld bc, $55aa                                     ; $4a76: $01 $aa $55
	dec d                                            ; $4a79: $15
	ld [$687a], a                                    ; $4a7a: $ea $7a $68
	sbc l                                            ; $4a7d: $9d
	cp $aa                                           ; $4a7e: $fe $aa

jr_044_4a80:
	ld a, d                                          ; $4a80: $7a
	sub b                                            ; $4a81: $90
	ld a, a                                          ; $4a82: $7f
	sub l                                            ; $4a83: $95

jr_044_4a84:
	ld a, a                                          ; $4a84: $7f
	db $fc                                           ; $4a85: $fc
	halt                                             ; $4a86: $76
	ld h, h                                          ; $4a87: $64

jr_044_4a88:
	ld a, [hl]                                       ; $4a88: $7e
	ld [hl], h                                       ; $4a89: $74
	ld a, l                                          ; $4a8a: $7d
	ld b, [hl]                                       ; $4a8b: $46
	ld a, [hl]                                       ; $4a8c: $7e
	ld c, h                                          ; $4a8d: $4c
	sbc d                                            ; $4a8e: $9a
	dec d                                            ; $4a8f: $15
	ld a, [$5fa2]                                    ; $4a90: $fa $a2 $5f
	ld d, l                                          ; $4a93: $55
	ld [hl], b                                       ; $4a94: $70
	sbc b                                            ; $4a95: $98
	ld a, a                                          ; $4a96: $7f
	and b                                            ; $4a97: $a0
	sub h                                            ; $4a98: $94
	ld b, b                                          ; $4a99: $40
	cp a                                             ; $4a9a: $bf

Call_044_4a9b:
	dec h                                            ; $4a9b: $25
	jp c, $af50                                      ; $4a9c: $da $50 $af

	jr z, @-$27                                      ; $4a9f: $28 $d7

	dec d                                            ; $4aa1: $15
	ld [$7b55], a                                    ; $4aa2: $ea $55 $7b

Jump_044_4aa5:
	nop                                              ; $4aa5: $00
	ld a, a                                          ; $4aa6: $7f
	jp nz, Jump_044_4074                             ; $4aa7: $c2 $74 $40

	sbc c                                            ; $4aaa: $99
	add d                                            ; $4aab: $82
	ld a, a                                          ; $4aac: $7f
	ld b, c                                          ; $4aad: $41
	cp a                                             ; $4aae: $bf
	jr z, jr_044_4a88                                ; $4aaf: $28 $d7

	ld l, l                                          ; $4ab1: $6d
	inc c                                            ; $4ab2: $0c
	ld e, a                                          ; $4ab3: $5f
	db $fc                                           ; $4ab4: $fc
	ld a, [hl]                                       ; $4ab5: $7e
	ldh [$7d], a                                     ; $4ab6: $e0 $7d
	nop                                              ; $4ab8: $00
	inc bc                                           ; $4ab9: $03
	jr jr_044_4abf                                   ; $4aba: $18 $03

	db $fc                                           ; $4abc: $fc
	inc bc                                           ; $4abd: $03
	db $fc                                           ; $4abe: $fc

jr_044_4abf:
	inc hl                                           ; $4abf: $23
	db $fc                                           ; $4ac0: $fc
	ld l, $00                                        ; $4ac1: $2e $00
	call c, $de44                                    ; $4ac3: $dc $44 $de
	ld d, l                                          ; $4ac6: $55
	sbc [hl]                                         ; $4ac7: $9e
	ld d, h                                          ; $4ac8: $54
	call c, $9e44                                    ; $4ac9: $dc $44 $9e
	ld d, h                                          ; $4acc: $54
	call c, Call_044_6f55                            ; $4acd: $dc $55 $6f
	xor $6b                                          ; $4ad0: $ee $6b
	or $de                                           ; $4ad2: $f6 $de
	ld b, h                                          ; $4ad4: $44
	sbc e                                            ; $4ad5: $9b
	ld b, [hl]                                       ; $4ad6: $46
	ld h, [hl]                                       ; $4ad7: $66
	ld b, h                                          ; $4ad8: $44
	ld b, h                                          ; $4ad9: $44
	db $db                                           ; $4ada: $db
	ld [hl], a                                       ; $4adb: $77
	rst SubAFromDE                                          ; $4adc: $df
	ld h, [hl]                                       ; $4add: $66
	sbc [hl]                                         ; $4ade: $9e
	ld h, a                                          ; $4adf: $67
	jp c, $9d77                                      ; $4ae0: $da $77 $9d

	halt                                             ; $4ae3: $76
	ld h, [hl]                                       ; $4ae4: $66
	pop bc                                           ; $4ae5: $c1
	ld [hl], a                                       ; $4ae6: $77
	rst SubAFromHL                                          ; $4ae7: $d7
	ld [hl], a                                       ; $4ae8: $77
	sbc $44                                          ; $4ae9: $de $44
	sbc [hl]                                         ; $4aeb: $9e
	ld b, a                                          ; $4aec: $47
	db $db                                           ; $4aed: $db
	ld [hl], a                                       ; $4aee: $77
	or e                                             ; $4aef: $b3
	rlca                                             ; $4af0: $07
	sbc l                                            ; $4af1: $9d
	nop                                              ; $4af2: $00
	rst $38                                          ; $4af3: $ff
	inc bc                                           ; $4af4: $03
	cp $1b                                           ; $4af5: $fe $1b
	cp $9d                                           ; $4af7: $fe $9d
	ld d, b                                          ; $4af9: $50
	xor a                                            ; $4afa: $af
	inc bc                                           ; $4afb: $03
	call c, $fe5b                                    ; $4afc: $dc $5b $fe
	sbc e                                            ; $4aff: $9b
	dec b                                            ; $4b00: $05
	ld a, [$e01f]                                    ; $4b01: $fa $1f $e0
	ld c, a                                          ; $4b04: $4f
	jp nz, $fa9d                                     ; $4b05: $c2 $9d $fa

	dec b                                            ; $4b08: $05
	ld d, a                                          ; $4b09: $57
	ldh a, [$9b]                                     ; $4b0a: $f0 $9b
	ld d, l                                          ; $4b0c: $55
	xor d                                            ; $4b0d: $aa
	cp d                                             ; $4b0e: $ba
	ld b, l                                          ; $4b0f: $45
	ld d, a                                          ; $4b10: $57
	ldh a, [$9b]                                     ; $4b11: $f0 $9b
	ld b, b                                          ; $4b13: $40
	cp a                                             ; $4b14: $bf
	and b                                            ; $4b15: $a0
	ld e, a                                          ; $4b16: $5f
	inc bc                                           ; $4b17: $03
	xor d                                            ; $4b18: $aa
	inc bc                                           ; $4b19: $03
	cp $03                                           ; $4b1a: $fe $03
	cp $03                                           ; $4b1c: $fe $03
	cp $17                                           ; $4b1e: $fe $17
	cp $9b                                           ; $4b20: $fe $9b
	xor d                                            ; $4b22: $aa
	ld d, l                                          ; $4b23: $55
	ld d, l                                          ; $4b24: $55
	xor d                                            ; $4b25: $aa
	ld [hl], a                                       ; $4b26: $77
	db $fc                                           ; $4b27: $fc
	ld [hl], a                                       ; $4b28: $77
	di                                               ; $4b29: $f3
	db $fd                                           ; $4b2a: $fd
	ld e, a                                          ; $4b2b: $5f
	ldh a, [$7f]                                     ; $4b2c: $f0 $7f
	db $fc                                           ; $4b2e: $fc
	sbc h                                            ; $4b2f: $9c
	ld h, b                                          ; $4b30: $60
	rst $38                                          ; $4b31: $ff
	ld a, a                                          ; $4b32: $7f
	ld e, e                                          ; $4b33: $5b
	ldh [$7f], a                                     ; $4b34: $e0 $7f
	db $fc                                           ; $4b36: $fc
	sbc e                                            ; $4b37: $9b
	ld a, a                                          ; $4b38: $7f
	add b                                            ; $4b39: $80
	ld a, a                                          ; $4b3a: $7f
	add b                                            ; $4b3b: $80
	ld h, a                                          ; $4b3c: $67
	ldh a, [$63]                                     ; $4b3d: $f0 $63
	call z, $1a7b                                    ; $4b3f: $cc $7b $1a
	ld e, a                                          ; $4b42: $5f
	ldh a, [$97]                                     ; $4b43: $f0 $97
	db $fd                                           ; $4b45: $fd
	ld [bc], a                                       ; $4b46: $02
	ld b, $f9                                        ; $4b47: $06 $f9
	ld e, a                                          ; $4b49: $5f
	and b                                            ; $4b4a: $a0
	xor a                                            ; $4b4b: $af
	ld d, b                                          ; $4b4c: $50
	ld l, a                                          ; $4b4d: $6f
	ldh a, [$9d]                                     ; $4b4e: $f0 $9d
	ld [$7a15], a                                    ; $4b50: $ea $15 $7a
	xor $93                                          ; $4b53: $ee $93
	ld b, b                                          ; $4b55: $40
	call c, $ee20                                    ; $4b56: $dc $20 $ee
	db $10                                           ; $4b59: $10
	ld a, l                                          ; $4b5a: $7d
	add b                                            ; $4b5b: $80
	cp d                                             ; $4b5c: $ba
	ld b, b                                          ; $4b5d: $40
	ld e, l                                          ; $4b5e: $5d
	and b                                            ; $4b5f: $a0
	xor [hl]                                         ; $4b60: $ae
	ld a, e                                          ; $4b61: $7b
	add sp, -$68                                     ; $4b62: $e8 $98
	dec l                                            ; $4b64: $2d

jr_044_4b65:
	ld [bc], a                                       ; $4b65: $02
	rlca                                             ; $4b66: $07
	nop                                              ; $4b67: $00
	xor b                                            ; $4b68: $a8
	nop                                              ; $4b69: $00
	ld d, l                                          ; $4b6a: $55
	ld a, e                                          ; $4b6b: $7b
	add $96                                          ; $4b6c: $c6 $96
	ld a, a                                          ; $4b6e: $7f
	nop                                              ; $4b6f: $00
	xor d                                            ; $4b70: $aa
	nop                                              ; $4b71: $00
	push de                                          ; $4b72: $d5
	ld a, [hl+]                                      ; $4b73: $2a
	ld a, a                                          ; $4b74: $7f
	add b                                            ; $4b75: $80
	jp nc, $f07b                                     ; $4b76: $d2 $7b $f0

	sbc [hl]                                         ; $4b79: $9e
	ld d, b                                          ; $4b7a: $50
	ld a, e                                          ; $4b7b: $7b
	db $f4                                           ; $4b7c: $f4
	ld a, a                                          ; $4b7d: $7f
	db $ec                                           ; $4b7e: $ec
	ld a, a                                          ; $4b7f: $7f
	db $fc                                           ; $4b80: $fc
	ld a, a                                          ; $4b81: $7f
	ldh a, [c]                                       ; $4b82: $f2
	sub e                                            ; $4b83: $93
	add sp, $17                                      ; $4b84: $e8 $17
	push af                                          ; $4b86: $f5
	ld a, [bc]                                       ; $4b87: $0a
	ld a, $01                                        ; $4b88: $3e $01
	rra                                              ; $4b8a: $1f
	nop                                              ; $4b8b: $00
	xor [hl]                                         ; $4b8c: $ae
	ld bc, $0057                                     ; $4b8d: $01 $57 $00
	halt                                             ; $4b90: $76
	ld h, e                                          ; $4b91: $63
	ld [hl], a                                       ; $4b92: $77
	ld e, h                                          ; $4b93: $5c
	ld a, a                                          ; $4b94: $7f
	adc c                                            ; $4b95: $89
	ld l, a                                          ; $4b96: $6f
	sbc h                                            ; $4b97: $9c
	ld a, [hl]                                       ; $4b98: $7e
	sub d                                            ; $4b99: $92
	sbc [hl]                                         ; $4b9a: $9e
	rst SubAFromDE                                          ; $4b9b: $df
	ld [hl], e                                       ; $4b9c: $73
	ldh a, [$6f]                                     ; $4b9d: $f0 $6f
	db $ec                                           ; $4b9f: $ec
	sbc c                                            ; $4ba0: $99
	ld d, h                                          ; $4ba1: $54
	xor e                                            ; $4ba2: $ab
	xor d                                            ; $4ba3: $aa
	ld d, l                                          ; $4ba4: $55
	push de                                          ; $4ba5: $d5
	ld a, [hl+]                                      ; $4ba6: $2a
	ld b, a                                          ; $4ba7: $47
	inc [hl]                                         ; $4ba8: $34
	inc bc                                           ; $4ba9: $03
	ldh a, [$5a]                                     ; $4baa: $f0 $5a
	ld [hl-], a                                      ; $4bac: $32
	sbc e                                            ; $4bad: $9b
	xor l                                            ; $4bae: $ad
	ld d, b                                          ; $4baf: $50
	ld a, [hl]                                       ; $4bb0: $7e
	add b                                            ; $4bb1: $80
	ld e, a                                          ; $4bb2: $5f
	db $e4                                           ; $4bb3: $e4
	ld a, e                                          ; $4bb4: $7b
	ld e, $7b                                        ; $4bb5: $1e $7b
	ld a, [hl]                                       ; $4bb7: $7e
	ld h, a                                          ; $4bb8: $67
	ldh a, [$7e]                                     ; $4bb9: $f0 $7e
	ld b, [hl]                                       ; $4bbb: $46
	ld a, a                                          ; $4bbc: $7f
	call nc, $7a9b                                   ; $4bbd: $d4 $9b $7a
	dec b                                            ; $4bc0: $05
	xor l                                            ; $4bc1: $ad
	ld [bc], a                                       ; $4bc2: $02
	ld l, a                                          ; $4bc3: $6f
	ldh a, [c]                                       ; $4bc4: $f2
	sbc l                                            ; $4bc5: $9d
	dec d                                            ; $4bc6: $15
	ld [$1c6f], a                                    ; $4bc7: $ea $6f $1c
	sbc [hl]                                         ; $4bca: $9e
	ld a, [bc]                                       ; $4bcb: $0a
	ld l, e                                          ; $4bcc: $6b
	ret nc                                           ; $4bcd: $d0

	ld [hl], e                                       ; $4bce: $73
	jr nz, jr_044_4b65                               ; $4bcf: $20 $94

	xor b                                            ; $4bd1: $a8
	and a                                            ; $4bd2: $a7
	ld d, b                                          ; $4bd3: $50
	ld e, d                                          ; $4bd4: $5a
	add l                                            ; $4bd5: $85
	nop                                              ; $4bd6: $00
	nop                                              ; $4bd7: $00
	add b                                            ; $4bd8: $80
	ld a, [hl]                                       ; $4bd9: $7e
	nop                                              ; $4bda: $00
	cp $fe                                           ; $4bdb: $fe $fe
	ld a, a                                          ; $4bdd: $7f
	db $fc                                           ; $4bde: $fc
	ld a, e                                          ; $4bdf: $7b
	ld a, [$f88d]                                    ; $4be0: $fa $8d $f8
	ld b, $be                                        ; $4be3: $06 $be
	ld h, c                                          ; $4be5: $61
	and b                                            ; $4be6: $a0
	ld a, a                                          ; $4be7: $7f
	xor a                                            ; $4be8: $af
	ld [hl], b                                       ; $4be9: $70
	and h                                            ; $4bea: $a4
	ld a, b                                          ; $4beb: $78
	xor b                                            ; $4bec: $a8
	ld [hl], h                                       ; $4bed: $74
	and [hl]                                         ; $4bee: $a6
	ld a, b                                          ; $4bef: $78
	xor e                                            ; $4bf0: $ab
	ld [hl], h                                       ; $4bf1: $74
	add l                                            ; $4bf2: $85
	ld a, d                                          ; $4bf3: $7a
	halt                                             ; $4bf4: $76
	call z, $809b                                    ; $4bf5: $cc $9b $80
	ld b, b                                          ; $4bf8: $40
	nop                                              ; $4bf9: $00
	ld h, b                                          ; $4bfa: $60
	ld a, e                                          ; $4bfb: $7b
	cp $73                                           ; $4bfc: $fe $73
	ld a, [$ab94]                                    ; $4bfe: $fa $94 $ab
	ld d, h                                          ; $4c01: $54
	rst $38                                          ; $4c02: $ff
	nop                                              ; $4c03: $00
	ccf                                              ; $4c04: $3f
	nop                                              ; $4c05: $00
	jr nz, jr_044_4c27                               ; $4c06: $20 $1f

	jr nz, jr_044_4c29                               ; $4c08: $20 $1f

	ld l, $73                                        ; $4c0a: $2e $73
	cp $77                                           ; $4c0c: $fe $77
	adc b                                            ; $4c0e: $88
	sub e                                            ; $4c0f: $93
	ld hl, sp+$00                                    ; $4c10: $f8 $00
	ld bc, $00e1                                     ; $4c12: $01 $e1 $00
	rst $38                                          ; $4c15: $ff
	ret nc                                           ; $4c16: $d0

	rst $38                                          ; $4c17: $ff
	db $dd                                           ; $4c18: $dd
	rst $38                                          ; $4c19: $ff
	db $db                                           ; $4c1a: $db
	cp $77                                           ; $4c1b: $fe $77
	ldh a, [$98]                                     ; $4c1d: $f0 $98
	ld c, $01                                        ; $4c1f: $0e $01
	db $fd                                           ; $4c21: $fd
	ldh a, [c]                                       ; $4c22: $f2
	rlca                                             ; $4c23: $07
	ld hl, sp-$0c                                    ; $4c24: $f8 $f4
	db $dd                                           ; $4c26: $dd

jr_044_4c27:
	rst $38                                          ; $4c27: $ff
	ld a, d                                          ; $4c28: $7a

jr_044_4c29:
	ld [hl], b                                       ; $4c29: $70
	ld a, a                                          ; $4c2a: $7f
	inc e                                            ; $4c2b: $1c
	ld l, [hl]                                       ; $4c2c: $6e
	and h                                            ; $4c2d: $a4
	ld a, a                                          ; $4c2e: $7f
	cp b                                             ; $4c2f: $b8
	sbc c                                            ; $4c30: $99
	rst SubAFromBC                                          ; $4c31: $e7
	ld hl, sp-$09                                    ; $4c32: $f8 $f7
	nop                                              ; $4c34: $00
	xor [hl]                                         ; $4c35: $ae
	ld d, c                                          ; $4c36: $51
	ld h, [hl]                                       ; $4c37: $66
	add b                                            ; $4c38: $80
	ld [hl], a                                       ; $4c39: $77
	ld [hl], a                                       ; $4c3a: $77
	sub a                                            ; $4c3b: $97
	inc bc                                           ; $4c3c: $03
	db $fc                                           ; $4c3d: $fc
	xor a                                            ; $4c3e: $af
	ld d, b                                          ; $4c3f: $50

jr_044_4c40:
	rst SubAFromDE                                          ; $4c40: $df
	jr nz, jr_044_4c40                               ; $4c41: $20 $fd

	ld [bc], a                                       ; $4c43: $02
	ld [hl], a                                       ; $4c44: $77
	ldh a, [c]                                       ; $4c45: $f2
	ld l, a                                          ; $4c46: $6f
	xor $9b                                          ; $4c47: $ee $9b
	rst SubAFromHL                                          ; $4c49: $d7
	jr z, @-$53                                      ; $4c4a: $28 $ab

	ld d, h                                          ; $4c4c: $54
	ld l, a                                          ; $4c4d: $6f
	ldh [c], a                                       ; $4c4e: $e2
	ld a, a                                          ; $4c4f: $7f
	sub $77                                          ; $4c50: $d6 $77
	ldh a, [$9e]                                     ; $4c52: $f0 $9e
	ld [$2a7b], a                                    ; $4c54: $ea $7b $2a
	sbc h                                            ; $4c57: $9c
	ld a, [$f500]                                    ; $4c58: $fa $00 $f5
	ld a, e                                          ; $4c5b: $7b

jr_044_4c5c:
	or $77                                           ; $4c5c: $f6 $77
	or [hl]                                          ; $4c5e: $b6
	ld a, a                                          ; $4c5f: $7f
	ld a, [$ef9a]                                    ; $4c60: $fa $9a $ef
	db $10                                           ; $4c63: $10
	ld e, d                                          ; $4c64: $5a
	jr nz, jr_044_4c5c                               ; $4c65: $20 $f5

	ld a, e                                          ; $4c67: $7b
	ld a, [$f47f]                                    ; $4c68: $fa $7f $f4
	ld a, a                                          ; $4c6b: $7f
	add $7f                                          ; $4c6c: $c6 $7f
	xor [hl]                                         ; $4c6e: $ae
	ld l, a                                          ; $4c6f: $6f
	ld [$6898], a                                    ; $4c70: $ea $98 $68
	rla                                              ; $4c73: $17
	db $dd                                           ; $4c74: $dd
	ld [hl+], a                                      ; $4c75: $22
	ld a, [hl]                                       ; $4c76: $7e
	add c                                            ; $4c77: $81
	db $eb                                           ; $4c78: $eb
	ld [hl], e                                       ; $4c79: $73
	nop                                              ; $4c7a: $00
	ld l, [hl]                                       ; $4c7b: $6e
	call c, $be6f                                    ; $4c7c: $dc $6f $be
	ld a, a                                          ; $4c7f: $7f
	ret z                                            ; $4c80: $c8

	ld a, [hl]                                       ; $4c81: $7e
	ld a, [hl]                                       ; $4c82: $7e
	ld a, [hl]                                       ; $4c83: $7e
	adc h                                            ; $4c84: $8c
	ld a, a                                          ; $4c85: $7f
	jp c, $2f9b                                      ; $4c86: $da $9b $2f

	ret nc                                           ; $4c89: $d0

	ld e, l                                          ; $4c8a: $5d
	and b                                            ; $4c8b: $a0
	ld [hl], a                                       ; $4c8c: $77
	cp h                                             ; $4c8d: $bc
	halt                                             ; $4c8e: $76
	ld [hl], b                                       ; $4c8f: $70
	sbc [hl]                                         ; $4c90: $9e
	db $fd                                           ; $4c91: $fd
	ld a, e                                          ; $4c92: $7b
	xor [hl]                                         ; $4c93: $ae
	sbc [hl]                                         ; $4c94: $9e
	push de                                          ; $4c95: $d5
	ld a, e                                          ; $4c96: $7b
	ret c                                            ; $4c97: $d8

	ld a, a                                          ; $4c98: $7f
	halt                                             ; $4c99: $76
	ld a, l                                          ; $4c9a: $7d
	dec h                                            ; $4c9b: $25
	ld [hl], a                                       ; $4c9c: $77
	adc b                                            ; $4c9d: $88
	ld a, [hl]                                       ; $4c9e: $7e
	ld b, [hl]                                       ; $4c9f: $46
	halt                                             ; $4ca0: $76
	ld [hl-], a                                      ; $4ca1: $32
	sbc [hl]                                         ; $4ca2: $9e
	cp a                                             ; $4ca3: $bf
	ld a, e                                          ; $4ca4: $7b
	and $9d                                          ; $4ca5: $e6 $9d
	db $eb                                           ; $4ca7: $eb
	inc d                                            ; $4ca8: $14
	ld [hl], a                                       ; $4ca9: $77
	jp z, $1798                                      ; $4caa: $ca $98 $17

	nop                                              ; $4cad: $00
	dec hl                                           ; $4cae: $2b
	nop                                              ; $4caf: $00
	dec b                                            ; $4cb0: $05
	nop                                              ; $4cb1: $00
	and d                                            ; $4cb2: $a2
	ld a, e                                          ; $4cb3: $7b
	jp nc, $ce7f                                     ; $4cb4: $d2 $7f $ce

	sub b                                            ; $4cb7: $90
	ld [hl], l                                       ; $4cb8: $75
	add b                                            ; $4cb9: $80
	db $eb                                           ; $4cba: $eb
	nop                                              ; $4cbb: $00
	sbc $01                                          ; $4cbc: $de $01
	di                                               ; $4cbe: $f3
	ld [$00e7], sp                                   ; $4cbf: $08 $e7 $00
	or $09                                           ; $4cc2: $f6 $09
	ld e, [hl]                                       ; $4cc4: $5e
	nop                                              ; $4cc5: $00
	xor e                                            ; $4cc6: $ab
	ld [hl], d                                       ; $4cc7: $72
	push bc                                          ; $4cc8: $c5
	sbc b                                            ; $4cc9: $98
	ld [hl], l                                       ; $4cca: $75
	ld [$14e8], sp                                   ; $4ccb: $08 $e8 $14
	ld a, d                                          ; $4cce: $7a
	add b                                            ; $4ccf: $80
	call nz, $ca73                                   ; $4cd0: $c4 $73 $ca
	halt                                             ; $4cd3: $76
	ld [hl], e                                       ; $4cd4: $73
	halt                                             ; $4cd5: $76
	jp z, $fc9d                                      ; $4cd6: $ca $9d $fc

	ld [bc], a                                       ; $4cd9: $02
	ld a, d                                          ; $4cda: $7a
	cp h                                             ; $4cdb: $bc
	ld l, d                                          ; $4cdc: $6a
	cp [hl]                                          ; $4cdd: $be
	sbc d                                            ; $4cde: $9a
	adc e                                            ; $4cdf: $8b
	ld [hl], h                                       ; $4ce0: $74
	and l                                            ; $4ce1: $a5
	ld a, d                                          ; $4ce2: $7a
	xor e                                            ; $4ce3: $ab
	ld e, e                                          ; $4ce4: $5b
	db $fc                                           ; $4ce5: $fc
	ld l, [hl]                                       ; $4ce6: $6e
	jp z, $fa5f                                      ; $4ce7: $ca $5f $fa

	ld l, [hl]                                       ; $4cea: $6e
	jp z, $fe5f                                      ; $4ceb: $ca $5f $fe

	adc h                                            ; $4cee: $8c
	rst SubAFromDE                                          ; $4cef: $df
	cp $df                                           ; $4cf0: $fe $df
	jr nz, jr_044_4d04                               ; $4cf2: $20 $10

	ldh [rSVBK], a                                   ; $4cf4: $e0 $70
	rst $38                                          ; $4cf6: $ff
	ld [$04f0], sp                                   ; $4cf7: $08 $f0 $04
	ld hl, sp+$7c                                    ; $4cfa: $f8 $7c
	rst $38                                          ; $4cfc: $ff
	nop                                              ; $4cfd: $00
	db $fc                                           ; $4cfe: $fc
	add b                                            ; $4cff: $80
	nop                                              ; $4d00: $00
	ret nz                                           ; $4d01: $c0

	db $fd                                           ; $4d02: $fd
	ld l, l                                          ; $4d03: $6d

jr_044_4d04:
	inc sp                                           ; $4d04: $33
	ld l, a                                          ; $4d05: $6f
	ld a, [$f053]                                    ; $4d06: $fa $53 $f0
	sub e                                            ; $4d09: $93
	inc b                                            ; $4d0a: $04
	inc bc                                           ; $4d0b: $03
	ld bc, $3e00                                     ; $4d0c: $01 $00 $3e
	inc a                                            ; $4d0f: $3c
	nop                                              ; $4d10: $00
	cp [hl]                                          ; $4d11: $be
	inc a                                            ; $4d12: $3c
	inc bc                                           ; $4d13: $03
	ld bc, $7b01                                     ; $4d14: $01 $01 $7b
	inc sp                                           ; $4d17: $33
	adc [hl]                                         ; $4d18: $8e
	ld bc, $0055                                     ; $4d19: $01 $55 $00
	ld l, d                                          ; $4d1c: $6a
	add b                                            ; $4d1d: $80
	or c                                             ; $4d1e: $b1
	ld a, [hl]                                       ; $4d1f: $7e
	ld a, $1c                                        ; $4d20: $3e $1c
	push af                                          ; $4d22: $f5
	ld c, $e7                                        ; $4d23: $0e $e7
	di                                               ; $4d25: $f3
	ld [bc], a                                       ; $4d26: $02
	pop af                                           ; $4d27: $f1
	rst SubAFromHL                                          ; $4d28: $d7
	jr c, jr_044_4da2                                ; $4d29: $38 $77

	ld e, h                                          ; $4d2b: $5c
	ld [hl], a                                       ; $4d2c: $77
	ld h, [hl]                                       ; $4d2d: $66
	sub a                                            ; $4d2e: $97
	dec d                                            ; $4d2f: $15
	nop                                              ; $4d30: $00
	ret nz                                           ; $4d31: $c0

	ldh [rP1], a                                     ; $4d32: $e0 $00
	ldh [$c0], a                                     ; $4d34: $e0 $c0
	ld h, b                                          ; $4d36: $60
	ld l, l                                          ; $4d37: $6d
	pop af                                           ; $4d38: $f1
	ld [hl], l                                       ; $4d39: $75
	ld h, d                                          ; $4d3a: $62
	sbc [hl]                                         ; $4d3b: $9e
	ld a, [bc]                                       ; $4d3c: $0a
	ld l, e                                          ; $4d3d: $6b
	cp l                                             ; $4d3e: $bd
	sbc h                                            ; $4d3f: $9c
	cp $01                                           ; $4d40: $fe $01
	rst FarCall                                          ; $4d42: $f7
	ld l, c                                          ; $4d43: $69
	ld d, d                                          ; $4d44: $52
	ld a, a                                          ; $4d45: $7f
	call c, Call_044_7fff                            ; $4d46: $dc $ff $7f
	jr @-$61                                         ; $4d49: $18 $9d

	cp a                                             ; $4d4b: $bf
	ld b, b                                          ; $4d4c: $40
	halt                                             ; $4d4d: $76
	xor b                                            ; $4d4e: $a8
	ld [hl], a                                       ; $4d4f: $77
	ldh a, [$7f]                                     ; $4d50: $f0 $7f
	db $fc                                           ; $4d52: $fc
	rst $38                                          ; $4d53: $ff
	sbc e                                            ; $4d54: $9b
	ld a, l                                          ; $4d55: $7d
	ld [bc], a                                       ; $4d56: $02
	ld a, [$7005]                                    ; $4d57: $fa $05 $70
	jp nc, $f06b                                     ; $4d5a: $d2 $6b $f0

	ld l, h                                          ; $4d5d: $6c
	adc $7f                                          ; $4d5e: $ce $7f
	ldh a, [$7f]                                     ; $4d60: $f0 $7f
	ret c                                            ; $4d62: $d8

	ld a, a                                          ; $4d63: $7f
	ldh a, [$9e]                                     ; $4d64: $f0 $9e
	ld d, h                                          ; $4d66: $54
	cp $75                                           ; $4d67: $fe $75
	ld a, [hl-]                                      ; $4d69: $3a
	ld a, a                                          ; $4d6a: $7f
	ldh a, [c]                                       ; $4d6b: $f2
	ld a, [hl]                                       ; $4d6c: $7e
	or [hl]                                          ; $4d6d: $b6
	ld h, a                                          ; $4d6e: $67
	ldh [$7f], a                                     ; $4d6f: $e0 $7f
	ldh a, [$75]                                     ; $4d71: $f0 $75
	xor $7e                                          ; $4d73: $ee $7e
	call nc, $f067                                   ; $4d75: $d4 $67 $f0
	sbc h                                            ; $4d78: $9c
	sub $01                                          ; $4d79: $d6 $01
	xor a                                            ; $4d7b: $af
	ld a, b                                          ; $4d7c: $78
	and $6f                                          ; $4d7d: $e6 $6f
	ldh [$7e], a                                     ; $4d7f: $e0 $7e
	cp b                                             ; $4d81: $b8
	rst $38                                          ; $4d82: $ff
	ld a, a                                          ; $4d83: $7f
	ldh [c], a                                       ; $4d84: $e2
	ld a, h                                          ; $4d85: $7c
	ldh a, [$5f]                                     ; $4d86: $f0 $5f
	ld a, h                                          ; $4d88: $7c
	rst $38                                          ; $4d89: $ff
	ld a, a                                          ; $4d8a: $7f
	sub h                                            ; $4d8b: $94
	ld a, h                                          ; $4d8c: $7c
	xor d                                            ; $4d8d: $aa
	ld d, a                                          ; $4d8e: $57
	ldh a, [$97]                                     ; $4d8f: $f0 $97
	ldh a, [$0e]                                     ; $4d91: $f0 $0e
	ld c, $f0                                        ; $4d93: $0e $f0
	ret c                                            ; $4d95: $d8

	jr nz, jr_044_4dc2                               ; $4d96: $20 $2a

	ldh a, [$78]                                     ; $4d98: $f0 $78
	xor $95                                          ; $4d9a: $ee $95
	rst $38                                          ; $4d9c: $ff
	inc b                                            ; $4d9d: $04
	rst $38                                          ; $4d9e: $ff
	jr z, @+$01                                      ; $4d9f: $28 $ff

	dec hl                                           ; $4da1: $2b

jr_044_4da2:
	db $f4                                           ; $4da2: $f4
	dec h                                            ; $4da3: $25
	ld a, [$7b6b]                                    ; $4da4: $fa $6b $7b
	db $fc                                           ; $4da7: $fc
	ld a, a                                          ; $4da8: $7f
	ld hl, sp-$67                                    ; $4da9: $f8 $99
	ld d, b                                          ; $4dab: $50
	rst $38                                          ; $4dac: $ff
	xor b                                            ; $4dad: $a8
	rst $38                                          ; $4dae: $ff
	ld d, b                                          ; $4daf: $50
	rst $38                                          ; $4db0: $ff
	ld l, [hl]                                       ; $4db1: $6e
	push bc                                          ; $4db2: $c5
	sbc b                                            ; $4db3: $98
	ld b, d                                          ; $4db4: $42
	nop                                              ; $4db5: $00
	ld a, b                                          ; $4db6: $78
	rlca                                             ; $4db7: $07
	nop                                              ; $4db8: $00
	rst $38                                          ; $4db9: $ff
	ld bc, $c97b                                     ; $4dba: $01 $7b $c9
	ld l, [hl]                                       ; $4dbd: $6e
	jp z, $ec9a                                      ; $4dbe: $ca $9a $ec

	rra                                              ; $4dc1: $1f

jr_044_4dc2:
	nop                                              ; $4dc2: $00
	rst $38                                          ; $4dc3: $ff
	ld [$d07b], sp                                   ; $4dc4: $08 $7b $d0
	sbc b                                            ; $4dc7: $98
	jr nz, @+$01                                     ; $4dc8: $20 $ff

	db $fc                                           ; $4dca: $fc
	nop                                              ; $4dcb: $00
	rst $38                                          ; $4dcc: $ff
	ld a, [hl]                                       ; $4dcd: $7e
	cp $7b                                           ; $4dce: $fe $7b
	or d                                             ; $4dd0: $b2
	sbc c                                            ; $4dd1: $99
	ld e, a                                          ; $4dd2: $5f
	add b                                            ; $4dd3: $80
	rrca                                             ; $4dd4: $0f
	ldh a, [$0a]                                     ; $4dd5: $f0 $0a
	rst $38                                          ; $4dd7: $ff
	ld a, e                                          ; $4dd8: $7b
	and l                                            ; $4dd9: $a5
	ld [hl], e                                       ; $4dda: $73
	and [hl]                                         ; $4ddb: $a6
	rst $38                                          ; $4ddc: $ff
	ld a, a                                          ; $4ddd: $7f
	call z, $be9b                                    ; $4dde: $cc $9b $be
	ld bc, $3fc0                                     ; $4de1: $01 $c0 $3f
	ld l, h                                          ; $4de4: $6c
	ld a, a                                          ; $4de5: $7f
	ld [hl], a                                       ; $4de6: $77
	ldh a, [$7f]                                     ; $4de7: $f0 $7f
	push af                                          ; $4de9: $f5
	sbc [hl]                                         ; $4dea: $9e
	jp z, $f277                                      ; $4deb: $ca $77 $f2

	ld h, e                                          ; $4dee: $63
	ldh a, [rIE]                                     ; $4def: $f0 $ff
	sbc h                                            ; $4df1: $9c
	sbc a                                            ; $4df2: $9f
	ldh [rLCDC], a                                   ; $4df3: $e0 $40
	ld a, e                                          ; $4df5: $7b
	adc h                                            ; $4df6: $8c
	rst SubAFromDE                                          ; $4df7: $df
	rra                                              ; $4df8: $1f
	sbc e                                            ; $4df9: $9b
	ret nz                                           ; $4dfa: $c0

	rra                                              ; $4dfb: $1f
	sub [hl]                                         ; $4dfc: $96
	add hl, bc                                       ; $4dfd: $09
	db $fd                                           ; $4dfe: $fd
	adc c                                            ; $4dff: $89
	jr nc, jr_044_4dc2                               ; $4e00: $30 $c0

	nop                                              ; $4e02: $00
	ldh a, [rP1]                                     ; $4e03: $f0 $00
	db $fc                                           ; $4e05: $fc
	inc hl                                           ; $4e06: $23
	cp [hl]                                          ; $4e07: $be
	sbc c                                            ; $4e08: $99
	ld b, $c1                                        ; $4e09: $06 $c1
	ld b, $01                                        ; $4e0b: $06 $01
	di                                               ; $4e0d: $f3
	ld hl, sp-$08                                    ; $4e0e: $f8 $f8
	ld [bc], a                                       ; $4e10: $02
	db $fc                                           ; $4e11: $fc
	pop hl                                           ; $4e12: $e1
	ld e, $e7                                        ; $4e13: $1e $e7
	ld e, b                                          ; $4e15: $58
	ld a, b                                          ; $4e16: $78
	and [hl]                                         ; $4e17: $a6
	ld a, e                                          ; $4e18: $7b
	jp z, $f596                                      ; $4e19: $ca $96 $f5

	rrca                                             ; $4e1c: $0f
	rst $38                                          ; $4e1d: $ff
	adc a                                            ; $4e1e: $8f
	dec [hl]                                         ; $4e1f: $35
	ld e, a                                          ; $4e20: $5f
	inc b                                            ; $4e21: $04
	dec de                                           ; $4e22: $1b
	rrca                                             ; $4e23: $0f
	ld a, b                                          ; $4e24: $78
	ret nz                                           ; $4e25: $c0

	ld a, c                                          ; $4e26: $79
	dec hl                                           ; $4e27: $2b
	sbc l                                            ; $4e28: $9d
	rst $38                                          ; $4e29: $ff
	ld hl, sp-$22                                    ; $4e2a: $f8 $de
	rst $38                                          ; $4e2c: $ff
	ld a, l                                          ; $4e2d: $7d
	sbc a                                            ; $4e2e: $9f
	sbc h                                            ; $4e2f: $9c
	ld a, a                                          ; $4e30: $7f
	adc b                                            ; $4e31: $88
	rst $38                                          ; $4e32: $ff
	ld a, b                                          ; $4e33: $78
	and b                                            ; $4e34: $a0
	sbc [hl]                                         ; $4e35: $9e
	ret nz                                           ; $4e36: $c0

	ld [hl], e                                       ; $4e37: $73
	ld sp, $ee7f                                     ; $4e38: $31 $7f $ee
	sbc c                                            ; $4e3b: $99
	ld e, h                                          ; $4e3c: $5c
	rst $38                                          ; $4e3d: $ff
	xor [hl]                                         ; $4e3e: $ae
	rst $38                                          ; $4e3f: $ff
	rst $38                                          ; $4e40: $ff
	inc bc                                           ; $4e41: $03
	ld [hl], l                                       ; $4e42: $75
	inc l                                            ; $4e43: $2c
	sbc [hl]                                         ; $4e44: $9e
	ld d, b                                          ; $4e45: $50
	ld a, c                                          ; $4e46: $79
	sub a                                            ; $4e47: $97
	ld l, h                                          ; $4e48: $6c
	ld d, [hl]                                       ; $4e49: $56
	ld a, a                                          ; $4e4a: $7f
	ret                                              ; $4e4b: $c9


	ld [hl], a                                       ; $4e4c: $77
	db $e3                                           ; $4e4d: $e3
	ld a, a                                          ; $4e4e: $7f
	ld h, [hl]                                       ; $4e4f: $66
	ld a, e                                          ; $4e50: $7b
	jp z, $fa73                                      ; $4e51: $ca $73 $fa

	sbc h                                            ; $4e54: $9c
	ldh [rIE], a                                     ; $4e55: $e0 $ff
	ret nz                                           ; $4e57: $c0

	ld [hl], e                                       ; $4e58: $73
	ld a, e                                          ; $4e59: $7b
	sbc l                                            ; $4e5a: $9d
	ld a, [bc]                                       ; $4e5b: $0a
	ldh a, [rOCPD]                                   ; $4e5c: $f0 $6b
	ld [hl], l                                       ; $4e5e: $75
	ld [hl], e                                       ; $4e5f: $73
	ei                                               ; $4e60: $fb
	halt                                             ; $4e61: $76
	and h                                            ; $4e62: $a4
	ld a, c                                          ; $4e63: $79
	ld d, $9a                                        ; $4e64: $16 $9a
	dec d                                            ; $4e66: $15
	ld a, a                                          ; $4e67: $7f
	add b                                            ; $4e68: $80
	ld [bc], a                                       ; $4e69: $02
	db $fd                                           ; $4e6a: $fd
	ld [hl], a                                       ; $4e6b: $77
	ldh a, [$7e]                                     ; $4e6c: $f0 $7e
	add sp, $7c                                      ; $4e6e: $e8 $7c
	ld c, b                                          ; $4e70: $48
	ld l, h                                          ; $4e71: $6c
	ldh a, [$7f]                                     ; $4e72: $f0 $7f
	db $fc                                           ; $4e74: $fc
	ld [hl], a                                       ; $4e75: $77
	ldh a, [$7d]                                     ; $4e76: $f0 $7d
	ld e, b                                          ; $4e78: $58
	ld a, a                                          ; $4e79: $7f
	and $7e                                          ; $4e7a: $e6 $7e
	ret z                                            ; $4e7c: $c8

	sbc c                                            ; $4e7d: $99
	xor b                                            ; $4e7e: $a8
	ld d, a                                          ; $4e7f: $57
	rst $38                                          ; $4e80: $ff
	nop                                              ; $4e81: $00
	add b                                            ; $4e82: $80
	ld a, a                                          ; $4e83: $7f
	ld [hl], e                                       ; $4e84: $73
	ldh [$7a], a                                     ; $4e85: $e0 $7a
	ld a, h                                          ; $4e87: $7c
	ld [hl], a                                       ; $4e88: $77
	and b                                            ; $4e89: $a0
	ld [hl], a                                       ; $4e8a: $77
	jp $d796                                         ; $4e8b: $c3 $96 $d7


	rst $38                                          ; $4e8e: $ff
	xor c                                            ; $4e8f: $a9
	rst $38                                          ; $4e90: $ff
	ld e, a                                          ; $4e91: $5f
	rst $38                                          ; $4e92: $ff
	rst AddAOntoHL                                          ; $4e93: $ef
	rst $38                                          ; $4e94: $ff
	ld a, a                                          ; $4e95: $7f
	sbc $ff                                          ; $4e96: $de $ff
	sbc b                                            ; $4e98: $98
	ld a, [hl]                                       ; $4e99: $7e
	rst $38                                          ; $4e9a: $ff
	cp [hl]                                          ; $4e9b: $be
	rst $38                                          ; $4e9c: $ff
	add sp, -$01                                     ; $4e9d: $e8 $ff
	push de                                          ; $4e9f: $d5
	sbc $ff                                          ; $4ea0: $de $ff
	ld a, a                                          ; $4ea2: $7f
	ld [$ce7f], a                                    ; $4ea3: $ea $7f $ce
	ld a, a                                          ; $4ea6: $7f
	ld [bc], a                                       ; $4ea7: $02
	add [hl]                                         ; $4ea8: $86
	add $39                                          ; $4ea9: $c6 $39
	call z, $8033                                    ; $4eab: $cc $33 $80
	rst $38                                          ; $4eae: $ff
	ld a, [hl+]                                      ; $4eaf: $2a
	rst $38                                          ; $4eb0: $ff
	db $fd                                           ; $4eb1: $fd
	rst $38                                          ; $4eb2: $ff
	ld a, [$07ff]                                    ; $4eb3: $fa $ff $07
	rst $38                                          ; $4eb6: $ff
	ld b, h                                          ; $4eb7: $44
	cp a                                             ; $4eb8: $bf
	dec de                                           ; $4eb9: $1b
	rst SubAFromBC                                          ; $4eba: $e7
	jr @-$17                                         ; $4ebb: $18 $e7

	nop                                              ; $4ebd: $00
	rst $38                                          ; $4ebe: $ff
	and l                                            ; $4ebf: $a5
	rst $38                                          ; $4ec0: $ff
	ld e, $7b                                        ; $4ec1: $1e $7b
	xor $9e                                          ; $4ec3: $ee $9e
	ldh a, [c]                                       ; $4ec5: $f2
	ld a, e                                          ; $4ec6: $7b
	db $fc                                           ; $4ec7: $fc
	sub d                                            ; $4ec8: $92
	cp $ff                                           ; $4ec9: $fe $ff
	rra                                              ; $4ecb: $1f
	ldh [$8a], a                                     ; $4ecc: $e0 $8a
	rst $38                                          ; $4ece: $ff
	ld [hl], l                                       ; $4ecf: $75
	rst $38                                          ; $4ed0: $ff
	cp d                                             ; $4ed1: $ba
	rst $38                                          ; $4ed2: $ff
	ld b, l                                          ; $4ed3: $45
	rst $38                                          ; $4ed4: $ff
	ld [$f87b], a                                    ; $4ed5: $ea $7b $f8
	sub [hl]                                         ; $4ed8: $96
	add d                                            ; $4ed9: $82
	ld hl, sp+$20                                    ; $4eda: $f8 $20
	nop                                              ; $4edc: $00
	add b                                            ; $4edd: $80
	rst $38                                          ; $4ede: $ff
	ld d, d                                          ; $4edf: $52
	rst $38                                          ; $4ee0: $ff
	db $ed                                           ; $4ee1: $ed
	ld a, e                                          ; $4ee2: $7b
	or d                                             ; $4ee3: $b2
	ld a, a                                          ; $4ee4: $7f
	ldh a, [$9e]                                     ; $4ee5: $f0 $9e
	ld c, $71                                        ; $4ee7: $0e $71
	ld [hl], a                                       ; $4ee9: $77
	ld a, [hl]                                       ; $4eea: $7e
	adc h                                            ; $4eeb: $8c
	ld a, a                                          ; $4eec: $7f
	ld [hl], l                                       ; $4eed: $75
	rst SubAFromDE                                          ; $4eee: $df
	rst $38                                          ; $4eef: $ff
	sbc e                                            ; $4ef0: $9b
	ld a, b                                          ; $4ef1: $78
	add a                                            ; $4ef2: $87
	ld [$fd80], sp                                   ; $4ef3: $08 $80 $fd
	sbc c                                            ; $4ef6: $99
	inc bc                                           ; $4ef7: $03

jr_044_4ef8:
	nop                                              ; $4ef8: $00
	ld b, b                                          ; $4ef9: $40
	rst $38                                          ; $4efa: $ff
	and b                                            ; $4efb: $a0
	rst $38                                          ; $4efc: $ff
	ld a, e                                          ; $4efd: $7b
	db $fc                                           ; $4efe: $fc
	cp $96                                           ; $4eff: $fe $96
	ld de, $0408                                     ; $4f01: $11 $08 $04
	ldh [c], a                                       ; $4f04: $e2
	ld [$5f90], sp                                   ; $4f05: $08 $90 $5f
	rst $38                                          ; $4f08: $ff
	cp a                                             ; $4f09: $bf
	ld [hl], a                                       ; $4f0a: $77
	add h                                            ; $4f0b: $84
	db $fc                                           ; $4f0c: $fc
	ld a, l                                          ; $4f0d: $7d
	ld l, a                                          ; $4f0e: $6f
	sbc [hl]                                         ; $4f0f: $9e
	ld a, [hl+]                                      ; $4f10: $2a
	halt                                             ; $4f11: $76
	pop hl                                           ; $4f12: $e1
	ld a, e                                          ; $4f13: $7b
	ld a, [de]                                       ; $4f14: $1a
	ld a, l                                          ; $4f15: $7d
	add l                                            ; $4f16: $85
	rst $38                                          ; $4f17: $ff
	ld a, [hl]                                       ; $4f18: $7e
	push hl                                          ; $4f19: $e5
	ld [hl], b                                       ; $4f1a: $70
	sbc $76                                          ; $4f1b: $de $76
	ldh [$7f], a                                     ; $4f1d: $e0 $7f
	jr z, jr_044_4f9a                                ; $4f1f: $28 $79

	sub h                                            ; $4f21: $94
	ld a, a                                          ; $4f22: $7f
	db $f4                                           ; $4f23: $f4
	sbc [hl]                                         ; $4f24: $9e
	ld e, l                                          ; $4f25: $5d
	ld a, e                                          ; $4f26: $7b
	ld b, [hl]                                       ; $4f27: $46
	sbc d                                            ; $4f28: $9a
	rra                                              ; $4f29: $1f
	rst $38                                          ; $4f2a: $ff
	nop                                              ; $4f2b: $00
	ret                                              ; $4f2c: $c9


	nop                                              ; $4f2d: $00
	ld [hl], d                                       ; $4f2e: $72
	inc b                                            ; $4f2f: $04
	ld a, h                                          ; $4f30: $7c
	and h                                            ; $4f31: $a4
	ld [hl], c                                       ; $4f32: $71
	and [hl]                                         ; $4f33: $a6
	ld a, d                                          ; $4f34: $7a
	db $fc                                           ; $4f35: $fc
	sbc [hl]                                         ; $4f36: $9e
	inc de                                           ; $4f37: $13
	ld a, b                                          ; $4f38: $78
	add b                                            ; $4f39: $80
	ld [hl], a                                       ; $4f3a: $77
	ld l, $7f                                        ; $4f3b: $2e $7f
	ld e, $93                                        ; $4f3d: $1e $93
	ld b, b                                          ; $4f3f: $40
	cp a                                             ; $4f40: $bf
	db $fd                                           ; $4f41: $fd
	rst $38                                          ; $4f42: $ff
	ld a, [hl-]                                      ; $4f43: $3a
	push bc                                          ; $4f44: $c5
	ldh a, [rIF]                                     ; $4f45: $f0 $0f
	ld b, b                                          ; $4f47: $40
	cp a                                             ; $4f48: $bf
	sub l                                            ; $4f49: $95
	ld a, a                                          ; $4f4a: $7f
	ld [hl], d                                       ; $4f4b: $72
	ldh [c], a                                       ; $4f4c: $e2
	ld a, d                                          ; $4f4d: $7a
	sbc d                                            ; $4f4e: $9a
	sbc [hl]                                         ; $4f4f: $9e
	xor d                                            ; $4f50: $aa
	ld a, e                                          ; $4f51: $7b
	or $7f                                           ; $4f52: $f6 $7f
	ld a, h                                          ; $4f54: $7c
	ld a, a                                          ; $4f55: $7f
	ld hl, sp+$7f                                    ; $4f56: $f8 $7f
	jr c, jr_044_4ef8                                ; $4f58: $38 $9e

	rla                                              ; $4f5a: $17
	ld a, e                                          ; $4f5b: $7b
	ldh a, [$9c]                                     ; $4f5c: $f0 $9c
	ld d, [hl]                                       ; $4f5e: $56
	db $fd                                           ; $4f5f: $fd
	xor e                                            ; $4f60: $ab
	ld a, e                                          ; $4f61: $7b
	jr jr_044_4fe3                                   ; $4f62: $18 $7f

	ld a, h                                          ; $4f64: $7c
	ld a, e                                          ; $4f65: $7b
	add sp, -$22                                     ; $4f66: $e8 $de
	rst $38                                          ; $4f68: $ff
	ld a, a                                          ; $4f69: $7f
	db $ec                                           ; $4f6a: $ec
	ld a, [hl]                                       ; $4f6b: $7e
	add sp, $7f                                      ; $4f6c: $e8 $7f
	db $ec                                           ; $4f6e: $ec
	sbc l                                            ; $4f6f: $9d
	dec d                                            ; $4f70: $15
	ld [$d677], a                                    ; $4f71: $ea $77 $d6
	ld a, l                                          ; $4f74: $7d
	jp nc, $c47f                                     ; $4f75: $d2 $7f $c4

	sbc [hl]                                         ; $4f78: $9e
	and d                                            ; $4f79: $a2
	ld a, d                                          ; $4f7a: $7a
	adc b                                            ; $4f7b: $88
	sbc h                                            ; $4f7c: $9c
	ld a, [bc]                                       ; $4f7d: $0a
	push af                                          ; $4f7e: $f5
	ld b, b                                          ; $4f7f: $40
	ld a, b                                          ; $4f80: $78
	ld sp, $5b7d                                     ; $4f81: $31 $7d $5b
	ld a, e                                          ; $4f84: $7b
	db $e4                                           ; $4f85: $e4
	ld a, e                                          ; $4f86: $7b
	ld h, h                                          ; $4f87: $64
	ld a, a                                          ; $4f88: $7f
	ldh a, [$7e]                                     ; $4f89: $f0 $7e
	call z, $ea7d                                    ; $4f8b: $cc $7d $ea
	ld a, a                                          ; $4f8e: $7f
	call nc, $d07f                                   ; $4f8f: $d4 $7f $d0
	ld a, a                                          ; $4f92: $7f
	ret z                                            ; $4f93: $c8

	ld a, a                                          ; $4f94: $7f
	ld d, h                                          ; $4f95: $54
	halt                                             ; $4f96: $76
	ld c, d                                          ; $4f97: $4a
	ld [hl], a                                       ; $4f98: $77
	db $f4                                           ; $4f99: $f4

jr_044_4f9a:
	ld a, a                                          ; $4f9a: $7f
	db $fc                                           ; $4f9b: $fc
	halt                                             ; $4f9c: $76
	ret nc                                           ; $4f9d: $d0

	db $dd                                           ; $4f9e: $dd
	rst $38                                          ; $4f9f: $ff
	ld a, a                                          ; $4fa0: $7f
	or h                                             ; $4fa1: $b4
	ld a, [hl]                                       ; $4fa2: $7e
	ld a, [$fe77]                                    ; $4fa3: $fa $77 $fe
	ld a, c                                          ; $4fa6: $79
	and h                                            ; $4fa7: $a4
	ld a, e                                          ; $4fa8: $7b
	ld hl, $8082                                     ; $4fa9: $21 $82 $80
	rlca                                             ; $4fac: $07
	rrca                                             ; $4fad: $0f
	nop                                              ; $4fae: $00
	ldh [rP1], a                                     ; $4faf: $e0 $00
	ccf                                              ; $4fb1: $3f
	ret nz                                           ; $4fb2: $c0

	dec e                                            ; $4fb3: $1d
	ldh [c], a                                       ; $4fb4: $e2
	rst JumpTable                                          ; $4fb5: $c7
	ld hl, sp+$01                                    ; $4fb6: $f8 $01
	ld a, [hl]                                       ; $4fb8: $7e
	ld bc, $02fe                                     ; $4fb9: $01 $fe $02
	db $fc                                           ; $4fbc: $fc

jr_044_4fbd:
	rst $38                                          ; $4fbd: $ff
	nop                                              ; $4fbe: $00
	ld d, a                                          ; $4fbf: $57
	jr z, jr_044_4fbd                                ; $4fc0: $28 $fb

	inc l                                            ; $4fc2: $2c
	sub e                                            ; $4fc3: $93
	db $fc                                           ; $4fc4: $fc
	ldh a, [rP1]                                     ; $4fc5: $f0 $00
	add b                                            ; $4fc7: $80

Call_044_4fc8:
	ld a, e                                          ; $4fc8: $7b
	cp $ff                                           ; $4fc9: $fe $ff
	ld a, [hl]                                       ; $4fcb: $7e
	xor h                                            ; $4fcc: $ac
	ld a, a                                          ; $4fcd: $7f
	xor $7f                                          ; $4fce: $ee $7f

jr_044_4fd0:
	db $f4                                           ; $4fd0: $f4
	ei                                               ; $4fd1: $fb
	sbc [hl]                                         ; $4fd2: $9e
	ld b, $7a                                        ; $4fd3: $06 $7a
	ldh a, [$f3]                                     ; $4fd5: $f0 $f3
	sbc [hl]                                         ; $4fd7: $9e
	jr c, jr_044_4fd0                                ; $4fd8: $38 $f6

	ld a, h                                          ; $4fda: $7c
	sub b                                            ; $4fdb: $90
	ld a, a                                          ; $4fdc: $7f
	inc e                                            ; $4fdd: $1c
	ld a, l                                          ; $4fde: $7d
	rst FarCall                                          ; $4fdf: $f7
	ld [hl], a                                       ; $4fe0: $77
	ld hl, sp+$7f                                    ; $4fe1: $f8 $7f

jr_044_4fe3:
	inc b                                            ; $4fe3: $04
	ld a, [hl]                                       ; $4fe4: $7e
	jr nc, jr_044_5066                               ; $4fe5: $30 $7f

	db $f4                                           ; $4fe7: $f4
	sbc [hl]                                         ; $4fe8: $9e
	xor e                                            ; $4fe9: $ab
	ld a, b                                          ; $4fea: $78
	add [hl]                                         ; $4feb: $86
	ld a, a                                          ; $4fec: $7f
	ld d, d                                          ; $4fed: $52
	halt                                             ; $4fee: $76
	db $ec                                           ; $4fef: $ec
	adc c                                            ; $4ff0: $89
	sub l                                            ; $4ff1: $95
	ld b, b                                          ; $4ff2: $40
	ld c, a                                          ; $4ff3: $4f
	and b                                            ; $4ff4: $a0
	xor a                                            ; $4ff5: $af
	ld d, b                                          ; $4ff6: $50
	ld d, l                                          ; $4ff7: $55
	xor d                                            ; $4ff8: $aa
	xor d                                            ; $4ff9: $aa
	ld d, l                                          ; $4ffa: $55
	inc b                                            ; $4ffb: $04
	ei                                               ; $4ffc: $fb
	ld d, l                                          ; $4ffd: $55
	nop                                              ; $4ffe: $00
	xor [hl]                                         ; $4fff: $ae
	nop                                              ; $5000: $00
	rst SubAFromDE                                          ; $5001: $df
	nop                                              ; $5002: $00
	push af                                          ; $5003: $f5
	ld a, [bc]                                       ; $5004: $0a
	ld [$7715], a                                    ; $5005: $ea $15 $77
	nop                                              ; $5008: $00
	sbc c                                            ; $5009: $99
	ld d, c                                          ; $500a: $51
	xor a                                            ; $500b: $af
	ld a, d                                          ; $500c: $7a
	dec b                                            ; $500d: $05
	push de                                          ; $500e: $d5
	ld a, [hl+]                                      ; $500f: $2a
	halt                                             ; $5010: $76
	add sp, -$63                                     ; $5011: $e8 $9d
	and b                                            ; $5013: $a0
	ld e, a                                          ; $5014: $5f
	ld [hl], l                                       ; $5015: $75
	cp d                                             ; $5016: $ba
	ld a, [hl]                                       ; $5017: $7e
	call nz, $a998                                   ; $5018: $c4 $98 $a9
	ld d, a                                          ; $501b: $57
	ld d, b                                          ; $501c: $50
	xor a                                            ; $501d: $af
	ld hl, $82df                                     ; $501e: $21 $df $82
	ld [hl], e                                       ; $5021: $73
	jr nc, jr_044_50a3                               ; $5022: $30 $7f

	ld c, b                                          ; $5024: $48
	sbc [hl]                                         ; $5025: $9e
	cpl                                              ; $5026: $2f
	ld a, e                                          ; $5027: $7b
	nop                                              ; $5028: $00
	ld a, h                                          ; $5029: $7c
	call c, $ea7c                                    ; $502a: $dc $7c $ea
	ld a, a                                          ; $502d: $7f
	ld b, b                                          ; $502e: $40
	halt                                             ; $502f: $76
	ld a, [de]                                       ; $5030: $1a
	db $dd                                           ; $5031: $dd
	rst $38                                          ; $5032: $ff
	ld a, a                                          ; $5033: $7f
	call c, $0a7d                                    ; $5034: $dc $7d $0a
	ld d, a                                          ; $5037: $57
	jr nc, @+$79                                     ; $5038: $30 $77

	inc d                                            ; $503a: $14
	ld a, l                                          ; $503b: $7d
	rst SubAFromHL                                          ; $503c: $d7
	rst SubAFromHL                                          ; $503d: $d7
	rst $38                                          ; $503e: $ff
	ld [hl], a                                       ; $503f: $77
	ld [$ffd5], sp                                   ; $5040: $08 $d5 $ff
	ld a, a                                          ; $5043: $7f
	ret c                                            ; $5044: $d8

	ld a, a                                          ; $5045: $7f
	inc d                                            ; $5046: $14
	sub d                                            ; $5047: $92
	push af                                          ; $5048: $f5
	rst $38                                          ; $5049: $ff
	db $fc                                           ; $504a: $fc
	rst $38                                          ; $504b: $ff
	ld sp, hl                                        ; $504c: $f9
	rst $38                                          ; $504d: $ff
	di                                               ; $504e: $f3
	rst $38                                          ; $504f: $ff
	rst AddAOntoHL                                          ; $5050: $ef
	rst FarCall                                          ; $5051: $f7
	rst FarCall                                          ; $5052: $f7
	rst AddAOntoHL                                          ; $5053: $ef
	push af                                          ; $5054: $f5
	ld [hl], e                                       ; $5055: $73
	ret nc                                           ; $5056: $d0

	ld a, l                                          ; $5057: $7d
	ret nz                                           ; $5058: $c0

	reti                                             ; $5059: $d9


	rst $38                                          ; $505a: $ff
	halt                                             ; $505b: $76
	call c, $ff03                                    ; $505c: $dc $03 $ff
	sub $ff                                          ; $505f: $d6 $ff
	ld a, a                                          ; $5061: $7f
	add b                                            ; $5062: $80
	ld a, l                                          ; $5063: $7d
	db $10                                           ; $5064: $10
	ld a, [hl]                                       ; $5065: $7e

jr_044_5066:
	jp c, $069c                                      ; $5066: $da $9c $06

	ld hl, sp+$60                                    ; $5069: $f8 $60
	ld [hl], c                                       ; $506b: $71
	ldh [rIE], a                                     ; $506c: $e0 $ff
	sbc l                                            ; $506e: $9d
	inc c                                            ; $506f: $0c
	ldh a, [$66]                                     ; $5070: $f0 $66
	ldh [c], a                                       ; $5072: $e2
	ld sp, hl                                        ; $5073: $f9
	sbc h                                            ; $5074: $9c
	jr jr_044_5077                                   ; $5075: $18 $00

jr_044_5077:
	ld [$56f6], sp                                   ; $5077: $08 $f6 $56
	adc $67                                          ; $507a: $ce $67
	db $f4                                           ; $507c: $f4
	ld a, l                                          ; $507d: $7d
	ret z                                            ; $507e: $c8

	ld [hl], l                                       ; $507f: $75
	ldh [rPCM12], a                                  ; $5080: $e0 $76
	ret c                                            ; $5082: $d8

	sub [hl]                                         ; $5083: $96
	inc hl                                           ; $5084: $23
	nop                                              ; $5085: $00
	ld a, [hl]                                       ; $5086: $7e
	ld bc, $0ab5                                     ; $5087: $01 $b5 $0a
	ld a, d                                          ; $508a: $7a
	dec b                                            ; $508b: $05
	db $fd                                           ; $508c: $fd
	ld a, c                                          ; $508d: $79
	nop                                              ; $508e: $00
	sbc h                                            ; $508f: $9c
	rst FarCall                                          ; $5090: $f7

jr_044_5091:
	nop                                              ; $5091: $00
	rst AddAOntoHL                                          ; $5092: $ef
	ld a, e                                          ; $5093: $7b
	db $fc                                           ; $5094: $fc
	ld a, [hl]                                       ; $5095: $7e
	db $ec                                           ; $5096: $ec
	ld a, a                                          ; $5097: $7f
	sbc [hl]                                         ; $5098: $9e
	sbc l                                            ; $5099: $9d
	adc b                                            ; $509a: $88
	ld [hl], a                                       ; $509b: $77
	ld [hl], l                                       ; $509c: $75
	ld c, $99                                        ; $509d: $0e $99
	db $fc                                           ; $509f: $fc
	inc bc                                           ; $50a0: $03
	ld a, d                                          ; $50a1: $7a
	add l                                            ; $50a2: $85

jr_044_50a3:
	call nc, Call_044_762b                           ; $50a3: $d4 $2b $76
	ld d, $9e                                        ; $50a6: $16 $9e
	inc a                                            ; $50a8: $3c
	ld [hl], c                                       ; $50a9: $71
	and $76                                          ; $50aa: $e6 $76
	inc e                                            ; $50ac: $1c
	sbc d                                            ; $50ad: $9a
	ld l, d                                          ; $50ae: $6a
	rst $38                                          ; $50af: $ff
	jr nz, jr_044_5091                               ; $50b0: $20 $df

	nop                                              ; $50b2: $00
	ld a, d                                          ; $50b3: $7a
	ld b, h                                          ; $50b4: $44
	ld a, [hl]                                       ; $50b5: $7e
	db $e4                                           ; $50b6: $e4
	ld a, a                                          ; $50b7: $7f
	inc a                                            ; $50b8: $3c
	sbc [hl]                                         ; $50b9: $9e
	ccf                                              ; $50ba: $3f
	ld a, e                                          ; $50bb: $7b
	ld b, h                                          ; $50bc: $44
	ld [hl], h                                       ; $50bd: $74
	ld d, h                                          ; $50be: $54
	ld a, c                                          ; $50bf: $79
	ldh a, [$71]                                     ; $50c0: $f0 $71
	db $e4                                           ; $50c2: $e4
	ld l, [hl]                                       ; $50c3: $6e
	inc d                                            ; $50c4: $14
	ld l, c                                          ; $50c5: $69
	ld h, b                                          ; $50c6: $60
	ld a, e                                          ; $50c7: $7b
	ld a, [bc]                                       ; $50c8: $0a
	ld a, l                                          ; $50c9: $7d
	ldh [c], a                                       ; $50ca: $e2
	sbc d                                            ; $50cb: $9a
	db $d3                                           ; $50cc: $d3
	cp $aa                                           ; $50cd: $fe $aa
	db $fc                                           ; $50cf: $fc
	rst $38                                          ; $50d0: $ff
	ld a, e                                          ; $50d1: $7b
	ld [bc], a                                       ; $50d2: $02
	ld a, l                                          ; $50d3: $7d
	inc h                                            ; $50d4: $24
	ld a, a                                          ; $50d5: $7f
	and $96                                          ; $50d6: $e6 $96
	ret                                              ; $50d8: $c9


	cp [hl]                                          ; $50d9: $be
	adc a                                            ; $50da: $8f
	jr nc, jr_044_511a                               ; $50db: $30 $3d

	ld b, d                                          ; $50dd: $42
	ld [$eb15], a                                    ; $50de: $ea $15 $eb
	ld [hl], e                                       ; $50e1: $73
	jp c, $be7f                                      ; $50e2: $da $7f $be

	ld a, l                                          ; $50e5: $7d
	call z, $819e                                    ; $50e6: $cc $9e $81
	ld a, c                                          ; $50e9: $79
	sbc b                                            ; $50ea: $98
	ld a, a                                          ; $50eb: $7f
	ld hl, sp-$23                                    ; $50ec: $f8 $dd
	rst $38                                          ; $50ee: $ff
	ld a, a                                          ; $50ef: $7f
	adc $7f                                          ; $50f0: $ce $7f
	or d                                             ; $50f2: $b2
	sbc [hl]                                         ; $50f3: $9e
	xor a                                            ; $50f4: $af
	ld a, e                                          ; $50f5: $7b
	add $7e                                          ; $50f6: $c6 $7e
	sub d                                            ; $50f8: $92
	ld a, $f2                                        ; $50f9: $3e $f2
	sbc h                                            ; $50fb: $9c
	adc a                                            ; $50fc: $8f
	rst $38                                          ; $50fd: $ff
	rra                                              ; $50fe: $1f
	ld [bc], a                                       ; $50ff: $02
	db $ec                                           ; $5100: $ec
	inc bc                                           ; $5101: $03
	rst $38                                          ; $5102: $ff
	ld d, [hl]                                       ; $5103: $56
	ret nz                                           ; $5104: $c0

	or $7c                                           ; $5105: $f6 $7c
	adc a                                            ; $5107: $8f
	ld [hl], h                                       ; $5108: $74
	ret z                                            ; $5109: $c8

	ldh [$d3], a                                     ; $510a: $e0 $d3
	ld a, [hl]                                       ; $510c: $7e
	call z, $ff7c                                    ; $510d: $cc $7c $ff
	ld a, a                                          ; $5110: $7f
	db $fc                                           ; $5111: $fc
	ld a, [hl]                                       ; $5112: $7e
	ret nz                                           ; $5113: $c0

	ld a, [hl]                                       ; $5114: $7e
	cp h                                             ; $5115: $bc
	sbc h                                            ; $5116: $9c
	jr nc, jr_044_5119                               ; $5117: $30 $00

jr_044_5119:
	ld b, b                                          ; $5119: $40

jr_044_511a:
	cp $7c                                           ; $511a: $fe $7c
	xor d                                            ; $511c: $aa
	sbc h                                            ; $511d: $9c
	push af                                          ; $511e: $f5
	nop                                              ; $511f: $00
	ld a, e                                          ; $5120: $7b
	ld a, d                                          ; $5121: $7a
	ei                                               ; $5122: $fb
	sbc d                                            ; $5123: $9a
	ld e, a                                          ; $5124: $5f
	nop                                              ; $5125: $00
	xor l                                            ; $5126: $ad
	nop                                              ; $5127: $00
	ld d, $7b                                        ; $5128: $16 $7b
	ld [$c08f], a                                    ; $512a: $ea $8f $c0
	ccf                                              ; $512d: $3f
	and b                                            ; $512e: $a0
	ld e, a                                          ; $512f: $5f
	ld d, h                                          ; $5130: $54
	xor e                                            ; $5131: $ab
	ld [$dd15], a                                    ; $5132: $ea $15 $dd
	ld [bc], a                                       ; $5135: $02
	ld [$bc05], a                                    ; $5136: $ea $05 $bc
	inc bc                                           ; $5139: $03
	ld e, c                                          ; $513a: $59
	rlca                                             ; $513b: $07
	ld l, [hl]                                       ; $513c: $6e
	add $74                                          ; $513d: $c6 $74
	xor [hl]                                         ; $513f: $ae
	ld h, h                                          ; $5140: $64
	and b                                            ; $5141: $a0
	ld a, l                                          ; $5142: $7d
	or b                                             ; $5143: $b0
	sbc [hl]                                         ; $5144: $9e
	db $10                                           ; $5145: $10
	ld a, e                                          ; $5146: $7b
	ld hl, sp-$62                                    ; $5147: $f8 $9e
	ld c, $6b                                        ; $5149: $0e $6b
	ldh a, [$6f]                                     ; $514b: $f0 $6f
	cp $78                                           ; $514d: $fe $78
	ld c, h                                          ; $514f: $4c
	sbc c                                            ; $5150: $99
	rst $38                                          ; $5151: $ff
	ld h, c                                          ; $5152: $61
	rst $38                                          ; $5153: $ff
	ld b, d                                          ; $5154: $42
	rst $38                                          ; $5155: $ff

jr_044_5156:
	dec a                                            ; $5156: $3d
	ld h, e                                          ; $5157: $63
	ret c                                            ; $5158: $d8

	ld l, l                                          ; $5159: $6d
	sbc d                                            ; $515a: $9a
	ld a, a                                          ; $515b: $7f
	db $fc                                           ; $515c: $fc
	halt                                             ; $515d: $76
	call c, $ca77                                    ; $515e: $dc $77 $ca
	ld a, b                                          ; $5161: $78
	and [hl]                                         ; $5162: $a6
	ld l, b                                          ; $5163: $68
	or [hl]                                          ; $5164: $b6
	ld a, a                                          ; $5165: $7f
	db $fc                                           ; $5166: $fc
	ld a, [hl]                                       ; $5167: $7e
	and h                                            ; $5168: $a4
	ld a, [hl]                                       ; $5169: $7e
	ret c                                            ; $516a: $d8

	ld a, [hl]                                       ; $516b: $7e
	ret nc                                           ; $516c: $d0

	halt                                             ; $516d: $76
	call z, $539e                                    ; $516e: $cc $9e $53
	ld l, d                                          ; $5171: $6a
	sub d                                            ; $5172: $92
	db $db                                           ; $5173: $db
	rst $38                                          ; $5174: $ff
	ld a, [hl]                                       ; $5175: $7e
	sbc b                                            ; $5176: $98
	ld h, a                                          ; $5177: $67
	ld hl, sp+$7e                                    ; $5178: $f8 $7e
	adc h                                            ; $517a: $8c
	db $dd                                           ; $517b: $dd
	rst $38                                          ; $517c: $ff
	ld l, [hl]                                       ; $517d: $6e
	ld l, d                                          ; $517e: $6a

Jump_044_517f:
	ld l, [hl]                                       ; $517f: $6e
	ld h, [hl]                                       ; $5180: $66
	halt                                             ; $5181: $76
	ld a, h                                          ; $5182: $7c
	ld e, a                                          ; $5183: $5f
	ldh a, [$7f]                                     ; $5184: $f0 $7f
	ret nz                                           ; $5186: $c0

	sbc [hl]                                         ; $5187: $9e
	ld a, [$5270]                                    ; $5188: $fa $70 $52
	rst SubAFromHL                                          ; $518b: $d7
	rst $38                                          ; $518c: $ff
	halt                                             ; $518d: $76
	add b                                            ; $518e: $80
	inc bc                                           ; $518f: $03
	rst $38                                          ; $5190: $ff
	sbc $ff                                          ; $5191: $de $ff
	sbc b                                            ; $5193: $98

Call_044_5194:
	jr nc, jr_044_5156                               ; $5194: $30 $c0

	rlca                                             ; $5196: $07
	ld hl, sp+$00                                    ; $5197: $f8 $00
	rst $38                                          ; $5199: $ff
	ld b, c                                          ; $519a: $41
	ld [hl], a                                       ; $519b: $77
	ld e, l                                          ; $519c: $5d
	ld a, [hl]                                       ; $519d: $7e
	rst FarCall                                          ; $519e: $f7
	ld a, a                                          ; $519f: $7f
	db $fc                                           ; $51a0: $fc
	sbc [hl]                                         ; $51a1: $9e
	ld a, h                                          ; $51a2: $7c
	halt                                             ; $51a3: $76
	cp d                                             ; $51a4: $ba
	sbc h                                            ; $51a5: $9c
	inc a                                            ; $51a6: $3c
	ret nz                                           ; $51a7: $c0

	db $fc                                           ; $51a8: $fc
	ld [hl], a                                       ; $51a9: $77
	ldh a, [$7c]                                     ; $51aa: $f0 $7c
	sub a                                            ; $51ac: $97
	ld a, e                                          ; $51ad: $7b
	ld a, [$7efd]                                    ; $51ae: $fa $fd $7e
	and $77                                          ; $51b1: $e6 $77
	or $77                                           ; $51b3: $f6 $77
	ldh a, [$9d]                                     ; $51b5: $f0 $9d
	rst SubAFromDE                                          ; $51b7: $df
	db $10                                           ; $51b8: $10
	ld sp, hl                                        ; $51b9: $f9
	ld d, a                                          ; $51ba: $57
	ldh [$1f], a                                     ; $51bb: $e0 $1f
	ldh a, [$97]                                     ; $51bd: $f0 $97
	rst SubAFromDE                                          ; $51bf: $df
	inc e                                            ; $51c0: $1c
	xor b                                            ; $51c1: $a8
	rlca                                             ; $51c2: $07
	ld [de], a                                       ; $51c3: $12
	dec b                                            ; $51c4: $05
	ld bc, $5b0f                                     ; $51c5: $01 $0f $5b
	ldh [$6e], a                                     ; $51c8: $e0 $6e
	ldh a, [$5b]                                     ; $51ca: $f0 $5b
	ldh a, [$9b]                                     ; $51cc: $f0 $9b
	add hl, sp                                       ; $51ce: $39
	rst $38                                          ; $51cf: $ff
	adc a                                            ; $51d0: $8f
	rst SubAFromDE                                          ; $51d1: $df
	ld [hl], e                                       ; $51d2: $73
	ldh a, [$99]                                     ; $51d3: $f0 $99
	xor b                                            ; $51d5: $a8
	nop                                              ; $51d6: $00
	nop                                              ; $51d7: $00
	ret nc                                           ; $51d8: $d0

	rra                                              ; $51d9: $1f
	dec b                                            ; $51da: $05
	ld a, d                                          ; $51db: $7a
	sub $7f                                          ; $51dc: $d6 $7f
	jr c, jr_044_524f                                ; $51de: $38 $6f

	reti                                             ; $51e0: $d9


	rst $38                                          ; $51e1: $ff
	sbc l                                            ; $51e2: $9d
	ld a, a                                          ; $51e3: $7f
	add b                                            ; $51e4: $80
	ld [hl], l                                       ; $51e5: $75
	or d                                             ; $51e6: $b2
	ld a, a                                          ; $51e7: $7f
	ld [hl], $67                                     ; $51e8: $36 $67
	ldh a, [$7b]                                     ; $51ea: $f0 $7b
	ld a, [$ffde]                                    ; $51ec: $fa $de $ff
	rst SubAFromDE                                          ; $51ef: $df
	rst SubAFromDE                                          ; $51f0: $df
	ld h, a                                          ; $51f1: $67
	ldh a, [$7f]                                     ; $51f2: $f0 $7f
	sbc a                                            ; $51f4: $9f
	ld h, l                                          ; $51f5: $65
	ld a, [$f06f]                                    ; $51f6: $fa $6f $f0
	sbc l                                            ; $51f9: $9d
	jr nc, @-$2f                                     ; $51fa: $30 $cf

	ld c, a                                          ; $51fc: $4f
	ldh a, [$9e]                                     ; $51fd: $f0 $9e
	jr nz, @-$22                                     ; $51ff: $20 $dc

	rst $38                                          ; $5201: $ff
	ld e, a                                          ; $5202: $5f
	ret nc                                           ; $5203: $d0

	sbc l                                            ; $5204: $9d
	ld b, c                                          ; $5205: $41
	sbc a                                            ; $5206: $9f
	ld c, a                                          ; $5207: $4f
	ldh [$73], a                                     ; $5208: $e0 $73
	or c                                             ; $520a: $b1
	ld b, e                                          ; $520b: $43
	ldh a, [$5f]                                     ; $520c: $f0 $5f
	ret nc                                           ; $520e: $d0

	sbc [hl]                                         ; $520f: $9e
	rra                                              ; $5210: $1f
	ld c, e                                          ; $5211: $4b
	and b                                            ; $5212: $a0
	ld e, l                                          ; $5213: $5d
	adc d                                            ; $5214: $8a
	ld l, a                                          ; $5215: $6f
	ldh a, [$7e]                                     ; $5216: $f0 $7e
	ld b, [hl]                                       ; $5218: $46
	ld a, e                                          ; $5219: $7b
	db $ed                                           ; $521a: $ed
	ld d, [hl]                                       ; $521b: $56
	rlca                                             ; $521c: $07
	ld [hl], a                                       ; $521d: $77
	db $dd                                           ; $521e: $dd
	ld c, a                                          ; $521f: $4f
	ldh a, [$9c]                                     ; $5220: $f0 $9c
	rst SubAFromDE                                          ; $5222: $df
	sbc a                                            ; $5223: $9f
	ld e, h                                          ; $5224: $5c
	ccf                                              ; $5225: $3f
	ldh [$9c], a                                     ; $5226: $e0 $9c
	db $fd                                           ; $5228: $fd
	nop                                              ; $5229: $00
	cp $79                                           ; $522a: $fe $79
	sbc b                                            ; $522c: $98
	ld a, a                                          ; $522d: $7f
	ld hl, sp-$62                                    ; $522e: $f8 $9e
	push de                                          ; $5230: $d5
	ld [hl], e                                       ; $5231: $73
	ldh a, [$9a]                                     ; $5232: $f0 $9a
	ld a, [$5500]                                    ; $5234: $fa $00 $55
	nop                                              ; $5237: $00
	xor d                                            ; $5238: $aa
	ld l, e                                          ; $5239: $6b
	db $fc                                           ; $523a: $fc
	ld a, a                                          ; $523b: $7f
	ret nc                                           ; $523c: $d0

	sbc l                                            ; $523d: $9d
	ld e, l                                          ; $523e: $5d
	jr jr_044_52a8                                   ; $523f: $18 $67

	db $f4                                           ; $5241: $f4
	ld [hl], e                                       ; $5242: $73
	ldh a, [$7e]                                     ; $5243: $f0 $7e
	jr jr_044_52aa                                   ; $5245: $18 $63

	db $f4                                           ; $5247: $f4
	scf                                              ; $5248: $37
	ldh a, [$9c]                                     ; $5249: $f0 $9c
	pop bc                                           ; $524b: $c1
	ld e, $58                                        ; $524c: $1e $58
	ld d, e                                          ; $524e: $53

jr_044_524f:
	ret nc                                           ; $524f: $d0

	ld a, a                                          ; $5250: $7f
	or d                                             ; $5251: $b2
	ld a, l                                          ; $5252: $7d
	ld a, [hl-]                                      ; $5253: $3a
	ld d, a                                          ; $5254: $57
	ldh a, [$9d]                                     ; $5255: $f0 $9d
	ldh a, [c]                                       ; $5257: $f2
	dec c                                            ; $5258: $0d
	ld c, e                                          ; $5259: $4b
	ret nz                                           ; $525a: $c0

	sbc h                                            ; $525b: $9c
	rst SubAFromDE                                          ; $525c: $df
	ld d, l                                          ; $525d: $55
	db $10                                           ; $525e: $10
	ld [hl], a                                       ; $525f: $77
	ld hl, sp+$7e                                    ; $5260: $f8 $7e
	sub e                                            ; $5262: $93
	sub h                                            ; $5263: $94
	ld d, h                                          ; $5264: $54
	nop                                              ; $5265: $00
	add b                                            ; $5266: $80
	nop                                              ; $5267: $00
	ld d, b                                          ; $5268: $50
	nop                                              ; $5269: $00
	rst $38                                          ; $526a: $ff
	call z, $0055                                    ; $526b: $cc $55 $00
	and b                                            ; $526e: $a0
	or $50                                           ; $526f: $f6 $50
	xor a                                            ; $5271: $af
	halt                                             ; $5272: $76
	sbc a                                            ; $5273: $9f
	sbc [hl]                                         ; $5274: $9e
	rra                                              ; $5275: $1f
	di                                               ; $5276: $f3
	sbc l                                            ; $5277: $9d
	rst $38                                          ; $5278: $ff
	pop af                                           ; $5279: $f1
	ld c, e                                          ; $527a: $4b
	ldh a, [$7f]                                     ; $527b: $f0 $7f

jr_044_527d:
	cp e                                             ; $527d: $bb
	ld c, a                                          ; $527e: $4f
	ret nc                                           ; $527f: $d0

	rst $38                                          ; $5280: $ff
	sbc [hl]                                         ; $5281: $9e
	jr jr_044_527d                                   ; $5282: $18 $f9

	ld a, h                                          ; $5284: $7c
	jp nz, $e07b                                     ; $5285: $c2 $7b $e0

	sbc [hl]                                         ; $5288: $9e
	rlca                                             ; $5289: $07
	ld [hl], h                                       ; $528a: $74
	and b                                            ; $528b: $a0
	sbc d                                            ; $528c: $9a
	ld a, [bc]                                       ; $528d: $0a
	nop                                              ; $528e: $00
	dec h                                            ; $528f: $25
	nop                                              ; $5290: $00
	ld c, d                                          ; $5291: $4a
	ld a, e                                          ; $5292: $7b
	ld hl, sp-$68                                    ; $5293: $f8 $98
	cpl                                              ; $5295: $2f
	nop                                              ; $5296: $00
	rst $38                                          ; $5297: $ff
	rst GetHLinHL                                          ; $5298: $cf
	rst $38                                          ; $5299: $ff
	nop                                              ; $529a: $00
	ld a, a                                          ; $529b: $7f
	ld a, e                                          ; $529c: $7b
	sbc d                                            ; $529d: $9a
	ld [hl], a                                       ; $529e: $77
	db $fc                                           ; $529f: $fc
	ld [hl], a                                       ; $52a0: $77
	cp $2b                                           ; $52a1: $fe $2b
	nop                                              ; $52a3: $00
	call $9d66                                       ; $52a4: $cd $66 $9d
	ld b, e                                          ; $52a7: $43

jr_044_52a8:
	ld b, [hl]                                       ; $52a8: $46
	ld h, e                                          ; $52a9: $63

jr_044_52aa:
	or $de                                           ; $52aa: $f6 $de
	ld b, h                                          ; $52ac: $44
	ld l, a                                          ; $52ad: $6f
	di                                               ; $52ae: $f3
	db $dd                                           ; $52af: $dd
	inc sp                                           ; $52b0: $33
	sbc h                                            ; $52b1: $9c
	ld [hl], $77                                     ; $52b2: $36 $77
	halt                                             ; $52b4: $76
	ld l, e                                          ; $52b5: $6b
	or $db                                           ; $52b6: $f6 $db
	ld h, [hl]                                       ; $52b8: $66
	sbc h                                            ; $52b9: $9c
	dec [hl]                                         ; $52ba: $35
	ld d, e                                          ; $52bb: $53
	ld d, [hl]                                       ; $52bc: $56
	jp c, $9d66                                      ; $52bd: $da $66 $9d

	ld b, l                                          ; $52c0: $45
	ld d, l                                          ; $52c1: $55
	reti                                             ; $52c2: $d9


	ld h, [hl]                                       ; $52c3: $66
	ld e, a                                          ; $52c4: $5f
	or $9d                                           ; $52c5: $f6 $9d
	ld b, h                                          ; $52c7: $44
	ld d, h                                          ; $52c8: $54
	sbc $44                                          ; $52c9: $de $44
	jp nc, $ad55                                     ; $52cb: $d2 $55 $ad

	ld [$ff9d], sp                                   ; $52ce: $08 $9d $ff
	nop                                              ; $52d1: $00
	inc bc                                           ; $52d2: $03
	cp $1b                                           ; $52d3: $fe $1b
	cp $9e                                           ; $52d5: $fe $9e
	push de                                          ; $52d7: $d5
	ld b, e                                          ; $52d8: $43
	xor $9d                                          ; $52d9: $ee $9d
	db $fd                                           ; $52db: $fd
	inc bc                                           ; $52dc: $03
	ld [hl], a                                       ; $52dd: $77
	cp $9b                                           ; $52de: $fe $9b
	rst $38                                          ; $52e0: $ff
	ld bc, $01ff                                     ; $52e1: $01 $ff $01
	ld a, e                                          ; $52e4: $7b
	ld a, [$0398]                                    ; $52e5: $fa $98 $03
	db $db                                           ; $52e8: $db
	rlca                                             ; $52e9: $07
	rst $38                                          ; $52ea: $ff
	nop                                              ; $52eb: $00
	ld a, a                                          ; $52ec: $7f
	add b                                            ; $52ed: $80
	ld l, a                                          ; $52ee: $6f
	cp $99                                           ; $52ef: $fe $99
	ld a, d                                          ; $52f1: $7a
	add b                                            ; $52f2: $80
	or l                                             ; $52f3: $b5
	ret nz                                           ; $52f4: $c0

	jp z, Jump_044_5fe0                              ; $52f5: $ca $e0 $5f

	sub $9c                                          ; $52f8: $d6 $9c
	xor d                                            ; $52fa: $aa
	nop                                              ; $52fb: $00
	ld d, l                                          ; $52fc: $55
	ld a, e                                          ; $52fd: $7b
	db $fc                                           ; $52fe: $fc
	ld e, a                                          ; $52ff: $5f
	ldh a, [$9e]                                     ; $5300: $f0 $9e
	ld [$f04b], a                                    ; $5302: $ea $4b $f0
	ld b, a                                          ; $5305: $47
	ldh [rBGP], a                                    ; $5306: $e0 $47
	ldh a, [$9e]                                     ; $5308: $f0 $9e
	cp a                                             ; $530a: $bf
	ld c, e                                          ; $530b: $4b
	ldh a, [$7b]                                     ; $530c: $f0 $7b
	sub [hl]                                         ; $530e: $96
	sbc l                                            ; $530f: $9d
	nop                                              ; $5310: $00
	xor a                                            ; $5311: $af
	inc bc                                           ; $5312: $03
	ld c, [hl]                                       ; $5313: $4e
	ld e, a                                          ; $5314: $5f
	cp $9e                                           ; $5315: $fe $9e
	cp $7b                                           ; $5317: $fe $7b
	ld e, [hl]                                       ; $5319: $5e
	ld a, e                                          ; $531a: $7b
	ld e, h                                          ; $531b: $5c
	ld l, e                                          ; $531c: $6b
	ldh a, [c]                                       ; $531d: $f2
	sbc h                                            ; $531e: $9c
	pop af                                           ; $531f: $f1
	rrca                                             ; $5320: $0f
	ccf                                              ; $5321: $3f
	db $db                                           ; $5322: $db
	rst $38                                          ; $5323: $ff
	ld a, e                                          ; $5324: $7b
	add sp, -$6a                                     ; $5325: $e8 $96
	ld hl, sp+$07                                    ; $5327: $f8 $07
	adc d                                            ; $5329: $8a
	ld [hl], c                                       ; $532a: $71
	ldh [rIE], a                                     ; $532b: $e0 $ff
	rst AddAOntoHL                                          ; $532d: $ef
	rst $38                                          ; $532e: $ff
	rst SubAFromDE                                          ; $532f: $df
	sbc $ff                                          ; $5330: $de $ff
	sbc e                                            ; $5332: $9b
	scf                                              ; $5333: $37
	rst GetHLinHL                                          ; $5334: $cf
	ld e, a                                          ; $5335: $5f
	cp a                                             ; $5336: $bf
	ld l, a                                          ; $5337: $6f
	and $9e                                          ; $5338: $e6 $9e
	db $fc                                           ; $533a: $fc
	sbc $ff                                          ; $533b: $de $ff
	sbc d                                            ; $533d: $9a
	cp $ff                                           ; $533e: $fe $ff
	sbc l                                            ; $5340: $9d
	rst $38                                          ; $5341: $ff
	cp a                                             ; $5342: $bf
	ld [hl], e                                       ; $5343: $73
	cp $7f                                           ; $5344: $fe $7f
	ld [$7d99], a                                    ; $5346: $ea $99 $7d
	cp $d2                                           ; $5349: $fe $d2
	pop hl                                           ; $534b: $e1
	add a                                            ; $534c: $87
	rrca                                             ; $534d: $0f
	ld d, e                                          ; $534e: $53
	xor [hl]                                         ; $534f: $ae
	ld a, a                                          ; $5350: $7f
	ld [bc], a                                       ; $5351: $02
	ld a, e                                          ; $5352: $7b
	db $fc                                           ; $5353: $fc
	ld a, [hl]                                       ; $5354: $7e
	db $ec                                           ; $5355: $ec
	ld a, a                                          ; $5356: $7f
	ld l, d                                          ; $5357: $6a
	ld a, a                                          ; $5358: $7f
	db $fc                                           ; $5359: $fc
	ld [hl], a                                       ; $535a: $77
	ld [hl-], a                                      ; $535b: $32
	sbc h                                            ; $535c: $9c
	and b                                            ; $535d: $a0
	nop                                              ; $535e: $00
	ld b, b                                          ; $535f: $40
	ld l, e                                          ; $5360: $6b
	ld c, d                                          ; $5361: $4a
	ld [hl], a                                       ; $5362: $77
	db $fc                                           ; $5363: $fc
	db $fd                                           ; $5364: $fd
	sbc [hl]                                         ; $5365: $9e
	ld bc, $f05b                                     ; $5366: $01 $5b $f0
	ld a, a                                          ; $5369: $7f
	db $f4                                           ; $536a: $f4
	sbc [hl]                                         ; $536b: $9e
	ld a, [bc]                                       ; $536c: $0a
	ld a, e                                          ; $536d: $7b
	ld hl, sp+$73                                    ; $536e: $f8 $73
	ld a, [hl-]                                      ; $5370: $3a
	sbc h                                            ; $5371: $9c
	ld bc, $0354                                     ; $5372: $01 $54 $03
	ld l, a                                          ; $5375: $6f
	db $ec                                           ; $5376: $ec
	add b                                            ; $5377: $80
	ld d, h                                          ; $5378: $54
	ld bc, $19a7                                     ; $5379: $01 $a7 $19
	ld e, a                                          ; $537c: $5f
	inc sp                                           ; $537d: $33
	ld a, a                                          ; $537e: $7f
	rst $38                                          ; $537f: $ff
	sub c                                            ; $5380: $91
	rst $38                                          ; $5381: $ff
	add d                                            ; $5382: $82
	add hl, sp                                       ; $5383: $39
	ld h, a                                          ; $5384: $67
	add hl, de                                       ; $5385: $19
	adc d                                            ; $5386: $8a
	dec [hl]                                         ; $5387: $35
	dec d                                            ; $5388: $15
	db $eb                                           ; $5389: $eb
	push hl                                          ; $538a: $e5
	ldh a, [$f2]                                     ; $538b: $f0 $f2
	ld hl, sp-$04                                    ; $538d: $f8 $fc
	rst $38                                          ; $538f: $ff
	inc c                                            ; $5390: $0c
	rst $38                                          ; $5391: $ff
	dec b                                            ; $5392: $05
	or b                                             ; $5393: $b0
	ld [bc], a                                       ; $5394: $02
	ld hl, sp-$07                                    ; $5395: $f8 $f9
	rst SubAFromDE                                          ; $5397: $df
	db $fc                                           ; $5398: $fc
	sbc [hl]                                         ; $5399: $9e
	rst $38                                          ; $539a: $ff
	ld [hl], e                                       ; $539b: $73
	jp nz, $809c                                     ; $539c: $c2 $9c $80

	ld a, [hl+]                                      ; $539f: $2a
	add b                                            ; $53a0: $80
	ld l, a                                          ; $53a1: $6f
	cp d                                             ; $53a2: $ba
	ld l, a                                          ; $53a3: $6f
	ld hl, sp-$62                                    ; $53a4: $f8 $9e
	ld a, l                                          ; $53a6: $7d
	ld a, e                                          ; $53a7: $7b
	add h                                            ; $53a8: $84
	ld l, a                                          ; $53a9: $6f
	ldh a, [$7f]                                     ; $53aa: $f0 $7f
	nop                                              ; $53ac: $00
	sbc [hl]                                         ; $53ad: $9e
	ld d, b                                          ; $53ae: $50
	ld a, e                                          ; $53af: $7b
	adc d                                            ; $53b0: $8a
	ld h, a                                          ; $53b1: $67
	sbc [hl]                                         ; $53b2: $9e
	ld [hl], a                                       ; $53b3: $77
	ld a, d                                          ; $53b4: $7a
	db $fd                                           ; $53b5: $fd
	ld h, a                                          ; $53b6: $67
	ldh a, [rPCM34]                                  ; $53b7: $f0 $77
	sub [hl]                                         ; $53b9: $96
	sbc [hl]                                         ; $53ba: $9e
	dec d                                            ; $53bb: $15
	ld l, e                                          ; $53bc: $6b
	db $f4                                           ; $53bd: $f4
	sub a                                            ; $53be: $97
	ld [hl], l                                       ; $53bf: $75
	add b                                            ; $53c0: $80
	add b                                            ; $53c1: $80
	ld a, a                                          ; $53c2: $7f
	dec d                                            ; $53c3: $15
	ld [$d52a], a                                    ; $53c4: $ea $2a $d5
	ld h, a                                          ; $53c7: $67
	db $e4                                           ; $53c8: $e4
	sub h                                            ; $53c9: $94
	ld [hl], b                                       ; $53ca: $70
	rrca                                             ; $53cb: $0f
	nop                                              ; $53cc: $00
	rst $38                                          ; $53cd: $ff
	ld d, [hl]                                       ; $53ce: $56
	xor c                                            ; $53cf: $a9
	add b                                            ; $53d0: $80
	ld a, a                                          ; $53d1: $7f
	ld e, a                                          ; $53d2: $5f
	nop                                              ; $53d3: $00
	xor e                                            ; $53d4: $ab
	ld a, e                                          ; $53d5: $7b
	ldh a, [hDisp1_WY]                                     ; $53d6: $f0 $95
	and d                                            ; $53d8: $a2
	jr jr_044_53e0                                   ; $53d9: $18 $05

	ld hl, sp+$1e                                    ; $53db: $f8 $1e
	ld hl, sp+$49                                    ; $53dd: $f8 $49
	cp h                                             ; $53df: $bc

jr_044_53e0:
	sbc [hl]                                         ; $53e0: $9e
	ld a, h                                          ; $53e1: $7c
	ld [hl], a                                       ; $53e2: $77
	jr z, @+$81                                      ; $53e3: $28 $7f

	ldh a, [rIE]                                     ; $53e5: $f0 $ff
	sbc [hl]                                         ; $53e7: $9e
	ld b, c                                          ; $53e8: $41
	ld [hl], e                                       ; $53e9: $73
	ret c                                            ; $53ea: $d8

	ld a, a                                          ; $53eb: $7f
	and h                                            ; $53ec: $a4
	ld a, [hl]                                       ; $53ed: $7e
	inc l                                            ; $53ee: $2c
	sbc h                                            ; $53ef: $9c
	jp hl                                            ; $53f0: $e9


	inc bc                                           ; $53f1: $03
	ld d, l                                          ; $53f2: $55
	ld [hl], e                                       ; $53f3: $73
	ld b, [hl]                                       ; $53f4: $46
	ld [hl], a                                       ; $53f5: $77
	ldh a, [$99]                                     ; $53f6: $f0 $99
	ld [bc], a                                       ; $53f8: $02
	nop                                              ; $53f9: $00
	rst $38                                          ; $53fa: $ff
	rst $38                                          ; $53fb: $ff
	inc bc                                           ; $53fc: $03
	db $fc                                           ; $53fd: $fc
	halt                                             ; $53fe: $76
	adc b                                            ; $53ff: $88
	ld h, a                                          ; $5400: $67
	cp b                                             ; $5401: $b8
	sbc h                                            ; $5402: $9c
	rst SubAFromDE                                          ; $5403: $df
	rst AddAOntoHL                                          ; $5404: $ef
	ei                                               ; $5405: $fb
	ld a, d                                          ; $5406: $7a
	inc c                                            ; $5407: $0c
	ld a, [hl]                                       ; $5408: $7e
	cp h                                             ; $5409: $bc
	add b                                            ; $540a: $80
	ld d, a                                          ; $540b: $57
	inc bc                                           ; $540c: $03
	xor b                                            ; $540d: $a8
	inc bc                                           ; $540e: $03
	ld d, h                                          ; $540f: $54
	ld bc, $13a8                                     ; $5410: $01 $a8 $13
	db $ec                                           ; $5413: $ec
	ldh a, [$63]                                     ; $5414: $f0 $63
	add a                                            ; $5416: $87
	rst $38                                          ; $5417: $ff
	rra                                              ; $5418: $1f
	ld a, [$f8fd]                                    ; $5419: $fa $fd $f8
	rst $38                                          ; $541c: $ff
	ld hl, sp+$7f                                    ; $541d: $f8 $7f
	ld a, a                                          ; $541f: $7f
	rst $38                                          ; $5420: $ff
	ld [hl], a                                       ; $5421: $77
	rst $38                                          ; $5422: $ff
	cp a                                             ; $5423: $bf
	ld a, a                                          ; $5424: $7f
	di                                               ; $5425: $f3
	rst $38                                          ; $5426: $ff
	ei                                               ; $5427: $fb
	rst FarCall                                          ; $5428: $f7
	ld sp, hl                                        ; $5429: $f9
	sub h                                            ; $542a: $94

jr_044_542b:
	rst FarCall                                          ; $542b: $f7
	rst AddAOntoHL                                          ; $542c: $ef
	rst $38                                          ; $542d: $ff
	ei                                               ; $542e: $fb
	rst $38                                          ; $542f: $ff
	di                                               ; $5430: $f3
	rst $38                                          ; $5431: $ff
	rst SubAFromBC                                          ; $5432: $e7
	rst $38                                          ; $5433: $ff
	rst FarCall                                          ; $5434: $f7
	ld hl, sp-$23                                    ; $5435: $f8 $dd
	rst $38                                          ; $5437: $ff
	sbc [hl]                                         ; $5438: $9e
	db $fd                                           ; $5439: $fd
	ld a, d                                          ; $543a: $7a
	and d                                            ; $543b: $a2
	ld a, [hl]                                       ; $543c: $7e
	and h                                            ; $543d: $a4
	sub l                                            ; $543e: $95
	ld b, $ff                                        ; $543f: $06 $ff
	inc bc                                           ; $5441: $03
	rst $38                                          ; $5442: $ff
	xor b                                            ; $5443: $a8
	nop                                              ; $5444: $00
	or b                                             ; $5445: $b0
	ret nz                                           ; $5446: $c0

	db $fd                                           ; $5447: $fd
	cp $dd                                           ; $5448: $fe $dd
	rst $38                                          ; $544a: $ff
	sbc [hl]                                         ; $544b: $9e
	ld c, a                                          ; $544c: $4f
	ld [hl], d                                       ; $544d: $72
	xor e                                            ; $544e: $ab
	sbc [hl]                                         ; $544f: $9e
	ld a, [hl+]                                      ; $5450: $2a

jr_044_5451:
	ld a, d                                          ; $5451: $7a
	cp h                                             ; $5452: $bc
	ld a, a                                          ; $5453: $7f
	db $ec                                           ; $5454: $ec
	sbc l                                            ; $5455: $9d
	cp l                                             ; $5456: $bd
	ret nz                                           ; $5457: $c0

	ld [hl], a                                       ; $5458: $77
	db $ed                                           ; $5459: $ed
	ld a, a                                          ; $545a: $7f
	call z, Call_044_619d                            ; $545b: $cc $9d $61
	rst $38                                          ; $545e: $ff
	ld l, [hl]                                       ; $545f: $6e
	cp b                                             ; $5460: $b8
	rst $38                                          ; $5461: $ff
	sbc l                                            ; $5462: $9d
	ldh [rP1], a                                     ; $5463: $e0 $00
	ld [hl], a                                       ; $5465: $77
	add $9b                                          ; $5466: $c6 $9b
	rst FarCall                                          ; $5468: $f7
	rst $38                                          ; $5469: $ff
	xor b                                            ; $546a: $a8
	inc bc                                           ; $546b: $03
	ld sp, hl                                        ; $546c: $f9
	add d                                            ; $546d: $82
	inc b                                            ; $546e: $04
	inc bc                                           ; $546f: $03
	ld [bc], a                                       ; $5470: $02
	pop af                                           ; $5471: $f1
	pop af                                           ; $5472: $f1
	cp $3f                                           ; $5473: $fe $3f
	rst $38                                          ; $5475: $ff
	ld h, c                                          ; $5476: $61
	rra                                              ; $5477: $1f
	ld a, [hl+]                                      ; $5478: $2a
	ld bc, $0977                                     ; $5479: $01 $77 $09
	pop de                                           ; $547c: $d1
	cpl                                              ; $547d: $2f
	dec hl                                           ; $547e: $2b
	rst SubAFromHL                                          ; $547f: $d7
	ld d, $e9                                        ; $5480: $16 $e9
	xor d                                            ; $5482: $aa
	ld bc, rIE                                     ; $5483: $01 $ff $ff

jr_044_5486:
	ld b, $b8                                        ; $5486: $06 $b8
	db $10                                           ; $5488: $10
	ldh [rP1], a                                     ; $5489: $e0 $00
	ld [hl], d                                       ; $548b: $72
	call nz, $3c99                                   ; $548c: $c4 $99 $3c
	rst $38                                          ; $548f: $ff
	or d                                             ; $5490: $b2
	ld a, h                                          ; $5491: $7c
	ld d, l                                          ; $5492: $55
	add b                                            ; $5493: $80
	ld [hl], a                                       ; $5494: $77
	cp [hl]                                          ; $5495: $be
	ld a, a                                          ; $5496: $7f
	ld c, b                                          ; $5497: $48
	ld a, a                                          ; $5498: $7f
	ld d, h                                          ; $5499: $54
	adc d                                            ; $549a: $8a
	jr nz, jr_044_542b                               ; $549b: $20 $8e

	ld c, [hl]                                       ; $549d: $4e
	sbc a                                            ; $549e: $9f
	adc a                                            ; $549f: $8f
	ccf                                              ; $54a0: $3f
	ld d, l                                          ; $54a1: $55
	nop                                              ; $54a2: $00
	xor [hl]                                         ; $54a3: $ae
	nop                                              ; $54a4: $00
	ld e, d                                          ; $54a5: $5a
	dec b                                            ; $54a6: $05
	or a                                             ; $54a7: $b7
	rrca                                             ; $54a8: $0f
	ld [hl], a                                       ; $54a9: $77
	rra                                              ; $54aa: $1f
	rst JumpTable                                          ; $54ab: $c7
	ccf                                              ; $54ac: $3f
	rst SubAFromDE                                          ; $54ad: $df
	rst AddAOntoHL                                          ; $54ae: $ef
	rst JumpTable                                          ; $54af: $c7

Jump_044_54b0:
	ld [hl], d                                       ; $54b0: $72
	and b                                            ; $54b1: $a0
	ld a, [hl]                                       ; $54b2: $7e
	ret z                                            ; $54b3: $c8

	ld a, a                                          ; $54b4: $7f
	jr jr_044_5451                                   ; $54b5: $18 $9a

	call nc, $9200                                   ; $54b7: $d4 $00 $92
	db $fd                                           ; $54ba: $fd
	ld sp, hl                                        ; $54bb: $f9
	ld a, e                                          ; $54bc: $7b
	and b                                            ; $54bd: $a0
	add e                                            ; $54be: $83
	ld d, [hl]                                       ; $54bf: $56
	ld bc, $03ac                                     ; $54c0: $01 $ac $03
	ld d, a                                          ; $54c3: $57
	ld [$1fa0], sp                                   ; $54c4: $08 $a0 $1f
	dec b                                            ; $54c7: $05
	inc bc                                           ; $54c8: $03
	xor l                                            ; $54c9: $ad
	ld e, $5c                                        ; $54ca: $1e $5c
	cp a                                             ; $54cc: $bf
	rst $38                                          ; $54cd: $ff
	rst $38                                          ; $54ce: $ff
	ld d, h                                          ; $54cf: $54
	xor e                                            ; $54d0: $ab
	xor d                                            ; $54d1: $aa
	ld d, l                                          ; $54d2: $55
	ld d, l                                          ; $54d3: $55
	xor d                                            ; $54d4: $aa
	ld c, $ff                                        ; $54d5: $0e $ff
	ld e, $ed                                        ; $54d7: $1e $ed
	ld a, l                                          ; $54d9: $7d
	adc $dd                                          ; $54da: $ce $dd
	rst $38                                          ; $54dc: $ff
	sub e                                            ; $54dd: $93
	dec b                                            ; $54de: $05
	ld a, [$d52a]                                    ; $54df: $fa $2a $d5
	ld d, c                                          ; $54e2: $51
	xor a                                            ; $54e3: $af
	rst $38                                          ; $54e4: $ff
	rst $38                                          ; $54e5: $ff
	ld b, d                                          ; $54e6: $42
	pop af                                           ; $54e7: $f1
	ld [hl], l                                       ; $54e8: $75
	db $e3                                           ; $54e9: $e3
	ld a, e                                          ; $54ea: $7b
	jr z, jr_044_5486                                ; $54eb: $28 $99

	rst $38                                          ; $54ed: $ff
	ld a, a                                          ; $54ee: $7f
	cp [hl]                                          ; $54ef: $be
	add d                                            ; $54f0: $82
	ld a, a                                          ; $54f1: $7f
	ldh a, [$de]                                     ; $54f2: $f0 $de
	rst $38                                          ; $54f4: $ff
	sub a                                            ; $54f5: $97
	push bc                                          ; $54f6: $c5
	rst $38                                          ; $54f7: $ff
	sbc d                                            ; $54f8: $9a
	push hl                                          ; $54f9: $e5
	cp $e5                                           ; $54fa: $fe $e5
	ld a, [$77f5]                                    ; $54fc: $fa $f5 $77
	or b                                             ; $54ff: $b0
	sub e                                            ; $5500: $93
	call $00f0                                       ; $5501: $cd $f0 $00
	ld hl, sp-$80                                    ; $5504: $f8 $80
	nop                                              ; $5506: $00
	add b                                            ; $5507: $80
	nop                                              ; $5508: $00
	add h                                            ; $5509: $84
	ld bc, $0f80                                     ; $550a: $01 $80 $0f
	ld [hl], a                                       ; $550d: $77
	ld [hl-], a                                      ; $550e: $32
	add b                                            ; $550f: $80
	ld e, h                                          ; $5510: $5c
	inc bc                                           ; $5511: $03
	nop                                              ; $5512: $00
	ccf                                              ; $5513: $3f
	inc b                                            ; $5514: $04
	ld a, a                                          ; $5515: $7f
	dec h                                            ; $5516: $25
	sbc $52                                          ; $5517: $de $52
	cp c                                             ; $5519: $b9
	rst GetHLinHL                                          ; $551a: $cf
	ld [hl], e                                       ; $551b: $73
	ld d, l                                          ; $551c: $55
	nop                                              ; $551d: $00
	cpl                                              ; $551e: $2f
	db $10                                           ; $551f: $10
	ret nz                                           ; $5520: $c0

	ccf                                              ; $5521: $3f
	inc d                                            ; $5522: $14
	ei                                               ; $5523: $fb
	rst AddAOntoHL                                          ; $5524: $ef
	jr nc, jr_044_558e                               ; $5525: $30 $67

	ld sp, hl                                        ; $5527: $f9
	sbc a                                            ; $5528: $9f
	db $e3                                           ; $5529: $e3
	rst SubAFromBC                                          ; $552a: $e7
	ld c, $c8                                        ; $552b: $0e $c8
	scf                                              ; $552d: $37
	ld [$ff82], sp                                   ; $552e: $08 $82 $ff
	ld a, c                                          ; $5531: $79
	sbc [hl]                                         ; $5532: $9e
	xor a                                            ; $5533: $af
	ld [hl], b                                       ; $5534: $70
	ld h, d                                          ; $5535: $62
	db $fd                                           ; $5536: $fd
	adc l                                            ; $5537: $8d
	di                                               ; $5538: $f3
	ld a, [$d607]                                    ; $5539: $fa $07 $d6
	rrca                                             ; $553c: $0f
	adc $ff                                          ; $553d: $ce $ff
	ret c                                            ; $553f: $d8

	cp a                                             ; $5540: $bf
	ldh a, [$7f]                                     ; $5541: $f0 $7f
	pop bc                                           ; $5543: $c1
	cp $82                                           ; $5544: $fe $82
	db $fd                                           ; $5546: $fd
	xor l                                            ; $5547: $ad
	db $d3                                           ; $5548: $d3
	dec sp                                           ; $5549: $3b
	rst SubAFromBC                                          ; $554a: $e7
	scf                                              ; $554b: $37
	rst GetHLinHL                                          ; $554c: $cf
	ld a, e                                          ; $554d: $7b
	add [hl]                                         ; $554e: $86
	sub e                                            ; $554f: $93
	rst $38                                          ; $5550: $ff
	cp e                                             ; $5551: $bb
	ld a, a                                          ; $5552: $7f
	ld [hl], b                                       ; $5553: $70
	rst $38                                          ; $5554: $ff
	ldh [rIE], a                                     ; $5555: $e0 $ff
	add $ff                                          ; $5557: $c6 $ff
	adc d                                            ; $5559: $8a
	db $fd                                           ; $555a: $fd
	nop                                              ; $555b: $00
	ld [hl], h                                       ; $555c: $74
	sub a                                            ; $555d: $97
	ld a, d                                          ; $555e: $7a

jr_044_555f:
	jp c, $019b                                      ; $555f: $da $9b $01

	cp $f8                                           ; $5562: $fe $f8
	rst $38                                          ; $5564: $ff
	ld [hl], l                                       ; $5565: $75
	ld [hl], l                                       ; $5566: $75
	ld a, [hl]                                       ; $5567: $7e
	ld b, b                                          ; $5568: $40
	sub [hl]                                         ; $5569: $96
	add c                                            ; $556a: $81
	rst $38                                          ; $556b: $ff
	or b                                             ; $556c: $b0
	rst GetHLinHL                                          ; $556d: $cf
	ret c                                            ; $556e: $d8

	rst SubAFromBC                                          ; $556f: $e7
	ld h, b                                          ; $5570: $60
	rst $38                                          ; $5571: $ff
	dec sp                                           ; $5572: $3b
	ld a, c                                          ; $5573: $79
	ld d, c                                          ; $5574: $51
	sub [hl]                                         ; $5575: $96
	jr jr_044_555f                                   ; $5576: $18 $e7

	nop                                              ; $5578: $00
	rst $38                                          ; $5579: $ff
	ldh a, [rIE]                                     ; $557a: $f0 $ff
	jr nc, @+$01                                     ; $557c: $30 $ff

	jr jr_044_55f9                                   ; $557e: $18 $79

	ret nz                                           ; $5580: $c0

	sbc d                                            ; $5581: $9a
	add [hl]                                         ; $5582: $86
	ld a, a                                          ; $5583: $7f
	dec sp                                           ; $5584: $3b
	rst JumpTable                                          ; $5585: $c7
	rst $38                                          ; $5586: $ff
	ld a, e                                          ; $5587: $7b
	ret c                                            ; $5588: $d8

	sbc [hl]                                         ; $5589: $9e
	inc sp                                           ; $558a: $33
	ld a, e                                          ; $558b: $7b
	ldh a, [c]                                       ; $558c: $f2
	sub h                                            ; $558d: $94

jr_044_558e:
	inc e                                            ; $558e: $1c
	rst $38                                          ; $558f: $ff
	inc b                                            ; $5590: $04
	rst $38                                          ; $5591: $ff
	ld b, [hl]                                       ; $5592: $46
	rst $38                                          ; $5593: $ff
	add e                                            ; $5594: $83
	rst $38                                          ; $5595: $ff
	add c                                            ; $5596: $81
	rst $38                                          ; $5597: $ff
	ld a, a                                          ; $5598: $7f
	sbc $ff                                          ; $5599: $de $ff
	ld l, a                                          ; $559b: $6f
	xor $7f                                          ; $559c: $ee $7f
	sbc $96                                          ; $559e: $de $96
	ld d, $ff                                        ; $55a0: $16 $ff
	jp $e1ff                                         ; $55a2: $c3 $ff $e1


	rst $38                                          ; $55a5: $ff
	push hl                                          ; $55a6: $e5
	ld a, [$7af0]                                    ; $55a7: $fa $f0 $7a
	ld e, d                                          ; $55aa: $5a
	ld a, a                                          ; $55ab: $7f
	db $ec                                           ; $55ac: $ec
	sbc d                                            ; $55ad: $9a
	ld a, c                                          ; $55ae: $79
	rst $38                                          ; $55af: $ff
	dec a                                            ; $55b0: $3d
	rst $38                                          ; $55b1: $ff
	ld a, $78                                        ; $55b2: $3e $78
	cp $96                                           ; $55b4: $fe $96
	swap h                                           ; $55b6: $cb $34
	cp $01                                           ; $55b8: $fe $01
	db $e4                                           ; $55ba: $e4
	ret c                                            ; $55bb: $d8

	call $dffe                                       ; $55bc: $cd $fe $df
	ld a, d                                          ; $55bf: $7a
	add d                                            ; $55c0: $82
	ld a, [hl]                                       ; $55c1: $7e
	ldh a, [c]                                       ; $55c2: $f2
	sub h                                            ; $55c3: $94
	ld [hl], e                                       ; $55c4: $73
	rst $38                                          ; $55c5: $ff
	rst SubAFromHL                                          ; $55c6: $d7
	cpl                                              ; $55c7: $2f
	ld a, b                                          ; $55c8: $78
	add a                                            ; $55c9: $87
	ld a, a                                          ; $55ca: $7f
	nop                                              ; $55cb: $00
	ld a, l                                          ; $55cc: $7d
	add b                                            ; $55cd: $80
	db $fd                                           ; $55ce: $fd
	sbc $ff                                          ; $55cf: $de $ff
	sub a                                            ; $55d1: $97
	cp l                                             ; $55d2: $bd
	rst $38                                          ; $55d3: $ff
	adc $ff                                          ; $55d4: $ce $ff
	sbc e                                            ; $55d6: $9b
	rst SubAFromBC                                          ; $55d7: $e7
	jr nc, @-$2f                                     ; $55d8: $30 $cf

	ld a, b                                          ; $55da: $78
	jp nz, Jump_044_697f                             ; $55db: $c2 $7f $69

	sbc $ff                                          ; $55de: $de $ff
	sbc h                                            ; $55e0: $9c
	call z, $20ff                                    ; $55e1: $cc $ff $20
	ld a, e                                          ; $55e4: $7b
	call c, $a47f                                    ; $55e5: $dc $7f $a4
	ld a, a                                          ; $55e8: $7f
	ldh a, [$9e]                                     ; $55e9: $f0 $9e
	add e                                            ; $55eb: $83
	ld a, e                                          ; $55ec: $7b
	and a                                            ; $55ed: $a7
	ld a, a                                          ; $55ee: $7f
	ldh a, [c]                                       ; $55ef: $f2
	sub h                                            ; $55f0: $94
	ld b, b                                          ; $55f1: $40
	rst $38                                          ; $55f2: $ff
	ld [$9ff7], sp                                   ; $55f3: $08 $f7 $9f
	rst $38                                          ; $55f6: $ff
	ld l, h                                          ; $55f7: $6c
	sub e                                            ; $55f8: $93

jr_044_55f9:
	cp $01                                           ; $55f9: $fe $01
	inc sp                                           ; $55fb: $33
	sbc $ff                                          ; $55fc: $de $ff
	sbc [hl]                                         ; $55fe: $9e
	ld [bc], a                                       ; $55ff: $02
	ld a, e                                          ; $5600: $7b
	ld d, [hl]                                       ; $5601: $56
	ld a, a                                          ; $5602: $7f
	ld [hl+], a                                      ; $5603: $22
	rst SubAFromDE                                          ; $5604: $df
	rst $38                                          ; $5605: $ff
	sbc d                                            ; $5606: $9a
	rlca                                             ; $5607: $07
	ld hl, sp-$3c                                    ; $5608: $f8 $c4
	dec sp                                           ; $560a: $3b
	cp e                                             ; $560b: $bb
	ld [hl], e                                       ; $560c: $73
	adc b                                            ; $560d: $88
	sbc h                                            ; $560e: $9c
	ld c, h                                          ; $560f: $4c
	cp e                                             ; $5610: $bb
	nop                                              ; $5611: $00
	ld a, e                                          ; $5612: $7b
	ld a, h                                          ; $5613: $7c
	ld a, a                                          ; $5614: $7f
	jp nc, $c99c                                     ; $5615: $d2 $9c $c9

	ld [hl], $ff                                     ; $5618: $36 $ff
	ld a, c                                          ; $561a: $79
	db $f4                                           ; $561b: $f4
	sbc [hl]                                         ; $561c: $9e
	ld a, b                                          ; $561d: $78
	ld [hl], d                                       ; $561e: $72
	db $10                                           ; $561f: $10
	add d                                            ; $5620: $82
	cp h                                             ; $5621: $bc
	rst SubAFromDE                                          ; $5622: $df
	rst $38                                          ; $5623: $ff
	nop                                              ; $5624: $00
	reti                                             ; $5625: $d9


	ld l, [hl]                                       ; $5626: $6e
	ld h, a                                          ; $5627: $67
	ld hl, sp+$0c                                    ; $5628: $f8 $0c
	di                                               ; $562a: $f3
	inc b                                            ; $562b: $04
	rst $38                                          ; $562c: $ff
	rla                                              ; $562d: $17
	ld hl, sp+$00                                    ; $562e: $f8 $00
	ld hl, sp-$6c                                    ; $5630: $f8 $94
	add hl, bc                                       ; $5632: $09
	adc a                                            ; $5633: $8f
	inc sp                                           ; $5634: $33
	or l                                             ; $5635: $b5
	ld c, [hl]                                       ; $5636: $4e
	rst $38                                          ; $5637: $ff
	jr jr_044_5665                                   ; $5638: $18 $2b

	rst FarCall                                          ; $563a: $f7
	ret nz                                           ; $563b: $c0

	rst $38                                          ; $563c: $ff
	ld hl, sp+$78                                    ; $563d: $f8 $78
	call z, $a596                                    ; $563f: $cc $96 $a5
	adc $bc                                          ; $5642: $ce $bc
	rra                                              ; $5644: $1f
	dec sp                                           ; $5645: $3b
	ld [hl], h                                       ; $5646: $74
	ld e, h                                          ; $5647: $5c
	db $e3                                           ; $5648: $e3
	add c                                            ; $5649: $81
	ld a, e                                          ; $564a: $7b
	cp b                                             ; $564b: $b8
	rst $38                                          ; $564c: $ff
	ld a, a                                          ; $564d: $7f
	call nc, $cc98                                   ; $564e: $d4 $98 $cc
	rra                                              ; $5651: $1f
	or l                                             ; $5652: $b5
	ld a, [hl-]                                      ; $5653: $3a
	ld l, [hl]                                       ; $5654: $6e
	ld [hl], c                                       ; $5655: $71
	pop bc                                           ; $5656: $c1
	ld a, e                                          ; $5657: $7b
	jr jr_044_56d8                                   ; $5658: $18 $7e

	sbc e                                            ; $565a: $9b
	ld a, c                                          ; $565b: $79
	ld [$1f97], a                                    ; $565c: $ea $97 $1f
	inc a                                            ; $565f: $3c
	sbc a                                            ; $5660: $9f
	ld [hl], b                                       ; $5661: $70
	ccf                                              ; $5662: $3f
	ld h, b                                          ; $5663: $60
	rst $38                                          ; $5664: $ff

jr_044_5665:
	rst GetHLinHL                                          ; $5665: $cf
	ld a, e                                          ; $5666: $7b
	xor d                                            ; $5667: $aa
	rst $38                                          ; $5668: $ff
	ld [hl], l                                       ; $5669: $75
	inc l                                            ; $566a: $2c
	sbc h                                            ; $566b: $9c
	ld l, [hl]                                       ; $566c: $6e
	sbc a                                            ; $566d: $9f
	ld a, b                                          ; $566e: $78
	ld a, e                                          ; $566f: $7b
	db $e4                                           ; $5670: $e4
	sbc e                                            ; $5671: $9b
	ld a, a                                          ; $5672: $7f
	add b                                            ; $5673: $80
	add b                                            ; $5674: $80
	nop                                              ; $5675: $00
	ld a, c                                          ; $5676: $79
	rst SubAFromHL                                          ; $5677: $d7
	ld a, e                                          ; $5678: $7b
	and b                                            ; $5679: $a0
	ld a, l                                          ; $567a: $7d
	sbc [hl]                                         ; $567b: $9e
	ld a, a                                          ; $567c: $7f
	ld [de], a                                       ; $567d: $12
	sbc h                                            ; $567e: $9c
	ld [bc], a                                       ; $567f: $02
	db $fd                                           ; $5680: $fd
	db $fc                                           ; $5681: $fc
	ld [hl], e                                       ; $5682: $73
	call nc, $f077                                   ; $5683: $d4 $77 $f0
	sbc c                                            ; $5686: $99
	xor b                                            ; $5687: $a8
	ld d, a                                          ; $5688: $57
	ld d, l                                          ; $5689: $55
	xor d                                            ; $568a: $aa
	ld a, [$5c05]                                    ; $568b: $fa $05 $5c
	inc a                                            ; $568e: $3c
	ld a, a                                          ; $568f: $7f
	db $fd                                           ; $5690: $fd
	sbc c                                            ; $5691: $99
	ld b, b                                          ; $5692: $40
	cp a                                             ; $5693: $bf
	xor d                                            ; $5694: $aa
	ld d, l                                          ; $5695: $55
	push af                                          ; $5696: $f5
	ld a, [bc]                                       ; $5697: $0a
	ld e, a                                          ; $5698: $5f
	ldh a, [$7f]                                     ; $5699: $f0 $7f
	cp $76                                           ; $569b: $fe $76
	ld c, $67                                        ; $569d: $0e $67
	call c, $fb77                                    ; $569f: $dc $77 $fb
	ld a, [hl]                                       ; $56a2: $7e
	sbc d                                            ; $56a3: $9a
	ld a, a                                          ; $56a4: $7f
	ldh a, [$7f]                                     ; $56a5: $f0 $7f
	db $ec                                           ; $56a7: $ec
	ld l, a                                          ; $56a8: $6f
	ldh a, [$9e]                                     ; $56a9: $f0 $9e
	rra                                              ; $56ab: $1f
	ld [hl], e                                       ; $56ac: $73
	ld sp, hl                                        ; $56ad: $f9
	ld [hl], a                                       ; $56ae: $77
	call z, $dc6f                                    ; $56af: $cc $6f $dc
	ld a, l                                          ; $56b2: $7d
	ld a, [hl+]                                      ; $56b3: $2a
	ld a, l                                          ; $56b4: $7d
	ld a, [hl]                                       ; $56b5: $7e
	ld e, a                                          ; $56b6: $5f
	call c, $fd9c                                    ; $56b7: $dc $9c $fd
	ld [bc], a                                       ; $56ba: $02
	ld [hl], e                                       ; $56bb: $73
	ld a, c                                          ; $56bc: $79
	jr z, jr_044_573e                                ; $56bd: $28 $7f

	xor $9e                                          ; $56bf: $ee $9e
	dec d                                            ; $56c1: $15
	ld a, e                                          ; $56c2: $7b
	ld [bc], a                                       ; $56c3: $02
	ld a, a                                          ; $56c4: $7f
	db $e3                                           ; $56c5: $e3
	ld a, l                                          ; $56c6: $7d
	and $9a                                          ; $56c7: $e6 $9a
	ld b, c                                          ; $56c9: $41
	cp a                                             ; $56ca: $bf
	sbc d                                            ; $56cb: $9a
	rst $38                                          ; $56cc: $ff
	pop bc                                           ; $56cd: $c1
	ld a, c                                          ; $56ce: $79
	ld [de], a                                       ; $56cf: $12
	ld a, a                                          ; $56d0: $7f
	ld e, [hl]                                       ; $56d1: $5e
	sub [hl]                                         ; $56d2: $96
	and b                                            ; $56d3: $a0
	rst $38                                          ; $56d4: $ff
	ld h, e                                          ; $56d5: $63
	db $fc                                           ; $56d6: $fc
	and a                                            ; $56d7: $a7

jr_044_56d8:
	ld hl, sp+$6f                                    ; $56d8: $f8 $6f
	ldh a, [$08]                                     ; $56da: $f0 $08
	ld a, d                                          ; $56dc: $7a
	ret nc                                           ; $56dd: $d0

	ld [hl], a                                       ; $56de: $77
	ret nc                                           ; $56df: $d0

	ld a, l                                          ; $56e0: $7d
	cp b                                             ; $56e1: $b8
	ld h, a                                          ; $56e2: $67
	and b                                            ; $56e3: $a0
	sbc [hl]                                         ; $56e4: $9e
	ld b, d                                          ; $56e5: $42
	ld [hl], e                                       ; $56e6: $73
	rst FarCall                                          ; $56e7: $f7
	ld h, a                                          ; $56e8: $67
	sbc [hl]                                         ; $56e9: $9e
	ld h, a                                          ; $56ea: $67
	ld h, a                                          ; $56eb: $67
	ld h, a                                          ; $56ec: $67
	ldh a, [$9e]                                     ; $56ed: $f0 $9e
	call nz, $1272                                   ; $56ef: $c4 $72 $12
	ld [hl], a                                       ; $56f2: $77
	sub d                                            ; $56f3: $92
	ld l, a                                          ; $56f4: $6f
	ldh a, [$7f]                                     ; $56f5: $f0 $7f
	db $f4                                           ; $56f7: $f4
	ld a, b                                          ; $56f8: $78
	inc a                                            ; $56f9: $3c
	ld a, e                                          ; $56fa: $7b
	db $f4                                           ; $56fb: $f4
	sbc l                                            ; $56fc: $9d
	ld e, a                                          ; $56fd: $5f
	and b                                            ; $56fe: $a0
	ld l, a                                          ; $56ff: $6f
	rst SubAFromHL                                          ; $5700: $d7
	sbc e                                            ; $5701: $9b
	ld d, a                                          ; $5702: $57
	xor b                                            ; $5703: $a8
	xor a                                            ; $5704: $af
	ld d, b                                          ; $5705: $50
	ld e, a                                          ; $5706: $5f
	ld [hl-], a                                      ; $5707: $32
	ld a, a                                          ; $5708: $7f
	cp $9d                                           ; $5709: $fe $9d
	db $fd                                           ; $570b: $fd
	rrca                                             ; $570c: $0f
	ld a, c                                          ; $570d: $79
	rst SubAFromBC                                          ; $570e: $e7
	ld [hl], e                                       ; $570f: $73
	cp $94                                           ; $5710: $fe $94
	cp $0f                                           ; $5712: $fe $0f
	db $fd                                           ; $5714: $fd
	rrca                                             ; $5715: $0f
	ldh [c], a                                       ; $5716: $e2
	rra                                              ; $5717: $1f
	ld a, a                                          ; $5718: $7f
	rst $38                                          ; $5719: $ff
	ld [$d5ff], a                                    ; $571a: $ea $ff $d5
	ld a, e                                          ; $571d: $7b
	db $fc                                           ; $571e: $fc
	sbc h                                            ; $571f: $9c
	call nc, $a8ff                                   ; $5720: $d4 $ff $a8
	ld a, d                                          ; $5723: $7a
	ld h, b                                          ; $5724: $60
	sbc h                                            ; $5725: $9c
	add e                                            ; $5726: $83
	db $fc                                           ; $5727: $fc
	ret nz                                           ; $5728: $c0

	ld a, e                                          ; $5729: $7b
	halt                                             ; $572a: $76
	ld a, a                                          ; $572b: $7f
	reti                                             ; $572c: $d9


	ld a, [hl]                                       ; $572d: $7e
	xor $99                                          ; $572e: $ee $99
	dec d                                            ; $5730: $15
	ld [$d52a], a                                    ; $5731: $ea $2a $d5
	dec d                                            ; $5734: $15
	ld [$906f], a                                    ; $5735: $ea $6f $90
	sub a                                            ; $5738: $97
	db $10                                           ; $5739: $10
	rst AddAOntoHL                                          ; $573a: $ef
	adc d                                            ; $573b: $8a
	ld [hl], l                                       ; $573c: $75
	ld d, c                                          ; $573d: $51

jr_044_573e:
	xor [hl]                                         ; $573e: $ae
	xor d                                            ; $573f: $aa
	ld d, l                                          ; $5740: $55
	halt                                             ; $5741: $76
	jp z, $b96f                                      ; $5742: $ca $6f $b9

	ld a, a                                          ; $5745: $7f
	ldh [$7f], a                                     ; $5746: $e0 $7f
	sbc h                                            ; $5748: $9c
	sbc h                                            ; $5749: $9c
	xor e                                            ; $574a: $ab
	ld d, h                                          ; $574b: $54
	cp $fd                                           ; $574c: $fe $fd
	ld [hl], e                                       ; $574e: $73
	ldh a, [$7e]                                     ; $574f: $f0 $7e
	jp z, $f87c                                      ; $5751: $ca $7c $f8

	halt                                             ; $5754: $76
	sbc [hl]                                         ; $5755: $9e
	ld h, e                                          ; $5756: $63
	ld h, c                                          ; $5757: $61
	inc bc                                           ; $5758: $03
	cp $03                                           ; $5759: $fe $03
	cp $6b                                           ; $575b: $fe $6b
	cp $7d                                           ; $575d: $fe $7d
	call nc, $f04f                                   ; $575f: $d4 $4f $f0
	sub e                                            ; $5762: $93
	and b                                            ; $5763: $a0
	ld e, a                                          ; $5764: $5f
	ret nc                                           ; $5765: $d0

	cpl                                              ; $5766: $2f
	xor b                                            ; $5767: $a8
	ld d, a                                          ; $5768: $57
	call nc, $ea2b                                   ; $5769: $d4 $2b $ea
	dec d                                            ; $576c: $15
	db $f4                                           ; $576d: $f4
	dec bc                                           ; $576e: $0b
	ld [hl], a                                       ; $576f: $77
	db $fc                                           ; $5770: $fc
	halt                                             ; $5771: $76
	call z, $279e                                    ; $5772: $cc $9e $27
	ld [hl], e                                       ; $5775: $73
	db $fc                                           ; $5776: $fc
	sbc c                                            ; $5777: $99
	cpl                                              ; $5778: $2f
	ldh a, [rTAC]                                    ; $5779: $f0 $07
	ld hl, sp+$2b                                    ; $577b: $f8 $2b
	db $f4                                           ; $577d: $f4
	inc bc                                           ; $577e: $03
	xor [hl]                                         ; $577f: $ae
	inc de                                           ; $5780: $13
	sub h                                            ; $5781: $94
	ld a, [hl]                                       ; $5782: $7e
	ld e, d                                          ; $5783: $5a
	ld e, a                                          ; $5784: $5f
	ldh a, [c]                                       ; $5785: $f2
	ld [hl], l                                       ; $5786: $75
	ldh a, [$7f]                                     ; $5787: $f0 $7f
	add e                                            ; $5789: $83
	ld l, a                                          ; $578a: $6f
	db $f4                                           ; $578b: $f4
	sbc l                                            ; $578c: $9d
	ld hl, sp+$07                                    ; $578d: $f8 $07
	ld l, a                                          ; $578f: $6f
	db $eb                                           ; $5790: $eb
	sbc l                                            ; $5791: $9d
	pop af                                           ; $5792: $f1
	db $fc                                           ; $5793: $fc
	ld a, e                                          ; $5794: $7b
	add sp, -$66                                     ; $5795: $e8 $9a
	db $10                                           ; $5797: $10
	ldh [rAUD1SWEEP], a                              ; $5798: $e0 $10
	nop                                              ; $579a: $00
	ldh a, [rPCM34]                                  ; $579b: $f0 $77
	cp $9b                                           ; $579d: $fe $9b
	ld h, b                                          ; $579f: $60
	add b                                            ; $57a0: $80
	ld d, b                                          ; $57a1: $50
	nop                                              ; $57a2: $00
	ld [hl], l                                       ; $57a3: $75
	add $e0                                          ; $57a4: $c6 $e0
	or l                                             ; $57a6: $b5
	inc bc                                           ; $57a7: $03
	ld e, d                                          ; $57a8: $5a
	inc bc                                           ; $57a9: $03
	cp $0f                                           ; $57aa: $fe $0f
	cp $7e                                           ; $57ac: $fe $7e
	call z, $347d                                    ; $57ae: $cc $7d $34
	ld a, l                                          ; $57b1: $7d
	ld l, b                                          ; $57b2: $68
	ld a, a                                          ; $57b3: $7f
	db $fc                                           ; $57b4: $fc
	ld l, a                                          ; $57b5: $6f
	ld hl, sp-$64                                    ; $57b6: $f8 $9c
	pop af                                           ; $57b8: $f1
	rrca                                             ; $57b9: $0f
	rlca                                             ; $57ba: $07
	ld [hl], d                                       ; $57bb: $72
	ret z                                            ; $57bc: $c8

	sbc [hl]                                         ; $57bd: $9e
	rrca                                             ; $57be: $0f
	ld a, e                                          ; $57bf: $7b
	db $fc                                           ; $57c0: $fc
	sbc d                                            ; $57c1: $9a
	dec bc                                           ; $57c2: $0b
	rst FarCall                                          ; $57c3: $f7
	ld [hl], b                                       ; $57c4: $70
	rst $38                                          ; $57c5: $ff
	or b                                             ; $57c6: $b0
	ld l, e                                          ; $57c7: $6b
	db $10                                           ; $57c8: $10
	ld a, a                                          ; $57c9: $7f
	inc b                                            ; $57ca: $04
	sbc l                                            ; $57cb: $9d
	ret c                                            ; $57cc: $d8

	ccf                                              ; $57cd: $3f
	ld [hl], a                                       ; $57ce: $77
	ld [bc], a                                       ; $57cf: $02
	ld a, l                                          ; $57d0: $7d
	ld [hl], d                                       ; $57d1: $72
	ld e, a                                          ; $57d2: $5f
	inc b                                            ; $57d3: $04
	sbc h                                            ; $57d4: $9c
	ld e, b                                          ; $57d5: $58
	rst $38                                          ; $57d6: $ff
	add b                                            ; $57d7: $80
	ld a, e                                          ; $57d8: $7b
	xor $6c                                          ; $57d9: $ee $6c
	jp c, $fe77                                      ; $57db: $da $77 $fe

	ld a, l                                          ; $57de: $7d
	cp l                                             ; $57df: $bd
	ld a, b                                          ; $57e0: $78
	dec hl                                           ; $57e1: $2b
	ld [hl], l                                       ; $57e2: $75
	add d                                            ; $57e3: $82
	ld a, e                                          ; $57e4: $7b
	or $7d                                           ; $57e5: $f6 $7d
	inc l                                            ; $57e7: $2c
	rst SubAFromDE                                          ; $57e8: $df
	rst $38                                          ; $57e9: $ff
	sbc d                                            ; $57ea: $9a
	ld c, $f1                                        ; $57eb: $0e $f1
	ld a, [hl-]                                      ; $57ed: $3a
	ret nz                                           ; $57ee: $c0

	rst $38                                          ; $57ef: $ff
	ld a, e                                          ; $57f0: $7b
	db $f4                                           ; $57f1: $f4
	sbc [hl]                                         ; $57f2: $9e
	ld hl, sp+$78                                    ; $57f3: $f8 $78
	and b                                            ; $57f5: $a0
	add h                                            ; $57f6: $84
	ld d, l                                          ; $57f7: $55
	add b                                            ; $57f8: $80
	add b                                            ; $57f9: $80
	cp $07                                           ; $57fa: $fe $07
	rst $38                                          ; $57fc: $ff
	xor d                                            ; $57fd: $aa
	nop                                              ; $57fe: $00
	ld [hl], c                                       ; $57ff: $71
	cp $aa                                           ; $5800: $fe $aa
	pop bc                                           ; $5802: $c1
	ld bc, $2afc                                     ; $5803: $01 $fc $2a
	add b                                            ; $5806: $80
	inc b                                            ; $5807: $04
	ei                                               ; $5808: $fb
	xor d                                            ; $5809: $aa
	nop                                              ; $580a: $00
	ld sp, hl                                        ; $580b: $f9
	cp $a0                                           ; $580c: $fe $a0
	rra                                              ; $580e: $1f
	ld d, l                                          ; $580f: $55
	nop                                              ; $5810: $00
	jr nz, @+$7c                                     ; $5811: $20 $7a

	call z, $a094                                    ; $5813: $cc $94 $a0
	db $10                                           ; $5816: $10
	ld d, b                                          ; $5817: $50
	add b                                            ; $5818: $80
	add b                                            ; $5819: $80
	ld [hl], b                                       ; $581a: $70
	ld d, b                                          ; $581b: $50
	nop                                              ; $581c: $00
	ldh a, [$f0]                                     ; $581d: $f0 $f0
	ld d, b                                          ; $581f: $50
	ldh [$b0], a                                     ; $5820: $e0 $b0
	ld [bc], a                                       ; $5822: $02
	cp $03                                           ; $5823: $fe $03
	cp $60                                           ; $5825: $fe $60
	sub $9b                                          ; $5827: $d6 $9b
	inc bc                                           ; $5829: $03
	db $ec                                           ; $582a: $ec
	rra                                              ; $582b: $1f
	ld [hl], b                                       ; $582c: $70
	ld a, e                                          ; $582d: $7b
	rra                                              ; $582e: $1f
	ld a, l                                          ; $582f: $7d
	ld [$f998], a                                    ; $5830: $ea $98 $f9
	rlca                                             ; $5833: $07
	db $ec                                           ; $5834: $ec
	rra                                              ; $5835: $1f
	ldh [$7f], a                                     ; $5836: $e0 $7f
	add b                                            ; $5838: $80
	ld [hl], e                                       ; $5839: $73
	inc d                                            ; $583a: $14
	add b                                            ; $583b: $80
	rst SubAFromBC                                          ; $583c: $e7
	rra                                              ; $583d: $1f
	or d                                             ; $583e: $b2
	ld a, l                                          ; $583f: $7d
	add b                                            ; $5840: $80
	rst $38                                          ; $5841: $ff
	inc bc                                           ; $5842: $03
	db $fc                                           ; $5843: $fc
	rrca                                             ; $5844: $0f
	pop af                                           ; $5845: $f1
	ld a, $c7                                        ; $5846: $3e $c7
	ldh a, [$3f]                                     ; $5848: $f0 $3f
	sub c                                            ; $584a: $91
	xor $d2                                          ; $584b: $ee $d2
	ld a, l                                          ; $584d: $7d
	or l                                             ; $584e: $b5
	ei                                               ; $584f: $fb
	ret c                                            ; $5850: $d8

	ld a, a                                          ; $5851: $7f
	ldh a, [$3f]                                     ; $5852: $f0 $3f
	ret nc                                           ; $5854: $d0

	rst $38                                          ; $5855: $ff
	db $10                                           ; $5856: $10
	rst $38                                          ; $5857: $ff
	rst SubAFromDE                                          ; $5858: $df
	ccf                                              ; $5859: $3f
	rst SubAFromDE                                          ; $585a: $df
	adc c                                            ; $585b: $89
	rst $38                                          ; $585c: $ff
	jr nc, @+$01                                     ; $585d: $30 $ff

	inc bc                                           ; $585f: $03
	rst $38                                          ; $5860: $ff
	rlca                                             ; $5861: $07
	rst $38                                          ; $5862: $ff
	rrca                                             ; $5863: $0f
	rst FarCall                                          ; $5864: $f7
	adc a                                            ; $5865: $8f
	ld a, a                                          ; $5866: $7f
	di                                               ; $5867: $f3
	rst $38                                          ; $5868: $ff
	add d                                            ; $5869: $82
	db $fc                                           ; $586a: $fc
	db $fd                                           ; $586b: $fd
	ld hl, sp+$07                                    ; $586c: $f8 $07
	rst $38                                          ; $586e: $ff
	ldh [rIE], a                                     ; $586f: $e0 $ff
	db $fc                                           ; $5871: $fc
	sbc $ff                                          ; $5872: $de $ff
	sub [hl]                                         ; $5874: $96
	rst SubAFromBC                                          ; $5875: $e7
	ld hl, sp+$55                                    ; $5876: $f8 $55
	add b                                            ; $5878: $80
	xor d                                            ; $5879: $aa
	nop                                              ; $587a: $00
	ld d, l                                          ; $587b: $55
	nop                                              ; $587c: $00
	add a                                            ; $587d: $87
	ld a, e                                          ; $587e: $7b
	ld hl, sp-$69                                    ; $587f: $f8 $97
	ld a, d                                          ; $5881: $7a
	add b                                            ; $5882: $80
	rst $38                                          ; $5883: $ff
	rst $38                                          ; $5884: $ff
	ccf                                              ; $5885: $3f
	rst $38                                          ; $5886: $ff
	ld d, l                                          ; $5887: $55
	nop                                              ; $5888: $00
	ld [hl], a                                       ; $5889: $77
	ldh a, [$9d]                                     ; $588a: $f0 $9d
	ldh a, [rIF]                                     ; $588c: $f0 $0f
	ld [hl], a                                       ; $588e: $77
	ld hl, sp+$7f                                    ; $588f: $f8 $7f
	ld [$ffdf], a                                    ; $5891: $ea $df $ff
	ld a, [hl]                                       ; $5894: $7e
	and [hl]                                         ; $5895: $a6
	ld [hl], a                                       ; $5896: $77
	ldh a, [$7e]                                     ; $5897: $f0 $7e
	xor h                                            ; $5899: $ac
	sbc [hl]                                         ; $589a: $9e
	ld d, a                                          ; $589b: $57
	ld a, e                                          ; $589c: $7b
	ldh a, [$9d]                                     ; $589d: $f0 $9d
	push de                                          ; $589f: $d5
	nop                                              ; $58a0: $00
	db $dd                                           ; $58a1: $dd
	rst $38                                          ; $58a2: $ff
	sbc [hl]                                         ; $58a3: $9e
	xor e                                            ; $58a4: $ab
	ld a, e                                          ; $58a5: $7b
	ldh a, [$7f]                                     ; $58a6: $f0 $7f
	call nz, $e86f                                   ; $58a8: $c4 $6f $e8
	ld a, a                                          ; $58ab: $7f
	ld a, a                                          ; $58ac: $7f
	rst SubAFromDE                                          ; $58ad: $df
	rst $38                                          ; $58ae: $ff
	sbc [hl]                                         ; $58af: $9e
	pop hl                                           ; $58b0: $e1
	ld a, d                                          ; $58b1: $7a
	ret nz                                           ; $58b2: $c0

	sbc [hl]                                         ; $58b3: $9e
	add b                                            ; $58b4: $80
	sbc $f0                                          ; $58b5: $de $f0
	ld a, [hl]                                       ; $58b7: $7e
	cp a                                             ; $58b8: $bf
	sub [hl]                                         ; $58b9: $96
	nop                                              ; $58ba: $00
	ld d, b                                          ; $58bb: $50
	inc c                                            ; $58bc: $0c
	ld hl, sp-$01                                    ; $58bd: $f8 $ff
	ldh a, [c]                                       ; $58bf: $f2
	rst $38                                          ; $58c0: $ff
	pop af                                           ; $58c1: $f1
	rrca                                             ; $58c2: $0f
	ld c, [hl]                                       ; $58c3: $4e
	cp a                                             ; $58c4: $bf
	ld a, [hl]                                       ; $58c5: $7e
	and h                                            ; $58c6: $a4
	sbc [hl]                                         ; $58c7: $9e
	ldh [$e0], a                                     ; $58c8: $e0 $e0
	pop bc                                           ; $58ca: $c1
	ld c, $ee                                        ; $58cb: $0e $ee
	sbc l                                            ; $58cd: $9d
	xor $1f                                          ; $58ce: $ee $1f
	ld e, a                                          ; $58d0: $5f
	or $9c                                           ; $58d1: $f6 $9c
	or b                                             ; $58d3: $b0
	ld a, a                                          ; $58d4: $7f
	ret nz                                           ; $58d5: $c0

	ld a, e                                          ; $58d6: $7b
	push af                                          ; $58d7: $f5
	sbc [hl]                                         ; $58d8: $9e
	ei                                               ; $58d9: $fb
	ld a, d                                          ; $58da: $7a
	db $e4                                           ; $58db: $e4
	ld a, [hl]                                       ; $58dc: $7e
	jp c, $e476                                      ; $58dd: $da $76 $e4

	halt                                             ; $58e0: $76
	ldh [c], a                                       ; $58e1: $e2
	sbc [hl]                                         ; $58e2: $9e
	ld b, $73                                        ; $58e3: $06 $73
	or $87                                           ; $58e5: $f6 $87
	ld bc, $07fe                                     ; $58e7: $01 $fe $07
	ld sp, hl                                        ; $58ea: $f9
	inc a                                            ; $58eb: $3c
	rst JumpTable                                          ; $58ec: $c7
	ldh [$3f], a                                     ; $58ed: $e0 $3f
	add l                                            ; $58ef: $85
	ld a, [$f807]                                    ; $58f0: $fa $07 $f8
	ld e, $e3                                        ; $58f3: $1e $e3
	ld a, l                                          ; $58f5: $7d
	add [hl]                                         ; $58f6: $86
	db $ec                                           ; $58f7: $ec
	ld [hl], e                                       ; $58f8: $73
	scf                                              ; $58f9: $37
	ret z                                            ; $58fa: $c8

	ld a, a                                          ; $58fb: $7f
	add b                                            ; $58fc: $80
	ccf                                              ; $58fd: $3f
	jp nz, $b179                                     ; $58fe: $c2 $79 $b1

	sbc [hl]                                         ; $5901: $9e
	jr nc, jr_044_597b                               ; $5902: $30 $77

	and $92                                          ; $5904: $e6 $92
	pop af                                           ; $5906: $f1
	rra                                              ; $5907: $1f
	and $5f                                          ; $5908: $e6 $5f
	db $dd                                           ; $590a: $dd
	cp a                                             ; $590b: $bf
	cp a                                             ; $590c: $bf
	ld a, a                                          ; $590d: $7f
	cp a                                             ; $590e: $bf
	ld a, a                                          ; $590f: $7f
	ld a, a                                          ; $5910: $7f
	rst $38                                          ; $5911: $ff
	rra                                              ; $5912: $1f
	ld a, c                                          ; $5913: $79
	cp d                                             ; $5914: $ba
	sub a                                            ; $5915: $97
	rst SubAFromHL                                          ; $5916: $d7
	rst $38                                          ; $5917: $ff
	xor l                                            ; $5918: $ad
	cp $56                                           ; $5919: $fe $56
	ld hl, sp-$11                                    ; $591b: $f8 $ef
	ldh a, [$db]                                     ; $591d: $f0 $db
	rst $38                                          ; $591f: $ff
	sbc e                                            ; $5920: $9b
	pop bc                                           ; $5921: $c1
	rst $38                                          ; $5922: $ff
	ld a, [hl+]                                      ; $5923: $2a
	add b                                            ; $5924: $80
	halt                                             ; $5925: $76
	db $ec                                           ; $5926: $ec
	ld a, [hl]                                       ; $5927: $7e
	db $fc                                           ; $5928: $fc
	sbc [hl]                                         ; $5929: $9e
	add c                                            ; $592a: $81
	ld a, c                                          ; $592b: $79
	xor c                                            ; $592c: $a9
	sbc [hl]                                         ; $592d: $9e
	rst JumpTable                                          ; $592e: $c7
	ld a, d                                          ; $592f: $7a
	and $9e                                          ; $5930: $e6 $9e
	xor a                                            ; $5932: $af
	ld a, e                                          ; $5933: $7b
	nop                                              ; $5934: $00
	halt                                             ; $5935: $76
	db $fc                                           ; $5936: $fc
	sbc d                                            ; $5937: $9a
	ld a, [$f000]                                    ; $5938: $fa $00 $f0
	rst $38                                          ; $593b: $ff
	ld [$e67a], a                                    ; $593c: $ea $7a $e6
	sbc [hl]                                         ; $593f: $9e
	db $e3                                           ; $5940: $e3
	ld a, d                                          ; $5941: $7a
	ld hl, sp+$77                                    ; $5942: $f8 $77
	ldh a, [$7f]                                     ; $5944: $f0 $7f
	db $fc                                           ; $5946: $fc
	ld a, a                                          ; $5947: $7f
	ld a, [hl]                                       ; $5948: $7e
	ld a, a                                          ; $5949: $7f
	db $fc                                           ; $594a: $fc
	sbc [hl]                                         ; $594b: $9e
	db $e3                                           ; $594c: $e3
	ld a, d                                          ; $594d: $7a
	and c                                            ; $594e: $a1
	halt                                             ; $594f: $76
	call z, $f077                                    ; $5950: $cc $77 $f0
	ld a, a                                          ; $5953: $7f
	sbc d                                            ; $5954: $9a
	ld [hl], a                                       ; $5955: $77
	ret z                                            ; $5956: $c8

	ld a, a                                          ; $5957: $7f
	ret                                              ; $5958: $c9


	ld a, a                                          ; $5959: $7f
	xor h                                            ; $595a: $ac
	ld l, [hl]                                       ; $595b: $6e
	xor b                                            ; $595c: $a8
	ld l, a                                          ; $595d: $6f
	db $fc                                           ; $595e: $fc
	ld [hl], l                                       ; $595f: $75
	ld l, b                                          ; $5960: $68
	ld a, a                                          ; $5961: $7f
	ret                                              ; $5962: $c9


	ld l, a                                          ; $5963: $6f
	db $f4                                           ; $5964: $f4
	sub e                                            ; $5965: $93
	rrca                                             ; $5966: $0f
	and b                                            ; $5967: $a0
	rrca                                             ; $5968: $0f

jr_044_5969:
	ld d, b                                          ; $5969: $50
	rrca                                             ; $596a: $0f
	and b                                            ; $596b: $a0
	rst AddAOntoHL                                          ; $596c: $ef
	ldh a, [$f9]                                     ; $596d: $f0 $f9
	db $f4                                           ; $596f: $f4
	dec c                                            ; $5970: $0d
	ld d, d                                          ; $5971: $52
	ld [hl], a                                       ; $5972: $77
	db $f4                                           ; $5973: $f4
	sbc l                                            ; $5974: $9d
	db $fc                                           ; $5975: $fc
	inc e                                            ; $5976: $1c
	ld a, d                                          ; $5977: $7a
	ld d, c                                          ; $5978: $51
	ld [hl], e                                       ; $5979: $73
	inc l                                            ; $597a: $2c

jr_044_597b:
	sbc c                                            ; $597b: $99
	ld a, a                                          ; $597c: $7f
	nop                                              ; $597d: $00
	rra                                              ; $597e: $1f
	ret nz                                           ; $597f: $c0

jr_044_5980:
	rst JumpTable                                          ; $5980: $c7
	jr nc, jr_044_5980                               ; $5981: $30 $fd

	rst SubAFromDE                                          ; $5983: $df
	ldh [$9b], a                                     ; $5984: $e0 $9b
	ld hl, sp+$30                                    ; $5986: $f8 $30
	rst $38                                          ; $5988: $ff
	ld c, $7a                                        ; $5989: $0e $7a
	scf                                              ; $598b: $37
	ld a, e                                          ; $598c: $7b
	ld [$99f7], a                                    ; $598d: $ea $f7 $99
	ret nz                                           ; $5990: $c0

	add b                                            ; $5991: $80
	ldh a, [$e0]                                     ; $5992: $f0 $e0
	db $fc                                           ; $5994: $fc
	inc a                                            ; $5995: $3c
	pop hl                                           ; $5996: $e1
	ld a, l                                          ; $5997: $7d
	jp nc, $c875                                     ; $5998: $d2 $75 $c8

	ld a, a                                          ; $599b: $7f
	pop bc                                           ; $599c: $c1
	halt                                             ; $599d: $76
	db $e4                                           ; $599e: $e4
	ld [hl], a                                       ; $599f: $77
	cp $9e                                           ; $59a0: $fe $9e
	and b                                            ; $59a2: $a0
	ld [hl], c                                       ; $59a3: $71
	ret z                                            ; $59a4: $c8

	ld a, a                                          ; $59a5: $7f
	cp $7d                                           ; $59a6: $fe $7d
	adc $7f                                          ; $59a8: $ce $7f
	ld b, $9b                                        ; $59aa: $06 $9b
	ld a, h                                          ; $59ac: $7c
	adc a                                            ; $59ad: $8f
	ldh [$7f], a                                     ; $59ae: $e0 $7f
	ld [hl], a                                       ; $59b0: $77
	or $9b                                           ; $59b1: $f6 $9b
	rra                                              ; $59b3: $1f
	db $e3                                           ; $59b4: $e3
	ld hl, sp+$1f                                    ; $59b5: $f8 $1f
	ld l, a                                          ; $59b7: $6f
	ldh [$7e], a                                     ; $59b8: $e0 $7e
	sub $7d                                          ; $59ba: $d6 $7d
	add $6f                                          ; $59bc: $c6 $6f
	ldh [$7e], a                                     ; $59be: $e0 $7e
	sub $99                                          ; $59c0: $d6 $99
	ccf                                              ; $59c2: $3f
	jp $28df                                         ; $59c3: $c3 $df $28


	rst $38                                          ; $59c6: $ff
	ld h, b                                          ; $59c7: $60
	ld a, d                                          ; $59c8: $7a
	jr jr_044_5969                                   ; $59c9: $18 $9e

	ld [bc], a                                       ; $59cb: $02
	ld a, c                                          ; $59cc: $79
	or l                                             ; $59cd: $b5
	adc [hl]                                         ; $59ce: $8e
	ld b, b                                          ; $59cf: $40
	rst $38                                          ; $59d0: $ff
	nop                                              ; $59d1: $00
	ei                                               ; $59d2: $fb
	inc b                                            ; $59d3: $04
	rst $38                                          ; $59d4: $ff
	nop                                              ; $59d5: $00
	sbc $21                                          ; $59d6: $de $21
	rst $38                                          ; $59d8: $ff
	add c                                            ; $59d9: $81
	rst FarCall                                          ; $59da: $f7
	rrca                                             ; $59db: $0f
	jp c, $f53f                                      ; $59dc: $da $3f $f5

	ld a, a                                          ; $59df: $7f
	ld a, e                                          ; $59e0: $7b
	dec l                                            ; $59e1: $2d
	ld a, e                                          ; $59e2: $7b
	cp $9a                                           ; $59e3: $fe $9a
	ld [$aaff], a                                    ; $59e5: $ea $ff $aa
	rst $38                                          ; $59e8: $ff
	ld d, l                                          ; $59e9: $55
	ld a, e                                          ; $59ea: $7b
	db $fc                                           ; $59eb: $fc
	sbc l                                            ; $59ec: $9d
	ld d, [hl]                                       ; $59ed: $56
	db $fc                                           ; $59ee: $fc
	ld [hl], l                                       ; $59ef: $75
	xor h                                            ; $59f0: $ac
	ld a, a                                          ; $59f1: $7f
	db $fc                                           ; $59f2: $fc
	sbc e                                            ; $59f3: $9b
	cp e                                             ; $59f4: $bb
	db $fc                                           ; $59f5: $fc
	rst SubAFromDE                                          ; $59f6: $df
	ldh [$6d], a                                     ; $59f7: $e0 $6d
	xor b                                            ; $59f9: $a8
	ld [hl], l                                       ; $59fa: $75
	rst GetHLinHL                                          ; $59fb: $cf
	sbc [hl]                                         ; $59fc: $9e
	inc sp                                           ; $59fd: $33
	ld a, e                                          ; $59fe: $7b
	add hl, de                                       ; $59ff: $19
	sbc [hl]                                         ; $5a00: $9e
	cp a                                             ; $5a01: $bf
	ld l, e                                          ; $5a02: $6b
	inc c                                            ; $5a03: $0c
	ld a, h                                          ; $5a04: $7c
	ld l, $7f                                        ; $5a05: $2e $7f
	ld a, h                                          ; $5a07: $7c
	sbc [hl]                                         ; $5a08: $9e
	ret z                                            ; $5a09: $c8

	ld a, e                                          ; $5a0a: $7b
	xor b                                            ; $5a0b: $a8
	rst SubAFromDE                                          ; $5a0c: $df
	rst $38                                          ; $5a0d: $ff
	ld l, a                                          ; $5a0e: $6f
	ldh a, [$7b]                                     ; $5a0f: $f0 $7b

jr_044_5a11:
	ld [hl], $73                                     ; $5a11: $36 $73
	sbc b                                            ; $5a13: $98
	rst SubAFromDE                                          ; $5a14: $df
	rst $38                                          ; $5a15: $ff
	sbc l                                            ; $5a16: $9d
	ld d, h                                          ; $5a17: $54
	inc bc                                           ; $5a18: $03
	ld l, [hl]                                       ; $5a19: $6e
	add sp, -$63                                     ; $5a1a: $e8 $9d
	ccf                                              ; $5a1c: $3f
	ret nz                                           ; $5a1d: $c0

	ld [hl], a                                       ; $5a1e: $77
	rlca                                             ; $5a1f: $07
	rst SubAFromDE                                          ; $5a20: $df
	rst $38                                          ; $5a21: $ff
	ld [hl], h                                       ; $5a22: $74
	ld e, b                                          ; $5a23: $58
	ld [hl], a                                       ; $5a24: $77
	ldh a, [$7f]                                     ; $5a25: $f0 $7f
	di                                               ; $5a27: $f3
	ld a, [hl]                                       ; $5a28: $7e
	and d                                            ; $5a29: $a2
	ld a, a                                          ; $5a2a: $7f
	ei                                               ; $5a2b: $fb
	ld a, d                                          ; $5a2c: $7a
	push de                                          ; $5a2d: $d5
	ld a, [hl]                                       ; $5a2e: $7e
	inc a                                            ; $5a2f: $3c
	sbc [hl]                                         ; $5a30: $9e
	ccf                                              ; $5a31: $3f
	ld [hl], a                                       ; $5a32: $77
	ldh a, [$9e]                                     ; $5a33: $f0 $9e
	db $fd                                           ; $5a35: $fd
	ld a, e                                          ; $5a36: $7b
	adc $7e                                          ; $5a37: $ce $7e
	ld [hl], h                                       ; $5a39: $74
	ld [hl], a                                       ; $5a3a: $77
	sbc $7e                                          ; $5a3b: $de $7e
	ld e, h                                          ; $5a3d: $5c
	ld l, a                                          ; $5a3e: $6f
	cp h                                             ; $5a3f: $bc
	ld [hl], a                                       ; $5a40: $77
	ret nz                                           ; $5a41: $c0

	adc h                                            ; $5a42: $8c
	dec c                                            ; $5a43: $0d
	ldh a, [c]                                       ; $5a44: $f2
	rst $38                                          ; $5a45: $ff
	ldh a, [$e9]                                     ; $5a46: $f0 $e9
	db $f4                                           ; $5a48: $f4
	inc c                                            ; $5a49: $0c
	ld d, e                                          ; $5a4a: $53
	rrca                                             ; $5a4b: $0f
	and b                                            ; $5a4c: $a0
	dec bc                                           ; $5a4d: $0b
	ld d, h                                          ; $5a4e: $54
	ld c, $f1                                        ; $5a4f: $0e $f1
	db $eb                                           ; $5a51: $eb
	db $f4                                           ; $5a52: $f4
	ldh a, [$0e]                                     ; $5a53: $f0 $0e
	db $fc                                           ; $5a55: $fc
	ld a, d                                          ; $5a56: $7a
	ret c                                            ; $5a57: $d8

	sub l                                            ; $5a58: $95
	dec [hl]                                         ; $5a59: $35
	adc d                                            ; $5a5a: $8a
	ld a, [de]                                       ; $5a5b: $1a
	push hl                                          ; $5a5c: $e5
	call nz, $f133                                   ; $5a5d: $c4 $33 $f1
	inc c                                            ; $5a60: $0c
	xor b                                            ; $5a61: $a8
	ld d, a                                          ; $5a62: $57
	ld [hl], a                                       ; $5a63: $77
	ld a, [hl]                                       ; $5a64: $7e
	sub e                                            ; $5a65: $93
	rrca                                             ; $5a66: $0f
	ldh [rSCX], a                                    ; $5a67: $e0 $43
	cp b                                             ; $5a69: $b8
	and b                                            ; $5a6a: $a0
	ld e, [hl]                                       ; $5a6b: $5e
	ld d, h                                          ; $5a6c: $54
	xor e                                            ; $5a6d: $ab
	adc c                                            ; $5a6e: $89
	halt                                             ; $5a6f: $76
	jr nz, jr_044_5a11                               ; $5a70: $20 $9f

	ld a, e                                          ; $5a72: $7b
	and c                                            ; $5a73: $a1
	ld a, l                                          ; $5a74: $7d
	jp hl                                            ; $5a75: $e9


	ld a, e                                          ; $5a76: $7b
	rst JumpTable                                          ; $5a77: $c7
	sub c                                            ; $5a78: $91
	rst SubAFromDE                                          ; $5a79: $df
	jr nz, @+$35                                     ; $5a7a: $20 $33

	adc h                                            ; $5a7c: $8c
	rrca                                             ; $5a7d: $0f
	ldh [rSTAT], a                                   ; $5a7e: $e0 $41
	cp b                                             ; $5a80: $b8
	add b                                            ; $5a81: $80
	nop                                              ; $5a82: $00
	ldh [$c0], a                                     ; $5a83: $e0 $c0
	ld hl, sp+$78                                    ; $5a85: $f8 $78
	ld l, [hl]                                       ; $5a87: $6e
	and d                                            ; $5a88: $a2
	sbc e                                            ; $5a89: $9b
	xor d                                            ; $5a8a: $aa
	ld d, l                                          ; $5a8b: $55
	ld d, l                                          ; $5a8c: $55
	xor d                                            ; $5a8d: $aa
	ld h, d                                          ; $5a8e: $62
	and d                                            ; $5a8f: $a2
	sub c                                            ; $5a90: $91
	ret nz                                           ; $5a91: $c0

	ld a, b                                          ; $5a92: $78
	ldh a, [$be]                                     ; $5a93: $f0 $be
	ld e, h                                          ; $5a95: $5c
	ld d, a                                          ; $5a96: $57
	xor a                                            ; $5a97: $af
	rlca                                             ; $5a98: $07
	ld sp, hl                                        ; $5a99: $f9
	ld e, $e7                                        ; $5a9a: $1e $e7
	ldh a, [$1f]                                     ; $5a9c: $f0 $1f
	ld h, b                                          ; $5a9e: $60
	ld b, c                                          ; $5a9f: $41
	add e                                            ; $5aa0: $83
	ld a, [hl]                                       ; $5aa1: $7e
	sub $9c                                          ; $5aa2: $d6 $9c
	rrca                                             ; $5aa4: $0f
	di                                               ; $5aa5: $f3
	inc c                                            ; $5aa6: $0c
	ld [hl], h                                       ; $5aa7: $74
	and d                                            ; $5aa8: $a2
	adc a                                            ; $5aa9: $8f
	db $fc                                           ; $5aaa: $fc
	ld c, $f3                                        ; $5aab: $0e $f3
	dec a                                            ; $5aad: $3d
	adc $63                                          ; $5aae: $ce $63
	cp h                                             ; $5ab0: $bc
	rst JumpTable                                          ; $5ab1: $c7
	ld hl, sp+$0f                                    ; $5ab2: $f8 $0f
	ldh a, [rIF]                                     ; $5ab4: $f0 $0f
	ldh a, [$3b]                                     ; $5ab6: $f0 $3b
	call nz, Call_044_7abf                           ; $5ab8: $c4 $bf $7a
	or a                                             ; $5abb: $b7
	ld a, [hl]                                       ; $5abc: $7e
	adc h                                            ; $5abd: $8c
	ld a, [hl]                                       ; $5abe: $7e
	call nc, $fc7f                                   ; $5abf: $d4 $7f $fc
	ld a, a                                          ; $5ac2: $7f
	cp $7f                                           ; $5ac3: $fe $7f
	halt                                             ; $5ac5: $76
	ld a, h                                          ; $5ac6: $7c
	ld d, [hl]                                       ; $5ac7: $56
	sbc b                                            ; $5ac8: $98
	cp e                                             ; $5ac9: $bb
	ld b, a                                          ; $5aca: $47
	xor $1f                                          ; $5acb: $ee $1f
	cp l                                             ; $5acd: $bd
	ld a, a                                          ; $5ace: $7f
	ld a, d                                          ; $5acf: $7a
	ret c                                            ; $5ad0: $d8

	rst $38                                          ; $5ad1: $ff
	sbc [hl]                                         ; $5ad2: $9e
	push de                                          ; $5ad3: $d5
	ld l, d                                          ; $5ad4: $6a
	adc $7d                                          ; $5ad5: $ce $7d
	db $ec                                           ; $5ad7: $ec
	ld [hl], a                                       ; $5ad8: $77
	cp $96                                           ; $5ad9: $fe $96
	ei                                               ; $5adb: $fb
	db $fc                                           ; $5adc: $fc
	ld l, d                                          ; $5add: $6a
	ldh a, [hDisp1_WY]                                     ; $5ade: $f0 $95
	ldh [rOCPS], a                                   ; $5ae0: $e0 $6a
	add b                                            ; $5ae2: $80
	push de                                          ; $5ae3: $d5
	ld [hl], e                                       ; $5ae4: $73
	inc [hl]                                         ; $5ae5: $34
	sbc [hl]                                         ; $5ae6: $9e
	ld [hl+], a                                      ; $5ae7: $22
	ld a, d                                          ; $5ae8: $7a
	ret nc                                           ; $5ae9: $d0

	ld h, l                                          ; $5aea: $65
	call c, $049c                                    ; $5aeb: $dc $9c $04
	ei                                               ; $5aee: $fb
	nop                                              ; $5aef: $00
	ld a, c                                          ; $5af0: $79
	ld b, h                                          ; $5af1: $44
	sbc l                                            ; $5af2: $9d
	ret nz                                           ; $5af3: $c0

	ccf                                              ; $5af4: $3f
	ld h, a                                          ; $5af5: $67
	ldh a, [$67]                                     ; $5af6: $f0 $67
	adc b                                            ; $5af8: $88
	ld h, a                                          ; $5af9: $67
	ldh a, [$7e]                                     ; $5afa: $f0 $7e
	add hl, sp                                       ; $5afc: $39
	ld [hl], a                                       ; $5afd: $77
	ldh a, [c]                                       ; $5afe: $f2

Call_044_5aff:
	ld a, h                                          ; $5aff: $7c
	ld c, d                                          ; $5b00: $4a
	ld h, a                                          ; $5b01: $67
	ldh a, [$6e]                                     ; $5b02: $f0 $6e
	or b                                             ; $5b04: $b0
	rst SubAFromDE                                          ; $5b05: $df
	rst $38                                          ; $5b06: $ff
	sbc l                                            ; $5b07: $9d
	cp [hl]                                          ; $5b08: $be
	ld bc, $9865                                     ; $5b09: $01 $65 $98
	ld l, a                                          ; $5b0c: $6f
	ldh a, [$7f]                                     ; $5b0d: $f0 $7f
	db $fc                                           ; $5b0f: $fc
	ld h, l                                          ; $5b10: $65
	ld [hl], h                                       ; $5b11: $74
	ld [hl], a                                       ; $5b12: $77
	ldh a, [$75]                                     ; $5b13: $f0 $75
	halt                                             ; $5b15: $76
	sbc l                                            ; $5b16: $9d
	add b                                            ; $5b17: $80
	ld a, a                                          ; $5b18: $7f
	ld e, a                                          ; $5b19: $5f
	ldh a, [$7f]                                     ; $5b1a: $f0 $7f
	cp $98                                           ; $5b1c: $fe $98
	rst AddAOntoHL                                          ; $5b1e: $ef
	ld hl, sp+$07                                    ; $5b1f: $f8 $07
	db $fc                                           ; $5b21: $fc
	inc bc                                           ; $5b22: $03
	xor [hl]                                         ; $5b23: $ae
	ld bc, $db77                                     ; $5b24: $01 $77 $db
	ld [hl], e                                       ; $5b27: $73
	ldh a, [$80]                                     ; $5b28: $f0 $80
	ld l, l                                          ; $5b2a: $6d
	sub d                                            ; $5b2b: $92
	cp d                                             ; $5b2c: $ba
	ld b, l                                          ; $5b2d: $45
	call $eb22                                       ; $5b2e: $cd $22 $eb
	sbc b                                            ; $5b31: $98
	halt                                             ; $5b32: $76
	adc $2b                                          ; $5b33: $ce $2b
	push af                                          ; $5b35: $f5
	dec [hl]                                         ; $5b36: $35
	ld [$f52a], a                                    ; $5b37: $ea $2a $f5
	adc b                                            ; $5b3a: $88
	rst SubAFromBC                                          ; $5b3b: $e7
	ld [hl+], a                                      ; $5b3c: $22
	ld sp, hl                                        ; $5b3d: $f9
	ld [$02fc], sp                                   ; $5b3e: $08 $fc $02
	rst $38                                          ; $5b41: $ff
	ld b, b                                          ; $5b42: $40
	cp a                                             ; $5b43: $bf
	sbc b                                            ; $5b44: $98
	and a                                            ; $5b45: $a7
	ld l, b                                          ; $5b46: $68
	rst SubAFromBC                                          ; $5b47: $e7
	dec de                                           ; $5b48: $1b
	sub [hl]                                         ; $5b49: $96
	ld hl, sp+$04                                    ; $5b4a: $f8 $04
	rst $38                                          ; $5b4c: $ff
	dec b                                            ; $5b4d: $05
	ei                                               ; $5b4e: $fb
	add b                                            ; $5b4f: $80
	ld a, a                                          ; $5b50: $7f
	jr nz, jr_044_5b72                               ; $5b51: $20 $1f

	ld a, e                                          ; $5b53: $7b
	add sp, -$6e                                     ; $5b54: $e8 $92
	pop af                                           ; $5b56: $f1
	adc b                                            ; $5b57: $88
	db $fc                                           ; $5b58: $fc
	ld h, d                                          ; $5b59: $62
	rst $38                                          ; $5b5a: $ff
	ld b, d                                          ; $5b5b: $42
	dec a                                            ; $5b5c: $3d
	db $10                                           ; $5b5d: $10
	adc a                                            ; $5b5e: $8f
	add h                                            ; $5b5f: $84
	ld h, e                                          ; $5b60: $63
	ld bc, $77fc                                     ; $5b61: $01 $fc $77
	call nz, $e87f                                   ; $5b64: $c4 $7f $e8
	adc l                                            ; $5b67: $8d
	jr z, jr_044_5b89                                ; $5b68: $28 $1f

	and l                                            ; $5b6a: $a5
	ld e, e                                          ; $5b6b: $5b
	nop                                              ; $5b6c: $00
	rst $38                                          ; $5b6d: $ff
	db $10                                           ; $5b6e: $10
	rst AddAOntoHL                                          ; $5b6f: $ef
	nop                                              ; $5b70: $00
	rst $38                                          ; $5b71: $ff

jr_044_5b72:
	ld d, b                                          ; $5b72: $50
	ccf                                              ; $5b73: $3f
	ld [hl], $cf                                     ; $5b74: $36 $cf
	ld h, l                                          ; $5b76: $65
	di                                               ; $5b77: $f3
	ld a, c                                          ; $5b78: $79
	db $fc                                           ; $5b79: $fc
	dec [hl]                                         ; $5b7a: $35
	nop                                              ; $5b7b: $00
	ret c                                            ; $5b7c: $d8

	ld [hl], a                                       ; $5b7d: $77
	sbc [hl]                                         ; $5b7e: $9e
	ld b, h                                          ; $5b7f: $44
	ret c                                            ; $5b80: $d8

	ld [hl], a                                       ; $5b81: $77
	sub [hl]                                         ; $5b82: $96
	ld h, [hl]                                       ; $5b83: $66
	ld b, h                                          ; $5b84: $44
	ld [hl], a                                       ; $5b85: $77
	ld [hl], h                                       ; $5b86: $74
	ld [hl], a                                       ; $5b87: $77
	ld b, a                                          ; $5b88: $47

jr_044_5b89:
	ld [hl], h                                       ; $5b89: $74
	ld b, h                                          ; $5b8a: $44
	ld [hl], a                                       ; $5b8b: $77
	add $44                                          ; $5b8c: $c6 $44
	sbc h                                            ; $5b8e: $9c
	ld b, l                                          ; $5b8f: $45
	ld d, l                                          ; $5b90: $55
	ld d, h                                          ; $5b91: $54
	db $db                                           ; $5b92: $db
	ld b, h                                          ; $5b93: $44
	sbc e                                            ; $5b94: $9b
	ld d, l                                          ; $5b95: $55
	ld d, e                                          ; $5b96: $53
	ld h, [hl]                                       ; $5b97: $66
	ld h, h                                          ; $5b98: $64
	ld [hl], e                                       ; $5b99: $73
	ld hl, sp-$23                                    ; $5b9a: $f8 $dd
	inc sp                                           ; $5b9c: $33
	ld [hl], a                                       ; $5b9d: $77
	or $73                                           ; $5b9e: $f6 $73
	rst FarCall                                          ; $5ba0: $f7
	sbc [hl]                                         ; $5ba1: $9e
	inc sp                                           ; $5ba2: $33
	sbc $66                                          ; $5ba3: $de $66
	sbc [hl]                                         ; $5ba5: $9e
	ld d, e                                          ; $5ba6: $53
	db $db                                           ; $5ba7: $db
	inc sp                                           ; $5ba8: $33
	sbc $66                                          ; $5ba9: $de $66
	jp c, $de33                                      ; $5bab: $da $33 $de

	ld h, [hl]                                       ; $5bae: $66
	ld [hl], c                                       ; $5baf: $71
	add hl, bc                                       ; $5bb0: $09
	sbc e                                            ; $5bb1: $9b
	rst $38                                          ; $5bb2: $ff
	xor d                                            ; $5bb3: $aa
	rst $38                                          ; $5bb4: $ff
	ld d, l                                          ; $5bb5: $55
	ld [hl], a                                       ; $5bb6: $77
	db $fc                                           ; $5bb7: $fc
	sbc [hl]                                         ; $5bb8: $9e
	nop                                              ; $5bb9: $00
	ld l, e                                          ; $5bba: $6b
	rst FarCall                                          ; $5bbb: $f7
	sub a                                            ; $5bbc: $97
	db $fd                                           ; $5bbd: $fd
	xor a                                            ; $5bbe: $af
	ei                                               ; $5bbf: $fb
	ld e, a                                          ; $5bc0: $5f
	db $fd                                           ; $5bc1: $fd
	xor a                                            ; $5bc2: $af
	rst $38                                          ; $5bc3: $ff
	ld e, a                                          ; $5bc4: $5f
	ld h, a                                          ; $5bc5: $67
	ldh a, [rBGP]                                    ; $5bc6: $f0 $47
	ldh [$03], a                                     ; $5bc8: $e0 $03
	ldh a, [rWX]                                     ; $5bca: $f0 $4b
	ldh a, [$97]                                     ; $5bcc: $f0 $97
	and c                                            ; $5bce: $a1
	rst $38                                          ; $5bcf: $ff
	xor d                                            ; $5bd0: $aa
	ld a, a                                          ; $5bd1: $7f
	cp a                                             ; $5bd2: $bf
	rst $38                                          ; $5bd3: $ff
	cp a                                             ; $5bd4: $bf
	ld a, a                                          ; $5bd5: $7f
	ld h, a                                          ; $5bd6: $67
	ldh a, [$73]                                     ; $5bd7: $f0 $73
	call c, $ffde                                    ; $5bd9: $dc $de $ff
	inc bc                                           ; $5bdc: $03
	ret nz                                           ; $5bdd: $c0

	inc bc                                           ; $5bde: $03
	ldh a, [$6f]                                     ; $5bdf: $f0 $6f
	rst FarCall                                          ; $5be1: $f7
	sbc d                                            ; $5be2: $9a
	rst AddAOntoHL                                          ; $5be3: $ef
	cp d                                             ; $5be4: $ba
	rst $38                                          ; $5be5: $ff
	ld a, l                                          ; $5be6: $7d
	rst $38                                          ; $5be7: $ff
	ld a, e                                          ; $5be8: $7b
	db $fc                                           ; $5be9: $fc
	inc bc                                           ; $5bea: $03
	ret nc                                           ; $5beb: $d0

	inc bc                                           ; $5bec: $03
	ldh a, [$6f]                                     ; $5bed: $f0 $6f
	rst FarCall                                          ; $5bef: $f7
	sbc d                                            ; $5bf0: $9a
	or $af                                           ; $5bf1: $f6 $af
	push af                                          ; $5bf3: $f5
	ld e, a                                          ; $5bf4: $5f
	rst $38                                          ; $5bf5: $ff
	ld e, e                                          ; $5bf6: $5b
	nop                                              ; $5bf7: $00
	ld a, a                                          ; $5bf8: $7f
	cp $9e                                           ; $5bf9: $fe $9e
	ld d, a                                          ; $5bfb: $57
	ld c, a                                          ; $5bfc: $4f
	ld d, b                                          ; $5bfd: $50
	sbc h                                            ; $5bfe: $9c
	cp e                                             ; $5bff: $bb
	rst $38                                          ; $5c00: $ff
	rst SubAFromHL                                          ; $5c01: $d7
	ld a, e                                          ; $5c02: $7b
	db $fc                                           ; $5c03: $fc
	sbc [hl]                                         ; $5c04: $9e
	push de                                          ; $5c05: $d5
	ld d, a                                          ; $5c06: $57
	jr nc, jr_044_5c88                               ; $5c07: $30 $7f

	db $fc                                           ; $5c09: $fc
	ld a, a                                          ; $5c0a: $7f
	ld e, $77                                        ; $5c0b: $1e $77
	db $fc                                           ; $5c0d: $fc
	sbc h                                            ; $5c0e: $9c
	ld a, a                                          ; $5c0f: $7f
	rst $38                                          ; $5c10: $ff
	add b                                            ; $5c11: $80
	ld l, e                                          ; $5c12: $6b
	ldh a, [$df]                                     ; $5c13: $f0 $df
	rst $38                                          ; $5c15: $ff
	ld [hl], a                                       ; $5c16: $77
	db $fc                                           ; $5c17: $fc
	rst SubAFromDE                                          ; $5c18: $df
	rst $38                                          ; $5c19: $ff
	sbc l                                            ; $5c1a: $9d
	dec bc                                           ; $5c1b: $0b
	db $fc                                           ; $5c1c: $fc
	ld h, a                                          ; $5c1d: $67
	ldh a, [$9e]                                     ; $5c1e: $f0 $9e
	ld d, c                                          ; $5c20: $51
	call c, $9dff                                    ; $5c21: $dc $ff $9d
	sbc $e5                                          ; $5c24: $de $e5
	ld h, a                                          ; $5c26: $67
	ldh a, [$7f]                                     ; $5c27: $f0 $7f
	ret nz                                           ; $5c29: $c0

	db $dd                                           ; $5c2a: $dd
	rst $38                                          ; $5c2b: $ff
	sbc l                                            ; $5c2c: $9d
	ld h, $f9                                        ; $5c2d: $26 $f9
	ld c, a                                          ; $5c2f: $4f
	ldh a, [$9d]                                     ; $5c30: $f0 $9d
	or $79                                           ; $5c32: $f6 $79
	ld [hl], a                                       ; $5c34: $77
	ldh a, [$9e]                                     ; $5c35: $f0 $9e
	ld d, h                                          ; $5c37: $54
	ld l, a                                          ; $5c38: $6f
	ldh a, [$9a]                                     ; $5c39: $f0 $9a
	ldh a, [$f9]                                     ; $5c3b: $f0 $f9
	add sp, -$01                                     ; $5c3d: $e8 $ff
	add $77                                          ; $5c3f: $c6 $77
	ldh a, [rPCM34]                                  ; $5c41: $f0 $77
	db $e4                                           ; $5c43: $e4
	ld a, e                                          ; $5c44: $7b
	db $fc                                           ; $5c45: $fc
	sbc c                                            ; $5c46: $99
	rra                                              ; $5c47: $1f
	rst $38                                          ; $5c48: $ff
	ccf                                              ; $5c49: $3f
	rst $38                                          ; $5c4a: $ff
	ccf                                              ; $5c4b: $3f
	ld d, l                                          ; $5c4c: $55
	ld a, e                                          ; $5c4d: $7b
	or $6f                                           ; $5c4e: $f6 $6f
	ldh a, [$98]                                     ; $5c50: $f0 $98
	db $fc                                           ; $5c52: $fc
	rst $38                                          ; $5c53: $ff
	add sp, -$01                                     ; $5c54: $e8 $ff
	rst SubAFromHL                                          ; $5c56: $d7
	add sp, $40                                      ; $5c57: $e8 $40
	ld h, e                                          ; $5c59: $63
	ldh a, [$7f]                                     ; $5c5a: $f0 $7f
	add d                                            ; $5c5c: $82
	sbc d                                            ; $5c5d: $9a
	sbc a                                            ; $5c5e: $9f
	rst $38                                          ; $5c5f: $ff
	rst $38                                          ; $5c60: $ff
	rrca                                             ; $5c61: $0f
	ld bc, $f063                                     ; $5c62: $01 $63 $f0
	db $db                                           ; $5c65: $db
	rst $38                                          ; $5c66: $ff
	ld e, a                                          ; $5c67: $5f
	ret nc                                           ; $5c68: $d0

	ld h, a                                          ; $5c69: $67
	ldh a, [$7f]                                     ; $5c6a: $f0 $7f
	or b                                             ; $5c6c: $b0
	sbc [hl]                                         ; $5c6d: $9e
	dec d                                            ; $5c6e: $15
	ld c, e                                          ; $5c6f: $4b
	ldh a, [rPCM34]                                  ; $5c70: $f0 $77
	add b                                            ; $5c72: $80
	sbc [hl]                                         ; $5c73: $9e
	inc b                                            ; $5c74: $04
	ld c, e                                          ; $5c75: $4b
	ldh a, [$6f]                                     ; $5c76: $f0 $6f
	ld b, b                                          ; $5c78: $40
	sbc l                                            ; $5c79: $9d
	rst AddAOntoHL                                          ; $5c7a: $ef
	rst FarCall                                          ; $5c7b: $f7
	ld c, a                                          ; $5c7c: $4f
	ldh a, [$7f]                                     ; $5c7d: $f0 $7f
	sbc h                                            ; $5c7f: $9c
	ld c, a                                          ; $5c80: $4f
	ldh a, [rVBK]                                    ; $5c81: $f0 $4f
	ret nc                                           ; $5c83: $d0

	sbc e                                            ; $5c84: $9b
	adc h                                            ; $5c85: $8c
	rst $38                                          ; $5c86: $ff
	rra                                              ; $5c87: $1f

jr_044_5c88:
	db $ec                                           ; $5c88: $ec
	ld h, a                                          ; $5c89: $67
	ldh a, [rPCM12]                                  ; $5c8a: $f0 $76
	jp z, Jump_044_517f                              ; $5c8c: $ca $7f $51

	ld a, a                                          ; $5c8f: $7f
	ld c, l                                          ; $5c90: $4d
	ld h, [hl]                                       ; $5c91: $66
	call c, $d59e                                    ; $5c92: $dc $9e $d5
	ld [hl], e                                       ; $5c95: $73
	db $fc                                           ; $5c96: $fc
	sbc l                                            ; $5c97: $9d
	ld [$ddbf], a                                    ; $5c98: $ea $bf $dd
	rst $38                                          ; $5c9b: $ff
	sub b                                            ; $5c9c: $90
	cp $ff                                           ; $5c9d: $fe $ff
	db $fd                                           ; $5c9f: $fd
	cp $f8                                           ; $5ca0: $fe $f8
	rst $38                                          ; $5ca2: $ff
	cp c                                             ; $5ca3: $b9
	rst $38                                          ; $5ca4: $ff
	rst $38                                          ; $5ca5: $ff
	cp a                                             ; $5ca6: $bf
	di                                               ; $5ca7: $f3
	cp a                                             ; $5ca8: $bf
	jp nz, $a2ff                                     ; $5ca9: $c2 $ff $a2

	ld a, e                                          ; $5cac: $7b
	xor d                                            ; $5cad: $aa
	ld a, d                                          ; $5cae: $7a
	call nz, $ec95                                   ; $5caf: $c4 $95 $ec
	cp l                                             ; $5cb2: $bd
	ld [$fb6c], a                                    ; $5cb3: $ea $6c $fb
	cp a                                             ; $5cb6: $bf
	rst $38                                          ; $5cb7: $ff
	ld hl, $80fe                                     ; $5cb8: $21 $fe $80
	call c, $99ff                                    ; $5cbb: $dc $ff $99
	db $dd                                           ; $5cbe: $dd
	rst $38                                          ; $5cbf: $ff
	cp e                                             ; $5cc0: $bb
	call z, $fe99                                    ; $5cc1: $cc $99 $fe
	halt                                             ; $5cc4: $76
	adc $9e                                          ; $5cc5: $ce $9e
	rst FarCall                                          ; $5cc7: $f7
	ld l, [hl]                                       ; $5cc8: $6e
	add $95                                          ; $5cc9: $c6 $95
	rst $38                                          ; $5ccb: $ff
	sbc h                                            ; $5ccc: $9c
	rst AddAOntoHL                                          ; $5ccd: $ef
	adc l                                            ; $5cce: $8d
	cp $f3                                           ; $5ccf: $fe $f3
	rst $38                                          ; $5cd1: $ff
	jr nz, @+$01                                     ; $5cd2: $20 $ff

	di                                               ; $5cd4: $f3
	call c, $8aff                                    ; $5cd5: $dc $ff $8a
	ld sp, hl                                        ; $5cd8: $f9
	rst $38                                          ; $5cd9: $ff
	ld a, e                                          ; $5cda: $7b
	db $dd                                           ; $5cdb: $dd
	ld sp, hl                                        ; $5cdc: $f9
	rst GetHLinHL                                          ; $5cdd: $cf
	rst AddAOntoHL                                          ; $5cde: $ef
	rst SubAFromDE                                          ; $5cdf: $df
	ld a, [$f27d]                                    ; $5ce0: $fa $7d $f2
	rst $38                                          ; $5ce3: $ff
	db $f4                                           ; $5ce4: $f4
	rst $38                                          ; $5ce5: $ff
	ldh a, [c]                                       ; $5ce6: $f2
	db $fd                                           ; $5ce7: $fd
	sbc d                                            ; $5ce8: $9a
	push af                                          ; $5ce9: $f5
	ld a, $d1                                        ; $5cea: $3e $d1
	sbc a                                            ; $5cec: $9f
	ld [hl], a                                       ; $5ced: $77
	push de                                          ; $5cee: $d5
	add b                                            ; $5cef: $80
	add h                                            ; $5cf0: $84
	db $fd                                           ; $5cf1: $fd
	and c                                            ; $5cf2: $a1
	db $fd                                           ; $5cf3: $fd
	add b                                            ; $5cf4: $80
	rst $38                                          ; $5cf5: $ff
	jp nz, $c0ff                                     ; $5cf6: $c2 $ff $c0

	cp $c2                                           ; $5cf9: $fe $c2
	cp $83                                           ; $5cfb: $fe $83
	ld hl, sp-$71                                    ; $5cfd: $f8 $8f
	rst $38                                          ; $5cff: $ff
	sbc a                                            ; $5d00: $9f
	rst SubAFromDE                                          ; $5d01: $df
	ld e, $8f                                        ; $5d02: $1e $8f
	ld c, a                                          ; $5d04: $4f
	rst $38                                          ; $5d05: $ff
	rlca                                             ; $5d06: $07
	rst $38                                          ; $5d07: $ff
	rst GetHLinHL                                          ; $5d08: $cf
	ld a, a                                          ; $5d09: $7f
	ld c, a                                          ; $5d0a: $4f
	jp nz, $2207                                     ; $5d0b: $c2 $07 $22

	scf                                              ; $5d0e: $37
	sub c                                            ; $5d0f: $91
	rst $38                                          ; $5d10: $ff
	adc a                                            ; $5d11: $8f
	ld hl, sp+$67                                    ; $5d12: $f8 $67
	sub b                                            ; $5d14: $90
	and $92                                          ; $5d15: $e6 $92
	and e                                            ; $5d17: $a3
	sub a                                            ; $5d18: $97
	xor c                                            ; $5d19: $a9
	rst AddAOntoHL                                          ; $5d1a: $ef
	call c, Call_044_5aff                            ; $5d1b: $dc $ff $5a
	ld a, d                                          ; $5d1e: $7a
	ld sp, hl                                        ; $5d1f: $f9
	sub b                                            ; $5d20: $90
	and a                                            ; $5d21: $a7
	rst $38                                          ; $5d22: $ff
	rra                                              ; $5d23: $1f
	rst SubAFromHL                                          ; $5d24: $d7
	dec de                                           ; $5d25: $1b
	rst SubAFromHL                                          ; $5d26: $d7
	sbc d                                            ; $5d27: $9a
	sbc a                                            ; $5d28: $9f
	cp $ff                                           ; $5d29: $fe $ff
	ld e, a                                          ; $5d2b: $5f
	rst $38                                          ; $5d2c: $ff
	ld b, l                                          ; $5d2d: $45
	rst $38                                          ; $5d2e: $ff
	ld b, a                                          ; $5d2f: $47
	call c, $8eff                                    ; $5d30: $dc $ff $8e
	and a                                            ; $5d33: $a7
	rst FarCall                                          ; $5d34: $f7
	ld h, e                                          ; $5d35: $63
	ld a, a                                          ; $5d36: $7f
	ld hl, $33bf                                     ; $5d37: $21 $bf $33
	db $e3                                           ; $5d3a: $e3
	add a                                            ; $5d3b: $87
	rst $38                                          ; $5d3c: $ff
	rst FarCall                                          ; $5d3d: $f7
	ld sp, hl                                        ; $5d3e: $f9
	pop af                                           ; $5d3f: $f1
	db $fd                                           ; $5d40: $fd
	ldh [$fe], a                                     ; $5d41: $e0 $fe
	pop hl                                           ; $5d43: $e1
	ld a, d                                          ; $5d44: $7a
	ld [hl], h                                       ; $5d45: $74
	ld a, [hl]                                       ; $5d46: $7e
	sub c                                            ; $5d47: $91
	sbc [hl]                                         ; $5d48: $9e
	db $fd                                           ; $5d49: $fd
	db $dd                                           ; $5d4a: $dd
	rst $38                                          ; $5d4b: $ff
	sbc h                                            ; $5d4c: $9c
	ccf                                              ; $5d4d: $3f
	ld a, a                                          ; $5d4e: $7f
	sbc a                                            ; $5d4f: $9f
	ld a, e                                          ; $5d50: $7b
	ld a, [hl+]                                      ; $5d51: $2a
	sbc l                                            ; $5d52: $9d
	sbc a                                            ; $5d53: $9f
	ld a, a                                          ; $5d54: $7f
	ld a, e                                          ; $5d55: $7b
	ld c, e                                          ; $5d56: $4b
	ret c                                            ; $5d57: $d8

	rst $38                                          ; $5d58: $ff
	sbc [hl]                                         ; $5d59: $9e
	sbc c                                            ; $5d5a: $99
	ld e, a                                          ; $5d5b: $5f
	cp $8e                                           ; $5d5c: $fe $8e
	db $dd                                           ; $5d5e: $dd
	rst FarCall                                          ; $5d5f: $f7
	rst $38                                          ; $5d60: $ff
	ld l, a                                          ; $5d61: $6f
	sbc a                                            ; $5d62: $9f
	ccf                                              ; $5d63: $3f
	rst $38                                          ; $5d64: $ff
	di                                               ; $5d65: $f3
	ld l, a                                          ; $5d66: $6f
	and $19                                          ; $5d67: $e6 $19
	db $e3                                           ; $5d69: $e3
	ld sp, $1ffb                                     ; $5d6a: $31 $fb $1f
	rst $38                                          ; $5d6d: $ff
	rra                                              ; $5d6e: $1f
	ld l, a                                          ; $5d6f: $6f
	reti                                             ; $5d70: $d9


	ld a, a                                          ; $5d71: $7f
	xor $97                                          ; $5d72: $ee $97
	adc a                                            ; $5d74: $8f
	ld a, a                                          ; $5d75: $7f
	db $db                                           ; $5d76: $db
	rrca                                             ; $5d77: $0f
	scf                                              ; $5d78: $37
	sbc e                                            ; $5d79: $9b
	cp $e3                                           ; $5d7a: $fe $e3
	reti                                             ; $5d7c: $d9


	rst $38                                          ; $5d7d: $ff
	sub [hl]                                         ; $5d7e: $96
	inc a                                            ; $5d7f: $3c
	rst SubAFromDE                                          ; $5d80: $df
	rra                                              ; $5d81: $1f
	rst $38                                          ; $5d82: $ff
	cpl                                              ; $5d83: $2f
	rst SubAFromDE                                          ; $5d84: $df
	cpl                                              ; $5d85: $2f
	rst SubAFromDE                                          ; $5d86: $df
	call nz, $aa72                                   ; $5d87: $c4 $72 $aa
	sub h                                            ; $5d8a: $94
	ld [hl], e                                       ; $5d8b: $73
	rst $38                                          ; $5d8c: $ff
	ld a, a                                          ; $5d8d: $7f
	rst AddAOntoHL                                          ; $5d8e: $ef
	rst $38                                          ; $5d8f: $ff
	rst $38                                          ; $5d90: $ff
	dec a                                            ; $5d91: $3d
	rst $38                                          ; $5d92: $ff
	ld e, [hl]                                       ; $5d93: $5e
	db $fd                                           ; $5d94: $fd
	ccf                                              ; $5d95: $3f
	sbc $ff                                          ; $5d96: $de $ff
	sbc [hl]                                         ; $5d98: $9e
	rst SubAFromBC                                          ; $5d99: $e7

Call_044_5d9a:
	ld a, e                                          ; $5d9a: $7b
	ld l, e                                          ; $5d9b: $6b
	sub a                                            ; $5d9c: $97
	rst SubAFromHL                                          ; $5d9d: $d7
	rst AddAOntoHL                                          ; $5d9e: $ef
	rst SubAFromHL                                          ; $5d9f: $d7
	rst $38                                          ; $5da0: $ff
	or a                                             ; $5da1: $b7
	rst $38                                          ; $5da2: $ff
	ld [hl], a                                       ; $5da3: $77
	cp a                                             ; $5da4: $bf
	ld [hl], d                                       ; $5da5: $72
	rst JumpTable                                          ; $5da6: $c7
	add h                                            ; $5da7: $84
	sub h                                            ; $5da8: $94
	rst $38                                          ; $5da9: $ff
	add b                                            ; $5daa: $80
	ret nz                                           ; $5dab: $c0

	cp [hl]                                          ; $5dac: $be
	ret nz                                           ; $5dad: $c0

	or [hl]                                          ; $5dae: $b6
	ret nz                                           ; $5daf: $c0

	cp [hl]                                          ; $5db0: $be
	ret c                                            ; $5db1: $d8

	cp [hl]                                          ; $5db2: $be
	db $fc                                           ; $5db3: $fc
	cp a                                             ; $5db4: $bf
	ldh a, [$bf]                                     ; $5db5: $f0 $bf
	pop hl                                           ; $5db7: $e1
	cp [hl]                                          ; $5db8: $be
	ld [$f4b4], a                                    ; $5db9: $ea $b4 $f4
	and b                                            ; $5dbc: $a0
	add b                                            ; $5dbd: $80
	add b                                            ; $5dbe: $80
	add c                                            ; $5dbf: $81
	add b                                            ; $5dc0: $80
	or $81                                           ; $5dc1: $f6 $81
	ld [hl], d                                       ; $5dc3: $72
	call nz, $fc7b                                   ; $5dc4: $c4 $7b $fc
	sbc b                                            ; $5dc7: $98
	ld a, [hl]                                       ; $5dc8: $7e
	rst $38                                          ; $5dc9: $ff
	cp l                                             ; $5dca: $bd
	cp $7f                                           ; $5dcb: $fe $7f
	db $fc                                           ; $5dcd: $fc
	cp h                                             ; $5dce: $bc
	db $db                                           ; $5dcf: $db
	rst $38                                          ; $5dd0: $ff
	ld a, a                                          ; $5dd1: $7f
	ld e, l                                          ; $5dd2: $5d
	sub l                                            ; $5dd3: $95
	cp a                                             ; $5dd4: $bf
	rst SubAFromBC                                          ; $5dd5: $e7
	rra                                              ; $5dd6: $1f
	rst $38                                          ; $5dd7: $ff
	rlca                                             ; $5dd8: $07
	ei                                               ; $5dd9: $fb
	rlca                                             ; $5dda: $07
	rst AddAOntoHL                                          ; $5ddb: $ef
	inc de                                           ; $5ddc: $13
	di                                               ; $5ddd: $f3
	ld a, d                                          ; $5dde: $7a
	ret nc                                           ; $5ddf: $d0

	ld a, a                                          ; $5de0: $7f
	cp $7f                                           ; $5de1: $fe $7f
	ld l, d                                          ; $5de3: $6a
	ld l, [hl]                                       ; $5de4: $6e
	cp d                                             ; $5de5: $ba
	sub [hl]                                         ; $5de6: $96
	ldh a, [rIE]                                     ; $5de7: $f0 $ff
	xor a                                            ; $5de9: $af
	rst SubAFromDE                                          ; $5dea: $df
	xor a                                            ; $5deb: $af
	rst SubAFromDE                                          ; $5dec: $df
	db $dd                                           ; $5ded: $dd
	ei                                               ; $5dee: $fb
	ld [hl], b                                       ; $5def: $70
	sbc $ff                                          ; $5df0: $de $ff
	ld a, a                                          ; $5df2: $7f
	cpl                                              ; $5df3: $2f
	sbc [hl]                                         ; $5df4: $9e
	inc e                                            ; $5df5: $1c
	ld a, e                                          ; $5df6: $7b
	ld [hl], $df                                     ; $5df7: $36 $df
	rst $38                                          ; $5df9: $ff
	sbc [hl]                                         ; $5dfa: $9e
	sbc h                                            ; $5dfb: $9c
	ld a, e                                          ; $5dfc: $7b
	ld a, [$0980]                                    ; $5dfd: $fa $80 $09
	ei                                               ; $5e00: $fb
	ld hl, sp-$03                                    ; $5e01: $f8 $fd
	cp $fc                                           ; $5e03: $fe $fc
	rst GetHLinHL                                          ; $5e05: $cf
	cp a                                             ; $5e06: $bf
	db $fd                                           ; $5e07: $fd
	rrca                                             ; $5e08: $0f
	add sp, -$09                                     ; $5e09: $e8 $f7
	ld [hl], b                                       ; $5e0b: $70
	rst $38                                          ; $5e0c: $ff
	push af                                          ; $5e0d: $f5
	ei                                               ; $5e0e: $fb
	rst $38                                          ; $5e0f: $ff
	ld hl, sp-$01                                    ; $5e10: $f8 $ff
	db $f4                                           ; $5e12: $f4
	ld [hl], d                                       ; $5e13: $72
	push af                                          ; $5e14: $f5
	db $fc                                           ; $5e15: $fc
	cp $7f                                           ; $5e16: $fe $7f
	rst $38                                          ; $5e18: $ff
	ld b, e                                          ; $5e19: $43
	inc sp                                           ; $5e1a: $33
	rst $38                                          ; $5e1b: $ff
	ret nz                                           ; $5e1c: $c0

	cp a                                             ; $5e1d: $bf
	sub e                                            ; $5e1e: $93
	ld c, h                                          ; $5e1f: $4c
	rst SubAFromDE                                          ; $5e20: $df
	ld a, c                                          ; $5e21: $79
	or c                                             ; $5e22: $b1
	ld l, a                                          ; $5e23: $6f
	rst SubAFromDE                                          ; $5e24: $df
	and b                                            ; $5e25: $a0
	ld [hl+], a                                      ; $5e26: $22
	ld hl, $7090                                     ; $5e27: $21 $90 $70
	ld d, d                                          ; $5e2a: $52
	ret c                                            ; $5e2b: $d8

	rst $38                                          ; $5e2c: $ff
	ld a, a                                          ; $5e2d: $7f
	ld e, d                                          ; $5e2e: $5a
	sbc e                                            ; $5e2f: $9b
	ld d, e                                          ; $5e30: $53
	rst AddAOntoHL                                          ; $5e31: $ef
	inc bc                                           ; $5e32: $03
	db $fc                                           ; $5e33: $fc
	ld d, [hl]                                       ; $5e34: $56
	ld hl, sp+$77                                    ; $5e35: $f8 $77
	dec [hl]                                         ; $5e37: $35
	sbc e                                            ; $5e38: $9b
	rst FarCall                                          ; $5e39: $f7
	ei                                               ; $5e3a: $fb
	ld a, [$7bfd]                                    ; $5e3b: $fa $fd $7b
	and l                                            ; $5e3e: $a5
	sub [hl]                                         ; $5e3f: $96
	cp $dd                                           ; $5e40: $fe $dd
	cp $8f                                           ; $5e42: $fe $8f
	ld c, [hl]                                       ; $5e44: $4e
	adc a                                            ; $5e45: $8f
	ld a, a                                          ; $5e46: $7f
	db $ec                                           ; $5e47: $ec
	inc e                                            ; $5e48: $1c
	db $dd                                           ; $5e49: $dd
	rst $38                                          ; $5e4a: $ff
	sbc h                                            ; $5e4b: $9c
	ret                                              ; $5e4c: $c9


	rst $38                                          ; $5e4d: $ff
	ret c                                            ; $5e4e: $d8

	ld a, e                                          ; $5e4f: $7b
	ld h, b                                          ; $5e50: $60
	ld a, [hl]                                       ; $5e51: $7e
	ld a, [hl]                                       ; $5e52: $7e
	sbc [hl]                                         ; $5e53: $9e
	rst $38                                          ; $5e54: $ff
	ld [hl], l                                       ; $5e55: $75
	ld h, e                                          ; $5e56: $63
	jp c, Jump_044_7fff                              ; $5e57: $da $ff $7f

	db $dd                                           ; $5e5a: $dd
	ld a, a                                          ; $5e5b: $7f
	sbc l                                            ; $5e5c: $9d
	ld a, a                                          ; $5e5d: $7f
	db $fc                                           ; $5e5e: $fc
	ld a, a                                          ; $5e5f: $7f
	ld [hl], b                                       ; $5e60: $70
	rst SubAFromDE                                          ; $5e61: $df
	sbc c                                            ; $5e62: $99
	rst SubAFromDE                                          ; $5e63: $df
	rst $38                                          ; $5e64: $ff
	add b                                            ; $5e65: $80
	sub $ff                                          ; $5e66: $d6 $ff
	pop hl                                           ; $5e68: $e1
	rst $38                                          ; $5e69: $ff
	ccf                                              ; $5e6a: $3f
	ld sp, hl                                        ; $5e6b: $f9
	db $eb                                           ; $5e6c: $eb
	ccf                                              ; $5e6d: $3f
	rlca                                             ; $5e6e: $07
	rst $38                                          ; $5e6f: $ff
	db $e3                                           ; $5e70: $e3
	rst $38                                          ; $5e71: $ff
	db $fd                                           ; $5e72: $fd
	cp c                                             ; $5e73: $b9
	xor $f1                                          ; $5e74: $ee $f1
	cp $c1                                           ; $5e76: $fe $c1
	db $dd                                           ; $5e78: $dd
	jp rIE                                         ; $5e79: $c3 $ff $ff


	halt                                             ; $5e7c: $76
	rst AddAOntoHL                                          ; $5e7d: $ef
	sbc $e7                                          ; $5e7e: $de $e7
	ei                                               ; $5e80: $fb
	pop bc                                           ; $5e81: $c1
	db $fd                                           ; $5e82: $fd
	cp $98                                           ; $5e83: $fe $98
	add d                                            ; $5e85: $82
	rst $38                                          ; $5e86: $ff
	adc e                                            ; $5e87: $8b
	rst $38                                          ; $5e88: $ff
	ld a, h                                          ; $5e89: $7c
	adc e                                            ; $5e8a: $8b
	ld a, h                                          ; $5e8b: $7c
	adc a                                            ; $5e8c: $8f
	rst $38                                          ; $5e8d: $ff
	ld c, $ff                                        ; $5e8e: $0e $ff
	rlca                                             ; $5e90: $07
	ld l, a                                          ; $5e91: $6f
	rrca                                             ; $5e92: $0f
	rst AddAOntoHL                                          ; $5e93: $ef
	ld a, a                                          ; $5e94: $7f
	cpl                                              ; $5e95: $2f
	rst SubAFromDE                                          ; $5e96: $df
	xor $3f                                          ; $5e97: $ee $3f
	sbc h                                            ; $5e99: $9c
	ld l, a                                          ; $5e9a: $6f
	adc h                                            ; $5e9b: $8c
	ld a, a                                          ; $5e9c: $7f
	dec h                                            ; $5e9d: $25
	cp $4f                                           ; $5e9e: $fe $4f
	cp a                                             ; $5ea0: $bf
	rst $38                                          ; $5ea1: $ff
	rrca                                             ; $5ea2: $0f
	ld a, d                                          ; $5ea3: $7a
	ld [hl], c                                       ; $5ea4: $71
	sbc c                                            ; $5ea5: $99
	rst $38                                          ; $5ea6: $ff
	ld l, h                                          ; $5ea7: $6c
	di                                               ; $5ea8: $f3
	ld a, a                                          ; $5ea9: $7f
	di                                               ; $5eaa: $f3
	inc sp                                           ; $5eab: $33
	ld a, d                                          ; $5eac: $7a
	sbc h                                            ; $5ead: $9c
	rst SubAFromDE                                          ; $5eae: $df
	rst $38                                          ; $5eaf: $ff
	sbc h                                            ; $5eb0: $9c
	ld e, a                                          ; $5eb1: $5f
	ldh a, [$b7]                                     ; $5eb2: $f0 $b7
	ld a, d                                          ; $5eb4: $7a
	jp z, AHLequAtimesHL                                      ; $5eb5: $ca $77 $12

	sub d                                            ; $5eb8: $92
	ld h, a                                          ; $5eb9: $67
	rst $38                                          ; $5eba: $ff
	cp a                                             ; $5ebb: $bf
	rst GetHLinHL                                          ; $5ebc: $cf
	or a                                             ; $5ebd: $b7
	rst $38                                          ; $5ebe: $ff
	cp a                                             ; $5ebf: $bf
	ld a, a                                          ; $5ec0: $7f
	ret z                                            ; $5ec1: $c8

	cp [hl]                                          ; $5ec2: $be
	ret nz                                           ; $5ec3: $c0

	cp [hl]                                          ; $5ec4: $be
	ret z                                            ; $5ec5: $c8

	ld a, e                                          ; $5ec6: $7b
	cp $67                                           ; $5ec7: $fe $67
	ld a, [$e080]                                    ; $5ec9: $fa $80 $e0
	rst $38                                          ; $5ecc: $ff
	rst SubAFromBC                                          ; $5ecd: $e7
	sbc b                                            ; $5ece: $98
	jp nc, $c08d                                     ; $5ecf: $d2 $8d $c0

	adc a                                            ; $5ed2: $8f
	ret                                              ; $5ed3: $c9


	add [hl]                                         ; $5ed4: $86
	pop bc                                           ; $5ed5: $c1
	add [hl]                                         ; $5ed6: $86
	call nz, $c283                                   ; $5ed7: $c4 $83 $c2
	add c                                            ; $5eda: $81
	rst $38                                          ; $5edb: $ff
	db $fc                                           ; $5edc: $fc
	xor a                                            ; $5edd: $af
	db $fd                                           ; $5ede: $fd
	ei                                               ; $5edf: $fb
	db $fc                                           ; $5ee0: $fc
	xor e                                            ; $5ee1: $ab
	db $fc                                           ; $5ee2: $fc
	rst $38                                          ; $5ee3: $ff
	rst $38                                          ; $5ee4: $ff
	db $eb                                           ; $5ee5: $eb
	rst $38                                          ; $5ee6: $ff
	db $d3                                           ; $5ee7: $d3
	rst AddAOntoHL                                          ; $5ee8: $ef
	rst AddAOntoHL                                          ; $5ee9: $ef
	ld a, a                                          ; $5eea: $7f
	add $8b                                          ; $5eeb: $c6 $8b
	rrca                                             ; $5eed: $0f
	db $eb                                           ; $5eee: $eb
	sub a                                            ; $5eef: $97
	db $fd                                           ; $5ef0: $fd
	inc bc                                           ; $5ef1: $03
	sbc h                                            ; $5ef2: $9c
	ld h, a                                          ; $5ef3: $67
	ldh a, [rIE]                                     ; $5ef4: $f0 $ff
	ld l, c                                          ; $5ef6: $69
	cp a                                             ; $5ef7: $bf
	ld l, a                                          ; $5ef8: $6f
	sbc c                                            ; $5ef9: $99
	ld h, e                                          ; $5efa: $63
	cp l                                             ; $5efb: $bd
	ei                                               ; $5efc: $fb
	rst $38                                          ; $5efd: $ff
	jp hl                                            ; $5efe: $e9


	rra                                              ; $5eff: $1f
	sbc c                                            ; $5f00: $99
	ld a, d                                          ; $5f01: $7a
	and b                                            ; $5f02: $a0
	sbc b                                            ; $5f03: $98
	ld a, $e7                                        ; $5f04: $3e $e7
	sub $ef                                          ; $5f06: $d6 $ef
	xor a                                            ; $5f08: $af
	rst $38                                          ; $5f09: $ff
	ld [hl], a                                       ; $5f0a: $77
	ld [hl], h                                       ; $5f0b: $74
	rst JumpTable                                          ; $5f0c: $c7
	ld [hl], e                                       ; $5f0d: $73
	inc a                                            ; $5f0e: $3c
	add c                                            ; $5f0f: $81
	dec a                                            ; $5f10: $3d
	ld a, [hl]                                       ; $5f11: $7e
	ld a, l                                          ; $5f12: $7d
	rst SubAFromBC                                          ; $5f13: $e7
	ldh a, [$e7]                                     ; $5f14: $f0 $e7
	ret nz                                           ; $5f16: $c0

	sbc b                                            ; $5f17: $98
	rst $38                                          ; $5f18: $ff
	db $10                                           ; $5f19: $10
	rst $38                                          ; $5f1a: $ff
	push hl                                          ; $5f1b: $e5
	rst $38                                          ; $5f1c: $ff
	ldh [c], a                                       ; $5f1d: $e2
	ccf                                              ; $5f1e: $3f
	push hl                                          ; $5f1f: $e5
	cp a                                             ; $5f20: $bf
	ld [$f57f], a                                    ; $5f21: $ea $7f $f5
	ld [hl], a                                       ; $5f24: $77
	ld l, [hl]                                       ; $5f25: $6e
	ld [hl], a                                       ; $5f26: $77
	ld c, a                                          ; $5f27: $4f
	rst $38                                          ; $5f28: $ff
	add hl, hl                                       ; $5f29: $29
	rst $38                                          ; $5f2a: $ff
	inc d                                            ; $5f2b: $14
	rst $38                                          ; $5f2c: $ff
	adc d                                            ; $5f2d: $8a
	ld [hl], e                                       ; $5f2e: $73
	db $fc                                           ; $5f2f: $fc
	ld [hl], c                                       ; $5f30: $71
	dec b                                            ; $5f31: $05
	add b                                            ; $5f32: $80
	rst AddAOntoHL                                          ; $5f33: $ef
	ret nz                                           ; $5f34: $c0

	pop bc                                           ; $5f35: $c1
	pop bc                                           ; $5f36: $c1
	and c                                            ; $5f37: $a1
	ld h, b                                          ; $5f38: $60
	ld sp, hl                                        ; $5f39: $f9
	ld [hl], b                                       ; $5f3a: $70
	ei                                               ; $5f3b: $fb
	or b                                             ; $5f3c: $b0
	cp $70                                           ; $5f3d: $fe $70
	ld a, [$febd]                                    ; $5f3f: $fa $bd $fe
	ld a, b                                          ; $5f42: $78
	nop                                              ; $5f43: $00
	rst $38                                          ; $5f44: $ff
	sbc c                                            ; $5f45: $99
	and $83                                          ; $5f46: $e6 $83
	db $fd                                           ; $5f48: $fd
	push af                                          ; $5f49: $f5
	ei                                               ; $5f4a: $fb
	ld [$f84f], sp                                   ; $5f4b: $08 $4f $f8
	rrca                                             ; $5f4e: $0f
	ld a, b                                          ; $5f4f: $78
	adc a                                            ; $5f50: $8f
	jr jr_044_5fd2                                   ; $5f51: $18 $7f

	ld b, b                                          ; $5f53: $40
	ld [hl], e                                       ; $5f54: $73

jr_044_5f55:
	ld c, b                                          ; $5f55: $48
	ld a, a                                          ; $5f56: $7f
	ld b, $6f                                        ; $5f57: $06 $6f
	cp $7c                                           ; $5f59: $fe $7c
	ld a, d                                          ; $5f5b: $7a
	sub l                                            ; $5f5c: $95
	rst GetHLinHL                                          ; $5f5d: $cf
	ld hl, sp-$02                                    ; $5f5e: $f8 $fe
	ldh a, [$fe]                                     ; $5f60: $f0 $fe
	ldh [$ef], a                                     ; $5f62: $e0 $ef
	ret nz                                           ; $5f64: $c0

	xor $c8                                          ; $5f65: $ee $c8
	ld a, b                                          ; $5f67: $78
	ld hl, $ff80                                     ; $5f68: $21 $80 $ff
	sbc b                                            ; $5f6b: $98
	rst $38                                          ; $5f6c: $ff
	cp $01                                           ; $5f6d: $fe $01
	ld b, $08                                        ; $5f6f: $06 $08
	cp $00                                           ; $5f71: $fe $00
	ei                                               ; $5f73: $fb
	ld b, $7b                                        ; $5f74: $06 $7b
	rlca                                             ; $5f76: $07
	rst AddAOntoHL                                          ; $5f77: $ef
	rra                                              ; $5f78: $1f
	rst GetHLinHL                                          ; $5f79: $cf
	rst $38                                          ; $5f7a: $ff
	inc a                                            ; $5f7b: $3c
	rst $38                                          ; $5f7c: $ff
	rst SubAFromDE                                          ; $5f7d: $df
	ld [hl], e                                       ; $5f7e: $73
	dec a                                            ; $5f7f: $3d
	ld [hl], e                                       ; $5f80: $73
	inc de                                           ; $5f81: $13
	daa                                              ; $5f82: $27
	adc h                                            ; $5f83: $8c
	rlca                                             ; $5f84: $07
	sbc a                                            ; $5f85: $9f
	rrca                                             ; $5f86: $0f
	cp b                                             ; $5f87: $b8
	call c, $c17e                                    ; $5f88: $dc $7e $c1
	sub [hl]                                         ; $5f8b: $96
	ccf                                              ; $5f8c: $3f
	ldh a, [hDisp0_SCY]                                     ; $5f8d: $f0 $83
	rst $38                                          ; $5f8f: $ff
	sub b                                            ; $5f90: $90
	ccf                                              ; $5f91: $3f
	or b                                             ; $5f92: $b0
	rra                                              ; $5f93: $1f
	ccf                                              ; $5f94: $3f
	ld a, e                                          ; $5f95: $7b
	cp $82                                           ; $5f96: $fe $82
	ld b, a                                          ; $5f98: $47
	inc bc                                           ; $5f99: $03
	db $fc                                           ; $5f9a: $fc
	inc bc                                           ; $5f9b: $03
	db $e4                                           ; $5f9c: $e4
	inc bc                                           ; $5f9d: $03
	call nc, $8d83                                   ; $5f9e: $d4 $83 $8d
	jp $f728                                         ; $5fa1: $c3 $28 $f7


	ld a, [bc]                                       ; $5fa4: $0a
	sbc h                                            ; $5fa5: $9c
	ld a, [de]                                       ; $5fa6: $1a
	adc h                                            ; $5fa7: $8c
	add hl, bc                                       ; $5fa8: $09
	sbc a                                            ; $5fa9: $9f
	ld h, e                                          ; $5faa: $63
	rst $38                                          ; $5fab: $ff
	ld bc, $1bfe                                     ; $5fac: $01 $fe $1b
	rra                                              ; $5faf: $1f
	rst AddAOntoHL                                          ; $5fb0: $ef
	di                                               ; $5fb1: $f3
	ld e, a                                          ; $5fb2: $5f
	db $e3                                           ; $5fb3: $e3
	rst AddAOntoHL                                          ; $5fb4: $ef
	ld a, c                                          ; $5fb5: $79
	jr z, jr_044_5f55                                ; $5fb6: $28 $9d

	db $db                                           ; $5fb8: $db
	and l                                            ; $5fb9: $a5
	ld [hl], a                                       ; $5fba: $77
	ld b, h                                          ; $5fbb: $44
	adc [hl]                                         ; $5fbc: $8e
	ld [hl], d                                       ; $5fbd: $72
	rst GetHLinHL                                          ; $5fbe: $cf
	rst $38                                          ; $5fbf: $ff
	ld a, a                                          ; $5fc0: $7f
	cp $ff                                           ; $5fc1: $fe $ff
	or a                                             ; $5fc3: $b7
	dec sp                                           ; $5fc4: $3b
	db $e3                                           ; $5fc5: $e3
	or e                                             ; $5fc6: $b3
	ldh [$e3], a                                     ; $5fc7: $e0 $e3
	ld e, a                                          ; $5fc9: $5f
	ldh [rIE], a                                     ; $5fca: $e0 $ff
	nop                                              ; $5fcc: $00
	ld b, b                                          ; $5fcd: $40
	ld a, d                                          ; $5fce: $7a
	ld [bc], a                                       ; $5fcf: $02
	sub b                                            ; $5fd0: $90
	ld b, c                                          ; $5fd1: $41

jr_044_5fd2:
	rst $38                                          ; $5fd2: $ff
	ld c, b                                          ; $5fd3: $48
	db $fd                                           ; $5fd4: $fd
	ld a, b                                          ; $5fd5: $78
	db $fc                                           ; $5fd6: $fc
	jp $cafc                                         ; $5fd7: $c3 $fc $ca


	dec a                                            ; $5fda: $3d
	cp b                                             ; $5fdb: $b8
	ld a, a                                          ; $5fdc: $7f
	ld a, a                                          ; $5fdd: $7f
	rst $38                                          ; $5fde: $ff
	rst SubAFromDE                                          ; $5fdf: $df

Jump_044_5fe0:
	ld a, e                                          ; $5fe0: $7b
	ld l, [hl]                                       ; $5fe1: $6e
	ld a, l                                          ; $5fe2: $7d
	ld a, [de]                                       ; $5fe3: $1a
	ld a, a                                          ; $5fe4: $7f
	cp $99                                           ; $5fe5: $fe $99
	or a                                             ; $5fe7: $b7
	ld c, a                                          ; $5fe8: $4f
	ld [hl], a                                       ; $5fe9: $77
	rst GetHLinHL                                          ; $5fea: $cf
	ld e, a                                          ; $5feb: $5f
	rst $38                                          ; $5fec: $ff
	ld e, [hl]                                       ; $5fed: $5e
	add $96                                          ; $5fee: $c6 $96
	push de                                          ; $5ff0: $d5
	xor d                                            ; $5ff1: $aa
	xor d                                            ; $5ff2: $aa
	push de                                          ; $5ff3: $d5
	db $fd                                           ; $5ff4: $fd
	ld a, [$80c0]                                    ; $5ff5: $fa $c0 $80
	rst $38                                          ; $5ff8: $ff
	ld [hl], h                                       ; $5ff9: $74
	ld e, a                                          ; $5ffa: $5f
	ld a, l                                          ; $5ffb: $7d
	ld [hl], b                                       ; $5ffc: $70
	sbc l                                            ; $5ffd: $9d
	add b                                            ; $5ffe: $80

Jump_044_5fff:
	ld hl, sp+$7b                                    ; $5fff: $f8 $7b
	cp $90                                           ; $6001: $fe $90
	ldh [$80], a                                     ; $6003: $e0 $80
	rst SubAFromHL                                          ; $6005: $d7
	rst $38                                          ; $6006: $ff
	ei                                               ; $6007: $fb
	rst AddAOntoHL                                          ; $6008: $ef
	db $d3                                           ; $6009: $d3
	rst AddAOntoHL                                          ; $600a: $ef
	ei                                               ; $600b: $fb
	rst AddAOntoHL                                          ; $600c: $ef
	jp $c0fd                                         ; $600d: $c3 $fd $c0


	rst $38                                          ; $6010: $ff
	ldh [$7b], a                                     ; $6011: $e0 $7b
	ld c, l                                          ; $6013: $4d
	adc h                                            ; $6014: $8c
	db $ec                                           ; $6015: $ec
	rst $38                                          ; $6016: $ff
	pop hl                                           ; $6017: $e1
	cp $f4                                           ; $6018: $fe $f4
	set 6, b                                         ; $601a: $cb $f0
	rst GetHLinHL                                          ; $601c: $cf
	ldh a, [$cf]                                     ; $601d: $f0 $cf
	ld a, a                                          ; $601f: $7f
	add d                                            ; $6020: $82
	ld [hl+], a                                      ; $6021: $22
	rst SubAFromDE                                          ; $6022: $df
	ld [hl], c                                       ; $6023: $71
	adc a                                            ; $6024: $8f
	and b                                            ; $6025: $a0
	cp $77                                           ; $6026: $fe $77
	ld a, e                                          ; $6028: $7b
	or b                                             ; $6029: $b0
	add e                                            ; $602a: $83
	ld a, $fc                                        ; $602b: $3e $fc
	add c                                            ; $602d: $81
	db $fd                                           ; $602e: $fd
	ld a, e                                          ; $602f: $7b
	cp a                                             ; $6030: $bf
	ld h, b                                          ; $6031: $60
	db $e3                                           ; $6032: $e3
	add b                                            ; $6033: $80
	sbc c                                            ; $6034: $99
	db $e3                                           ; $6035: $e3
	sbc b                                            ; $6036: $98
	ldh [$c0], a                                     ; $6037: $e0 $c0
	add sp, $41                                      ; $6039: $e8 $41
	sbc a                                            ; $603b: $9f
	ld b, c                                          ; $603c: $41
	sbc a                                            ; $603d: $9f
	add c                                            ; $603e: $81
	jp $e783                                         ; $603f: $c3 $83 $e7


	ldh [$b4], a                                     ; $6042: $e0 $b4
	inc e                                            ; $6044: $1c
	ld a, a                                          ; $6045: $7f
	sub $79                                          ; $6046: $d6 $79
	add sp, $7c                                      ; $6048: $e8 $7c
	inc hl                                           ; $604a: $23
	sub [hl]                                         ; $604b: $96
	xor l                                            ; $604c: $ad
	rst $38                                          ; $604d: $ff
	ld e, [hl]                                       ; $604e: $5e
	rst $38                                          ; $604f: $ff
	db $ed                                           ; $6050: $ed
	rst AddAOntoHL                                          ; $6051: $ef
	adc $5f                                          ; $6052: $ce $5f
	adc l                                            ; $6054: $8d
	halt                                             ; $6055: $76
	call z, $fc57                                    ; $6056: $cc $57 $fc
	add b                                            ; $6059: $80
	cp $a8                                           ; $605a: $fe $a8
	rst $38                                          ; $605c: $ff
	ld l, b                                          ; $605d: $68
	ld sp, hl                                        ; $605e: $f9
	cp b                                             ; $605f: $b8
	ldh a, [$78]                                     ; $6060: $f0 $78
	ldh [$b1], a                                     ; $6062: $e0 $b1
	db $e4                                           ; $6064: $e4
	ld a, d                                          ; $6065: $7a
	add sp, -$44                                     ; $6066: $e8 $bc
	jp hl                                            ; $6068: $e9


	ld [hl], c                                       ; $6069: $71
	ld l, h                                          ; $606a: $6c
	rra                                              ; $606b: $1f
	adc b                                            ; $606c: $88
	ld a, a                                          ; $606d: $7f
	ld c, b                                          ; $606e: $48
	rra                                              ; $606f: $1f
	jr jr_044_6091                                   ; $6070: $18 $1f

	sbc c                                            ; $6072: $99
	cp a                                             ; $6073: $bf
	ld sp, hl                                        ; $6074: $f9
	ld a, a                                          ; $6075: $7f
	jr nz, @+$3b                                     ; $6076: $20 $39

	and b                                            ; $6078: $a0
	sbc h                                            ; $6079: $9c
	cp a                                             ; $607a: $bf
	rlca                                             ; $607b: $07
	dec b                                            ; $607c: $05
	ld l, e                                          ; $607d: $6b
	cp $7e                                           ; $607e: $fe $7e
	push bc                                          ; $6080: $c5
	ld a, a                                          ; $6081: $7f
	sbc b                                            ; $6082: $98
	sbc d                                            ; $6083: $9a
	scf                                              ; $6084: $37
	rra                                              ; $6085: $1f
	db $10                                           ; $6086: $10
	ld [hl], b                                       ; $6087: $70
	ccf                                              ; $6088: $3f
	ld a, d                                          ; $6089: $7a
	ld [hl], e                                       ; $608a: $73
	sbc e                                            ; $608b: $9b
	ld a, a                                          ; $608c: $7f
	adc $ff                                          ; $608d: $ce $ff
	rst SubAFromDE                                          ; $608f: $df
	ld l, c                                          ; $6090: $69

jr_044_6091:
	ld l, b                                          ; $6091: $68
	sbc d                                            ; $6092: $9a
	rra                                              ; $6093: $1f
	db $fc                                           ; $6094: $fc
	xor a                                            ; $6095: $af
	db $fc                                           ; $6096: $fc
	ld e, a                                          ; $6097: $5f

Call_044_6098:
	ld a, e                                          ; $6098: $7b
	db $fc                                           ; $6099: $fc
	add [hl]                                         ; $609a: $86
	rst SubAFromDE                                          ; $609b: $df
	db $fc                                           ; $609c: $fc
	xor a                                            ; $609d: $af
	cp $df                                           ; $609e: $fe $df
	rst $38                                          ; $60a0: $ff
	rst AddAOntoHL                                          ; $60a1: $ef
	cp $2d                                           ; $60a2: $fe $2d
	add sp, $2f                                      ; $60a4: $e8 $2f
	ld hl, sp+$26                                    ; $60a6: $f8 $26
	db $ec                                           ; $60a8: $ec
	daa                                              ; $60a9: $27
	db $f4                                           ; $60aa: $f4
	daa                                              ; $60ab: $27
	db $ec                                           ; $60ac: $ec
	inc hl                                           ; $60ad: $23
	or $23                                           ; $60ae: $f6 $23
	ld [$f521], a                                    ; $60b0: $ea $21 $f5
	nop                                              ; $60b3: $00
	ld a, d                                          ; $60b4: $7a
	jp z, $bd9e                                      ; $60b5: $ca $9e $bd

	ld a, e                                          ; $60b8: $7b
	db $fc                                           ; $60b9: $fc
	sub d                                            ; $60ba: $92
	cp a                                             ; $60bb: $bf
	ld bc, $01ff                                     ; $60bc: $01 $ff $01
	jr nc, jr_044_60c2                               ; $60bf: $30 $01

	ld [de], a                                       ; $60c1: $12

jr_044_60c2:
	ld bc, $fe01                                     ; $60c2: $01 $01 $fe

jr_044_60c5:
	ld h, c                                          ; $60c5: $61
	cp $25                                           ; $60c6: $fe $25
	ld a, e                                          ; $60c8: $7b
	cp $97                                           ; $60c9: $fe $97
	di                                               ; $60cb: $f3
	cp $e3                                           ; $60cc: $fe $e3
	db $fc                                           ; $60ce: $fc
	rrca                                             ; $60cf: $0f
	cp $01                                           ; $60d0: $fe $01
	cp $76                                           ; $60d2: $fe $76

jr_044_60d4:
	call z, $f980                                    ; $60d4: $cc $80 $f9
	nop                                              ; $60d7: $00
	pop af                                           ; $60d8: $f1
	ld [$04b3], sp                                   ; $60d9: $08 $b3 $04
	adc b                                            ; $60dc: $88
	ld [hl], $ad                                     ; $60dd: $36 $ad
	ld a, [hl]                                       ; $60df: $7e
	pop de                                           ; $60e0: $d1
	ld c, $ff                                        ; $60e1: $0e $ff
	nop                                              ; $60e3: $00
	cp c                                             ; $60e4: $b9
	ld b, [hl]                                       ; $60e5: $46
	rst JumpTable                                          ; $60e6: $c7
	jr c, jr_044_60c5                                ; $60e7: $38 $dc

	inc hl                                           ; $60e9: $23
	rst SubAFromBC                                          ; $60ea: $e7
	jr jr_044_60d4                                   ; $60eb: $18 $e7

	jr @+$01                                         ; $60ed: $18 $ff

	nop                                              ; $60ef: $00
	db $e3                                           ; $60f0: $e3
	inc e                                            ; $60f1: $1c
	rst AddAOntoHL                                          ; $60f2: $ef
	db $10                                           ; $60f3: $10
	db $fd                                           ; $60f4: $fd
	add b                                            ; $60f5: $80
	ld [de], a                                       ; $60f6: $12
	dec a                                            ; $60f7: $3d
	rst SubAFromDE                                          ; $60f8: $df
	ld a, [hl]                                       ; $60f9: $7e
	add c                                            ; $60fa: $81
	ld a, $c1                                        ; $60fb: $3e $c1
	dec a                                            ; $60fd: $3d
	rst GetHLinHL                                          ; $60fe: $cf
	or d                                             ; $60ff: $b2
	ld c, l                                          ; $6100: $4d
	dec e                                            ; $6101: $1d
	ldh [c], a                                       ; $6102: $e2
	rst AddAOntoHL                                          ; $6103: $ef
	ld d, a                                          ; $6104: $57
	ld b, a                                          ; $6105: $47
	rst $38                                          ; $6106: $ff
	sbc [hl]                                         ; $6107: $9e
	rst $38                                          ; $6108: $ff
	ld a, a                                          ; $6109: $7f
	add a                                            ; $610a: $87
	rlca                                             ; $610b: $07
	rst $38                                          ; $610c: $ff
	db $ed                                           ; $610d: $ed
	cp $37                                           ; $610e: $fe $37
	rst GetHLinHL                                          ; $6110: $cf
	cp [hl]                                          ; $6111: $be
	ld c, a                                          ; $6112: $4f
	rst $38                                          ; $6113: $ff
	rst $38                                          ; $6114: $ff
	sub b                                            ; $6115: $90
	ld [hl], d                                       ; $6116: $72
	rst $38                                          ; $6117: $ff
	ld e, e                                          ; $6118: $5b
	rst $38                                          ; $6119: $ff
	adc $f7                                          ; $611a: $ce $f7
	ld d, [hl]                                       ; $611c: $56
	xor a                                            ; $611d: $af
	xor d                                            ; $611e: $aa
	rlca                                             ; $611f: $07
	add [hl]                                         ; $6120: $86
	rlca                                             ; $6121: $07
	ld d, [hl]                                       ; $6122: $56
	adc a                                            ; $6123: $8f
	ld hl, sp+$76                                    ; $6124: $f8 $76
	ret nz                                           ; $6126: $c0

	sbc $80                                          ; $6127: $de $80
	sbc h                                            ; $6129: $9c
	rrca                                             ; $612a: $0f
	ldh a, [$80]                                     ; $612b: $f0 $80
	ld a, c                                          ; $612d: $79
	ld [bc], a                                       ; $612e: $02
	ld a, b                                          ; $612f: $78
	db $e4                                           ; $6130: $e4
	sbc e                                            ; $6131: $9b
	cp $f1                                           ; $6132: $fe $f1
	xor $e3                                          ; $6134: $ee $e3
	call c, $93ff                                    ; $6136: $dc $ff $93
	or d                                             ; $6139: $b2
	rst SubAFromBC                                          ; $613a: $e7
	ld e, $9f                                        ; $613b: $1e $9f
	ld b, $78                                        ; $613d: $06 $78
	rst $38                                          ; $613f: $ff
	inc bc                                           ; $6140: $03
	rst $38                                          ; $6141: $ff
	dec bc                                           ; $6142: $0b
	rst $38                                          ; $6143: $ff
	cp $77                                           ; $6144: $fe $77
	cp $77                                           ; $6146: $fe $77
	ccf                                              ; $6148: $3f
	ld a, [hl]                                       ; $6149: $7e
	ld h, h                                          ; $614a: $64
	ld a, a                                          ; $614b: $7f
	ld a, l                                          ; $614c: $7d
	sub l                                            ; $614d: $95
	xor l                                            ; $614e: $ad
	db $10                                           ; $614f: $10
	and c                                            ; $6150: $a1
	db $10                                           ; $6151: $10
	xor c                                            ; $6152: $a9
	db $10                                           ; $6153: $10
	xor e                                            ; $6154: $ab
	db $10                                           ; $6155: $10
	ld l, a                                          ; $6156: $6f
	sub b                                            ; $6157: $90
	ld a, d                                          ; $6158: $7a
	add a                                            ; $6159: $87
	add b                                            ; $615a: $80
	pop bc                                           ; $615b: $c1
	or [hl]                                          ; $615c: $b6
	dec e                                            ; $615d: $1d
	ld a, a                                          ; $615e: $7f
	adc a                                            ; $615f: $8f
	db $ed                                           ; $6160: $ed
	ld b, h                                          ; $6161: $44
	db $fc                                           ; $6162: $fc
	ld a, a                                          ; $6163: $7f
	call z, Call_044_6773                            ; $6164: $cc $73 $67
	ret nz                                           ; $6167: $c0

	db $eb                                           ; $6168: $eb
	call nz, $84eb                                   ; $6169: $c4 $eb $84
	adc a                                            ; $616c: $8f
	adc d                                            ; $616d: $8a
	add a                                            ; $616e: $87
	adc a                                            ; $616f: $8f
	add a                                            ; $6170: $87
	rrca                                             ; $6171: $0f
	ld a, a                                          ; $6172: $7f
	ld a, [$c93f]                                    ; $6173: $fa $3f $c9
	rst AddAOntoHL                                          ; $6176: $ef
	ld [$09ef], sp                                   ; $6177: $08 $ef $09
	sbc l                                            ; $617a: $9d
	rst $38                                          ; $617b: $ff
	ld [$cc7a], sp                                   ; $617c: $08 $7a $cc
	db $dd                                           ; $617f: $dd
	rst $38                                          ; $6180: $ff
	ld a, l                                          ; $6181: $7d
	ld c, a                                          ; $6182: $4f
	ld a, a                                          ; $6183: $7f
	pop bc                                           ; $6184: $c1
	sbc [hl]                                         ; $6185: $9e
	cp l                                             ; $6186: $bd
	ld a, b                                          ; $6187: $78
	adc e                                            ; $6188: $8b
	sub a                                            ; $6189: $97
	cp l                                             ; $618a: $bd
	ldh a, [c]                                       ; $618b: $f2
	or c                                             ; $618c: $b1
	ldh a, [$e6]                                     ; $618d: $f0 $e6
	ldh [$e0], a                                     ; $618f: $e0 $e0
	rst FarCall                                          ; $6191: $f7
	ld a, d                                          ; $6192: $7a
	ld h, h                                          ; $6193: $64
	add b                                            ; $6194: $80
	ldh [$f5], a                                     ; $6195: $e0 $f5
	ldh [$e4], a                                     ; $6197: $e0 $e4
	ldh [$e4], a                                     ; $6199: $e0 $e4
	ccf                                              ; $619b: $3f
	cp a                                             ; $619c: $bf

Call_044_619d:
	ld l, a                                          ; $619d: $6f
	ld h, a                                          ; $619e: $67
	halt                                             ; $619f: $76
	ld h, d                                          ; $61a0: $62
	rst $38                                          ; $61a1: $ff
	rst SubAFromBC                                          ; $61a2: $e7
	halt                                             ; $61a3: $76
	add $ee                                          ; $61a4: $c6 $ee
	add $74                                          ; $61a6: $c6 $74
	ret z                                            ; $61a8: $c8

	ld b, b                                          ; $61a9: $40
	pop hl                                           ; $61aa: $e1
	ld hl, sp-$01                                    ; $61ab: $f8 $ff
	db $f4                                           ; $61ad: $f4
	rst FarCall                                          ; $61ae: $f7
	call z, $0ec7                                    ; $61af: $cc $c7 $0e
	inc bc                                           ; $61b2: $03
	ld h, h                                          ; $61b3: $64
	sbc c                                            ; $61b4: $99
	ld b, a                                          ; $61b5: $47
	ld l, h                                          ; $61b6: $6c
	rlca                                             ; $61b7: $07
	ret z                                            ; $61b8: $c8

	rra                                              ; $61b9: $1f
	rst SubAFromDE                                          ; $61ba: $df
	ld a, e                                          ; $61bb: $7b
	ret                                              ; $61bc: $c9


	ld h, a                                          ; $61bd: $67
	cp $94                                           ; $61be: $fe $94
	ld [hl], $e3                                     ; $61c0: $36 $e3
	ld b, d                                          ; $61c2: $42
	rst SubAFromBC                                          ; $61c3: $e7
	rst AddAOntoHL                                          ; $61c4: $ef
	rst JumpTable                                          ; $61c5: $c7
	rst SubAFromHL                                          ; $61c6: $d7
	cp $ef                                           ; $61c7: $fe $ef
	cp $f7                                           ; $61c9: $fe $f7
	ld [hl], e                                       ; $61cb: $73
	ld [hl], b                                       ; $61cc: $70
	ld a, h                                          ; $61cd: $7c
	sub $96                                          ; $61ce: $d6 $96
	rst AddAOntoHL                                          ; $61d0: $ef
	ld c, b                                          ; $61d1: $48
	rst AddAOntoHL                                          ; $61d2: $ef
	rst GetHLinHL                                          ; $61d3: $cf
	ld hl, $20eb                                     ; $61d4: $21 $eb $20

jr_044_61d7:
	push af                                          ; $61d7: $f5
	jr nz, jr_044_623d                               ; $61d8: $20 $63

	db $fc                                           ; $61da: $fc

jr_044_61db:
	adc l                                            ; $61db: $8d
	pop hl                                           ; $61dc: $e1
	push af                                          ; $61dd: $f5
	nop                                              ; $61de: $00
	rst SubAFromHL                                          ; $61df: $d7
	nop                                              ; $61e0: $00
	sbc [hl]                                         ; $61e1: $9e
	nop                                              ; $61e2: $00
	add b                                            ; $61e3: $80
	ld h, e                                          ; $61e4: $63
	rst $38                                          ; $61e5: $ff
	ld h, $c0                                        ; $61e6: $26 $c0
	add hl, de                                       ; $61e8: $19
	nop                                              ; $61e9: $00
	or $00                                           ; $61ea: $f6 $00
	xor a                                            ; $61ec: $af
	ldh a, [$74]                                     ; $61ed: $f0 $74
	pop hl                                           ; $61ef: $e1
	rst $38                                          ; $61f0: $ff
	rst SubAFromDE                                          ; $61f1: $df
	rst $38                                          ; $61f2: $ff
	ld a, [hl]                                       ; $61f3: $7e
	call c, Call_044_7489                            ; $61f4: $dc $89 $74
	ld [$60b6], sp                                   ; $61f7: $08 $b6 $60

jr_044_61fa:
	di                                               ; $61fa: $f3
	cp $c1                                           ; $61fb: $fe $c1
	ld c, $c1                                        ; $61fd: $0e $c1
	ld c, $78                                        ; $61ff: $0e $78
	nop                                              ; $6201: $00
	rst AddAOntoHL                                          ; $6202: $ef
	sub a                                            ; $6203: $97
	sbc h                                            ; $6204: $9c
	inc bc                                           ; $6205: $03
	ld h, e                                          ; $6206: $63
	nop                                              ; $6207: $00
	ld a, a                                          ; $6208: $7f
	nop                                              ; $6209: $00
	ld c, [hl]                                       ; $620a: $4e
	rrca                                             ; $620b: $0f
	ld [hl], b                                       ; $620c: $70
	ret nz                                           ; $620d: $c0

	ld a, e                                          ; $620e: $7b
	ldh [$7f], a                                     ; $620f: $e0 $7f
	db $fd                                           ; $6211: $fd
	sub [hl]                                         ; $6212: $96
	ldh [$1f], a                                     ; $6213: $e0 $1f
	nop                                              ; $6215: $00
	rst $38                                          ; $6216: $ff
	ld b, b                                          ; $6217: $40
	cp a                                             ; $6218: $bf
	ldh a, [c]                                       ; $6219: $f2
	rrca                                             ; $621a: $0f
	rst FarCall                                          ; $621b: $f7
	ld [hl], a                                       ; $621c: $77
	db $ec                                           ; $621d: $ec
	add b                                            ; $621e: $80
	rst $38                                          ; $621f: $ff
	xor e                                            ; $6220: $ab
	rst $38                                          ; $6221: $ff
	dec d                                            ; $6222: $15
	rst $38                                          ; $6223: $ff
	ld a, [bc]                                       ; $6224: $0a
	rst $38                                          ; $6225: $ff
	dec b                                            ; $6226: $05
	rst $38                                          ; $6227: $ff
	ld c, $ff                                        ; $6228: $0e $ff
	or $f9                                           ; $622a: $f6 $f9
	push hl                                          ; $622c: $e5
	jr nc, jr_044_61fa                               ; $622d: $30 $cb

	ldh [$ea], a                                     ; $622f: $e0 $ea
	push bc                                          ; $6231: $c5
	sub b                                            ; $6232: $90
	rst GetHLinHL                                          ; $6233: $cf
	and h                                            ; $6234: $a4
	sbc $fd                                          ; $6235: $de $fd
	add h                                            ; $6237: $84
	inc l                                            ; $6238: $2c
	sbc a                                            ; $6239: $9f
	ld b, a                                          ; $623a: $47
	sbc d                                            ; $623b: $9a
	sbc l                                            ; $623c: $9d

jr_044_623d:
	ld a, e                                          ; $623d: $7b
	sub l                                            ; $623e: $95
	ld a, $f1                                        ; $623f: $3e $f1
	rlca                                             ; $6241: $07
	or b                                             ; $6242: $b0
	ld c, e                                          ; $6243: $4b
	jr nc, jr_044_61db                               ; $6244: $30 $95

	ld h, d                                          ; $6246: $62
	dec a                                            ; $6247: $3d
	jp nz, $c573                                     ; $6248: $c2 $73 $c5

	sbc $ff                                          ; $624b: $de $ff
	ld a, d                                          ; $624d: $7a
	ldh [c], a                                       ; $624e: $e2
	ld [hl], a                                       ; $624f: $77
	ld e, e                                          ; $6250: $5b
	ld a, a                                          ; $6251: $7f
	ccf                                              ; $6252: $3f
	sbc e                                            ; $6253: $9b
	jr jr_044_61d7                                   ; $6254: $18 $81

	rst $38                                          ; $6256: $ff
	db $e3                                           ; $6257: $e3
	cp $9e                                           ; $6258: $fe $9e
	cp [hl]                                          ; $625a: $be
	sbc $ff                                          ; $625b: $de $ff
	sbc h                                            ; $625d: $9c
	push de                                          ; $625e: $d5
	rst $38                                          ; $625f: $ff
	ld a, [$cd7a]                                    ; $6260: $fa $7a $cd
	ld a, a                                          ; $6263: $7f
	inc d                                            ; $6264: $14
	sbc l                                            ; $6265: $9d
	ld a, a                                          ; $6266: $7f
	inc bc                                           ; $6267: $03
	ld a, b                                          ; $6268: $78
	xor c                                            ; $6269: $a9
	ld a, h                                          ; $626a: $7c
	ld [hl], $7b                                     ; $626b: $36 $7b
	xor h                                            ; $626d: $ac
	ld a, l                                          ; $626e: $7d
	ld h, d                                          ; $626f: $62
	halt                                             ; $6270: $76
	sub d                                            ; $6271: $92
	sub [hl]                                         ; $6272: $96
	rst $38                                          ; $6273: $ff
	sbc h                                            ; $6274: $9c
	rst $38                                          ; $6275: $ff
	adc a                                            ; $6276: $8f
	db $dd                                           ; $6277: $dd
	adc h                                            ; $6278: $8c
	call c, $d48c                                    ; $6279: $dc $8c $d4
	ld a, e                                          ; $627c: $7b
	cp $80                                           ; $627d: $fe $80
	db $db                                           ; $627f: $db
	add h                                            ; $6280: $84
	rst SubAFromDE                                          ; $6281: $df
	add b                                            ; $6282: $80
	rst SubAFromHL                                          ; $6283: $d7
	adc b                                            ; $6284: $88
	or [hl]                                          ; $6285: $b6
	adc c                                            ; $6286: $89
	sbc c                                            ; $6287: $99
	nop                                              ; $6288: $00
	ret c                                            ; $6289: $d8

	add b                                            ; $628a: $80
	ret z                                            ; $628b: $c8

	add b                                            ; $628c: $80
	sub e                                            ; $628d: $93
	rst $38                                          ; $628e: $ff
	rst SubAFromDE                                          ; $628f: $df
	add hl, hl                                       ; $6290: $29
	rst SubAFromDE                                          ; $6291: $df
	jr z, @-$30                                      ; $6292: $28 $ce

	add hl, sp                                       ; $6294: $39
	sbc $b9                                          ; $6295: $de $b9
	dec e                                            ; $6297: $1d
	dec bc                                           ; $6298: $0b
	rrca                                             ; $6299: $0f
	ld [$081f], sp                                   ; $629a: $08 $1f $08
	rst $38                                          ; $629d: $ff
	adc b                                            ; $629e: $88
	ld hl, sp-$11                                    ; $629f: $f8 $ef
	ld a, d                                          ; $62a1: $7a
	rst $38                                          ; $62a2: $ff
	db $fc                                           ; $62a3: $fc
	xor $59                                          ; $62a4: $ee $59
	sbc $ed                                          ; $62a6: $de $ed
	db $dd                                           ; $62a8: $dd
	ld l, e                                          ; $62a9: $6b
	rst AddAOntoHL                                          ; $62aa: $ef
	set 5, a                                         ; $62ab: $cb $ef
	ld c, c                                          ; $62ad: $49
	ld a, a                                          ; $62ae: $7f
	ret                                              ; $62af: $c9


	db $db                                           ; $62b0: $db
	db $e4                                           ; $62b1: $e4
	db $db                                           ; $62b2: $db
	db $e4                                           ; $62b3: $e4
	reti                                             ; $62b4: $d9


	and $77                                          ; $62b5: $e6 $77
	ld a, [$487d]                                    ; $62b7: $fa $7d $48
	adc [hl]                                         ; $62ba: $8e
	rst JumpTable                                          ; $62bb: $c7
	ldh [rIE], a                                     ; $62bc: $e0 $ff
	rst $38                                          ; $62be: $ff
	ld h, a                                          ; $62bf: $67
	rst AddAOntoHL                                          ; $62c0: $ef
	rst $38                                          ; $62c1: $ff
	ld a, a                                          ; $62c2: $7f
	rst AddAOntoHL                                          ; $62c3: $ef
	ld a, a                                          ; $62c4: $7f
	rst $38                                          ; $62c5: $ff
	ld a, [hl]                                       ; $62c6: $7e
	rst AddAOntoHL                                          ; $62c7: $ef
	ld a, [hl]                                       ; $62c8: $7e
	ccf                                              ; $62c9: $3f
	ld a, $6f                                        ; $62ca: $3e $6f
	ld a, d                                          ; $62cc: $7a
	ld [$2b92], a                                    ; $62cd: $ea $92 $2b
	ld a, a                                          ; $62d0: $7f
	ld [hl], a                                       ; $62d1: $77
	ld a, a                                          ; $62d2: $7f
	db $eb                                           ; $62d3: $eb
	rst $38                                          ; $62d4: $ff
	push af                                          ; $62d5: $f5
	ccf                                              ; $62d6: $3f
	xor e                                            ; $62d7: $ab
	ld a, a                                          ; $62d8: $7f
	or l                                             ; $62d9: $b5
	ld a, a                                          ; $62da: $7f
	xor d                                            ; $62db: $aa
	ld a, e                                          ; $62dc: $7b
	db $fc                                           ; $62dd: $fc
	sub h                                            ; $62de: $94
	sbc $cf                                          ; $62df: $de $cf
	ld e, l                                          ; $62e1: $5d
	cp a                                             ; $62e2: $bf
	cp d                                             ; $62e3: $ba
	ld a, a                                          ; $62e4: $7f
	ld [hl], l                                       ; $62e5: $75
	cp a                                             ; $62e6: $bf
	xor d                                            ; $62e7: $aa
	rst $38                                          ; $62e8: $ff
	push af                                          ; $62e9: $f5
	ld a, d                                          ; $62ea: $7a
	ld [hl], l                                       ; $62eb: $75
	sub h                                            ; $62ec: $94
	ld e, a                                          ; $62ed: $5f
	ldh a, [$fa]                                     ; $62ee: $f0 $fa
	rst GetHLinHL                                          ; $62f0: $cf
	ld h, a                                          ; $62f1: $67
	rst GetHLinHL                                          ; $62f2: $cf
	xor $c1                                          ; $62f3: $ee $c1
	ld e, [hl]                                       ; $62f5: $5e
	pop hl                                           ; $62f6: $e1
	cp a                                             ; $62f7: $bf
	ld [hl], c                                       ; $62f8: $71
	ld sp, $447f                                     ; $62f9: $31 $7f $44
	sbc d                                            ; $62fc: $9a
	and b                                            ; $62fd: $a0
	ld [$f560], a                                    ; $62fe: $ea $60 $f5
	and c                                            ; $6301: $a1
	ld a, d                                          ; $6302: $7a
	ret z                                            ; $6303: $c8

	ld a, a                                          ; $6304: $7f
	db $fc                                           ; $6305: $fc
	sbc [hl]                                         ; $6306: $9e
	ld h, c                                          ; $6307: $61
	ld [hl], a                                       ; $6308: $77
	ld hl, sp-$67                                    ; $6309: $f8 $99
	dec [hl]                                         ; $630b: $35
	rst AddAOntoHL                                          ; $630c: $ef
	ldh a, [$7f]                                     ; $630d: $f0 $7f
	ld a, a                                          ; $630f: $7f
	inc h                                            ; $6310: $24
	ld [hl], h                                       ; $6311: $74
	xor [hl]                                         ; $6312: $ae
	ret c                                            ; $6313: $d8

	rst $38                                          ; $6314: $ff
	ld a, a                                          ; $6315: $7f
	inc a                                            ; $6316: $3c
	sbc l                                            ; $6317: $9d
	ld e, b                                          ; $6318: $58
	jr @-$25                                         ; $6319: $18 $d9

	rst $38                                          ; $631b: $ff
	sub [hl]                                         ; $631c: $96
	db $fd                                           ; $631d: $fd
	rst $38                                          ; $631e: $ff
	rst $38                                          ; $631f: $ff
	rrca                                             ; $6320: $0f
	push af                                          ; $6321: $f5
	rst $38                                          ; $6322: $ff
	inc b                                            ; $6323: $04
	nop                                              ; $6324: $00
	db $fc                                           ; $6325: $fc
	ret c                                            ; $6326: $d8

	rst $38                                          ; $6327: $ff
	ld a, a                                          ; $6328: $7f
	inc bc                                           ; $6329: $03
	ld a, a                                          ; $632a: $7f
	db $d3                                           ; $632b: $d3
	sbc d                                            ; $632c: $9a
	ld h, b                                          ; $632d: $60
	rst $38                                          ; $632e: $ff
	ld b, b                                          ; $632f: $40
	rst $38                                          ; $6330: $ff
	ret nz                                           ; $6331: $c0

	ld [hl], e                                       ; $6332: $73
	cp $9e                                           ; $6333: $fe $9e
	push bc                                          ; $6335: $c5
	ld [hl], d                                       ; $6336: $72
	call z, $fc6f                                    ; $6337: $cc $6f $fc
	ld a, [hl]                                       ; $633a: $7e
	ret nz                                           ; $633b: $c0

	ld a, a                                          ; $633c: $7f
	db $10                                           ; $633d: $10
	add b                                            ; $633e: $80
	ld d, a                                          ; $633f: $57
	rst $38                                          ; $6340: $ff
	rst SubAFromHL                                          ; $6341: $d7
	add a                                            ; $6342: $87
	cp l                                             ; $6343: $bd
	add $ff                                          ; $6344: $c6 $ff
	rst $38                                          ; $6346: $ff
	ld a, h                                          ; $6347: $7c
	ei                                               ; $6348: $fb
	rst $38                                          ; $6349: $ff
	ldh a, [rBCPD]                                   ; $634a: $f0 $69
	ldh a, [$ea]                                     ; $634c: $f0 $ea
	ldh a, [$e8]                                     ; $634e: $f0 $e8
	ldh a, [$c9]                                     ; $6350: $f0 $c9
	ld [hl], $67                                     ; $6352: $36 $67
	db $fc                                           ; $6354: $fc
	rst $38                                          ; $6355: $ff
	db $fc                                           ; $6356: $fc
	ld [bc], a                                       ; $6357: $02
	db $fd                                           ; $6358: $fd
	db $fd                                           ; $6359: $fd
	ld [bc], a                                       ; $635a: $02
	ld [hl], h                                       ; $635b: $74
	inc bc                                           ; $635c: $03
	cp e                                             ; $635d: $bb
	sbc e                                            ; $635e: $9b
	ld bc, $015c                                     ; $635f: $01 $5c $01
	ld b, b                                          ; $6362: $40
	halt                                             ; $6363: $76
	add $78                                          ; $6364: $c6 $78
	adc l                                            ; $6366: $8d
	ld a, d                                          ; $6367: $7a
	jp $c09d                                         ; $6368: $c3 $9d $c0


	sbc a                                            ; $636b: $9f
	ld a, e                                          ; $636c: $7b
	jr nc, jr_044_63ed                               ; $636d: $30 $7e

	call z, $ffdf                                    ; $636f: $cc $df $ff
	sbc h                                            ; $6372: $9c
	ret nc                                           ; $6373: $d0

	rst $38                                          ; $6374: $ff
	sub b                                            ; $6375: $90
	ld a, e                                          ; $6376: $7b
	xor d                                            ; $6377: $aa
	ld a, l                                          ; $6378: $7d
	ld l, [hl]                                       ; $6379: $6e
	halt                                             ; $637a: $76
	and h                                            ; $637b: $a4
	ld a, a                                          ; $637c: $7f
	cp h                                             ; $637d: $bc
	rst SubAFromDE                                          ; $637e: $df
	rst $38                                          ; $637f: $ff
	ld a, [hl]                                       ; $6380: $7e
	xor [hl]                                         ; $6381: $ae
	sbc [hl]                                         ; $6382: $9e
	add e                                            ; $6383: $83
	ld a, e                                          ; $6384: $7b
	db $fc                                           ; $6385: $fc
	add c                                            ; $6386: $81
	adc [hl]                                         ; $6387: $8e
	pop af                                           ; $6388: $f1
	or c                                             ; $6389: $b1
	ret nz                                           ; $638a: $c0

	pop bc                                           ; $638b: $c1
	nop                                              ; $638c: $00
	sub $8c                                          ; $638d: $d6 $8c
	or a                                             ; $638f: $b7
	sbc h                                            ; $6390: $9c
	rst FarCall                                          ; $6391: $f7
	sbc h                                            ; $6392: $9c
	cp h                                             ; $6393: $bc
	sub h                                            ; $6394: $94
	cp h                                             ; $6395: $bc
	sbc h                                            ; $6396: $9c
	cp h                                             ; $6397: $bc
	add h                                            ; $6398: $84
	and [hl]                                         ; $6399: $a6
	nop                                              ; $639a: $00
	or $a2                                           ; $639b: $f6 $a2
	add h                                            ; $639d: $84
	ld a, a                                          ; $639e: $7f
	sbc a                                            ; $639f: $9f
	ldh [$bf], a                                     ; $63a0: $e0 $bf
	ret nz                                           ; $63a2: $c0

	sbc [hl]                                         ; $63a3: $9e
	pop hl                                           ; $63a4: $e1
	sbc $ff                                          ; $63a5: $de $ff
	rst SubAFromDE                                          ; $63a7: $df
	add b                                            ; $63a8: $80
	add b                                            ; $63a9: $80
	nop                                              ; $63aa: $00
	ldh [rLCDC], a                                   ; $63ab: $e0 $40
	rrca                                             ; $63ad: $0f
	ld hl, sp-$01                                    ; $63ae: $f8 $ff
	ld [$18ef], sp                                   ; $63b0: $08 $ef $18
	adc a                                            ; $63b3: $8f
	ld a, b                                          ; $63b4: $78
	or $f9                                           ; $63b5: $f6 $f9
	db $fd                                           ; $63b7: $fd
	dec bc                                           ; $63b8: $0b
	rra                                              ; $63b9: $1f
	rrca                                             ; $63ba: $0f
	scf                                              ; $63bb: $37
	ccf                                              ; $63bc: $3f
	cp $79                                           ; $63bd: $fe $79
	ld c, [hl]                                       ; $63bf: $4e
	ld sp, hl                                        ; $63c0: $f9
	adc $f9                                          ; $63c1: $ce $f9
	rst GetHLinHL                                          ; $63c3: $cf
	ld sp, hl                                        ; $63c4: $f9
	cp $f9                                           ; $63c5: $fe $f9
	db $fd                                           ; $63c7: $fd
	res 3, e                                         ; $63c8: $cb $9b
	rst SubAFromDE                                          ; $63ca: $df
	adc a                                            ; $63cb: $8f
	db $fd                                           ; $63cc: $fd
	rrca                                             ; $63cd: $0f
	ld l, a                                          ; $63ce: $6f
	ld e, b                                          ; $63cf: $58
	ld [hl], e                                       ; $63d0: $73
	rra                                              ; $63d1: $1f
	sub e                                            ; $63d2: $93
	add b                                            ; $63d3: $80
	ld b, b                                          ; $63d4: $40
	add b                                            ; $63d5: $80
	ld hl, sp+$00                                    ; $63d6: $f8 $00
	cpl                                              ; $63d8: $2f
	cp $37                                           ; $63d9: $fe $37
	cp $2b                                           ; $63db: $fe $2b
	rst $38                                          ; $63dd: $ff
	dec [hl]                                         ; $63de: $35
	ld [hl], e                                       ; $63df: $73
	dec [hl]                                         ; $63e0: $35
	db $fd                                           ; $63e1: $fd
	ld a, [hl]                                       ; $63e2: $7e
	call z, Call_044_759a                            ; $63e3: $cc $9a $75
	rst $38                                          ; $63e6: $ff
	ld [$57ff], a                                    ; $63e7: $ea $ff $57
	ld [hl], a                                       ; $63ea: $77
	rra                                              ; $63eb: $1f
	db $fc                                           ; $63ec: $fc

jr_044_63ed:
	sbc h                                            ; $63ed: $9c
	and b                                            ; $63ee: $a0
	ldh [rLCDC], a                                   ; $63ef: $e0 $40
	ld a, e                                          ; $63f1: $7b
	xor b                                            ; $63f2: $a8
	ld [hl], l                                       ; $63f3: $75
	cp [hl]                                          ; $63f4: $be
	ld l, a                                          ; $63f5: $6f
	ldh a, [$f9]                                     ; $63f6: $f0 $f9
	ld h, a                                          ; $63f8: $67
	ldh a, [hDisp1_WX]                                     ; $63f9: $f0 $96
	ld hl, $312b                                     ; $63fb: $21 $2b $31
	dec d                                            ; $63fe: $15
	add hl, de                                       ; $63ff: $19
	dec bc                                           ; $6400: $0b
	dec c                                            ; $6401: $0d
	dec b                                            ; $6402: $05
	rst $38                                          ; $6403: $ff
	ld a, b                                          ; $6404: $78
	and $9e                                          ; $6405: $e6 $9e
	ld bc, $e873                                     ; $6407: $01 $73 $e8
	ld a, a                                          ; $640a: $7f
	and d                                            ; $640b: $a2
	db $dd                                           ; $640c: $dd
	rst $38                                          ; $640d: $ff
	sbc [hl]                                         ; $640e: $9e
	pop bc                                           ; $640f: $c1
	ld a, d                                          ; $6410: $7a
	db $ec                                           ; $6411: $ec
	sub [hl]                                         ; $6412: $96
	ld [hl], b                                       ; $6413: $70
	rst GetHLinHL                                          ; $6414: $cf
	ret nz                                           ; $6415: $c0

	ld a, a                                          ; $6416: $7f
	db $ed                                           ; $6417: $ed
	rst $38                                          ; $6418: $ff
	dec c                                            ; $6419: $0d
	cp $fd                                           ; $641a: $fe $fd
	ld a, d                                          ; $641c: $7a
	ret z                                            ; $641d: $c8

	sub a                                            ; $641e: $97
	db $dd                                           ; $641f: $dd
	rst $38                                          ; $6420: $ff
	jr z, @+$01                                      ; $6421: $28 $ff

	db $ed                                           ; $6423: $ed
	ld a, $2a                                        ; $6424: $3e $2a
	rst FarCall                                          ; $6426: $f7
	ld a, e                                          ; $6427: $7b
	ret c                                            ; $6428: $d8

	sbc [hl]                                         ; $6429: $9e
	rlca                                             ; $642a: $07
	ld a, d                                          ; $642b: $7a
	rst $38                                          ; $642c: $ff
	add e                                            ; $642d: $83
	rst $38                                          ; $642e: $ff
	ld sp, hl                                        ; $642f: $f9
	rra                                              ; $6430: $1f
	ld [bc], a                                       ; $6431: $02
	rrca                                             ; $6432: $0f
	ld [bc], a                                       ; $6433: $02
	rrca                                             ; $6434: $0f
	jr nz, jr_044_6456                               ; $6435: $20 $1f

	ret nz                                           ; $6437: $c0

	rst $38                                          ; $6438: $ff
	nop                                              ; $6439: $00
	ret nz                                           ; $643a: $c0

	rra                                              ; $643b: $1f
	ret nz                                           ; $643c: $c0

	add e                                            ; $643d: $83
	ld hl, sp+$08                                    ; $643e: $f8 $08
	cp $11                                           ; $6440: $fe $11
	rst $38                                          ; $6442: $ff
	inc hl                                           ; $6443: $23
	cp $23                                           ; $6444: $fe $23
	cp $00                                           ; $6446: $fe $00
	rst $38                                          ; $6448: $ff
	ld a, a                                          ; $6449: $7f
	ld [hl], c                                       ; $644a: $71
	ld l, [hl]                                       ; $644b: $6e
	ld a, a                                          ; $644c: $7f
	ld a, [$8692]                                    ; $644d: $fa $92 $86
	ccf                                              ; $6450: $3f
	add $3f                                          ; $6451: $c6 $3f
	ld b, d                                          ; $6453: $42
	cp a                                             ; $6454: $bf
	rla                                              ; $6455: $17

jr_044_6456:
	ld hl, sp-$15                                    ; $6456: $f8 $eb
	inc c                                            ; $6458: $0c
	cp $07                                           ; $6459: $fe $07
	db $fd                                           ; $645b: $fd
	ld a, e                                          ; $645c: $7b
	and l                                            ; $645d: $a5
	sbc l                                            ; $645e: $9d
	db $10                                           ; $645f: $10
	rst $38                                          ; $6460: $ff
	ld [hl], a                                       ; $6461: $77
	cp $94                                           ; $6462: $fe $94
	dec hl                                           ; $6464: $2b
	nop                                              ; $6465: $00
	sub h                                            ; $6466: $94
	nop                                              ; $6467: $00
	ret nz                                           ; $6468: $c0

	nop                                              ; $6469: $00
	ld h, l                                          ; $646a: $65
	add b                                            ; $646b: $80
	xor d                                            ; $646c: $aa
	ret nz                                           ; $646d: $c0

	ld d, l                                          ; $646e: $55
	ld [hl], b                                       ; $646f: $70
	ld b, [hl]                                       ; $6470: $46
	ld a, a                                          ; $6471: $7f
	ldh [hDisp1_SCX], a                                     ; $6472: $e0 $91
	cp a                                             ; $6474: $bf
	ld b, b                                          ; $6475: $40
	xor a                                            ; $6476: $af
	ld [hl], b                                       ; $6477: $70
	ccf                                              ; $6478: $3f
	ld h, b                                          ; $6479: $60
	cp a                                             ; $647a: $bf
	ld h, b                                          ; $647b: $60
	and b                                            ; $647c: $a0
	ld a, a                                          ; $647d: $7f
	ldh a, [$3f]                                     ; $647e: $f0 $3f
	ret nc                                           ; $6480: $d0

	ccf                                              ; $6481: $3f
	pop af                                           ; $6482: $f1
	rst SubAFromDE                                          ; $6483: $df
	ld bc, $039e                                     ; $6484: $01 $9e $03
	ld [hl], a                                       ; $6487: $77
	ld l, c                                          ; $6488: $69
	ld e, a                                          ; $6489: $5f
	ld c, b                                          ; $648a: $48
	sbc h                                            ; $648b: $9c
	and $ff                                          ; $648c: $e6 $ff
	jp $9cf5                                         ; $648e: $c3 $f5 $9c


	ld hl, sp-$20                                    ; $6491: $f8 $e0
	ret nz                                           ; $6493: $c0

	db $f4                                           ; $6494: $f4
	sbc d                                            ; $6495: $9a
	inc a                                            ; $6496: $3c
	rra                                              ; $6497: $1f
	rra                                              ; $6498: $1f
	rlca                                             ; $6499: $07
	inc bc                                           ; $649a: $03
	ld d, a                                          ; $649b: $57
	ldh [$9c], a                                     ; $649c: $e0 $9c
	sbc a                                            ; $649e: $9f
	rst $38                                          ; $649f: $ff
	ld c, $53                                        ; $64a0: $0e $53
	ret nc                                           ; $64a2: $d0

	sbc l                                            ; $64a3: $9d
	nop                                              ; $64a4: $00
	ldh a, [$e0]                                     ; $64a5: $f0 $e0
	and h                                            ; $64a7: $a4
	ld a, a                                          ; $64a8: $7f
	ld [$4ef3], sp                                   ; $64a9: $08 $f3 $4e
	adc d                                            ; $64ac: $8a
	rst $38                                          ; $64ad: $ff
	sbc l                                            ; $64ae: $9d
	db $fc                                           ; $64af: $fc
	inc bc                                           ; $64b0: $03
	db $db                                           ; $64b1: $db
	ld bc, $93f9                                     ; $64b2: $01 $f9 $93
	ld d, [hl]                                       ; $64b5: $56
	db $fd                                           ; $64b6: $fd
	add d                                            ; $64b7: $82
	db $fd                                           ; $64b8: $fd
	ldh [$df], a                                     ; $64b9: $e0 $df
	ret nc                                           ; $64bb: $d0

	rst GetHLinHL                                          ; $64bc: $cf
	rst $38                                          ; $64bd: $ff
	nop                                              ; $64be: $00
	rra                                              ; $64bf: $1f
	nop                                              ; $64c0: $00
	ld [hl], a                                       ; $64c1: $77
	ld c, b                                          ; $64c2: $48
	adc c                                            ; $64c3: $89
	ld [bc], a                                       ; $64c4: $02
	cp a                                             ; $64c5: $bf
	inc b                                            ; $64c6: $04
	cp a                                             ; $64c7: $bf
	nop                                              ; $64c8: $00
	rst $38                                          ; $64c9: $ff
	ccf                                              ; $64ca: $3f
	rst $38                                          ; $64cb: $ff
	rst AddAOntoHL                                          ; $64cc: $ef
	ld [hl], b                                       ; $64cd: $70
	xor a                                            ; $64ce: $af
	ld [hl], b                                       ; $64cf: $70
	cp a                                             ; $64d0: $bf
	ld [hl], b                                       ; $64d1: $70
	rst $38                                          ; $64d2: $ff
	ld h, b                                          ; $64d3: $60
	ld hl, $21ff                                     ; $64d4: $21 $ff $21
	rst $38                                          ; $64d7: $ff
	ld bc, $79ff                                     ; $64d8: $01 $ff $79
	and a                                            ; $64db: $a7
	sbc [hl]                                         ; $64dc: $9e
	rra                                              ; $64dd: $1f
	halt                                             ; $64de: $76
	xor d                                            ; $64df: $aa
	ld [hl], c                                       ; $64e0: $71
	ld d, c                                          ; $64e1: $51
	ld a, a                                          ; $64e2: $7f
	cp $9e                                           ; $64e3: $fe $9e
	rst SubAFromBC                                          ; $64e5: $e7
	ld a, c                                          ; $64e6: $79
	adc h                                            ; $64e7: $8c
	rst SubAFromDE                                          ; $64e8: $df
	and $95                                          ; $64e9: $e6 $95
	ld b, [hl]                                       ; $64eb: $46
	adc $4e                                          ; $64ec: $ce $4e
	adc $4a                                          ; $64ee: $ce $4a
	ret nc                                           ; $64f0: $d0

	ccf                                              ; $64f1: $3f
	sub b                                            ; $64f2: $90
	ld a, a                                          ; $64f3: $7f
	ld h, b                                          ; $64f4: $60
	ld a, e                                          ; $64f5: $7b
	ldh [$9b], a                                     ; $64f6: $e0 $9b
	ld a, a                                          ; $64f8: $7f
	ld l, a                                          ; $64f9: $6f
	ld a, a                                          ; $64fa: $7f
	ld b, b                                          ; $64fb: $40
	ld [hl], a                                       ; $64fc: $77
	cp $e0                                           ; $64fd: $fe $e0
	ld bc, $609e                                     ; $64ff: $01 $9e $60
	ldh [c], a                                       ; $6502: $e2
	sbc $4a                                          ; $6503: $de $4a
	add [hl]                                         ; $6505: $86
	ld c, e                                          ; $6506: $4b
	ld c, d                                          ; $6507: $4a
	ld l, d                                          ; $6508: $6a
	ld c, c                                          ; $6509: $49
	ld e, a                                          ; $650a: $5f
	ld c, b                                          ; $650b: $48
	ld c, a                                          ; $650c: $4f
	ld [$086f], sp                                   ; $650d: $08 $6f $08
	jr jr_044_6512                                   ; $6510: $18 $00

jr_044_6512:
	nop                                              ; $6512: $00
	ld b, b                                          ; $6513: $40
	ld a, h                                          ; $6514: $7c
	ld b, b                                          ; $6515: $40
	ldh a, [$60]                                     ; $6516: $f0 $60
	jr nc, @+$22                                     ; $6518: $30 $20

	db $10                                           ; $651a: $10
	sub b                                            ; $651b: $90
	sbc b                                            ; $651c: $98
	ld h, b                                          ; $651d: $60
	ld hl, sp-$03                                    ; $651e: $f8 $fd
	ld c, l                                          ; $6520: $4d
	nop                                              ; $6521: $00
	adc $33                                          ; $6522: $ce $33
	sbc e                                            ; $6524: $9b
	inc [hl]                                         ; $6525: $34
	inc sp                                           ; $6526: $33
	ld [hl], a                                       ; $6527: $77
	halt                                             ; $6528: $76
	sbc $66                                          ; $6529: $de $66
	sub l                                            ; $652b: $95
	ld [hl], h                                       ; $652c: $74
	ld b, l                                          ; $652d: $45
	ld [hl], a                                       ; $652e: $77
	ld b, h                                          ; $652f: $44
	ld h, [hl]                                       ; $6530: $66
	inc sp                                           ; $6531: $33
	ld [hl], a                                       ; $6532: $77
	ld h, a                                          ; $6533: $67
	ld h, [hl]                                       ; $6534: $66
	inc sp                                           ; $6535: $33
	ld [hl], a                                       ; $6536: $77
	or $80                                           ; $6537: $f6 $80
	ld [hl], $44                                     ; $6539: $36 $44
	inc sp                                           ; $653b: $33
	dec [hl]                                         ; $653c: $35
	ld [hl], e                                       ; $653d: $73
	inc [hl]                                         ; $653e: $34
	ld b, h                                          ; $653f: $44
	ld b, l                                          ; $6540: $45
	ld [hl], a                                       ; $6541: $77
	ld b, e                                          ; $6542: $43
	ld b, h                                          ; $6543: $44
	ld [hl], l                                       ; $6544: $75
	inc sp                                           ; $6545: $33
	inc sp                                           ; $6546: $33
	ld h, [hl]                                       ; $6547: $66
	ld h, e                                          ; $6548: $63
	ld b, a                                          ; $6549: $47
	ld d, a                                          ; $654a: $57
	ld d, l                                          ; $654b: $55
	ld [hl], e                                       ; $654c: $73
	ld b, h                                          ; $654d: $44
	inc sp                                           ; $654e: $33
	inc sp                                           ; $654f: $33
	dec [hl]                                         ; $6550: $35
	ld d, e                                          ; $6551: $53
	ld h, e                                          ; $6552: $63
	ld d, l                                          ; $6553: $55
	inc sp                                           ; $6554: $33
	scf                                              ; $6555: $37
	ld [hl], e                                       ; $6556: $73
	ld b, h                                          ; $6557: $44
	ld a, a                                          ; $6558: $7f
	call z, $c56f                                    ; $6559: $cc $6f $c5
	sbc [hl]                                         ; $655c: $9e
	ld [hl], e                                       ; $655d: $73
	jp c, $9c33                                      ; $655e: $da $33 $9c

	ld h, h                                          ; $6561: $64
	ld b, h                                          ; $6562: $44
	ld [hl], h                                       ; $6563: $74
	ld h, a                                          ; $6564: $67
	or d                                             ; $6565: $b2
	sbc l                                            ; $6566: $9d
	ld h, [hl]                                       ; $6567: $66
	ld b, [hl]                                       ; $6568: $46
	ret c                                            ; $6569: $d8

	inc sp                                           ; $656a: $33
	sbc [hl]                                         ; $656b: $9e
	ld [hl], a                                       ; $656c: $77
	sub c                                            ; $656d: $91
	adc b                                            ; $656e: $88
	sbc e                                            ; $656f: $9b
	rst SubAFromDE                                          ; $6570: $df
	xor a                                            ; $6571: $af
	ei                                               ; $6572: $fb
	or l                                             ; $6573: $b5
	db $dd                                           ; $6574: $dd
	rst $38                                          ; $6575: $ff
	ld sp, hl                                        ; $6576: $f9
	db $dd                                           ; $6577: $dd
	rst $38                                          ; $6578: $ff
	sbc e                                            ; $6579: $9b
	ld sp, hl                                        ; $657a: $f9
	db $fd                                           ; $657b: $fd
	ld [$57c5], a                                    ; $657c: $ea $c5 $57

Call_044_657f:
	ldh a, [$9c]                                     ; $657f: $f0 $9c
	ld [$8255], a                                    ; $6581: $ea $55 $82
	ld hl, sp-$24                                    ; $6584: $f8 $dc
	rst $38                                          ; $6586: $ff
	sbc h                                            ; $6587: $9c
	ld a, a                                          ; $6588: $7f
	cp a                                             ; $6589: $bf
	ld e, a                                          ; $658a: $5f
	ld d, e                                          ; $658b: $53
	ldh a, [rWX]                                     ; $658c: $f0 $4b
	ret nz                                           ; $658e: $c0

	inc bc                                           ; $658f: $03
	ldh a, [$03]                                     ; $6590: $f0 $03
	ldh a, [$7f]                                     ; $6592: $f0 $7f
	ld l, h                                          ; $6594: $6c
	rla                                              ; $6595: $17
	ldh [$9b], a                                     ; $6596: $e0 $9b
	rst SubAFromDE                                          ; $6598: $df
	db $eb                                           ; $6599: $eb
	pop de                                           ; $659a: $d1
	add sp, -$07                                     ; $659b: $e8 $f9
	sbc b                                            ; $659d: $98
	db $fd                                           ; $659e: $fd
	ld a, [$e0f4]                                    ; $659f: $fa $f4 $e0
	ld d, b                                          ; $65a2: $50
	xor b                                            ; $65a3: $a8
	ld d, h                                          ; $65a4: $54
	ld hl, sp-$64                                    ; $65a5: $f8 $9c
	ld d, l                                          ; $65a7: $55
	xor d                                            ; $65a8: $aa
	dec d                                            ; $65a9: $15
	cp $9e                                           ; $65aa: $fe $9e
	ld bc, $4f63                                     ; $65ac: $01 $63 $4f
	sbc l                                            ; $65af: $9d
	rst $38                                          ; $65b0: $ff
	xor e                                            ; $65b1: $ab
	ld a, e                                          ; $65b2: $7b
	xor $9c                                          ; $65b3: $ee $9c
	ld a, [bc]                                       ; $65b5: $0a
	dec d                                            ; $65b6: $15
	xor e                                            ; $65b7: $ab
	ld c, a                                          ; $65b8: $4f
	or b                                             ; $65b9: $b0
	sbc [hl]                                         ; $65ba: $9e
	ld a, a                                          ; $65bb: $7f
	ld c, a                                          ; $65bc: $4f
	sub b                                            ; $65bd: $90
	sbc h                                            ; $65be: $9c
	rst AddAOntoHL                                          ; $65bf: $ef
	db $f4                                           ; $65c0: $f4
	ld [$f05b], a                                    ; $65c1: $ea $5b $f0
	sbc d                                            ; $65c4: $9a
	cp $fd                                           ; $65c5: $fe $fd
	ld hl, sp-$0b                                    ; $65c7: $f8 $f5
	ld a, [$f05f]                                    ; $65c9: $fa $5f $f0
	sbc c                                            ; $65cc: $99
	rst FarCall                                          ; $65cd: $f7
	xor e                                            ; $65ce: $ab
	ld d, l                                          ; $65cf: $55
	ld [bc], a                                       ; $65d0: $02
	ld d, l                                          ; $65d1: $55
	xor d                                            ; $65d2: $aa
	ld c, e                                          ; $65d3: $4b
	ret nz                                           ; $65d4: $c0

	sbc [hl]                                         ; $65d5: $9e
	cp a                                             ; $65d6: $bf
	ld h, e                                          ; $65d7: $63
	ldh a, [$98]                                     ; $65d8: $f0 $98
	ld a, a                                          ; $65da: $7f
	ld a, d                                          ; $65db: $7a
	push af                                          ; $65dc: $f5
	xor d                                            ; $65dd: $aa
	ld d, h                                          ; $65de: $54
	xor b                                            ; $65df: $a8
	ld b, b                                          ; $65e0: $40
	ld sp, hl                                        ; $65e1: $f9
	sbc h                                            ; $65e2: $9c
	add d                                            ; $65e3: $82
	push de                                          ; $65e4: $d5
	ld [$d35f], a                                    ; $65e5: $ea $5f $d3
	db $fc                                           ; $65e8: $fc
	sbc c                                            ; $65e9: $99
	add b                                            ; $65ea: $80
	ld d, b                                          ; $65eb: $50
	ld a, [hl+]                                      ; $65ec: $2a
	ld d, l                                          ; $65ed: $55
	cp a                                             ; $65ee: $bf
	ld e, l                                          ; $65ef: $5d
	ld sp, hl                                        ; $65f0: $f9
	sub a                                            ; $65f1: $97
	cpl                                              ; $65f2: $2f
	rla                                              ; $65f3: $17
	dec bc                                           ; $65f4: $0b
	ld b, l                                          ; $65f5: $45
	xor d                                            ; $65f6: $aa
	ld [hl], l                                       ; $65f7: $75
	rst $38                                          ; $65f8: $ff
	db $fd                                           ; $65f9: $fd
	ld sp, hl                                        ; $65fa: $f9
	sub a                                            ; $65fb: $97
	ld e, a                                          ; $65fc: $5f
	adc e                                            ; $65fd: $8b
	rla                                              ; $65fe: $17
	xor e                                            ; $65ff: $ab
	ld a, a                                          ; $6600: $7f
	push af                                          ; $6601: $f5
	db $eb                                           ; $6602: $eb
	rst SubAFromDE                                          ; $6603: $df
	ld h, e                                          ; $6604: $63
	or b                                             ; $6605: $b0
	ld a, a                                          ; $6606: $7f
	cpl                                              ; $6607: $2f
	sbc d                                            ; $6608: $9a
	push af                                          ; $6609: $f5
	ld [$e0d0], a                                    ; $660a: $ea $d0 $e0
	ret nc                                           ; $660d: $d0

	ld h, e                                          ; $660e: $63
	ldh a, [$98]                                     ; $660f: $f0 $98
	ld d, a                                          ; $6611: $57
	dec hl                                           ; $6612: $2b
	dec d                                            ; $6613: $15
	ld [bc], a                                       ; $6614: $02
	dec b                                            ; $6615: $05
	ld [bc], a                                       ; $6616: $02
	ld bc, $804a                                     ; $6617: $01 $4a $80
	sbc [hl]                                         ; $661a: $9e
	ld a, a                                          ; $661b: $7f
	ld h, e                                          ; $661c: $63
	ldh a, [$99]                                     ; $661d: $f0 $99
	cp $f7                                           ; $661f: $fe $f7
	db $eb                                           ; $6621: $eb
	rst $38                                          ; $6622: $ff
	rst $38                                          ; $6623: $ff
	cp a                                             ; $6624: $bf
	ld l, e                                          ; $6625: $6b
	ld [hl], b                                       ; $6626: $70
	rst SubAFromDE                                          ; $6627: $df
	ld b, b                                          ; $6628: $40
	sbc h                                            ; $6629: $9c
	ld bc, $5fab                                     ; $662a: $01 $ab $5f
	db $dd                                           ; $662d: $dd
	rst $38                                          ; $662e: $ff
	sbc [hl]                                         ; $662f: $9e
	cp $5b                                           ; $6630: $fe $5b
	ret nc                                           ; $6632: $d0

	sbc d                                            ; $6633: $9a
	cp a                                             ; $6634: $bf
	ld d, l                                          ; $6635: $55
	and d                                            ; $6636: $a2
	ld b, b                                          ; $6637: $40
	add b                                            ; $6638: $80
	ld sp, hl                                        ; $6639: $f9
	sub a                                            ; $663a: $97
	ret nc                                           ; $663b: $d0

	xor d                                            ; $663c: $aa
	push af                                          ; $663d: $f5
	ld a, [$feff]                                    ; $663e: $fa $ff $fe
	ld d, l                                          ; $6641: $55
	ld c, $f9                                        ; $6642: $0e $f9
	sbc [hl]                                         ; $6644: $9e
	dec b                                            ; $6645: $05
	ld a, d                                          ; $6646: $7a
	adc $9d                                          ; $6647: $ce $9d
	push de                                          ; $6649: $d5
	cp d                                             ; $664a: $ba
	ld e, a                                          ; $664b: $5f
	ld c, l                                          ; $664c: $4d
	sbc b                                            ; $664d: $98
	ld b, c                                          ; $664e: $41
	add b                                            ; $664f: $80
	ld d, b                                          ; $6650: $50
	xor d                                            ; $6651: $aa
	ld d, l                                          ; $6652: $55
	xor a                                            ; $6653: $af
	ld e, l                                          ; $6654: $5d
	ld h, d                                          ; $6655: $62
	ret nc                                           ; $6656: $d0

	sub a                                            ; $6657: $97
	ld d, a                                          ; $6658: $57
	xor d                                            ; $6659: $aa
	dec d                                            ; $665a: $15
	xor d                                            ; $665b: $aa
	ld a, a                                          ; $665c: $7f
	ld a, [$af5d]                                    ; $665d: $fa $5d $af
	ld h, d                                          ; $6660: $62
	sub b                                            ; $6661: $90
	sbc b                                            ; $6662: $98
	xor e                                            ; $6663: $ab
	ld e, l                                          ; $6664: $5d
	db $eb                                           ; $6665: $eb
	push af                                          ; $6666: $f5
	xor d                                            ; $6667: $aa
	ld d, l                                          ; $6668: $55
	xor [hl]                                         ; $6669: $ae
	ld sp, hl                                        ; $666a: $f9
	sbc h                                            ; $666b: $9c
	push de                                          ; $666c: $d5
	xor d                                            ; $666d: $aa
	ld d, l                                          ; $666e: $55
	ld [hl], e                                       ; $666f: $73
	cp $f9                                           ; $6670: $fe $f9
	sbc h                                            ; $6672: $9c
	ld a, l                                          ; $6673: $7d
	xor d                                            ; $6674: $aa
	ld d, l                                          ; $6675: $55
	ld a, d                                          ; $6676: $7a
	adc [hl]                                         ; $6677: $8e
	ld e, a                                          ; $6678: $5f
	ldh a, [$7f]                                     ; $6679: $f0 $7f
	ldh a, [c]                                       ; $667b: $f2
	ld a, a                                          ; $667c: $7f
	ld [hl], b                                       ; $667d: $70
	sbc e                                            ; $667e: $9b
	ld a, a                                          ; $667f: $7f
	xor d                                            ; $6680: $aa
	ld d, l                                          ; $6681: $55
	adc d                                            ; $6682: $8a
	ld h, e                                          ; $6683: $63
	db $10                                           ; $6684: $10
	sbc b                                            ; $6685: $98
	cp a                                             ; $6686: $bf
	rst $38                                          ; $6687: $ff
	ld [$bff7], a                                    ; $6688: $ea $f7 $bf
	ld e, a                                          ; $668b: $5f
	db $e3                                           ; $668c: $e3
	ld a, [$1f97]                                    ; $668d: $fa $97 $1f
	nop                                              ; $6690: $00
	ld d, b                                          ; $6691: $50
	db $fc                                           ; $6692: $fc
	ld a, a                                          ; $6693: $7f
	cp d                                             ; $6694: $ba
	ld [hl], l                                       ; $6695: $75
	ld a, [$3f62]                                    ; $6696: $fa $62 $3f
	sbc b                                            ; $6699: $98
	ld a, [hl+]                                      ; $669a: $2a
	dec d                                            ; $669b: $15
	ld a, [hl+]                                      ; $669c: $2a
	push de                                          ; $669d: $d5
	xor d                                            ; $669e: $aa
	ld d, b                                          ; $669f: $50
	and b                                            ; $66a0: $a0
	halt                                             ; $66a1: $76
	dec sp                                           ; $66a2: $3b
	db $fc                                           ; $66a3: $fc
	sbc l                                            ; $66a4: $9d
	xor d                                            ; $66a5: $aa
	ld e, l                                          ; $66a6: $5d
	ld a, e                                          ; $66a7: $7b
	xor a                                            ; $66a8: $af
	ld a, a                                          ; $66a9: $7f
	ldh a, [c]                                       ; $66aa: $f2
	sbc [hl]                                         ; $66ab: $9e
	ld d, l                                          ; $66ac: $55
	ld sp, hl                                        ; $66ad: $f9
	sbc e                                            ; $66ae: $9b
	ldh [rLCDC], a                                   ; $66af: $e0 $40
	add sp, $75                                      ; $66b1: $e8 $75
	ld a, d                                          ; $66b3: $7a
	sbc [hl]                                         ; $66b4: $9e
	ld h, e                                          ; $66b5: $63
	ret nc                                           ; $66b6: $d0

	sub a                                            ; $66b7: $97
	xor e                                            ; $66b8: $ab
	rla                                              ; $66b9: $17
	rlca                                             ; $66ba: $07
	ld b, c                                          ; $66bb: $41
	xor d                                            ; $66bc: $aa
	ld b, b                                          ; $66bd: $40
	rla                                              ; $66be: $17
	sbc b                                            ; $66bf: $98
	db $fc                                           ; $66c0: $fc
	sbc e                                            ; $66c1: $9b
	inc bc                                           ; $66c2: $03
	rrca                                             ; $66c3: $0f
	ld a, a                                          ; $66c4: $7f
	xor b                                            ; $66c5: $a8
	ld [hl], a                                       ; $66c6: $77
	ld l, a                                          ; $66c7: $6f
	sbc l                                            ; $66c8: $9d
	cpl                                              ; $66c9: $2f
	jr c, jr_044_673a                                ; $66ca: $38 $6e

	ret nc                                           ; $66cc: $d0

	sub l                                            ; $66cd: $95
	ret nc                                           ; $66ce: $d0

	rst $38                                          ; $66cf: $ff
	rst $38                                          ; $66d0: $ff
	jr nz, @+$52                                     ; $66d1: $20 $50

	add b                                            ; $66d3: $80
	ld d, l                                          ; $66d4: $55
	xor d                                            ; $66d5: $aa
	ld l, h                                          ; $66d6: $6c
	call $106e                                       ; $66d7: $cd $6e $10
	sbc l                                            ; $66da: $9d
	add b                                            ; $66db: $80
	cp $7a                                           ; $66dc: $fe $7a
	di                                               ; $66de: $f3
	ld a, e                                          ; $66df: $7b
	ldh [$9c], a                                     ; $66e0: $e0 $9c
	dec d                                            ; $66e2: $15
	cp $c0                                           ; $66e3: $fe $c0
	ld h, [hl]                                       ; $66e5: $66
	pop hl                                           ; $66e6: $e1
	sbc l                                            ; $66e7: $9d
	dec [hl]                                         ; $66e8: $35
	ld a, [hl+]                                      ; $66e9: $2a
	ld a, e                                          ; $66ea: $7b
	cp $9c                                           ; $66eb: $fe $9c
	dec hl                                           ; $66ed: $2b
	scf                                              ; $66ee: $37
	nop                                              ; $66ef: $00
	jp c, $9e60                                      ; $66f0: $da $60 $9e

	ld a, a                                          ; $66f3: $7f
	ld a, e                                          ; $66f4: $7b
	ld b, b                                          ; $66f5: $40
	ld a, e                                          ; $66f6: $7b
	cp $67                                           ; $66f7: $fe $67
	ld h, c                                          ; $66f9: $61
	sbc e                                            ; $66fa: $9b
	inc e                                            ; $66fb: $1c
	rst $38                                          ; $66fc: $ff
	ld b, b                                          ; $66fd: $40
	and b                                            ; $66fe: $a0
	ld [hl], a                                       ; $66ff: $77
	ldh a, [$9e]                                     ; $6700: $f0 $9e
	cp b                                             ; $6702: $b8
	ld a, [$479e]                                    ; $6703: $fa $9e $47
	ld a, d                                          ; $6706: $7a
	ld [hl], c                                       ; $6707: $71
	ld a, a                                          ; $6708: $7f
	ld [hl-], a                                      ; $6709: $32
	sbc l                                            ; $670a: $9d
	ld e, h                                          ; $670b: $5c
	ldh [$fb], a                                     ; $670c: $e0 $fb
	sbc l                                            ; $670e: $9d
	inc bc                                           ; $670f: $03

jr_044_6710:
	rra                                              ; $6710: $1f
	db $dd                                           ; $6711: $dd
	rst $38                                          ; $6712: $ff
	sbc c                                            ; $6713: $99
	ld d, l                                          ; $6714: $55
	cp [hl]                                          ; $6715: $be
	rlca                                             ; $6716: $07
	rrca                                             ; $6717: $0f
	rra                                              ; $6718: $1f
	rra                                              ; $6719: $1f
	ld h, [hl]                                       ; $671a: $66
	ld h, h                                          ; $671b: $64
	sbc b                                            ; $671c: $98
	ld d, l                                          ; $671d: $55
	cp $55                                           ; $671e: $fe $55
	cp e                                             ; $6720: $bb
	rra                                              ; $6721: $1f
	jp Jump_044_72f6                                 ; $6722: $c3 $f6 $72


	add b                                            ; $6725: $80
	sbc [hl]                                         ; $6726: $9e
	db $fc                                           ; $6727: $fc
	ld a, d                                          ; $6728: $7a
	ld a, b                                          ; $6729: $78
	ld a, e                                          ; $672a: $7b

Call_044_672b:
	jp nz, $f89b                                     ; $672b: $c2 $9b $f8

	sbc b                                            ; $672e: $98
	ldh a, [$f8]                                     ; $672f: $f0 $f8
	ld [hl], a                                       ; $6731: $77
	adc $9e                                          ; $6732: $ce $9e
	rlca                                             ; $6734: $07
	db $dd                                           ; $6735: $dd
	rst $38                                          ; $6736: $ff
	sbc b                                            ; $6737: $98
	rst FarCall                                          ; $6738: $f7
	xor a                                            ; $6739: $af

jr_044_673a:
	ld d, l                                          ; $673a: $55
	ld a, c                                          ; $673b: $79
	ld b, $00                                        ; $673c: $06 $00
	ld bc, $6077                                     ; $673e: $01 $77 $60
	sbc [hl]                                         ; $6741: $9e
	add [hl]                                         ; $6742: $86
	ld [hl], e                                       ; $6743: $73
	ret nc                                           ; $6744: $d0

	ld a, a                                          ; $6745: $7f
	ldh [$9a], a                                     ; $6746: $e0 $9a
	add b                                            ; $6748: $80
	ret z                                            ; $6749: $c8

	ld l, a                                          ; $674a: $6f
	rst FarCall                                          ; $674b: $f7
	sbc a                                            ; $674c: $9f
	db $fd                                           ; $674d: $fd
	sbc [hl]                                         ; $674e: $9e
	add a                                            ; $674f: $87
	sbc $ff                                          ; $6750: $de $ff
	sbc e                                            ; $6752: $9b
	ld d, b                                          ; $6753: $50
	and d                                            ; $6754: $a2
	nop                                              ; $6755: $00
	ld h, e                                          ; $6756: $63
	ld l, l                                          ; $6757: $6d
	db $10                                           ; $6758: $10
	ld l, a                                          ; $6759: $6f
	and d                                            ; $675a: $a2
	sbc l                                            ; $675b: $9d
	db $10                                           ; $675c: $10
	cp a                                             ; $675d: $bf
	db $db                                           ; $675e: $db
	rst $38                                          ; $675f: $ff
	ld a, a                                          ; $6760: $7f
	ld h, $65                                        ; $6761: $26 $65
	ld b, [hl]                                       ; $6763: $46
	db $d3                                           ; $6764: $d3
	rst $38                                          ; $6765: $ff
	ld [hl], d                                       ; $6766: $72
	sub a                                            ; $6767: $97
	sbc h                                            ; $6768: $9c
	ld b, $f8                                        ; $6769: $06 $f8
	db $fc                                           ; $676b: $fc
	db $fc                                           ; $676c: $fc
	sbc l                                            ; $676d: $9d
	ld bc, $7707                                     ; $676e: $01 $07 $77
	jr jr_044_6710                                   ; $6771: $18 $9d

Call_044_6773:
	ld bc, $6660                                     ; $6773: $01 $60 $66
	and e                                            ; $6776: $a3
	ld [hl], a                                       ; $6777: $77
	cp b                                             ; $6778: $b8
	sbc b                                            ; $6779: $98
	ld bc, $8018                                     ; $677a: $01 $18 $80
	nop                                              ; $677d: $00
	ld bc, $1e0d                                     ; $677e: $01 $0d $1e
	ld a, e                                          ; $6781: $7b
	add c                                            ; $6782: $81
	ld [hl], e                                       ; $6783: $73
	push bc                                          ; $6784: $c5
	sub l                                            ; $6785: $95
	add hl, bc                                       ; $6786: $09
	add $d0                                          ; $6787: $c6 $d0
	ld [bc], a                                       ; $6789: $02
	ld h, c                                          ; $678a: $61
	add a                                            ; $678b: $87
	sbc d                                            ; $678c: $9a
	ccf                                              ; $678d: $3f
	rlca                                             ; $678e: $07
	ccf                                              ; $678f: $3f
	db $db                                           ; $6790: $db
	rst $38                                          ; $6791: $ff
	sbc b                                            ; $6792: $98
	adc b                                            ; $6793: $88
	nop                                              ; $6794: $00
	nop                                              ; $6795: $00
	inc b                                            ; $6796: $04
	ret nz                                           ; $6797: $c0

	ldh [$80], a                                     ; $6798: $e0 $80
	ld h, b                                          ; $679a: $60
	sbc b                                            ; $679b: $98
	sub a                                            ; $679c: $97
	rra                                              ; $679d: $1f
	ld a, a                                          ; $679e: $7f
	rst SubAFromDE                                          ; $679f: $df
	inc de                                           ; $67a0: $13
	add e                                            ; $67a1: $83
	ld bc, $2421                                     ; $67a2: $01 $21 $24
	ret c                                            ; $67a5: $d8

	rst $38                                          ; $67a6: $ff
	sbc [hl]                                         ; $67a7: $9e
	ccf                                              ; $67a8: $3f
	ld l, e                                          ; $67a9: $6b
	ld a, a                                          ; $67aa: $7f
	jp c, Jump_044_7eff                              ; $67ab: $da $ff $7e

	cp [hl]                                          ; $67ae: $be
	ld a, b                                          ; $67af: $78
	ldh [$9c], a                                     ; $67b0: $e0 $9c
	ldh a, [c]                                       ; $67b2: $f2
	push bc                                          ; $67b3: $c5
	ld l, d                                          ; $67b4: $6a
	ld l, a                                          ; $67b5: $6f
	di                                               ; $67b6: $f3
	ld a, l                                          ; $67b7: $7d
	or $7e                                           ; $67b8: $f6 $7e
	xor h                                            ; $67ba: $ac
	sbc c                                            ; $67bb: $99
	add b                                            ; $67bc: $80
	ld b, b                                          ; $67bd: $40
	jr nz, jr_044_67d8                               ; $67be: $20 $18

	inc c                                            ; $67c0: $0c
	rrca                                             ; $67c1: $0f
	sbc $7f                                          ; $67c2: $de $7f
	ld a, [hl]                                       ; $67c4: $7e
	ld a, [hl+]                                      ; $67c5: $2a
	sbc h                                            ; $67c6: $9c
	daa                                              ; $67c7: $27
	inc de                                           ; $67c8: $13
	and b                                            ; $67c9: $a0
	jr c, jr_044_6814                                ; $67ca: $38 $48

	sbc h                                            ; $67cc: $9c
	ld bc, $1806                                     ; $67cd: $01 $06 $18
	ld e, e                                          ; $67d0: $5b
	ldh a, [$9c]                                     ; $67d1: $f0 $9c
	inc bc                                           ; $67d3: $03
	ld [bc], a                                       ; $67d4: $02
	ld [$e057], sp                                   ; $67d5: $08 $57 $e0

jr_044_67d8:
	ld a, a                                          ; $67d8: $7f
	ld a, c                                          ; $67d9: $79
	sbc d                                            ; $67da: $9a
	ld [hl], e                                       ; $67db: $73
	rlca                                             ; $67dc: $07
	dec c                                            ; $67dd: $0d
	inc bc                                           ; $67de: $03
	ld bc, $f063                                     ; $67df: $01 $63 $f0
	db $dd                                           ; $67e2: $dd
	cp $9b                                           ; $67e3: $fe $9b
	ld e, [hl]                                       ; $67e5: $5e
	xor d                                            ; $67e6: $aa
	call nc, Call_044_7b4b                           ; $67e7: $d4 $4b $7b
	sub a                                            ; $67ea: $97
	ld [hl], a                                       ; $67eb: $77
	cp $9a                                           ; $67ec: $fe $9a
	rst $38                                          ; $67ee: $ff
	ldh [$c0], a                                     ; $67ef: $e0 $c0
	call nc, Call_044_78de                           ; $67f1: $d4 $de $78
	ld a, l                                          ; $67f4: $7d
	sbc [hl]                                         ; $67f5: $9e
	pop de                                           ; $67f6: $d1
	reti                                             ; $67f7: $d9


	rst $38                                          ; $67f8: $ff
	sub a                                            ; $67f9: $97
	ld bc, $0303                                     ; $67fa: $01 $03 $03
	ld b, $80                                        ; $67fd: $06 $80
	cp a                                             ; $67ff: $bf
	rst $38                                          ; $6800: $ff
	ld d, l                                          ; $6801: $55
	sub $ff                                          ; $6802: $d6 $ff
	rst SubAFromDE                                          ; $6804: $df
	ccf                                              ; $6805: $3f
	ld a, l                                          ; $6806: $7d
	xor l                                            ; $6807: $ad
	ld d, a                                          ; $6808: $57
	ldh a, [rPCM12]                                  ; $6809: $f0 $76
	ld [$f05b], a                                    ; $680b: $ea $5b $f0
	sbc c                                            ; $680e: $99
	pop af                                           ; $680f: $f1
	ldh a, [$fc]                                     ; $6810: $f0 $fc
	db $d3                                           ; $6812: $d3
	xor c                                            ; $6813: $a9

jr_044_6814:
	ld b, d                                          ; $6814: $42
	sub $ff                                          ; $6815: $d6 $ff
	sbc d                                            ; $6817: $9a
	ld a, a                                          ; $6818: $7f
	ld d, l                                          ; $6819: $55
	ld a, [hl+]                                      ; $681a: $2a
	ld d, h                                          ; $681b: $54
	xor h                                            ; $681c: $ac
	ld e, e                                          ; $681d: $5b
	jr nc, jr_044_688f                               ; $681e: $30 $6f

	ld a, c                                          ; $6820: $79
	jp c, $9eff                                      ; $6821: $da $ff $9e

	rst SubAFromDE                                          ; $6824: $df
	db $dd                                           ; $6825: $dd
	rst $38                                          ; $6826: $ff
	sbc l                                            ; $6827: $9d
	ret z                                            ; $6828: $c8

	ret nz                                           ; $6829: $c0

	ld h, e                                          ; $682a: $63
	pop hl                                           ; $682b: $e1
	sbc b                                            ; $682c: $98
	db $fd                                           ; $682d: $fd
	rst $38                                          ; $682e: $ff
	cp $fc                                           ; $682f: $fe $fc
	ld hl, sp-$08                                    ; $6831: $f8 $f8
	ld c, b                                          ; $6833: $48
	ld h, e                                          ; $6834: $63
	ld h, b                                          ; $6835: $60
	sbc $07                                          ; $6836: $de $07
	sub e                                            ; $6838: $93
	dec b                                            ; $6839: $05
	inc b                                            ; $683a: $04
	inc b                                            ; $683b: $04
	ld [$fc10], sp                                   ; $683c: $08 $10 $fc
	db $fc                                           ; $683f: $fc
	cp $f7                                           ; $6840: $fe $f7
	push af                                          ; $6842: $f5
	xor $df                                          ; $6843: $ee $df
	ld [hl], h                                       ; $6845: $74
	adc b                                            ; $6846: $88
	sbc d                                            ; $6847: $9a
	ldh [rAUD3HIGH], a                               ; $6848: $e0 $1e
	add hl, hl                                       ; $684a: $29
	dec d                                            ; $684b: $15
	adc d                                            ; $684c: $8a
	call c, $9cff                                    ; $684d: $dc $ff $9c
	rst SubAFromHL                                          ; $6850: $d7
	ld l, d                                          ; $6851: $6a
	dec [hl]                                         ; $6852: $35
	db $fc                                           ; $6853: $fc
	sbc h                                            ; $6854: $9c
	db $fc                                           ; $6855: $fc
	ld d, [hl]                                       ; $6856: $56
	xor e                                            ; $6857: $ab
	db $db                                           ; $6858: $db
	rst $38                                          ; $6859: $ff
	ld a, h                                          ; $685a: $7c
	push af                                          ; $685b: $f5
	rst SubAFromDE                                          ; $685c: $df
	ld a, a                                          ; $685d: $7f
	sbc c                                            ; $685e: $99
	ld b, e                                          ; $685f: $43
	ld bc, $5400                                     ; $6860: $01 $00 $54
	xor d                                            ; $6863: $aa
	ld d, a                                          ; $6864: $57
	ld l, e                                          ; $6865: $6b
	pop af                                           ; $6866: $f1
	sub [hl]                                         ; $6867: $96
	xor b                                            ; $6868: $a8
	ldh a, [$3d]                                     ; $6869: $f0 $3d
	ld [$0a04], sp                                   ; $686b: $08 $04 $0a
	ld d, l                                          ; $686e: $55
	ld a, a                                          ; $686f: $7f
	db $e4                                           ; $6870: $e4
	db $dd                                           ; $6871: $dd
	rst $38                                          ; $6872: $ff
	ld a, l                                          ; $6873: $7d
	db $eb                                           ; $6874: $eb
	ld a, a                                          ; $6875: $7f
	adc b                                            ; $6876: $88
	sub a                                            ; $6877: $97
	ld [bc], a                                       ; $6878: $02
	ldh a, [c]                                       ; $6879: $f2
	db $e4                                           ; $687a: $e4
	inc b                                            ; $687b: $04
	add d                                            ; $687c: $82
	ld d, a                                          ; $687d: $57
	rst $38                                          ; $687e: $ff

Jump_044_687f:
	adc h                                            ; $687f: $8c
	ld [hl], e                                       ; $6880: $73
	inc h                                            ; $6881: $24
	ld a, e                                          ; $6882: $7b
	sbc d                                            ; $6883: $9a
	ei                                               ; $6884: $fb
	sbc l                                            ; $6885: $9d
	ld a, [de]                                       ; $6886: $1a
	dec b                                            ; $6887: $05
	db $db                                           ; $6888: $db
	rst $38                                          ; $6889: $ff
	sbc l                                            ; $688a: $9d
	ldh [$d0], a                                     ; $688b: $e0 $d0
	db $fc                                           ; $688d: $fc
	sbc [hl]                                         ; $688e: $9e

jr_044_688f:
	ld [hl-], a                                      ; $688f: $32
	ld [hl], c                                       ; $6890: $71
	db $ed                                           ; $6891: $ed
	rst SubAFromDE                                          ; $6892: $df
	rst $38                                          ; $6893: $ff
	sbc h                                            ; $6894: $9c
	db $dd                                           ; $6895: $dd
	cp [hl]                                          ; $6896: $be
	ld b, b                                          ; $6897: $40
	db $fd                                           ; $6898: $fd
	sbc l                                            ; $6899: $9d
	ld l, a                                          ; $689a: $6f
	or $db                                           ; $689b: $f6 $db
	rst $38                                          ; $689d: $ff
	sbc h                                            ; $689e: $9c
	ld a, [$aa59]                                    ; $689f: $fa $59 $aa
	ld [hl], c                                       ; $68a2: $71
	adc b                                            ; $68a3: $88
	sbc h                                            ; $68a4: $9c
	ld a, a                                          ; $68a5: $7f
	ccf                                              ; $68a6: $3f
	rst $38                                          ; $68a7: $ff
	ld [hl], d                                       ; $68a8: $72
	ld e, e                                          ; $68a9: $5b
	ld a, h                                          ; $68aa: $7c
	scf                                              ; $68ab: $37
	add b                                            ; $68ac: $80
	ldh [$0d], a                                     ; $68ad: $e0 $0d
	inc b                                            ; $68af: $04
	ld a, [bc]                                       ; $68b0: $0a
	inc d                                            ; $68b1: $14
	ld a, [hl+]                                      ; $68b2: $2a
	ld b, c                                          ; $68b3: $41
	ccf                                              ; $68b4: $3f
	and [hl]                                         ; $68b5: $a6

jr_044_68b6:
	ld e, e                                          ; $68b6: $5b
	ld sp, hl                                        ; $68b7: $f9
	ldh a, [$e0]                                     ; $68b8: $f0 $e0
	ret nz                                           ; $68ba: $c0

	rst $38                                          ; $68bb: $ff
	ld a, a                                          ; $68bc: $7f
	rrca                                             ; $68bd: $0f
	ld b, $80                                        ; $68be: $06 $80
	and b                                            ; $68c0: $a0
	ld d, b                                          ; $68c1: $50
	inc l                                            ; $68c2: $2c
	cp $bc                                           ; $68c3: $fe $bc
	cp h                                             ; $68c5: $bc
	jp c, Jump_044_5fff                              ; $68c6: $da $ff $5f

	cpl                                              ; $68c9: $2f
	inc de                                           ; $68ca: $13
	rst $38                                          ; $68cb: $ff
	sub a                                            ; $68cc: $97
	rst $38                                          ; $68cd: $ff
	ld sp, hl                                        ; $68ce: $f9
	cp b                                             ; $68cf: $b8
	xor d                                            ; $68d0: $aa
	ld d, l                                          ; $68d1: $55
	ld [hl+], a                                      ; $68d2: $22
	ld bc, $6b00                                     ; $68d3: $01 $00 $6b
	ld [hl], c                                       ; $68d6: $71
	ld a, [hl]                                       ; $68d7: $7e
	cp d                                             ; $68d8: $ba
	sbc [hl]                                         ; $68d9: $9e
	xor b                                            ; $68da: $a8
	ld a, e                                          ; $68db: $7b
	adc [hl]                                         ; $68dc: $8e
	sbc d                                            ; $68dd: $9a
	ld hl, sp-$80                                    ; $68de: $f8 $80
	add b                                            ; $68e0: $80
	xor d                                            ; $68e1: $aa
	rst SubAFromHL                                          ; $68e2: $d7
	ld l, [hl]                                       ; $68e3: $6e
	ld sp, hl                                        ; $68e4: $f9
	ld a, a                                          ; $68e5: $7f
	ldh a, [$97]                                     ; $68e6: $f0 $97
	ld bc, $faff                                     ; $68e8: $01 $ff $fa
	db $fc                                           ; $68eb: $fc
	ld a, [bc]                                       ; $68ec: $0a
	nop                                              ; $68ed: $00
	xor d                                            ; $68ee: $aa
	pop af                                           ; $68ef: $f1
	ld [hl], a                                       ; $68f0: $77
	db $10                                           ; $68f1: $10
	sbc e                                            ; $68f2: $9b
	push af                                          ; $68f3: $f5
	rst $38                                          ; $68f4: $ff
	ld d, l                                          ; $68f5: $55
	ld c, $7b                                        ; $68f6: $0e $7b
	xor e                                            ; $68f8: $ab
	sbc c                                            ; $68f9: $99
	ld b, c                                          ; $68fa: $41
	add b                                            ; $68fb: $80
	nop                                              ; $68fc: $00
	xor b                                            ; $68fd: $a8
	ld [hl], b                                       ; $68fe: $70
	adc $71                                          ; $68ff: $ce $71
	add l                                            ; $6901: $85
	sbc l                                            ; $6902: $9d
	ld d, a                                          ; $6903: $57
	adc a                                            ; $6904: $8f
	ld a, e                                          ; $6905: $7b
	sub [hl]                                         ; $6906: $96
	sbc e                                            ; $6907: $9b
	ld d, l                                          ; $6908: $55
	ld a, [bc]                                       ; $6909: $0a
	nop                                              ; $690a: $00
	xor [hl]                                         ; $690b: $ae
	ld l, c                                          ; $690c: $69
	ld a, d                                          ; $690d: $7a
	ld a, d                                          ; $690e: $7a
	sbc d                                            ; $690f: $9a
	sbc l                                            ; $6910: $9d
	ld b, h                                          ; $6911: $44
	ret                                              ; $6912: $c9


	ld a, c                                          ; $6913: $79
	ld a, $7e                                        ; $6914: $3e $7e
	add c                                            ; $6916: $81
	sbc h                                            ; $6917: $9c
	ei                                               ; $6918: $fb
	cp e                                             ; $6919: $bb
	rst FarCall                                          ; $691a: $f7
	ld l, d                                          ; $691b: $6a
	jr nz, jr_044_68b6                               ; $691c: $20 $98

	ld h, b                                          ; $691e: $60
	ret nz                                           ; $691f: $c0

	db $ec                                           ; $6920: $ec
	ld [hl], d                                       ; $6921: $72
	ei                                               ; $6922: $fb
	call nc, $db2a                                   ; $6923: $d4 $2a $db
	rst $38                                          ; $6926: $ff
	sub d                                            ; $6927: $92
	db $eb                                           ; $6928: $eb
	push de                                          ; $6929: $d5
	inc bc                                           ; $692a: $03
	dec c                                            ; $692b: $0d
	ld l, d                                          ; $692c: $6a
	ccf                                              ; $692d: $3f
	rst $38                                          ; $692e: $ff
	ld [hl], l                                       ; $692f: $75
	dec hl                                           ; $6930: $2b
	call c, $f0fc                                    ; $6931: $dc $fc $f0
	add b                                            ; $6934: $80
	ld a, d                                          ; $6935: $7a
	xor e                                            ; $6936: $ab
	sbc d                                            ; $6937: $9a
	rst FarCall                                          ; $6938: $f7
	ccf                                              ; $6939: $3f
	di                                               ; $693a: $f3
	ld d, b                                          ; $693b: $50
	add b                                            ; $693c: $80
	ld [hl], a                                       ; $693d: $77
	rst JumpTable                                          ; $693e: $c7
	sbc l                                            ; $693f: $9d
	inc d                                            ; $6940: $14
	ld a, [hl]                                       ; $6941: $7e
	ld l, l                                          ; $6942: $6d
	db $fc                                           ; $6943: $fc
	sub h                                            ; $6944: $94
	ldh [$f1], a                                     ; $6945: $e0 $f1
	inc e                                            ; $6947: $1c
	inc bc                                           ; $6948: $03
	ld bc, $f1ff                                     ; $6949: $01 $ff $f1
	ld e, l                                          ; $694c: $5d
	nop                                              ; $694d: $00
	ld c, $03                                        ; $694e: $0e $03
	ld [hl], a                                       ; $6950: $77
	pop af                                           ; $6951: $f1
	sbc c                                            ; $6952: $99
	rst FarCall                                          ; $6953: $f7
	rlca                                             ; $6954: $07
	ld d, l                                          ; $6955: $55
	ld a, [hl+]                                      ; $6956: $2a
	ld d, l                                          ; $6957: $55
	ei                                               ; $6958: $fb
	sbc $ff                                          ; $6959: $de $ff
	sbc e                                            ; $695b: $9b
	scf                                              ; $695c: $37
	xor d                                            ; $695d: $aa
	push de                                          ; $695e: $d5
	ld a, [hl+]                                      ; $695f: $2a
	ld a, b                                          ; $6960: $78
	pop bc                                           ; $6961: $c1
	sbc c                                            ; $6962: $99
	db $fd                                           ; $6963: $fd
	ret z                                            ; $6964: $c8

	ld a, a                                          ; $6965: $7f
	sbc a                                            ; $6966: $9f
	ld d, [hl]                                       ; $6967: $56
	ld sp, hl                                        ; $6968: $f9
	ld a, e                                          ; $6969: $7b
	ld [hl], a                                       ; $696a: $77
	sbc c                                            ; $696b: $99
	inc bc                                           ; $696c: $03
	ret nz                                           ; $696d: $c0

	ld [hl], b                                       ; $696e: $70
	xor c                                            ; $696f: $a9
	ld b, $f8                                        ; $6970: $06 $f8
	sbc $ff                                          ; $6972: $de $ff
	sbc d                                            ; $6974: $9a
	sbc e                                            ; $6975: $9b
	cp a                                             ; $6976: $bf
	ld a, a                                          ; $6977: $7f
	ld [$7b50], a                                    ; $6978: $ea $50 $7b
	ld d, d                                          ; $697b: $52
	sbc h                                            ; $697c: $9c
	ld h, h                                          ; $697d: $64
	ld a, a                                          ; $697e: $7f

Jump_044_697f:
	add b                                            ; $697f: $80
	ld [hl], e                                       ; $6980: $73
	cp a                                             ; $6981: $bf
	sub h                                            ; $6982: $94
	ld h, b                                          ; $6983: $60
	ld hl, sp-$03                                    ; $6984: $f8 $fd
	dec bc                                           ; $6986: $0b
	nop                                              ; $6987: $00
	nop                                              ; $6988: $00
	cp $c1                                           ; $6989: $fe $c1
	sbc a                                            ; $698b: $9f
	rst $38                                          ; $698c: $ff
	ld [bc], a                                       ; $698d: $02
	ld [hl], e                                       ; $698e: $73
	ldh a, [hDisp0_OBP1]                                     ; $698f: $f0 $87
	rst GetHLinHL                                          ; $6991: $cf
	add a                                            ; $6992: $87
	ld hl, sp+$3c                                    ; $6993: $f8 $3c
	ld a, b                                          ; $6995: $78
	ldh a, [$a0]                                     ; $6996: $f0 $a0
	ret nz                                           ; $6998: $c0

	ldh a, [$98]                                     ; $6999: $f0 $98
	or $3c                                           ; $699b: $f6 $3c
	ld c, b                                          ; $699d: $48
	ldh a, [$c0]                                     ; $699e: $f0 $c0
	add b                                            ; $69a0: $80
	add d                                            ; $69a1: $82
	dec bc                                           ; $69a2: $0b
	dec d                                            ; $69a3: $15
	ld l, $5d                                        ; $69a4: $2e $5d
	ld l, $57                                        ; $69a6: $2e $57
	xor e                                            ; $69a8: $ab
	ld [hl], d                                       ; $69a9: $72
	rst JumpTable                                          ; $69aa: $c7
	add b                                            ; $69ab: $80
	db $10                                           ; $69ac: $10
	jr z, jr_044_6a03                                ; $69ad: $28 $54

	ld d, a                                          ; $69af: $57
	dec hl                                           ; $69b0: $2b
	jp Jump_044_7ef3                                 ; $69b1: $c3 $f3 $7e


	cp l                                             ; $69b4: $bd
	ld [$00ff], a                                    ; $69b5: $ea $ff $00
	sub b                                            ; $69b8: $90
	ld sp, $c301                                     ; $69b9: $31 $01 $c3
	rst FarCall                                          ; $69bc: $f7
	ld a, a                                          ; $69bd: $7f
	dec d                                            ; $69be: $15
	ld a, [hl]                                       ; $69bf: $7e
	ld de, $5568                                     ; $69c0: $11 $68 $55
	xor e                                            ; $69c3: $ab
	sub d                                            ; $69c4: $92
	sbc h                                            ; $69c5: $9c
	cp a                                             ; $69c6: $bf
	cp a                                             ; $69c7: $bf
	rst $38                                          ; $69c8: $ff
	sub $aa                                          ; $69c9: $d6 $aa
	sub d                                            ; $69cb: $92
	call nc, $bf2d                                   ; $69cc: $d4 $2d $bf
	rst $38                                          ; $69cf: $ff
	push bc                                          ; $69d0: $c5
	cp l                                             ; $69d1: $bd
	ret nz                                           ; $69d2: $c0

	cp a                                             ; $69d3: $bf
	ret nc                                           ; $69d4: $d0

	rst AddAOntoHL                                          ; $69d5: $ef
	push de                                          ; $69d6: $d5
	ld a, [hl+]                                      ; $69d7: $2a
	ld a, [hl-]                                      ; $69d8: $3a
	ld a, d                                          ; $69d9: $7a
	jp nz, $3f80                                     ; $69da: $c2 $80 $3f

	db $10                                           ; $69dd: $10
	ld a, [hl+]                                      ; $69de: $2a
	push de                                          ; $69df: $d5
	db $ed                                           ; $69e0: $ed
	ld e, a                                          ; $69e1: $5f
	ccf                                              ; $69e2: $3f
	ld a, [hl]                                       ; $69e3: $7e
	ld a, c                                          ; $69e4: $79
	add [hl]                                         ; $69e5: $86
	ld b, a                                          ; $69e6: $47
	sbc e                                            ; $69e7: $9b
	db $10                                           ; $69e8: $10
	inc b                                            ; $69e9: $04
	rst $38                                          ; $69ea: $ff
	db $fd                                           ; $69eb: $fd
	adc [hl]                                         ; $69ec: $8e
	ld a, c                                          ; $69ed: $79
	cp [hl]                                          ; $69ee: $be
	ld h, a                                          ; $69ef: $67
	adc a                                            ; $69f0: $8f
	ld hl, $54bf                                     ; $69f1: $21 $bf $54
	rst AddAOntoHL                                          ; $69f4: $ef
	push af                                          ; $69f5: $f5
	rst AddAOntoHL                                          ; $69f6: $ef
	sbc $70                                          ; $69f7: $de $70
	rst SubAFromDE                                          ; $69f9: $df
	ret nz                                           ; $69fa: $c0

	ld [hl], c                                       ; $69fb: $71
	call nz, $e680                                   ; $69fc: $c4 $80 $e6
	ldh a, [c]                                       ; $69ff: $f2
	cp d                                             ; $6a00: $ba
	cp d                                             ; $6a01: $ba
	add b                                            ; $6a02: $80

jr_044_6a03:
	ld a, [hl+]                                      ; $6a03: $2a
	rst AddAOntoHL                                          ; $6a04: $ef
	halt                                             ; $6a05: $76
	rst $38                                          ; $6a06: $ff
	ld hl, sp+$70                                    ; $6a07: $f8 $70
	ld [hl], b                                       ; $6a09: $70
	nop                                              ; $6a0a: $00
	push bc                                          ; $6a0b: $c5
	rst $38                                          ; $6a0c: $ff
	rst $38                                          ; $6a0d: $ff
	inc b                                            ; $6a0e: $04
	nop                                              ; $6a0f: $00
	rrca                                             ; $6a10: $0f
	ld b, d                                          ; $6a11: $42
	ld b, c                                          ; $6a12: $41
	add b                                            ; $6a13: $80
	xor a                                            ; $6a14: $af
	ld e, h                                          ; $6a15: $5c
	ei                                               ; $6a16: $fb
	rrca                                             ; $6a17: $0f
	ld h, b                                          ; $6a18: $60
	dec l                                            ; $6a19: $2d
	jr nz, jr_044_6a23                               ; $6a1a: $20 $07

	rst SubAFromDE                                          ; $6a1c: $df
	add b                                            ; $6a1d: $80
	rst $38                                          ; $6a1e: $ff
	adc a                                            ; $6a1f: $8f
	rlca                                             ; $6a20: $07
	rrca                                             ; $6a21: $0f
	inc e                                            ; $6a22: $1c

jr_044_6a23:
	cp b                                             ; $6a23: $b8
	ldh a, [rSVBK]                                   ; $6a24: $f0 $70
	jr c, jr_044_6a98                                ; $6a26: $38 $70

	ld hl, sp-$10                                    ; $6a28: $f8 $f0
	db $e3                                           ; $6a2a: $e3
	ld b, a                                          ; $6a2b: $47
	rrca                                             ; $6a2c: $0f
	rst GetHLinHL                                          ; $6a2d: $cf
	rst SubAFromBC                                          ; $6a2e: $e7
	xor a                                            ; $6a2f: $af
	cp b                                             ; $6a30: $b8
	ld [hl], b                                       ; $6a31: $70
	ld [hl], b                                       ; $6a32: $70
	add a                                            ; $6a33: $87
	ld a, [hl]                                       ; $6a34: $7e
	ld a, l                                          ; $6a35: $7d
	ld a, $10                                        ; $6a36: $3e $10
	ld b, a                                          ; $6a38: $47
	add a                                            ; $6a39: $87
	adc a                                            ; $6a3a: $8f
	ld b, b                                          ; $6a3b: $40
	ld bc, $0280                                     ; $6a3c: $01 $80 $02
	add c                                            ; $6a3f: $81
	rst $38                                          ; $6a40: $ff
	cp $9c                                           ; $6a41: $fe $9c
	ld a, [bc]                                       ; $6a43: $0a
	add e                                            ; $6a44: $83
	or c                                             ; $6a45: $b1
	pop de                                           ; $6a46: $d1
	ld [hl], a                                       ; $6a47: $77
	cp $f8                                           ; $6a48: $fe $f8
	di                                               ; $6a4a: $f3
	add c                                            ; $6a4b: $81
	ld h, b                                          ; $6a4c: $60
	ld c, [hl]                                       ; $6a4d: $4e
	ld c, $08                                        ; $6a4e: $0e $08
	xor a                                            ; $6a50: $af
	rst SubAFromHL                                          ; $6a51: $d7
	dec sp                                           ; $6a52: $3b
	dec a                                            ; $6a53: $3d
	inc b                                            ; $6a54: $04
	ld c, $3c                                        ; $6a55: $0e $3c
	inc [hl]                                         ; $6a57: $34
	nop                                              ; $6a58: $00
	nop                                              ; $6a59: $00
	add h                                            ; $6a5a: $84
	jp nz, $8cfb                                     ; $6a5b: $c2 $fb $8c

	pop af                                           ; $6a5e: $f1
	jp $0fcf                                         ; $6a5f: $c3 $cf $0f


	sbc a                                            ; $6a62: $9f
	cp a                                             ; $6a63: $bf
	or $d5                                           ; $6a64: $f6 $d5
	ei                                               ; $6a66: $fb
	ld h, h                                          ; $6a67: $64
	add hl, sp                                       ; $6a68: $39
	stop                                             ; $6a69: $10 $00
	rra                                              ; $6a6b: $1f
	jr @+$22                                         ; $6a6c: $18 $20

	nop                                              ; $6a6e: $00
	sub e                                            ; $6a6f: $93
	jp $ba76                                         ; $6a70: $c3 $76 $ba


	sbc e                                            ; $6a73: $9b
	jp z, $538e                                      ; $6a74: $ca $8e $53

	daa                                              ; $6a77: $27
	ld a, e                                          ; $6a78: $7b
	inc de                                           ; $6a79: $13
	sub d                                            ; $6a7a: $92
	ccf                                              ; $6a7b: $3f
	nop                                              ; $6a7c: $00
	ld [hl], e                                       ; $6a7d: $73
	rst $38                                          ; $6a7e: $ff
	db $fc                                           ; $6a7f: $fc
	inc bc                                           ; $6a80: $03
	rra                                              ; $6a81: $1f
	cp $8c                                           ; $6a82: $fe $8c
	ld [de], a                                       ; $6a84: $12
	adc $c1                                          ; $6a85: $ce $c1
	ld bc, $f07b                                     ; $6a87: $01 $7b $f0
	add b                                            ; $6a8a: $80
	ld a, l                                          ; $6a8b: $7d
	ld bc, $3e31                                     ; $6a8c: $01 $31 $3e
	cp $c0                                           ; $6a8f: $fe $c0
	rlca                                             ; $6a91: $07
	add hl, sp                                       ; $6a92: $39
	ld h, d                                          ; $6a93: $62
	db $e3                                           ; $6a94: $e3
	ld e, $31                                        ; $6a95: $1e $31
	and e                                            ; $6a97: $a3

jr_044_6a98:
	nop                                              ; $6a98: $00
	nop                                              ; $6a99: $00
	ld b, $9c                                        ; $6a9a: $06 $9c
	inc e                                            ; $6a9c: $1c
	pop hl                                           ; $6a9d: $e1
	adc $5c                                          ; $6a9e: $ce $5c
	adc [hl]                                         ; $6aa0: $8e
	ei                                               ; $6aa1: $fb
	ld b, [hl]                                       ; $6aa2: $46
	adc l                                            ; $6aa3: $8d
	inc sp                                           ; $6aa4: $33
	ld a, $82                                        ; $6aa5: $3e $82
	ld bc, $067f                                     ; $6aa7: $01 $7f $06
	sub a                                            ; $6aaa: $97
	daa                                              ; $6aab: $27
	ld a, a                                          ; $6aac: $7f
	rst $38                                          ; $6aad: $ff
	ld sp, hl                                        ; $6aae: $f9
	ld a, l                                          ; $6aaf: $7d
	cp $00                                           ; $6ab0: $fe $00
	ld d, l                                          ; $6ab2: $55
	ld a, c                                          ; $6ab3: $79
	ld e, $80                                        ; $6ab4: $1e $80
	cp a                                             ; $6ab6: $bf
	dec [hl]                                         ; $6ab7: $35
	xor e                                            ; $6ab8: $ab
	rst $38                                          ; $6ab9: $ff
	nop                                              ; $6aba: $00
	jr nz, @+$01                                     ; $6abb: $20 $ff

	rst $38                                          ; $6abd: $ff
	ret nz                                           ; $6abe: $c0

	ret nz                                           ; $6abf: $c0

	nop                                              ; $6ac0: $00
	nop                                              ; $6ac1: $00
	ld a, [bc]                                       ; $6ac2: $0a
	db $fd                                           ; $6ac3: $fd
	ld [$2083], a                                    ; $6ac4: $ea $83 $20
	ld b, e                                          ; $6ac7: $43
	add b                                            ; $6ac8: $80
	db $fc                                           ; $6ac9: $fc
	nop                                              ; $6aca: $00
	nop                                              ; $6acb: $00
	ldh a, [$cc]                                     ; $6acc: $f0 $cc
	rra                                              ; $6ace: $1f
	inc a                                            ; $6acf: $3c
	ld a, a                                          ; $6ad0: $7f
	dec d                                            ; $6ad1: $15
	ld a, [hl-]                                      ; $6ad2: $3a
	ld e, a                                          ; $6ad3: $5f
	cp d                                             ; $6ad4: $ba
	sbc e                                            ; $6ad5: $9b
	xor h                                            ; $6ad6: $ac
	ld a, a                                          ; $6ad7: $7f
	adc a                                            ; $6ad8: $8f
	jr jr_044_6b56                                   ; $6ad9: $18 $7b

	and $80                                          ; $6adb: $e6 $80
	ld b, l                                          ; $6add: $45
	ld b, e                                          ; $6ade: $43
	nop                                              ; $6adf: $00
	ld [hl], b                                       ; $6ae0: $70
	rst SubAFromBC                                          ; $6ae1: $e7
	ld c, c                                          ; $6ae2: $49
	or [hl]                                          ; $6ae3: $b6
	ld a, c                                          ; $6ae4: $79
	ld e, $52                                        ; $6ae5: $1e $52
	xor c                                            ; $6ae7: $a9
	jp nc, $be0d                                     ; $6ae8: $d2 $0d $be

	ld e, l                                          ; $6aeb: $5d
	cp [hl]                                          ; $6aec: $be
	db $fd                                           ; $6aed: $fd
	dec l                                            ; $6aee: $2d
	ld d, a                                          ; $6aef: $57
	cpl                                              ; $6af0: $2f
	rst $38                                          ; $6af1: $ff
	rst $38                                          ; $6af2: $ff
	adc $f6                                          ; $6af3: $ce $f6
	add c                                            ; $6af5: $81
	inc e                                            ; $6af6: $1c
	ld e, a                                          ; $6af7: $5f
	and d                                            ; $6af8: $a2
	pop de                                           ; $6af9: $d1
	nop                                              ; $6afa: $00
	ld sp, $ad7f                                     ; $6afb: $31 $7f $ad
	add b                                            ; $6afe: $80
	db $e3                                           ; $6aff: $e3
	ldh [$fd], a                                     ; $6b00: $e0 $fd
	cp $a8                                           ; $6b02: $fe $a8
	sub h                                            ; $6b04: $94
	ld l, h                                          ; $6b05: $6c
	ld e, c                                          ; $6b06: $59
	rra                                              ; $6b07: $1f
	dec e                                            ; $6b08: $1d
	db $eb                                           ; $6b09: $eb
	rst FarCall                                          ; $6b0a: $f7
	ld a, a                                          ; $6b0b: $7f
	ld a, a                                          ; $6b0c: $7f
	cp a                                             ; $6b0d: $bf
	cp a                                             ; $6b0e: $bf
	rst SubAFromBC                                          ; $6b0f: $e7
	db $e3                                           ; $6b10: $e3
	rra                                              ; $6b11: $1f
	rra                                              ; $6b12: $1f
	ld c, $2e                                        ; $6b13: $0e $2e
	sbc e                                            ; $6b15: $9b
	ld d, l                                          ; $6b16: $55
	and b                                            ; $6b17: $a0
	ret nz                                           ; $6b18: $c0

	rlca                                             ; $6b19: $07
	ld c, a                                          ; $6b1a: $4f
	pop hl                                           ; $6b1b: $e1
	pop bc                                           ; $6b1c: $c1
	db $e4                                           ; $6b1d: $e4
	ld a, [hl]                                       ; $6b1e: $7e
	sbc e                                            ; $6b1f: $9b
	add b                                            ; $6b20: $80
	rst $38                                          ; $6b21: $ff
	cp b                                             ; $6b22: $b8
	ldh a, [$4e]                                     ; $6b23: $f0 $4e
	ret nz                                           ; $6b25: $c0

	ld bc, $7f30                                     ; $6b26: $01 $30 $7f
	db $fc                                           ; $6b29: $fc
	jr c, jr_044_6b65                                ; $6b2a: $38 $39

	or b                                             ; $6b2c: $b0
	ccf                                              ; $6b2d: $3f
	rst $38                                          ; $6b2e: $ff
	rst GetHLinHL                                          ; $6b2f: $cf
	add b                                            ; $6b30: $80
	inc bc                                           ; $6b31: $03
	rst JumpTable                                          ; $6b32: $c7
	rst JumpTable                                          ; $6b33: $c7
	rst SubAFromDE                                          ; $6b34: $df
	sbc a                                            ; $6b35: $9f
	jr z, jr_044_6b9e                                ; $6b36: $28 $66

	ld c, [hl]                                       ; $6b38: $4e
	nop                                              ; $6b39: $00
	ld b, b                                          ; $6b3a: $40
	jr nz, jr_044_6b41                               ; $6b3b: $20 $04

	nop                                              ; $6b3d: $00
	sub a                                            ; $6b3e: $97
	sbc c                                            ; $6b3f: $99
	sbc [hl]                                         ; $6b40: $9e

jr_044_6b41:
	or c                                             ; $6b41: $b1
	sbc $ff                                          ; $6b42: $de $ff
	add b                                            ; $6b44: $80
	jp nz, $95ff                                     ; $6b45: $c2 $ff $95

	ld b, d                                          ; $6b48: $42
	db $10                                           ; $6b49: $10
	xor b                                            ; $6b4a: $a8
	or c                                             ; $6b4b: $b1
	ld c, b                                          ; $6b4c: $48
	dec e                                            ; $6b4d: $1d
	nop                                              ; $6b4e: $00
	ld l, d                                          ; $6b4f: $6a
	cp l                                             ; $6b50: $bd
	rst AddAOntoHL                                          ; $6b51: $ef
	ld d, a                                          ; $6b52: $57
	ld c, [hl]                                       ; $6b53: $4e
	or a                                             ; $6b54: $b7
	ei                                               ; $6b55: $fb

jr_044_6b56:
	cp e                                             ; $6b56: $bb
	rra                                              ; $6b57: $1f
	rra                                              ; $6b58: $1f
	cp $b8                                           ; $6b59: $fe $b8
	ld e, b                                          ; $6b5b: $58
	ld bc, $4404                                     ; $6b5c: $01 $04 $44
	ldh [$e0], a                                     ; $6b5f: $e0 $e0
	ld bc, $a747                                     ; $6b61: $01 $47 $a7
	sub b                                            ; $6b64: $90

jr_044_6b65:
	cp $97                                           ; $6b65: $fe $97
	rst AddAOntoHL                                          ; $6b67: $ef
	adc $0d                                          ; $6b68: $ce $0d
	ld a, [hl-]                                      ; $6b6a: $3a
	ld d, b                                          ; $6b6b: $50
	nop                                              ; $6b6c: $00
	nop                                              ; $6b6d: $00
	ld h, b                                          ; $6b6e: $60
	nop                                              ; $6b6f: $00
	ld sp, $c5f2                                     ; $6b70: $31 $f2 $c5
	xor a                                            ; $6b73: $af
	ld a, c                                          ; $6b74: $79
	xor $80                                          ; $6b75: $ee $80
	db $fc                                           ; $6b77: $fc
	cp d                                             ; $6b78: $ba
	ld b, [hl]                                       ; $6b79: $46
	and a                                            ; $6b7a: $a7
	rrca                                             ; $6b7b: $0f
	ld [hl], $18                                     ; $6b7c: $36 $18
	ld [bc], a                                       ; $6b7e: $02
	inc bc                                           ; $6b7f: $03
	ld b, a                                          ; $6b80: $47
	cp a                                             ; $6b81: $bf
	ld e, c                                          ; $6b82: $59
	ld hl, sp-$05                                    ; $6b83: $f8 $fb
	rst $38                                          ; $6b85: $ff
	db $ed                                           ; $6b86: $ed
	jp hl                                            ; $6b87: $e9


	or $91                                           ; $6b88: $f6 $91
	ld l, $5d                                        ; $6b8a: $2e $5d
	ld [$5ec2], sp                                   ; $6b8c: $08 $c2 $5e
	ld e, $0d                                        ; $6b8f: $1e $0d
	ld a, [hl]                                       ; $6b91: $7e
	ld sp, hl                                        ; $6b92: $f9
	adc a                                            ; $6b93: $8f
	rst $38                                          ; $6b94: $ff
	dec a                                            ; $6b95: $3d
	sub d                                            ; $6b96: $92
	ldh [c], a                                       ; $6b97: $e2
	ld l, d                                          ; $6b98: $6a
	or l                                             ; $6b99: $b5
	ld e, e                                          ; $6b9a: $5b

jr_044_6b9b:
	inc l                                            ; $6b9b: $2c
	cp d                                             ; $6b9c: $ba
	db $dd                                           ; $6b9d: $dd

jr_044_6b9e:
	sbc a                                            ; $6b9e: $9f
	rra                                              ; $6b9f: $1f
	sub l                                            ; $6ba0: $95
	ld c, d                                          ; $6ba1: $4a
	and h                                            ; $6ba2: $a4
	db $d3                                           ; $6ba3: $d3
	ld a, c                                          ; $6ba4: $79
	ld e, c                                          ; $6ba5: $59
	sub e                                            ; $6ba6: $93
	cp $09                                           ; $6ba7: $fe $09
	xor a                                            ; $6ba9: $af
	and a                                            ; $6baa: $a7
	ld bc, $5488                                     ; $6bab: $01 $88 $54
	cp h                                             ; $6bae: $bc
	ld bc, $50f0                                     ; $6baf: $01 $f0 $50
	ld e, b                                          ; $6bb2: $58
	halt                                             ; $6bb3: $76
	ld d, b                                          ; $6bb4: $50
	add b                                            ; $6bb5: $80
	db $eb                                           ; $6bb6: $eb
	add b                                            ; $6bb7: $80
	dec c                                            ; $6bb8: $0d
	ld e, $06                                        ; $6bb9: $1e $06
	nop                                              ; $6bbb: $00
	ret nz                                           ; $6bbc: $c0

	db $f4                                           ; $6bbd: $f4
	db $fc                                           ; $6bbe: $fc
	ld a, a                                          ; $6bbf: $7f
	cp $e1                                           ; $6bc0: $fe $e1
	ld sp, hl                                        ; $6bc2: $f9
	rst $38                                          ; $6bc3: $ff
	ccf                                              ; $6bc4: $3f
	dec bc                                           ; $6bc5: $0b
	jr jr_044_6b9b                                   ; $6bc6: $18 $d3

	add a                                            ; $6bc8: $87
	rrca                                             ; $6bc9: $0f
	rra                                              ; $6bca: $1f
	inc bc                                           ; $6bcb: $03
	jr jr_044_6c18                                   ; $6bcc: $18 $4a

	rst JumpTable                                          ; $6bce: $c7
	inc c                                            ; $6bcf: $0c
	ld a, b                                          ; $6bd0: $78
	rst FarCall                                          ; $6bd1: $f7
	db $e3                                           ; $6bd2: $e3
	db $fc                                           ; $6bd3: $fc
	rst SubAFromBC                                          ; $6bd4: $e7
	sub d                                            ; $6bd5: $92
	db $fd                                           ; $6bd6: $fd
	ld b, b                                          ; $6bd7: $40
	ret                                              ; $6bd8: $c9


	or [hl]                                          ; $6bd9: $b6
	ld l, a                                          ; $6bda: $6f
	and $71                                          ; $6bdb: $e6 $71
	add e                                            ; $6bdd: $83
	ld [hl-], a                                      ; $6bde: $32
	cp a                                             ; $6bdf: $bf
	ld a, a                                          ; $6be0: $7f
	ld a, l                                          ; $6be1: $7d
	ld sp, hl                                        ; $6be2: $f9
	ld a, c                                          ; $6be3: $79
	ld [hl], a                                       ; $6be4: $77
	sub c                                            ; $6be5: $91
	call Call_044_78ba                               ; $6be6: $cd $ba $78
	inc bc                                           ; $6be9: $03
	dec a                                            ; $6bea: $3d
	ld [hl], d                                       ; $6beb: $72
	db $f4                                           ; $6bec: $f4

jr_044_6bed:
	ld [hl-], a                                      ; $6bed: $32
	jr c, jr_044_6bed                                ; $6bee: $38 $fd

	rst $38                                          ; $6bf0: $ff
	rst $38                                          ; $6bf1: $ff
	jp Jump_044_798f                                 ; $6bf2: $c3 $8f $79


	and c                                            ; $6bf5: $a1
	add b                                            ; $6bf6: $80
	rra                                              ; $6bf7: $1f
	rla                                              ; $6bf8: $17
	add sp, -$20                                     ; $6bf9: $e8 $e0
	ld a, b                                          ; $6bfb: $78
	add b                                            ; $6bfc: $80
	ld b, a                                          ; $6bfd: $47
	add [hl]                                         ; $6bfe: $86
	ldh [$e8], a                                     ; $6bff: $e0 $e8
	sbc a                                            ; $6c01: $9f
	sbc a                                            ; $6c02: $9f
	add a                                            ; $6c03: $87
	rst $38                                          ; $6c04: $ff
	cp b                                             ; $6c05: $b8
	ld a, c                                          ; $6c06: $79
	ld [$e3c0], sp                                   ; $6c07: $08 $c0 $e3
	adc $d9                                          ; $6c0a: $ce $d9
	and [hl]                                         ; $6c0c: $a6
	rra                                              ; $6c0d: $1f
	ccf                                              ; $6c0e: $3f
	rst FarCall                                          ; $6c0f: $f7
	ccf                                              ; $6c10: $3f
	inc e                                            ; $6c11: $1c
	ld sp, $5f27                                     ; $6c12: $31 $27 $5f
	rst $38                                          ; $6c15: $ff
	sub a                                            ; $6c16: $97
	rst SubAFromDE                                          ; $6c17: $df

jr_044_6c18:
	nop                                              ; $6c18: $00
	sub [hl]                                         ; $6c19: $96
	cpl                                              ; $6c1a: $2f
	adc b                                            ; $6c1b: $88
	db $10                                           ; $6c1c: $10
	ld l, c                                          ; $6c1d: $69
	ldh a, [c]                                       ; $6c1e: $f2
	ld a, c                                          ; $6c1f: $79
	ld b, h                                          ; $6c20: $44
	ld a, d                                          ; $6c21: $7a
	sbc b                                            ; $6c22: $98
	sbc $ff                                          ; $6c23: $de $ff
	sub d                                            ; $6c25: $92
	ld b, $f2                                        ; $6c26: $06 $f2
	and e                                            ; $6c28: $a3
	nop                                              ; $6c29: $00
	inc c                                            ; $6c2a: $0c
	ld bc, $0582                                     ; $6c2b: $01 $82 $05
	ld sp, hl                                        ; $6c2e: $f9
	dec c                                            ; $6c2f: $0d
	call c, $f3ff                                    ; $6c30: $dc $ff $f3
	sbc $ff                                          ; $6c33: $de $ff
	sub c                                            ; $6c35: $91
	jp hl                                            ; $6c36: $e9


	ld b, $f7                                        ; $6c37: $06 $f7
	ld [$2906], sp                                   ; $6c39: $08 $06 $29
	sub h                                            ; $6c3c: $94
	cpl                                              ; $6c3d: $2f
	cp $f9                                           ; $6c3e: $fe $f9
	add hl, de                                       ; $6c40: $19
	rst $38                                          ; $6c41: $ff
	rst $38                                          ; $6c42: $ff
	sbc $7a                                          ; $6c43: $de $7a
	inc [hl]                                         ; $6c45: $34
	add b                                            ; $6c46: $80
	daa                                              ; $6c47: $27
	ld d, c                                          ; $6c48: $51
	db $f4                                           ; $6c49: $f4
	ld l, l                                          ; $6c4a: $6d
	db $fd                                           ; $6c4b: $fd
	ld a, [$3dff]                                    ; $6c4c: $fa $ff $3d
	ld hl, sp-$02                                    ; $6c4f: $f8 $fe
	cp $9e                                           ; $6c51: $fe $9e
	ld a, [hl]                                       ; $6c53: $7e
	rst $38                                          ; $6c54: $ff
	rst $38                                          ; $6c55: $ff
	ldh a, [rAUD3LEVEL]                              ; $6c56: $f0 $1c
	ld c, $85                                        ; $6c58: $0e $85
	ld l, d                                          ; $6c5a: $6a
	sbc b                                            ; $6c5b: $98
	dec b                                            ; $6c5c: $05
	dec e                                            ; $6c5d: $1d
	rst GetHLinHL                                          ; $6c5e: $cf
	db $e3                                           ; $6c5f: $e3
	di                                               ; $6c60: $f3
	ld a, a                                          ; $6c61: $7f
	rra                                              ; $6c62: $1f
	ld h, a                                          ; $6c63: $67
	cp $fe                                           ; $6c64: $fe $fe
	add a                                            ; $6c66: $87
	ld hl, sp+$51                                    ; $6c67: $f8 $51
	ld b, $45                                        ; $6c69: $06 $45
	ld b, d                                          ; $6c6b: $42
	ld b, a                                          ; $6c6c: $47
	ret nz                                           ; $6c6d: $c0

	sbc c                                            ; $6c6e: $99
	rlca                                             ; $6c6f: $07
	xor a                                            ; $6c70: $af
	ld sp, hl                                        ; $6c71: $f9
	cp e                                             ; $6c72: $bb
	cp a                                             ; $6c73: $bf
	cp b                                             ; $6c74: $b8
	ccf                                              ; $6c75: $3f
	ld a, a                                          ; $6c76: $7f
	call nc, $b56a                                   ; $6c77: $d4 $6a $b5
	ei                                               ; $6c7a: $fb
	db $fd                                           ; $6c7b: $fd
	ld [hl], h                                       ; $6c7c: $74
	ld a, [$de45]                                    ; $6c7d: $fa $45 $de
	rst $38                                          ; $6c80: $ff
	rst SubAFromDE                                          ; $6c81: $df
	cp $de                                           ; $6c82: $fe $de
	rst $38                                          ; $6c84: $ff
	add b                                            ; $6c85: $80
	jr c, jr_044_6ca1                                ; $6c86: $38 $19

	ld [$a255], sp                                   ; $6c88: $08 $55 $a2
	rla                                              ; $6c8b: $17
	sub e                                            ; $6c8c: $93
	ld l, e                                          ; $6c8d: $6b
	rst JumpTable                                          ; $6c8e: $c7
	rst SubAFromBC                                          ; $6c8f: $e7
	rst FarCall                                          ; $6c90: $f7
	xor a                                            ; $6c91: $af
	ld e, a                                          ; $6c92: $5f
	rst AddAOntoHL                                          ; $6c93: $ef
	rst $38                                          ; $6c94: $ff
	rst $38                                          ; $6c95: $ff
	add e                                            ; $6c96: $83
	ld c, a                                          ; $6c97: $4f
	db $e3                                           ; $6c98: $e3
	push de                                          ; $6c99: $d5
	ldh a, [rLCDC]                                   ; $6c9a: $f0 $40
	adc $7c                                          ; $6c9c: $ce $7c
	db $fc                                           ; $6c9e: $fc
	ldh a, [$fc]                                     ; $6c9f: $f0 $fc

jr_044_6ca1:
	ld a, [$ffef]                                    ; $6ca1: $fa $ef $ff
	or c                                             ; $6ca4: $b1
	sub d                                            ; $6ca5: $92
	add e                                            ; $6ca6: $83
	and d                                            ; $6ca7: $a2
	ld c, b                                          ; $6ca8: $48
	and l                                            ; $6ca9: $a5
	ei                                               ; $6caa: $fb
	dec a                                            ; $6cab: $3d
	ld a, e                                          ; $6cac: $7b
	cp a                                             ; $6cad: $bf
	ld h, [hl]                                       ; $6cae: $66
	ld e, a                                          ; $6caf: $5f
	cp a                                             ; $6cb0: $bf
	ld e, a                                          ; $6cb1: $5f
	rrca                                             ; $6cb2: $0f
	db $dd                                           ; $6cb3: $dd
	rst $38                                          ; $6cb4: $ff
	adc d                                            ; $6cb5: $8a
	ld e, e                                          ; $6cb6: $5b
	rst SubAFromBC                                          ; $6cb7: $e7
	ld [hl], a                                       ; $6cb8: $77
	ld hl, sp+$51                                    ; $6cb9: $f8 $51
	add a                                            ; $6cbb: $87
	ld d, l                                          ; $6cbc: $55
	adc [hl]                                         ; $6cbd: $8e
	db $fc                                           ; $6cbe: $fc
	db $fc                                           ; $6cbf: $fc
	ld hl, sp-$19                                    ; $6cc0: $f8 $e7
	rst AddAOntoHL                                          ; $6cc2: $ef
	ld hl, sp-$06                                    ; $6cc3: $f8 $fa
	rst $38                                          ; $6cc5: $ff
	ld a, a                                          ; $6cc6: $7f
	rst AddAOntoHL                                          ; $6cc7: $ef
	rst $38                                          ; $6cc8: $ff
	nop                                              ; $6cc9: $00
	xor d                                            ; $6cca: $aa
	ld a, b                                          ; $6ccb: $78
	dec a                                            ; $6ccc: $3d
	ld [hl], b                                       ; $6ccd: $70
	ld b, h                                          ; $6cce: $44

jr_044_6ccf:
	ld l, h                                          ; $6ccf: $6c
	ld l, h                                          ; $6cd0: $6c
	sbc [hl]                                         ; $6cd1: $9e
	ld b, $4b                                        ; $6cd2: $06 $4b
	ldh a, [rBGP]                                    ; $6cd4: $f0 $47
	ldh [rBGP], a                                    ; $6cd6: $e0 $47
	ldh a, [$9d]                                     ; $6cd8: $f0 $9d
	ld [$4fab], sp                                   ; $6cda: $08 $ab $4f
	ldh a, [$9c]                                     ; $6cdd: $f0 $9c

jr_044_6cdf:
	ld a, b                                          ; $6cdf: $78
	cp d                                             ; $6ce0: $ba
	ld d, b                                          ; $6ce1: $50
	ld l, a                                          ; $6ce2: $6f
	ldh a, [$9e]                                     ; $6ce3: $f0 $9e
	ld b, c                                          ; $6ce5: $41
	ld l, a                                          ; $6ce6: $6f
	ldh a, [$79]                                     ; $6ce7: $f0 $79
	ld d, a                                          ; $6ce9: $57
	ld l, a                                          ; $6cea: $6f
	ldh a, [$79]                                     ; $6ceb: $f0 $79
	xor h                                            ; $6ced: $ac
	ld [hl], a                                       ; $6cee: $77
	ldh a, [$df]                                     ; $6cef: $f0 $df
	db $fc                                           ; $6cf1: $fc
	rst $38                                          ; $6cf2: $ff
	ld d, a                                          ; $6cf3: $57
	ret nc                                           ; $6cf4: $d0

	ld a, l                                          ; $6cf5: $7d
	ld l, h                                          ; $6cf6: $6c
	rst $38                                          ; $6cf7: $ff
	sbc [hl]                                         ; $6cf8: $9e
	ld b, b                                          ; $6cf9: $40
	db $dd                                           ; $6cfa: $dd
	rst $38                                          ; $6cfb: $ff
	ld a, c                                          ; $6cfc: $79
	dec sp                                           ; $6cfd: $3b
	ld [hl], a                                       ; $6cfe: $77
	ldh a, [$9e]                                     ; $6cff: $f0 $9e
	ld a, a                                          ; $6d01: $7f
	ld l, e                                          ; $6d02: $6b
	add sp, $73                                      ; $6d03: $e8 $73
	rst SubAFromDE                                          ; $6d05: $df
	ld l, e                                          ; $6d06: $6b
	ldh [$57], a                                     ; $6d07: $e0 $57
	ldh a, [$63]                                     ; $6d09: $f0 $63
	ldh [$9e], a                                     ; $6d0b: $e0 $9e
	add b                                            ; $6d0d: $80
	ld l, a                                          ; $6d0e: $6f
	ld hl, sp-$21                                    ; $6d0f: $f8 $df
	ccf                                              ; $6d11: $3f
	ld l, e                                          ; $6d12: $6b
	ldh a, [$67]                                     ; $6d13: $f0 $67
	add sp, $7f                                      ; $6d15: $e8 $7f
	and b                                            ; $6d17: $a0
	sbc [hl]                                         ; $6d18: $9e
	ld [bc], a                                       ; $6d19: $02
	ld [hl], e                                       ; $6d1a: $73
	and b                                            ; $6d1b: $a0
	sbc [hl]                                         ; $6d1c: $9e
	inc bc                                           ; $6d1d: $03
	ld l, a                                          ; $6d1e: $6f
	ldh a, [$9c]                                     ; $6d1f: $f0 $9c
	ld e, $5d                                        ; $6d21: $1e $5d
	ld bc, $806f                                     ; $6d23: $01 $6f $80
	sbc [hl]                                         ; $6d26: $9e
	add d                                            ; $6d27: $82
	ld l, a                                          ; $6d28: $6f
	ldh a, [$9c]                                     ; $6d29: $f0 $9c
	db $10                                           ; $6d2b: $10
	xor d                                            ; $6d2c: $aa
	ld d, h                                          ; $6d2d: $54
	ld c, e                                          ; $6d2e: $4b
	jr nc, jr_044_6ccf                               ; $6d2f: $30 $9e

	dec d                                            ; $6d31: $15
	ld d, e                                          ; $6d32: $53
	ldh a, [$7f]                                     ; $6d33: $f0 $7f
	ldh [$6f], a                                     ; $6d35: $e0 $6f
	jr nc, @-$60                                     ; $6d37: $30 $9e

	rst AddAOntoHL                                          ; $6d39: $ef
	ld l, e                                          ; $6d3a: $6b
	ldh a, [$9d]                                     ; $6d3b: $f0 $9d
	ld h, b                                          ; $6d3d: $60
	xor $5b                                          ; $6d3e: $ee $5b
	jr nz, jr_044_6cdf                               ; $6d40: $20 $9d

	cp $f7                                           ; $6d42: $fe $f7
	ld c, a                                          ; $6d44: $4f
	nop                                              ; $6d45: $00
	ld a, e                                          ; $6d46: $7b
	db $f4                                           ; $6d47: $f4
	sbc $ff                                          ; $6d48: $de $ff
	ld a, a                                          ; $6d4a: $7f
	ld a, [$7ffb]                                    ; $6d4b: $fa $fb $7f
	di                                               ; $6d4e: $f3
	ld a, e                                          ; $6d4f: $7b
	ldh a, [$9e]                                     ; $6d50: $f0 $9e
	push af                                          ; $6d52: $f5
	ld c, e                                          ; $6d53: $4b
	ldh a, [$7b]                                     ; $6d54: $f0 $7b
	call nc, $bf9e                                   ; $6d56: $d4 $9e $bf
	ld l, e                                          ; $6d59: $6b
	ldh a, [$9e]                                     ; $6d5a: $f0 $9e
	ld b, b                                          ; $6d5c: $40
	ld [hl], e                                       ; $6d5d: $73
	ldh a, [$7e]                                     ; $6d5e: $f0 $7e
	adc d                                            ; $6d60: $8a
	sbc [hl]                                         ; $6d61: $9e
	rst $38                                          ; $6d62: $ff
	ld l, e                                          ; $6d63: $6b
	ldh a, [$7f]                                     ; $6d64: $f0 $7f
	pop bc                                           ; $6d66: $c1
	ld [hl], a                                       ; $6d67: $77
	ldh a, [rPCM34]                                  ; $6d68: $f0 $77
	cp [hl]                                          ; $6d6a: $be
	ld sp, hl                                        ; $6d6b: $f9
	inc sp                                           ; $6d6c: $33
	ldh a, [$79]                                     ; $6d6d: $f0 $79
	add e                                            ; $6d6f: $83
	ld d, e                                          ; $6d70: $53
	ldh a, [$7b]                                     ; $6d71: $f0 $7b
	xor [hl]                                         ; $6d73: $ae
	daa                                              ; $6d74: $27
	ldh a, [$9e]                                     ; $6d75: $f0 $9e
	xor b                                            ; $6d77: $a8
	ld c, e                                          ; $6d78: $4b
	ldh a, [$7b]                                     ; $6d79: $f0 $7b
	ld a, l                                          ; $6d7b: $7d
	ld d, e                                          ; $6d7c: $53
	ldh a, [$9e]                                     ; $6d7d: $f0 $9e
	ld a, [bc]                                       ; $6d7f: $0a
	scf                                              ; $6d80: $37
	ret nz                                           ; $6d81: $c0

	sbc [hl]                                         ; $6d82: $9e
	ld d, a                                          ; $6d83: $57
	dec bc                                           ; $6d84: $0b
	add b                                            ; $6d85: $80
	inc bc                                           ; $6d86: $03
	ldh a, [rVBK]                                    ; $6d87: $f0 $4f
	jr nc, jr_044_6e05                               ; $6d89: $30 $7a

	ld c, l                                          ; $6d8b: $4d
	ld l, e                                          ; $6d8c: $6b
	ldh a, [$7e]                                     ; $6d8d: $f0 $7e
	add a                                            ; $6d8f: $87
	ld l, a                                          ; $6d90: $6f
	and d                                            ; $6d91: $a2
	ld d, d                                          ; $6d92: $52
	ldh a, [$4e]                                     ; $6d93: $f0 $4e
	ret nc                                           ; $6d95: $d0

	ld h, a                                          ; $6d96: $67
	ld e, c                                          ; $6d97: $59
	jp c, $9dff                                      ; $6d98: $da $ff $9d

	xor d                                            ; $6d9b: $aa
	dec b                                            ; $6d9c: $05
	ld l, e                                          ; $6d9d: $6b
	ldh a, [$7a]                                     ; $6d9e: $f0 $7a
	db $db                                           ; $6da0: $db
	ld [hl], e                                       ; $6da1: $73
	ldh a, [$63]                                     ; $6da2: $f0 $63
	sub $67                                          ; $6da4: $d6 $67
	ldh a, [$6f]                                     ; $6da6: $f0 $6f
	adc $6a                                          ; $6da8: $ce $6a
	ld a, l                                          ; $6daa: $7d
	scf                                              ; $6dab: $37
	ldh a, [$75]                                     ; $6dac: $f0 $75
	cp c                                             ; $6dae: $b9
	ld [hl], a                                       ; $6daf: $77
	ldh a, [$74]                                     ; $6db0: $f0 $74
	pop hl                                           ; $6db2: $e1
	sbc l                                            ; $6db3: $9d
	rst $38                                          ; $6db4: $ff
	xor a                                            ; $6db5: $af
	ld a, e                                          ; $6db6: $7b
	rst FarCall                                          ; $6db7: $f7
	db $fd                                           ; $6db8: $fd
	ld a, c                                          ; $6db9: $79
	ld l, l                                          ; $6dba: $6d
	ld l, a                                          ; $6dbb: $6f
	cp [hl]                                          ; $6dbc: $be
	ld l, e                                          ; $6dbd: $6b
	ldh a, [rOCPS]                                   ; $6dbe: $f0 $6a
	ld b, a                                          ; $6dc0: $47
	rst SubAFromDE                                          ; $6dc1: $df
	rst $38                                          ; $6dc2: $ff
	sbc e                                            ; $6dc3: $9b
	ld d, a                                          ; $6dc4: $57
	xor d                                            ; $6dc5: $aa
	ld d, l                                          ; $6dc6: $55
	ld a, [hl+]                                      ; $6dc7: $2a
	ld l, d                                          ; $6dc8: $6a
	rst JumpTable                                          ; $6dc9: $c7
	sbc [hl]                                         ; $6dca: $9e
	push de                                          ; $6dcb: $d5
	inc bc                                           ; $6dcc: $03
	sbc [hl]                                         ; $6dcd: $9e
	ld l, a                                          ; $6dce: $6f
	ret nz                                           ; $6dcf: $c0

	sbc [hl]                                         ; $6dd0: $9e
	xor b                                            ; $6dd1: $a8
	ld l, e                                          ; $6dd2: $6b
	ret nz                                           ; $6dd3: $c0

	ld a, e                                          ; $6dd4: $7b
	daa                                              ; $6dd5: $27
	ld b, e                                          ; $6dd6: $43
	or b                                             ; $6dd7: $b0
	sbc [hl]                                         ; $6dd8: $9e
	ld [$f06b], a                                    ; $6dd9: $ea $6b $f0
	ld a, c                                          ; $6ddc: $79
	xor l                                            ; $6ddd: $ad

Call_044_6dde:
	ld [hl], e                                       ; $6dde: $73
	ldh a, [$7b]                                     ; $6ddf: $f0 $7b
	ld sp, hl                                        ; $6de1: $f9
	sbc [hl]                                         ; $6de2: $9e
	ld b, b                                          ; $6de3: $40
	ld l, e                                          ; $6de4: $6b
	jp nz, $bf9e                                     ; $6de5: $c2 $9e $bf

	inc bc                                           ; $6de8: $03
	and d                                            ; $6de9: $a2
	ld [hl], e                                       ; $6dea: $73
	ldh a, [$75]                                     ; $6deb: $f0 $75
	ld a, [hl+]                                      ; $6ded: $2a
	ld [hl], a                                       ; $6dee: $77
	ldh a, [$9e]                                     ; $6def: $f0 $9e
	ld a, a                                          ; $6df1: $7f
	ld l, a                                          ; $6df2: $6f
	ldh a, [$9e]                                     ; $6df3: $f0 $9e
	ld d, b                                          ; $6df5: $50
	ld l, e                                          ; $6df6: $6b
	nop                                              ; $6df7: $00
	sbc [hl]                                         ; $6df8: $9e
	xor a                                            ; $6df9: $af
	ld l, e                                          ; $6dfa: $6b
	nop                                              ; $6dfb: $00
	ld c, d                                          ; $6dfc: $4a
	ret nc                                           ; $6dfd: $d0

	daa                                              ; $6dfe: $27
	nop                                              ; $6dff: $00
	pop bc                                           ; $6e00: $c1
	ld h, [hl]                                       ; $6e01: $66
	rst SubAFromDE                                          ; $6e02: $df
	ld h, [hl]                                       ; $6e03: $66
	sbc [hl]                                         ; $6e04: $9e

jr_044_6e05:
	halt                                             ; $6e05: $76
	db $db                                           ; $6e06: $db
	ld h, [hl]                                       ; $6e07: $66
	sbc d                                            ; $6e08: $9a
	ld h, a                                          ; $6e09: $67
	ld [hl], a                                       ; $6e0a: $77
	ld h, a                                          ; $6e0b: $67
	halt                                             ; $6e0c: $76
	ld h, [hl]                                       ; $6e0d: $66
	ld a, e                                          ; $6e0e: $7b
	db $fd                                           ; $6e0f: $fd
	sbc [hl]                                         ; $6e10: $9e
	ld h, [hl]                                       ; $6e11: $66
	db $dd                                           ; $6e12: $dd
	ld d, l                                          ; $6e13: $55
	sbc c                                            ; $6e14: $99
	ld d, e                                          ; $6e15: $53
	inc [hl]                                         ; $6e16: $34
	ld b, l                                          ; $6e17: $45
	ld d, h                                          ; $6e18: $54
	ld b, h                                          ; $6e19: $44
	ld b, e                                          ; $6e1a: $43
	sbc $33                                          ; $6e1b: $de $33
	sbc [hl]                                         ; $6e1d: $9e
	dec [hl]                                         ; $6e1e: $35
	pop de                                           ; $6e1f: $d1
	inc sp                                           ; $6e20: $33
	rst SubAFromHL                                          ; $6e21: $d7
	ld d, l                                          ; $6e22: $55
	call $c466                                       ; $6e23: $cd $66 $c4
	adc b                                            ; $6e26: $88
	ld sp, hl                                        ; $6e27: $f9
	reti                                             ; $6e28: $d9


	rst $38                                          ; $6e29: $ff
	inc bc                                           ; $6e2a: $03
	ldh a, [$03]                                     ; $6e2b: $f0 $03
	ldh a, [$03]                                     ; $6e2d: $f0 $03
	ldh a, [$03]                                     ; $6e2f: $f0 $03
	ldh a, [$03]                                     ; $6e31: $f0 $03
	ldh a, [$03]                                     ; $6e33: $f0 $03
	ldh a, [$03]                                     ; $6e35: $f0 $03
	ldh a, [$03]                                     ; $6e37: $f0 $03
	ldh a, [rHDMA3]                                  ; $6e39: $f0 $53
	ldh a, [$9c]                                     ; $6e3b: $f0 $9c
	ld bc, $0603                                     ; $6e3d: $01 $03 $06
	call c, $9dff                                    ; $6e40: $dc $ff $9d
	cp $fc                                           ; $6e43: $fe $fc
	ld l, e                                          ; $6e45: $6b
	ldh [$9d], a                                     ; $6e46: $e0 $9d
	add b                                            ; $6e48: $80
	ret nz                                           ; $6e49: $c0

	db $db                                           ; $6e4a: $db
	rst $38                                          ; $6e4b: $ff
	sbc l                                            ; $6e4c: $9d
	ld a, a                                          ; $6e4d: $7f
	ccf                                              ; $6e4e: $3f
	inc bc                                           ; $6e4f: $03
	ret nz                                           ; $6e50: $c0

	inc bc                                           ; $6e51: $03
	ldh a, [$03]                                     ; $6e52: $f0 $03
	ldh a, [$03]                                     ; $6e54: $f0 $03
	ldh a, [$3f]                                     ; $6e56: $f0 $3f
	ldh a, [$9d]                                     ; $6e58: $f0 $9d
	inc bc                                           ; $6e5a: $03
	ccf                                              ; $6e5b: $3f
	db $db                                           ; $6e5c: $db
	rst $38                                          ; $6e5d: $ff
	adc l                                            ; $6e5e: $8d
	db $fc                                           ; $6e5f: $fc
	rst JumpTable                                          ; $6e60: $c7
	ld [bc], a                                       ; $6e61: $02
	inc b                                            ; $6e62: $04
	add hl, bc                                       ; $6e63: $09
	nop                                              ; $6e64: $00
	ld [de], a                                       ; $6e65: $12
	ld a, a                                          ; $6e66: $7f
	push hl                                          ; $6e67: $e5
	call $f9fd                                       ; $6e68: $cd $fd $f9
	ldh a, [$f0]                                     ; $6e6b: $f0 $f0
	and $9f                                          ; $6e6d: $e6 $9f
	ld a, b                                          ; $6e6f: $78
	ldh [rPCM34], a                                  ; $6e70: $e0 $77
	ld b, e                                          ; $6e72: $43
	sbc e                                            ; $6e73: $9b
	ld b, b                                          ; $6e74: $40
	ldh a, [$7f]                                     ; $6e75: $f0 $7f
	rst GetHLinHL                                          ; $6e77: $cf
	ld [hl], e                                       ; $6e78: $73
	ld b, e                                          ; $6e79: $43
	sbc l                                            ; $6e7a: $9d
	rst GetHLinHL                                          ; $6e7b: $cf
	ld hl, sp+$67                                    ; $6e7c: $f8 $67
	ld b, b                                          ; $6e7e: $40
	sbc [hl]                                         ; $6e7f: $9e
	ldh [$da], a                                     ; $6e80: $e0 $da
	rst $38                                          ; $6e82: $ff
	sbc [hl]                                         ; $6e83: $9e
	sbc a                                            ; $6e84: $9f
	ld a, [$019e]                                    ; $6e85: $fa $9e $01
	jp c, $9eff                                      ; $6e88: $da $ff $9e

	cp $fb                                           ; $6e8b: $fe $fb
	sbc l                                            ; $6e8d: $9d
	ld a, [bc]                                       ; $6e8e: $0a
	ld d, l                                          ; $6e8f: $55
	db $db                                           ; $6e90: $db
	rst $38                                          ; $6e91: $ff
	sbc l                                            ; $6e92: $9d
	push af                                          ; $6e93: $f5
	xor d                                            ; $6e94: $aa
	db $fd                                           ; $6e95: $fd
	sbc h                                            ; $6e96: $9c
	ld [bc], a                                       ; $6e97: $02
	dec d                                            ; $6e98: $15
	xor d                                            ; $6e99: $aa
	ld [hl], e                                       ; $6e9a: $73
	ldh a, [$9c]                                     ; $6e9b: $f0 $9c
	db $fd                                           ; $6e9d: $fd
	ld [$7355], a                                    ; $6e9e: $ea $55 $73
	ldh a, [$9b]                                     ; $6ea1: $f0 $9b
	ld bc, $bf57                                     ; $6ea3: $01 $57 $bf
	ld e, a                                          ; $6ea6: $5f
	ld [hl], e                                       ; $6ea7: $73
	db $d3                                           ; $6ea8: $d3
	sbc h                                            ; $6ea9: $9c
	xor b                                            ; $6eaa: $a8
	ld b, b                                          ; $6eab: $40
	and d                                            ; $6eac: $a2
	ld a, e                                          ; $6ead: $7b
	ldh a, [c]                                       ; $6eae: $f2
	sbc d                                            ; $6eaf: $9a
	dec bc                                           ; $6eb0: $0b
	ld d, l                                          ; $6eb1: $55
	xor d                                            ; $6eb2: $aa
	ld [hl], l                                       ; $6eb3: $75
	cp $7b                                           ; $6eb4: $fe $7b
	ldh a, [c]                                       ; $6eb6: $f2
	ld a, a                                          ; $6eb7: $7f
	cp $7f                                           ; $6eb8: $fe $7f
	sbc c                                            ; $6eba: $99
	add b                                            ; $6ebb: $80
	add e                                            ; $6ebc: $83
	rlca                                             ; $6ebd: $07
	inc e                                            ; $6ebe: $1c
	rlca                                             ; $6ebf: $07
	add hl, bc                                       ; $6ec0: $09
	ld [hl], b                                       ; $6ec1: $70
	call nz, Call_044_795a                           ; $6ec2: $c4 $5a $79
	cp $23                                           ; $6ec5: $fe $23
	add hl, bc                                       ; $6ec7: $09
	rra                                              ; $6ec8: $1f
	rlca                                             ; $6ec9: $07
	rrca                                             ; $6eca: $0f
	adc l                                            ; $6ecb: $8d
	adc $8f                                          ; $6ecc: $ce $8f
	ld e, a                                          ; $6ece: $5f
	ldh [c], a                                       ; $6ecf: $e2
	ld [de], a                                       ; $6ed0: $12
	adc $e1                                          ; $6ed1: $ce $e1
	ld b, e                                          ; $6ed3: $43
	sbc a                                            ; $6ed4: $9f
	ld [hl], b                                       ; $6ed5: $70
	add b                                            ; $6ed6: $80
	dec e                                            ; $6ed7: $1d
	db $fd                                           ; $6ed8: $fd
	pop af                                           ; $6ed9: $f1
	rst $38                                          ; $6eda: $ff
	sbc l                                            ; $6edb: $9d
	cp a                                             ; $6edc: $bf
	ld a, a                                          ; $6edd: $7f
	db $fd                                           ; $6ede: $fd
	ld a, a                                          ; $6edf: $7f
	ret nc                                           ; $6ee0: $d0

	ld a, a                                          ; $6ee1: $7f
	cp $dd                                           ; $6ee2: $fe $dd
	rst $38                                          ; $6ee4: $ff
	ld a, e                                          ; $6ee5: $7b
	ld sp, hl                                        ; $6ee6: $f9
	sbc [hl]                                         ; $6ee7: $9e
	ld d, l                                          ; $6ee8: $55
	cp $9e                                           ; $6ee9: $fe $9e
	ld a, [hl+]                                      ; $6eeb: $2a
	ld l, e                                          ; $6eec: $6b
	ldh a, [$9e]                                     ; $6eed: $f0 $9e
	push de                                          ; $6eef: $d5
	ld l, a                                          ; $6ef0: $6f
	ldh a, [$7b]                                     ; $6ef1: $f0 $7b
	sub e                                            ; $6ef3: $93
	ld [hl], e                                       ; $6ef4: $73
	ldh a, [$7b]                                     ; $6ef5: $f0 $7b
	sub e                                            ; $6ef7: $93
	ld [hl], e                                       ; $6ef8: $73
	ldh a, [$73]                                     ; $6ef9: $f0 $73
	ld sp, hl                                        ; $6efb: $f9
	ld a, e                                          ; $6efc: $7b
	ldh a, [$73]                                     ; $6efd: $f0 $73
	ld sp, hl                                        ; $6eff: $f9
	ccf                                              ; $6f00: $3f
	ldh a, [$6f]                                     ; $6f01: $f0 $6f
	ld sp, hl                                        ; $6f03: $f9
	ld a, a                                          ; $6f04: $7f
	ldh a, [$6f]                                     ; $6f05: $f0 $6f
	ld sp, hl                                        ; $6f07: $f9
	rst SubAFromDE                                          ; $6f08: $df
	ld d, l                                          ; $6f09: $55
	ld l, e                                          ; $6f0a: $6b
	ldh a, [rOCPD]                                   ; $6f0b: $f0 $6b
	ld sp, hl                                        ; $6f0d: $f9
	ld b, e                                          ; $6f0e: $43
	ldh a, [$7f]                                     ; $6f0f: $f0 $7f
	ld b, l                                          ; $6f11: $45
	sub b                                            ; $6f12: $90
	ld e, e                                          ; $6f13: $5b
	xor [hl]                                         ; $6f14: $ae
	ld d, a                                          ; $6f15: $57
	xor e                                            ; $6f16: $ab
	ld d, l                                          ; $6f17: $55
	xor d                                            ; $6f18: $aa
	and b                                            ; $6f19: $a0
	ld e, a                                          ; $6f1a: $5f
	xor h                                            ; $6f1b: $ac
	ld d, h                                          ; $6f1c: $54
	xor e                                            ; $6f1d: $ab
	ld d, l                                          ; $6f1e: $55
	xor e                                            ; $6f1f: $ab
	ld d, l                                          ; $6f20: $55
	add d                                            ; $6f21: $82
	ld a, d                                          ; $6f22: $7a
	cp l                                             ; $6f23: $bd
	sbc d                                            ; $6f24: $9a
	rst $38                                          ; $6f25: $ff
	ldh a, [$f3]                                     ; $6f26: $f0 $f3
	ldh a, [$7d]                                     ; $6f28: $f0 $7d
	ld a, e                                          ; $6f2a: $7b
	ld b, $97                                        ; $6f2b: $06 $97
	ret nz                                           ; $6f2d: $c0

	rst SubAFromBC                                          ; $6f2e: $e7
	di                                               ; $6f2f: $f3
	di                                               ; $6f30: $f3
	db $fc                                           ; $6f31: $fc
	rst $38                                          ; $6f32: $ff
	rst $38                                          ; $6f33: $ff
	ld bc, $ab7a                                     ; $6f34: $01 $7a $ab
	sbc h                                            ; $6f37: $9c
	rrca                                             ; $6f38: $0f
	sbc c                                            ; $6f39: $99
	jr nc, @+$7c                                     ; $6f3a: $30 $7a

	push bc                                          ; $6f3c: $c5
	rst SubAFromDE                                          ; $6f3d: $df
	rst $38                                          ; $6f3e: $ff
	sub e                                            ; $6f3f: $93
	ldh a, [$e8]                                     ; $6f40: $f0 $e8
	rst $38                                          ; $6f42: $ff
	rst $38                                          ; $6f43: $ff
	add c                                            ; $6f44: $81
	rst $38                                          ; $6f45: $ff
	nop                                              ; $6f46: $00
	ld bc, $cf82                                     ; $6f47: $01 $82 $cf
	ld [hl], e                                       ; $6f4a: $73
	db $10                                           ; $6f4b: $10
	ld a, e                                          ; $6f4c: $7b
	ldh a, [$8b]                                     ; $6f4d: $f0 $8b
	cp $7c                                           ; $6f4f: $fe $7c
	rlca                                             ; $6f51: $07
	di                                               ; $6f52: $f3
	ldh [$bf], a                                     ; $6f53: $e0 $bf

Call_044_6f55:
	ld b, [hl]                                       ; $6f55: $46
	cp $fe                                           ; $6f56: $fe $fe
	db $fc                                           ; $6f58: $fc
	ld hl, sp-$03                                    ; $6f59: $f8 $fd
	nop                                              ; $6f5b: $00
	nop                                              ; $6f5c: $00
	dec a                                            ; $6f5d: $3d
	ld a, l                                          ; $6f5e: $7d
	ld a, c                                          ; $6f5f: $79
	ld a, e                                          ; $6f60: $7b
	xor d                                            ; $6f61: $aa
	push de                                          ; $6f62: $d5
	ld [hl], e                                       ; $6f63: $73
	ld b, c                                          ; $6f64: $41
	ld a, e                                          ; $6f65: $7b
	sbc b                                            ; $6f66: $98
	ld [hl], e                                       ; $6f67: $73
	ld b, c                                          ; $6f68: $41
	inc hl                                           ; $6f69: $23
	adc b                                            ; $6f6a: $88
	ld h, a                                          ; $6f6b: $67
	ldh a, [$80]                                     ; $6f6c: $f0 $80
	xor a                                            ; $6f6e: $af
	ld e, a                                          ; $6f6f: $5f
	cp a                                             ; $6f70: $bf
	ld a, a                                          ; $6f71: $7f
	ld a, a                                          ; $6f72: $7f
	cp a                                             ; $6f73: $bf
	rst SubAFromDE                                          ; $6f74: $df
	rst $38                                          ; $6f75: $ff
	ld d, b                                          ; $6f76: $50
	xor b                                            ; $6f77: $a8
	ld c, b                                          ; $6f78: $48
	add d                                            ; $6f79: $82
	add l                                            ; $6f7a: $85
	jp $a065                                         ; $6f7b: $c3 $65 $a0


	adc [hl]                                         ; $6f7e: $8e
	ld c, b                                          ; $6f7f: $48
	ld d, b                                          ; $6f80: $50
	xor h                                            ; $6f81: $ac
	ld b, c                                          ; $6f82: $41
	ld d, c                                          ; $6f83: $51
	ld h, d                                          ; $6f84: $62
	pop de                                           ; $6f85: $d1
	ld a, a                                          ; $6f86: $7f
	scf                                              ; $6f87: $37
	cpl                                              ; $6f88: $2f
	sbc a                                            ; $6f89: $9f
	ld a, $2e                                        ; $6f8a: $3e $2e
	sub a                                            ; $6f8c: $97
	add b                                            ; $6f8d: $80
	ld l, $20                                        ; $6f8e: $2e $20
	ld b, l                                          ; $6f90: $45
	ld b, e                                          ; $6f91: $43
	or a                                             ; $6f92: $b7
	inc h                                            ; $6f93: $24
	ret z                                            ; $6f94: $c8

	sub b                                            ; $6f95: $90
	ld bc, $baff                                     ; $6f96: $01 $ff $ba
	cp l                                             ; $6f99: $bd
	ld [$e7d1], sp                                   ; $6f9a: $08 $d1 $e7
	ld h, l                                          ; $6f9d: $65
	cp $6f                                           ; $6f9e: $fe $6f
	xor e                                            ; $6fa0: $ab
	inc c                                            ; $6fa1: $0c
	db $10                                           ; $6fa2: $10
	and d                                            ; $6fa3: $a2
	ld e, e                                          ; $6fa4: $5b
	and b                                            ; $6fa5: $a0
	ret nz                                           ; $6fa6: $c0

	rst $38                                          ; $6fa7: $ff
	ld [hl], a                                       ; $6fa8: $77
	di                                               ; $6fa9: $f3
	rst AddAOntoHL                                          ; $6faa: $ef
	rst SubAFromDE                                          ; $6fab: $df
	cp a                                             ; $6fac: $bf
	sbc l                                            ; $6fad: $9d
	rra                                              ; $6fae: $1f
	ld a, $7b                                        ; $6faf: $3e $7b
	cp h                                             ; $6fb1: $bc
	sbc h                                            ; $6fb2: $9c
	cp a                                             ; $6fb3: $bf
	sub l                                            ; $6fb4: $95
	jp z, $0273                                      ; $6fb5: $ca $73 $02

	sub a                                            ; $6fb8: $97
	ld b, b                                          ; $6fb9: $40
	ret nz                                           ; $6fba: $c0

	ld h, b                                          ; $6fbb: $60
	ld c, b                                          ; $6fbc: $48
	rst JumpTable                                          ; $6fbd: $c7
	ld d, l                                          ; $6fbe: $55
	xor d                                            ; $6fbf: $aa
	ld d, a                                          ; $6fc0: $57
	ld a, e                                          ; $6fc1: $7b
	dec b                                            ; $6fc2: $05
	ld a, a                                          ; $6fc3: $7f
	ld h, a                                          ; $6fc4: $67
	ld a, a                                          ; $6fc5: $7f
	ldh a, [$9e]                                     ; $6fc6: $f0 $9e
	xor b                                            ; $6fc8: $a8
	ld [hl], d                                       ; $6fc9: $72
	ld h, l                                          ; $6fca: $65
	ld a, e                                          ; $6fcb: $7b
	db $f4                                           ; $6fcc: $f4
	ld a, e                                          ; $6fcd: $7b
	sbc $7e                                          ; $6fce: $de $7e
	ld c, b                                          ; $6fd0: $48
	ld [hl], d                                       ; $6fd1: $72
	and [hl]                                         ; $6fd2: $a6
	ld a, d                                          ; $6fd3: $7a
	jr c, @+$79                                      ; $6fd4: $38 $77

	ldh a, [$9d]                                     ; $6fd6: $f0 $9d
	ld e, a                                          ; $6fd8: $5f
	ld a, [$7877]                                    ; $6fd9: $fa $77 $78
	cp $9e                                           ; $6fdc: $fe $9e
	dec b                                            ; $6fde: $05
	ld [hl], a                                       ; $6fdf: $77
	ld a, b                                          ; $6fe0: $78
	sbc [hl]                                         ; $6fe1: $9e
	db $fd                                           ; $6fe2: $fd
	ld l, e                                          ; $6fe3: $6b
	ld l, b                                          ; $6fe4: $68
	sbc [hl]                                         ; $6fe5: $9e
	ld [bc], a                                       ; $6fe6: $02
	ld l, a                                          ; $6fe7: $6f
	ld l, b                                          ; $6fe8: $68
	sbc l                                            ; $6fe9: $9d
	cp [hl]                                          ; $6fea: $be
	ld a, a                                          ; $6feb: $7f
	ld l, a                                          ; $6fec: $6f
	ldh a, [$9d]                                     ; $6fed: $f0 $9d
	ld b, c                                          ; $6fef: $41
	add b                                            ; $6ff0: $80
	ld [bc], a                                       ; $6ff1: $02
	ret nz                                           ; $6ff2: $c0

	ld [hl], a                                       ; $6ff3: $77
	cp $9e                                           ; $6ff4: $fe $9e
	ld d, h                                          ; $6ff6: $54
	ld l, e                                          ; $6ff7: $6b
	rst FarCall                                          ; $6ff8: $f7
	ld a, d                                          ; $6ff9: $7a
	cp l                                             ; $6ffa: $bd
	ld [hl], e                                       ; $6ffb: $73
	cp $80                                           ; $6ffc: $fe $80
	di                                               ; $6ffe: $f3
	pop af                                           ; $6fff: $f1
	ld d, e                                          ; $7000: $53
	and d                                            ; $7001: $a2
	ld d, d                                          ; $7002: $52
	and e                                            ; $7003: $a3
	ld d, e                                          ; $7004: $53
	and e                                            ; $7005: $a3
	di                                               ; $7006: $f3
	ld [hl], d                                       ; $7007: $72
	and d                                            ; $7008: $a2
	ld d, e                                          ; $7009: $53
	and e                                            ; $700a: $a3
	ld d, d                                          ; $700b: $52
	and d                                            ; $700c: $a2
	ld d, e                                          ; $700d: $53
	inc h                                            ; $700e: $24
	or h                                             ; $700f: $b4
	sub c                                            ; $7010: $91
	ld h, c                                          ; $7011: $61
	ld d, d                                          ; $7012: $52
	xor b                                            ; $7013: $a8
	adc d                                            ; $7014: $8a
	jp nz, $0ac2                                     ; $7015: $c2 $c2 $0a

	jr nz, jr_044_701c                               ; $7018: $20 $02

	jr nz, @+$12                                     ; $701a: $20 $10

jr_044_701c:
	ld b, b                                          ; $701c: $40
	adc d                                            ; $701d: $8a
	ld h, b                                          ; $701e: $60
	jr @+$04                                         ; $701f: $18 $02

	jp nz, Jump_044_767a                             ; $7021: $c2 $7a $76

	call z, $02b0                                    ; $7024: $cc $b0 $02
	ld b, $94                                        ; $7027: $06 $94
	inc e                                            ; $7029: $1c
	inc c                                            ; $702a: $0c
	ld [$1e1a], sp                                   ; $702b: $08 $1a $1e
	ld a, h                                          ; $702e: $7c
	db $f4                                           ; $702f: $f4
	db $fd                                           ; $7030: $fd
	ldh a, [c]                                       ; $7031: $f2
	push bc                                          ; $7032: $c5
	ld a, d                                          ; $7033: $7a
	push de                                          ; $7034: $d5
	sub [hl]                                         ; $7035: $96
	rst SubAFromHL                                          ; $7036: $d7
	ld a, e                                          ; $7037: $7b
	ld [hl], d                                       ; $7038: $72
	dec c                                            ; $7039: $0d
	ld a, [hl-]                                      ; $703a: $3a
	ld d, l                                          ; $703b: $55
	ld a, [hl+]                                      ; $703c: $2a
	ld d, l                                          ; $703d: $55
	jr z, jr_044_70af                                ; $703e: $28 $6f

	cp d                                             ; $7040: $ba
	sbc [hl]                                         ; $7041: $9e
	xor e                                            ; $7042: $ab
	ld l, d                                          ; $7043: $6a
	ld b, c                                          ; $7044: $41
	sbc [hl]                                         ; $7045: $9e
	ld d, h                                          ; $7046: $54
	ld l, d                                          ; $7047: $6a
	ld sp, $f47d                                     ; $7048: $31 $7d $f4
	ld l, a                                          ; $704b: $6f
	ldh a, [rIE]                                     ; $704c: $f0 $ff
	ld a, e                                          ; $704e: $7b
	db $e4                                           ; $704f: $e4
	ld a, e                                          ; $7050: $7b
	cp $9e                                           ; $7051: $fe $9e
	cp $7b                                           ; $7053: $fe $7b
	ld a, b                                          ; $7055: $78
	ld a, a                                          ; $7056: $7f
	add [hl]                                         ; $7057: $86
	ld a, a                                          ; $7058: $7f
	cp $80                                           ; $7059: $fe $80
	ld bc, $5700                                     ; $705b: $01 $00 $57
	rst $38                                          ; $705e: $ff
	ei                                               ; $705f: $fb
	push af                                          ; $7060: $f5
	ld a, [$faf5]                                    ; $7061: $fa $f5 $fa
	push hl                                          ; $7064: $e5
	db $fc                                           ; $7065: $fc
	add b                                            ; $7066: $80
	dec b                                            ; $7067: $05
	ld a, [bc]                                       ; $7068: $0a
	push hl                                          ; $7069: $e5
	adc d                                            ; $706a: $8a
	dec b                                            ; $706b: $05
	ld a, [de]                                       ; $706c: $1a
	jr nz, @+$6f                                     ; $706d: $20 $6d

	adc b                                            ; $706f: $88
	ld d, b                                          ; $7070: $50
	and b                                            ; $7071: $a0
	add $2d                                          ; $7072: $c6 $2d
	db $e4                                           ; $7074: $e4
	ld e, c                                          ; $7075: $59
	ld d, $27                                        ; $7076: $16 $27
	inc bc                                           ; $7078: $03
	rlca                                             ; $7079: $07
	sbc e                                            ; $707a: $9b
	dec de                                           ; $707b: $1b
	sub e                                            ; $707c: $93
	ld bc, $7b29                                     ; $707d: $01 $29 $7b
	reti                                             ; $7080: $d9


	sbc d                                            ; $7081: $9a
	ld a, b                                          ; $7082: $78
	ld d, a                                          ; $7083: $57
	ld b, b                                          ; $7084: $40
	ld a, [hl]                                       ; $7085: $7e
	ld a, h                                          ; $7086: $7c
	sbc $ff                                          ; $7087: $de $ff
	adc a                                            ; $7089: $8f
	rst SubAFromDE                                          ; $708a: $df
	sbc b                                            ; $708b: $98
	add c                                            ; $708c: $81
	add c                                            ; $708d: $81
	ld e, e                                          ; $708e: $5b
	jr nz, jr_044_70ea                               ; $708f: $20 $59

	db $10                                           ; $7091: $10
	ld [bc], a                                       ; $7092: $02
	inc b                                            ; $7093: $04
	add h                                            ; $7094: $84
	ld hl, $c380                                     ; $7095: $21 $80 $c3
	and $ef                                          ; $7098: $e6 $ef
	ld [hl], a                                       ; $709a: $77
	db $ed                                           ; $709b: $ed
	sbc d                                            ; $709c: $9a
	and e                                            ; $709d: $a3

Jump_044_709e:
	db $e3                                           ; $709e: $e3
	db $e3                                           ; $709f: $e3
	ld b, c                                          ; $70a0: $41
	jp $fbde                                         ; $70a1: $c3 $de $fb


	sbc e                                            ; $70a4: $9b
	ld a, a                                          ; $70a5: $7f
	inc a                                            ; $70a6: $3c
	inc e                                            ; $70a7: $1c
	cp $dd                                           ; $70a8: $fe $dd
	db $fc                                           ; $70aa: $fc
	ld l, e                                          ; $70ab: $6b
	adc b                                            ; $70ac: $88
	sbc [hl]                                         ; $70ad: $9e
	add hl, bc                                       ; $70ae: $09

jr_044_70af:
	ld l, e                                          ; $70af: $6b
	ld a, b                                          ; $70b0: $78
	sbc [hl]                                         ; $70b1: $9e
	or $6b                                           ; $70b2: $f6 $6b
	add hl, hl                                       ; $70b4: $29
	sbc [hl]                                         ; $70b5: $9e
	dec sp                                           ; $70b6: $3b
	ld l, e                                          ; $70b7: $6b
	add hl, de                                       ; $70b8: $19
	sbc [hl]                                         ; $70b9: $9e
	call nz, $f06b                                   ; $70ba: $c4 $6b $f0

jr_044_70bd:
	sbc [hl]                                         ; $70bd: $9e
	xor a                                            ; $70be: $af
	ld l, e                                          ; $70bf: $6b
	ldh a, [$9e]                                     ; $70c0: $f0 $9e
	ld d, b                                          ; $70c2: $50
	ld l, a                                          ; $70c3: $6f
	ldh a, [c]                                       ; $70c4: $f2
	sbc [hl]                                         ; $70c5: $9e
	ld a, a                                          ; $70c6: $7f
	ld l, l                                          ; $70c7: $6d
	add d                                            ; $70c8: $82
	sbc l                                            ; $70c9: $9d
	ld d, b                                          ; $70ca: $50
	add b                                            ; $70cb: $80
	ld b, l                                          ; $70cc: $45
	inc [hl]                                         ; $70cd: $34
	ld [hl], a                                       ; $70ce: $77
	ldh a, [$9e]                                     ; $70cf: $f0 $9e
	cp a                                             ; $70d1: $bf
	ld l, e                                          ; $70d2: $6b
	ldh a, [$9e]                                     ; $70d3: $f0 $9e
	ld b, b                                          ; $70d5: $40
	ld [hl], e                                       ; $70d6: $73
	ldh a, [$73]                                     ; $70d7: $f0 $73
	ldh a, [c]                                       ; $70d9: $f2
	ld a, e                                          ; $70da: $7b
	ldh a, [$73]                                     ; $70db: $f0 $73
	ldh a, [c]                                       ; $70dd: $f2
	ld a, e                                          ; $70de: $7b
	ldh a, [$da]                                     ; $70df: $f0 $da
	rst $38                                          ; $70e1: $ff
	ld [hl], b                                       ; $70e2: $70
	or a                                             ; $70e3: $b7
	cp $df                                           ; $70e4: $fe $df
	di                                               ; $70e6: $f3
	adc b                                            ; $70e7: $88
	ldh [c], a                                       ; $70e8: $e2
	rst GetHLinHL                                          ; $70e9: $cf

jr_044_70ea:
	db $d3                                           ; $70ea: $d3
	ret nz                                           ; $70eb: $c0

	xor h                                            ; $70ec: $ac
	add hl, bc                                       ; $70ed: $09
	nop                                              ; $70ee: $00
	stop                                             ; $70ef: $10 $00
	jr nc, jr_044_7119                               ; $70f1: $30 $26

	inc h                                            ; $70f3: $24
	ld b, b                                          ; $70f4: $40
	ret nz                                           ; $70f5: $c0

	ldh [$f4], a                                     ; $70f6: $e0 $f4
	nop                                              ; $70f8: $00
	db $f4                                           ; $70f9: $f4
	ldh a, [$15]                                     ; $70fa: $f0 $15
	ld e, a                                          ; $70fc: $5f
	ld h, c                                          ; $70fd: $61
	rra                                              ; $70fe: $1f
	ld a, b                                          ; $70ff: $78
	adc c                                            ; $7100: $89
	add a                                            ; $7101: $87
	nop                                              ; $7102: $00
	ld c, $3f                                        ; $7103: $0e $3f
	ldh a, [$3c]                                     ; $7105: $f0 $3c
	db $fc                                           ; $7107: $fc
	nop                                              ; $7108: $00
	rst $38                                          ; $7109: $ff
	add c                                            ; $710a: $81
	inc bc                                           ; $710b: $03
	ld b, c                                          ; $710c: $41
	ret nc                                           ; $710d: $d0

	jp nz, $0002                                     ; $710e: $c2 $02 $00

	nop                                              ; $7111: $00
	ld a, [hl]                                       ; $7112: $7e
	nop                                              ; $7113: $00
	add b                                            ; $7114: $80
	ldh [rIE], a                                     ; $7115: $e0 $ff
	ld a, l                                          ; $7117: $7d
	ld a, [hl+]                                      ; $7118: $2a

jr_044_7119:
	push af                                          ; $7119: $f5
	sbc $7f                                          ; $711a: $de $7f
	ld h, h                                          ; $711c: $64
	jr c, jr_044_70bd                                ; $711d: $38 $9e

	nop                                              ; $711f: $00
	ld a, d                                          ; $7120: $7a
	dec h                                            ; $7121: $25
	ld a, a                                          ; $7122: $7f
	ld [hl], e                                       ; $7123: $73
	sbc [hl]                                         ; $7124: $9e
	push af                                          ; $7125: $f5
	ld a, c                                          ; $7126: $79
	dec sp                                           ; $7127: $3b
	ld [hl], d                                       ; $7128: $72
	ld de, $d072                                     ; $7129: $11 $72 $d0
	ld a, h                                          ; $712c: $7c
	ld e, b                                          ; $712d: $58
	sbc [hl]                                         ; $712e: $9e
	ld e, d                                          ; $712f: $5a
	ld l, a                                          ; $7130: $6f
	ldh a, [$9d]                                     ; $7131: $f0 $9d
	ld [bc], a                                       ; $7133: $02
	and l                                            ; $7134: $a5
	ld [hl], a                                       ; $7135: $77
	ldh a, [$99]                                     ; $7136: $f0 $99
	rst $38                                          ; $7138: $ff
	xor $51                                          ; $7139: $ee $51
	and b                                            ; $713b: $a0
	push de                                          ; $713c: $d5
	ld a, [$80fe]                                    ; $713d: $fa $fe $80
	ld de, $5fae                                     ; $7140: $11 $ae $5f
	ld a, [hl+]                                      ; $7143: $2a
	dec b                                            ; $7144: $05
	cp $fe                                           ; $7145: $fe $fe
	ld sp, $2707                                     ; $7147: $31 $07 $27
	cp a                                             ; $714a: $bf
	ei                                               ; $714b: $fb
	cp [hl]                                          ; $714c: $be
	ret                                              ; $714d: $c9


	ld bc, $ffcf                                     ; $714e: $01 $cf $ff
	rst SubAFromDE                                          ; $7151: $df
	ld a, a                                          ; $7152: $7f
	rst $38                                          ; $7153: $ff
	ld e, a                                          ; $7154: $5f
	jr c, jr_044_7158                                ; $7155: $38 $01

	nop                                              ; $7157: $00

jr_044_7158:
	and e                                            ; $7158: $a3
	ld d, h                                          ; $7159: $54
	xor e                                            ; $715a: $ab
	ld d, h                                          ; $715b: $54
	cp d                                             ; $715c: $ba
	push bc                                          ; $715d: $c5
	rst $38                                          ; $715e: $ff
	sbc l                                            ; $715f: $9d
	rst $38                                          ; $7160: $ff
	db $fc                                           ; $7161: $fc
	ld a, b                                          ; $7162: $78

jr_044_7163:
	dec a                                            ; $7163: $3d
	sub l                                            ; $7164: $95
	rst $38                                          ; $7165: $ff
	db $ec                                           ; $7166: $ec
	ld c, $b5                                        ; $7167: $0e $b5
	ld a, [bc]                                       ; $7169: $0a
	sub h                                            ; $716a: $94
	or h                                             ; $716b: $b4
	nop                                              ; $716c: $00
	ld bc, $761f                                     ; $716d: $01 $1f $76
	db $d3                                           ; $7170: $d3
	sub h                                            ; $7171: $94
	ld b, d                                          ; $7172: $42
	ret nz                                           ; $7173: $c0

	ldh [$03], a                                     ; $7174: $e0 $03
	scf                                              ; $7176: $37
	ld [hl], e                                       ; $7177: $73
	rst $38                                          ; $7178: $ff
	rst $38                                          ; $7179: $ff
	inc bc                                           ; $717a: $03
	add c                                            ; $717b: $81
	rlca                                             ; $717c: $07
	db $db                                           ; $717d: $db
	rst $38                                          ; $717e: $ff
	ld a, a                                          ; $717f: $7f
	rst GetHLinHL                                          ; $7180: $cf
	sub [hl]                                         ; $7181: $96
	db $f4                                           ; $7182: $f4
	ldh a, [c]                                       ; $7183: $f2
	and $10                                          ; $7184: $e6 $10
	ld hl, sp-$10                                    ; $7186: $f8 $f0
	ld bc, $fb03                                     ; $7188: $01 $03 $fb
	jp c, $95ff                                      ; $718b: $da $ff $95

	add c                                            ; $718e: $81
	add b                                            ; $718f: $80
	jr z, jr_044_71ea                                ; $7190: $28 $58

	xor d                                            ; $7192: $aa
	ld d, l                                          ; $7193: $55
	xor h                                            ; $7194: $ac
	ld a, [hl]                                       ; $7195: $7e
	ld a, [hl]                                       ; $7196: $7e
	ld a, a                                          ; $7197: $7f
	ld h, a                                          ; $7198: $67
	sbc $dd                                          ; $7199: $de $dd
	rst $38                                          ; $719b: $ff
	sbc l                                            ; $719c: $9d
	and b                                            ; $719d: $a0
	rst $38                                          ; $719e: $ff
	ld [hl], a                                       ; $719f: $77
	ld de, $809d                                     ; $71a0: $11 $9d $80
	ret nz                                           ; $71a3: $c0

	reti                                             ; $71a4: $d9


	rst $38                                          ; $71a5: $ff
	ld a, a                                          ; $71a6: $7f
	inc a                                            ; $71a7: $3c
	ei                                               ; $71a8: $fb
	inc bc                                           ; $71a9: $03
	ldh a, [rTAC]                                    ; $71aa: $f0 $07
	ldh a, [$78]                                     ; $71ac: $f0 $78
	ld h, c                                          ; $71ae: $61
	sbc d                                            ; $71af: $9a
	db $fc                                           ; $71b0: $fc
	ei                                               ; $71b1: $fb
	rst SubAFromBC                                          ; $71b2: $e7
	ld e, $f8                                        ; $71b3: $1e $f8
	ld a, b                                          ; $71b5: $78

jr_044_71b6:
	ld h, e                                          ; $71b6: $63
	add b                                            ; $71b7: $80
	inc bc                                           ; $71b8: $03
	inc b                                            ; $71b9: $04
	add hl, de                                       ; $71ba: $19
	rst SubAFromBC                                          ; $71bb: $e7
	dec e                                            ; $71bc: $1d
	rst FarCall                                          ; $71bd: $f7
	sbc l                                            ; $71be: $9d
	add [hl]                                         ; $71bf: $86
	dec de                                           ; $71c0: $1b
	ld l, a                                          ; $71c1: $6f
	rst FarCall                                          ; $71c2: $f7
	ld c, h                                          ; $71c3: $4c
	add b                                            ; $71c4: $80
	dec bc                                           ; $71c5: $0b
	inc bc                                           ; $71c6: $03
	rra                                              ; $71c7: $1f
	inc a                                            ; $71c8: $3c
	ldh a, [hDisp0_WY]                                     ; $71c9: $f0 $88
	inc sp                                           ; $71cb: $33
	nop                                              ; $71cc: $00
	sub b                                            ; $71cd: $90
	sub a                                            ; $71ce: $97
	add hl, bc                                       ; $71cf: $09
	ld [hl], b                                       ; $71d0: $70
	ld c, c                                          ; $71d1: $49
	ld de, $0031                                     ; $71d2: $11 $31 $00
	or d                                             ; $71d5: $b2
	ret z                                            ; $71d6: $c8

	sbc l                                            ; $71d7: $9d
	jr nc, jr_044_7163                               ; $71d8: $30 $89

	ld [hl], h                                       ; $71da: $74
	ld a, $92                                        ; $71db: $3e $92
	ld c, c                                          ; $71dd: $49
	db $f4                                           ; $71de: $f4
	dec a                                            ; $71df: $3d
	rst $38                                          ; $71e0: $ff
	cp a                                             ; $71e1: $bf
	dec de                                           ; $71e2: $1b
	db $dd                                           ; $71e3: $dd
	nop                                              ; $71e4: $00
	sub d                                            ; $71e5: $92
	jr c, jr_044_71b6                                ; $71e6: $38 $ce

	inc bc                                           ; $71e8: $03
	ld b, b                                          ; $71e9: $40

jr_044_71ea:
	ld a, e                                          ; $71ea: $7b
	ldh a, [hDisp1_WX]                                     ; $71eb: $f0 $96
	ld l, l                                          ; $71ed: $6d
	cp a                                             ; $71ee: $bf
	sbc a                                            ; $71ef: $9f
	ld c, a                                          ; $71f0: $4f
	rst SubAFromDE                                          ; $71f1: $df
	ld [hl], h                                       ; $71f2: $74
	db $fd                                           ; $71f3: $fd
	scf                                              ; $71f4: $37
	rrca                                             ; $71f5: $0f
	ld a, e                                          ; $71f6: $7b
	ld h, d                                          ; $71f7: $62
	sbc e                                            ; $71f8: $9b
	ldh [$3b], a                                     ; $71f9: $e0 $3b
	ld c, $23                                        ; $71fb: $0e $23
	ld l, e                                          ; $71fd: $6b
	sbc [hl]                                         ; $71fe: $9e
	sbc l                                            ; $71ff: $9d
	nop                                              ; $7200: $00
	rst JumpTable                                          ; $7201: $c7
	ei                                               ; $7202: $fb
	sbc l                                            ; $7203: $9d
	sbc a                                            ; $7204: $9f
	rst SubAFromBC                                          ; $7205: $e7
	rlca                                             ; $7206: $07
	ld [hl], b                                       ; $7207: $70
	ld [hl], l                                       ; $7208: $75
	cp e                                             ; $7209: $bb
	ld [hl], a                                       ; $720a: $77
	ldh a, [$9e]                                     ; $720b: $f0 $9e
	jr jr_044_725a                                   ; $720d: $18 $4b

	ldh [$9b], a                                     ; $720f: $e0 $9b
	rrca                                             ; $7211: $0f
	inc bc                                           ; $7212: $03
	ld bc, $7701                                     ; $7213: $01 $01 $77
	ldh a, [$8a]                                     ; $7216: $f0 $8a
	ld c, b                                          ; $7218: $48
	and c                                            ; $7219: $a1
	ld b, l                                          ; $721a: $45
	ld a, [hl]                                       ; $721b: $7e
	ld [hl], b                                       ; $721c: $70
	pop hl                                           ; $721d: $e1
	and $97                                          ; $721e: $e6 $97
	rst SubAFromBC                                          ; $7220: $e7
	rst SubAFromDE                                          ; $7221: $df
	sbc a                                            ; $7222: $9f
	adc a                                            ; $7223: $8f
	adc a                                            ; $7224: $8f
	rra                                              ; $7225: $1f
	rra                                              ; $7226: $1f
	rst $38                                          ; $7227: $ff
	rra                                              ; $7228: $1f
	adc [hl]                                         ; $7229: $8e
	call nz, $fdc0                                   ; $722a: $c4 $c0 $fd
	sub $ff                                          ; $722d: $d6 $ff
	add a                                            ; $722f: $87
	db $10                                           ; $7230: $10
	ld h, l                                          ; $7231: $65
	inc de                                           ; $7232: $13
	ld [hl], h                                       ; $7233: $74
	cp d                                             ; $7234: $ba
	inc c                                            ; $7235: $0c
	ld e, $34                                        ; $7236: $1e $34
	xor a                                            ; $7238: $af
	sbc a                                            ; $7239: $9f
	cpl                                              ; $723a: $2f
	dec sp                                           ; $723b: $3b
	push de                                          ; $723c: $d5
	and e                                            ; $723d: $a3
	ld h, l                                          ; $723e: $65
	dec bc                                           ; $723f: $0b
	cp l                                             ; $7240: $bd
	db $dd                                           ; $7241: $dd
	cp $ff                                           ; $7242: $fe $ff
	cp $c5                                           ; $7244: $fe $c5
	ei                                               ; $7246: $fb
	db $d3                                           ; $7247: $d3
	ld h, e                                          ; $7248: $63
	or [hl]                                          ; $7249: $b6
	sbc b                                            ; $724a: $98
	ld d, b                                          ; $724b: $50
	and h                                            ; $724c: $a4
	ld c, [hl]                                       ; $724d: $4e
	and $c3                                          ; $724e: $e6 $c3
	sbc a                                            ; $7250: $9f
	rrca                                             ; $7251: $0f
	ld h, e                                          ; $7252: $63
	ldh a, [$98]                                     ; $7253: $f0 $98
	nop                                              ; $7255: $00

jr_044_7256:
	ld [$6060], sp                                   ; $7256: $08 $60 $60

jr_044_7259:
	ret nz                                           ; $7259: $c0

jr_044_725a:
	db $fc                                           ; $725a: $fc
	db $f4                                           ; $725b: $f4
	ld e, a                                          ; $725c: $5f
	ldh a, [rWX]                                     ; $725d: $f0 $4b
	ld h, [hl]                                       ; $725f: $66
	ei                                               ; $7260: $fb
	sbc [hl]                                         ; $7261: $9e
	inc bc                                           ; $7262: $03
	jp c, Jump_044_7dff                              ; $7263: $da $ff $7d

	jp nc, $f47b                                     ; $7266: $d2 $7b $f4

	sbc e                                            ; $7269: $9b
	dec c                                            ; $726a: $0d
	scf                                              ; $726b: $37
	db $dd                                           ; $726c: $dd
	halt                                             ; $726d: $76
	ld [hl], a                                       ; $726e: $77
	db $f4                                           ; $726f: $f4
	sbc e                                            ; $7270: $9b
	di                                               ; $7271: $f3
	adc $38                                          ; $7272: $ce $38
	ldh [$7b], a                                     ; $7274: $e0 $7b
	db $f4                                           ; $7276: $f4
	sbc d                                            ; $7277: $9a
	ld [hl], l                                       ; $7278: $75
	call c, Call_044_4170                            ; $7279: $dc $70 $41
	inc c                                            ; $727c: $0c
	ld a, e                                          ; $727d: $7b
	db $f4                                           ; $727e: $f4
	add b                                            ; $727f: $80

Call_044_7280:
	ldh [c], a                                       ; $7280: $e2
	add b                                            ; $7281: $80
	nop                                              ; $7282: $00

jr_044_7283:
	add d                                            ; $7283: $82
	inc bc                                           ; $7284: $03
	call c, $c770                                    ; $7285: $dc $70 $c7
	nop                                              ; $7288: $00
	ld d, e                                          ; $7289: $53
	inc l                                            ; $728a: $2c
	db $d3                                           ; $728b: $d3
	add [hl]                                         ; $728c: $86
	add b                                            ; $728d: $80
	nop                                              ; $728e: $00
	nop                                              ; $728f: $00
	rrca                                             ; $7290: $0f
	inc l                                            ; $7291: $2c
	ld [hl], e                                       ; $7292: $73
	inc l                                            ; $7293: $2c
	jr c, @+$3e                                      ; $7294: $38 $3c

	ld c, h                                          ; $7296: $4c
	nop                                              ; $7297: $00
	add [hl]                                         ; $7298: $86
	dec e                                            ; $7299: $1d
	ld l, d                                          ; $729a: $6a
	ld d, a                                          ; $729b: $57
	and e                                            ; $729c: $a3
	inc de                                           ; $729d: $13
	or e                                             ; $729e: $b3
	adc a                                            ; $729f: $8f
	rst SubAFromDE                                          ; $72a0: $df
	jr jr_044_7283                                   ; $72a1: $18 $e0

	add c                                            ; $72a3: $81
	add c                                            ; $72a4: $81
	ld bc, $a84d                                     ; $72a5: $01 $4d $a8
	ld d, l                                          ; $72a8: $55
	ret nz                                           ; $72a9: $c0

	nop                                              ; $72aa: $00
	add hl, hl                                       ; $72ab: $29
	rst AddAOntoHL                                          ; $72ac: $ef
	rst AddAOntoHL                                          ; $72ad: $ef
	pop af                                           ; $72ae: $f1
	inc bc                                           ; $72af: $03
	cp $92                                           ; $72b0: $fe $92
	add $cf                                          ; $72b2: $c6 $cf
	rst GetHLinHL                                          ; $72b4: $cf
	jr nz, jr_044_7259                               ; $72b5: $20 $a2

	ld d, h                                          ; $72b7: $54
	inc bc                                           ; $72b8: $03
	nop                                              ; $72b9: $00
	ld b, b                                          ; $72ba: $40
	ld a, h                                          ; $72bb: $7c
	ld a, h                                          ; $72bc: $7c
	rst $38                                          ; $72bd: $ff
	dec c                                            ; $72be: $0d
	ld a, e                                          ; $72bf: $7b
	ld hl, $38de                                     ; $72c0: $21 $de $38
	add l                                            ; $72c3: $85
	jp $a060                                         ; $72c4: $c3 $60 $a0


	ld a, b                                          ; $72c7: $78
	cpl                                              ; $72c8: $2f
	rlca                                             ; $72c9: $07
	ld bc, $001f                                     ; $72ca: $01 $1f $00
	add b                                            ; $72cd: $80
	jr jr_044_7256                                   ; $72ce: $18 $86

	db $10                                           ; $72d0: $10
	ld [$0002], sp                                   ; $72d1: $08 $02 $00
	halt                                             ; $72d4: $76
	db $dd                                           ; $72d5: $dd
	ccf                                              ; $72d6: $3f
	dec c                                            ; $72d7: $0d
	jp Jump_044_54b0                                 ; $72d8: $c3 $b0 $54


	db $eb                                           ; $72db: $eb
	add hl, sp                                       ; $72dc: $39
	ld c, $7b                                        ; $72dd: $0e $7b
	rst GetHLinHL                                          ; $72df: $cf
	adc [hl]                                         ; $72e0: $8e
	ld b, b                                          ; $72e1: $40
	inc l                                            ; $72e2: $2c
	inc b                                            ; $72e3: $04
	nop                                              ; $72e4: $00
	add c                                            ; $72e5: $81
	ld h, b                                          ; $72e6: $60
	ret c                                            ; $72e7: $d8

	rst FarCall                                          ; $72e8: $f7
	call c, $0d3b                                    ; $72e9: $dc $3b $0d
	rst $38                                          ; $72ec: $ff
	ld a, a                                          ; $72ed: $7f
	sbc a                                            ; $72ee: $9f
	rst SubAFromBC                                          ; $72ef: $e7
	jr c, jr_044_7301                                ; $72f0: $38 $0f

	ld a, e                                          ; $72f2: $7b
	call z, $9cfd                                    ; $72f3: $cc $fd $9c

Jump_044_72f6:
	ret nz                                           ; $72f6: $c0

	or b                                             ; $72f7: $b0
	ld l, h                                          ; $72f8: $6c
	call c, $9cff                                    ; $72f9: $dc $ff $9c
	ccf                                              ; $72fc: $3f
	rst GetHLinHL                                          ; $72fd: $cf
	di                                               ; $72fe: $f3
	cp $9e                                           ; $72ff: $fe $9e

jr_044_7301:
	ld b, c                                          ; $7301: $41
	ld a, c                                          ; $7302: $79
	dec [hl]                                         ; $7303: $35
	ld e, e                                          ; $7304: $5b
	ld b, b                                          ; $7305: $40
	sbc d                                            ; $7306: $9a
	ld [bc], a                                       ; $7307: $02
	dec bc                                           ; $7308: $0b
	ld bc, $030d                                     ; $7309: $01 $0d $03
	ld a, e                                          ; $730c: $7b
	ld b, b                                          ; $730d: $40
	sub a                                            ; $730e: $97
	db $fd                                           ; $730f: $fd
	db $f4                                           ; $7310: $f4
	cp $f2                                           ; $7311: $fe $f2
	db $fc                                           ; $7313: $fc
	db $fc                                           ; $7314: $fc
	rra                                              ; $7315: $1f
	ld a, a                                          ; $7316: $7f
	ld a, c                                          ; $7317: $79
	cp [hl]                                          ; $7318: $be
	sub h                                            ; $7319: $94
	rst FarCall                                          ; $731a: $f7
	di                                               ; $731b: $f3
	ldh a, [$e3]                                     ; $731c: $f0 $e3
	adc e                                            ; $731e: $8b
	adc c                                            ; $731f: $89
	inc c                                            ; $7320: $0c
	adc h                                            ; $7321: $8c
	db $ec                                           ; $7322: $ec
	db $ec                                           ; $7323: $ec
	cpl                                              ; $7324: $2f
	call c, $80ff                                    ; $7325: $dc $ff $80
	ld sp, hl                                        ; $7328: $f9
	ld bc, $ff00                                     ; $7329: $01 $00 $ff
	sbc a                                            ; $732c: $9f
	adc a                                            ; $732d: $8f
	db $f4                                           ; $732e: $f4
	ld hl, sp+$07                                    ; $732f: $f8 $07
	cp $ff                                           ; $7331: $fe $ff
	add hl, bc                                       ; $7333: $09
	di                                               ; $7334: $f3
	daa                                              ; $7335: $27
	add hl, de                                       ; $7336: $19
	ld [de], a                                       ; $7337: $12
	add a                                            ; $7338: $87
	xor e                                            ; $7339: $ab
	ret nc                                           ; $733a: $d0

	ld [hl], a                                       ; $733b: $77
	ld l, a                                          ; $733c: $6f
	ei                                               ; $733d: $fb
	ld d, $69                                        ; $733e: $16 $69
	add b                                            ; $7340: $80
	ret nz                                           ; $7341: $c0

	rst JumpTable                                          ; $7342: $c7

jr_044_7343:
	add [hl]                                         ; $7343: $86
	add c                                            ; $7344: $81
	add d                                            ; $7345: $82
	sub l                                            ; $7346: $95
	sbc e                                            ; $7347: $9b
	ld b, d                                          ; $7348: $42
	and l                                            ; $7349: $a5
	jp Jump_044_75e5                                 ; $734a: $c3 $e5 $75


	add l                                            ; $734d: $85
	sub e                                            ; $734e: $93
	cp a                                             ; $734f: $bf
	ld e, a                                          ; $7350: $5f
	ccf                                              ; $7351: $3f
	rra                                              ; $7352: $1f
	rrca                                             ; $7353: $0f
	ld d, [hl]                                       ; $7354: $56
	xor a                                            ; $7355: $af
	rst $38                                          ; $7356: $ff
	rst $38                                          ; $7357: $ff
	ei                                               ; $7358: $fb
	rst FarCall                                          ; $7359: $f7
	ld a, d                                          ; $735a: $7a
	reti                                             ; $735b: $d9


	rst $38                                          ; $735c: $ff
	sbc c                                            ; $735d: $99
	and $ec                                          ; $735e: $e6 $ec
	db $ec                                           ; $7360: $ec
	jr nc, jr_044_7343                               ; $7361: $30 $e0

	add b                                            ; $7363: $80
	ld h, l                                          ; $7364: $65
	halt                                             ; $7365: $76
	sub l                                            ; $7366: $95
	cp $f9                                           ; $7367: $fe $f9
	nop                                              ; $7369: $00
	nop                                              ; $736a: $00
	ld bc, $1b06                                     ; $736b: $01 $06 $1b
	ld l, h                                          ; $736e: $6c
	or c                                             ; $736f: $b1
	sub $77                                          ; $7370: $d6 $77
	db $f4                                           ; $7372: $f4
	sub d                                            ; $7373: $92
	rst SubAFromBC                                          ; $7374: $e7
	sbc [hl]                                         ; $7375: $9e
	ld a, b                                          ; $7376: $78
	ldh [$1f], a                                     ; $7377: $e0 $1f
	ld l, h                                          ; $7379: $6c
	or l                                             ; $737a: $b5
	add $d0                                          ; $737b: $c6 $d0
	ld b, c                                          ; $737d: $41
	add b                                            ; $737e: $80
	inc e                                            ; $737f: $1c
	db $e3                                           ; $7380: $e3
	ld a, e                                          ; $7381: $7b
	db $f4                                           ; $7382: $f4
	add b                                            ; $7383: $80
	adc b                                            ; $7384: $88
	jr nz, jr_044_738e                               ; $7385: $20 $07

	rlca                                             ; $7387: $07
	ret nc                                           ; $7388: $d0

	ld h, b                                          ; $7389: $60
	ld b, [hl]                                       ; $738a: $46
	ld [de], a                                       ; $738b: $12
	dec h                                            ; $738c: $25
	pop de                                           ; $738d: $d1

jr_044_738e:
	ld b, e                                          ; $738e: $43
	add [hl]                                         ; $738f: $86
	adc b                                            ; $7390: $88
	ld bc, $0d81                                     ; $7391: $01 $81 $0d
	ld e, b                                          ; $7394: $58
	ld h, [hl]                                       ; $7395: $66
	cp h                                             ; $7396: $bc
	ld a, b                                          ; $7397: $78
	ld [bc], a                                       ; $7398: $02
	sbc b                                            ; $7399: $98
	inc sp                                           ; $739a: $33
	ld c, $35                                        ; $739b: $0e $35
	ld [$a050], a                                    ; $739d: $ea $50 $a0

Call_044_73a0:
	dec a                                            ; $73a0: $3d
	rst SubAFromBC                                          ; $73a1: $e7
	call z, $f09d                                    ; $73a2: $cc $9d $f0
	ret nz                                           ; $73a5: $c0

	cp $9b                                           ; $73a6: $fe $9b
	dec a                                            ; $73a8: $3d
	ld l, d                                          ; $73a9: $6a
	call nc, Call_044_73a0                           ; $73aa: $d4 $a0 $73
	dec l                                            ; $73ad: $2d
	ld a, d                                          ; $73ae: $7a
	cp a                                             ; $73af: $bf
	db $fd                                           ; $73b0: $fd
	sbc [hl]                                         ; $73b1: $9e
	ld b, e                                          ; $73b2: $43
	ldh a, [c]                                       ; $73b3: $f2
	sbc [hl]                                         ; $73b4: $9e
	rst AddAOntoHL                                          ; $73b5: $ef
	ldh a, [c]                                       ; $73b6: $f2
	sbc [hl]                                         ; $73b7: $9e
	ld a, h                                          ; $73b8: $7c
	pop af                                           ; $73b9: $f1
	ld a, l                                          ; $73ba: $7d
	add [hl]                                         ; $73bb: $86
	ld a, c                                          ; $73bc: $79
	add h                                            ; $73bd: $84
	rst FarCall                                          ; $73be: $f7
	sbc l                                            ; $73bf: $9d
	ld [hl], $e3                                     ; $73c0: $36 $e3
	ld l, l                                          ; $73c2: $6d
	and h                                            ; $73c3: $a4
	sbc l                                            ; $73c4: $9d
	ld bc, $760c                                     ; $73c5: $01 $0c $76
	adc a                                            ; $73c8: $8f
	ld a, e                                          ; $73c9: $7b
	or b                                             ; $73ca: $b0
	add [hl]                                         ; $73cb: $86
	sub b                                            ; $73cc: $90
	db $e4                                           ; $73cd: $e4
	or b                                             ; $73ce: $b0
	ccf                                              ; $73cf: $3f
	dec bc                                           ; $73d0: $0b
	inc bc                                           ; $73d1: $03
	nop                                              ; $73d2: $00
	add b                                            ; $73d3: $80
	ld h, b                                          ; $73d4: $60
	jr jr_044_741a                                   ; $73d5: $18 $43

	nop                                              ; $73d7: $00
	inc b                                            ; $73d8: $04
	nop                                              ; $73d9: $00
	nop                                              ; $73da: $00
	dec sp                                           ; $73db: $3b
	cp $37                                           ; $73dc: $fe $37
	ld c, $c3                                        ; $73de: $0e $c3
	ldh a, [$e4]                                     ; $73e0: $f0 $e4
	cp b                                             ; $73e2: $b8
	inc e                                            ; $73e3: $1c
	rlca                                             ; $73e4: $07
	halt                                             ; $73e5: $76
	or h                                             ; $73e6: $b4
	sbc l                                            ; $73e7: $9d
	jr jr_044_7431                                   ; $73e8: $18 $47

	ld a, d                                          ; $73ea: $7a
	or h                                             ; $73eb: $b4
	sbc d                                            ; $73ec: $9a
	db $ec                                           ; $73ed: $ec
	ld e, e                                          ; $73ee: $5b
	ld l, [hl]                                       ; $73ef: $6e
	rra                                              ; $73f0: $1f
	adc [hl]                                         ; $73f1: $8e
	ld a, d                                          ; $73f2: $7a
	or h                                             ; $73f3: $b4
	sbc l                                            ; $73f4: $9d
	ld [hl], e                                       ; $73f5: $73
	inc a                                            ; $73f6: $3c
	ld [hl], e                                       ; $73f7: $73
	db $ec                                           ; $73f8: $ec
	db $fd                                           ; $73f9: $fd
	ld a, l                                          ; $73fa: $7d
	inc [hl]                                         ; $73fb: $34
	ld l, d                                          ; $73fc: $6a
	and b                                            ; $73fd: $a0
	sbc l                                            ; $73fe: $9d
	ld [hl], e                                       ; $73ff: $73
	ldh a, [$fc]                                     ; $7400: $f0 $fc
	rst SubAFromDE                                          ; $7402: $df
	rlca                                             ; $7403: $07
	ld l, l                                          ; $7404: $6d
	ld e, b                                          ; $7405: $58
	rst SubAFromDE                                          ; $7406: $df
	ld hl, sp-$69                                    ; $7407: $f8 $97
	nop                                              ; $7409: $00
	inc c                                            ; $740a: $0c
	rlca                                             ; $740b: $07
	dec bc                                           ; $740c: $0b
	rlca                                             ; $740d: $07
	nop                                              ; $740e: $00
	scf                                              ; $740f: $37
	rst FarCall                                          ; $7410: $f7
	sbc $ff                                          ; $7411: $de $ff
	adc [hl]                                         ; $7413: $8e
	rst FarCall                                          ; $7414: $f7
	ld sp, hl                                        ; $7415: $f9
	rst $38                                          ; $7416: $ff
	ret z                                            ; $7417: $c8

	add hl, bc                                       ; $7418: $09
	db $e3                                           ; $7419: $e3

jr_044_741a:
	ld l, l                                          ; $741a: $6d
	and d                                            ; $741b: $a2
	ld d, h                                          ; $741c: $54
	and c                                            ; $741d: $a1
	ld d, b                                          ; $741e: $50
	or $df                                           ; $741f: $f6 $df
	inc e                                            ; $7421: $1c
	sbc [hl]                                         ; $7422: $9e
	ld sp, hl                                        ; $7423: $f9
	ld sp, hl                                        ; $7424: $f9
	ld [hl], l                                       ; $7425: $75
	ld [hl-], a                                      ; $7426: $32
	sub d                                            ; $7427: $92
	jp nz, Jump_044_4aa5                             ; $7428: $c2 $a5 $4a

	and a                                            ; $742b: $a7
	ld c, d                                          ; $742c: $4a
	dec b                                            ; $742d: $05
	ld [hl], d                                       ; $742e: $72
	add sp, $3f                                      ; $742f: $e8 $3f

jr_044_7431:
	ld e, a                                          ; $7431: $5f
	cp a                                             ; $7432: $bf
	rst SubAFromDE                                          ; $7433: $df
	sbc a                                            ; $7434: $9f
	sbc $ff                                          ; $7435: $de $ff
	sub a                                            ; $7437: $97

jr_044_7438:
	or l                                             ; $7438: $b5
	ld l, e                                          ; $7439: $6b
	and [hl]                                         ; $743a: $a6
	ld d, e                                          ; $743b: $53
	xor [hl]                                         ; $743c: $ae
	inc a                                            ; $743d: $3c
	jr jr_044_7468                                   ; $743e: $18 $28

	jp c, $80ff                                      ; $7440: $da $ff $80

	rst SubAFromDE                                          ; $7443: $df
	ei                                               ; $7444: $fb
	db $fd                                           ; $7445: $fd
	pop af                                           ; $7446: $f1
	rst $38                                          ; $7447: $ff
	and b                                            ; $7448: $a0
	ldh [c], a                                       ; $7449: $e2
	add c                                            ; $744a: $81
	inc bc                                           ; $744b: $03
	rst SubAFromBC                                          ; $744c: $e7
	cp $f8                                           ; $744d: $fe $f8
	ldh [$d8], a                                     ; $744f: $e0 $d8
	pop bc                                           ; $7451: $c1
	ld [bc], a                                       ; $7452: $02
	sbc b                                            ; $7453: $98
	jr jr_044_7438                                   ; $7454: $18 $e2

	rrca                                             ; $7456: $0f
	jr nc, jr_044_746e                               ; $7457: $30 $15

	and b                                            ; $7459: $a0
	sub a                                            ; $745a: $97
	ld e, d                                          ; $745b: $5a
	add b                                            ; $745c: $80
	ld bc, $0f81                                     ; $745d: $01 $81 $0f
	ld l, e                                          ; $7460: $6b
	ld e, a                                          ; $7461: $5f
	ld a, [hl]                                       ; $7462: $7e
	call z, $2493                                    ; $7463: $cc $93 $24
	inc b                                            ; $7466: $04
	ld b, e                                          ; $7467: $43

jr_044_7468:
	ld c, $75                                        ; $7468: $0e $75
	xor e                                            ; $746a: $ab
	ld d, a                                          ; $746b: $57
	add e                                            ; $746c: $83
	add a                                            ; $746d: $87

jr_044_746e:
	rst SubAFromBC                                          ; $746e: $e7
	cp h                                             ; $746f: $bc
	ldh a, [rPCM12]                                  ; $7470: $f0 $76
	db $ed                                           ; $7472: $ed
	sub a                                            ; $7473: $97
	dec a                                            ; $7474: $3d
	add sp, $50                                      ; $7475: $e8 $50
	add b                                            ; $7477: $80
	nop                                              ; $7478: $00
	cp a                                             ; $7479: $bf
	ld [$763c], sp                                   ; $747a: $08 $3c $76
	call nc, $f07d                                   ; $747d: $d4 $7d $f0
	rst SubAFromDE                                          ; $7480: $df
	ld [hl], a                                       ; $7481: $77
	ld [hl], a                                       ; $7482: $77
	ld c, e                                          ; $7483: $4b
	sbc e                                            ; $7484: $9b
	jr @-$26                                         ; $7485: $18 $d8

	ld e, b                                          ; $7487: $58
	ret c                                            ; $7488: $d8

Call_044_7489:
	ld l, e                                          ; $7489: $6b
	ld e, b                                          ; $748a: $58
	ld l, d                                          ; $748b: $6a
	jp z, $7df4                                      ; $748c: $ca $f4 $7d

	pop af                                           ; $748f: $f1
	sbc $02                                          ; $7490: $de $02
	rst FarCall                                          ; $7492: $f7
	sbc c                                            ; $7493: $99
	rst $38                                          ; $7494: $ff
	jr nc, @+$01                                     ; $7495: $30 $ff

	sub d                                            ; $7497: $92
	cp e                                             ; $7498: $bb
	cp e                                             ; $7499: $bb
	db $fc                                           ; $749a: $fc
	sbc $6d                                          ; $749b: $de $6d
	rst $38                                          ; $749d: $ff
	sub h                                            ; $749e: $94
	add sp, $38                                      ; $749f: $e8 $38
	adc e                                            ; $74a1: $8b
	ld c, b                                          ; $74a2: $48
	ld c, a                                          ; $74a3: $4f
	ld c, b                                          ; $74a4: $48
	nop                                              ; $74a5: $00
	nop                                              ; $74a6: $00
	stop                                             ; $74a7: $10 $00
	db $10                                           ; $74a9: $10
	sbc $90                                          ; $74aa: $de $90
	db $fd                                           ; $74ac: $fd
	sbc [hl]                                         ; $74ad: $9e
	ld h, b                                          ; $74ae: $60
	push af                                          ; $74af: $f5
	db $dd                                           ; $74b0: $dd
	ld bc, $f87e                                     ; $74b1: $01 $7e $f8
	ld l, [hl]                                       ; $74b4: $6e
	jp $9b67                                         ; $74b5: $c3 $67 $9b


	sbc h                                            ; $74b8: $9c
	cp a                                             ; $74b9: $bf
	ld h, h                                          ; $74ba: $64
	ld [hl], $fb                                     ; $74bb: $36 $fb
	rst SubAFromDE                                          ; $74bd: $df
	dec de                                           ; $74be: $1b
	sub a                                            ; $74bf: $97
	dec e                                            ; $74c0: $1d
	rrca                                             ; $74c1: $0f
	ld h, b                                          ; $74c2: $60
	inc c                                            ; $74c3: $0c
	rrca                                             ; $74c4: $0f
	cp $cf                                           ; $74c5: $fe $cf
	adc $7b                                          ; $74c7: $ce $7b
	rst SubAFromHL                                          ; $74c9: $d7
	ld [hl], a                                       ; $74ca: $77
	add $90                                          ; $74cb: $c6 $90
	ld h, b                                          ; $74cd: $60
	pop hl                                           ; $74ce: $e1
	sub b                                            ; $74cf: $90
	ldh [c], a                                       ; $74d0: $e2
	sbc $2e                                          ; $74d1: $de $2e
	add hl, bc                                       ; $74d3: $09
	add e                                            ; $74d4: $83
	add b                                            ; $74d5: $80
	nop                                              ; $74d6: $00
	ld h, b                                          ; $74d7: $60
	inc e                                            ; $74d8: $1c
	jr nz, @+$13                                     ; $74d9: $20 $11

	ld b, $7b                                        ; $74db: $06 $7b
	sub d                                            ; $74dd: $92
	adc [hl]                                         ; $74de: $8e
	rst FarCall                                          ; $74df: $f7
	inc de                                           ; $74e0: $13
	db $10                                           ; $74e1: $10
	ld h, d                                          ; $74e2: $62
	ret z                                            ; $74e3: $c8

	nop                                              ; $74e4: $00
	nop                                              ; $74e5: $00
	inc e                                            ; $74e6: $1c
	rrca                                             ; $74e7: $0f
	dec c                                            ; $74e8: $0d

Jump_044_74e9:
	rrca                                             ; $74e9: $0f
	sub c                                            ; $74ea: $91
	jr nc, @+$01                                     ; $74eb: $30 $ff

	rst $38                                          ; $74ed: $ff
	rlca                                             ; $74ee: $07
	ei                                               ; $74ef: $fb
	db $db                                           ; $74f0: $db
	rst $38                                          ; $74f1: $ff
	add d                                            ; $74f2: $82
	ld hl, sp-$64                                    ; $74f3: $f8 $9c
	add h                                            ; $74f5: $84
	inc b                                            ; $74f6: $04
	dec d                                            ; $74f7: $15
	ld a, [hl+]                                      ; $74f8: $2a
	ld d, h                                          ; $74f9: $54
	jr z, jr_044_750a                                ; $74fa: $28 $0e

	ld a, $52                                        ; $74fc: $3e $52
	ld sp, hl                                        ; $74fe: $f9
	jr nz, jr_044_7529                               ; $74ff: $20 $28

	ld b, a                                          ; $7501: $47
	sub h                                            ; $7502: $94
	ld bc, $5f2f                                     ; $7503: $01 $2f $5f
	rst SubAFromBC                                          ; $7506: $e7
	rst $38                                          ; $7507: $ff
	rla                                              ; $7508: $17
	ld a, [hl-]                                      ; $7509: $3a

jr_044_750a:
	ld l, [hl]                                       ; $750a: $6e
	db $fc                                           ; $750b: $fc
	db $fc                                           ; $750c: $fc
	add [hl]                                         ; $750d: $86
	add a                                            ; $750e: $87
	add a                                            ; $750f: $87
	ld a, c                                          ; $7510: $79
	sub h                                            ; $7511: $94
	reti                                             ; $7512: $d9


	rst $38                                          ; $7513: $ff
	sub a                                            ; $7514: $97
	inc bc                                           ; $7515: $03
	ld bc, $2605                                     ; $7516: $01 $05 $26
	dec a                                            ; $7519: $3d
	cp e                                             ; $751a: $bb
	sbc [hl]                                         ; $751b: $9e
	sub l                                            ; $751c: $95
	reti                                             ; $751d: $d9


	rst $38                                          ; $751e: $ff
	sub a                                            ; $751f: $97
	ld [hl], $75                                     ; $7520: $36 $75
	ld [$aad5], a                                    ; $7522: $ea $d5 $aa
	ld d, l                                          ; $7525: $55
	xor d                                            ; $7526: $aa
	ld d, l                                          ; $7527: $55
	reti                                             ; $7528: $d9


jr_044_7529:
	rst $38                                          ; $7529: $ff
	sub [hl]                                         ; $752a: $96
	sub d                                            ; $752b: $92
	inc sp                                           ; $752c: $33
	rst FarCall                                          ; $752d: $f7
	rst SubAFromBC                                          ; $752e: $e7
	rst SubAFromDE                                          ; $752f: $df
	db $f4                                           ; $7530: $f4
	ldh a, [$f0]                                     ; $7531: $f0 $f0
	ld sp, hl                                        ; $7533: $f9
	jp c, $95f8                                      ; $7534: $da $f8 $95

	ld [hl], l                                       ; $7537: $75
	ld l, b                                          ; $7538: $68
	ldh a, [$e0]                                     ; $7539: $f0 $e0
	ldh [$ec], a                                     ; $753b: $e0 $ec
	ldh [$fc], a                                     ; $753d: $e0 $fc
	ret nz                                           ; $753f: $c0

	ret nz                                           ; $7540: $c0

	db $db                                           ; $7541: $db
	ld b, b                                          ; $7542: $40
	sbc [hl]                                         ; $7543: $9e
	inc bc                                           ; $7544: $03
	ld [hl], a                                       ; $7545: $77
	inc b                                            ; $7546: $04
	ld e, e                                          ; $7547: $5b
	nop                                              ; $7548: $00
	sub l                                            ; $7549: $95
	inc a                                            ; $754a: $3c
	or e                                             ; $754b: $b3
	adc h                                            ; $754c: $8c
	cp l                                             ; $754d: $bd
	cp l                                             ; $754e: $bd
	sub h                                            ; $754f: $94
	sbc h                                            ; $7550: $9c
	or l                                             ; $7551: $b5
	ld [hl], a                                       ; $7552: $77
	ld b, h                                          ; $7553: $44
	sbc $77                                          ; $7554: $de $77
	ld a, [hl]                                       ; $7556: $7e
	ret nz                                           ; $7557: $c0

	sub [hl]                                         ; $7558: $96
	ld a, a                                          ; $7559: $7f
	ret c                                            ; $755a: $d8

	ld e, b                                          ; $755b: $58
	rst SubAFromDE                                          ; $755c: $df
	ret nc                                           ; $755d: $d0

	rst SubAFromDE                                          ; $755e: $df
	ret nc                                           ; $755f: $d0

	sbc $d8                                          ; $7560: $de $d8
	call c, Call_044_7280                            ; $7562: $dc $80 $72
	ret nz                                           ; $7565: $c0

	sbc l                                            ; $7566: $9d
	ldh [rP1], a                                     ; $7567: $e0 $00
	ld d, [hl]                                       ; $7569: $56
	cp e                                             ; $756a: $bb
	reti                                             ; $756b: $d9


	ld [bc], a                                       ; $756c: $02
	ld h, d                                          ; $756d: $62
	jp nz, $9298                                     ; $756e: $c2 $98 $92

	sbc a                                            ; $7571: $9f
	cp a                                             ; $7572: $bf
	db $ed                                           ; $7573: $ed
	sub d                                            ; $7574: $92
	cp a                                             ; $7575: $bf
	cp a                                             ; $7576: $bf
	ld [hl], d                                       ; $7577: $72
	call nz, Call_044_6dde                           ; $7578: $c4 $de $6d
	sub a                                            ; $757b: $97
	ret z                                            ; $757c: $c8

	ld c, l                                          ; $757d: $4d
	ld c, h                                          ; $757e: $4c
	call z, Call_044_48cf                            ; $757f: $cc $cf $48
	call Call_044_76c8                               ; $7582: $cd $c8 $76
	call nz, $c072                                   ; $7585: $c4 $72 $c0
	ld [hl], e                                       ; $7588: $73
	jp $bc7f                                         ; $7589: $c3 $7f $bc


	ld h, d                                          ; $758c: $62
	pop bc                                           ; $758d: $c1
	ld a, a                                          ; $758e: $7f
	ccf                                              ; $758f: $3f
	rst SubAFromDE                                          ; $7590: $df
	ld bc, $587c                                     ; $7591: $01 $7c $58
	ld a, l                                          ; $7594: $7d
	db $dd                                           ; $7595: $dd
	ld a, [$2495]                                    ; $7596: $fa $95 $24
	cpl                                              ; $7599: $2f

Call_044_759a:
	ld [hl], $36                                     ; $759a: $36 $36
	ld h, $3f                                        ; $759c: $26 $3f
	ld a, [hl-]                                      ; $759e: $3a
	ld [hl], $1b                                     ; $759f: $36 $1b
	db $10                                           ; $75a1: $10
	sbc $1b                                          ; $75a2: $de $1b
	sub d                                            ; $75a4: $92
	nop                                              ; $75a5: $00
	rra                                              ; $75a6: $1f
	dec de                                           ; $75a7: $1b
	adc $db                                          ; $75a8: $ce $db
	jp z, $cbca                                      ; $75aa: $ca $ca $cb

	jp c, $caeb                                      ; $75ad: $da $eb $ca

	ld h, b                                          ; $75b0: $60
	inc h                                            ; $75b1: $24
	sbc $64                                          ; $75b2: $de $64
	sub d                                            ; $75b4: $92
	inc h                                            ; $75b5: $24
	ld b, h                                          ; $75b6: $44
	ld h, h                                          ; $75b7: $64
	ld b, b                                          ; $75b8: $40
	rst JumpTable                                          ; $75b9: $c7
	dec b                                            ; $75ba: $05
	inc bc                                           ; $75bb: $03
	add b                                            ; $75bc: $80
	nop                                              ; $75bd: $00
	add h                                            ; $75be: $84
	rra                                              ; $75bf: $1f
	nop                                              ; $75c0: $00
	nop                                              ; $75c1: $00
	ld a, e                                          ; $75c2: $7b
	rst JumpTable                                          ; $75c3: $c7
	ld a, a                                          ; $75c4: $7f
	db $fc                                           ; $75c5: $fc
	ld a, e                                          ; $75c6: $7b

jr_044_75c7:
	ei                                               ; $75c7: $fb
	add b                                            ; $75c8: $80
	ret nz                                           ; $75c9: $c0

	ld h, d                                          ; $75ca: $62
	ld b, l                                          ; $75cb: $45
	ld c, d                                          ; $75cc: $4a
	sub l                                            ; $75cd: $95
	adc e                                            ; $75ce: $8b
	inc bc                                           ; $75cf: $03
	db $10                                           ; $75d0: $10
	add sp, -$10                                     ; $75d1: $e8 $f0
	ld h, b                                          ; $75d3: $60
	sub h                                            ; $75d4: $94
	jr z, jr_044_75c7                                ; $75d5: $28 $f0

	db $ed                                           ; $75d7: $ed
	db $eb                                           ; $75d8: $eb
	ld d, l                                          ; $75d9: $55
	and c                                            ; $75da: $a1
	ld c, b                                          ; $75db: $48
	push de                                          ; $75dc: $d5
	xor b                                            ; $75dd: $a8
	ret nc                                           ; $75de: $d0

	add d                                            ; $75df: $82
	dec b                                            ; $75e0: $05
	ld [bc], a                                       ; $75e1: $02
	rrca                                             ; $75e2: $0f
	rla                                              ; $75e3: $17
	ld a, [hl+]                                      ; $75e4: $2a

Jump_044_75e5:
	ld d, l                                          ; $75e5: $55
	ld a, [hl+]                                      ; $75e6: $2a
	xor [hl]                                         ; $75e7: $ae
	adc b                                            ; $75e8: $88
	call c, $14a2                                    ; $75e9: $dc $a2 $14
	adc d                                            ; $75ec: $8a
	ld b, l                                          ; $75ed: $45
	ld a, [bc]                                       ; $75ee: $0a
	dec [hl]                                         ; $75ef: $35
	ld hl, sp+$72                                    ; $75f0: $f8 $72
	push af                                          ; $75f2: $f5
	db $eb                                           ; $75f3: $eb
	ld [hl], l                                       ; $75f4: $75
	cp e                                             ; $75f5: $bb
	ld [hl], a                                       ; $75f6: $77
	rst AddAOntoHL                                          ; $75f7: $ef
	db $dd                                           ; $75f8: $dd
	db $e3                                           ; $75f9: $e3
	rst $38                                          ; $75fa: $ff
	xor [hl]                                         ; $75fb: $ae
	ld c, l                                          ; $75fc: $4d
	xor d                                            ; $75fd: $aa
	ld e, l                                          ; $75fe: $5d
	ld a, [$ffd9]                                    ; $75ff: $fa $d9 $ff
	sub a                                            ; $7602: $97
	ld a, $ee                                        ; $7603: $3e $ee
	rst SubAFromHL                                          ; $7605: $d7
	and a                                            ; $7606: $a7
	ld e, a                                          ; $7607: $5f
	or [hl]                                          ; $7608: $b6
	ld d, h                                          ; $7609: $54
	xor d                                            ; $760a: $aa
	reti                                             ; $760b: $d9


	rst $38                                          ; $760c: $ff
	sbc b                                            ; $760d: $98
	xor c                                            ; $760e: $a9
	sbc a                                            ; $760f: $9f
	rst SubAFromHL                                          ; $7610: $d7
	xor a                                            ; $7611: $af
	ld e, [hl]                                       ; $7612: $5e
	and c                                            ; $7613: $a1
	db $10                                           ; $7614: $10
	ld h, b                                          ; $7615: $60
	ld b, b                                          ; $7616: $40
	add a                                            ; $7617: $87
	ldh a, [$b0]                                     ; $7618: $f0 $b0
	ldh [$f0], a                                     ; $761a: $e0 $f0
	ldh a, [$a0]                                     ; $761c: $f0 $a0
	ret c                                            ; $761e: $d8

	or b                                             ; $761f: $b0
	ldh a, [$f0]                                     ; $7620: $f0 $f0
	ret nc                                           ; $7622: $d0

	ld [hl], b                                       ; $7623: $70
	ld [hl], b                                       ; $7624: $70
	ldh a, [$f8]                                     ; $7625: $f0 $f8
	ld hl, sp-$20                                    ; $7627: $f8 $e0
	xor [hl]                                         ; $7629: $ae
	add b                                            ; $762a: $80

Call_044_762b:
	cp h                                             ; $762b: $bc
	add b                                            ; $762c: $80
	cp b                                             ; $762d: $b8
	cp h                                             ; $762e: $bc
	cp h                                             ; $762f: $bc
	reti                                             ; $7630: $d9


	ld b, b                                          ; $7631: $40
	db $dd                                           ; $7632: $dd
	ld [bc], a                                       ; $7633: $02
	sbc $03                                          ; $7634: $de $03
	ld h, h                                          ; $7636: $64
	rst FarCall                                          ; $7637: $f7
	sub c                                            ; $7638: $91
	nop                                              ; $7639: $00
	or h                                             ; $763a: $b4
	and e                                            ; $763b: $a3
	or l                                             ; $763c: $b5
	or a                                             ; $763d: $b7
	sub l                                            ; $763e: $95
	ld b, b                                          ; $763f: $40
	nop                                              ; $7640: $00
	ld hl, sp+$7f                                    ; $7641: $f8 $7f
	ld d, h                                          ; $7643: $54
	ld [hl], a                                       ; $7644: $77
	ld a, a                                          ; $7645: $7f
	ld a, a                                          ; $7646: $7f
	ld a, b                                          ; $7647: $78
	rst FarCall                                          ; $7648: $f7
	sub a                                            ; $7649: $97
	rst SubAFromDE                                          ; $764a: $df
	ret c                                            ; $764b: $d8

	rst SubAFromDE                                          ; $764c: $df
	ret c                                            ; $764d: $d8

	ret z                                            ; $764e: $c8

	jr jr_044_7659                                   ; $764f: $18 $08

	ld [$c476], sp                                   ; $7651: $08 $76 $c4
	ld a, a                                          ; $7654: $7f
	inc bc                                           ; $7655: $03
	sbc [hl]                                         ; $7656: $9e
	db $10                                           ; $7657: $10
	ld l, h                                          ; $7658: $6c

jr_044_7659:
	pop hl                                           ; $7659: $e1
	ld b, d                                          ; $765a: $42
	ret nz                                           ; $765b: $c0

	rst SubAFromDE                                          ; $765c: $df
	inc bc                                           ; $765d: $03
	ld h, d                                          ; $765e: $62
	ret nz                                           ; $765f: $c0

	sbc b                                            ; $7660: $98
	sub a                                            ; $7661: $97
	or a                                             ; $7662: $b7
	or a                                             ; $7663: $b7
	inc de                                           ; $7664: $13
	ccf                                              ; $7665: $3f
	inc c                                            ; $7666: $0c
	add b                                            ; $7667: $80
	halt                                             ; $7668: $76
	call nz, $8379                                   ; $7669: $c4 $79 $83
	sub [hl]                                         ; $766c: $96
	ld a, a                                          ; $766d: $7f
	rst GetHLinHL                                          ; $766e: $cf
	ld c, b                                          ; $766f: $48
	call z, Call_044_4fc8                            ; $7670: $cc $c8 $4f
	adc l                                            ; $7673: $8d
	cpl                                              ; $7674: $2f
	ld c, $76                                        ; $7675: $0e $76
	call nz, $bf7e                                   ; $7677: $c4 $7e $bf

Jump_044_767a:
	ld a, a                                          ; $767a: $7f
	ret nz                                           ; $767b: $c0

	ld [hl], l                                       ; $767c: $75
	jr z, jr_044_76fe                                ; $767d: $28 $7f

	db $e3                                           ; $767f: $e3
	sbc l                                            ; $7680: $9d
	ret nz                                           ; $7681: $c0

	ld [hl], b                                       ; $7682: $70
	ld d, l                                          ; $7683: $55
	add c                                            ; $7684: $81
	rst SubAFromDE                                          ; $7685: $df
	ld bc, $039e                                     ; $7686: $01 $9e $03
	ld h, d                                          ; $7689: $62
	ret nz                                           ; $768a: $c0

	ld a, [hl]                                       ; $768b: $7e
	call nz, $3e94                                   ; $768c: $c4 $94 $3e
	ld a, [bc]                                       ; $768f: $0a
	ld l, $be                                        ; $7690: $2e $be
	add b                                            ; $7692: $80
	rst $38                                          ; $7693: $ff
	dec de                                           ; $7694: $1b
	nop                                              ; $7695: $00
	dec de                                           ; $7696: $1b
	ccf                                              ; $7697: $3f
	dec de                                           ; $7698: $1b
	cp $83                                           ; $7699: $fe $83
	jp c, $dafa                                      ; $769b: $da $fa $da

	ld e, e                                          ; $769e: $5b
	jp c, $0beb                                      ; $769f: $da $eb $0b

	di                                               ; $76a2: $f3
	ld h, h                                          ; $76a3: $64
	inc b                                            ; $76a4: $04
	ld h, h                                          ; $76a5: $64
	db $e4                                           ; $76a6: $e4
	ld h, h                                          ; $76a7: $64
	inc b                                            ; $76a8: $04
	inc b                                            ; $76a9: $04
	inc c                                            ; $76aa: $0c
	ld a, a                                          ; $76ab: $7f
	ccf                                              ; $76ac: $3f
	rst $38                                          ; $76ad: $ff
	ld a, [hl]                                       ; $76ae: $7e
	ccf                                              ; $76af: $3f
	ld h, a                                          ; $76b0: $67
	rst AddAOntoHL                                          ; $76b1: $ef
	ldh [c], a                                       ; $76b2: $e2
	rlca                                             ; $76b3: $07
	rlca                                             ; $76b4: $07
	ld [bc], a                                       ; $76b5: $02
	ld a, [bc]                                       ; $76b6: $0a
	db $fd                                           ; $76b7: $fd
	add b                                            ; $76b8: $80
	jp z, $a2b5                                      ; $76b9: $ca $b5 $a2

	sub e                                            ; $76bc: $93
	ld l, a                                          ; $76bd: $6f
	ld a, [de]                                       ; $76be: $1a
	ld b, l                                          ; $76bf: $45
	cp $f5                                           ; $76c0: $fe $f5
	jp z, $6fdd                                      ; $76c2: $ca $dd $6f

	rla                                              ; $76c5: $17
	cpl                                              ; $76c6: $2f
	ccf                                              ; $76c7: $3f

Call_044_76c8:
	ld a, a                                          ; $76c8: $7f
	db $fc                                           ; $76c9: $fc
	ld [hl], h                                       ; $76ca: $74
	ld h, l                                          ; $76cb: $65
	pop de                                           ; $76cc: $d1
	ld [bc], a                                       ; $76cd: $02
	add l                                            ; $76ce: $85
	and b                                            ; $76cf: $a0
	ld e, c                                          ; $76d0: $59
	ld bc, $0383                                     ; $76d1: $01 $83 $03
	adc [hl]                                         ; $76d4: $8e
	push de                                          ; $76d5: $d5
	ld [$9757], a                                    ; $76d6: $ea $57 $97
	and a                                            ; $76d9: $a7
	ld a, [hl]                                       ; $76da: $7e
	sbc l                                            ; $76db: $9d
	ld a, e                                          ; $76dc: $7b
	ld d, h                                          ; $76dd: $54
	cpl                                              ; $76de: $2f
	ret nz                                           ; $76df: $c0

	and d                                            ; $76e0: $a2
	ld [hl], l                                       ; $76e1: $75
	or b                                             ; $76e2: $b0
	sbc d                                            ; $76e3: $9a
	cp a                                             ; $76e4: $bf
	jr jr_044_7726                                   ; $76e5: $18 $3f

	rst $38                                          ; $76e7: $ff
	rst AddAOntoHL                                          ; $76e8: $ef
	inc a                                            ; $76e9: $3c
	nop                                              ; $76ea: $00
	adc $77                                          ; $76eb: $ce $77
	sbc [hl]                                         ; $76ed: $9e
	ld h, [hl]                                       ; $76ee: $66
	db $dd                                           ; $76ef: $dd
	ld [hl], a                                       ; $76f0: $77
	sbc d                                            ; $76f1: $9a
	ld [hl], l                                       ; $76f2: $75
	ld d, l                                          ; $76f3: $55
	ld d, a                                          ; $76f4: $57
	ld [hl], a                                       ; $76f5: $77
	ld b, [hl]                                       ; $76f6: $46
	ld [hl], e                                       ; $76f7: $73
	or $9d                                           ; $76f8: $f6 $9d
	ld [hl], a                                       ; $76fa: $77
	ld d, l                                          ; $76fb: $55
	ld a, e                                          ; $76fc: $7b
	db $ed                                           ; $76fd: $ed

jr_044_76fe:
	sbc l                                            ; $76fe: $9d
	ld h, [hl]                                       ; $76ff: $66
	ld h, a                                          ; $7700: $67
	ld h, e                                          ; $7701: $63
	or $77                                           ; $7702: $f6 $77
	db $eb                                           ; $7704: $eb
	ld a, a                                          ; $7705: $7f
	ldh [c], a                                       ; $7706: $e2
	ld [hl], a                                       ; $7707: $77
	ret c                                            ; $7708: $d8

	sbc h                                            ; $7709: $9c
	ld h, [hl]                                       ; $770a: $66
	ld h, e                                          ; $770b: $63
	dec [hl]                                         ; $770c: $35
	call c, $df55                                    ; $770d: $dc $55 $df
	inc sp                                           ; $7710: $33
	ld a, a                                          ; $7711: $7f
	or $db                                           ; $7712: $f6 $db
	ld d, l                                          ; $7714: $55
	sbc e                                            ; $7715: $9b
	ld d, e                                          ; $7716: $53
	inc sp                                           ; $7717: $33
	ld h, [hl]                                       ; $7718: $66
	ld h, l                                          ; $7719: $65
	jp c, $9e55                                      ; $771a: $da $55 $9e

	ld [hl], $67                                     ; $771d: $36 $67
	or $9d                                           ; $771f: $f6 $9d
	ld d, [hl]                                       ; $7721: $56
	ld h, [hl]                                       ; $7722: $66
	ld e, a                                          ; $7723: $5f
	or $65                                           ; $7724: $f6 $65

jr_044_7726:
	rlca                                             ; $7726: $07
	sbc l                                            ; $7727: $9d
	nop                                              ; $7728: $00
	rst $38                                          ; $7729: $ff
	ld d, a                                          ; $772a: $57
	cp $9d                                           ; $772b: $fe $9d
	ld d, b                                          ; $772d: $50
	xor a                                            ; $772e: $af
	ld c, a                                          ; $772f: $4f
	ldh a, [rBGP]                                    ; $7730: $f0 $47
	cp $9d                                           ; $7732: $fe $9d
	dec d                                            ; $7734: $15
	ld [$f04f], a                                    ; $7735: $ea $4f $f0
	sbc l                                            ; $7738: $9d
	ld d, l                                          ; $7739: $55
	xor d                                            ; $773a: $aa
	inc bc                                           ; $773b: $03
	ldh a, [$5b]                                     ; $773c: $f0 $5b
	ldh a, [c]                                       ; $773e: $f2
	sbc l                                            ; $773f: $9d
	ld a, [hl+]                                      ; $7740: $2a
	push de                                          ; $7741: $d5
	ld c, a                                          ; $7742: $4f
	ldh a, [$9d]                                     ; $7743: $f0 $9d
	xor d                                            ; $7745: $aa
	ld d, l                                          ; $7746: $55
	rrca                                             ; $7747: $0f
	ldh a, [rBGP]                                    ; $7748: $f0 $47
	ret nz                                           ; $774a: $c0

	ld c, a                                          ; $774b: $4f
	ldh [$9d], a                                     ; $774c: $e0 $9d
	ld bc, $4ffe                                     ; $774e: $01 $fe $4f
	ldh a, [$7f]                                     ; $7751: $f0 $7f
	db $f4                                           ; $7753: $f4
	inc bc                                           ; $7754: $03
	ldh a, [$03]                                     ; $7755: $f0 $03
	ldh a, [$57]                                     ; $7757: $f0 $57
	ldh a, [$9d]                                     ; $7759: $f0 $9d
	ld b, b                                          ; $775b: $40
	cp a                                             ; $775c: $bf
	ld b, a                                          ; $775d: $47
	ld [hl], b                                       ; $775e: $70
	sbc l                                            ; $775f: $9d
	add b                                            ; $7760: $80
	ld a, a                                          ; $7761: $7f
	ccf                                              ; $7762: $3f
	jr nc, @-$6a                                     ; $7763: $30 $94

	ld [$7515], a                                    ; $7765: $ea $15 $75
	ld a, [bc]                                       ; $7768: $0a
	xor d                                            ; $7769: $aa
	dec d                                            ; $776a: $15
	ld d, l                                          ; $776b: $55
	ld a, [hl+]                                      ; $776c: $2a
	rst $38                                          ; $776d: $ff
	nop                                              ; $776e: $00
	ld a, a                                          ; $776f: $7f
	ld a, e                                          ; $7770: $7b
	db $ed                                           ; $7771: $ed
	sbc e                                            ; $7772: $9b
	inc a                                            ; $7773: $3c
	nop                                              ; $7774: $00
	ld [bc], a                                       ; $7775: $02
	db $fd                                           ; $7776: $fd
	ld l, a                                          ; $7777: $6f
	cp b                                             ; $7778: $b8
	ld l, a                                          ; $7779: $6f
	db $dd                                           ; $777a: $dd
	sbc l                                            ; $777b: $9d
	ei                                               ; $777c: $fb
	nop                                              ; $777d: $00
	ld [hl], a                                       ; $777e: $77
	db $f4                                           ; $777f: $f4
	sub h                                            ; $7780: $94
	xor a                                            ; $7781: $af
	ld d, b                                          ; $7782: $50
	rst $38                                          ; $7783: $ff
	nop                                              ; $7784: $00
	db $fd                                           ; $7785: $fd
	nop                                              ; $7786: $00
	ld [$d500], a                                    ; $7787: $ea $00 $d5
	nop                                              ; $778a: $00
	xor d                                            ; $778b: $aa
	ld [hl], e                                       ; $778c: $73
	ldh a, [$7f]                                     ; $778d: $f0 $7f
	db $f4                                           ; $778f: $f4
	ld a, a                                          ; $7790: $7f
	ld hl, sp-$64                                    ; $7791: $f8 $9c
	ld d, l                                          ; $7793: $55
	nop                                              ; $7794: $00
	add d                                            ; $7795: $82
	db $fc                                           ; $7796: $fc
	ld l, a                                          ; $7797: $6f
	call nc, $bf96                                   ; $7798: $d4 $96 $bf
	nop                                              ; $779b: $00
	ld e, a                                          ; $779c: $5f
	nop                                              ; $779d: $00
	xor e                                            ; $779e: $ab
	nop                                              ; $779f: $00
	rla                                              ; $77a0: $17
	nop                                              ; $77a1: $00
	dec bc                                           ; $77a2: $0b
	ld l, e                                          ; $77a3: $6b
	ldh a, [$5f]                                     ; $77a4: $f0 $5f
	cp $4f                                           ; $77a6: $fe $4f
	ldh a, [$7f]                                     ; $77a8: $f0 $7f
	call c, $f07f                                    ; $77aa: $dc $7f $f0
	sbc l                                            ; $77ad: $9d
	ld e, a                                          ; $77ae: $5f
	and b                                            ; $77af: $a0
	ld c, a                                          ; $77b0: $4f
	ldh [$9b], a                                     ; $77b1: $e0 $9b
	push de                                          ; $77b3: $d5
	ld a, [hl+]                                      ; $77b4: $2a
	ei                                               ; $77b5: $fb
	inc b                                            ; $77b6: $04
	ld c, a                                          ; $77b7: $4f
	ret nc                                           ; $77b8: $d0

	sbc l                                            ; $77b9: $9d
	cp a                                             ; $77ba: $bf
	ld b, b                                          ; $77bb: $40
	ld d, a                                          ; $77bc: $57
	ldh a, [$9d]                                     ; $77bd: $f0 $9d
	ld a, l                                          ; $77bf: $7d
	add d                                            ; $77c0: $82
	ld c, a                                          ; $77c1: $4f
	ret nc                                           ; $77c2: $d0

	sbc l                                            ; $77c3: $9d
	ld a, a                                          ; $77c4: $7f
	add b                                            ; $77c5: $80
	ld d, $1d                                        ; $77c6: $16 $1d
	sbc l                                            ; $77c8: $9d
	ld a, [$4f05]                                    ; $77c9: $fa $05 $4f
	ldh a, [$7f]                                     ; $77cc: $f0 $7f
	ret nc                                           ; $77ce: $d0

	ld d, a                                          ; $77cf: $57
	ldh a, [c]                                       ; $77d0: $f2
	sbc [hl]                                         ; $77d1: $9e
	cp $73                                           ; $77d2: $fe $73
	ld a, [$e793]                                    ; $77d4: $fa $93 $e7
	nop                                              ; $77d7: $00
	sla [hl]                                         ; $77d8: $cb $26
	rst GetHLinHL                                          ; $77da: $cf
	ld a, $d1                                        ; $77db: $3e $d1
	ld a, $87                                        ; $77dd: $3e $87
	ld a, h                                          ; $77df: $7c
	db $fc                                           ; $77e0: $fc
	inc a                                            ; $77e1: $3c
	ld d, a                                          ; $77e2: $57
	ret nc                                           ; $77e3: $d0

	ld [hl], a                                       ; $77e4: $77
	ld a, [hl-]                                      ; $77e5: $3a
	sbc l                                            ; $77e6: $9d
	cp d                                             ; $77e7: $ba
	ld b, l                                          ; $77e8: $45
	ld b, a                                          ; $77e9: $47
	ret nz                                           ; $77ea: $c0

	ld l, a                                          ; $77eb: $6f
	ld b, b                                          ; $77ec: $40
	sbc [hl]                                         ; $77ed: $9e
	db $eb                                           ; $77ee: $eb
	ld [hl], e                                       ; $77ef: $73
	ld [bc], a                                       ; $77f0: $02
	sbc [hl]                                         ; $77f1: $9e
	ld d, h                                          ; $77f2: $54
	ld a, e                                          ; $77f3: $7b
	ldh a, [$9d]                                     ; $77f4: $f0 $9d
	ld e, l                                          ; $77f6: $5d
	and d                                            ; $77f7: $a2
	ld l, a                                          ; $77f8: $6f
	and $7e                                          ; $77f9: $e6 $7e
	cp $7f                                           ; $77fb: $fe $7f
	ldh a, [$9e]                                     ; $77fd: $f0 $9e
	dec d                                            ; $77ff: $15
	ld a, e                                          ; $7800: $7b
	ld a, [$2c7f]                                    ; $7801: $fa $7f $2c
	ld l, a                                          ; $7804: $6f
	db $fc                                           ; $7805: $fc
	halt                                             ; $7806: $76
	db $ec                                           ; $7807: $ec
	rst $38                                          ; $7808: $ff
	ld a, a                                          ; $7809: $7f
	jp c, $d67f                                      ; $780a: $da $7f $d6

	ld a, a                                          ; $780d: $7f
	db $e4                                           ; $780e: $e4
	sbc [hl]                                         ; $780f: $9e
	cp d                                             ; $7810: $ba
	ld l, e                                          ; $7811: $6b
	ldh a, [$7f]                                     ; $7812: $f0 $7f
	db $fc                                           ; $7814: $fc
	sbc [hl]                                         ; $7815: $9e
	call nc, $c87a                                   ; $7816: $d4 $7a $c8
	ld a, [hl]                                       ; $7819: $7e
	and [hl]                                         ; $781a: $a6
	ld [hl], a                                       ; $781b: $77
	ldh [$fd], a                                     ; $781c: $e0 $fd
	sbc [hl]                                         ; $781e: $9e
	xor b                                            ; $781f: $a8
	ld a, [$7976]                                    ; $7820: $fa $76 $79
	ld [hl], a                                       ; $7823: $77
	jp nz, $0a9e                                     ; $7824: $c2 $9e $0a

	ld [hl], e                                       ; $7827: $73
	db $fc                                           ; $7828: $fc
	sbc d                                            ; $7829: $9a
	ld bc, $a000                                     ; $782a: $01 $00 $a0
	nop                                              ; $782d: $00
	ret nz                                           ; $782e: $c0

	ld a, e                                          ; $782f: $7b
	db $fc                                           ; $7830: $fc
	ld [hl], a                                       ; $7831: $77
	ret nc                                           ; $7832: $d0

	sbc [hl]                                         ; $7833: $9e
	rst FarCall                                          ; $7834: $f7
	ld [hl], e                                       ; $7835: $73
	call nc, $029e                                   ; $7836: $d4 $9e $02
	ld a, e                                          ; $7839: $7b
	db $ec                                           ; $783a: $ec
	ld a, a                                          ; $783b: $7f
	db $fc                                           ; $783c: $fc
	ld a, a                                          ; $783d: $7f
	ld hl, sp-$64                                    ; $783e: $f8 $9c
	adc b                                            ; $7840: $88
	nop                                              ; $7841: $00
	ld d, a                                          ; $7842: $57
	ld a, e                                          ; $7843: $7b
	sub $77                                          ; $7844: $d6 $77
	add [hl]                                         ; $7846: $86
	ld l, a                                          ; $7847: $6f
	or b                                             ; $7848: $b0
	sbc [hl]                                         ; $7849: $9e
	ld a, [hl+]                                      ; $784a: $2a
	ld [hl], e                                       ; $784b: $73
	add [hl]                                         ; $784c: $86
	ld a, a                                          ; $784d: $7f
	db $ec                                           ; $784e: $ec
	ld h, a                                          ; $784f: $67
	ldh a, [$6e]                                     ; $7850: $f0 $6e
	ld sp, $706e                                     ; $7852: $31 $6e $70
	ld a, a                                          ; $7855: $7f
	and h                                            ; $7856: $a4
	sbc [hl]                                         ; $7857: $9e
	ld b, b                                          ; $7858: $40
	cp $7f                                           ; $7859: $fe $7f
	ldh a, [c]                                       ; $785b: $f2
	ld a, a                                          ; $785c: $7f
	sub b                                            ; $785d: $90
	ld h, a                                          ; $785e: $67
	db $f4                                           ; $785f: $f4
	db $fd                                           ; $7860: $fd
	halt                                             ; $7861: $76
	adc h                                            ; $7862: $8c
	ld [hl], a                                       ; $7863: $77
	or b                                             ; $7864: $b0
	rst $38                                          ; $7865: $ff
	ld a, a                                          ; $7866: $7f
	sbc b                                            ; $7867: $98
	sbc [hl]                                         ; $7868: $9e
	dec b                                            ; $7869: $05
	ld [hl], e                                       ; $786a: $73
	ldh a, [$7f]                                     ; $786b: $f0 $7f
	cp $76                                           ; $786d: $fe $76
	ld d, h                                          ; $786f: $54
	ld l, a                                          ; $7870: $6f
	ret nz                                           ; $7871: $c0

	ld a, a                                          ; $7872: $7f
	add sp, $77                                      ; $7873: $e8 $77
	ld h, $9e                                        ; $7875: $26 $9e
	ld d, b                                          ; $7877: $50
	ld a, e                                          ; $7878: $7b
	jp hl                                            ; $7879: $e9


	sbc h                                            ; $787a: $9c
	adc a                                            ; $787b: $8f
	ld a, a                                          ; $787c: $7f
	xor [hl]                                         ; $787d: $ae
	ld a, e                                          ; $787e: $7b
	ldh a, [$9e]                                     ; $787f: $f0 $9e
	add b                                            ; $7881: $80
	ld [hl], e                                       ; $7882: $73
	ld l, b                                          ; $7883: $68
	sbc l                                            ; $7884: $9d
	ld bc, $dd03                                     ; $7885: $01 $03 $dd
	rst $38                                          ; $7888: $ff
	ld l, a                                          ; $7889: $6f
	jr nc, @-$7e                                     ; $788a: $30 $80

	ldh [rP1], a                                     ; $788c: $e0 $00
	ret nz                                           ; $788e: $c0

	ld e, a                                          ; $788f: $5f
	sbc $fd                                          ; $7890: $de $fd
	db $fc                                           ; $7892: $fc
	db $fc                                           ; $7893: $fc
	cp $fd                                           ; $7894: $fe $fd
	xor c                                            ; $7896: $a9
	rrca                                             ; $7897: $0f
	ld d, e                                          ; $7898: $53
	rlca                                             ; $7899: $07
	rrca                                             ; $789a: $0f
	rlca                                             ; $789b: $07
	cp a                                             ; $789c: $bf
	ld a, [hl]                                       ; $789d: $7e
	rst $38                                          ; $789e: $ff
	rst $38                                          ; $789f: $ff
	ld a, a                                          ; $78a0: $7f
	rst $38                                          ; $78a1: $ff
	ld e, d                                          ; $78a2: $5a
	rst SubAFromBC                                          ; $78a3: $e7
	jp hl                                            ; $78a4: $e9


	rst JumpTable                                          ; $78a5: $c7
	xor e                                            ; $78a6: $ab
	rst FarCall                                          ; $78a7: $f7
	rst JumpTable                                          ; $78a8: $c7
	rst $38                                          ; $78a9: $ff
	inc bc                                           ; $78aa: $03
	adc l                                            ; $78ab: $8d
	rst SubAFromBC                                          ; $78ac: $e7
	cpl                                              ; $78ad: $2f
	nop                                              ; $78ae: $00
	rst SubAFromDE                                          ; $78af: $df
	add b                                            ; $78b0: $80
	adc a                                            ; $78b1: $8f
	ret nz                                           ; $78b2: $c0

	push de                                          ; $78b3: $d5
	ldh [$fa], a                                     ; $78b4: $e0 $fa
	ldh a, [$ed]                                     ; $78b6: $f0 $ed
	ldh a, [$ea]                                     ; $78b8: $f0 $ea

Call_044_78ba:
	ld hl, sp-$43                                    ; $78ba: $f8 $bd
	ld a, b                                          ; $78bc: $78
	cp $6b                                           ; $78bd: $fe $6b
	ld [hl], d                                       ; $78bf: $72
	ld h, a                                          ; $78c0: $67
	db $fc                                           ; $78c1: $fc
	ld a, a                                          ; $78c2: $7f
	halt                                             ; $78c3: $76
	ld a, [hl]                                       ; $78c4: $7e
	call z, $fc7f                                    ; $78c5: $cc $7f $fc

jr_044_78c8:
	ld e, a                                          ; $78c8: $5f
	ldh a, [rPCM34]                                  ; $78c9: $f0 $77
	ld a, d                                          ; $78cb: $7a
	sbc h                                            ; $78cc: $9c
	jr nz, jr_044_78cf                               ; $78cd: $20 $00

jr_044_78cf:
	ld d, c                                          ; $78cf: $51
	ld h, e                                          ; $78d0: $63
	ldh a, [$7f]                                     ; $78d1: $f0 $7f
	jr jr_044_78c8                                   ; $78d3: $18 $f3

	ld b, a                                          ; $78d5: $47
	ldh a, [$7f]                                     ; $78d6: $f0 $7f
	jp nz, $e217                                     ; $78d8: $c2 $17 $e2

	sbc [hl]                                         ; $78db: $9e
	inc b                                            ; $78dc: $04
	ld l, d                                          ; $78dd: $6a

Call_044_78de:
	xor b                                            ; $78de: $a8
	rst FarCall                                          ; $78df: $f7
	sbc [hl]                                         ; $78e0: $9e
	inc d                                            ; $78e1: $14
	ld a, d                                          ; $78e2: $7a
	call c, $ea7f                                    ; $78e3: $dc $7f $ea
	ld [hl], a                                       ; $78e6: $77
	db $10                                           ; $78e7: $10
	ei                                               ; $78e8: $fb
	ld e, a                                          ; $78e9: $5f
	add [hl]                                         ; $78ea: $86
	sbc [hl]                                         ; $78eb: $9e
	adc d                                            ; $78ec: $8a
	ld [hl], d                                       ; $78ed: $72
	adc b                                            ; $78ee: $88
	ld a, d                                          ; $78ef: $7a
	ld a, $fe                                        ; $78f0: $3e $fe
	ld a, a                                          ; $78f2: $7f
	jr jr_044_796c                                   ; $78f3: $18 $77

	ld h, [hl]                                       ; $78f5: $66
	ld [hl], a                                       ; $78f6: $77
	ldh a, [$fd]                                     ; $78f7: $f0 $fd
	halt                                             ; $78f9: $76
	ld a, h                                          ; $78fa: $7c
	ld l, a                                          ; $78fb: $6f
	cp b                                             ; $78fc: $b8
	ld l, a                                          ; $78fd: $6f
	ldh a, [rIE]                                     ; $78fe: $f0 $ff
	ld a, [hl]                                       ; $7900: $7e
	adc b                                            ; $7901: $88
	ld [hl], a                                       ; $7902: $77
	ldh a, [$7f]                                     ; $7903: $f0 $7f
	sub d                                            ; $7905: $92
	ld [hl], a                                       ; $7906: $77
	ldh a, [rPCM34]                                  ; $7907: $f0 $77
	db $e4                                           ; $7909: $e4
	ld a, a                                          ; $790a: $7f
	ld hl, sp-$62                                    ; $790b: $f8 $9e
	ld b, c                                          ; $790d: $41
	cp $7f                                           ; $790e: $fe $7f
	ld b, [hl]                                       ; $7910: $46
	sbc l                                            ; $7911: $9d
	xor b                                            ; $7912: $a8
	rlca                                             ; $7913: $07
	ld h, [hl]                                       ; $7914: $66
	ld b, b                                          ; $7915: $40
	ld [hl], a                                       ; $7916: $77
	ldh [$7f], a                                     ; $7917: $e0 $7f
	db $fc                                           ; $7919: $fc
	sbc l                                            ; $791a: $9d
	rla                                              ; $791b: $17
	ld c, b                                          ; $791c: $48
	halt                                             ; $791d: $76
	sbc b                                            ; $791e: $98
	ld [hl], a                                       ; $791f: $77
	ret c                                            ; $7920: $d8

	ld a, a                                          ; $7921: $7f
	xor b                                            ; $7922: $a8
	sbc [hl]                                         ; $7923: $9e
	ld [$f07b], sp                                   ; $7924: $08 $7b $f0
	ld a, [hl]                                       ; $7927: $7e
	or h                                             ; $7928: $b4
	ld l, a                                          ; $7929: $6f
	db $e4                                           ; $792a: $e4
	ld l, a                                          ; $792b: $6f
	cp b                                             ; $792c: $b8
	ld [hl], a                                       ; $792d: $77
	ld hl, sp-$80                                    ; $792e: $f8 $80
	ld b, $0f                                        ; $7930: $06 $0f
	and [hl]                                         ; $7932: $a6
	rrca                                             ; $7933: $0f
	ld e, [hl]                                       ; $7934: $5e
	rrca                                             ; $7935: $0f
	xor [hl]                                         ; $7936: $ae
	rra                                              ; $7937: $1f
	ld e, $3f                                        ; $7938: $1e $3f
	ld a, [hl]                                       ; $793a: $7e
	ccf                                              ; $793b: $3f
	cp [hl]                                          ; $793c: $be
	ld a, a                                          ; $793d: $7f
	ld a, [hl]                                       ; $793e: $7e
	rst $38                                          ; $793f: $ff
	rlca                                             ; $7940: $07
	xor $0e                                          ; $7941: $ee $0e
	xor $07                                          ; $7943: $ee $07
	xor $86                                          ; $7945: $ee $86
	ld h, a                                          ; $7947: $67
	add d                                            ; $7948: $82
	ld [hl], a                                       ; $7949: $77
	and d                                            ; $794a: $a2
	ld [hl], a                                       ; $794b: $77
	ld [hl-], a                                      ; $794c: $32
	ld [hl], a                                       ; $794d: $77
	ld sp, $ff93                                     ; $794e: $31 $93 $ff

jr_044_7951:
	ld c, [hl]                                       ; $7951: $4e
	jr c, jr_044_7951                                ; $7952: $38 $fd

	ld [hl], b                                       ; $7954: $70
	ld a, [$e5e0]                                    ; $7955: $fa $e0 $e5
	ret nz                                           ; $7958: $c0

	add d                                            ; $7959: $82

Call_044_795a:
	nop                                              ; $795a: $00
	sub l                                            ; $795b: $95
	ld a, e                                          ; $795c: $7b
	jp nc, Jump_044_687f                             ; $795d: $d2 $7f $68

jr_044_7960:
	ld l, a                                          ; $7960: $6f
	jp nz, $0a77                                     ; $7961: $c2 $77 $0a

	ld h, a                                          ; $7964: $67
	ld e, [hl]                                       ; $7965: $5e
	ld l, a                                          ; $7966: $6f
	ld h, [hl]                                       ; $7967: $66
	ld a, a                                          ; $7968: $7f
	ld a, [hl+]                                      ; $7969: $2a
	rst $38                                          ; $796a: $ff
	ld a, a                                          ; $796b: $7f

jr_044_796c:
	sbc [hl]                                         ; $796c: $9e
	ld [hl], a                                       ; $796d: $77
	ldh a, [$9e]                                     ; $796e: $f0 $9e
	ld b, h                                          ; $7970: $44
	db $fc                                           ; $7971: $fc
	ld a, a                                          ; $7972: $7f
	sub $6f                                          ; $7973: $d6 $6f
	ld l, [hl]                                       ; $7975: $6e
	sub a                                            ; $7976: $97
	and $00                                          ; $7977: $e6 $00
	inc b                                            ; $7979: $04
	add b                                            ; $797a: $80
	rst FarCall                                          ; $797b: $f7
	nop                                              ; $797c: $00
	rst $38                                          ; $797d: $ff
	rst FarCall                                          ; $797e: $f7
	reti                                             ; $797f: $d9


	rst $38                                          ; $7980: $ff
	ld a, a                                          ; $7981: $7f
	add sp, -$65                                     ; $7982: $e8 $9b
	sbc a                                            ; $7984: $9f
	nop                                              ; $7985: $00
	rst FarCall                                          ; $7986: $f7
	jr c, jr_044_7960                                ; $7987: $38 $d7

	rst $38                                          ; $7989: $ff
	rst $38                                          ; $798a: $ff
	ld a, [hl]                                       ; $798b: $7e
	db $f4                                           ; $798c: $f4
	sbc l                                            ; $798d: $9d
	ccf                                              ; $798e: $3f

Jump_044_798f:
	jp $ffd7                                         ; $798f: $c3 $d7 $ff


	sub a                                            ; $7992: $97
	rrca                                             ; $7993: $0f
	inc b                                            ; $7994: $04
	dec a                                            ; $7995: $3d
	rlca                                             ; $7996: $07
	ld [hl], a                                       ; $7997: $77
	add hl, sp                                       ; $7998: $39
	cp $f9                                           ; $7999: $fe $f9
	reti                                             ; $799b: $d9


	rst $38                                          ; $799c: $ff
	sub a                                            ; $799d: $97
	ldh a, [$38]                                     ; $799e: $f0 $38
	ld hl, sp-$10                                    ; $79a0: $f8 $f0
	nop                                              ; $79a2: $00
	ld hl, sp-$3d                                    ; $79a3: $f8 $c3
	ld a, h                                          ; $79a5: $7c
	reti                                             ; $79a6: $d9


	rst $38                                          ; $79a7: $ff
	ld a, a                                          ; $79a8: $7f
	and d                                            ; $79a9: $a2
	sbc e                                            ; $79aa: $9b
	adc a                                            ; $79ab: $8f
	nop                                              ; $79ac: $00
	rst SubAFromDE                                          ; $79ad: $df
	ld [$ffd7], sp                                   ; $79ae: $08 $d7 $ff
	sbc c                                            ; $79b1: $99
	ld h, e                                          ; $79b2: $63
	nop                                              ; $79b3: $00
	cp $01                                           ; $79b4: $fe $01
	cp $01                                           ; $79b6: $fe $01
	rst SubAFromHL                                          ; $79b8: $d7
	rst $38                                          ; $79b9: $ff
	sub a                                            ; $79ba: $97
	dec b                                            ; $79bb: $05
	ld [$00c9], sp                                   ; $79bc: $08 $c9 $00
	dec e                                            ; $79bf: $1d
	ldh [$e3], a                                     ; $79c0: $e0 $e3
	db $fc                                           ; $79c2: $fc
	reti                                             ; $79c3: $d9


	rst $38                                          ; $79c4: $ff
	sbc b                                            ; $79c5: $98
	adc h                                            ; $79c6: $8c
	nop                                              ; $79c7: $00
	add hl, bc                                       ; $79c8: $09
	add [hl]                                         ; $79c9: $86
	rla                                              ; $79ca: $17
	dec c                                            ; $79cb: $0d
	push af                                          ; $79cc: $f5
	ld h, e                                          ; $79cd: $63
	adc $95                                          ; $79ce: $ce $95
	ld h, b                                          ; $79d0: $60
	ld b, b                                          ; $79d1: $40
	pop hl                                           ; $79d2: $e1
	ret nz                                           ; $79d3: $c0

	ldh [$80], a                                     ; $79d4: $e0 $80
	db $ec                                           ; $79d6: $ec
	db $10                                           ; $79d7: $10
	rst $38                                          ; $79d8: $ff
	cp $db                                           ; $79d9: $fe $db
	rst $38                                          ; $79db: $ff
	sub l                                            ; $79dc: $95
	inc d                                            ; $79dd: $14
	ret nz                                           ; $79de: $c0

	db $10                                           ; $79df: $10
	add b                                            ; $79e0: $80
	and $00                                          ; $79e1: $e6 $00
	ld c, h                                          ; $79e3: $4c

jr_044_79e4:
	jr nc, jr_044_79e4                               ; $79e4: $30 $fe

	add hl, sp                                       ; $79e6: $39
	ld l, e                                          ; $79e7: $6b
	ldh a, [hDisp1_WX]                                     ; $79e8: $f0 $96
	ld [$0102], sp                                   ; $79ea: $08 $02 $01
	ld c, $03                                        ; $79ed: $0e $03
	ld c, [hl]                                       ; $79ef: $4e
	nop                                              ; $79f0: $00
	call c, $dbef                                    ; $79f1: $dc $ef $db
	rst $38                                          ; $79f4: $ff
	sub e                                            ; $79f5: $93
	ld [hl], h                                       ; $79f6: $74
	nop                                              ; $79f7: $00
	inc a                                            ; $79f8: $3c
	nop                                              ; $79f9: $00
	cp [hl]                                          ; $79fa: $be
	ret nz                                           ; $79fb: $c0

	cp a                                             ; $79fc: $bf
	ld b, b                                          ; $79fd: $40
	xor e                                            ; $79fe: $ab
	db $fc                                           ; $79ff: $fc
	ldh a, [c]                                       ; $7a00: $f2
	rst $38                                          ; $7a01: $ff
	ld [hl], a                                       ; $7a02: $77
	xor e                                            ; $7a03: $ab
	ld a, a                                          ; $7a04: $7f
	ld d, d                                          ; $7a05: $52
	adc h                                            ; $7a06: $8c
	add hl, bc                                       ; $7a07: $09
	ld bc, $0257                                     ; $7a08: $01 $57 $02
	rst $38                                          ; $7a0b: $ff
	ld b, $7f                                        ; $7a0c: $06 $7f
	adc h                                            ; $7a0e: $8c
	cp a                                             ; $7a0f: $bf
	ld e, b                                          ; $7a10: $58
	ld e, a                                          ; $7a11: $5f
	cp h                                             ; $7a12: $bc
	ccf                                              ; $7a13: $3f
	rst $38                                          ; $7a14: $ff
	cp [hl]                                          ; $7a15: $be
	rst $38                                          ; $7a16: $ff
	ld a, $ff                                        ; $7a17: $3e $ff
	ld a, [hl]                                       ; $7a19: $7e
	ld a, e                                          ; $7a1a: $7b
	or e                                             ; $7a1b: $b3
	ld l, a                                          ; $7a1c: $6f
	cp $7f                                           ; $7a1d: $fe $7f
	add hl, de                                       ; $7a1f: $19
	ld a, [hl]                                       ; $7a20: $7e
	adc $77                                          ; $7a21: $ce $77
	cp $7f                                           ; $7a23: $fe $7f
	or e                                             ; $7a25: $b3
	ld a, a                                          ; $7a26: $7f
	cp $9e                                           ; $7a27: $fe $9e
	ld a, c                                          ; $7a29: $79
	ld [hl], e                                       ; $7a2a: $73
	cp $7a                                           ; $7a2b: $fe $7a
	rst FarCall                                          ; $7a2d: $f7
	ld a, e                                          ; $7a2e: $7b
	cp $96                                           ; $7a2f: $fe $96
	cp b                                             ; $7a31: $b8
	add b                                            ; $7a32: $80
	db $d3                                           ; $7a33: $d3
	xor h                                            ; $7a34: $ac
	db $ec                                           ; $7a35: $ec
	db $d3                                           ; $7a36: $d3
	ret nc                                           ; $7a37: $d0

	rst AddAOntoHL                                          ; $7a38: $ef
	ldh [$7b], a                                     ; $7a39: $e0 $7b
	db $10                                           ; $7a3b: $10
	sub [hl]                                         ; $7a3c: $96
	stop                                             ; $7a3d: $10 $00
	jr jr_044_7a41                                   ; $7a3f: $18 $00

jr_044_7a41:
	rst AddAOntoHL                                          ; $7a41: $ef
	db $10                                           ; $7a42: $10
	ld d, a                                          ; $7a43: $57
	rst $38                                          ; $7a44: $ff
	cp a                                             ; $7a45: $bf
	ld a, c                                          ; $7a46: $79
	ld e, b                                          ; $7a47: $58
	ld [hl], a                                       ; $7a48: $77
	nop                                              ; $7a49: $00
	rst $38                                          ; $7a4a: $ff
	sbc e                                            ; $7a4b: $9b
	scf                                              ; $7a4c: $37
	nop                                              ; $7a4d: $00
	rst $38                                          ; $7a4e: $ff
	jr nz, jr_044_7aaf                               ; $7a4f: $20 $5e

	ldh a, [$7e]                                     ; $7a51: $f0 $7e
	ld d, d                                          ; $7a53: $52
	sbc e                                            ; $7a54: $9b
	jp $fe1c                                         ; $7a55: $c3 $1c $fe


	add b                                            ; $7a58: $80
	reti                                             ; $7a59: $d9


	rst $38                                          ; $7a5a: $ff
	sbc e                                            ; $7a5b: $9b
	ret nz                                           ; $7a5c: $c0

	ccf                                              ; $7a5d: $3f
	push af                                          ; $7a5e: $f5
	rra                                              ; $7a5f: $1f
	ld [hl], b                                       ; $7a60: $70
	db $eb                                           ; $7a61: $eb
	sbc e                                            ; $7a62: $9b
	rst $38                                          ; $7a63: $ff
	ld d, l                                          ; $7a64: $55
	rst $38                                          ; $7a65: $ff
	xor d                                            ; $7a66: $aa
	ld a, e                                          ; $7a67: $7b
	db $fc                                           ; $7a68: $fc
	ld a, a                                          ; $7a69: $7f
	ld hl, sp-$62                                    ; $7a6a: $f8 $9e
	add sp, $73                                      ; $7a6c: $e8 $73
	ldh a, [c]                                       ; $7a6e: $f2
	sbc [hl]                                         ; $7a6f: $9e
	ld a, [hl+]                                      ; $7a70: $2a
	ld h, e                                          ; $7a71: $63
	ldh a, [$7f]                                     ; $7a72: $f0 $7f
	cp $9e                                           ; $7a74: $fe $9e

jr_044_7a76:
	add hl, bc                                       ; $7a76: $09
	ld a, e                                          ; $7a77: $7b
	db $fc                                           ; $7a78: $fc
	ld a, a                                          ; $7a79: $7f
	rst GetHLinHL                                          ; $7a7a: $cf
	ld e, a                                          ; $7a7b: $5f
	ldh a, [$9e]                                     ; $7a7c: $f0 $9e
	xor b                                            ; $7a7e: $a8
	ld e, e                                          ; $7a7f: $5b
	ret nc                                           ; $7a80: $d0

	ld a, a                                          ; $7a81: $7f
	rst FarCall                                          ; $7a82: $f7
	sbc d                                            ; $7a83: $9a
	and a                                            ; $7a84: $a7
	ld hl, sp+$00                                    ; $7a85: $f8 $00
	rst $38                                          ; $7a87: $ff
	rlca                                             ; $7a88: $07
	ld a, e                                          ; $7a89: $7b
	db $fc                                           ; $7a8a: $fc
	ld h, a                                          ; $7a8b: $67
	ldh a, [rPCM34]                                  ; $7a8c: $f0 $77
	db $e4                                           ; $7a8e: $e4
	sbc l                                            ; $7a8f: $9d
	add b                                            ; $7a90: $80
	ld a, a                                          ; $7a91: $7f
	ld e, a                                          ; $7a92: $5f
	ldh a, [$9d]                                     ; $7a93: $f0 $9d
	jr nz, jr_044_7a76                               ; $7a95: $20 $df

	ld d, a                                          ; $7a97: $57
	and b                                            ; $7a98: $a0
	ld l, a                                          ; $7a99: $6f
	ldh [$57], a                                     ; $7a9a: $e0 $57
	ldh a, [rPCM34]                                  ; $7a9c: $f0 $77
	call nz, $fe6f                                   ; $7a9e: $c4 $6f $fe
	ld [hl], a                                       ; $7aa1: $77
	ldh a, [$9b]                                     ; $7aa2: $f0 $9b
	ld hl, sp+$07                                    ; $7aa4: $f8 $07
	ret nz                                           ; $7aa6: $c0

	ccf                                              ; $7aa7: $3f
	ld h, a                                          ; $7aa8: $67
	ldh a, [$7f]                                     ; $7aa9: $f0 $7f
	sbc b                                            ; $7aab: $98
	ld l, a                                          ; $7aac: $6f
	sub b                                            ; $7aad: $90
	ld h, a                                          ; $7aae: $67

jr_044_7aaf:
	cp $7e                                           ; $7aaf: $fe $7e
	jp hl                                            ; $7ab1: $e9


	ld a, a                                          ; $7ab2: $7f
	ldh a, [$9e]                                     ; $7ab3: $f0 $9e
	ld a, a                                          ; $7ab5: $7f
	ld [hl], h                                       ; $7ab6: $74
	ld e, l                                          ; $7ab7: $5d
	ld e, e                                          ; $7ab8: $5b
	ret nc                                           ; $7ab9: $d0

	ld a, a                                          ; $7aba: $7f
	ld sp, hl                                        ; $7abb: $f9
	sbc l                                            ; $7abc: $9d
	ld [bc], a                                       ; $7abd: $02
	db $fd                                           ; $7abe: $fd

Call_044_7abf:
	ld d, a                                          ; $7abf: $57
	ret nc                                           ; $7ac0: $d0

	sbc h                                            ; $7ac1: $9c
	rst $38                                          ; $7ac2: $ff
	ccf                                              ; $7ac3: $3f
	ccf                                              ; $7ac4: $3f
	ld e, e                                          ; $7ac5: $5b
	adc $9a                                          ; $7ac6: $ce $9a
	ld d, b                                          ; $7ac8: $50
	rst $38                                          ; $7ac9: $ff
	rst FarCall                                          ; $7aca: $f7
	cp $f7                                           ; $7acb: $fe $f7
	ld a, d                                          ; $7acd: $7a
	ld hl, sp-$62                                    ; $7ace: $f8 $9e
	rlca                                             ; $7ad0: $07
	ld a, e                                          ; $7ad1: $7b
	cp $7c                                           ; $7ad2: $fe $7c
	dec hl                                           ; $7ad4: $2b
	ld a, a                                          ; $7ad5: $7f
	cp $7e                                           ; $7ad6: $fe $7e
	scf                                              ; $7ad8: $37
	sbc d                                            ; $7ad9: $9a
	ld hl, sp+$7f                                    ; $7ada: $f8 $7f
	db $fc                                           ; $7adc: $fc
	ld a, a                                          ; $7add: $7f
	sbc h                                            ; $7ade: $9c
	ld [hl], e                                       ; $7adf: $73
	db $f4                                           ; $7ae0: $f4
	ld a, a                                          ; $7ae1: $7f
	cp $77                                           ; $7ae2: $fe $77
	sbc $7e                                          ; $7ae4: $de $7e
	adc $7f                                          ; $7ae6: $ce $7f
	cp $7e                                           ; $7ae8: $fe $7e
	db $e3                                           ; $7aea: $e3
	ld [hl], a                                       ; $7aeb: $77
	ld a, [$a09a]                                    ; $7aec: $fa $9a $a0
	rst $38                                          ; $7aef: $ff
	or b                                             ; $7af0: $b0
	rst $38                                          ; $7af1: $ff
	ldh a, [rHDMA3]                                  ; $7af2: $f0 $53
	sub b                                            ; $7af4: $90
	ld [hl], a                                       ; $7af5: $77
	cp $7f                                           ; $7af6: $fe $7f

jr_044_7af8:
	sub b                                            ; $7af8: $90
	ld e, a                                          ; $7af9: $5f
	ld h, b                                          ; $7afa: $60
	ld [hl], a                                       ; $7afb: $77
	cp $77                                           ; $7afc: $fe $77
	ei                                               ; $7afe: $fb
	ld h, a                                          ; $7aff: $67
	db $f4                                           ; $7b00: $f4
	sbc [hl]                                         ; $7b01: $9e
	dec d                                            ; $7b02: $15
	ld a, e                                          ; $7b03: $7b
	ld a, [hl]                                       ; $7b04: $7e
	rst SubAFromDE                                          ; $7b05: $df
	rst $38                                          ; $7b06: $ff
	ld a, [hl]                                       ; $7b07: $7e
	dec b                                            ; $7b08: $05
	sbc l                                            ; $7b09: $9d
	ld a, [de]                                       ; $7b0a: $1a
	db $ed                                           ; $7b0b: $ed
	halt                                             ; $7b0c: $76
	sbc $6f                                          ; $7b0d: $de $6f
	db $eb                                           ; $7b0f: $eb
	sbc h                                            ; $7b10: $9c
	xor $ff                                          ; $7b11: $ee $ff
	add hl, de                                       ; $7b13: $19
	ld a, e                                          ; $7b14: $7b
	sbc d                                            ; $7b15: $9a
	sbc d                                            ; $7b16: $9a
	add a                                            ; $7b17: $87
	ld hl, sp+$28                                    ; $7b18: $f8 $28
	ret nc                                           ; $7b1a: $d0

	ld sp, hl                                        ; $7b1b: $f9
	ld [hl], l                                       ; $7b1c: $75
	ret z                                            ; $7b1d: $c8

	sbc l                                            ; $7b1e: $9d
	nop                                              ; $7b1f: $00
	ld b, b                                          ; $7b20: $40
	ld [hl], e                                       ; $7b21: $73
	jp hl                                            ; $7b22: $e9


	sub a                                            ; $7b23: $97
	add l                                            ; $7b24: $85
	ld a, e                                          ; $7b25: $7b
	cpl                                              ; $7b26: $2f
	jr nc, jr_044_7af8                               ; $7b27: $30 $cf

	ldh a, [$3f]                                     ; $7b29: $f0 $3f
	ret nz                                           ; $7b2b: $c0

	ld h, a                                          ; $7b2c: $67
	call nz, $cd9d                                   ; $7b2d: $c4 $9d $cd
	ld [hl-], a                                      ; $7b30: $32
	ld d, e                                          ; $7b31: $53
	xor a                                            ; $7b32: $af
	sbc h                                            ; $7b33: $9c
	rst $38                                          ; $7b34: $ff
	call nc, Call_044_672b                           ; $7b35: $d4 $2b $67
	ldh a, [$7f]                                     ; $7b38: $f0 $7f
	xor [hl]                                         ; $7b3a: $ae
	ld [hl], a                                       ; $7b3b: $77
	ld sp, hl                                        ; $7b3c: $f9
	sub l                                            ; $7b3d: $95
	dec b                                            ; $7b3e: $05
	ld a, [$00ff]                                    ; $7b3f: $fa $ff $00
	ld hl, sp+$01                                    ; $7b42: $f8 $01
	ldh a, [rP1]                                     ; $7b44: $f0 $00
	ldh a, [rIF]                                     ; $7b46: $f0 $0f
	ld [hl], a                                       ; $7b48: $77
	inc e                                            ; $7b49: $1c
	ld a, a                                          ; $7b4a: $7f

Call_044_7b4b:
	db $e3                                           ; $7b4b: $e3
	ld a, [hl]                                       ; $7b4c: $7e
	db $ec                                           ; $7b4d: $ec
	ld a, a                                          ; $7b4e: $7f
	ldh a, [$7f]                                     ; $7b4f: $f0 $7f
	halt                                             ; $7b51: $76
	sbc e                                            ; $7b52: $9b
	ld c, a                                          ; $7b53: $4f
	jr nc, jr_044_7b77                               ; $7b54: $30 $21

	ret nz                                           ; $7b56: $c0

	ld [hl], e                                       ; $7b57: $73
	inc c                                            ; $7b58: $0c
	sub a                                            ; $7b59: $97
	rst $38                                          ; $7b5a: $ff
	ld a, l                                          ; $7b5b: $7d
	rst $38                                          ; $7b5c: $ff
	ldh [c], a                                       ; $7b5d: $e2
	inc e                                            ; $7b5e: $1c
	db $fc                                           ; $7b5f: $fc
	nop                                              ; $7b60: $00
	db $fd                                           ; $7b61: $fd
	ld a, e                                          ; $7b62: $7b
	dec a                                            ; $7b63: $3d
	ld l, a                                          ; $7b64: $6f
	ldh a, [$7f]                                     ; $7b65: $f0 $7f
	pop hl                                           ; $7b67: $e1
	sub a                                            ; $7b68: $97
	srl l                                            ; $7b69: $cb $3d
	ld h, h                                          ; $7b6b: $64
	jr @-$25                                         ; $7b6c: $18 $d9

	pop hl                                           ; $7b6e: $e1
	ld sp, hl                                        ; $7b6f: $f9
	ld b, $77                                        ; $7b70: $06 $77
	ldh a, [$7f]                                     ; $7b72: $f0 $7f
	db $fc                                           ; $7b74: $fc
	sub a                                            ; $7b75: $97
	push af                                          ; $7b76: $f5

jr_044_7b77:
	rst $38                                          ; $7b77: $ff
	ld a, d                                          ; $7b78: $7a
	rst $38                                          ; $7b79: $ff
	rst $38                                          ; $7b7a: $ff
	ld a, a                                          ; $7b7b: $7f

jr_044_7b7c:
	and b                                            ; $7b7c: $a0
	rst SubAFromDE                                          ; $7b7d: $df
	ld l, a                                          ; $7b7e: $6f
	ldh [$6f], a                                     ; $7b7f: $e0 $6f
	db $fc                                           ; $7b81: $fc
	sbc [hl]                                         ; $7b82: $9e
	push de                                          ; $7b83: $d5
	ld a, d                                          ; $7b84: $7a
	ret nz                                           ; $7b85: $c0

	ld d, a                                          ; $7b86: $57
	ldh a, [$7f]                                     ; $7b87: $f0 $7f
	db $fc                                           ; $7b89: $fc
	sbc [hl]                                         ; $7b8a: $9e
	xor e                                            ; $7b8b: $ab
	ld a, d                                          ; $7b8c: $7a
	ld e, b                                          ; $7b8d: $58
	ld e, a                                          ; $7b8e: $5f
	db $f4                                           ; $7b8f: $f4
	sbc [hl]                                         ; $7b90: $9e
	ld e, a                                          ; $7b91: $5f
	ld [hl], l                                       ; $7b92: $75
	ldh [c], a                                       ; $7b93: $e2
	ld l, e                                          ; $7b94: $6b
	db $e4                                           ; $7b95: $e4
	ld [hl], l                                       ; $7b96: $75
	add $7b                                          ; $7b97: $c6 $7b
	cp a                                             ; $7b99: $bf
	ld a, a                                          ; $7b9a: $7f
	ld [hl], $9d                                     ; $7b9b: $36 $9d
	cp $a9                                           ; $7b9d: $fe $a9
	ld a, e                                          ; $7b9f: $7b
	ldh a, [hDisp1_SCY]                                     ; $7ba0: $f0 $90
	xor [hl]                                         ; $7ba2: $ae
	ld sp, hl                                        ; $7ba3: $f9
	or $f1                                           ; $7ba4: $f6 $f1
	db $e3                                           ; $7ba6: $e3
	rst JumpTable                                          ; $7ba7: $c7
	ld [$e3c7], a                                    ; $7ba8: $ea $c7 $e3
	inc e                                            ; $7bab: $1c
	rst $38                                          ; $7bac: $ff
	ld a, a                                          ; $7bad: $7f
	jr nz, @+$01                                     ; $7bae: $20 $ff

	sub l                                            ; $7bb0: $95
	ld a, e                                          ; $7bb1: $7b
	ldh [$7d], a                                     ; $7bb2: $e0 $7d
	and h                                            ; $7bb4: $a4
	ld a, e                                          ; $7bb5: $7b
	ldh [c], a                                       ; $7bb6: $e2
	ld a, h                                          ; $7bb7: $7c
	sub a                                            ; $7bb8: $97
	sub e                                            ; $7bb9: $93
	nop                                              ; $7bba: $00
	ld a, [$78ff]                                    ; $7bbb: $fa $ff $78
	rst $38                                          ; $7bbe: $ff
	ld l, b                                          ; $7bbf: $68
	rst $38                                          ; $7bc0: $ff
	and l                                            ; $7bc1: $a5
	rst $38                                          ; $7bc2: $ff
	or d                                             ; $7bc3: $b2
	rst $38                                          ; $7bc4: $ff
	db $fd                                           ; $7bc5: $fd
	sbc $fe                                          ; $7bc6: $de $fe
	sbc e                                            ; $7bc8: $9b
	add hl, sp                                       ; $7bc9: $39
	ld b, $0c                                        ; $7bca: $06 $0c
	di                                               ; $7bcc: $f3
	ld l, [hl]                                       ; $7bcd: $6e
	ld e, d                                          ; $7bce: $5a
	ld a, a                                          ; $7bcf: $7f
	sbc $9a                                          ; $7bd0: $de $9a
	db $fd                                           ; $7bd2: $fd
	ld a, a                                          ; $7bd3: $7f
	ld a, d                                          ; $7bd4: $7a
	rst $38                                          ; $7bd5: $ff
	db $fd                                           ; $7bd6: $fd
	ld [hl], h                                       ; $7bd7: $74
	ret nc                                           ; $7bd8: $d0

	ld h, e                                          ; $7bd9: $63
	sub d                                            ; $7bda: $92
	ld l, a                                          ; $7bdb: $6f
	ld d, [hl]                                       ; $7bdc: $56
	ld e, a                                          ; $7bdd: $5f
	db $f4                                           ; $7bde: $f4
	ld a, a                                          ; $7bdf: $7f
	db $fc                                           ; $7be0: $fc
	sbc [hl]                                         ; $7be1: $9e
	ld e, l                                          ; $7be2: $5d
	ld [hl], c                                       ; $7be3: $71
	ld l, a                                          ; $7be4: $6f
	ld a, a                                          ; $7be5: $7f
	jr z, jr_044_7b7c                                ; $7be6: $28 $94

	inc e                                            ; $7be8: $1c
	db $e3                                           ; $7be9: $e3
	inc c                                            ; $7bea: $0c
	ldh a, [c]                                       ; $7beb: $f2
	ld d, h                                          ; $7bec: $54
	xor e                                            ; $7bed: $ab
	xor d                                            ; $7bee: $aa
	ld d, l                                          ; $7bef: $55
	ld d, l                                          ; $7bf0: $55
	xor d                                            ; $7bf1: $aa

jr_044_7bf2:
	xor d                                            ; $7bf2: $aa
	ld [hl], d                                       ; $7bf3: $72
	rrca                                             ; $7bf4: $0f
	sbc d                                            ; $7bf5: $9a
	ld bc, $4210                                     ; $7bf6: $01 $10 $42
	ld b, c                                          ; $7bf9: $41
	inc bc                                           ; $7bfa: $03
	ld a, e                                          ; $7bfb: $7b
	and $9d                                          ; $7bfc: $e6 $9d
	ld e, a                                          ; $7bfe: $5f
	and b                                            ; $7bff: $a0
	ld l, a                                          ; $7c00: $6f
	ldh a, [rPCM34]                                  ; $7c01: $f0 $77
	call c, $bf97                                    ; $7c03: $dc $97 $bf
	ret nz                                           ; $7c06: $c0

	ld h, b                                          ; $7c07: $60
	sbc c                                            ; $7c08: $99
	ldh [c], a                                       ; $7c09: $e2
	ld bc, $1fe3                                     ; $7c0a: $01 $e3 $1f
	ld h, [hl]                                       ; $7c0d: $66
	ret c                                            ; $7c0e: $d8

	sub a                                            ; $7c0f: $97
	add a                                            ; $7c10: $87
	jr @+$1a                                         ; $7c11: $18 $18

	adc [hl]                                         ; $7c13: $8e
	jr z, jr_044_7bf2                                ; $7c14: $28 $dc

	ld [hl], e                                       ; $7c16: $73
	adc c                                            ; $7c17: $89
	ld e, [hl]                                       ; $7c18: $5e
	ld h, l                                          ; $7c19: $65
	sbc d                                            ; $7c1a: $9a
	ccf                                              ; $7c1b: $3f
	ld b, b                                          ; $7c1c: $40
	ccf                                              ; $7c1d: $3f
	ld b, b                                          ; $7c1e: $40
	rst $38                                          ; $7c1f: $ff
	ld a, d                                          ; $7c20: $7a
	sbc [hl]                                         ; $7c21: $9e
	ld c, a                                          ; $7c22: $4f
	cp $9c                                           ; $7c23: $fe $9c
	ldh [$c7], a                                     ; $7c25: $e0 $c7
	rst SubAFromBC                                          ; $7c27: $e7
	ld h, e                                          ; $7c28: $63
	call z, $b66f                                    ; $7c29: $cc $6f $b6
	ld [hl], a                                       ; $7c2c: $77
	ld a, [$9a7d]                                    ; $7c2d: $fa $7d $9a
	sub a                                            ; $7c30: $97
	pop hl                                           ; $7c31: $e1
	ld e, $e8                                        ; $7c32: $1e $e8
	db $10                                           ; $7c34: $10
	ldh [$03], a                                     ; $7c35: $e0 $03
	cp $07                                           ; $7c37: $fe $07
	ld l, d                                          ; $7c39: $6a
	adc d                                            ; $7c3a: $8a
	ld [hl], e                                       ; $7c3b: $73
	add h                                            ; $7c3c: $84
	sbc l                                            ; $7c3d: $9d
	ld [hl], l                                       ; $7c3e: $75
	adc d                                            ; $7c3f: $8a
	ld l, a                                          ; $7c40: $6f
	ldh [c], a                                       ; $7c41: $e2
	ld [hl], a                                       ; $7c42: $77
	cp $77                                           ; $7c43: $fe $77
	add h                                            ; $7c45: $84
	ld h, a                                          ; $7c46: $67
	ld [hl], b                                       ; $7c47: $70
	ld h, a                                          ; $7c48: $67
	cp $9d                                           ; $7c49: $fe $9d
	ld d, a                                          ; $7c4b: $57
	xor b                                            ; $7c4c: $a8
	ld d, a                                          ; $7c4d: $57
	ldh a, [$9a]                                     ; $7c4e: $f0 $9a
	rst SubAFromHL                                          ; $7c50: $d7
	jr z, @+$01                                      ; $7c51: $28 $ff

	nop                                              ; $7c53: $00
	cp a                                             ; $7c54: $bf
	ld l, [hl]                                       ; $7c55: $6e
	ld hl, $ff78                                     ; $7c56: $21 $78 $ff
	sbc l                                            ; $7c59: $9d
	rst $38                                          ; $7c5a: $ff
	rrca                                             ; $7c5b: $0f
	ld l, e                                          ; $7c5c: $6b
	cp $7e                                           ; $7c5d: $fe $7e
	ld l, d                                          ; $7c5f: $6a
	sbc c                                            ; $7c60: $99
	ld [bc], a                                       ; $7c61: $02
	ld [$0015], a                                    ; $7c62: $ea $15 $00
	rst $38                                          ; $7c65: $ff
	ld [$907a], a                                    ; $7c66: $ea $7a $90
	ld [hl], e                                       ; $7c69: $73
	ld c, $78                                        ; $7c6a: $0e $78
	or $7b                                           ; $7c6c: $f6 $7b
	ld h, h                                          ; $7c6e: $64
	sbc c                                            ; $7c6f: $99
	ret nz                                           ; $7c70: $c0

	and b                                            ; $7c71: $a0
	rst $38                                          ; $7c72: $ff
	ld b, h                                          ; $7c73: $44
	rst $38                                          ; $7c74: $ff
	and h                                            ; $7c75: $a4

Call_044_7c76:
	ld a, c                                          ; $7c76: $79
	ld [hl], b                                       ; $7c77: $70
	halt                                             ; $7c78: $76
	sbc h                                            ; $7c79: $9c
	sbc [hl]                                         ; $7c7a: $9e
	ldh [$7b], a                                     ; $7c7b: $e0 $7b
	ld l, [hl]                                       ; $7c7d: $6e
	ld h, d                                          ; $7c7e: $62
	ld bc, $a678                                     ; $7c7f: $01 $78 $a6
	ld [hl], a                                       ; $7c82: $77
	sbc $7f                                          ; $7c83: $de $7f
	db $fc                                           ; $7c85: $fc
	sbc d                                            ; $7c86: $9a
	jr @+$01                                         ; $7c87: $18 $ff

	jr nc, @+$01                                     ; $7c89: $30 $ff

	ld h, c                                          ; $7c8b: $61
	ld [hl], e                                       ; $7c8c: $73
	ldh a, [$98]                                     ; $7c8d: $f0 $98
	ld h, $d9                                        ; $7c8f: $26 $d9
	ei                                               ; $7c91: $fb
	rlca                                             ; $7c92: $07
	rrca                                             ; $7c93: $0f
	rst $38                                          ; $7c94: $ff
	sbc a                                            ; $7c95: $9f
	ld a, e                                          ; $7c96: $7b
	cp $7f                                           ; $7c97: $fe $7f
	rst SubAFromHL                                          ; $7c99: $d7
	ld a, [hl]                                       ; $7c9a: $7e
	ld [hl], $7e                                     ; $7c9b: $36 $7e
	sbc h                                            ; $7c9d: $9c
	sbc [hl]                                         ; $7c9e: $9e
	push hl                                          ; $7c9f: $e5
	ld a, c                                          ; $7ca0: $79
	ld h, d                                          ; $7ca1: $62
	ld a, a                                          ; $7ca2: $7f
	daa                                              ; $7ca3: $27
	sbc l                                            ; $7ca4: $9d
	ldh [$9f], a                                     ; $7ca5: $e0 $9f
	ld a, e                                          ; $7ca7: $7b
	push hl                                          ; $7ca8: $e5
	ld l, b                                          ; $7ca9: $68
	ld c, b                                          ; $7caa: $48
	ld [hl], a                                       ; $7cab: $77
	add $99                                          ; $7cac: $c6 $99
	dec a                                            ; $7cae: $3d
	rst $38                                          ; $7caf: $ff
	pop bc                                           ; $7cb0: $c1
	ccf                                              ; $7cb1: $3f
	cp $01                                           ; $7cb2: $fe $01
	ld [hl], a                                       ; $7cb4: $77
	ld e, h                                          ; $7cb5: $5c
	sbc l                                            ; $7cb6: $9d
	dec d                                            ; $7cb7: $15
	ld [$8c70], a                                    ; $7cb8: $ea $70 $8c
	ld a, a                                          ; $7cbb: $7f
	cp $9c                                           ; $7cbc: $fe $9c
	rra                                              ; $7cbe: $1f
	ld a, b                                          ; $7cbf: $78
	rra                                              ; $7cc0: $1f
	ld [hl], a                                       ; $7cc1: $77
	ldh a, [$7f]                                     ; $7cc2: $f0 $7f
	db $fc                                           ; $7cc4: $fc
	ld e, a                                          ; $7cc5: $5f
	ld c, e                                          ; $7cc6: $4b
	ld l, a                                          ; $7cc7: $6f
	ldh a, [$9d]                                     ; $7cc8: $f0 $9d
	ld a, [bc]                                       ; $7cca: $0a
	push af                                          ; $7ccb: $f5
	ld e, l                                          ; $7ccc: $5d
	sub c                                            ; $7ccd: $91
	ld l, a                                          ; $7cce: $6f
	jr z, @+$79                                      ; $7ccf: $28 $77

	db $fc                                           ; $7cd1: $fc
	ld a, [hl]                                       ; $7cd2: $7e
	ld [hl+], a                                      ; $7cd3: $22
	ld d, e                                          ; $7cd4: $53
	ldh a, [$9a]                                     ; $7cd5: $f0 $9a
	ld d, a                                          ; $7cd7: $57
	ld d, l                                          ; $7cd8: $55
	xor e                                            ; $7cd9: $ab
	ld c, $f1                                        ; $7cda: $0e $f1
	ld e, a                                          ; $7cdc: $5f
	ldh a, [$99]                                     ; $7cdd: $f0 $99
	xor e                                            ; $7cdf: $ab
	db $f4                                           ; $7ce0: $f4
	ld d, l                                          ; $7ce1: $55
	ld a, [$dd22]                                    ; $7ce2: $fa $22 $dd
	ld d, a                                          ; $7ce5: $57
	ret nc                                           ; $7ce6: $d0

	ld a, [hl]                                       ; $7ce7: $7e
	ld e, h                                          ; $7ce8: $5c
	ld a, a                                          ; $7ce9: $7f
	ret nc                                           ; $7cea: $d0

	ld a, a                                          ; $7ceb: $7f
	ld a, [bc]                                       ; $7cec: $0a
	ld e, a                                          ; $7ced: $5f
	ldh a, [rPCM34]                                  ; $7cee: $f0 $77
	sbc b                                            ; $7cf0: $98
	ld d, a                                          ; $7cf1: $57
	ldh [rPCM34], a                                  ; $7cf2: $e0 $77
	ldh a, [$5f]                                     ; $7cf4: $f0 $5f
	db $f4                                           ; $7cf6: $f4
	ld a, e                                          ; $7cf7: $7b
	db $fc                                           ; $7cf8: $fc
	sbc l                                            ; $7cf9: $9d
	ld [$4f2a], a                                    ; $7cfa: $ea $2a $4f
	ldh a, [$98]                                     ; $7cfd: $f0 $98
	xor d                                            ; $7cff: $aa
	ld a, [hl+]                                      ; $7d00: $2a
	push de                                          ; $7d01: $d5
	ld e, a                                          ; $7d02: $5f
	and b                                            ; $7d03: $a0
	xor e                                            ; $7d04: $ab
	ld d, h                                          ; $7d05: $54
	ld d, a                                          ; $7d06: $57
	db $ec                                           ; $7d07: $ec
	ld l, [hl]                                       ; $7d08: $6e
	sub h                                            ; $7d09: $94
	sbc l                                            ; $7d0a: $9d
	xor a                                            ; $7d0b: $af
	ld d, b                                          ; $7d0c: $50
	ld h, e                                          ; $7d0d: $63
	ldh a, [$79]                                     ; $7d0e: $f0 $79
	inc [hl]                                         ; $7d10: $34
	ld a, a                                          ; $7d11: $7f
	ld a, [bc]                                       ; $7d12: $0a
	sbc h                                            ; $7d13: $9c
	xor a                                            ; $7d14: $af
	rst $38                                          ; $7d15: $ff
	ld b, l                                          ; $7d16: $45
	ld [hl], b                                       ; $7d17: $70
	ld [hl-], a                                      ; $7d18: $32
	ld [hl], h                                       ; $7d19: $74
	and b                                            ; $7d1a: $a0
	inc bc                                           ; $7d1b: $03
	rst $38                                          ; $7d1c: $ff
	call nc, Call_044_7dff                           ; $7d1d: $d4 $ff $7d
	dec c                                            ; $7d20: $0d
	db $d3                                           ; $7d21: $d3
	rst $38                                          ; $7d22: $ff
	sbc e                                            ; $7d23: $9b
	cp d                                             ; $7d24: $ba
	push bc                                          ; $7d25: $c5
	or l                                             ; $7d26: $b5
	jp z, $fc77                                      ; $7d27: $ca $77 $fc

	sub a                                            ; $7d2a: $97
	xor d                                            ; $7d2b: $aa
	push de                                          ; $7d2c: $d5
	or h                                             ; $7d2d: $b4
	set 4, b                                         ; $7d2e: $cb $e0
	sbc a                                            ; $7d30: $9f
	ldh a, [hDisp1_LCDC]                                     ; $7d31: $f0 $8f
	ld l, [hl]                                       ; $7d33: $6e
	ld a, [hl-]                                      ; $7d34: $3a
	ld e, [hl]                                       ; $7d35: $5e
	jp z, Jump_044_709e                              ; $7d36: $ca $9e $70

	ld [hl], d                                       ; $7d39: $72
	ld [$0c9e], a                                    ; $7d3a: $ea $9e $0c
	jp c, $feff                                      ; $7d3d: $da $ff $fe

	ld l, d                                          ; $7d40: $6a
	ret c                                            ; $7d41: $d8

	sbc [hl]                                         ; $7d42: $9e
	ld h, [hl]                                       ; $7d43: $66
	ld c, e                                          ; $7d44: $4b
	ldh a, [$7d]                                     ; $7d45: $f0 $7d
	ld [$3275], sp                                   ; $7d47: $08 $75 $32
	ld e, a                                          ; $7d4a: $5f
	ldh a, [rPCM12]                                  ; $7d4b: $f0 $76
	ld b, [hl]                                       ; $7d4d: $46
	ld c, a                                          ; $7d4e: $4f
	ldh a, [$7e]                                     ; $7d4f: $f0 $7e
	ld e, b                                          ; $7d51: $58
	ld c, a                                          ; $7d52: $4f
	ldh a, [$9e]                                     ; $7d53: $f0 $9e
	add hl, bc                                       ; $7d55: $09
	ld c, e                                          ; $7d56: $4b
	ldh a, [$7f]                                     ; $7d57: $f0 $7f
	cp $9e                                           ; $7d59: $fe $9e
	cp $4b                                           ; $7d5b: $fe $4b
	ldh a, [$9e]                                     ; $7d5d: $f0 $9e
	sub b                                            ; $7d5f: $90
	ld a, e                                          ; $7d60: $7b
	ldh a, [$9c]                                     ; $7d61: $f0 $9c
	ld bc, $4aff                                     ; $7d63: $01 $ff $4a
	ld h, e                                          ; $7d66: $63
	ldh a, [$9e]                                     ; $7d67: $f0 $9e
	ld b, $7b                                        ; $7d69: $06 $7b
	ldh a, [rPCM34]                                  ; $7d6b: $f0 $77
	inc c                                            ; $7d6d: $0c
	ld h, a                                          ; $7d6e: $67
	ldh a, [$7d]                                     ; $7d6f: $f0 $7d
	ldh a, [c]                                       ; $7d71: $f2
	rst $38                                          ; $7d72: $ff
	ld a, a                                          ; $7d73: $7f
	ld e, d                                          ; $7d74: $5a
	ld a, l                                          ; $7d75: $7d
	add $67                                          ; $7d76: $c6 $67
	ldh a, [$9e]                                     ; $7d78: $f0 $9e
	and a                                            ; $7d7a: $a7
	ld a, e                                          ; $7d7b: $7b
	ldh a, [$7e]                                     ; $7d7c: $f0 $7e
	ld a, h                                          ; $7d7e: $7c
	sbc l                                            ; $7d7f: $9d
	ld [$77f7], sp                                   ; $7d80: $08 $f7 $77
	db $f4                                           ; $7d83: $f4
	ld a, a                                          ; $7d84: $7f
	ret z                                            ; $7d85: $c8

	ld a, l                                          ; $7d86: $7d
	sbc $9b                                          ; $7d87: $de $9b
	rst FarCall                                          ; $7d89: $f7
	cp $00                                           ; $7d8a: $fe $00
	ld [bc], a                                       ; $7d8c: $02
	ld l, a                                          ; $7d8d: $6f
	and $9e                                          ; $7d8e: $e6 $9e
	ld [hl], c                                       ; $7d90: $71
	ld l, l                                          ; $7d91: $6d
	db $ec                                           ; $7d92: $ec
	sbc l                                            ; $7d93: $9d
	nop                                              ; $7d94: $00
	jr nc, jr_044_7e0a                               ; $7d95: $30 $73

	ret nz                                           ; $7d97: $c0

	ld d, a                                          ; $7d98: $57
	db $fc                                           ; $7d99: $fc
	reti                                             ; $7d9a: $d9


	rst $38                                          ; $7d9b: $ff
	ld d, a                                          ; $7d9c: $57
	ld c, d                                          ; $7d9d: $4a
	ld d, a                                          ; $7d9e: $57
	ldh a, [$7f]                                     ; $7d9f: $f0 $7f
	sbc $75                                          ; $7da1: $de $75
	ld e, b                                          ; $7da3: $58
	ld l, l                                          ; $7da4: $6d
	ld d, h                                          ; $7da5: $54
	ld [hl], a                                       ; $7da6: $77
	db $fc                                           ; $7da7: $fc
	ld a, h                                          ; $7da8: $7c
	ld h, $9e                                        ; $7da9: $26 $9e
	ld a, a                                          ; $7dab: $7f
	ld e, a                                          ; $7dac: $5f
	db $fc                                           ; $7dad: $fc
	sub b                                            ; $7dae: $90
	cp $7f                                           ; $7daf: $fe $7f
	db $fd                                           ; $7db1: $fd
	ld [$f595], a                                    ; $7db2: $ea $95 $f5
	adc d                                            ; $7db5: $8a
	jp z, $c0b5                                      ; $7db6: $ca $b5 $c0

	cp a                                             ; $7db9: $bf
	ret nz                                           ; $7dba: $c0

	cp a                                             ; $7dbb: $bf
	db $ec                                           ; $7dbc: $ec
	sub e                                            ; $7dbd: $93
	ld [hl], a                                       ; $7dbe: $77
	ldh [hDisp1_LCDC], a                                     ; $7dbf: $e0 $8f
	and b                                            ; $7dc1: $a0
	ld e, [hl]                                       ; $7dc2: $5e
	ld b, b                                          ; $7dc3: $40
	cp l                                             ; $7dc4: $bd
	ld bc, $00fa                                     ; $7dc5: $01 $fa $00
	push af                                          ; $7dc8: $f5
	ld bc, $10ed                                     ; $7dc9: $01 $ed $10
	rst GetHLinHL                                          ; $7dcc: $cf
	add h                                            ; $7dcd: $84
	cp e                                             ; $7dce: $bb
	jp nz, $6ffd                                     ; $7dcf: $c2 $fd $6f

	xor l                                            ; $7dd2: $ad
	ld [hl], a                                       ; $7dd3: $77
	add h                                            ; $7dd4: $84
	ei                                               ; $7dd5: $fb
	ld a, a                                          ; $7dd6: $7f

jr_044_7dd7:
	rst FarCall                                          ; $7dd7: $f7
	sbc c                                            ; $7dd8: $99
	di                                               ; $7dd9: $f3
	rst $38                                          ; $7dda: $ff
	di                                               ; $7ddb: $f3
	di                                               ; $7ddc: $f3
	nop                                              ; $7ddd: $00
	di                                               ; $7dde: $f3
	ld e, a                                          ; $7ddf: $5f
	ldh a, [$dd]                                     ; $7de0: $f0 $dd
	rst $38                                          ; $7de2: $ff
	sbc [hl]                                         ; $7de3: $9e
	dec b                                            ; $7de4: $05
	ld e, e                                          ; $7de5: $5b
	ldh [$99], a                                     ; $7de6: $e0 $99
	db $fc                                           ; $7de8: $fc
	rst $38                                          ; $7de9: $ff
	db $fc                                           ; $7dea: $fc
	cp $fc                                           ; $7deb: $fe $fc
	db $fc                                           ; $7ded: $fc
	ld c, a                                          ; $7dee: $4f
	ldh [$72], a                                     ; $7def: $e0 $72
	sub $53                                          ; $7df1: $d6 $53
	ldh a, [$9e]                                     ; $7df3: $f0 $9e
	rlca                                             ; $7df5: $07
	ld h, e                                          ; $7df6: $63
	ldh a, [$7d]                                     ; $7df7: $f0 $7d
	jr jr_044_7dd7                                   ; $7df9: $18 $dc

	ccf                                              ; $7dfb: $3f
	ld h, e                                          ; $7dfc: $63
	ldh a, [$9e]                                     ; $7dfd: $f0 $9e

Call_044_7dff:
Jump_044_7dff:
	ld e, a                                          ; $7dff: $5f
	call c, Call_044_7dff                            ; $7e00: $dc $ff $7d
	ld b, $67                                        ; $7e03: $06 $67
	ldh a, [$7c]                                     ; $7e05: $f0 $7c
	ld a, l                                          ; $7e07: $7d
	db $dd                                           ; $7e08: $dd
	rst GetHLinHL                                          ; $7e09: $cf

jr_044_7e0a:
	sbc l                                            ; $7e0a: $9d
	nop                                              ; $7e0b: $00
	rst GetHLinHL                                          ; $7e0c: $cf
	ld h, a                                          ; $7e0d: $67
	ldh a, [rOCPS]                                   ; $7e0e: $f0 $6a
	ld h, [hl]                                       ; $7e10: $66
	ld l, e                                          ; $7e11: $6b
	xor [hl]                                         ; $7e12: $ae
	ld a, a                                          ; $7e13: $7f
	ld sp, hl                                        ; $7e14: $f9
	ld a, [hl]                                       ; $7e15: $7e
	ret nc                                           ; $7e16: $d0

	db $dd                                           ; $7e17: $dd
	di                                               ; $7e18: $f3
	sbc [hl]                                         ; $7e19: $9e
	db $10                                           ; $7e1a: $10
	ld l, e                                          ; $7e1b: $6b
	ld l, [hl]                                       ; $7e1c: $6e
	sub l                                            ; $7e1d: $95
	ld a, [$0004]                                    ; $7e1e: $fa $04 $00
	db $fc                                           ; $7e21: $fc
	ld hl, sp-$04                                    ; $7e22: $f8 $fc
	ld hl, sp-$08                                    ; $7e24: $f8 $f8
	nop                                              ; $7e26: $00
	ld hl, sp-$03                                    ; $7e27: $f8 $fd
	ld l, e                                          ; $7e29: $6b
	cp e                                             ; $7e2a: $bb
	sbc l                                            ; $7e2b: $9d
	nop                                              ; $7e2c: $00
	ld hl, $b77a                                     ; $7e2d: $21 $7a $b7
	sbc [hl]                                         ; $7e30: $9e
	dec b                                            ; $7e31: $05
	ld [hl], e                                       ; $7e32: $73
	db $fc                                           ; $7e33: $fc
	sub b                                            ; $7e34: $90
	ld d, l                                          ; $7e35: $55
	ld a, a                                          ; $7e36: $7f
	ld a, [hl+]                                      ; $7e37: $2a
	ld a, a                                          ; $7e38: $7f
	dec d                                            ; $7e39: $15
	ccf                                              ; $7e3a: $3f
	ld a, [de]                                       ; $7e3b: $1a
	rrca                                             ; $7e3c: $0f
	adc l                                            ; $7e3d: $8d
	rlca                                             ; $7e3e: $07
	ld d, d                                          ; $7e3f: $52
	ld bc, $00a9                                     ; $7e40: $01 $a9 $00
	ld d, h                                          ; $7e43: $54
	ld [hl], e                                       ; $7e44: $73
	ld l, a                                          ; $7e45: $6f
	sbc h                                            ; $7e46: $9c
	dec e                                            ; $7e47: $1d
	rst $38                                          ; $7e48: $ff
	dec de                                           ; $7e49: $1b
	ld a, e                                          ; $7e4a: $7b
	cp $78                                           ; $7e4b: $fe $78
	ld c, e                                          ; $7e4d: $4b
	sbc h                                            ; $7e4e: $9c
	rst $38                                          ; $7e4f: $ff
	ld a, h                                          ; $7e50: $7c
	inc bc                                           ; $7e51: $03
	ld [hl], a                                       ; $7e52: $77
	ldh a, [hDisp1_WX]                                     ; $7e53: $f0 $96
	ldh a, [rIE]                                     ; $7e55: $f0 $ff
	or b                                             ; $7e57: $b0
	rst $38                                          ; $7e58: $ff
	sub b                                            ; $7e59: $90
	ccf                                              ; $7e5a: $3f
	jr nz, @+$01                                     ; $7e5b: $20 $ff

	ld h, b                                          ; $7e5d: $60
	ld [hl], d                                       ; $7e5e: $72
	ret nz                                           ; $7e5f: $c0

	ld l, [hl]                                       ; $7e60: $6e
	ret z                                            ; $7e61: $c8

	sub c                                            ; $7e62: $91
	xor e                                            ; $7e63: $ab
	cp $5f                                           ; $7e64: $fe $5f
	db $fd                                           ; $7e66: $fd
	cp a                                             ; $7e67: $bf
	ld [$d5ff], a                                    ; $7e68: $ea $ff $d5
	cp a                                             ; $7e6b: $bf
	ld a, [$f57f]                                    ; $7e6c: $fa $7f $f5
	rst $38                                          ; $7e6f: $ff
	ld [$7d5a], a                                    ; $7e70: $ea $5a $7d
	sbc [hl]                                         ; $7e73: $9e
	xor e                                            ; $7e74: $ab
	ld h, e                                          ; $7e75: $63
	db $fc                                           ; $7e76: $fc
	sbc [hl]                                         ; $7e77: $9e
	ld d, a                                          ; $7e78: $57
	ld [hl], a                                       ; $7e79: $77
	db $fc                                           ; $7e7a: $fc
	sub l                                            ; $7e7b: $95
	ldh a, [$cf]                                     ; $7e7c: $f0 $cf
	di                                               ; $7e7e: $f3
	call z, $cef1                                    ; $7e7f: $cc $f1 $ce
	ldh a, [$ef]                                     ; $7e82: $f0 $ef
	ld sp, hl                                        ; $7e84: $f9
	and $7a                                          ; $7e85: $e6 $7a
	adc e                                            ; $7e87: $8b
	ld a, e                                          ; $7e88: $7b
	ret nc                                           ; $7e89: $d0

	inc sp                                           ; $7e8a: $33
	nop                                              ; $7e8b: $00
	ret nc                                           ; $7e8c: $d0

	ld b, h                                          ; $7e8d: $44
	sbc [hl]                                         ; $7e8e: $9e
	ld b, e                                          ; $7e8f: $43
	reti                                             ; $7e90: $d9


	ld b, h                                          ; $7e91: $44
	rst SubAFromDE                                          ; $7e92: $df
	inc sp                                           ; $7e93: $33
	sbc [hl]                                         ; $7e94: $9e
	inc [hl]                                         ; $7e95: $34
	ld h, e                                          ; $7e96: $63
	push af                                          ; $7e97: $f5
	ld h, a                                          ; $7e98: $67
	or $9b                                           ; $7e99: $f6 $9b
	ld b, a                                          ; $7e9b: $47
	inc sp                                           ; $7e9c: $33
	ld [hl], h                                       ; $7e9d: $74
	ld b, h                                          ; $7e9e: $44
	db $db                                           ; $7e9f: $db
	ld d, l                                          ; $7ea0: $55
	sbc e                                            ; $7ea1: $9b
	ld d, a                                          ; $7ea2: $57
	ld [hl], a                                       ; $7ea3: $77
	ld [hl], l                                       ; $7ea4: $75
	ld d, l                                          ; $7ea5: $55
	jp c, Jump_044_7f66                              ; $7ea6: $da $66 $7f

	or $9e                                           ; $7ea9: $f6 $9e
	ld h, l                                          ; $7eab: $65
	db $db                                           ; $7eac: $db
	ld h, [hl]                                       ; $7ead: $66
	sbc e                                            ; $7eae: $9b
	ld h, e                                          ; $7eaf: $63
	inc sp                                           ; $7eb0: $33
	inc sp                                           ; $7eb1: $33
	halt                                             ; $7eb2: $76
	ld h, e                                          ; $7eb3: $63
	or $da                                           ; $7eb4: $f6 $da
	ld h, [hl]                                       ; $7eb6: $66
	ld e, a                                          ; $7eb7: $5f
	or $de                                           ; $7eb8: $f6 $de
	inc sp                                           ; $7eba: $33
	sbc [hl]                                         ; $7ebb: $9e
	scf                                              ; $7ebc: $37
	dec l                                            ; $7ebd: $2d
	ld b, $9d                                        ; $7ebe: $06 $9d
	nop                                              ; $7ec0: $00
	rst $38                                          ; $7ec1: $ff
	inc bc                                           ; $7ec2: $03
	cp $03                                           ; $7ec3: $fe $03
	cp $03                                           ; $7ec5: $fe $03
	cp $03                                           ; $7ec7: $fe $03
	cp $03                                           ; $7ec9: $fe $03
	cp $03                                           ; $7ecb: $fe $03
	cp $03                                           ; $7ecd: $fe $03
	cp $03                                           ; $7ecf: $fe $03
	cp $03                                           ; $7ed1: $fe $03
	cp $33                                           ; $7ed3: $fe $33
	cp $8b                                           ; $7ed5: $fe $8b
	ld d, h                                          ; $7ed7: $54
	xor e                                            ; $7ed8: $ab
	xor d                                            ; $7ed9: $aa
	ld d, l                                          ; $7eda: $55
	ld d, l                                          ; $7edb: $55
	xor d                                            ; $7edc: $aa
	xor d                                            ; $7edd: $aa
	ld d, l                                          ; $7ede: $55
	push de                                          ; $7edf: $d5

jr_044_7ee0:
	ld a, [hl+]                                      ; $7ee0: $2a
	xor d                                            ; $7ee1: $aa
	ld d, l                                          ; $7ee2: $55
	push af                                          ; $7ee3: $f5
	ld a, [bc]                                       ; $7ee4: $0a
	rst $38                                          ; $7ee5: $ff
	nop                                              ; $7ee6: $00
	nop                                              ; $7ee7: $00
	rst $38                                          ; $7ee8: $ff
	and b                                            ; $7ee9: $a0
	ld e, a                                          ; $7eea: $5f
	ld [hl], a                                       ; $7eeb: $77
	ldh a, [$6f]                                     ; $7eec: $f0 $6f
	db $fc                                           ; $7eee: $fc
	sbc c                                            ; $7eef: $99
	ld [$0015], a                                    ; $7ef0: $ea $15 $00

Jump_044_7ef3:
	rst $38                                          ; $7ef3: $ff
	adc b                                            ; $7ef4: $88
	ld [hl], a                                       ; $7ef5: $77
	ld e, a                                          ; $7ef6: $5f
	ldh a, [$7f]                                     ; $7ef7: $f0 $7f
	db $fc                                           ; $7ef9: $fc
	ld [hl], a                                       ; $7efa: $77
	call z, $f04f                                    ; $7efb: $cc $4f $f0
	sbc l                                            ; $7efe: $9d

Jump_044_7eff:
	jr nz, jr_044_7ee0                               ; $7eff: $20 $df

	ld b, a                                          ; $7f01: $47
	ldh [$9d], a                                     ; $7f02: $e0 $9d
	ld d, c                                          ; $7f04: $51
	xor [hl]                                         ; $7f05: $ae
	ld d, a                                          ; $7f06: $57
	ldh a, [$9d]                                     ; $7f07: $f0 $9d
	ld [$4ff7], sp                                   ; $7f09: $08 $f7 $4f
	ldh a, [rVBK]                                    ; $7f0c: $f0 $4f
	ret nc                                           ; $7f0e: $d0

	sbc e                                            ; $7f0f: $9b
	db $10                                           ; $7f10: $10
	rst AddAOntoHL                                          ; $7f11: $ef
	ld a, [hl+]                                      ; $7f12: $2a
	push de                                          ; $7f13: $d5
	ld c, a                                          ; $7f14: $4f
	ret nz                                           ; $7f15: $c0

	ld b, a                                          ; $7f16: $47
	sub b                                            ; $7f17: $90
	sbc l                                            ; $7f18: $9d
	ld [bc], a                                       ; $7f19: $02
	db $fd                                           ; $7f1a: $fd
	ld c, a                                          ; $7f1b: $4f
	ldh a, [$57]                                     ; $7f1c: $f0 $57
	ld h, b                                          ; $7f1e: $60
	ld [hl], a                                       ; $7f1f: $77
	ret nz                                           ; $7f20: $c0

	ld e, a                                          ; $7f21: $5f
	db $f4                                           ; $7f22: $f4
	ld [hl], a                                       ; $7f23: $77
	db $fc                                           ; $7f24: $fc
	sbc l                                            ; $7f25: $9d
	ld de, $4fee                                     ; $7f26: $11 $ee $4f
	ldh a, [$9d]                                     ; $7f29: $f0 $9d
	ld b, c                                          ; $7f2b: $41
	cp [hl]                                          ; $7f2c: $be
	ld d, a                                          ; $7f2d: $57
	ldh a, [$9b]                                     ; $7f2e: $f0 $9b
	cp a                                             ; $7f30: $bf
	ld b, b                                          ; $7f31: $40
	ld d, b                                          ; $7f32: $50
	xor a                                            ; $7f33: $af
	ld h, a                                          ; $7f34: $67
	db $f4                                           ; $7f35: $f4
	ld a, a                                          ; $7f36: $7f
	ld d, a                                          ; $7f37: $57
	sbc h                                            ; $7f38: $9c
	xor a                                            ; $7f39: $af
	nop                                              ; $7f3a: $00
	rra                                              ; $7f3b: $1f
	ld a, e                                          ; $7f3c: $7b
	db $10                                           ; $7f3d: $10
	ld l, a                                          ; $7f3e: $6f
	ldh a, [$7f]                                     ; $7f3f: $f0 $7f
	ldh a, [c]                                       ; $7f41: $f2
	sbc c                                            ; $7f42: $99
	push af                                          ; $7f43: $f5
	nop                                              ; $7f44: $00
	ld hl, sp+$00                                    ; $7f45: $f8 $00
	ld d, b                                          ; $7f47: $50
	and b                                            ; $7f48: $a0
	ld l, a                                          ; $7f49: $6f
	and b                                            ; $7f4a: $a0
	ld a, a                                          ; $7f4b: $7f
	ld [$f07f], sp                                   ; $7f4c: $08 $7f $f0
	sbc d                                            ; $7f4f: $9a
	ld d, a                                          ; $7f50: $57
	nop                                              ; $7f51: $00
	dec hl                                           ; $7f52: $2b

jr_044_7f53:
	nop                                              ; $7f53: $00
	inc d                                            ; $7f54: $14
	ld a, e                                          ; $7f55: $7b
	ldh [$9d], a                                     ; $7f56: $e0 $9d
	ld a, [bc]                                       ; $7f58: $0a
	push af                                          ; $7f59: $f5
	ld l, [hl]                                       ; $7f5a: $6e
	ldh [$9a], a                                     ; $7f5b: $e0 $9a
	ld a, a                                          ; $7f5d: $7f
	nop                                              ; $7f5e: $00
	ld a, [hl+]                                      ; $7f5f: $2a
	nop                                              ; $7f60: $00
	dec d                                            ; $7f61: $15
	ld a, e                                          ; $7f62: $7b
	ldh a, [$7f]                                     ; $7f63: $f0 $7f
	ld [hl], b                                       ; $7f65: $70

Jump_044_7f66:
	sbc l                                            ; $7f66: $9d
	dec b                                            ; $7f67: $05
	ld a, [$cc77]                                    ; $7f68: $fa $77 $cc
	sbc d                                            ; $7f6b: $9a

jr_044_7f6c:
	add sp, $15                                      ; $7f6c: $e8 $15
	ret nc                                           ; $7f6e: $d0

	jr z, jr_044_7f53                                ; $7f6f: $28 $e2

	ld a, e                                          ; $7f71: $7b
	ret c                                            ; $7f72: $d8

	ld d, a                                          ; $7f73: $57
	cp $9d                                           ; $7f74: $fe $9d
	ld e, a                                          ; $7f76: $5f
	nop                                              ; $7f77: $00
	halt                                             ; $7f78: $76
	cp h                                             ; $7f79: $bc
	ld d, a                                          ; $7f7a: $57
	cp $77                                           ; $7f7b: $fe $77
	sbc b                                            ; $7f7d: $98
	ld c, a                                          ; $7f7e: $4f
	ldh a, [rPCM34]                                  ; $7f7f: $f0 $77
	and h                                            ; $7f81: $a4
	ld d, a                                          ; $7f82: $57
	ldh a, [$6f]                                     ; $7f83: $f0 $6f
	ld [hl], h                                       ; $7f85: $74
	ld l, a                                          ; $7f86: $6f
	cp $7f                                           ; $7f87: $fe $7f
	ld a, h                                          ; $7f89: $7c
	ld a, a                                          ; $7f8a: $7f
	db $f4                                           ; $7f8b: $f4
	sbc e                                            ; $7f8c: $9b
	xor e                                            ; $7f8d: $ab
	ld d, h                                          ; $7f8e: $54
	ld a, a                                          ; $7f8f: $7f
	add b                                            ; $7f90: $80
	ld e, a                                          ; $7f91: $5f
	or b                                             ; $7f92: $b0
	scf                                              ; $7f93: $37
	ret nc                                           ; $7f94: $d0

	ld l, a                                          ; $7f95: $6f

jr_044_7f96:
	or $9c                                           ; $7f96: $f6 $9c
	ld [$7100], a                                    ; $7f98: $ea $00 $71
	ld a, e                                          ; $7f9b: $7b
	db $fc                                           ; $7f9c: $fc
	ld l, a                                          ; $7f9d: $6f
	ld h, h                                          ; $7f9e: $64
	ld [hl], a                                       ; $7f9f: $77
	ldh a, [$9e]                                     ; $7fa0: $f0 $9e
	di                                               ; $7fa2: $f3
	ld a, e                                          ; $7fa3: $7b
	db $fc                                           ; $7fa4: $fc
	ld a, a                                          ; $7fa5: $7f
	ld l, $67                                        ; $7fa6: $2e $67
	inc d                                            ; $7fa8: $14
	ld a, a                                          ; $7fa9: $7f
	db $ec                                           ; $7faa: $ec
	ld l, a                                          ; $7fab: $6f
	ret z                                            ; $7fac: $c8

	ld [hl], a                                       ; $7fad: $77
	or b                                             ; $7fae: $b0
	ld a, a                                          ; $7faf: $7f
	db $fc                                           ; $7fb0: $fc
	sbc b                                            ; $7fb1: $98
	xor a                                            ; $7fb2: $af
	ld d, b                                          ; $7fb3: $50
	ld e, a                                          ; $7fb4: $5f
	and b                                            ; $7fb5: $a0
	cp $00                                           ; $7fb6: $fe $00
	db $fd                                           ; $7fb8: $fd
	ld a, e                                          ; $7fb9: $7b
	ret nc                                           ; $7fba: $d0

	ld a, a                                          ; $7fbb: $7f
	ld hl, sp+$7e                                    ; $7fbc: $f8 $7e
	db $fc                                           ; $7fbe: $fc
	ld h, a                                          ; $7fbf: $67
	or h                                             ; $7fc0: $b4
	ld [hl], a                                       ; $7fc1: $77
	xor $7f                                          ; $7fc2: $ee $7f
	db $e4                                           ; $7fc4: $e4
	sbc l                                            ; $7fc5: $9d
	ld a, [$6705]                                    ; $7fc6: $fa $05 $67
	ldh a, [$9c]                                     ; $7fc9: $f0 $9c
	xor e                                            ; $7fcb: $ab
	nop                                              ; $7fcc: $00
	ld d, l                                          ; $7fcd: $55
	ld a, e                                          ; $7fce: $7b
	jr nz, jr_044_7f6c                               ; $7fcf: $20 $9b

	call nc, $a82b                                   ; $7fd1: $d4 $2b $a8
	ld d, a                                          ; $7fd4: $57
	ld [hl], a                                       ; $7fd5: $77
	jp nz, $367f                                     ; $7fd6: $c2 $7f $36

	ld a, a                                          ; $7fd9: $7f
	and $7f                                          ; $7fda: $e6 $7f
	inc c                                            ; $7fdc: $0c
	sub a                                            ; $7fdd: $97
	ld a, [hl-]                                      ; $7fde: $3a
	push bc                                          ; $7fdf: $c5
	ld b, l                                          ; $7fe0: $45
	add d                                            ; $7fe1: $82
	dec sp                                           ; $7fe2: $3b
	call nz, $ea15                                   ; $7fe3: $c4 $15 $ea
	ld l, [hl]                                       ; $7fe6: $6e
	ld a, [bc]                                       ; $7fe7: $0a
	sub c                                            ; $7fe8: $91
	rst SubAFromHL                                          ; $7fe9: $d7
	jr z, jr_044_7f96                                ; $7fea: $28 $aa

	nop                                              ; $7fec: $00
	ld bc, $aa00                                     ; $7fed: $01 $00 $aa
	nop                                              ; $7ff0: $00
	ld d, l                                          ; $7ff1: $55
	add b                                            ; $7ff2: $80
	cp a                                             ; $7ff3: $bf
	ld b, b                                          ; $7ff4: $40
	ld e, a                                          ; $7ff5: $5f
	and b                                            ; $7ff6: $a0
	ld [hl], c                                       ; $7ff7: $71
	jp z, $cc7b                                      ; $7ff8: $ca $7b $cc

	ld a, a                                          ; $7ffb: $7f
	cp b                                             ; $7ffc: $b8
	ld a, e                                          ; $7ffd: $7b
	db $c4                                           ; $7ffe: $c4

Call_044_7fff:
Jump_044_7fff:
	ld a, e                                          ; $7fff: $7b
