; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $025", ROMX[$4000], BANK[$25]

	inc e                                            ; $4000: $1c
	rrca                                             ; $4001: $0f
	add a                                            ; $4002: $87
	pop hl                                           ; $4003: $e1
	ld hl, sp+$7e                                    ; $4004: $f8 $7e
	rra                                              ; $4006: $1f
	add a                                            ; $4007: $87
	ld sp, hl                                        ; $4008: $f9
	cp $3f                                           ; $4009: $fe $3f
	ret nz                                           ; $400b: $c0

	ccf                                              ; $400c: $3f
	add e                                            ; $400d: $83
	call c, $9eff                                    ; $400e: $dc $ff $9e
	cp $7b                                           ; $4011: $fe $7b
	cp $6b                                           ; $4013: $fe $6b
	rst FarCall                                          ; $4015: $f7
	ld a, a                                          ; $4016: $7f
	db $fd                                           ; $4017: $fd
	sbc c                                            ; $4018: $99
	db $fc                                           ; $4019: $fc
	ld e, h                                          ; $401a: $5c
	cpl                                              ; $401b: $2f
	nop                                              ; $401c: $00
	pop bc                                           ; $401d: $c1
	ei                                               ; $401e: $fb
	ld a, e                                          ; $401f: $7b
	or $9a                                           ; $4020: $f6 $9a
	adc a                                            ; $4022: $8f
	cp a                                             ; $4023: $bf
	ld [$d5d4], a                                    ; $4024: $ea $d4 $d5
	db $dd                                           ; $4027: $dd
	rst $38                                          ; $4028: $ff
	sbc e                                            ; $4029: $9b
	ccf                                              ; $402a: $3f
	rst $38                                          ; $402b: $ff
	rst $38                                          ; $402c: $ff
	db $e3                                           ; $402d: $e3
	sbc $ff                                          ; $402e: $de $ff
	sbc h                                            ; $4030: $9c
	cp a                                             ; $4031: $bf
	rst $38                                          ; $4032: $ff
	ld a, a                                          ; $4033: $7f
	ret c                                            ; $4034: $d8

	rst $38                                          ; $4035: $ff
	sbc [hl]                                         ; $4036: $9e
	db $fc                                           ; $4037: $fc
	ld e, a                                          ; $4038: $5f
	or $80                                           ; $4039: $f6 $80
	or $ec                                           ; $403b: $f6 $ec
	db $ec                                           ; $403d: $ec
	push hl                                          ; $403e: $e5
	rra                                              ; $403f: $1f
	push de                                          ; $4040: $d5
	rst FarCall                                          ; $4041: $f7

Jump_025_4042:
	rst AddAOntoHL                                          ; $4042: $ef
	db $fd                                           ; $4043: $fd
	ld a, [$fefa]                                    ; $4044: $fa $fa $fe

Call_025_4047:
	rst $38                                          ; $4047: $ff
	dec sp                                           ; $4048: $3b
	rst FarCall                                          ; $4049: $f7
	pop af                                           ; $404a: $f1
	pop de                                           ; $404b: $d1
	or a                                             ; $404c: $b7
	db $f4                                           ; $404d: $f4
	rst $38                                          ; $404e: $ff
	cp a                                             ; $404f: $bf
	ld l, l                                          ; $4050: $6d
	rst $38                                          ; $4051: $ff
	cp $60                                           ; $4052: $fe $60
	rst GetHLinHL                                          ; $4054: $cf
	ld hl, sp-$01                                    ; $4055: $f8 $ff
	rst GetHLinHL                                          ; $4057: $cf
	sbc e                                            ; $4058: $9b
	ccf                                              ; $4059: $3f
	sub b                                            ; $405a: $90
	rla                                              ; $405b: $17
	dec [hl]                                         ; $405c: $35
	inc e                                            ; $405d: $1c
	inc sp                                           ; $405e: $33
	db $fd                                           ; $405f: $fd
	add a                                            ; $4060: $87
	ld a, [$0dc3]                                    ; $4061: $fa $c3 $0d
	ei                                               ; $4064: $fb
	adc a                                            ; $4065: $8f
	ld a, a                                          ; $4066: $7f
	rst $38                                          ; $4067: $ff
	ld sp, hl                                        ; $4068: $f9
	ld a, a                                          ; $4069: $7f
	ld [hl], a                                       ; $406a: $77
	cp h                                             ; $406b: $bc
	sbc e                                            ; $406c: $9b
	cp a                                             ; $406d: $bf
	ld a, a                                          ; $406e: $7f
	ld a, a                                          ; $406f: $7f
	rst SubAFromDE                                          ; $4070: $df
	call c, $dfff                                    ; $4071: $dc $ff $df
	rst SubAFromDE                                          ; $4074: $df
	ld a, a                                          ; $4075: $7f
	xor h                                            ; $4076: $ac
	sbc e                                            ; $4077: $9b
	rst $38                                          ; $4078: $ff
	cp e                                             ; $4079: $bb
	db $f4                                           ; $407a: $f4
	db $fd                                           ; $407b: $fd
	ld a, e                                          ; $407c: $7b
	adc e                                            ; $407d: $8b
	rst SubAFromDE                                          ; $407e: $df
	rst $38                                          ; $407f: $ff
	sbc l                                            ; $4080: $9d
	rst JumpTable                                          ; $4081: $c7
	ld hl, sp+$77                                    ; $4082: $f8 $77
	ld a, e                                          ; $4084: $7b
	add b                                            ; $4085: $80
	ei                                               ; $4086: $fb
	rst FarCall                                          ; $4087: $f7
	xor $3c                                          ; $4088: $ee $3c
	add hl, de                                       ; $408a: $19
	ld c, d                                          ; $408b: $4a
	xor d                                            ; $408c: $aa
	ld e, a                                          ; $408d: $5f
	db $fc                                           ; $408e: $fc
	ld hl, sp-$0f                                    ; $408f: $f8 $f1
	ld h, e                                          ; $4091: $63
	scf                                              ; $4092: $37
	sbc a                                            ; $4093: $9f
	rst GetHLinHL                                          ; $4094: $cf
	rst SubAFromBC                                          ; $4095: $e7
	ld a, [$e9f5]                                    ; $4096: $fa $f5 $e9
	ld c, [hl]                                       ; $4099: $4e
	or a                                             ; $409a: $b7
	add $9b                                          ; $409b: $c6 $9b
	ld l, a                                          ; $409d: $6f
	daa                                              ; $409e: $27
	ld c, [hl]                                       ; $409f: $4e
	sbc a                                            ; $40a0: $9f
	cp a                                             ; $40a1: $bf
	ld a, b                                          ; $40a2: $78
	ld a, a                                          ; $40a3: $7f
	db $fc                                           ; $40a4: $fc
	add b                                            ; $40a5: $80
	rst $38                                          ; $40a6: $ff
	push af                                          ; $40a7: $f5
	sub $f7                                          ; $40a8: $d6 $f7
	rst AddAOntoHL                                          ; $40aa: $ef
	dec b                                            ; $40ab: $05
	ld de, $a9e2                                     ; $40ac: $11 $e2 $a9
	dec de                                           ; $40af: $1b
	dec sp                                           ; $40b0: $3b
	ld a, [$031e]                                    ; $40b1: $fa $1e $03
	ldh [rAUD3LEVEL], a                              ; $40b4: $e0 $1c
	add $b7                                          ; $40b6: $c6 $b7
	ld a, [$fdee]                                    ; $40b8: $fa $ee $fd
	rst FarCall                                          ; $40bb: $f7
	rst FarCall                                          ; $40bc: $f7
	and a                                            ; $40bd: $a7
	ld d, [hl]                                       ; $40be: $56
	ld e, a                                          ; $40bf: $5f
	ld d, a                                          ; $40c0: $57
	ld e, e                                          ; $40c1: $5b
	ld c, e                                          ; $40c2: $4b
	ld c, l                                          ; $40c3: $4d
	call Call_025_7d9b                               ; $40c4: $cd $9b $7d
	dec a                                            ; $40c7: $3d
	ccf                                              ; $40c8: $3f
	rst JumpTable                                          ; $40c9: $c7
	ld a, e                                          ; $40ca: $7b
	and e                                            ; $40cb: $a3
	sbc h                                            ; $40cc: $9c
	rst GetHLinHL                                          ; $40cd: $cf
	cpl                                              ; $40ce: $2f
	rst AddAOntoHL                                          ; $40cf: $ef
	db $dd                                           ; $40d0: $dd
	rst $38                                          ; $40d1: $ff
	rst SubAFromDE                                          ; $40d2: $df
	ld a, a                                          ; $40d3: $7f
	ld a, a                                          ; $40d4: $7f
	sub l                                            ; $40d5: $95
	sub e                                            ; $40d6: $93
	ld sp, hl                                        ; $40d7: $f9
	rst $38                                          ; $40d8: $ff
	push af                                          ; $40d9: $f5
	ret nc                                           ; $40da: $d0

	cp a                                             ; $40db: $bf
	ld a, l                                          ; $40dc: $7d
	jp hl                                            ; $40dd: $e9


	jp nc, $fffe                                     ; $40de: $d2 $fe $ff

	ld hl, sp-$20                                    ; $40e1: $f8 $e0
	ld [hl], a                                       ; $40e3: $77
	adc e                                            ; $40e4: $8b
	add b                                            ; $40e5: $80
	xor [hl]                                         ; $40e6: $ae
	rst SubAFromDE                                          ; $40e7: $df
	rst GetHLinHL                                          ; $40e8: $cf
	ld a, e                                          ; $40e9: $7b
	cp $bf                                           ; $40ea: $fe $bf
	ld d, a                                          ; $40ec: $57
	adc e                                            ; $40ed: $8b
	ld [hl], a                                       ; $40ee: $77
	inc sp                                           ; $40ef: $33
	ei                                               ; $40f0: $fb
	ccf                                              ; $40f1: $3f
	rst SubAFromDE                                          ; $40f2: $df
	rst FarCall                                          ; $40f3: $f7
	rst AddAOntoHL                                          ; $40f4: $ef
	sbc $78                                          ; $40f5: $de $78
	push hl                                          ; $40f7: $e5
	rst AddAOntoHL                                          ; $40f8: $ef
	cp h                                             ; $40f9: $bc
	ld [hl], e                                       ; $40fa: $73
	cp l                                             ; $40fb: $bd
	ld a, [hl]                                       ; $40fc: $7e
	ld l, a                                          ; $40fd: $6f
	ldh a, [$c3]                                     ; $40fe: $f0 $c3
	sbc [hl]                                         ; $4100: $9e
	ld [hl], e                                       ; $4101: $73
	db $fc                                           ; $4102: $fc
	cp $cf                                           ; $4103: $fe $cf
	add b                                            ; $4105: $80
	rst FarCall                                          ; $4106: $f7
	ldh [$fc], a                                     ; $4107: $e0 $fc
	jp z, $1245                                      ; $4109: $ca $45 $12

	add hl, hl                                       ; $410c: $29
	sub l                                            ; $410d: $95
	ld c, d                                          ; $410e: $4a
	ld [hl], e                                       ; $410f: $73
	ld sp, hl                                        ; $4110: $f9
	inc a                                            ; $4111: $3c
	adc [hl]                                         ; $4112: $8e
	rst SubAFromBC                                          ; $4113: $e7
	inc sp                                           ; $4114: $33
	add hl, de                                       ; $4115: $19
	adc l                                            ; $4116: $8d
	ld l, a                                          ; $4117: $6f
	scf                                              ; $4118: $37
	ld e, l                                          ; $4119: $5d
	dec hl                                           ; $411a: $2b
	sbc [hl]                                         ; $411b: $9e
	ld d, l                                          ; $411c: $55
	ld l, a                                          ; $411d: $6f
	cp a                                             ; $411e: $bf
	sbc h                                            ; $411f: $9c
	call z, Call_025_76e6                            ; $4120: $cc $e6 $76
	inc sp                                           ; $4123: $33
	cp e                                             ; $4124: $bb
	add c                                            ; $4125: $81
	sbc c                                            ; $4126: $99
	ret                                              ; $4127: $c9


	db $ec                                           ; $4128: $ec
	db $e4                                           ; $4129: $e4
	sbc $fe                                          ; $412a: $de $fe
	cp $fd                                           ; $412c: $fe $fd
	db $dd                                           ; $412e: $dd
	push de                                          ; $412f: $d5
	cp h                                             ; $4130: $bc
	cp h                                             ; $4131: $bc
	or [hl]                                          ; $4132: $b6
	sub [hl]                                         ; $4133: $96
	sub [hl]                                         ; $4134: $96
	sub a                                            ; $4135: $97
	or a                                             ; $4136: $b7
	cp a                                             ; $4137: $bf
	jp c, sCurrOffsetIntoScript+1                                      ; $4138: $da $bd $bd

	reti                                             ; $413b: $d9


	cp $fe                                           ; $413c: $fe $fe
	sbc e                                            ; $413e: $9b
	jp c, $e7f7                                      ; $413f: $da $f7 $e7

	rst SubAFromBC                                          ; $4142: $e7
	rst AddAOntoHL                                          ; $4143: $ef
	sbc $cb                                          ; $4144: $de $cb
	add b                                            ; $4146: $80
	sub e                                            ; $4147: $93
	sub d                                            ; $4148: $92
	ld [hl-], a                                      ; $4149: $32
	ld [hl], d                                       ; $414a: $72
	ld a, e                                          ; $414b: $7b
	cp e                                             ; $414c: $bb
	cp e                                             ; $414d: $bb
	inc a                                            ; $414e: $3c
	inc [hl]                                         ; $414f: $34
	cp d                                             ; $4150: $ba
	ld a, [$fbfb]                                    ; $4151: $fa $fb $fb
	rst AddAOntoHL                                          ; $4154: $ef
	xor $e4                                          ; $4155: $ee $e4
	db $e4                                           ; $4157: $e4
	cp e                                             ; $4158: $bb
	sbc a                                            ; $4159: $9f
	ld e, [hl]                                       ; $415a: $5e
	ld l, h                                          ; $415b: $6c
	ld e, h                                          ; $415c: $5c
	call z, Call_025_4241                            ; $415d: $cc $41 $42
	cp [hl]                                          ; $4160: $be
	sub $f2                                          ; $4161: $d6 $f2
	ld hl, sp-$28                                    ; $4163: $f8 $d8
	ret                                              ; $4165: $c9


	add b                                            ; $4166: $80
	jp $ab43                                         ; $4167: $c3 $43 $ab


	push de                                          ; $416a: $d5
	ld d, [hl]                                       ; $416b: $56
	ld l, $3f                                        ; $416c: $2e $3f
	rst FarCall                                          ; $416e: $f7
	ld e, a                                          ; $416f: $5f
	ld a, [bc]                                       ; $4170: $0a
	call z, Call_025_6366                            ; $4171: $cc $66 $63
	inc sp                                           ; $4174: $33
	pop af                                           ; $4175: $f1
	ld sp, hl                                        ; $4176: $f9
	adc c                                            ; $4177: $89
	dec c                                            ; $4178: $0d
	ld a, [hl]                                       ; $4179: $7e
	db $dd                                           ; $417a: $dd
	cp e                                             ; $417b: $bb
	rst AddAOntoHL                                          ; $417c: $ef
	sbc $7d                                          ; $417d: $de $7d
	ld [hl], a                                       ; $417f: $77
	xor a                                            ; $4180: $af
	push bc                                          ; $4181: $c5
	ld h, [hl]                                       ; $4182: $66
	ld h, [hl]                                       ; $4183: $66
	ld [hl-], a                                      ; $4184: $32
	inc sp                                           ; $4185: $33
	sub h                                            ; $4186: $94
	sub e                                            ; $4187: $93
	sbc c                                            ; $4188: $99
	reti                                             ; $4189: $d9


	push de                                          ; $418a: $d5
	sub l                                            ; $418b: $95
	and l                                            ; $418c: $a5
	xor c                                            ; $418d: $a9
	xor d                                            ; $418e: $aa
	ld c, d                                          ; $418f: $4a
	ld c, d                                          ; $4190: $4a
	ld d, d                                          ; $4191: $52
	ld a, d                                          ; $4192: $7a
	rst SubAFromBC                                          ; $4193: $e7
	ld a, [hl]                                       ; $4194: $7e
	ld [$fede], a                                    ; $4195: $ea $de $fe
	rst SubAFromDE                                          ; $4198: $df
	db $d3                                           ; $4199: $d3
	sbc h                                            ; $419a: $9c
	add $56                                          ; $419b: $c6 $56
	ld d, d                                          ; $419d: $52
	sbc $7b                                          ; $419e: $de $7b
	rst SubAFromDE                                          ; $41a0: $df
	sub d                                            ; $41a1: $92
	sbc [hl]                                         ; $41a2: $9e
	add d                                            ; $41a3: $82
	call c, $8ed2                                    ; $41a4: $dc $d2 $8e
	inc [hl]                                         ; $41a7: $34
	jr nc, @+$3a                                     ; $41a8: $30 $38

	ld [hl-], a                                      ; $41aa: $32
	cpl                                              ; $41ab: $2f
	ccf                                              ; $41ac: $3f
	dec a                                            ; $41ad: $3d
	ccf                                              ; $41ae: $3f
	db $e4                                           ; $41af: $e4
	ldh [$e0], a                                     ; $41b0: $e0 $e0
	db $ec                                           ; $41b2: $ec
	cp $f0                                           ; $41b3: $fe $f0
	db $e3                                           ; $41b5: $e3
	db $e3                                           ; $41b6: $e3
	ld [bc], a                                       ; $41b7: $02
	db $fd                                           ; $41b8: $fd
	sbc h                                            ; $41b9: $9c
	add b                                            ; $41ba: $80
	ret nz                                           ; $41bb: $c0

	and b                                            ; $41bc: $a0
	ei                                               ; $41bd: $fb
	ld a, a                                          ; $41be: $7f
	rst FarCall                                          ; $41bf: $f7
	add b                                            ; $41c0: $80
	inc c                                            ; $41c1: $0c
	inc b                                            ; $41c2: $04
	ld b, $06                                        ; $41c3: $06 $06
	inc de                                           ; $41c5: $13
	cpl                                              ; $41c6: $2f
	ld d, l                                          ; $41c7: $55
	ld h, b                                          ; $41c8: $60
	rlca                                             ; $41c9: $07
	rlca                                             ; $41ca: $07
	inc bc                                           ; $41cb: $03
	inc bc                                           ; $41cc: $03
	rrca                                             ; $41cd: $0f
	rra                                              ; $41ce: $1f
	jr c, @+$32                                      ; $41cf: $38 $30

	cp h                                             ; $41d1: $bc
	ld e, b                                          ; $41d2: $58
	ld d, l                                          ; $41d3: $55
	ld d, l                                          ; $41d4: $55
	ld a, $3c                                        ; $41d5: $3e $3c
	xor h                                            ; $41d7: $ac
	and d                                            ; $41d8: $a2
	ret                                              ; $41d9: $c9


	db $ed                                           ; $41da: $ed
	db $ec                                           ; $41db: $ec
	db $ec                                           ; $41dc: $ec
	db $e4                                           ; $41dd: $e4
	and $f6                                          ; $41de: $e6 $f6
	sub [hl]                                         ; $41e0: $96
	or $d4                                           ; $41e1: $f6 $d4
	call nc, $e4e4                                   ; $41e3: $d4 $e4 $e4
	ld l, b                                          ; $41e6: $68
	ld c, b                                          ; $41e7: $48
	ld c, b                                          ; $41e8: $48
	ld d, b                                          ; $41e9: $50
	db $dd                                           ; $41ea: $dd
	db $fc                                           ; $41eb: $fc
	sbc $f8                                          ; $41ec: $de $f8
	sbc c                                            ; $41ee: $99
	ldh a, [$3b]                                     ; $41ef: $f0 $3b
	dec sp                                           ; $41f1: $3b
	dec de                                           ; $41f2: $1b

Jump_025_41f3:
	dec de                                           ; $41f3: $1b
	rra                                              ; $41f4: $1f
	sbc $8f                                          ; $41f5: $de $8f
	sbc [hl]                                         ; $41f7: $9e
	ldh a, [c]                                       ; $41f8: $f2
	sbc $f1                                          ; $41f9: $de $f1
	sbc $f9                                          ; $41fb: $de $f9
	sub c                                            ; $41fd: $91
	db $fc                                           ; $41fe: $fc
	ld a, [hl-]                                      ; $41ff: $3a
	ld a, $2e                                        ; $4200: $3e $2e
	cpl                                              ; $4202: $2f
	daa                                              ; $4203: $27
	inc hl                                           ; $4204: $23
	inc de                                           ; $4205: $13
	sub e                                            ; $4206: $93
	and $f6                                          ; $4207: $e6 $f6
	rst $38                                          ; $4209: $ff
	ld sp, hl                                        ; $420a: $f9
	db $fc                                           ; $420b: $fc
	ld a, d                                          ; $420c: $7a
	ld l, a                                          ; $420d: $6f
	rst SubAFromDE                                          ; $420e: $df
	ld b, b                                          ; $420f: $40
	sub e                                            ; $4210: $93
	db $e4                                           ; $4211: $e4
	call c, $e79e                                    ; $4212: $dc $9e $e7
	rst JumpTable                                          ; $4215: $c7
	rst SubAFromBC                                          ; $4216: $e7
	ret nz                                           ; $4217: $c0

	ld h, b                                          ; $4218: $60
	ldh [$e0], a                                     ; $4219: $e0 $e0
	ldh a, [$63]                                     ; $421b: $f0 $63
	ld a, [$1c9c]                                    ; $421d: $fa $9c $1c
	ld a, h                                          ; $4220: $7c
	db $fc                                           ; $4221: $fc
	db $fc                                           ; $4222: $fc
	sub b                                            ; $4223: $90
	inc c                                            ; $4224: $0c
	inc a                                            ; $4225: $3c
	db $e4                                           ; $4226: $e4
	sub d                                            ; $4227: $92
	jp nc, Jump_025_5056                             ; $4228: $d2 $56 $50

	ld d, d                                          ; $422b: $52
	ld [hl], $36                                     ; $422c: $36 $36
	ld [hl-], a                                      ; $422e: $32
	or $76                                           ; $422f: $f6 $76
	ld [hl], d                                       ; $4231: $72
	ld [hl], b                                       ; $4232: $70
	sbc $32                                          ; $4233: $de $32
	adc [hl]                                         ; $4235: $8e
	ld [hl], $50                                     ; $4236: $36 $50
	ld a, h                                          ; $4238: $7c
	ld [hl], d                                       ; $4239: $72
	ld a, b                                          ; $423a: $78
	ld a, b                                          ; $423b: $78
	ld a, h                                          ; $423c: $7c
	halt                                             ; $423d: $76
	ld [hl], e                                       ; $423e: $73
	ld a, h                                          ; $423f: $7c
	ld a, [hl]                                       ; $4240: $7e

Call_025_4241:
	ld d, d                                          ; $4241: $52
	ld c, b                                          ; $4242: $48
	ld c, b                                          ; $4243: $48
	call nz, $c1c2                                   ; $4244: $c4 $c2 $c1
	db $fd                                           ; $4247: $fd
	sbc e                                            ; $4248: $9b
	ld b, $0d                                        ; $4249: $06 $0d
	inc c                                            ; $424b: $0c
	inc a                                            ; $424c: $3c
	ld [hl], e                                       ; $424d: $73
	ld hl, sp-$64                                    ; $424e: $f8 $9c
	add hl, bc                                       ; $4250: $09
	ld [$6b38], sp                                   ; $4251: $08 $38 $6b
	ld e, b                                          ; $4254: $58
	sbc [hl]                                         ; $4255: $9e
	add b                                            ; $4256: $80
	ld h, a                                          ; $4257: $67
	ld hl, sp-$21                                    ; $4258: $f8 $df
	ld b, a                                          ; $425a: $47
	sub a                                            ; $425b: $97
	ld b, e                                          ; $425c: $43
	inc hl                                           ; $425d: $23
	inc hl                                           ; $425e: $23
	ld de, $0911                                     ; $425f: $11 $11 $09
	db $fc                                           ; $4262: $fc
	cp $6d                                           ; $4263: $fe $6d
	ld a, l                                          ; $4265: $7d
	sub a                                            ; $4266: $97
	sub c                                            ; $4267: $91
	xor c                                            ; $4268: $a9
	ld l, c                                          ; $4269: $69
	ld h, h                                          ; $426a: $64
	or h                                             ; $426b: $b4
	or d                                             ; $426c: $b2
	jp c, Jump_025_79fd                              ; $426d: $da $fd $79

	db $e4                                           ; $4270: $e4
	sbc d                                            ; $4271: $9a
	rst SubAFromDE                                          ; $4272: $df
	rst AddAOntoHL                                          ; $4273: $ef
	rst AddAOntoHL                                          ; $4274: $ef
	rst FarCall                                          ; $4275: $f7
	ei                                               ; $4276: $fb
	call c, $94ff                                    ; $4277: $dc $ff $94
	ld a, a                                          ; $427a: $7f
	ld [hl], l                                       ; $427b: $75
	ld a, [hl+]                                      ; $427c: $2a
	add c                                            ; $427d: $81
	add b                                            ; $427e: $80
	ret nz                                           ; $427f: $c0

	ldh [$fc], a                                     ; $4280: $e0 $fc
	rst $38                                          ; $4282: $ff
	ld a, [$7bf5]                                    ; $4283: $fa $f5 $7b
	ld c, d                                          ; $4286: $4a
	ld a, e                                          ; $4287: $7b
	ld l, c                                          ; $4288: $69
	sbc d                                            ; $4289: $9a
	ld a, a                                          ; $428a: $7f
	cp a                                             ; $428b: $bf
	call nz, $30c8                                   ; $428c: $c4 $c8 $30
	ld a, e                                          ; $428f: $7b
	pop bc                                           ; $4290: $c1
	sbc l                                            ; $4291: $9d
	ld hl, sp+$7f                                    ; $4292: $f8 $7f
	ld a, e                                          ; $4294: $7b
	ld b, c                                          ; $4295: $41
	sbc d                                            ; $4296: $9a
	ld a, [de]                                       ; $4297: $1a
	ld a, [hl-]                                      ; $4298: $3a
	ld a, [hl-]                                      ; $4299: $3a
	ld d, d                                          ; $429a: $52
	sub d                                            ; $429b: $92
	sbc $16                                          ; $429c: $de $16
	rst SubAFromDE                                          ; $429e: $df
	rla                                              ; $429f: $17
	add b                                            ; $42a0: $80
	scf                                              ; $42a1: $37
	ld e, a                                          ; $42a2: $5f
	sbc a                                            ; $42a3: $9f
	pop af                                           ; $42a4: $f1
	ei                                               ; $42a5: $fb
	cp $fc                                           ; $42a6: $fe $fc
	ld hl, sp-$10                                    ; $42a8: $f8 $f0
	ldh [$c1], a                                     ; $42aa: $e0 $c1
	add b                                            ; $42ac: $80
	add c                                            ; $42ad: $81
	add e                                            ; $42ae: $83
	add a                                            ; $42af: $87
	adc a                                            ; $42b0: $8f
	sbc a                                            ; $42b1: $9f
	cp a                                             ; $42b2: $bf
	rst $38                                          ; $42b3: $ff
	call z, $1d1c                                    ; $42b4: $cc $1c $1d
	dec a                                            ; $42b7: $3d
	ld a, c                                          ; $42b8: $79
	ld [hl], c                                       ; $42b9: $71
	db $e3                                           ; $42ba: $e3
	jp nz, $f0f8                                     ; $42bb: $c2 $f8 $f0

	ldh a, [$f1]                                     ; $42be: $f0 $f1
	sbc e                                            ; $42c0: $9b
	pop hl                                           ; $42c1: $e1
	pop bc                                           ; $42c2: $c1
	add c                                            ; $42c3: $81
	inc bc                                           ; $42c4: $03
	sbc $80                                          ; $42c5: $de $80
	sbc d                                            ; $42c7: $9a
	ret nz                                           ; $42c8: $c0

	jr nz, @+$1a                                     ; $42c9: $20 $18

	inc b                                            ; $42cb: $04
	ld a, d                                          ; $42cc: $7a
	ld [hl], a                                       ; $42cd: $77
	ld hl, sp-$6e                                    ; $42ce: $f8 $92
	ldh [$f8], a                                     ; $42d0: $e0 $f8
	db $fc                                           ; $42d2: $fc
	add [hl]                                         ; $42d3: $86
	cp a                                             ; $42d4: $bf
	sbc a                                            ; $42d5: $9f
	sub a                                            ; $42d6: $97
	sub l                                            ; $42d7: $95
	sub h                                            ; $42d8: $94
	sub d                                            ; $42d9: $92
	sub e                                            ; $42da: $93
	sub e                                            ; $42db: $93
	db $fd                                           ; $42dc: $fd
	ld l, b                                          ; $42dd: $68
	cp $9b                                           ; $42de: $fe $9b
	or l                                             ; $42e0: $b5
	ld [$aad5], a                                    ; $42e1: $ea $d5 $aa
	ld a, e                                          ; $42e4: $7b
	cp $9b                                           ; $42e5: $fe $9b
	dec sp                                           ; $42e7: $3b
	ld [$6ad5], a                                    ; $42e8: $ea $d5 $6a
	ld a, e                                          ; $42eb: $7b
	ld sp, hl                                        ; $42ec: $f9
	add e                                            ; $42ed: $83
	ld [$6075], a                                    ; $42ee: $ea $75 $60
	and b                                            ; $42f1: $a0
	ld h, b                                          ; $42f2: $60
	ret nz                                           ; $42f3: $c0

	ld b, c                                          ; $42f4: $41
	add d                                            ; $42f5: $82
	call nz, $a028                                   ; $42f6: $c4 $28 $a0
	ld h, b                                          ; $42f9: $60
	and b                                            ; $42fa: $a0
	ld b, b                                          ; $42fb: $40
	pop bc                                           ; $42fc: $c1
	add e                                            ; $42fd: $83
	rst JumpTable                                          ; $42fe: $c7
	cpl                                              ; $42ff: $2f
	ld [de], a                                       ; $4300: $12
	inc [hl]                                         ; $4301: $34
	ld [hl], l                                       ; $4302: $75
	sub l                                            ; $4303: $95
	dec d                                            ; $4304: $15
	dec d                                            ; $4305: $15
	dec e                                            ; $4306: $1d
	cpl                                              ; $4307: $2f
	rra                                              ; $4308: $1f
	ccf                                              ; $4309: $3f
	ld [hl], b                                       ; $430a: $70
	di                                               ; $430b: $f3
	sub [hl]                                         ; $430c: $96
	ei                                               ; $430d: $fb
	add c                                            ; $430e: $81
	add e                                            ; $430f: $83
	inc bc                                           ; $4310: $03
	inc bc                                           ; $4311: $03
	rlca                                             ; $4312: $07
	rlca                                             ; $4313: $07
	rrca                                             ; $4314: $0f
	rra                                              ; $4315: $1f
	halt                                             ; $4316: $76
	ld d, e                                          ; $4317: $53
	sbc $fc                                          ; $4318: $de $fc
	sub h                                            ; $431a: $94
	ldh a, [$c2]                                     ; $431b: $f0 $c2
	add d                                            ; $431d: $82
	add e                                            ; $431e: $83
	add e                                            ; $431f: $83
	add a                                            ; $4320: $87

Jump_025_4321:
	push bc                                          ; $4321: $c5
	ld sp, hl                                        ; $4322: $f9
	ldh a, [$03]                                     ; $4323: $f0 $03
	inc bc                                           ; $4325: $03
	sbc $01                                          ; $4326: $de $01
	rst $38                                          ; $4328: $ff

jr_025_4329:
	adc [hl]                                         ; $4329: $8e
	db $10                                           ; $432a: $10
	pop hl                                           ; $432b: $e1
	adc a                                            ; $432c: $8f
	ccf                                              ; $432d: $3f
	ld hl, sp+$6f                                    ; $432e: $f8 $6f
	rst SubAFromDE                                          ; $4330: $df
	or e                                             ; $4331: $b3
	pop hl                                           ; $4332: $e1
	ld bc, $0700                                     ; $4333: $01 $00 $07
	rra                                              ; $4336: $1f
	or b                                             ; $4337: $b0
	ldh [$cc], a                                     ; $4338: $e0 $cc
	sbc [hl]                                         ; $433a: $9e
	ld a, d                                          ; $433b: $7a
	ld e, l                                          ; $433c: $5d
	sbc d                                            ; $433d: $9a
	ld b, b                                          ; $433e: $40
	and b                                            ; $433f: $a0
	ldh [$d0], a                                     ; $4340: $e0 $d0
	ldh a, [$7b]                                     ; $4342: $f0 $7b
	ld hl, sp+$7e                                    ; $4344: $f8 $7e
	xor l                                            ; $4346: $ad
	sbc h                                            ; $4347: $9c
	jr nz, jr_025_437a                               ; $4348: $20 $30

	db $10                                           ; $434a: $10
	add hl, de                                       ; $434b: $19
	nop                                              ; $434c: $00
	db $ec                                           ; $434d: $ec
	sbc [hl]                                         ; $434e: $9e
	ld [hl+], a                                      ; $434f: $22
	cp $9c                                           ; $4350: $fe $9c
	ld b, $22                                        ; $4352: $06 $22
	jr nz, jr_025_43c9                               ; $4354: $20 $73

	ei                                               ; $4356: $fb
	sub e                                            ; $4357: $93
	inc hl                                           ; $4358: $23
	nop                                              ; $4359: $00
	ld b, $02                                        ; $435a: $06 $02
	jr nz, jr_025_4391                               ; $435c: $20 $33

	stop                                             ; $435e: $10 $00
	ld h, b                                          ; $4360: $60
	nop                                              ; $4361: $00
	inc sp                                           ; $4362: $33
	ld de, $cf3f                                     ; $4363: $11 $3f $cf
	rst FarCall                                          ; $4366: $f7
	rst $38                                          ; $4367: $ff
	rst $38                                          ; $4368: $ff
	rst $38                                          ; $4369: $ff
	rst SubAFromDE                                          ; $436a: $df
	pop hl                                           ; $436b: $e1
	ld hl, sp-$02                                    ; $436c: $f8 $fe
	ld a, a                                          ; $436e: $7f
	add b                                            ; $436f: $80
	ld de, $df84                                     ; $4370: $11 $84 $df
	sub e                                            ; $4373: $93
	add b                                            ; $4374: $80
	sbc d                                            ; $4375: $9a
	and [hl]                                         ; $4376: $a6

Jump_025_4377:
	cp c                                             ; $4377: $b9
	ld a, [hl]                                       ; $4378: $7e
	rst GetHLinHL                                          ; $4379: $cf

jr_025_437a:
	di                                               ; $437a: $f3
	rst $38                                          ; $437b: $ff
	rst $38                                          ; $437c: $ff
	cp $e7                                           ; $437d: $fe $e7
	pop hl                                           ; $437f: $e1
	ld hl, sp-$7c                                    ; $4380: $f8 $84
	jp nz, $040e                                     ; $4382: $c2 $0e $04

	dec b                                            ; $4385: $05
	add hl, bc                                       ; $4386: $09
	dec bc                                           ; $4387: $0b
	sub e                                            ; $4388: $93
	ld [hl], e                                       ; $4389: $73
	ld h, a                                          ; $438a: $67
	xor [hl]                                         ; $438b: $ae
	ld e, h                                          ; $438c: $5c
	cp b                                             ; $438d: $b8
	ld a, b                                          ; $438e: $78
	pop af                                           ; $438f: $f1
	pop af                                           ; $4390: $f1

jr_025_4391:
	ld h, c                                          ; $4391: $61
	ld h, e                                          ; $4392: $63
	jr c, jr_025_4329                                ; $4393: $38 $94

	ld b, h                                          ; $4395: $44
	rst AddAOntoHL                                          ; $4396: $ef
	sbc h                                            ; $4397: $9c
	jr @+$0a                                         ; $4398: $18 $08

	ld a, [bc]                                       ; $439a: $0a
	call Call_025_473f                               ; $439b: $cd $3f $47
	xor a                                            ; $439e: $af
	sbc b                                            ; $439f: $98
	db $dd                                           ; $43a0: $dd
	ld [$4e8c], sp                                   ; $43a1: $08 $8c $4e
	adc [hl]                                         ; $43a4: $8e
	db $fc                                           ; $43a5: $fc
	ld b, $02                                        ; $43a6: $06 $02
	ld [bc], a                                       ; $43a8: $02
	inc bc                                           ; $43a9: $03
	rlca                                             ; $43aa: $07
	ei                                               ; $43ab: $fb
	ei                                               ; $43ac: $fb
	rst $38                                          ; $43ad: $ff
	rlca                                             ; $43ae: $07
	inc bc                                           ; $43af: $03
	inc bc                                           ; $43b0: $03
	rlca                                             ; $43b1: $07
	rlca                                             ; $43b2: $07

jr_025_43b3:
	ccf                                              ; $43b3: $3f
	ld a, a                                          ; $43b4: $7f
	ld a, a                                          ; $43b5: $7f
	db $dd                                           ; $43b6: $dd
	rst $38                                          ; $43b7: $ff
	sub h                                            ; $43b8: $94
	cp $e0                                           ; $43b9: $fe $e0
	ret nz                                           ; $43bb: $c0

	ret nz                                           ; $43bc: $c0

	add $c8                                          ; $43bd: $c6 $c8
	ldh a, [rAUD4LEN]                                ; $43bf: $f0 $20
	jr nc, jr_025_43b3                               ; $43c1: $30 $f0

Jump_025_43c3:
	ldh [$7b], a                                     ; $43c3: $e0 $7b
	or $99                                           ; $43c5: $f6 $99
	ld b, e                                          ; $43c7: $43
	ld c, a                                          ; $43c8: $4f

jr_025_43c9:
	ld l, l                                          ; $43c9: $6d
	jr nz, jr_025_440c                               ; $43ca: $20 $40

	add b                                            ; $43cc: $80
	cp $95                                           ; $43cd: $fe $95
	ld [bc], a                                       ; $43cf: $02
	rlca                                             ; $43d0: $07
	ret nz                                           ; $43d1: $c0

	ld b, b                                          ; $43d2: $40
	ld b, b                                          ; $43d3: $40
	ld h, b                                          ; $43d4: $60
	ld hl, sp+$36                                    ; $43d5: $f8 $36
	add hl, de                                       ; $43d7: $19
	adc h                                            ; $43d8: $8c
	db $dd                                           ; $43d9: $dd
	ld a, a                                          ; $43da: $7f
	sbc b                                            ; $43db: $98
	ccf                                              ; $43dc: $3f
	rra                                              ; $43dd: $1f
	rrca                                             ; $43de: $0f
	rlca                                             ; $43df: $07
	ldh a, [rSVBK]                                   ; $43e0: $f0 $70
	ld [hl], b                                       ; $43e2: $70
	sbc $30                                          ; $43e3: $de $30
	sbc d                                            ; $43e5: $9a
	db $10                                           ; $43e6: $10
	sub b                                            ; $43e7: $90
	db $10                                           ; $43e8: $10
	sub b                                            ; $43e9: $90
	sub b                                            ; $43ea: $90
	sbc $d0                                          ; $43eb: $de $d0
	rst SubAFromDE                                          ; $43ed: $df
	ldh a, [$9e]                                     ; $43ee: $f0 $9e
	db $fd                                           ; $43f0: $fd
	sbc $ff                                          ; $43f1: $de $ff
	add b                                            ; $43f3: $80
	rst JumpTable                                          ; $43f4: $c7
	add [hl]                                         ; $43f5: $86
	add h                                            ; $43f6: $84
	inc c                                            ; $43f7: $0c
	ld sp, hl                                        ; $43f8: $f9
	add h                                            ; $43f9: $84
	jp nz, $eefb                                     ; $43fa: $c2 $fb $ee

	call c, Call_025_58bc                            ; $43fd: $dc $bc $58
	rst SubAFromBC                                          ; $4400: $e7
	rst JumpTable                                          ; $4401: $c7
	adc a                                            ; $4402: $8f
	adc [hl]                                         ; $4403: $8e
	inc e                                            ; $4404: $1c
	inc e                                            ; $4405: $1c
	inc [hl]                                         ; $4406: $34
	ld h, [hl]                                       ; $4407: $66
	ld b, e                                          ; $4408: $43
	add e                                            ; $4409: $83
	add d                                            ; $440a: $82
	inc b                                            ; $440b: $04

jr_025_440c:
	inc b                                            ; $440c: $04
	inc c                                            ; $440d: $0c
	inc e                                            ; $440e: $1c
	ld a, $5a                                        ; $440f: $3e $5a
	or l                                             ; $4411: $b5
	add hl, de                                       ; $4412: $19
	sub l                                            ; $4413: $95
	inc [hl]                                         ; $4414: $34
	ld c, b                                          ; $4415: $48
	ld d, b                                          ; $4416: $50
	ld l, b                                          ; $4417: $68
	ld d, b                                          ; $4418: $50
	jr z, jr_025_4473                                ; $4419: $28 $58

	ld [hl], $28                                     ; $441b: $36 $28
	jr nz, jr_025_449a                               ; $441d: $20 $7b

	or h                                             ; $441f: $b4
	sbc d                                            ; $4420: $9a
	rrca                                             ; $4421: $0f
	dec b                                            ; $4422: $05
	adc c                                            ; $4423: $89
	add hl, de                                       ; $4424: $19
	add hl, bc                                       ; $4425: $09
	sbc $11                                          ; $4426: $de $11
	sbc [hl]                                         ; $4428: $9e
	rlca                                             ; $4429: $07
	sbc $0f                                          ; $442a: $de $0f
	db $dd                                           ; $442c: $dd
	rra                                              ; $442d: $1f
	db $dd                                           ; $442e: $dd
	rst $38                                          ; $442f: $ff
	sub d                                            ; $4430: $92
	rra                                              ; $4431: $1f
	ld a, a                                          ; $4432: $7f
	adc a                                            ; $4433: $8f
	cp $24                                           ; $4434: $fe $24
	ld b, $0c                                        ; $4436: $06 $0c
	db $fc                                           ; $4438: $fc
	ld hl, sp-$0f                                    ; $4439: $f8 $f1
	add c                                            ; $443b: $81
	add e                                            ; $443c: $83
	ld l, h                                          ; $443d: $6c
	sbc $e4                                          ; $443e: $de $e4
	add [hl]                                         ; $4440: $86
	or h                                             ; $4441: $b4

Jump_025_4442:
	ld [hl], $32                                     ; $4442: $36 $32
	ld a, [de]                                       ; $4444: $1a
	rlca                                             ; $4445: $07
	ld b, a                                          ; $4446: $47
	ld b, a                                          ; $4447: $47
	rst JumpTable                                          ; $4448: $c7
	rst SubAFromBC                                          ; $4449: $e7
	db $e3                                           ; $444a: $e3
	db $e3                                           ; $444b: $e3
	di                                               ; $444c: $f3
	add $73                                          ; $444d: $c6 $73
	jr jr_025_445d                                   ; $444f: $18 $0c

	rlca                                             ; $4451: $07
	ld bc, $0000                                     ; $4452: $01 $00 $00
	add e                                            ; $4455: $83
	pop hl                                           ; $4456: $e1
	ldh a, [$f8]                                     ; $4457: $f0 $f8
	cp $de                                           ; $4459: $fe $de
	rst $38                                          ; $445b: $ff
	ld a, e                                          ; $445c: $7b

jr_025_445d:
	adc c                                            ; $445d: $89
	sbc d                                            ; $445e: $9a
	ld e, b                                          ; $445f: $58
	ret z                                            ; $4460: $c8

	ret z                                            ; $4461: $c8

	call nz, $de44                                   ; $4462: $c4 $44 $de
	ldh a, [$df]                                     ; $4465: $f0 $df
	ld a, b                                          ; $4467: $78
	sub [hl]                                         ; $4468: $96
	ld hl, sp-$04                                    ; $4469: $f8 $fc
	db $fc                                           ; $446b: $fc
	rst JumpTable                                          ; $446c: $c7
	adc a                                            ; $446d: $8f
	adc a                                            ; $446e: $8f
	sbc a                                            ; $446f: $9f
	rra                                              ; $4470: $1f
	ccf                                              ; $4471: $3f
	ld a, e                                          ; $4472: $7b

jr_025_4473:
	inc a                                            ; $4473: $3c
	add b                                            ; $4474: $80
	db $fc                                           ; $4475: $fc
	ld sp, hl                                        ; $4476: $f9
	ld sp, hl                                        ; $4477: $f9
	di                                               ; $4478: $f3
	ldh [c], a                                       ; $4479: $e2
	add $84                                          ; $447a: $c6 $84
	ld [$f890], sp                                   ; $447c: $08 $90 $f8
	sbc a                                            ; $447f: $9f
	sbc a                                            ; $4480: $9f
	rst JumpTable                                          ; $4481: $c7
	jr nz, @+$7e                                     ; $4482: $20 $7c

	cp b                                             ; $4484: $b8
	ldh a, [$f8]                                     ; $4485: $f0 $f8
	add a                                            ; $4487: $87
	add b                                            ; $4488: $80
	add b                                            ; $4489: $80
	ret nz                                           ; $448a: $c0

	ldh [rBGP], a                                    ; $448b: $e0 $47
	ld c, a                                          ; $448d: $4f
	ld d, [hl]                                       ; $448e: $56
	and $8e                                          ; $448f: $e6 $8e
	sbc [hl]                                         ; $4491: $9e
	halt                                             ; $4492: $76
	rst AddAOntoHL                                          ; $4493: $ef
	sbc $7f                                          ; $4494: $de $7f
	add b                                            ; $4496: $80
	rst $38                                          ; $4497: $ff
	ld [hl], a                                       ; $4498: $77
	ld h, a                                          ; $4499: $67

jr_025_449a:
	rrca                                             ; $449a: $0f
	rra                                              ; $449b: $1f
	jr nz, @-$42                                     ; $449c: $20 $bc

jr_025_449e:
	ld e, $3b                                        ; $449e: $1e $3b
	daa                                              ; $44a0: $27
	ld d, l                                          ; $44a1: $55
	or e                                             ; $44a2: $b3
	add h                                            ; $44a3: $84
	jr nc, jr_025_449e                               ; $44a4: $30 $f8

	or $e7                                           ; $44a6: $f6 $e7
	db $ed                                           ; $44a8: $ed
	ret                                              ; $44a9: $c9


	adc c                                            ; $44aa: $89
	sub c                                            ; $44ab: $91
	db $10                                           ; $44ac: $10
	jr c, jr_025_4527                                ; $44ad: $38 $78

	ld hl, sp+$4a                                    ; $44af: $f8 $4a
	adc d                                            ; $44b1: $8a
	adc d                                            ; $44b2: $8a
	adc e                                            ; $44b3: $8b
	rra                                              ; $44b4: $1f
	rra                                              ; $44b5: $1f
	sbc b                                            ; $44b6: $98
	cpl                                              ; $44b7: $2f
	rst GetHLinHL                                          ; $44b8: $cf
	adc l                                            ; $44b9: $8d
	dec c                                            ; $44ba: $0d
	dec c                                            ; $44bb: $0d
	inc c                                            ; $44bc: $0c
	db $fc                                           ; $44bd: $fc
	sbc $80                                          ; $44be: $de $80
	rst SubAFromDE                                          ; $44c0: $df
	ld b, b                                          ; $44c1: $40
	sbc l                                            ; $44c2: $9d
	jr nz, jr_025_44d5                               ; $44c3: $20 $10

	reti                                             ; $44c5: $d9


	rst $38                                          ; $44c6: $ff
	sbc d                                            ; $44c7: $9a
	dec de                                           ; $44c8: $1b
	add hl, de                                       ; $44c9: $19
	dec c                                            ; $44ca: $0d
	rlca                                             ; $44cb: $07
	inc bc                                           ; $44cc: $03
	cp $df                                           ; $44cd: $fe $df
	pop af                                           ; $44cf: $f1
	ld a, a                                          ; $44d0: $7f
	sub e                                            ; $44d1: $93
	ld [hl], a                                       ; $44d2: $77
	add b                                            ; $44d3: $80
	sbc [hl]                                         ; $44d4: $9e

jr_025_44d5:
	rrca                                             ; $44d5: $0f
	halt                                             ; $44d6: $76
	pop de                                           ; $44d7: $d1
	ld a, e                                          ; $44d8: $7b
	db $fc                                           ; $44d9: $fc
	sbc [hl]                                         ; $44da: $9e
	ldh a, [$dc]                                     ; $44db: $f0 $dc
	add b                                            ; $44dd: $80
	rst $38                                          ; $44de: $ff
	rst SubAFromDE                                          ; $44df: $df
	ldh [c], a                                       ; $44e0: $e2
	rst SubAFromDE                                          ; $44e1: $df
	cp d                                             ; $44e2: $ba
	adc e                                            ; $44e3: $8b
	ld a, [$bcf4]                                    ; $44e4: $fa $f4 $bc
	adc b                                            ; $44e7: $88
	ld a, [hl]                                       ; $44e8: $7e
	ld a, [hl]                                       ; $44e9: $7e
	halt                                             ; $44ea: $76
	ld h, [hl]                                       ; $44eb: $66
	ld b, $0c                                        ; $44ec: $06 $0c
	ld a, h                                          ; $44ee: $7c
	ld a, b                                          ; $44ef: $78
	dec h                                            ; $44f0: $25
	ld b, l                                          ; $44f1: $45
	ld c, e                                          ; $44f2: $4b
	adc e                                            ; $44f3: $8b
	sub a                                            ; $44f4: $97
	daa                                              ; $44f5: $27
	daa                                              ; $44f6: $27
	rst JumpTable                                          ; $44f7: $c7
	ld a, d                                          ; $44f8: $7a
	xor l                                            ; $44f9: $ad
	sbc [hl]                                         ; $44fa: $9e
	cp $dd                                           ; $44fb: $fe $dd
	db $fc                                           ; $44fd: $fc
	ld a, a                                          ; $44fe: $7f
	call z, $fd9e                                    ; $44ff: $cc $9e $fd
	sbc $fc                                          ; $4502: $de $fc
	ld a, [hl]                                       ; $4504: $7e
	jp c, $0ddf                                      ; $4505: $da $df $0d

	rst SubAFromDE                                          ; $4508: $df
	dec bc                                           ; $4509: $0b
	rst SubAFromDE                                          ; $450a: $df
	dec de                                           ; $450b: $1b
	sbc b                                            ; $450c: $98
	ld [de], a                                       ; $450d: $12
	db $10                                           ; $450e: $10
	rst JumpTable                                          ; $450f: $c7
	or b                                             ; $4510: $b0
	ld a, h                                          ; $4511: $7c
	ld a, h                                          ; $4512: $7c
	db $fc                                           ; $4513: $fc
	db $dd                                           ; $4514: $dd
	ld hl, sp-$64                                    ; $4515: $f8 $9c
	rst GetHLinHL                                          ; $4517: $cf
	add e                                            ; $4518: $83
	add e                                            ; $4519: $83
	ld a, d                                          ; $451a: $7a
	add c                                            ; $451b: $81
	sub [hl]                                         ; $451c: $96
	rlca                                             ; $451d: $07
	dec de                                           ; $451e: $1b
	db $e3                                           ; $451f: $e3
	add a                                            ; $4520: $87
	add l                                            ; $4521: $85
	and l                                            ; $4522: $a5
	dec h                                            ; $4523: $25
	ld h, h                                          ; $4524: $64
	ld l, b                                          ; $4525: $68
	db $dd                                           ; $4526: $dd

jr_025_4527:
	rst $38                                          ; $4527: $ff
	rst SubAFromDE                                          ; $4528: $df
	rst SubAFromDE                                          ; $4529: $df
	rst SubAFromDE                                          ; $452a: $df
	sbc a                                            ; $452b: $9f
	sub [hl]                                         ; $452c: $96
	adc c                                            ; $452d: $89
	ld d, $0a                                        ; $452e: $16 $0a
	stop                                             ; $4530: $10 $00
	add b                                            ; $4532: $80
	add c                                            ; $4533: $81
	add a                                            ; $4534: $87
	ld [bc], a                                       ; $4535: $02
	db $fc                                           ; $4536: $fc
	ld a, [hl]                                       ; $4537: $7e
	ldh a, [rPCM12]                                  ; $4538: $f0 $76
	jp c, Jump_025_6f9b                              ; $453a: $da $9b $6f

	rst SubAFromDE                                          ; $453d: $df
	cp a                                             ; $453e: $bf
	ld a, a                                          ; $453f: $7f
	sbc $08                                          ; $4540: $de $08
	sub c                                            ; $4542: $91
	db $10                                           ; $4543: $10
	jr nc, jr_025_45a6                               ; $4544: $30 $60

	ret nz                                           ; $4546: $c0

	add b                                            ; $4547: $80
	ld [$c284], sp                                   ; $4548: $08 $84 $c2
	ldh [c], a                                       ; $454b: $e2
	pop bc                                           ; $454c: $c1
	pop bc                                           ; $454d: $c1
	add b                                            ; $454e: $80
	add b                                            ; $454f: $80
	rst $38                                          ; $4550: $ff
	ld a, d                                          ; $4551: $7a
	ld [hl], d                                       ; $4552: $72
	rst SubAFromDE                                          ; $4553: $df
	ccf                                              ; $4554: $3f
	rst SubAFromDE                                          ; $4555: $df
	ld a, a                                          ; $4556: $7f
	rst SubAFromDE                                          ; $4557: $df
	ld bc, $03de                                     ; $4558: $01 $de $03
	sbc h                                            ; $455b: $9c
	rlca                                             ; $455c: $07
	add a                                            ; $455d: $87
	ld b, e                                          ; $455e: $43
	ld [hl], e                                       ; $455f: $73
	sub d                                            ; $4560: $92
	rst SubAFromDE                                          ; $4561: $df
	ld hl, sp-$62                                    ; $4562: $f8 $9e
	db $fc                                           ; $4564: $fc
	halt                                             ; $4565: $76
	inc [hl]                                         ; $4566: $34
	sbc e                                            ; $4567: $9b
	cp $fd                                           ; $4568: $fe $fd
	ld a, [$fe0c]                                    ; $456a: $fa $0c $fe
	ld a, e                                          ; $456d: $7b
	push hl                                          ; $456e: $e5
	sbc c                                            ; $456f: $99
	rlca                                             ; $4570: $07
	rst $38                                          ; $4571: $ff
	sub b                                            ; $4572: $90
	jr nz, @+$22                                     ; $4573: $20 $20

	ld h, b                                          ; $4575: $60
	sbc $c0                                          ; $4576: $de $c0
	sbc l                                            ; $4578: $9d
	add b                                            ; $4579: $80
	ld [hl], b                                       ; $457a: $70
	sbc $e0                                          ; $457b: $de $e0
	ld [hl], a                                       ; $457d: $77
	ld hl, sp-$64                                    ; $457e: $f8 $9c
	adc a                                            ; $4580: $8f
	sbc e                                            ; $4581: $9b
	di                                               ; $4582: $f3
	ld a, c                                          ; $4583: $79
	call nc, $ff95                                   ; $4584: $d4 $95 $ff
	pop af                                           ; $4587: $f1
	db $fc                                           ; $4588: $fc
	ld a, [$32f2]                                    ; $4589: $fa $f2 $32
	ld e, $06                                        ; $458c: $1e $06
	ld bc, $db00                                     ; $458e: $01 $00 $db
	rst $38                                          ; $4591: $ff
	ld a, a                                          ; $4592: $7f
	cpl                                              ; $4593: $2f
	sbc $10                                          ; $4594: $de $10
	cp $df                                           ; $4596: $fe $df
	add b                                            ; $4598: $80
	db $dd                                           ; $4599: $dd
	ldh a, [$de]                                     ; $459a: $f0 $de
	ldh [$9e], a                                     ; $459c: $e0 $9e
	pop bc                                           ; $459e: $c1
	db $dd                                           ; $459f: $dd
	rrca                                             ; $45a0: $0f
	sbc $1f                                          ; $45a1: $de $1f
	add b                                            ; $45a3: $80
	ccf                                              ; $45a4: $3f
	ld l, c                                          ; $45a5: $69

jr_025_45a6:
	di                                               ; $45a6: $f3
	jp nc, $05a4                                     ; $45a7: $d2 $a4 $05

	add hl, bc                                       ; $45aa: $09
	ld [hl-], a                                      ; $45ab: $32
	jp nz, $1f9f                                     ; $45ac: $c2 $9f $1f

	ld a, $7c                                        ; $45af: $3e $7c
	db $fd                                           ; $45b1: $fd
	ld sp, hl                                        ; $45b2: $f9
	di                                               ; $45b3: $f3
	jp $998c                                         ; $45b4: $c3 $8c $99


	pop hl                                           ; $45b7: $e1
	add e                                            ; $45b8: $83
	rlca                                             ; $45b9: $07
	rrca                                             ; $45ba: $0f
	rra                                              ; $45bb: $1f
	ccf                                              ; $45bc: $3f
	add a                                            ; $45bd: $87
	sbc [hl]                                         ; $45be: $9e
	cp $fc                                           ; $45bf: $fe $fc
	ld hl, sp-$10                                    ; $45c1: $f8 $f0
	ld a, a                                          ; $45c3: $7f
	xor l                                            ; $45c4: $ad
	ld [hl], a                                       ; $45c5: $77
	add hl, de                                       ; $45c6: $19
	db $dd                                           ; $45c7: $dd
	rst $38                                          ; $45c8: $ff
	ld [hl], a                                       ; $45c9: $77
	sub d                                            ; $45ca: $92
	db $fc                                           ; $45cb: $fc
	sbc l                                            ; $45cc: $9d
	ld b, $3f                                        ; $45cd: $06 $3f
	db $db                                           ; $45cf: $db
	rst $38                                          ; $45d0: $ff
	sbc l                                            ; $45d1: $9d
	ld sp, hl                                        ; $45d2: $f9
	ret nz                                           ; $45d3: $c0

	db $fc                                           ; $45d4: $fc
	sbc e                                            ; $45d5: $9b
	jr nc, jr_025_45e7                               ; $45d6: $30 $0f

	add b                                            ; $45d8: $80
	db $fc                                           ; $45d9: $fc
	ld a, e                                          ; $45da: $7b
	db $dd                                           ; $45db: $dd
	sbc [hl]                                         ; $45dc: $9e
	pop af                                           ; $45dd: $f1
	ld a, e                                          ; $45de: $7b
	sbc h                                            ; $45df: $9c
	sbc [hl]                                         ; $45e0: $9e
	inc bc                                           ; $45e1: $03
	ld a, e                                          ; $45e2: $7b
	db $dd                                           ; $45e3: $dd
	sbc h                                            ; $45e4: $9c
	ld c, $30                                        ; $45e5: $0e $30

jr_025_45e7:
	ret nz                                           ; $45e7: $c0

	sbc $01                                          ; $45e8: $de $01
	sbc h                                            ; $45ea: $9c
	add hl, de                                       ; $45eb: $19
	ld a, d                                          ; $45ec: $7a
	ld a, [$ffdc]                                    ; $45ed: $fa $dc $ff
	sbc h                                            ; $45f0: $9c
	rst SubAFromBC                                          ; $45f1: $e7
	add [hl]                                         ; $45f2: $86
	ld b, $76                                        ; $45f3: $06 $76
	cp h                                             ; $45f5: $bc
	db $fd                                           ; $45f6: $fd
	ld h, a                                          ; $45f7: $67
	ld hl, sp-$6a                                    ; $45f8: $f8 $96
	rst $38                                          ; $45fa: $ff
	ld a, $1c                                        ; $45fb: $3e $1c
	ld a, a                                          ; $45fd: $7f
	rst AddAOntoHL                                          ; $45fe: $ef
	daa                                              ; $45ff: $27
	rst SubAFromHL                                          ; $4600: $d7
	db $e3                                           ; $4601: $e3
	ret nz                                           ; $4602: $c0

	ld a, e                                          ; $4603: $7b
	adc $7e                                          ; $4604: $ce $7e
	dec a                                            ; $4606: $3d
	sub h                                            ; $4607: $94
	jr c, jr_025_4626                                ; $4608: $38 $1c

	jp nz, $360c                                     ; $460a: $c2 $0c $36

	pop bc                                           ; $460d: $c1
	nop                                              ; $460e: $00
	add b                                            ; $460f: $80
	ldh [$f0], a                                     ; $4610: $e0 $f0
	ld a, $76                                        ; $4612: $3e $76
	add d                                            ; $4614: $82
	adc a                                            ; $4615: $8f
	ld a, a                                          ; $4616: $7f
	rra                                              ; $4617: $1f
	rrca                                             ; $4618: $0f
	inc b                                            ; $4619: $04
	ld b, $09                                        ; $461a: $06 $09
	ld de, $63a3                                     ; $461c: $11 $a3 $63
	daa                                              ; $461f: $27
	rra                                              ; $4620: $1f
	rlca                                             ; $4621: $07
	rlca                                             ; $4622: $07
	rrca                                             ; $4623: $0f
	ld e, $bc                                        ; $4624: $1e $bc

jr_025_4626:
	ld a, e                                          ; $4626: $7b
	rrca                                             ; $4627: $0f
	ld a, c                                          ; $4628: $79
	ld l, d                                          ; $4629: $6a
	sbc [hl]                                         ; $462a: $9e
	jp Jump_025_7f77                                 ; $462b: $c3 $77 $7f


	ld a, d                                          ; $462e: $7a
	inc d                                            ; $462f: $14
	sbc [hl]                                         ; $4630: $9e
	inc a                                            ; $4631: $3c
	ld [hl], a                                       ; $4632: $77
	ld a, a                                          ; $4633: $7f
	db $dd                                           ; $4634: $dd
	rst $38                                          ; $4635: $ff
	ld a, a                                          ; $4636: $7f
	xor $9d                                          ; $4637: $ee $9d
	db $fd                                           ; $4639: $fd
	ldh a, [$fd]                                     ; $463a: $f0 $fd
	ld a, e                                          ; $463c: $7b
	xor $9e                                          ; $463d: $ee $9e
	rrca                                             ; $463f: $0f
	ld a, c                                          ; $4640: $79
	rst SubAFromBC                                          ; $4641: $e7
	sub [hl]                                         ; $4642: $96
	ldh a, [$c0]                                     ; $4643: $f0 $c0
	nop                                              ; $4645: $00
	ret nz                                           ; $4646: $c0

	ld a, $00                                        ; $4647: $3e $00
	nop                                              ; $4649: $00
	inc bc                                           ; $464a: $03
	rrca                                             ; $464b: $0f
	ld [hl], a                                       ; $464c: $77
	ld h, [hl]                                       ; $464d: $66
	sbc [hl]                                         ; $464e: $9e
	jp Jump_025_4377                                 ; $464f: $c3 $77 $43


	ld a, d                                          ; $4652: $7a
	ld b, b                                          ; $4653: $40
	sbc [hl]                                         ; $4654: $9e
	inc a                                            ; $4655: $3c
	ld [hl], a                                       ; $4656: $77
	ld b, e                                          ; $4657: $43
	ld a, e                                          ; $4658: $7b
	adc h                                            ; $4659: $8c
	rst SubAFromDE                                          ; $465a: $df
	ld a, [$fcdf]                                    ; $465b: $fa $df $fc
	db $dd                                           ; $465e: $dd
	db $f4                                           ; $465f: $f4
	rst SubAFromDE                                          ; $4660: $df
	ld b, $79                                        ; $4661: $06 $79
	ld d, c                                          ; $4663: $51
	sbc $0c                                          ; $4664: $de $0c
	halt                                             ; $4666: $76
	ret nz                                           ; $4667: $c0

	ld a, a                                          ; $4668: $7f
	push hl                                          ; $4669: $e5
	ld a, a                                          ; $466a: $7f
	and $d8                                          ; $466b: $e6 $d8
	rst $38                                          ; $466d: $ff
	sub [hl]                                         ; $466e: $96
	rst FarCall                                          ; $466f: $f7
	rst $38                                          ; $4670: $ff
	inc bc                                           ; $4671: $03
	inc b                                            ; $4672: $04
	ld [$6010], sp                                   ; $4673: $08 $10 $60
	nop                                              ; $4676: $00
	ld hl, sp-$25                                    ; $4677: $f8 $db
	rst $38                                          ; $4679: $ff
	ld a, a                                          ; $467a: $7f
	or h                                             ; $467b: $b4
	sbc c                                            ; $467c: $99
	add b                                            ; $467d: $80
	cp $0f                                           ; $467e: $fe $0f
	db $10                                           ; $4680: $10
	jr nz, jr_025_46c4                               ; $4681: $20 $41

	ld l, e                                          ; $4683: $6b
	ld a, [de]                                       ; $4684: $1a
	sbc [hl]                                         ; $4685: $9e
	cp $7a                                           ; $4686: $fe $7a
	sbc h                                            ; $4688: $9c
	ld a, a                                          ; $4689: $7f
	sbc h                                            ; $468a: $9c
	sbc h                                            ; $468b: $9c
	ld a, a                                          ; $468c: $7f
	inc hl                                           ; $468d: $23
	ld e, [hl]                                       ; $468e: $5e
	halt                                             ; $468f: $76
	ldh a, [c]                                       ; $4690: $f2
	sbc d                                            ; $4691: $9a
	ldh a, [rIE]                                     ; $4692: $f0 $ff
	rst $38                                          ; $4694: $ff
	pop hl                                           ; $4695: $e1
	rlca                                             ; $4696: $07
	ld l, a                                          ; $4697: $6f
	ret c                                            ; $4698: $d8

	sbc h                                            ; $4699: $9c
	ld b, a                                          ; $469a: $47
	ld hl, sp+$07                                    ; $469b: $f8 $07
	ld [hl], a                                       ; $469d: $77
	dec hl                                           ; $469e: $2b
	ld a, a                                          ; $469f: $7f
	ld c, h                                          ; $46a0: $4c
	sbc l                                            ; $46a1: $9d
	rst FarCall                                          ; $46a2: $f7
	rra                                              ; $46a3: $1f
	call c, $7de3                                    ; $46a4: $dc $e3 $7d
	ret z                                            ; $46a7: $c8

	ld a, l                                          ; $46a8: $7d
	ld a, [de]                                       ; $46a9: $1a
	ld l, l                                          ; $46aa: $6d
	ld de, $a27b                                     ; $46ab: $11 $7b $a2
	ld a, [hl]                                       ; $46ae: $7e
	and d                                            ; $46af: $a2
	ld a, [hl]                                       ; $46b0: $7e
	add hl, hl                                       ; $46b1: $29
	ld l, a                                          ; $46b2: $6f
	jp nz, $647f                                     ; $46b3: $c2 $7f $64

	add b                                            ; $46b6: $80
	ld [bc], a                                       ; $46b7: $02
	dec b                                            ; $46b8: $05
	ld a, [de]                                       ; $46b9: $1a
	inc [hl]                                         ; $46ba: $34
	add sp, -$30                                     ; $46bb: $e8 $d0
	and c                                            ; $46bd: $a1
	ld b, e                                          ; $46be: $43
	db $fd                                           ; $46bf: $fd
	ei                                               ; $46c0: $fb
	rst SubAFromBC                                          ; $46c1: $e7
	rst GetHLinHL                                          ; $46c2: $cf
	rra                                              ; $46c3: $1f

jr_025_46c4:
	ccf                                              ; $46c4: $3f
	ld a, [hl]                                       ; $46c5: $7e
	db $fc                                           ; $46c6: $fc
	add b                                            ; $46c7: $80
	ld bc, $0e07                                     ; $46c8: $01 $07 $0e
	ld a, [hl-]                                      ; $46cb: $3a
	db $f4                                           ; $46cc: $f4
	jp hl                                            ; $46cd: $e9


	pop af                                           ; $46ce: $f1
	rst $38                                          ; $46cf: $ff
	cp $f9                                           ; $46d0: $fe $f9
	di                                               ; $46d2: $f3
	rst JumpTable                                          ; $46d3: $c7
	rrca                                             ; $46d4: $0f
	ld e, $82                                        ; $46d5: $1e $82
	ld e, $47                                        ; $46d7: $1e $47
	adc [hl]                                         ; $46d9: $8e
	rra                                              ; $46da: $1f
	dec a                                            ; $46db: $3d
	ld a, d                                          ; $46dc: $7a
	db $fc                                           ; $46dd: $fc
	push af                                          ; $46de: $f5
	ld sp, hl                                        ; $46df: $f9
	ld hl, sp-$0f                                    ; $46e0: $f8 $f1
	pop hl                                           ; $46e2: $e1
	jp $0787                                         ; $46e3: $c3 $87 $07


	ld c, $0e                                        ; $46e6: $0e $0e
	cp a                                             ; $46e8: $bf
	cp [hl]                                          ; $46e9: $be
	ld a, [hl]                                       ; $46ea: $7e
	ld a, a                                          ; $46eb: $7f
	db $fd                                           ; $46ec: $fd
	db $fd                                           ; $46ed: $fd
	cp $fa                                           ; $46ee: $fe $fa
	ret nz                                           ; $46f0: $c0

	pop bc                                           ; $46f1: $c1
	add c                                            ; $46f2: $81
	add c                                            ; $46f3: $81
	halt                                             ; $46f4: $76
	ld b, $9c                                        ; $46f5: $06 $9c
	sbc a                                            ; $46f7: $9f
	cp a                                             ; $46f8: $bf
	cp a                                             ; $46f9: $bf
	ld a, c                                          ; $46fa: $79
	ld a, [$2f7f]                                    ; $46fb: $fa $7f $2f
	sbc [hl]                                         ; $46fe: $9e
	pop hl                                           ; $46ff: $e1
	sbc $c1                                          ; $4700: $de $c1
	sbc $81                                          ; $4702: $de $81
	sbc e                                            ; $4704: $9b
	ld bc, $7f77                                     ; $4705: $01 $77 $7f
	rst $38                                          ; $4708: $ff
	ld a, b                                          ; $4709: $78
	dec h                                            ; $470a: $25
	rst SubAFromDE                                          ; $470b: $df
	rst $38                                          ; $470c: $ff
	sbc l                                            ; $470d: $9d
	adc a                                            ; $470e: $8f
	add a                                            ; $470f: $87
	sbc $07                                          ; $4710: $de $07
	sbc $03                                          ; $4712: $de $03
	ld a, e                                          ; $4714: $7b
	ld l, c                                          ; $4715: $69
	ld a, e                                          ; $4716: $7b
	rst JumpTable                                          ; $4717: $c7
	ld a, a                                          ; $4718: $7f
	and [hl]                                         ; $4719: $a6
	ld [hl], e                                       ; $471a: $73
	sub d                                            ; $471b: $92
	sbc b                                            ; $471c: $98
	ld hl, sp-$20                                    ; $471d: $f8 $e0
	ret nz                                           ; $471f: $c0

	ld e, $3d                                        ; $4720: $1e $3d
	ld a, [$77f4]                                    ; $4722: $fa $f4 $77
	sub b                                            ; $4725: $90
	ld a, a                                          ; $4726: $7f
	db $eb                                           ; $4727: $eb
	halt                                             ; $4728: $76
	rst FarCall                                          ; $4729: $f7
	ld a, a                                          ; $472a: $7f
	sub b                                            ; $472b: $90
	sbc [hl]                                         ; $472c: $9e
	add a                                            ; $472d: $87
	ld [hl], a                                       ; $472e: $77
	ld a, [$d07d]                                    ; $472f: $fa $7d $d0
	sbc [hl]                                         ; $4732: $9e
	db $f4                                           ; $4733: $f4
	halt                                             ; $4734: $76
	pop af                                           ; $4735: $f1
	ld a, a                                          ; $4736: $7f
	xor a                                            ; $4737: $af
	ld a, a                                          ; $4738: $7f
	db $ec                                           ; $4739: $ec
	sbc e                                            ; $473a: $9b
	db $d3                                           ; $473b: $d3
	and a                                            ; $473c: $a7
	ld c, a                                          ; $473d: $4f
	sbc a                                            ; $473e: $9f

Call_025_473f:
	ld a, e                                          ; $473f: $7b
	xor [hl]                                         ; $4740: $ae
	sbc h                                            ; $4741: $9c
	cp $3c                                           ; $4742: $fe $3c
	ld a, b                                          ; $4744: $78
	ld a, e                                          ; $4745: $7b
	rst AddAOntoHL                                          ; $4746: $ef
	ld a, [hl]                                       ; $4747: $7e
	ld sp, hl                                        ; $4748: $f9
	add b                                            ; $4749: $80
	ld bc, $f3eb                                     ; $474a: $01 $eb $f3
	rst SubAFromHL                                          ; $474d: $d7
	rst SubAFromBC                                          ; $474e: $e7
	xor a                                            ; $474f: $af
	rst GetHLinHL                                          ; $4750: $cf
	rst SubAFromDE                                          ; $4751: $df
	sbc a                                            ; $4752: $9f
	inc e                                            ; $4753: $1c
	inc e                                            ; $4754: $1c
	jr c, jr_025_478f                                ; $4755: $38 $38

	ld [hl], b                                       ; $4757: $70
	ld [hl], b                                       ; $4758: $70
	ld h, b                                          ; $4759: $60
	ldh [$fa], a                                     ; $475a: $e0 $fa
	db $f4                                           ; $475c: $f4
	push af                                          ; $475d: $f5
	push af                                          ; $475e: $f5
	jp hl                                            ; $475f: $e9


	db $eb                                           ; $4760: $eb
	db $d3                                           ; $4761: $d3
	db $d3                                           ; $4762: $d3
	rlca                                             ; $4763: $07
	rrca                                             ; $4764: $0f
	ld c, $0e                                        ; $4765: $0e $0e
	ld e, $1c                                        ; $4767: $1e $1c
	rst SubAFromDE                                          ; $4769: $df
	inc a                                            ; $476a: $3c
	ld a, l                                          ; $476b: $7d
	ld hl, $ea74                                     ; $476c: $21 $74 $ea
	ld a, a                                          ; $476f: $7f
	adc [hl]                                         ; $4770: $8e
	ld a, c                                          ; $4771: $79
	ld a, c                                          ; $4772: $79
	sbc $02                                          ; $4773: $de $02
	ld a, [hl]                                       ; $4775: $7e
	cp e                                             ; $4776: $bb
	ld a, a                                          ; $4777: $7f
	ldh a, [$df]                                     ; $4778: $f0 $df
	db $fd                                           ; $477a: $fd
	db $dd                                           ; $477b: $dd
	rst $38                                          ; $477c: $ff
	db $dd                                           ; $477d: $dd
	inc bc                                           ; $477e: $03
	db $dd                                           ; $477f: $dd
	ld bc, $002a                                     ; $4780: $01 $2a $00
	sbc b                                            ; $4783: $98
	nop                                              ; $4784: $00
	ld b, d                                          ; $4785: $42
	ld d, l                                          ; $4786: $55
	inc sp                                           ; $4787: $33
	ld sp, $2200                                     ; $4788: $31 $00 $22
	ld a, e                                          ; $478b: $7b
	ei                                               ; $478c: $fb
	sub [hl]                                         ; $478d: $96
	rlca                                             ; $478e: $07

jr_025_478f:
	ld de, $3355                                     ; $478f: $11 $55 $33
	ld de, $1171                                     ; $4792: $11 $71 $11
	ld d, l                                          ; $4795: $55
	ld de, $fb7b                                     ; $4796: $11 $7b $fb
	sbc e                                            ; $4799: $9b
	ld d, c                                          ; $479a: $51
	ld de, $0111                                     ; $479b: $11 $11 $01
	sbc $11                                          ; $479e: $de $11
	sbc l                                            ; $47a0: $9d
	stop                                             ; $47a1: $10 $00
	ld a, e                                          ; $47a3: $7b
	ld a, [$fb7f]                                    ; $47a4: $fa $7f $fb
	ld [hl], a                                       ; $47a7: $77
	or $73                                           ; $47a8: $f6 $73
	pop af                                           ; $47aa: $f1
	ld c, a                                          ; $47ab: $4f
	add c                                            ; $47ac: $81
	rst SubAFromHL                                          ; $47ad: $d7
	rst $38                                          ; $47ae: $ff
	rst SubAFromDE                                          ; $47af: $df
	cp $dd                                           ; $47b0: $fe $dd
	db $fc                                           ; $47b2: $fc
	reti                                             ; $47b3: $d9


	rst $38                                          ; $47b4: $ff
	sbc [hl]                                         ; $47b5: $9e
	db $fc                                           ; $47b6: $fc

jr_025_47b7:
	call c, $dffe                                    ; $47b7: $dc $fe $df
	rst $38                                          ; $47ba: $ff
	rst SubAFromDE                                          ; $47bb: $df
	db $d3                                           ; $47bc: $d3
	sbc h                                            ; $47bd: $9c
	add $d6                                          ; $47be: $c6 $d6
	jp nc, $fbde                                     ; $47c0: $d2 $de $fb

	rst SubAFromDE                                          ; $47c3: $df
	sub d                                            ; $47c4: $92
	sbc [hl]                                         ; $47c5: $9e
	add d                                            ; $47c6: $82
	call c, $ddd2                                    ; $47c7: $dc $d2 $dd
	ei                                               ; $47ca: $fb
	db $dd                                           ; $47cb: $dd
	rst $38                                          ; $47cc: $ff
	sbc [hl]                                         ; $47cd: $9e
	ldh a, [c]                                       ; $47ce: $f2
	sbc $f1                                          ; $47cf: $de $f1
	sbc $f9                                          ; $47d1: $de $f9
	ld d, a                                          ; $47d3: $57
	ret nc                                           ; $47d4: $d0

	call c, $f1ff                                    ; $47d5: $dc $ff $f1
	ret c                                            ; $47d8: $d8

	rst $38                                          ; $47d9: $ff
	sbc b                                            ; $47da: $98
	db $fc                                           ; $47db: $fc
	ld sp, hl                                        ; $47dc: $f9
	ld sp, hl                                        ; $47dd: $f9
	di                                               ; $47de: $f3
	ldh [c], a                                       ; $47df: $e2
	add $84                                          ; $47e0: $c6 $84
	pop hl                                           ; $47e2: $e1
	ld a, a                                          ; $47e3: $7f
	ld a, c                                          ; $47e4: $79
	ld l, a                                          ; $47e5: $6f
	xor l                                            ; $47e6: $ad
	sbc l                                            ; $47e7: $9d
	ret nz                                           ; $47e8: $c0

	pop af                                           ; $47e9: $f1
	db $db                                           ; $47ea: $db
	rst $38                                          ; $47eb: $ff
	daa                                              ; $47ec: $27
	or b                                             ; $47ed: $b0
	sbc [hl]                                         ; $47ee: $9e
	db $fd                                           ; $47ef: $fd
	ld l, a                                          ; $47f0: $6f
	sub c                                            ; $47f1: $91

jr_025_47f2:
	ld [hl], a                                       ; $47f2: $77
	ld c, b                                          ; $47f3: $48
	sbc d                                            ; $47f4: $9a
	and $f9                                          ; $47f5: $e6 $f9
	cp $cf                                           ; $47f7: $fe $cf
	di                                               ; $47f9: $f3
	ld a, e                                          ; $47fa: $7b
	ld hl, sp-$66                                    ; $47fb: $f8 $9a
	rst SubAFromBC                                          ; $47fd: $e7
	pop hl                                           ; $47fe: $e1

Jump_025_47ff:
	ld hl, sp-$7c                                    ; $47ff: $f8 $84
	jp nz, $9ce1                                     ; $4801: $c2 $e1 $9c

	jp $3f0f                                         ; $4804: $c3 $0f $3f


	call c, $6fff                                    ; $4807: $dc $ff $6f
	ld a, [$ffdf]                                    ; $480a: $fa $df $ff
	sub e                                            ; $480d: $93
	ld l, c                                          ; $480e: $69
	di                                               ; $480f: $f3
	db $d3                                           ; $4810: $d3
	and a                                            ; $4811: $a7
	rlca                                             ; $4812: $07
	rrca                                             ; $4813: $0f
	ld a, $fe                                        ; $4814: $3e $fe
	sbc a                                            ; $4816: $9f
	rra                                              ; $4817: $1f
	ccf                                              ; $4818: $3f
	ld a, a                                          ; $4819: $7f
	ld l, a                                          ; $481a: $6f
	jr c, jr_025_47b7                                ; $481b: $38 $9a

	ld sp, hl                                        ; $481d: $f9
	pop af                                           ; $481e: $f1
	db $e3                                           ; $481f: $e3
	db $e3                                           ; $4820: $e3
	rst SubAFromBC                                          ; $4821: $e7
	ld [hl], e                                       ; $4822: $73
	and a                                            ; $4823: $a7
	rst SubAFromDE                                          ; $4824: $df
	db $fc                                           ; $4825: $fc
	rst SubAFromDE                                          ; $4826: $df
	ld hl, sp-$0f                                    ; $4827: $f8 $f1
	sub [hl]                                         ; $4829: $96
	ld a, a                                          ; $482a: $7f
	cp a                                             ; $482b: $bf
	ld a, a                                          ; $482c: $7f
	rst $38                                          ; $482d: $ff

jr_025_482e:
	ld a, a                                          ; $482e: $7f
	cp $fc                                           ; $482f: $fe $fc
	jr c, jr_025_47f2                                ; $4831: $38 $bf

	ld [hl], a                                       ; $4833: $77
	rst FarCall                                          ; $4834: $f7
	ld a, e                                          ; $4835: $7b
	cp c                                             ; $4836: $b9
	sub a                                            ; $4837: $97
	dec sp                                           ; $4838: $3b
	dec de                                           ; $4839: $1b
	dec de                                           ; $483a: $1b
	ld a, [de]                                       ; $483b: $1a
	ld a, [hl-]                                      ; $483c: $3a
	ld a, [hl-]                                      ; $483d: $3a
	ld [hl], d                                       ; $483e: $72
	ldh a, [c]                                       ; $483f: $f2
	sbc $16                                          ; $4840: $de $16
	rst SubAFromDE                                          ; $4842: $df
	rla                                              ; $4843: $17
	sub h                                            ; $4844: $94
	scf                                              ; $4845: $37
	ld a, a                                          ; $4846: $7f
	rst $38                                          ; $4847: $ff
	ldh a, [c]                                       ; $4848: $f2
	db $f4                                           ; $4849: $f4
	push af                                          ; $484a: $f5
	sub l                                            ; $484b: $95
	dec d                                            ; $484c: $15
	dec d                                            ; $484d: $15
	dec e                                            ; $484e: $1d
	cpl                                              ; $484f: $2f
	jp c, $9bff                                      ; $4850: $da $ff $9b

	ei                                               ; $4853: $fb
	rst AddAOntoHL                                          ; $4854: $ef
	rst SubAFromBC                                          ; $4855: $e7
	rst SubAFromDE                                          ; $4856: $df
	ld a, e                                          ; $4857: $7b
	ld d, e                                          ; $4858: $53
	sbc d                                            ; $4859: $9a
	db $dd                                           ; $485a: $dd
	push de                                          ; $485b: $d5
	cp a                                             ; $485c: $bf
	cp a                                             ; $485d: $bf
	or a                                             ; $485e: $b7
	sbc $97                                          ; $485f: $de $97
	sub h                                            ; $4861: $94
	or a                                             ; $4862: $b7

jr_025_4863:
	cp a                                             ; $4863: $bf
	push de                                          ; $4864: $d5
	sub l                                            ; $4865: $95
	and l                                            ; $4866: $a5
	xor c                                            ; $4867: $a9
	xor e                                            ; $4868: $ab
	ld c, e                                          ; $4869: $4b
	ld c, e                                          ; $486a: $4b
	ld d, e                                          ; $486b: $53
	cp a                                             ; $486c: $bf
	jp c, $f1ff                                      ; $486d: $da $ff $f1

	rst SubAFromDE                                          ; $4870: $df
	rst SubAFromHL                                          ; $4871: $d7
	rst SubAFromDE                                          ; $4872: $df
	rst SubAFromBC                                          ; $4873: $e7
	sbc e                                            ; $4874: $9b
	ld l, a                                          ; $4875: $6f
	ld c, a                                          ; $4876: $4f
	ld c, a                                          ; $4877: $4f
	ld e, a                                          ; $4878: $5f
	reti                                             ; $4879: $d9


	rst $38                                          ; $487a: $ff
	sbc l                                            ; $487b: $9d
	ld d, e                                          ; $487c: $53
	ld a, l                                          ; $487d: $7d
	db $dd                                           ; $487e: $dd
	ld a, a                                          ; $487f: $7f
	sub l                                            ; $4880: $95
	ld [hl], a                                       ; $4881: $77
	ld [hl], e                                       ; $4882: $73
	ld a, a                                          ; $4883: $7f
	ld a, a                                          ; $4884: $7f
	ld e, a                                          ; $4885: $5f
	ld c, a                                          ; $4886: $4f
	ld c, a                                          ; $4887: $4f
	rst JumpTable                                          ; $4888: $c7
	jp $02c1                                         ; $4889: $c3 $c1 $02


	ret nz                                           ; $488c: $c0

	ld [hl], d                                       ; $488d: $72
	db $e3                                           ; $488e: $e3
	ld l, d                                          ; $488f: $6a
	jr c, jr_025_482e                                ; $4890: $38 $9c

	ld sp, hl                                        ; $4892: $f9
	ld hl, sp-$08                                    ; $4893: $f8 $f8
	ld [hl], e                                       ; $4895: $73
	inc d                                            ; $4896: $14
	sbc h                                            ; $4897: $9c
	rra                                              ; $4898: $1f
	rlca                                             ; $4899: $07
	ld a, e                                          ; $489a: $7b
	jp c, $9eff                                      ; $489b: $da $ff $9e

	add a                                            ; $489e: $87
	pop af                                           ; $489f: $f1
	sbc l                                            ; $48a0: $9d
	jr nc, jr_025_4863                               ; $48a1: $30 $c0

	sbc $01                                          ; $48a3: $de $01
	sbc l                                            ; $48a5: $9d
	add hl, de                                       ; $48a6: $19
	ld a, e                                          ; $48a7: $7b
	ld [hl], d                                       ; $48a8: $72
	inc l                                            ; $48a9: $2c
	sbc e                                            ; $48aa: $9b
	rst $38                                          ; $48ab: $ff
	rst SubAFromBC                                          ; $48ac: $e7
	add a                                            ; $48ad: $87
	rlca                                             ; $48ae: $07
	halt                                             ; $48af: $76
	ld [hl+], a                                      ; $48b0: $22
	db $dd                                           ; $48b1: $dd
	rst FarCall                                          ; $48b2: $f7
	db $dd                                           ; $48b3: $dd
	rlca                                             ; $48b4: $07
	db $dd                                           ; $48b5: $dd
	rrca                                             ; $48b6: $0f
	dec sp                                           ; $48b7: $3b
	and b                                            ; $48b8: $a0
	ld a, a                                          ; $48b9: $7f
	ld b, $9e                                        ; $48ba: $06 $9e
	rst $38                                          ; $48bc: $ff
	ld a, e                                          ; $48bd: $7b
	inc l                                            ; $48be: $2c
	ld [hl], a                                       ; $48bf: $77
	rst FarCall                                          ; $48c0: $f7
	rst SubAFromDE                                          ; $48c1: $df
	ccf                                              ; $48c2: $3f
	sbc h                                            ; $48c3: $9c
	rra                                              ; $48c4: $1f
	rst $38                                          ; $48c5: $ff
	ld a, a                                          ; $48c6: $7f
	ld a, e                                          ; $48c7: $7b
	ld a, [$f97f]                                    ; $48c8: $fa $7f $f9
	ld a, [hl]                                       ; $48cb: $7e
	pop bc                                           ; $48cc: $c1
	rst SubAFromDE                                          ; $48cd: $df
	sbc a                                            ; $48ce: $9f
	sbc $df                                          ; $48cf: $de $df
	rst SubAFromDE                                          ; $48d1: $df
	rst $38                                          ; $48d2: $ff
	ld a, e                                          ; $48d3: $7b
	ld sp, hl                                        ; $48d4: $f9
	sbc d                                            ; $48d5: $9a
	ld e, a                                          ; $48d6: $5f
	rst GetHLinHL                                          ; $48d7: $cf
	rst GetHLinHL                                          ; $48d8: $cf
	rst JumpTable                                          ; $48d9: $c7
	ld b, a                                          ; $48da: $47
	ld [hl], a                                       ; $48db: $77
	pop hl                                           ; $48dc: $e1
	halt                                             ; $48dd: $76
	rst SubAFromDE                                          ; $48de: $df
	rst SubAFromDE                                          ; $48df: $df
	db $e3                                           ; $48e0: $e3
	rst SubAFromDE                                          ; $48e1: $df
	cp e                                             ; $48e2: $bb
	sbc e                                            ; $48e3: $9b
	ei                                               ; $48e4: $fb
	rst FarCall                                          ; $48e5: $f7
	cp a                                             ; $48e6: $bf
	adc a                                            ; $48e7: $8f
	ld a, e                                          ; $48e8: $7b
	inc a                                            ; $48e9: $3c
	sbc b                                            ; $48ea: $98
	ld h, a                                          ; $48eb: $67
	rlca                                             ; $48ec: $07
	rrca                                             ; $48ed: $0f
	ld a, a                                          ; $48ee: $7f
	ld a, a                                          ; $48ef: $7f
	sbc a                                            ; $48f0: $9f
	ccf                                              ; $48f1: $3f
	ld l, [hl]                                       ; $48f2: $6e
	sbc b                                            ; $48f3: $98
	ld [hl], e                                       ; $48f4: $73
	ei                                               ; $48f5: $fb
	inc bc                                           ; $48f6: $03
	rst $38                                          ; $48f7: $ff
	rst SubAFromDE                                          ; $48f8: $df
	rst $38                                          ; $48f9: $ff
	rra                                              ; $48fa: $1f
	db $e3                                           ; $48fb: $e3
	cp $3f                                           ; $48fc: $fe $3f
	rst SubAFromBC                                          ; $48fe: $e7
	cp $7f                                           ; $48ff: $fe $7f
	rst SubAFromBC                                          ; $4901: $e7
	rst $38                                          ; $4902: $ff
	dec e                                            ; $4903: $1d
	add e                                            ; $4904: $83
	rst SubAFromDE                                          ; $4905: $df
	ld bc, $0280                                     ; $4906: $01 $80 $02
	inc bc                                           ; $4909: $03
	dec b                                            ; $490a: $05
	ld b, $0a                                        ; $490b: $06 $0a
	inc c                                            ; $490d: $0c
	ld bc, $0301                                     ; $490e: $01 $01 $03
	ld [bc], a                                       ; $4911: $02
	ld b, $04                                        ; $4912: $06 $04
	inc c                                            ; $4914: $0c
	ld [$a263], sp                                   ; $4915: $08 $63 $a2
	and l                                            ; $4918: $a5
	daa                                              ; $4919: $27
	ld a, [hl+]                                      ; $491a: $2a
	ld l, $54                                        ; $491b: $2e $54
	ld e, h                                          ; $491d: $5c
	sbc a                                            ; $491e: $9f
	rra                                              ; $491f: $1f
	ld e, $1c                                        ; $4920: $1e $1c
	inc e                                            ; $4922: $1c
	jr jr_025_495d                                   ; $4923: $18 $38

	jr nc, @+$7a                                     ; $4925: $30 $78

	sub a                                            ; $4927: $97
	ret c                                            ; $4928: $d8

	sbc b                                            ; $4929: $98
	add hl, sp                                       ; $492a: $39
	add hl, sp                                       ; $492b: $39
	ld [hl-], a                                      ; $492c: $32
	inc sp                                           ; $492d: $33
	ld [hl], h                                       ; $492e: $74
	add a                                            ; $492f: $87
	db $dd                                           ; $4930: $dd
	rlca                                             ; $4931: $07
	add h                                            ; $4932: $84
	rrca                                             ; $4933: $0f
	ld c, $0e                                        ; $4934: $0e $0e
	ld bc, $c870                                     ; $4936: $01 $70 $c8
	ld b, h                                          ; $4939: $44
	and d                                            ; $493a: $a2
	ld hl, $3031                                     ; $493b: $21 $31 $30
	rst $38                                          ; $493e: $ff
	rst $38                                          ; $493f: $ff
	cp a                                             ; $4940: $bf
	cp a                                             ; $4941: $bf
	rra                                              ; $4942: $1f
	rra                                              ; $4943: $1f
	rrca                                             ; $4944: $0f
	rrca                                             ; $4945: $0f
	nop                                              ; $4946: $00
	add e                                            ; $4947: $83
	add d                                            ; $4948: $82
	inc b                                            ; $4949: $04
	ld c, b                                          ; $494a: $48
	dec hl                                           ; $494b: $2b
	cpl                                              ; $494c: $2f
	cp h                                             ; $494d: $bc
	reti                                             ; $494e: $d9


	rst $38                                          ; $494f: $ff
	add a                                            ; $4950: $87
	add e                                            ; $4951: $83
	rrca                                             ; $4952: $0f
	ccf                                              ; $4953: $3f
	rst GetHLinHL                                          ; $4954: $cf
	ld [hl], b                                       ; $4955: $70
	add c                                            ; $4956: $81
	dec e                                            ; $4957: $1d
	ldh [c], a                                       ; $4958: $e2
	db $fc                                           ; $4959: $fc
	ldh a, [$c0]                                     ; $495a: $f0 $c0
	ccf                                              ; $495c: $3f

jr_025_495d:
	rst $38                                          ; $495d: $ff
	cp $fe                                           ; $495e: $fe $fe
	rst $38                                          ; $4960: $ff
	rst $38                                          ; $4961: $ff
	ldh [$fc], a                                     ; $4962: $e0 $fc
	and $1a                                          ; $4964: $e6 $1a
	push af                                          ; $4966: $f5
	dec bc                                           ; $4967: $0b
	add d                                            ; $4968: $82
	cp $90                                           ; $4969: $fe $90
	ld hl, sp-$04                                    ; $496b: $f8 $fc
	ld c, $06                                        ; $496d: $0e $06
	rlca                                             ; $496f: $07
	ld hl, $5090                                     ; $4970: $21 $90 $50
	ld [$2808], sp                                   ; $4973: $08 $08 $28
	add hl, bc                                       ; $4976: $09
	ld a, [bc]                                       ; $4977: $0a
	rst $38                                          ; $4978: $ff
	ld a, a                                          ; $4979: $7f
	sbc $3f                                          ; $497a: $de $3f
	sbc $1f                                          ; $497c: $de $1f
	ld a, [$019e]                                    ; $497e: $fa $9e $01
	ld h, a                                          ; $4981: $67
	ld hl, sp-$80                                    ; $4982: $f8 $80
	inc d                                            ; $4984: $14
	add hl, de                                       ; $4985: $19
	dec hl                                           ; $4986: $2b
	ld [hl], $4c                                     ; $4987: $36 $4c
	ld a, b                                          ; $4989: $78
	or c                                             ; $498a: $b1
	ld h, c                                          ; $498b: $61
	jr jr_025_499e                                   ; $498c: $18 $10

	jr nc, @+$23                                     ; $498e: $30 $21

	ld h, e                                          ; $4990: $63
	ld b, a                                          ; $4991: $47
	rst GetHLinHL                                          ; $4992: $cf
	sbc a                                            ; $4993: $9f
	xor b                                            ; $4994: $a8
	cp c                                             ; $4995: $b9
	ld d, e                                          ; $4996: $53
	ld h, a                                          ; $4997: $67
	xor [hl]                                         ; $4998: $ae
	call c, $f078                                    ; $4999: $dc $78 $f0
	ld [hl], b                                       ; $499c: $70
	ld h, b                                          ; $499d: $60

jr_025_499e:
	ldh [$c0], a                                     ; $499e: $e0 $c0
	pop bc                                           ; $49a0: $c1
	add e                                            ; $49a1: $83
	add a                                            ; $49a2: $87
	sub e                                            ; $49a3: $93
	rrca                                             ; $49a4: $0f
	and $c8                                          ; $49a5: $e6 $c8
	sub h                                            ; $49a7: $94
	jr jr_025_49d2                                   ; $49a8: $18 $28

	ld hl, $a653                                     ; $49aa: $21 $53 $a6
	inc e                                            ; $49ad: $1c
	inc a                                            ; $49ae: $3c
	ld a, b                                          ; $49af: $78
	sbc $f0                                          ; $49b0: $de $f0
	add b                                            ; $49b2: $80
	ldh [$c1], a                                     ; $49b3: $e0 $c1
	jr nc, @+$3a                                     ; $49b5: $30 $38

	ld a, b                                          ; $49b7: $78
	ld h, b                                          ; $49b8: $60
	ret nz                                           ; $49b9: $c0

	adc b                                            ; $49ba: $88
	inc d                                            ; $49bb: $14
	jr z, jr_025_49cd                                ; $49bc: $28 $0f

	rlca                                             ; $49be: $07
	rlca                                             ; $49bf: $07
	rra                                              ; $49c0: $1f
	ccf                                              ; $49c1: $3f
	ld a, a                                          ; $49c2: $7f
	ei                                               ; $49c3: $fb
	rst FarCall                                          ; $49c4: $f7
	rst $38                                          ; $49c5: $ff
	ld hl, sp+$62                                    ; $49c6: $f8 $62
	ld d, b                                          ; $49c8: $50
	ld [$2e0c], sp                                   ; $49c9: $08 $0c $2e
	ld h, [hl]                                       ; $49cc: $66

jr_025_49cd:
	rst $38                                          ; $49cd: $ff
	rst $38                                          ; $49ce: $ff
	db $fc                                           ; $49cf: $fc
	ldh [$f0], a                                     ; $49d0: $e0 $f0

jr_025_49d2:
	sbc b                                            ; $49d2: $98
	ldh a, [$d0]                                     ; $49d3: $f0 $d0
	ret c                                            ; $49d5: $d8

	ld bc, $31f1                                     ; $49d6: $01 $f1 $31
	ld de, $19dd                                     ; $49d9: $11 $dd $19
	sbc [hl]                                         ; $49dc: $9e
	rst $38                                          ; $49dd: $ff
	sbc $0f                                          ; $49de: $de $0f
	db $dd                                           ; $49e0: $dd
	rlca                                             ; $49e1: $07
	sbc [hl]                                         ; $49e2: $9e
	ld [bc], a                                       ; $49e3: $02
	db $dd                                           ; $49e4: $dd
	ld b, c                                          ; $49e5: $41
	sbc h                                            ; $49e6: $9c
	ld h, c                                          ; $49e7: $61
	ld h, l                                          ; $49e8: $65
	dec h                                            ; $49e9: $25
	db $db                                           ; $49ea: $db
	add a                                            ; $49eb: $87
	sbc e                                            ; $49ec: $9b
	add e                                            ; $49ed: $83
	jp $8408                                         ; $49ee: $c3 $08 $84


	sbc $94                                          ; $49f1: $de $94
	sbc $54                                          ; $49f3: $de $54
	ld [hl], a                                       ; $49f5: $77
	inc [hl]                                         ; $49f6: $34
	sbc [hl]                                         ; $49f7: $9e
	rrca                                             ; $49f8: $0f
	sbc $8f                                          ; $49f9: $de $8f
	ld a, [hl]                                       ; $49fb: $7e
	pop af                                           ; $49fc: $f1
	sub l                                            ; $49fd: $95
	dec b                                            ; $49fe: $05
	ld a, [bc]                                       ; $49ff: $0a
	db $10                                           ; $4a00: $10
	jr nz, @+$42                                     ; $4a01: $20 $40

	add e                                            ; $4a03: $83
	ld bc, $0603                                     ; $4a04: $01 $03 $06
	dec c                                            ; $4a07: $0d
	ld a, e                                          ; $4a08: $7b
	xor a                                            ; $4a09: $af
	add l                                            ; $4a0a: $85
	rst $38                                          ; $4a0b: $ff
	jp nz, $0583                                     ; $4a0c: $c2 $83 $05

	dec bc                                           ; $4a0f: $0b
	ld d, $18                                        ; $4a10: $16 $18
	ld h, b                                          ; $4a12: $60
	ldh [$3f], a                                     ; $4a13: $e0 $3f
	ld a, [hl]                                       ; $4a15: $7e
	cp $fc                                           ; $4a16: $fe $fc
	ld sp, hl                                        ; $4a18: $f9
	rst FarCall                                          ; $4a19: $f7
	rst $38                                          ; $4a1a: $ff
	rst $38                                          ; $4a1b: $ff
	pop hl                                           ; $4a1c: $e1
	jp nz, $0483                                     ; $4a1d: $c2 $83 $04

	dec bc                                           ; $4a20: $0b
	rla                                              ; $4a21: $17
	ld l, $5c                                        ; $4a22: $2e $5c
	rra                                              ; $4a24: $1f
	ld [hl], a                                       ; $4a25: $77
	rst AddAOntoHL                                          ; $4a26: $ef
	sub e                                            ; $4a27: $93
	ld hl, sp-$0f                                    ; $4a28: $f8 $f1
	db $e3                                           ; $4a2a: $e3
	ld c, h                                          ; $4a2b: $4c
	sbc b                                            ; $4a2c: $98
	ld h, c                                          ; $4a2d: $61
	jp $0f86                                         ; $4a2e: $c3 $86 $0f


	ld e, $3c                                        ; $4a31: $1e $3c
	add e                                            ; $4a33: $83
	ld [hl], a                                       ; $4a34: $77
	add c                                            ; $4a35: $81
	add b                                            ; $4a36: $80
	cp $f6                                           ; $4a37: $fe $f6
	and $55                                          ; $4a39: $e6 $55
	xor c                                            ; $4a3b: $a9
	ret                                              ; $4a3c: $c9


	inc de                                           ; $4a3d: $13
	ld a, [de]                                       ; $4a3e: $1a
	ld [hl+], a                                      ; $4a3f: $22
	or h                                             ; $4a40: $b4
	ld c, [hl]                                       ; $4a41: $4e
	xor $de                                          ; $4a42: $ee $de
	sbc [hl]                                         ; $4a44: $9e
	cp [hl]                                          ; $4a45: $be
	ld [hl], $76                                     ; $4a46: $36 $76
	ld h, [hl]                                       ; $4a48: $66
	db $e4                                           ; $4a49: $e4
	ld h, a                                          ; $4a4a: $67
	ld l, a                                          ; $4a4b: $6f
	ld l, e                                          ; $4a4c: $6b
	ld c, e                                          ; $4a4d: $4b
	ld e, e                                          ; $4a4e: $5b
	ld d, l                                          ; $4a4f: $55
	ld h, l                                          ; $4a50: $65
	ld b, [hl]                                       ; $4a51: $46
	ret c                                            ; $4a52: $d8

	ret c                                            ; $4a53: $d8

	call c, $99dc                                    ; $4a54: $dc $dc $99
	call z, $cece                                    ; $4a57: $cc $ce $ce
	rst AddAOntoHL                                          ; $4a5a: $ef
	add hl, bc                                       ; $4a5b: $09
	add hl, bc                                       ; $4a5c: $09
	db $dd                                           ; $4a5d: $dd
	adc b                                            ; $4a5e: $88
	rst SubAFromDE                                          ; $4a5f: $df
	ret z                                            ; $4a60: $c8

	reti                                             ; $4a61: $d9


	rlca                                             ; $4a62: $07
	sbc e                                            ; $4a63: $9b
	dec h                                            ; $4a64: $25
	inc h                                            ; $4a65: $24
	or h                                             ; $4a66: $b4
	or h                                             ; $4a67: $b4
	db $dd                                           ; $4a68: $dd
	sub h                                            ; $4a69: $94
	db $dd                                           ; $4a6a: $dd
	jp $e3dd                                         ; $4a6b: $c3 $dd $e3


	sbc e                                            ; $4a6e: $9b
	ld d, h                                          ; $4a6f: $54
	call nc, $94d4                                   ; $4a70: $d4 $d4 $94
	db $dd                                           ; $4a73: $dd
	or d                                             ; $4a74: $b2
	sbc $8f                                          ; $4a75: $de $8f
	call c, $9dcf                                    ; $4a77: $dc $cf $9d
	inc bc                                           ; $4a7a: $03
	rrca                                             ; $4a7b: $0f
	ei                                               ; $4a7c: $fb
	ld h, a                                          ; $4a7d: $67
	ld hl, sp-$73                                    ; $4a7e: $f8 $8d
	ld a, $e0                                        ; $4a80: $3e $e0
	ld bc, $0402                                     ; $4a82: $01 $02 $04
	ld [$6010], sp                                   ; $4a85: $08 $10 $60
	cp $e0                                           ; $4a88: $fe $e0
	ld bc, $0703                                     ; $4a8a: $01 $03 $07
	rrca                                             ; $4a8d: $0f
	rra                                              ; $4a8e: $1f
	ld a, a                                          ; $4a8f: $7f
	ld b, b                                          ; $4a90: $40
	add c                                            ; $4a91: $81
	ld [hl], a                                       ; $4a92: $77
	pop af                                           ; $4a93: $f1
	sbc h                                            ; $4a94: $9c
	jr nz, @-$3d                                     ; $4a95: $20 $c1

	ld a, a                                          ; $4a97: $7f
	jp c, $94ff                                      ; $4a98: $da $ff $94

	or b                                             ; $4a9b: $b0
	ld h, b                                          ; $4a9c: $60
	add c                                            ; $4a9d: $81
	inc bc                                           ; $4a9e: $03
	inc c                                            ; $4a9f: $0c
	db $10                                           ; $4aa0: $10
	ld a, a                                          ; $4aa1: $7f
	rst AddAOntoHL                                          ; $4aa2: $ef
	rst GetHLinHL                                          ; $4aa3: $cf
	sbc a                                            ; $4aa4: $9f
	ld a, a                                          ; $4aa5: $7f
	ld a, d                                          ; $4aa6: $7a
	add e                                            ; $4aa7: $83
	add l                                            ; $4aa8: $85
	rst $38                                          ; $4aa9: $ff
	ldh a, [$7f]                                     ; $4aaa: $f0 $7f
	cp $fe                                           ; $4aac: $fe $fe
	ld sp, hl                                        ; $4aae: $f9
	ld sp, hl                                        ; $4aaf: $f9
	dec sp                                           ; $4ab0: $3b
	dec de                                           ; $4ab1: $1b
	set 0, h                                         ; $4ab2: $cb $c4
	add l                                            ; $4ab4: $85
	dec b                                            ; $4ab5: $05
	rrca                                             ; $4ab6: $0f
	rrca                                             ; $4ab7: $0f
	adc $ee                                          ; $4ab8: $ce $ee
	ld a, [hl]                                       ; $4aba: $7e
	ld h, h                                          ; $4abb: $64
	call nz, $ce9c                                   ; $4abc: $c4 $9c $ce
	xor $cf                                          ; $4abf: $ee $cf
	db $dd                                           ; $4ac1: $dd
	sbc l                                            ; $4ac2: $9d
	sbc $cc                                          ; $4ac3: $de $cc
	rst SubAFromDE                                          ; $4ac5: $df
	sbc h                                            ; $4ac6: $9c
	sub h                                            ; $4ac7: $94
	cp h                                             ; $4ac8: $bc
	or [hl]                                          ; $4ac9: $b6

Jump_025_4aca:
	or $46                                           ; $4aca: $f6 $46
	ld h, d                                          ; $4acc: $62
	ld h, e                                          ; $4acd: $63
	ld h, e                                          ; $4ace: $63
	ld [hl], e                                       ; $4acf: $73
	ld [hl], e                                       ; $4ad0: $73
	ld h, e                                          ; $4ad1: $63
	ld [hl], e                                       ; $4ad2: $73
	db $dd                                           ; $4ad3: $dd

jr_025_4ad4:
	rst AddAOntoHL                                          ; $4ad4: $ef
	rst SubAFromDE                                          ; $4ad5: $df
	xor $92                                          ; $4ad6: $ee $92
	cp $de                                           ; $4ad8: $fe $de
	add sp, $6c                                      ; $4ada: $e8 $6c
	ld h, h                                          ; $4adc: $64
	inc [hl]                                         ; $4add: $34
	or h                                             ; $4ade: $b4
	sub h                                            ; $4adf: $94
	sbc $ce                                          ; $4ae0: $de $ce
	rlca                                             ; $4ae2: $07
	add e                                            ; $4ae3: $83
	add e                                            ; $4ae4: $83
	ld a, e                                          ; $4ae5: $7b
	ld l, a                                          ; $4ae6: $6f
	sbc e                                            ; $4ae7: $9b
	ld h, c                                          ; $4ae8: $61
	ld [hl], c                                       ; $4ae9: $71
	sub h                                            ; $4aea: $94
	ld d, h                                          ; $4aeb: $54
	db $dd                                           ; $4aec: $dd
	ld c, h                                          ; $4aed: $4c
	rst SubAFromDE                                          ; $4aee: $df
	inc h                                            ; $4aef: $24
	rst SubAFromDE                                          ; $4af0: $df
	db $e3                                           ; $4af1: $e3
	db $dd                                           ; $4af2: $dd
	di                                               ; $4af3: $f3
	rst SubAFromDE                                          ; $4af4: $df
	ei                                               ; $4af5: $fb
	sbc l                                            ; $4af6: $9d
	ld [hl], d                                       ; $4af7: $72
	ld [hl], c                                       ; $4af8: $71
	sbc $51                                          ; $4af9: $de $51
	sbc $20                                          ; $4afb: $de $20
	rst SubAFromDE                                          ; $4afd: $df
	rst GetHLinHL                                          ; $4afe: $cf
	sbc $ef                                          ; $4aff: $de $ef
	sbc $ff                                          ; $4b01: $de $ff
	sbc l                                            ; $4b03: $9d
	ld bc, $6a07                                     ; $4b04: $01 $07 $6a
	ld b, a                                          ; $4b07: $47
	ld l, e                                          ; $4b08: $6b
	ld hl, sp-$66                                    ; $4b09: $f8 $9a
	add a                                            ; $4b0b: $87
	rst $38                                          ; $4b0c: $ff
	inc c                                            ; $4b0d: $0c
	inc de                                           ; $4b0e: $13
	ld a, a                                          ; $4b0f: $7f
	ld a, d                                          ; $4b10: $7a
	cp h                                             ; $4b11: $bc
	rst SubAFromDE                                          ; $4b12: $df
	rst $38                                          ; $4b13: $ff
	ld a, e                                          ; $4b14: $7b
	ld h, e                                          ; $4b15: $63
	ld a, [hl]                                       ; $4b16: $7e
	cp h                                             ; $4b17: $bc
	sub [hl]                                         ; $4b18: $96
	inc c                                            ; $4b19: $0c
	add a                                            ; $4b1a: $87
	ld a, $f2                                        ; $4b1b: $3e $f2
	jp nz, Jump_025_7404                             ; $4b1d: $c2 $04 $74

	ld c, b                                          ; $4b20: $48
	ret z                                            ; $4b21: $c8

	call c, $80ff                                    ; $4b22: $dc $ff $80
	adc a                                            ; $4b25: $8f
	ccf                                              ; $4b26: $3f
	ccf                                              ; $4b27: $3f
	rst $38                                          ; $4b28: $ff
	rst $38                                          ; $4b29: $ff
	ld hl, sp-$01                                    ; $4b2a: $f8 $ff
	rst FarCall                                          ; $4b2c: $f7
	rst SubAFromDE                                          ; $4b2d: $df
	db $fc                                           ; $4b2e: $fc
	db $ec                                           ; $4b2f: $ec
	ret nz                                           ; $4b30: $c0

	add b                                            ; $4b31: $80
	add a                                            ; $4b32: $87
	add b                                            ; $4b33: $80
	adc a                                            ; $4b34: $8f
	cp a                                             ; $4b35: $bf
	rst $38                                          ; $4b36: $ff
	cp b                                             ; $4b37: $b8
	rst AddAOntoHL                                          ; $4b38: $ef
	rst $38                                          ; $4b39: $ff
	ccf                                              ; $4b3a: $3f
	rst SubAFromDE                                          ; $4b3b: $df
	rst AddAOntoHL                                          ; $4b3c: $ef
	rst $38                                          ; $4b3d: $ff
	ld a, a                                          ; $4b3e: $7f
	scf                                              ; $4b3f: $37
	inc a                                            ; $4b40: $3c
	inc c                                            ; $4b41: $0c
	ret z                                            ; $4b42: $c8

	jr z, jr_025_4ad4                                ; $4b43: $28 $8f

	ret c                                            ; $4b45: $d8

	ldh [$f0], a                                     ; $4b46: $e0 $f0
	ld a, b                                          ; $4b48: $78
	sbc $de                                          ; $4b49: $de $de
	rst SubAFromDE                                          ; $4b4b: $df
	rst SubAFromDE                                          ; $4b4c: $df
	rst $38                                          ; $4b4d: $ff
	rst $38                                          ; $4b4e: $ff
	rst SubAFromDE                                          ; $4b4f: $df
	rst $38                                          ; $4b50: $ff
	ld [hl], e                                       ; $4b51: $73
	ld [hl], e                                       ; $4b52: $73
	ld [hl], c                                       ; $4b53: $71
	ld [hl], c                                       ; $4b54: $71
	sbc $20                                          ; $4b55: $de $20
	sbc d                                            ; $4b57: $9a
	nop                                              ; $4b58: $00
	ld [hl], e                                       ; $4b59: $73
	ld a, e                                          ; $4b5a: $7b
	ld a, e                                          ; $4b5b: $7b
	ld a, d                                          ; $4b5c: $7a
	db $dd                                           ; $4b5d: $dd
	rst $38                                          ; $4b5e: $ff
	ld a, a                                          ; $4b5f: $7f
	ld l, [hl]                                       ; $4b60: $6e
	rst SubAFromDE                                          ; $4b61: $df
	rst GetHLinHL                                          ; $4b62: $cf
	add e                                            ; $4b63: $83
	rst JumpTable                                          ; $4b64: $c7

jr_025_4b65:
	jp nz, Jump_025_4042                             ; $4b65: $c2 $42 $40

	and $f6                                          ; $4b68: $e6 $f6
	ld [de], a                                       ; $4b6a: $12
	dec bc                                           ; $4b6b: $0b
	push hl                                          ; $4b6c: $e5
	db $fd                                           ; $4b6d: $fd
	ld a, [$39ff]                                    ; $4b6e: $fa $ff $39
	add hl, sp                                       ; $4b71: $39
	db $fd                                           ; $4b72: $fd
	db $fc                                           ; $4b73: $fc
	cp $1e                                           ; $4b74: $fe $1e
	rlca                                             ; $4b76: $07
	ld bc, $2424                                     ; $4b77: $01 $24 $24
	inc [hl]                                         ; $4b7a: $34
	db $10                                           ; $4b7b: $10
	jr jr_025_4b9a                                   ; $4b7c: $18 $1c

	ld c, $0f                                        ; $4b7e: $0e $0f
	sbc $fb                                          ; $4b80: $de $fb
	call c, $9eff                                    ; $4b82: $dc $ff $9e
	jr nz, jr_025_4b65                               ; $4b85: $20 $de

	db $10                                           ; $4b87: $10
	ld a, [hl]                                       ; $4b88: $7e
	nop                                              ; $4b89: $00
	ld a, l                                          ; $4b8a: $7d
	sbc b                                            ; $4b8b: $98
	reti                                             ; $4b8c: $d9


	rst $38                                          ; $4b8d: $ff
	ld l, e                                          ; $4b8e: $6b
	ld h, d                                          ; $4b8f: $62
	ld l, c                                          ; $4b90: $69
	and b                                            ; $4b91: $a0
	rst SubAFromDE                                          ; $4b92: $df
	ld bc, $a07d                                     ; $4b93: $01 $7d $a0
	sub [hl]                                         ; $4b96: $96
	ld [hl+], a                                      ; $4b97: $22
	ld b, h                                          ; $4b98: $44
	ld l, c                                          ; $4b99: $69

jr_025_4b9a:
	sub e                                            ; $4b9a: $93
	ld h, [hl]                                       ; $4b9b: $66
	call z, $1018                                    ; $4b9c: $cc $18 $10
	ld sp, $a175                                     ; $4b9f: $31 $75 $a1
	sub [hl]                                         ; $4ba2: $96
	ccf                                              ; $4ba3: $3f
	sub b                                            ; $4ba4: $90
	jr nc, jr_025_4c07                               ; $4ba5: $30 $60

	jp hl                                            ; $4ba7: $e9


	jp hl                                            ; $4ba8: $e9


	pop de                                           ; $4ba9: $d1
	pop de                                           ; $4baa: $d1
	or a                                             ; $4bab: $b7
	ld a, d                                          ; $4bac: $7a
	ret nz                                           ; $4bad: $c0

	rst SubAFromDE                                          ; $4bae: $df
	rst FarCall                                          ; $4baf: $f7
	rst SubAFromDE                                          ; $4bb0: $df
	rst AddAOntoHL                                          ; $4bb1: $ef
	add b                                            ; $4bb2: $80
	set 4, b                                         ; $4bb3: $cb $e0
	jp hl                                            ; $4bb5: $e9


	adc a                                            ; $4bb6: $8f
	adc e                                            ; $4bb7: $8b
	nop                                              ; $4bb8: $00
	add e                                            ; $4bb9: $83
	sbc h                                            ; $4bba: $9c
	rlca                                             ; $4bbb: $07
	xor b                                            ; $4bbc: $a8
	adc c                                            ; $4bbd: $89
	adc a                                            ; $4bbe: $8f
	adc a                                            ; $4bbf: $8f
	add e                                            ; $4bc0: $83
	inc c                                            ; $4bc1: $0c
	rlca                                             ; $4bc2: $07
	inc bc                                           ; $4bc3: $03
	ld a, a                                          ; $4bc4: $7f
	or $b0                                           ; $4bc5: $f6 $b0
	and b                                            ; $4bc7: $a0
	ld h, b                                          ; $4bc8: $60
	add b                                            ; $4bc9: $80
	ld b, b                                          ; $4bca: $40
	ret nz                                           ; $4bcb: $c0

	ld hl, sp-$08                                    ; $4bcc: $f8 $f8
	ldh [$e0], a                                     ; $4bce: $e0 $e0
	and b                                            ; $4bd0: $a0
	ld h, b                                          ; $4bd1: $60
	ld a, a                                          ; $4bd2: $7f
	ld c, d                                          ; $4bd3: $4a
	ld a, l                                          ; $4bd4: $7d
	reti                                             ; $4bd5: $d9


	ld a, a                                          ; $4bd6: $7f
	db $ec                                           ; $4bd7: $ec
	ld h, l                                          ; $4bd8: $65
	ld d, e                                          ; $4bd9: $53
	db $fd                                           ; $4bda: $fd
	sbc c                                            ; $4bdb: $99
	rst $38                                          ; $4bdc: $ff
	pop bc                                           ; $4bdd: $c1
	rst $38                                          ; $4bde: $ff
	rst SubAFromDE                                          ; $4bdf: $df
	ret z                                            ; $4be0: $c8

	ret nz                                           ; $4be1: $c0

	ld a, c                                          ; $4be2: $79
	ld b, b                                          ; $4be3: $40
	add b                                            ; $4be4: $80
	ld a, $3f                                        ; $4be5: $3e $3f
	ccf                                              ; $4be7: $3f
	rrca                                             ; $4be8: $0f
	ld [$1300], sp                                   ; $4be9: $08 $00 $13
	ld e, $ef                                        ; $4bec: $1e $ef
	ld [hl], a                                       ; $4bee: $77
	db $db                                           ; $4bef: $db
	rst AddAOntoHL                                          ; $4bf0: $ef
	ld [hl], a                                       ; $4bf1: $77
	ccf                                              ; $4bf2: $3f
	rst $38                                          ; $4bf3: $ff
	pop hl                                           ; $4bf4: $e1
	db $10                                           ; $4bf5: $10
	adc b                                            ; $4bf6: $88
	db $e4                                           ; $4bf7: $e4
	ldh a, [$78]                                     ; $4bf8: $f0 $78
	ld hl, sp-$04                                    ; $4bfa: $f8 $fc
	adc l                                            ; $4bfc: $8d
	call z, $e4c4                                    ; $4bfd: $cc $c4 $e4
	db $f4                                           ; $4c00: $f4
	db $ec                                           ; $4c01: $ec
	call $dfc5                                       ; $4c02: $cd $c5 $df
	rst $38                                          ; $4c05: $ff
	ld [hl], l                                       ; $4c06: $75

jr_025_4c07:
	rrca                                             ; $4c07: $0f
	rst SubAFromDE                                          ; $4c08: $df
	ld a, a                                          ; $4c09: $7f
	ld a, [hl]                                       ; $4c0a: $7e
	xor d                                            ; $4c0b: $aa
	ld a, [hl]                                       ; $4c0c: $7e
	xor h                                            ; $4c0d: $ac
	sbc e                                            ; $4c0e: $9b
	ret c                                            ; $4c0f: $d8

	adc h                                            ; $4c10: $8c
	add a                                            ; $4c11: $87
	ld bc, $ffd9                                     ; $4c12: $01 $d9 $ff
	sub a                                            ; $4c15: $97
	add h                                            ; $4c16: $84
	call nz, $b9e2                                   ; $4c17: $c4 $e2 $b9
	sbc [hl]                                         ; $4c1a: $9e
	ld c, l                                          ; $4c1b: $4d
	ld c, h                                          ; $4c1c: $4c
	db $ec                                           ; $4c1d: $ec
	reti                                             ; $4c1e: $d9


	rst $38                                          ; $4c1f: $ff
	inc de                                           ; $4c20: $13
	nop                                              ; $4c21: $00
	sbc l                                            ; $4c22: $9d
	nop                                              ; $4c23: $00
	inc b                                            ; $4c24: $04
	sbc $44                                          ; $4c25: $de $44
	sbc [hl]                                         ; $4c27: $9e
	ld b, b                                          ; $4c28: $40
	ld l, e                                          ; $4c29: $6b
	ld a, [$44dd]                                    ; $4c2a: $fa $dd $44
	ld d, e                                          ; $4c2d: $53
	ld a, [$e977]                                    ; $4c2e: $fa $77 $e9
	rst SubAFromDE                                          ; $4c31: $df
	ld b, h                                          ; $4c32: $44
	ld a, a                                          ; $4c33: $7f
	rst FarCall                                          ; $4c34: $f7
	rst $38                                          ; $4c35: $ff
	ld a, a                                          ; $4c36: $7f
	rst SubAFromBC                                          ; $4c37: $e7
	db $fc                                           ; $4c38: $fc
	rst $38                                          ; $4c39: $ff
	rst GetHLinHL                                          ; $4c3a: $cf
	cp $52                                           ; $4c3b: $fe $52
	add e                                            ; $4c3d: $83
	add b                                            ; $4c3e: $80
	inc bc                                           ; $4c3f: $03
	dec b                                            ; $4c40: $05
	ld b, $0c                                        ; $4c41: $06 $0c
	add hl, bc                                       ; $4c43: $09
	ld de, $0412                                     ; $4c44: $11 $12 $04
	ld [bc], a                                       ; $4c47: $02
	ld b, $05                                        ; $4c48: $06 $05
	dec bc                                           ; $4c4a: $0b
	rrca                                             ; $4c4b: $0f
	rra                                              ; $4c4c: $1f
	ld e, $1c                                        ; $4c4d: $1e $1c
	sbc c                                            ; $4c4f: $99
	ld sp, $e969                                     ; $4c50: $31 $69 $e9
	jp nc, Jump_025_7473                             ; $4c53: $d2 $73 $74

	ld h, [hl]                                       ; $4c56: $66
	ld a, a                                          ; $4c57: $7f
	rst $38                                          ; $4c58: $ff
	rst FarCall                                          ; $4c59: $f7
	rst FarCall                                          ; $4c5a: $f7
	rst AddAOntoHL                                          ; $4c5b: $ef
	ld c, [hl]                                       ; $4c5c: $4e
	ld c, [hl]                                       ; $4c5d: $4e
	adc [hl]                                         ; $4c5e: $8e
	ld e, h                                          ; $4c5f: $5c
	db $eb                                           ; $4c60: $eb
	ld c, e                                          ; $4c61: $4b
	xor e                                            ; $4c62: $ab
	sub a                                            ; $4c63: $97
	dec d                                            ; $4c64: $15
	ld [hl], l                                       ; $4c65: $75
	ld c, l                                          ; $4c66: $4d
	call z, $9797                                    ; $4c67: $cc $97 $97
	rla                                              ; $4c6a: $17
	cpl                                              ; $4c6b: $2f
	cpl                                              ; $4c6c: $2f
	rrca                                             ; $4c6d: $0f
	rra                                              ; $4c6e: $1f
	rra                                              ; $4c6f: $1f
	db $fd                                           ; $4c70: $fd
	rst SubAFromDE                                          ; $4c71: $df
	add b                                            ; $4c72: $80
	sbc l                                            ; $4c73: $9d
	nop                                              ; $4c74: $00
	ret nz                                           ; $4c75: $c0

	ei                                               ; $4c76: $fb
	rst SubAFromDE                                          ; $4c77: $df
	add b                                            ; $4c78: $80
	sbc b                                            ; $4c79: $98
	ld bc, $0703                                     ; $4c7a: $01 $03 $07
	rlca                                             ; $4c7d: $07
	dec bc                                           ; $4c7e: $0b
	dec bc                                           ; $4c7f: $0b
	dec de                                           ; $4c80: $1b
	db $fc                                           ; $4c81: $fc
	sbc h                                            ; $4c82: $9c
	inc b                                            ; $4c83: $04
	inc e                                            ; $4c84: $1c
	inc c                                            ; $4c85: $0c
	ld [hl], e                                       ; $4c86: $73
	db $ec                                           ; $4c87: $ec
	rst SubAFromDE                                          ; $4c88: $df
	ret nz                                           ; $4c89: $c0

	ld a, a                                          ; $4c8a: $7f
	rst SubAFromDE                                          ; $4c8b: $df
	ld sp, hl                                        ; $4c8c: $f9
	sbc c                                            ; $4c8d: $99
	rra                                              ; $4c8e: $1f
	rla                                              ; $4c8f: $17
	inc bc                                           ; $4c90: $03
	inc [hl]                                         ; $4c91: $34
	dec bc                                           ; $4c92: $0b
	ld bc, $f87b                                     ; $4c93: $01 $7b $f8
	add b                                            ; $4c96: $80
	rra                                              ; $4c97: $1f
	inc bc                                           ; $4c98: $03
	dec de                                           ; $4c99: $1b
	inc e                                            ; $4c9a: $1c
	inc bc                                           ; $4c9b: $03
	nop                                              ; $4c9c: $00
	nop                                              ; $4c9d: $00
	rst SubAFromDE                                          ; $4c9e: $df
	db $dd                                           ; $4c9f: $dd
	sub a                                            ; $4ca0: $97
	sbc a                                            ; $4ca1: $9f
	ld a, [hl]                                       ; $4ca2: $7e
	cp $fd                                           ; $4ca3: $fe $fd
	ld a, $ff                                        ; $4ca5: $3e $ff
	rst $38                                          ; $4ca7: $ff
	ld sp, hl                                        ; $4ca8: $f9
	ld h, c                                          ; $4ca9: $61
	jp $0683                                         ; $4caa: $c3 $83 $06


	inc b                                            ; $4cad: $04
	add e                                            ; $4cae: $83
	jp nz, Jump_025_4442                             ; $4caf: $c2 $42 $44

	push bc                                          ; $4cb2: $c5
	ld c, e                                          ; $4cb3: $4b
	ld c, d                                          ; $4cb4: $4a
	sub h                                            ; $4cb5: $94
	sbc [hl]                                         ; $4cb6: $9e
	rst $38                                          ; $4cb7: $ff
	sbc $bf                                          ; $4cb8: $de $bf
	add e                                            ; $4cba: $83
	ld a, $3c                                        ; $4cbb: $3e $3c
	inc a                                            ; $4cbd: $3c
	ld a, b                                          ; $4cbe: $78
	ld b, c                                          ; $4cbf: $41
	ld b, c                                          ; $4cc0: $41
	jp $87c3                                         ; $4cc1: $c3 $c3 $87


	add a                                            ; $4cc4: $87
	dec bc                                           ; $4cc5: $0b
	dec bc                                           ; $4cc6: $0b
	cp a                                             ; $4cc7: $bf
	cp a                                             ; $4cc8: $bf
	ccf                                              ; $4cc9: $3f
	ccf                                              ; $4cca: $3f
	ld a, a                                          ; $4ccb: $7f
	ld a, a                                          ; $4ccc: $7f
	rst $38                                          ; $4ccd: $ff
	rst $38                                          ; $4cce: $ff
	ld a, h                                          ; $4ccf: $7c
	inc c                                            ; $4cd0: $0c
	inc c                                            ; $4cd1: $0c
	ld [$1908], sp                                   ; $4cd2: $08 $08 $19
	add hl, de                                       ; $4cd5: $19
	ld de, $ffd9                                     ; $4cd6: $11 $d9 $ff
	sub d                                            ; $4cd9: $92
	inc h                                            ; $4cda: $24
	jr z, jr_025_4ce5                                ; $4cdb: $28 $08

	ld d, b                                          ; $4cdd: $50
	ld d, b                                          ; $4cde: $50
	ld h, b                                          ; $4cdf: $60
	ld h, b                                          ; $4ce0: $60
	ld b, b                                          ; $4ce1: $40
	inc a                                            ; $4ce2: $3c
	jr c, jr_025_4d1d                                ; $4ce3: $38 $38

jr_025_4ce5:
	ld [hl], b                                       ; $4ce5: $70
	ld [hl], b                                       ; $4ce6: $70
	ld a, e                                          ; $4ce7: $7b
	ld hl, sp-$6d                                    ; $4ce8: $f8 $93
	add sp, -$54                                     ; $4cea: $e8 $ac
	sub c                                            ; $4cec: $91
	sub b                                            ; $4ced: $90
	sbc b                                            ; $4cee: $98
	and d                                            ; $4cef: $a2
	and [hl]                                         ; $4cf0: $a6
	ldh a, [c]                                       ; $4cf1: $f2
	call c, $f8d8                                    ; $4cf2: $dc $d8 $f8
	ld hl, sp-$22                                    ; $4cf5: $f8 $de
	ldh a, [hDisp0_OBP0]                                     ; $4cf7: $f0 $86
	db $e4                                           ; $4cf9: $e4
	xor d                                            ; $4cfa: $aa
	cp d                                             ; $4cfb: $ba
	sub [hl]                                         ; $4cfc: $96
	db $10                                           ; $4cfd: $10
	ld a, b                                          ; $4cfe: $78
	jr nz, jr_025_4d35                               ; $4cff: $20 $34

	or b                                             ; $4d01: $b0
	dec e                                            ; $4d02: $1d
	dec e                                            ; $4d03: $1d
	add hl, sp                                       ; $4d04: $39
	dec sp                                           ; $4d05: $3b
	inc sp                                           ; $4d06: $33
	ld [hl], e                                       ; $4d07: $73
	ld h, e                                          ; $4d08: $63
	ld h, a                                          ; $4d09: $67
	ret nz                                           ; $4d0a: $c0

	and b                                            ; $4d0b: $a0
	ld h, b                                          ; $4d0c: $60
	ld d, b                                          ; $4d0d: $50
	ld [hl], b                                       ; $4d0e: $70
	ld hl, sp-$28                                    ; $4d0f: $f8 $d8
	sbc h                                            ; $4d11: $9c
	ld a, e                                          ; $4d12: $7b
	ld l, e                                          ; $4d13: $6b
	sbc $e0                                          ; $4d14: $de $e0
	sub c                                            ; $4d16: $91
	ldh a, [$f8]                                     ; $4d17: $f0 $f8
	inc [hl]                                         ; $4d19: $34
	inc sp                                           ; $4d1a: $33
	jr c, @+$40                                      ; $4d1b: $38 $3e

jr_025_4d1d:
	dec a                                            ; $4d1d: $3d
	jr @+$12                                         ; $4d1e: $18 $10

	db $10                                           ; $4d20: $10
	jr c, @+$39                                      ; $4d21: $38 $37

	jr nc, jr_025_4d64                               ; $4d23: $30 $3f

	sbc $1f                                          ; $4d25: $de $1f
	adc e                                            ; $4d27: $8b
	rrca                                             ; $4d28: $0f
	nop                                              ; $4d29: $00
	nop                                              ; $4d2a: $00
	ld h, b                                          ; $4d2b: $60
	ld a, b                                          ; $4d2c: $78
	db $fc                                           ; $4d2d: $fc
	ld [$2110], sp                                   ; $4d2e: $08 $10 $21
	nop                                              ; $4d31: $00
	add b                                            ; $4d32: $80
	ld [hl], b                                       ; $4d33: $70
	adc h                                            ; $4d34: $8c

jr_025_4d35:
	db $fc                                           ; $4d35: $fc
	ld hl, sp-$10                                    ; $4d36: $f8 $f0
	ldh [rSB], a                                     ; $4d38: $e0 $01
	rrca                                             ; $4d3a: $0f
	rra                                              ; $4d3b: $1f
	ld a, e                                          ; $4d3c: $7b
	add a                                            ; $4d3d: $87
	rst SubAFromDE                                          ; $4d3e: $df
	rst $38                                          ; $4d3f: $ff
	ld sp, hl                                        ; $4d40: $f9
	ld a, a                                          ; $4d41: $7f
	db $ec                                           ; $4d42: $ec
	add b                                            ; $4d43: $80
	db $fd                                           ; $4d44: $fd
	pop af                                           ; $4d45: $f1
	ld hl, sp-$20                                    ; $4d46: $f8 $e0
	ldh a, [c]                                       ; $4d48: $f2
	jp nz, $0c04                                     ; $4d49: $c2 $04 $0c

	ld [$1118], sp                                   ; $4d4c: $08 $18 $11
	ld sp, $6121                                     ; $4d4f: $31 $21 $61
	sub l                                            ; $4d52: $95
	ld de, $2228                                     ; $4d53: $11 $28 $22
	ld d, d                                          ; $4d56: $52
	ld b, h                                          ; $4d57: $44
	inc h                                            ; $4d58: $24
	ld [$f878], sp                                   ; $4d59: $08 $78 $f8
	pop af                                           ; $4d5c: $f1
	pop af                                           ; $4d5d: $f1
	pop hl                                           ; $4d5e: $e1
	db $e3                                           ; $4d5f: $e3
	jp $13c7                                         ; $4d60: $c3 $c7 $13


	sbc b                                            ; $4d63: $98

jr_025_4d64:
	ld [de], a                                       ; $4d64: $12
	ld h, $26                                        ; $4d65: $26 $26
	ld b, [hl]                                       ; $4d67: $46
	ld b, h                                          ; $4d68: $44
	ld c, h                                          ; $4d69: $4c
	adc h                                            ; $4d6a: $8c
	reti                                             ; $4d6b: $d9


	rst $38                                          ; $4d6c: $ff
	ld a, a                                          ; $4d6d: $7f
	call c, $3299                                    ; $4d6e: $dc $99 $32
	ld [hl+], a                                      ; $4d71: $22
	ld [hl+], a                                      ; $4d72: $22
	ld h, d                                          ; $4d73: $62
	ld b, l                                          ; $4d74: $45
	ld b, a                                          ; $4d75: $47
	reti                                             ; $4d76: $d9


	rst $38                                          ; $4d77: $ff
	rst SubAFromDE                                          ; $4d78: $df
	ld b, b                                          ; $4d79: $40
	db $fd                                           ; $4d7a: $fd
	rst SubAFromDE                                          ; $4d7b: $df
	ld bc, $f867                                     ; $4d7c: $01 $67 $f8
	add h                                            ; $4d7f: $84
	jp nz, $e1c8                                     ; $4d80: $c2 $c8 $e1

	ret nz                                           ; $4d83: $c0

	sub h                                            ; $4d84: $94
	sub [hl]                                         ; $4d85: $96
	call nz, $e485                                   ; $4d86: $c4 $85 $e4
	db $e4                                           ; $4d89: $e4
	call z, $c9cd                                    ; $4d8a: $cc $cd $c9
	ret                                              ; $4d8d: $c9


	sbc e                                            ; $4d8e: $9b
	sbc e                                            ; $4d8f: $9b
	pop bc                                           ; $4d90: $c1
	ld c, c                                          ; $4d91: $49
	ld l, c                                          ; $4d92: $69
	ld b, e                                          ; $4d93: $43
	db $d3                                           ; $4d94: $d3
	sub e                                            ; $4d95: $93
	add e                                            ; $4d96: $83
	rst SubAFromBC                                          ; $4d97: $e7
	ld h, a                                          ; $4d98: $67
	rst SubAFromBC                                          ; $4d99: $e7
	rst JumpTable                                          ; $4d9a: $c7
	sbc $cf                                          ; $4d9b: $de $cf
	sub c                                            ; $4d9d: $91
	rst SubAFromDE                                          ; $4d9e: $df
	sbc a                                            ; $4d9f: $9f
	sbc h                                            ; $4da0: $9c
	ld e, $1e                                        ; $4da1: $1e $1e
	rra                                              ; $4da3: $1f
	rla                                              ; $4da4: $17
	inc de                                           ; $4da5: $13
	dec de                                           ; $4da6: $1b
	add hl, de                                       ; $4da7: $19
	ld hl, sp-$04                                    ; $4da8: $f8 $fc
	cp $fe                                           ; $4daa: $fe $fe
	db $dd                                           ; $4dac: $dd
	rst $38                                          ; $4dad: $ff
	sub l                                            ; $4dae: $95
	nop                                              ; $4daf: $00
	dec bc                                           ; $4db0: $0b
	inc bc                                           ; $4db1: $03
	inc c                                            ; $4db2: $0c
	adc b                                            ; $4db3: $88
	ret nz                                           ; $4db4: $c0

	pop hl                                           ; $4db5: $e1
	cp $0f                                           ; $4db6: $fe $0f
	rlca                                             ; $4db8: $07
	halt                                             ; $4db9: $76
	and l                                            ; $4dba: $a5
	ld a, a                                          ; $4dbb: $7f
	rst FarCall                                          ; $4dbc: $f7
	sbc l                                            ; $4dbd: $9d
	jp Jump_025_7b07                                 ; $4dbe: $c3 $07 $7b


	ld e, a                                          ; $4dc1: $5f
	sbc h                                            ; $4dc2: $9c
	ld a, [hl]                                       ; $4dc3: $7e
	rst AddAOntoHL                                          ; $4dc4: $ef
	rst $38                                          ; $4dc5: $ff
	ld [hl], d                                       ; $4dc6: $72
	ld a, a                                          ; $4dc7: $7f
	sbc l                                            ; $4dc8: $9d
	ld bc, $dc1f                                     ; $4dc9: $01 $1f $dc
	rst $38                                          ; $4dcc: $ff
	sbc e                                            ; $4dcd: $9b
	rst SubAFromDE                                          ; $4dce: $df
	cp $fd                                           ; $4dcf: $fe $fd
	db $fc                                           ; $4dd1: $fc
	cp $80                                           ; $4dd2: $fe $80
	inc bc                                           ; $4dd4: $03
	ccf                                              ; $4dd5: $3f
	rst $38                                          ; $4dd6: $ff
	cp $fe                                           ; $4dd7: $fe $fe
	db $e4                                           ; $4dd9: $e4
	add h                                            ; $4dda: $84
	ret z                                            ; $4ddb: $c8

	add hl, de                                       ; $4ddc: $19
	or c                                             ; $4ddd: $b1
	ld h, $6a                                        ; $4dde: $26 $6a
	ld c, b                                          ; $4de0: $48
	ld b, e                                          ; $4de1: $43
	jp $8687                                         ; $4de2: $c3 $87 $86


	ld c, $1c                                        ; $4de5: $0e $1c
	inc e                                            ; $4de7: $1c
	inc a                                            ; $4de8: $3c
	ld c, c                                          ; $4de9: $49
	sub c                                            ; $4dea: $91
	sub e                                            ; $4deb: $93
	inc hl                                           ; $4dec: $23
	ld b, a                                          ; $4ded: $47
	ld b, a                                          ; $4dee: $47
	adc $8a                                          ; $4def: $ce $8a
	add a                                            ; $4df1: $87
	rrca                                             ; $4df2: $0f
	ld [hl], a                                       ; $4df3: $77
	daa                                              ; $4df4: $27
	ld a, a                                          ; $4df5: $7f
	ld h, $df                                        ; $4df6: $26 $df
	adc b                                            ; $4df8: $88
	sbc c                                            ; $4df9: $99
	sbc b                                            ; $4dfa: $98
	add hl, de                                       ; $4dfb: $19
	ld de, $3211                                     ; $4dfc: $11 $11 $32
	ld [hl+], a                                      ; $4dff: $22
	reti                                             ; $4e00: $d9


	rst $38                                          ; $4e01: $ff
	rst SubAFromDE                                          ; $4e02: $df
	ld bc, $fe7d                                     ; $4e03: $01 $7d $fe
	ld a, [hl]                                       ; $4e06: $7e
	nop                                              ; $4e07: $00
	sbc l                                            ; $4e08: $9d
	ld de, $7b21                                     ; $4e09: $11 $21 $7b
	ld hl, sp+$7b                                    ; $4e0c: $f8 $7b
	and [hl]                                         ; $4e0e: $a6
	ld a, a                                          ; $4e0f: $7f
	db $dd                                           ; $4e10: $dd
	rst SubAFromDE                                          ; $4e11: $df
	dec h                                            ; $4e12: $25
	sbc h                                            ; $4e13: $9c
	daa                                              ; $4e14: $27
	dec hl                                           ; $4e15: $2b
	dec sp                                           ; $4e16: $3b
	sbc $53                                          ; $4e17: $de $53
	rst SubAFromDE                                          ; $4e19: $df
	sbc e                                            ; $4e1a: $9b
	adc h                                            ; $4e1b: $8c
	sbc a                                            ; $4e1c: $9f
	sbc c                                            ; $4e1d: $99
	sub c                                            ; $4e1e: $91
	or c                                             ; $4e1f: $b1
	or c                                             ; $4e20: $b1
	or b                                             ; $4e21: $b0
	rst SubAFromBC                                          ; $4e22: $e7
	ld h, a                                          ; $4e23: $67
	ld b, a                                          ; $4e24: $47
	ld c, [hl]                                       ; $4e25: $4e
	ld c, [hl]                                       ; $4e26: $4e
	rrca                                             ; $4e27: $0f
	rra                                              ; $4e28: $1f
	rst SubAFromDE                                          ; $4e29: $df
	sbc a                                            ; $4e2a: $9f
	sbc a                                            ; $4e2b: $9f
	cp a                                             ; $4e2c: $bf
	cp [hl]                                          ; $4e2d: $be
	cp [hl]                                          ; $4e2e: $be
	ld [hl], a                                       ; $4e2f: $77
	ld l, [hl]                                       ; $4e30: $6e
	sub [hl]                                         ; $4e31: $96
	ld hl, sp+$60                                    ; $4e32: $f8 $60
	jr nz, jr_025_4e96                               ; $4e34: $20 $60

	ret nc                                           ; $4e36: $d0

	sub b                                            ; $4e37: $90
	jr nc, @+$01                                     ; $4e38: $30 $ff

	rst $38                                          ; $4e3a: $ff
	ld a, e                                          ; $4e3b: $7b
	or e                                             ; $4e3c: $b3
	sbc e                                            ; $4e3d: $9b
	sbc a                                            ; $4e3e: $9f
	rra                                              ; $4e3f: $1f
	rra                                              ; $4e40: $1f
	rst $38                                          ; $4e41: $ff
	ld a, d                                          ; $4e42: $7a
	cp h                                             ; $4e43: $bc
	sbc e                                            ; $4e44: $9b
	rrca                                             ; $4e45: $0f
	dec bc                                           ; $4e46: $0b
	jr jr_025_4ec1                                   ; $4e47: $18 $78

	ld a, e                                          ; $4e49: $7b
	rst SubAFromBC                                          ; $4e4a: $e7
	call c, $dff8                                    ; $4e4b: $dc $f8 $df
	rst $38                                          ; $4e4e: $ff
	sbc h                                            ; $4e4f: $9c
	ld a, a                                          ; $4e50: $7f
	rst SubAFromDE                                          ; $4e51: $df
	db $ec                                           ; $4e52: $ec
	ld a, e                                          ; $4e53: $7b
	ei                                               ; $4e54: $fb
	sbc $ff                                          ; $4e55: $de $ff
	ld a, [hl]                                       ; $4e57: $7e
	and b                                            ; $4e58: $a0
	cp $95                                           ; $4e59: $fe $95
	ld a, [$d5fc]                                    ; $4e5b: $fa $fc $d5
	ld a, [de]                                       ; $4e5e: $1a
	ld h, $5e                                        ; $4e5f: $26 $5e
	db $fc                                           ; $4e61: $fc
	cp h                                             ; $4e62: $bc
	db $fc                                           ; $4e63: $fc
	ld hl, sp+$76                                    ; $4e64: $f8 $76
	rst GetHLinHL                                          ; $4e66: $cf
	ld a, a                                          ; $4e67: $7f
	ld l, d                                          ; $4e68: $6a
	add a                                            ; $4e69: $87
	sub l                                            ; $4e6a: $95
	sub a                                            ; $4e6b: $97
	ld l, $3c                                        ; $4e6c: $2e $3c
	ld e, b                                          ; $4e6e: $58
	ld [hl], b                                       ; $4e6f: $70
	and c                                            ; $4e70: $a1
	add c                                            ; $4e71: $81
	ld a, b                                          ; $4e72: $78
	ld a, b                                          ; $4e73: $78
	pop af                                           ; $4e74: $f1
	db $e3                                           ; $4e75: $e3
	rst SubAFromBC                                          ; $4e76: $e7
	rst GetHLinHL                                          ; $4e77: $cf
	rst SubAFromDE                                          ; $4e78: $df
	rst $38                                          ; $4e79: $ff
	ld [de], a                                       ; $4e7a: $12
	inc h                                            ; $4e7b: $24
	inc h                                            ; $4e7c: $24
	ld b, h                                          ; $4e7d: $44
	ld c, b                                          ; $4e7e: $48
	jp hl                                            ; $4e7f: $e9


	ld sp, hl                                        ; $4e80: $f9
	ld a, [$ffd9]                                    ; $4e81: $fa $d9 $ff
	db $fc                                           ; $4e84: $fc
	sbc $01                                          ; $4e85: $de $01
	ld h, a                                          ; $4e87: $67
	ld hl, sp-$69                                    ; $4e88: $f8 $97
	ld hl, $4141                                     ; $4e8a: $21 $41 $41
	add c                                            ; $4e8d: $81
	pop bc                                           ; $4e8e: $c1
	pop hl                                           ; $4e8f: $e1
	and c                                            ; $4e90: $a1
	sub c                                            ; $4e91: $91
	ld [hl], c                                       ; $4e92: $71
	di                                               ; $4e93: $f3
	add b                                            ; $4e94: $80
	cp a                                             ; $4e95: $bf

jr_025_4e96:
	rra                                              ; $4e96: $1f
	rra                                              ; $4e97: $1f
	ld e, e                                          ; $4e98: $5b
	ld c, e                                          ; $4e99: $4b
	ld c, [hl]                                       ; $4e9a: $4e
	ld c, h                                          ; $4e9b: $4c
	ld c, b                                          ; $4e9c: $48
	ld e, c                                          ; $4e9d: $59
	dec de                                           ; $4e9e: $1b
	ccf                                              ; $4e9f: $3f
	or b                                             ; $4ea0: $b0
	cp c                                             ; $4ea1: $b9
	cp d                                             ; $4ea2: $ba
	cp h                                             ; $4ea3: $bc
	cp b                                             ; $4ea4: $b8
	or b                                             ; $4ea5: $b0
	ldh a, [$ed]                                     ; $4ea6: $f0 $ed
	cp $3c                                           ; $4ea8: $fe $3c
	ld a, h                                          ; $4eaa: $7c
	ld a, c                                          ; $4eab: $79
	di                                               ; $4eac: $f3
	rst SubAFromDE                                          ; $4ead: $df
	cp $fe                                           ; $4eae: $fe $fe
	cp [hl]                                          ; $4eb0: $be
	inc a                                            ; $4eb1: $3c
	jr c, @+$32                                      ; $4eb2: $38 $30

	sub e                                            ; $4eb4: $93
	jr nz, @+$63                                     ; $4eb5: $20 $61

	and e                                            ; $4eb7: $a3
	daa                                              ; $4eb8: $27
	ld [hl], b                                       ; $4eb9: $70
	ld [hl], c                                       ; $4eba: $71
	pop af                                           ; $4ebb: $f1
	di                                               ; $4ebc: $f3
	or $bc                                           ; $4ebd: $f6 $bc
	cp c                                             ; $4ebf: $b9
	cp a                                             ; $4ec0: $bf

jr_025_4ec1:
	halt                                             ; $4ec1: $76
	ld a, [hl-]                                      ; $4ec2: $3a
	sbc [hl]                                         ; $4ec3: $9e
	sbc h                                            ; $4ec4: $9c
	ld a, d                                          ; $4ec5: $7a
	jr @-$1f                                         ; $4ec6: $18 $df

	ld hl, sp-$64                                    ; $4ec8: $f8 $9c
	adc b                                            ; $4eca: $88
	jr c, jr_025_4f45                                ; $4ecb: $38 $78

	ld a, c                                          ; $4ecd: $79
	push hl                                          ; $4ece: $e5
	ld a, e                                          ; $4ecf: $7b
	ld hl, sp+$7e                                    ; $4ed0: $f8 $7e
	ld a, [de]                                       ; $4ed2: $1a
	add e                                            ; $4ed3: $83
	jr nz, jr_025_4f16                               ; $4ed4: $20 $40

	add b                                            ; $4ed6: $80
	rra                                              ; $4ed7: $1f
	rlca                                             ; $4ed8: $07
	ld [bc], a                                       ; $4ed9: $02
	rlca                                             ; $4eda: $07
	dec c                                            ; $4edb: $0d
	dec bc                                           ; $4edc: $0b
	ld a, [de]                                       ; $4edd: $1a
	inc d                                            ; $4ede: $14
	nop                                              ; $4edf: $00
	ld bc, $0203                                     ; $4ee0: $01 $03 $02
	ld b, $0c                                        ; $4ee3: $06 $0c
	dec c                                            ; $4ee5: $0d
	dec de                                           ; $4ee6: $1b
	ld sp, hl                                        ; $4ee7: $f9
	ldh a, [c]                                       ; $4ee8: $f2
	ldh [c], a                                       ; $4ee9: $e2
	call nz, $088c                                   ; $4eea: $c4 $8c $08
	jr jr_025_4eff                                   ; $4eed: $18 $10

	add a                                            ; $4eef: $87
	ld a, d                                          ; $4ef0: $7a
	pop hl                                           ; $4ef1: $e1
	ld [hl], a                                       ; $4ef2: $77
	ld c, e                                          ; $4ef3: $4b
	ld a, c                                          ; $4ef4: $79
	ld sp, $fe6d                                     ; $4ef5: $31 $6d $fe
	sbc [hl]                                         ; $4ef8: $9e
	cp $75                                           ; $4ef9: $fe $75
	ldh a, [c]                                       ; $4efb: $f2
	sbc h                                            ; $4efc: $9c
	ldh [$c0], a                                     ; $4efd: $e0 $c0

jr_025_4eff:
	cp a                                             ; $4eff: $bf

jr_025_4f00:
	jp c, $9eff                                      ; $4f00: $da $ff $9e

	rst JumpTable                                          ; $4f03: $c7
	ld l, a                                          ; $4f04: $6f
	ld l, [hl]                                       ; $4f05: $6e
	sbc h                                            ; $4f06: $9c
	nop                                              ; $4f07: $00
	ld [bc], a                                       ; $4f08: $02
	ld b, $79                                        ; $4f09: $06 $79
	or $9c                                           ; $4f0b: $f6 $9c
	db $10                                           ; $4f0d: $10
	jr nc, @+$22                                     ; $4f0e: $30 $20

	ld [hl], a                                       ; $4f10: $77
	ret c                                            ; $4f11: $d8

	ld [hl], a                                       ; $4f12: $77
	rst SubAFromHL                                          ; $4f13: $d7
	sbc c                                            ; $4f14: $99
	reti                                             ; $4f15: $d9


jr_025_4f16:
	call Call_025_63e7                               ; $4f16: $cd $e7 $63
	ld [hl], c                                       ; $4f19: $71
	add hl, sp                                       ; $4f1a: $39
	ld a, d                                          ; $4f1b: $7a
	db $fc                                           ; $4f1c: $fc
	sub e                                            ; $4f1d: $93
	add a                                            ; $4f1e: $87
	add e                                            ; $4f1f: $83
	pop bc                                           ; $4f20: $c1
	pop bc                                           ; $4f21: $c1
	pop hl                                           ; $4f22: $e1
	ldh a, [c]                                       ; $4f23: $f2
	db $fc                                           ; $4f24: $fc
	ccf                                              ; $4f25: $3f
	ld [hl], e                                       ; $4f26: $73
	rst SubAFromBC                                          ; $4f27: $e7
	rst GetHLinHL                                          ; $4f28: $cf
	sbc a                                            ; $4f29: $9f
	ld a, e                                          ; $4f2a: $7b
	bit 7, a                                         ; $4f2b: $cb $7f
	xor c                                            ; $4f2d: $a9
	sub c                                            ; $4f2e: $91
	jp nz, $8583                                     ; $4f2f: $c2 $83 $85

	add hl, bc                                       ; $4f32: $09
	add hl, bc                                       ; $4f33: $09
	ld de, $fafe                                     ; $4f34: $11 $fe $fa
	db $eb                                           ; $4f37: $eb
	ld sp, hl                                        ; $4f38: $f9
	ld sp, hl                                        ; $4f39: $f9
	db $fd                                           ; $4f3a: $fd
	ld a, [$75fa]                                    ; $4f3b: $fa $fa $75
	sub h                                            ; $4f3e: $94
	ld a, a                                          ; $4f3f: $7f
	call c, $8786                                    ; $4f40: $dc $86 $87
	ld b, a                                          ; $4f43: $47
	sbc a                                            ; $4f44: $9f

jr_025_4f45:
	sbc e                                            ; $4f45: $9b
	rst SubAFromDE                                          ; $4f46: $df
	rst GetHLinHL                                          ; $4f47: $cf
	rst GetHLinHL                                          ; $4f48: $cf
	ld c, a                                          ; $4f49: $4f
	rst GetHLinHL                                          ; $4f4a: $cf
	rst GetHLinHL                                          ; $4f4b: $cf
	add hl, de                                       ; $4f4c: $19
	ld c, $0e                                        ; $4f4d: $0e $0e
	inc c                                            ; $4f4f: $0c
	inc b                                            ; $4f50: $04
	add h                                            ; $4f51: $84
	add d                                            ; $4f52: $82
	add d                                            ; $4f53: $82
	ldh a, [$f8]                                     ; $4f54: $f0 $f8
	inc a                                            ; $4f56: $3c
	rra                                              ; $4f57: $1f
	rrca                                             ; $4f58: $0f
	adc a                                            ; $4f59: $8f
	xor $76                                          ; $4f5a: $ee $76
	ld b, b                                          ; $4f5c: $40
	ld a, e                                          ; $4f5d: $7b
	db $10                                           ; $4f5e: $10
	ld a, a                                          ; $4f5f: $7f
	xor d                                            ; $4f60: $aa
	rst SubAFromDE                                          ; $4f61: $df
	jr nz, jr_025_4f00                               ; $4f62: $20 $9c

	ld b, b                                          ; $4f64: $40
	add c                                            ; $4f65: $81
	add e                                            ; $4f66: $83
	ld h, e                                          ; $4f67: $63
	ld a, l                                          ; $4f68: $7d
	sub l                                            ; $4f69: $95
	ld sp, hl                                        ; $4f6a: $f9
	pop af                                           ; $4f6b: $f1
	jr nc, jr_025_4fcf                               ; $4f6c: $30 $61

	pop hl                                           ; $4f6e: $e1
	jp $8f87                                         ; $4f6f: $c3 $87 $8f


	rra                                              ; $4f72: $1f
	ccf                                              ; $4f73: $3f
	sbc $ff                                          ; $4f74: $de $ff
	ld [hl], e                                       ; $4f76: $73
	ld l, [hl]                                       ; $4f77: $6e
	reti                                             ; $4f78: $d9


	rst $38                                          ; $4f79: $ff
	ld h, h                                          ; $4f7a: $64
	sbc [hl]                                         ; $4f7b: $9e
	ld l, e                                          ; $4f7c: $6b
	add sp, -$62                                     ; $4f7d: $e8 $9e
	pop hl                                           ; $4f7f: $e1
	ld sp, hl                                        ; $4f80: $f9
	sub a                                            ; $4f81: $97
	ret nz                                           ; $4f82: $c0

	add c                                            ; $4f83: $81
	rrca                                             ; $4f84: $0f
	ld e, $3c                                        ; $4f85: $1e $3c
	ld a, c                                          ; $4f87: $79
	ldh a, [c]                                       ; $4f88: $f2
	push hl                                          ; $4f89: $e5
	ld l, a                                          ; $4f8a: $6f
	or d                                             ; $4f8b: $b2
	ld a, a                                          ; $4f8c: $7f
	db $f4                                           ; $4f8d: $f4
	inc e                                            ; $4f8e: $1c
	nop                                              ; $4f8f: $00
	sbc [hl]                                         ; $4f90: $9e
	inc b                                            ; $4f91: $04
	call c, Call_025_5b44                            ; $4f92: $dc $44 $5b
	ld a, [$408c]                                    ; $4f95: $fa $8c $40
	inc bc                                           ; $4f98: $03
	ld b, h                                          ; $4f99: $44
	inc sp                                           ; $4f9a: $33
	ld b, h                                          ; $4f9b: $44
	ld b, h                                          ; $4f9c: $44
	nop                                              ; $4f9d: $00
	inc bc                                           ; $4f9e: $03
	ld b, h                                          ; $4f9f: $44
	inc [hl]                                         ; $4fa0: $34
	ld b, h                                          ; $4fa1: $44
	ld [hl], c                                       ; $4fa2: $71
	nop                                              ; $4fa3: $00
	inc de                                           ; $4fa4: $13
	ld b, h                                          ; $4fa5: $44
	ld b, h                                          ; $4fa6: $44
	ld [hl], a                                       ; $4fa7: $77
	ld de, $0810                                     ; $4fa8: $11 $10 $08
	rrca                                             ; $4fab: $0f
	jp $fef8                                         ; $4fac: $c3 $f8 $fe


	ld a, a                                          ; $4faf: $7f
	sbc a                                            ; $4fb0: $9f
	rst AddAOntoHL                                          ; $4fb1: $ef
	rst $38                                          ; $4fb2: $ff
	rst $38                                          ; $4fb3: $ff
	rst $38                                          ; $4fb4: $ff
	ret nz                                           ; $4fb5: $c0

	cp a                                             ; $4fb6: $bf
	add e                                            ; $4fb7: $83
	jp c, $9eff                                      ; $4fb8: $da $ff $9e

	rst AddAOntoHL                                          ; $4fbb: $ef
	db $d3                                           ; $4fbc: $d3
	rst $38                                          ; $4fbd: $ff
	sbc l                                            ; $4fbe: $9d
	cp $fd                                           ; $4fbf: $fe $fd
	ld h, a                                          ; $4fc1: $67
	rst FarCall                                          ; $4fc2: $f7
	ld a, a                                          ; $4fc3: $7f
	cp $99                                           ; $4fc4: $fe $99
	ldh a, [$d8]                                     ; $4fc6: $f0 $d8
	and d                                            ; $4fc8: $a2
	ld c, b                                          ; $4fc9: $48
	or c                                             ; $4fca: $b1
	ldh [c], a                                       ; $4fcb: $e2
	sbc $ff                                          ; $4fcc: $de $ff
	add b                                            ; $4fce: $80

jr_025_4fcf:
	ldh [$c1], a                                     ; $4fcf: $e0 $c1
	add a                                            ; $4fd1: $87
	ld c, $1c                                        ; $4fd2: $0e $1c
	push af                                          ; $4fd4: $f5
	dec bc                                           ; $4fd5: $0b
	ld a, [hl]                                       ; $4fd6: $7e
	dec a                                            ; $4fd7: $3d
	rlca                                             ; $4fd8: $07
	ld a, b                                          ; $4fd9: $78
	cp [hl]                                          ; $4fda: $be
	ld b, b                                          ; $4fdb: $40
	ei                                               ; $4fdc: $fb
	db $fc                                           ; $4fdd: $fc
	rst $38                                          ; $4fde: $ff
	inc bc                                           ; $4fdf: $03
	ld hl, sp-$79                                    ; $4fe0: $f8 $87
	ld bc, $fe3f                                     ; $4fe2: $01 $3f $fe
	halt                                             ; $4fe5: $76
	and a                                            ; $4fe6: $a7
	xor e                                            ; $4fe7: $ab
	halt                                             ; $4fe8: $76
	jp hl                                            ; $4fe9: $e9


	ld [hl], b                                       ; $4fea: $70
	ld [hl], $ff                                     ; $4feb: $36 $ff
	ld sp, hl                                        ; $4fed: $f9
	add c                                            ; $4fee: $81
	ld a, a                                          ; $4fef: $7f
	db $fc                                           ; $4ff0: $fc
	ld sp, hl                                        ; $4ff1: $f9
	halt                                             ; $4ff2: $76
	xor a                                            ; $4ff3: $af
	rst $38                                          ; $4ff4: $ff
	ld a, a                                          ; $4ff5: $7f
	rst $38                                          ; $4ff6: $ff
	ld a, h                                          ; $4ff7: $7c
	rst $38                                          ; $4ff8: $ff
	ld b, $f9                                        ; $4ff9: $06 $f9
	inc a                                            ; $4ffb: $3c
	sbc $ff                                          ; $4ffc: $de $ff
	rst $38                                          ; $4ffe: $ff
	add e                                            ; $4fff: $83
	nop                                              ; $5000: $00
	ld hl, sp+$06                                    ; $5001: $f8 $06
	jp $ff31                                         ; $5003: $c3 $31 $ff


	rst $38                                          ; $5006: $ff
	ld a, a                                          ; $5007: $7f
	rra                                              ; $5008: $1f
	rst GetHLinHL                                          ; $5009: $cf
	daa                                              ; $500a: $27
	sub e                                            ; $500b: $93
	ld c, c                                          ; $500c: $49
	db $dd                                           ; $500d: $dd
	rst $38                                          ; $500e: $ff
	adc [hl]                                         ; $500f: $8e
	ccf                                              ; $5010: $3f
	rra                                              ; $5011: $1f
	rrca                                             ; $5012: $0f
	add a                                            ; $5013: $87
	rst $38                                          ; $5014: $ff
	ei                                               ; $5015: $fb
	rst $38                                          ; $5016: $ff
	rst FarCall                                          ; $5017: $f7
	rst $38                                          ; $5018: $ff
	db $fd                                           ; $5019: $fd
	db $fd                                           ; $501a: $fd
	cp $fc                                           ; $501b: $fe $fc
	db $fc                                           ; $501d: $fc
	ld hl, sp-$08                                    ; $501e: $f8 $f8
	pop af                                           ; $5020: $f1
	sbc $f3                                          ; $5021: $de $f3
	add b                                            ; $5023: $80
	push bc                                          ; $5024: $c5
	adc d                                            ; $5025: $8a
	add hl, bc                                       ; $5026: $09
	ld h, l                                          ; $5027: $65
	ld [hl], d                                       ; $5028: $72
	db $eb                                           ; $5029: $eb
	xor d                                            ; $502a: $aa
	call nz, Call_025_7138                           ; $502b: $c4 $38 $71
	di                                               ; $502e: $f3
	or e                                             ; $502f: $b3
	and a                                            ; $5030: $a7
	ld h, $66                                        ; $5031: $26 $66
	ld l, [hl]                                       ; $5033: $6e
	ld a, a                                          ; $5034: $7f
	cp b                                             ; $5035: $b8
	ld c, b                                          ; $5036: $48
	sub a                                            ; $5037: $97
	ld e, b                                          ; $5038: $58
	ld [hl+], a                                      ; $5039: $22
	scf                                              ; $503a: $37
	xor h                                            ; $503b: $ac
	ldh [$c7], a                                     ; $503c: $e0 $c7
	sbc a                                            ; $503e: $9f
	jr c, jr_025_5071                                ; $503f: $38 $30

	ld [hl], c                                       ; $5041: $71
	ld h, e                                          ; $5042: $63
	add b                                            ; $5043: $80
	ld h, l                                          ; $5044: $65
	xor a                                            ; $5045: $af
	ld [hl], a                                       ; $5046: $77
	daa                                              ; $5047: $27
	ld [hl], a                                       ; $5048: $77
	and d                                            ; $5049: $a2
	dec l                                            ; $504a: $2d
	or d                                             ; $504b: $b2
	ld l, c                                          ; $504c: $69
	ld a, b                                          ; $504d: $78
	cp b                                             ; $504e: $b8
	rst $38                                          ; $504f: $ff
	ld hl, sp+$7c                                    ; $5050: $f8 $7c
	cp $fb                                           ; $5052: $fe $fb
	db $fd                                           ; $5054: $fd
	db $ed                                           ; $5055: $ed

Jump_025_5056:
	sub [hl]                                         ; $5056: $96
	ld c, d                                          ; $5057: $4a
	and a                                            ; $5058: $a7
	pop de                                           ; $5059: $d1
	ld [hl], e                                       ; $505a: $73
	xor e                                            ; $505b: $ab
	jr c, jr_025_5076                                ; $505c: $38 $18

	inc c                                            ; $505e: $0c
	add [hl]                                         ; $505f: $86
	jp nz, $2163                                     ; $5060: $c2 $63 $21

	adc l                                            ; $5063: $8d
	ld sp, $a991                                     ; $5064: $31 $91 $a9
	ld d, h                                          ; $5067: $54
	xor h                                            ; $5068: $ac
	halt                                             ; $5069: $76
	ld a, [de]                                       ; $506a: $1a
	or [hl]                                          ; $506b: $b6
	sub [hl]                                         ; $506c: $96
	ld [de], a                                       ; $506d: $12
	rst JumpTable                                          ; $506e: $c7
	db $e3                                           ; $506f: $e3
	ld [hl], e                                       ; $5070: $73

jr_025_5071:
	add hl, sp                                       ; $5071: $39
	dec a                                            ; $5072: $3d
	dec e                                            ; $5073: $1d
	rra                                              ; $5074: $1f
	sbc a                                            ; $5075: $9f

jr_025_5076:
	db $dd                                           ; $5076: $dd
	rst $38                                          ; $5077: $ff
	db $dd                                           ; $5078: $dd
	ld a, a                                          ; $5079: $7f
	reti                                             ; $507a: $d9


	rst $38                                          ; $507b: $ff
	sbc $2f                                          ; $507c: $de $2f
	sbc d                                            ; $507e: $9a
	dec hl                                           ; $507f: $2b
	dec a                                            ; $5080: $3d
	scf                                              ; $5081: $37
	inc [hl]                                         ; $5082: $34

jr_025_5083:
	inc [hl]                                         ; $5083: $34
	sbc $32                                          ; $5084: $de $32
	sub d                                            ; $5086: $92
	ld [hl], $26                                     ; $5087: $36 $26
	inc l                                            ; $5089: $2c
	cpl                                              ; $508a: $2f
	cpl                                              ; $508b: $2f
	db $f4                                           ; $508c: $f4
	db $f4                                           ; $508d: $f4
	push af                                          ; $508e: $f5
	ld l, c                                          ; $508f: $69
	ld l, [hl]                                       ; $5090: $6e
	ld l, [hl]                                       ; $5091: $6e
	xor h                                            ; $5092: $ac
	or h                                             ; $5093: $b4
	sbc $4c                                          ; $5094: $de $4c
	add a                                            ; $5096: $87
	call c, $d9d9                                    ; $5097: $dc $d9 $d9
	db $db                                           ; $509a: $db
	db $db                                           ; $509b: $db
	ld c, b                                          ; $509c: $48
	ld c, c                                          ; $509d: $49
	ld c, e                                          ; $509e: $4b
	ld c, d                                          ; $509f: $4a
	ld c, b                                          ; $50a0: $48
	sbc h                                            ; $50a1: $9c
	sbc [hl]                                         ; $50a2: $9e
	or d                                             ; $50a3: $b2
	db $eb                                           ; $50a4: $eb
	db $db                                           ; $50a5: $db
	sbc $fe                                          ; $50a6: $de $fe
	cp $f6                                           ; $50a8: $fe $f6
	or $e6                                           ; $50aa: $f6 $e6
	db $dd                                           ; $50ac: $dd
	inc c                                            ; $50ad: $0c
	ld b, $de                                        ; $50ae: $06 $de
	ld [bc], a                                       ; $50b0: $02
	rst SubAFromDE                                          ; $50b1: $df
	rlca                                             ; $50b2: $07
	sbc l                                            ; $50b3: $9d
	adc a                                            ; $50b4: $8f
	rlca                                             ; $50b5: $07
	call c, $9d03                                    ; $50b6: $dc $03 $9d
	ld b, $10                                        ; $50b9: $06 $10
	db $dd                                           ; $50bb: $dd
	sub b                                            ; $50bc: $90
	sbc e                                            ; $50bd: $9b
	ret nc                                           ; $50be: $d0

	ret z                                            ; $50bf: $c8

	add sp, -$27                                     ; $50c0: $e8 $d9
	sbc $dc                                          ; $50c2: $de $dc
	rst SubAFromDE                                          ; $50c4: $df
	cp $95                                           ; $50c5: $fe $95
	ld a, [hl]                                       ; $50c7: $7e
	ccf                                              ; $50c8: $3f
	db $d3                                           ; $50c9: $d3
	ret                                              ; $50ca: $c9


	ret                                              ; $50cb: $c9


	sbc c                                            ; $50cc: $99
	jr jr_025_5083                                   ; $50cd: $18 $b4

	call c, $dedc                                    ; $50cf: $dc $dc $de
	sbc a                                            ; $50d2: $9f
	rst SubAFromDE                                          ; $50d3: $df
	rst GetHLinHL                                          ; $50d4: $cf
	adc h                                            ; $50d5: $8c
	ld c, a                                          ; $50d6: $4f
	ld h, a                                          ; $50d7: $67
	ld h, a                                          ; $50d8: $67
	ld b, b                                          ; $50d9: $40
	ld b, b                                          ; $50da: $40
	pop bc                                           ; $50db: $c1
	jp $c4c6                                         ; $50dc: $c3 $c6 $c4


	call z, $c0c9                                    ; $50df: $cc $c9 $c0
	ret nz                                           ; $50e2: $c0

	pop bc                                           ; $50e3: $c1
	jp $c7c7                                         ; $50e4: $c3 $c7 $c7


	rst GetHLinHL                                          ; $50e7: $cf
	ld c, a                                          ; $50e8: $4f
	db $fd                                           ; $50e9: $fd
	sbc l                                            ; $50ea: $9d
	ld bc, $fb07                                     ; $50eb: $01 $07 $fb
	ld [hl], a                                       ; $50ee: $77
	ld hl, sp-$6d                                    ; $50ef: $f8 $93
	ld d, h                                          ; $50f1: $54
	ld h, l                                          ; $50f2: $65
	and a                                            ; $50f3: $a7
	call $f21b                                       ; $50f4: $cd $1b $f2
	ld [hl+], a                                      ; $50f7: $22
	ld h, e                                          ; $50f8: $63
	ld l, a                                          ; $50f9: $6f
	ld e, a                                          ; $50fa: $5f
	rst SubAFromDE                                          ; $50fb: $df
	cp a                                             ; $50fc: $bf
	ld a, d                                          ; $50fd: $7a
	cp $96                                           ; $50fe: $fe $96
	ld a, a                                          ; $5100: $7f
	sub c                                            ; $5101: $91
	sub e                                            ; $5102: $93
	daa                                              ; $5103: $27
	inc l                                            ; $5104: $2c
	ld [hl], e                                       ; $5105: $73
	db $f4                                           ; $5106: $f4
	pop af                                           ; $5107: $f1
	and h                                            ; $5108: $a4
	halt                                             ; $5109: $76
	and l                                            ; $510a: $a5
	add b                                            ; $510b: $80
	rst SubAFromDE                                          ; $510c: $df
	add sp, -$20                                     ; $510d: $e8 $e0
	db $e3                                           ; $510f: $e3
	ld h, [hl]                                       ; $5110: $66
	jp Jump_025_7e85                                 ; $5111: $c3 $85 $7e


jr_025_5114:
	cp $7c                                           ; $5114: $fe $7c
	jr c, jr_025_5114                                ; $5116: $38 $fc

	jp nz, Jump_025_7981                             ; $5118: $c2 $81 $79

	ld hl, sp-$80                                    ; $511b: $f8 $80
	nop                                              ; $511d: $00
	ldh a, [$f8]                                     ; $511e: $f0 $f8
	ld b, $00                                        ; $5120: $06 $00
	inc b                                            ; $5122: $04
	rrca                                             ; $5123: $0f
	rrca                                             ; $5124: $0f
	rlca                                             ; $5125: $07
	inc bc                                           ; $5126: $03
	rlca                                             ; $5127: $07
	inc b                                            ; $5128: $04
	nop                                              ; $5129: $00
	inc bc                                           ; $512a: $03
	sbc [hl]                                         ; $512b: $9e
	inc bc                                           ; $512c: $03
	ld a, e                                          ; $512d: $7b
	cp [hl]                                          ; $512e: $be
	add c                                            ; $512f: $81
	inc bc                                           ; $5130: $03
	ld [hl], h                                       ; $5131: $74
	ld a, $3f                                        ; $5132: $3e $3f
	jp $fffd                                         ; $5134: $c3 $fd $ff


	sbc a                                            ; $5137: $9f
	di                                               ; $5138: $f3
	rra                                              ; $5139: $1f
	rrca                                             ; $513a: $0f
	rst JumpTable                                          ; $513b: $c7
	rst $38                                          ; $513c: $ff
	ccf                                              ; $513d: $3f
	nop                                              ; $513e: $00
	ldh [$fc], a                                     ; $513f: $e0 $fc
	db $fc                                           ; $5141: $fc
	ld [$365e], a                                    ; $5142: $ea $5e $36
	push de                                          ; $5145: $d5
	jp hl                                            ; $5146: $e9


	rst SubAFromDE                                          ; $5147: $df
	rst JumpTable                                          ; $5148: $c7
	daa                                              ; $5149: $27
	scf                                              ; $514a: $37
	or e                                             ; $514b: $b3
	db $db                                           ; $514c: $db
	ei                                               ; $514d: $fb
	sbc $7f                                          ; $514e: $de $7f
	sbc h                                            ; $5150: $9c
	reti                                             ; $5151: $d9


	db $d3                                           ; $5152: $d3
	di                                               ; $5153: $f3
	sbc $f6                                          ; $5154: $de $f6
	rst SubAFromDE                                          ; $5156: $df
	db $f4                                           ; $5157: $f4
	rst SubAFromDE                                          ; $5158: $df
	ld e, a                                          ; $5159: $5f
	sbc [hl]                                         ; $515a: $9e
	ld a, a                                          ; $515b: $7f
	sbc $3f                                          ; $515c: $de $3f
	ld a, a                                          ; $515e: $7f
	nop                                              ; $515f: $00
	ld a, e                                          ; $5160: $7b
	call z, $019a                                    ; $5161: $cc $9a $01
	ld [bc], a                                       ; $5164: $02
	inc b                                            ; $5165: $04
	add hl, bc                                       ; $5166: $09
	ld [de], a                                       ; $5167: $12
	ld [hl], a                                       ; $5168: $77
	ld hl, sp+$7f                                    ; $5169: $f8 $7f
	ld b, d                                          ; $516b: $42
	sub l                                            ; $516c: $95
	inc c                                            ; $516d: $0c
	add hl, de                                       ; $516e: $19
	ld b, a                                          ; $516f: $47
	add [hl]                                         ; $5170: $86
	rrca                                             ; $5171: $0f
	rrca                                             ; $5172: $0f
	db $10                                           ; $5173: $10
	ld sp, $6361                                     ; $5174: $31 $61 $63
	ld a, d                                          ; $5177: $7a
	rst AddAOntoHL                                          ; $5178: $ef
	add [hl]                                         ; $5179: $86
	cp b                                             ; $517a: $b8
	ld [hl], b                                       ; $517b: $70
	ldh [c], a                                       ; $517c: $e2
	db $e3                                           ; $517d: $e3
	pop bc                                           ; $517e: $c1
	scf                                              ; $517f: $37
	ld a, $f8                                        ; $5180: $3e $f8
	ld sp, hl                                        ; $5182: $f9
	ld hl, sp+$78                                    ; $5183: $f8 $78
	ld a, b                                          ; $5185: $78
	ld a, h                                          ; $5186: $7c
	rst AddAOntoHL                                          ; $5187: $ef
	db $e4                                           ; $5188: $e4

jr_025_5189:
	ldh a, [$b0]                                     ; $5189: $f0 $b0
	ld d, b                                          ; $518b: $50
	jr z, jr_025_51b6                                ; $518c: $28 $28

	ld c, b                                          ; $518e: $48
	jr c, jr_025_5189                                ; $518f: $38 $f8

	ld d, b                                          ; $5191: $50
	cp b                                             ; $5192: $b8
	ld a, e                                          ; $5193: $7b
	call nc, $009a                                   ; $5194: $d4 $9a $00
	jr c, jr_025_5189                                ; $5197: $38 $f0

	ldh a, [$e0]                                     ; $5199: $f0 $e0
	ld [hl], e                                       ; $519b: $73
	ld c, h                                          ; $519c: $4c
	cp $9e                                           ; $519d: $fe $9e
	ld b, b                                          ; $519f: $40
	sbc $c0                                          ; $51a0: $de $c0
	sbc [hl]                                         ; $51a2: $9e
	ld [bc], a                                       ; $51a3: $02
	db $fc                                           ; $51a4: $fc
	sub c                                            ; $51a5: $91
	ld b, b                                          ; $51a6: $40
	ld h, b                                          ; $51a7: $60
	ld e, $77                                        ; $51a8: $1e $77
	cpl                                              ; $51aa: $2f
	reti                                             ; $51ab: $d9


	ld bc, $0702                                     ; $51ac: $01 $02 $07
	rrca                                             ; $51af: $0f
	sbc a                                            ; $51b0: $9f
	ld a, h                                          ; $51b1: $7c
	ld a, b                                          ; $51b2: $78
	ld [hl], b                                       ; $51b3: $70
	ld a, e                                          ; $51b4: $7b
	xor l                                            ; $51b5: $ad

jr_025_51b6:
	sub c                                            ; $51b6: $91
	ld bc, $cec4                                     ; $51b7: $01 $c4 $ce
	jp z, $adca                                      ; $51ba: $ca $ca $ad

	and a                                            ; $51bd: $a7
	and a                                            ; $51be: $a7
	and [hl]                                         ; $51bf: $a6
	ld a, a                                          ; $51c0: $7f
	ld [hl], a                                       ; $51c1: $77
	rst FarCall                                          ; $51c2: $f7
	rst FarCall                                          ; $51c3: $f7
	di                                               ; $51c4: $f3
	sbc $f9                                          ; $51c5: $de $f9
	sbc $fc                                          ; $51c7: $de $fc
	rst SubAFromDE                                          ; $51c9: $df
	db $ec                                           ; $51ca: $ec
	rst SubAFromDE                                          ; $51cb: $df
	or $96                                           ; $51cc: $f6 $96
	di                                               ; $51ce: $f3
	sbc a                                            ; $51cf: $9f
	adc a                                            ; $51d0: $8f
	ld c, a                                          ; $51d1: $4f
	ld b, a                                          ; $51d2: $47
	ld b, a                                          ; $51d3: $47
	inc hl                                           ; $51d4: $23
	inc hl                                           ; $51d5: $23
	and c                                            ; $51d6: $a1
	ld [hl], e                                       ; $51d7: $73
	cp h                                             ; $51d8: $bc
	ld a, e                                          ; $51d9: $7b
	ld a, l                                          ; $51da: $7d
	ld l, e                                          ; $51db: $6b
	ld hl, sp-$80                                    ; $51dc: $f8 $80
	inc bc                                           ; $51de: $03
	inc h                                            ; $51df: $24
	ld e, h                                          ; $51e0: $5c
	cp c                                             ; $51e1: $b9
	di                                               ; $51e2: $f3
	ld h, a                                          ; $51e3: $67
	adc $94                                          ; $51e4: $ce $94
	sub h                                            ; $51e6: $94
	inc sp                                           ; $51e7: $33
	ld h, e                                          ; $51e8: $63
	rst JumpTable                                          ; $51e9: $c7
	adc a                                            ; $51ea: $8f
	sbc [hl]                                         ; $51eb: $9e
	ld a, $76                                        ; $51ec: $3e $76
	ld [hl], h                                       ; $51ee: $74
	add $87                                          ; $51ef: $c6 $87
	add a                                            ; $51f1: $87
	ld b, $0d                                        ; $51f2: $06 $0d
	dec c                                            ; $51f4: $0d
	dec de                                           ; $51f5: $1b
	scf                                              ; $51f6: $37
	add d                                            ; $51f7: $82
	add d                                            ; $51f8: $82
	inc bc                                           ; $51f9: $03
	inc bc                                           ; $51fa: $03
	ld [bc], a                                       ; $51fb: $02
	ld b, $8d                                        ; $51fc: $06 $8d
	inc c                                            ; $51fe: $0c
	jr @-$02                                         ; $51ff: $18 $fc

	cp $fe                                           ; $5201: $fe $fe
	ccf                                              ; $5203: $3f
	rst SubAFromDE                                          ; $5204: $df
	rst $38                                          ; $5205: $ff
	db $fd                                           ; $5206: $fd
	ld sp, hl                                        ; $5207: $f9
	ld d, h                                          ; $5208: $54
	xor h                                            ; $5209: $ac
	or $e2                                           ; $520a: $f6 $e2
	daa                                              ; $520c: $27
	rlca                                             ; $520d: $07
	rrca                                             ; $520e: $0f
	rrca                                             ; $520f: $0f
	ld [hl], e                                       ; $5210: $73
	ld a, [hl]                                       ; $5211: $7e
	sbc h                                            ; $5212: $9c
	add b                                            ; $5213: $80
	ret nz                                           ; $5214: $c0

	ret nz                                           ; $5215: $c0

	ei                                               ; $5216: $fb
	sub [hl]                                         ; $5217: $96
	add b                                            ; $5218: $80
	ldh [rLCDC], a                                   ; $5219: $e0 $40
	nop                                              ; $521b: $00
	or b                                             ; $521c: $b0
	and b                                            ; $521d: $a0
	nop                                              ; $521e: $00
	ldh [rLCDC], a                                   ; $521f: $e0 $40
	ld a, e                                          ; $5221: $7b
	db $eb                                           ; $5222: $eb
	ld a, e                                          ; $5223: $7b
	push af                                          ; $5224: $f5
	cp $7e                                           ; $5225: $fe $7e
	dec e                                            ; $5227: $1d
	adc h                                            ; $5228: $8c
	dec sp                                           ; $5229: $3b
	ld a, $76                                        ; $522a: $3e $76
	xor $da                                          ; $522c: $ee $da
	or d                                             ; $522e: $b2
	inc bc                                           ; $522f: $03
	inc bc                                           ; $5230: $03
	rlca                                             ; $5231: $07
	rlca                                             ; $5232: $07
	rrca                                             ; $5233: $0f
	rra                                              ; $5234: $1f
	ccf                                              ; $5235: $3f
	ld a, a                                          ; $5236: $7f
	rst SubAFromHL                                          ; $5237: $d7
	jp nc, $caca                                     ; $5238: $d2 $ca $ca

	xor e                                            ; $523b: $ab
	sbc $a5                                          ; $523c: $de $a5
	sbc [hl]                                         ; $523e: $9e
	ld hl, sp-$23                                    ; $523f: $f8 $dd
	db $fc                                           ; $5241: $fc
	sbc $fe                                          ; $5242: $de $fe
	add a                                            ; $5244: $87
	cp c                                             ; $5245: $b9
	ld a, c                                          ; $5246: $79
	call c, Call_025_7e3c                            ; $5247: $dc $3c $7e
	ld h, $17                                        ; $524a: $26 $17
	dec sp                                           ; $524c: $3b
	pop de                                           ; $524d: $d1
	ret nc                                           ; $524e: $d0

	ld l, b                                          ; $524f: $68
	ld l, b                                          ; $5250: $68
	inc h                                            ; $5251: $24
	inc [hl]                                         ; $5252: $34
	ld [hl-], a                                      ; $5253: $32
	ld [de], a                                       ; $5254: $12
	ld h, b                                          ; $5255: $60
	ret nz                                           ; $5256: $c0

	ret nz                                           ; $5257: $c0

	ldh [$60], a                                     ; $5258: $e0 $60
	ld [hl], b                                       ; $525a: $70
	jr nc, jr_025_5295                               ; $525b: $30 $38

	ld [hl], l                                       ; $525d: $75
	ld [$e17e], a                                    ; $525e: $ea $7e $e1
	ld a, [hl]                                       ; $5261: $7e
	cp d                                             ; $5262: $ba
	call c, Call_025_7702                            ; $5263: $dc $02 $77
	ld h, a                                          ; $5266: $67
	db $dd                                           ; $5267: $dd
	inc bc                                           ; $5268: $03
	sbc $01                                          ; $5269: $de $01
	sub h                                            ; $526b: $94
	inc h                                            ; $526c: $24
	cpl                                              ; $526d: $2f
	ccf                                              ; $526e: $3f
	ld hl, $7f60                                     ; $526f: $21 $60 $7f
	ld e, a                                          ; $5272: $5f
	rst $38                                          ; $5273: $ff
	db $e4                                           ; $5274: $e4
	rst AddAOntoHL                                          ; $5275: $ef
	ldh a, [$dd]                                     ; $5276: $f0 $dd
	ldh [$9b], a                                     ; $5278: $e0 $9b
	cp $7f                                           ; $527a: $fe $7f
	rst $38                                          ; $527c: $ff
	ccf                                              ; $527d: $3f
	ld a, d                                          ; $527e: $7a
	add c                                            ; $527f: $81
	ld a, a                                          ; $5280: $7f
	pop hl                                           ; $5281: $e1
	sbc h                                            ; $5282: $9c
	nop                                              ; $5283: $00
	ret nz                                           ; $5284: $c0

	pop af                                           ; $5285: $f1
	ld a, e                                          ; $5286: $7b
	or $7d                                           ; $5287: $f6 $7d
	xor d                                            ; $5289: $aa
	sub l                                            ; $528a: $95
	ei                                               ; $528b: $fb
	ld [$0aca], a                                    ; $528c: $ea $ca $0a
	ld a, [bc]                                       ; $528f: $0a
	sub d                                            ; $5290: $92
	sub c                                            ; $5291: $91
	sub c                                            ; $5292: $91
	rra                                              ; $5293: $1f
	ccf                                              ; $5294: $3f

jr_025_5295:
	db $db                                           ; $5295: $db
	rst $38                                          ; $5296: $ff
	sub d                                            ; $5297: $92
	ld [hl], b                                       ; $5298: $70
	inc a                                            ; $5299: $3c
	ccf                                              ; $529a: $3f
	dec a                                            ; $529b: $3d
	ld a, $3f                                        ; $529c: $3e $3f
	ld a, $7c                                        ; $529e: $3e $7c
	ldh a, [$e8]                                     ; $52a0: $f0 $e8
	and $e3                                          ; $52a2: $e6 $e3
	pop hl                                           ; $52a4: $e1
	sbc $e0                                          ; $52a5: $de $e0
	adc e                                            ; $52a7: $8b
	inc bc                                           ; $52a8: $03
	dec b                                            ; $52a9: $05
	rla                                              ; $52aa: $17
	rst $38                                          ; $52ab: $ff
	cp $bd                                           ; $52ac: $fe $bd
	ld h, e                                          ; $52ae: $63
	rra                                              ; $52af: $1f
	nop                                              ; $52b0: $00
	inc bc                                           ; $52b1: $03
	rrca                                             ; $52b2: $0f
	sbc a                                            ; $52b3: $9f
	rst $38                                          ; $52b4: $ff

Jump_025_52b5:
	ld a, [hl]                                       ; $52b5: $7e
	inc e                                            ; $52b6: $1c
	nop                                              ; $52b7: $00
	ldh a, [c]                                       ; $52b8: $f2
	jp nc, Jump_025_4aca                             ; $52b9: $d2 $ca $4a

	sbc $ca                                          ; $52bc: $de $ca
	sbc [hl]                                         ; $52be: $9e
	ld a, [$7865]                                    ; $52bf: $fa $65 $78
	rst SubAFromDE                                          ; $52c2: $df
	sub e                                            ; $52c3: $93
	sbc [hl]                                         ; $52c4: $9e
	ld d, d                                          ; $52c5: $52
	sbc $4a                                          ; $52c6: $de $4a
	rst SubAFromDE                                          ; $52c8: $df
	ld l, d                                          ; $52c9: $6a
	rst SubAFromDE                                          ; $52ca: $df
	cp $db                                           ; $52cb: $fe $db
	rst $38                                          ; $52cd: $ff
	sub e                                            ; $52ce: $93
	sbc c                                            ; $52cf: $99
	sub c                                            ; $52d0: $91
	adc e                                            ; $52d1: $8b
	sbc h                                            ; $52d2: $9c
	sbc c                                            ; $52d3: $99
	sbc c                                            ; $52d4: $99
	db $db                                           ; $52d5: $db
	ld e, e                                          ; $52d6: $5b
	inc de                                           ; $52d7: $13
	dec de                                           ; $52d8: $1b
	add hl, de                                       ; $52d9: $19
	add hl, bc                                       ; $52da: $09
	sbc $0c                                          ; $52db: $de $0c
	sbc e                                            ; $52dd: $9b
	adc h                                            ; $52de: $8c
	cp b                                             ; $52df: $b8
	call c, Call_025_77dc                            ; $52e0: $dc $dc $77
	ld c, c                                          ; $52e3: $49
	sub d                                            ; $52e4: $92
	cp [hl]                                          ; $52e5: $be
	rrca                                             ; $52e6: $0f
	rlca                                             ; $52e7: $07
	rlca                                             ; $52e8: $07
	add a                                            ; $52e9: $87
	jp $e3c3                                         ; $52ea: $c3 $c3 $e3


	db $e3                                           ; $52ed: $e3
	ld bc, $0502                                     ; $52ee: $01 $02 $05
	dec bc                                           ; $52f1: $0b
	sbc $0f                                          ; $52f2: $de $0f
	sbc [hl]                                         ; $52f4: $9e
	rla                                              ; $52f5: $17
	halt                                             ; $52f6: $76
	ld b, e                                          ; $52f7: $43
	sbc $08                                          ; $52f8: $de $08
	sbc l                                            ; $52fa: $9d
	jr jr_025_5338                                   ; $52fb: $18 $3b

	ld a, b                                          ; $52fd: $78
	ret c                                            ; $52fe: $d8

	ld [hl], a                                       ; $52ff: $77
	inc h                                            ; $5300: $24
	sbc [hl]                                         ; $5301: $9e
	rst JumpTable                                          ; $5302: $c7
	ld a, d                                          ; $5303: $7a
	db $e4                                           ; $5304: $e4
	ld [hl], l                                       ; $5305: $75
	ld l, l                                          ; $5306: $6d
	sbc d                                            ; $5307: $9a
	jp $efb7                                         ; $5308: $c3 $b7 $ef


	rst FarCall                                          ; $530b: $f7
	ld a, [$fede]                                    ; $530c: $fa $de $fe
	ld a, [hl]                                       ; $530f: $7e
	inc b                                            ; $5310: $04
	ld a, a                                          ; $5311: $7f
	inc [hl]                                         ; $5312: $34
	ld [hl], a                                       ; $5313: $77
	ldh a, [$df]                                     ; $5314: $f0 $df
	ld de, $169c                                     ; $5316: $11 $9c $16
	dec de                                           ; $5319: $1b
	cpl                                              ; $531a: $2f
	sbc $3f                                          ; $531b: $de $3f
	sbc $bf                                          ; $531d: $de $bf
	sub d                                            ; $531f: $92

jr_025_5320:
	cp h                                             ; $5320: $bc
	jr nc, jr_025_5343                               ; $5321: $30 $20

	ld h, b                                          ; $5323: $60
	ld h, b                                          ; $5324: $60
	cp b                                             ; $5325: $b8
	jr c, jr_025_5360                                ; $5326: $38 $38

	ld e, h                                          ; $5328: $5c
	db $ec                                           ; $5329: $ec
	jp nz, $8fff                                     ; $532a: $c2 $ff $8f

	db $dd                                           ; $532d: $dd
	ldh [$dd], a                                     ; $532e: $e0 $dd
	add b                                            ; $5330: $80
	ld a, e                                          ; $5331: $7b
	rla                                              ; $5332: $17
	ld a, d                                          ; $5333: $7a
	rst SubAFromHL                                          ; $5334: $d7
	sbc l                                            ; $5335: $9d
	rrca                                             ; $5336: $0f
	sbc h                                            ; $5337: $9c

jr_025_5338:
	ld sp, hl                                        ; $5338: $f9
	sbc h                                            ; $5339: $9c
	rst GetHLinHL                                          ; $533a: $cf
	pop bc                                           ; $533b: $c1
	ldh [$de], a                                     ; $533c: $e0 $de
	ldh a, [$df]                                     ; $533e: $f0 $df
	jr nz, jr_025_5320                               ; $5340: $20 $de

	ld a, a                                          ; $5342: $7f

jr_025_5343:
	ld a, d                                          ; $5343: $7a
	pop af                                           ; $5344: $f1
	rst SubAFromDE                                          ; $5345: $df
	ccf                                              ; $5346: $3f
	rst SubAFromDE                                          ; $5347: $df
	rst $38                                          ; $5348: $ff
	sbc c                                            ; $5349: $99
	rra                                              ; $534a: $1f
	rlca                                             ; $534b: $07
	rlca                                             ; $534c: $07
	dec b                                            ; $534d: $05
	dec e                                            ; $534e: $1d
	db $fd                                           ; $534f: $fd
	call c, $8fff                                    ; $5350: $dc $ff $8f
	db $fd                                           ; $5353: $fd
	push hl                                          ; $5354: $e5
	dec b                                            ; $5355: $05
	ld e, d                                          ; $5356: $5a
	ld e, d                                          ; $5357: $5a
	ld l, d                                          ; $5358: $6a
	ld [hl], d                                       ; $5359: $72
	ld d, c                                          ; $535a: $51
	ld [hl], c                                       ; $535b: $71
	ld hl, $8d79                                     ; $535c: $21 $79 $8d
	adc l                                            ; $535f: $8d

jr_025_5360:
	sbc l                                            ; $5360: $9d
	sbc l                                            ; $5361: $9d
	cp a                                             ; $5362: $bf
	ld a, c                                          ; $5363: $79
	ld c, [hl]                                       ; $5364: $4e
	rst SubAFromDE                                          ; $5365: $df
	cp [hl]                                          ; $5366: $be
	rst SubAFromDE                                          ; $5367: $df
	sbc [hl]                                         ; $5368: $9e
	rst SubAFromDE                                          ; $5369: $df
	rra                                              ; $536a: $1f
	sbc h                                            ; $536b: $9c
	sbc a                                            ; $536c: $9f
	cp [hl]                                          ; $536d: $be
	db $e3                                           ; $536e: $e3
	db $dd                                           ; $536f: $dd
	di                                               ; $5370: $f3
	rst SubAFromDE                                          ; $5371: $df
	rst FarCall                                          ; $5372: $f7
	sbc [hl]                                         ; $5373: $9e
	rst AddAOntoHL                                          ; $5374: $ef
	dec de                                           ; $5375: $1b
	nop                                              ; $5376: $00
	ldh a, [$9a]                                     ; $5377: $f0 $9a
	ld [hl+], a                                      ; $5379: $22
	jr nz, @+$62                                     ; $537a: $20 $60

	nop                                              ; $537c: $00
	ld [bc], a                                       ; $537d: $02
	ld [hl], a                                       ; $537e: $77
	ei                                               ; $537f: $fb
	rst SubAFromDE                                          ; $5380: $df
	ld [hl+], a                                      ; $5381: $22
	ld l, a                                          ; $5382: $6f
	ei                                               ; $5383: $fb
	sbc h                                            ; $5384: $9c
	ld b, $07                                        ; $5385: $06 $07
	ld [hl-], a                                      ; $5387: $32
	ld a, e                                          ; $5388: $7b
	ei                                               ; $5389: $fb
	sbc d                                            ; $538a: $9a
	ld de, $3277                                     ; $538b: $11 $77 $32
	ld sp, $ff06                                     ; $538e: $31 $06 $ff
	rst $38                                          ; $5391: $ff
	rst $38                                          ; $5392: $ff
	rst $38                                          ; $5393: $ff
	rst $38                                          ; $5394: $ff
	rst $38                                          ; $5395: $ff
	rst GetHLinHL                                          ; $5396: $cf
	di                                               ; $5397: $f3
	db $fc                                           ; $5398: $fc
	rst $38                                          ; $5399: $ff
	ccf                                              ; $539a: $3f
	ret nz                                           ; $539b: $c0

	ld d, c                                          ; $539c: $51
	add h                                            ; $539d: $84
	rst SubAFromDE                                          ; $539e: $df
	rra                                              ; $539f: $1f
	adc [hl]                                         ; $53a0: $8e
	cpl                                              ; $53a1: $2f
	ld l, $3c                                        ; $53a2: $2e $3c
	jr c, jr_025_53d7                                ; $53a4: $38 $31

	ld hl, $1010                                     ; $53a6: $21 $10 $10
	jr nc, @+$33                                     ; $53a9: $30 $31

	inc hl                                           ; $53ab: $23
	daa                                              ; $53ac: $27
	ld l, $3e                                        ; $53ad: $2e $3e
	cp $7e                                           ; $53af: $fe $7e
	ld a, [hl]                                       ; $53b1: $7e
	call c, $9cfe                                    ; $53b2: $dc $fe $9c
	ld bc, $8181                                     ; $53b5: $01 $81 $81
	call c, $df01                                    ; $53b8: $dc $01 $df
	ld a, c                                          ; $53bb: $79
	db $dd                                           ; $53bc: $dd
	ld [hl], c                                       ; $53bd: $71
	sbc e                                            ; $53be: $9b
	ld sp, $8733                                     ; $53bf: $31 $33 $87
	add a                                            ; $53c2: $87
	db $dd                                           ; $53c3: $dd
	adc a                                            ; $53c4: $8f
	rst SubAFromDE                                          ; $53c5: $df
	rst GetHLinHL                                          ; $53c6: $cf
	db $dd                                           ; $53c7: $dd
	ccf                                              ; $53c8: $3f
	rst SubAFromDE                                          ; $53c9: $df
	rra                                              ; $53ca: $1f
	add b                                            ; $53cb: $80
	adc l                                            ; $53cc: $8d
	jp Jump_025_6060                                 ; $53cd: $c3 $60 $60


	ldh [$e0], a                                     ; $53d0: $e0 $e0
	ldh a, [$f3]                                     ; $53d2: $f0 $f3
	rst $38                                          ; $53d4: $ff
	cp $40                                           ; $53d5: $fe $40

jr_025_53d7:
	ret nz                                           ; $53d7: $c0

	xor a                                            ; $53d8: $af
	rst $38                                          ; $53d9: $ff
	rst SubAFromDE                                          ; $53da: $df
	ldh a, [$e8]                                     ; $53db: $f0 $e8
	rst $38                                          ; $53dd: $ff
	ret nz                                           ; $53de: $c0

	ld b, b                                          ; $53df: $40
	ld h, a                                          ; $53e0: $67
	jr c, jr_025_5413                                ; $53e1: $38 $30

	db $10                                           ; $53e3: $10
	jr jr_025_53ee                                   ; $53e4: $18 $08

	nop                                              ; $53e6: $00
	nop                                              ; $53e7: $00
	cp $fd                                           ; $53e8: $fe $fd
	db $fc                                           ; $53ea: $fc
	rst SubAFromDE                                          ; $53eb: $df
	inc bc                                           ; $53ec: $03
	sbc [hl]                                         ; $53ed: $9e

jr_025_53ee:
	ei                                               ; $53ee: $fb
	ld a, e                                          ; $53ef: $7b
	ld hl, sp-$21                                    ; $53f0: $f8 $df
	inc bc                                           ; $53f2: $03
	rst SubAFromDE                                          ; $53f3: $df
	ld bc, $0780                                     ; $53f4: $01 $80 $07
	ccf                                              ; $53f7: $3f
	ld e, a                                          ; $53f8: $5f
	ld a, a                                          ; $53f9: $7f
	cp a                                             ; $53fa: $bf
	ei                                               ; $53fb: $fb
	db $fc                                           ; $53fc: $fc
	cp $ff                                           ; $53fd: $fe $ff
	jr nz, @+$62                                     ; $53ff: $20 $60

	ld c, b                                          ; $5401: $48
	call z, $878f                                    ; $5402: $cc $8f $87
	inc bc                                           ; $5405: $03
	ld bc, $f9f9                                     ; $5406: $01 $f9 $f9
	pop af                                           ; $5409: $f1
	pop hl                                           ; $540a: $e1
	jp $0f07                                         ; $540b: $c3 $07 $0f


	rst $38                                          ; $540e: $ff
	dec c                                            ; $540f: $0d
	add hl, bc                                       ; $5410: $09
	dec de                                           ; $5411: $1b
	inc sp                                           ; $5412: $33

jr_025_5413:
	and $dc                                          ; $5413: $e6 $dc
	sub b                                            ; $5415: $90
	ld hl, sp-$10                                    ; $5416: $f8 $f0
	rst GetHLinHL                                          ; $5418: $cf
	rst GetHLinHL                                          ; $5419: $cf
	rst SubAFromDE                                          ; $541a: $df
	sub h                                            ; $541b: $94
	sbc e                                            ; $541c: $9b
	sbc a                                            ; $541d: $9f
	sbc a                                            ; $541e: $9f
	ccf                                              ; $541f: $3f
	rst JumpTable                                          ; $5420: $c7
	rst JumpTable                                          ; $5421: $c7
	add a                                            ; $5422: $87
	rrca                                             ; $5423: $0f
	inc c                                            ; $5424: $0c
	sbc $08                                          ; $5425: $de $08
	sub a                                            ; $5427: $97
	cp [hl]                                          ; $5428: $be
	and [hl]                                         ; $5429: $a6
	add a                                            ; $542a: $87
	jp Jump_025_43c3                                 ; $542b: $c3 $c3 $43


	pop hl                                           ; $542e: $e1
	pop hl                                           ; $542f: $e1
	db $db                                           ; $5430: $db
	rst $38                                          ; $5431: $ff
	rst SubAFromDE                                          ; $5432: $df
	ld a, a                                          ; $5433: $7f
	sbc [hl]                                         ; $5434: $9e
	ld hl, $13de                                     ; $5435: $21 $de $13
	sbc $17                                          ; $5438: $de $17
	sbc l                                            ; $543a: $9d
	cpl                                              ; $543b: $2f
	ld a, $de                                        ; $543c: $3e $de
	inc e                                            ; $543e: $1c
	sbc $18                                          ; $543f: $de $18
	sbc l                                            ; $5441: $9d

jr_025_5442:
	jr nc, jr_025_5442                               ; $5442: $30 $fe

	jp c, $9eff                                      ; $5444: $da $ff $9e

	ld bc, $9efa                                     ; $5447: $01 $fa $9e
	inc sp                                           ; $544a: $33
	ld a, e                                          ; $544b: $7b
	pop hl                                           ; $544c: $e1
	add b                                            ; $544d: $80
	dec d                                            ; $544e: $15
	dec b                                            ; $544f: $05
	dec c                                            ; $5450: $0d
	adc l                                            ; $5451: $8d
	rst GetHLinHL                                          ; $5452: $cf
	xor $ee                                          ; $5453: $ee $ee
	db $ec                                           ; $5455: $ec
	xor $fe                                          ; $5456: $ee $fe
	cp $7e                                           ; $5458: $fe $7e
	ccf                                              ; $545a: $3f
	rlca                                             ; $545b: $07
	rrca                                             ; $545c: $0f
	rrca                                             ; $545d: $0f
	sbc a                                            ; $545e: $9f
	sbc a                                            ; $545f: $9f
	ldh [$e0], a                                     ; $5460: $e0 $e0
	db $fc                                           ; $5462: $fc
	ld hl, sp-$10                                    ; $5463: $f8 $f0
	ldh a, [$60]                                     ; $5465: $f0 $60
	ld h, b                                          ; $5467: $60
	nop                                              ; $5468: $00
	nop                                              ; $5469: $00
	rst FarCall                                          ; $546a: $f7
	rst $38                                          ; $546b: $ff
	ei                                               ; $546c: $fb
	sbc l                                            ; $546d: $9d
	rst $38                                          ; $546e: $ff
	db $fd                                           ; $546f: $fd
	ld a, e                                          ; $5470: $7b
	jp nc, $0c9a                                     ; $5471: $d2 $9a $0c

	inc b                                            ; $5474: $04
	ld b, $02                                        ; $5475: $06 $02
	inc bc                                           ; $5477: $03
	ld a, e                                          ; $5478: $7b
	res 1, a                                         ; $5479: $cb $8f
	ld a, [$f3f3]                                    ; $547b: $fa $f3 $f3
	push hl                                          ; $547e: $e5
	rst SubAFromBC                                          ; $547f: $e7
	db $eb                                           ; $5480: $eb
	add sp, -$58                                     ; $5481: $e8 $a8
	rlca                                             ; $5483: $07
	ld c, $0e                                        ; $5484: $0e $0e
	ld e, $1c                                        ; $5486: $1e $1c
	inc e                                            ; $5488: $1c
	sbc b                                            ; $5489: $98
	ret c                                            ; $548a: $d8

	db $db                                           ; $548b: $db
	rst $38                                          ; $548c: $ff
	rst FarCall                                          ; $548d: $f7
	db $dd                                           ; $548e: $dd
	rst $38                                          ; $548f: $ff
	rst SubAFromDE                                          ; $5490: $df
	cp $9e                                           ; $5491: $fe $9e
	ld a, $f8                                        ; $5493: $3e $f8
	sub l                                            ; $5495: $95
	cpl                                              ; $5496: $2f
	scf                                              ; $5497: $37
	ccf                                              ; $5498: $3f
	ccf                                              ; $5499: $3f
	ld a, a                                          ; $549a: $7f
	ld e, a                                          ; $549b: $5f
	ld l, a                                          ; $549c: $6f
	ld l, a                                          ; $549d: $6f
	jr jr_025_54b8                                   ; $549e: $18 $18

	sbc $10                                          ; $54a0: $de $10
	sbc $30                                          ; $54a2: $de $30
	rst SubAFromDE                                          ; $54a4: $df
	ldh a, [$df]                                     ; $54a5: $f0 $df
	ret c                                            ; $54a7: $d8

	sbc e                                            ; $54a8: $9b
	ret z                                            ; $54a9: $c8

	call z, $c6c4                                    ; $54aa: $cc $c4 $c6
	reti                                             ; $54ad: $d9


	ld a, a                                          ; $54ae: $7f
	sbc $2f                                          ; $54af: $de $2f

jr_025_54b1:
	call c, $de5f                                    ; $54b1: $dc $5f $de
	jr nc, @-$22                                     ; $54b4: $30 $dc

	ld h, b                                          ; $54b6: $60
	reti                                             ; $54b7: $d9


jr_025_54b8:
	rst $38                                          ; $54b8: $ff
	ld sp, hl                                        ; $54b9: $f9
	sbc e                                            ; $54ba: $9b
	adc h                                            ; $54bb: $8c
	add h                                            ; $54bc: $84
	add a                                            ; $54bd: $87
	add h                                            ; $54be: $84
	db $dd                                           ; $54bf: $dd
	jp nz, Jump_025_7fdd                             ; $54c0: $c2 $dd $7f

	db $dd                                           ; $54c3: $dd
	ccf                                              ; $54c4: $3f
	adc a                                            ; $54c5: $8f
	rrca                                             ; $54c6: $0f
	rlca                                             ; $54c7: $07
	rst $38                                          ; $54c8: $ff
	inc b                                            ; $54c9: $04
	rra                                              ; $54ca: $1f
	dec [hl]                                         ; $54cb: $35
	ld l, d                                          ; $54cc: $6a
	ld d, l                                          ; $54cd: $55
	ldh a, [$f8]                                     ; $54ce: $f0 $f8
	rst $38                                          ; $54d0: $ff
	db $fc                                           ; $54d1: $fc
	rst $38                                          ; $54d2: $ff
	ldh [$c0], a                                     ; $54d3: $e0 $c0
	ret nz                                           ; $54d5: $c0

	ld a, e                                          ; $54d6: $7b
	jr nc, @-$64                                     ; $54d7: $30 $9a

	ld b, l                                          ; $54d9: $45
	ld hl, sp+$5e                                    ; $54da: $f8 $5e
	xor a                                            ; $54dc: $af
	ld a, c                                          ; $54dd: $79
	ld a, d                                          ; $54de: $7a
	ret nc                                           ; $54df: $d0

	add b                                            ; $54e0: $80
	ld b, e                                          ; $54e1: $43
	ldh a, [c]                                       ; $54e2: $f2
	dec bc                                           ; $54e3: $0b

jr_025_54e4:
	rlca                                             ; $54e4: $07
	add hl, sp                                       ; $54e5: $39
	ld a, a                                          ; $54e6: $7f
	ret c                                            ; $54e7: $d8

	rst $38                                          ; $54e8: $ff
	ld sp, hl                                        ; $54e9: $f9
	di                                               ; $54ea: $f3
	ld [hl], a                                       ; $54eb: $77
	rst $38                                          ; $54ec: $ff
	xor h                                            ; $54ed: $ac
	ld d, b                                          ; $54ee: $50
	ld [hl], a                                       ; $54ef: $77
	ccf                                              ; $54f0: $3f
	or h                                             ; $54f1: $b4
	ld l, c                                          ; $54f2: $69
	ld h, $7f                                        ; $54f3: $26 $7f
	xor h                                            ; $54f5: $ac
	rst $38                                          ; $54f6: $ff
	ccf                                              ; $54f7: $3f
	rst $38                                          ; $54f8: $ff
	ld d, [hl]                                       ; $54f9: $56
	rst $38                                          ; $54fa: $ff
	ld d, l                                          ; $54fb: $55
	xor d                                            ; $54fc: $aa
	ld [hl], l                                       ; $54fd: $75
	nop                                              ; $54fe: $00
	ret nz                                           ; $54ff: $c0

	add b                                            ; $5500: $80
	rst $38                                          ; $5501: $ff
	rlca                                             ; $5502: $07
	rst $38                                          ; $5503: $ff
	nop                                              ; $5504: $00
	add b                                            ; $5505: $80
	ld h, b                                          ; $5506: $60
	ret nz                                           ; $5507: $c0

	rst $38                                          ; $5508: $ff
	rst SubAFromDE                                          ; $5509: $df
	ld a, a                                          ; $550a: $7f
	nop                                              ; $550b: $00
	rst GetHLinHL                                          ; $550c: $cf
	cp a                                             ; $550d: $bf
	ld e, a                                          ; $550e: $5f
	nop                                              ; $550f: $00
	nop                                              ; $5510: $00
	ldh [rIE], a                                     ; $5511: $e0 $ff
	rst $38                                          ; $5513: $ff
	ldh a, [rAUD4LEN]                                ; $5514: $f0 $20
	db $10                                           ; $5516: $10

jr_025_5517:
	rst SubAFromBC                                          ; $5517: $e7
	rst FarCall                                          ; $5518: $f7
	or d                                             ; $5519: $b2
	jp nc, $e810                                     ; $551a: $d2 $10 $e8

	ld hl, sp-$07                                    ; $551d: $f8 $f9
	jr c, jr_025_54b1                                ; $551f: $38 $90

	jr c, jr_025_55a0                                ; $5521: $38 $7d

	db $fd                                           ; $5523: $fd
	rst $38                                          ; $5524: $ff
	rra                                              ; $5525: $1f
	rrca                                             ; $5526: $0f
	ld c, $62                                        ; $5527: $0e $62
	ld h, c                                          ; $5529: $61
	ld [hl], c                                       ; $552a: $71
	ld d, b                                          ; $552b: $50
	jr z, jr_025_5517                                ; $552c: $28 $e9

	push hl                                          ; $552e: $e5
	db $e3                                           ; $552f: $e3
	call c, $deff                                    ; $5530: $dc $ff $de
	ld a, $df                                        ; $5533: $3e $df
	ld e, a                                          ; $5535: $5f
	sub e                                            ; $5536: $93
	ccf                                              ; $5537: $3f
	cpl                                              ; $5538: $2f
	ld hl, $0810                                     ; $5539: $21 $10 $08
	inc b                                            ; $553c: $04
	ld h, b                                          ; $553d: $60
	ld h, b                                          ; $553e: $60
	jr nz, jr_025_5571                               ; $553f: $20 $30

	ld a, $1f                                        ; $5541: $3e $1f
	ld a, e                                          ; $5543: $7b
	add d                                            ; $5544: $82
	ld [hl], a                                       ; $5545: $77
	jr nz, jr_025_54e4                               ; $5546: $20 $9c

	db $fc                                           ; $5548: $fc
	ld a, b                                          ; $5549: $78
	ld [hl], b                                       ; $554a: $70
	db $fd                                           ; $554b: $fd
	sbc e                                            ; $554c: $9b
	ld bc, $8703                                     ; $554d: $01 $03 $87
	adc a                                            ; $5550: $8f
	sbc $84                                          ; $5551: $de $84
	sbc $04                                          ; $5553: $de $04
	sbc l                                            ; $5555: $9d
	jr jr_025_55b8                                   ; $5556: $18 $60

	sbc $7f                                          ; $5558: $de $7f
	call c, $9dff                                    ; $555a: $dc $ff $9d
	ld e, a                                          ; $555d: $5f
	ld b, b                                          ; $555e: $40
	ld a, e                                          ; $555f: $7b
	rst SubAFromHL                                          ; $5560: $d7
	ld a, a                                          ; $5561: $7f
	ret nc                                           ; $5562: $d0

	sbc e                                            ; $5563: $9b
	ld [$c0ff], sp                                   ; $5564: $08 $ff $c0
	ret nz                                           ; $5567: $c0

	ld a, d                                          ; $5568: $7a
	rra                                              ; $5569: $1f
	rst SubAFromDE                                          ; $556a: $df
	ld hl, sp-$80                                    ; $556b: $f8 $80
	ret nz                                           ; $556d: $c0

	inc bc                                           ; $556e: $03
	inc b                                            ; $556f: $04
	dec bc                                           ; $5570: $0b

jr_025_5571:
	ld d, $2f                                        ; $5571: $16 $2f
	ld e, b                                          ; $5573: $58
	ld hl, $01c0                                     ; $5574: $21 $c0 $01
	inc bc                                           ; $5577: $03

jr_025_5578:
	ld bc, $0403                                     ; $5578: $01 $03 $04
	ld bc, $ac01                                     ; $557b: $01 $01 $ac
	adc d                                            ; $557e: $8a
	jp nz, Jump_025_6ec4                             ; $557f: $c2 $c4 $6e

	ld sp, hl                                        ; $5582: $f9
	xor h                                            ; $5583: $ac
	ld [hl], h                                       ; $5584: $74
	add h                                            ; $5585: $84
	add d                                            ; $5586: $82
	add a                                            ; $5587: $87
	add a                                            ; $5588: $87
	ret z                                            ; $5589: $c8

	ld hl, sp-$08                                    ; $558a: $f8 $f8
	add c                                            ; $558c: $81
	xor h                                            ; $558d: $ac
	ld e, $03                                        ; $558e: $1e $03
	add b                                            ; $5590: $80
	ld b, b                                          ; $5591: $40
	and b                                            ; $5592: $a0
	ld d, b                                          ; $5593: $50
	cp b                                             ; $5594: $b8
	ld d, b                                          ; $5595: $50
	inc e                                            ; $5596: $1c
	inc bc                                           ; $5597: $03
	nop                                              ; $5598: $00
	add b                                            ; $5599: $80
	ld b, b                                          ; $559a: $40
	jr nz, jr_025_559d                               ; $559b: $20 $00

jr_025_559d:
	nop                                              ; $559d: $00
	cp a                                             ; $559e: $bf
	rst $38                                          ; $559f: $ff

jr_025_55a0:
	rra                                              ; $55a0: $1f
	rra                                              ; $55a1: $1f
	add hl, sp                                       ; $55a2: $39
	jr nz, @+$62                                     ; $55a3: $20 $60

	ret nz                                           ; $55a5: $c0

	jr nc, jr_025_5578                               ; $55a6: $30 $d0

	db $10                                           ; $55a8: $10
	db $10                                           ; $55a9: $10
	ld d, $7a                                        ; $55aa: $16 $7a
	push bc                                          ; $55ac: $c5
	sbc l                                            ; $55ad: $9d
	ld sp, hl                                        ; $55ae: $f9
	ei                                               ; $55af: $fb
	db $dd                                           ; $55b0: $dd
	rst $38                                          ; $55b1: $ff
	sbc h                                            ; $55b2: $9c
	ld l, a                                          ; $55b3: $6f
	scf                                              ; $55b4: $37
	ld c, $76                                        ; $55b5: $0e $76
	inc hl                                           ; $55b7: $23

jr_025_55b8:
	adc e                                            ; $55b8: $8b
	ld [$d898], sp                                   ; $55b9: $08 $98 $d8
	ldh a, [c]                                       ; $55bc: $f2
	pop af                                           ; $55bd: $f1
	ld a, [$afea]                                    ; $55be: $fa $ea $af
	push bc                                          ; $55c1: $c5
	rst JumpTable                                          ; $55c2: $c7
	ld b, e                                          ; $55c3: $43
	ccf                                              ; $55c4: $3f
	ccf                                              ; $55c5: $3f
	dec a                                            ; $55c6: $3d
	dec l                                            ; $55c7: $2d
	ld l, h                                          ; $55c8: $6c
	ld b, [hl]                                       ; $55c9: $46
	ld b, [hl]                                       ; $55ca: $46
	jp Jump_025_6a02                                 ; $55cb: $c3 $02 $6a


	scf                                              ; $55ce: $37
	halt                                             ; $55cf: $76
	ld h, h                                          ; $55d0: $64
	db $fd                                           ; $55d1: $fd
	sbc h                                            ; $55d2: $9c
	jr nz, jr_025_55d8                               ; $55d3: $20 $03

	cp $fc                                           ; $55d5: $fe $fc
	sbc l                                            ; $55d7: $9d

jr_025_55d8:
	rst SubAFromDE                                          ; $55d8: $df
	rst $38                                          ; $55d9: $ff
	ld l, a                                          ; $55da: $6f
	ld hl, sp-$21                                    ; $55db: $f8 $df
	add b                                            ; $55dd: $80
	db $dd                                           ; $55de: $dd
	ld b, b                                          ; $55df: $40
	rst SubAFromDE                                          ; $55e0: $df
	jr nz, @+$77                                     ; $55e1: $20 $75

jr_025_55e3:
	db $f4                                           ; $55e3: $f4

jr_025_55e4:
	halt                                             ; $55e4: $76
	cp [hl]                                          ; $55e5: $be
	rst SubAFromDE                                          ; $55e6: $df
	ld [$367e], sp                                   ; $55e7: $08 $7e $36
	sbc e                                            ; $55ea: $9b
	rlca                                             ; $55eb: $07
	inc e                                            ; $55ec: $1c
	jr jr_025_5627                                   ; $55ed: $18 $38

	sbc $f8                                          ; $55ef: $de $f8
	ld a, [hl]                                       ; $55f1: $7e
	ret nz                                           ; $55f2: $c0

	rst SubAFromDE                                          ; $55f3: $df
	add sp, -$6f                                     ; $55f4: $e8 $91
	ret z                                            ; $55f6: $c8

	ld [bc], a                                       ; $55f7: $02
	dec b                                            ; $55f8: $05
	ld a, [de]                                       ; $55f9: $1a
	ld a, l                                          ; $55fa: $7d
	jp c, Jump_025_52b5                              ; $55fb: $da $b5 $52

	inc h                                            ; $55fe: $24

Jump_025_55ff:
	inc bc                                           ; $55ff: $03
	ld b, $0d                                        ; $5600: $06 $0d
	jr nc, jr_025_55e4                               ; $5602: $30 $e0

	cp $92                                           ; $5604: $fe $92
	ld l, d                                          ; $5606: $6a
	inc sp                                           ; $5607: $33
	xor e                                            ; $5608: $ab
	dec [hl]                                         ; $5609: $35
	jr z, jr_025_5642                                ; $560a: $28 $36

	add hl, hl                                       ; $560c: $29
	dec [hl]                                         ; $560d: $35
	and [hl]                                         ; $560e: $a6
	and [hl]                                         ; $560f: $a6
	dec h                                            ; $5610: $25
	ld [hl+], a                                      ; $5611: $22
	ld [hl+], a                                      ; $5612: $22
	sbc $20                                          ; $5613: $de $20
	cp $9a                                           ; $5615: $fe $9a
	ret nz                                           ; $5617: $c0

	ldh a, [$7f]                                     ; $5618: $f0 $7f
	ld d, c                                          ; $561a: $51
	jr z, jr_025_5694                                ; $561b: $28 $77

	or l                                             ; $561d: $b5
	sub a                                            ; $561e: $97
	ld h, b                                          ; $561f: $60
	rra                                              ; $5620: $1f
	nop                                              ; $5621: $00
	nop                                              ; $5622: $00
	ld b, b                                          ; $5623: $40
	ld b, b                                          ; $5624: $40
	ret nz                                           ; $5625: $c0

	ret nz                                           ; $5626: $c0

jr_025_5627:
	db $dd                                           ; $5627: $dd
	add b                                            ; $5628: $80
	db $dd                                           ; $5629: $dd
	ld a, a                                          ; $562a: $7f
	db $dd                                           ; $562b: $dd
	rst $38                                          ; $562c: $ff
	rst SubAFromDE                                          ; $562d: $df
	rla                                              ; $562e: $17
	rst SubAFromDE                                          ; $562f: $df
	inc de                                           ; $5630: $13
	sbc e                                            ; $5631: $9b
	inc hl                                           ; $5632: $23
	ld [hl+], a                                      ; $5633: $22
	ld hl, $7b21                                     ; $5634: $21 $21 $7b
	or c                                             ; $5637: $b1
	rst SubAFromDE                                          ; $5638: $df
	db $fc                                           ; $5639: $fc
	ld a, [hl]                                       ; $563a: $7e
	cp [hl]                                          ; $563b: $be
	sbc h                                            ; $563c: $9c
	rst $38                                          ; $563d: $ff
	add c                                            ; $563e: $81
	add c                                            ; $563f: $81
	db $dd                                           ; $5640: $dd
	add b                                            ; $5641: $80

jr_025_5642:
	rst $38                                          ; $5642: $ff
	ld h, a                                          ; $5643: $67
	ld hl, sp-$23                                    ; $5644: $f8 $dd
	jr nz, jr_025_55e3                               ; $5646: $20 $9b

	ld b, b                                          ; $5648: $40
	ld b, c                                          ; $5649: $41
	ld b, c                                          ; $564a: $41
	ld b, d                                          ; $564b: $42
	db $dd                                           ; $564c: $dd
	ccf                                              ; $564d: $3f
	adc d                                            ; $564e: $8a
	ld a, a                                          ; $564f: $7f
	ld a, [hl]                                       ; $5650: $7e
	ld a, [hl]                                       ; $5651: $7e
	ld a, a                                          ; $5652: $7f
	inc a                                            ; $5653: $3c
	ld [hl], h                                       ; $5654: $74
	halt                                             ; $5655: $76
	ld a, [$fdfb]                                    ; $5656: $fa $fb $fd
	cp $04                                           ; $5659: $fe $04
	ret z                                            ; $565b: $c8

	adc h                                            ; $565c: $8c
	adc h                                            ; $565d: $8c
	ld b, $06                                        ; $565e: $06 $06
	inc bc                                           ; $5660: $03
	ld bc, $50fb                                     ; $5661: $01 $fb $50
	ld a, e                                          ; $5664: $7b
	sbc [hl]                                         ; $5665: $9e
	sbc e                                            ; $5666: $9b
	ld bc, $9806                                     ; $5667: $01 $06 $98
	ld b, e                                          ; $566a: $43
	ld l, a                                          ; $566b: $6f
	dec sp                                           ; $566c: $3b
	sub l                                            ; $566d: $95
	adc a                                            ; $566e: $8f
	db $fc                                           ; $566f: $fc
	jr z, @+$32                                      ; $5670: $28 $30

	jr z, @+$72                                      ; $5672: $28 $70

	sub b                                            ; $5674: $90
	ld [$0106], sp                                   ; $5675: $08 $06 $01
	sbc $20                                          ; $5678: $de $20
	sub d                                            ; $567a: $92
	ld h, b                                          ; $567b: $60
	ldh a, [$f8]                                     ; $567c: $f0 $f8
	cp $ff                                           ; $567e: $fe $ff
	inc d                                            ; $5680: $14
	ld a, [bc]                                       ; $5681: $0a
	inc b                                            ; $5682: $04
	ld a, [bc]                                       ; $5683: $0a
	dec b                                            ; $5684: $05
	ld [bc], a                                       ; $5685: $02
	ld [bc], a                                       ; $5686: $02
	call nz, $9072                                   ; $5687: $c4 $72 $90
	ld a, [hl]                                       ; $568a: $7e
	cp [hl]                                          ; $568b: $be
	sbc [hl]                                         ; $568c: $9e
	rst JumpTable                                          ; $568d: $c7
	ld [hl], e                                       ; $568e: $73
	xor e                                            ; $568f: $ab
	ld l, c                                          ; $5690: $69
	sbc b                                            ; $5691: $98
	db $dd                                           ; $5692: $dd
	rst $38                                          ; $5693: $ff

jr_025_5694:
	db $dd                                           ; $5694: $dd
	ld hl, $619b                                     ; $5695: $21 $9b $61
	ld l, b                                          ; $5698: $68
	db $ec                                           ; $5699: $ec
	xor $dd                                          ; $569a: $ee $dd
	rst $38                                          ; $569c: $ff
	sbc e                                            ; $569d: $9b
	cp a                                             ; $569e: $bf
	or a                                             ; $569f: $b7
	inc sp                                           ; $56a0: $33
	ld sp, $d873                                     ; $56a1: $31 $73 $d8
	sbc h                                            ; $56a4: $9c
	add e                                            ; $56a5: $83
	add [hl]                                         ; $56a6: $86
	sbc h                                            ; $56a7: $9c
	ld l, a                                          ; $56a8: $6f
	ld hl, sp-$70                                    ; $56a9: $f8 $90
	add a                                            ; $56ab: $87
	sbc a                                            ; $56ac: $9f
	db $fd                                           ; $56ad: $fd
	add e                                            ; $56ae: $83
	add a                                            ; $56af: $87
	add a                                            ; $56b0: $87
	rrca                                             ; $56b1: $0f
	rra                                              ; $56b2: $1f
	ld h, d                                          ; $56b3: $62
	add d                                            ; $56b4: $82
	cp $fc                                           ; $56b5: $fe $fc
	ld hl, sp-$08                                    ; $56b7: $f8 $f8
	ldh a, [$de]                                     ; $56b9: $f0 $de
	rst $38                                          ; $56bb: $ff
	ld a, h                                          ; $56bc: $7c
	or h                                             ; $56bd: $b4
	ld a, e                                          ; $56be: $7b
	ld hl, sp-$69                                    ; $56bf: $f8 $97
	ld sp, hl                                        ; $56c1: $f9
	rlca                                             ; $56c2: $07
	nop                                              ; $56c3: $00
	rlca                                             ; $56c4: $07

jr_025_56c5:
	inc bc                                           ; $56c5: $03
	rlca                                             ; $56c6: $07
	rlca                                             ; $56c7: $07
	rrca                                             ; $56c8: $0f
	ld a, c                                          ; $56c9: $79
	jp $078e                                         ; $56ca: $c3 $8e $07


	rst SubAFromDE                                          ; $56cd: $df
	cpl                                              ; $56ce: $2f
	ld [hl], d                                       ; $56cf: $72
	db $fd                                           ; $56d0: $fd
	cp $7e                                           ; $56d1: $fe $7e
	call c, $e0f8                                    ; $56d3: $dc $f8 $e0
	ldh a, [$8d]                                     ; $56d6: $f0 $8d
	inc bc                                           ; $56d8: $03
	ld bc, $e381                                     ; $56d9: $01 $81 $e3
	ld [bc], a                                       ; $56dc: $02
	ld a, b                                          ; $56dd: $78
	adc d                                            ; $56de: $8a
	sub [hl]                                         ; $56df: $96
	add c                                            ; $56e0: $81
	ld a, [hl]                                       ; $56e1: $7e
	ld bc, $fd01                                     ; $56e2: $01 $01 $fd
	db $fc                                           ; $56e5: $fc
	db $fc                                           ; $56e6: $fc
	cp $fe                                           ; $56e7: $fe $fe
	ld a, c                                          ; $56e9: $79
	ld [hl], $9e                                     ; $56ea: $36 $9e
	jr c, @-$20                                      ; $56ec: $38 $de

	cp $9a                                           ; $56ee: $fe $9a
	pop af                                           ; $56f0: $f1
	inc c                                            ; $56f1: $0c
	db $fc                                           ; $56f2: $fc

jr_025_56f3:
	db $fc                                           ; $56f3: $fc
	rst $38                                          ; $56f4: $ff
	sbc $01                                          ; $56f5: $de $01
	sbc l                                            ; $56f7: $9d
	rrca                                             ; $56f8: $0f
	di                                               ; $56f9: $f3
	ld [hl], h                                       ; $56fa: $74
	ld l, l                                          ; $56fb: $6d
	sbc h                                            ; $56fc: $9c
	ld [bc], a                                       ; $56fd: $02
	dec e                                            ; $56fe: $1d
	db $e3                                           ; $56ff: $e3
	ld [hl], a                                       ; $5700: $77
	push bc                                          ; $5701: $c5
	ld a, h                                          ; $5702: $7c
	ld e, c                                          ; $5703: $59
	ld [hl], e                                       ; $5704: $73
	xor l                                            ; $5705: $ad
	rst SubAFromDE                                          ; $5706: $df
	rst SubAFromBC                                          ; $5707: $e7
	sbc d                                            ; $5708: $9a
	daa                                              ; $5709: $27
	db $e3                                           ; $570a: $e3
	di                                               ; $570b: $f3
	pop af                                           ; $570c: $f1
	pop af                                           ; $570d: $f1
	ld a, c                                          ; $570e: $79
	ret nz                                           ; $570f: $c0

	sbc c                                            ; $5710: $99
	ld hl, sp+$3c                                    ; $5711: $f8 $3c
	inc e                                            ; $5713: $1c
	ld e, $1e                                        ; $5714: $1e $1e
	ld d, $7a                                        ; $5716: $16 $7a
	sbc c                                            ; $5718: $99
	ld a, a                                          ; $5719: $7f
	ld a, b                                          ; $571a: $78
	ld h, h                                          ; $571b: $64
	add e                                            ; $571c: $83
	sbc $3f                                          ; $571d: $de $3f
	sub a                                            ; $571f: $97
	ld [bc], a                                       ; $5720: $02
	add d                                            ; $5721: $82
	rst $38                                          ; $5722: $ff
	ld sp, hl                                        ; $5723: $f9
	pop af                                           ; $5724: $f1

jr_025_5725:
	ldh a, [c]                                       ; $5725: $f2
	ldh a, [c]                                       ; $5726: $f2
	ldh [c], a                                       ; $5727: $e2
	ld h, c                                          ; $5728: $61
	jr z, jr_025_56c5                                ; $5729: $28 $9a

	inc bc                                           ; $572b: $03
	db $fc                                           ; $572c: $fc
	inc c                                            ; $572d: $0c
	inc b                                            ; $572e: $04
	inc b                                            ; $572f: $04
	ld a, c                                          ; $5730: $79
	ldh [$da], a                                     ; $5731: $e0 $da
	rst $38                                          ; $5733: $ff
	sbc e                                            ; $5734: $9b
	inc l                                            ; $5735: $2c
	ld hl, sp+$1f                                    ; $5736: $f8 $1f
	ld de, $e874                                     ; $5738: $11 $74 $e8
	sbc [hl]                                         ; $573b: $9e
	di                                               ; $573c: $f3
	db $dd                                           ; $573d: $dd
	rst $38                                          ; $573e: $ff
	sbc $df                                          ; $573f: $de $df
	ld [hl], a                                       ; $5741: $77
	dec h                                            ; $5742: $25
	rst SubAFromDE                                          ; $5743: $df
	jr nz, jr_025_5725                               ; $5744: $20 $df

	ldh [$db], a                                     ; $5746: $e0 $db
	rst $38                                          ; $5748: $ff
	rst SubAFromDE                                          ; $5749: $df
	ccf                                              ; $574a: $3f
	sbc $fc                                          ; $574b: $de $fc
	sbc d                                            ; $574d: $9a
	rst $38                                          ; $574e: $ff
	ld h, b                                          ; $574f: $60
	jr nz, jr_025_56f3                               ; $5750: $20 $a1

	db $e3                                           ; $5752: $e3
	sbc $03                                          ; $5753: $de $03
	sbc $ff                                          ; $5755: $de $ff
	sub h                                            ; $5757: $94
	ld a, [hl]                                       ; $5758: $7e
	inc a                                            ; $5759: $3c
	rrca                                             ; $575a: $0f
	rra                                              ; $575b: $1f
	db $fd                                           ; $575c: $fd
	add b                                            ; $575d: $80
	cp a                                             ; $575e: $bf
	ld a, a                                          ; $575f: $7f
	rst $38                                          ; $5760: $ff
	rst SubAFromDE                                          ; $5761: $df
	ldh a, [$79]                                     ; $5762: $f0 $79
	ld e, [hl]                                       ; $5764: $5e
	rst SubAFromDE                                          ; $5765: $df
	ret nz                                           ; $5766: $c0

	ld a, l                                          ; $5767: $7d
	sub e                                            ; $5768: $93
	sub h                                            ; $5769: $94
	db $fc                                           ; $576a: $fc
	xor $1e                                          ; $576b: $ee $1e
	cp a                                             ; $576d: $bf
	cp a                                             ; $576e: $bf
	sbc a                                            ; $576f: $9f
	ld c, a                                          ; $5770: $4f
	rst JumpTable                                          ; $5771: $c7
	inc de                                           ; $5772: $13
	pop af                                           ; $5773: $f1
	pop hl                                           ; $5774: $e1
	ld a, c                                          ; $5775: $79
	adc [hl]                                         ; $5776: $8e

jr_025_5777:
	sub a                                            ; $5777: $97
	ldh a, [$78]                                     ; $5778: $f0 $78
	rst SubAFromDE                                          ; $577a: $df
	rst AddAOntoHL                                          ; $577b: $ef
	rst AddAOntoHL                                          ; $577c: $ef
	rst $38                                          ; $577d: $ff
	rst FarCall                                          ; $577e: $f7
	rst FarCall                                          ; $577f: $f7
	ld a, e                                          ; $5780: $7b
	add $df                                          ; $5781: $c6 $df
	rra                                              ; $5783: $1f
	sbc $0f                                          ; $5784: $de $0f
	rst SubAFromDE                                          ; $5786: $df
	rlca                                             ; $5787: $07
	sbc h                                            ; $5788: $9c
	db $e4                                           ; $5789: $e4
	call nz, $dec4                                   ; $578a: $c4 $c4 $de
	adc b                                            ; $578d: $88
	rst SubAFromDE                                          ; $578e: $df
	db $10                                           ; $578f: $10
	reti                                             ; $5790: $d9


	rst $38                                          ; $5791: $ff
	sbc $08                                          ; $5792: $de $08
	call c, $d910                                    ; $5794: $dc $10 $d9
	rst $38                                          ; $5797: $ff
	sbc [hl]                                         ; $5798: $9e
	jr nc, jr_025_5777                               ; $5799: $30 $dc

	ld [hl], c                                       ; $579b: $71
	rst SubAFromDE                                          ; $579c: $df
	ld [hl], e                                       ; $579d: $73
	sbc [hl]                                         ; $579e: $9e
	rst SubAFromDE                                          ; $579f: $df
	call c, $df9e                                    ; $57a0: $dc $9e $df
	sbc h                                            ; $57a3: $9c
	sbc d                                            ; $57a4: $9a
	ldh [$e1], a                                     ; $57a5: $e0 $e1
	pop de                                           ; $57a7: $d1
	db $d3                                           ; $57a8: $d3
	db $d3                                           ; $57a9: $d3
	sbc $f3                                          ; $57aa: $de $f3
	sbc d                                            ; $57ac: $9a
	ccf                                              ; $57ad: $3f
	ld a, $3e                                        ; $57ae: $3e $3e
	inc a                                            ; $57b0: $3c
	inc a                                            ; $57b1: $3c
	sbc $1c                                          ; $57b2: $de $1c
	sbc [hl]                                         ; $57b4: $9e
	db $e3                                           ; $57b5: $e3
	ld [hl], a                                       ; $57b6: $77
	di                                               ; $57b7: $f3
	sbc h                                            ; $57b8: $9c
	di                                               ; $57b9: $f3
	db $eb                                           ; $57ba: $eb
	db $eb                                           ; $57bb: $eb
	ld [hl], e                                       ; $57bc: $73
	di                                               ; $57bd: $f3
	sbc $1c                                          ; $57be: $de $1c
	ld a, a                                          ; $57c0: $7f
	inc h                                            ; $57c1: $24
	sbc c                                            ; $57c2: $99
	rst AddAOntoHL                                          ; $57c3: $ef
	rst SubAFromDE                                          ; $57c4: $df
	rst $38                                          ; $57c5: $ff
	rst FarCall                                          ; $57c6: $f7
	rst AddAOntoHL                                          ; $57c7: $ef
	rst AddAOntoHL                                          ; $57c8: $ef
	ld a, c                                          ; $57c9: $79
	ld a, [de]                                       ; $57ca: $1a
	ld a, l                                          ; $57cb: $7d
	add hl, de                                       ; $57cc: $19
	sbc $18                                          ; $57cd: $de $18
	sub h                                            ; $57cf: $94
	and e                                            ; $57d0: $a3
	pop hl                                           ; $57d1: $e1
	ldh [$d0], a                                     ; $57d2: $e0 $d0
	ldh a, [$f0]                                     ; $57d4: $f0 $f0
	add sp, -$04                                     ; $57d6: $e8 $fc
	ld a, h                                          ; $57d8: $7c
	ld a, $3f                                        ; $57d9: $3e $3f
	ld a, e                                          ; $57db: $7b
	adc l                                            ; $57dc: $8d
	ld a, a                                          ; $57dd: $7f
	adc h                                            ; $57de: $8c
	ld [hl], a                                       ; $57df: $77
	ld [$f77f], sp                                   ; $57e0: $08 $7f $f7
	ld a, [hl]                                       ; $57e3: $7e
	ldh [$de], a                                     ; $57e4: $e0 $de
	rlca                                             ; $57e6: $07
	sbc d                                            ; $57e7: $9a
	add a                                            ; $57e8: $87
	rst JumpTable                                          ; $57e9: $c7
	rst SubAFromBC                                          ; $57ea: $e7
	rst $38                                          ; $57eb: $ff
	rst $38                                          ; $57ec: $ff
	rla                                              ; $57ed: $17
	nop                                              ; $57ee: $00
	sbc e                                            ; $57ef: $9b
	ld de, $1117                                     ; $57f0: $11 $17 $11
	ld [hl], a                                       ; $57f3: $77
	jp c, $9c11                                      ; $57f4: $da $11 $9c

	dec d                                            ; $57f7: $15
	ld d, l                                          ; $57f8: $55
	ld d, l                                          ; $57f9: $55
	ld e, e                                          ; $57fa: $5b
	ei                                               ; $57fb: $fb
	sbc [hl]                                         ; $57fc: $9e
	nop                                              ; $57fd: $00
	ld [hl], e                                       ; $57fe: $73
	ei                                               ; $57ff: $fb
	db $dd                                           ; $5800: $dd
	ld de, $fb5f                                     ; $5801: $11 $5f $fb
	add hl, de                                       ; $5804: $19
	ld bc, $ffd3                                     ; $5805: $01 $d3 $ff
	sbc [hl]                                         ; $5808: $9e
	cp $5b                                           ; $5809: $fe $5b
	cp $5f                                           ; $580b: $fe $5f
	db $ec                                           ; $580d: $ec
	sbc c                                            ; $580e: $99
	db $fd                                           ; $580f: $fd
	cp $fb                                           ; $5810: $fe $fb
	db $fc                                           ; $5812: $fc
	rst $38                                          ; $5813: $ff
	ld hl, sp+$77                                    ; $5814: $f8 $77
	cp $89                                           ; $5816: $fe $89
	rst FarCall                                          ; $5818: $f7
	ld hl, sp-$01                                    ; $5819: $f8 $ff
	ldh a, [rIE]                                     ; $581b: $f0 $ff
	ldh a, [$ef]                                     ; $581d: $f0 $ef
	ldh a, [$ee]                                     ; $581f: $f0 $ee
	pop af                                           ; $5821: $f1
	db $fc                                           ; $5822: $fc
	db $e3                                           ; $5823: $e3
	ld hl, sp-$19                                    ; $5824: $f8 $e7
	pop af                                           ; $5826: $f1
	xor $e1                                          ; $5827: $ee $e1
	cp $e1                                           ; $5829: $fe $e1
	cp $f3                                           ; $582b: $fe $f3
	db $fc                                           ; $582d: $fc
	ld [hl], a                                       ; $582e: $77
	cp $7f                                           ; $582f: $fe $7f
	and $77                                          ; $5831: $e6 $77
	cp $7f                                           ; $5833: $fe $7f
	and $6f                                          ; $5835: $e6 $6f
	cp $9d                                           ; $5837: $fe $9d
	rst SubAFromDE                                          ; $5839: $df
	ldh [$57], a                                     ; $583a: $e0 $57
	cp $98                                           ; $583c: $fe $98
	rst $38                                          ; $583e: $ff
	ldh [$ef], a                                     ; $583f: $e0 $ef
	ldh a, [$e1]                                     ; $5841: $f0 $e1
	cp $f0                                           ; $5843: $fe $f0
	ld a, e                                          ; $5845: $7b
	cp a                                             ; $5846: $bf
	ld a, a                                          ; $5847: $7f
	cp c                                             ; $5848: $b9
	ld e, a                                          ; $5849: $5f
	xor b                                            ; $584a: $a8
	ld b, a                                          ; $584b: $47
	add [hl]                                         ; $584c: $86
	add b                                            ; $584d: $80
	db $fc                                           ; $584e: $fc
	cp $f9                                           ; $584f: $fe $f9
	db $fc                                           ; $5851: $fc
	ldh a, [c]                                       ; $5852: $f2
	ld sp, hl                                        ; $5853: $f9
	db $e4                                           ; $5854: $e4
	di                                               ; $5855: $f3
	call c, $b9e3                                    ; $5856: $dc $e3 $b9
	rst JumpTable                                          ; $5859: $c7
	di                                               ; $585a: $f3
	adc a                                            ; $585b: $8f
	ld h, a                                          ; $585c: $67
	sbc [hl]                                         ; $585d: $9e
	adc $3e                                          ; $585e: $ce $3e
	sbc h                                            ; $5860: $9c
	ld a, [hl]                                       ; $5861: $7e
	sbc h                                            ; $5862: $9c
	ld a, h                                          ; $5863: $7c
	inc a                                            ; $5864: $3c
	db $fc                                           ; $5865: $fc
	ccf                                              ; $5866: $3f
	rst $38                                          ; $5867: $ff
	ccf                                              ; $5868: $3f
	ldh a, [rAUD4ENV]                                ; $5869: $f0 $21
	ldh [$60], a                                     ; $586b: $e0 $60
	sbc b                                            ; $586d: $98
	ldh [$7f], a                                     ; $586e: $e0 $7f
	ldh [$5f], a                                     ; $5870: $e0 $5f
	ldh [rIE], a                                     ; $5872: $e0 $ff
	cp $f1                                           ; $5874: $fe $f1
	sbc h                                            ; $5876: $9c
	jr nz, @-$1f                                     ; $5877: $20 $df

	inc bc                                           ; $5879: $03
	call nc, $f1ff                                   ; $587a: $d4 $ff $f1
	sbc l                                            ; $587d: $9d
	rst AddAOntoHL                                          ; $587e: $ef
	ldh a, [c]                                       ; $587f: $f2
	ld [hl], a                                       ; $5880: $77
	cp $80                                           ; $5881: $fe $80
	db $eb                                           ; $5883: $eb
	or $fd                                           ; $5884: $f6 $fd
	and $f7                                          ; $5886: $e6 $f7
	db $ec                                           ; $5888: $ec
	db $f4                                           ; $5889: $f4
	rst AddAOntoHL                                          ; $588a: $ef
	db $f4                                           ; $588b: $f4
	rst AddAOntoHL                                          ; $588c: $ef
	call nc, $e5ef                                   ; $588d: $d4 $ef $e5
	rst SubAFromDE                                          ; $5890: $df
	and a                                            ; $5891: $a7
	rst SubAFromDE                                          ; $5892: $df
	call $1bbf                                       ; $5893: $cd $bf $1b
	rst $38                                          ; $5896: $ff
	ldh a, [c]                                       ; $5897: $f2
	rst $38                                          ; $5898: $ff
	ldh [c], a                                       ; $5899: $e2
	rst $38                                          ; $589a: $ff
	db $e3                                           ; $589b: $e3
	rst $38                                          ; $589c: $ff
	rst JumpTable                                          ; $589d: $c7
	rst $38                                          ; $589e: $ff
	add [hl]                                         ; $589f: $86
	rst $38                                          ; $58a0: $ff
	rrca                                             ; $58a1: $0f
	ld a, a                                          ; $58a2: $7f
	cp $96                                           ; $58a3: $fe $96
	cp b                                             ; $58a5: $b8
	db $10                                           ; $58a6: $10
	ld [hl], b                                       ; $58a7: $70
	ld sp, $61e2                                     ; $58a8: $31 $e2 $61
	db $e3                                           ; $58ab: $e3
	ld h, e                                          ; $58ac: $63
	pop bc                                           ; $58ad: $c1
	pop af                                           ; $58ae: $f1
	sbc d                                            ; $58af: $9a
	add b                                            ; $58b0: $80
	rst $38                                          ; $58b1: $ff
	add b                                            ; $58b2: $80
	rst $38                                          ; $58b3: $ff
	ret nz                                           ; $58b4: $c0

	ld l, e                                          ; $58b5: $6b
	cp $7b                                           ; $58b6: $fe $7b
	scf                                              ; $58b8: $37
	ld h, e                                          ; $58b9: $63
	cp $7f                                           ; $58ba: $fe $7f

Call_025_58bc:
	ldh a, [c]                                       ; $58bc: $f2
	sbc b                                            ; $58bd: $98
	pop bc                                           ; $58be: $c1
	cp $c1                                           ; $58bf: $fe $c1
	cp $c2                                           ; $58c1: $fe $c2
	rst $38                                          ; $58c3: $ff
	ld a, a                                          ; $58c4: $7f
	ld a, e                                          ; $58c5: $7b
	cp $d6                                           ; $58c6: $fe $d6
	rst $38                                          ; $58c8: $ff
	ld [hl], a                                       ; $58c9: $77
	pop af                                           ; $58ca: $f1
	ld [hl], a                                       ; $58cb: $77
	cp $7b                                           ; $58cc: $fe $7b
	ld c, e                                          ; $58ce: $4b
	ld a, e                                          ; $58cf: $7b
	cp $9c                                           ; $58d0: $fe $9c
	rra                                              ; $58d2: $1f
	rst $38                                          ; $58d3: $ff
	sbc a                                            ; $58d4: $9f
	ld a, e                                          ; $58d5: $7b
	cp $92                                           ; $58d6: $fe $92
	adc a                                            ; $58d8: $8f
	rst $38                                          ; $58d9: $ff
	ld c, a                                          ; $58da: $4f
	rst AddAOntoHL                                          ; $58db: $ef
	ld b, a                                          ; $58dc: $47
	rst AddAOntoHL                                          ; $58dd: $ef
	ld b, a                                          ; $58de: $47
	rst FarCall                                          ; $58df: $f7
	inc hl                                           ; $58e0: $23
	rst FarCall                                          ; $58e1: $f7
	inc hl                                           ; $58e2: $23
	di                                               ; $58e3: $f3
	and c                                            ; $58e4: $a1
	pop hl                                           ; $58e5: $e1
	ld h, a                                          ; $58e6: $67
	cp d                                             ; $58e7: $ba
	adc l                                            ; $58e8: $8d
	ld a, a                                          ; $58e9: $7f
	ccf                                              ; $58ea: $3f
	ld a, a                                          ; $58eb: $7f
	rra                                              ; $58ec: $1f
	ccf                                              ; $58ed: $3f
	rra                                              ; $58ee: $1f
	ccf                                              ; $58ef: $3f
	rrca                                             ; $58f0: $0f
	cp a                                             ; $58f1: $bf
	rrca                                             ; $58f2: $0f
	rst SubAFromDE                                          ; $58f3: $df
	rlca                                             ; $58f4: $07
	rst SubAFromDE                                          ; $58f5: $df
	rlca                                             ; $58f6: $07
	rst $38                                          ; $58f7: $ff
	add a                                            ; $58f8: $87
	rst $38                                          ; $58f9: $ff
	jp $fe7b                                         ; $58fa: $c3 $7b $fe


	ld a, a                                          ; $58fd: $7f
	ld d, c                                          ; $58fe: $51
	ld [hl], a                                       ; $58ff: $77
	cp $9e                                           ; $5900: $fe $9e
	di                                               ; $5902: $f3
	ld l, e                                          ; $5903: $6b
	cp $9e                                           ; $5904: $fe $9e
	rst FarCall                                          ; $5906: $f7
	ld a, e                                          ; $5907: $7b
	cp $9e                                           ; $5908: $fe $9e
	rst AddAOntoHL                                          ; $590a: $ef
	ld d, a                                          ; $590b: $57
	add l                                            ; $590c: $85
	ld h, e                                          ; $590d: $63
	add d                                            ; $590e: $82
	ld e, e                                          ; $590f: $5b
	cp $5f                                           ; $5910: $fe $5f
	ld l, a                                          ; $5912: $6f
	ld l, e                                          ; $5913: $6b
	ld l, h                                          ; $5914: $6c
	ld l, e                                          ; $5915: $6b
	cp $9e                                           ; $5916: $fe $9e
	cp a                                             ; $5918: $bf
	ld l, e                                          ; $5919: $6b
	ldh [c], a                                       ; $591a: $e2
	pop bc                                           ; $591b: $c1
	rst $38                                          ; $591c: $ff
	ld a, a                                          ; $591d: $7f
	add a                                            ; $591e: $87
	db $fc                                           ; $591f: $fc
	ld a, a                                          ; $5920: $7f
	jp $3ffe                                         ; $5921: $c3 $fe $3f


	jp $ecf8                                         ; $5924: $c3 $f8 $ec


	add d                                            ; $5927: $82
	add b                                            ; $5928: $80
	ld [hl], h                                       ; $5929: $74
	ret                                              ; $592a: $c9


	sub d                                            ; $592b: $92
	inc h                                            ; $592c: $24
	ld c, h                                          ; $592d: $4c
	ret                                              ; $592e: $c9


	sbc e                                            ; $592f: $9b
	sub [hl]                                         ; $5930: $96
	ld a, a                                          ; $5931: $7f
	cp $fc                                           ; $5932: $fe $fc
	ld hl, sp-$10                                    ; $5934: $f8 $f0
	ldh a, [$e0]                                     ; $5936: $f0 $e0
	pop hl                                           ; $5938: $e1
	push bc                                          ; $5939: $c5
	ld a, [de]                                       ; $593a: $1a
	inc [hl]                                         ; $593b: $34
	ld l, c                                          ; $593c: $69
	db $d3                                           ; $593d: $d3
	and a                                            ; $593e: $a7
	ld h, [hl]                                       ; $593f: $66
	call z, $0703                                    ; $5940: $cc $03 $07
	rrca                                             ; $5943: $0f
	ld e, $3c                                        ; $5944: $1e $3c
	ld a, b                                          ; $5946: $78
	ld hl, sp-$6c                                    ; $5947: $f8 $94
	ldh a, [$be]                                     ; $5949: $f0 $be
	ld a, c                                          ; $594b: $79
	db $e3                                           ; $594c: $e3
	add $8c                                          ; $594d: $c6 $8c
	add hl, de                                       ; $594f: $19
	inc sp                                           ; $5950: $33
	ld h, [hl]                                       ; $5951: $66
	ret nz                                           ; $5952: $c0

	add b                                            ; $5953: $80
	db $fc                                           ; $5954: $fc
	add b                                            ; $5955: $80
	ld bc, $f8fe                                     ; $5956: $01 $fe $f8
	ld h, [hl]                                       ; $5959: $66
	ret                                              ; $595a: $c9


	sub [hl]                                         ; $595b: $96
	inc l                                            ; $595c: $2c
	ld e, c                                          ; $595d: $59
	or e                                             ; $595e: $b3
	ld bc, $1f07                                     ; $595f: $01 $07 $1f
	ld a, $78                                        ; $5962: $3e $78
	ldh a, [$e0]                                     ; $5964: $f0 $e0
	ret nz                                           ; $5966: $c0

	ld [$76fc], sp                                   ; $5967: $08 $fc $76
	db $fd                                           ; $596a: $fd
	ld h, a                                          ; $596b: $67
	ret c                                            ; $596c: $d8

	xor a                                            ; $596d: $af
	ld c, l                                          ; $596e: $4d
	rst $38                                          ; $596f: $ff
	rst $38                                          ; $5970: $ff
	adc a                                            ; $5971: $8f

jr_025_5972:
	inc bc                                           ; $5972: $03
	rra                                              ; $5973: $1f
	ccf                                              ; $5974: $3f
	add b                                            ; $5975: $80
	ld [hl], e                                       ; $5976: $73
	and $f1                                          ; $5977: $e6 $f1
	and $4f                                          ; $5979: $e6 $4f
	cpl                                              ; $597b: $2f
	adc $c1                                          ; $597c: $ce $c1
	ldh [c], a                                       ; $597e: $e2
	call nc, $180e                                   ; $597f: $d4 $0e $18
	or b                                             ; $5982: $b0
	ldh a, [$f1]                                     ; $5983: $f0 $f1
	rst $38                                          ; $5985: $ff
	rst $38                                          ; $5986: $ff
	ccf                                              ; $5987: $3f
	rst $38                                          ; $5988: $ff
	ld [bc], a                                       ; $5989: $02
	ldh [$c3], a                                     ; $598a: $e0 $c3
	ret c                                            ; $598c: $d8

	ld h, b                                          ; $598d: $60
	ld b, b                                          ; $598e: $40
	inc l                                            ; $598f: $2c
	rlca                                             ; $5990: $07
	ld bc, $3c00                                     ; $5991: $01 $00 $3c
	rst SubAFromBC                                          ; $5994: $e7
	add b                                            ; $5995: $80
	add c                                            ; $5996: $81
	cp [hl]                                          ; $5997: $be
	di                                               ; $5998: $f3
	nop                                              ; $5999: $00
	ret nz                                           ; $599a: $c0

	or b                                             ; $599b: $b0
	jr z, jr_025_5972                                ; $599c: $28 $d4

	ld a, [hl+]                                      ; $599e: $2a
	dec e                                            ; $599f: $1d
	xor a                                            ; $59a0: $af
	nop                                              ; $59a1: $00
	ret nz                                           ; $59a2: $c0

	ld [hl], b                                       ; $59a3: $70
	jr @+$0e                                         ; $59a4: $18 $0c

	add $63                                          ; $59a6: $c6 $63
	ld de, $2935                                     ; $59a8: $11 $35 $29
	dec sp                                           ; $59ab: $3b
	halt                                             ; $59ac: $76
	halt                                             ; $59ad: $76
	ld l, h                                          ; $59ae: $6c
	ld l, h                                          ; $59af: $6c
	ld e, b                                          ; $59b0: $58
	jp $c7c7                                         ; $59b1: $c3 $c7 $c7


	adc a                                            ; $59b4: $8f
	adc a                                            ; $59b5: $8f
	adc a                                            ; $59b6: $8f
	sbc a                                            ; $59b7: $9f
	sbc a                                            ; $59b8: $9f
	cp a                                             ; $59b9: $bf
	sbc b                                            ; $59ba: $98
	jr jr_025_59ed                                   ; $59bb: $18 $30

	jr nc, jr_025_5a2f                               ; $59bd: $30 $70

	ld h, c                                          ; $59bf: $61
	ld h, e                                          ; $59c0: $63
	db $e3                                           ; $59c1: $e3
	ldh [$e0], a                                     ; $59c2: $e0 $e0
	ret nz                                           ; $59c4: $c0

	ret nz                                           ; $59c5: $c0

	sbc $80                                          ; $59c6: $de $80
	add b                                            ; $59c8: $80
	nop                                              ; $59c9: $00
	ld h, h                                          ; $59ca: $64
	call $1a89                                       ; $59cb: $cd $89 $1a
	inc de                                           ; $59ce: $13
	dec d                                            ; $59cf: $15
	scf                                              ; $59d0: $37
	scf                                              ; $59d1: $37
	inc bc                                           ; $59d2: $03
	inc bc                                           ; $59d3: $03
	rlca                                             ; $59d4: $07
	rlca                                             ; $59d5: $07
	ld c, $0e                                        ; $59d6: $0e $0e
	inc c                                            ; $59d8: $0c
	inc c                                            ; $59d9: $0c
	and a                                            ; $59da: $a7
	ld b, [hl]                                       ; $59db: $46
	push bc                                          ; $59dc: $c5
	add c                                            ; $59dd: $81
	add b                                            ; $59de: $80
	jr jr_025_59fb                                   ; $59df: $18 $1a

	ld [de], a                                       ; $59e1: $12
	ret nz                                           ; $59e2: $c0

	add c                                            ; $59e3: $81
	inc bc                                           ; $59e4: $03
	inc bc                                           ; $59e5: $03
	nop                                              ; $59e6: $00
	nop                                              ; $59e7: $00
	add b                                            ; $59e8: $80
	ld b, $0e                                        ; $59e9: $06 $0e
	ld e, e                                          ; $59eb: $5b
	sub [hl]                                         ; $59ec: $96

jr_025_59ed:
	sbc h                                            ; $59ed: $9c
	add hl, hl                                       ; $59ee: $29
	ld [hl], c                                       ; $59ef: $71
	ld [hl-], a                                      ; $59f0: $32
	jp nc, $cce2                                     ; $59f1: $d2 $e2 $cc

	sbc b                                            ; $59f4: $98
	jr nc, @+$32                                     ; $59f5: $30 $30

	jr nz, jr_025_5a59                               ; $59f7: $20 $60

	ld h, b                                          ; $59f9: $60
	ld b, b                                          ; $59fa: $40

jr_025_59fb:
	inc a                                            ; $59fb: $3c
	ld a, h                                          ; $59fc: $7c
	push de                                          ; $59fd: $d5
	and [hl]                                         ; $59fe: $a6
	ld c, $17                                        ; $59ff: $0e $17
	inc hl                                           ; $5a01: $23
	and c                                            ; $5a02: $a1
	rrca                                             ; $5a03: $0f
	rlca                                             ; $5a04: $07
	rrca                                             ; $5a05: $0f
	rra                                              ; $5a06: $1f
	ccf                                              ; $5a07: $3f
	add b                                            ; $5a08: $80
	ld a, a                                          ; $5a09: $7f
	ld [hl], e                                       ; $5a0a: $73
	ld h, a                                          ; $5a0b: $67
	ld h, d                                          ; $5a0c: $62
	sbc l                                            ; $5a0d: $9d
	ld l, $5d                                        ; $5a0e: $2e $5d
	add d                                            ; $5a10: $82
	ld a, l                                          ; $5a11: $7d
	rst SubAFromBC                                          ; $5a12: $e7
	db $d3                                           ; $5a13: $d3
	pop bc                                           ; $5a14: $c1
	db $fc                                           ; $5a15: $fc
	ldh a, [c]                                       ; $5a16: $f2
	db $e3                                           ; $5a17: $e3
	db $fd                                           ; $5a18: $fd
	add $82                                          ; $5a19: $c6 $82
	ld h, d                                          ; $5a1b: $62
	ld d, [hl]                                       ; $5a1c: $56
	dec hl                                           ; $5a1d: $2b
	sbc a                                            ; $5a1e: $9f
	sbc e                                            ; $5a1f: $9b
	cp a                                             ; $5a20: $bf
	xor l                                            ; $5a21: $ad
	ld l, l                                          ; $5a22: $6d
	rst AddAOntoHL                                          ; $5a23: $ef
	adc c                                            ; $5a24: $89
	call z, Call_025_6664                            ; $5a25: $cc $64 $66
	add [hl]                                         ; $5a28: $86
	ldh [c], a                                       ; $5a29: $e2
	di                                               ; $5a2a: $f3
	di                                               ; $5a2b: $f3
	ld [hl], c                                       ; $5a2c: $71
	add b                                            ; $5a2d: $80
	add b                                            ; $5a2e: $80

jr_025_5a2f:
	ld b, b                                          ; $5a2f: $40
	ret nz                                           ; $5a30: $c0

	and b                                            ; $5a31: $a0
	ldh [$e0], a                                     ; $5a32: $e0 $e0
	ret nc                                           ; $5a34: $d0

	add b                                            ; $5a35: $80
	add b                                            ; $5a36: $80
	ret nz                                           ; $5a37: $c0

	ld b, b                                          ; $5a38: $40
	ld h, b                                          ; $5a39: $60
	jr nz, jr_025_5a5c                               ; $5a3a: $20 $20

	jr nc, jr_025_5a96                               ; $5a3c: $30 $58

	ld e, b                                          ; $5a3e: $58
	ld [hl], b                                       ; $5a3f: $70
	jr nc, jr_025_5a72                               ; $5a40: $30 $30

	sbc $60                                          ; $5a42: $de $60
	sbc $bf                                          ; $5a44: $de $bf
	call c, Call_025_7fff                            ; $5a46: $dc $ff $7f
	ld [bc], a                                       ; $5a49: $02
	db $dd                                           ; $5a4a: $dd
	add $df                                          ; $5a4b: $c6 $df
	adc $f9                                          ; $5a4d: $ce $f9
	sbc l                                            ; $5a4f: $9d
	ld a, [hl-]                                      ; $5a50: $3a
	ld a, d                                          ; $5a51: $7a
	db $dd                                           ; $5a52: $dd
	ld l, [hl]                                       ; $5a53: $6e
	sbc e                                            ; $5a54: $9b
	xor $af                                          ; $5a55: $ee $af
	inc c                                            ; $5a57: $0c
	inc c                                            ; $5a58: $0c

jr_025_5a59:
	call c, $9418                                    ; $5a59: $dc $18 $94

jr_025_5a5c:
	ld e, b                                          ; $5a5c: $58
	jr nc, jr_025_5a91                               ; $5a5d: $30 $32

	ld hl, $6121                                     ; $5a5f: $21 $21 $61
	ld h, c                                          ; $5a62: $61
	ld h, e                                          ; $5a63: $63
	ld h, a                                          ; $5a64: $67
	ld c, $0c                                        ; $5a65: $0e $0c
	db $db                                           ; $5a67: $db
	inc e                                            ; $5a68: $1c
	sub [hl]                                         ; $5a69: $96
	ldh [rAUDVOL], a                                 ; $5a6a: $e0 $24
	dec h                                            ; $5a6c: $25
	ld h, l                                          ; $5a6d: $65
	ld h, l                                          ; $5a6e: $65
	ld l, l                                          ; $5a6f: $6d
	ld l, a                                          ; $5a70: $6f
	ld l, [hl]                                       ; $5a71: $6e

jr_025_5a72:
	ld b, b                                          ; $5a72: $40
	ld [hl], e                                       ; $5a73: $73
	ld b, c                                          ; $5a74: $41
	sbc c                                            ; $5a75: $99
	add b                                            ; $5a76: $80
	add c                                            ; $5a77: $81
	inc hl                                           ; $5a78: $23
	ld b, a                                          ; $5a79: $47
	ld b, a                                          ; $5a7a: $47
	ld c, h                                          ; $5a7b: $4c
	db $dd                                           ; $5a7c: $dd
	ld c, b                                          ; $5a7d: $48
	sbc h                                            ; $5a7e: $9c
	rst SubAFromBC                                          ; $5a7f: $e7
	db $ed                                           ; $5a80: $ed
	call z, $d8dd                                    ; $5a81: $cc $dd $d8
	sbc d                                            ; $5a84: $9a
	ld hl, sp-$1e                                    ; $5a85: $f8 $e2
	pop af                                           ; $5a87: $f1
	pop af                                           ; $5a88: $f1
	add hl, sp                                       ; $5a89: $39
	sbc $19                                          ; $5a8a: $de $19
	sbc e                                            ; $5a8c: $9b
	add hl, bc                                       ; $5a8d: $09
	cp e                                             ; $5a8e: $bb
	dec de                                           ; $5a8f: $1b
	add hl, de                                       ; $5a90: $19

jr_025_5a91:
	sbc $0d                                          ; $5a91: $de $0d
	rst SubAFromDE                                          ; $5a93: $df
	rlca                                             ; $5a94: $07
	adc l                                            ; $5a95: $8d

jr_025_5a96:
	rst SubAFromHL                                          ; $5a96: $d7
	jp nc, $d5fb                                     ; $5a97: $d2 $fb $d5

	ld e, l                                          ; $5a9a: $5d
	ld e, a                                          ; $5a9b: $5f
	ld e, d                                          ; $5a9c: $5a
	ld l, h                                          ; $5a9d: $6c
	ld a, c                                          ; $5a9e: $79
	ld a, l                                          ; $5a9f: $7d
	ld e, h                                          ; $5aa0: $5c
	ld e, [hl]                                       ; $5aa1: $5e
	sub $d3                                          ; $5aa2: $d6 $d3
	ret                                              ; $5aa4: $c9


	ret z                                            ; $5aa5: $c8

	ld d, b                                          ; $5aa6: $50
	ldh a, [$dc]                                     ; $5aa7: $f0 $dc
	or b                                             ; $5aa9: $b0
	sbc h                                            ; $5aaa: $9c
	ret nc                                           ; $5aab: $d0

	or b                                             ; $5aac: $b0
	sub b                                            ; $5aad: $90
	call c, $9dd0                                    ; $5aae: $dc $d0 $9d
	ld [hl], b                                       ; $5ab1: $70
	xor $de                                          ; $5ab2: $ee $de
	rst AddAOntoHL                                          ; $5ab4: $ef
	sbc [hl]                                         ; $5ab5: $9e
	ld l, a                                          ; $5ab6: $6f
	sbc $7f                                          ; $5ab7: $de $7f
	db $fd                                           ; $5ab9: $fd
	db $dd                                           ; $5aba: $dd
	add b                                            ; $5abb: $80
	sbc [hl]                                         ; $5abc: $9e
	xor a                                            ; $5abd: $af
	sbc $bb                                          ; $5abe: $de $bb
	rst SubAFromDE                                          ; $5ac0: $df
	sbc c                                            ; $5ac1: $99
	sbc h                                            ; $5ac2: $9c
	or l                                             ; $5ac3: $b5
	cp l                                             ; $5ac4: $bd
	ld e, b                                          ; $5ac5: $58
	sbc $4c                                          ; $5ac6: $de $4c
	sbc $6e                                          ; $5ac8: $de $6e
	sub e                                            ; $5aca: $93
	ld h, [hl]                                       ; $5acb: $66
	ld h, a                                          ; $5acc: $67
	ld h, a                                          ; $5acd: $67
	ld h, l                                          ; $5ace: $65
	ld [hl], l                                       ; $5acf: $75
	ld [hl], l                                       ; $5ad0: $75
	di                                               ; $5ad1: $f3
	di                                               ; $5ad2: $f3
	ldh a, [c]                                       ; $5ad3: $f2
	inc e                                            ; $5ad4: $1c
	inc e                                            ; $5ad5: $1c
	ld e, $dd                                        ; $5ad6: $1e $dd
	ld c, $95                                        ; $5ad8: $0e $95
	rrca                                             ; $5ada: $0f
	ld l, [hl]                                       ; $5adb: $6e
	ld l, $be                                        ; $5adc: $2e $be
	cp [hl]                                          ; $5ade: $be
	ld a, [hl]                                       ; $5adf: $7e
	rst SubAFromDE                                          ; $5ae0: $df
	rst SubAFromDE                                          ; $5ae1: $df
	rst GetHLinHL                                          ; $5ae2: $cf
	add c                                            ; $5ae3: $81
	db $dd                                           ; $5ae4: $dd
	pop bc                                           ; $5ae5: $c1
	rst SubAFromDE                                          ; $5ae6: $df
	ld h, b                                          ; $5ae7: $60
	sub [hl]                                         ; $5ae8: $96
	ld [hl], b                                       ; $5ae9: $70
	ld c, b                                          ; $5aea: $48
	add sp, -$18                                     ; $5aeb: $e8 $e8
	ldh a, [$f0]                                     ; $5aed: $f0 $f0
	ld l, b                                          ; $5aef: $68
	ld a, b                                          ; $5af0: $78
	ld e, h                                          ; $5af1: $5c
	sbc $f8                                          ; $5af2: $de $f8
	sbc $d8                                          ; $5af4: $de $d8
	sbc l                                            ; $5af6: $9d
	call z, $dec4                                    ; $5af7: $cc $c4 $de
	dec bc                                           ; $5afa: $0b
	sbc d                                            ; $5afb: $9a
	rlca                                             ; $5afc: $07
	dec b                                            ; $5afd: $05
	ld bc, $0500                                     ; $5afe: $01 $00 $05
	sbc $06                                          ; $5b01: $de $06
	rst SubAFromDE                                          ; $5b03: $df
	inc b                                            ; $5b04: $04
	rst $38                                          ; $5b05: $ff
	adc c                                            ; $5b06: $89
	inc bc                                           ; $5b07: $03
	and a                                            ; $5b08: $a7
	adc l                                            ; $5b09: $8d
	sub e                                            ; $5b0a: $93
	ret                                              ; $5b0b: $c9


	rst GetHLinHL                                          ; $5b0c: $cf
	or a                                             ; $5b0d: $b7
	db $db                                           ; $5b0e: $db
	sbc l                                            ; $5b0f: $9d
	call z, $e7e6                                    ; $5b10: $cc $e6 $e7
	di                                               ; $5b13: $f3
	pop af                                           ; $5b14: $f1
	cp b                                             ; $5b15: $b8
	call c, $109e                                    ; $5b16: $dc $9e $10
	adc h                                            ; $5b19: $8c
	ld a, a                                          ; $5b1a: $7f
	rst GetHLinHL                                          ; $5b1b: $cf
	ccf                                              ; $5b1c: $3f
	ld a, d                                          ; $5b1d: $7a
	rst AddAOntoHL                                          ; $5b1e: $ef
	sub a                                            ; $5b1f: $97
	jr nc, jr_025_5b2e                               ; $5b20: $30 $0c

	add e                                            ; $5b22: $83
	ldh a, [rIE]                                     ; $5b23: $f0 $ff
	ldh [$60], a                                     ; $5b25: $e0 $60

jr_025_5b27:
	jr nz, jr_025_5b27                               ; $5b27: $20 $fe

	sbc l                                            ; $5b29: $9d
	ret nz                                           ; $5b2a: $c0

	ldh a, [$fb]                                     ; $5b2b: $f0 $fb
	ld [hl], e                                       ; $5b2d: $73

jr_025_5b2e:
	ld hl, sp-$22                                    ; $5b2e: $f8 $de
	ccf                                              ; $5b30: $3f
	rst SubAFromDE                                          ; $5b31: $df
	rra                                              ; $5b32: $1f
	rst SubAFromDE                                          ; $5b33: $df
	rrca                                             ; $5b34: $0f
	sbc [hl]                                         ; $5b35: $9e
	rlca                                             ; $5b36: $07
	sbc $c0                                          ; $5b37: $de $c0
	rst SubAFromDE                                          ; $5b39: $df
	ldh [$df], a                                     ; $5b3a: $e0 $df
	ldh a, [$80]                                     ; $5b3c: $f0 $80
	ld hl, sp-$54                                    ; $5b3e: $f8 $ac
	xor d                                            ; $5b40: $aa
	sbc [hl]                                         ; $5b41: $9e
	sbc [hl]                                         ; $5b42: $9e
	sub l                                            ; $5b43: $95

Call_025_5b44:
	rst SubAFromDE                                          ; $5b44: $df
	rst GetHLinHL                                          ; $5b45: $cf
	jp z, Jump_025_7777                              ; $5b46: $ca $77 $77

	ld [hl], e                                       ; $5b49: $73
	ld [hl], e                                       ; $5b4a: $73
	ld a, e                                          ; $5b4b: $7b
	add hl, sp                                       ; $5b4c: $39
	add hl, sp                                       ; $5b4d: $39
	dec a                                            ; $5b4e: $3d
	ld a, [$79f9]                                    ; $5b4f: $fa $f9 $79
	ld a, l                                          ; $5b52: $7d
	dec a                                            ; $5b53: $3d
	inc a                                            ; $5b54: $3c
	ld e, $8e                                        ; $5b55: $1e $8e
	rlca                                             ; $5b57: $07
	rlca                                             ; $5b58: $07
	add a                                            ; $5b59: $87
	add e                                            ; $5b5a: $83
	jp $8cc3                                         ; $5b5b: $c3 $c3 $8c


	pop hl                                           ; $5b5e: $e1
	pop af                                           ; $5b5f: $f1
	xor a                                            ; $5b60: $af
	rst SubAFromBC                                          ; $5b61: $e7
	rst SubAFromBC                                          ; $5b62: $e7
	ld d, e                                          ; $5b63: $53
	pop af                                           ; $5b64: $f1
	or c                                             ; $5b65: $b1
	xor b                                            ; $5b66: $a8
	ld e, b                                          ; $5b67: $58

jr_025_5b68:
	ld [hl], b                                       ; $5b68: $70
	jr c, @+$3a                                      ; $5b69: $38 $38

	cp h                                             ; $5b6b: $bc
	sbc [hl]                                         ; $5b6c: $9e
	sbc $df                                          ; $5b6d: $de $df
	rst AddAOntoHL                                          ; $5b6f: $ef
	ld b, h                                          ; $5b70: $44
	ld a, d                                          ; $5b71: $7a
	sbc d                                            ; $5b72: $9a
	sbc e                                            ; $5b73: $9b
	ld hl, $3020                                     ; $5b74: $21 $20 $30
	ld de, $c073                                     ; $5b77: $11 $73 $c0
	rst SubAFromDE                                          ; $5b7a: $df
	pop hl                                           ; $5b7b: $e1
	add [hl]                                         ; $5b7c: $86
	ldh a, [rTAC]                                    ; $5b7d: $f0 $07
	ld c, $3c                                        ; $5b7f: $0e $3c
	jr c, jr_025_5bfb                                ; $5b81: $38 $78

	cp $ff                                           ; $5b83: $fe $ff
	cp [hl]                                          ; $5b85: $be
	ld c, $38                                        ; $5b86: $0e $38
	ld [hl], b                                       ; $5b88: $70
	ldh [$c0], a                                     ; $5b89: $e0 $c0
	add c                                            ; $5b8b: $81
	rra                                              ; $5b8c: $1f
	ld a, a                                          ; $5b8d: $7f
	ld [de], a                                       ; $5b8e: $12
	ld de, $1010                                     ; $5b8f: $11 $10 $10
	jr nc, @-$0e                                     ; $5b92: $30 $f0

	pop de                                           ; $5b94: $d1
	pop af                                           ; $5b95: $f1
	db $dd                                           ; $5b96: $dd
	rra                                              ; $5b97: $1f
	sub a                                            ; $5b98: $97
	dec e                                            ; $5b99: $1d
	sbc l                                            ; $5b9a: $9d
	db $fd                                           ; $5b9b: $fd
	sbc l                                            ; $5b9c: $9d
	ld h, b                                          ; $5b9d: $60
	jr nc, jr_025_5b68                               ; $5b9e: $30 $c8

	db $fc                                           ; $5ba0: $fc
	ld [hl], l                                       ; $5ba1: $75
	ld hl, sp-$64                                    ; $5ba2: $f8 $9c
	and b                                            ; $5ba4: $a0
	ret nc                                           ; $5ba5: $d0

	ld hl, sp+$73                                    ; $5ba6: $f8 $73
	ld hl, sp-$64                                    ; $5ba8: $f8 $9c
	rlca                                             ; $5baa: $07
	inc bc                                           ; $5bab: $03
	ld bc, $f776                                     ; $5bac: $01 $76 $f7
	sbc e                                            ; $5baf: $9b
	ret nz                                           ; $5bb0: $c0

	ld hl, sp-$04                                    ; $5bb1: $f8 $fc
	cp $dc                                           ; $5bb3: $fe $dc
	rst $38                                          ; $5bb5: $ff
	add d                                            ; $5bb6: $82
	adc $c5                                          ; $5bb7: $ce $c5
	rst SubAFromBC                                          ; $5bb9: $e7
	ldh [c], a                                       ; $5bba: $e2
	ld h, e                                          ; $5bbb: $63
	inc sp                                           ; $5bbc: $33
	ld de, $3d01                                     ; $5bbd: $11 $01 $3d
	ld a, $1e                                        ; $5bc0: $3e $1e
	rra                                              ; $5bc2: $1f
	sbc a                                            ; $5bc3: $9f
	rst GetHLinHL                                          ; $5bc4: $cf
	rst AddAOntoHL                                          ; $5bc5: $ef
	rst $38                                          ; $5bc6: $ff
	add [hl]                                         ; $5bc7: $86
	ld b, a                                          ; $5bc8: $47
	ld b, e                                          ; $5bc9: $43
	and c                                            ; $5bca: $a1
	sub b                                            ; $5bcb: $90
	db $10                                           ; $5bcc: $10
	adc b                                            ; $5bcd: $88
	adc h                                            ; $5bce: $8c
	ld sp, hl                                        ; $5bcf: $f9
	ld hl, sp-$04                                    ; $5bd0: $f8 $fc
	ld a, [hl]                                       ; $5bd2: $7e
	ld a, a                                          ; $5bd3: $7f
	sbc $ff                                          ; $5bd4: $de $ff
	add a                                            ; $5bd6: $87
	ld e, h                                          ; $5bd7: $5c
	ld l, h                                          ; $5bd8: $6c
	ld l, $37                                        ; $5bd9: $2e $37
	rla                                              ; $5bdb: $17
	ld a, [de]                                       ; $5bdc: $1a
	dec c                                            ; $5bdd: $0d
	ld c, $e7                                        ; $5bde: $0e $e7
	rst FarCall                                          ; $5be0: $f7
	di                                               ; $5be1: $f3
	ei                                               ; $5be2: $fb
	ld sp, hl                                        ; $5be3: $f9
	db $fd                                           ; $5be4: $fd
	cp $ff                                           ; $5be5: $fe $ff
	ld de, $0818                                     ; $5be7: $11 $18 $08
	ld [$c48c], sp                                   ; $5bea: $08 $8c $c4
	and $32                                          ; $5bed: $e6 $32
	ld a, e                                          ; $5bef: $7b
	ld b, l                                          ; $5bf0: $45
	rst SubAFromDE                                          ; $5bf1: $df
	ld hl, sp-$71                                    ; $5bf2: $f8 $8f
	db $fc                                           ; $5bf4: $fc
	cp h                                             ; $5bf5: $bc
	sbc [hl]                                         ; $5bf6: $9e
	ld h, d                                          ; $5bf7: $62
	call z, Call_025_625e                            ; $5bf8: $cc $5e $62

jr_025_5bfb:
	ld [hl-], a                                      ; $5bfb: $32
	jr c, jr_025_5bfe                                ; $5bfc: $38 $00

jr_025_5bfe:
	nop                                              ; $5bfe: $00
	and $ce                                          ; $5bff: $e6 $ce
	sbc $3e                                          ; $5c01: $de $3e
	inc e                                            ; $5c03: $1c
	cp $df                                           ; $5c04: $fe $df
	or c                                             ; $5c06: $b1
	sbc $31                                          ; $5c07: $de $31
	sbc e                                            ; $5c09: $9b
	ld de, $1212                                     ; $5c0a: $11 $12 $12
	reti                                             ; $5c0d: $d9


	call c, $df1b                                    ; $5c0e: $dc $1b $df
	ld a, [de]                                       ; $5c11: $1a
	ld hl, $9e00                                     ; $5c12: $21 $00 $9e
	ld bc, $11de                                     ; $5c15: $01 $de $11
	sbc l                                            ; $5c18: $9d
	stop                                             ; $5c19: $10 $00
	ld [hl], a                                       ; $5c1b: $77
	ld a, [$119e]                                    ; $5c1c: $fa $9e $11
	ld [hl], a                                       ; $5c1f: $77
	ld a, [$339b]                                    ; $5c20: $fa $9b $33
	ld de, $0000                                     ; $5c23: $11 $00 $00
	ld [hl], a                                       ; $5c26: $77
	ld a, [$ed7f]                                    ; $5c27: $fa $7f $ed
	ld a, e                                          ; $5c2a: $7b
	ld a, [$319e]                                    ; $5c2b: $fa $9e $31
	ld [hl], e                                       ; $5c2e: $73
	db $f4                                           ; $5c2f: $f4
	sbc l                                            ; $5c30: $9d
	jr nc, jr_025_5c33                               ; $5c31: $30 $00

jr_025_5c33:
	ccf                                              ; $5c33: $3f
	add e                                            ; $5c34: $83
	rst $38                                          ; $5c35: $ff
	ccf                                              ; $5c36: $3f
	db $e3                                           ; $5c37: $e3
	rst $38                                          ; $5c38: $ff
	ccf                                              ; $5c39: $3f
	di                                               ; $5c3a: $f3
	rst $38                                          ; $5c3b: $ff
	adc $82                                          ; $5c3c: $ce $82
	sub a                                            ; $5c3e: $97
	ld h, b                                          ; $5c3f: $60
	jr nc, jr_025_5c5a                               ; $5c40: $30 $18

	inc e                                            ; $5c42: $1c
	ld c, $8f                                        ; $5c43: $0e $8f
	adc l                                            ; $5c45: $8d
	add l                                            ; $5c46: $85
	reti                                             ; $5c47: $d9


	rst $38                                          ; $5c48: $ff
	ei                                               ; $5c49: $fb
	sbc l                                            ; $5c4a: $9d
	add b                                            ; $5c4b: $80
	ldh [$d9], a                                     ; $5c4c: $e0 $d9
	rst $38                                          ; $5c4e: $ff
	add b                                            ; $5c4f: $80
	add $e7                                          ; $5c50: $c6 $e7
	ld h, e                                          ; $5c52: $63
	ld [hl], e                                       ; $5c53: $73
	add hl, sp                                       ; $5c54: $39
	dec a                                            ; $5c55: $3d
	ld e, $1f                                        ; $5c56: $1e $1f
	rst $38                                          ; $5c58: $ff
	db $fd                                           ; $5c59: $fd

jr_025_5c5a:
	cp $fe                                           ; $5c5a: $fe $fe
	rst AddAOntoHL                                          ; $5c5c: $ef
	rst SubAFromBC                                          ; $5c5d: $e7
	di                                               ; $5c5e: $f3
	pop af                                           ; $5c5f: $f1
	rlca                                             ; $5c60: $07
	rlca                                             ; $5c61: $07
	add e                                            ; $5c62: $83
	jp nz, $b8f1                                     ; $5c63: $c2 $f1 $b8

	sbc [hl]                                         ; $5c66: $9e
	add a                                            ; $5c67: $87
	db $fd                                           ; $5c68: $fd
	db $fc                                           ; $5c69: $fc
	cp $7e                                           ; $5c6a: $fe $7e
	ccf                                              ; $5c6c: $3f
	rrca                                             ; $5c6d: $0f
	add a                                            ; $5c6e: $87
	adc [hl]                                         ; $5c6f: $8e
	add c                                            ; $5c70: $81
	ld e, a                                          ; $5c71: $5f
	rst GetHLinHL                                          ; $5c72: $cf
	cp $ff                                           ; $5c73: $fe $ff

jr_025_5c75:
	ld a, $9c                                        ; $5c75: $3e $9c
	adc a                                            ; $5c77: $8f
	ld b, b                                          ; $5c78: $40
	adc $c3                                          ; $5c79: $ce $c3
	ld h, b                                          ; $5c7b: $60
	jr nc, jr_025_5c97                               ; $5c7c: $30 $19

	add e                                            ; $5c7e: $83
	add c                                            ; $5c7f: $81
	ret nz                                           ; $5c80: $c0

	ld [hl], e                                       ; $5c81: $73
	jp nz, $80df                                     ; $5c82: $c2 $df $80

	ld l, a                                          ; $5c85: $6f
	cp d                                             ; $5c86: $ba
	ld a, e                                          ; $5c87: $7b
	ld sp, hl                                        ; $5c88: $f9
	sbc $12                                          ; $5c89: $de $12
	db $dd                                           ; $5c8b: $dd
	ld [hl-], a                                      ; $5c8c: $32
	sbc [hl]                                         ; $5c8d: $9e
	ld h, d                                          ; $5c8e: $62
	jp c, $961a                                      ; $5c8f: $da $1a $96

	ld a, [hl-]                                      ; $5c92: $3a
	add $c6                                          ; $5c93: $c6 $c6
	ld b, d                                          ; $5c95: $42
	ld h, e                                          ; $5c96: $63

jr_025_5c97:
	ld hl, $1031                                     ; $5c97: $21 $31 $10
	jr jr_025_5c75                                   ; $5c9a: $18 $d9

	rst $38                                          ; $5c9c: $ff
	adc d                                            ; $5c9d: $8a
	ld hl, sp-$44                                    ; $5c9e: $f8 $bc
	cp a                                             ; $5ca0: $bf
	ld e, a                                          ; $5ca1: $5f
	ld e, a                                          ; $5ca2: $5f
	cpl                                              ; $5ca3: $2f
	xor a                                            ; $5ca4: $af
	sbc a                                            ; $5ca5: $9f
	rst SubAFromDE                                          ; $5ca6: $df
	rst SubAFromBC                                          ; $5ca7: $e7
	di                                               ; $5ca8: $f3
	ld hl, sp-$04                                    ; $5ca9: $f8 $fc
	cp $ff                                           ; $5cab: $fe $ff
	rst $38                                          ; $5cad: $ff
	rrca                                             ; $5cae: $0f
	rrca                                             ; $5caf: $0f
	rlca                                             ; $5cb0: $07
	jp $77fb                                         ; $5cb1: $c3 $fb $77


	add sp, $7b                                      ; $5cb4: $e8 $7b
	ldh a, [c]                                       ; $5cb6: $f2
	sub c                                            ; $5cb7: $91
	ld a, $07                                        ; $5cb8: $3e $07
	nop                                              ; $5cba: $00
	add b                                            ; $5cbb: $80
	pop bc                                           ; $5cbc: $c1
	ldh [rP1], a                                     ; $5cbd: $e0 $00
	add b                                            ; $5cbf: $80
	ret nz                                           ; $5cc0: $c0

	ldh [$f0], a                                     ; $5cc1: $e0 $f0
	ld hl, sp-$40                                    ; $5cc3: $f8 $c0
	jr nz, @-$03                                     ; $5cc5: $20 $fb

	sub h                                            ; $5cc7: $94
	ldh [rAUD1LEN], a                                ; $5cc8: $e0 $11
	ld d, $00                                        ; $5cca: $16 $00
	inc bc                                           ; $5ccc: $03
	rlca                                             ; $5ccd: $07
	ld bc, $6000                                     ; $5cce: $01 $00 $60

jr_025_5cd1:
	nop                                              ; $5cd1: $00
	dec de                                           ; $5cd2: $1b
	ld h, a                                          ; $5cd3: $67
	sbc h                                            ; $5cd4: $9c
	sbc e                                            ; $5cd5: $9b
	ld bc, $0381                                     ; $5cd6: $01 $81 $03
	inc bc                                           ; $5cd9: $03
	ld a, e                                          ; $5cda: $7b
	sub $fe                                          ; $5cdb: $d6 $fe
	rst SubAFromDE                                          ; $5cdd: $df
	ld bc, $039c                                     ; $5cde: $01 $9c $03
	ld h, d                                          ; $5ce1: $62
	ldh [c], a                                       ; $5ce2: $e2
	sbc $c2                                          ; $5ce3: $de $c2
	rst SubAFromDE                                          ; $5ce5: $df
	jp nc, $d39a                                     ; $5ce6: $d2 $9a $d3

	ld a, [hl-]                                      ; $5ce9: $3a
	ld a, [hl-]                                      ; $5cea: $3a
	ld a, d                                          ; $5ceb: $7a
	ld a, [hl]                                       ; $5cec: $7e
	sbc $fe                                          ; $5ced: $de $fe
	ld l, e                                          ; $5cef: $6b
	jr nc, jr_025_5cd1                               ; $5cf0: $30 $df

	ld bc, $f867                                     ; $5cf2: $01 $67 $f8
	sub a                                            ; $5cf5: $97
	ld bc, $0c02                                     ; $5cf6: $01 $02 $0c
	ld de, $bf63                                     ; $5cf9: $11 $63 $bf
	dec b                                            ; $5cfc: $05
	ld [de], a                                       ; $5cfd: $12
	ld a, e                                          ; $5cfe: $7b
	ld hl, sp-$6a                                    ; $5cff: $f8 $96
	db $10                                           ; $5d01: $10
	ld h, c                                          ; $5d02: $61
	jp $1eff                                         ; $5d03: $c3 $ff $1e


	ldh [$60], a                                     ; $5d06: $e0 $60
	ldh [$c0], a                                     ; $5d08: $e0 $c0
	ld [hl], a                                       ; $5d0a: $77
	push bc                                          ; $5d0b: $c5
	sbc h                                            ; $5d0c: $9c
	ldh [rAUD4LEN], a                                ; $5d0d: $e0 $20
	ld h, b                                          ; $5d0f: $60
	ld [hl], e                                       ; $5d10: $73
	ld hl, sp-$79                                    ; $5d11: $f8 $87
	ld [$6404], sp                                   ; $5d13: $08 $04 $64
	ldh a, [c]                                       ; $5d16: $f2
	or d                                             ; $5d17: $b2
	ld e, c                                          ; $5d18: $59
	add hl, sp                                       ; $5d19: $39
	xor h                                            ; $5d1a: $ac
	rst $38                                          ; $5d1b: $ff
	rst $38                                          ; $5d1c: $ff
	sbc a                                            ; $5d1d: $9f
	adc a                                            ; $5d1e: $8f
	rst GetHLinHL                                          ; $5d1f: $cf
	rst SubAFromBC                                          ; $5d20: $e7
	rst SubAFromBC                                          ; $5d21: $e7
	ld [hl], e                                       ; $5d22: $73
	ld c, a                                          ; $5d23: $4f
	ld l, a                                          ; $5d24: $6f
	daa                                              ; $5d25: $27
	scf                                              ; $5d26: $37
	dec de                                           ; $5d27: $1b
	dec de                                           ; $5d28: $1b
	adc l                                            ; $5d29: $8d
	adc a                                            ; $5d2a: $8f
	pop de                                           ; $5d2b: $d1
	rst $38                                          ; $5d2c: $ff
	sbc l                                            ; $5d2d: $9d
	ldh [$f8], a                                     ; $5d2e: $e0 $f8
	ld a, e                                          ; $5d30: $7b
	ld d, e                                          ; $5d31: $53
	sbc e                                            ; $5d32: $9b
	rst $38                                          ; $5d33: $ff
	cp a                                             ; $5d34: $bf
	adc a                                            ; $5d35: $8f
	db $fc                                           ; $5d36: $fc
	ld e, [hl]                                       ; $5d37: $5e
	ret z                                            ; $5d38: $c8

	sbc l                                            ; $5d39: $9d
	add b                                            ; $5d3a: $80
	ldh a, [$7b]                                     ; $5d3b: $f0 $7b
	db $ed                                           ; $5d3d: $ed
	ld a, e                                          ; $5d3e: $7b
	ld sp, hl                                        ; $5d3f: $f9
	ld a, e                                          ; $5d40: $7b
	ld d, c                                          ; $5d41: $51
	ld h, [hl]                                       ; $5d42: $66
	cp b                                             ; $5d43: $b8
	add e                                            ; $5d44: $83
	ld hl, sp-$01                                    ; $5d45: $f8 $ff
	ld b, $0c                                        ; $5d47: $06 $0c
	jr jr_025_5d63                                   ; $5d49: $18 $18

	jr c, jr_025_5dbd                                ; $5d4b: $38 $70

	ldh a, [$f0]                                     ; $5d4d: $f0 $f0
	rlca                                             ; $5d4f: $07
	rrca                                             ; $5d50: $0f
	rrca                                             ; $5d51: $0f
	rra                                              ; $5d52: $1f
	ccf                                              ; $5d53: $3f
	ccf                                              ; $5d54: $3f
	ld a, a                                          ; $5d55: $7f
	rst $38                                          ; $5d56: $ff
	db $d3                                           ; $5d57: $d3
	ld c, e                                          ; $5d58: $4b
	ld e, e                                          ; $5d59: $5b
	ld e, e                                          ; $5d5a: $5b
	dec sp                                           ; $5d5b: $3b
	add hl, hl                                       ; $5d5c: $29
	xor l                                            ; $5d5d: $ad
	xor [hl]                                         ; $5d5e: $ae
	db $fd                                           ; $5d5f: $fd
	db $fd                                           ; $5d60: $fd
	sbc $ed                                          ; $5d61: $de $ed

jr_025_5d63:
	adc d                                            ; $5d63: $8a
	cp $77                                           ; $5d64: $fe $77
	halt                                             ; $5d66: $76
	ld [bc], a                                       ; $5d67: $02
	inc b                                            ; $5d68: $04
	add hl, bc                                       ; $5d69: $09
	inc hl                                           ; $5d6a: $23
	add $8c                                          ; $5d6b: $c6 $8c
	ld [$0238], sp                                   ; $5d6d: $08 $38 $02
	inc b                                            ; $5d70: $04
	ld [$e231], sp                                   ; $5d71: $08 $31 $e2
	call nz, Call_025_7818                           ; $5d74: $c4 $18 $78
	inc l                                            ; $5d77: $2c
	or b                                             ; $5d78: $b0
	ld [hl], d                                       ; $5d79: $72
	cp l                                             ; $5d7a: $bd
	sbc h                                            ; $5d7b: $9c
	nop                                              ; $5d7c: $00
	inc e                                            ; $5d7d: $1c
	ld [hl], b                                       ; $5d7e: $70
	ld l, a                                          ; $5d7f: $6f
	ld hl, sp-$79                                    ; $5d80: $f8 $87
	call c, $ea56                                    ; $5d82: $dc $56 $ea
	or a                                             ; $5d85: $b7
	ld [hl], l                                       ; $5d86: $75
	ld e, d                                          ; $5d87: $5a
	xor c                                            ; $5d88: $a9
	sbc l                                            ; $5d89: $9d
	inc sp                                           ; $5d8a: $33
	cp c                                             ; $5d8b: $b9
	sbc l                                            ; $5d8c: $9d
	call z, $e7ce                                    ; $5d8d: $cc $ce $e7
	ld [hl], a                                       ; $5d90: $77
	ld [hl], e                                       ; $5d91: $73
	ld b, a                                          ; $5d92: $47
	ld h, a                                          ; $5d93: $67
	inc hl                                           ; $5d94: $23
	inc sp                                           ; $5d95: $33
	inc e                                            ; $5d96: $1c
	adc b                                            ; $5d97: $88
	ld c, b                                          ; $5d98: $48
	sbc b                                            ; $5d99: $98
	call c, $9dff                                    ; $5d9a: $dc $ff $9d
	ld a, a                                          ; $5d9d: $7f
	cp a                                             ; $5d9e: $bf
	ret c                                            ; $5d9f: $d8

	rst $38                                          ; $5da0: $ff
	ld a, [hl]                                       ; $5da1: $7e
	halt                                             ; $5da2: $76
	db $db                                           ; $5da3: $db
	add b                                            ; $5da4: $80
	rst SubAFromDE                                          ; $5da5: $df
	rst $38                                          ; $5da6: $ff
	sbc l                                            ; $5da7: $9d
	cp $f8                                           ; $5da8: $fe $f8
	db $dd                                           ; $5daa: $dd
	ldh [$9c], a                                     ; $5dab: $e0 $9c
	rst $38                                          ; $5dad: $ff
	db $fc                                           ; $5dae: $fc
	ld [hl], b                                       ; $5daf: $70
	db $fc                                           ; $5db0: $fc
	rst SubAFromDE                                          ; $5db1: $df
	rst $38                                          ; $5db2: $ff
	sbc l                                            ; $5db3: $9d
	rlca                                             ; $5db4: $07
	inc bc                                           ; $5db5: $03
	db $dd                                           ; $5db6: $dd
	ld bc, $97f9                                     ; $5db7: $01 $f9 $97
	pop af                                           ; $5dba: $f1
	sbc c                                            ; $5dbb: $99
	sbc b                                            ; $5dbc: $98

jr_025_5dbd:
	sbc b                                            ; $5dbd: $98
	adc h                                            ; $5dbe: $8c
	call $ccc6                                       ; $5dbf: $cd $c6 $cc
	ld a, d                                          ; $5dc2: $7a
	push hl                                          ; $5dc3: $e5
	sbc $ff                                          ; $5dc4: $de $ff
	adc e                                            ; $5dc6: $8b
	cp $fc                                           ; $5dc7: $fe $fc
	call c, $f1f0                                    ; $5dc9: $dc $f0 $f1
	db $e3                                           ; $5dcc: $e3
	add l                                            ; $5dcd: $85
	add hl, bc                                       ; $5dce: $09
	ld [hl], l                                       ; $5dcf: $75
	db $dd                                           ; $5dd0: $dd
	inc a                                            ; $5dd1: $3c
	add hl, de                                       ; $5dd2: $19
	inc hl                                           ; $5dd3: $23
	ld b, a                                          ; $5dd4: $47
	adc a                                            ; $5dd5: $8f
	rra                                              ; $5dd6: $1f
	ld a, $66                                        ; $5dd7: $3e $66
	ld a, a                                          ; $5dd9: $7f
	rst $38                                          ; $5dda: $ff
	db $dd                                           ; $5ddb: $dd
	ld a, a                                          ; $5ddc: $7f
	ld a, a                                          ; $5ddd: $7f
	daa                                              ; $5dde: $27
	sbc [hl]                                         ; $5ddf: $9e
	rst $38                                          ; $5de0: $ff
	db $db                                           ; $5de1: $db
	add b                                            ; $5de2: $80
	sbc b                                            ; $5de3: $98
	ret nz                                           ; $5de4: $c0

	rst $38                                          ; $5de5: $ff
	di                                               ; $5de6: $f3
	pop af                                           ; $5de7: $f1
	ld sp, hl                                        ; $5de8: $f9
	ld hl, sp-$04                                    ; $5de9: $f8 $fc
	ld a, d                                          ; $5deb: $7a
	ld h, [hl]                                       ; $5dec: $66
	ld a, [$237f]                                    ; $5ded: $fa $7f $23
	add b                                            ; $5df0: $80
	ld hl, sp-$14                                    ; $5df1: $f8 $ec
	or $fb                                           ; $5df3: $f6 $fb
	ld a, l                                          ; $5df5: $7d
	ld a, l                                          ; $5df6: $7d
	ret nz                                           ; $5df7: $c0

	ld h, b                                          ; $5df8: $60
	ld a, b                                          ; $5df9: $78
	inc a                                            ; $5dfa: $3c
	ld e, $17                                        ; $5dfb: $1e $17
	dec bc                                           ; $5dfd: $0b
	ld a, [bc]                                       ; $5dfe: $0a
	call nc, $a4ca                                   ; $5dff: $d4 $ca $a4
	sub $73                                          ; $5e02: $d6 $73
	inc hl                                           ; $5e04: $23
	ld [hl], $1c                                     ; $5e05: $36 $1c
	dec sp                                           ; $5e07: $3b
	cp l                                             ; $5e08: $bd
	rst SubAFromDE                                          ; $5e09: $df
	rst AddAOntoHL                                          ; $5e0a: $ef
	ld l, a                                          ; $5e0b: $6f
	ccf                                              ; $5e0c: $3f
	ccf                                              ; $5e0d: $3f
	rra                                              ; $5e0e: $1f
	pop af                                           ; $5e0f: $f1
	sbc b                                            ; $5e10: $98
	ld h, c                                          ; $5e11: $61
	ld h, e                                          ; $5e12: $63
	jp $0383                                         ; $5e13: $c3 $83 $03


	rlca                                             ; $5e16: $07
	ld b, $db                                        ; $5e17: $06 $db
	rst $38                                          ; $5e19: $ff
	ld a, a                                          ; $5e1a: $7f
	and b                                            ; $5e1b: $a0
	sbc $ff                                          ; $5e1c: $de $ff
	sbc l                                            ; $5e1e: $9d
	rst SubAFromBC                                          ; $5e1f: $e7
	pop bc                                           ; $5e20: $c1
	ld a, e                                          ; $5e21: $7b
	dec [hl]                                         ; $5e22: $35
	rst SubAFromDE                                          ; $5e23: $df
	add b                                            ; $5e24: $80
	sbc h                                            ; $5e25: $9c
	sbc h                                            ; $5e26: $9c
	and e                                            ; $5e27: $a3
	ret nz                                           ; $5e28: $c0

	ld a, e                                          ; $5e29: $7b
	ld hl, sp-$21                                    ; $5e2a: $f8 $df
	ldh a, [$7a]                                     ; $5e2c: $f0 $7a
	ld h, $9c                                        ; $5e2e: $26 $9c
	ld a, h                                          ; $5e30: $7c
	ld e, $07                                        ; $5e31: $1e $07
	ld [hl], e                                       ; $5e33: $73
	or h                                             ; $5e34: $b4
	sbc l                                            ; $5e35: $9d
	jr nc, jr_025_5e44                               ; $5e36: $30 $0c

	ld [hl], e                                       ; $5e38: $73
	ld h, h                                          ; $5e39: $64
	sbc e                                            ; $5e3a: $9b
	rlca                                             ; $5e3b: $07
	ld a, a                                          ; $5e3c: $7f
	rst $38                                          ; $5e3d: $ff
	rst SubAFromBC                                          ; $5e3e: $e7
	halt                                             ; $5e3f: $76
	ld h, e                                          ; $5e40: $63
	add b                                            ; $5e41: $80
	rlca                                             ; $5e42: $07
	ccf                                              ; $5e43: $3f

jr_025_5e44:
	rst SubAFromDE                                          ; $5e44: $df
	and a                                            ; $5e45: $a7
	ret nc                                           ; $5e46: $d0

	pop hl                                           ; $5e47: $e1
	jp $0985                                         ; $5e48: $c3 $85 $09


	cp b                                             ; $5e4b: $b8
	ld hl, sp-$04                                    ; $5e4c: $f8 $fc
	ld a, c                                          ; $5e4e: $79
	ld [hl], e                                       ; $5e4f: $73
	ld h, a                                          ; $5e50: $67
	rst GetHLinHL                                          ; $5e51: $cf
	sbc a                                            ; $5e52: $9f
	rst $38                                          ; $5e53: $ff
	rst AddAOntoHL                                          ; $5e54: $ef
	rst JumpTable                                          ; $5e55: $c7
	cp e                                             ; $5e56: $bb
	ld [hl], $15                                     ; $5e57: $36 $15
	dec de                                           ; $5e59: $1b
	xor b                                            ; $5e5a: $a8
	sub c                                            ; $5e5b: $91
	call nz, $c6d0                                   ; $5e5c: $c4 $d0 $c6
	jp $9ae3                                         ; $5e5f: $c3 $e3 $9a


	pop hl                                           ; $5e62: $e1
	pop de                                           ; $5e63: $d1
	ret z                                            ; $5e64: $c8

	add sp, $64                                      ; $5e65: $e8 $64
	ld [hl], a                                       ; $5e67: $77
	ld a, [bc]                                       ; $5e68: $0a
	ld a, a                                          ; $5e69: $7f
	ld h, d                                          ; $5e6a: $62
	sbc l                                            ; $5e6b: $9d
	ld a, a                                          ; $5e6c: $7f
	rst SubAFromDE                                          ; $5e6d: $df
	sbc $40                                          ; $5e6e: $de $40
	rst SubAFromDE                                          ; $5e70: $df
	and b                                            ; $5e71: $a0
	sbc h                                            ; $5e72: $9c
	ldh [$d0], a                                     ; $5e73: $e0 $d0
	ld [hl], b                                       ; $5e75: $70
	ld [hl], e                                       ; $5e76: $73
	add hl, sp                                       ; $5e77: $39
	ld h, c                                          ; $5e78: $61
	ld c, b                                          ; $5e79: $48
	rst $38                                          ; $5e7a: $ff
	ld a, e                                          ; $5e7b: $7b
	ld a, l                                          ; $5e7c: $7d
	ld a, d                                          ; $5e7d: $7a
	ld b, a                                          ; $5e7e: $47
	sbc l                                            ; $5e7f: $9d
	rst JumpTable                                          ; $5e80: $c7
	rst SubAFromBC                                          ; $5e81: $e7
	sbc $04                                          ; $5e82: $de $04
	rst SubAFromDE                                          ; $5e84: $df
	ld [bc], a                                       ; $5e85: $02
	sbc $01                                          ; $5e86: $de $01
	sbc l                                            ; $5e88: $9d
	jr @+$32                                         ; $5e89: $18 $30

	ld l, [hl]                                       ; $5e8b: $6e
	jr z, jr_025_5f0c                                ; $5e8c: $28 $7e

	add e                                            ; $5e8e: $83
	ld a, a                                          ; $5e8f: $7f
	ret                                              ; $5e90: $c9


	db $dd                                           ; $5e91: $dd
	rst $38                                          ; $5e92: $ff
	sbc [hl]                                         ; $5e93: $9e
	ld c, $7a                                        ; $5e94: $0e $7a
	ld a, c                                          ; $5e96: $79
	db $dd                                           ; $5e97: $dd
	ld a, a                                          ; $5e98: $7f
	sbc $f8                                          ; $5e99: $de $f8
	ld a, [hl]                                       ; $5e9b: $7e
	rlca                                             ; $5e9c: $07
	sub c                                            ; $5e9d: $91
	ret nz                                           ; $5e9e: $c0

	pop bc                                           ; $5e9f: $c1
	ret nz                                           ; $5ea0: $c0

	rra                                              ; $5ea1: $1f
	rrca                                             ; $5ea2: $0f
	rrca                                             ; $5ea3: $0f
	add a                                            ; $5ea4: $87
	jp $f0e1                                         ; $5ea5: $c3 $e1 $f0


	ld hl, sp+$08                                    ; $5ea8: $f8 $08
	ld c, $0f                                        ; $5eaa: $0e $0f
	ld a, d                                          ; $5eac: $7a
	rst SubAFromHL                                          ; $5ead: $d7
	ld a, a                                          ; $5eae: $7f
	ld l, l                                          ; $5eaf: $6d
	sbc l                                            ; $5eb0: $9d
	inc bc                                           ; $5eb1: $03
	pop hl                                           ; $5eb2: $e1
	ld [hl], e                                       ; $5eb3: $73
	ld de, $7e83                                     ; $5eb4: $11 $83 $7e
	ld bc, $8001                                     ; $5eb7: $01 $01 $80
	ldh [$b0], a                                     ; $5eba: $e0 $b0
	ld d, b                                          ; $5ebc: $50
	xor b                                            ; $5ebd: $a8
	ld e, b                                          ; $5ebe: $58
	jp $8f87                                         ; $5ebf: $c3 $87 $8f


	rst SubAFromDE                                          ; $5ec2: $df
	rst $38                                          ; $5ec3: $ff
	ld a, l                                          ; $5ec4: $7d
	ld a, c                                          ; $5ec5: $79
	ld a, a                                          ; $5ec6: $7f
	ld b, e                                          ; $5ec7: $43
	add e                                            ; $5ec8: $83
	add l                                            ; $5ec9: $85
	adc e                                            ; $5eca: $8b
	ld d, [hl]                                       ; $5ecb: $56
	ld l, h                                          ; $5ecc: $6c
	jr c, jr_025_5eff                                ; $5ecd: $38 $30

	cp h                                             ; $5ecf: $bc
	sbc [hl]                                         ; $5ed0: $9e
	adc a                                            ; $5ed1: $8f
	ld a, e                                          ; $5ed2: $7b
	cp [hl]                                          ; $5ed3: $be
	sbc e                                            ; $5ed4: $9b
	db $fc                                           ; $5ed5: $fc
	ldh a, [hDisp0_OBP1]                                     ; $5ed6: $f0 $87
	add e                                            ; $5ed8: $83
	ld a, e                                          ; $5ed9: $7b
	jp nc, $0380                                     ; $5eda: $d2 $80 $03

	rrca                                             ; $5edd: $0f
	ld a, a                                          ; $5ede: $7f
	add $aa                                          ; $5edf: $c6 $aa
	ld d, b                                          ; $5ee1: $50
	ld [hl], l                                       ; $5ee2: $75
	jp hl                                            ; $5ee3: $e9


	cp d                                             ; $5ee4: $ba
	ld d, h                                          ; $5ee5: $54
	dec [hl]                                         ; $5ee6: $35
	ld [hl], b                                       ; $5ee7: $70
	ld [hl], b                                       ; $5ee8: $70
	cp b                                             ; $5ee9: $b8
	sbc b                                            ; $5eea: $98
	sbc h                                            ; $5eeb: $9c
	call z, $eeee                                    ; $5eec: $cc $ee $ee
	cpl                                              ; $5eef: $2f
	cpl                                              ; $5ef0: $2f
	ld e, a                                          ; $5ef1: $5f
	rra                                              ; $5ef2: $1f
	xor e                                            ; $5ef3: $ab
	ld c, a                                          ; $5ef4: $4f
	ld d, a                                          ; $5ef5: $57
	scf                                              ; $5ef6: $37
	ld a, b                                          ; $5ef7: $78
	ld a, b                                          ; $5ef8: $78
	jr c, jr_025_5f33                                ; $5ef9: $38 $38

	sbc e                                            ; $5efb: $9b
	inc e                                            ; $5efc: $1c
	sbc h                                            ; $5efd: $9c
	adc [hl]                                         ; $5efe: $8e

jr_025_5eff:
	adc $4c                                          ; $5eff: $ce $4c
	xor b                                            ; $5f01: $a8
	rst $38                                          ; $5f02: $ff
	sbc [hl]                                         ; $5f03: $9e
	db $e3                                           ; $5f04: $e3
	ld l, [hl]                                       ; $5f05: $6e
	or b                                             ; $5f06: $b0
	sbc [hl]                                         ; $5f07: $9e
	db $fc                                           ; $5f08: $fc
	ld sp, hl                                        ; $5f09: $f9
	dec de                                           ; $5f0a: $1b
	nop                                              ; $5f0b: $00

jr_025_5f0c:
	sbc c                                            ; $5f0c: $99
	nop                                              ; $5f0d: $00
	inc de                                           ; $5f0e: $13
	inc sp                                           ; $5f0f: $33
	inc sp                                           ; $5f10: $33
	jr nc, jr_025_5f13                               ; $5f11: $30 $00

jr_025_5f13:
	ld [hl], e                                       ; $5f13: $73
	ld a, [$119e]                                    ; $5f14: $fa $9e $11
	ld [hl], a                                       ; $5f17: $77
	ld a, [$1198]                                    ; $5f18: $fa $98 $11
	stop                                             ; $5f1b: $10 $00
	ld de, $3133                                     ; $5f1d: $11 $33 $31
	ld de, $f46f                                     ; $5f20: $11 $6f $f4
	ld l, e                                          ; $5f23: $6b
	ld a, [$030e]                                    ; $5f24: $fa $0e $03

jr_025_5f27:
	rst JumpTable                                          ; $5f27: $c7
	pop af                                           ; $5f28: $f1
	cp $7f                                           ; $5f29: $fe $7f
	rst SubAFromDE                                          ; $5f2b: $df
	rst FarCall                                          ; $5f2c: $f7
	db $fd                                           ; $5f2d: $fd
	rst $38                                          ; $5f2e: $ff
	ccf                                              ; $5f2f: $3f
	ret nz                                           ; $5f30: $c0

	adc [hl]                                         ; $5f31: $8e
	inc bc                                           ; $5f32: $03

jr_025_5f33:
	call nc, $9eff                                   ; $5f33: $d4 $ff $9e
	cp $7b                                           ; $5f36: $fe $7b
	cp $da                                           ; $5f38: $fe $da
	rst $38                                          ; $5f3a: $ff
	sub a                                            ; $5f3b: $97
	push af                                          ; $5f3c: $f5
	cp $fc                                           ; $5f3d: $fe $fc
	xor b                                            ; $5f3f: $a8
	ld sp, hl                                        ; $5f40: $f9
	xor e                                            ; $5f41: $ab
	xor e                                            ; $5f42: $ab
	xor c                                            ; $5f43: $a9
	reti                                             ; $5f44: $d9


	rst $38                                          ; $5f45: $ff
	sub a                                            ; $5f46: $97
	cp a                                             ; $5f47: $bf
	ld a, a                                          ; $5f48: $7f
	ld e, a                                          ; $5f49: $5f
	ccf                                              ; $5f4a: $3f
	ccf                                              ; $5f4b: $3f
	sbc a                                            ; $5f4c: $9f
	cpl                                              ; $5f4d: $2f
	sbc a                                            ; $5f4e: $9f
	db $dd                                           ; $5f4f: $dd
	cp $73                                           ; $5f50: $fe $73
	rst SubAFromHL                                          ; $5f52: $d7
	ld l, e                                          ; $5f53: $6b
	call nc, $a780                                   ; $5f54: $d4 $80 $a7
	xor l                                            ; $5f57: $ad
	db $fd                                           ; $5f58: $fd
	and a                                            ; $5f59: $a7
	db $db                                           ; $5f5a: $db
	rst FarCall                                          ; $5f5b: $f7
	db $eb                                           ; $5f5c: $eb
	ld a, $77                                        ; $5f5d: $3e $77
	ld l, $bd                                        ; $5f5f: $2e $bd
	ld h, e                                          ; $5f61: $63
	db $e3                                           ; $5f62: $e3
	pop hl                                           ; $5f63: $e1
	add c                                            ; $5f64: $81
	nop                                              ; $5f65: $00
	scf                                              ; $5f66: $37
	rrca                                             ; $5f67: $0f
	ccf                                              ; $5f68: $3f
	rlca                                             ; $5f69: $07
	dec de                                           ; $5f6a: $1b
	rlca                                             ; $5f6b: $07
	rra                                              ; $5f6c: $1f
	inc bc                                           ; $5f6d: $03
	rra                                              ; $5f6e: $1f
	inc bc                                           ; $5f6f: $03
	dec c                                            ; $5f70: $0d
	inc bc                                           ; $5f71: $03
	rrca                                             ; $5f72: $0f
	ld bc, $9e87                                     ; $5f73: $01 $87 $9e
	add e                                            ; $5f76: $83
	push de                                          ; $5f77: $d5
	rst $38                                          ; $5f78: $ff
	sbc h                                            ; $5f79: $9c
	ld a, a                                          ; $5f7a: $7f
	rst $38                                          ; $5f7b: $ff
	ccf                                              ; $5f7c: $3f
	jp z, $95ff                                      ; $5f7d: $ca $ff $95

	db $fd                                           ; $5f80: $fd
	rst $38                                          ; $5f81: $ff
	db $ed                                           ; $5f82: $ed
	rst $38                                          ; $5f83: $ff
	or a                                             ; $5f84: $b7
	db $fd                                           ; $5f85: $fd
	cp $d5                                           ; $5f86: $fe $d5
	ld a, [$dde5]                                    ; $5f88: $fa $e5 $dd
	rst $38                                          ; $5f8b: $ff
	sub e                                            ; $5f8c: $93
	rst FarCall                                          ; $5f8d: $f7
	rst $38                                          ; $5f8e: $ff
	db $ed                                           ; $5f8f: $ed
	sbc $d7                                          ; $5f90: $de $d7
	cp c                                             ; $5f92: $b9
	and [hl]                                         ; $5f93: $a6
	ld a, [hl]                                       ; $5f94: $7e
	db $fd                                           ; $5f95: $fd
	ld a, b                                          ; $5f96: $78
	ld [$db60], a                                    ; $5f97: $ea $60 $db
	rst $38                                          ; $5f9a: $ff
	adc a                                            ; $5f9b: $8f
	di                                               ; $5f9c: $f3
	rrca                                             ; $5f9d: $0f
	adc $f1                                          ; $5f9e: $ce $f1
	cp $7f                                           ; $5fa0: $fe $7f
	ld e, l                                          ; $5fa2: $5d
	ld h, e                                          ; $5fa3: $63
	xor a                                            ; $5fa4: $af
	jr nc, jr_025_5f27                               ; $5fa5: $30 $80

	ret nz                                           ; $5fa7: $c0

	ret nz                                           ; $5fa8: $c0

	ldh [$f0], a                                     ; $5fa9: $e0 $f0
	ld hl, sp-$23                                    ; $5fab: $f8 $dd
	rst $38                                          ; $5fad: $ff
	ld a, a                                          ; $5fae: $7f
	or h                                             ; $5faf: $b4
	add b                                            ; $5fb0: $80
	sbc a                                            ; $5fb1: $9f
	rst $38                                          ; $5fb2: $ff
	ld h, e                                          ; $5fb3: $63
	rst $38                                          ; $5fb4: $ff
	ld c, h                                          ; $5fb5: $4c
	ld c, a                                          ; $5fb6: $4f
	dec a                                            ; $5fb7: $3d
	ld [hl-], a                                      ; $5fb8: $32
	db $fc                                           ; $5fb9: $fc
	ret nz                                           ; $5fba: $c0

	pop af                                           ; $5fbb: $f1
	add b                                            ; $5fbc: $80
	rst JumpTable                                          ; $5fbd: $c7
	nop                                              ; $5fbe: $00
	sbc a                                            ; $5fbf: $9f
	add c                                            ; $5fc0: $81
	cp $87                                           ; $5fc1: $fe $87
	ei                                               ; $5fc3: $fb
	call c, $bf7f                                    ; $5fc4: $dc $7f $bf
	rst SubAFromDE                                          ; $5fc7: $df
	ccf                                              ; $5fc8: $3f
	rra                                              ; $5fc9: $1f
	rst $38                                          ; $5fca: $ff
	cpl                                              ; $5fcb: $2f
	rst $38                                          ; $5fcc: $ff
	jp $01ff                                         ; $5fcd: $c3 $ff $01


	sbc l                                            ; $5fd0: $9d
	rst $38                                          ; $5fd1: $ff
	nop                                              ; $5fd2: $00
	ld [hl], a                                       ; $5fd3: $77
	cp $80                                           ; $5fd4: $fe $80
	nop                                              ; $5fd6: $00
	ld bc, $0601                                     ; $5fd7: $01 $01 $06
	ld b, $85                                        ; $5fda: $06 $85
	add h                                            ; $5fdc: $84
	add $c4                                          ; $5fdd: $c6 $c4
	ld h, e                                          ; $5fdf: $63
	ldh [c], a                                       ; $5fe0: $e2
	ld [hl-], a                                      ; $5fe1: $32
	ldh a, [c]                                       ; $5fe2: $f2
	dec de                                           ; $5fe3: $1b
	ei                                               ; $5fe4: $fb
	rla                                              ; $5fe5: $17
	add hl, de                                       ; $5fe6: $19
	rst $38                                          ; $5fe7: $ff
	cp $ab                                           ; $5fe8: $fe $ab
	inc bc                                           ; $5fea: $03
	ld d, a                                          ; $5feb: $57
	ld b, $b9                                        ; $5fec: $06 $b9
	ld a, $7f                                        ; $5fee: $3e $7f
	ld a, a                                          ; $5ff0: $7f
	cp c                                             ; $5ff1: $b9
	ldh a, [$dc]                                     ; $5ff2: $f0 $dc
	ld a, $8c                                        ; $5ff4: $3e $8c
	push de                                          ; $5ff6: $d5
	ret nz                                           ; $5ff7: $c0

	ld a, a                                          ; $5ff8: $7f
	ld a, a                                          ; $5ff9: $7f
	jp hl                                            ; $5ffa: $e9


	sbc [hl]                                         ; $5ffb: $9e
	xor $19                                          ; $5ffc: $ee $19
	reti                                             ; $5ffe: $d9


	inc c                                            ; $5fff: $0c

Jump_025_6000:
	ld h, h                                          ; $6000: $64
	adc h                                            ; $6001: $8c
	add $e4                                          ; $6002: $c6 $e4
	ld h, e                                          ; $6004: $63
	ld [hl], $63                                     ; $6005: $36 $63
	inc a                                            ; $6007: $3c
	ldh a, [$7b]                                     ; $6008: $f0 $7b
	ld d, a                                          ; $600a: $57
	add b                                            ; $600b: $80
	ld e, h                                          ; $600c: $5c
	or e                                             ; $600d: $b3
	ld a, [hl+]                                      ; $600e: $2a
	db $dd                                           ; $600f: $dd
	or l                                             ; $6010: $b5
	ld c, [hl]                                       ; $6011: $4e
	sbc e                                            ; $6012: $9b
	ld h, [hl]                                       ; $6013: $66
	ld a, a                                          ; $6014: $7f
	rst $38                                          ; $6015: $ff
	sbc [hl]                                         ; $6016: $9e
	ld a, [hl]                                       ; $6017: $7e
	ret z                                            ; $6018: $c8

	jr c, jr_025_603f                                ; $6019: $38 $24

	call c, $fcc4                                    ; $601b: $dc $c4 $fc
	or d                                             ; $601e: $b2
	cp $5a                                           ; $601f: $fe $5a
	cp $ad                                           ; $6021: $fe $ad
	ld a, a                                          ; $6023: $7f
	rst SubAFromBC                                          ; $6024: $e7
	ld a, $67                                        ; $6025: $3e $67
	ld a, b                                          ; $6027: $78
	daa                                              ; $6028: $27
	jr c, jr_025_606e                                ; $6029: $38 $43

jr_025_602b:
	add b                                            ; $602b: $80
	ld a, h                                          ; $602c: $7c
	ld [hl], e                                       ; $602d: $73
	ld c, h                                          ; $602e: $4c
	ld [hl], e                                       ; $602f: $73
	ld c, h                                          ; $6030: $4c
	ld a, c                                          ; $6031: $79
	ld b, [hl]                                       ; $6032: $46
	ld a, l                                          ; $6033: $7d
	ld b, d                                          ; $6034: $42
	cp $c1                                           ; $6035: $fe $c1
	ldh a, [rIF]                                     ; $6037: $f0 $0f
	ld hl, sp+$07                                    ; $6039: $f8 $07
	db $fc                                           ; $603b: $fc
	inc bc                                           ; $603c: $03
	db $fc                                           ; $603d: $fc
	inc bc                                           ; $603e: $03

jr_025_603f:
	cp $01                                           ; $603f: $fe $01
	cp $01                                           ; $6041: $fe $01
	ret nz                                           ; $6043: $c0

	ccf                                              ; $6044: $3f
	ldh [$1f], a                                     ; $6045: $e0 $1f
	ld b, b                                          ; $6047: $40
	ret nz                                           ; $6048: $c0

	jr nz, jr_025_602b                               ; $6049: $20 $e0

	ld a, a                                          ; $604b: $7f
	cp $87                                           ; $604c: $fe $87
	db $10                                           ; $604e: $10
	ldh a, [$08]                                     ; $604f: $f0 $08
	ld hl, sp+$08                                    ; $6051: $f8 $08
	ld hl, sp+$04                                    ; $6053: $f8 $04
	db $fc                                           ; $6055: $fc
	inc b                                            ; $6056: $04
	db $fc                                           ; $6057: $fc
	rrca                                             ; $6058: $0f
	cp $0f                                           ; $6059: $fe $0f
	db $fc                                           ; $605b: $fc
	sbc a                                            ; $605c: $9f
	ld hl, sp+$5f                                    ; $605d: $f8 $5f
	di                                               ; $605f: $f3

Jump_025_6060:
	ld a, a                                          ; $6060: $7f
	db $fc                                           ; $6061: $fc
	ld a, a                                          ; $6062: $7f
	ldh a, [$7f]                                     ; $6063: $f0 $7f
	jp $247b                                         ; $6065: $c3 $7b $24


	add b                                            ; $6068: $80
	cpl                                              ; $6069: $2f
	push af                                          ; $606a: $f5
	cpl                                              ; $606b: $2f
	rst $38                                          ; $606c: $ff
	rst $38                                          ; $606d: $ff

jr_025_606e:
	ld b, c                                          ; $606e: $41
	add b                                            ; $606f: $80
	rla                                              ; $6070: $17
	rrca                                             ; $6071: $0f
	cp e                                             ; $6072: $bb
	ld a, h                                          ; $6073: $7c
	pop de                                           ; $6074: $d1
	ldh [rLY], a                                     ; $6075: $e0 $44
	add e                                            ; $6077: $83
	and a                                            ; $6078: $a7
	inc sp                                           ; $6079: $33
	rst FarCall                                          ; $607a: $f7
	sbc e                                            ; $607b: $9b
	rst FarCall                                          ; $607c: $f7
	jp c, $fd56                                      ; $607d: $da $56 $fd

	ld sp, hl                                        ; $6080: $f9
	rst $38                                          ; $6081: $ff
	di                                               ; $6082: $f3
	cp $7f                                           ; $6083: $fe $7f
	rst $38                                          ; $6085: $ff
	db $ed                                           ; $6086: $ed
	reti                                             ; $6087: $d9


	add b                                            ; $6088: $80
	pop bc                                           ; $6089: $c1
	add b                                            ; $608a: $80
	sub a                                            ; $608b: $97
	rrca                                             ; $608c: $0f
	cp c                                             ; $608d: $b9
	ld a, h                                          ; $608e: $7c
	ret z                                            ; $608f: $c8

	db $fc                                           ; $6090: $fc
	xor d                                            ; $6091: $aa
	call c, $dea8                                    ; $6092: $dc $a8 $de
	db $dd                                           ; $6095: $dd
	cp $f7                                           ; $6096: $fe $f7
	cp e                                             ; $6098: $bb
	db $db                                           ; $6099: $db
	rst FarCall                                          ; $609a: $f7
	ld a, e                                          ; $609b: $7b
	sub a                                            ; $609c: $97
	ld a, [hl-]                                      ; $609d: $3a
	rst SubAFromHL                                          ; $609e: $d7
	sbc [hl]                                         ; $609f: $9e
	ld d, e                                          ; $60a0: $53
	adc l                                            ; $60a1: $8d
	ld e, e                                          ; $60a2: $5b
	sbc l                                            ; $60a3: $9d
	ld c, e                                          ; $60a4: $4b
	sbc a                                            ; $60a5: $9f
	ld c, c                                          ; $60a6: $49
	cp a                                             ; $60a7: $bf
	sbc h                                            ; $60a8: $9c
	ret                                              ; $60a9: $c9


	rst $38                                          ; $60aa: $ff
	ret nz                                           ; $60ab: $c0

	ld a, e                                          ; $60ac: $7b
	cp $94                                           ; $60ad: $fe $94
	ldh [$bf], a                                     ; $60af: $e0 $bf
	ldh [$5f], a                                     ; $60b1: $e0 $5f
	ldh a, [$5f]                                     ; $60b3: $f0 $5f
	ld hl, sp+$4f                                    ; $60b5: $f8 $4f
	db $fc                                           ; $60b7: $fc
	ld c, a                                          ; $60b8: $4f
	cp $6f                                           ; $60b9: $fe $6f
	add b                                            ; $60bb: $80
	ld a, a                                          ; $60bc: $7f
	add h                                            ; $60bd: $84
	ld l, a                                          ; $60be: $6f
	inc de                                           ; $60bf: $13
	ld a, a                                          ; $60c0: $7f

Jump_025_60c1:
	cp $9c                                           ; $60c1: $fe $9c
	ld [bc], a                                       ; $60c3: $02
	cp $02                                           ; $60c4: $fe $02
	ld l, e                                          ; $60c6: $6b
	di                                               ; $60c7: $f3
	sbc l                                            ; $60c8: $9d
	add b                                            ; $60c9: $80
	ld a, a                                          ; $60ca: $7f
	ld [hl], a                                       ; $60cb: $77
	ld [hl], b                                       ; $60cc: $70
	ei                                               ; $60cd: $fb
	db $dd                                           ; $60ce: $dd
	add b                                            ; $60cf: $80
	ld a, a                                          ; $60d0: $7f
	ld h, [hl]                                       ; $60d1: $66
	ld [hl], a                                       ; $60d2: $77
	ld h, h                                          ; $60d3: $64
	add b                                            ; $60d4: $80
	rst $38                                          ; $60d5: $ff
	ldh [c], a                                       ; $60d6: $e2
	cp $a2                                           ; $60d7: $fe $a2
	rst $38                                          ; $60d9: $ff
	and h                                            ; $60da: $a4
	rst $38                                          ; $60db: $ff
	xor c                                            ; $60dc: $a9
	rst $38                                          ; $60dd: $ff
	sbc d                                            ; $60de: $9a
	rst $38                                          ; $60df: $ff
	sub h                                            ; $60e0: $94
	rst $38                                          ; $60e1: $ff
	call z, $e4ff                                    ; $60e2: $cc $ff $e4
	inc de                                           ; $60e5: $13
	rrca                                             ; $60e6: $0f
	rst AddAOntoHL                                          ; $60e7: $ef
	rra                                              ; $60e8: $1f
	ld [hl], l                                       ; $60e9: $75
	db $fd                                           ; $60ea: $fd
	or l                                             ; $60eb: $b5
	db $dd                                           ; $60ec: $dd
	ld [hl], a                                       ; $60ed: $77
	sbc l                                            ; $60ee: $9d
	ld l, $fe                                        ; $60ef: $2e $fe
	cp d                                             ; $60f1: $ba
	ld a, d                                          ; $60f2: $7a
	ret c                                            ; $60f3: $d8

	sub [hl]                                         ; $60f4: $96
	ld [hl], d                                       ; $60f5: $72
	cp h                                             ; $60f6: $bc
	cp [hl]                                          ; $60f7: $be
	ld a, $63                                        ; $60f8: $3e $63
	jp $4141                                         ; $60fa: $c3 $41 $41


	ret nz                                           ; $60fd: $c0

	db $dd                                           ; $60fe: $dd
	add b                                            ; $60ff: $80
	ld a, a                                          ; $6100: $7f
	ret                                              ; $6101: $c9


	rst $38                                          ; $6102: $ff
	add b                                            ; $6103: $80
	cp $de                                           ; $6104: $fe $de
	rst $38                                          ; $6106: $ff
	or c                                             ; $6107: $b1
	ret c                                            ; $6108: $d8

	sub b                                            ; $6109: $90
	ret z                                            ; $610a: $c8

	add b                                            ; $610b: $80
	ret nz                                           ; $610c: $c0

	add b                                            ; $610d: $80
	ld b, b                                          ; $610e: $40
	nop                                              ; $610f: $00
	ld b, d                                          ; $6110: $42
	ld bc, $070b                                     ; $6111: $01 $0b $07
	db $dd                                           ; $6114: $dd
	ld l, e                                          ; $6115: $6b
	cp $ab                                           ; $6116: $fe $ab
	rst SubAFromHL                                          ; $6118: $d7
	ld a, d                                          ; $6119: $7a
	ld a, a                                          ; $611a: $7f
	ld a, $37                                        ; $611b: $3e $37
	ld a, [hl-]                                      ; $611d: $3a
	ld a, a                                          ; $611e: $7f
	ld a, [bc]                                       ; $611f: $0a
	ccf                                              ; $6120: $3f
	ret                                              ; $6121: $c9


	rst $38                                          ; $6122: $ff
	add b                                            ; $6123: $80
	push bc                                          ; $6124: $c5
	xor a                                            ; $6125: $af
	ld [hl], a                                       ; $6126: $77
	xor a                                            ; $6127: $af
	ld [hl], a                                       ; $6128: $77
	rst FarCall                                          ; $6129: $f7
	ld a, e                                          ; $612a: $7b
	halt                                             ; $612b: $76
	ld a, [$fa76]                                    ; $612c: $fa $76 $fa
	xor [hl]                                         ; $612f: $ae
	ld a, [$eabe]                                    ; $6130: $fa $be $ea
	ld a, $ea                                        ; $6133: $3e $ea
	rst $38                                          ; $6135: $ff
	nop                                              ; $6136: $00
	ld a, a                                          ; $6137: $7f
	add b                                            ; $6138: $80
	cp a                                             ; $6139: $bf
	ret nz                                           ; $613a: $c0

	sbc a                                            ; $613b: $9f
	ldh [hDisp1_LCDC], a                                     ; $613c: $e0 $8f
	ldh a, [rBGP]                                    ; $613e: $f0 $47
	ld a, b                                          ; $6140: $78
	ld b, e                                          ; $6141: $43
	ld a, h                                          ; $6142: $7c
	sbc l                                            ; $6143: $9d
	ld h, c                                          ; $6144: $61
	ld a, [hl]                                       ; $6145: $7e
	ld c, a                                          ; $6146: $4f
	ld h, b                                          ; $6147: $60
	ld a, a                                          ; $6148: $7f
	ld hl, sp+$76                                    ; $6149: $f8 $76
	db $e4                                           ; $614b: $e4
	ld e, [hl]                                       ; $614c: $5e
	ldh [c], a                                       ; $614d: $e2
	ld a, a                                          ; $614e: $7f
	cp $80                                           ; $614f: $fe $80
	rst $38                                          ; $6151: $ff
	and [hl]                                         ; $6152: $a6
	rst $38                                          ; $6153: $ff
	sub e                                            ; $6154: $93
	ld a, a                                          ; $6155: $7f
	ret                                              ; $6156: $c9


	ld a, a                                          ; $6157: $7f
	call nz, $e47f                                   ; $6158: $c4 $7f $e4
	ccf                                              ; $615b: $3f
	ldh a, [c]                                       ; $615c: $f2
	ccf                                              ; $615d: $3f
	ld sp, hl                                        ; $615e: $f9
	sbc a                                            ; $615f: $9f
	db $f4                                           ; $6160: $f4
	ret nc                                           ; $6161: $d0

	cp b                                             ; $6162: $b8
	ld hl, sp-$48                                    ; $6163: $f8 $b8
	ld hl, sp-$60                                    ; $6165: $f8 $a0
	ldh a, [$a0]                                     ; $6167: $f0 $a0
	ldh a, [$e3]                                     ; $6169: $f0 $e3
	or e                                             ; $616b: $b3
	rst AddAOntoHL                                          ; $616c: $ef
	cp a                                             ; $616d: $bf
	call z, $9ef9                                    ; $616e: $cc $f9 $9e
	ret nz                                           ; $6171: $c0

	ld hl, sp-$80                                    ; $6172: $f8 $80
	ret nz                                           ; $6174: $c0

	ldh a, [$c0]                                     ; $6175: $f0 $c0
	ld hl, sp+$00                                    ; $6177: $f8 $00
	ld hl, sp+$00                                    ; $6179: $f8 $00
	rlca                                             ; $617b: $07
	inc c                                            ; $617c: $0c
	rra                                              ; $617d: $1f
	ld [$011e], sp                                   ; $617e: $08 $1e $01
	dec e                                            ; $6181: $1d
	inc bc                                           ; $6182: $03
	ld a, [bc]                                       ; $6183: $0a
	rlca                                             ; $6184: $07
	ld b, $0e                                        ; $6185: $06 $0e
	ld [bc], a                                       ; $6187: $02
	ld [bc], a                                       ; $6188: $02
	inc bc                                           ; $6189: $03
	inc bc                                           ; $618a: $03
	rst $38                                          ; $618b: $ff
	dec b                                            ; $618c: $05
	db $fd                                           ; $618d: $fd
	rlca                                             ; $618e: $07
	dec sp                                           ; $618f: $3b
	rst JumpTable                                          ; $6190: $c7
	db $e3                                           ; $6191: $e3
	rst $38                                          ; $6192: $ff
	sub [hl]                                         ; $6193: $96
	ld a, c                                          ; $6194: $79
	rst $38                                          ; $6195: $ff
	dec sp                                           ; $6196: $3b
	ld a, l                                          ; $6197: $7d
	ld a, a                                          ; $6198: $7f
	pop af                                           ; $6199: $f1
	rst $38                                          ; $619a: $ff
	pop af                                           ; $619b: $f1
	ld a, $7b                                        ; $619c: $3e $7b
	ld a, h                                          ; $619e: $7c
	add c                                            ; $619f: $81
	ld a, [$faee]                                    ; $61a0: $fa $ee $fa
	ld l, [hl]                                       ; $61a3: $6e
	ld a, [$ea2e]                                    ; $61a4: $fa $2e $ea
	cp [hl]                                          ; $61a7: $be
	db $ec                                           ; $61a8: $ec
	cp h                                             ; $61a9: $bc
	db $ec                                           ; $61aa: $ec
	cp h                                             ; $61ab: $bc
	inc [hl]                                         ; $61ac: $34
	dec sp                                           ; $61ad: $3b
	scf                                              ; $61ae: $37
	jr c, jr_025_61f0                                ; $61af: $38 $3f

	jr c, jr_025_61ee                                ; $61b1: $38 $3b

	inc a                                            ; $61b3: $3c
	dec hl                                           ; $61b4: $2b
	inc a                                            ; $61b5: $3c
	ld b, l                                          ; $61b6: $45
	ld a, [hl]                                       ; $61b7: $7e
	ld h, l                                          ; $61b8: $65
	ld e, [hl]                                       ; $61b9: $5e
	ld [hl], e                                       ; $61ba: $73
	ld c, [hl]                                       ; $61bb: $4e
	cp $01                                           ; $61bc: $fe $01
	ld d, [hl]                                       ; $61be: $56
	jp nc, $fe7f                                     ; $61bf: $d2 $7f $fe

	ld l, a                                          ; $61c2: $6f
	ld a, d                                          ; $61c3: $7a
	sbc c                                            ; $61c4: $99
	add h                                            ; $61c5: $84
	ld a, h                                          ; $61c6: $7c
	add h                                            ; $61c7: $84
	ld a, h                                          ; $61c8: $7c
	inc b                                            ; $61c9: $04
	db $fc                                           ; $61ca: $fc
	ld [hl], a                                       ; $61cb: $77
	ld l, d                                          ; $61cc: $6a
	sub d                                            ; $61cd: $92
	sbc a                                            ; $61ce: $9f
	ldh a, [c]                                       ; $61cf: $f2
	ld l, a                                          ; $61d0: $6f
	ld sp, hl                                        ; $61d1: $f9
	rra                                              ; $61d2: $1f
	db $fc                                           ; $61d3: $fc
	db $e3                                           ; $61d4: $e3
	cp $21                                           ; $61d5: $fe $21
	rst $38                                          ; $61d7: $ff
	ld hl, $11ff                                     ; $61d8: $21 $ff $11
	ld a, e                                          ; $61db: $7b
	cp $8c                                           ; $61dc: $fe $8c
	ldh a, [rLCDC]                                   ; $61de: $f0 $40
	ld h, b                                          ; $61e0: $60
	ret nz                                           ; $61e1: $c0

	ldh a, [$e0]                                     ; $61e2: $f0 $e0
	or b                                             ; $61e4: $b0
	ld h, b                                          ; $61e5: $60
	ld a, b                                          ; $61e6: $78
	or b                                             ; $61e7: $b0
	ret c                                            ; $61e8: $d8

	ldh a, [$fc]                                     ; $61e9: $f0 $fc
	ld sp, hl                                        ; $61eb: $f9
	rst $38                                          ; $61ec: $ff
	ret z                                            ; $61ed: $c8

jr_025_61ee:
	ld a, b                                          ; $61ee: $78
	nop                                              ; $61ef: $00

jr_025_61f0:
	jr nc, jr_025_61f0                               ; $61f0: $30 $fe

	sbc b                                            ; $61f2: $98
	jr nc, jr_025_622d                               ; $61f3: $30 $38

	ld a, h                                          ; $61f5: $7c
	ld a, b                                          ; $61f6: $78
	ldh [$f0], a                                     ; $61f7: $e0 $f0
	ret nz                                           ; $61f9: $c0

	ld a, d                                          ; $61fa: $7a
	ldh [$7d], a                                     ; $61fb: $e0 $7d
	and c                                            ; $61fd: $a1
	sub [hl]                                         ; $61fe: $96
	ld b, c                                          ; $61ff: $41
	ld bc, $0071                                     ; $6200: $01 $71 $00
	ld a, b                                          ; $6203: $78
	nop                                              ; $6204: $00
	ld [$2030], sp                                   ; $6205: $08 $30 $20
	ld a, e                                          ; $6208: $7b
	rst SubAFromBC                                          ; $6209: $e7
	rst SubAFromDE                                          ; $620a: $df
	ld e, $94                                        ; $620b: $1e $94
	rst SubAFromDE                                          ; $620d: $df
	pop af                                           ; $620e: $f1
	rrca                                             ; $620f: $0f
	pop hl                                           ; $6210: $e1
	cp a                                             ; $6211: $bf
	pop hl                                           ; $6212: $e1
	rra                                              ; $6213: $1f
	ld bc, $011f                                     ; $6214: $01 $1f $01
	ccf                                              ; $6217: $3f
	ld a, e                                          ; $6218: $7b
	cp $96                                           ; $6219: $fe $96
	dec a                                            ; $621b: $3d
	inc bc                                           ; $621c: $03
	db $ec                                           ; $621d: $ec
	inc a                                            ; $621e: $3c
	db $f4                                           ; $621f: $f4
	ld a, h                                          ; $6220: $7c

jr_025_6221:
	and h                                            ; $6221: $a4
	db $fc                                           ; $6222: $fc
	inc h                                            ; $6223: $24
	ld a, e                                          ; $6224: $7b
	cp $89                                           ; $6225: $fe $89
	jr z, jr_025_6221                                ; $6227: $28 $f8

	add hl, hl                                       ; $6229: $29
	ld sp, hl                                        ; $622a: $f9
	cpl                                              ; $622b: $2f
	rst $38                                          ; $622c: $ff

jr_025_622d:
	ld a, e                                          ; $622d: $7b
	ld b, [hl]                                       ; $622e: $46
	ld e, e                                          ; $622f: $5b
	ld h, [hl]                                       ; $6230: $66
	ld e, l                                          ; $6231: $5d
	ld h, d                                          ; $6232: $62
	ld e, l                                          ; $6233: $5d
	ld h, d                                          ; $6234: $62
	ld a, a                                          ; $6235: $7f
	ld h, b                                          ; $6236: $60
	rst $38                                          ; $6237: $ff
	ldh [$ef], a                                     ; $6238: $e0 $ef
	ldh a, [$af]                                     ; $623a: $f0 $af
	ld [hl], b                                       ; $623c: $70
	ld [hl], l                                       ; $623d: $75
	ret z                                            ; $623e: $c8

	ld [hl], l                                       ; $623f: $75
	ret nz                                           ; $6240: $c0

	ld a, [hl]                                       ; $6241: $7e
	jp c, $fe77                                      ; $6242: $da $77 $fe

	ld a, [hl]                                       ; $6245: $7e
	jp nc, Jump_025_7c77                             ; $6246: $d2 $77 $7c

	ld l, a                                          ; $6249: $6f
	cp $76                                           ; $624a: $fe $76
	ret c                                            ; $624c: $d8

	ld a, a                                          ; $624d: $7f
	cp $92                                           ; $624e: $fe $92
	cp $cc                                           ; $6250: $fe $cc
	cp [hl]                                          ; $6252: $be
	ld [$f29f], a                                    ; $6253: $ea $9f $f2
	adc a                                            ; $6256: $8f
	ld sp, hl                                        ; $6257: $f9
	add a                                            ; $6258: $87
	rst $38                                          ; $6259: $ff
	add l                                            ; $625a: $85
	rst $38                                          ; $625b: $ff
	ld b, h                                          ; $625c: $44
	ld a, e                                          ; $625d: $7b

Call_025_625e:
	cp $6a                                           ; $625e: $fe $6a
	jr nc, jr_025_62e0                               ; $6260: $30 $7e

	pop af                                           ; $6262: $f1
	adc e                                            ; $6263: $8b
	add b                                            ; $6264: $80
	ldh [$c0], a                                     ; $6265: $e0 $c0
	xor b                                            ; $6267: $a8
	ldh a, [$dd]                                     ; $6268: $f0 $dd
	cp $72                                           ; $626a: $fe $72
	ld a, [hl]                                       ; $626c: $7e
	cp $e2                                           ; $626d: $fe $e2
	db $fc                                           ; $626f: $fc
	ld b, d                                          ; $6270: $42
	inc a                                            ; $6271: $3c
	inc h                                            ; $6272: $24
	inc d                                            ; $6273: $14
	inc e                                            ; $6274: $1c
	nop                                              ; $6275: $00
	nop                                              ; $6276: $00
	inc c                                            ; $6277: $0c
	cp $8c                                           ; $6278: $fe $8c
	ccf                                              ; $627a: $3f
	inc bc                                           ; $627b: $03
	ccf                                              ; $627c: $3f
	inc bc                                           ; $627d: $03
	ld a, $07                                        ; $627e: $3e $07
	inc a                                            ; $6280: $3c
	rlca                                             ; $6281: $07
	ld a, h                                          ; $6282: $7c
	rrca                                             ; $6283: $0f
	ld a, h                                          ; $6284: $7c
	rra                                              ; $6285: $1f
	ld a, [hl]                                       ; $6286: $7e
	scf                                              ; $6287: $37
	cp $77                                           ; $6288: $fe $77
	ld sp, hl                                        ; $628a: $f9
	cp $c0                                           ; $628b: $fe $c0
	ld a, e                                          ; $628d: $7b
	add hl, de                                       ; $628e: $19
	ld a, a                                          ; $628f: $7f
	sbc a                                            ; $6290: $9f
	ld a, a                                          ; $6291: $7f
	and e                                            ; $6292: $a3
	add e                                            ; $6293: $83
	rrca                                             ; $6294: $0f
	ldh a, [$1f]                                     ; $6295: $f0 $1f
	ldh [$3f], a                                     ; $6297: $e0 $3f
	ret nz                                           ; $6299: $c0

	cp a                                             ; $629a: $bf
	ld [hl], b                                       ; $629b: $70
	or a                                             ; $629c: $b7
	ld a, b                                          ; $629d: $78
	sub a                                            ; $629e: $97
	ld a, b                                          ; $629f: $78
	ld d, a                                          ; $62a0: $57
	jr c, jr_025_62d6                                ; $62a1: $38 $33

	inc e                                            ; $62a3: $1c
	dec sp                                           ; $62a4: $3b
	inc c                                            ; $62a5: $0c
	cp e                                             ; $62a6: $bb
	inc c                                            ; $62a7: $0c
	sbc e                                            ; $62a8: $9b
	inc c                                            ; $62a9: $0c
	ldh a, [rIF]                                     ; $62aa: $f0 $0f
	ldh a, [rIF]                                     ; $62ac: $f0 $0f
	ldh [$1f], a                                     ; $62ae: $e0 $1f
	ld l, a                                          ; $62b0: $6f
	cp $7d                                           ; $62b1: $fe $7d
	ret nc                                           ; $62b3: $d0

	ld a, a                                          ; $62b4: $7f
	cp $6f                                           ; $62b5: $fe $6f
	adc d                                            ; $62b7: $8a
	ld [hl], l                                       ; $62b8: $75
	inc a                                            ; $62b9: $3c
	ld [hl], a                                       ; $62ba: $77
	cp $9d                                           ; $62bb: $fe $9d
	ld h, b                                          ; $62bd: $60
	ldh [rAUD3HIGH], a                               ; $62be: $e0 $1e
	nop                                              ; $62c0: $00
	rst $38                                          ; $62c1: $ff
	sbc l                                            ; $62c2: $9d
	ld h, [hl]                                       ; $62c3: $66
	ld h, b                                          ; $62c4: $60
	cp $77                                           ; $62c5: $fe $77
	ei                                               ; $62c7: $fb
	rst SubAFromDE                                          ; $62c8: $df
	ld h, [hl]                                       ; $62c9: $66
	rst $38                                          ; $62ca: $ff
	sbc [hl]                                         ; $62cb: $9e
	ld [bc], a                                       ; $62cc: $02
	ld l, e                                          ; $62cd: $6b
	ei                                               ; $62ce: $fb
	sbc [hl]                                         ; $62cf: $9e
	ld [hl], b                                       ; $62d0: $70
	ld [hl], a                                       ; $62d1: $77
	ei                                               ; $62d2: $fb
	ld a, a                                          ; $62d3: $7f
	db $ec                                           ; $62d4: $ec
	ld e, a                                          ; $62d5: $5f

jr_025_62d6:
	ei                                               ; $62d6: $fb
	sbc d                                            ; $62d7: $9a
	nop                                              ; $62d8: $00
	ld h, $63                                        ; $62d9: $26 $63
	nop                                              ; $62db: $00
	nop                                              ; $62dc: $00
	rra                                              ; $62dd: $1f
	rst GetHLinHL                                          ; $62de: $cf
	rst $38                                          ; $62df: $ff

jr_025_62e0:
	ei                                               ; $62e0: $fb
	cp $ff                                           ; $62e1: $fe $ff
	rst $38                                          ; $62e3: $ff
	rst $38                                          ; $62e4: $ff
	db $fd                                           ; $62e5: $fd
	rst $38                                          ; $62e6: $ff
	rra                                              ; $62e7: $1f
	ret nz                                           ; $62e8: $c0

	ld [hl+], a                                      ; $62e9: $22
	inc b                                            ; $62ea: $04
	rst SubAFromDE                                          ; $62eb: $df
	or e                                             ; $62ec: $b3
	db $dd                                           ; $62ed: $dd
	and b                                            ; $62ee: $a0
	rst SubAFromDE                                          ; $62ef: $df
	add c                                            ; $62f0: $81
	adc [hl]                                         ; $62f1: $8e
	add e                                            ; $62f2: $83
	add d                                            ; $62f3: $82
	add a                                            ; $62f4: $87
	add h                                            ; $62f5: $84
	sbc a                                            ; $62f6: $9f
	sbc b                                            ; $62f7: $98
	rst $38                                          ; $62f8: $ff
	ldh [hLCDCIntHandlerIdx], a                                     ; $62f9: $e0 $81
	jp rIE                                         ; $62fb: $c3 $ff $ff


	rst GetHLinHL                                          ; $62fe: $cf
	rst $38                                          ; $62ff: $ff
	ret nz                                           ; $6300: $c0

	ld h, b                                          ; $6301: $60
	ldh [rOCPD], a                                   ; $6302: $e0 $6b
	cp $94                                           ; $6304: $fe $94
	rst $38                                          ; $6306: $ff
	rst FarCall                                          ; $6307: $f7
	rst $38                                          ; $6308: $ff
	db $e3                                           ; $6309: $e3
	rst $38                                          ; $630a: $ff
	add e                                            ; $630b: $83
	rst $38                                          ; $630c: $ff
	ld bc, $011f                                     ; $630d: $01 $1f $01
	rlca                                             ; $6310: $07
	ld a, e                                          ; $6311: $7b
	cp $99                                           ; $6312: $fe $99
	inc bc                                           ; $6314: $03
	ld bc, $c03f                                     ; $6315: $01 $3f $c0
	ld a, a                                          ; $6318: $7f
	add b                                            ; $6319: $80
	ld l, a                                          ; $631a: $6f
	cp $9d                                           ; $631b: $fe $9d
	rst $38                                          ; $631d: $ff
	nop                                              ; $631e: $00
	ld [hl], a                                       ; $631f: $77
	cp $99                                           ; $6320: $fe $99
	db $dd                                           ; $6322: $dd
	ld b, $dd                                        ; $6323: $06 $dd
	ld b, $cf                                        ; $6325: $06 $cf
	inc b                                            ; $6327: $04
	ld h, a                                          ; $6328: $67
	cp $99                                           ; $6329: $fe $99
	rst AddAOntoHL                                          ; $632b: $ef
	inc b                                            ; $632c: $04
	ret nz                                           ; $632d: $c0

	ccf                                              ; $632e: $3f
	ret nz                                           ; $632f: $c0

	ccf                                              ; $6330: $3f
	ld l, e                                          ; $6331: $6b
	rst SubAFromDE                                          ; $6332: $df
	sbc b                                            ; $6333: $98
	ld a, a                                          ; $6334: $7f
	and h                                            ; $6335: $a4
	ld a, e                                          ; $6336: $7b
	and h                                            ; $6337: $a4
	ld a, e                                          ; $6338: $7b
	ld b, b                                          ; $6339: $40
	ret nz                                           ; $633a: $c0

	ld d, a                                          ; $633b: $57
	cp $df                                           ; $633c: $fe $df
	add b                                            ; $633e: $80
	sub a                                            ; $633f: $97
	ld b, a                                          ; $6340: $47
	rst $38                                          ; $6341: $ff
	ld c, [hl]                                       ; $6342: $4e
	db $fc                                           ; $6343: $fc
	ld e, [hl]                                       ; $6344: $5e
	db $f4                                           ; $6345: $f4
	ld a, [hl]                                       ; $6346: $7e
	db $e4                                           ; $6347: $e4
	ld a, e                                          ; $6348: $7b
	cp $96                                           ; $6349: $fe $96
	call nz, $c47e                                   ; $634b: $c4 $7e $c4
	cp $c4                                           ; $634e: $fe $c4
	rst $38                                          ; $6350: $ff
	add b                                            ; $6351: $80
	ld a, a                                          ; $6352: $7f
	nop                                              ; $6353: $00
	ld d, a                                          ; $6354: $57
	cp $7f                                           ; $6355: $fe $7f
	adc [hl]                                         ; $6357: $8e
	add h                                            ; $6358: $84
	and b                                            ; $6359: $a0
	ld h, b                                          ; $635a: $60
	and c                                            ; $635b: $a1
	ld h, c                                          ; $635c: $61
	jp $d722                                         ; $635d: $c3 $22 $d7


	inc [hl]                                         ; $6360: $34
	xor $18                                          ; $6361: $ee $18
	add sp, $1c                                      ; $6363: $e8 $1c
	push af                                          ; $6365: $f5

Call_025_6366:
	inc c                                            ; $6366: $0c
	inc bc                                           ; $6367: $03
	inc bc                                           ; $6368: $03
	ld a, [hl]                                       ; $6369: $7e
	ld a, a                                          ; $636a: $7f
	di                                               ; $636b: $f3
	adc [hl]                                         ; $636c: $8e
	rst GetHLinHL                                          ; $636d: $cf
	ld [bc], a                                       ; $636e: $02
	inc de                                           ; $636f: $13
	ld c, $7b                                        ; $6370: $0e $7b
	ld b, $fb                                        ; $6372: $06 $fb
	ld a, e                                          ; $6374: $7b
	cp $6f                                           ; $6375: $fe $6f
	adc d                                            ; $6377: $8a
	ld [hl], a                                       ; $6378: $77
	cp $89                                           ; $6379: $fe $89
	cp $00                                           ; $637b: $fe $00
	db $fc                                           ; $637d: $fc
	nop                                              ; $637e: $00
	ld sp, hl                                        ; $637f: $f9
	nop                                              ; $6380: $00
	rst AddAOntoHL                                          ; $6381: $ef
	inc b                                            ; $6382: $04
	db $ed                                           ; $6383: $ed
	ld b, $cd                                        ; $6384: $06 $cd
	ld b, $9f                                        ; $6386: $06 $9f
	ld b, $3e                                        ; $6388: $06 $3e
	rrca                                             ; $638a: $0f
	ld [hl], c                                       ; $638b: $71
	rra                                              ; $638c: $1f

jr_025_638d:
	pop hl                                           ; $638d: $e1
	ld a, $c3                                        ; $638e: $3e $c3
	ld a, h                                          ; $6390: $7c
	ld [hl], a                                       ; $6391: $77
	adc h                                            ; $6392: $8c
	sbc h                                            ; $6393: $9c
	xor h                                            ; $6394: $ac
	ld [hl], e                                       ; $6395: $73
	db $ec                                           ; $6396: $ec
	ld a, e                                          ; $6397: $7b
	cp $99                                           ; $6398: $fe $99
	ld l, c                                          ; $639a: $69
	rst FarCall                                          ; $639b: $f7
	jp hl                                            ; $639c: $e9


	rst FarCall                                          ; $639d: $f7
	jp hl                                            ; $639e: $e9


	ld [hl], a                                       ; $639f: $77
	rst SubAFromHL                                          ; $63a0: $d7
	add b                                            ; $63a1: $80
	ei                                               ; $63a2: $fb
	ld a, a                                          ; $63a3: $7f
	adc a                                            ; $63a4: $8f
	sub c                                            ; $63a5: $91
	adc h                                            ; $63a6: $8c
	rst $38                                          ; $63a7: $ff
	adc l                                            ; $63a8: $8d
	rst $38                                          ; $63a9: $ff
	adc a                                            ; $63aa: $8f
	cp $0c                                           ; $63ab: $fe $0c
	db $fc                                           ; $63ad: $fc
	add hl, bc                                       ; $63ae: $09
	cp b                                             ; $63af: $b8
	dec de                                           ; $63b0: $1b
	or c                                             ; $63b1: $b1
	db $10                                           ; $63b2: $10
	or b                                             ; $63b3: $b0
	call c, $84ff                                    ; $63b4: $dc $ff $84
	dec sp                                           ; $63b7: $3b
	ccf                                              ; $63b8: $3f
	ld de, $197f                                     ; $63b9: $11 $7f $19
	rst $38                                          ; $63bc: $ff
	ld h, l                                          ; $63bd: $65
	adc a                                            ; $63be: $8f
	add l                                            ; $63bf: $85
	ccf                                              ; $63c0: $3f
	rra                                              ; $63c1: $1f
	rst $38                                          ; $63c2: $ff
	add h                                            ; $63c3: $84
	rst FarCall                                          ; $63c4: $f7
	adc h                                            ; $63c5: $8c
	ld h, a                                          ; $63c6: $67
	sbc h                                            ; $63c7: $9c
	rst $38                                          ; $63c8: $ff
	inc b                                            ; $63c9: $04
	rst $38                                          ; $63ca: $ff
	inc b                                            ; $63cb: $04
	db $fd                                           ; $63cc: $fd
	ld b, $7b                                        ; $63cd: $06 $7b
	add [hl]                                         ; $63cf: $86
	ei                                               ; $63d0: $fb
	add [hl]                                         ; $63d1: $86
	ld h, a                                          ; $63d2: $67
	ld l, b                                          ; $63d3: $68
	sbc [hl]                                         ; $63d4: $9e
	ccf                                              ; $63d5: $3f
	ld [hl], e                                       ; $63d6: $73
	cp $9d                                           ; $63d7: $fe $9d
	cp h                                             ; $63d9: $bc
	nop                                              ; $63da: $00
	ld a, e                                          ; $63db: $7b
	ld a, [hl]                                       ; $63dc: $7e
	sbc h                                            ; $63dd: $9c
	ld [bc], a                                       ; $63de: $02
	rst $38                                          ; $63df: $ff
	ld bc, $fe7b                                     ; $63e0: $01 $7b $fe
	ld [hl], e                                       ; $63e3: $73
	ld a, h                                          ; $63e4: $7c
	rst $38                                          ; $63e5: $ff
	ld [hl], a                                       ; $63e6: $77

Call_025_63e7:
	ld l, h                                          ; $63e7: $6c
	ld a, a                                          ; $63e8: $7f
	cp $7f                                           ; $63e9: $fe $7f
	sub $81                                          ; $63eb: $d6 $81
	cp e                                             ; $63ed: $bb
	add $fb                                          ; $63ee: $c6 $fb
	ld b, [hl]                                       ; $63f0: $46
	jp c, $2a66                                      ; $63f1: $da $66 $2a

	ld [hl], $f3                                     ; $63f4: $36 $f3
	nop                                              ; $63f6: $00
	rst SubAFromBC                                          ; $63f7: $e7
	ld bc, $03cf                                     ; $63f8: $01 $cf $03
	sbc [hl]                                         ; $63fb: $9e
	inc bc                                           ; $63fc: $03
	cp h                                             ; $63fd: $bc
	rlca                                             ; $63fe: $07
	jr c, @+$11                                      ; $63ff: $38 $0f

	ld [hl], a                                       ; $6401: $77
	rra                                              ; $6402: $1f
	db $fc                                           ; $6403: $fc
	jr c, jr_025_638d                                ; $6404: $38 $87

	ld hl, sp+$0f                                    ; $6406: $f8 $0f
	ldh a, [$1f]                                     ; $6408: $f0 $1f
	ldh [rPCM12], a                                  ; $640a: $e0 $76
	jp z, $ff90                                      ; $640c: $ca $90 $ff

	ldh a, [$9f]                                     ; $640f: $f0 $9f
	ld [$042f], sp                                   ; $6411: $08 $2f $04
	xor c                                            ; $6414: $a9
	ld [hl], a                                       ; $6415: $77
	sub c                                            ; $6416: $91
	ld a, a                                          ; $6417: $7f
	adc c                                            ; $6418: $89
	ld a, a                                          ; $6419: $7f
	add [hl]                                         ; $641a: $86
	ld a, [hl]                                       ; $641b: $7e
	add d                                            ; $641c: $82
	ld l, e                                          ; $641d: $6b
	cp $98                                           ; $641e: $fe $98
	ld de, $1830                                     ; $6420: $11 $30 $18
	jr nc, jr_025_643d                               ; $6423: $30 $18

	ld a, b                                          ; $6425: $78
	inc e                                            ; $6426: $1c
	ld a, e                                          ; $6427: $7b
	cp $80                                           ; $6428: $fe $80
	inc [hl]                                         ; $642a: $34
	ld a, h                                          ; $642b: $7c
	ld [hl], $fc                                     ; $642c: $36 $fc
	ld h, $fc                                        ; $642e: $26 $fc
	rst SubAFromBC                                          ; $6430: $e7
	pop hl                                           ; $6431: $e1
	rra                                              ; $6432: $1f
	rrca                                             ; $6433: $0f
	rst $38                                          ; $6434: $ff
	inc sp                                           ; $6435: $33
	rlca                                             ; $6436: $07
	ld bc, $1d3f                                     ; $6437: $01 $3f $1d
	ld a, a                                          ; $643a: $7f
	add hl, bc                                       ; $643b: $09
	rra                                              ; $643c: $1f

jr_025_643d:
	dec bc                                           ; $643d: $0b
	rrca                                             ; $643e: $0f
	rlca                                             ; $643f: $07
	cp e                                             ; $6440: $bb
	add $1b                                          ; $6441: $c6 $1b
	and $cb                                          ; $6443: $e6 $cb
	ld [hl], $e3                                     ; $6445: $36 $e3
	ld e, $e2                                        ; $6447: $1e $e2
	sub l                                            ; $6449: $95
	rra                                              ; $644a: $1f
	ld [hl], e                                       ; $644b: $73
	adc a                                            ; $644c: $8f
	ld a, e                                          ; $644d: $7b
	add a                                            ; $644e: $87
	ld a, c                                          ; $644f: $79
	add a                                            ; $6450: $87
	add b                                            ; $6451: $80
	nop                                              ; $6452: $00
	add a                                            ; $6453: $87
	ld a, e                                          ; $6454: $7b
	adc b                                            ; $6455: $88
	sbc b                                            ; $6456: $98
	ei                                               ; $6457: $fb
	rlca                                             ; $6458: $07
	ccf                                              ; $6459: $3f
	rst $38                                          ; $645a: $ff
	jp nz, $fbff                                     ; $645b: $c2 $ff $fb

	ld a, e                                          ; $645e: $7b
	ld h, b                                          ; $645f: $60
	rst $38                                          ; $6460: $ff
	ld a, a                                          ; $6461: $7f
	ldh a, [c]                                       ; $6462: $f2
	sbc d                                            ; $6463: $9a
	rst AddAOntoHL                                          ; $6464: $ef
	rra                                              ; $6465: $1f
	rst $38                                          ; $6466: $ff
	rst $38                                          ; $6467: $ff
	ld b, b                                          ; $6468: $40
	ld a, e                                          ; $6469: $7b
	jr nz, @-$7e                                     ; $646a: $20 $80

	ld [bc], a                                       ; $646c: $02
	nop                                              ; $646d: $00
	rrca                                             ; $646e: $0f
	nop                                              ; $646f: $00
	inc de                                           ; $6470: $13
	ld e, $fb                                        ; $6471: $1e $fb
	ld c, $ff                                        ; $6473: $0e $ff
	rst JumpTable                                          ; $6475: $c7
	rst $38                                          ; $6476: $ff
	rst $38                                          ; $6477: $ff
	cp a                                             ; $6478: $bf
	ld a, a                                          ; $6479: $7f
	ld e, l                                          ; $647a: $5d
	rra                                              ; $647b: $1f
	and l                                            ; $647c: $a5
	ld de, $f021                                     ; $647d: $11 $21 $f0
	ldh [$60], a                                     ; $6480: $e0 $60
	ret nz                                           ; $6482: $c0

	ret nz                                           ; $6483: $c0

	add b                                            ; $6484: $80
	ret nz                                           ; $6485: $c0

	sbc b                                            ; $6486: $98
	add b                                            ; $6487: $80
	ldh a, [$a0]                                     ; $6488: $f0 $a0
	ldh [$8a], a                                     ; $648a: $e0 $8a
	ret nz                                           ; $648c: $c0

	pop bc                                           ; $648d: $c1
	add e                                            ; $648e: $83
	add [hl]                                         ; $648f: $86
	adc [hl]                                         ; $6490: $8e
	rla                                              ; $6491: $17
	inc b                                            ; $6492: $04
	cpl                                              ; $6493: $2f
	inc b                                            ; $6494: $04
	ld a, a                                          ; $6495: $7f
	inc e                                            ; $6496: $1c
	dec de                                           ; $6497: $1b
	inc c                                            ; $6498: $0c
	dec c                                            ; $6499: $0d
	ld b, $07                                        ; $649a: $06 $07
	ld [bc], a                                       ; $649c: $02
	adc e                                            ; $649d: $8b
	cp $ae                                           ; $649e: $fe $ae
	rlca                                             ; $64a0: $07
	ld h, a                                          ; $64a1: $67
	ld a, b                                          ; $64a2: $78
	ld a, a                                          ; $64a3: $7f
	ld l, [hl]                                       ; $64a4: $6e
	sub a                                            ; $64a5: $97
	ld b, $fe                                        ; $64a6: $06 $fe
	ld b, $fe                                        ; $64a8: $06 $fe
	rlca                                             ; $64aa: $07
	rst $38                                          ; $64ab: $ff
	ld h, d                                          ; $64ac: $62
	cp $77                                           ; $64ad: $fe $77
	cp $9e                                           ; $64af: $fe $9e
	ld b, e                                          ; $64b1: $43
	sbc $ff                                          ; $64b2: $de $ff
	rst SubAFromDE                                          ; $64b4: $df
	add a                                            ; $64b5: $87
	sbc e                                            ; $64b6: $9b
	ld h, e                                          ; $64b7: $63
	inc bc                                           ; $64b8: $03
	rra                                              ; $64b9: $1f
	inc bc                                           ; $64ba: $03
	db $dd                                           ; $64bb: $dd
	rlca                                             ; $64bc: $07
	ld a, a                                          ; $64bd: $7f
	push de                                          ; $64be: $d5
	sbc d                                            ; $64bf: $9a
	inc c                                            ; $64c0: $0c
	rrca                                             ; $64c1: $0f
	ld sp, hl                                        ; $64c2: $f9
	or $fd                                           ; $64c3: $f6 $fd
	cp $89                                           ; $64c5: $fe $89
	ld [bc], a                                       ; $64c7: $02
	ld bc, $c3bd                                     ; $64c8: $01 $bd $c3
	ld a, l                                          ; $64cb: $7d
	jp $ff71                                         ; $64cc: $c3 $71 $ff


	ret                                              ; $64cf: $c9


	ld a, a                                          ; $64d0: $7f
	push hl                                          ; $64d1: $e5
	ccf                                              ; $64d2: $3f
	and e                                            ; $64d3: $a3
	ld a, a                                          ; $64d4: $7f
	ld hl, $20ff                                     ; $64d5: $21 $ff $20
	rst $38                                          ; $64d8: $ff
	rst $38                                          ; $64d9: $ff
	add d                                            ; $64da: $82
	ld a, a                                          ; $64db: $7f
	add c                                            ; $64dc: $81
	ld [hl], d                                       ; $64dd: $72
	ldh a, [$7b]                                     ; $64de: $f0 $7b
	cp $80                                           ; $64e0: $fe $80
	ld a, [hl]                                       ; $64e2: $7e
	add c                                            ; $64e3: $81
	rst $38                                          ; $64e4: $ff
	add b                                            ; $64e5: $80
	ld [bc], a                                       ; $64e6: $02
	nop                                              ; $64e7: $00
	add c                                            ; $64e8: $81
	nop                                              ; $64e9: $00
	add d                                            ; $64ea: $82
	ld bc, $078e                                     ; $64eb: $01 $8e $07
	dec e                                            ; $64ee: $1d
	ld [$101a], sp                                   ; $64ef: $08 $1a $10
	or l                                             ; $64f2: $b5
	and b                                            ; $64f3: $a0
	db $eb                                           ; $64f4: $eb
	and c                                            ; $64f5: $a1
	and l                                            ; $64f6: $a5
	db $10                                           ; $64f7: $10
	ld d, l                                          ; $64f8: $55
	dec e                                            ; $64f9: $1d
	rst SubAFromDE                                          ; $64fa: $df
	rst $38                                          ; $64fb: $ff
	cp a                                             ; $64fc: $bf
	ld e, d                                          ; $64fd: $5a
	ld [hl], d                                       ; $64fe: $72
	xor e                                            ; $64ff: $ab
	sub $80                                          ; $6500: $d6 $80
	ld c, d                                          ; $6502: $4a
	and e                                            ; $6503: $a3
	adc d                                            ; $6504: $8a
	ld c, l                                          ; $6505: $4d
	inc de                                           ; $6506: $13
	or l                                             ; $6507: $b5
	cp b                                             ; $6508: $b8
	ld [$fdd0], a                                    ; $6509: $ea $d0 $fd
	cp $5f                                           ; $650c: $fe $5f
	rst SubAFromBC                                          ; $650e: $e7
	ld d, l                                          ; $650f: $55
	ld [hl+], a                                      ; $6510: $22
	and d                                            ; $6511: $a2
	ld de, $1049                                     ; $6512: $11 $49 $10
	adc b                                            ; $6515: $88
	nop                                              ; $6516: $00
	ld d, [hl]                                       ; $6517: $56
	inc bc                                           ; $6518: $03
	xor b                                            ; $6519: $a8
	inc bc                                           ; $651a: $03

jr_025_651b:
	ld d, l                                          ; $651b: $55
	ld c, $fb                                        ; $651c: $0e $fb
	db $fc                                           ; $651e: $fc
	ld e, e                                          ; $651f: $5b
	inc c                                            ; $6520: $0c
	sub [hl]                                         ; $6521: $96
	and l                                            ; $6522: $a5
	ld b, $46                                        ; $6523: $06 $46
	inc bc                                           ; $6525: $03
	add d                                            ; $6526: $82
	inc bc                                           ; $6527: $03
	rlca                                             ; $6528: $07
	rst $38                                          ; $6529: $ff
	dec c                                            ; $652a: $0d
	ld [hl], e                                       ; $652b: $73
	cp $9c                                           ; $652c: $fe $9c
	add hl, bc                                       ; $652e: $09
	rst $38                                          ; $652f: $ff
	ld [$9d66], sp                                   ; $6530: $08 $66 $9d
	ld a, [$80db]                                    ; $6533: $fa $db $80
	sub l                                            ; $6536: $95
	rst SubAFromBC                                          ; $6537: $e7
	dec b                                            ; $6538: $05
	rra                                              ; $6539: $1f
	jr @+$01                                         ; $653a: $18 $ff

	ld hl, sp+$5f                                    ; $653c: $f8 $5f
	or b                                             ; $653e: $b0
	cp a                                             ; $653f: $bf
	ld d, b                                          ; $6540: $50
	ld [hl], a                                       ; $6541: $77
	db $fc                                           ; $6542: $fc
	add a                                            ; $6543: $87
	ld c, a                                          ; $6544: $4f
	cp b                                             ; $6545: $b8
	cp $01                                           ; $6546: $fe $01
	rst $38                                          ; $6548: $ff
	add c                                            ; $6549: $81
	ld a, [hl]                                       ; $654a: $7e
	rst $38                                          ; $654b: $ff
	push hl                                          ; $654c: $e5
	ld e, $e5                                        ; $654d: $1e $e5
	ld e, $f4                                        ; $654f: $1e $f4

jr_025_6551:
	rrca                                             ; $6551: $0f
	db $fc                                           ; $6552: $fc
	inc bc                                           ; $6553: $03
	cp $01                                           ; $6554: $fe $01
	ld b, b                                          ; $6556: $40
	rst $38                                          ; $6557: $ff
	ret nz                                           ; $6558: $c0

	rst $38                                          ; $6559: $ff
	and b                                            ; $655a: $a0
	ld a, a                                          ; $655b: $7f
	ld a, d                                          ; $655c: $7a
	adc a                                            ; $655d: $8f
	sub c                                            ; $655e: $91
	ccf                                              ; $655f: $3f
	ldh [$1f], a                                     ; $6560: $e0 $1f
	ldh a, [rIF]                                     ; $6562: $f0 $0f
	ld hl, sp+$07                                    ; $6564: $f8 $07
	cp a                                             ; $6566: $bf
	ret nz                                           ; $6567: $c0

	ld a, a                                          ; $6568: $7f
	ret nz                                           ; $6569: $c0

	ld e, a                                          ; $656a: $5f
	ldh [$3f], a                                     ; $656b: $e0 $3f
	ld [hl], e                                       ; $656d: $73
	cp $7f                                           ; $656e: $fe $7f
	rst AddAOntoHL                                          ; $6570: $ef
	sub l                                            ; $6571: $95
	rla                                              ; $6572: $17
	ld hl, sp+$76                                    ; $6573: $f8 $76
	ldh [c], a                                       ; $6575: $e2
	cp h                                             ; $6576: $bc
	ld a, h                                          ; $6577: $7c
	ret nc                                           ; $6578: $d0

	jr c, jr_025_651b                                ; $6579: $38 $a0

	ld h, b                                          ; $657b: $60
	halt                                             ; $657c: $76
	jp hl                                            ; $657d: $e9


	rst SubAFromDE                                          ; $657e: $df
	add b                                            ; $657f: $80
	sub d                                            ; $6580: $92
	pop hl                                           ; $6581: $e1
	ld b, b                                          ; $6582: $40
	add hl, hl                                       ; $6583: $29
	ld de, $0115                                     ; $6584: $11 $15 $01
	ld hl, $5000                                     ; $6587: $21 $00 $50
	nop                                              ; $658a: $00
	jr nz, jr_025_658d                               ; $658b: $20 $00

jr_025_658d:
	ld b, b                                          ; $658d: $40
	ld a, e                                          ; $658e: $7b
	ld b, [hl]                                       ; $658f: $46
	adc e                                            ; $6590: $8b
	ld b, c                                          ; $6591: $41
	ld bc, $0004                                     ; $6592: $01 $04 $00
	add b                                            ; $6595: $80
	nop                                              ; $6596: $00
	ret nz                                           ; $6597: $c0

	add b                                            ; $6598: $80
	ldh [$c0], a                                     ; $6599: $e0 $c0
	or b                                             ; $659b: $b0
	ld hl, sp-$71                                    ; $659c: $f8 $8f
	rst $38                                          ; $659e: $ff
	add b                                            ; $659f: $80
	rst $38                                          ; $65a0: $ff
	rlca                                             ; $65a1: $07
	ld hl, sp+$02                                    ; $65a2: $f8 $02

jr_025_65a4:
	inc bc                                           ; $65a4: $03
	ld l, a                                          ; $65a5: $6f
	cp $91                                           ; $65a6: $fe $91
	inc b                                            ; $65a8: $04
	inc bc                                           ; $65a9: $03
	db $fc                                           ; $65aa: $fc
	rst $38                                          ; $65ab: $ff
	inc e                                            ; $65ac: $1c
	db $e3                                           ; $65ad: $e3
	db $fc                                           ; $65ae: $fc
	inc bc                                           ; $65af: $03
	nop                                              ; $65b0: $00
	rst $38                                          ; $65b1: $ff
	inc c                                            ; $65b2: $0c
	di                                               ; $65b3: $f3
	ld e, $e1                                        ; $65b4: $1e $e1
	halt                                             ; $65b6: $76
	ld l, $76                                        ; $65b7: $2e $76
	inc l                                            ; $65b9: $2c
	sbc e                                            ; $65ba: $9b
	ld a, b                                          ; $65bb: $78
	add a                                            ; $65bc: $87
	add b                                            ; $65bd: $80
	add b                                            ; $65be: $80
	ld [hl], l                                       ; $65bf: $75
	jr z, @-$72                                      ; $65c0: $28 $8c

	jr nz, jr_025_65a4                               ; $65c2: $20 $e0

	and b                                            ; $65c4: $a0
	ld h, b                                          ; $65c5: $60
	ret nc                                           ; $65c6: $d0

	jr nc, jr_025_6551                               ; $65c7: $30 $88

	ld a, b                                          ; $65c9: $78
	ld l, b                                          ; $65ca: $68
	sbc b                                            ; $65cb: $98
	rst $38                                          ; $65cc: $ff
	ld hl, sp-$01                                    ; $65cd: $f8 $ff
	ld hl, sp-$05                                    ; $65cf: $f8 $fb
	db $fc                                           ; $65d1: $fc
	db $fd                                           ; $65d2: $fd
	cp $fe                                           ; $65d3: $fe $fe
	reti                                             ; $65d5: $d9


	rst $38                                          ; $65d6: $ff
	ld h, c                                          ; $65d7: $61
	ld d, b                                          ; $65d8: $50
	ld a, a                                          ; $65d9: $7f
	ret nc                                           ; $65da: $d0

	sub a                                            ; $65db: $97
	adc a                                            ; $65dc: $8f
	ldh a, [$c7]                                     ; $65dd: $f0 $c7
	ld hl, sp-$08                                    ; $65df: $f8 $f8
	rlca                                             ; $65e1: $07
	db $fc                                           ; $65e2: $fc
	inc bc                                           ; $65e3: $03
	ld d, a                                          ; $65e4: $57
	cp $9a                                           ; $65e5: $fe $9a
	ld d, a                                          ; $65e7: $57
	ld hl, sp+$33                                    ; $65e8: $f8 $33
	db $fc                                           ; $65ea: $fc
	inc de                                           ; $65eb: $13
	ld a, e                                          ; $65ec: $7b
	cp $9b                                           ; $65ed: $fe $9b
	dec bc                                           ; $65ef: $0b
	db $fc                                           ; $65f0: $fc
	add hl, bc                                       ; $65f1: $09
	cp $77                                           ; $65f2: $fe $77
	cp $93                                           ; $65f4: $fe $93
	or d                                             ; $65f6: $b2
	ld h, b                                          ; $65f7: $60
	push de                                          ; $65f8: $d5
	jr nc, @-$04                                     ; $65f9: $30 $fa

	db $10                                           ; $65fb: $10
	db $fd                                           ; $65fc: $fd
	ld [$0cf7], sp                                   ; $65fd: $08 $f7 $0c
	rst $38                                          ; $6600: $ff
	inc bc                                           ; $6601: $03
	ld [hl], a                                       ; $6602: $77
	jp z, $8398                                      ; $6603: $ca $98 $83

	ld bc, $074e                                     ; $6606: $01 $4e $07
	sbc b                                            ; $6609: $98
	ccf                                              ; $660a: $3f
	ld h, b                                          ; $660b: $60
	ld [hl], b                                       ; $660c: $70
	sub c                                            ; $660d: $91
	ld [hl], h                                       ; $660e: $74
	xor h                                            ; $660f: $ac
	ld [hl], a                                       ; $6610: $77
	adc b                                            ; $6611: $88
	ld h, h                                          ; $6612: $64
	ld a, h                                          ; $6613: $7c
	ld a, a                                          ; $6614: $7f
	jp nz, $e38a                                     ; $6615: $c2 $8a $e3

	inc e                                            ; $6618: $1c
	db $fc                                           ; $6619: $fc
	inc bc                                           ; $661a: $03
	ld hl, sp+$07                                    ; $661b: $f8 $07
	ld hl, sp+$07                                    ; $661d: $f8 $07
	pop af                                           ; $661f: $f1
	ld c, $c3                                        ; $6620: $0e $c3
	inc a                                            ; $6622: $3c
	inc sp                                           ; $6623: $33
	call z, $08f7                                    ; $6624: $cc $f7 $08
	rst FarCall                                          ; $6627: $f7
	ld [$38c7], sp                                   ; $6628: $08 $c7 $38
	sbc a                                            ; $662b: $9f
	ld l, a                                          ; $662c: $6f
	db $d3                                           ; $662d: $d3
	ld a, e                                          ; $662e: $7b
	cp $85                                           ; $662f: $fe $85
	db $fd                                           ; $6631: $fd
	inc bc                                           ; $6632: $03
	xor $1f                                          ; $6633: $ee $1f
	rst FarCall                                          ; $6635: $f7
	rrca                                             ; $6636: $0f
	rst $38                                          ; $6637: $ff
	rlca                                             ; $6638: $07
	ei                                               ; $6639: $fb
	rlca                                             ; $663a: $07
	db $fd                                           ; $663b: $fd
	inc bc                                           ; $663c: $03
	db $fd                                           ; $663d: $fd
	inc bc                                           ; $663e: $03
	cp a                                             ; $663f: $bf
	ld a, a                                          ; $6640: $7f
	jp $07ff                                         ; $6641: $c3 $ff $07


	rst $38                                          ; $6644: $ff
	rst SubAFromBC                                          ; $6645: $e7
	ld hl, sp-$0d                                    ; $6646: $f8 $f3
	db $fc                                           ; $6648: $fc
	di                                               ; $6649: $f3
	db $fc                                           ; $664a: $fc
	ld e, a                                          ; $664b: $5f
	ld e, [hl]                                       ; $664c: $5e
	ld a, [hl]                                       ; $664d: $7e
	adc $77                                          ; $664e: $ce $77
	cp $77                                           ; $6650: $fe $77
	halt                                             ; $6652: $76
	ld a, a                                          ; $6653: $7f
	cp d                                             ; $6654: $ba
	ld a, [hl]                                       ; $6655: $7e
	or l                                             ; $6656: $b5
	rst SubAFromDE                                          ; $6657: $df
	rst $38                                          ; $6658: $ff
	ld [hl], a                                       ; $6659: $77
	ld [hl], h                                       ; $665a: $74
	ld a, a                                          ; $665b: $7f
	cp $9a                                           ; $665c: $fe $9a
	db $10                                           ; $665e: $10
	rst $38                                          ; $665f: $ff
	inc sp                                           ; $6660: $33
	db $fc                                           ; $6661: $fc
	ld [hl], e                                       ; $6662: $73
	ld a, e                                          ; $6663: $7b

Call_025_6664:
	ret c                                            ; $6664: $d8

	sbc l                                            ; $6665: $9d
	rst FarCall                                          ; $6666: $f7
	ld hl, sp+$6a                                    ; $6667: $f8 $6a
	ld a, e                                          ; $6669: $7b
	ld h, e                                          ; $666a: $63
	jr c, jr_025_66e4                                ; $666b: $38 $77

	add c                                            ; $666d: $81
	ld a, a                                          ; $666e: $7f
	ld sp, hl                                        ; $666f: $f9
	ld a, a                                          ; $6670: $7f
	db $fc                                           ; $6671: $fc
	sub a                                            ; $6672: $97
	pop bc                                           ; $6673: $c1
	ld a, $e1                                        ; $6674: $3e $e1
	ld e, $e1                                        ; $6676: $1e $e1
	ld e, $e2                                        ; $6678: $1e $e2
	dec e                                            ; $667a: $1d
	ld e, a                                          ; $667b: $5f
	sub d                                            ; $667c: $92
	ld a, a                                          ; $667d: $7f
	sbc d                                            ; $667e: $9a

jr_025_667f:
	sbc h                                            ; $667f: $9c
	rst SubAFromDE                                          ; $6680: $df
	ccf                                              ; $6681: $3f
	db $fc                                           ; $6682: $fc
	ld a, e                                          ; $6683: $7b
	ret c                                            ; $6684: $d8

	ld a, a                                          ; $6685: $7f
	sub [hl]                                         ; $6686: $96
	sbc d                                            ; $6687: $9a
	or $0f                                           ; $6688: $f6 $0f
	ret c                                            ; $668a: $d8

	ccf                                              ; $668b: $3f
	ld h, b                                          ; $668c: $60
	ld a, d                                          ; $668d: $7a
	jp nz, $ffdf                                     ; $668e: $c2 $df $ff

	ld a, l                                          ; $6691: $7d
	sbc $9c                                          ; $6692: $de $9c
	or b                                             ; $6694: $b0
	ld a, a                                          ; $6695: $7f
	ldh a, [$7a]                                     ; $6696: $f0 $7a
	ld [hl], $7f                                     ; $6698: $36 $7f
	ld a, e                                          ; $669a: $7b
	ld [hl], a                                       ; $669b: $77
	cp $df                                           ; $669c: $fe $df
	rst $38                                          ; $669e: $ff
	ld a, a                                          ; $669f: $7f
	add b                                            ; $66a0: $80
	ld a, l                                          ; $66a1: $7d
	ld d, l                                          ; $66a2: $55

jr_025_66a3:
	sbc [hl]                                         ; $66a3: $9e
	ld a, a                                          ; $66a4: $7f
	call nc, Call_025_7fff                           ; $66a5: $d4 $ff $7f
	sbc [hl]                                         ; $66a8: $9e
	ld a, e                                          ; $66a9: $7b
	sbc h                                            ; $66aa: $9c
	ld a, d                                          ; $66ab: $7a
	bit 6, a                                         ; $66ac: $cb $77
	ld hl, sp-$65                                    ; $66ae: $f8 $9b
	rst AddAOntoHL                                          ; $66b0: $ef
	ldh a, [$de]                                     ; $66b1: $f0 $de
	pop hl                                           ; $66b3: $e1
	ld a, b                                          ; $66b4: $78
	jr z, jr_025_6732                                ; $66b5: $28 $7b

	ld a, c                                          ; $66b7: $79
	ld a, a                                          ; $66b8: $7f
	adc $86                                          ; $66b9: $ce $86
	db $d3                                           ; $66bb: $d3
	inc a                                            ; $66bc: $3c
	and a                                            ; $66bd: $a7
	ld a, b                                          ; $66be: $78
	daa                                              ; $66bf: $27
	ld hl, sp+$4f                                    ; $66c0: $f8 $4f
	ldh a, [$e7]                                     ; $66c2: $f0 $e7
	rra                                              ; $66c4: $1f
	db $fc                                           ; $66c5: $fc
	rst $38                                          ; $66c6: $ff
	dec bc                                           ; $66c7: $0b
	db $fc                                           ; $66c8: $fc
	rst GetHLinHL                                          ; $66c9: $cf
	jr c, jr_025_66a3                                ; $66ca: $38 $d7

	jr c, @-$1f                                      ; $66cc: $38 $df

	jr nc, jr_025_667f                               ; $66ce: $30 $af

jr_025_66d0:
	ld [hl], b                                       ; $66d0: $70
	cpl                                              ; $66d1: $2f
	ldh a, [$08]                                     ; $66d2: $f0 $08
	ld a, e                                          ; $66d4: $7b
	ldh a, [c]                                       ; $66d5: $f2
	sbc b                                            ; $66d6: $98
	adc a                                            ; $66d7: $8f
	ld a, b                                          ; $66d8: $78
	sub a                                            ; $66d9: $97
	ld a, b                                          ; $66da: $78
	sbc a                                            ; $66db: $9f
	ld [hl], b                                       ; $66dc: $70
	sbc a                                            ; $66dd: $9f
	ld a, e                                          ; $66de: $7b
	ldh a, [c]                                       ; $66df: $f2
	ld a, [hl]                                       ; $66e0: $7e
	inc l                                            ; $66e1: $2c
	ld a, a                                          ; $66e2: $7f
	sbc [hl]                                         ; $66e3: $9e

jr_025_66e4:
	add c                                            ; $66e4: $81
	add hl, sp                                       ; $66e5: $39
	rst SubAFromBC                                          ; $66e6: $e7
	jr c, jr_025_66d0                                ; $66e7: $38 $e7

	inc a                                            ; $66e9: $3c
	db $e3                                           ; $66ea: $e3
	inc a                                            ; $66eb: $3c
	db $e3                                           ; $66ec: $e3
	cp [hl]                                          ; $66ed: $be
	ld h, c                                          ; $66ee: $61
	cp [hl]                                          ; $66ef: $be
	ld h, c                                          ; $66f0: $61
	xor [hl]                                         ; $66f1: $ae
	ld [hl], c                                       ; $66f2: $71
	inc bc                                           ; $66f3: $03
	rst $38                                          ; $66f4: $ff
	ld b, e                                          ; $66f5: $43
	cp a                                             ; $66f6: $bf
	pop hl                                           ; $66f7: $e1
	sbc a                                            ; $66f8: $9f
	or b                                             ; $66f9: $b0
	rst GetHLinHL                                          ; $66fa: $cf
	cp b                                             ; $66fb: $b8
	rst JumpTable                                          ; $66fc: $c7
	ld a, h                                          ; $66fd: $7c
	jp $c17e                                         ; $66fe: $c3 $7e $c1


	ld a, a                                          ; $6701: $7f
	ret nz                                           ; $6702: $c0

	rst SubAFromHL                                          ; $6703: $d7
	rst $38                                          ; $6704: $ff
	ld a, a                                          ; $6705: $7f
	adc b                                            ; $6706: $88
	ld a, a                                          ; $6707: $7f
	cp $7c                                           ; $6708: $fe $7c
	jp z, $801c                                      ; $670a: $ca $1c $80

	cp d                                             ; $670d: $ba
	ld [hl], e                                       ; $670e: $73
	ld b, b                                          ; $670f: $40
	inc hl                                           ; $6710: $23
	nop                                              ; $6711: $00
	nop                                              ; $6712: $00
	nop                                              ; $6713: $00
	nop                                              ; $6714: $00
	sbc b                                            ; $6715: $98
	dec b                                            ; $6716: $05
	inc hl                                           ; $6717: $23
	nop                                              ; $6718: $00
	ld d, l                                          ; $6719: $55
	db $10                                           ; $671a: $10
	ld d, l                                          ; $671b: $55
	nop                                              ; $671c: $00
	cp [hl]                                          ; $671d: $be
	ld d, l                                          ; $671e: $55
	ld d, l                                          ; $671f: $55
	nop                                              ; $6720: $00
	sbc l                                            ; $6721: $9d
	ld d, l                                          ; $6722: $55
	ld b, b                                          ; $6723: $40
	ld [hl], e                                       ; $6724: $73
	or $f3                                           ; $6725: $f6 $f3
	ld l, b                                          ; $6727: $68
	add c                                            ; $6728: $81
	db $dd                                           ; $6729: $dd
	rst $38                                          ; $672a: $ff
	sbc e                                            ; $672b: $9b
	db $fc                                           ; $672c: $fc
	ld sp, hl                                        ; $672d: $f9
	ei                                               ; $672e: $fb
	ldh a, [$de]                                     ; $672f: $f0 $de
	rst $38                                          ; $6731: $ff

jr_025_6732:
	sub a                                            ; $6732: $97
	cp $fc                                           ; $6733: $fe $fc
	ld hl, sp-$0f                                    ; $6735: $f8 $f1
	ldh a, [$f1]                                     ; $6737: $f0 $f1
	ld hl, sp-$08                                    ; $6739: $f8 $f8
	sbc $fc                                          ; $673b: $de $fc
	rst SubAFromDE                                          ; $673d: $df
	cp $df                                           ; $673e: $fe $df
	ldh a, [$de]                                     ; $6740: $f0 $de
	ld hl, sp+$73                                    ; $6742: $f8 $73
	or $9e                                           ; $6744: $f6 $9e
	cp $dc                                           ; $6746: $fe $dc
	rst $38                                          ; $6748: $ff
	ld h, a                                          ; $6749: $67
	ld hl, sp-$27                                    ; $674a: $f8 $d9
	rst $38                                          ; $674c: $ff
	sbc h                                            ; $674d: $9c
	db $fd                                           ; $674e: $fd
	ld hl, sp-$08                                    ; $674f: $f8 $f8
	db $dd                                           ; $6751: $dd
	ldh a, [$9e]                                     ; $6752: $f0 $9e
	ld hl, sp+$7b                                    ; $6754: $f8 $7b
	and $9c                                          ; $6756: $e6 $9c
	db $fd                                           ; $6758: $fd
	cp $ff                                           ; $6759: $fe $ff
	ld [hl], a                                       ; $675b: $77
	db $e4                                           ; $675c: $e4
	ld a, a                                          ; $675d: $7f
	pop bc                                           ; $675e: $c1
	ld a, e                                          ; $675f: $7b
	db $d3                                           ; $6760: $d3
	ret c                                            ; $6761: $d8

	rst $38                                          ; $6762: $ff
	ld a, e                                          ; $6763: $7b
	or e                                             ; $6764: $b3
	sbc d                                            ; $6765: $9a
	di                                               ; $6766: $f3
	db $fc                                           ; $6767: $fc
	ldh a, [$c3]                                     ; $6768: $f0 $c3
	rst $38                                          ; $676a: $ff
	pop af                                           ; $676b: $f1
	reti                                             ; $676c: $d9


	rst $38                                          ; $676d: $ff
	sub a                                            ; $676e: $97
	and [hl]                                         ; $676f: $a6
	sub e                                            ; $6770: $93
	ret                                              ; $6771: $c9


	call nz, $f2e4                                   ; $6772: $c4 $e4 $f2
	ld sp, hl                                        ; $6775: $f9
	db $f4                                           ; $6776: $f4
	reti                                             ; $6777: $d9


	rst $38                                          ; $6778: $ff
	ld a, a                                          ; $6779: $7f
	push af                                          ; $677a: $f5
	ld a, a                                          ; $677b: $7f
	jp nz, $ffdd                                     ; $677c: $c2 $dd $ff

	pop af                                           ; $677f: $f1
	adc a                                            ; $6780: $8f
	rst FarCall                                          ; $6781: $f7
	rst $38                                          ; $6782: $ff
	xor e                                            ; $6783: $ab
	ld d, a                                          ; $6784: $57
	cp c                                             ; $6785: $b9
	ld a, a                                          ; $6786: $7f
	cp c                                             ; $6787: $b9
	call c, $fef9                                    ; $6788: $dc $f9 $fe
	inc bc                                           ; $678b: $03
	ld b, $3e                                        ; $678c: $06 $3e
	ld a, a                                          ; $678e: $7f
	ldh a, [$3e]                                     ; $678f: $f0 $3e
	pop hl                                           ; $6791: $e1
	ld h, a                                          ; $6792: $67
	ld a, l                                          ; $6793: $7d
	sbc e                                            ; $6794: $9b
	call z, $f2ea                                    ; $6795: $cc $ea $f2
	ld sp, hl                                        ; $6798: $f9
	scf                                              ; $6799: $37
	or b                                             ; $679a: $b0
	ld [hl], a                                       ; $679b: $77
	scf                                              ; $679c: $37
	db $dd                                           ; $679d: $dd
	cp $7f                                           ; $679e: $fe $7f
	dec bc                                           ; $67a0: $0b
	sbc h                                            ; $67a1: $9c
	db $f4                                           ; $67a2: $f4
	db $e4                                           ; $67a3: $e4
	db $e4                                           ; $67a4: $e4
	sbc $c4                                          ; $67a5: $de $c4
	push de                                          ; $67a7: $d5
	rst $38                                          ; $67a8: $ff
	ld a, e                                          ; $67a9: $7b
	ld c, h                                          ; $67aa: $4c
	sbc [hl]                                         ; $67ab: $9e
	ldh [$f1], a                                     ; $67ac: $e0 $f1
	sub h                                            ; $67ae: $94
	sbc a                                            ; $67af: $9f
	rst GetHLinHL                                          ; $67b0: $cf
	daa                                              ; $67b1: $27
	rst JumpTable                                          ; $67b2: $c7
	or e                                             ; $67b3: $b3
	ld e, e                                          ; $67b4: $5b
	xor l                                            ; $67b5: $ad
	rst SubAFromBC                                          ; $67b6: $e7
	ld a, a                                          ; $67b7: $7f
	ccf                                              ; $67b8: $3f
	rst SubAFromDE                                          ; $67b9: $df
	sbc $ff                                          ; $67ba: $de $ff
	sbc [hl]                                         ; $67bc: $9e
	ld a, a                                          ; $67bd: $7f
	ld b, e                                          ; $67be: $43
	add b                                            ; $67bf: $80
	rst SubAFromDE                                          ; $67c0: $df
	rst SubAFromBC                                          ; $67c1: $e7
	sbc c                                            ; $67c2: $99
	jp $f3f3                                         ; $67c3: $c3 $f3 $f3


	ld sp, hl                                        ; $67c6: $f9
	db $fd                                           ; $67c7: $fd
	cp $7a                                           ; $67c8: $fe $7a
	db $d3                                           ; $67ca: $d3
	rst SubAFromDE                                          ; $67cb: $df
	call z, $c69c                                    ; $67cc: $cc $9c $c6
	jp nz, $f1c1                                     ; $67cf: $c2 $c1 $f1

	rst SubAFromDE                                          ; $67d2: $df
	xor a                                            ; $67d3: $af
	sub [hl]                                         ; $67d4: $96
	rst FarCall                                          ; $67d5: $f7
	ld [hl], a                                       ; $67d6: $77
	ld [hl], a                                       ; $67d7: $77
	xor a                                            ; $67d8: $af
	cp a                                             ; $67d9: $bf
	ccf                                              ; $67da: $3f
	ld [hl], a                                       ; $67db: $77
	ld [hl], a                                       ; $67dc: $77
	ld a, e                                          ; $67dd: $7b
	sbc $fb                                          ; $67de: $de $fb
	rst SubAFromDE                                          ; $67e0: $df
	db $eb                                           ; $67e1: $eb
	rst SubAFromDE                                          ; $67e2: $df
	ccf                                              ; $67e3: $3f
	ld [hl], a                                       ; $67e4: $77
	ld sp, hl                                        ; $67e5: $f9
	rst SubAFromDE                                          ; $67e6: $df
	rst AddAOntoHL                                          ; $67e7: $ef
	rst SubAFromDE                                          ; $67e8: $df
	db $eb                                           ; $67e9: $eb
	sbc h                                            ; $67ea: $9c
	rst AddAOntoHL                                          ; $67eb: $ef
	ld l, a                                          ; $67ec: $6f
	cpl                                              ; $67ed: $2f
	sbc $bf                                          ; $67ee: $de $bf
	sbc d                                            ; $67f0: $9a
	rst AddAOntoHL                                          ; $67f1: $ef
	rst FarCall                                          ; $67f2: $f7
	and a                                            ; $67f3: $a7
	daa                                              ; $67f4: $27
	daa                                              ; $67f5: $27
	sbc $2f                                          ; $67f6: $de $2f
	sbc l                                            ; $67f8: $9d
	ccf                                              ; $67f9: $3f
	ld a, a                                          ; $67fa: $7f
	db $db                                           ; $67fb: $db
	rst $38                                          ; $67fc: $ff
	ld b, e                                          ; $67fd: $43
	ld d, b                                          ; $67fe: $50
	add a                                            ; $67ff: $87
	ld a, a                                          ; $6800: $7f
	cp a                                             ; $6801: $bf
	sbc a                                            ; $6802: $9f
	adc a                                            ; $6803: $8f
	rst JumpTable                                          ; $6804: $c7
	jp $00e1                                         ; $6805: $c3 $e1 $00


	add b                                            ; $6808: $80
	ret nz                                           ; $6809: $c0

	ldh [$f0], a                                     ; $680a: $e0 $f0
	ld hl, sp-$04                                    ; $680c: $f8 $fc
	cp $f4                                           ; $680e: $fe $f4
	rst FarCall                                          ; $6810: $f7
	rst $38                                          ; $6811: $ff
	ei                                               ; $6812: $fb
	db $eb                                           ; $6813: $eb
	push bc                                          ; $6814: $c5
	push hl                                          ; $6815: $e5
	di                                               ; $6816: $f3
	ei                                               ; $6817: $fb
	halt                                             ; $6818: $76
	ld h, d                                          ; $6819: $62
	adc h                                            ; $681a: $8c
	cp $de                                           ; $681b: $fe $de
	adc $fb                                          ; $681d: $ce $fb
	db $db                                           ; $681f: $db
	db $dd                                           ; $6820: $dd
	db $dd                                           ; $6821: $dd
	rst $38                                          ; $6822: $ff
	rst $38                                          ; $6823: $ff
	rst AddAOntoHL                                          ; $6824: $ef
	xor a                                            ; $6825: $af
	add $e6                                          ; $6826: $c6 $e6
	ldh [c], a                                       ; $6828: $e2
	ldh [c], a                                       ; $6829: $e2
	ldh [$e0], a                                     ; $682a: $e0 $e0
	ldh a, [rSVBK]                                   ; $682c: $f0 $70
	pop af                                           ; $682e: $f1
	ld a, a                                          ; $682f: $7f
	ld c, b                                          ; $6830: $48
	sbc c                                            ; $6831: $99
	ccf                                              ; $6832: $3f
	rra                                              ; $6833: $1f
	rrca                                             ; $6834: $0f
	rrca                                             ; $6835: $0f
	rlca                                             ; $6836: $07
	rlca                                             ; $6837: $07
	reti                                             ; $6838: $d9


	rst $38                                          ; $6839: $ff
	rst SubAFromDE                                          ; $683a: $df
	inc bc                                           ; $683b: $03
	sbc l                                            ; $683c: $9d
	ld bc, $7700                                     ; $683d: $01 $00 $77
	or h                                             ; $6840: $b4
	call c, Call_025_7fff                            ; $6841: $dc $ff $7f
	db $e3                                           ; $6844: $e3
	sbc d                                            ; $6845: $9a
	rra                                              ; $6846: $1f
	xor c                                            ; $6847: $a9
	sub c                                            ; $6848: $91
	adc c                                            ; $6849: $89
	add a                                            ; $684a: $87
	db $dd                                           ; $684b: $dd
	add e                                            ; $684c: $83
	sbc [hl]                                         ; $684d: $9e
	ld [hl], a                                       ; $684e: $77
	jp c, $dd7f                                      ; $684f: $da $7f $dd

	add e                                            ; $6852: $83
	sbc [hl]                                         ; $6853: $9e
	add a                                            ; $6854: $87
	sbc $07                                          ; $6855: $de $07
	call c, $c97f                                    ; $6857: $dc $7f $c9
	rst $38                                          ; $685a: $ff
	rst SubAFromDE                                          ; $685b: $df
	ld a, a                                          ; $685c: $7f
	sbc [hl]                                         ; $685d: $9e
	ccf                                              ; $685e: $3f
	reti                                             ; $685f: $d9


	rst $38                                          ; $6860: $ff
	ld a, a                                          ; $6861: $7f
	cp [hl]                                          ; $6862: $be
	ld [hl], e                                       ; $6863: $73
	and c                                            ; $6864: $a1
	ld h, e                                          ; $6865: $63
	and b                                            ; $6866: $a0
	sbc $07                                          ; $6867: $de $07
	rst SubAFromDE                                          ; $6869: $df
	add a                                            ; $686a: $87
	sbc h                                            ; $686b: $9c
	rlca                                             ; $686c: $07
	rrca                                             ; $686d: $0f
	rrca                                             ; $686e: $0f
	ld [hl], e                                       ; $686f: $73
	jp c, $ffde                                      ; $6870: $da $de $ff

	call c, $de0f                                    ; $6873: $dc $0f $de
	rra                                              ; $6876: $1f
	reti                                             ; $6877: $d9


	rst $38                                          ; $6878: $ff
	sbc $1f                                          ; $6879: $de $1f
	db $dd                                           ; $687b: $dd
	ccf                                              ; $687c: $3f
	ld h, e                                          ; $687d: $63
	and l                                            ; $687e: $a5
	jp c, $c17f                                      ; $687f: $da $7f $c1

	rst $38                                          ; $6882: $ff
	ld d, e                                          ; $6883: $53
	add h                                            ; $6884: $84
	sbc e                                            ; $6885: $9b
	cp a                                             ; $6886: $bf
	rst SubAFromDE                                          ; $6887: $df
	adc a                                            ; $6888: $8f
	ld l, a                                          ; $6889: $6f
	ld l, a                                          ; $688a: $6f
	ld b, c                                          ; $688b: $41
	sbc l                                            ; $688c: $9d
	ld a, a                                          ; $688d: $7f
	sbc a                                            ; $688e: $9f
	ccf                                              ; $688f: $3f
	pop hl                                           ; $6890: $e1
	rst $38                                          ; $6891: $ff
	add a                                            ; $6892: $87
	cp $1f                                           ; $6893: $fe $1f
	ld hl, sp+$7f                                    ; $6895: $f8 $7f
	ldh [rIE], a                                     ; $6897: $e0 $ff
	ret nz                                           ; $6899: $c0

	ld [hl], l                                       ; $689a: $75
	add e                                            ; $689b: $83
	add b                                            ; $689c: $80
	nop                                              ; $689d: $00
	ld bc, $0503                                     ; $689e: $01 $03 $05
	ld a, [bc]                                       ; $68a1: $0a
	inc c                                            ; $68a2: $0c
	db $10                                           ; $68a3: $10
	inc hl                                           ; $68a4: $23
	nop                                              ; $68a5: $00
	ld bc, $0602                                     ; $68a6: $01 $02 $06
	inc c                                            ; $68a9: $0c
	ld [$3018], sp                                   ; $68aa: $08 $18 $30
	cp $d8                                           ; $68ad: $fe $d8
	or c                                             ; $68af: $b1
	inc hl                                           ; $68b0: $23
	ld h, [hl]                                       ; $68b1: $66
	ld c, h                                          ; $68b2: $4c
	add hl, de                                       ; $68b3: $19
	inc bc                                           ; $68b4: $03
	add c                                            ; $68b5: $81
	rlca                                             ; $68b6: $07
	rrca                                             ; $68b7: $0f
	ld e, $1c                                        ; $68b8: $1e $1c
	jr c, jr_025_691c                                ; $68ba: $38 $60

	sub h                                            ; $68bc: $94
	nop                                              ; $68bd: $00
	inc sp                                           ; $68be: $33
	rst SubAFromDE                                          ; $68bf: $df
	ld a, [hl]                                       ; $68c0: $7e
	sbc b                                            ; $68c1: $98
	ld [hl], e                                       ; $68c2: $73
	call $3f97                                       ; $68c3: $cd $97 $3f
	db $fc                                           ; $68c6: $fc
	ldh [$7b], a                                     ; $68c7: $e0 $7b
	xor $84                                          ; $68c9: $ee $84
	ld a, $78                                        ; $68cb: $3e $78
	ldh [$f8], a                                     ; $68cd: $e0 $f8
	add b                                            ; $68cf: $80
	ccf                                              ; $68d0: $3f
	ret nz                                           ; $68d1: $c0

	ld a, [hl]                                       ; $68d2: $7e
	di                                               ; $68d3: $f3
	adc [hl]                                         ; $68d4: $8e
	jr c, jr_025_68de                                ; $68d5: $38 $07

	ld a, a                                          ; $68d7: $7f
	rst $38                                          ; $68d8: $ff
	rst $38                                          ; $68d9: $ff
	add c                                            ; $68da: $81
	rrca                                             ; $68db: $0f
	ld [hl], c                                       ; $68dc: $71
	rst JumpTable                                          ; $68dd: $c7

jr_025_68de:
	sub b                                            ; $68de: $90
	ld c, b                                          ; $68df: $48
	add sp, $30                                      ; $68e0: $e8 $30
	dec sp                                           ; $68e2: $3b
	db $fd                                           ; $68e3: $fd
	ld a, [hl]                                       ; $68e4: $7e
	xor h                                            ; $68e5: $ac
	call c, $80ff                                    ; $68e6: $dc $ff $80
	cp $ff                                           ; $68e9: $fe $ff
	rst $38                                          ; $68eb: $ff
	rrca                                             ; $68ec: $0f
	ld e, $68                                        ; $68ed: $1e $68
	cp $37                                           ; $68ef: $fe $37
	db $ed                                           ; $68f1: $ed
	sub d                                            ; $68f2: $92
	ret                                              ; $68f3: $c9


	rst $38                                          ; $68f4: $ff
	ld hl, sp-$10                                    ; $68f5: $f8 $f0
	ret nz                                           ; $68f7: $c0

	ld hl, sp+$1e                                    ; $68f8: $f8 $1e
	rrca                                             ; $68fa: $0f
	add a                                            ; $68fb: $87
	call c, $183b                                    ; $68fc: $dc $3b $18
	inc c                                            ; $68ff: $0c
	inc c                                            ; $6900: $0c
	add a                                            ; $6901: $87
	rst JumpTable                                          ; $6902: $c7
	ld h, c                                          ; $6903: $61
	ccf                                              ; $6904: $3f
	rra                                              ; $6905: $1f
	rrca                                             ; $6906: $0f
	rlca                                             ; $6907: $07
	sub e                                            ; $6908: $93
	rlca                                             ; $6909: $07
	inc bc                                           ; $690a: $03
	inc bc                                           ; $690b: $03
	add e                                            ; $690c: $83
	inc e                                            ; $690d: $1c
	inc bc                                           ; $690e: $03
	add b                                            ; $690f: $80
	ld b, b                                          ; $6910: $40
	jr nc, jr_025_691b                               ; $6911: $30 $08

	add h                                            ; $6913: $84
	ld b, d                                          ; $6914: $42
	reti                                             ; $6915: $d9


	rst $38                                          ; $6916: $ff
	sub [hl]                                         ; $6917: $96
	ld a, b                                          ; $6918: $78
	ld c, $83                                        ; $6919: $0e $83

jr_025_691b:
	ld b, c                                          ; $691b: $41

jr_025_691c:
	jr nz, jr_025_692e                               ; $691c: $20 $10

	ld [$f804], sp                                   ; $691e: $08 $04 $f8
	ld a, e                                          ; $6921: $7b
	call nz, $ffdd                                   ; $6922: $c4 $dd $ff
	db $fd                                           ; $6925: $fd
	rst SubAFromDE                                          ; $6926: $df
	ld bc, $029d                                     ; $6927: $01 $9d $02
	inc bc                                           ; $692a: $03
	ld l, a                                          ; $692b: $6f
	ld hl, sp-$80                                    ; $692c: $f8 $80

jr_025_692e:
	inc bc                                           ; $692e: $03
	ld [bc], a                                       ; $692f: $02
	ld [hl], $6c                                     ; $6930: $36 $6c
	adc b                                            ; $6932: $88
	pop de                                           ; $6933: $d1
	pop af                                           ; $6934: $f1
	db $e3                                           ; $6935: $e3
	db $e4                                           ; $6936: $e4
	jp z, Jump_025_4321                              ; $6937: $ca $21 $43

	rst JumpTable                                          ; $693a: $c7
	adc a                                            ; $693b: $8f
	rrca                                             ; $693c: $0f
	ld e, $1e                                        ; $693d: $1e $1e

jr_025_693f:
	inc a                                            ; $693f: $3c
	add [hl]                                         ; $6940: $86
	inc c                                            ; $6941: $0c
	add hl, bc                                       ; $6942: $09
	sub c                                            ; $6943: $91
	inc sp                                           ; $6944: $33
	inc h                                            ; $6945: $24
	ld h, [hl]                                       ; $6946: $66
	ld c, c                                          ; $6947: $49
	ld bc, $87c3                                     ; $6948: $01 $c3 $87
	rrca                                             ; $694b: $0f
	ld c, $7f                                        ; $694c: $0e $7f
	ld e, [hl]                                       ; $694e: $5e
	add b                                            ; $694f: $80
	inc a                                            ; $6950: $3c
	ld a, h                                          ; $6951: $7c
	db $db                                           ; $6952: $db
	scf                                              ; $6953: $37
	ld h, l                                          ; $6954: $65
	ld d, d                                          ; $6955: $52
	sub h                                            ; $6956: $94
	and l                                            ; $6957: $a5
	ld l, e                                          ; $6958: $6b
	jp $8884                                         ; $6959: $c3 $84 $88


	jr jr_025_698f                                   ; $695c: $18 $31

	ld h, e                                          ; $695e: $63
	ld h, e                                          ; $695f: $63
	add $f6                                          ; $6960: $c6 $f6
	call $369b                                       ; $6962: $cd $9b $36
	ld l, [hl]                                       ; $6965: $6e
	ld e, l                                          ; $6966: $5d
	sbc b                                            ; $6967: $98
	ld [$3209], a                                    ; $6968: $ea $09 $32
	ld h, h                                          ; $696b: $64
	ret                                              ; $696c: $c9


	sub c                                            ; $696d: $91
	and d                                            ; $696e: $a2
	sub b                                            ; $696f: $90
	ld h, [hl]                                       ; $6970: $66
	ld b, h                                          ; $6971: $44
	sbc [hl]                                         ; $6972: $9e
	sbc [hl]                                         ; $6973: $9e
	ld c, l                                          ; $6974: $4d
	set 1, e                                         ; $6975: $cb $cb
	and c                                            ; $6977: $a1
	and b                                            ; $6978: $a0
	ldh [rOCPD], a                                   ; $6979: $e0 $6b
	ld l, e                                          ; $697b: $6b
	xor e                                            ; $697c: $ab
	add hl, hl                                       ; $697d: $29
	add hl, hl                                       ; $697e: $29
	sbc $49                                          ; $697f: $de $49
	add b                                            ; $6981: $80
	and h                                            ; $6982: $a4
	ld [hl], d                                       ; $6983: $72
	cp c                                             ; $6984: $b9
	add sp, $1c                                      ; $6985: $e8 $1c
	ld l, $8e                                        ; $6987: $2e $8e
	rst JumpTable                                          ; $6989: $c7
	jp Jump_025_60c1                                 ; $698a: $c3 $c1 $60


	jr nc, jr_025_693f                               ; $698d: $30 $b0

jr_025_698f:
	sbc b                                            ; $698f: $98
	sbc b                                            ; $6990: $98
	sbc h                                            ; $6991: $9c
	or e                                             ; $6992: $b3
	ld e, b                                          ; $6993: $58
	add hl, hl                                       ; $6994: $29
	sbc l                                            ; $6995: $9d
	inc d                                            ; $6996: $14
	ld c, [hl]                                       ; $6997: $4e
	ld a, [bc]                                       ; $6998: $0a
	daa                                              ; $6999: $27
	pop bc                                           ; $699a: $c1
	pop hl                                           ; $699b: $e1
	ldh a, [rSVBK]                                   ; $699c: $f0 $70
	ld a, b                                          ; $699e: $78
	jr c, jr_025_69dd                                ; $699f: $38 $3c

	sub [hl]                                         ; $69a1: $96
	inc e                                            ; $69a2: $1c
	ld hl, $9090                                     ; $69a3: $21 $90 $90
	ret z                                            ; $69a6: $c8

	call nz, $a2e2                                   ; $69a7: $c4 $e2 $a2
	ld sp, $ffdd                                     ; $69aa: $31 $dd $ff
	db $dd                                           ; $69ad: $dd
	ld a, a                                          ; $69ae: $7f
	sbc d                                            ; $69af: $9a
	ld [bc], a                                       ; $69b0: $02
	add c                                            ; $69b1: $81
	ld b, b                                          ; $69b2: $40
	jr nz, jr_025_69c5                               ; $69b3: $20 $10

	ld a, e                                          ; $69b5: $7b
	ld h, b                                          ; $69b6: $60
	reti                                             ; $69b7: $d9


	rst $38                                          ; $69b8: $ff
	rst SubAFromDE                                          ; $69b9: $df
	dec b                                            ; $69ba: $05
	add b                                            ; $69bb: $80
	rlca                                             ; $69bc: $07
	dec bc                                           ; $69bd: $0b
	dec bc                                           ; $69be: $0b
	ld c, $0e                                        ; $69bf: $0e $0e
	dec d                                            ; $69c1: $15
	ld b, $06                                        ; $69c2: $06 $06
	inc b                                            ; $69c4: $04

jr_025_69c5:
	inc c                                            ; $69c5: $0c
	inc c                                            ; $69c6: $0c
	add hl, bc                                       ; $69c7: $09
	add hl, bc                                       ; $69c8: $09
	dec de                                           ; $69c9: $1b
	adc h                                            ; $69ca: $8c
	sbc l                                            ; $69cb: $9d
	sbc c                                            ; $69cc: $99
	dec hl                                           ; $69cd: $2b
	ld a, [hl]                                       ; $69ce: $7e
	sbc $fc                                          ; $69cf: $de $fc
	cp h                                             ; $69d1: $bc
	ld a, b                                          ; $69d2: $78
	ld a, b                                          ; $69d3: $78
	ld [hl], b                                       ; $69d4: $70
	ldh a, [$e1]                                     ; $69d5: $f0 $e1
	pop hl                                           ; $69d7: $e1
	jp $c9c3                                         ; $69d8: $c3 $c3 $c9


	add b                                            ; $69db: $80
	sbc d                                            ; $69dc: $9a

jr_025_69dd:
	ld [de], a                                       ; $69dd: $12
	jr nz, jr_025_6a15                               ; $69de: $20 $35

	ld b, c                                          ; $69e0: $41
	ld l, c                                          ; $69e1: $69
	ld l, e                                          ; $69e2: $6b
	jr c, jr_025_6a56                                ; $69e3: $38 $71

	pop af                                           ; $69e5: $f1
	di                                               ; $69e6: $f3
	db $e3                                           ; $69e7: $e3
	rst SubAFromBC                                          ; $69e8: $e7
	add $c6                                          ; $69e9: $c6 $c6
	ld c, d                                          ; $69eb: $4a
	call nc, $a996                                   ; $69ec: $d4 $96 $a9
	inc l                                            ; $69ef: $2c
	ld c, e                                          ; $69f0: $4b
	ld d, c                                          ; $69f1: $51
	add hl, de                                       ; $69f2: $19
	add $8e                                          ; $69f3: $c6 $8e
	adc h                                            ; $69f5: $8c
	inc e                                            ; $69f6: $1c
	add hl, de                                       ; $69f7: $19
	add hl, sp                                       ; $69f8: $39
	dec sp                                           ; $69f9: $3b
	ld [hl], e                                       ; $69fa: $73
	sub l                                            ; $69fb: $95
	ret nc                                           ; $69fc: $d0

	pop de                                           ; $69fd: $d1
	add l                                            ; $69fe: $85
	dec l                                            ; $69ff: $2d
	add hl, hl                                       ; $6a00: $29
	adc b                                            ; $6a01: $88

Jump_025_6a02:
	ld d, d                                          ; $6a02: $52
	ld d, d                                          ; $6a03: $52
	ld c, h                                          ; $6a04: $4c
	adc h                                            ; $6a05: $8c
	sbc $98                                          ; $6a06: $de $98
	sbc $39                                          ; $6a08: $de $39
	sub l                                            ; $6a0a: $95
	push bc                                          ; $6a0b: $c5
	pop bc                                           ; $6a0c: $c1
	ld b, c                                          ; $6a0d: $41
	ld b, c                                          ; $6a0e: $41
	sub c                                            ; $6a0f: $91
	sub l                                            ; $6a10: $95
	rst SubAFromHL                                          ; $6a11: $d7
	rst SubAFromHL                                          ; $6a12: $d7
	ld c, b                                          ; $6a13: $48
	ld b, b                                          ; $6a14: $40

jr_025_6a15:
	db $dd                                           ; $6a15: $dd
	call z, $8cdf                                    ; $6a16: $cc $df $8c
	add [hl]                                         ; $6a19: $86
	sub l                                            ; $6a1a: $95
	ld b, e                                          ; $6a1b: $43
	ld l, d                                          ; $6a1c: $6a
	ld b, c                                          ; $6a1d: $41
	dec [hl]                                         ; $6a1e: $35
	inc [hl]                                         ; $6a1f: $34
	ld l, $16                                        ; $6a20: $2e $16
	adc $ce                                          ; $6a22: $ce $ce
	rst JumpTable                                          ; $6a24: $c7
	rst SubAFromBC                                          ; $6a25: $e7
	db $e3                                           ; $6a26: $e3
	db $e3                                           ; $6a27: $e3
	pop af                                           ; $6a28: $f1
	ld sp, hl                                        ; $6a29: $f9
	inc bc                                           ; $6a2a: $03
	sub d                                            ; $6a2b: $92

jr_025_6a2c:
	pop de                                           ; $6a2c: $d1
	pop bc                                           ; $6a2d: $c1
	ld l, c                                          ; $6a2e: $69
	cp b                                             ; $6a2f: $b8
	adc h                                            ; $6a30: $8c
	ld b, h                                          ; $6a31: $44
	ld e, $de                                        ; $6a32: $1e $de
	rrca                                             ; $6a34: $0f
	ld a, [hl]                                       ; $6a35: $7e
	cp c                                             ; $6a36: $b9
	add l                                            ; $6a37: $85
	di                                               ; $6a38: $f3
	ei                                               ; $6a39: $fb
	db $10                                           ; $6a3a: $10
	ret c                                            ; $6a3b: $d8

	ret z                                            ; $6a3c: $c8

	db $e4                                           ; $6a3d: $e4
	ld h, h                                          ; $6a3e: $64
	or d                                             ; $6a3f: $b2
	ldh a, [c]                                       ; $6a40: $f2
	ld e, c                                          ; $6a41: $59
	ld a, a                                          ; $6a42: $7f
	ccf                                              ; $6a43: $3f
	ccf                                              ; $6a44: $3f
	rra                                              ; $6a45: $1f
	sbc a                                            ; $6a46: $9f
	rst GetHLinHL                                          ; $6a47: $cf
	rst GetHLinHL                                          ; $6a48: $cf
	rst SubAFromBC                                          ; $6a49: $e7
	add h                                            ; $6a4a: $84
	add d                                            ; $6a4b: $82
	ld b, d                                          ; $6a4c: $42
	ld b, c                                          ; $6a4d: $41
	ld hl, $1020                                     ; $6a4e: $21 $20 $10
	jr jr_025_6a2c                                   ; $6a51: $18 $d9

	rst $38                                          ; $6a53: $ff
	sub h                                            ; $6a54: $94
	ld a, [de]                                       ; $6a55: $1a

jr_025_6a56:
	inc e                                            ; $6a56: $1c
	inc d                                            ; $6a57: $14
	add hl, de                                       ; $6a58: $19
	add hl, de                                       ; $6a59: $19
	ld de, $0111                                     ; $6a5a: $11 $11 $01
	ld d, $14                                        ; $6a5d: $16 $14
	inc e                                            ; $6a5f: $1c
	ld [hl], e                                       ; $6a60: $73
	ld hl, sp-$65                                    ; $6a61: $f8 $9b
	cp h                                             ; $6a63: $bc
	ld hl, sp-$08                                    ; $6a64: $f8 $f8
	ld a, c                                          ; $6a66: $79
	ld [hl], a                                       ; $6a67: $77
	ld [hl], l                                       ; $6a68: $75
	ld a, [hl]                                       ; $6a69: $7e
	pop de                                           ; $6a6a: $d1
	rst SubAFromDE                                          ; $6a6b: $df
	add a                                            ; $6a6c: $87
	ld a, [hl]                                       ; $6a6d: $7e
	cp a                                             ; $6a6e: $bf
	add b                                            ; $6a6f: $80
	rrca                                             ; $6a70: $0f
	rra                                              ; $6a71: $1f
	ld b, e                                          ; $6a72: $43
	add l                                            ; $6a73: $85
	rst SubAFromHL                                          ; $6a74: $d7
	sub a                                            ; $6a75: $97
	and a                                            ; $6a76: $a7
	daa                                              ; $6a77: $27
	xor e                                            ; $6a78: $ab
	db $eb                                           ; $6a79: $eb
	adc $ce                                          ; $6a7a: $ce $ce
	adc h                                            ; $6a7c: $8c
	adc h                                            ; $6a7d: $8c
	sbc h                                            ; $6a7e: $9c
	sbc h                                            ; $6a7f: $9c
	inc e                                            ; $6a80: $1c
	inc e                                            ; $6a81: $1c
	ld a, [de]                                       ; $6a82: $1a
	sbc a                                            ; $6a83: $9f
	xor e                                            ; $6a84: $ab
	cp e                                             ; $6a85: $bb
	cp e                                             ; $6a86: $bb
	or e                                             ; $6a87: $b3
	inc sp                                           ; $6a88: $33
	ld [hl], e                                       ; $6a89: $73
	ld [hl], e                                       ; $6a8a: $73
	ld [hl], d                                       ; $6a8b: $72
	halt                                             ; $6a8c: $76
	ld h, [hl]                                       ; $6a8d: $66
	ld h, [hl]                                       ; $6a8e: $66
	add b                                            ; $6a8f: $80
	ld l, [hl]                                       ; $6a90: $6e
	xor $ee                                          ; $6a91: $ee $ee
	sub d                                            ; $6a93: $92
	sbc [hl]                                         ; $6a94: $9e
	sbc [hl]                                         ; $6a95: $9e
	sbc h                                            ; $6a96: $9c
	inc a                                            ; $6a97: $3c
	inc a                                            ; $6a98: $3c
	inc [hl]                                         ; $6a99: $34
	inc [hl]                                         ; $6a9a: $34
	ld a, c                                          ; $6a9b: $79
	ld [hl], c                                       ; $6a9c: $71
	ld [hl], c                                       ; $6a9d: $71
	ld [hl], e                                       ; $6a9e: $73
	di                                               ; $6a9f: $f3
	di                                               ; $6aa0: $f3
	ei                                               ; $6aa1: $fb
	ei                                               ; $6aa2: $fb
	rst SubAFromHL                                          ; $6aa3: $d7
	rst SubAFromHL                                          ; $6aa4: $d7
	di                                               ; $6aa5: $f3
	or e                                             ; $6aa6: $b3
	or d                                             ; $6aa7: $b2
	or e                                             ; $6aa8: $b3
	db $d3                                           ; $6aa9: $d3
	db $d3                                           ; $6aaa: $d3
	adc h                                            ; $6aab: $8c
	adc h                                            ; $6aac: $8c
	adc [hl]                                         ; $6aad: $8e
	adc $df                                          ; $6aae: $ce $df
	rst GetHLinHL                                          ; $6ab0: $cf
	rst SubAFromDE                                          ; $6ab1: $df
	rst AddAOntoHL                                          ; $6ab2: $ef
	rst SubAFromDE                                          ; $6ab3: $df
	db $10                                           ; $6ab4: $10
	sbc c                                            ; $6ab5: $99
	jr jr_025_6ad4                                   ; $6ab6: $18 $1c

	ld c, $0e                                        ; $6ab8: $0e $0e
	rrca                                             ; $6aba: $0f
	adc a                                            ; $6abb: $8f
	db $dd                                           ; $6abc: $dd
	rst $38                                          ; $6abd: $ff
	rst SubAFromDE                                          ; $6abe: $df
	ei                                               ; $6abf: $fb
	sub a                                            ; $6ac0: $97
	ld sp, hl                                        ; $6ac1: $f9
	ld hl, sp+$60                                    ; $6ac2: $f8 $60
	ld [hl], b                                       ; $6ac4: $70
	jr c, jr_025_6b03                                ; $6ac5: $38 $3c

	ld e, $1f                                        ; $6ac7: $1e $1f
	ld [hl], a                                       ; $6ac9: $77
	ldh a, [$8e]                                     ; $6aca: $f0 $8e
	rst AddAOntoHL                                          ; $6acc: $ef
	rst SubAFromBC                                          ; $6acd: $e7
	di                                               ; $6ace: $f3
	pop af                                           ; $6acf: $f1
	ld hl, sp-$04                                    ; $6ad0: $f8 $fc
	add hl, hl                                       ; $6ad2: $29
	inc h                                            ; $6ad3: $24

jr_025_6ad4:
	ld [de], a                                       ; $6ad4: $12
	db $10                                           ; $6ad5: $10
	ld [$860c], sp                                   ; $6ad6: $08 $0c $86
	jp $fbf7                                         ; $6ad9: $c3 $f7 $fb


	db $fd                                           ; $6adc: $fd
	call c, $97ff                                    ; $6add: $dc $ff $97
	adc b                                            ; $6ae0: $88
	call z, $3664                                    ; $6ae1: $cc $64 $36
	ld e, $0e                                        ; $6ae4: $1e $0e
	rlca                                             ; $6ae6: $07
	ld bc, $ffd9                                     ; $6ae7: $01 $d9 $ff
	db $dd                                           ; $6aea: $dd
	ld bc, $246e                                     ; $6aeb: $01 $6e $24
	ld l, a                                          ; $6aee: $6f
	ld hl, sp-$65                                    ; $6aef: $f8 $9b
	push hl                                          ; $6af1: $e5
	ld b, l                                          ; $6af2: $45
	ld c, c                                          ; $6af3: $49
	add hl, bc                                       ; $6af4: $09
	sbc $91                                          ; $6af5: $de $91
	sbc d                                            ; $6af7: $9a
	and c                                            ; $6af8: $a1
	dec e                                            ; $6af9: $1d
	cp l                                             ; $6afa: $bd
	cp c                                             ; $6afb: $b9
	ld sp, hl                                        ; $6afc: $f9
	sbc $f1                                          ; $6afd: $de $f1
	sbc h                                            ; $6aff: $9c
	pop hl                                           ; $6b00: $e1
	rst AddAOntoHL                                          ; $6b01: $ef
	rst GetHLinHL                                          ; $6b02: $cf

jr_025_6b03:
	sbc $ce                                          ; $6b03: $de $ce
	sbc d                                            ; $6b05: $9a
	adc [hl]                                         ; $6b06: $8e
	sbc d                                            ; $6b07: $9a
	ld a, [de]                                       ; $6b08: $1a
	jr jr_025_6b43                                   ; $6b09: $18 $38

	sbc $39                                          ; $6b0b: $de $39
	sub h                                            ; $6b0d: $94
	ld a, c                                          ; $6b0e: $79
	ld a, l                                          ; $6b0f: $7d
	db $fd                                           ; $6b10: $fd
	ld h, d                                          ; $6b11: $62
	ld h, [hl]                                       ; $6b12: $66
	ld h, [hl]                                       ; $6b13: $66
	and $e7                                          ; $6b14: $e6 $e7
	rst SubAFromBC                                          ; $6b16: $e7
	rst AddAOntoHL                                          ; $6b17: $ef

jr_025_6b18:
	db $ed                                           ; $6b18: $ed
	sbc $ff                                          ; $6b19: $de $ff
	rst SubAFromDE                                          ; $6b1b: $df
	cp a                                             ; $6b1c: $bf
	rst SubAFromDE                                          ; $6b1d: $df
	cp l                                             ; $6b1e: $bd
	sub a                                            ; $6b1f: $97
	cp a                                             ; $6b20: $bf
	jr c, jr_025_6b5b                                ; $6b21: $38 $38

	ld a, b                                          ; $6b23: $78
	ld a, h                                          ; $6b24: $7c
	ld a, h                                          ; $6b25: $7c
	ld h, d                                          ; $6b26: $62
	ld e, [hl]                                       ; $6b27: $5e
	ld a, e                                          ; $6b28: $7b
	sub c                                            ; $6b29: $91
	add h                                            ; $6b2a: $84
	rst GetHLinHL                                          ; $6b2b: $cf
	rst JumpTable                                          ; $6b2c: $c7
	rst JumpTable                                          ; $6b2d: $c7
	rst SubAFromDE                                          ; $6b2e: $df
	rst $38                                          ; $6b2f: $ff
	pop hl                                           ; $6b30: $e1
	db $e3                                           ; $6b31: $e3
	db $e3                                           ; $6b32: $e3
	di                                               ; $6b33: $f3
	di                                               ; $6b34: $f3
	ld sp, hl                                        ; $6b35: $f9
	ld sp, hl                                        ; $6b36: $f9
	db $fd                                           ; $6b37: $fd
	rst $38                                          ; $6b38: $ff
	cp [hl]                                          ; $6b39: $be
	cp [hl]                                          ; $6b3a: $be
	sbc [hl]                                         ; $6b3b: $9e
	sbc [hl]                                         ; $6b3c: $9e
	adc a                                            ; $6b3d: $8f
	adc a                                            ; $6b3e: $8f
	add a                                            ; $6b3f: $87
	add e                                            ; $6b40: $83
	adc a                                            ; $6b41: $8f
	rst JumpTable                                          ; $6b42: $c7

jr_025_6b43:
	rst SubAFromBC                                          ; $6b43: $e7
	rst FarCall                                          ; $6b44: $f7
	ei                                               ; $6b45: $fb
	sbc $ff                                          ; $6b46: $de $ff
	sub e                                            ; $6b48: $93
	ld hl, sp+$7c                                    ; $6b49: $f8 $7c
	inc a                                            ; $6b4b: $3c
	inc e                                            ; $6b4c: $1c
	ld c, $06                                        ; $6b4d: $0e $06
	ld [bc], a                                       ; $6b4f: $02
	inc bc                                           ; $6b50: $03
	add $f3                                          ; $6b51: $c6 $f3
	ld sp, hl                                        ; $6b53: $f9
	sbc [hl]                                         ; $6b54: $9e
	ld a, e                                          ; $6b55: $7b
	ldh a, [c]                                       ; $6b56: $f2
	sub e                                            ; $6b57: $93
	add e                                            ; $6b58: $83
	ld a, a                                          ; $6b59: $7f
	ccf                                              ; $6b5a: $3f

jr_025_6b5b:
	ld a, a                                          ; $6b5b: $7f
	rst SubAFromBC                                          ; $6b5c: $e7
	ld bc, $f807                                     ; $6b5d: $01 $07 $f8
	rlca                                             ; $6b60: $07
	ld h, e                                          ; $6b61: $63
	ld sp, hl                                        ; $6b62: $f9
	db $fc                                           ; $6b63: $fc
	ld [hl], l                                       ; $6b64: $75
	sbc d                                            ; $6b65: $9a
	sbc $ff                                          ; $6b66: $de $ff
	sbc h                                            ; $6b68: $9c
	rrca                                             ; $6b69: $0f
	add e                                            ; $6b6a: $83
	ret nz                                           ; $6b6b: $c0

	ld a, e                                          ; $6b6c: $7b
	ld hl, sp-$69                                    ; $6b6d: $f8 $97
	ret nz                                           ; $6b6f: $c0

	or b                                             ; $6b70: $b0
	adc $63                                          ; $6b71: $ce $63
	jp nc, Jump_025_7dc9                             ; $6b73: $d2 $c9 $7d

	inc hl                                           ; $6b76: $23
	db $db                                           ; $6b77: $db
	rst $38                                          ; $6b78: $ff
	sbc e                                            ; $6b79: $9b
	ld a, a                                          ; $6b7a: $7f
	inc hl                                           ; $6b7b: $23
	and c                                            ; $6b7c: $a1
	and c                                            ; $6b7d: $a1
	sbc $40                                          ; $6b7e: $de $40
	cp $df                                           ; $6b80: $fe $df
	pop hl                                           ; $6b82: $e1
	ld l, a                                          ; $6b83: $6f
	ld hl, sp-$21                                    ; $6b84: $f8 $df
	jr jr_025_6b18                                   ; $6b86: $18 $90

	sub h                                            ; $6b88: $94
	and h                                            ; $6b89: $a4
	and a                                            ; $6b8a: $a7
	xor a                                            ; $6b8b: $af
	ld [hl], a                                       ; $6b8c: $77
	ld l, a                                          ; $6b8d: $6f
	rst $38                                          ; $6b8e: $ff
	rst $38                                          ; $6b8f: $ff
	rst FarCall                                          ; $6b90: $f7
	rst SubAFromBC                                          ; $6b91: $e7
	rst SubAFromBC                                          ; $6b92: $e7
	db $ec                                           ; $6b93: $ec
	ld [hl], b                                       ; $6b94: $70
	ld b, b                                          ; $6b95: $40
	db $eb                                           ; $6b96: $eb
	ld [hl], l                                       ; $6b97: $75
	add hl, de                                       ; $6b98: $19
	add h                                            ; $6b99: $84
	ld sp, hl                                        ; $6b9a: $f9
	or $ef                                           ; $6b9b: $f6 $ef
	cp a                                             ; $6b9d: $bf
	sbc h                                            ; $6b9e: $9c
	sbc b                                            ; $6b9f: $98
	sub c                                            ; $6ba0: $91
	or $19                                           ; $6ba1: $f6 $19
	rla                                              ; $6ba3: $17
	add sp, -$01                                     ; $6ba4: $e8 $ff
	rst $38                                          ; $6ba6: $ff
	di                                               ; $6ba7: $f3
	ldh [rIF], a                                     ; $6ba8: $e0 $0f
	rst $38                                          ; $6baa: $ff
	or a                                             ; $6bab: $b7
	ld h, e                                          ; $6bac: $63
	ret nz                                           ; $6bad: $c0

	ret nz                                           ; $6bae: $c0

	ld c, a                                          ; $6baf: $4f
	ldh a, [rIF]                                     ; $6bb0: $f0 $0f
	rst $38                                          ; $6bb2: $ff
	ld a, a                                          ; $6bb3: $7f
	di                                               ; $6bb4: $f3
	ld [hl], a                                       ; $6bb5: $77
	and a                                            ; $6bb6: $a7
	rst SubAFromDE                                          ; $6bb7: $df
	rst FarCall                                          ; $6bb8: $f7
	sub e                                            ; $6bb9: $93
	ld a, [$81f8]                                    ; $6bba: $fa $f8 $81
	add b                                            ; $6bbd: $80
	ld hl, sp+$0c                                    ; $6bbe: $f8 $0c
	db $f4                                           ; $6bc0: $f4
	rst FarCall                                          ; $6bc1: $f7
	ld a, [$fec8]                                    ; $6bc2: $fa $c8 $fe
	db $fc                                           ; $6bc5: $fc
	db $dd                                           ; $6bc6: $dd
	db $fd                                           ; $6bc7: $fd
	sbc e                                            ; $6bc8: $9b
	ld bc, $86fd                                     ; $6bc9: $01 $fd $86
	add l                                            ; $6bcc: $85
	sbc $05                                          ; $6bcd: $de $05
	ld a, a                                          ; $6bcf: $7f
	ld hl, sp+$7f                                    ; $6bd0: $f8 $7f
	sbc $80                                          ; $6bd2: $de $80
	rst FarCall                                          ; $6bd4: $f7
	db $fc                                           ; $6bd5: $fc
	cp b                                             ; $6bd6: $b8
	call nc, $e3e4                                   ; $6bd7: $d4 $e4 $e3
	add c                                            ; $6bda: $81
	ld a, a                                          ; $6bdb: $7f
	adc a                                            ; $6bdc: $8f
	ld e, $7c                                        ; $6bdd: $1e $7c
	inc [hl]                                         ; $6bdf: $34
	dec b                                            ; $6be0: $05
	inc bc                                           ; $6be1: $03
	inc bc                                           ; $6be2: $03
	rst FarCall                                          ; $6be3: $f7
	rst $38                                          ; $6be4: $ff
	ccf                                              ; $6be5: $3f
	dec sp                                           ; $6be6: $3b
	ld l, e                                          ; $6be7: $6b
	db $eb                                           ; $6be8: $eb
	jp $f8cb                                         ; $6be9: $c3 $cb $f8


	rst $38                                          ; $6bec: $ff
	ld a, a                                          ; $6bed: $7f
	ld a, d                                          ; $6bee: $7a
	ld hl, sp-$08                                    ; $6bef: $f8 $f8
	ldh [$f8], a                                     ; $6bf1: $e0 $f8
	sbc d                                            ; $6bf3: $9a
	and e                                            ; $6bf4: $a3
	cp a                                             ; $6bf5: $bf
	and a                                            ; $6bf6: $a7
	rst SubAFromBC                                          ; $6bf7: $e7
	rst SubAFromBC                                          ; $6bf8: $e7
	sbc $f7                                          ; $6bf9: $de $f7
	rst SubAFromDE                                          ; $6bfb: $df
	cp a                                             ; $6bfc: $bf
	ld a, l                                          ; $6bfd: $7d
	xor l                                            ; $6bfe: $ad
	sub [hl]                                         ; $6bff: $96
	ld a, d                                          ; $6c00: $7a
	dec a                                            ; $6c01: $3d
	dec a                                            ; $6c02: $3d
	ccf                                              ; $6c03: $3f
	sub b                                            ; $6c04: $90
	adc b                                            ; $6c05: $88
	adc b                                            ; $6c06: $88
	ret z                                            ; $6c07: $c8

	ret z                                            ; $6c08: $c8

	sbc $c4                                          ; $6c09: $de $c4
	ld l, c                                          ; $6c0b: $69
	ld [hl], c                                       ; $6c0c: $71
	sbc [hl]                                         ; $6c0d: $9e
	ld a, a                                          ; $6c0e: $7f
	dec e                                            ; $6c0f: $1d
	nop                                              ; $6c10: $00
	sbc [hl]                                         ; $6c11: $9e
	nop                                              ; $6c12: $00
	db $dd                                           ; $6c13: $dd
	ld de, $109c                                     ; $6c14: $11 $9c $10
	nop                                              ; $6c17: $00
	ld bc, $f947                                     ; $6c18: $01 $47 $f9
	sbc c                                            ; $6c1b: $99
	ld [de], a                                       ; $6c1c: $12
	ld hl, $0010                                     ; $6c1d: $21 $10 $00
	nop                                              ; $6c20: $00
	ld de, $22de                                     ; $6c21: $11 $de $22
	sbc h                                            ; $6c24: $9c
	jr nz, jr_025_6c27                               ; $6c25: $20 $00

jr_025_6c27:
	nop                                              ; $6c27: $00
	call c, $9e22                                    ; $6c28: $dc $22 $9e
	nop                                              ; $6c2b: $00
	ccf                                              ; $6c2c: $3f
	ld hl, sp-$01                                    ; $6c2d: $f8 $ff
	jp $1ffc                                         ; $6c2f: $c3 $fc $1f


	ldh a, [rIE]                                     ; $6c32: $f0 $ff
	jp $00ff                                         ; $6c34: $c3 $ff $00


	ld [$9783], sp                                   ; $6c37: $08 $83 $97
	nop                                              ; $6c3a: $00
	ld bc, $0402                                     ; $6c3b: $01 $02 $04
	inc c                                            ; $6c3e: $0c
	add hl, bc                                       ; $6c3f: $09
	add hl, de                                       ; $6c40: $19
	scf                                              ; $6c41: $37
	ld [hl], a                                       ; $6c42: $77
	ld hl, sp-$21                                    ; $6c43: $f8 $df
	ld [$1199], sp                                   ; $6c45: $08 $99 $11
	ld h, $9f                                        ; $6c48: $26 $9f
	dec a                                            ; $6c4a: $3d
	ld [hl], b                                       ; $6c4b: $70
	and $de                                          ; $6c4c: $e6 $de
	rst $38                                          ; $6c4e: $ff
	add b                                            ; $6c4f: $80
	rrca                                             ; $6c50: $0f
	add e                                            ; $6c51: $83
	dec c                                            ; $6c52: $0d
	db $10                                           ; $6c53: $10
	ld h, $39                                        ; $6c54: $26 $39
	ld h, b                                          ; $6c56: $60
	add b                                            ; $6c57: $80
	inc b                                            ; $6c58: $04
	xor [hl]                                         ; $6c59: $ae
	xor e                                            ; $6c5a: $ab
	xor a                                            ; $6c5b: $af
	xor e                                            ; $6c5c: $ab
	xor a                                            ; $6c5d: $af
	sbc l                                            ; $6c5e: $9d
	db $d3                                           ; $6c5f: $d3
	jp nc, $afa9                                     ; $6c60: $d2 $a9 $af

	xor b                                            ; $6c63: $a8
	xor h                                            ; $6c64: $ac
	cp h                                             ; $6c65: $bc
	sbc [hl]                                         ; $6c66: $9e
	ld d, d                                          ; $6c67: $52
	ld d, e                                          ; $6c68: $53
	db $e3                                           ; $6c69: $e3
	rst SubAFromBC                                          ; $6c6a: $e7
	rst $38                                          ; $6c6b: $ff
	sub a                                            ; $6c6c: $97
	sub b                                            ; $6c6d: $90
	ret z                                            ; $6c6e: $c8

	add b                                            ; $6c6f: $80
	cp $00                                           ; $6c70: $fe $00
	db $e3                                           ; $6c72: $e3
	and a                                            ; $6c73: $a7
	cp a                                             ; $6c74: $bf
	rra                                              ; $6c75: $1f
	rra                                              ; $6c76: $1f
	rrca                                             ; $6c77: $0f
	nop                                              ; $6c78: $00
	nop                                              ; $6c79: $00
	sbc e                                            ; $6c7a: $9b
	sbc $06                                          ; $6c7b: $de $06
	ld [bc], a                                       ; $6c7d: $02
	ld b, d                                          ; $6c7e: $42
	jp nz, $0402                                     ; $6c7f: $c2 $02 $04

	adc a                                            ; $6c82: $8f
	add $c4                                          ; $6c83: $c6 $c4
	inc b                                            ; $6c85: $04
	call nz, $0484                                   ; $6c86: $c4 $84 $04
	inc b                                            ; $6c89: $04
	add a                                            ; $6c8a: $87
	ld bc, $0001                                     ; $6c8b: $01 $01 $00
	db $10                                           ; $6c8e: $10
	sbc e                                            ; $6c8f: $9b
	inc e                                            ; $6c90: $1c
	ld e, $1f                                        ; $6c91: $1e $1f
	rlca                                             ; $6c93: $07
	ld a, e                                          ; $6c94: $7b
	ld hl, sp-$03                                    ; $6c95: $f8 $fd
	adc e                                            ; $6c97: $8b
	add d                                            ; $6c98: $82
	add a                                            ; $6c99: $87
	add b                                            ; $6c9a: $80
	ret nz                                           ; $6c9b: $c0

	ret nz                                           ; $6c9c: $c0

	ld [hl], b                                       ; $6c9d: $70
	ccf                                              ; $6c9e: $3f
	rlca                                             ; $6c9f: $07
	inc bc                                           ; $6ca0: $03
	ld bc, $8000                                     ; $6ca1: $01 $00 $80
	add b                                            ; $6ca4: $80
	ld b, b                                          ; $6ca5: $40
	ccf                                              ; $6ca6: $3f
	nop                                              ; $6ca7: $00
	rla                                              ; $6ca8: $17
	ccf                                              ; $6ca9: $3f
	inc bc                                           ; $6caa: $03
	rrca                                             ; $6cab: $0f
	sbc $1f                                          ; $6cac: $de $1f
	sbc h                                            ; $6cae: $9c
	rst $38                                          ; $6caf: $ff
	ldh a, [$e0]                                     ; $6cb0: $f0 $e0
	cp $8a                                           ; $6cb2: $fe $8a
	inc bc                                           ; $6cb4: $03
	db $fc                                           ; $6cb5: $fc
	nop                                              ; $6cb6: $00
	rst FarCall                                          ; $6cb7: $f7
	rst SubAFromDE                                          ; $6cb8: $df
	rst $38                                          ; $6cb9: $ff
	rst $38                                          ; $6cba: $ff
	cp a                                             ; $6cbb: $bf
	rst $38                                          ; $6cbc: $ff
	cp $fe                                           ; $6cbd: $fe $fe
	dec a                                            ; $6cbf: $3d
	ld a, [hl+]                                      ; $6cc0: $2a
	inc l                                            ; $6cc1: $2c
	ld l, h                                          ; $6cc2: $6c
	ret                                              ; $6cc3: $c9


	ld bc, $1f03                                     ; $6cc4: $01 $03 $1f
	db $e4                                           ; $6cc7: $e4
	ldh [c], a                                       ; $6cc8: $e2
	call c, $9ca2                                    ; $6cc9: $dc $a2 $9c
	sub c                                            ; $6ccc: $91
	ld a, a                                          ; $6ccd: $7f
	ld a, a                                          ; $6cce: $7f
	db $db                                           ; $6ccf: $db
	rst $38                                          ; $6cd0: $ff
	reti                                             ; $6cd1: $d9


	ld b, h                                          ; $6cd2: $44
	reti                                             ; $6cd3: $d9


	rst $38                                          ; $6cd4: $ff
	sub l                                            ; $6cd5: $95
	jr nz, @+$69                                     ; $6cd6: $20 $67

	ld b, b                                          ; $6cd8: $40
	ld b, b                                          ; $6cd9: $40
	ld b, e                                          ; $6cda: $43
	ld b, b                                          ; $6cdb: $40
	ld h, b                                          ; $6cdc: $60
	ld h, b                                          ; $6cdd: $60
	jr nz, @+$43                                     ; $6cde: $20 $41

	db $db                                           ; $6ce0: $db
	ld b, b                                          ; $6ce1: $40
	adc d                                            ; $6ce2: $8a
	ccf                                              ; $6ce3: $3f
	rst $38                                          ; $6ce4: $ff
	rlca                                             ; $6ce5: $07
	rst $38                                          ; $6ce6: $ff
	rst $38                                          ; $6ce7: $ff
	rra                                              ; $6ce8: $1f
	rra                                              ; $6ce9: $1f
	ld a, a                                          ; $6cea: $7f
	inc b                                            ; $6ceb: $04
	cp $03                                           ; $6cec: $fe $03
	ld bc, $09f1                                     ; $6cee: $01 $f1 $09
	dec b                                            ; $6cf1: $05
	dec b                                            ; $6cf2: $05
	jp hl                                            ; $6cf3: $e9


	jp hl                                            ; $6cf4: $e9


	rst SubAFromBC                                          ; $6cf5: $e7
	rst GetHLinHL                                          ; $6cf6: $cf
	rst SubAFromDE                                          ; $6cf7: $df
	ld a, e                                          ; $6cf8: $7b
	xor a                                            ; $6cf9: $af
	rst SubAFromDE                                          ; $6cfa: $df
	add hl, hl                                       ; $6cfb: $29
	sbc c                                            ; $6cfc: $99
	daa                                              ; $6cfd: $27
	ld c, c                                          ; $6cfe: $49
	ld d, b                                          ; $6cff: $50
	and b                                            ; $6d00: $a0
	pop hl                                           ; $6d01: $e1
	jp nz, Jump_025_7e7b                             ; $6d02: $c2 $7b $7e

	sbc e                                            ; $6d05: $9b
	rst JumpTable                                          ; $6d06: $c7
	cp b                                             ; $6d07: $b8
	ret nz                                           ; $6d08: $c0

	ldh [$7b], a                                     ; $6d09: $e0 $7b
	sub d                                            ; $6d0b: $92
	sbc l                                            ; $6d0c: $9d
	ld bc, $defe                                     ; $6d0d: $01 $fe $de
	ret nz                                           ; $6d10: $c0

	sbc d                                            ; $6d11: $9a
	ldh [$0c], a                                     ; $6d12: $e0 $0c
	jr @+$62                                         ; $6d14: $18 $60

	add b                                            ; $6d16: $80
	db $fd                                           ; $6d17: $fd
	sbc h                                            ; $6d18: $9c
	ld [$c030], sp                                   ; $6d19: $08 $30 $c0
	db $fc                                           ; $6d1c: $fc
	sub h                                            ; $6d1d: $94
	ld e, $3c                                        ; $6d1e: $1e $3c
	jr jr_025_6d22                                   ; $6d20: $18 $00

jr_025_6d22:
	ld bc, $1c66                                     ; $6d22: $01 $66 $1c
	nop                                              ; $6d25: $00
	db $10                                           ; $6d26: $10
	jr z, jr_025_6d39                                ; $6d27: $28 $10

	ld a, e                                          ; $6d29: $7b
	ld [hl], b                                       ; $6d2a: $70
	sbc [hl]                                         ; $6d2b: $9e
	inc a                                            ; $6d2c: $3c
	ldh a, [$df]                                     ; $6d2d: $f0 $df
	ccf                                              ; $6d2f: $3f
	sbc $7f                                          ; $6d30: $de $7f
	rst SubAFromDE                                          ; $6d32: $df
	rst $38                                          ; $6d33: $ff
	sbc [hl]                                         ; $6d34: $9e
	db $fd                                           ; $6d35: $fd
	ei                                               ; $6d36: $fb
	ld a, a                                          ; $6d37: $7f
	ld e, a                                          ; $6d38: $5f

jr_025_6d39:
	sbc [hl]                                         ; $6d39: $9e
	or $de                                           ; $6d3a: $f6 $de
	db $e4                                           ; $6d3c: $e4
	db $dd                                           ; $6d3d: $dd
	call nz, $3fde                                   ; $6d3e: $c4 $de $3f
	ld [hl], e                                       ; $6d41: $73
	ld e, l                                          ; $6d42: $5d
	db $dd                                           ; $6d43: $dd
	sub c                                            ; $6d44: $91
	rst SubAFromDE                                          ; $6d45: $df
	sbc c                                            ; $6d46: $99
	sbc l                                            ; $6d47: $9d
	reti                                             ; $6d48: $d9


	db $dd                                           ; $6d49: $dd
	reti                                             ; $6d4a: $d9


	rst $38                                          ; $6d4b: $ff
	sbc h                                            ; $6d4c: $9c
	ld h, e                                          ; $6d4d: $63
	ld h, a                                          ; $6d4e: $67
	inc hl                                           ; $6d4f: $23
	call c, $9d21                                    ; $6d50: $dc $21 $9d
	ld b, b                                          ; $6d53: $40
	ld b, c                                          ; $6d54: $41
	db $db                                           ; $6d55: $db
	jr nz, @-$25                                     ; $6d56: $20 $d9

	rst $38                                          ; $6d58: $ff
	sub l                                            ; $6d59: $95
	ld b, l                                          ; $6d5a: $45
	push af                                          ; $6d5b: $f5
	push bc                                          ; $6d5c: $c5
	adc [hl]                                         ; $6d5d: $8e
	adc b                                            ; $6d5e: $88

jr_025_6d5f:
	sub b                                            ; $6d5f: $90
	ld h, b                                          ; $6d60: $60
	jr nz, jr_025_6d5f                               ; $6d61: $20 $fc

	db $fc                                           ; $6d63: $fc
	sbc $f9                                          ; $6d64: $de $f9
	sbc d                                            ; $6d66: $9a
	pop af                                           ; $6d67: $f1
	di                                               ; $6d68: $f3
	ldh a, [c]                                       ; $6d69: $f2
	add h                                            ; $6d6a: $84
	inc b                                            ; $6d6b: $04
	sbc $09                                          ; $6d6c: $de $09
	sub b                                            ; $6d6e: $90
	ld de, $1313                                     ; $6d6f: $11 $13 $13
	or b                                             ; $6d72: $b0
	cp b                                             ; $6d73: $b8
	sbc h                                            ; $6d74: $9c
	ld e, $17                                        ; $6d75: $1e $17
	ld de, $1010                                     ; $6d77: $11 $10 $10
	ldh [$f0], a                                     ; $6d7a: $e0 $f0
	ld hl, sp-$04                                    ; $6d7c: $f8 $fc
	db $dd                                           ; $6d7e: $dd
	rst $38                                          ; $6d7f: $ff
	db $fd                                           ; $6d80: $fd
	sbc e                                            ; $6d81: $9b
	add b                                            ; $6d82: $80
	ldh [$f8], a                                     ; $6d83: $e0 $f8
	sbc [hl]                                         ; $6d85: $9e
	db $fc                                           ; $6d86: $fc
	sbc d                                            ; $6d87: $9a
	ret nz                                           ; $6d88: $c0

	ldh a, [$fc]                                     ; $6d89: $f0 $fc
	ld e, $0c                                        ; $6d8b: $1e $0c
	di                                               ; $6d8d: $f3
	rst SubAFromDE                                          ; $6d8e: $df
	ld bc, $03df                                     ; $6d8f: $01 $df $03
	rst SubAFromDE                                          ; $6d92: $df
	rlca                                             ; $6d93: $07
	ld a, [hl]                                       ; $6d94: $7e
	cp l                                             ; $6d95: $bd
	ld l, e                                          ; $6d96: $6b
	ldh a, [c]                                       ; $6d97: $f2
	ld a, e                                          ; $6d98: $7b
	inc bc                                           ; $6d99: $03
	call c, Call_025_7fff                            ; $6d9a: $dc $ff $7f
	ld [bc], a                                       ; $6d9d: $02

jr_025_6d9e:
	ld a, e                                          ; $6d9e: $7b
	db $ec                                           ; $6d9f: $ec
	ld [hl], a                                       ; $6da0: $77
	ld [hl], b                                       ; $6da1: $70
	db $fc                                           ; $6da2: $fc
	sbc l                                            ; $6da3: $9d
	ld c, $1d                                        ; $6da4: $0e $1d
	ld l, a                                          ; $6da6: $6f
	ldh [$9c], a                                     ; $6da7: $e0 $9c
	ld c, $13                                        ; $6da9: $0e $13
	db $10                                           ; $6dab: $10
	sbc $20                                          ; $6dac: $de $20
	sbc d                                            ; $6dae: $9a
	ld h, b                                          ; $6daf: $60
	ld h, c                                          ; $6db0: $61
	ld h, c                                          ; $6db1: $61
	db $e3                                           ; $6db2: $e3
	ccf                                              ; $6db3: $3f
	sbc $20                                          ; $6db4: $de $20
	sbc $40                                          ; $6db6: $de $40
	sbc l                                            ; $6db8: $9d
	ret nz                                           ; $6db9: $c0

	ld hl, sp+$6b                                    ; $6dba: $f8 $6b
	pop de                                           ; $6dbc: $d1
	sbc l                                            ; $6dbd: $9d
	db $fc                                           ; $6dbe: $fc
	jr nz, jr_025_6d9e                               ; $6dbf: $20 $dd

	db $10                                           ; $6dc1: $10
	add c                                            ; $6dc2: $81
	ld de, $0422                                     ; $6dc3: $11 $22 $04
	ldh [c], a                                       ; $6dc6: $e2
	ldh [c], a                                       ; $6dc7: $e2
	db $e4                                           ; $6dc8: $e4
	call nz, $0884                                   ; $6dc9: $c4 $84 $08
	ld [$2310], sp                                   ; $6dcc: $08 $10 $23
	inc hl                                           ; $6dcf: $23
	daa                                              ; $6dd0: $27
	ld b, a                                          ; $6dd1: $47
	add a                                            ; $6dd2: $87
	rrca                                             ; $6dd3: $0f
	rrca                                             ; $6dd4: $0f
	rra                                              ; $6dd5: $1f
	db $10                                           ; $6dd6: $10
	db $10                                           ; $6dd7: $10
	jr z, @+$3b                                      ; $6dd8: $28 $39

	add hl, sp                                       ; $6dda: $39
	ld e, c                                          ; $6ddb: $59
	ld a, c                                          ; $6ddc: $79
	ld [hl], d                                       ; $6ddd: $72
	rst $38                                          ; $6dde: $ff
	rst $38                                          ; $6ddf: $ff
	rst FarCall                                          ; $6de0: $f7
	sbc $e7                                          ; $6de1: $de $e7
	sub l                                            ; $6de3: $95
	rst JumpTable                                          ; $6de4: $c7
	rst GetHLinHL                                          ; $6de5: $cf
	add a                                            ; $6de6: $87
	add l                                            ; $6de7: $85
	add h                                            ; $6de8: $84
	inc b                                            ; $6de9: $04
	ld c, h                                          ; $6dea: $4c
	ret z                                            ; $6deb: $c8

	ret z                                            ; $6dec: $c8

	ld e, b                                          ; $6ded: $58
	db $dd                                           ; $6dee: $dd
	rst $38                                          ; $6def: $ff
	sbc [hl]                                         ; $6df0: $9e
	cp a                                             ; $6df1: $bf
	sbc $3f                                          ; $6df2: $de $3f
	ld a, a                                          ; $6df4: $7f
	ld h, h                                          ; $6df5: $64
	sbc c                                            ; $6df6: $99
	ld a, c                                          ; $6df7: $79
	ld a, a                                          ; $6df8: $7f
	ld a, a                                          ; $6df9: $7f
	ld l, a                                          ; $6dfa: $6f
	ld h, b                                          ; $6dfb: $60
	ld h, b                                          ; $6dfc: $60
	ld a, e                                          ; $6dfd: $7b
	ld h, h                                          ; $6dfe: $64
	sbc [hl]                                         ; $6dff: $9e
	rst GetHLinHL                                          ; $6e00: $cf
	ld a, d                                          ; $6e01: $7a
	or c                                             ; $6e02: $b1
	sbc l                                            ; $6e03: $9d
	ldh [$3f], a                                     ; $6e04: $e0 $3f
	ld l, [hl]                                       ; $6e06: $6e
	ld e, b                                          ; $6e07: $58
	ld a, l                                          ; $6e08: $7d
	push af                                          ; $6e09: $f5
	ld a, [hl]                                       ; $6e0a: $7e
	ld [hl], a                                       ; $6e0b: $77
	rst SubAFromDE                                          ; $6e0c: $df
	rst $38                                          ; $6e0d: $ff
	sbc d                                            ; $6e0e: $9a
	ld a, $0c                                        ; $6e0f: $3e $0c
	nop                                              ; $6e11: $00
	cp $fe                                           ; $6e12: $fe $fe
	sbc $fc                                          ; $6e14: $de $fc
	sbc $f8                                          ; $6e16: $de $f8
	ld a, e                                          ; $6e18: $7b
	pop bc                                           ; $6e19: $c1
	sbc d                                            ; $6e1a: $9a
	add $8e                                          ; $6e1b: $c6 $8e
	ld c, $0c                                        ; $6e1d: $0e $0c
	inc e                                            ; $6e1f: $1c
	ld l, e                                          ; $6e20: $6b
	ld e, c                                          ; $6e21: $59
	ld l, a                                          ; $6e22: $6f
	ld [hl], b                                       ; $6e23: $70
	ld a, a                                          ; $6e24: $7f
	ld hl, sp-$6a                                    ; $6e25: $f8 $96
	dec de                                           ; $6e27: $1b
	ccf                                              ; $6e28: $3f
	jr nz, jr_025_6e8b                               ; $6e29: $20 $60

	ld a, a                                          ; $6e2b: $7f
	rst $38                                          ; $6e2c: $ff
	db $ec                                           ; $6e2d: $ec
	inc sp                                           ; $6e2e: $33
	call z, Call_025_7177                            ; $6e2f: $cc $77 $71
	sub d                                            ; $6e32: $92
	sbc a                                            ; $6e33: $9f
	ldh [rP1], a                                     ; $6e34: $e0 $00
	ret nz                                           ; $6e36: $c0

	rst FarCall                                          ; $6e37: $f7
	cp $1f                                           ; $6e38: $fe $1f
	inc bc                                           ; $6e3a: $03
	ldh [$fc], a                                     ; $6e3b: $e0 $fc
	inc sp                                           ; $6e3d: $33
	call z, Call_025_790f                            ; $6e3e: $cc $0f $79
	pop de                                           ; $6e41: $d1
	sub a                                            ; $6e42: $97
	ret nz                                           ; $6e43: $c0

	inc a                                            ; $6e44: $3c
	inc bc                                           ; $6e45: $03
	nop                                              ; $6e46: $00
	ld hl, sp-$08                                    ; $6e47: $f8 $f8
	jr c, @+$06                                      ; $6e49: $38 $04

	sbc $02                                          ; $6e4b: $de $02
	add b                                            ; $6e4d: $80
	call nz, $c808                                   ; $6e4e: $c4 $08 $c8
	ld hl, sp-$04                                    ; $6e51: $f8 $fc
	cp $1e                                           ; $6e53: $fe $1e
	add [hl]                                         ; $6e55: $86
	db $e4                                           ; $6e56: $e4
	db $10                                           ; $6e57: $10
	inc l                                            ; $6e58: $2c
	ld h, $54                                        ; $6e59: $26 $54
	ld c, l                                          ; $6e5b: $4d
	ld c, c                                          ; $6e5c: $49
	sub c                                            ; $6e5d: $91
	or c                                             ; $6e5e: $b1
	rra                                              ; $6e5f: $1f
	inc sp                                           ; $6e60: $33
	ld sp, $6363                                     ; $6e61: $31 $63 $63
	ld h, a                                          ; $6e64: $67
	rst AddAOntoHL                                          ; $6e65: $ef
	rst GetHLinHL                                          ; $6e66: $cf
	sub e                                            ; $6e67: $93
	db $d3                                           ; $6e68: $d3
	call nc, $0486                                   ; $6e69: $d4 $86 $04
	xor c                                            ; $6e6c: $a9
	add l                                            ; $6e6d: $85
	add hl, bc                                       ; $6e6e: $09
	ld a, [bc]                                       ; $6e6f: $0a
	adc $8e                                          ; $6e70: $ce $8e
	adc [hl]                                         ; $6e72: $8e
	sbc h                                            ; $6e73: $9c
	sbc h                                            ; $6e74: $9c
	inc e                                            ; $6e75: $1c
	jr c, jr_025_6eb1                                ; $6e76: $38 $39

	ld d, [hl]                                       ; $6e78: $56
	ld [hl], $ac                                     ; $6e79: $36 $ac
	call c, $2c7c                                    ; $6e7b: $dc $7c $2c
	ld c, h                                          ; $6e7e: $4c
	ld e, c                                          ; $6e7f: $59
	add hl, sp                                       ; $6e80: $39
	ld a, c                                          ; $6e81: $79
	ld [hl], e                                       ; $6e82: $73
	ld h, e                                          ; $6e83: $63
	jp $83c3                                         ; $6e84: $c3 $c3 $83


	add a                                            ; $6e87: $87
	sbc $70                                          ; $6e88: $de $70
	sbc l                                            ; $6e8a: $9d

jr_025_6e8b:
	ld d, b                                          ; $6e8b: $50
	ret nc                                           ; $6e8c: $d0

	sbc $90                                          ; $6e8d: $de $90
	sbc $e0                                          ; $6e8f: $de $e0
	call c, $dbf0                                    ; $6e91: $dc $f0 $db
	ld bc, $039d                                     ; $6e94: $01 $9d $03
	ld [bc], a                                       ; $6e97: $02
	ld h, [hl]                                       ; $6e98: $66
	pop bc                                           ; $6e99: $c1
	rst SubAFromDE                                          ; $6e9a: $df
	ldh a, [$de]                                     ; $6e9b: $f0 $de
	ldh [hDisp1_OBP0], a                                     ; $6e9d: $e0 $93
	pop bc                                           ; $6e9f: $c1
	ld c, [hl]                                       ; $6ea0: $4e
	pop af                                           ; $6ea1: $f1
	inc e                                            ; $6ea2: $1c

jr_025_6ea3:
	add hl, de                                       ; $6ea3: $19
	add hl, sp                                       ; $6ea4: $39
	dec sp                                           ; $6ea5: $3b
	dec sp                                           ; $6ea6: $3b
	ld a, a                                          ; $6ea7: $7f
	cp $f0                                           ; $6ea8: $fe $f0
	ld a, $69                                        ; $6eaa: $3e $69
	sbc b                                            ; $6eac: $98
	sbc e                                            ; $6ead: $9b
	inc hl                                           ; $6eae: $23
	ld b, e                                          ; $6eaf: $43
	add c                                            ; $6eb0: $81

jr_025_6eb1:
	add b                                            ; $6eb1: $80
	ld [hl], l                                       ; $6eb2: $75
	rst SubAFromBC                                          ; $6eb3: $e7
	adc b                                            ; $6eb4: $88
	di                                               ; $6eb5: $f3
	ld e, h                                          ; $6eb6: $5c
	xor a                                            ; $6eb7: $af
	push de                                          ; $6eb8: $d5
	ld [$faf5], a                                    ; $6eb9: $ea $f5 $fa
	db $fd                                           ; $6ebc: $fd
	ld [hl], b                                       ; $6ebd: $70
	xor h                                            ; $6ebe: $ac
	rst SubAFromHL                                          ; $6ebf: $d7
	ld [$3a75], a                                    ; $6ec0: $ea $75 $3a
	dec e                                            ; $6ec3: $1d

Jump_025_6ec4:
	ld c, $32                                        ; $6ec4: $0e $32
	call $cc32                                       ; $6ec6: $cd $32 $cc

jr_025_6ec9:
	ld [hl], e                                       ; $6ec9: $73
	inc e                                            ; $6eca: $1c
	rlca                                             ; $6ecb: $07
	ld [hl], l                                       ; $6ecc: $75
	inc sp                                           ; $6ecd: $33
	ld a, d                                          ; $6ece: $7a
	ld [hl], d                                       ; $6ecf: $72
	rst SubAFromDE                                          ; $6ed0: $df
	rst $38                                          ; $6ed1: $ff
	sub h                                            ; $6ed2: $94
	dec a                                            ; $6ed3: $3d
	adc a                                            ; $6ed4: $8f
	ld b, e                                          ; $6ed5: $43
	add b                                            ; $6ed6: $80
	ld h, $c1                                        ; $6ed7: $26 $c1
	jr nc, jr_025_6ea3                               ; $6ed9: $30 $c8

	dec a                                            ; $6edb: $3d
	rrca                                             ; $6edc: $0f
	inc bc                                           ; $6edd: $03
	ld [hl], d                                       ; $6ede: $72
	ld e, [hl]                                       ; $6edf: $5e
	add e                                            ; $6ee0: $83
	and d                                            ; $6ee1: $a2
	ld h, e                                          ; $6ee2: $63
	ld b, $c4                                        ; $6ee3: $06 $c4
	dec a                                            ; $6ee5: $3d
	dec c                                            ; $6ee6: $0d
	ld h, e                                          ; $6ee7: $63
	jr jr_025_6ec9                                   ; $6ee8: $18 $df

	sbc [hl]                                         ; $6eea: $9e
	cp $fe                                           ; $6eeb: $fe $fe
	ld a, $0e                                        ; $6eed: $3e $0e
	inc bc                                           ; $6eef: $03
	nop                                              ; $6ef0: $00
	ld d, d                                          ; $6ef1: $52
	ld e, h                                          ; $6ef2: $5c
	sbc c                                            ; $6ef3: $99
	and l                                            ; $6ef4: $a5
	ld l, $6c                                        ; $6ef5: $2e $6c
	ld d, h                                          ; $6ef7: $54
	jp hl                                            ; $6ef8: $e9


	add hl, sp                                       ; $6ef9: $39

jr_025_6efa:
	inc sp                                           ; $6efa: $33
	halt                                             ; $6efb: $76
	ld a, [hl]                                       ; $6efc: $7e
	ld a, d                                          ; $6efd: $7a
	ld hl, sp-$6a                                    ; $6efe: $f8 $96
	ldh a, [hDisp1_SCX]                                     ; $6f00: $f0 $91
	inc de                                           ; $6f02: $13
	ld [hl-], a                                      ; $6f03: $32
	ld [hl], $64                                     ; $6f04: $36 $64
	ld c, l                                          ; $6f06: $4d
	sbc [hl]                                         ; $6f07: $9e
	ld sp, hl                                        ; $6f08: $f9
	db $dd                                           ; $6f09: $dd
	rrca                                             ; $6f0a: $0f
	sbc e                                            ; $6f0b: $9b
	rra                                              ; $6f0c: $1f
	ccf                                              ; $6f0d: $3f
	ld a, [hl]                                       ; $6f0e: $7e
	ld a, b                                          ; $6f0f: $78
	ld a, d                                          ; $6f10: $7a
	adc e                                            ; $6f11: $8b
	sbc d                                            ; $6f12: $9a
	rra                                              ; $6f13: $1f
	add hl, sp                                       ; $6f14: $39
	adc $31                                          ; $6f15: $ce $31
	add $de                                          ; $6f17: $c6 $de
	ldh a, [$9d]                                     ; $6f19: $f0 $9d
	rst FarCall                                          ; $6f1b: $f7
	ld hl, sp+$79                                    ; $6f1c: $f8 $79
	ld a, l                                          ; $6f1e: $7d
	sub l                                            ; $6f1f: $95
	rlca                                             ; $6f20: $07
	dec a                                            ; $6f21: $3d
	xor $71                                          ; $6f22: $ee $71
	adc [hl]                                         ; $6f24: $8e
	ld [hl], c                                       ; $6f25: $71
	adc [hl]                                         ; $6f26: $8e
	ld [hl], b                                       ; $6f27: $70
	inc bc                                           ; $6f28: $03
	inc e                                            ; $6f29: $1c
	ld [hl], l                                       ; $6f2a: $75
	ld e, l                                          ; $6f2b: $5d
	sub l                                            ; $6f2c: $95
	rrca                                             ; $6f2d: $0f
	ld a, a                                          ; $6f2e: $7f
	sbc b                                            ; $6f2f: $98
	rst JumpTable                                          ; $6f30: $c7
	jr c, jr_025_6efa                                ; $6f31: $38 $c7

	ld a, [hl-]                                      ; $6f33: $3a
	push de                                          ; $6f34: $d5
	xor d                                            ; $6f35: $aa
	ld d, l                                          ; $6f36: $55
	ld a, e                                          ; $6f37: $7b
	ld [hl], h                                       ; $6f38: $74
	ld a, a                                          ; $6f39: $7f
	push hl                                          ; $6f3a: $e5
	sbc h                                            ; $6f3b: $9c
	ld [$aa55], a                                    ; $6f3c: $ea $55 $aa
	inc hl                                           ; $6f3f: $23
	nop                                              ; $6f40: $00
	sbc [hl]                                         ; $6f41: $9e
	nop                                              ; $6f42: $00
	call c, $9e22                                    ; $6f43: $dc $22 $9e
	ld b, b                                          ; $6f46: $40
	ld [hl], e                                       ; $6f47: $73
	ld sp, hl                                        ; $6f48: $f9
	sbc l                                            ; $6f49: $9d
	inc h                                            ; $6f4a: $24
	nop                                              ; $6f4b: $00
	ld [hl], e                                       ; $6f4c: $73
	ld sp, hl                                        ; $6f4d: $f9
	cp $9c                                           ; $6f4e: $fe $9c
	ld [hl-], a                                      ; $6f50: $32
	ld hl, $7712                                     ; $6f51: $21 $12 $77
	ld sp, hl                                        ; $6f54: $f9
	sbc l                                            ; $6f55: $9d
	inc bc                                           ; $6f56: $03
	ld de, $f977                                     ; $6f57: $11 $77 $f9
	sbc b                                            ; $6f5a: $98
	ld b, h                                          ; $6f5b: $44
	db $10                                           ; $6f5c: $10
	ld de, $1411                                     ; $6f5d: $11 $11 $14
	nop                                              ; $6f60: $00
	nop                                              ; $6f61: $00
	ld bc, $01e4                                     ; $6f62: $01 $e4 $01
	rst $38                                          ; $6f65: $ff
	nop                                              ; $6f66: $00
	rst $38                                          ; $6f67: $ff
	ldh a, [rIE]                                     ; $6f68: $f0 $ff
	db $fc                                           ; $6f6a: $fc
	ccf                                              ; $6f6b: $3f
	rst $38                                          ; $6f6c: $ff
	rra                                              ; $6f6d: $1f
	rst $38                                          ; $6f6e: $ff
	jp $e0ff                                         ; $6f6f: $c3 $ff $e0


	ld a, a                                          ; $6f72: $7f
	ldh [rAUD1LOW], a                                ; $6f73: $e0 $13
	dec b                                            ; $6f75: $05
	di                                               ; $6f76: $f3
	rst SubAFromDE                                          ; $6f77: $df
	inc bc                                           ; $6f78: $03
	rst FarCall                                          ; $6f79: $f7
	rst SubAFromDE                                          ; $6f7a: $df
	rrca                                             ; $6f7b: $0f
	sbc e                                            ; $6f7c: $9b
	ld [hl], h                                       ; $6f7d: $74
	ld a, b                                          ; $6f7e: $78
	or b                                             ; $6f7f: $b0

Call_025_6f80:
	ret nz                                           ; $6f80: $c0

	rst FarCall                                          ; $6f81: $f7
	rst SubAFromDE                                          ; $6f82: $df
	ldh [$9c], a                                     ; $6f83: $e0 $9c
	ld e, [hl]                                       ; $6f85: $5e
	ld a, $0d                                        ; $6f86: $3e $0d
	ld e, e                                          ; $6f88: $5b
	ldh [$fd], a                                     ; $6f89: $e0 $fd
	rst SubAFromDE                                          ; $6f8b: $df
	ret nz                                           ; $6f8c: $c0

	ld sp, hl                                        ; $6f8d: $f9
	rst SubAFromDE                                          ; $6f8e: $df
	ld [bc], a                                       ; $6f8f: $02
	db $dd                                           ; $6f90: $dd
	ld b, $9d                                        ; $6f91: $06 $9d
	ld a, [bc]                                       ; $6f93: $0a
	ld c, $f7                                        ; $6f94: $0e $f7
	rst SubAFromDE                                          ; $6f96: $df
	ld bc, $069b                                     ; $6f97: $01 $9b $06
	rlca                                             ; $6f9a: $07

Jump_025_6f9b:
	dec bc                                           ; $6f9b: $0b
	inc c                                            ; $6f9c: $0c
	ld sp, hl                                        ; $6f9d: $f9
	rst SubAFromDE                                          ; $6f9e: $df
	ld a, b                                          ; $6f9f: $78
	add b                                            ; $6fa0: $80
	add a                                            ; $6fa1: $87
	rst $38                                          ; $6fa2: $ff
	pop af                                           ; $6fa3: $f1
	rrca                                             ; $6fa4: $0f
	db $fc                                           ; $6fa5: $fc
	inc bc                                           ; $6fa6: $03
	dec c                                            ; $6fa7: $0d
	ld c, $13                                        ; $6fa8: $0e $13
	inc e                                            ; $6faa: $1c
	cpl                                              ; $6fab: $2f
	jr nc, jr_025_700d                               ; $6fac: $30 $5f

	ld h, b                                          ; $6fae: $60
	sbc l                                            ; $6faf: $9d
	db $e3                                           ; $6fb0: $e3
	cp d                                             ; $6fb1: $ba
	rst JumpTable                                          ; $6fb2: $c7
	or a                                             ; $6fb3: $b7
	call z, $d9ae                                    ; $6fb4: $cc $ae $d9
	jp $fb00                                         ; $6fb7: $c3 $00 $fb


	rlca                                             ; $6fba: $07
	db $db                                           ; $6fbb: $db
	inc a                                            ; $6fbc: $3c
	ld l, b                                          ; $6fbd: $68
	ldh a, [$bc]                                     ; $6fbe: $f0 $bc
	add b                                            ; $6fc0: $80
	jp $1fe0                                         ; $6fc1: $c3 $e0 $1f


	or e                                             ; $6fc4: $b3
	ld a, h                                          ; $6fc5: $7c
	ret c                                            ; $6fc6: $d8

	ldh [$c3], a                                     ; $6fc7: $e0 $c3
	nop                                              ; $6fc9: $00
	ld bc, $0cfe                                     ; $6fca: $01 $fe $0c
	inc bc                                           ; $6fcd: $03

jr_025_6fce:
	ld bc, $0600                                     ; $6fce: $01 $00 $06
	ld hl, sp+$00                                    ; $6fd1: $f8 $00
	rst $38                                          ; $6fd3: $ff
	di                                               ; $6fd4: $f3
	rrca                                             ; $6fd5: $0f
	inc c                                            ; $6fd6: $0c
	inc bc                                           ; $6fd7: $03
	or b                                             ; $6fd8: $b0
	ld [hl], b                                       ; $6fd9: $70
	db $ec                                           ; $6fda: $ec
	inc e                                            ; $6fdb: $1c
	dec de                                           ; $6fdc: $1b
	rst SubAFromBC                                          ; $6fdd: $e7
	ldh [$1f], a                                     ; $6fde: $e0 $1f
	sub a                                            ; $6fe0: $97
	inc a                                            ; $6fe1: $3c
	inc bc                                           ; $6fe2: $03
	ccf                                              ; $6fe3: $3f
	ret nz                                           ; $6fe4: $c0

	pop af                                           ; $6fe5: $f1
	cp $4c                                           ; $6fe6: $fe $4c
	rst $38                                          ; $6fe8: $ff
	ld h, a                                          ; $6fe9: $67
	adc b                                            ; $6fea: $88
	sub a                                            ; $6feb: $97
	jr nz, jr_025_6fce                               ; $6fec: $20 $e0

	db $10                                           ; $6fee: $10
	ldh a, [$c8]                                     ; $6fef: $f0 $c8
	jr c, jr_025_7027                                ; $6ff1: $38 $34

	call z, Call_025_4047                            ; $6ff3: $cc $47 $40
	ld a, a                                          ; $6ff6: $7f
	ld a, [hl]                                       ; $6ff7: $7e
	sub c                                            ; $6ff8: $91
	ld [de], a                                       ; $6ff9: $12
	ld e, $0a                                        ; $6ffa: $1e $0a
	ld d, $3a                                        ; $6ffc: $16 $3a
	ld h, $54                                        ; $6ffe: $26 $54
	ld l, h                                          ; $7000: $6c
	ld [hl], h                                       ; $7001: $74
	ld c, h                                          ; $7002: $4c
	and h                                            ; $7003: $a4
	call c, $bc44                                    ; $7004: $dc $44 $bc
	ld e, a                                          ; $7007: $5f
	ld [hl], d                                       ; $7008: $72
	rst SubAFromDE                                          ; $7009: $df
	ld bc, $0280                                     ; $700a: $01 $80 $02

jr_025_700d:
	inc bc                                           ; $700d: $03
	ld [bc], a                                       ; $700e: $02
	inc bc                                           ; $700f: $03
	rra                                              ; $7010: $1f
	db $10                                           ; $7011: $10
	cpl                                              ; $7012: $2f
	jr nc, jr_025_7091                               ; $7013: $30 $7c

	ld b, e                                          ; $7015: $43
	cp b                                             ; $7016: $b8
	rst JumpTable                                          ; $7017: $c7
	ld [hl], e                                       ; $7018: $73
	adc h                                            ; $7019: $8c
	and $19                                          ; $701a: $e6 $19
	call c, $b933                                    ; $701c: $dc $33 $b9
	ld h, [hl]                                       ; $701f: $66
	ldh a, [rIF]                                     ; $7020: $f0 $0f
	ld a, b                                          ; $7022: $78
	rst $38                                          ; $7023: $ff
	ld b, $ff                                        ; $7024: $06 $ff
	db $fd                                           ; $7026: $fd

jr_025_7027:
	inc bc                                           ; $7027: $03
	ret nz                                           ; $7028: $c0

	ccf                                              ; $7029: $3f
	ld [hl], $80                                     ; $702a: $36 $80
	rst GetHLinHL                                          ; $702c: $cf
	db $fd                                           ; $702d: $fd

jr_025_702e:
	inc bc                                           ; $702e: $03
	jp hl                                            ; $702f: $e9


	rra                                              ; $7030: $1f
	sub l                                            ; $7031: $95
	ei                                               ; $7032: $fb
	sbc d                                            ; $7033: $9a
	rst FarCall                                          ; $7034: $f7
	or h                                             ; $7035: $b4
	rst AddAOntoHL                                          ; $7036: $ef
	ld c, c                                          ; $7037: $49
	rst $38                                          ; $7038: $ff
	jp z, Jump_025_55ff                              ; $7039: $ca $ff $55

	cp $1f                                           ; $703c: $fe $1f
	db $fc                                           ; $703e: $fc
	ret c                                            ; $703f: $d8

	rst $38                                          ; $7040: $ff
	ld h, b                                          ; $7041: $60
	sbc a                                            ; $7042: $9f
	xor [hl]                                         ; $7043: $ae
	ld [hl], c                                       ; $7044: $71
	pop hl                                           ; $7045: $e1
	add b                                            ; $7046: $80
	ld hl, sp+$00                                    ; $7047: $f8 $00
	ld c, $f0                                        ; $7049: $0e $f0
	add b                                            ; $704b: $80
	pop af                                           ; $704c: $f1
	ld c, $8c                                        ; $704d: $0e $8c
	inc bc                                           ; $704f: $03
	ld h, d                                          ; $7050: $62
	add c                                            ; $7051: $81
	jp Jump_025_6000                                 ; $7052: $c3 $00 $60


	add b                                            ; $7055: $80
	adc h                                            ; $7056: $8c
	nop                                              ; $7057: $00
	rla                                              ; $7058: $17
	ld [$0619], sp                                   ; $7059: $08 $19 $06
	ld a, [bc]                                       ; $705c: $0a
	rlca                                             ; $705d: $07
	adc l                                            ; $705e: $8d
	inc bc                                           ; $705f: $03
	ld b, l                                          ; $7060: $45
	add e                                            ; $7061: $83
	dec l                                            ; $7062: $2d
	di                                               ; $7063: $f3
	sub a                                            ; $7064: $97
	ld a, b                                          ; $7065: $78
	srl h                                            ; $7066: $cb $3c
	ld l, h                                          ; $7068: $6c
	rra                                              ; $7069: $1f
	db $e4                                           ; $706a: $e4
	adc a                                            ; $706b: $8f
	rra                                              ; $706c: $1f
	di                                               ; $706d: $f3
	rrca                                             ; $706e: $0f
	ldh a, [c]                                       ; $706f: $f2
	rrca                                             ; $7070: $0f
	ld a, c                                          ; $7071: $79
	add a                                            ; $7072: $87
	jp nz, $b9fe                                     ; $7073: $c2 $fe $b9

	ld a, a                                          ; $7076: $7f
	rst FarCall                                          ; $7077: $f7
	rrca                                             ; $7078: $0f
	dec a                                            ; $7079: $3d
	jp $de00                                         ; $707a: $c3 $00 $de


	rst $38                                          ; $707d: $ff
	add h                                            ; $707e: $84
	ld a, a                                          ; $707f: $7f
	add b                                            ; $7080: $80
	ld a, h                                          ; $7081: $7c
	add e                                            ; $7082: $83
	dec c                                            ; $7083: $0d
	ld c, $37                                        ; $7084: $0e $37
	jr c, @+$5d                                      ; $7086: $38 $5b

	ld h, a                                          ; $7088: $67
	sbc h                                            ; $7089: $9c
	rst $38                                          ; $708a: $ff
	and [hl]                                         ; $708b: $a6
	ld hl, sp-$31                                    ; $708c: $f8 $cf
	ldh a, [rLCDC]                                   ; $708e: $f0 $40
	rst $38                                          ; $7090: $ff

jr_025_7091:
	ld a, a                                          ; $7091: $7f
	rst $38                                          ; $7092: $ff
	ret z                                            ; $7093: $c8

	jr c, jr_025_702e                                ; $7094: $38 $98

	ld a, b                                          ; $7096: $78
	cp $fe                                           ; $7097: $fe $fe
	adc l                                            ; $7099: $8d
	ld a, e                                          ; $709a: $7b

jr_025_709b:
	ld e, $7b                                        ; $709b: $1e $7b
	dec [hl]                                         ; $709d: $35
	sbc l                                            ; $709e: $9d
	rst $38                                          ; $709f: $ff
	cp $63                                           ; $70a0: $fe $63
	jr nc, @-$67                                     ; $70a2: $30 $97

	cp b                                             ; $70a4: $b8
	ld a, b                                          ; $70a5: $78
	or $0e                                           ; $70a6: $f6 $0e
	ld a, l                                          ; $70a8: $7d
	add e                                            ; $70a9: $83
	ld c, $f1                                        ; $70aa: $0e $f1
	di                                               ; $70ac: $f3
	rst SubAFromDE                                          ; $70ad: $df
	add b                                            ; $70ae: $80

jr_025_70af:
	ei                                               ; $70af: $fb
	rst SubAFromDE                                          ; $70b0: $df

jr_025_70b1:
	ccf                                              ; $70b1: $3f
	sbc c                                            ; $70b2: $99
	add hl, bc                                       ; $70b3: $09

jr_025_70b4:
	ld c, $06                                        ; $70b4: $0e $06
	rlca                                             ; $70b6: $07
	ld bc, $6f01                                     ; $70b7: $01 $01 $6f
	inc e                                            ; $70ba: $1c
	add b                                            ; $70bb: $80
	dec e                                            ; $70bc: $1d
	ld e, $e8                                        ; $70bd: $1e $e8
	ldh a, [$f8]                                     ; $70bf: $f0 $f8
	rlca                                             ; $70c1: $07
	rrca                                             ; $70c2: $0f
	rst $38                                          ; $70c3: $ff
	db $f4                                           ; $70c4: $f4
	ld hl, sp-$2e                                    ; $70c5: $f8 $d2
	pop hl                                           ; $70c7: $e1
	dec b                                            ; $70c8: $05
	ld b, $e4                                        ; $70c9: $06 $e4
	rst SubAFromBC                                          ; $70cb: $e7
	ld e, c                                          ; $70cc: $59
	ccf                                              ; $70cd: $3f
	ld a, [hl+]                                      ; $70ce: $2a
	rra                                              ; $70cf: $1f
	dec b                                            ; $70d0: $05
	cp $f8                                           ; $70d1: $fe $f8
	rst $38                                          ; $70d3: $ff
	rst GetHLinHL                                          ; $70d4: $cf
	ccf                                              ; $70d5: $3f
	inc c                                            ; $70d6: $0c
	ld hl, sp+$7b                                    ; $70d7: $f8 $7b
	call nz, $80b6                                   ; $70d9: $c4 $b6 $80
	call z, $8c78                                    ; $70dc: $cc $78 $8c
	db $ec                                           ; $70df: $ec
	jr jr_025_70af                                   ; $70e0: $18 $cd

	jr c, jr_025_70fd                                ; $70e2: $38 $19

	ld hl, sp-$10                                    ; $70e4: $f8 $f0
	ld hl, sp+$38                                    ; $70e6: $f8 $38
	db $10                                           ; $70e8: $10
	ld d, a                                          ; $70e9: $57
	jr c, jr_025_709b                                ; $70ea: $38 $af

	ld [hl], b                                       ; $70ec: $70
	sub [hl]                                         ; $70ed: $96
	ld h, c                                          ; $70ee: $61
	and h                                            ; $70ef: $a4
	ld b, e                                          ; $70f0: $43
	dec bc                                           ; $70f1: $0b
	add $4a                                          ; $70f2: $c6 $4a
	add [hl]                                         ; $70f4: $86
	ld a, [bc]                                       ; $70f5: $0a
	ld b, $14                                        ; $70f6: $06 $14
	ld c, $7f                                        ; $70f8: $0e $7f
	ld hl, sp-$80                                    ; $70fa: $f8 $80
	and c                                            ; $70fc: $a1

jr_025_70fd:
	ld a, [hl]                                       ; $70fd: $7e
	inc a                                            ; $70fe: $3c
	db $e3                                           ; $70ff: $e3
	db $d3                                           ; $7100: $d3
	ld hl, $215a                                     ; $7101: $21 $5a $21
	ld c, c                                          ; $7104: $49
	jr nc, jr_025_711c                               ; $7105: $30 $15

	ld a, b                                          ; $7107: $78
	cp l                                             ; $7108: $bd
	ld l, b                                          ; $7109: $68
	sub c                                            ; $710a: $91
	ld h, b                                          ; $710b: $60
	ld c, c                                          ; $710c: $49
	jr nc, jr_025_70b4                               ; $710d: $30 $a5

	jr jr_025_70b1                                   ; $710f: $18 $a0

	inc e                                            ; $7111: $1c
	sub $8c                                          ; $7112: $d6 $8c
	sub h                                            ; $7114: $94
	adc $53                                          ; $7115: $ce $53
	adc $59                                          ; $7117: $ce $59
	rst SubAFromBC                                          ; $7119: $e7
	inc h                                            ; $711a: $24
	sbc b                                            ; $711b: $98

jr_025_711c:
	jp $e112                                         ; $711c: $c3 $12 $e1


	cp d                                             ; $711f: $ba
	ld h, c                                          ; $7120: $61
	xor e                                            ; $7121: $ab
	ld [hl], b                                       ; $7122: $70
	ld [hl], a                                       ; $7123: $77
	ld a, [hl+]                                      ; $7124: $2a
	add b                                            ; $7125: $80
	ld c, e                                          ; $7126: $4b
	inc a                                            ; $7127: $3c
	ld h, l                                          ; $7128: $65
	ld e, $b9                                        ; $7129: $1e $b9
	rst JumpTable                                          ; $712b: $c7
	ld a, h                                          ; $712c: $7c
	jp $e35c                                         ; $712d: $c3 $5c $e3


	inc a                                            ; $7130: $3c
	db $e3                                           ; $7131: $e3
	ld l, $f1                                        ; $7132: $2e $f1
	ld e, $f1                                        ; $7134: $1e $f1
	sub [hl]                                         ; $7136: $96
	ld a, c                                          ; $7137: $79

Call_025_7138:
	adc a                                            ; $7138: $8f
	ld a, b                                          ; $7139: $78
	ld sp, $82cf                                     ; $713a: $31 $cf $82
	rst $38                                          ; $713d: $ff
	adc l                                            ; $713e: $8d
	cp $97                                           ; $713f: $fe $97
	ld hl, sp+$6f                                    ; $7141: $f8 $6f
	ldh a, [$7c]                                     ; $7143: $f0 $7c
	add b                                            ; $7145: $80
	jp $e739                                         ; $7146: $c3 $39 $e7


	ld [hl+], a                                      ; $7149: $22
	rst $38                                          ; $714a: $ff
	di                                               ; $714b: $f3
	cp h                                             ; $714c: $bc
	xor $30                                          ; $714d: $ee $30
	pop af                                           ; $714f: $f1
	ld a, $5f                                        ; $7150: $3e $5f
	rst $38                                          ; $7152: $ff
	ld d, b                                          ; $7153: $50
	rst $38                                          ; $7154: $ff
	sbc a                                            ; $7155: $9f
	ld hl, sp+$1b                                    ; $7156: $f8 $1b
	db $fc                                           ; $7158: $fc
	or l                                             ; $7159: $b5
	ld a, [hl]                                       ; $715a: $7e
	inc hl                                           ; $715b: $23
	rra                                              ; $715c: $1f
	ld [$e207], sp                                   ; $715d: $08 $07 $e2
	ld bc, $c039                                     ; $7160: $01 $39 $c0
	and $f8                                          ; $7163: $e6 $f8
	adc b                                            ; $7165: $88
	sub c                                            ; $7166: $91
	ld a, [hl]                                       ; $7167: $7e
	db $ec                                           ; $7168: $ec
	rra                                              ; $7169: $1f
	ldh a, [c]                                       ; $716a: $f2
	rrca                                             ; $716b: $0f
	pop hl                                           ; $716c: $e1
	cp $9c                                           ; $716d: $fe $9c
	sbc a                                            ; $716f: $9f
	ld b, e                                          ; $7170: $43
	jp $e020                                         ; $7171: $c3 $20 $e0


	sub b                                            ; $7174: $90
	ld [hl], b                                       ; $7175: $70
	ret z                                            ; $7176: $c8

Call_025_7177:
	jr c, @-$16                                      ; $7177: $38 $e8

	jr jr_025_71af                                   ; $7179: $18 $34

	call z, Call_025_7240                            ; $717b: $cc $40 $72
	ld b, [hl]                                       ; $717e: $46
	sub l                                            ; $717f: $95
	ret nc                                           ; $7180: $d0

	ldh a, [$78]                                     ; $7181: $f0 $78
	jr c, @+$1a                                      ; $7183: $38 $18

	jr @+$0e                                         ; $7185: $18 $0c

	inc c                                            ; $7187: $0c
	inc b                                            ; $7188: $04
	inc b                                            ; $7189: $04
	halt                                             ; $718a: $76
	ld l, d                                          ; $718b: $6a
	ld a, a                                          ; $718c: $7f
	inc a                                            ; $718d: $3c
	ld a, l                                          ; $718e: $7d
	ret c                                            ; $718f: $d8

	add b                                            ; $7190: $80
	rla                                              ; $7191: $17
	jr jr_025_71c0                                   ; $7192: $18 $2c

	inc sp                                           ; $7194: $33
	jr jr_025_71be                                   ; $7195: $18 $27

	ld [hl], c                                       ; $7197: $71
	ld c, a                                          ; $7198: $4f
	ld b, l                                          ; $7199: $45
	add e                                            ; $719a: $83
	sub e                                            ; $719b: $93
	ld c, $66                                        ; $719c: $0e $66
	inc e                                            ; $719e: $1c
	adc l                                            ; $719f: $8d
	ld a, b                                          ; $71a0: $78
	ld a, [de]                                       ; $71a1: $1a
	pop af                                           ; $71a2: $f1
	dec [hl]                                         ; $71a3: $35
	db $e3                                           ; $71a4: $e3
	ld c, d                                          ; $71a5: $4a
	rst SubAFromBC                                          ; $71a6: $e7
	push af                                          ; $71a7: $f5
	adc $6f                                          ; $71a8: $ce $6f
	sbc h                                            ; $71aa: $9c
	srl a                                            ; $71ab: $cb $3f
	sbc [hl]                                         ; $71ad: $9e
	ld a, c                                          ; $71ae: $79

jr_025_71af:
	ld a, a                                          ; $71af: $7f
	add b                                            ; $71b0: $80
	ld hl, sp-$75                                    ; $71b1: $f8 $8b
	db $fc                                           ; $71b3: $fc
	ld e, l                                          ; $71b4: $5d
	cp [hl]                                          ; $71b5: $be
	sbc $3b                                          ; $71b6: $de $3b
	ld e, a                                          ; $71b8: $5f
	add hl, sp                                       ; $71b9: $39
	ld a, c                                          ; $71ba: $79
	db $10                                           ; $71bb: $10
	ld a, d                                          ; $71bc: $7a
	sub c                                            ; $71bd: $91

jr_025_71be:
	ldh a, [c]                                       ; $71be: $f2
	pop af                                           ; $71bf: $f1

jr_025_71c0:
	jp nc, $d531                                     ; $71c0: $d2 $31 $d5

	inc sp                                           ; $71c3: $33
	push hl                                          ; $71c4: $e5
	inc sp                                           ; $71c5: $33
	push af                                          ; $71c6: $f5
	inc hl                                           ; $71c7: $23
	cp a                                             ; $71c8: $bf
	ldh [c], a                                       ; $71c9: $e2
	ld d, $8c                                        ; $71ca: $16 $8c
	inc d                                            ; $71cc: $14
	adc h                                            ; $71cd: $8c
	dec [hl]                                         ; $71ce: $35
	adc h                                            ; $71cf: $8c
	add b                                            ; $71d0: $80
	and l                                            ; $71d1: $a5
	inc e                                            ; $71d2: $1c
	and a                                            ; $71d3: $a7
	inc e                                            ; $71d4: $1c
	rst SubAFromBC                                          ; $71d5: $e7
	inc e                                            ; $71d6: $1c
	add $3d                                          ; $71d7: $c6 $3d
	jp z, $b83d                                      ; $71d9: $ca $3d $b8

	ld l, h                                          ; $71dc: $6c
	cp [hl]                                          ; $71dd: $be
	ld h, h                                          ; $71de: $64
	inc [hl]                                         ; $71df: $34
	and $33                                          ; $71e0: $e6 $33
	ldh [c], a                                       ; $71e2: $e2
	ld [hl], e                                       ; $71e3: $73
	pop bc                                           ; $71e4: $c1
	ld h, c                                          ; $71e5: $61
	pop bc                                           ; $71e6: $c1
	ld h, b                                          ; $71e7: $60
	ret nz                                           ; $71e8: $c0

	ldh [$80], a                                     ; $71e9: $e0 $80
	add hl, sp                                       ; $71eb: $39
	rst SubAFromBC                                          ; $71ec: $e7
	xor h                                            ; $71ed: $ac
	ld [hl], e                                       ; $71ee: $73
	sbc h                                            ; $71ef: $9c
	add b                                            ; $71f0: $80
	ld [hl], e                                       ; $71f1: $73
	sub $39                                          ; $71f2: $d6 $39
	srl h                                            ; $71f4: $cb $3c
	ld l, l                                          ; $71f6: $6d
	sbc [hl]                                         ; $71f7: $9e
	and [hl]                                         ; $71f8: $a6
	rst SubAFromDE                                          ; $71f9: $df
	ld b, l                                          ; $71fa: $45
	ld a, a                                          ; $71fb: $7f
	ld h, l                                          ; $71fc: $65
	sbc [hl]                                         ; $71fd: $9e
	or d                                             ; $71fe: $b2
	rst GetHLinHL                                          ; $71ff: $cf
	ld a, [$79c7]                                    ; $7200: $fa $c7 $79
	rst SubAFromBC                                          ; $7203: $e7
	inc a                                            ; $7204: $3c
	di                                               ; $7205: $f3
	sbc [hl]                                         ; $7206: $9e
	ld a, c                                          ; $7207: $79
	ld c, h                                          ; $7208: $4c
	cp a                                             ; $7209: $bf
	add d                                            ; $720a: $82
	rst $38                                          ; $720b: $ff
	srl h                                            ; $720c: $cb $3c
	rst JumpTable                                          ; $720e: $c7
	inc a                                            ; $720f: $3c
	adc b                                            ; $7210: $88
	push hl                                          ; $7211: $e5
	ld e, $62                                        ; $7212: $1e $62
	sbc a                                            ; $7214: $9f
	or c                                             ; $7215: $b1
	rst GetHLinHL                                          ; $7216: $cf
	ld l, b                                          ; $7217: $68
	rst FarCall                                          ; $7218: $f7
	jr nc, @+$01                                     ; $7219: $30 $ff

	inc e                                            ; $721b: $1c
	rst $38                                          ; $721c: $ff
	dec e                                            ; $721d: $1d
	cp $1b                                           ; $721e: $fe $1b
	db $fc                                           ; $7220: $fc
	adc a                                            ; $7221: $8f
	ld a, b                                          ; $7222: $78
	adc d                                            ; $7223: $8a
	ld a, l                                          ; $7224: $7d
	ld b, h                                          ; $7225: $44
	cp a                                             ; $7226: $bf
	jp $e27b                                         ; $7227: $c3 $7b $e2


	add b                                            ; $722a: $80
	ld b, c                                          ; $722b: $41
	rst $38                                          ; $722c: $ff
	or d                                             ; $722d: $b2
	ld a, a                                          ; $722e: $7f
	ld d, c                                          ; $722f: $51
	rst $38                                          ; $7230: $ff
	ld e, d                                          ; $7231: $5a
	db $fd                                           ; $7232: $fd
	sbc e                                            ; $7233: $9b
	db $fc                                           ; $7234: $fc
	sub a                                            ; $7235: $97
	db $fc                                           ; $7236: $fc
	ld de, $12fe                                     ; $7237: $11 $fe $12
	rst $38                                          ; $723a: $ff
	add hl, sp                                       ; $723b: $39
	rst $38                                          ; $723c: $ff
	ld a, c                                          ; $723d: $79
	add a                                            ; $723e: $87
	inc a                                            ; $723f: $3c

Call_025_7240:
	jp $e39c                                         ; $7240: $c3 $9c $e3


	ld b, [hl]                                       ; $7243: $46
	ld sp, hl                                        ; $7244: $f9
	and e                                            ; $7245: $a3
	ld a, h                                          ; $7246: $7c
	pop de                                           ; $7247: $d1
	ld a, $e8                                        ; $7248: $3e $e8
	adc h                                            ; $724a: $8c
	rra                                              ; $724b: $1f
	ld [hl], h                                       ; $724c: $74
	adc a                                            ; $724d: $8f
	sbc d                                            ; $724e: $9a
	and $c2                                          ; $724f: $e6 $c2
	cp $61                                           ; $7251: $fe $61
	rst $38                                          ; $7253: $ff
	ld sp, $18ff                                     ; $7254: $31 $ff $18
	rst $38                                          ; $7257: $ff
	inc d                                            ; $7258: $14
	rst FarCall                                          ; $7259: $f7
	sub d                                            ; $725a: $92
	ld [hl], e                                       ; $725b: $73
	ld [de], a                                       ; $725c: $12
	di                                               ; $725d: $f3
	ld e, [hl]                                       ; $725e: $5e
	ld b, [hl]                                       ; $725f: $46
	db $dd                                           ; $7260: $dd
	add b                                            ; $7261: $80
	ld a, a                                          ; $7262: $7f
	ld [de], a                                       ; $7263: $12
	ld h, l                                          ; $7264: $65
	add h                                            ; $7265: $84
	rst SubAFromDE                                          ; $7266: $df
	ld bc, $03df                                     ; $7267: $01 $df $03
	rst SubAFromDE                                          ; $726a: $df
	ld [bc], a                                       ; $726b: $02
	rst $38                                          ; $726c: $ff
	add b                                            ; $726d: $80
	and a                                            ; $726e: $a7
	rst SubAFromDE                                          ; $726f: $df
	reti                                             ; $7270: $d9


	cp c                                             ; $7271: $b9
	and c                                            ; $7272: $a1
	ld h, c                                          ; $7273: $61
	ld b, d                                          ; $7274: $42
	jp $8283                                         ; $7275: $c3 $83 $82


	inc bc                                           ; $7278: $03
	ld [bc], a                                       ; $7279: $02
	dec b                                            ; $727a: $05
	ld b, $07                                        ; $727b: $06 $07
	inc b                                            ; $727d: $04
	and $9c                                          ; $727e: $e6 $9c
	ld l, b                                          ; $7280: $68
	sbc h                                            ; $7281: $9c
	call $d038                                       ; $7282: $cd $38 $d0
	add hl, sp                                       ; $7285: $39
	sbc d                                            ; $7286: $9a
	ld [hl], c                                       ; $7287: $71
	sbc d                                            ; $7288: $9a
	ld [hl], c                                       ; $7289: $71
	inc h                                            ; $728a: $24
	di                                               ; $728b: $f3
	ld [hl], h                                       ; $728c: $74
	add b                                            ; $728d: $80
	db $e3                                           ; $728e: $e3
	sbc e                                            ; $728f: $9b
	ld a, h                                          ; $7290: $7c
	adc l                                            ; $7291: $8d
	ld a, [hl]                                       ; $7292: $7e
	daa                                              ; $7293: $27
	rst $38                                          ; $7294: $ff
	ld [hl], $ed                                     ; $7295: $36 $ed
	ld d, l                                          ; $7297: $55
	xor $74                                          ; $7298: $ee $74
	rst GetHLinHL                                          ; $729a: $cf
	ld [hl], a                                       ; $729b: $77
	rst GetHLinHL                                          ; $729c: $cf
	and [hl]                                         ; $729d: $a6
	rst SubAFromDE                                          ; $729e: $df
	ld a, e                                          ; $729f: $7b
	and $f3                                          ; $72a0: $e6 $f3
	ld l, $53                                        ; $72a2: $2e $53
	xor $f7                                          ; $72a4: $ee $f7
	call z, $5ce7                                    ; $72a6: $cc $e7 $5c
	adc $bd                                          ; $72a9: $ce $bd
	ld e, $f9                                        ; $72ab: $1e $f9
	add d                                            ; $72ad: $82
	db $fd                                           ; $72ae: $fd
	db $e3                                           ; $72af: $e3
	adc h                                            ; $72b0: $8c
	ld a, e                                          ; $72b1: $7b
	sbc l                                            ; $72b2: $9d
	ld a, e                                          ; $72b3: $7b
	sub c                                            ; $72b4: $91
	ld a, a                                          ; $72b5: $7f
	inc sp                                           ; $72b6: $33
	rst $38                                          ; $72b7: $ff
	ld [hl], d                                       ; $72b8: $72
	rst $38                                          ; $72b9: $ff
	ld [hl], a                                       ; $72ba: $77
	call c, $b8df                                    ; $72bb: $dc $df $b8
	cp [hl]                                          ; $72be: $be
	ld h, c                                          ; $72bf: $61
	ldh [$80], a                                     ; $72c0: $e0 $80
	ret nz                                           ; $72c2: $c0

	nop                                              ; $72c3: $00
	ld b, b                                          ; $72c4: $40
	add b                                            ; $72c5: $80
	ret nc                                           ; $72c6: $d0

	ldh [$3c], a                                     ; $72c7: $e0 $3c
	ldh a, [$fe]                                     ; $72c9: $f0 $fe
	cp a                                             ; $72cb: $bf
	cp $0e                                           ; $72cc: $fe $0e
	sbc b                                            ; $72ce: $98
	ldh a, [rAUD4GO]                                 ; $72cf: $f0 $23
	ld a, $1b                                        ; $72d1: $3e $1b
	rra                                              ; $72d3: $1f
	rlca                                             ; $72d4: $07
	rlca                                             ; $72d5: $07
	ld a, c                                          ; $72d6: $79
	and c                                            ; $72d7: $a1
	cp l                                             ; $72d8: $bd
	nop                                              ; $72d9: $00
	nop                                              ; $72da: $00
	nop                                              ; $72db: $00
	pop af                                           ; $72dc: $f1
	ld a, l                                          ; $72dd: $7d
	adc l                                            ; $72de: $8d
	sub c                                            ; $72df: $91
	rra                                              ; $72e0: $1f
	ld l, l                                          ; $72e1: $6d
	sbc [hl]                                         ; $72e2: $9e
	rst AddAOntoHL                                          ; $72e3: $ef
	sub b                                            ; $72e4: $90
	ld hl, sp-$79                                    ; $72e5: $f8 $87
	rst FarCall                                          ; $72e7: $f7
	ld [$037f], sp                                   ; $72e8: $08 $7f $03
	scf                                              ; $72eb: $37
	rrca                                             ; $72ec: $0f
	add [hl]                                         ; $72ed: $86
	sbc $ff                                          ; $72ee: $de $ff
	add b                                            ; $72f0: $80
	db $fc                                           ; $72f1: $fc
	rrca                                             ; $72f2: $0f
	rst $38                                          ; $72f3: $ff
	nop                                              ; $72f4: $00
	rrca                                             ; $72f5: $0f
	ldh a, [$f7]                                     ; $72f6: $f0 $f7
	ld [$f0ef], sp                                   ; $72f8: $08 $ef $f0
	ei                                               ; $72fb: $fb
	db $fc                                           ; $72fc: $fc
	ld sp, $fcff                                     ; $72fd: $31 $ff $fc
	rst $38                                          ; $7300: $ff
	inc hl                                           ; $7301: $23
	rst $38                                          ; $7302: $ff
	pop hl                                           ; $7303: $e1
	ccf                                              ; $7304: $3f
	xor $3f                                          ; $7305: $ee $3f
	ldh a, [$3f]                                     ; $7307: $f0 $3f
	db $fd                                           ; $7309: $fd
	ccf                                              ; $730a: $3f
	or $2f                                           ; $730b: $f6 $2f
	ld l, b                                          ; $730d: $68
	rst $38                                          ; $730e: $ff
	db $e4                                           ; $730f: $e4
	add b                                            ; $7310: $80
	rst $38                                          ; $7311: $ff
	and h                                            ; $7312: $a4
	rst $38                                          ; $7313: $ff
	ld h, l                                          ; $7314: $65
	cp $65                                           ; $7315: $fe $65
	cp $b3                                           ; $7317: $fe $b3
	xor $73                                          ; $7319: $ee $73
	xor $72                                          ; $731b: $ee $72
	rst AddAOntoHL                                          ; $731d: $ef
	cp d                                             ; $731e: $ba
	rst JumpTable                                          ; $731f: $c7
	cp c                                             ; $7320: $b9
	rst JumpTable                                          ; $7321: $c7
	ld e, c                                          ; $7322: $59
	rst SubAFromBC                                          ; $7323: $e7
	inc l                                            ; $7324: $2c
	di                                               ; $7325: $f3
	inc d                                            ; $7326: $14
	ei                                               ; $7327: $fb
	sub h                                            ; $7328: $94
	ld a, e                                          ; $7329: $7b
	sbc b                                            ; $732a: $98
	ld a, a                                          ; $732b: $7f
	sbc b                                            ; $732c: $98
	ld a, a                                          ; $732d: $7f
	add hl, bc                                       ; $732e: $09
	ld sp, hl                                        ; $732f: $f9
	sbc d                                            ; $7330: $9a
	ld [$08f8], sp                                   ; $7331: $08 $f8 $08
	ld hl, sp-$78                                    ; $7334: $f8 $88
	ld a, e                                          ; $7336: $7b
	cp $9c                                           ; $7337: $fe $9c
	ld c, b                                          ; $7339: $48
	ld hl, sp+$68                                    ; $733a: $f8 $68
	ld a, e                                          ; $733c: $7b
	cp $7f                                           ; $733d: $fe $7f
	ld e, $dd                                        ; $733f: $1e $dd
	ret nz                                           ; $7341: $c0

	db $dd                                           ; $7342: $dd
	ld b, b                                          ; $7343: $40
	ei                                               ; $7344: $fb
	sub a                                            ; $7345: $97
	ld b, $05                                        ; $7346: $06 $05
	ld b, $05                                        ; $7348: $06 $05
	dec b                                            ; $734a: $05
	rlca                                             ; $734b: $07
	dec b                                            ; $734c: $05
	rlca                                             ; $734d: $07
	db $dd                                           ; $734e: $dd
	ld b, $dd                                        ; $734f: $06 $dd
	inc b                                            ; $7351: $04
	add b                                            ; $7352: $80
	or h                                             ; $7353: $b4
	db $e3                                           ; $7354: $e3
	cp h                                             ; $7355: $bc
	and e                                            ; $7356: $a3
	dec a                                            ; $7357: $3d
	inc hl                                           ; $7358: $23
	dec a                                            ; $7359: $3d
	inc hl                                           ; $735a: $23
	add hl, hl                                       ; $735b: $29
	scf                                              ; $735c: $37
	add hl, hl                                       ; $735d: $29
	scf                                              ; $735e: $37
	add hl, bc                                       ; $735f: $09
	rla                                              ; $7360: $17
	ld a, [de]                                       ; $7361: $1a
	ld d, $e7                                        ; $7362: $16 $e7
	sbc a                                            ; $7364: $9f
	push hl                                          ; $7365: $e5
	sbc a                                            ; $7366: $9f
	ld h, l                                          ; $7367: $65
	sbc a                                            ; $7368: $9f
	ld h, h                                          ; $7369: $64
	sbc a                                            ; $736a: $9f
	ld b, h                                          ; $736b: $44
	cp a                                             ; $736c: $bf
	ld c, l                                          ; $736d: $4d
	cp [hl]                                          ; $736e: $be
	ld c, l                                          ; $736f: $4d
	cp [hl]                                          ; $7370: $be
	call $be80                                       ; $7371: $cd $80 $be
	ld e, $ff                                        ; $7374: $1e $ff
	add e                                            ; $7376: $83
	cp $63                                           ; $7377: $fe $63
	cp $9a                                           ; $7379: $fe $9a
	rst $38                                          ; $737b: $ff
	ld b, a                                          ; $737c: $47
	rst $38                                          ; $737d: $ff
	ld hl, $10ff                                     ; $737e: $21 $ff $10
	rst $38                                          ; $7381: $ff
	sbc h                                            ; $7382: $9c
	ld a, a                                          ; $7383: $7f
	ld sp, hl                                        ; $7384: $f9
	ld b, [hl]                                       ; $7385: $46
	or $09                                           ; $7386: $f6 $09
	rst AddAOntoHL                                          ; $7388: $ef
	inc de                                           ; $7389: $13
	rst $38                                          ; $738a: $ff
	rlca                                             ; $738b: $07
	cp $0e                                           ; $738c: $fe $0e
	sbc $3c                                          ; $738e: $de $3c

jr_025_7390:
	cp [hl]                                          ; $7390: $be
	db $fc                                           ; $7391: $fc
	sbc c                                            ; $7392: $99
	rst FarCall                                          ; $7393: $f7
	sbc a                                            ; $7394: $9f
	db $fc                                           ; $7395: $fc
	nop                                              ; $7396: $00
	db $f4                                           ; $7397: $f4
	ld hl, sp-$22                                    ; $7398: $f8 $de
	db $fc                                           ; $739a: $fc
	sub [hl]                                         ; $739b: $96
	inc a                                            ; $739c: $3c
	ld a, h                                          ; $739d: $7c
	jr c, jr_025_7390                                ; $739e: $38 $f0

	ld a, b                                          ; $73a0: $78
	add sp, -$08                                     ; $73a1: $e8 $f8
	add sp, -$08                                     ; $73a3: $e8 $f8
	pop af                                           ; $73a5: $f1
	add b                                            ; $73a6: $80
	rrca                                             ; $73a7: $0f
	ld e, $0e                                        ; $73a8: $1e $0e
	inc e                                            ; $73aa: $1c
	ld c, $04                                        ; $73ab: $0e $04
	ld b, $04                                        ; $73ad: $06 $04
	rlca                                             ; $73af: $07
	rlca                                             ; $73b0: $07
	inc b                                            ; $73b1: $04
	rlca                                             ; $73b2: $07
	nop                                              ; $73b3: $00
	inc bc                                           ; $73b4: $03
	ld [bc], a                                       ; $73b5: $02
	inc bc                                           ; $73b6: $03
	rst $38                                          ; $73b7: $ff
	ccf                                              ; $73b8: $3f
	ld e, $3f                                        ; $73b9: $1e $3f
	ld a, a                                          ; $73bb: $7f
	ld a, d                                          ; $73bc: $7a
	rst AddAOntoHL                                          ; $73bd: $ef
	ld hl, sp-$15                                    ; $73be: $f8 $eb
	ld hl, sp-$35                                    ; $73c0: $f8 $cb
	ld hl, sp+$07                                    ; $73c2: $f8 $07
	ret nz                                           ; $73c4: $c0

	ld e, a                                          ; $73c5: $5f
	add b                                            ; $73c6: $80
	or b                                             ; $73c7: $b0
	cp d                                             ; $73c8: $ba
	rst SubAFromBC                                          ; $73c9: $e7
	ld [hl], $fb                                     ; $73ca: $36 $fb
	cp a                                             ; $73cc: $bf
	ld l, e                                          ; $73cd: $6b
	cp a                                             ; $73ce: $bf
	ld l, e                                          ; $73cf: $6b
	sub $7a                                          ; $73d0: $d6 $7a
	sbc $76                                          ; $73d2: $de $76
	call nc, $d87c                                   ; $73d4: $d4 $7c $d8
	ld a, b                                          ; $73d7: $78
	ldh a, [c]                                       ; $73d8: $f2
	rst AddAOntoHL                                          ; $73d9: $ef
	rst FarCall                                          ; $73da: $f7
	rst AddAOntoHL                                          ; $73db: $ef
	push af                                          ; $73dc: $f5
	db $ed                                           ; $73dd: $ed
	ld d, l                                          ; $73de: $55
	ld l, l                                          ; $73df: $6d
	ld l, c                                          ; $73e0: $69
	ld e, c                                          ; $73e1: $59
	ld c, c                                          ; $73e2: $49
	ld a, c                                          ; $73e3: $79
	ld d, c                                          ; $73e4: $51
	ld [hl], c                                       ; $73e5: $71
	ld a, a                                          ; $73e6: $7f
	cp $87                                           ; $73e7: $fe $87
	sub h                                            ; $73e9: $94
	ld [hl], a                                       ; $73ea: $77
	sub h                                            ; $73eb: $94
	ld [hl], a                                       ; $73ec: $77
	sub d                                            ; $73ed: $92
	ld [hl], e                                       ; $73ee: $73
	sub d                                            ; $73ef: $92
	ld [hl], e                                       ; $73f0: $73
	ld [hl+], a                                      ; $73f1: $22
	db $e3                                           ; $73f2: $e3
	ld hl, $41e1                                     ; $73f3: $21 $e1 $41
	pop bc                                           ; $73f6: $c1
	add c                                            ; $73f7: $81
	add c                                            ; $73f8: $81
	ld c, b                                          ; $73f9: $48
	ret c                                            ; $73fa: $d8

	ld e, b                                          ; $73fb: $58
	ret c                                            ; $73fc: $d8

	ld e, b                                          ; $73fd: $58
	ret z                                            ; $73fe: $c8

	adc b                                            ; $73ff: $88
	adc b                                            ; $7400: $88
	ld h, h                                          ; $7401: $64
	add [hl]                                         ; $7402: $86
	sbc c                                            ; $7403: $99

Jump_025_7404:
	ld [de], a                                       ; $7404: $12
	ld e, $0a                                        ; $7405: $1e $0a
	ld c, $0a                                        ; $7407: $0e $0a
	ld c, $dd                                        ; $7409: $0e $dd
	ld b, $76                                        ; $740b: $06 $76
	ld b, d                                          ; $740d: $42
	rst $38                                          ; $740e: $ff
	ld a, a                                          ; $740f: $7f
	ld c, [hl]                                       ; $7410: $4e
	add b                                            ; $7411: $80
	adc e                                            ; $7412: $8b
	ld a, [$7b4a]                                    ; $7413: $fa $4a $7b
	ld c, c                                          ; $7416: $49
	ld a, c                                          ; $7417: $79
	jr z, jr_025_7452                                ; $7418: $28 $38

	inc h                                            ; $741a: $24
	inc a                                            ; $741b: $3c
	inc d                                            ; $741c: $14
	inc e                                            ; $741d: $1c
	inc c                                            ; $741e: $0c
	inc c                                            ; $741f: $0c
	sbc a                                            ; $7420: $9f
	ld [hl], a                                       ; $7421: $77
	sub [hl]                                         ; $7422: $96
	ld a, e                                          ; $7423: $7b
	sbc a                                            ; $7424: $9f
	ld a, d                                          ; $7425: $7a
	ld e, e                                          ; $7426: $5b
	cp l                                             ; $7427: $bd
	push de                                          ; $7428: $d5
	or [hl]                                          ; $7429: $b6
	ld d, d                                          ; $742a: $52
	ld [hl], e                                       ; $742b: $73
	ld d, c                                          ; $742c: $51
	ld [hl], c                                       ; $742d: $71
	jr nc, jr_025_7460                               ; $742e: $30 $30

	db $fc                                           ; $7430: $fc
	adc b                                            ; $7431: $88
	add e                                            ; $7432: $83
	cp d                                             ; $7433: $ba
	jp Jump_025_41f3                                 ; $7434: $c3 $f3 $41


	pop de                                           ; $7437: $d1
	ld h, b                                          ; $7438: $60
	or b                                             ; $7439: $b0
	ldh [$b0], a                                     ; $743a: $e0 $b0
	ldh [$a8], a                                     ; $743c: $e0 $a8
	ldh a, [$d8]                                     ; $743e: $f0 $d8
	or b                                             ; $7440: $b0
	ldh [$f8], a                                     ; $7441: $e0 $f8
	nop                                              ; $7443: $00
	ldh [$0c], a                                     ; $7444: $e0 $0c
	ld hl, sp-$50                                    ; $7446: $f8 $b0
	ldh a, [$f7]                                     ; $7448: $f0 $f7
	sbc [hl]                                         ; $744a: $9e
	inc b                                            ; $744b: $04
	cp [hl]                                          ; $744c: $be
	ld b, $07                                        ; $744d: $06 $07
	ld bc, $02df                                     ; $744f: $01 $df $02

jr_025_7452:
	ld a, [hl]                                       ; $7452: $7e
	ld e, e                                          ; $7453: $5b
	sbc e                                            ; $7454: $9b
	inc bc                                           ; $7455: $03
	nop                                              ; $7456: $00
	nop                                              ; $7457: $00
	rlca                                             ; $7458: $07
	ld [hl], d                                       ; $7459: $72
	ld d, [hl]                                       ; $745a: $56
	ld a, a                                          ; $745b: $7f
	sub e                                            ; $745c: $93
	ld a, [hl]                                       ; $745d: $7e
	ld a, [hl-]                                      ; $745e: $3a
	ld a, a                                          ; $745f: $7f

jr_025_7460:
	db $fc                                           ; $7460: $fc
	ld [hl], a                                       ; $7461: $77
	adc l                                            ; $7462: $8d
	sbc h                                            ; $7463: $9c
	and a                                            ; $7464: $a7
	ret nz                                           ; $7465: $c0

	rrca                                             ; $7466: $0f
	cp h                                             ; $7467: $bc
	rra                                              ; $7468: $1f
	rra                                              ; $7469: $1f
	ccf                                              ; $746a: $3f
	ccf                                              ; $746b: $3f
	ld a, $92                                        ; $746c: $3e $92
	ld bc, $013f                    ; $746e: $01 $3f $01
	ret c                                            ; $7471: $d8

	ld a, b                                          ; $7472: $78

Jump_025_7473:
	ld [hl], b                                       ; $7473: $70
	ret nc                                           ; $7474: $d0

	xor b                                            ; $7475: $a8
	ret c                                            ; $7476: $d8

	xor b                                            ; $7477: $a8
	ret c                                            ; $7478: $d8

	add sp, -$68                                     ; $7479: $e8 $98
	halt                                             ; $747b: $76
	adc e                                            ; $747c: $8b
	ld a, a                                          ; $747d: $7f
	ld a, [$a19b]                                    ; $747e: $fa $9b $a1
	pop hl                                           ; $7481: $e1
	pop bc                                           ; $7482: $c1
	pop bc                                           ; $7483: $c1
	ld h, a                                          ; $7484: $67
	ld h, h                                          ; $7485: $64
	db $fd                                           ; $7486: $fd
	ld e, $00                                        ; $7487: $1e $00
	db $fd                                           ; $7489: $fd
	sbc h                                            ; $748a: $9c
	ld de, $0100                                     ; $748b: $11 $00 $01
	db $fd                                           ; $748e: $fd
	sbc [hl]                                         ; $748f: $9e
	ld bc, $11dd                                     ; $7490: $01 $dd $11
	ld [hl], e                                       ; $7493: $73
	ldh a, [$dd]                                     ; $7494: $f0 $dd
	ld de, $109e                                     ; $7496: $11 $9e $10
	ld l, e                                          ; $7499: $6b
	ld hl, sp+$77                                    ; $749a: $f8 $77
	db $ed                                           ; $749c: $ed
	daa                                              ; $749d: $27
	rst FarCall                                          ; $749e: $f7
	ld a, e                                          ; $749f: $7b
	call c, $cb73                                    ; $74a0: $dc $73 $cb
	ld a, e                                          ; $74a3: $7b
	ld hl, sp+$0f                                    ; $74a4: $f8 $0f
	ldh a, [rP1]                                     ; $74a6: $f0 $00
	ld hl, sp+$00                                    ; $74a8: $f8 $00

jr_025_74aa:
	ccf                                              ; $74aa: $3f
	ldh [$3f], a                                     ; $74ab: $e0 $3f
	ld hl, sp+$1f                                    ; $74ad: $f8 $1f
	rst $38                                          ; $74af: $ff
	rrca                                             ; $74b0: $0f
	rst $38                                          ; $74b1: $ff

jr_025_74b2:
	rst JumpTable                                          ; $74b2: $c7
	rst $38                                          ; $74b3: $ff
	di                                               ; $74b4: $f3
	rst $38                                          ; $74b5: $ff
	db $fc                                           ; $74b6: $fc
	ld b, c                                          ; $74b7: $41
	inc bc                                           ; $74b8: $03
	rst SubAFromDE                                          ; $74b9: $df
	inc b                                            ; $74ba: $04
	di                                               ; $74bb: $f3
	db $dd                                           ; $74bc: $dd
	db $10                                           ; $74bd: $10
	push af                                          ; $74be: $f5
	adc a                                            ; $74bf: $8f
	ret nc                                           ; $74c0: $d0

	cp b                                             ; $74c1: $b8
	call z, $e8b8                                    ; $74c2: $cc $b8 $e8
	sbc h                                            ; $74c5: $9c
	ld h, $5c                                        ; $74c6: $26 $5c
	ld h, a                                          ; $74c8: $67
	ld e, [hl]                                       ; $74c9: $5e
	ld b, a                                          ; $74ca: $47
	ld a, a                                          ; $74cb: $7f
	inc h                                            ; $74cc: $24
	inc a                                            ; $74cd: $3c
	inc h                                            ; $74ce: $24
	inc a                                            ; $74cf: $3c
	rst FarCall                                          ; $74d0: $f7
	sbc c                                            ; $74d1: $99
	add b                                            ; $74d2: $80
	nop                                              ; $74d3: $00
	ret nz                                           ; $74d4: $c0

	add b                                            ; $74d5: $80
	ld h, b                                          ; $74d6: $60
	ld b, b                                          ; $74d7: $40
	db $fd                                           ; $74d8: $fd
	sbc b                                            ; $74d9: $98
	dec c                                            ; $74da: $0d
	dec bc                                           ; $74db: $0b
	nop                                              ; $74dc: $00
	nop                                              ; $74dd: $00
	inc bc                                           ; $74de: $03
	nop                                              ; $74df: $00
	ld bc, $96fc                                     ; $74e0: $01 $fc $96
	jr nz, jr_025_74f5                               ; $74e3: $20 $10

	or b                                             ; $74e5: $b0
	ld h, b                                          ; $74e6: $60
	ret nz                                           ; $74e7: $c0

	add b                                            ; $74e8: $80
	nop                                              ; $74e9: $00
	nop                                              ; $74ea: $00
	ret nz                                           ; $74eb: $c0

	ld a, e                                          ; $74ec: $7b
	ldh [$7f], a                                     ; $74ed: $e0 $7f
	xor $7f                                          ; $74ef: $ee $7f
	cp $8d                                           ; $74f1: $fe $8d
	ld a, l                                          ; $74f3: $7d
	inc bc                                           ; $74f4: $03

jr_025_74f5:
	ld a, l                                          ; $74f5: $7d
	inc bc                                           ; $74f6: $03
	ld a, d                                          ; $74f7: $7a
	ld b, $fc                                        ; $74f8: $06 $fc
	inc b                                            ; $74fa: $04
	db $f4                                           ; $74fb: $f4
	inc c                                            ; $74fc: $0c
	add sp, $18                                      ; $74fd: $e8 $18
	ret nc                                           ; $74ff: $d0

	jr nc, jr_025_74b2                               ; $7500: $30 $b0

	ld [hl], b                                       ; $7502: $70
	xor b                                            ; $7503: $a8
	ret c                                            ; $7504: $d8

	ld [hl], a                                       ; $7505: $77
	cp $9d                                           ; $7506: $fe $9d
	ld d, b                                          ; $7508: $50
	ld [hl], b                                       ; $7509: $70
	ld [hl], a                                       ; $750a: $77
	cp $dd                                           ; $750b: $fe $dd
	jr nz, jr_025_74aa                               ; $750d: $20 $9b

	inc d                                            ; $750f: $14
	inc e                                            ; $7510: $1c
	inc d                                            ; $7511: $14
	inc e                                            ; $7512: $1c
	db $dd                                           ; $7513: $dd
	inc c                                            ; $7514: $0c
	db $dd                                           ; $7515: $dd
	inc b                                            ; $7516: $04
	db $fd                                           ; $7517: $fd
	adc a                                            ; $7518: $8f
	jr c, jr_025_754b                                ; $7519: $38 $30

	inc c                                            ; $751b: $0c
	ld [$0607], sp                                   ; $751c: $08 $07 $06
	rlca                                             ; $751f: $07
	dec b                                            ; $7520: $05
	rlca                                             ; $7521: $07
	inc b                                            ; $7522: $04
	rlca                                             ; $7523: $07
	inc b                                            ; $7524: $04
	inc bc                                           ; $7525: $03
	ld [bc], a                                       ; $7526: $02
	inc bc                                           ; $7527: $03
	ld [bc], a                                       ; $7528: $02
	ei                                               ; $7529: $fb
	add l                                            ; $752a: $85
	and b                                            ; $752b: $a0
	ret nz                                           ; $752c: $c0

	db $f4                                           ; $752d: $f4
	ld a, b                                          ; $752e: $78
	rst AddAOntoHL                                          ; $752f: $ef
	rra                                              ; $7530: $1f
	ei                                               ; $7531: $fb
	rlca                                             ; $7532: $07
	ld a, $01                                        ; $7533: $3e $01
	inc bc                                           ; $7535: $03
	nop                                              ; $7536: $00
	inc bc                                           ; $7537: $03
	ld bc, $0307                                     ; $7538: $01 $07 $03
	rrca                                             ; $753b: $0f
	rlca                                             ; $753c: $07
	ccf                                              ; $753d: $3f
	rra                                              ; $753e: $1f
	rst $38                                          ; $753f: $ff
	rst $38                                          ; $7540: $ff
	cp $ff                                           ; $7541: $fe $ff
	db $fd                                           ; $7543: $fd
	cp $db                                           ; $7544: $fe $db
	ldh a, [hDisp1_WX]                                     ; $7546: $f0 $96
	ret nc                                           ; $7548: $d0

	ldh a, [$b0]                                     ; $7549: $f0 $b0

jr_025_754b:
	ret nc                                           ; $754b: $d0

	ld [hl], b                                       ; $754c: $70
	sub b                                            ; $754d: $90
	ldh a, [rAUD1SWEEP]                              ; $754e: $f0 $10
	ldh a, [rHDMA3]                                  ; $7550: $f0 $53
	ld b, h                                          ; $7552: $44
	rst $38                                          ; $7553: $ff
	rst SubAFromDE                                          ; $7554: $df
	ld bc, $bc77                                     ; $7555: $01 $77 $bc
	ld a, a                                          ; $7558: $7f
	or b                                             ; $7559: $b0
	sub h                                            ; $755a: $94
	dec de                                           ; $755b: $1b
	ld e, $23                                        ; $755c: $1e $23
	ld a, $43                                        ; $755e: $3e $43
	ld a, [hl]                                       ; $7560: $7e
	adc a                                            ; $7561: $8f
	cp $1f                                           ; $7562: $fe $1f
	db $fc                                           ; $7564: $fc
	rrca                                             ; $7565: $0f
	ld a, e                                          ; $7566: $7b
	ld d, [hl]                                       ; $7567: $56
	ld h, e                                          ; $7568: $63
	ld b, b                                          ; $7569: $40
	ld a, e                                          ; $756a: $7b
	cp $98                                           ; $756b: $fe $98
	or a                                             ; $756d: $b7
	ld a, b                                          ; $756e: $78
	rst $38                                          ; $756f: $ff
	nop                                              ; $7570: $00
	rst $38                                          ; $7571: $ff
	nop                                              ; $7572: $00
	ccf                                              ; $7573: $3f
	ld a, e                                          ; $7574: $7b
	ld [$fe77], a                                    ; $7575: $ea $77 $fe
	sub [hl]                                         ; $7578: $96
	rlca                                             ; $7579: $07
	nop                                              ; $757a: $00
	ld hl, sp+$18                                    ; $757b: $f8 $18
	cp $1e                                           ; $757d: $fe $1e
	ld sp, hl                                        ; $757f: $f9
	rra                                              ; $7580: $1f
	ld hl, sp+$7b                                    ; $7581: $f8 $7b
	rst SubAFromHL                                          ; $7583: $d7
	ld [hl], e                                       ; $7584: $73
	cp $7f                                           ; $7585: $fe $7f
	rst AddAOntoHL                                          ; $7587: $ef
	ld [hl], a                                       ; $7588: $77
	sub $9b                                          ; $7589: $d6 $9b
	add b                                            ; $758b: $80
	ld a, b                                          ; $758c: $78
	ld hl, sp+$07                                    ; $758d: $f8 $07
	ld [hl], a                                       ; $758f: $77
	reti                                             ; $7590: $d9


	ld [hl], a                                       ; $7591: $77
	cp $fa                                           ; $7592: $fe $fa
	rst SubAFromDE                                          ; $7594: $df
	rst $38                                          ; $7595: $ff
	ld c, a                                          ; $7596: $4f
	ldh a, [$df]                                     ; $7597: $f0 $df
	db $fc                                           ; $7599: $fc
	sbc c                                            ; $759a: $99
	ld h, d                                          ; $759b: $62
	sbc [hl]                                         ; $759c: $9e
	ld h, d                                          ; $759d: $62
	sbc [hl]                                         ; $759e: $9e
	ld h, e                                          ; $759f: $63
	sbc a                                            ; $75a0: $9f
	di                                               ; $75a1: $f3
	rst SubAFromDE                                          ; $75a2: $df
	add b                                            ; $75a3: $80
	di                                               ; $75a4: $f3
	rst SubAFromDE                                          ; $75a5: $df
	rrca                                             ; $75a6: $0f
	ld sp, hl                                        ; $75a7: $f9
	rst SubAFromDE                                          ; $75a8: $df
	inc bc                                           ; $75a9: $03
	sub d                                            ; $75aa: $92
	inc e                                            ; $75ab: $1c
	rra                                              ; $75ac: $1f
	pop hl                                           ; $75ad: $e1
	cp $3f                                           ; $75ae: $fe $3f
	ret nz                                           ; $75b0: $c0

	ld [bc], a                                       ; $75b1: $02
	inc bc                                           ; $75b2: $03
	inc c                                            ; $75b3: $0c
	rrca                                             ; $75b4: $0f
	jr nc, jr_025_75f6                               ; $75b5: $30 $3f

	ret nz                                           ; $75b7: $c0

	ld a, e                                          ; $75b8: $7b
	or [hl]                                          ; $75b9: $b6
	sbc c                                            ; $75ba: $99
	ret nz                                           ; $75bb: $c0

	ccf                                              ; $75bc: $3f
	db $fc                                           ; $75bd: $fc
	inc bc                                           ; $75be: $03
	cp $01                                           ; $75bf: $fe $01
	ld a, e                                          ; $75c1: $7b
	add l                                            ; $75c2: $85
	sbc e                                            ; $75c3: $9b
	ld hl, sp+$3d                                    ; $75c4: $f8 $3d
	ldh a, [$38]                                     ; $75c6: $f0 $38
	ld a, e                                          ; $75c8: $7b
	cp $9e                                           ; $75c9: $fe $9e
	jr nc, jr_025_7648                               ; $75cb: $30 $7b

	cp $7f                                           ; $75cd: $fe $7f
	cpl                                              ; $75cf: $2f
	ld a, a                                          ; $75d0: $7f
	ld e, [hl]                                       ; $75d1: $5e
	sbc [hl]                                         ; $75d2: $9e
	ldh [$73], a                                     ; $75d3: $e0 $73
	cp $9c                                           ; $75d5: $fe $9c

jr_025_75d7:
	ld h, b                                          ; $75d7: $60
	nop                                              ; $75d8: $00
	jr nz, jr_025_75d7                               ; $75d9: $20 $fc

	ld a, a                                          ; $75db: $7f
	ld l, a                                          ; $75dc: $6f
	ld a, a                                          ; $75dd: $7f
	cp $7f                                           ; $75de: $fe $7f
	cp e                                             ; $75e0: $bb
	ld a, a                                          ; $75e1: $7f
	cp $92                                           ; $75e2: $fe $92
	ld c, $00                                        ; $75e4: $0e $00
	inc e                                            ; $75e6: $1c
	nop                                              ; $75e7: $00
	jr jr_025_75ea                                   ; $75e8: $18 $00

jr_025_75ea:
	stop                                             ; $75ea: $10 $00
	cp $03                                           ; $75ec: $fe $03
	cp [hl]                                          ; $75ee: $be
	inc bc                                           ; $75ef: $03
	ld e, $73                                        ; $75f0: $1e $73
	cp $9b                                           ; $75f2: $fe $9b
	ld a, $03                                        ; $75f4: $3e $03

jr_025_75f6:
	ld a, [hl]                                       ; $75f6: $7e
	inc bc                                           ; $75f7: $03
	ld a, e                                          ; $75f8: $7b
	ld d, b                                          ; $75f9: $50
	ld h, a                                          ; $75fa: $67
	ld l, b                                          ; $75fb: $68
	ld [hl], e                                       ; $75fc: $73
	cp $9d                                           ; $75fd: $fe $9d
	ld a, b                                          ; $75ff: $78
	add a                                            ; $7600: $87
	ld e, a                                          ; $7601: $5f
	db $f4                                           ; $7602: $f4
	ld a, a                                          ; $7603: $7f
	db $e3                                           ; $7604: $e3
	ld [hl], a                                       ; $7605: $77
	sbc c                                            ; $7606: $99
	sbc l                                            ; $7607: $9d
	ld h, d                                          ; $7608: $62
	sbc a                                            ; $7609: $9f
	ld l, a                                          ; $760a: $6f
	cp $87                                           ; $760b: $fe $87
	ld b, c                                          ; $760d: $41
	adc a                                            ; $760e: $8f
	ret                                              ; $760f: $c9


jr_025_7610:
	rlca                                             ; $7610: $07
	call $cd03                                       ; $7611: $cd $03 $cd
	inc bc                                           ; $7614: $03
	ld h, b                                          ; $7615: $60
	ldh [rAUD1SWEEP], a                              ; $7616: $e0 $10
	ldh a, [$08]                                     ; $7618: $f0 $08
	ld hl, sp+$04                                    ; $761a: $f8 $04
	db $fc                                           ; $761c: $fc
	inc b                                            ; $761d: $04
	db $fc                                           ; $761e: $fc
	ld [de], a                                       ; $761f: $12
	xor $1a                                          ; $7620: $ee $1a
	and $1f                                          ; $7622: $e6 $1f
	pop hl                                           ; $7624: $e1
	halt                                             ; $7625: $76
	call z, $817e                                    ; $7626: $cc $7e $81
	adc l                                            ; $7629: $8d
	ld [$170f], sp                                   ; $762a: $08 $0f $17
	jr jr_025_765e                                   ; $762d: $18 $2f

	jr nc, @+$81                                     ; $762f: $30 $7f

	ld b, b                                          ; $7631: $40

jr_025_7632:
	cp a                                             ; $7632: $bf
	ret nz                                           ; $7633: $c0

	ld [hl], c                                       ; $7634: $71
	ld a, b                                          ; $7635: $78
	reti                                             ; $7636: $d9


	ldh [$59], a                                     ; $7637: $e0 $59
	ldh [$79], a                                     ; $7639: $e0 $79
	ret nz                                           ; $763b: $c0

	ld h, a                                          ; $763c: $67
	cp $53                                           ; $763d: $fe $53
	and c                                            ; $763f: $a1
	dec sp                                           ; $7640: $3b
	cp $90                                           ; $7641: $fe $90
	sub b                                            ; $7643: $90
	ld [hl], b                                       ; $7644: $70
	ret z                                            ; $7645: $c8

	jr c, jr_025_7610                                ; $7646: $38 $c8

jr_025_7648:
	jr c, jr_025_7632                                ; $7648: $38 $e8

	jr jr_025_7648                                   ; $764a: $18 $fc

	inc b                                            ; $764c: $04
	rst $38                                          ; $764d: $ff
	rlca                                             ; $764e: $07
	ld a, [$fe07]                                    ; $764f: $fa $07 $fe
	ld l, d                                          ; $7652: $6a
	sub e                                            ; $7653: $93
	rst SubAFromDE                                          ; $7654: $df
	rrca                                             ; $7655: $0f
	sbc h                                            ; $7656: $9c
	ld [hl], a                                       ; $7657: $77
	ld a, b                                          ; $7658: $78
	cp a                                             ; $7659: $bf
	ld a, e                                          ; $765a: $7b
	call nz, $f09e                                   ; $765b: $c4 $9e $f0

jr_025_765e:
	ld a, [$fedf]                                    ; $765e: $fa $df $fe
	sbc [hl]                                         ; $7661: $9e
	db $fd                                           ; $7662: $fd
	ld a, e                                          ; $7663: $7b
	inc d                                            ; $7664: $14
	ld a, a                                          ; $7665: $7f
	cp $7f                                           ; $7666: $fe $7f
	sub e                                            ; $7668: $93
	ld a, d                                          ; $7669: $7a
	add hl, de                                       ; $766a: $19
	sub d                                            ; $766b: $92
	rlca                                             ; $766c: $07
	add hl, bc                                       ; $766d: $09
	ld c, $09                                        ; $766e: $0e $09
	ld c, $cb                                        ; $7670: $0e $cb
	call z, $fc33                                    ; $7672: $cc $33 $fc
	rla                                              ; $7675: $17
	ld hl, sp+$17                                    ; $7676: $f8 $17
	ld hl, sp+$07                                    ; $7678: $f8 $07
	and b                                            ; $767a: $a0
	ld a, a                                          ; $767b: $7f
	ld c, [hl]                                       ; $767c: $4e
	sbc d                                            ; $767d: $9a
	rst GetHLinHL                                          ; $767e: $cf
	ld bc, $01cf                                     ; $767f: $01 $cf $01
	and $7b                                          ; $7682: $e6 $7b
	cp $9d                                           ; $7684: $fe $9d
	rst SubAFromBC                                          ; $7686: $e7
	nop                                              ; $7687: $00
	ld [hl], a                                       ; $7688: $77
	cp $7f                                           ; $7689: $fe $7f
	ld c, [hl]                                       ; $768b: $4e
	sub c                                            ; $768c: $91
	rrca                                             ; $768d: $0f
	ldh a, [rIF]                                     ; $768e: $f0 $0f
	ldh a, [hDisp0_OBP1]                                     ; $7690: $f0 $87
	ld hl, sp-$79                                    ; $7692: $f8 $87
	ld hl, sp-$59                                    ; $7694: $f8 $a7
	ret c                                            ; $7696: $d8

	and e                                            ; $7697: $a3
	call c, $dca3                                    ; $7698: $dc $a3 $dc
	halt                                             ; $769b: $76
	adc h                                            ; $769c: $8c
	db $dd                                           ; $769d: $dd
	add b                                            ; $769e: $80
	sbc l                                            ; $769f: $9d
	ret nz                                           ; $76a0: $c0

	ld b, b                                          ; $76a1: $40
	ld [hl], a                                       ; $76a2: $77
	cp $9e                                           ; $76a3: $fe $9e
	ldh [$7a], a                                     ; $76a5: $e0 $7a
	set 3, a                                         ; $76a7: $cb $df
	ld bc, $fd79                                     ; $76a9: $01 $79 $fd
	sbc h                                            ; $76ac: $9c
	inc bc                                           ; $76ad: $03
	dec b                                            ; $76ae: $05
	ld b, $77                                        ; $76af: $06 $77
	sbc d                                            ; $76b1: $9a
	adc l                                            ; $76b2: $8d
	inc de                                           ; $76b3: $13
	inc e                                            ; $76b4: $1c
	db $fc                                           ; $76b5: $fc
	add e                                            ; $76b6: $83
	ld a, h                                          ; $76b7: $7c
	add e                                            ; $76b8: $83
	db $fc                                           ; $76b9: $fc
	inc bc                                           ; $76ba: $03
	ld hl, sp+$07                                    ; $76bb: $f8 $07
	ld sp, hl                                        ; $76bd: $f9
	ld b, $f1                                        ; $76be: $06 $f1
	ld c, $f3                                        ; $76c0: $0e $f3
	inc c                                            ; $76c2: $0c
	di                                               ; $76c3: $f3
	inc c                                            ; $76c4: $0c
	ld e, a                                          ; $76c5: $5f
	ld h, $03                                        ; $76c6: $26 $03
	jr nz, jr_025_773d                               ; $76c8: $20 $73

	cp $7f                                           ; $76ca: $fe $7f
	ld c, b                                          ; $76cc: $48
	sbc h                                            ; $76cd: $9c
	rst $38                                          ; $76ce: $ff
	ld bc, $7bff                                     ; $76cf: $01 $ff $7b
	ld b, [hl]                                       ; $76d2: $46
	ld h, a                                          ; $76d3: $67
	ldh a, [$7e]                                     ; $76d4: $f0 $7e
	rra                                              ; $76d6: $1f
	ld a, [hl]                                       ; $76d7: $7e
	ld [hl], h                                       ; $76d8: $74
	adc l                                            ; $76d9: $8d
	ld a, a                                          ; $76da: $7f
	nop                                              ; $76db: $00
	rst $38                                          ; $76dc: $ff
	add b                                            ; $76dd: $80
	cp a                                             ; $76de: $bf
	ret nz                                           ; $76df: $c0

	ld a, a                                          ; $76e0: $7f
	ret nz                                           ; $76e1: $c0

	rst $38                                          ; $76e2: $ff

jr_025_76e3:
	ld b, b                                          ; $76e3: $40
	rst SubAFromDE                                          ; $76e4: $df
	ld h, b                                          ; $76e5: $60

Call_025_76e6:
	inc bc                                           ; $76e6: $03
	nop                                              ; $76e7: $00
	db $fd                                           ; $76e8: $fd
	ld [bc], a                                       ; $76e9: $02
	db $fc                                           ; $76ea: $fc
	inc bc                                           ; $76eb: $03
	ld [hl], a                                       ; $76ec: $77
	sbc [hl]                                         ; $76ed: $9e
	ld l, a                                          ; $76ee: $6f
	cp $91                                           ; $76ef: $fe $91
	rst SubAFromBC                                          ; $76f1: $e7
	jr c, jr_025_76e3                                ; $76f2: $38 $ef

	jr nc, jr_025_7725                               ; $76f4: $30 $2f

	ldh a, [rVBK]                                    ; $76f6: $f0 $4f
	ldh a, [$5f]                                     ; $76f8: $f0 $5f
	ldh [$9f], a                                     ; $76fa: $e0 $9f
	ldh [$bf], a                                     ; $76fc: $e0 $bf
	ret nz                                           ; $76fe: $c0

	halt                                             ; $76ff: $76
	db $fc                                           ; $7700: $fc
	rrca                                             ; $7701: $0f

Call_025_7702:
	cp $77                                           ; $7702: $fe $77
	inc l                                            ; $7704: $2c
	sbc [hl]                                         ; $7705: $9e
	di                                               ; $7706: $f3
	ld e, e                                          ; $7707: $5b
	cp $96                                           ; $7708: $fe $96
	sub e                                            ; $770a: $93
	db $ec                                           ; $770b: $ec
	sub e                                            ; $770c: $93
	db $ec                                           ; $770d: $ec
	ld e, e                                          ; $770e: $5b
	db $e4                                           ; $770f: $e4
	ld e, e                                          ; $7710: $5b
	db $e4                                           ; $7711: $e4
	ld c, a                                          ; $7712: $4f
	ld a, e                                          ; $7713: $7b
	cp h                                             ; $7714: $bc
	sbc c                                            ; $7715: $99
	rst JumpTable                                          ; $7716: $c7
	ld a, b                                          ; $7717: $78
	rst JumpTable                                          ; $7718: $c7
	ld a, b                                          ; $7719: $78
	ldh [rAUD4LEN], a                                ; $771a: $e0 $20
	ld [hl], l                                       ; $771c: $75
	ld a, [de]                                       ; $771d: $1a
	ld a, a                                          ; $771e: $7f
	cp $9b                                           ; $771f: $fe $9b

jr_025_7721:
	ld hl, sp+$08                                    ; $7721: $f8 $08
	ld hl, sp+$08                                    ; $7723: $f8 $08

jr_025_7725:
	ld a, d                                          ; $7725: $7a
	ld c, e                                          ; $7726: $4b
	ld h, b                                          ; $7727: $60
	ld b, d                                          ; $7728: $42
	ld h, a                                          ; $7729: $67
	ld a, [de]                                       ; $772a: $1a
	sub l                                            ; $772b: $95
	inc hl                                           ; $772c: $23
	inc a                                            ; $772d: $3c

jr_025_772e:
	ld b, e                                          ; $772e: $43
	ld a, h                                          ; $772f: $7c
	ld b, a                                          ; $7730: $47
	ld a, b                                          ; $7731: $78
	add a                                            ; $7732: $87
	ld hl, sp+$1f                                    ; $7733: $f8 $1f
	ldh [$71], a                                     ; $7735: $e0 $71
	xor e                                            ; $7737: $ab
	ld a, a                                          ; $7738: $7f
	or d                                             ; $7739: $b2
	sbc b                                            ; $773a: $98

jr_025_773b:
	jr @-$17                                         ; $773b: $18 $e7

jr_025_773d:
	jr jr_025_772e                                   ; $773d: $18 $ef

	db $10                                           ; $773f: $10
	rst AddAOntoHL                                          ; $7740: $ef
	db $10                                           ; $7741: $10
	halt                                             ; $7742: $76
	sub d                                            ; $7743: $92
	ld a, a                                          ; $7744: $7f
	cp $7f                                           ; $7745: $fe $7f
	ld l, b                                          ; $7747: $68
	ld a, [hl]                                       ; $7748: $7e
	inc [hl]                                         ; $7749: $34
	ld a, a                                          ; $774a: $7f
	cp $9c                                           ; $774b: $fe $9c
	ld e, h                                          ; $774d: $5c
	ldh [$3c], a                                     ; $774e: $e0 $3c
	ld h, e                                          ; $7750: $63

jr_025_7751:
	cp $07                                           ; $7751: $fe $07
	ld [hl], b                                       ; $7753: $70
	ld b, a                                          ; $7754: $47
	cp $8d                                           ; $7755: $fe $8d
	cp a                                             ; $7757: $bf
	ld h, b                                          ; $7758: $60
	rst AddAOntoHL                                          ; $7759: $ef
	jr nc, jr_025_773b                               ; $775a: $30 $df

	jr nc, @+$01                                     ; $775c: $30 $ff

	db $10                                           ; $775e: $10
	rst FarCall                                          ; $775f: $f7
	jr jr_025_7751                                   ; $7760: $18 $ef

	jr @-$13                                         ; $7762: $18 $eb

	inc e                                            ; $7764: $1c
	rst FarCall                                          ; $7765: $f7
	inc c                                            ; $7766: $0c
	pop af                                           ; $7767: $f1
	rrca                                             ; $7768: $0f
	ld [hl], a                                       ; $7769: $77
	cp $98                                           ; $776a: $fe $98
	ldh a, [c]                                       ; $776c: $f2
	rrca                                             ; $776d: $0f
	ldh [c], a                                       ; $776e: $e2
	rra                                              ; $776f: $1f
	db $e3                                           ; $7770: $e3
	ld e, $e5                                        ; $7771: $1e $e5
	ld a, e                                          ; $7773: $7b
	cp $7f                                           ; $7774: $fe $7f
	adc d                                            ; $7776: $8a

Jump_025_7777:
	sbc l                                            ; $7777: $9d
	ld a, a                                          ; $7778: $7f
	add b                                            ; $7779: $80
	ld [hl], a                                       ; $777a: $77
	cp $03                                           ; $777b: $fe $03
	or [hl]                                          ; $777d: $b6
	ld l, e                                          ; $777e: $6b
	cp $67                                           ; $777f: $fe $67
	jr jr_025_7721                                   ; $7781: $18 $9e

	ld sp, hl                                        ; $7783: $f9
	ld l, e                                          ; $7784: $6b
	cp $77                                           ; $7785: $fe $77
	inc e                                            ; $7787: $1c
	ld a, a                                          ; $7788: $7f
	cp $9c                                           ; $7789: $fe $9c
	rst SubAFromBC                                          ; $778b: $e7
	ld a, b                                          ; $778c: $78
	and a                                            ; $778d: $a7
	ld l, e                                          ; $778e: $6b
	cp $77                                           ; $778f: $fe $77
	inc e                                            ; $7791: $1c
	sbc l                                            ; $7792: $9d
	cp $02                                           ; $7793: $fe $02
	ld h, a                                          ; $7795: $67
	cp $7e                                           ; $7796: $fe $7e
	add [hl]                                         ; $7798: $86
	di                                               ; $7799: $f3
	rst SubAFromDE                                          ; $779a: $df
	ld bc, $0b9b                                     ; $779b: $01 $9b $0b
	inc c                                            ; $779e: $0c
	rrca                                             ; $779f: $0f
	ld [$5475], sp                                   ; $77a0: $08 $75 $54
	sbc e                                            ; $77a3: $9b
	ccf                                              ; $77a4: $3f
	jr nz, @+$61                                     ; $77a5: $20 $5f

	ld h, b                                          ; $77a7: $60
	ld a, d                                          ; $77a8: $7a

jr_025_77a9:
	ld a, h                                          ; $77a9: $7c
	ld b, e                                          ; $77aa: $43
	adc b                                            ; $77ab: $88
	halt                                             ; $77ac: $76
	halt                                             ; $77ad: $76
	ld a, c                                          ; $77ae: $79
	rst SubAFromDE                                          ; $77af: $df
	sbc h                                            ; $77b0: $9c
	rrca                                             ; $77b1: $0f
	ldh [$1f], a                                     ; $77b2: $e0 $1f
	ld l, a                                          ; $77b4: $6f
	cp $5f                                           ; $77b5: $fe $5f
	ld b, $03                                        ; $77b7: $06 $03
	nop                                              ; $77b9: $00
	inc sp                                           ; $77ba: $33
	cp $96                                           ; $77bb: $fe $96
	push af                                          ; $77bd: $f5
	ld c, $f3                                        ; $77be: $0e $f3

Call_025_77c0:
	ld c, $fa                                        ; $77c0: $0e $fa
	rlca                                             ; $77c2: $07
	ld sp, hl                                        ; $77c3: $f9
	rlca                                             ; $77c4: $07
	db $fd                                           ; $77c5: $fd
	ld a, d                                          ; $77c6: $7a
	inc e                                            ; $77c7: $1c
	halt                                             ; $77c8: $76
	xor [hl]                                         ; $77c9: $ae
	sub b                                            ; $77ca: $90
	srl h                                            ; $77cb: $cb $3c
	srl h                                            ; $77cd: $cb $3c
	rst GetHLinHL                                          ; $77cf: $cf
	jr c, jr_025_77a9                                ; $77d0: $38 $d7

	jr c, jr_025_77f3                                ; $77d2: $38 $1f

	ldh a, [$9f]                                     ; $77d4: $f0 $9f
	ldh a, [$af]                                     ; $77d6: $f0 $af
	ldh a, [$7f]                                     ; $77d8: $f0 $7f
	inc bc                                           ; $77da: $03
	or b                                             ; $77db: $b0

Call_025_77dc:
	ld b, a                                          ; $77dc: $47
	cp $67                                           ; $77dd: $fe $67
	ld [$fe7f], sp                                   ; $77df: $08 $7f $fe
	sbc [hl]                                         ; $77e2: $9e
	db $fc                                           ; $77e3: $fc
	ld [hl], e                                       ; $77e4: $73
	cp $7f                                           ; $77e5: $fe $7f
	ld c, $96                                        ; $77e7: $0e $96
	xor a                                            ; $77e9: $af
	ld [hl], b                                       ; $77ea: $70
	xor a                                            ; $77eb: $af
	ld [hl], b                                       ; $77ec: $70
	cp a                                             ; $77ed: $bf
	ld h, b                                          ; $77ee: $60
	cp a                                             ; $77ef: $bf
	ld [hl], b                                       ; $77f0: $70
	sbc a                                            ; $77f1: $9f
	ld [hl], e                                       ; $77f2: $73

jr_025_77f3:
	cp $75                                           ; $77f3: $fe $75
	sub d                                            ; $77f5: $92
	ld d, a                                          ; $77f6: $57
	cp $17                                           ; $77f7: $fe $17
	nop                                              ; $77f9: $00
	cp $de                                           ; $77fa: $fe $de
	ld de, $dffb                                     ; $77fc: $11 $fb $df
	ld de, $109e                                     ; $77ff: $11 $9e $10
	ei                                               ; $7802: $fb
	sbc h                                            ; $7803: $9c
	ld [bc], a                                       ; $7804: $02
	ld de, $6b20                                     ; $7805: $11 $20 $6b
	rst FarCall                                          ; $7808: $f7
	sbc [hl]                                         ; $7809: $9e
	ld [hl+], a                                      ; $780a: $22
	ld l, e                                          ; $780b: $6b
	rst FarCall                                          ; $780c: $f7
	ldh [$e0], a                                     ; $780d: $e0 $e0
	call z, $30c3                                    ; $780f: $cc $c3 $30
	sub c                                            ; $7812: $91

jr_025_7813:
	nop                                              ; $7813: $00
	add h                                            ; $7814: $84
	adc h                                            ; $7815: $8c
	ld a, e                                          ; $7816: $7b
	sbc l                                            ; $7817: $9d

Call_025_7818:
	ld a, e                                          ; $7818: $7b
	sub c                                            ; $7819: $91
	ld a, a                                          ; $781a: $7f
	inc sp                                           ; $781b: $33
	rst $38                                          ; $781c: $ff
	ld [hl], d                                       ; $781d: $72
	rst $38                                          ; $781e: $ff
	ld [hl], a                                       ; $781f: $77
	call c, $b8df                                    ; $7820: $dc $df $b8
	cp [hl]                                          ; $7823: $be
	ld h, c                                          ; $7824: $61
	ldh [$80], a                                     ; $7825: $e0 $80
	ret nz                                           ; $7827: $c0

	nop                                              ; $7828: $00
	ld b, b                                          ; $7829: $40
	add b                                            ; $782a: $80
	ret nc                                           ; $782b: $d0

	ldh [$3c], a                                     ; $782c: $e0 $3c
	ldh a, [$fe]                                     ; $782e: $f0 $fe
	cp a                                             ; $7830: $bf
	cp $0e                                           ; $7831: $fe $0e
	adc d                                            ; $7833: $8a
	ldh a, [$f9]                                     ; $7834: $f0 $f9
	ld b, [hl]                                       ; $7836: $46
	or $09                                           ; $7837: $f6 $09
	rst AddAOntoHL                                          ; $7839: $ef
	inc de                                           ; $783a: $13
	rst $38                                          ; $783b: $ff
	rlca                                             ; $783c: $07
	cp $0e                                           ; $783d: $fe $0e
	sbc $3c                                          ; $783f: $de $3c
	cp [hl]                                          ; $7841: $be
	db $fc                                           ; $7842: $fc
	rst FarCall                                          ; $7843: $f7
	sbc a                                            ; $7844: $9f
	db $fc                                           ; $7845: $fc
	nop                                              ; $7846: $00
	db $f4                                           ; $7847: $f4
	ld hl, sp-$22                                    ; $7848: $f8 $de
	db $fc                                           ; $784a: $fc
	add b                                            ; $784b: $80
	inc a                                            ; $784c: $3c
	ld a, h                                          ; $784d: $7c
	jr c, @-$0e                                      ; $784e: $38 $f0

	ld a, b                                          ; $7850: $78
	add sp, -$08                                     ; $7851: $e8 $f8
	add sp, -$08                                     ; $7853: $e8 $f8
	db $fc                                           ; $7855: $fc
	add e                                            ; $7856: $83
	cp d                                             ; $7857: $ba
	jp Jump_025_41f3                                 ; $7858: $c3 $f3 $41


	pop de                                           ; $785b: $d1
	ld h, b                                          ; $785c: $60
	or b                                             ; $785d: $b0
	ldh [$b0], a                                     ; $785e: $e0 $b0
	ldh [$a8], a                                     ; $7860: $e0 $a8
	ldh a, [$d8]                                     ; $7862: $f0 $d8
	or b                                             ; $7864: $b0
	ldh [$f8], a                                     ; $7865: $e0 $f8
	nop                                              ; $7867: $00
	ldh [$0c], a                                     ; $7868: $e0 $0c
	ld hl, sp-$63                                    ; $786a: $f8 $9d
	or b                                             ; $786c: $b0
	ldh a, [$f5]                                     ; $786d: $f0 $f5
	sbc h                                            ; $786f: $9c
	dec c                                            ; $7870: $0d
	dec bc                                           ; $7871: $0b
	nop                                              ; $7872: $00
	cp h                                             ; $7873: $bc
	inc bc                                           ; $7874: $03
	ld bc, $0000                                     ; $7875: $01 $00 $00
	jr nz, jr_025_7813                               ; $7878: $20 $99

	db $10                                           ; $787a: $10
	or b                                             ; $787b: $b0
	ld h, b                                          ; $787c: $60
	ret nz                                           ; $787d: $c0

	add b                                            ; $787e: $80
	nop                                              ; $787f: $00
	cp c                                             ; $7880: $b9
	ret nz                                           ; $7881: $c0

	add b                                            ; $7882: $80
	ld bc, $0001                                     ; $7883: $01 $01 $00
	nop                                              ; $7886: $00
	nop                                              ; $7887: $00
	and b                                            ; $7888: $a0
	add [hl]                                         ; $7889: $86
	ret nz                                           ; $788a: $c0

	db $f4                                           ; $788b: $f4
	ld a, b                                          ; $788c: $78
	rst AddAOntoHL                                          ; $788d: $ef
	rra                                              ; $788e: $1f
	ei                                               ; $788f: $fb
	rlca                                             ; $7890: $07
	ld a, $01                                        ; $7891: $3e $01
	inc bc                                           ; $7893: $03
	nop                                              ; $7894: $00
	inc bc                                           ; $7895: $03
	ld bc, $0307                                     ; $7896: $01 $07 $03
	rrca                                             ; $7899: $0f
	rlca                                             ; $789a: $07
	ccf                                              ; $789b: $3f
	rra                                              ; $789c: $1f
	rst $38                                          ; $789d: $ff
	rst $38                                          ; $789e: $ff
	cp $ff                                           ; $789f: $fe $ff
	db $fd                                           ; $78a1: $fd
	cp $07                                           ; $78a2: $fe $07
	add b                                            ; $78a4: $80
	sbc $11                                          ; $78a5: $de $11
	ld sp, hl                                        ; $78a7: $f9
	ld [hl], e                                       ; $78a8: $73
	or $cc                                           ; $78a9: $f6 $cc
	jp $9430                                         ; $78ab: $c3 $30 $94


	nop                                              ; $78ae: $00
	add e                                            ; $78af: $83
	adc h                                            ; $78b0: $8c
	ld a, e                                          ; $78b1: $7b
	sbc l                                            ; $78b2: $9d
	ld a, e                                          ; $78b3: $7b
	sub c                                            ; $78b4: $91
	ld a, a                                          ; $78b5: $7f
	inc sp                                           ; $78b6: $33
	rst $38                                          ; $78b7: $ff
	ld [hl], d                                       ; $78b8: $72
	rst $38                                          ; $78b9: $ff
	ld [hl], a                                       ; $78ba: $77
	call c, $b8df                                    ; $78bb: $dc $df $b8
	cp a                                             ; $78be: $bf
	ld h, b                                          ; $78bf: $60
	ldh [$80], a                                     ; $78c0: $e0 $80
	ret nz                                           ; $78c2: $c0

	nop                                              ; $78c3: $00
	ld b, b                                          ; $78c4: $40
	add b                                            ; $78c5: $80
	sub b                                            ; $78c6: $90
	ldh [$7c], a                                     ; $78c7: $e0 $7c
	ldh a, [$fe]                                     ; $78c9: $f0 $fe
	nop                                              ; $78cb: $00
	ld [hl], e                                       ; $78cc: $73
	cp $8a                                           ; $78cd: $fe $8a
	ld b, c                                          ; $78cf: $41
	ld sp, hl                                        ; $78d0: $f9
	ld b, $f6                                        ; $78d1: $06 $f6
	add hl, bc                                       ; $78d3: $09
	rst AddAOntoHL                                          ; $78d4: $ef
	inc de                                           ; $78d5: $13
	rst $38                                          ; $78d6: $ff
	rlca                                             ; $78d7: $07
	cp $0e                                           ; $78d8: $fe $0e
	cp $9c                                           ; $78da: $fe $9c
	cp a                                             ; $78dc: $bf
	rst $38                                          ; $78dd: $ff
	inc c                                            ; $78de: $0c
	ldh a, [$fc]                                     ; $78df: $f0 $fc
	nop                                              ; $78e1: $00
	db $f4                                           ; $78e2: $f4
	ld hl, sp-$22                                    ; $78e3: $f8 $de
	db $fc                                           ; $78e5: $fc
	add b                                            ; $78e6: $80
	inc a                                            ; $78e7: $3c
	ld a, h                                          ; $78e8: $7c
	jr c, @-$0e                                      ; $78e9: $38 $f0

	ld a, b                                          ; $78eb: $78
	add sp, -$08                                     ; $78ec: $e8 $f8
	db $fc                                           ; $78ee: $fc
	add e                                            ; $78ef: $83
	cp d                                             ; $78f0: $ba
	jp Jump_025_41f3                                 ; $78f1: $c3 $f3 $41


	pop de                                           ; $78f4: $d1
	ld h, b                                          ; $78f5: $60
	or b                                             ; $78f6: $b0
	ldh [$b0], a                                     ; $78f7: $e0 $b0
	ldh [$a8], a                                     ; $78f9: $e0 $a8
	ldh a, [$d8]                                     ; $78fb: $f0 $d8
	or b                                             ; $78fd: $b0
	ldh [$f8], a                                     ; $78fe: $e0 $f8
	nop                                              ; $7900: $00
	ldh [$0c], a                                     ; $7901: $e0 $0c
	ld hl, sp-$50                                    ; $7903: $f8 $b0
	ldh a, [$f7]                                     ; $7905: $f0 $f7
	sub h                                            ; $7907: $94
	ld bc, $0f00                                     ; $7908: $01 $00 $0f
	rrca                                             ; $790b: $0f
	rlca                                             ; $790c: $07
	inc bc                                           ; $790d: $03
	ld [bc], a                                       ; $790e: $02

Call_025_790f:
	ld bc, $0000                                     ; $790f: $01 $00 $00
	inc bc                                           ; $7912: $03
	ld a, e                                          ; $7913: $7b
	db $f4                                           ; $7914: $f4
	sub b                                            ; $7915: $90
	jr nc, jr_025_7918                               ; $7916: $30 $00

jr_025_7918:
	jr nz, @-$0e                                     ; $7918: $20 $f0

	ldh [$e0], a                                     ; $791a: $e0 $e0
	ret nz                                           ; $791c: $c0

	ret nz                                           ; $791d: $c0

	nop                                              ; $791e: $00
	add b                                            ; $791f: $80
	nop                                              ; $7920: $00
	nop                                              ; $7921: $00
	pop bc                                           ; $7922: $c1
	nop                                              ; $7923: $00
	add c                                            ; $7924: $81
	ld a, [$a085]                                    ; $7925: $fa $85 $a0
	ret nz                                           ; $7928: $c0

	db $f4                                           ; $7929: $f4
	ld a, b                                          ; $792a: $78
	rst AddAOntoHL                                          ; $792b: $ef
	rra                                              ; $792c: $1f
	ei                                               ; $792d: $fb
	rlca                                             ; $792e: $07
	ld a, $01                                        ; $792f: $3e $01
	inc bc                                           ; $7931: $03
	nop                                              ; $7932: $00
	inc bc                                           ; $7933: $03
	ld bc, $0307                                     ; $7934: $01 $07 $03
	rrca                                             ; $7937: $0f
	rlca                                             ; $7938: $07
	ccf                                              ; $7939: $3f
	rra                                              ; $793a: $1f
	rst $38                                          ; $793b: $ff
	rst $38                                          ; $793c: $ff
	cp $ff                                           ; $793d: $fe $ff
	db $fd                                           ; $793f: $fd
	cp $07                                           ; $7940: $fe $07
	add b                                            ; $7942: $80
	sbc $11                                          ; $7943: $de $11
	ld sp, hl                                        ; $7945: $f9
	ld [hl], e                                       ; $7946: $73
	or $cc                                           ; $7947: $f6 $cc
	jp $9330                                         ; $7949: $c3 $30 $93


	nop                                              ; $794c: $00
	add b                                            ; $794d: $80
	adc h                                            ; $794e: $8c
	ld a, e                                          ; $794f: $7b
	sbc l                                            ; $7950: $9d
	ld a, e                                          ; $7951: $7b
	sub c                                            ; $7952: $91
	ld a, a                                          ; $7953: $7f
	inc sp                                           ; $7954: $33
	rst $38                                          ; $7955: $ff
	ld [hl], d                                       ; $7956: $72
	rst $38                                          ; $7957: $ff
	ld d, a                                          ; $7958: $57
	db $fc                                           ; $7959: $fc
	cp a                                             ; $795a: $bf
	ld hl, sp-$41                                    ; $795b: $f8 $bf
	ld b, b                                          ; $795d: $40
	ldh [$80], a                                     ; $795e: $e0 $80
	ret nz                                           ; $7960: $c0

	nop                                              ; $7961: $00
	ret nz                                           ; $7962: $c0

	nop                                              ; $7963: $00
	jr nc, @-$3e                                     ; $7964: $30 $c0

	db $fc                                           ; $7966: $fc
	ldh a, [$ce]                                     ; $7967: $f0 $ce

jr_025_7969:
	jr nc, jr_025_7969                               ; $7969: $30 $fe

	nop                                              ; $796b: $00
	cp $9a                                           ; $796c: $fe $9a
	nop                                              ; $796e: $00
	rst $38                                          ; $796f: $ff
	ld b, b                                          ; $7970: $40
	rst $38                                          ; $7971: $ff
	nop                                              ; $7972: $00
	ld l, a                                          ; $7973: $6f
	cp $97                                           ; $7974: $fe $97
	db $fc                                           ; $7976: $fc
	inc bc                                           ; $7977: $03
	ei                                               ; $7978: $fb
	add h                                            ; $7979: $84
	or $89                                           ; $797a: $f6 $89
	db $fc                                           ; $797c: $fc
	nop                                              ; $797d: $00
	ld l, a                                          ; $797e: $6f
	cp $80                                           ; $797f: $fe $80

Jump_025_7981:
	inc c                                            ; $7981: $0c
	ldh a, [$fc]                                     ; $7982: $f0 $fc
	nop                                              ; $7984: $00
	ld [hl], h                                       ; $7985: $74
	ld hl, sp-$04                                    ; $7986: $f8 $fc
	db $fc                                           ; $7988: $fc
	ei                                               ; $7989: $fb
	add a                                            ; $798a: $87
	xor a                                            ; $798b: $af
	rst SubAFromDE                                          ; $798c: $df
	db $fd                                           ; $798d: $fd
	ld a, a                                          ; $798e: $7f
	db $db                                           ; $798f: $db
	ld h, b                                          ; $7990: $60
	or b                                             ; $7991: $b0
	ldh [$b0], a                                     ; $7992: $e0 $b0
	ldh [$a8], a                                     ; $7994: $e0 $a8
	ldh a, [$d8]                                     ; $7996: $f0 $d8
	or b                                             ; $7998: $b0
	or $fe                                           ; $7999: $f6 $fe
	ld h, d                                          ; $799b: $62
	ldh a, [c]                                       ; $799c: $f2
	inc c                                            ; $799d: $0c
	ld hl, sp-$70                                    ; $799e: $f8 $90
	sbc [hl]                                         ; $79a0: $9e
	ldh [$f7], a                                     ; $79a1: $e0 $f7
	sub d                                            ; $79a3: $92
	ld bc, $1f00                                     ; $79a4: $01 $00 $1f
	rrca                                             ; $79a7: $0f
	rrca                                             ; $79a8: $0f
	rlca                                             ; $79a9: $07
	rlca                                             ; $79aa: $07
	inc bc                                           ; $79ab: $03
	inc bc                                           ; $79ac: $03
	ld bc, $0000                                     ; $79ad: $01 $00 $00
	inc bc                                           ; $79b0: $03
	cp $9a                                           ; $79b1: $fe $9a
	ld h, b                                          ; $79b3: $60
	ldh a, [$e0]                                     ; $79b4: $f0 $e0
	ldh [$c0], a                                     ; $79b6: $e0 $c0
	ld a, e                                          ; $79b8: $7b
	sbc c                                            ; $79b9: $99
	sbc d                                            ; $79ba: $9a
	ret nz                                           ; $79bb: $c0

	add b                                            ; $79bc: $80
	ld bc, wInitialA                                     ; $79bd: $01 $00 $c1
	ld a, e                                          ; $79c0: $7b
	ldh [c], a                                       ; $79c1: $e2
	db $fd                                           ; $79c2: $fd
	add l                                            ; $79c3: $85
	and b                                            ; $79c4: $a0
	ret nz                                           ; $79c5: $c0

	db $f4                                           ; $79c6: $f4
	ld a, b                                          ; $79c7: $78
	rst AddAOntoHL                                          ; $79c8: $ef
	rra                                              ; $79c9: $1f
	ei                                               ; $79ca: $fb
	rlca                                             ; $79cb: $07
	ld a, $01                                        ; $79cc: $3e $01
	add e                                            ; $79ce: $83
	nop                                              ; $79cf: $00
	inc bc                                           ; $79d0: $03
	ld bc, $0307                                     ; $79d1: $01 $07 $03
	rrca                                             ; $79d4: $0f
	rlca                                             ; $79d5: $07
	ccf                                              ; $79d6: $3f
	rra                                              ; $79d7: $1f
	rst $38                                          ; $79d8: $ff
	rst $38                                          ; $79d9: $ff
	cp $ff                                           ; $79da: $fe $ff
	db $fd                                           ; $79dc: $fd
	cp $07                                           ; $79dd: $fe $07
	add b                                            ; $79df: $80
	sbc $11                                          ; $79e0: $de $11
	ld sp, hl                                        ; $79e2: $f9
	ld [hl], e                                       ; $79e3: $73
	or $cc                                           ; $79e4: $f6 $cc
	jp $8830                                         ; $79e6: $c3 $30 $88


	nop                                              ; $79e9: $00
	add b                                            ; $79ea: $80
	adc h                                            ; $79eb: $8c
	ld a, e                                          ; $79ec: $7b
	sbc l                                            ; $79ed: $9d
	ld a, e                                          ; $79ee: $7b
	sub c                                            ; $79ef: $91
	ld a, a                                          ; $79f0: $7f
	inc sp                                           ; $79f1: $33
	rst $38                                          ; $79f2: $ff
	ld [hl], e                                       ; $79f3: $73
	rst $38                                          ; $79f4: $ff
	ld d, a                                          ; $79f5: $57
	db $fc                                           ; $79f6: $fc
	cp a                                             ; $79f7: $bf
	ld hl, sp-$01                                    ; $79f8: $f8 $ff
	ld b, b                                          ; $79fa: $40
	ldh [$80], a                                     ; $79fb: $e0 $80

Jump_025_79fd:
	ret nz                                           ; $79fd: $c0

	nop                                              ; $79fe: $00
	ret nz                                           ; $79ff: $c0

	nop                                              ; $7a00: $00
	ld [hl], b                                       ; $7a01: $70
	add b                                            ; $7a02: $80
	db $ec                                           ; $7a03: $ec
	ldh a, [$9e]                                     ; $7a04: $f0 $9e
	ld [hl], b                                       ; $7a06: $70
	cp $00                                           ; $7a07: $fe $00
	cp $9d                                           ; $7a09: $fe $9d
	nop                                              ; $7a0b: $00
	rst $38                                          ; $7a0c: $ff
	ld e, e                                          ; $7a0d: $5b
	cp $99                                           ; $7a0e: $fe $99
	cp $81                                           ; $7a10: $fe $81
	ld sp, hl                                        ; $7a12: $f9
	add [hl]                                         ; $7a13: $86
	db $fc                                           ; $7a14: $fc
	nop                                              ; $7a15: $00
	ld h, a                                          ; $7a16: $67
	cp $83                                           ; $7a17: $fe $83
	ld hl, sp+$00                                    ; $7a19: $f8 $00
	ld [$f8f0], sp                                   ; $7a1b: $08 $f0 $f8
	nop                                              ; $7a1e: $00
	rst FarCall                                          ; $7a1f: $f7
	adc b                                            ; $7a20: $88
	cp a                                             ; $7a21: $bf
	jp Jump_025_47ff                                 ; $7a22: $c3 $ff $47


	rst SubAFromDE                                          ; $7a25: $df
	ld a, h                                          ; $7a26: $7c
	or b                                             ; $7a27: $b0
	ldh [$b0], a                                     ; $7a28: $e0 $b0
	ldh [$a8], a                                     ; $7a2a: $e0 $a8
	ldh a, [$d8]                                     ; $7a2c: $f0 $d8
	or b                                             ; $7a2e: $b0
	cp $fc                                           ; $7a2f: $fe $fc
	cp $fe                                           ; $7a31: $fe $fe
	ld hl, sp-$10                                    ; $7a33: $f8 $f0
	push af                                          ; $7a35: $f5
	sub l                                            ; $7a36: $95
	ld bc, $1f00                                     ; $7a37: $01 $00 $1f
	rrca                                             ; $7a3a: $0f
	rlca                                             ; $7a3b: $07
	rrca                                             ; $7a3c: $0f
	rlca                                             ; $7a3d: $07
	rlca                                             ; $7a3e: $07
	inc bc                                           ; $7a3f: $03
	inc bc                                           ; $7a40: $03
	ld a, e                                          ; $7a41: $7b
	push af                                          ; $7a42: $f5
	cp $9a                                           ; $7a43: $fe $9a
	ld h, b                                          ; $7a45: $60
	ldh a, [$e0]                                     ; $7a46: $f0 $e0
	ldh [$c0], a                                     ; $7a48: $e0 $c0
	ld a, e                                          ; $7a4a: $7b
	cp $7f                                           ; $7a4b: $fe $7f
	sub a                                            ; $7a4d: $97
	sbc e                                            ; $7a4e: $9b
	ld b, c                                          ; $7a4f: $41
	add b                                            ; $7a50: $80
	ld bc, $6f00                                     ; $7a51: $01 $00 $6f
	db $eb                                           ; $7a54: $eb
	add l                                            ; $7a55: $85
	and b                                            ; $7a56: $a0
	ret nz                                           ; $7a57: $c0

	db $f4                                           ; $7a58: $f4
	ld a, b                                          ; $7a59: $78
	rst AddAOntoHL                                          ; $7a5a: $ef
	rra                                              ; $7a5b: $1f
	ei                                               ; $7a5c: $fb
	rlca                                             ; $7a5d: $07
	ld a, $01                                        ; $7a5e: $3e $01
	jp $8300                                         ; $7a60: $c3 $00 $83


	ld bc, $0307                                     ; $7a63: $01 $07 $03
	rrca                                             ; $7a66: $0f
	rlca                                             ; $7a67: $07
	ccf                                              ; $7a68: $3f
	rra                                              ; $7a69: $1f
	rst $38                                          ; $7a6a: $ff
	rst $38                                          ; $7a6b: $ff
	cp $ff                                           ; $7a6c: $fe $ff
	db $fd                                           ; $7a6e: $fd

jr_025_7a6f:
	cp $07                                           ; $7a6f: $fe $07

jr_025_7a71:
	add b                                            ; $7a71: $80
	sbc $11                                          ; $7a72: $de $11
	ld sp, hl                                        ; $7a74: $f9
	ld [hl], e                                       ; $7a75: $73
	or $6d                                           ; $7a76: $f6 $6d

jr_025_7a78:
	ld bc, $dff1                                     ; $7a78: $01 $f1 $df
	ld bc, $0797                                     ; $7a7b: $01 $97 $07
	ld b, $1b                                        ; $7a7e: $06 $1b
	inc e                                            ; $7a80: $1c
	cpl                                              ; $7a81: $2f
	jr nc, jr_025_7ac3                               ; $7a82: $30 $3f

	jr nz, jr_025_7af5                               ; $7a84: $20 $6f

	cp $f9                                           ; $7a86: $fe $f9
	rst SubAFromDE                                          ; $7a88: $df
	inc bc                                           ; $7a89: $03
	adc a                                            ; $7a8a: $8f
	inc b                                            ; $7a8b: $04
	rlca                                             ; $7a8c: $07
	ld a, [hl]                                       ; $7a8d: $7e
	ld a, c                                          ; $7a8e: $79
	add $b9                                          ; $7a8f: $c6 $b9
	add $39                                          ; $7a91: $c6 $39
	ldh [c], a                                       ; $7a93: $e2
	dec e                                            ; $7a94: $1d
	ldh [$1f], a                                     ; $7a95: $e0 $1f
	jr nz, jr_025_7a78                               ; $7a97: $20 $df

	nop                                              ; $7a99: $00
	rst $38                                          ; $7a9a: $ff
	ld [hl], a                                       ; $7a9b: $77
	cp $9d                                           ; $7a9c: $fe $9d
	add b                                            ; $7a9e: $80
	ld a, a                                          ; $7a9f: $7f
	ld sp, hl                                        ; $7aa0: $f9
	rst SubAFromDE                                          ; $7aa1: $df
	sbc [hl]                                         ; $7aa2: $9e
	sub l                                            ; $7aa3: $95
	ld l, c                                          ; $7aa4: $69
	rst FarCall                                          ; $7aa5: $f7
	jr c, jr_025_7a6f                                ; $7aa6: $38 $c7

	jr c, jr_025_7a71                                ; $7aa8: $38 $c7

	db $10                                           ; $7aaa: $10
	rst AddAOntoHL                                          ; $7aab: $ef
	db $10                                           ; $7aac: $10
	rst AddAOntoHL                                          ; $7aad: $ef
	ld l, a                                          ; $7aae: $6f
	db $e4                                           ; $7aaf: $e4
	ld l, e                                          ; $7ab0: $6b
	cp $f6                                           ; $7ab1: $fe $f6
	db $dd                                           ; $7ab3: $dd
	add b                                            ; $7ab4: $80
	rst SubAFromDE                                          ; $7ab5: $df
	ret nz                                           ; $7ab6: $c0

	sub a                                            ; $7ab7: $97
	ld b, b                                          ; $7ab8: $40
	ret nz                                           ; $7ab9: $c0

	ld h, b                                          ; $7aba: $60
	ldh [$50], a                                     ; $7abb: $e0 $50
	ldh a, [rOBP0]                                   ; $7abd: $f0 $48
	ld hl, sp+$6f                                    ; $7abf: $f8 $6f
	cp $7f                                           ; $7ac1: $fe $7f

jr_025_7ac3:
	sub [hl]                                         ; $7ac3: $96
	sbc l                                            ; $7ac4: $9d
	rra                                              ; $7ac5: $1f
	db $10                                           ; $7ac6: $10
	ld [hl], a                                       ; $7ac7: $77
	cp $8b                                           ; $7ac8: $fe $8b
	rla                                              ; $7aca: $17
	jr @+$19                                         ; $7acb: $18 $17

	jr jr_025_7ada                                   ; $7acd: $18 $0b

	inc c                                            ; $7acf: $0c
	dec bc                                           ; $7ad0: $0b
	inc c                                            ; $7ad1: $0c
	add hl, bc                                       ; $7ad2: $09
	ld c, $09                                        ; $7ad3: $0e $09
	ld c, $05                                        ; $7ad5: $0e $05
	ld b, $04                                        ; $7ad7: $06 $04
	rlca                                             ; $7ad9: $07

jr_025_7ada:
	ld [bc], a                                       ; $7ada: $02
	inc bc                                           ; $7adb: $03
	ld [bc], a                                       ; $7adc: $02
	inc bc                                           ; $7add: $03
	db $dd                                           ; $7ade: $dd
	ld bc, $9e7f                                     ; $7adf: $01 $7f $9e
	ld h, a                                          ; $7ae2: $67
	cp $9d                                           ; $7ae3: $fe $9d
	ret nz                                           ; $7ae5: $c0

	ccf                                              ; $7ae6: $3f
	ld [hl], a                                       ; $7ae7: $77
	cp $7f                                           ; $7ae8: $fe $7f
	add h                                            ; $7aea: $84
	ld a, a                                          ; $7aeb: $7f
	cp $93                                           ; $7aec: $fe $93
	ldh a, [rIF]                                     ; $7aee: $f0 $0f
	ldh a, [rIF]                                     ; $7af0: $f0 $0f
	ld hl, sp+$07                                    ; $7af2: $f8 $07
	db $fc                                           ; $7af4: $fc

jr_025_7af5:
	inc bc                                           ; $7af5: $03
	ld a, [hl]                                       ; $7af6: $7e

jr_025_7af7:
	add c                                            ; $7af7: $81
	ld a, a                                          ; $7af8: $7f
	sbc a                                            ; $7af9: $9f
	ld d, e                                          ; $7afa: $53
	sub h                                            ; $7afb: $94
	ld l, e                                          ; $7afc: $6b
	cp $96                                           ; $7afd: $fe $96
	ld bc, $02ff                                     ; $7aff: $01 $ff $02
	cp $02                                           ; $7b02: $fe $02
	cp $04                                           ; $7b04: $fe $04
	db $fc                                           ; $7b06: $fc

Jump_025_7b07:
	inc b                                            ; $7b07: $04
	sbc $fc                                          ; $7b08: $de $fc
	ld [hl], a                                       ; $7b0a: $77
	sbc h                                            ; $7b0b: $9c
	ld a, a                                          ; $7b0c: $7f
	sub d                                            ; $7b0d: $92
	sbc [hl]                                         ; $7b0e: $9e
	db $10                                           ; $7b0f: $10
	ld a, e                                          ; $7b10: $7b
	cp $99                                           ; $7b11: $fe $99
	jr nz, jr_025_7af5                               ; $7b13: $20 $e0

	jr nz, jr_025_7af7                               ; $7b15: $20 $e0

	ld b, b                                          ; $7b17: $40
	ret nz                                           ; $7b18: $c0

	db $dd                                           ; $7b19: $dd
	add b                                            ; $7b1a: $80
	push hl                                          ; $7b1b: $e5
	ld a, e                                          ; $7b1c: $7b
	nop                                              ; $7b1d: $00
	sbc h                                            ; $7b1e: $9c
	rlca                                             ; $7b1f: $07
	ld [$770f], sp                                   ; $7b20: $08 $0f $77
	cp $77                                           ; $7b23: $fe $77
	ei                                               ; $7b25: $fb
	ld a, a                                          ; $7b26: $7f
	db $fd                                           ; $7b27: $fd
	pop af                                           ; $7b28: $f1
	ld l, a                                          ; $7b29: $6f
	ld [$0fdf], a                                    ; $7b2a: $ea $df $0f
	ld [hl], a                                       ; $7b2d: $77
	ld c, e                                          ; $7b2e: $4b
	ld a, [hl]                                       ; $7b2f: $7e
	pop hl                                           ; $7b30: $e1
	sbc h                                            ; $7b31: $9c
	ld h, e                                          ; $7b32: $63
	ld a, h                                          ; $7b33: $7c
	ldh [$73], a                                     ; $7b34: $e0 $73
	adc [hl]                                         ; $7b36: $8e
	ld a, a                                          ; $7b37: $7f
	ld l, e                                          ; $7b38: $6b
	ld a, a                                          ; $7b39: $7f
	ei                                               ; $7b3a: $fb
	ld a, a                                          ; $7b3b: $7f
	ld l, b                                          ; $7b3c: $68
	ld b, a                                          ; $7b3d: $47
	db $10                                           ; $7b3e: $10
	ld [hl], d                                       ; $7b3f: $72
	ret z                                            ; $7b40: $c8

	ld [hl], e                                       ; $7b41: $73
	ldh [$7f], a                                     ; $7b42: $e0 $7f
	ld d, h                                          ; $7b44: $54
	ld a, a                                          ; $7b45: $7f
	ei                                               ; $7b46: $fb
	sbc l                                            ; $7b47: $9d
	inc bc                                           ; $7b48: $03
	db $fc                                           ; $7b49: $fc
	ld [hl], a                                       ; $7b4a: $77
	or $7f                                           ; $7b4b: $f6 $7f
	ld a, $91                                        ; $7b4d: $3e $91
	ldh a, [rIE]                                     ; $7b4f: $f0 $ff
	rra                                              ; $7b51: $1f
	rst $38                                          ; $7b52: $ff
	sub b                                            ; $7b53: $90
	ld a, a                                          ; $7b54: $7f
	call nc, $c63b                                   ; $7b55: $d4 $3b $c6
	add hl, sp                                       ; $7b58: $39
	and $19                                          ; $7b59: $e6 $19
	rst SubAFromBC                                          ; $7b5b: $e7
	jr jr_025_7bcc                                   ; $7b5c: $18 $6e

	ld [$80d3], a                                    ; $7b5e: $ea $d3 $80
	rst SubAFromDE                                          ; $7b61: $df
	ret nz                                           ; $7b62: $c0

	ld a, a                                          ; $7b63: $7f
	ld d, [hl]                                       ; $7b64: $56
	ld a, a                                          ; $7b65: $7f
	ld d, b                                          ; $7b66: $50
	sbc c                                            ; $7b67: $99
	ld [$08f8], sp                                   ; $7b68: $08 $f8 $08
	ld hl, sp+$04                                    ; $7b6b: $f8 $04
	db $fc                                           ; $7b6d: $fc
	daa                                              ; $7b6e: $27
	ld e, d                                          ; $7b6f: $5a
	rst SubAFromDE                                          ; $7b70: $df
	ld bc, $de76                                     ; $7b71: $01 $76 $de
	ld h, a                                          ; $7b74: $67
	cp $d9                                           ; $7b75: $fe $d9
	ld bc, $dfe0                                     ; $7b77: $01 $e0 $df
	sub a                                            ; $7b7a: $97
	ld b, a                                          ; $7b7b: $47
	ld a, b                                          ; $7b7c: $78
	sbc a                                            ; $7b7d: $9f
	ldh [$bf], a                                     ; $7b7e: $e0 $bf
	ret nz                                           ; $7b80: $c0

	ld a, a                                          ; $7b81: $7f
	add b                                            ; $7b82: $80
	ld h, [hl]                                       ; $7b83: $66
	db $d3                                           ; $7b84: $d3
	ld a, [hl]                                       ; $7b85: $7e
	cp b                                             ; $7b86: $b8
	ld e, a                                          ; $7b87: $5f
	cp $99                                           ; $7b88: $fe $99
	ld sp, hl                                        ; $7b8a: $f9
	ld b, $fb                                        ; $7b8b: $06 $fb
	inc b                                            ; $7b8d: $04
	ei                                               ; $7b8e: $fb
	inc b                                            ; $7b8f: $04
	ld c, [hl]                                       ; $7b90: $4e
	or e                                             ; $7b91: $b3
	sbc e                                            ; $7b92: $9b
	rst FarCall                                          ; $7b93: $f7
	ld [$08f7], sp                                   ; $7b94: $08 $f7 $08
	ld a, [hl-]                                      ; $7b97: $3a
	sbc l                                            ; $7b98: $9d
	ld h, e                                          ; $7b99: $63
	cp $7f                                           ; $7b9a: $fe $7f
	ld e, [hl]                                       ; $7b9c: $5e
	sub e                                            ; $7b9d: $93
	add d                                            ; $7b9e: $82
	ld a, [hl]                                       ; $7b9f: $7e
	add d                                            ; $7ba0: $82
	ld a, [hl]                                       ; $7ba1: $7e
	jp nz, $c13e                                     ; $7ba2: $c2 $3e $c1

	ccf                                              ; $7ba5: $3f
	pop hl                                           ; $7ba6: $e1
	rra                                              ; $7ba7: $1f
	pop af                                           ; $7ba8: $f1
	rrca                                             ; $7ba9: $0f
	ld e, a                                          ; $7baa: $5f
	cp $7f                                           ; $7bab: $fe $7f
	ldh a, [c]                                       ; $7bad: $f2
	sbc c                                            ; $7bae: $99
	ldh [c], a                                       ; $7baf: $e2
	ld e, $c2                                        ; $7bb0: $1e $c2
	ld a, $c2                                        ; $7bb2: $3e $c2
	ld a, $5f                                        ; $7bb4: $3e $5f
	sub $76                                          ; $7bb6: $d6 $76
	dec sp                                           ; $7bb8: $3b
	ld a, l                                          ; $7bb9: $7d
	rst GetHLinHL                                          ; $7bba: $cf
	ld a, a                                          ; $7bbb: $7f
	cp $7f                                           ; $7bbc: $fe $7f
	add d                                            ; $7bbe: $82
	ld a, e                                          ; $7bbf: $7b
	add b                                            ; $7bc0: $80
	sbc [hl]                                         ; $7bc1: $9e
	ld b, b                                          ; $7bc2: $40
	ld h, a                                          ; $7bc3: $67
	cp $47                                           ; $7bc4: $fe $47
	or b                                             ; $7bc6: $b0
	pop af                                           ; $7bc7: $f1
	ld [hl], a                                       ; $7bc8: $77
	and d                                            ; $7bc9: $a2
	halt                                             ; $7bca: $76
	ld [hl-], a                                      ; $7bcb: $32

jr_025_7bcc:
	ld a, [hl]                                       ; $7bcc: $7e
	cp a                                             ; $7bcd: $bf
	ld a, [hl]                                       ; $7bce: $7e
	ld a, [hl+]                                      ; $7bcf: $2a
	ld [hl], a                                       ; $7bd0: $77
	cp $e1                                           ; $7bd1: $fe $e1
	ld a, a                                          ; $7bd3: $7f
	rst SubAFromDE                                          ; $7bd4: $df
	sub c                                            ; $7bd5: $91
	adc a                                            ; $7bd6: $8f
	ld a, a                                          ; $7bd7: $7f
	halt                                             ; $7bd8: $76
	rst $38                                          ; $7bd9: $ff
	and l                                            ; $7bda: $a5
	sbc $75                                          ; $7bdb: $de $75
	adc [hl]                                         ; $7bdd: $8e
	ld [hl], l                                       ; $7bde: $75
	adc [hl]                                         ; $7bdf: $8e
	ld sp, hl                                        ; $7be0: $f9
	ld b, $f9                                        ; $7be1: $06 $f9
	ld b, $2f                                        ; $7be3: $06 $2f
	nop                                              ; $7be5: $00
	sub b                                            ; $7be6: $90
	add [hl]                                         ; $7be7: $86
	inc b                                            ; $7be8: $04
	add l                                            ; $7be9: $85
	ld b, $82                                        ; $7bea: $06 $82
	inc bc                                           ; $7bec: $03
	add b                                            ; $7bed: $80
	nop                                              ; $7bee: $00
	add b                                            ; $7bef: $80
	nop                                              ; $7bf0: $00
	add c                                            ; $7bf1: $81
	inc bc                                           ; $7bf2: $03
	add b                                            ; $7bf3: $80
	ld [bc], a                                       ; $7bf4: $02
	ret nz                                           ; $7bf5: $c0

	db $fc                                           ; $7bf6: $fc
	ld a, a                                          ; $7bf7: $7f
	db $f4                                           ; $7bf8: $f4
	ld l, a                                          ; $7bf9: $6f
	ld sp, hl                                        ; $7bfa: $f9
	adc e                                            ; $7bfb: $8b
	and b                                            ; $7bfc: $a0
	ld h, b                                          ; $7bfd: $60
	nop                                              ; $7bfe: $00
	nop                                              ; $7bff: $00
	jp wInitialA                                         ; $7c00: $c3 $00 $c1


	nop                                              ; $7c03: $00
	ret nz                                           ; $7c04: $c0

	add b                                            ; $7c05: $80
	ldh [$80], a                                     ; $7c06: $e0 $80
	ldh [$c0], a                                     ; $7c08: $e0 $c0
	ldh [$c0], a                                     ; $7c0a: $e0 $c0
	or b                                             ; $7c0c: $b0
	ldh [$98], a                                     ; $7c0d: $e0 $98
	ldh a, [rOCPD]                                   ; $7c0f: $f0 $6b
	db $e4                                           ; $7c11: $e4
	ld hl, sp+$04                                    ; $7c12: $f8 $04
	nop                                              ; $7c14: $00
	rst SubAFromDE                                          ; $7c15: $df
	ld b, h                                          ; $7c16: $44
	ld sp, $8f00                                     ; $7c17: $31 $00 $8f
	add [hl]                                         ; $7c1a: $86
	inc b                                            ; $7c1b: $04
	add l                                            ; $7c1c: $85
	ld b, $82                                        ; $7c1d: $06 $82
	inc bc                                           ; $7c1f: $03
	add b                                            ; $7c20: $80
	nop                                              ; $7c21: $00
	add b                                            ; $7c22: $80
	nop                                              ; $7c23: $00
	add c                                            ; $7c24: $81
	inc bc                                           ; $7c25: $03
	add e                                            ; $7c26: $83
	inc bc                                           ; $7c27: $03
	jp nz, $fd01                                     ; $7c28: $c2 $01 $fd

	ld a, a                                          ; $7c2b: $7f
	db $f4                                           ; $7c2c: $f4
	db $fd                                           ; $7c2d: $fd
	adc c                                            ; $7c2e: $89
	ld b, b                                          ; $7c2f: $40
	add b                                            ; $7c30: $80
	ldh [$e0], a                                     ; $7c31: $e0 $e0
	ld b, b                                          ; $7c33: $40
	add b                                            ; $7c34: $80
	ret nz                                           ; $7c35: $c0

	nop                                              ; $7c36: $00
	jp wInitialA                                         ; $7c37: $c3 $00 $c1


	add b                                            ; $7c3a: $80
	ldh [$80], a                                     ; $7c3b: $e0 $80
	ldh [$c0], a                                     ; $7c3d: $e0 $c0
	ldh [$c0], a                                     ; $7c3f: $e0 $c0
	or b                                             ; $7c41: $b0
	ldh [$98], a                                     ; $7c42: $e0 $98
	ldh a, [$67]                                     ; $7c44: $f0 $67
	ldh [c], a                                       ; $7c46: $e2
	ld sp, hl                                        ; $7c47: $f9
	inc b                                            ; $7c48: $04
	nop                                              ; $7c49: $00
	rst SubAFromDE                                          ; $7c4a: $df
	ld b, h                                          ; $7c4b: $44
	inc sp                                           ; $7c4c: $33
	nop                                              ; $7c4d: $00
	adc a                                            ; $7c4e: $8f
	add [hl]                                         ; $7c4f: $86
	inc b                                            ; $7c50: $04
	add l                                            ; $7c51: $85
	ld b, $82                                        ; $7c52: $06 $82
	inc bc                                           ; $7c54: $03
	add b                                            ; $7c55: $80
	nop                                              ; $7c56: $00
	add b                                            ; $7c57: $80
	nop                                              ; $7c58: $00
	add c                                            ; $7c59: $81
	inc bc                                           ; $7c5a: $03
	add e                                            ; $7c5b: $83
	inc bc                                           ; $7c5c: $03
	pop bc                                           ; $7c5d: $c1
	inc bc                                           ; $7c5e: $03
	db $fd                                           ; $7c5f: $fd
	ld a, a                                          ; $7c60: $7f
	db $f4                                           ; $7c61: $f4
	db $fd                                           ; $7c62: $fd
	sbc l                                            ; $7c63: $9d
	ld b, b                                          ; $7c64: $40
	add b                                            ; $7c65: $80
	sbc $e0                                          ; $7c66: $de $e0
	adc [hl]                                         ; $7c68: $8e
	ret nz                                           ; $7c69: $c0

	pop bc                                           ; $7c6a: $c1
	nop                                              ; $7c6b: $00
	ret nz                                           ; $7c6c: $c0

	nop                                              ; $7c6d: $00
	jp $e180                                         ; $7c6e: $c3 $80 $e1


	add b                                            ; $7c71: $80
	ldh [$c0], a                                     ; $7c72: $e0 $c0
	ldh [$c0], a                                     ; $7c74: $e0 $c0
	or b                                             ; $7c76: $b0

Jump_025_7c77:
	ldh [$98], a                                     ; $7c77: $e0 $98
	ldh a, [rPCM34]                                  ; $7c79: $f0 $77
	db $e4                                           ; $7c7b: $e4
	ld l, a                                          ; $7c7c: $6f
	ldh [$fb], a                                     ; $7c7d: $e0 $fb
	inc b                                            ; $7c7f: $04
	nop                                              ; $7c80: $00
	rst SubAFromDE                                          ; $7c81: $df
	ld b, h                                          ; $7c82: $44
	inc [hl]                                         ; $7c83: $34
	nop                                              ; $7c84: $00
	adc a                                            ; $7c85: $8f
	add [hl]                                         ; $7c86: $86
	inc b                                            ; $7c87: $04
	add l                                            ; $7c88: $85
	ld b, $82                                        ; $7c89: $06 $82
	inc bc                                           ; $7c8b: $03
	add b                                            ; $7c8c: $80
	nop                                              ; $7c8d: $00
	add b                                            ; $7c8e: $80
	nop                                              ; $7c8f: $00
	add c                                            ; $7c90: $81
	inc bc                                           ; $7c91: $03
	add e                                            ; $7c92: $83
	inc bc                                           ; $7c93: $03
	pop bc                                           ; $7c94: $c1
	inc bc                                           ; $7c95: $03
	db $fd                                           ; $7c96: $fd
	ld a, a                                          ; $7c97: $7f
	db $f4                                           ; $7c98: $f4
	db $fd                                           ; $7c99: $fd
	sbc l                                            ; $7c9a: $9d
	ld b, b                                          ; $7c9b: $40
	add b                                            ; $7c9c: $80
	sbc $e0                                          ; $7c9d: $de $e0
	adc l                                            ; $7c9f: $8d
	ret nz                                           ; $7ca0: $c0

	jp $c001                                         ; $7ca1: $c3 $01 $c0


	nop                                              ; $7ca4: $00
	jp $e180                                         ; $7ca5: $c3 $80 $e1


	add b                                            ; $7ca8: $80
	ldh [$c0], a                                     ; $7ca9: $e0 $c0
	ldh [$c0], a                                     ; $7cab: $e0 $c0
	or b                                             ; $7cad: $b0
	ldh [$98], a                                     ; $7cae: $e0 $98
	ldh a, [$c0]                                     ; $7cb0: $f0 $c0
	ld a, e                                          ; $7cb2: $7b
	db $e3                                           ; $7cb3: $e3
	ld l, a                                          ; $7cb4: $6f
	ldh [$fb], a                                     ; $7cb5: $e0 $fb
	inc b                                            ; $7cb7: $04
	nop                                              ; $7cb8: $00
	rst SubAFromDE                                          ; $7cb9: $df
	ld b, h                                          ; $7cba: $44
	ld l, $00                                        ; $7cbb: $2e $00
	sub b                                            ; $7cbd: $90
	add [hl]                                         ; $7cbe: $86
	inc b                                            ; $7cbf: $04
	add l                                            ; $7cc0: $85
	ld b, $82                                        ; $7cc1: $06 $82
	inc bc                                           ; $7cc3: $03
	add b                                            ; $7cc4: $80
	nop                                              ; $7cc5: $00
	add b                                            ; $7cc6: $80
	nop                                              ; $7cc7: $00
	add d                                            ; $7cc8: $82
	inc b                                            ; $7cc9: $04
	add c                                            ; $7cca: $81
	ld [bc], a                                       ; $7ccb: $02
	jp nz, Jump_025_7ffc                             ; $7ccc: $c2 $fc $7f

	db $f4                                           ; $7ccf: $f4
	ei                                               ; $7cd0: $fb
	adc e                                            ; $7cd1: $8b
	ld h, b                                          ; $7cd2: $60
	ldh a, [$c0]                                     ; $7cd3: $f0 $c0
	nop                                              ; $7cd5: $00
	ret nz                                           ; $7cd6: $c0

	nop                                              ; $7cd7: $00
	jp wInitialA                                         ; $7cd8: $c3 $00 $c1


	add b                                            ; $7cdb: $80
	ldh [$80], a                                     ; $7cdc: $e0 $80
	ldh [$c0], a                                     ; $7cde: $e0 $c0
	ldh [$c0], a                                     ; $7ce0: $e0 $c0
	or b                                             ; $7ce2: $b0
	ldh [$98], a                                     ; $7ce3: $e0 $98
	ldh a, [$5f]                                     ; $7ce5: $f0 $5f
	ldh [c], a                                       ; $7ce7: $e2
	ei                                               ; $7ce8: $fb
	inc b                                            ; $7ce9: $04
	nop                                              ; $7cea: $00
	rst SubAFromDE                                          ; $7ceb: $df
	ld b, h                                          ; $7cec: $44
	cpl                                              ; $7ced: $2f
	nop                                              ; $7cee: $00
	adc a                                            ; $7cef: $8f
	add [hl]                                         ; $7cf0: $86
	inc b                                            ; $7cf1: $04
	add l                                            ; $7cf2: $85
	ld b, $82                                        ; $7cf3: $06 $82
	inc bc                                           ; $7cf5: $03
	add b                                            ; $7cf6: $80
	nop                                              ; $7cf7: $00
	add b                                            ; $7cf8: $80
	nop                                              ; $7cf9: $00
	add d                                            ; $7cfa: $82
	inc b                                            ; $7cfb: $04
	add [hl]                                         ; $7cfc: $86
	inc bc                                           ; $7cfd: $03
	pop bc                                           ; $7cfe: $c1
	inc bc                                           ; $7cff: $03
	db $fd                                           ; $7d00: $fd
	ld a, a                                          ; $7d01: $7f
	db $f4                                           ; $7d02: $f4
	ei                                               ; $7d03: $fb
	adc e                                            ; $7d04: $8b
	ld h, b                                          ; $7d05: $60
	ldh a, [$a0]                                     ; $7d06: $f0 $a0
	ret nz                                           ; $7d08: $c0

	ret nz                                           ; $7d09: $c0

	nop                                              ; $7d0a: $00
	jp wInitialA                                         ; $7d0b: $c3 $00 $c1


	add b                                            ; $7d0e: $80
	ldh [$80], a                                     ; $7d0f: $e0 $80
	ldh [$c0], a                                     ; $7d11: $e0 $c0
	ldh [$c0], a                                     ; $7d13: $e0 $c0
	or b                                             ; $7d15: $b0
	ldh [$98], a                                     ; $7d16: $e0 $98
	ldh a, [$5f]                                     ; $7d18: $f0 $5f
	ldh [c], a                                       ; $7d1a: $e2
	ei                                               ; $7d1b: $fb
	inc b                                            ; $7d1c: $04
	nop                                              ; $7d1d: $00
	rst SubAFromDE                                          ; $7d1e: $df
	ld b, h                                          ; $7d1f: $44
	ld [hl-], a                                      ; $7d20: $32
	nop                                              ; $7d21: $00
	adc a                                            ; $7d22: $8f
	add [hl]                                         ; $7d23: $86
	inc b                                            ; $7d24: $04
	add l                                            ; $7d25: $85
	ld b, $82                                        ; $7d26: $06 $82
	inc bc                                           ; $7d28: $03
	add b                                            ; $7d29: $80
	nop                                              ; $7d2a: $00
	add b                                            ; $7d2b: $80
	nop                                              ; $7d2c: $00
	add h                                            ; $7d2d: $84
	rlca                                             ; $7d2e: $07
	add e                                            ; $7d2f: $83
	rlca                                             ; $7d30: $07
	jp $fd03                                         ; $7d31: $c3 $03 $fd


	ld a, a                                          ; $7d34: $7f
	db $f4                                           ; $7d35: $f4
	ld l, a                                          ; $7d36: $6f
	ld a, [$e089]                                    ; $7d37: $fa $89 $e0
	ldh a, [$c0]                                     ; $7d3a: $f0 $c0
	ldh [$c3], a                                     ; $7d3c: $e0 $c3
	ld bc, $00c0                                     ; $7d3e: $01 $c0 $00
	jp $e180                                         ; $7d41: $c3 $80 $e1


	add b                                            ; $7d44: $80
	ldh [$c0], a                                     ; $7d45: $e0 $c0
	ldh [$c0], a                                     ; $7d47: $e0 $c0
	or b                                             ; $7d49: $b0
	ldh [$98], a                                     ; $7d4a: $e0 $98
	ldh a, [$80]                                     ; $7d4c: $f0 $80
	ret nz                                           ; $7d4e: $c0

	ld h, a                                          ; $7d4f: $67
	ldh [$fb], a                                     ; $7d50: $e0 $fb
	inc b                                            ; $7d52: $04
	nop                                              ; $7d53: $00
	rst SubAFromDE                                          ; $7d54: $df
	ld b, h                                          ; $7d55: $44
	ld [hl-], a                                      ; $7d56: $32
	nop                                              ; $7d57: $00
	adc a                                            ; $7d58: $8f
	add [hl]                                         ; $7d59: $86
	inc b                                            ; $7d5a: $04
	add l                                            ; $7d5b: $85
	ld b, $82                                        ; $7d5c: $06 $82
	inc bc                                           ; $7d5e: $03
	add b                                            ; $7d5f: $80
	nop                                              ; $7d60: $00
	add b                                            ; $7d61: $80
	nop                                              ; $7d62: $00
	add [hl]                                         ; $7d63: $86
	rlca                                             ; $7d64: $07
	add e                                            ; $7d65: $83
	rlca                                             ; $7d66: $07
	rst JumpTable                                          ; $7d67: $c7
	inc bc                                           ; $7d68: $03
	db $fd                                           ; $7d69: $fd
	ld a, a                                          ; $7d6a: $7f
	db $f4                                           ; $7d6b: $f4
	ld l, a                                          ; $7d6c: $6f
	ld a, [$e089]                                    ; $7d6d: $fa $89 $e0
	ldh a, [$c0]                                     ; $7d70: $f0 $c0
	ldh [$c1], a                                     ; $7d72: $e0 $c1
	inc bc                                           ; $7d74: $03
	jp nz, $c001                                     ; $7d75: $c2 $01 $c0

	add b                                            ; $7d78: $80
	db $e3                                           ; $7d79: $e3
	add b                                            ; $7d7a: $80
	pop hl                                           ; $7d7b: $e1
	ret nz                                           ; $7d7c: $c0

	ldh [$c0], a                                     ; $7d7d: $e0 $c0
	or b                                             ; $7d7f: $b0
	ldh [$98], a                                     ; $7d80: $e0 $98
	ldh a, [$80]                                     ; $7d82: $f0 $80
	ret nz                                           ; $7d84: $c0

	ld e, a                                          ; $7d85: $5f
	sbc $fd                                          ; $7d86: $de $fd
	inc b                                            ; $7d88: $04
	nop                                              ; $7d89: $00
	rst SubAFromDE                                          ; $7d8a: $df
	ld b, h                                          ; $7d8b: $44
	inc b                                            ; $7d8c: $04
	nop                                              ; $7d8d: $00
	ldh [$c1], a                                     ; $7d8e: $e0 $c1
	inc bc                                           ; $7d90: $03
	nop                                              ; $7d91: $00
	rst $38                                          ; $7d92: $ff
	inc b                                            ; $7d93: $04
	nop                                              ; $7d94: $00
	ldh [$c1], a                                     ; $7d95: $e0 $c1
	inc bc                                           ; $7d97: $03
	nop                                              ; $7d98: $00
	rst $38                                          ; $7d99: $ff
	inc b                                            ; $7d9a: $04

Call_025_7d9b:
	nop                                              ; $7d9b: $00
	ldh [$c1], a                                     ; $7d9c: $e0 $c1
	inc bc                                           ; $7d9e: $03
	nop                                              ; $7d9f: $00
	rst $38                                          ; $7da0: $ff
	inc b                                            ; $7da1: $04
	nop                                              ; $7da2: $00
	ldh [$c1], a                                     ; $7da3: $e0 $c1
	inc bc                                           ; $7da5: $03
	nop                                              ; $7da6: $00
	rst $38                                          ; $7da7: $ff
	rra                                              ; $7da8: $1f
	nop                                              ; $7da9: $00
	sbc d                                            ; $7daa: $9a
	ld a, b                                          ; $7dab: $78
	inc b                                            ; $7dac: $04
	ld [hl], $0c                                     ; $7dad: $36 $0c
	inc e                                            ; $7daf: $1c
	db $fc                                           ; $7db0: $fc
	sbc d                                            ; $7db1: $9a
	ld l, h                                          ; $7db2: $6c
	jr c, jr_025_7dc5                                ; $7db3: $38 $10

	nop                                              ; $7db5: $00

jr_025_7db6:
	jr c, jr_025_7db6                                ; $7db6: $38 $fe

	sub c                                            ; $7db8: $91
	jr jr_025_7dcb                                   ; $7db9: $18 $10

	ccf                                              ; $7dbb: $3f
	add hl, hl                                       ; $7dbc: $29
	daa                                              ; $7dbd: $27
	ld h, $37                                        ; $7dbe: $26 $37
	dec h                                            ; $7dc0: $25
	ccf                                              ; $7dc1: $3f
	dec d                                            ; $7dc2: $15
	rst $38                                          ; $7dc3: $ff
	dec d                                            ; $7dc4: $15

jr_025_7dc5:
	rst $38                                          ; $7dc5: $ff
	ld a, [$0004]                                    ; $7dc6: $fa $04 $00

Jump_025_7dc9:
	sbc [hl]                                         ; $7dc9: $9e
	ld b, b                                          ; $7dca: $40

jr_025_7dcb:
	jr nz, jr_025_7dcd                               ; $7dcb: $20 $00

jr_025_7dcd:
	sbc d                                            ; $7dcd: $9a
	ld a, b                                          ; $7dce: $78
	inc b                                            ; $7dcf: $04
	ld [hl], $0c                                     ; $7dd0: $36 $0c
	inc e                                            ; $7dd2: $1c
	db $fc                                           ; $7dd3: $fc
	adc c                                            ; $7dd4: $89
	ld l, h                                          ; $7dd5: $6c
	jr c, jr_025_7e54                                ; $7dd6: $38 $7c

	stop                                             ; $7dd8: $10 $00
	nop                                              ; $7dda: $00
	jr c, jr_025_7ddd                                ; $7ddb: $38 $00

jr_025_7ddd:
	jr jr_025_7def                                   ; $7ddd: $18 $10

	ccf                                              ; $7ddf: $3f
	add hl, hl                                       ; $7de0: $29
	daa                                              ; $7de1: $27
	ld h, $37                                        ; $7de2: $26 $37
	dec h                                            ; $7de4: $25
	ccf                                              ; $7de5: $3f
	dec d                                            ; $7de6: $15
	rst $38                                          ; $7de7: $ff
	dec d                                            ; $7de8: $15
	rst $38                                          ; $7de9: $ff
	ld a, [$0004]                                    ; $7dea: $fa $04 $00
	sbc [hl]                                         ; $7ded: $9e
	ld b, b                                          ; $7dee: $40

jr_025_7def:
	jr nz, jr_025_7df1                               ; $7def: $20 $00

jr_025_7df1:
	sbc d                                            ; $7df1: $9a
	ld a, b                                          ; $7df2: $78
	inc b                                            ; $7df3: $04
	ld [hl], $0c                                     ; $7df4: $36 $0c
	inc e                                            ; $7df6: $1c
	db $fc                                           ; $7df7: $fc
	adc c                                            ; $7df8: $89
	ld l, h                                          ; $7df9: $6c
	ld a, b                                          ; $7dfa: $78
	ld a, h                                          ; $7dfb: $7c
	jr c, jr_025_7e2e                                ; $7dfc: $38 $30

	stop                                             ; $7dfe: $10 $00
	nop                                              ; $7e00: $00
	jr c, jr_025_7e13                                ; $7e01: $38 $10

	ccf                                              ; $7e03: $3f
	add hl, hl                                       ; $7e04: $29
	daa                                              ; $7e05: $27
	ld h, $37                                        ; $7e06: $26 $37
	dec h                                            ; $7e08: $25
	ccf                                              ; $7e09: $3f
	dec d                                            ; $7e0a: $15
	rst $38                                          ; $7e0b: $ff
	dec d                                            ; $7e0c: $15
	rst $38                                          ; $7e0d: $ff
	ld a, [$0004]                                    ; $7e0e: $fa $04 $00
	sbc [hl]                                         ; $7e11: $9e
	ld b, b                                          ; $7e12: $40

jr_025_7e13:
	jr nz, jr_025_7e15                               ; $7e13: $20 $00

jr_025_7e15:
	sbc d                                            ; $7e15: $9a
	ld a, b                                          ; $7e16: $78
	inc b                                            ; $7e17: $04
	ld [hl], $0c                                     ; $7e18: $36 $0c
	inc e                                            ; $7e1a: $1c
	db $fc                                           ; $7e1b: $fc
	adc c                                            ; $7e1c: $89
	ld l, h                                          ; $7e1d: $6c
	ld a, h                                          ; $7e1e: $7c
	ld a, h                                          ; $7e1f: $7c
	jr c, jr_025_7e9a                                ; $7e20: $38 $78

	jr c, jr_025_7e5c                                ; $7e22: $38 $38

	db $10                                           ; $7e24: $10
	jr jr_025_7e37                                   ; $7e25: $18 $10

	ccf                                              ; $7e27: $3f
	add hl, hl                                       ; $7e28: $29
	daa                                              ; $7e29: $27
	ld h, $37                                        ; $7e2a: $26 $37
	dec h                                            ; $7e2c: $25
	ccf                                              ; $7e2d: $3f

jr_025_7e2e:
	dec d                                            ; $7e2e: $15
	rst $38                                          ; $7e2f: $ff
	dec d                                            ; $7e30: $15
	rst $38                                          ; $7e31: $ff
	ld a, [$0004]                                    ; $7e32: $fa $04 $00
	sbc [hl]                                         ; $7e35: $9e
	ld b, b                                          ; $7e36: $40

jr_025_7e37:
	rra                                              ; $7e37: $1f
	nop                                              ; $7e38: $00
	sbc d                                            ; $7e39: $9a
	ld a, b                                          ; $7e3a: $78
	inc b                                            ; $7e3b: $04

Call_025_7e3c:
	ld [hl], $0c                                     ; $7e3c: $36 $0c
	inc e                                            ; $7e3e: $1c
	db $fc                                           ; $7e3f: $fc
	sbc h                                            ; $7e40: $9c
	add $6c                                          ; $7e41: $c6 $6c
	inc a                                            ; $7e43: $3c
	cp $8f                                           ; $7e44: $fe $8f
	jr c, jr_025_7e48                                ; $7e46: $38 $00

jr_025_7e48:
	jr jr_025_7e5a                                   ; $7e48: $18 $10

	ccf                                              ; $7e4a: $3f
	add hl, hl                                       ; $7e4b: $29
	daa                                              ; $7e4c: $27
	ld h, $37                                        ; $7e4d: $26 $37
	dec h                                            ; $7e4f: $25
	ccf                                              ; $7e50: $3f
	dec d                                            ; $7e51: $15
	rst $38                                          ; $7e52: $ff
	dec d                                            ; $7e53: $15

jr_025_7e54:
	rst $38                                          ; $7e54: $ff
	ld a, [$0004]                                    ; $7e55: $fa $04 $00
	sbc [hl]                                         ; $7e58: $9e
	ld b, b                                          ; $7e59: $40

jr_025_7e5a:
	rra                                              ; $7e5a: $1f
	nop                                              ; $7e5b: $00

jr_025_7e5c:
	sbc d                                            ; $7e5c: $9a
	ld a, b                                          ; $7e5d: $78
	inc b                                            ; $7e5e: $04
	ld [hl], $0c                                     ; $7e5f: $36 $0c
	inc e                                            ; $7e61: $1c
	db $fc                                           ; $7e62: $fc
	sbc d                                            ; $7e63: $9a
	sub $6c                                          ; $7e64: $d6 $6c
	ld a, h                                          ; $7e66: $7c
	jr c, jr_025_7ea1                                ; $7e67: $38 $38

	cp $91                                           ; $7e69: $fe $91
	jr c, jr_025_7e7d                                ; $7e6b: $38 $10

	ccf                                              ; $7e6d: $3f
	add hl, hl                                       ; $7e6e: $29
	daa                                              ; $7e6f: $27
	ld h, $37                                        ; $7e70: $26 $37
	dec h                                            ; $7e72: $25
	ccf                                              ; $7e73: $3f
	dec d                                            ; $7e74: $15
	rst $38                                          ; $7e75: $ff
	dec d                                            ; $7e76: $15
	rst $38                                          ; $7e77: $ff
	ld a, [$0004]                                    ; $7e78: $fa $04 $00

Jump_025_7e7b:
	sbc [hl]                                         ; $7e7b: $9e
	ld b, b                                          ; $7e7c: $40

jr_025_7e7d:
	jr nz, jr_025_7e7f                               ; $7e7d: $20 $00

jr_025_7e7f:
	sbc d                                            ; $7e7f: $9a
	ld a, b                                          ; $7e80: $78
	inc b                                            ; $7e81: $04
	ld [hl], $0c                                     ; $7e82: $36 $0c
	inc e                                            ; $7e84: $1c

Jump_025_7e85:
	db $fc                                           ; $7e85: $fc
	adc c                                            ; $7e86: $89
	cp $7c                                           ; $7e87: $fe $7c
	db $fc                                           ; $7e89: $fc
	jr c, jr_025_7ec4                                ; $7e8a: $38 $38

	db $10                                           ; $7e8c: $10
	stop                                             ; $7e8d: $10 $00
	jr c, jr_025_7ea1                                ; $7e8f: $38 $10

	ccf                                              ; $7e91: $3f
	add hl, hl                                       ; $7e92: $29
	daa                                              ; $7e93: $27
	ld h, $37                                        ; $7e94: $26 $37
	dec h                                            ; $7e96: $25
	ccf                                              ; $7e97: $3f
	dec d                                            ; $7e98: $15
	rst $38                                          ; $7e99: $ff

jr_025_7e9a:
	dec d                                            ; $7e9a: $15
	rst $38                                          ; $7e9b: $ff
	ld a, [$0004]                                    ; $7e9c: $fa $04 $00
	sbc [hl]                                         ; $7e9f: $9e
	ld b, b                                          ; $7ea0: $40

jr_025_7ea1:
	jr nz, jr_025_7ea3                               ; $7ea1: $20 $00

jr_025_7ea3:
	sbc d                                            ; $7ea3: $9a
	ld a, b                                          ; $7ea4: $78
	inc b                                            ; $7ea5: $04
	ld [hl], $0c                                     ; $7ea6: $36 $0c
	inc e                                            ; $7ea8: $1c
	db $fc                                           ; $7ea9: $fc
	adc c                                            ; $7eaa: $89
	cp $fc                                           ; $7eab: $fe $fc
	db $fc                                           ; $7ead: $fc
	ld a, h                                          ; $7eae: $7c
	ld a, h                                          ; $7eaf: $7c
	jr c, jr_025_7eea                                ; $7eb0: $38 $38

	db $10                                           ; $7eb2: $10
	jr c, jr_025_7ec5                                ; $7eb3: $38 $10

	ccf                                              ; $7eb5: $3f
	add hl, hl                                       ; $7eb6: $29
	daa                                              ; $7eb7: $27
	ld h, $37                                        ; $7eb8: $26 $37
	dec h                                            ; $7eba: $25
	ccf                                              ; $7ebb: $3f
	dec d                                            ; $7ebc: $15
	rst $38                                          ; $7ebd: $ff
	dec d                                            ; $7ebe: $15
	rst $38                                          ; $7ebf: $ff
	ld a, [$0004]                                    ; $7ec0: $fa $04 $00
	sbc [hl]                                         ; $7ec3: $9e

jr_025_7ec4:
	ld b, b                                          ; $7ec4: $40

jr_025_7ec5:
	inc [hl]                                         ; $7ec5: $34
	ld bc, $99e7                                     ; $7ec6: $01 $e7 $99
	rra                                              ; $7ec9: $1f
	ld c, $1f                                        ; $7eca: $0e $1f
	rra                                              ; $7ecc: $1f
	rrca                                             ; $7ecd: $0f
	rra                                              ; $7ece: $1f
	db $e4                                           ; $7ecf: $e4
	rst SubAFromDE                                          ; $7ed0: $df
	add b                                            ; $7ed1: $80
	sbc [hl]                                         ; $7ed2: $9e
	ret nz                                           ; $7ed3: $c0

	ld a, e                                          ; $7ed4: $7b
	db $dd                                           ; $7ed5: $dd
	sbc c                                            ; $7ed6: $99
	rrca                                             ; $7ed7: $0f
	rlca                                             ; $7ed8: $07
	rrca                                             ; $7ed9: $0f
	rrca                                             ; $7eda: $0f
	rlca                                             ; $7edb: $07
	rlca                                             ; $7edc: $07
	ld a, e                                          ; $7edd: $7b
	ld hl, sp+$7f                                    ; $7ede: $f8 $7f
	db $fd                                           ; $7ee0: $fd
	sbc [hl]                                         ; $7ee1: $9e
	ccf                                              ; $7ee2: $3f
	ld c, e                                          ; $7ee3: $4b
	cp $7f                                           ; $7ee4: $fe $7f
	db $fd                                           ; $7ee6: $fd
	ld a, a                                          ; $7ee7: $7f
	sbc $9b                                          ; $7ee8: $de $9b

jr_025_7eea:
	ret nz                                           ; $7eea: $c0

	add b                                            ; $7eeb: $80
	add b                                            ; $7eec: $80
	nop                                              ; $7eed: $00
	ld a, e                                          ; $7eee: $7b
	db $fc                                           ; $7eef: $fc
	call c, Call_025_77c0                            ; $7ef0: $dc $c0 $77
	ldh a, [c]                                       ; $7ef3: $f2

jr_025_7ef4:
	ld a, a                                          ; $7ef4: $7f
	jp z, $fe77                                      ; $7ef5: $ca $77 $fe

	ld a, e                                          ; $7ef8: $7b
	push af                                          ; $7ef9: $f5
	ld [hl], e                                       ; $7efa: $73
	db $ec                                           ; $7efb: $ec
	db $dd                                           ; $7efc: $dd
	ccf                                              ; $7efd: $3f
	ld [hl], a                                       ; $7efe: $77
	rst SubAFromHL                                          ; $7eff: $d7
	ld [hl], a                                       ; $7f00: $77
	pop bc                                           ; $7f01: $c1
	db $db                                           ; $7f02: $db
	rrca                                             ; $7f03: $0f
	adc a                                            ; $7f04: $8f
	ld c, $0f                                        ; $7f05: $0e $0f
	ld e, $0d                                        ; $7f07: $1e $0d
	ld [$1c1c], sp                                   ; $7f09: $08 $1c $1c
	jr jr_025_7f46                                   ; $7f0c: $18 $38

	jr @+$12                                         ; $7f0e: $18 $10

	jr c, @+$72                                      ; $7f10: $38 $70

	jr nc, jr_025_7ef4                               ; $7f12: $30 $e0

	ret nz                                           ; $7f14: $c0

	ld l, a                                          ; $7f15: $6f
	cp $73                                           ; $7f16: $fe $73
	cp b                                             ; $7f18: $b8
	jp c, Jump_025_7fc0                              ; $7f19: $da $c0 $7f

	ldh a, [c]                                       ; $7f1c: $f2
	sub l                                            ; $7f1d: $95
	ld b, b                                          ; $7f1e: $40
	ldh [$e0], a                                     ; $7f1f: $e0 $e0
	ld h, b                                          ; $7f21: $60
	jr nc, @+$62                                     ; $7f22: $30 $60

	ld h, b                                          ; $7f24: $60
	jr nc, jr_025_7f57                               ; $7f25: $30 $30

	ld [hl], b                                       ; $7f27: $70
	scf                                              ; $7f28: $37
	ret nz                                           ; $7f29: $c0

	sub [hl]                                         ; $7f2a: $96
	dec c                                            ; $7f2b: $0d
	ld c, $0c                                        ; $7f2c: $0e $0c
	ld c, $0e                                        ; $7f2e: $0e $0e
	inc c                                            ; $7f30: $0c
	ld [$0c0c], sp                                   ; $7f31: $08 $0c $0c
	ld a, e                                          ; $7f34: $7b
	cp h                                             ; $7f35: $bc
	ld h, a                                          ; $7f36: $67
	ret nz                                           ; $7f37: $c0

	ld a, a                                          ; $7f38: $7f
	cp $d9                                           ; $7f39: $fe $d9
	ret nz                                           ; $7f3b: $c0

	ld a, e                                          ; $7f3c: $7b
	or $7f                                           ; $7f3d: $f6 $7f
	jp $e097                                         ; $7f3f: $c3 $97 $e0


	ldh a, [$60]                                     ; $7f42: $f0 $60
	jr nz, jr_025_7fb6                               ; $7f44: $20 $70

jr_025_7f46:
	ld [hl], b                                       ; $7f46: $70
	jr nc, jr_025_7f81                               ; $7f47: $30 $38

	dec sp                                           ; $7f49: $3b
	ret nz                                           ; $7f4a: $c0

	ld [hl], a                                       ; $7f4b: $77
	cp l                                             ; $7f4c: $bd
	ld a, e                                          ; $7f4d: $7b
	pop bc                                           ; $7f4e: $c1
	ld a, e                                          ; $7f4f: $7b
	db $fd                                           ; $7f50: $fd
	sbc e                                            ; $7f51: $9b
	ld e, $0c                                        ; $7f52: $1e $0c
	ld a, [hl-]                                      ; $7f54: $3a
	inc e                                            ; $7f55: $1c
	ld h, a                                          ; $7f56: $67

jr_025_7f57:
	jp nz, $a09e                                     ; $7f57: $c2 $9e $a0

	ld [hl], a                                       ; $7f5a: $77
	ld b, e                                          ; $7f5b: $43
	ld [hl], e                                       ; $7f5c: $73
	ld c, h                                          ; $7f5d: $4c
	ld [hl], a                                       ; $7f5e: $77
	ret nz                                           ; $7f5f: $c0

	ld a, e                                          ; $7f60: $7b
	add d                                            ; $7f61: $82
	ld a, e                                          ; $7f62: $7b
	jp $30df                                         ; $7f63: $c3 $df $30


	sbc l                                            ; $7f66: $9d
	ld b, b                                          ; $7f67: $40
	ld h, b                                          ; $7f68: $60
	ld e, a                                          ; $7f69: $5f

jr_025_7f6a:
	ret nz                                           ; $7f6a: $c0

	halt                                             ; $7f6b: $76
	ld a, [$f87a]                                    ; $7f6c: $fa $7a $f8
	sbc l                                            ; $7f6f: $9d
	rlca                                             ; $7f70: $07
	inc bc                                           ; $7f71: $03
	ld a, e                                          ; $7f72: $7b
	cp $73                                           ; $7f73: $fe $73
	ei                                               ; $7f75: $fb
	ld a, e                                          ; $7f76: $7b

Jump_025_7f77:
	cp $7f                                           ; $7f77: $fe $7f
	ldh a, [$63]                                     ; $7f79: $f0 $63
	add d                                            ; $7f7b: $82
	call c, Call_025_6f80                            ; $7f7c: $dc $80 $6f
	ret nz                                           ; $7f7f: $c0

	sbc h                                            ; $7f80: $9c

jr_025_7f81:
	ldh a, [$e0]                                     ; $7f81: $f0 $e0
	add sp, $7b                                      ; $7f83: $e8 $7b
	add h                                            ; $7f85: $84
	sbc c                                            ; $7f86: $99
	ld [hl], b                                       ; $7f87: $70
	jr nz, jr_025_7f6a                               ; $7f88: $20 $e0

	ld b, b                                          ; $7f8a: $40
	ret nz                                           ; $7f8b: $c0

	nop                                              ; $7f8c: $00
	ld b, a                                          ; $7f8d: $47
	ret nz                                           ; $7f8e: $c0

	ld [hl], a                                       ; $7f8f: $77
	call nz, $03df                                   ; $7f90: $c4 $df $03
	sbc [hl]                                         ; $7f93: $9e
	ld bc, $fd7b                                     ; $7f94: $01 $7b $fd
	db $dd                                           ; $7f97: $dd
	ld bc, $059d                                     ; $7f98: $01 $9d $05
	inc bc                                           ; $7f9b: $03
	ld e, a                                          ; $7f9c: $5f
	add d                                            ; $7f9d: $82
	db $db                                           ; $7f9e: $db
	add b                                            ; $7f9f: $80
	ld e, a                                          ; $7fa0: $5f
	ld a, h                                          ; $7fa1: $7c
	ld [hl], e                                       ; $7fa2: $73
	xor e                                            ; $7fa3: $ab
	ld e, d                                          ; $7fa4: $5a
	ret nz                                           ; $7fa5: $c0

	ld a, a                                          ; $7fa6: $7f
	db $fd                                           ; $7fa7: $fd
	sbc [hl]                                         ; $7fa8: $9e
	dec e                                            ; $7fa9: $1d
	ld a, e                                          ; $7faa: $7b
	cp $9c                                           ; $7fab: $fe $9c
	rra                                              ; $7fad: $1f
	dec c                                            ; $7fae: $0d
	dec c                                            ; $7faf: $0d
	ld [hl], a                                       ; $7fb0: $77
	cp c                                             ; $7fb1: $b9
	ld a, a                                          ; $7fb2: $7f
	dec a                                            ; $7fb3: $3d
	sbc e                                            ; $7fb4: $9b
	rlca                                             ; $7fb5: $07

jr_025_7fb6:
	ld c, $07                                        ; $7fb6: $0e $07
	ld b, $7b                                        ; $7fb8: $06 $7b
	ldh a, [c]                                       ; $7fba: $f2
	ld b, a                                          ; $7fbb: $47
	ld b, d                                          ; $7fbc: $42
	ld h, [hl]                                       ; $7fbd: $66
	cp h                                             ; $7fbe: $bc
	ld h, [hl]                                       ; $7fbf: $66

Jump_025_7fc0:
	db $f4                                           ; $7fc0: $f4
	ld d, a                                          ; $7fc1: $57
	add b                                            ; $7fc2: $80
	ld [hl], a                                       ; $7fc3: $77
	ld c, c                                          ; $7fc4: $49
	ld [hl], a                                       ; $7fc5: $77
	add d                                            ; $7fc6: $82
	ld e, a                                          ; $7fc7: $5f
	add b                                            ; $7fc8: $80
	ld a, a                                          ; $7fc9: $7f
	ldh a, [c]                                       ; $7fca: $f2
	ld h, a                                          ; $7fcb: $67
	ret nz                                           ; $7fcc: $c0

	ld l, d                                          ; $7fcd: $6a
	ld c, c                                          ; $7fce: $49
	halt                                             ; $7fcf: $76
	inc c                                            ; $7fd0: $0c
	ret c                                            ; $7fd1: $d8

	add b                                            ; $7fd2: $80
	ld [hl], a                                       ; $7fd3: $77
	or b                                             ; $7fd4: $b0
	dec c                                            ; $7fd5: $0d
	jp nz, $fd7f                                     ; $7fd6: $c2 $7f $fd

	dec c                                            ; $7fd9: $0d
	jp nz, $c075                                     ; $7fda: $c2 $75 $c0

Jump_025_7fdd:
	dec h                                            ; $7fdd: $25
	jp nz, $fd7f                                     ; $7fde: $c2 $7f $fd

	db $dd                                           ; $7fe1: $dd
	ccf                                              ; $7fe2: $3f
	dec [hl]                                         ; $7fe3: $35
	jp nz, $f655                                     ; $7fe4: $c2 $55 $f6

	ld e, a                                          ; $7fe7: $5f
	ld b, h                                          ; $7fe8: $44
	ld h, a                                          ; $7fe9: $67
	ld b, d                                          ; $7fea: $42
	ld [hl], a                                       ; $7feb: $77
	ld b, h                                          ; $7fec: $44
	ld l, a                                          ; $7fed: $6f
	ld b, d                                          ; $7fee: $42
	ld a, a                                          ; $7fef: $7f
	ld a, [$406f]                                    ; $7ff0: $fa $6f $40
	scf                                              ; $7ff3: $37
	ld b, d                                          ; $7ff4: $42
	ld [hl], e                                       ; $7ff5: $73
	cp h                                             ; $7ff6: $bc
	ld a, e                                          ; $7ff7: $7b
	and h                                            ; $7ff8: $a4
	rst $38                                          ; $7ff9: $ff
	rst $38                                          ; $7ffa: $ff
	rst $38                                          ; $7ffb: $ff

Jump_025_7ffc:
	rst $38                                          ; $7ffc: $ff
	rst $38                                          ; $7ffd: $ff
	rst $38                                          ; $7ffe: $ff

Call_025_7fff:
	rst $38                                          ; $7fff: $ff
