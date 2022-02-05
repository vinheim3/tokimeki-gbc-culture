; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $04f", ROMX[$4000], BANK[$4f]

	ld b, h                                          ; $4000: $44
	and h                                            ; $4001: $a4
	ld d, h                                          ; $4002: $54
	or h                                             ; $4003: $b4
	ld e, l                                          ; $4004: $5d
	db $fc                                           ; $4005: $fc
	db $fc                                           ; $4006: $fc
	call nz, $f7ef                                   ; $4007: $c4 $ef $f7
	rst FarCall                                          ; $400a: $f7
	halt                                             ; $400b: $76
	ld d, h                                          ; $400c: $54
	sbc [hl]                                         ; $400d: $9e
	dec b                                            ; $400e: $05
	ld a, b                                          ; $400f: $78
	add a                                            ; $4010: $87
	sbc e                                            ; $4011: $9b
	rst $38                                          ; $4012: $ff
	add b                                            ; $4013: $80
	rst $38                                          ; $4014: $ff
	nop                                              ; $4015: $00
	ld a, d                                          ; $4016: $7a
	sbc l                                            ; $4017: $9d
	sbc c                                            ; $4018: $99
	ldh a, [$f8]                                     ; $4019: $f0 $f8
	ld a, a                                          ; $401b: $7f
	nop                                              ; $401c: $00
	rst $38                                          ; $401d: $ff
	halt                                             ; $401e: $76
	ld [hl], a                                       ; $401f: $77
	pop af                                           ; $4020: $f1
	sub [hl]                                         ; $4021: $96
	inc bc                                           ; $4022: $03
	rst $38                                          ; $4023: $ff
	nop                                              ; $4024: $00
	adc c                                            ; $4025: $89
	rst $38                                          ; $4026: $ff
	ldh a, [rP1]                                     ; $4027: $f0 $00
	ld a, a                                          ; $4029: $7f
	ret nz                                           ; $402a: $c0

	ld a, e                                          ; $402b: $7b
	inc e                                            ; $402c: $1c
	sbc e                                            ; $402d: $9b
	inc bc                                           ; $402e: $03
	db $fc                                           ; $402f: $fc
	nop                                              ; $4030: $00
	ld e, $77                                        ; $4031: $1e $77
	rst SubAFromHL                                          ; $4033: $d7
	sbc l                                            ; $4034: $9d
	db $fc                                           ; $4035: $fc
	inc bc                                           ; $4036: $03
	halt                                             ; $4037: $76
	call nz, $9c7f                                   ; $4038: $c4 $7f $9c
	ld a, a                                          ; $403b: $7f
	ld a, [$997f]                                    ; $403c: $fa $7f $99
	ld a, e                                          ; $403f: $7b
	add hl, sp                                       ; $4040: $39
	add c                                            ; $4041: $81
	adc a                                            ; $4042: $8f
	rlca                                             ; $4043: $07
	ld sp, hl                                        ; $4044: $f9
	ld b, $7f                                        ; $4045: $06 $7f
	jr nz, @-$3f                                     ; $4047: $20 $bf

	rst SubAFromDE                                          ; $4049: $df
	pop de                                           ; $404a: $d1
	ld b, d                                          ; $404b: $42
	ld l, h                                          ; $404c: $6c
	pop af                                           ; $404d: $f1
	or $e1                                           ; $404e: $f6 $e1
	ld a, a                                          ; $4050: $7f
	ccf                                              ; $4051: $3f
	xor [hl]                                         ; $4052: $ae
	ld sp, hl                                        ; $4053: $f9
	pop de                                           ; $4054: $d1
	ld c, [hl]                                       ; $4055: $4e
	ld b, b                                          ; $4056: $40
	ld c, a                                          ; $4057: $4f
	ld hl, sp-$48                                    ; $4058: $f8 $b8
	ld c, b                                          ; $405a: $48
	cp b                                             ; $405b: $b8
	call z, $3c84                                    ; $405c: $cc $84 $3c
	call z, Call_04f_617b                            ; $405f: $cc $7b $61
	adc e                                            ; $4062: $8b
	ld h, a                                          ; $4063: $67
	daa                                              ; $4064: $27
	ld a, a                                          ; $4065: $7f
	rst JumpTable                                          ; $4066: $c7
	rst FarCall                                          ; $4067: $f7
	adc b                                            ; $4068: $88
	ld b, b                                          ; $4069: $40
	nop                                              ; $406a: $00
	nop                                              ; $406b: $00
	ld [de], a                                       ; $406c: $12
	nop                                              ; $406d: $00
	add hl, bc                                       ; $406e: $09
	nop                                              ; $406f: $00
	adc b                                            ; $4070: $88
	push bc                                          ; $4071: $c5
	jp nz, $f3e3                                     ; $4072: $c2 $e3 $f3

	pop af                                           ; $4075: $f1
	ld sp, hl                                        ; $4076: $f9
	ld [hl], d                                       ; $4077: $72
	add d                                            ; $4078: $82
	ld l, h                                          ; $4079: $6c
	adc [hl]                                         ; $407a: $8e
	ld a, l                                          ; $407b: $7d
	ret z                                            ; $407c: $c8

	db $dd                                           ; $407d: $dd
	rst $38                                          ; $407e: $ff
	ld sp, hl                                        ; $407f: $f9
	ld a, l                                          ; $4080: $7d
	xor d                                            ; $4081: $aa
	sbc c                                            ; $4082: $99
	cp $fd                                           ; $4083: $fe $fd
	ld a, [$faf5]                                    ; $4085: $fa $f5 $fa
	push af                                          ; $4088: $f5
	ld h, e                                          ; $4089: $63
	ldh a, [$7e]                                     ; $408a: $f0 $7e
	call nc, Call_04f_5f8a                           ; $408c: $d4 $8a $5f
	cp a                                             ; $408f: $bf

Jump_04f_4090:
	ld a, a                                          ; $4090: $7f
	rst $38                                          ; $4091: $ff
	ld a, a                                          ; $4092: $7f
	ld bc, $0303                                     ; $4093: $01 $03 $03
	rlca                                             ; $4096: $07
	rrca                                             ; $4097: $0f
	rra                                              ; $4098: $1f
	rra                                              ; $4099: $1f
	ccf                                              ; $409a: $3f
	xor d                                            ; $409b: $aa

Call_04f_409c:
	ld a, l                                          ; $409c: $7d

Call_04f_409d:
	rst $38                                          ; $409d: $ff
	ei                                               ; $409e: $fb
	rst FarCall                                          ; $409f: $f7
	rst AddAOntoHL                                          ; $40a0: $ef
	rst $38                                          ; $40a1: $ff
	jp c, $ffdb                                      ; $40a2: $da $db $ff

	sbc [hl]                                         ; $40a5: $9e
	push de                                          ; $40a6: $d5
	ld a, c                                          ; $40a7: $79
	ld l, $db                                        ; $40a8: $2e $db
	rst $38                                          ; $40aa: $ff
	add a                                            ; $40ab: $87
	ld a, $1d                                        ; $40ac: $3e $1d

Jump_04f_40ae:
	xor e                                            ; $40ae: $ab
	sub d                                            ; $40af: $92
	xor d                                            ; $40b0: $aa
	push af                                          ; $40b1: $f5
	ld [$c1b7], a                                    ; $40b2: $ea $b7 $c1
	ldh [c], a                                       ; $40b5: $e2
	rst SubAFromHL                                          ; $40b6: $d7
	rst AddAOntoHL                                          ; $40b7: $ef
	push de                                          ; $40b8: $d5
	ld [$fbf5], a                                    ; $40b9: $ea $f5 $fb
	rst $38                                          ; $40bc: $ff
	ld d, l                                          ; $40bd: $55
	rst $38                                          ; $40be: $ff
	ld c, $ab                                        ; $40bf: $0e $ab
	ld a, a                                          ; $40c1: $7f
	db $fc                                           ; $40c2: $fc
	pop hl                                           ; $40c3: $e1
	ld [hl], h                                       ; $40c4: $74
	db $db                                           ; $40c5: $db
	ld a, a                                          ; $40c6: $7f
	push af                                          ; $40c7: $f5
	add b                                            ; $40c8: $80
	ld a, b                                          ; $40c9: $78
	ret nz                                           ; $40ca: $c0

	rst $38                                          ; $40cb: $ff
	ld e, a                                          ; $40cc: $5f
	cp a                                             ; $40cd: $bf
	cp $f6                                           ; $40ce: $fe $f6
	sub a                                            ; $40d0: $97
	ld a, $fc                                        ; $40d1: $3e $fc
	rst $38                                          ; $40d3: $ff
	xor a                                            ; $40d4: $af
	sbc $f8                                          ; $40d5: $de $f8
	ld bc, $7f0f                                     ; $40d7: $01 $0f $7f
	cp $ff                                           ; $40da: $fe $ff
	ld a, [$bec7]                                    ; $40dc: $fa $c7 $be
	pop hl                                           ; $40df: $e1
	sub $a6                                          ; $40e0: $d6 $a6
	rst SubAFromHL                                          ; $40e2: $d7
	db $fc                                           ; $40e3: $fc
	ld bc, $7f1f                                     ; $40e4: $01 $1f $7f
	rst $38                                          ; $40e7: $ff
	rst SubAFromDE                                          ; $40e8: $df
	ld sp, hl                                        ; $40e9: $f9
	add [hl]                                         ; $40ea: $86
	ld hl, sp-$18                                    ; $40eb: $f8 $e8
	or l                                             ; $40ed: $b5
	jp c, Jump_04f_67ed                              ; $40ee: $da $ed $67

	ld sp, $1b38                                     ; $40f1: $31 $38 $1b
	ccf                                              ; $40f4: $3f
	rra                                              ; $40f5: $1f
	sbc a                                            ; $40f6: $9f
	rst SubAFromDE                                          ; $40f7: $df
	db $ec                                           ; $40f8: $ec
	and $f3                                          ; $40f9: $e6 $f3
	ld sp, hl                                        ; $40fb: $f9
	sub l                                            ; $40fc: $95
	xor d                                            ; $40fd: $aa
	dec d                                            ; $40fe: $15
	xor c                                            ; $40ff: $a9
	rst $38                                          ; $4100: $ff
	rrca                                             ; $4101: $0f
	ld e, e                                          ; $4102: $5b
	rla                                              ; $4103: $17
	ld a, b                                          ; $4104: $78
	pop bc                                           ; $4105: $c1
	ld a, e                                          ; $4106: $7b
	inc d                                            ; $4107: $14
	add b                                            ; $4108: $80
	sbc a                                            ; $4109: $9f
	rst $38                                          ; $410a: $ff
	ld e, [hl]                                       ; $410b: $5e
	xor a                                            ; $410c: $af
	di                                               ; $410d: $f3
	ld e, e                                          ; $410e: $5b
	cp $f8                                           ; $410f: $fe $f8
	db $fd                                           ; $4111: $fd
	cp $0f                                           ; $4112: $fe $0f
	rlca                                             ; $4114: $07
	rlca                                             ; $4115: $07
	inc bc                                           ; $4116: $03
	ld bc, $fcf7                                     ; $4117: $01 $f7 $fc
	rst $38                                          ; $411a: $ff
	push af                                          ; $411b: $f5
	add sp, -$2b                                     ; $411c: $e8 $d5
	add hl, hl                                       ; $411e: $29
	ld a, [hl]                                       ; $411f: $7e
	dec b                                            ; $4120: $05
	ld [bc], a                                       ; $4121: $02
	nop                                              ; $4122: $00
	ld hl, sp-$10                                    ; $4123: $f8 $f0
	ldh [$c0], a                                     ; $4125: $e0 $c0
	add b                                            ; $4127: $80
	ld [hl], e                                       ; $4128: $73
	ld b, b                                          ; $4129: $40
	ld a, a                                          ; $412a: $7f
	ld h, b                                          ; $412b: $60
	add b                                            ; $412c: $80
	ld e, $75                                        ; $412d: $1e $75
	ld a, [$fffd]                                    ; $412f: $fa $fd $ff
	db $fc                                           ; $4132: $fc
	ld hl, sp-$20                                    ; $4133: $f8 $e0
	add c                                            ; $4135: $81
	cp d                                             ; $4136: $ba
	db $fd                                           ; $4137: $fd
	cp $38                                           ; $4138: $fe $38
	add b                                            ; $413a: $80
	and b                                            ; $413b: $a0
	ld b, h                                          ; $413c: $44
	and d                                            ; $413d: $a2
	ld b, h                                          ; $413e: $44
	adc d                                            ; $413f: $8a
	ld d, l                                          ; $4140: $55
	rlca                                             ; $4141: $07
	ld a, a                                          ; $4142: $7f
	ld e, a                                          ; $4143: $5f
	cp e                                             ; $4144: $bb
	ld e, l                                          ; $4145: $5d
	cp e                                             ; $4146: $bb
	ld [hl], l                                       ; $4147: $75
	xor d                                            ; $4148: $aa
	rlca                                             ; $4149: $07
	nop                                              ; $414a: $00
	and c                                            ; $414b: $a1
	ld a, e                                          ; $414c: $7b
	ldh a, [$80]                                     ; $414d: $f0 $80
	xor c                                            ; $414f: $a9
	ld d, e                                          ; $4150: $53
	ld hl, sp-$01                                    ; $4151: $f8 $ff
	ld e, [hl]                                       ; $4153: $5e
	cp d                                             ; $4154: $ba
	ld e, h                                          ; $4155: $5c

jr_04f_4156:
	cp c                                             ; $4156: $b9
	ld d, l                                          ; $4157: $55
	xor e                                            ; $4158: $ab
	rrca                                             ; $4159: $0f
	ccf                                              ; $415a: $3f
	ld a, a                                          ; $415b: $7f
	ei                                               ; $415c: $fb
	rst FarCall                                          ; $415d: $f7
	db $eb                                           ; $415e: $eb
	call nc, $1fad                                   ; $415f: $d4 $ad $1f
	ccf                                              ; $4162: $3f
	ld a, [hl]                                       ; $4163: $7e
	ld a, [hl]                                       ; $4164: $7e
	db $fc                                           ; $4165: $fc
	db $fc                                           ; $4166: $fc
	ei                                               ; $4167: $fb
	ei                                               ; $4168: $fb
	rst FarCall                                          ; $4169: $f7
	pop de                                           ; $416a: $d1
	db $fc                                           ; $416b: $fc
	rst GetHLinHL                                          ; $416c: $cf
	cp e                                             ; $416d: $bb
	adc c                                            ; $416e: $89
	rst SubAFromDE                                          ; $416f: $df
	ld [hl], a                                       ; $4170: $77
	db $eb                                           ; $4171: $eb
	ld c, a                                          ; $4172: $4f
	ld c, a                                          ; $4173: $4f
	add e                                            ; $4174: $83
	add e                                            ; $4175: $83
	add a                                            ; $4176: $87
	rlca                                             ; $4177: $07
	rrca                                             ; $4178: $0f
	dec e                                            ; $4179: $1d
	db $ec                                           ; $417a: $ec
	call c, $ecbc                                    ; $417b: $dc $bc $ec
	call c, $d5ac                                    ; $417e: $dc $ac $d5
	daa                                              ; $4181: $27
	rst FarCall                                          ; $4182: $f7
	rst SubAFromBC                                          ; $4183: $e7
	ld b, a                                          ; $4184: $47
	sbc $07                                          ; $4185: $de $07
	sub [hl]                                         ; $4187: $96
	rrca                                             ; $4188: $0f
	adc a                                            ; $4189: $8f
	inc b                                            ; $418a: $04
	nop                                              ; $418b: $00
	ld bc, $0001                                     ; $418c: $01 $01 $00
	nop                                              ; $418f: $00
	ldh a, [$79]                                     ; $4190: $f0 $79
	dec d                                            ; $4192: $15
	rst SubAFromDE                                          ; $4193: $df
	rst $38                                          ; $4194: $ff
	sbc c                                            ; $4195: $99
	rst SubAFromHL                                          ; $4196: $d7
	xor d                                            ; $4197: $aa
	ld sp, hl                                        ; $4198: $f9
	db $fc                                           ; $4199: $fc
	nop                                              ; $419a: $00
	nop                                              ; $419b: $00
	ld [hl], h                                       ; $419c: $74
	ld a, b                                          ; $419d: $78
	halt                                             ; $419e: $76
	ld a, c                                          ; $419f: $79
	ld a, a                                          ; $41a0: $7f
	dec [hl]                                         ; $41a1: $35
	sbc h                                            ; $41a2: $9c
	cp $bf                                           ; $41a3: $fe $bf
	ld d, l                                          ; $41a5: $55
	db $fc                                           ; $41a6: $fc
	ld a, e                                          ; $41a7: $7b
	ld a, [hl]                                       ; $41a8: $7e
	sub [hl]                                         ; $41a9: $96
	jr jr_04f_4156                                   ; $41aa: $18 $aa

	ld d, l                                          ; $41ac: $55
	and b                                            ; $41ad: $a0
	ld d, c                                          ; $41ae: $51
	and l                                            ; $41af: $a5
	ld c, e                                          ; $41b0: $4b
	cp a                                             ; $41b1: $bf
	ld a, h                                          ; $41b2: $7c
	db $fd                                           ; $41b3: $fd
	ld a, [hl]                                       ; $41b4: $7e
	add hl, sp                                       ; $41b5: $39
	sub c                                            ; $41b6: $91
	inc e                                            ; $41b7: $1c
	inc c                                            ; $41b8: $0c
	cp a                                             ; $41b9: $bf
	ld e, a                                          ; $41ba: $5f
	xor a                                            ; $41bb: $af
	ld d, a                                          ; $41bc: $57
	db $eb                                           ; $41bd: $eb
	push af                                          ; $41be: $f5
	ei                                               ; $41bf: $fb
	cp $3f                                           ; $41c0: $fe $3f
	rra                                              ; $41c2: $1f
	rra                                              ; $41c3: $1f
	rrca                                             ; $41c4: $0f
	ld a, e                                          ; $41c5: $7b
	ld b, [hl]                                       ; $41c6: $46
	ld a, a                                          ; $41c7: $7f
	ret nc                                           ; $41c8: $d0

	ld a, [hl]                                       ; $41c9: $7e
	db $e4                                           ; $41ca: $e4
	ld a, a                                          ; $41cb: $7f
	ld e, e                                          ; $41cc: $5b
	ld a, a                                          ; $41cd: $7f
	call $ffd7                                       ; $41ce: $cd $d7 $ff
	ld a, b                                          ; $41d1: $78
	scf                                              ; $41d2: $37
	ld [hl], a                                       ; $41d3: $77
	cp $92                                           ; $41d4: $fe $92
	rst $38                                          ; $41d6: $ff
	sub $6c                                          ; $41d7: $d6 $6c
	sbc h                                            ; $41d9: $9c
	ld l, h                                          ; $41da: $6c
	cp b                                             ; $41db: $b8
	ld e, b                                          ; $41dc: $58
	and b                                            ; $41dd: $a0
	rst $38                                          ; $41de: $ff
	xor $d4                                          ; $41df: $ee $d4
	db $ec                                           ; $41e1: $ec
	ret c                                            ; $41e2: $d8

	sbc $f8                                          ; $41e3: $de $f8
	pop af                                           ; $41e5: $f1
	sub h                                            ; $41e6: $94
	ldh [c], a                                       ; $41e7: $e2
	ld c, l                                          ; $41e8: $4d
	and e                                            ; $41e9: $a3
	ld a, [hl]                                       ; $41ea: $7e
	rra                                              ; $41eb: $1f
	ld a, $0d                                        ; $41ec: $3e $0d
	ld e, $e7                                        ; $41ee: $1e $e7
	rst $38                                          ; $41f0: $ff
	ld a, a                                          ; $41f1: $7f
	ld a, c                                          ; $41f2: $79
	jp nz, $b47f                                     ; $41f3: $c2 $7f $b4

	sub a                                            ; $41f6: $97
	and b                                            ; $41f7: $a0
	ld d, l                                          ; $41f8: $55
	and d                                            ; $41f9: $a2
	ld [hl], l                                       ; $41fa: $75
	ei                                               ; $41fb: $fb
	cp a                                             ; $41fc: $bf
	ld e, a                                          ; $41fd: $5f
	xor e                                            ; $41fe: $ab
	reti                                             ; $41ff: $d9


	rst $38                                          ; $4200: $ff
	sub l                                            ; $4201: $95
	inc l                                            ; $4202: $2c
	ld d, [hl]                                       ; $4203: $56
	xor [hl]                                         ; $4204: $ae
	ld d, [hl]                                       ; $4205: $56
	xor e                                            ; $4206: $ab
	rst SubAFromHL                                          ; $4207: $d7
	db $fd                                           ; $4208: $fd
	db $eb                                           ; $4209: $eb
	db $fd                                           ; $420a: $fd
	db $fc                                           ; $420b: $fc
	ld l, e                                          ; $420c: $6b
	and e                                            ; $420d: $a3
	sub b                                            ; $420e: $90
	db $fd                                           ; $420f: $fd
	ld [hl], h                                       ; $4210: $74
	inc a                                            ; $4211: $3c
	dec de                                           ; $4212: $1b
	sbc a                                            ; $4213: $9f
	rst AddAOntoHL                                          ; $4214: $ef
	add b                                            ; $4215: $80
	sbc a                                            ; $4216: $9f
	rst GetHLinHL                                          ; $4217: $cf
	reti                                             ; $4218: $d9


	ld a, b                                          ; $4219: $78
	inc a                                            ; $421a: $3c
	sbc a                                            ; $421b: $9f
	rst $38                                          ; $421c: $ff
	db $e3                                           ; $421d: $e3
	ld a, c                                          ; $421e: $79
	ld l, l                                          ; $421f: $6d
	sub a                                            ; $4220: $97
	cp $33                                           ; $4221: $fe $33
	ld bc, $d8f6                                     ; $4223: $01 $f6 $d8
	cp $fe                                           ; $4226: $fe $fe
	ld a, h                                          ; $4228: $7c
	ld a, e                                          ; $4229: $7b
	or $7e                                           ; $422a: $f6 $7e
	call c, $317f                                    ; $422c: $dc $7f $31
	sbc c                                            ; $422f: $99
	nop                                              ; $4230: $00
	xor c                                            ; $4231: $a9
	ld d, d                                          ; $4232: $52
	ld hl, $20c0                                     ; $4233: $21 $c0 $20
	db $db                                           ; $4236: $db
	rst $38                                          ; $4237: $ff
	ld a, a                                          ; $4238: $7f
	xor [hl]                                         ; $4239: $ae
	ld h, a                                          ; $423a: $67
	ret                                              ; $423b: $c9


	ld e, a                                          ; $423c: $5f
	ld l, c                                          ; $423d: $69
	sbc h                                            ; $423e: $9c
	ld a, [hl+]                                      ; $423f: $2a
	sub l                                            ; $4240: $95
	ld [$377a], a                                    ; $4241: $ea $7a $37
	ld a, a                                          ; $4244: $7f
	ld h, [hl]                                       ; $4245: $66
	ld a, a                                          ; $4246: $7f
	ei                                               ; $4247: $fb
	ld a, e                                          ; $4248: $7b
	ld sp, hl                                        ; $4249: $f9
	add d                                            ; $424a: $82
	ld a, [$52a7]                                    ; $424b: $fa $a7 $52
	and l                                            ; $424e: $a5
	ld c, a                                          ; $424f: $4f
	add l                                            ; $4250: $85
	ld b, e                                          ; $4251: $43
	xor l                                            ; $4252: $ad
	ld d, a                                          ; $4253: $57
	ld d, e                                          ; $4254: $53
	and a                                            ; $4255: $a7
	ld c, a                                          ; $4256: $4f
	xor l                                            ; $4257: $ad
	ld h, b                                          ; $4258: $60
	cp b                                             ; $4259: $b8
	ld d, b                                          ; $425a: $50
	xor a                                            ; $425b: $af
	ld e, d                                          ; $425c: $5a
	cp d                                             ; $425d: $ba
	ld e, [hl]                                       ; $425e: $5e
	cp $54                                           ; $425f: $fe $54
	cp $5f                                           ; $4261: $fe $5f
	rst $38                                          ; $4263: $ff
	rst FarCall                                          ; $4264: $f7
	db $e3                                           ; $4265: $e3
	rst $38                                          ; $4266: $ff
	ld d, a                                          ; $4267: $57
	ld a, d                                          ; $4268: $7a
	and $80                                          ; $4269: $e6 $80
	rst $38                                          ; $426b: $ff
	ld e, e                                          ; $426c: $5b
	or a                                             ; $426d: $b7
	rst $38                                          ; $426e: $ff
	adc a                                            ; $426f: $8f
	cpl                                              ; $4270: $2f
	xor a                                            ; $4271: $af
	push de                                          ; $4272: $d5
	jr nc, jr_04f_42b2                               ; $4273: $30 $3d

	ld a, b                                          ; $4275: $78
	ld a, a                                          ; $4276: $7f
	ld a, c                                          ; $4277: $79
	ld e, b                                          ; $4278: $58
	jr jr_04f_4286                                   ; $4279: $18 $0b

	adc a                                            ; $427b: $8f
	ld d, a                                          ; $427c: $57
	inc l                                            ; $427d: $2c
	call c, $6fec                                    ; $427e: $dc $ec $6f
	adc a                                            ; $4281: $8f
	sbc h                                            ; $4282: $9c
	ld l, [hl]                                       ; $4283: $6e
	adc [hl]                                         ; $4284: $8e
	adc [hl]                                         ; $4285: $8e

jr_04f_4286:
	adc a                                            ; $4286: $8f
	sbc a                                            ; $4287: $9f
	rst SubAFromDE                                          ; $4288: $df
	ld a, a                                          ; $4289: $7f
	sbc c                                            ; $428a: $99
	ld a, e                                          ; $428b: $7b
	rra                                              ; $428c: $1f
	ld a, l                                          ; $428d: $7d
	rra                                              ; $428e: $1f
	rrca                                             ; $428f: $0f
	rst $38                                          ; $4290: $ff
	ld a, b                                          ; $4291: $78
	call nc, $aa7c                                   ; $4292: $d4 $7c $aa
	ld a, h                                          ; $4295: $7c
	ret z                                            ; $4296: $c8

	ld [hl], h                                       ; $4297: $74

jr_04f_4298:
	adc h                                            ; $4298: $8c
	ld a, [hl]                                       ; $4299: $7e
	jp $ffdb                                         ; $429a: $c3 $db $ff


	ld a, [hl]                                       ; $429d: $7e
	cp b                                             ; $429e: $b8
	add b                                            ; $429f: $80
	push de                                          ; $42a0: $d5
	rst $38                                          ; $42a1: $ff
	ld a, a                                          ; $42a2: $7f
	xor d                                            ; $42a3: $aa
	rst $38                                          ; $42a4: $ff
	ld d, l                                          ; $42a5: $55
	nop                                              ; $42a6: $00
	jr nc, jr_04f_4298                               ; $42a7: $30 $ef

	ldh [$e0], a                                     ; $42a9: $e0 $e0
	ldh a, [$f8]                                     ; $42ab: $f0 $f8
	db $fc                                           ; $42ad: $fc
	rrca                                             ; $42ae: $0f
	jr jr_04f_4301                                   ; $42af: $18 $50

	rst $38                                          ; $42b1: $ff

jr_04f_42b2:
	rst SubAFromDE                                          ; $42b2: $df
	rst $38                                          ; $42b3: $ff
	rst $38                                          ; $42b4: $ff
	ld e, a                                          ; $42b5: $5f
	nop                                              ; $42b6: $00
	add c                                            ; $42b7: $81
	ld bc, $0301                                     ; $42b8: $01 $01 $03
	rlca                                             ; $42bb: $07
	inc b                                            ; $42bc: $04
	adc a                                            ; $42bd: $8f
	rst $38                                          ; $42be: $ff
	sbc [hl]                                         ; $42bf: $9e
	ld a, [hl]                                       ; $42c0: $7e
	sbc $fe                                          ; $42c1: $de $fe
	sbc e                                            ; $42c3: $9b
	rst $38                                          ; $42c4: $ff
	ld hl, sp+$03                                    ; $42c5: $f8 $03
	ld a, $fe                                        ; $42c7: $3e $fe
	rst SubAFromDE                                          ; $42c9: $df
	add b                                            ; $42ca: $80
	adc a                                            ; $42cb: $8f
	ret nz                                           ; $42cc: $c0

	add c                                            ; $42cd: $81
	rrca                                             ; $42ce: $0f
	ld a, a                                          ; $42cf: $7f
	cp a                                             ; $42d0: $bf
	ld d, l                                          ; $42d1: $55
	ld a, [hl+]                                      ; $42d2: $2a
	dec b                                            ; $42d3: $05
	dec bc                                           ; $42d4: $0b
	rst SubAFromHL                                          ; $42d5: $d7
	ccf                                              ; $42d6: $3f
	ld a, a                                          ; $42d7: $7f
	ccf                                              ; $42d8: $3f
	rra                                              ; $42d9: $1f
	rlca                                             ; $42da: $07
	rra                                              ; $42db: $1f
	ld [hl], l                                       ; $42dc: $75
	ld a, [hl]                                       ; $42dd: $7e
	ld a, a                                          ; $42de: $7f
	ld h, h                                          ; $42df: $64
	db $dd                                           ; $42e0: $dd
	rst $38                                          ; $42e1: $ff
	sub [hl]                                         ; $42e2: $96
	ld [$70f8], a                                    ; $42e3: $ea $f8 $70
	ldh a, [$e1]                                     ; $42e6: $f0 $e1
	ldh a, [c]                                       ; $42e8: $f2
	push hl                                          ; $42e9: $e5
	ld l, d                                          ; $42ea: $6a
	or l                                             ; $42eb: $b5
	db $dd                                           ; $42ec: $dd
	ldh a, [$de]                                     ; $42ed: $f0 $de
	ldh [$7c], a                                     ; $42ef: $e0 $7c
	ret nc                                           ; $42f1: $d0

	sbc l                                            ; $42f2: $9d
	dec b                                            ; $42f3: $05
	ld a, [hl+]                                      ; $42f4: $2a
	ld [hl], d                                       ; $42f5: $72
	and a                                            ; $42f6: $a7
	ld sp, hl                                        ; $42f7: $f9
	sub a                                            ; $42f8: $97
	daa                                              ; $42f9: $27
	ld e, [hl]                                       ; $42fa: $5e
	cp e                                             ; $42fb: $bb
	ld d, a                                          ; $42fc: $57
	cp c                                             ; $42fd: $b9
	ld d, a                                          ; $42fe: $57
	xor d                                            ; $42ff: $aa
	ld e, l                                          ; $4300: $5d

jr_04f_4301:
	ld [hl], l                                       ; $4301: $75
	ret nz                                           ; $4302: $c0

	ld a, [hl]                                       ; $4303: $7e
	ld a, c                                          ; $4304: $79
	ld a, a                                          ; $4305: $7f
	ld c, a                                          ; $4306: $4f
	ld a, [hl]                                       ; $4307: $7e
	add $99                                          ; $4308: $c6 $99
	ld d, a                                          ; $430a: $57
	cp [hl]                                          ; $430b: $be
	ei                                               ; $430c: $fb
	or $eb                                           ; $430d: $f6 $eb
	ld d, l                                          ; $430f: $55
	jp c, $97ff                                      ; $4310: $da $ff $97

	cp $d7                                           ; $4313: $fe $d7
	xor l                                            ; $4315: $ad
	ld e, h                                          ; $4316: $5c
	xor b                                            ; $4317: $a8
	ld d, b                                          ; $4318: $50
	and b                                            ; $4319: $a0
	ld b, b                                          ; $431a: $40
	ld a, c                                          ; $431b: $79
	or l                                             ; $431c: $b5
	sbc l                                            ; $431d: $9d
	ld a, [$79f4]                                    ; $431e: $fa $f4 $79
	xor [hl]                                         ; $4321: $ae
	add b                                            ; $4322: $80
	ld b, b                                          ; $4323: $40
	ld [$a7dd], sp                                   ; $4324: $08 $dd $a7
	ld c, [hl]                                       ; $4327: $4e
	ld [$0408], sp                                   ; $4328: $08 $08 $04
	ld [bc], a                                       ; $432b: $02
	dec b                                            ; $432c: $05
	db $db                                           ; $432d: $db
	and $44                                          ; $432e: $e6 $44
	inc c                                            ; $4330: $0c
	ld [de], a                                       ; $4331: $12
	add hl, de                                       ; $4332: $19
	dec a                                            ; $4333: $3d
	and b                                            ; $4334: $a0
	ld b, b                                          ; $4335: $40
	ld hl, $3412                                     ; $4336: $21 $12 $34
	ld b, d                                          ; $4339: $42
	sbc h                                            ; $433a: $9c
	inc a                                            ; $433b: $3c
	ret nz                                           ; $433c: $c0

	and b                                            ; $433d: $a0
	db $10                                           ; $433e: $10
	add hl, bc                                       ; $433f: $09
	dec bc                                           ; $4340: $0b
	dec a                                            ; $4341: $3d
	adc l                                            ; $4342: $8d
	ld a, l                                          ; $4343: $7d
	ld sp, hl                                        ; $4344: $f9
	rrca                                             ; $4345: $0f
	ld [$46e6], sp                                   ; $4346: $08 $e6 $46
	rst JumpTable                                          ; $4349: $c7
	add l                                            ; $434a: $85
	adc h                                            ; $434b: $8c
	sub h                                            ; $434c: $94
	inc c                                            ; $434d: $0c
	inc b                                            ; $434e: $04
	inc bc                                           ; $434f: $03
	add d                                            ; $4350: $82
	ld [bc], a                                       ; $4351: $02
	inc bc                                           ; $4352: $03
	inc bc                                           ; $4353: $03
	dec bc                                           ; $4354: $0b
	call c, Call_04f_7fff                            ; $4355: $dc $ff $7f
	and b                                            ; $4358: $a0
	ret c                                            ; $4359: $d8

	rst $38                                          ; $435a: $ff
	sbc l                                            ; $435b: $9d
	ld a, [$76f9]                                    ; $435c: $fa $f9 $76
	xor [hl]                                         ; $435f: $ae
	ld a, h                                          ; $4360: $7c
	xor $66                                          ; $4361: $ee $66
	inc d                                            ; $4363: $14
	sbc [hl]                                         ; $4364: $9e
	xor e                                            ; $4365: $ab
	ld a, e                                          ; $4366: $7b
	ld [hl], h                                       ; $4367: $74
	sbc d                                            ; $4368: $9a
	ld [$8a90], sp                                   ; $4369: $08 $90 $8a
	ldh [$57], a                                     ; $436c: $e0 $57
	ld a, e                                          ; $436e: $7b
	ld l, e                                          ; $436f: $6b
	ld a, h                                          ; $4370: $7c
	ret nz                                           ; $4371: $c0

	ld a, e                                          ; $4372: $7b
	ld c, h                                          ; $4373: $4c
	sbc [hl]                                         ; $4374: $9e
	ld b, b                                          ; $4375: $40
	ld a, e                                          ; $4376: $7b
	rst FarCall                                          ; $4377: $f7
	sbc d                                            ; $4378: $9a
	ld b, l                                          ; $4379: $45
	ld a, [bc]                                       ; $437a: $0a
	dec d                                            ; $437b: $15
	rst $38                                          ; $437c: $ff
	cp a                                             ; $437d: $bf
	ld a, e                                          ; $437e: $7b
	rst SubAFromBC                                          ; $437f: $e7
	add b                                            ; $4380: $80
	cp d                                             ; $4381: $ba
	push af                                          ; $4382: $f5
	ld [$e7d6], a                                    ; $4383: $ea $d6 $e7
	ld [hl], $6e                                     ; $4386: $36 $6e
	inc de                                           ; $4388: $13
	dec de                                           ; $4389: $1b
	or e                                             ; $438a: $b3
	dec bc                                           ; $438b: $0b
	adc a                                            ; $438c: $8f
	adc a                                            ; $438d: $8f
	call $e7c5                                       ; $438e: $cd $c5 $e7
	rst SubAFromBC                                          ; $4391: $e7
	ld h, a                                          ; $4392: $67
	push af                                          ; $4393: $f5
	xor a                                            ; $4394: $af
	ld c, a                                          ; $4395: $4f
	xor a                                            ; $4396: $af
	adc $b5                                          ; $4397: $ce $b5
	jp nc, $d295                                     ; $4399: $d2 $95 $d2

	jr jr_04f_43bd                                   ; $439c: $18 $1f

	dec e                                            ; $439e: $1d
	dec de                                           ; $439f: $1b
	sbc e                                            ; $43a0: $9b
	ld a, [de]                                       ; $43a1: $1a
	dec a                                            ; $43a2: $3d
	ld a, [hl-]                                      ; $43a3: $3a
	dec a                                            ; $43a4: $3d
	ld [hl], c                                       ; $43a5: $71
	rst SubAFromHL                                          ; $43a6: $d7
	sbc h                                            ; $43a7: $9c
	or l                                             ; $43a8: $b5
	ld e, d                                          ; $43a9: $5a
	xor l                                            ; $43aa: $ad
	ld [hl], d                                       ; $43ab: $72
	ret z                                            ; $43ac: $c8

	ld a, c                                          ; $43ad: $79
	xor h                                            ; $43ae: $ac
	ld a, a                                          ; $43af: $7f
	sub h                                            ; $43b0: $94
	sbc d                                            ; $43b1: $9a
	xor e                                            ; $43b2: $ab
	ld d, [hl]                                       ; $43b3: $56
	cp b                                             ; $43b4: $b8
	ld h, b                                          ; $43b5: $60
	ret nz                                           ; $43b6: $c0

jr_04f_43b7:
	ld a, d                                          ; $43b7: $7a
	cp b                                             ; $43b8: $b8
	ld a, h                                          ; $43b9: $7c
	ld d, b                                          ; $43ba: $50
	sbc l                                            ; $43bb: $9d
	rst SubAFromBC                                          ; $43bc: $e7

jr_04f_43bd:
	rst SubAFromDE                                          ; $43bd: $df
	ld a, b                                          ; $43be: $78
	ld e, [hl]                                       ; $43bf: $5e
	sbc [hl]                                         ; $43c0: $9e
	cp $75                                           ; $43c1: $fe $75
	ld a, a                                          ; $43c3: $7f
	ld a, [hl]                                       ; $43c4: $7e
	pop hl                                           ; $43c5: $e1
	sub h                                            ; $43c6: $94
	rst $38                                          ; $43c7: $ff
	ld d, h                                          ; $43c8: $54
	ret nz                                           ; $43c9: $c0

	call nz, $c7c1                                   ; $43ca: $c4 $c1 $c7
	rra                                              ; $43cd: $1f
	rst $38                                          ; $43ce: $ff
	db $fc                                           ; $43cf: $fc
	ld bc, $7a07                                     ; $43d0: $01 $07 $7a
	sub [hl]                                         ; $43d3: $96
	sbc d                                            ; $43d4: $9a
	cp $f5                                           ; $43d5: $fe $f5
	add b                                            ; $43d7: $80
	inc bc                                           ; $43d8: $03
	rra                                              ; $43d9: $1f
	ld [hl], d                                       ; $43da: $72
	adc [hl]                                         ; $43db: $8e
	ld a, c                                          ; $43dc: $79
	rst AddAOntoHL                                          ; $43dd: $ef
	sbc d                                            ; $43de: $9a
	ld [$50c0], a                                    ; $43df: $ea $c0 $50
	xor b                                            ; $43e2: $a8
	ld d, h                                          ; $43e3: $54
	ld l, e                                          ; $43e4: $6b
	di                                               ; $43e5: $f3
	ld a, [hl]                                       ; $43e6: $7e
	ret z                                            ; $43e7: $c8

	rst SubAFromDE                                          ; $43e8: $df
	rst $38                                          ; $43e9: $ff
	sbc [hl]                                         ; $43ea: $9e
	xor a                                            ; $43eb: $af
	ld [hl], c                                       ; $43ec: $71
	ld b, b                                          ; $43ed: $40
	sbc h                                            ; $43ee: $9c
	xor a                                            ; $43ef: $af
	ld d, b                                          ; $43f0: $50
	ld a, [$ffdd]                                    ; $43f1: $fa $dd $ff
	sub a                                            ; $43f4: $97
	ld l, [hl]                                       ; $43f5: $6e
	rst $38                                          ; $43f6: $ff
	halt                                             ; $43f7: $76
	cp a                                             ; $43f8: $bf
	rst $38                                          ; $43f9: $ff
	cp a                                             ; $43fa: $bf
	rst SubAFromDE                                          ; $43fb: $df
	rst $38                                          ; $43fc: $ff
	db $dd                                           ; $43fd: $dd
	ret nz                                           ; $43fe: $c0

	ld a, a                                          ; $43ff: $7f
	cp e                                             ; $4400: $bb
	ld a, h                                          ; $4401: $7c
	ret nc                                           ; $4402: $d0

	sbc d                                            ; $4403: $9a
	xor d                                            ; $4404: $aa
	rst SubAFromHL                                          ; $4405: $d7
	xor d                                            ; $4406: $aa
	push af                                          ; $4407: $f5
	ld hl, sp+$7a                                    ; $4408: $f8 $7a
	and d                                            ; $440a: $a2
	ld [hl], e                                       ; $440b: $73
	call c, $ff94                                    ; $440c: $dc $94 $ff
	ld l, d                                          ; $440f: $6a
	or l                                             ; $4410: $b5
	cp $75                                           ; $4411: $fe $75
	ei                                               ; $4413: $fb
	ld d, l                                          ; $4414: $55
	ccf                                              ; $4415: $3f
	rst $38                                          ; $4416: $ff
	nop                                              ; $4417: $00
	xor d                                            ; $4418: $aa
	db $fd                                           ; $4419: $fd
	ld a, h                                          ; $441a: $7c
	inc sp                                           ; $441b: $33
	ld a, [hl]                                       ; $441c: $7e
	ld c, a                                          ; $441d: $4f
	sub e                                            ; $441e: $93
	cp $34                                           ; $441f: $fe $34
	add sp, $50                                      ; $4421: $e8 $50
	ldh a, [$f0]                                     ; $4423: $f0 $f0
	rst $38                                          ; $4425: $ff
	xor d                                            ; $4426: $aa
	ld a, l                                          ; $4427: $7d
	ld a, d                                          ; $4428: $7a
	inc [hl]                                         ; $4429: $34
	jr z, jr_04f_44a7                                ; $442a: $28 $7b

	rst SubAFromDE                                          ; $442c: $df
	ld a, d                                          ; $442d: $7a
	sbc b                                            ; $442e: $98
	sub h                                            ; $442f: $94
	jr z, jr_04f_43b7                                ; $4430: $28 $85

	jp nz, $fe55                                     ; $4432: $c2 $55 $fe

	rrca                                             ; $4435: $0f
	nop                                              ; $4436: $00
	nop                                              ; $4437: $00

jr_04f_4438:
	ld b, h                                          ; $4438: $44
	ld l, b                                          ; $4439: $68
	db $10                                           ; $443a: $10
	ld a, d                                          ; $443b: $7a
	ld sp, hl                                        ; $443c: $f9
	sbc e                                            ; $443d: $9b
	ld bc, $070b                                     ; $443e: $01 $0b $07
	ld a, a                                          ; $4441: $7f
	ld a, d                                          ; $4442: $7a
	ld de, $ff95                                     ; $4443: $11 $95 $ff
	ld h, a                                          ; $4446: $67
	ld b, a                                          ; $4447: $47
	ld a, a                                          ; $4448: $7f
	ld a, $7d                                        ; $4449: $3e $7d
	cp $f4                                           ; $444b: $fe $f4
	add sp, -$10                                     ; $444d: $e8 $f0
	ld a, b                                          ; $444f: $78
	ret z                                            ; $4450: $c8

	ld [hl], e                                       ; $4451: $73
	ld a, d                                          ; $4452: $7a
	sub l                                            ; $4453: $95
	rst $38                                          ; $4454: $ff
	ld b, e                                          ; $4455: $43
	xor c                                            ; $4456: $a9
	cp $a5                                           ; $4457: $fe $a5
	nop                                              ; $4459: $00
	nop                                              ; $445a: $00
	and l                                            ; $445b: $a5
	ld h, c                                          ; $445c: $61
	sbc a                                            ; $445d: $9f
	call c, $7dff                                    ; $445e: $dc $ff $7d
	ld e, h                                          ; $4461: $5c
	ld a, a                                          ; $4462: $7f
	ld e, e                                          ; $4463: $5b
	sbc e                                            ; $4464: $9b
	pop af                                           ; $4465: $f1
	dec hl                                           ; $4466: $2b
	ld e, c                                          ; $4467: $59
	jr z, jr_04f_4438                                ; $4468: $28 $ce

	rst $38                                          ; $446a: $ff
	ld a, a                                          ; $446b: $7f
	daa                                              ; $446c: $27
	sbc h                                            ; $446d: $9c
	ld a, [$eaf5]                                    ; $446e: $fa $f5 $ea
	ret c                                            ; $4471: $d8

	rst $38                                          ; $4472: $ff
	sbc d                                            ; $4473: $9a
	db $e3                                           ; $4474: $e3
	ld d, b                                          ; $4475: $50
	xor d                                            ; $4476: $aa
	ld [hl], l                                       ; $4477: $75
	adc d                                            ; $4478: $8a
	ld a, b                                          ; $4479: $78
	ret c                                            ; $447a: $d8

	rst SubAFromDE                                          ; $447b: $df

Call_04f_447c:
	rst $38                                          ; $447c: $ff
	ld a, a                                          ; $447d: $7f
	db $eb                                           ; $447e: $eb
	ld a, a                                          ; $447f: $7f
	cp $9e                                           ; $4480: $fe $9e
	push de                                          ; $4482: $d5
	ld a, e                                          ; $4483: $7b
	ld c, e                                          ; $4484: $4b
	sbc [hl]                                         ; $4485: $9e
	nop                                              ; $4486: $00
	ld a, c                                          ; $4487: $79
	db $f4                                           ; $4488: $f4
	ld [hl], d                                       ; $4489: $72
	adc a                                            ; $448a: $8f
	sbc [hl]                                         ; $448b: $9e
	add c                                            ; $448c: $81
	ld a, d                                          ; $448d: $7a
	or h                                             ; $448e: $b4
	sub [hl]                                         ; $448f: $96
	and c                                            ; $4490: $a1
	db $f4                                           ; $4491: $f4
	db $fc                                           ; $4492: $fc
	rst $38                                          ; $4493: $ff
	ld a, [hl-]                                      ; $4494: $3a
	push af                                          ; $4495: $f5
	xor d                                            ; $4496: $aa
	push de                                          ; $4497: $d5
	di                                               ; $4498: $f3
	ld [hl], a                                       ; $4499: $77
	sbc h                                            ; $449a: $9c
	sub c                                            ; $449b: $91
	ei                                               ; $449c: $fb
	ld [hl], l                                       ; $449d: $75
	ld a, e                                          ; $449e: $7b
	jp hl                                            ; $449f: $e9


	ld a, [hl]                                       ; $44a0: $7e
	rra                                              ; $44a1: $1f
	ld a, [hl]                                       ; $44a2: $7e
	cp e                                             ; $44a3: $bb
	ld d, l                                          ; $44a4: $55
	xor d                                            ; $44a5: $aa
	ld d, a                                          ; $44a6: $57

jr_04f_44a7:
	ld [hl], $bf                                     ; $44a7: $36 $bf
	cp a                                             ; $44a9: $bf
	ld l, e                                          ; $44aa: $6b
	or d                                             ; $44ab: $b2
	rst SubAFromDE                                          ; $44ac: $df
	ld hl, sp+$7a                                    ; $44ad: $f8 $7a
	jp hl                                            ; $44af: $e9


	ld a, a                                          ; $44b0: $7f
	res 3, e                                         ; $44b1: $cb $9b
	xor b                                            ; $44b3: $a8
	db $fc                                           ; $44b4: $fc
	xor e                                            ; $44b5: $ab
	rrca                                             ; $44b6: $0f
	ld a, e                                          ; $44b7: $7b
	db $ed                                           ; $44b8: $ed
	ld l, [hl]                                       ; $44b9: $6e
	pop hl                                           ; $44ba: $e1
	ld a, [hl]                                       ; $44bb: $7e
	db $ec                                           ; $44bc: $ec
	halt                                             ; $44bd: $76
	call Call_04f_4e6a                               ; $44be: $cd $6a $4e
	sbc [hl]                                         ; $44c1: $9e
	push af                                          ; $44c2: $f5
	ld a, d                                          ; $44c3: $7a
	add hl, bc                                       ; $44c4: $09
	ld a, h                                          ; $44c5: $7c
	add b                                            ; $44c6: $80
	jp c, Jump_04f_78ff                              ; $44c7: $da $ff $78

	ld c, b                                          ; $44ca: $48
	sbc [hl]                                         ; $44cb: $9e
	ld d, b                                          ; $44cc: $50
	db $fd                                           ; $44cd: $fd
	ld a, c                                          ; $44ce: $79
	dec b                                            ; $44cf: $05
	ld a, a                                          ; $44d0: $7f
	and $db                                          ; $44d1: $e6 $db
	rst $38                                          ; $44d3: $ff
	ld a, l                                          ; $44d4: $7d
	adc l                                            ; $44d5: $8d
	sbc d                                            ; $44d6: $9a
	inc b                                            ; $44d7: $04
	nop                                              ; $44d8: $00
	nop                                              ; $44d9: $00
	xor d                                            ; $44da: $aa
	ld d, b                                          ; $44db: $50
	sbc $80                                          ; $44dc: $de $80
	sbc b                                            ; $44de: $98
	jp c, $c0fb                                      ; $44df: $da $fb $c0

	pop hl                                           ; $44e2: $e1
	ld sp, hl                                        ; $44e3: $f9
	ldh [$80], a                                     ; $44e4: $e0 $80
	db $fd                                           ; $44e6: $fd
	sbc c                                            ; $44e7: $99
	cp [hl]                                          ; $44e8: $be
	nop                                              ; $44e9: $00
	nop                                              ; $44ea: $00
	dec b                                            ; $44eb: $05
	nop                                              ; $44ec: $00
	add b                                            ; $44ed: $80
	ld [hl], a                                       ; $44ee: $77
	ld a, b                                          ; $44ef: $78
	sbc e                                            ; $44f0: $9b
	ld a, a                                          ; $44f1: $7f
	rra                                              ; $44f2: $1f
	rlca                                             ; $44f3: $07
	inc bc                                           ; $44f4: $03
	ld sp, hl                                        ; $44f5: $f9
	ld a, a                                          ; $44f6: $7f
	ldh a, [$9c]                                     ; $44f7: $f0 $9c
	dec d                                            ; $44f9: $15
	nop                                              ; $44fa: $00
	db $10                                           ; $44fb: $10
	ld [hl], a                                       ; $44fc: $77
	cp $9d                                           ; $44fd: $fe $9d
	add b                                            ; $44ff: $80
	ld [$e0da], a                                    ; $4500: $ea $da $e0
	ld a, l                                          ; $4503: $7d
	ld c, d                                          ; $4504: $4a
	ei                                               ; $4505: $fb
	ld [hl], d                                       ; $4506: $72
	cp a                                             ; $4507: $bf
	ld [hl], e                                       ; $4508: $73
	sbc $7f                                          ; $4509: $de $7f
	xor $77                                          ; $450b: $ee $77
	cp $9c                                           ; $450d: $fe $9c
	xor b                                            ; $450f: $a8
	dec d                                            ; $4510: $15
	ld a, [hl+]                                      ; $4511: $2a
	ld [hl], e                                       ; $4512: $73
	cp $9d                                           ; $4513: $fe $9d
	inc bc                                           ; $4515: $03
	xor c                                            ; $4516: $a9
	ld a, b                                          ; $4517: $78
	and [hl]                                         ; $4518: $a6
	sub l                                            ; $4519: $95
	sbc a                                            ; $451a: $9f
	ccf                                              ; $451b: $3f
	ld a, a                                          ; $451c: $7f
	adc c                                            ; $451d: $89
	ld d, a                                          ; $451e: $57
	xor [hl]                                         ; $451f: $ae
	ld e, l                                          ; $4520: $5d
	cp e                                             ; $4521: $bb
	ld [hl], l                                       ; $4522: $75
	ld [$617a], a                                    ; $4523: $ea $7a $61
	ld [hl], e                                       ; $4526: $73
	ld c, e                                          ; $4527: $4b
	sub [hl]                                         ; $4528: $96
	db $fc                                           ; $4529: $fc
	pop bc                                           ; $452a: $c1
	ld h, a                                          ; $452b: $67
	rst JumpTable                                          ; $452c: $c7
	db $e3                                           ; $452d: $e3
	pop af                                           ; $452e: $f1
	ld l, e                                          ; $452f: $6b
	or a                                             ; $4530: $b7
	ld e, a                                          ; $4531: $5f
	sbc $ff                                          ; $4532: $de $ff
	ld a, e                                          ; $4534: $7b
	sub b                                            ; $4535: $90
	sbc l                                            ; $4536: $9d
	ld bc, $6f02                                     ; $4537: $01 $02 $6f
	ld c, $dc                                        ; $453a: $0e $dc
	rst $38                                          ; $453c: $ff
	sbc h                                            ; $453d: $9c
	ld a, [hl]                                       ; $453e: $7e
	ld bc, $7b0a                                     ; $453f: $01 $0a $7b
	cp d                                             ; $4542: $ba
	sbc l                                            ; $4543: $9d
	xor e                                            ; $4544: $ab
	rst FarCall                                          ; $4545: $f7
	ld h, d                                          ; $4546: $62
	jp nc, Jump_04f_4a7e                             ; $4547: $d2 $7e $4a

	ld h, a                                          ; $454a: $67
	ldh [c], a                                       ; $454b: $e2
	ld a, a                                          ; $454c: $7f
	di                                               ; $454d: $f3
	sbc d                                            ; $454e: $9a
	push de                                          ; $454f: $d5
	xor d                                            ; $4550: $aa
	ld d, h                                          ; $4551: $54
	and b                                            ; $4552: $a0
	dec d                                            ; $4553: $15
	ld a, b                                          ; $4554: $78
	db $fd                                           ; $4555: $fd
	ld [hl], b                                       ; $4556: $70
	db $e3                                           ; $4557: $e3
	ld a, a                                          ; $4558: $7f
	di                                               ; $4559: $f3
	sbc [hl]                                         ; $455a: $9e
	ld d, l                                          ; $455b: $55
	ld [hl], a                                       ; $455c: $77
	db $f4                                           ; $455d: $f4
	ld [hl], a                                       ; $455e: $77
	cp $77                                           ; $455f: $fe $77
	db $f4                                           ; $4561: $f4
	ld [hl], a                                       ; $4562: $77
	cp $8b                                           ; $4563: $fe $8b
	ld d, l                                          ; $4565: $55
	xor a                                            ; $4566: $af
	ld d, l                                          ; $4567: $55
	xor d                                            ; $4568: $aa
	ld d, c                                          ; $4569: $51
	xor h                                            ; $456a: $ac
	ld d, a                                          ; $456b: $57
	sbc a                                            ; $456c: $9f
	xor d                                            ; $456d: $aa
	ld d, b                                          ; $456e: $50
	xor d                                            ; $456f: $aa
	ld d, l                                          ; $4570: $55
	xor [hl]                                         ; $4571: $ae
	ld d, e                                          ; $4572: $53
	xor a                                            ; $4573: $af
	ld a, a                                          ; $4574: $7f
	ld a, [hl+]                                      ; $4575: $2a
	push de                                          ; $4576: $d5
	dec hl                                           ; $4577: $2b
	rst SubAFromHL                                          ; $4578: $d7
	ld [hl], c                                       ; $4579: $71
	db $e4                                           ; $457a: $e4
	ld a, [hl]                                       ; $457b: $7e
	pop af                                           ; $457c: $f1
	ld h, [hl]                                       ; $457d: $66
	rst AddAOntoHL                                          ; $457e: $ef
	ld [hl], d                                       ; $457f: $72
	ldh [$62], a                                     ; $4580: $e0 $62
	pop hl                                           ; $4582: $e1
	ld a, e                                          ; $4583: $7b
	db $f4                                           ; $4584: $f4
	halt                                             ; $4585: $76
	db $eb                                           ; $4586: $eb
	ld [hl], c                                       ; $4587: $71
	call nz, $eb7a                                   ; $4588: $c4 $7a $eb
	ld a, e                                          ; $458b: $7b
	and b                                            ; $458c: $a0
	sbc [hl]                                         ; $458d: $9e
	xor b                                            ; $458e: $a8
	reti                                             ; $458f: $d9


	rst $38                                          ; $4590: $ff
	sbc d                                            ; $4591: $9a
	ld d, l                                          ; $4592: $55
	xor b                                            ; $4593: $a8
	ld d, b                                          ; $4594: $50
	add b                                            ; $4595: $80
	ld b, b                                          ; $4596: $40
	halt                                             ; $4597: $76
	ldh a, [c]                                       ; $4598: $f2
	ld a, l                                          ; $4599: $7d
	adc d                                            ; $459a: $8a
	ld a, l                                          ; $459b: $7d
	xor $7e                                          ; $459c: $ee $7e
	ld d, a                                          ; $459e: $57
	sbc l                                            ; $459f: $9d
	add c                                            ; $45a0: $81
	ret nz                                           ; $45a1: $c0

	ld sp, hl                                        ; $45a2: $f9
	ld a, b                                          ; $45a3: $78
	ld e, e                                          ; $45a4: $5b
	ld a, d                                          ; $45a5: $7a
	adc b                                            ; $45a6: $88
	ld a, b                                          ; $45a7: $78
	ld [hl], e                                       ; $45a8: $73
	ld a, [$af7d]                                    ; $45a9: $fa $7d $af
	ld [hl], a                                       ; $45ac: $77
	dec sp                                           ; $45ad: $3b
	or $df                                           ; $45ae: $f6 $df
	cp $98                                           ; $45b0: $fe $98
	ld d, h                                          ; $45b2: $54
	jr z, jr_04f_45ca                                ; $45b3: $28 $15

	ld a, [bc]                                       ; $45b5: $0a
	dec b                                            ; $45b6: $05
	ld [bc], a                                       ; $45b7: $02
	ld bc, $7ff8                                     ; $45b8: $01 $f8 $7f
	xor d                                            ; $45bb: $aa
	sub a                                            ; $45bc: $97
	ld d, c                                          ; $45bd: $51
	and d                                            ; $45be: $a2
	ld b, c                                          ; $45bf: $41
	add d                                            ; $45c0: $82
	dec b                                            ; $45c1: $05
	ld a, [bc]                                       ; $45c2: $0a
	ldh a, [$e0]                                     ; $45c3: $f0 $e0
	ld a, e                                          ; $45c5: $7b
	cp $9a                                           ; $45c6: $fe $9a
	ldh a, [$d4]                                     ; $45c8: $f0 $d4

jr_04f_45ca:
	rst $38                                          ; $45ca: $ff
	ld h, b                                          ; $45cb: $60
	and b                                            ; $45cc: $a0
	ld [hl], a                                       ; $45cd: $77
	cp $7e                                           ; $45ce: $fe $7e
	ld d, $fa                                        ; $45d0: $16 $fa
	ld a, [hl]                                       ; $45d2: $7e
	ld b, b                                          ; $45d3: $40
	ld l, a                                          ; $45d4: $6f
	ld sp, hl                                        ; $45d5: $f9
	ld a, l                                          ; $45d6: $7d
	add hl, de                                       ; $45d7: $19
	sub c                                            ; $45d8: $91
	add hl, hl                                       ; $45d9: $29
	ld d, e                                          ; $45da: $53
	daa                                              ; $45db: $27
	ld l, a                                          ; $45dc: $6f
	dec e                                            ; $45dd: $1d
	ld a, $f5                                        ; $45de: $3e $f5
	add hl, hl                                       ; $45e0: $29
	inc de                                           ; $45e1: $13
	ld h, $0d                                        ; $45e2: $26 $0d
	ld a, [de]                                       ; $45e4: $1a
	scf                                              ; $45e5: $37
	ei                                               ; $45e6: $fb
	ld l, d                                          ; $45e7: $6a
	ld a, $6f                                        ; $45e8: $3e $6f
	inc h                                            ; $45ea: $24
	sbc [hl]                                         ; $45eb: $9e
	xor a                                            ; $45ec: $af
	ld a, d                                          ; $45ed: $7a
	jp nc, $fc8e                                     ; $45ee: $d2 $8e $fc

	ld hl, sp-$08                                    ; $45f1: $f8 $f8
	ret nc                                           ; $45f3: $d0

	and b                                            ; $45f4: $a0
	ld h, b                                          ; $45f5: $60
	sbc a                                            ; $45f6: $9f
	ld e, a                                          ; $45f7: $5f
	or a                                             ; $45f8: $b7
	ld e, a                                          ; $45f9: $5f
	or a                                             ; $45fa: $b7
	ld l, a                                          ; $45fb: $6f
	rst SubAFromDE                                          ; $45fc: $df
	rst SubAFromDE                                          ; $45fd: $df
	ldh [rIE], a                                     ; $45fe: $e0 $ff
	ld bc, $c47a                                     ; $4600: $01 $7a $c4
	sbc l                                            ; $4603: $9d
	dec d                                            ; $4604: $15
	ld [$ffd9], sp                                   ; $4605: $08 $d9 $ff
	ld a, a                                          ; $4608: $7f
	cp a                                             ; $4609: $bf
	sbc [hl]                                         ; $460a: $9e
	ld d, h                                          ; $460b: $54
	ld a, e                                          ; $460c: $7b
	ld b, b                                          ; $460d: $40
	sbc l                                            ; $460e: $9d
	ld d, h                                          ; $460f: $54
	ld bc, $2467                                     ; $4610: $01 $67 $24
	ld a, a                                          ; $4613: $7f
	rst FarCall                                          ; $4614: $f7
	ld c, [hl]                                       ; $4615: $4e
	nop                                              ; $4616: $00
	add $33                                          ; $4617: $c6 $33
	sbc [hl]                                         ; $4619: $9e
	ld [hl], $dd                                     ; $461a: $36 $dd
	inc sp                                           ; $461c: $33
	sbc [hl]                                         ; $461d: $9e
	ld h, [hl]                                       ; $461e: $66
	ld [hl], a                                       ; $461f: $77
	ld sp, hl                                        ; $4620: $f9
	ld a, e                                          ; $4621: $7b
	ei                                               ; $4622: $fb
	rst SubAFromDE                                          ; $4623: $df
	ld b, h                                          ; $4624: $44
	sbc c                                            ; $4625: $99
	ld h, [hl]                                       ; $4626: $66
	ld b, h                                          ; $4627: $44
	ld b, h                                          ; $4628: $44
	ld b, a                                          ; $4629: $47
	ld [hl], $66                                     ; $462a: $36 $66
	ld a, e                                          ; $462c: $7b
	di                                               ; $462d: $f3
	sbc d                                            ; $462e: $9a
	ld h, [hl]                                       ; $462f: $66
	scf                                              ; $4630: $37
	ld b, h                                          ; $4631: $44
	ld b, h                                          ; $4632: $44
	ld b, e                                          ; $4633: $43
	db $dd                                           ; $4634: $dd
	inc sp                                           ; $4635: $33
	sbc l                                            ; $4636: $9d
	ld h, e                                          ; $4637: $63
	inc sp                                           ; $4638: $33
	ld a, e                                          ; $4639: $7b
	or $9e                                           ; $463a: $f6 $9e
	ld b, h                                          ; $463c: $44
	ld a, e                                          ; $463d: $7b
	rst SubAFromHL                                          ; $463e: $d7
	ld a, a                                          ; $463f: $7f
	rst FarCall                                          ; $4640: $f7
	sbc $33                                          ; $4641: $de $33
	sbc [hl]                                         ; $4643: $9e
	ld [hl], a                                       ; $4644: $77
	ld [hl], a                                       ; $4645: $77
	or $7b                                           ; $4646: $f6 $7b
	ldh [$7b], a                                     ; $4648: $e0 $7b
	db $eb                                           ; $464a: $eb
	sbc [hl]                                         ; $464b: $9e
	ld d, l                                          ; $464c: $55
	ld [hl], a                                       ; $464d: $77
	or $98                                           ; $464e: $f6 $98
	ld b, h                                          ; $4650: $44
	ld [hl], a                                       ; $4651: $77
	ld h, [hl]                                       ; $4652: $66
	ld b, h                                          ; $4653: $44
	ld d, l                                          ; $4654: $55
	ld d, l                                          ; $4655: $55
	ld d, a                                          ; $4656: $57
	sbc $33                                          ; $4657: $de $33
	sbc h                                            ; $4659: $9c
	ld b, a                                          ; $465a: $47
	ld [hl], a                                       ; $465b: $77
	ld h, l                                          ; $465c: $65
	sbc $55                                          ; $465d: $de $55
	sbc [hl]                                         ; $465f: $9e
	ld d, e                                          ; $4660: $53
	sbc $33                                          ; $4661: $de $33
	db $ed                                           ; $4663: $ed
	rlca                                             ; $4664: $07
	sbc e                                            ; $4665: $9b
	add sp, $17                                      ; $4666: $e8 $17
	db $f4                                           ; $4668: $f4
	dec bc                                           ; $4669: $0b
	ld [hl], a                                       ; $466a: $77
	db $fc                                           ; $466b: $fc
	sbc l                                            ; $466c: $9d
	ld a, [$7705]                                    ; $466d: $fa $05 $77
	db $fc                                           ; $4670: $fc
	sbc e                                            ; $4671: $9b
	db $fd                                           ; $4672: $fd
	ld [bc], a                                       ; $4673: $02
	rst $38                                          ; $4674: $ff
	nop                                              ; $4675: $00
	ld l, a                                          ; $4676: $6f
	cp $9d                                           ; $4677: $fe $9d
	cp $01                                           ; $4679: $fe $01
	ld l, a                                          ; $467b: $6f
	cp $67                                           ; $467c: $fe $67
	ldh a, [$7f]                                     ; $467e: $f0 $7f
	db $fd                                           ; $4680: $fd
	rst SubAFromDE                                          ; $4681: $df
	rst $38                                          ; $4682: $ff
	db $dd                                           ; $4683: $dd
	add b                                            ; $4684: $80
	ld d, a                                          ; $4685: $57
	ldh a, [$fd]                                     ; $4686: $f0 $fd
	inc bc                                           ; $4688: $03
	ldh a, [$03]                                     ; $4689: $f0 $03
	ldh a, [$03]                                     ; $468b: $f0 $03
	ldh a, [$03]                                     ; $468d: $f0 $03
	ldh a, [$1f]                                     ; $468f: $f0 $1f
	ldh a, [$df]                                     ; $4691: $f0 $df
	ld [$d003], sp                                   ; $4693: $08 $03 $d0
	inc bc                                           ; $4696: $03
	ldh a, [$6f]                                     ; $4697: $f0 $6f
	cp $9c                                           ; $4699: $fe $9c
	ccf                                              ; $469b: $3f
	ret nz                                           ; $469c: $c0

	cp a                                             ; $469d: $bf

jr_04f_469e:
	ld [hl], e                                       ; $469e: $73
	cp $89                                           ; $469f: $fe $89
	ld d, l                                          ; $46a1: $55
	ld l, d                                          ; $46a2: $6a
	ld c, e                                          ; $46a3: $4b
	ld [hl], h                                       ; $46a4: $74
	rla                                              ; $46a5: $17
	ld l, b                                          ; $46a6: $68
	dec hl                                           ; $46a7: $2b
	ld d, h                                          ; $46a8: $54
	rla                                              ; $46a9: $17
	ld l, b                                          ; $46aa: $68
	cpl                                              ; $46ab: $2f
	ld d, b                                          ; $46ac: $50
	ld e, a                                          ; $46ad: $5f
	jr nz, jr_04f_46ef                               ; $46ae: $20 $3f

	ld b, b                                          ; $46b0: $40
	cp $01                                           ; $46b1: $fe $01
	db $fd                                           ; $46b3: $fd
	ld [bc], a                                       ; $46b4: $02
	cp $01                                           ; $46b5: $fe $01
	ld [hl], e                                       ; $46b7: $73
	pop de                                           ; $46b8: $d1
	sbc $ff                                          ; $46b9: $de $ff
	sbc e                                            ; $46bb: $9b
	db $fd                                           ; $46bc: $fd
	rst $38                                          ; $46bd: $ff
	ld bc, $4f00                                     ; $46be: $01 $00 $4f
	cp $d1                                           ; $46c1: $fe $d1
	add b                                            ; $46c3: $80
	rst $38                                          ; $46c4: $ff
	add c                                            ; $46c5: $81
	jr nz, jr_04f_46c8                               ; $46c6: $20 $00

jr_04f_46c8:
	db $10                                           ; $46c8: $10
	jr nc, jr_04f_46fb                               ; $46c9: $30 $30

	jr jr_04f_469e                                   ; $46cb: $18 $d1

	ccf                                              ; $46cd: $3f
	ld a, a                                          ; $46ce: $7f
	ld hl, sp+$35                                    ; $46cf: $f8 $35
	add hl, sp                                       ; $46d1: $39
	dec [hl]                                         ; $46d2: $35
	ld [hl], l                                       ; $46d3: $75
	nop                                              ; $46d4: $00
	nop                                              ; $46d5: $00
	ld b, b                                          ; $46d6: $40
	ret nz                                           ; $46d7: $c0

	ld b, b                                          ; $46d8: $40
	ret nz                                           ; $46d9: $c0

	ldh [rLCDC], a                                   ; $46da: $e0 $40
	ld hl, sp-$10                                    ; $46dc: $f8 $f0
	ld d, b                                          ; $46de: $50
	ldh [$78], a                                     ; $46df: $e0 $78
	or b                                             ; $46e1: $b0
	cp b                                             ; $46e2: $b8
	ldh a, [$f9]                                     ; $46e3: $f0 $f9
	sub h                                            ; $46e5: $94
	dec bc                                           ; $46e6: $0b
	rlca                                             ; $46e7: $07
	nop                                              ; $46e8: $00
	ld bc, $0103                                     ; $46e9: $01 $03 $01
	ld b, $03                                        ; $46ec: $06 $03
	add b                                            ; $46ee: $80

jr_04f_46ef:
	nop                                              ; $46ef: $00
	add b                                            ; $46f0: $80
	ld a, e                                          ; $46f1: $7b
	ldh [hDisp1_WY], a                                     ; $46f2: $e0 $95
	ld c, b                                          ; $46f4: $48
	ldh a, [$f8]                                     ; $46f5: $f0 $f8
	ldh a, [$c0]                                     ; $46f7: $f0 $c0
	ret nz                                           ; $46f9: $c0

	and b                                            ; $46fa: $a0

jr_04f_46fb:
	ldh a, [$b0]                                     ; $46fb: $f0 $b0
	ret c                                            ; $46fd: $d8

	db $fd                                           ; $46fe: $fd
	sbc h                                            ; $46ff: $9c
	inc bc                                           ; $4700: $03
	nop                                              ; $4701: $00
	inc bc                                           ; $4702: $03
	ld a, e                                          ; $4703: $7b
	db $e4                                           ; $4704: $e4
	ld a, e                                          ; $4705: $7b
	and e                                            ; $4706: $a3
	cp $8f                                           ; $4707: $fe $8f
	ld h, $34                                        ; $4709: $26 $34
	push af                                          ; $470b: $f5
	sbc [hl]                                         ; $470c: $9e
	rst SubAFromDE                                          ; $470d: $df
	ld a, a                                          ; $470e: $7f
	db $eb                                           ; $470f: $eb
	db $fd                                           ; $4710: $fd
	xor e                                            ; $4711: $ab
	ld a, h                                          ; $4712: $7c
	halt                                             ; $4713: $76
	inc a                                            ; $4714: $3c
	ld e, a                                          ; $4715: $5f
	and $e7                                          ; $4716: $e6 $e7
	sbc $fd                                          ; $4718: $de $fd
	ld a, e                                          ; $471a: $7b
	sbc d                                            ; $471b: $9a
	ld a, e                                          ; $471c: $7b
	sbc b                                            ; $471d: $98
	push af                                          ; $471e: $f5
	ld [hl], a                                       ; $471f: $77
	db $d3                                           ; $4720: $d3
	ld l, a                                          ; $4721: $6f
	call z, $288f                                    ; $4722: $cc $8f $28
	db $10                                           ; $4725: $10
	ld [de], a                                       ; $4726: $12
	inc a                                            ; $4727: $3c
	ccf                                              ; $4728: $3f

jr_04f_4729:
	ld h, [hl]                                       ; $4729: $66
	ld e, h                                          ; $472a: $5c
	rst $38                                          ; $472b: $ff
	rst SubAFromBC                                          ; $472c: $e7
	reti                                             ; $472d: $d9


	ld e, a                                          ; $472e: $5f
	db $fd                                           ; $472f: $fd
	ld [hl], a                                       ; $4730: $77
	db $ec                                           ; $4731: $ec
	sbc b                                            ; $4732: $98
	inc c                                            ; $4733: $0c
	ei                                               ; $4734: $fb
	rst SubAFromDE                                          ; $4735: $df
	add b                                            ; $4736: $80
	sbc [hl]                                         ; $4737: $9e
	ret nz                                           ; $4738: $c0

	ld l, e                                          ; $4739: $6b
	call z, $0886                                    ; $473a: $cc $86 $08
	dec c                                            ; $473d: $0d
	dec [hl]                                         ; $473e: $35
	cpl                                              ; $473f: $2f
	rst SubAFromDE                                          ; $4740: $df
	ccf                                              ; $4741: $3f
	ld [hl], d                                       ; $4742: $72
	rst $38                                          ; $4743: $ff
	ld l, d                                          ; $4744: $6a
	rst SubAFromDE                                          ; $4745: $df
	reti                                             ; $4746: $d9


	rrca                                             ; $4747: $0f
	rlca                                             ; $4748: $07
	add hl, sp                                       ; $4749: $39
	add hl, sp                                       ; $474a: $39
	scf                                              ; $474b: $37
	add b                                            ; $474c: $80
	nop                                              ; $474d: $00
	ld b, b                                          ; $474e: $40
	add b                                            ; $474f: $80
	ldh [$e0], a                                     ; $4750: $e0 $e0
	ret nz                                           ; $4752: $c0

	ld h, b                                          ; $4753: $60
	ret nz                                           ; $4754: $c0

	ld a, e                                          ; $4755: $7b
	pop hl                                           ; $4756: $e1
	ld a, a                                          ; $4757: $7f
	call c, $fe7f                                    ; $4758: $dc $7f $fe
	adc b                                            ; $475b: $88
	ld c, $04                                        ; $475c: $0e $04
	dec bc                                           ; $475e: $0b
	ld b, $05                                        ; $475f: $06 $05
	ld [bc], a                                       ; $4761: $02
	dec sp                                           ; $4762: $3b
	rlca                                             ; $4763: $07
	dec e                                            ; $4764: $1d
	ccf                                              ; $4765: $3f
	ld [bc], a                                       ; $4766: $02
	ld bc, $0305                                     ; $4767: $01 $05 $03
	ld e, $3f                                        ; $476a: $1e $3f
	jr jr_04f_476e                                   ; $476c: $18 $00

jr_04f_476e:
	inc [hl]                                         ; $476e: $34
	jr jr_04f_4729                                   ; $476f: $18 $b8

	ld l, h                                          ; $4771: $6c
	ld l, h                                          ; $4772: $6c
	ld l, a                                          ; $4773: $6f
	pop bc                                           ; $4774: $c1
	ld [hl], a                                       ; $4775: $77
	cp d                                             ; $4776: $ba
	ldh a, [c]                                       ; $4777: $f2
	ld [hl], a                                       ; $4778: $77
	call z, $fe57                                    ; $4779: $cc $57 $fe
	sub d                                            ; $477c: $92
	ld a, a                                          ; $477d: $7f
	nop                                              ; $477e: $00

Call_04f_477f:
	ld a, a                                          ; $477f: $7f
	nop                                              ; $4780: $00
	ld b, b                                          ; $4781: $40
	nop                                              ; $4782: $00
	nop                                              ; $4783: $00
	ld a, a                                          ; $4784: $7f
	ld a, a                                          ; $4785: $7f
	ccf                                              ; $4786: $3f
	ld a, a                                          ; $4787: $7f
	ccf                                              ; $4788: $3f
	ccf                                              ; $4789: $3f
	ld a, e                                          ; $478a: $7b
	ld a, [$fb9b]                                    ; $478b: $fa $9b $fb
	rst $38                                          ; $478e: $ff
	push af                                          ; $478f: $f5
	rst $38                                          ; $4790: $ff
	ld [hl], a                                       ; $4791: $77
	db $fc                                           ; $4792: $fc
	sbc [hl]                                         ; $4793: $9e
	db $eb                                           ; $4794: $eb
	ld [hl], e                                       ; $4795: $73
	db $fc                                           ; $4796: $fc
	sbc [hl]                                         ; $4797: $9e
	push de                                          ; $4798: $d5
	ld [hl-], a                                      ; $4799: $32
	ret nz                                           ; $479a: $c0

	sbc [hl]                                         ; $479b: $9e
	add c                                            ; $479c: $81
	ld [hl], e                                       ; $479d: $73
	db $fd                                           ; $479e: $fd
	db $db                                           ; $479f: $db
	add b                                            ; $47a0: $80
	sub h                                            ; $47a1: $94
	ld d, a                                          ; $47a2: $57
	ld [hl], l                                       ; $47a3: $75
	ld [hl], a                                       ; $47a4: $77
	push de                                          ; $47a5: $d5
	pop af                                           ; $47a6: $f1
	sub a                                            ; $47a7: $97
	or e                                             ; $47a8: $b3
	ld [hl], $37                                     ; $47a9: $36 $37
	rla                                              ; $47ab: $17
	ld [bc], a                                       ; $47ac: $02
	db $fc                                           ; $47ad: $fc
	sub l                                            ; $47ae: $95
	ld h, b                                          ; $47af: $60
	or b                                             ; $47b0: $b0
	and b                                            ; $47b1: $a0
	ldh a, [$50]                                     ; $47b2: $f0 $50
	and b                                            ; $47b4: $a0
	jr c, @-$02                                      ; $47b5: $38 $fc

	db $f4                                           ; $47b7: $f4
	adc h                                            ; $47b8: $8c
	ei                                               ; $47b9: $fb
	sbc c                                            ; $47ba: $99
	inc c                                            ; $47bb: $0c
	ld b, $18                                        ; $47bc: $06 $18
	inc c                                            ; $47be: $0c
	jr z, @+$12                                      ; $47bf: $28 $10

	rst FarCall                                          ; $47c1: $f7
	sbc c                                            ; $47c2: $99
	adc b                                            ; $47c3: $88
	call c, $ce85                                    ; $47c4: $dc $85 $ce
	add d                                            ; $47c7: $82
	rst JumpTable                                          ; $47c8: $c7
	ld [hl], a                                       ; $47c9: $77
	add l                                            ; $47ca: $85
	db $eb                                           ; $47cb: $eb
	sub e                                            ; $47cc: $93
	db $fc                                           ; $47cd: $fc
	add $54                                          ; $47ce: $c6 $54
	xor $7c                                          ; $47d0: $ee $7c
	cp $a2                                           ; $47d2: $fe $a2
	ld h, [hl]                                       ; $47d4: $66
	push bc                                          ; $47d5: $c5
	jp $8142                                         ; $47d6: $c3 $42 $81


	push af                                          ; $47d9: $f5
	ld c, [hl]                                       ; $47da: $4e
	cp l                                             ; $47db: $bd
	ld a, a                                          ; $47dc: $7f
	ld a, b                                          ; $47dd: $78
	ld a, a                                          ; $47de: $7f
	ld [de], a                                       ; $47df: $12
	ei                                               ; $47e0: $fb
	sub [hl]                                         ; $47e1: $96
	db $10                                           ; $47e2: $10
	ld a, b                                          ; $47e3: $78
	ld d, b                                          ; $47e4: $50
	jr c, @+$3e                                      ; $47e5: $38 $3c

	ld l, h                                          ; $47e7: $6c
	ld h, e                                          ; $47e8: $63
	rst JumpTable                                          ; $47e9: $c7
	add d                                            ; $47ea: $82
	ld c, e                                          ; $47eb: $4b
	jp nc, $3d7e                                     ; $47ec: $d2 $7e $3d

	sbc [hl]                                         ; $47ef: $9e
	ldh [$fc], a                                     ; $47f0: $e0 $fc
	sub h                                            ; $47f2: $94
	ccf                                              ; $47f3: $3f
	ld sp, $3b15                                     ; $47f4: $31 $15 $3b
	rra                                              ; $47f7: $1f
	ccf                                              ; $47f8: $3f
	jr nc, jr_04f_4814                               ; $47f9: $30 $19

	ld hl, $6070                                     ; $47fb: $21 $70 $60
	ld h, e                                          ; $47fe: $63
	or a                                             ; $47ff: $b7
	ld [hl], a                                       ; $4800: $77
	or h                                             ; $4801: $b4
	ld a, a                                          ; $4802: $7f
	add b                                            ; $4803: $80
	ld l, a                                          ; $4804: $6f
	ld a, a                                          ; $4805: $7f
	sub [hl]                                         ; $4806: $96
	ccf                                              ; $4807: $3f
	inc b                                            ; $4808: $04
	inc c                                            ; $4809: $0c
	rlca                                             ; $480a: $07
	scf                                              ; $480b: $37
	ld c, $1a                                        ; $480c: $0e $1a
	inc a                                            ; $480e: $3c
	ld [$5c6b], sp                                   ; $480f: $08 $6b $5c
	ld a, [hl]                                       ; $4812: $7e
	inc h                                            ; $4813: $24

jr_04f_4814:
	ld a, [hl]                                       ; $4814: $7e
	call nz, $3698                                   ; $4815: $c4 $98 $36
	ld l, h                                          ; $4818: $6c
	inc e                                            ; $4819: $1c
	ld a, $17                                        ; $481a: $3e $17
	ld c, $06                                        ; $481c: $0e $06
	db $ec                                           ; $481e: $ec
	ld b, [hl]                                       ; $481f: $46
	ret nz                                           ; $4820: $c0

	halt                                             ; $4821: $76
	call z, $fc7f                                    ; $4822: $cc $7f $fc
	sub l                                            ; $4825: $95
	ld e, a                                          ; $4826: $5f
	ccf                                              ; $4827: $3f
	cpl                                              ; $4828: $2f
	ld a, a                                          ; $4829: $7f
	ld d, a                                          ; $482a: $57
	ccf                                              ; $482b: $3f
	dec hl                                           ; $482c: $2b
	ld a, a                                          ; $482d: $7f
	rla                                              ; $482e: $17
	ld a, a                                          ; $482f: $7f
	halt                                             ; $4830: $76
	call z, $ab9e                                    ; $4831: $cc $9e $ab
	ld h, e                                          ; $4834: $63
	db $fc                                           ; $4835: $fc
	sbc [hl]                                         ; $4836: $9e
	ld d, l                                          ; $4837: $55
	ld [hl], d                                       ; $4838: $72
	ret nz                                           ; $4839: $c0

	db $fc                                           ; $483a: $fc
	sbc $ff                                          ; $483b: $de $ff
	sbc [hl]                                         ; $483d: $9e
	xor d                                            ; $483e: $aa
	ld a, e                                          ; $483f: $7b
	ldh a, [$79]                                     ; $4840: $f0 $79
	ld a, [hl-]                                      ; $4842: $3a
	ld [hl], c                                       ; $4843: $71
	jr c, @+$79                                      ; $4844: $38 $77

	ldh a, [$9c]                                     ; $4846: $f0 $9c
	or d                                             ; $4848: $b2
	rst $38                                          ; $4849: $ff
	ld [hl], l                                       ; $484a: $75
	ld d, e                                          ; $484b: $53
	ldh a, [rBGP]                                    ; $484c: $f0 $47
	ldh [$9e], a                                     ; $484e: $e0 $9e
	and b                                            ; $4850: $a0
	ld a, e                                          ; $4851: $7b
	db $f4                                           ; $4852: $f4
	ld d, a                                          ; $4853: $57
	ldh a, [$7f]                                     ; $4854: $f0 $7f
	db $fc                                           ; $4856: $fc
	sbc l                                            ; $4857: $9d
	ld [bc], a                                       ; $4858: $02
	db $fd                                           ; $4859: $fd
	ld d, a                                          ; $485a: $57
	ldh a, [$9c]                                     ; $485b: $f0 $9c
	ld d, l                                          ; $485d: $55
	xor d                                            ; $485e: $aa
	xor d                                            ; $485f: $aa
	ld a, e                                          ; $4860: $7b
	rst GetHLinHL                                          ; $4861: $cf
	inc bc                                           ; $4862: $03
	ldh a, [$03]                                     ; $4863: $f0 $03
	ldh a, [$03]                                     ; $4865: $f0 $03
	ldh a, [$2b]                                     ; $4867: $f0 $2b
	ldh a, [$9d]                                     ; $4869: $f0 $9d
	ld d, b                                          ; $486b: $50
	xor a                                            ; $486c: $af
	ld c, a                                          ; $486d: $4f
	ldh a, [$74]                                     ; $486e: $f0 $74
	ld h, a                                          ; $4870: $67
	ld d, a                                          ; $4871: $57
	ldh a, [$9c]                                     ; $4872: $f0 $9c
	ld a, [bc]                                       ; $4874: $0a
	rst $38                                          ; $4875: $ff
	ld bc, $204b                                     ; $4876: $01 $4b $20
	sbc l                                            ; $4879: $9d
	ld d, a                                          ; $487a: $57
	rst $38                                          ; $487b: $ff
	ld a, d                                          ; $487c: $7a
	ld [$876e], sp                                   ; $487d: $08 $6e $87
	ld l, e                                          ; $4880: $6b
	db $10                                           ; $4881: $10
	ld a, [hl]                                       ; $4882: $7e
	call z, $159c                                    ; $4883: $cc $9c $15
	ld a, a                                          ; $4886: $7f
	ld a, [hl+]                                      ; $4887: $2a
	ld [hl], a                                       ; $4888: $77
	db $fc                                           ; $4889: $fc
	ld a, d                                          ; $488a: $7a
	ret nc                                           ; $488b: $d0

	sbc [hl]                                         ; $488c: $9e
	ld [$f07b], a                                    ; $488d: $ea $7b $f0
	halt                                             ; $4890: $76
	call z, $fc57                                    ; $4891: $cc $57 $fc
	ld [hl], a                                       ; $4894: $77
	call c, $fc57                                    ; $4895: $dc $57 $fc
	halt                                             ; $4898: $76
	call z, $fc5f                                    ; $4899: $cc $5f $fc
	sub [hl]                                         ; $489c: $96
	ld a, l                                          ; $489d: $7d
	rst FarCall                                          ; $489e: $f7
	xor d                                            ; $489f: $aa
	rst $38                                          ; $48a0: $ff
	ld d, h                                          ; $48a1: $54
	rst $38                                          ; $48a2: $ff
	xor b                                            ; $48a3: $a8
	rst $38                                          ; $48a4: $ff
	ld d, b                                          ; $48a5: $50
	ld a, d                                          ; $48a6: $7a
	call nc, Call_04f_409c                           ; $48a7: $d4 $9c $40
	rst $38                                          ; $48aa: $ff
	add b                                            ; $48ab: $80
	ld a, e                                          ; $48ac: $7b
	db $fc                                           ; $48ad: $fc
	ld [hl], a                                       ; $48ae: $77
	ld a, h                                          ; $48af: $7c
	ld [hl], a                                       ; $48b0: $77
	cp $9d                                           ; $48b1: $fe $9d
	ld bc, $77fe                                     ; $48b3: $01 $fe $77
	db $fc                                           ; $48b6: $fc
	ld a, [hl]                                       ; $48b7: $7e
	ret nc                                           ; $48b8: $d0

	sbc e                                            ; $48b9: $9b
	dec b                                            ; $48ba: $05
	ld a, [$d52a]                                    ; $48bb: $fa $2a $d5
	ld [hl], a                                       ; $48be: $77
	ld c, b                                          ; $48bf: $48
	inc bc                                           ; $48c0: $03
	db $fc                                           ; $48c1: $fc
	inc bc                                           ; $48c2: $03
	db $fc                                           ; $48c3: $fc
	ld [hl], a                                       ; $48c4: $77
	db $fc                                           ; $48c5: $fc
	ld a, a                                          ; $48c6: $7f
	and a                                            ; $48c7: $a7
	ld c, a                                          ; $48c8: $4f
	ldh a, [$9d]                                     ; $48c9: $f0 $9d
	xor e                                            ; $48cb: $ab
	ld d, h                                          ; $48cc: $54
	ld c, a                                          ; $48cd: $4f
	ldh a, [$9d]                                     ; $48ce: $f0 $9d
	ld a, [$0305]                                    ; $48d0: $fa $05 $03
	cp h                                             ; $48d3: $bc
	ld c, e                                          ; $48d4: $4b
	db $fc                                           ; $48d5: $fc
	ld a, a                                          ; $48d6: $7f
	ld e, d                                          ; $48d7: $5a
	sub a                                            ; $48d8: $97
	and b                                            ; $48d9: $a0
	ld e, a                                          ; $48da: $5f
	ld d, b                                          ; $48db: $50
	xor a                                            ; $48dc: $af
	xor b                                            ; $48dd: $a8
	ld d, a                                          ; $48de: $57
	ld d, h                                          ; $48df: $54
	xor e                                            ; $48e0: $ab
	ld h, a                                          ; $48e1: $67
	ldh a, [$57]                                     ; $48e2: $f0 $57
	cp $7c                                           ; $48e4: $fe $7c
	ld h, c                                          ; $48e6: $61
	ld a, a                                          ; $48e7: $7f
	adc l                                            ; $48e8: $8d
	sbc b                                            ; $48e9: $98
	rla                                              ; $48ea: $17
	ei                                               ; $48eb: $fb
	ld a, [bc]                                       ; $48ec: $0a
	rst $38                                          ; $48ed: $ff
	rlca                                             ; $48ee: $07
	ei                                               ; $48ef: $fb
	ld [bc], a                                       ; $48f0: $02
	ld l, e                                          ; $48f1: $6b
	db $fc                                           ; $48f2: $fc
	ld b, [hl]                                       ; $48f3: $46
	ldh a, [rPCM12]                                  ; $48f4: $f0 $76
	call z, $fc57                                    ; $48f6: $cc $57 $fc
	ld [bc], a                                       ; $48f9: $02
	ret nz                                           ; $48fa: $c0

	ld a, d                                          ; $48fb: $7a
	call z, $fc6f                                    ; $48fc: $cc $6f $fc

Call_04f_48ff:
	sbc [hl]                                         ; $48ff: $9e
	ld a, h                                          ; $4900: $7c
	ld [hl], e                                       ; $4901: $73
	db $fc                                           ; $4902: $fc
	ld a, [hl]                                       ; $4903: $7e
	call z, $8e4f                                    ; $4904: $cc $4f $8e
	ld a, [hl]                                       ; $4907: $7e
	ret nc                                           ; $4908: $d0

	sbc l                                            ; $4909: $9d
	ld a, [bc]                                       ; $490a: $0a
	push af                                          ; $490b: $f5
	ld [hl], a                                       ; $490c: $77
	db $fc                                           ; $490d: $fc
	sbc l                                            ; $490e: $9d
	dec d                                            ; $490f: $15
	ld [$c876], a                                    ; $4910: $ea $76 $c8
	ld [bc], a                                       ; $4913: $02
	call nz, $f85a                                   ; $4914: $c4 $5a $f8
	ld [hl], a                                       ; $4917: $77
	db $fc                                           ; $4918: $fc
	sbc l                                            ; $4919: $9d
	cp a                                             ; $491a: $bf
	ld b, b                                          ; $491b: $40
	ld l, a                                          ; $491c: $6f
	db $fc                                           ; $491d: $fc
	ld a, a                                          ; $491e: $7f
	or a                                             ; $491f: $b7
	sbc [hl]                                         ; $4920: $9e
	ld a, a                                          ; $4921: $7f
	ld l, e                                          ; $4922: $6b
	and a                                            ; $4923: $a7
	sbc [hl]                                         ; $4924: $9e
	ld e, a                                          ; $4925: $5f
	ld [hl], l                                       ; $4926: $75
	dec sp                                           ; $4927: $3b
	ld e, e                                          ; $4928: $5b
	cp $77                                           ; $4929: $fe $77
	db $e4                                           ; $492b: $e4
	ld c, a                                          ; $492c: $4f
	ldh a, [$79]                                     ; $492d: $f0 $79
	cp h                                             ; $492f: $bc
	ld c, e                                          ; $4930: $4b
	ldh a, [$9b]                                     ; $4931: $f0 $9b
	push de                                          ; $4933: $d5
	ld a, [hl+]                                      ; $4934: $2a
	cp $01                                           ; $4935: $fe $01
	halt                                             ; $4937: $76
	or h                                             ; $4938: $b4
	sbc l                                            ; $4939: $9d
	db $fd                                           ; $493a: $fd
	ld [bc], a                                       ; $493b: $02
	ld b, [hl]                                       ; $493c: $46
	sub b                                            ; $493d: $90
	inc bc                                           ; $493e: $03
	db $fc                                           ; $493f: $fc
	ld a, d                                          ; $4940: $7a
	ret nz                                           ; $4941: $c0

	ld a, [hl]                                       ; $4942: $7e
	call z, Call_04f_409d                            ; $4943: $cc $9d $40
	cp a                                             ; $4946: $bf
	ld [hl], a                                       ; $4947: $77
	db $fc                                           ; $4948: $fc
	ld a, [hl]                                       ; $4949: $7e
	xor b                                            ; $494a: $a8
	ld [hl], a                                       ; $494b: $77
	db $fc                                           ; $494c: $fc
	ld a, a                                          ; $494d: $7f
	cp l                                             ; $494e: $bd
	sbc [hl]                                         ; $494f: $9e
	ld b, $76                                        ; $4950: $06 $76
	ret z                                            ; $4952: $c8

	sub a                                            ; $4953: $97
	ld a, [$fe03]                                    ; $4954: $fa $03 $fe
	rlca                                             ; $4957: $07
	ld a, [$fb06]                                    ; $4958: $fa $06 $fb
	ld b, $72                                        ; $495b: $06 $72
	ret nz                                           ; $495d: $c0

	ld a, l                                          ; $495e: $7d
	sub h                                            ; $495f: $94
	sbc [hl]                                         ; $4960: $9e
	dec d                                            ; $4961: $15
	ld a, c                                          ; $4962: $79
	ld h, h                                          ; $4963: $64
	ld [hl], a                                       ; $4964: $77
	db $fc                                           ; $4965: $fc
	sbc [hl]                                         ; $4966: $9e
	dec b                                            ; $4967: $05
	ld [hl-], a                                      ; $4968: $32
	ret nz                                           ; $4969: $c0

	sub h                                            ; $496a: $94
	cp e                                             ; $496b: $bb
	rst SubAFromDE                                          ; $496c: $df
	ld l, l                                          ; $496d: $6d
	rst SubAFromBC                                          ; $496e: $e7
	or e                                             ; $496f: $b3
	rst AddAOntoHL                                          ; $4970: $ef
	push af                                          ; $4971: $f5
	ld a, a                                          ; $4972: $7f
	ld l, a                                          ; $4973: $6f
	rst $38                                          ; $4974: $ff
	or a                                             ; $4975: $b7
	ld a, d                                          ; $4976: $7a
	call z, $987d                                    ; $4977: $cc $7d $98
	sub [hl]                                         ; $497a: $96
	jp z, $0d9f                                      ; $497b: $ca $9f $0d

	sbc a                                            ; $497e: $9f
	ld a, [de]                                       ; $497f: $1a
	rst $38                                          ; $4980: $ff
	db $ed                                           ; $4981: $ed
	rst $38                                          ; $4982: $ff
	sub $7b                                          ; $4983: $d6 $7b
	db $fc                                           ; $4985: $fc
	sbc [hl]                                         ; $4986: $9e
	or b                                             ; $4987: $b0
	ld a, d                                          ; $4988: $7a
	call z, $fc7f                                    ; $4989: $cc $7f $fc
	sub l                                            ; $498c: $95
	ld a, b                                          ; $498d: $78
	rst FarCall                                          ; $498e: $f7
	or [hl]                                          ; $498f: $b6
	rst $38                                          ; $4990: $ff
	ld a, [hl]                                       ; $4991: $7e
	push af                                          ; $4992: $f5
	or l                                             ; $4993: $b5
	ld sp, hl                                        ; $4994: $f9
	ccf                                              ; $4995: $3f
	rst FarCall                                          ; $4996: $f7
	ld e, l                                          ; $4997: $5d
	sub b                                            ; $4998: $90
	ld a, l                                          ; $4999: $7d
	inc d                                            ; $499a: $14
	ld a, a                                          ; $499b: $7f
	sbc h                                            ; $499c: $9c
	sbc l                                            ; $499d: $9d
	add d                                            ; $499e: $82
	cp $5f                                           ; $499f: $fe $5f
	ld [hl], h                                       ; $49a1: $74
	ld a, [hl]                                       ; $49a2: $7e

jr_04f_49a3:
	call nz, $387f                                   ; $49a3: $c4 $7f $38
	sbc l                                            ; $49a6: $9d
	ld a, [hl-]                                      ; $49a7: $3a
	push bc                                          ; $49a8: $c5
	ld b, a                                          ; $49a9: $47
	ld h, b                                          ; $49aa: $60
	sbc c                                            ; $49ab: $99
	ld d, a                                          ; $49ac: $57
	xor b                                            ; $49ad: $a8
	xor e                                            ; $49ae: $ab
	ld d, h                                          ; $49af: $54
	ld e, a                                          ; $49b0: $5f
	and b                                            ; $49b1: $a0
	ld [hl], a                                       ; $49b2: $77
	ld hl, sp+$7e                                    ; $49b3: $f8 $7e
	ret c                                            ; $49b5: $d8

	ld a, a                                          ; $49b6: $7f
	ret                                              ; $49b7: $c9


	sbc l                                            ; $49b8: $9d

jr_04f_49b9:
	xor a                                            ; $49b9: $af
	ld d, b                                          ; $49ba: $50
	ld c, d                                          ; $49bb: $4a
	add c                                            ; $49bc: $81
	adc [hl]                                         ; $49bd: $8e
	nop                                              ; $49be: $00
	add a                                            ; $49bf: $87
	nop                                              ; $49c0: $00
	add e                                            ; $49c1: $83
	inc b                                            ; $49c2: $04
	ld c, l                                          ; $49c3: $4d
	add [hl]                                         ; $49c4: $86
	add l                                            ; $49c5: $85
	cp $fd                                           ; $49c6: $fe $fd
	or [hl]                                          ; $49c8: $b6
	add l                                            ; $49c9: $85
	adc $ff                                          ; $49ca: $ce $ff
	call z, $fc7f                                    ; $49cc: $cc $7f $fc
	ld b, a                                          ; $49cf: $47
	ldh [$5b], a                                     ; $49d0: $e0 $5b
	cp $8a                                           ; $49d2: $fe $8a
	ld bc, $0ff1                                     ; $49d4: $01 $f1 $0f
	adc $31                                          ; $49d7: $ce $31
	rst FarCall                                          ; $49d9: $f7
	jr jr_04f_49a3                                   ; $49da: $18 $c7

	jr z, jr_04f_49b9                                ; $49dc: $28 $db

	inc l                                            ; $49de: $2c
	cp a                                             ; $49df: $bf
	ld e, h                                          ; $49e0: $5c
	ld a, a                                          ; $49e1: $7f
	db $ec                                           ; $49e2: $ec
	cp a                                             ; $49e3: $bf
	db $fc                                           ; $49e4: $fc
	sbc c                                            ; $49e5: $99
	cp $7e                                           ; $49e6: $fe $7e
	add c                                            ; $49e8: $81
	ld l, a                                          ; $49e9: $6f
	db $e4                                           ; $49ea: $e4
	ld a, e                                          ; $49eb: $7b
	ld [hl], e                                       ; $49ec: $73
	ld a, e                                          ; $49ed: $7b
	ld a, [$c06e]                                    ; $49ee: $fa $6e $c0
	sub l                                            ; $49f1: $95
	ld [$7d15], a                                    ; $49f2: $ea $15 $7d
	add d                                            ; $49f5: $82
	xor d                                            ; $49f6: $aa
	ld d, l                                          ; $49f7: $55
	push af                                          ; $49f8: $f5
	ld a, [bc]                                       ; $49f9: $0a
	ld [$7715], a                                    ; $49fa: $ea $15 $77
	db $f4                                           ; $49fd: $f4
	ld h, a                                          ; $49fe: $67
	ld a, b                                          ; $49ff: $78
	sub a                                            ; $4a00: $97
	sub l                                            ; $4a01: $95
	ld [$354a], a                                    ; $4a02: $ea $4a $35
	dec d                                            ; $4a05: $15
	ld a, [hl+]                                      ; $4a06: $2a
	ld a, [$67e5]                                    ; $4a07: $fa $e5 $67
	ldh a, [$98]                                     ; $4a0a: $f0 $98
	ld e, l                                          ; $4a0c: $5d
	xor [hl]                                         ; $4a0d: $ae
	xor d                                            ; $4a0e: $aa
	ld d, c                                          ; $4a0f: $51
	ld b, [hl]                                       ; $4a10: $46
	or e                                             ; $4a11: $b3
	cp [hl]                                          ; $4a12: $be
	ld a, c                                          ; $4a13: $79
	ld [hl], h                                       ; $4a14: $74
	ld l, l                                          ; $4a15: $6d
	ld [hl], b                                       ; $4a16: $70
	sub e                                            ; $4a17: $93
	ld d, c                                          ; $4a18: $51
	xor a                                            ; $4a19: $af
	xor e                                            ; $4a1a: $ab
	ld d, a                                          ; $4a1b: $57
	ld d, [hl]                                       ; $4a1c: $56
	xor d                                            ; $4a1d: $aa
	ld a, [hl+]                                      ; $4a1e: $2a
	rst SubAFromHL                                          ; $4a1f: $d7
	ld b, $fb                                        ; $4a20: $06 $fb
	rlca                                             ; $4a22: $07
	ld a, [$fe77]                                    ; $4a23: $fa $77 $fe
	sub a                                            ; $4a26: $97
	add a                                            ; $4a27: $87
	ld a, [$fac7]                                    ; $4a28: $fa $c7 $fa
	ld b, a                                          ; $4a2b: $47
	ld a, d                                          ; $4a2c: $7a
	ld b, a                                          ; $4a2d: $47
	ld a, [$cc76]                                    ; $4a2e: $fa $76 $cc
	ld a, a                                          ; $4a31: $7f
	xor c                                            ; $4a32: $a9
	ld a, a                                          ; $4a33: $7f
	db $fc                                           ; $4a34: $fc
	sbc b                                            ; $4a35: $98
	ld c, $ff                                        ; $4a36: $0e $ff
	rla                                              ; $4a38: $17
	db $e3                                           ; $4a39: $e3
	ld e, $f7                                        ; $4a3a: $1e $f7
	ccf                                              ; $4a3c: $3f
	ld c, d                                          ; $4a3d: $4a
	call nz, $4180                                   ; $4a3e: $c4 $80 $41
	rst $38                                          ; $4a41: $ff
	rst $38                                          ; $4a42: $ff
	ld a, a                                          ; $4a43: $7f
	or l                                             ; $4a44: $b5
	rst $38                                          ; $4a45: $ff
	ld a, [hl]                                       ; $4a46: $7e
	rst $38                                          ; $4a47: $ff
	cp l                                             ; $4a48: $bd
	ld a, a                                          ; $4a49: $7f
	sbc $3f                                          ; $4a4a: $de $3f
	rst $38                                          ; $4a4c: $ff
	rst $38                                          ; $4a4d: $ff
	ld e, $ff                                        ; $4a4e: $1e $ff
	inc a                                            ; $4a50: $3c
	rst $38                                          ; $4a51: $ff
	cp d                                             ; $4a52: $ba
	rst $38                                          ; $4a53: $ff
	ld l, l                                          ; $4a54: $6d
	rst $38                                          ; $4a55: $ff
	cp d                                             ; $4a56: $ba
	ld a, a                                          ; $4a57: $7f
	db $fd                                           ; $4a58: $fd
	ld a, a                                          ; $4a59: $7f
	cp b                                             ; $4a5a: $b8
	ld a, a                                          ; $4a5b: $7f
	rst $38                                          ; $4a5c: $ff
	rst $38                                          ; $4a5d: $ff
	cp b                                             ; $4a5e: $b8
	sub a                                            ; $4a5f: $97
	rst $38                                          ; $4a60: $ff
	jr z, @+$01                                      ; $4a61: $28 $ff

	ld a, [$fd37]                                    ; $4a63: $fa $37 $fd
	scf                                              ; $4a66: $37
	ld sp, hl                                        ; $4a67: $f9
	ld [hl], e                                       ; $4a68: $73
	cp $85                                           ; $4a69: $fe $85
	ld hl, sp-$01                                    ; $4a6b: $f8 $ff
	ei                                               ; $4a6d: $fb
	scf                                              ; $4a6e: $37
	ld hl, sp+$01                                    ; $4a6f: $f8 $01
	db $fc                                           ; $4a71: $fc
	add e                                            ; $4a72: $83
	ld sp, hl                                        ; $4a73: $f9
	add a                                            ; $4a74: $87
	ld sp, hl                                        ; $4a75: $f9
	ld b, $f8                                        ; $4a76: $06 $f8
	rlca                                             ; $4a78: $07
	db $fc                                           ; $4a79: $fc
	inc bc                                           ; $4a7a: $03
	db $fc                                           ; $4a7b: $fc
	rst $38                                          ; $4a7c: $ff
	ld a, [hl]                                       ; $4a7d: $7e

Jump_04f_4a7e:
	add e                                            ; $4a7e: $83
	add b                                            ; $4a7f: $80
	inc bc                                           ; $4a80: $03
	push af                                          ; $4a81: $f5
	adc d                                            ; $4a82: $8a
	sbc d                                            ; $4a83: $9a
	add l                                            ; $4a84: $85
	ld a, e                                          ; $4a85: $7b
	ld [hl], b                                       ; $4a86: $70
	rst SubAFromDE                                          ; $4a87: $df
	push de                                          ; $4a88: $d5
	ld a, [hl]                                       ; $4a89: $7e
	add a                                            ; $4a8a: $87
	sbc d                                            ; $4a8b: $9a
	rst $38                                          ; $4a8c: $ff
	ret nz                                           ; $4a8d: $c0

	rst $38                                          ; $4a8e: $ff
	rst $38                                          ; $4a8f: $ff
	add b                                            ; $4a90: $80
	ld e, b                                          ; $4a91: $58
	add h                                            ; $4a92: $84
	ld a, e                                          ; $4a93: $7b
	dec l                                            ; $4a94: $2d
	ld e, l                                          ; $4a95: $5d
	ldh a, [$7b]                                     ; $4a96: $f0 $7b
	db $f4                                           ; $4a98: $f4
	ld [hl], e                                       ; $4a99: $73
	ldh a, [$7f]                                     ; $4a9a: $f0 $7f
	cp $7e                                           ; $4a9c: $fe $7e
	cp b                                             ; $4a9e: $b8
	ld a, [hl]                                       ; $4a9f: $7e
	or h                                             ; $4aa0: $b4
	ld e, a                                          ; $4aa1: $5f
	ldh a, [$7e]                                     ; $4aa2: $f0 $7e
	adc $98                                          ; $4aa4: $ce $98
	ei                                               ; $4aa6: $fb
	ld a, h                                          ; $4aa7: $7c
	ei                                               ; $4aa8: $fb
	ld a, h                                          ; $4aa9: $7c
	ld a, [$787d]                                    ; $4aaa: $fa $7d $78
	sbc $ff                                          ; $4aad: $de $ff
	ld a, a                                          ; $4aaf: $7f
	db $fc                                           ; $4ab0: $fc
	sbc l                                            ; $4ab1: $9d
	adc $78                                          ; $4ab2: $ce $78
	ld l, [hl]                                       ; $4ab4: $6e
	ldh a, [$67]                                     ; $4ab5: $f0 $67
	ldh [$8b], a                                     ; $4ab7: $e0 $8b
	xor d                                            ; $4ab9: $aa
	nop                                              ; $4aba: $00
	ret nz                                           ; $4abb: $c0

	ld a, a                                          ; $4abc: $7f
	push de                                          ; $4abd: $d5
	ld l, d                                          ; $4abe: $6a
	jp z, $d575                                      ; $4abf: $ca $75 $d5

	ld l, d                                          ; $4ac2: $6a
	ld c, d                                          ; $4ac3: $4a
	push af                                          ; $4ac4: $f5
	push de                                          ; $4ac5: $d5
	ld [$f54a], a                                    ; $4ac6: $ea $4a $f5
	cp a                                             ; $4ac9: $bf
	ld a, a                                          ; $4aca: $7f
	nop                                              ; $4acb: $00
	rst $38                                          ; $4acc: $ff
	ld [hl], h                                       ; $4acd: $74
	add [hl]                                         ; $4ace: $86
	ld h, a                                          ; $4acf: $67
	db $fc                                           ; $4ad0: $fc
	sbc $ff                                          ; $4ad1: $de $ff
	sbc d                                            ; $4ad3: $9a
	add b                                            ; $4ad4: $80
	cp $81                                           ; $4ad5: $fe $81
	push af                                          ; $4ad7: $f5
	adc d                                            ; $4ad8: $8a
	ld l, a                                          ; $4ad9: $6f
	add b                                            ; $4ada: $80
	ld a, l                                          ; $4adb: $7d
	dec a                                            ; $4adc: $3d
	ld a, l                                          ; $4add: $7d
	ld a, [hl-]                                      ; $4ade: $3a
	sbc h                                            ; $4adf: $9c
	ld d, l                                          ; $4ae0: $55
	xor e                                            ; $4ae1: $ab
	xor e                                            ; $4ae2: $ab
	ld a, b                                          ; $4ae3: $78
	ld h, h                                          ; $4ae4: $64
	add b                                            ; $4ae5: $80
	xor c                                            ; $4ae6: $a9
	ld d, a                                          ; $4ae7: $57
	ld d, a                                          ; $4ae8: $57
	xor e                                            ; $4ae9: $ab
	rst $38                                          ; $4aea: $ff
	rst $38                                          ; $4aeb: $ff
	inc bc                                           ; $4aec: $03
	rst $38                                          ; $4aed: $ff
	cp $01                                           ; $4aee: $fe $01
	push af                                          ; $4af0: $f5
	ld a, [$f57a]                                    ; $4af1: $fa $7a $f5
	ld [hl], l                                       ; $4af4: $75
	ld a, [$fde2]                                    ; $4af5: $fa $e2 $fd
	push af                                          ; $4af8: $f5
	jp c, rIE                                      ; $4af9: $da $ff $ff

	ret nc                                           ; $4afc: $d0

	rst $38                                          ; $4afd: $ff
	ccf                                              ; $4afe: $3f
	ret nz                                           ; $4aff: $c0

	ld a, a                                          ; $4b00: $7f
	cp a                                             ; $4b01: $bf
	sub a                                            ; $4b02: $97
	ld a, a                                          ; $4b03: $7f
	ld c, a                                          ; $4b04: $4f
	add b                                            ; $4b05: $80
	cp [hl]                                          ; $4b06: $be
	xor [hl]                                         ; $4b07: $ae
	ld a, a                                          ; $4b08: $7f
	ld [hl], $ff                                     ; $4b09: $36 $ff
	rst AddAOntoHL                                          ; $4b0b: $ef
	rst $38                                          ; $4b0c: $ff
	jr c, @+$01                                      ; $4b0d: $38 $ff

	rst FarCall                                          ; $4b0f: $f7

jr_04f_4b10:
	jr jr_04f_4b10                                   ; $4b10: $18 $fe

	xor e                                            ; $4b12: $ab
	db $fd                                           ; $4b13: $fd
	ld d, [hl]                                       ; $4b14: $56
	rst $38                                          ; $4b15: $ff
	xor e                                            ; $4b16: $ab
	cp $57                                           ; $4b17: $fe $57
	db $fc                                           ; $4b19: $fc
	xor a                                            ; $4b1a: $af
	db $fc                                           ; $4b1b: $fc
	rst $38                                          ; $4b1c: $ff
	rst $38                                          ; $4b1d: $ff
	inc b                                            ; $4b1e: $04
	rst $38                                          ; $4b1f: $ff
	inc b                                            ; $4b20: $04
	dec de                                           ; $4b21: $1b
	ldh [c], a                                       ; $4b22: $e2
	sbc e                                            ; $4b23: $9b
	ld h, d                                          ; $4b24: $62
	sub a                                            ; $4b25: $97
	ei                                               ; $4b26: $fb
	and d                                            ; $4b27: $a2
	sbc e                                            ; $4b28: $9b
	ld h, d                                          ; $4b29: $62
	ld a, e                                          ; $4b2a: $7b
	ldh [c], a                                       ; $4b2b: $e2
	ld a, a                                          ; $4b2c: $7f
	rst SubAFromDE                                          ; $4b2d: $df
	ld a, c                                          ; $4b2e: $79
	or e                                             ; $4b2f: $b3
	adc l                                            ; $4b30: $8d
	ret nc                                           ; $4b31: $d0

	cp a                                             ; $4b32: $bf
	rst $38                                          ; $4b33: $ff
	rst SubAFromHL                                          ; $4b34: $d7
	ccf                                              ; $4b35: $3f
	rst SubAFromDE                                          ; $4b36: $df
	ccf                                              ; $4b37: $3f
	rst $38                                          ; $4b38: $ff
	ccf                                              ; $4b39: $3f
	cp [hl]                                          ; $4b3a: $be
	rst $38                                          ; $4b3b: $ff
	cp l                                             ; $4b3c: $bd
	cp $7b                                           ; $4b3d: $fe $7b
	cp l                                             ; $4b3f: $bd
	inc a                                            ; $4b40: $3c
	rst $38                                          ; $4b41: $ff
	add e                                            ; $4b42: $83
	ld a, d                                          ; $4b43: $7a
	call z, $fc7f                                    ; $4b44: $cc $7f $fc
	sbc h                                            ; $4b47: $9c
	ld a, $c3                                        ; $4b48: $3e $c3
	add d                                            ; $4b4a: $82
	sbc $ff                                          ; $4b4b: $de $ff
	ld a, a                                          ; $4b4d: $7f
	db $fc                                           ; $4b4e: $fc
	ld a, a                                          ; $4b4f: $7f
	ld [hl], d                                       ; $4b50: $72
	ld a, a                                          ; $4b51: $7f
	xor $9d                                          ; $4b52: $ee $9d
	inc e                                            ; $4b54: $1c
	di                                               ; $4b55: $f3
	ld [hl], a                                       ; $4b56: $77
	jr c, jr_04f_4bc8                                ; $4b57: $38 $6f

	inc h                                            ; $4b59: $24
	ld a, a                                          ; $4b5a: $7f
	db $fd                                           ; $4b5b: $fd
	sbc e                                            ; $4b5c: $9b
	ld h, h                                          ; $4b5d: $64
	rst $38                                          ; $4b5e: $ff
	rlca                                             ; $4b5f: $07
	ld hl, sp+$6f                                    ; $4b60: $f8 $6f
	ldh a, [$7b]                                     ; $4b62: $f0 $7b
	dec a                                            ; $4b64: $3d
	ld a, e                                          ; $4b65: $7b
	ld a, [$2b7e]                                    ; $4b66: $fa $7e $2b
	sub a                                            ; $4b69: $97
	db $fc                                           ; $4b6a: $fc
	ld bc, $ff00                                     ; $4b6b: $01 $00 $ff
	pop de                                           ; $4b6e: $d1
	ld b, $1f                                        ; $4b6f: $06 $1f
	ldh [$6f], a                                     ; $4b71: $e0 $6f
	ldh a, [hDisp1_WY]                                     ; $4b73: $f0 $95
	add hl, bc                                       ; $4b75: $09
	db $f4                                           ; $4b76: $f4
	push af                                          ; $4b77: $f5
	nop                                              ; $4b78: $00
	inc a                                            ; $4b79: $3c
	pop bc                                           ; $4b7a: $c1
	ld d, d                                          ; $4b7b: $52
	ld bc, $07f8                                     ; $4b7c: $01 $f8 $07
	ld l, e                                          ; $4b7f: $6b
	ldh [$99], a                                     ; $4b80: $e0 $99
	ld a, a                                          ; $4b82: $7f
	ld l, d                                          ; $4b83: $6a
	nop                                              ; $4b84: $00
	ld a, a                                          ; $4b85: $7f
	nop                                              ; $4b86: $00
	xor d                                            ; $4b87: $aa
	ld [hl], a                                       ; $4b88: $77
	inc c                                            ; $4b89: $0c
	ld [hl], e                                       ; $4b8a: $73
	ldh a, [$7f]                                     ; $4b8b: $f0 $7f
	jp nz, $f467                                     ; $4b8d: $c2 $67 $f4

	ld a, a                                          ; $4b90: $7f
	db $fc                                           ; $4b91: $fc
	ld a, a                                          ; $4b92: $7f
	sbc $77                                          ; $4b93: $de $77
	or [hl]                                          ; $4b95: $b6
	ld h, a                                          ; $4b96: $67
	ldh a, [$9c]                                     ; $4b97: $f0 $9c
	add b                                            ; $4b99: $80
	nop                                              ; $4b9a: $00
	ld d, h                                          ; $4b9b: $54
	ld h, e                                          ; $4b9c: $63
	ldh a, [$9e]                                     ; $4b9d: $f0 $9e
	and b                                            ; $4b9f: $a0
	ld [hl], a                                       ; $4ba0: $77
	db $e4                                           ; $4ba1: $e4
	db $fd                                           ; $4ba2: $fd
	sub h                                            ; $4ba3: $94
	rst $38                                          ; $4ba4: $ff
	ld c, e                                          ; $4ba5: $4b
	db $fc                                           ; $4ba6: $fc
	ld a, d                                          ; $4ba7: $7a
	call z, Call_04f_48ff                            ; $4ba8: $cc $ff $48
	ld c, b                                          ; $4bab: $48
	call z, $cc7b                                    ; $4bac: $cc $7b $cc
	ld l, a                                          ; $4baf: $6f
	ldh a, [rOCPD]                                   ; $4bb0: $f0 $6b
	ret z                                            ; $4bb2: $c8

	sbc l                                            ; $4bb3: $9d
	nop                                              ; $4bb4: $00
	ld d, b                                          ; $4bb5: $50
	ld l, e                                          ; $4bb6: $6b
	ldh [$7f], a                                     ; $4bb7: $e0 $7f
	ldh a, [$9e]                                     ; $4bb9: $f0 $9e
	xor b                                            ; $4bbb: $a8
	ld h, a                                          ; $4bbc: $67
	call nc, $f06b                                   ; $4bbd: $d4 $6b $f0
	sbc [hl]                                         ; $4bc0: $9e
	ld a, [bc]                                       ; $4bc1: $0a
	ld c, e                                          ; $4bc2: $4b
	ldh a, [$73]                                     ; $4bc3: $f0 $73
	adc b                                            ; $4bc5: $88
	sbc l                                            ; $4bc6: $9d
	nop                                              ; $4bc7: $00

jr_04f_4bc8:
	dec b                                            ; $4bc8: $05
	ld d, e                                          ; $4bc9: $53
	ldh a, [$9e]                                     ; $4bca: $f0 $9e
	ld a, [hl+]                                      ; $4bcc: $2a
	ld [hl], e                                       ; $4bcd: $73
	call c, Call_04f_477f                            ; $4bce: $dc $7f $47
	ld a, a                                          ; $4bd1: $7f
	push af                                          ; $4bd2: $f5
	ld a, [hl]                                       ; $4bd3: $7e
	cp [hl]                                          ; $4bd4: $be
	ld l, a                                          ; $4bd5: $6f
	add b                                            ; $4bd6: $80
	sbc [hl]                                         ; $4bd7: $9e
	ld e, a                                          ; $4bd8: $5f
	cp $9e                                           ; $4bd9: $fe $9e
	ld d, a                                          ; $4bdb: $57
	ld [hl], a                                       ; $4bdc: $77
	ld d, b                                          ; $4bdd: $50
	ld a, [hl]                                       ; $4bde: $7e
	db $d3                                           ; $4bdf: $d3
	ld l, e                                          ; $4be0: $6b
	ld [hl], b                                       ; $4be1: $70
	ld a, a                                          ; $4be2: $7f
	call c, $4073                                    ; $4be3: $dc $73 $40
	ld a, e                                          ; $4be6: $7b
	adc $7f                                          ; $4be7: $ce $7f
	inc [hl]                                         ; $4be9: $34
	ld e, a                                          ; $4bea: $5f
	ld b, b                                          ; $4beb: $40
	ld l, a                                          ; $4bec: $6f
	inc b                                            ; $4bed: $04
	ld h, a                                          ; $4bee: $67
	call c, $f067                                    ; $4bef: $dc $67 $f0
	ld a, a                                          ; $4bf2: $7f
	db $fc                                           ; $4bf3: $fc
	sbc l                                            ; $4bf4: $9d
	ldh a, [rIF]                                     ; $4bf5: $f0 $0f
	ld [hl], a                                       ; $4bf7: $77
	db $ec                                           ; $4bf8: $ec
	ld e, a                                          ; $4bf9: $5f
	ldh a, [$66]                                     ; $4bfa: $f0 $66
	ret nc                                           ; $4bfc: $d0

	ld [hl], a                                       ; $4bfd: $77
	push af                                          ; $4bfe: $f5
	sub e                                            ; $4bff: $93
	inc c                                            ; $4c00: $0c
	rst $38                                          ; $4c01: $ff
	db $ed                                           ; $4c02: $ed
	ld e, $ed                                        ; $4c03: $1e $ed
	ld e, $df                                        ; $4c05: $1e $df
	ld a, $30                                        ; $4c07: $3e $30
	rst $38                                          ; $4c09: $ff
	ld [hl], $f9                                     ; $4c0a: $36 $f9
	ld [hl], a                                       ; $4c0c: $77
	ldh a, [hDisp1_WY]                                     ; $4c0d: $f0 $95
	ld [$fbff], sp                                   ; $4c0f: $08 $ff $fb
	inc e                                            ; $4c12: $1c
	db $db                                           ; $4c13: $db
	inc a                                            ; $4c14: $3c
	sbc e                                            ; $4c15: $9b
	ld a, h                                          ; $4c16: $7c
	inc a                                            ; $4c17: $3c
	rst $38                                          ; $4c18: $ff
	ld a, c                                          ; $4c19: $79
	ld a, e                                          ; $4c1a: $7b
	ld a, e                                          ; $4c1b: $7b
	ldh a, [$7f]                                     ; $4c1c: $f0 $7f
	add sp, -$68                                     ; $4c1e: $e8 $98
	or a                                             ; $4c20: $b7
	ld a, b                                          ; $4c21: $78
	ld [hl], $f9                                     ; $4c22: $36 $f9
	rst FarCall                                          ; $4c24: $f7
	ld sp, hl                                        ; $4c25: $f9
	ld [hl], b                                       ; $4c26: $70
	ld a, c                                          ; $4c27: $79
	ld d, [hl]                                       ; $4c28: $56
	ld [hl], a                                       ; $4c29: $77
	ldh a, [hDisp1_OBP1]                                     ; $4c2a: $f0 $94
	pop hl                                           ; $4c2c: $e1
	rst $38                                          ; $4c2d: $ff
	ld l, l                                          ; $4c2e: $6d
	di                                               ; $4c2f: $f3
	ld l, a                                          ; $4c30: $6f
	pop af                                           ; $4c31: $f1
	push af                                          ; $4c32: $f5
	ei                                               ; $4c33: $fb
	inc sp                                           ; $4c34: $33
	rst $38                                          ; $4c35: $ff
	inc sp                                           ; $4c36: $33
	ld a, e                                          ; $4c37: $7b
	rst SubAFromDE                                          ; $4c38: $df
	rst $38                                          ; $4c39: $ff
	sub [hl]                                         ; $4c3a: $96
	rst JumpTable                                          ; $4c3b: $c7
	rst $38                                          ; $4c3c: $ff
	sub e                                            ; $4c3d: $93
	rst AddAOntoHL                                          ; $4c3e: $ef
	rst SubAFromHL                                          ; $4c3f: $d7
	rst AddAOntoHL                                          ; $4c40: $ef
	rst JumpTable                                          ; $4c41: $c7
	rst $38                                          ; $4c42: $ff
	rst FarCall                                          ; $4c43: $f7
	call c, rIE                                    ; $4c44: $dc $ff $ff
	sub a                                            ; $4c47: $97
	rlca                                             ; $4c48: $07
	rst $38                                          ; $4c49: $ff
	rra                                              ; $4c4a: $1f
	rst AddAOntoHL                                          ; $4c4b: $ef
	rst $38                                          ; $4c4c: $ff
	adc a                                            ; $4c4d: $8f
	add a                                            ; $4c4e: $87
	rst $38                                          ; $4c4f: $ff
	ld [hl], a                                       ; $4c50: $77
	cp $77                                           ; $4c51: $fe $77
	ldh a, [$7d]                                     ; $4c53: $f0 $7d
	inc b                                            ; $4c55: $04
	sub l                                            ; $4c56: $95
	ld b, $ff                                        ; $4c57: $06 $ff
	ld l, [hl]                                       ; $4c59: $6e
	sbc a                                            ; $4c5a: $9f
	ld [hl], c                                       ; $4c5b: $71
	rst $38                                          ; $4c5c: $ff
	pop af                                           ; $4c5d: $f1
	ei                                               ; $4c5e: $fb
	pop af                                           ; $4c5f: $f1
	ei                                               ; $4c60: $fb
	ld [hl], a                                       ; $4c61: $77
	ldh a, [$9d]                                     ; $4c62: $f0 $9d
	inc e                                            ; $4c64: $1c
	rst $38                                          ; $4c65: $ff
	ld [hl], a                                       ; $4c66: $77
	cp $7f                                           ; $4c67: $fe $7f
	and d                                            ; $4c69: $a2
	sbc [hl]                                         ; $4c6a: $9e
	db $fc                                           ; $4c6b: $fc
	sbc $fd                                          ; $4c6c: $de $fd
	ld [hl], a                                       ; $4c6e: $77
	ld a, e                                          ; $4c6f: $7b
	ld a, a                                          ; $4c70: $7f
	and b                                            ; $4c71: $a0
	ld [hl], a                                       ; $4c72: $77
	cp $7f                                           ; $4c73: $fe $7f
	ldh [$7b], a                                     ; $4c75: $e0 $7b
	sbc $73                                          ; $4c77: $de $73
	ld l, e                                          ; $4c79: $6b
	sub h                                            ; $4c7a: $94
	ldh [rIE], a                                     ; $4c7b: $e0 $ff
	ld l, b                                          ; $4c7d: $68
	rst FarCall                                          ; $4c7e: $f7
	ld h, c                                          ; $4c7f: $61
	rst $38                                          ; $4c80: $ff
	rlca                                             ; $4c81: $07
	rst $38                                          ; $4c82: $ff
	dec de                                           ; $4c83: $1b
	cp a                                             ; $4c84: $bf
	jr jr_04f_4cfa                                   ; $4c85: $18 $73

	ldh a, [$7f]                                     ; $4c87: $f0 $7f
	db $f4                                           ; $4c89: $f4
	sub l                                            ; $4c8a: $95
	ld d, l                                          ; $4c8b: $55
	db $eb                                           ; $4c8c: $eb
	ld l, c                                          ; $4c8d: $69
	rst FarCall                                          ; $4c8e: $f7
	adc e                                            ; $4c8f: $8b
	rst FarCall                                          ; $4c90: $f7
	add a                                            ; $4c91: $87
	rst SubAFromDE                                          ; $4c92: $df
	rlca                                             ; $4c93: $07
	rst SubAFromDE                                          ; $4c94: $df
	ld [hl], a                                       ; $4c95: $77
	ldh a, [$9d]                                     ; $4c96: $f0 $9d
	jp Jump_04f_67ff                                 ; $4c98: $c3 $ff $67


	cp $9e                                           ; $4c9b: $fe $9e
	di                                               ; $4c9d: $f3
	ld [hl], e                                       ; $4c9e: $73
	ldh [$7d], a                                     ; $4c9f: $e0 $7d
	ldh a, [$7b]                                     ; $4ca1: $f0 $7b
	cp $9d                                           ; $4ca3: $fe $9d
	rst AddAOntoHL                                          ; $4ca5: $ef
	ret z                                            ; $4ca6: $c8

jr_04f_4ca7:
	ld a, c                                          ; $4ca7: $79
	nop                                              ; $4ca8: $00
	sbc l                                            ; $4ca9: $9d
	ret nz                                           ; $4caa: $c0

	ld sp, hl                                        ; $4cab: $f9
	ld a, e                                          ; $4cac: $7b
	ldh a, [$9d]                                     ; $4cad: $f0 $9d
	ld b, $03                                        ; $4caf: $06 $03
	ld a, c                                          ; $4cb1: $79
	add [hl]                                         ; $4cb2: $86
	sbc b                                            ; $4cb3: $98
	inc hl                                           ; $4cb4: $23
	sbc a                                            ; $4cb5: $9f
	adc h                                            ; $4cb6: $8c
	rst SubAFromDE                                          ; $4cb7: $df
	call z, $fcdf                                    ; $4cb8: $cc $df $fc
	ld [hl], a                                       ; $4cbb: $77
	ldh [$df], a                                     ; $4cbc: $e0 $df
	ld b, $95                                        ; $4cbe: $06 $95
	rst $38                                          ; $4cc0: $ff
	ld d, [hl]                                       ; $4cc1: $56
	xor a                                            ; $4cc2: $af
	ld b, $9f                                        ; $4cc3: $06 $9f
	rra                                              ; $4cc5: $1f
	rst $38                                          ; $4cc6: $ff
	rra                                              ; $4cc7: $1f
	rst $38                                          ; $4cc8: $ff
	rrca                                             ; $4cc9: $0f
	ld a, e                                          ; $4cca: $7b
	ret nz                                           ; $4ccb: $c0

	sub d                                            ; $4ccc: $92
	inc b                                            ; $4ccd: $04
	ld c, $0e                                        ; $4cce: $0e $0e
	rst $38                                          ; $4cd0: $ff
	ld c, $bf                                        ; $4cd1: $0e $bf
	rrca                                             ; $4cd3: $0f
	rst $38                                          ; $4cd4: $ff
	ccf                                              ; $4cd5: $3f
	rst $38                                          ; $4cd6: $ff
	add hl, de                                       ; $4cd7: $19
	rst $38                                          ; $4cd8: $ff
	ldh [rPCM34], a                                  ; $4cd9: $e0 $77
	ret nc                                           ; $4cdb: $d0

	sub d                                            ; $4cdc: $92
	jr jr_04f_4d17                                   ; $4cdd: $18 $38

	rst $38                                          ; $4cdf: $ff
	inc l                                            ; $4ce0: $2c
	inc c                                            ; $4ce1: $0c
	ld e, $fe                                        ; $4ce2: $1e $fe
	sbc a                                            ; $4ce4: $9f
	rst $38                                          ; $4ce5: $ff
	ld e, $bf                                        ; $4ce6: $1e $bf
	sbc [hl]                                         ; $4ce8: $9e
	cp a                                             ; $4ce9: $bf
	ld a, e                                          ; $4cea: $7b
	ldh a, [hDisp1_BGP]                                     ; $4ceb: $f0 $92
	jr c, jr_04f_4ca7                                ; $4ced: $38 $b8

	rst $38                                          ; $4cef: $ff

jr_04f_4cf0:
	jr c, jr_04f_4cf0                                ; $4cf0: $38 $fe

	ld h, [hl]                                       ; $4cf2: $66
	db $fc                                           ; $4cf3: $fc
	ld b, h                                          ; $4cf4: $44
	db $ed                                           ; $4cf5: $ed
	ld b, $ff                                        ; $4cf6: $06 $ff
	nop                                              ; $4cf8: $00
	ccf                                              ; $4cf9: $3f

jr_04f_4cfa:
	ld a, e                                          ; $4cfa: $7b
	ldh a, [$9b]                                     ; $4cfb: $f0 $9b
	ld hl, $ff31                                     ; $4cfd: $21 $31 $ff
	ld sp, $6477                                     ; $4d00: $31 $77 $64
	ld a, e                                          ; $4d03: $7b
	ld b, d                                          ; $4d04: $42
	sbc [hl]                                         ; $4d05: $9e
	pop bc                                           ; $4d06: $c1
	ld [hl], a                                       ; $4d07: $77
	or b                                             ; $4d08: $b0
	adc d                                            ; $4d09: $8a
	add [hl]                                         ; $4d0a: $86
	ld b, $df                                        ; $4d0b: $06 $df
	or $cf                                           ; $4d0d: $f6 $cf
	jp $c1cf                                         ; $4d0f: $c3 $cf $c1


	di                                               ; $4d12: $f3
	jp nz, $f0f7                                     ; $4d13: $c2 $f7 $f0

	db $f4                                           ; $4d16: $f4

jr_04f_4d17:
	db $f4                                           ; $4d17: $f4
	ei                                               ; $4d18: $fb
	ld b, $f9                                        ; $4d19: $06 $f9
	sbc a                                            ; $4d1b: $9f
	ld h, b                                          ; $4d1c: $60
	adc b                                            ; $4d1d: $88
	ld [hl], a                                       ; $4d1e: $77
	ld a, e                                          ; $4d1f: $7b
	add sp, $7d                                      ; $4d20: $e8 $7d
	ld a, b                                          ; $4d22: $78
	sbc e                                            ; $4d23: $9b
	ei                                               ; $4d24: $fb
	ld a, [bc]                                       ; $4d25: $0a
	ld a, [$77df]                                    ; $4d26: $fa $df $77
	sbc h                                            ; $4d29: $9c
	adc h                                            ; $4d2a: $8c
	adc a                                            ; $4d2b: $8f
	nop                                              ; $4d2c: $00
	sbc a                                            ; $4d2d: $9f
	nop                                              ; $4d2e: $00
	rst SubAFromDE                                          ; $4d2f: $df
	inc b                                            ; $4d30: $04
	sbc h                                            ; $4d31: $9c
	db $10                                           ; $4d32: $10
	rrca                                             ; $4d33: $0f
	ld [bc], a                                       ; $4d34: $02
	rra                                              ; $4d35: $1f
	ld a, b                                          ; $4d36: $78
	rst $38                                          ; $4d37: $ff
	ld hl, sp-$07                                    ; $4d38: $f8 $f9
	nop                                              ; $4d3a: $00
	ld sp, hl                                        ; $4d3b: $f9
	nop                                              ; $4d3c: $00
	pop af                                           ; $4d3d: $f1
	ld a, e                                          ; $4d3e: $7b
	db $fc                                           ; $4d3f: $fc
	add b                                            ; $4d40: $80
	cp b                                             ; $4d41: $b8
	nop                                              ; $4d42: $00
	ldh a, [rP1]                                     ; $4d43: $f0 $00
	ldh [rAUD3LOW], a                                ; $4d45: $e0 $1d
	rst $38                                          ; $4d47: $ff
	ld [$08ff], sp                                   ; $4d48: $08 $ff $08
	sbc a                                            ; $4d4b: $9f
	inc c                                            ; $4d4c: $0c
	rst SubAFromDE                                          ; $4d4d: $df
	inc b                                            ; $4d4e: $04
	rst $38                                          ; $4d4f: $ff
	rlca                                             ; $4d50: $07
	rst SubAFromDE                                          ; $4d51: $df
	rrca                                             ; $4d52: $0f
	sbc a                                            ; $4d53: $9f
	rrca                                             ; $4d54: $0f
	cp a                                             ; $4d55: $bf
	db $fc                                           ; $4d56: $fc
	rst $38                                          ; $4d57: $ff
	ldh [rIE], a                                     ; $4d58: $e0 $ff
	ret nz                                           ; $4d5a: $c0

	rst GetHLinHL                                          ; $4d5b: $cf
	add b                                            ; $4d5c: $80
	adc a                                            ; $4d5d: $8f
	add b                                            ; $4d5e: $80
	sbc a                                            ; $4d5f: $9f
	sub l                                            ; $4d60: $95
	ret nz                                           ; $4d61: $c0

	rst SubAFromDE                                          ; $4d62: $df
	ret nz                                           ; $4d63: $c0

	rst JumpTable                                          ; $4d64: $c7
	jp nz, $c6c3                                     ; $4d65: $c2 $c3 $c6

	rst $38                                          ; $4d68: $ff
	ld b, b                                          ; $4d69: $40
	ei                                               ; $4d6a: $fb
	ld a, e                                          ; $4d6b: $7b
	jp nc, $9180                                     ; $4d6c: $d2 $80 $91

	nop                                              ; $4d6f: $00
	rst $38                                          ; $4d70: $ff
	dec hl                                           ; $4d71: $2b
	rst $38                                          ; $4d72: $ff
	dec d                                            ; $4d73: $15
	rst $38                                          ; $4d74: $ff

jr_04f_4d75:
	jr z, jr_04f_4d75                                ; $4d75: $28 $fe

	ld b, c                                          ; $4d77: $41
	ei                                               ; $4d78: $fb
	ld bc, $40ee                                     ; $4d79: $01 $ee $40
	db $e4                                           ; $4d7c: $e4
	ld b, b                                          ; $4d7d: $40
	db $fc                                           ; $4d7e: $fc
	add b                                            ; $4d7f: $80
	cp $00                                           ; $4d80: $fe $00
	db $fc                                           ; $4d82: $fc
	nop                                              ; $4d83: $00
	ld hl, sp+$40                                    ; $4d84: $f8 $40
	ld a, b                                          ; $4d86: $78
	add hl, sp                                       ; $4d87: $39
	rst $38                                          ; $4d88: $ff
	db $10                                           ; $4d89: $10
	ld a, [hl]                                       ; $4d8a: $7e
	db $10                                           ; $4d8b: $10
	ld a, b                                          ; $4d8c: $78
	sbc l                                            ; $4d8d: $9d
	jr nc, jr_04f_4e0f                               ; $4d8e: $30 $7f

	ld a, c                                          ; $4d90: $79
	ld c, e                                          ; $4d91: $4b
	add h                                            ; $4d92: $84
	ccf                                              ; $4d93: $3f
	jr jr_04f_4e15                                   ; $4d94: $18 $7f

	ld a, $7f                                        ; $4d96: $3e $7f
	add $ff                                          ; $4d98: $c6 $ff
	add b                                            ; $4d9a: $80
	rst AddAOntoHL                                          ; $4d9b: $ef
	add b                                            ; $4d9c: $80
	rst JumpTable                                          ; $4d9d: $c7

Jump_04f_4d9e:
	add b                                            ; $4d9e: $80
	rst AddAOntoHL                                          ; $4d9f: $ef
	nop                                              ; $4da0: $00
	rst AddAOntoHL                                          ; $4da1: $ef
	add b                                            ; $4da2: $80
	rst SubAFromBC                                          ; $4da3: $e7
	nop                                              ; $4da4: $00
	inc bc                                           ; $4da5: $03
	nop                                              ; $4da6: $00
	ld bc, $fe08                                     ; $4da7: $01 $08 $fe
	ld [$089c], sp                                   ; $4daa: $08 $9c $08

jr_04f_4dad:
	inc c                                            ; $4dad: $0c
	ld [hl], a                                       ; $4dae: $77
	call nc, $1096                                   ; $4daf: $d4 $96 $10
	db $fc                                           ; $4db2: $fc
	jr c, jr_04f_4dad                                ; $4db3: $38 $f8

	ld a, b                                          ; $4db5: $78
	cp $07                                           ; $4db6: $fe $07
	rst $38                                          ; $4db8: $ff
	rrca                                             ; $4db9: $0f
	ld [hl], a                                       ; $4dba: $77
	ld c, h                                          ; $4dbb: $4c
	sbc [hl]                                         ; $4dbc: $9e
	ld h, a                                          ; $4dbd: $67
	ld a, e                                          ; $4dbe: $7b
	ret nc                                           ; $4dbf: $d0

	sub h                                            ; $4dc0: $94
	ld a, $00                                        ; $4dc1: $3e $00
	ld e, $00                                        ; $4dc3: $1e $00
	ld e, $83                                        ; $4dc5: $1e $83
	rst $38                                          ; $4dc7: $ff
	nop                                              ; $4dc8: $00
	rst GetHLinHL                                          ; $4dc9: $cf
	nop                                              ; $4dca: $00
	adc c                                            ; $4dcb: $89
	ld a, e                                          ; $4dcc: $7b
	ld h, b                                          ; $4dcd: $60
	ld a, a                                          ; $4dce: $7f
	cp $9d                                           ; $4dcf: $fe $9d
	ld a, [hl]                                       ; $4dd1: $7e
	ld bc, $3278                                     ; $4dd2: $01 $78 $32
	sbc c                                            ; $4dd5: $99
	ldh a, [$f9]                                     ; $4dd6: $f0 $f9
	db $10                                           ; $4dd8: $10
	pop af                                           ; $4dd9: $f1
	nop                                              ; $4dda: $00

jr_04f_4ddb:
	ei                                               ; $4ddb: $fb
	ld a, e                                          ; $4ddc: $7b
	cp $7f                                           ; $4ddd: $fe $7f
	ld a, [$c09e]                                    ; $4ddf: $fa $9e $c0
	ld [hl], a                                       ; $4de2: $77
	cp $89                                           ; $4de3: $fe $89
	ld hl, sp-$01                                    ; $4de5: $f8 $ff
	jr nz, @+$01                                     ; $4de7: $20 $ff

	jr nz, jr_04f_4ddb                               ; $4de9: $20 $f0

	jr nz, @+$01                                     ; $4deb: $20 $ff

	inc l                                            ; $4ded: $2c
	rst $38                                          ; $4dee: $ff
	ld a, h                                          ; $4def: $7c
	cp $7c                                           ; $4df0: $fe $7c
	cp $fe                                           ; $4df2: $fe $fe
	rst $38                                          ; $4df4: $ff
	inc b                                            ; $4df5: $04
	rst GetHLinHL                                          ; $4df6: $cf
	nop                                              ; $4df7: $00
	adc a                                            ; $4df8: $8f
	ld [$7b9d], sp                                   ; $4df9: $08 $9d $7b
	jp nc, $2c7f                                     ; $4dfc: $d2 $7f $2c

	sbc l                                            ; $4dff: $9d
	inc bc                                           ; $4e00: $03
	ld bc, $03de                                     ; $4e01: $01 $de $03
	ld a, e                                          ; $4e04: $7b
	ret c                                            ; $4e05: $d8

	sbc h                                            ; $4e06: $9c
	cp c                                             ; $4e07: $b9
	nop                                              ; $4e08: $00
	sbc e                                            ; $4e09: $9b
	ld a, e                                          ; $4e0a: $7b
	ret nc                                           ; $4e0b: $d0

	sub d                                            ; $4e0c: $92
	pop hl                                           ; $4e0d: $e1
	nop                                              ; $4e0e: $00

jr_04f_4e0f:
	ldh [$e0], a                                     ; $4e0f: $e0 $e0
	ldh a, [$f0]                                     ; $4e11: $f0 $f0
	ld hl, sp+$02                                    ; $4e13: $f8 $02

jr_04f_4e15:
	rst $38                                          ; $4e15: $ff
	ld [bc], a                                       ; $4e16: $02
	adc a                                            ; $4e17: $8f
	ld [bc], a                                       ; $4e18: $02
	rrca                                             ; $4e19: $0f
	ld a, e                                          ; $4e1a: $7b
	sbc [hl]                                         ; $4e1b: $9e
	sub [hl]                                         ; $4e1c: $96
	xor $00                                          ; $4e1d: $ee $00
	ld c, a                                          ; $4e1f: $4f
	ld c, $5f                                        ; $4e20: $0e $5f
	rra                                              ; $4e22: $1f
	ld e, a                                          ; $4e23: $5f
	nop                                              ; $4e24: $00
	scf                                              ; $4e25: $37
	ld a, e                                          ; $4e26: $7b
	cp $9a                                           ; $4e27: $fe $9a
	ld [hl], e                                       ; $4e29: $73
	nop                                              ; $4e2a: $00
	rra                                              ; $4e2b: $1f
	dec b                                            ; $4e2c: $05
	rrca                                             ; $4e2d: $0f
	ld a, c                                          ; $4e2e: $79
	ld b, c                                          ; $4e2f: $41
	sbc d                                            ; $4e30: $9a
	add h                                            ; $4e31: $84
	add b                                            ; $4e32: $80
	add $40                                          ; $4e33: $c6 $40
	rst SubAFromBC                                          ; $4e35: $e7
	ld l, a                                          ; $4e36: $6f
	cp $9b                                           ; $4e37: $fe $9b
	add b                                            ; $4e39: $80
	pop af                                           ; $4e3a: $f1
	ld b, b                                          ; $4e3b: $40
	db $fc                                           ; $4e3c: $fc
	ld a, e                                          ; $4e3d: $7b
	cp $9b                                           ; $4e3e: $fe $9b
	ld a, $50                                        ; $4e40: $3e $50
	db $f4                                           ; $4e42: $f4
	ld c, b                                          ; $4e43: $48
	ld [hl], a                                       ; $4e44: $77
	ld hl, sp+$7f                                    ; $4e45: $f8 $7f
	ld h, b                                          ; $4e47: $60
	sbc b                                            ; $4e48: $98
	ld sp, hl                                        ; $4e49: $f9
	ld bc, $41f3                                     ; $4e4a: $01 $f3 $41
	di                                               ; $4e4d: $f3
	ld b, c                                          ; $4e4e: $41
	ld [hl], e                                       ; $4e4f: $73
	inc hl                                           ; $4e50: $23
	nop                                              ; $4e51: $00
	sbc [hl]                                         ; $4e52: $9e
	ld h, h                                          ; $4e53: $64
	reti                                             ; $4e54: $d9


	ld b, h                                          ; $4e55: $44
	sbc l                                            ; $4e56: $9d
	ld b, [hl]                                       ; $4e57: $46
	ld h, e                                          ; $4e58: $63
	reti                                             ; $4e59: $d9


	ld b, h                                          ; $4e5a: $44
	sbc l                                            ; $4e5b: $9d
	ld [hl], $33                                     ; $4e5c: $36 $33
	reti                                             ; $4e5e: $d9


	ld b, h                                          ; $4e5f: $44
	pop bc                                           ; $4e60: $c1
	inc sp                                           ; $4e61: $33
	sbc $33                                          ; $4e62: $de $33
	sbc [hl]                                         ; $4e64: $9e
	ld h, e                                          ; $4e65: $63
	db $db                                           ; $4e66: $db
	inc sp                                           ; $4e67: $33
	sbc [hl]                                         ; $4e68: $9e
	ld d, l                                          ; $4e69: $55

Call_04f_4e6a:
	ld l, a                                          ; $4e6a: $6f
	ld hl, sp-$63                                    ; $4e6b: $f8 $9d
	ld d, l                                          ; $4e6d: $55
	inc sp                                           ; $4e6e: $33
	rst SubAFromHL                                          ; $4e6f: $d7
	ld h, [hl]                                       ; $4e70: $66
	call Call_04f_6177                               ; $4e71: $cd $77 $61
	ld [$009d], sp                                   ; $4e74: $08 $9d $00
	rst $38                                          ; $4e77: $ff
	ld d, a                                          ; $4e78: $57
	cp $7f                                           ; $4e79: $fe $7f
	db $fd                                           ; $4e7b: $fd
	inc bc                                           ; $4e7c: $03
	ldh a, [$03]                                     ; $4e7d: $f0 $03
	ldh a, [$03]                                     ; $4e7f: $f0 $03
	ldh a, [$03]                                     ; $4e81: $f0 $03
	ldh a, [$03]                                     ; $4e83: $f0 $03
	ldh a, [$33]                                     ; $4e85: $f0 $33
	ldh a, [$9d]                                     ; $4e87: $f0 $9d
	dec b                                            ; $4e89: $05
	ld a, [$f05f]                                    ; $4e8a: $fa $5f $f0
	sbc c                                            ; $4e8d: $99
	ld bc, $2afe                                     ; $4e8e: $01 $fe $2a
	push de                                          ; $4e91: $d5
	ld d, l                                          ; $4e92: $55
	xor d                                            ; $4e93: $aa
	ld l, a                                          ; $4e94: $6f
	ldh a, [$6f]                                     ; $4e95: $f0 $6f
	db $f4                                           ; $4e97: $f4
	sub l                                            ; $4e98: $95
	xor d                                            ; $4e99: $aa
	ld d, l                                          ; $4e9a: $55
	ld d, l                                          ; $4e9b: $55
	xor d                                            ; $4e9c: $aa
	ld a, [bc]                                       ; $4e9d: $0a
	push af                                          ; $4e9e: $f5
	push af                                          ; $4e9f: $f5
	ld a, [bc]                                       ; $4ea0: $0a
	ld [bc], a                                       ; $4ea1: $02
	db $fd                                           ; $4ea2: $fd
	ld l, a                                          ; $4ea3: $6f
	db $f4                                           ; $4ea4: $f4
	ld [hl], a                                       ; $4ea5: $77
	db $fc                                           ; $4ea6: $fc
	sbc e                                            ; $4ea7: $9b
	cp a                                             ; $4ea8: $bf
	ld b, b                                          ; $4ea9: $40
	rst $38                                          ; $4eaa: $ff
	nop                                              ; $4eab: $00
	ld h, a                                          ; $4eac: $67
	db $f4                                           ; $4ead: $f4
	sbc e                                            ; $4eae: $9b
	xor e                                            ; $4eaf: $ab
	ld d, h                                          ; $4eb0: $54
	ld a, a                                          ; $4eb1: $7f
	add b                                            ; $4eb2: $80
	ld [hl], a                                       ; $4eb3: $77
	push bc                                          ; $4eb4: $c5
	ld l, a                                          ; $4eb5: $6f
	ldh a, [$9d]                                     ; $4eb6: $f0 $9d
	ld e, a                                          ; $4eb8: $5f
	and b                                            ; $4eb9: $a0
	ld h, a                                          ; $4eba: $67
	xor c                                            ; $4ebb: $a9
	ld h, a                                          ; $4ebc: $67
	ret c                                            ; $4ebd: $d8

	ld l, a                                          ; $4ebe: $6f
	cp $9e                                           ; $4ebf: $fe $9e
	cp $7b                                           ; $4ec1: $fe $7b
	ldh a, [$67]                                     ; $4ec3: $f0 $67
	db $e4                                           ; $4ec5: $e4
	ld a, a                                          ; $4ec6: $7f
	sub c                                            ; $4ec7: $91
	sbc l                                            ; $4ec8: $9d
	ld d, l                                          ; $4ec9: $55
	nop                                              ; $4eca: $00
	ld a, e                                          ; $4ecb: $7b
	sbc l                                            ; $4ecc: $9d
	ld a, e                                          ; $4ecd: $7b
	sbc e                                            ; $4ece: $9b
	sbc l                                            ; $4ecf: $9d
	inc a                                            ; $4ed0: $3c
	jp $fe5f                                         ; $4ed1: $c3 $5f $fe


	ld [hl], a                                       ; $4ed4: $77
	ldh a, [$9d]                                     ; $4ed5: $f0 $9d
	and $19                                          ; $4ed7: $e6 $19
	ld e, a                                          ; $4ed9: $5f
	cp $77                                           ; $4eda: $fe $77
	ldh a, [$9d]                                     ; $4edc: $f0 $9d
	ld h, a                                          ; $4ede: $67
	sbc b                                            ; $4edf: $98
	ld e, a                                          ; $4ee0: $5f
	cp $77                                           ; $4ee1: $fe $77
	ldh a, [$9d]                                     ; $4ee3: $f0 $9d
	ld e, $e1                                        ; $4ee5: $1e $e1
	ld e, a                                          ; $4ee7: $5f
	cp $77                                           ; $4ee8: $fe $77
	ldh a, [$9d]                                     ; $4eea: $f0 $9d
	rra                                              ; $4eec: $1f
	ldh [$5f], a                                     ; $4eed: $e0 $5f
	cp $77                                           ; $4eef: $fe $77
	ldh a, [$9d]                                     ; $4ef1: $f0 $9d
	ccf                                              ; $4ef3: $3f
	ret nz                                           ; $4ef4: $c0

	ld e, a                                          ; $4ef5: $5f
	cp $37                                           ; $4ef6: $fe $37
	and b                                            ; $4ef8: $a0
	sbc l                                            ; $4ef9: $9d
	sbc l                                            ; $4efa: $9d
	ld h, d                                          ; $4efb: $62
	ld e, a                                          ; $4efc: $5f
	cp $77                                           ; $4efd: $fe $77
	ldh a, [$9d]                                     ; $4eff: $f0 $9d
	add hl, sp                                       ; $4f01: $39
	add $5f                                          ; $4f02: $c6 $5f
	cp $77                                           ; $4f04: $fe $77
	ldh a, [$9d]                                     ; $4f06: $f0 $9d
	di                                               ; $4f08: $f3
	inc c                                            ; $4f09: $0c
	ld e, a                                          ; $4f0a: $5f
	cp $77                                           ; $4f0b: $fe $77
	ldh a, [$9d]                                     ; $4f0d: $f0 $9d
	call z, Call_04f_5f33                            ; $4f0f: $cc $33 $5f
	cp $77                                           ; $4f12: $fe $77
	ldh a, [$9d]                                     ; $4f14: $f0 $9d
	cp $01                                           ; $4f16: $fe $01
	ld e, a                                          ; $4f18: $5f
	cp $77                                           ; $4f19: $fe $77
	ldh a, [$9d]                                     ; $4f1b: $f0 $9d
	ld [hl], c                                       ; $4f1d: $71
	adc [hl]                                         ; $4f1e: $8e
	ld e, a                                          ; $4f1f: $5f
	cp $77                                           ; $4f20: $fe $77
	ldh a, [$5b]                                     ; $4f22: $f0 $5b
	pop af                                           ; $4f24: $f1
	sbc c                                            ; $4f25: $99
	ld [hl], c                                       ; $4f26: $71
	rra                                              ; $4f27: $1f
	ret nz                                           ; $4f28: $c0

	rst SubAFromDE                                          ; $4f29: $df
	ret nz                                           ; $4f2a: $c0

	sbc a                                            ; $4f2b: $9f
	ld e, e                                          ; $4f2c: $5b
	cp $5e                                           ; $4f2d: $fe $5e
	add e                                            ; $4f2f: $83
	ld a, e                                          ; $4f30: $7b
	call nz, $018d                                   ; $4f31: $c4 $8d $01
	db $fd                                           ; $4f34: $fd
	inc bc                                           ; $4f35: $03
	rst $38                                          ; $4f36: $ff
	nop                                              ; $4f37: $00
	db $fd                                           ; $4f38: $fd
	ld a, $ff                                        ; $4f39: $3e $ff
	ld a, b                                          ; $4f3b: $78
	rst $38                                          ; $4f3c: $ff
	ld a, b                                          ; $4f3d: $78
	db $db                                           ; $4f3e: $db
	db $fc                                           ; $4f3f: $fc
	rst $38                                          ; $4f40: $ff
	call c, $cefd                                    ; $4f41: $dc $fd $ce
	rst $38                                          ; $4f44: $ff
	ld [hl], a                                       ; $4f45: $77
	ret nz                                           ; $4f46: $c0

	sub c                                            ; $4f47: $91
	rrca                                             ; $4f48: $0f
	rst AddAOntoHL                                          ; $4f49: $ef
	ld e, $fd                                        ; $4f4a: $1e $fd
	dec e                                            ; $4f4c: $1d
	rst SubAFromDE                                          ; $4f4d: $df
	add hl, sp                                       ; $4f4e: $39
	ei                                               ; $4f4f: $fb
	dec sp                                           ; $4f50: $3b
	cp a                                             ; $4f51: $bf
	ld [hl], e                                       ; $4f52: $73
	rst FarCall                                          ; $4f53: $f7
	ld [hl], a                                       ; $4f54: $77
	push af                                          ; $4f55: $f5
	ld a, e                                          ; $4f56: $7b
	or b                                             ; $4f57: $b0
	rst SubAFromDE                                          ; $4f58: $df
	rst $38                                          ; $4f59: $ff
	sbc $c0                                          ; $4f5a: $de $c0
	rst SubAFromDE                                          ; $4f5c: $df
	add b                                            ; $4f5d: $80
	ld a, a                                          ; $4f5e: $7f
	adc $9b                                          ; $4f5f: $ce $9b
	db $fc                                           ; $4f61: $fc
	cp $fc                                           ; $4f62: $fe $fc
	ld b, l                                          ; $4f64: $45
	ld a, e                                          ; $4f65: $7b
	ld a, [$fc93]                                    ; $4f66: $fa $93 $fc
	jr c, @+$7b                                      ; $4f69: $38 $79

	jr nc, jr_04f_4fe8                               ; $4f6b: $30 $7b

	inc sp                                           ; $4f6d: $33
	ld [hl], a                                       ; $4f6e: $77
	inc sp                                           ; $4f6f: $33
	ld a, a                                          ; $4f70: $7f
	ld [hl], a                                       ; $4f71: $77
	ld a, l                                          ; $4f72: $7d
	ld a, l                                          ; $4f73: $7d
	ld l, a                                          ; $4f74: $6f
	ld a, [hl+]                                      ; $4f75: $2a
	sub l                                            ; $4f76: $95
	ld e, a                                          ; $4f77: $5f
	rst AddAOntoHL                                          ; $4f78: $ef
	add b                                            ; $4f79: $80
	add $c5                                          ; $4f7a: $c6 $c5
	add b                                            ; $4f7c: $80
	push bc                                          ; $4f7d: $c5
	add b                                            ; $4f7e: $80
	and b                                            ; $4f7f: $a0
	call $ca6e                                       ; $4f80: $cd $6e $ca
	sub e                                            ; $4f83: $93
	ld c, l                                          ; $4f84: $4d
	rst $38                                          ; $4f85: $ff
	ld e, c                                          ; $4f86: $59
	ld [hl], b                                       ; $4f87: $70
	db $fc                                           ; $4f88: $fc
	halt                                             ; $4f89: $76
	jr c, @+$73                                      ; $4f8a: $38 $71

	ld [hl], b                                       ; $4f8c: $70
	halt                                             ; $4f8d: $76
	ld l, a                                          ; $4f8e: $6f
	sub b                                            ; $4f8f: $90
	ld [hl], a                                       ; $4f90: $77
	cp $85                                           ; $4f91: $fe $85
	or e                                             ; $4f93: $b3
	rst $38                                          ; $4f94: $ff
	sbc [hl]                                         ; $4f95: $9e
	inc c                                            ; $4f96: $0c
	ccf                                              ; $4f97: $3f
	ld l, [hl]                                       ; $4f98: $6e
	inc e                                            ; $4f99: $1c
	adc [hl]                                         ; $4f9a: $8e
	rrca                                             ; $4f9b: $0f
	ld l, l                                          ; $4f9c: $6d
	ld e, $e1                                        ; $4f9d: $1e $e1
	cp [hl]                                          ; $4f9f: $be
	ld b, c                                          ; $4fa0: $41
	cp [hl]                                          ; $4fa1: $be
	ld b, c                                          ; $4fa2: $41
	ld [hl], $df                                     ; $4fa3: $36 $df
	ld de, $2b87                                     ; $4fa5: $11 $87 $2b
	ld h, e                                          ; $4fa8: $63
	dec b                                            ; $4fa9: $05
	inc bc                                           ; $4faa: $03
	dec bc                                           ; $4fab: $0b
	ld l, c                                          ; $4fac: $69
	ld l, [hl]                                       ; $4fad: $6e
	jp z, Jump_04f_7f95                              ; $4fae: $ca $95 $7f

	di                                               ; $4fb1: $f3
	ret nz                                           ; $4fb2: $c0

	add b                                            ; $4fb3: $80
	pop hl                                           ; $4fb4: $e1
	ret nz                                           ; $4fb5: $c0

	ret nz                                           ; $4fb6: $c0

	pop hl                                           ; $4fb7: $e1
	jp nz, Jump_04f_6e80                             ; $4fb8: $c2 $80 $6e

	jp z, $bf9a                                      ; $4fbb: $ca $9a $bf

	ret nz                                           ; $4fbe: $c0

	rst $38                                          ; $4fbf: $ff
	ld b, b                                          ; $4fc0: $40
	cp a                                             ; $4fc1: $bf
	ld a, e                                          ; $4fc2: $7b
	ld a, [$7f9d]                                    ; $4fc3: $fa $9d $7f
	ld b, b                                          ; $4fc6: $40
	ld l, a                                          ; $4fc7: $6f
	and b                                            ; $4fc8: $a0
	sub l                                            ; $4fc9: $95
	inc sp                                           ; $4fca: $33
	rst GetHLinHL                                          ; $4fcb: $cf
	ld [hl], $cc                                     ; $4fcc: $36 $cc
	inc sp                                           ; $4fce: $33
	rst GetHLinHL                                          ; $4fcf: $cf
	inc sp                                           ; $4fd0: $33
	rst GetHLinHL                                          ; $4fd1: $cf
	ld sp, $6ecc                                     ; $4fd2: $31 $cc $6e
	jp z, $fd95                                      ; $4fd5: $ca $95 $fd

	sbc a                                            ; $4fd8: $9f
	sub a                                            ; $4fd9: $97
	inc bc                                           ; $4fda: $03
	rrca                                             ; $4fdb: $0f
	ld l, a                                          ; $4fdc: $6f
	rst $38                                          ; $4fdd: $ff
	rrca                                             ; $4fde: $0f
	sbc c                                            ; $4fdf: $99
	inc bc                                           ; $4fe0: $03
	ld l, [hl]                                       ; $4fe1: $6e
	jp z, Jump_04f_5f95                              ; $4fe2: $ca $95 $5f

	db $fd                                           ; $4fe5: $fd
	add b                                            ; $4fe6: $80
	ret nc                                           ; $4fe7: $d0

jr_04f_4fe8:
	adc d                                            ; $4fe8: $8a
	inc bc                                           ; $4fe9: $03
	add d                                            ; $4fea: $82
	add [hl]                                         ; $4feb: $86
	add b                                            ; $4fec: $80
	ld a, [bc]                                       ; $4fed: $0a
	ld l, [hl]                                       ; $4fee: $6e
	jp z, $9f95                                      ; $4fef: $ca $95 $9f

	rst $38                                          ; $4ff2: $ff
	ld [hl], l                                       ; $4ff3: $75
	ld [hl], b                                       ; $4ff4: $70
	ldh a, [$e0]                                     ; $4ff5: $f0 $e0
	db $ed                                           ; $4ff7: $ed
	ld c, h                                          ; $4ff8: $4c
	ldh a, [$d0]                                     ; $4ff9: $f0 $d0
	ld l, [hl]                                       ; $4ffb: $6e
	jp z, $8c95                                      ; $4ffc: $ca $95 $8c

	di                                               ; $4fff: $f3
	db $fc                                           ; $5000: $fc
	di                                               ; $5001: $f3
	ld e, h                                          ; $5002: $5c
	inc sp                                           ; $5003: $33
	db $fc                                           ; $5004: $fc
	di                                               ; $5005: $f3
	inc l                                            ; $5006: $2c
	ld [hl], e                                       ; $5007: $73
	ld d, [hl]                                       ; $5008: $56
	call nz, $fe77                                   ; $5009: $c4 $77 $fe
	ld d, [hl]                                       ; $500c: $56
	call nz, $fe77                                   ; $500d: $c4 $77 $fe
	ld c, e                                          ; $5010: $4b
	pop af                                           ; $5011: $f1
	sbc [hl]                                         ; $5012: $9e
	ld [hl], c                                       ; $5013: $71
	ld d, [hl]                                       ; $5014: $56
	call nz, $fe77                                   ; $5015: $c4 $77 $fe
	sub l                                            ; $5018: $95
	ei                                               ; $5019: $fb
	rlca                                             ; $501a: $07
	rst $38                                          ; $501b: $ff
	rlca                                             ; $501c: $07
	cp $0f                                           ; $501d: $fe $0f
	cp a                                             ; $501f: $bf
	ld a, [hl]                                       ; $5020: $7e
	db $e3                                           ; $5021: $e3
	inc e                                            ; $5022: $1c
	ld l, [hl]                                       ; $5023: $6e
	cp d                                             ; $5024: $ba
	sbc c                                            ; $5025: $99
	ld a, a                                          ; $5026: $7f
	add [hl]                                         ; $5027: $86
	rst $38                                          ; $5028: $ff
	rlca                                             ; $5029: $07
	rst $38                                          ; $502a: $ff
	inc bc                                           ; $502b: $03
	ld a, e                                          ; $502c: $7b
	cp $7f                                           ; $502d: $fe $7f
	ld a, [$f073]                                    ; $502f: $fa $73 $f0
	sub a                                            ; $5032: $97
	ld l, a                                          ; $5033: $6f
	and $ce                                          ; $5034: $e6 $ce
	xor $de                                          ; $5036: $ee $de
	call z, $bfff                                    ; $5038: $cc $ff $bf
	sbc $ff                                          ; $503b: $de $ff
	sbc e                                            ; $503d: $9b
	nop                                              ; $503e: $00
	xor b                                            ; $503f: $a8
	nop                                              ; $5040: $00
	ret nc                                           ; $5041: $d0

	ld a, [$4d7e]                                    ; $5042: $fa $7e $4d
	sbc l                                            ; $5045: $9d
	rst $38                                          ; $5046: $ff
	db $fd                                           ; $5047: $fd
	ld a, c                                          ; $5048: $79
	inc [hl]                                         ; $5049: $34
	cp $94                                           ; $504a: $fe $94
	ld a, l                                          ; $504c: $7d
	ld a, c                                          ; $504d: $79
	ld a, c                                          ; $504e: $79
	ld a, b                                          ; $504f: $78
	ld sp, hl                                        ; $5050: $f9
	ldh a, [$f1]                                     ; $5051: $f0 $f1
	pop af                                           ; $5053: $f1
	db $e3                                           ; $5054: $e3
	pop hl                                           ; $5055: $e1
	db $e3                                           ; $5056: $e3
	db $fc                                           ; $5057: $fc
	sbc b                                            ; $5058: $98
	push bc                                          ; $5059: $c5
	pop bc                                           ; $505a: $c1
	add e                                            ; $505b: $83
	xor e                                            ; $505c: $ab
	ei                                               ; $505d: $fb
	rst AddAOntoHL                                          ; $505e: $ef
	dec sp                                           ; $505f: $3b
	ld a, e                                          ; $5060: $7b
	push bc                                          ; $5061: $c5
	adc [hl]                                         ; $5062: $8e
	ccf                                              ; $5063: $3f
	call nz, $c43e                                   ; $5064: $c4 $3e $c4
	add hl, sp                                       ; $5067: $39
	call Call_04f_647c                               ; $5068: $cd $7c $64
	ld a, b                                          ; $506b: $78
	ld a, d                                          ; $506c: $7a
	ld a, a                                          ; $506d: $7f
	or $df                                           ; $506e: $f6 $df
	rst $38                                          ; $5070: $ff
	ld h, [hl]                                       ; $5071: $66
	sbc c                                            ; $5072: $99
	and $7b                                          ; $5073: $e6 $7b
	cp $97                                           ; $5075: $fe $97
	ldh a, [hDisp1_SCY]                                     ; $5077: $f0 $90
	ccf                                              ; $5079: $3f
	ld h, $1e                                        ; $507a: $26 $1e
	ld e, [hl]                                       ; $507c: $5e
	call c, Call_04f_7b6d                            ; $507d: $dc $6d $7b
	or e                                             ; $5080: $b3
	add c                                            ; $5081: $81
	rst $38                                          ; $5082: $ff
	ld l, a                                          ; $5083: $6f
	sub b                                            ; $5084: $90
	ld l, l                                          ; $5085: $6d
	sub e                                            ; $5086: $93
	ld a, [de]                                       ; $5087: $1a
	ld d, $03                                        ; $5088: $16 $03
	rlca                                             ; $508a: $07
	bit 5, l                                         ; $508b: $cb $6d
	pop af                                           ; $508d: $f1
	db $e3                                           ; $508e: $e3
	cp a                                             ; $508f: $bf
	rst $38                                          ; $5090: $ff
	inc c                                            ; $5091: $0c
	di                                               ; $5092: $f3
	cp $ff                                           ; $5093: $fe $ff
	ld a, [hl+]                                      ; $5095: $2a
	ld l, e                                          ; $5096: $6b
	ld e, [hl]                                       ; $5097: $5e
	sbc a                                            ; $5098: $9f
	ret z                                            ; $5099: $c8

	jp hl                                            ; $509a: $e9


	and h                                            ; $509b: $a4
	add h                                            ; $509c: $84
	rst FarCall                                          ; $509d: $f7

Call_04f_509e:
	rst AddAOntoHL                                          ; $509e: $ef
	ccf                                              ; $509f: $3f
	ld a, c                                          ; $50a0: $79
	ld a, h                                          ; $50a1: $7c
	sbc c                                            ; $50a2: $99
	sub a                                            ; $50a3: $97
	call nc, $97d4                                   ; $50a4: $d4 $d4 $97
	push de                                          ; $50a7: $d5
	sub a                                            ; $50a8: $97
	halt                                             ; $50a9: $76
	call z, $7f80                                    ; $50aa: $cc $80 $7f
	ret nz                                           ; $50ad: $c0

	sbc $e1                                          ; $50ae: $de $e1
	ld a, [hl+]                                      ; $50b0: $2a
	rst SubAFromDE                                          ; $50b1: $df
	ld a, [de]                                       ; $50b2: $1a
	ld hl, sp+$6c                                    ; $50b3: $f8 $6c
	pop hl                                           ; $50b5: $e1
	ldh a, [rBCPS]                                   ; $50b6: $f0 $68
	ld sp, $31cd                                     ; $50b8: $31 $cd $31
	call $c73d                                       ; $50bb: $cd $3d $c7
	rra                                              ; $50be: $1f
	rst SubAFromBC                                          ; $50bf: $e7
	or $e9                                           ; $50c0: $f6 $e9
	cp e                                             ; $50c2: $bb
	inc a                                            ; $50c3: $3c
	ld l, a                                          ; $50c4: $6f
	inc c                                            ; $50c5: $0c
	rra                                              ; $50c6: $1f
	inc l                                            ; $50c7: $2c
	add hl, bc                                       ; $50c8: $09
	ld l, e                                          ; $50c9: $6b
	ld h, c                                          ; $50ca: $61
	sub [hl]                                         ; $50cb: $96
	dec bc                                           ; $50cc: $0b
	ei                                               ; $50cd: $fb
	rst $38                                          ; $50ce: $ff
	rrca                                             ; $50cf: $0f
	rst $38                                          ; $50d0: $ff
	dec e                                            ; $50d1: $1d
	ldh [c], a                                       ; $50d2: $e2
	sbc h                                            ; $50d3: $9c
	ld h, e                                          ; $50d4: $63
	ld [hl], a                                       ; $50d5: $77
	cp $9a                                           ; $50d6: $fe $9a
	ld b, b                                          ; $50d8: $40
	dec e                                            ; $50d9: $1d
	sub b                                            ; $50da: $90
	jp c, $ded7                                      ; $50db: $da $d7 $de

	rst $38                                          ; $50de: $ff
	sbc e                                            ; $50df: $9b
	ld [hl], c                                       ; $50e0: $71
	db $e4                                           ; $50e1: $e4
	sub e                                            ; $50e2: $93
	ret nz                                           ; $50e3: $c0

	cp $80                                           ; $50e4: $fe $80
	ld a, a                                          ; $50e6: $7f
	db $fd                                           ; $50e7: $fd
	db $fc                                           ; $50e8: $fc
	db $fd                                           ; $50e9: $fd
	ld a, h                                          ; $50ea: $7c
	ld h, b                                          ; $50eb: $60
	ldh a, [rIE]                                     ; $50ec: $f0 $ff
	rst $38                                          ; $50ee: $ff
	or h                                             ; $50ef: $b4
	push af                                          ; $50f0: $f5
	ret nz                                           ; $50f1: $c0

	ldh [rSCX], a                                    ; $50f2: $e0 $43
	ld l, b                                          ; $50f4: $68
	ld a, b                                          ; $50f5: $78
	ld [hl], e                                       ; $50f6: $73
	db $e4                                           ; $50f7: $e4
	ei                                               ; $50f8: $fb
	db $fc                                           ; $50f9: $fc
	ei                                               ; $50fa: $fb
	ld e, h                                          ; $50fb: $5c
	dec sp                                           ; $50fc: $3b
	db $fc                                           ; $50fd: $fc
	ei                                               ; $50fe: $fb
	cp h                                             ; $50ff: $bc
	or e                                             ; $5100: $b3
	inc c                                            ; $5101: $0c
	dec de                                           ; $5102: $1b
	inc c                                            ; $5103: $0c
	ld e, e                                          ; $5104: $5b

jr_04f_5105:
	sbc l                                            ; $5105: $9d
	ld a, h                                          ; $5106: $7c
	dec sp                                           ; $5107: $3b
	ld [bc], a                                       ; $5108: $02
	ret nz                                           ; $5109: $c0

	ld l, e                                          ; $510a: $6b
	rst FarCall                                          ; $510b: $f7
	sbc l                                            ; $510c: $9d
	sbc [hl]                                         ; $510d: $9e
	ld h, c                                          ; $510e: $61
	ld l, a                                          ; $510f: $6f
	cp $46                                           ; $5110: $fe $46
	ret nz                                           ; $5112: $c0

	ld e, l                                          ; $5113: $5d
	add b                                            ; $5114: $80
	cpl                                              ; $5115: $2f
	cp $9e                                           ; $5116: $fe $9e
	and b                                            ; $5118: $a0
	ld a, d                                          ; $5119: $7a
	call z, $e89e                                    ; $511a: $cc $9e $e8
	ld [hl], e                                       ; $511d: $73
	db $fc                                           ; $511e: $fc
	sbc c                                            ; $511f: $99
	ld hl, sp+$07                                    ; $5120: $f8 $07
	rst AddAOntoHL                                          ; $5122: $ef
	rra                                              ; $5123: $1f
	pop hl                                           ; $5124: $e1
	ld a, e                                          ; $5125: $7b
	rst FarCall                                          ; $5126: $f7
	sbc c                                            ; $5127: $99
	ld sp, hl                                        ; $5128: $f9
	cp $ff                                           ; $5129: $fe $ff
	rst $38                                          ; $512b: $ff
	db $fc                                           ; $512c: $fc
	cp $f5                                           ; $512d: $fe $f5
	rst SubAFromDE                                          ; $512f: $df
	ret nz                                           ; $5130: $c0

	ld a, [hl]                                       ; $5131: $7e
	dec de                                           ; $5132: $1b
	sub l                                            ; $5133: $95
	add hl, sp                                       ; $5134: $39
	db $db                                           ; $5135: $db
	ld h, d                                          ; $5136: $62
	rst FarCall                                          ; $5137: $f7
	adc h                                            ; $5138: $8c
	rst GetHLinHL                                          ; $5139: $cf
	ld hl, sp-$01                                    ; $513a: $f8 $ff
	jr c, jr_04f_5105                                ; $513c: $38 $c7

	ld l, a                                          ; $513e: $6f
	cp $9b                                           ; $513f: $fe $9b
	ld a, d                                          ; $5141: $7a
	sub l                                            ; $5142: $95
	ld a, a                                          ; $5143: $7f
	sbc a                                            ; $5144: $9f
	ld d, h                                          ; $5145: $54
	ld b, b                                          ; $5146: $40
	sub a                                            ; $5147: $97
	cp l                                             ; $5148: $bd
	ld e, h                                          ; $5149: $5c
	db $fd                                           ; $514a: $fd
	rst FarCall                                          ; $514b: $f7
	ld h, a                                          ; $514c: $67
	sbc a                                            ; $514d: $9f

jr_04f_514e:
	ld h, b                                          ; $514e: $60
	sbc a                                            ; $514f: $9f
	ld h, h                                          ; $5150: $64
	ld b, b                                          ; $5151: $40
	sub a                                            ; $5152: $97
	call z, $e5ef                                    ; $5153: $cc $ef $e5
	rst FarCall                                          ; $5156: $f7
	rra                                              ; $5157: $1f
	rst $38                                          ; $5158: $ff
	ld bc, $75ff                                     ; $5159: $01 $ff $75
	ld a, d                                          ; $515c: $7a
	ld [hl], a                                       ; $515d: $77
	cp $98                                           ; $515e: $fe $98
	add $96                                          ; $5160: $c6 $96

jr_04f_5162:
	inc h                                            ; $5162: $24
	or b                                             ; $5163: $b0
	inc sp                                           ; $5164: $33
	ld [hl], c                                       ; $5165: $71
	adc $7b                                          ; $5166: $ce $7b

jr_04f_5168:
	add l                                            ; $5168: $85
	ld l, l                                          ; $5169: $6d
	halt                                             ; $516a: $76
	sub [hl]                                         ; $516b: $96
	ret nc                                           ; $516c: $d0

	ld a, e                                          ; $516d: $7b
	sub b                                            ; $516e: $90
	ei                                               ; $516f: $fb
	jr jr_04f_5162                                   ; $5170: $18 $f0

	scf                                              ; $5172: $37
	db $e3                                           ; $5173: $e3
	inc a                                            ; $5174: $3c
	ld l, b                                          ; $5175: $68
	ld a, [hl-]                                      ; $5176: $3a
	sub e                                            ; $5177: $93
	dec de                                           ; $5178: $1b
	cp h                                             ; $5179: $bc
	rla                                              ; $517a: $17
	cp b                                             ; $517b: $b8
	scf                                              ; $517c: $37
	jr jr_04f_514e                                   ; $517d: $18 $cf

	sbc b                                            ; $517f: $98
	ld a, a                                          ; $5180: $7f
	ld hl, sp+$37                                    ; $5181: $f8 $37
	ret z                                            ; $5183: $c8

	ld [hl], a                                       ; $5184: $77
	cp $9b                                           ; $5185: $fe $9b
	inc e                                            ; $5187: $1c
	db $e3                                           ; $5188: $e3
	dec e                                            ; $5189: $1d
	ldh [c], a                                       ; $518a: $e2
	ld d, a                                          ; $518b: $57
	cp $96                                           ; $518c: $fe $96
	pop bc                                           ; $518e: $c1
	ret                                              ; $518f: $c9


	rst FarCall                                          ; $5190: $f7
	ld h, e                                          ; $5191: $63
	and e                                            ; $5192: $a3
	pop bc                                           ; $5193: $c1
	sbc h                                            ; $5194: $9c
	sbc h                                            ; $5195: $9c
	rst $38                                          ; $5196: $ff
	ld a, e                                          ; $5197: $7b
	ld a, [hl]                                       ; $5198: $7e
	ld [hl], l                                       ; $5199: $75
	halt                                             ; $519a: $76
	sub e                                            ; $519b: $93
	di                                               ; $519c: $f3
	ldh a, [$f0]                                     ; $519d: $f0 $f0
	sub b                                            ; $519f: $90
	ldh a, [$f7]                                     ; $51a0: $f0 $f7
	rst SubAFromBC                                          ; $51a2: $e7
	ld l, a                                          ; $51a3: $6f
	db $fd                                           ; $51a4: $fd
	cp $e3                                           ; $51a5: $fe $e3
	inc e                                            ; $51a7: $1c
	ld [hl], l                                       ; $51a8: $75
	halt                                             ; $51a9: $76
	adc l                                            ; $51aa: $8d
	inc [hl]                                         ; $51ab: $34
	dec sp                                           ; $51ac: $3b
	jr nz, jr_04f_51e6                               ; $51ad: $20 $37

	jr c, jr_04f_5168                                ; $51af: $38 $b7

	sbc b                                            ; $51b1: $98
	rst SubAFromHL                                          ; $51b2: $d7
	ld a, b                                          ; $51b3: $78
	rst FarCall                                          ; $51b4: $f7
	cp b                                             ; $51b5: $b8
	ld b, a                                          ; $51b6: $47
	xor b                                            ; $51b7: $a8
	ld b, a                                          ; $51b8: $47
	cp b                                             ; $51b9: $b8
	ld b, a                                          ; $51ba: $47
	db $fc                                           ; $51bb: $fc
	inc bc                                           ; $51bc: $03
	ld [hl], a                                       ; $51bd: $77
	cp $9e                                           ; $51be: $fe $9e
	call c, $fc6b                                    ; $51c0: $dc $6b $fc
	sbc c                                            ; $51c3: $99
	call nc, Call_04f_7203                           ; $51c4: $d4 $03 $72
	adc h                                            ; $51c7: $8c
	ld [hl], e                                       ; $51c8: $73
	adc h                                            ; $51c9: $8c
	ld e, a                                          ; $51ca: $5f
	db $fc                                           ; $51cb: $fc
	sbc l                                            ; $51cc: $9d
	ldh a, [c]                                       ; $51cd: $f2
	inc c                                            ; $51ce: $0c
	ld l, [hl]                                       ; $51cf: $6e
	ld l, d                                          ; $51d0: $6a
	ld e, a                                          ; $51d1: $5f
	cp $02                                           ; $51d2: $fe $02
	ret nz                                           ; $51d4: $c0

	ld a, b                                          ; $51d5: $78
	inc a                                            ; $51d6: $3c
	add c                                            ; $51d7: $81
	ld a, [$fe07]                                    ; $51d8: $fa $07 $fe
	rlca                                             ; $51db: $07
	db $fd                                           ; $51dc: $fd
	rrca                                             ; $51dd: $0f
	db $fd                                           ; $51de: $fd
	rrca                                             ; $51df: $0f
	db $eb                                           ; $51e0: $eb
	rra                                              ; $51e1: $1f
	ei                                               ; $51e2: $fb
	rra                                              ; $51e3: $1f
	add b                                            ; $51e4: $80
	db $fd                                           ; $51e5: $fd

jr_04f_51e6:
	nop                                              ; $51e6: $00
	rst $38                                          ; $51e7: $ff
	ld b, b                                          ; $51e8: $40
	rst $38                                          ; $51e9: $ff
	sub b                                            ; $51ea: $90
	rst $38                                          ; $51eb: $ff
	and h                                            ; $51ec: $a4
	rst $38                                          ; $51ed: $ff
	ld l, a                                          ; $51ee: $6f
	rst $38                                          ; $51ef: $ff
	ld a, [hl]                                       ; $51f0: $7e
	rst $38                                          ; $51f1: $ff
	ld [$00ff], a                                    ; $51f2: $ea $ff $00
	di                                               ; $51f5: $f3
	ld [hl], a                                       ; $51f6: $77
	db $db                                           ; $51f7: $db
	sbc [hl]                                         ; $51f8: $9e
	ld [hl-], a                                      ; $51f9: $32
	call c, $8cff                                    ; $51fa: $dc $ff $8c
	xor e                                            ; $51fd: $ab
	rst $38                                          ; $51fe: $ff
	adc d                                            ; $51ff: $8a
	rst $38                                          ; $5200: $ff
	inc e                                            ; $5201: $1c
	ld hl, sp+$4e                                    ; $5202: $f8 $4e
	db $fc                                           ; $5204: $fc
	daa                                              ; $5205: $27
	cp $33                                           ; $5206: $fe $33
	rst $38                                          ; $5208: $ff
	sbc c                                            ; $5209: $99
	rst $38                                          ; $520a: $ff
	call $efff                                       ; $520b: $cd $ff $ef
	rst $38                                          ; $520e: $ff
	rst FarCall                                          ; $520f: $f7
	ld h, d                                          ; $5210: $62
	ret z                                            ; $5211: $c8

	ld h, a                                          ; $5212: $67
	cp $56                                           ; $5213: $fe $56
	call nz, $fe77                                   ; $5215: $c4 $77 $fe
	ld h, [hl]                                       ; $5218: $66
	ret z                                            ; $5219: $c8

	ld h, a                                          ; $521a: $67
	cp $66                                           ; $521b: $fe $66
	ret z                                            ; $521d: $c8

	ld h, a                                          ; $521e: $67
	cp $6e                                           ; $521f: $fe $6e
	jp z, $fe5f                                      ; $5221: $ca $5f $fe

	ld l, [hl]                                       ; $5224: $6e
	jp z, $fe5f                                      ; $5225: $ca $5f $fe

	ld l, [hl]                                       ; $5228: $6e
	jp z, $fe5f                                      ; $5229: $ca $5f $fe

	sbc e                                            ; $522c: $9b
	add hl, de                                       ; $522d: $19
	ldh [c], a                                       ; $522e: $e2
	dec d                                            ; $522f: $15
	ldh [c], a                                       ; $5230: $e2
	ld [hl], a                                       ; $5231: $77
	db $fc                                           ; $5232: $fc
	sbc [hl]                                         ; $5233: $9e
	ld de, $fc7b                                     ; $5234: $11 $7b $fc
	ld [hl], a                                       ; $5237: $77
	cp $6c                                           ; $5238: $fe $6c
	ld b, b                                          ; $523a: $40
	ld e, a                                          ; $523b: $5f
	cp $6c                                           ; $523c: $fe $6c
	ld b, b                                          ; $523e: $40
	ld e, a                                          ; $523f: $5f
	cp $76                                           ; $5240: $fe $76
	call z, $fc57                                    ; $5242: $cc $57 $fc
	ld a, [hl]                                       ; $5245: $7e
	call z, $d098                                    ; $5246: $cc $98 $d0
	rlca                                             ; $5249: $07
	ret c                                            ; $524a: $d8

	rlca                                             ; $524b: $07
	ret nc                                           ; $524c: $d0

	rlca                                             ; $524d: $07
	sbc b                                            ; $524e: $98
	ld a, e                                          ; $524f: $7b
	db $fc                                           ; $5250: $fc
	sbc c                                            ; $5251: $99
	sbc c                                            ; $5252: $99
	ld b, $91                                        ; $5253: $06 $91
	ld b, $f2                                        ; $5255: $06 $f2
	inc c                                            ; $5257: $0c
	ld c, a                                          ; $5258: $4f
	cp $02                                           ; $5259: $fe $02
	ret nz                                           ; $525b: $c0

	ld b, [hl]                                       ; $525c: $46
	ret nz                                           ; $525d: $c0

	ld a, l                                          ; $525e: $7d
	di                                               ; $525f: $f3
	ld [hl], a                                       ; $5260: $77
	cp $74                                           ; $5261: $fe $74
	inc a                                            ; $5263: $3c
	ld a, l                                          ; $5264: $7d
	db $eb                                           ; $5265: $eb
	ld a, e                                          ; $5266: $7b
	cp $91                                           ; $5267: $fe $91
	ldh [$ee], a                                     ; $5269: $e0 $ee
	cp $ff                                           ; $526b: $fe $ff
	add b                                            ; $526d: $80
	rst GetHLinHL                                          ; $526e: $cf
	adc a                                            ; $526f: $8f
	sbc a                                            ; $5270: $9f
	sub [hl]                                         ; $5271: $96
	sbc a                                            ; $5272: $9f
	ld b, $ce                                        ; $5273: $06 $ce
	nop                                              ; $5275: $00
	ret nz                                           ; $5276: $c0

	ld a, e                                          ; $5277: $7b
	cp $8d                                           ; $5278: $fe $8d
	nop                                              ; $527a: $00
	rlca                                             ; $527b: $07
	rlca                                             ; $527c: $07
	ld bc, $030f                                     ; $527d: $01 $0f $03
	rra                                              ; $5280: $1f
	ld bc, $0115                                     ; $5281: $01 $15 $01
	inc de                                           ; $5284: $13
	nop                                              ; $5285: $00
	stop                                             ; $5286: $10 $00
	ld [hl], b                                       ; $5288: $70
	scf                                              ; $5289: $37
	ld a, a                                          ; $528a: $7f
	rst SubAFromDE                                          ; $528b: $df
	ld a, b                                          ; $528c: $78
	jp nz, $d07d                                     ; $528d: $c2 $7d $d0

	sub a                                            ; $5290: $97
	set 7, [hl]                                      ; $5291: $cb $fe
	adc d                                            ; $5293: $8a
	cp $06                                           ; $5294: $fe $06
	db $fc                                           ; $5296: $fc
	inc c                                            ; $5297: $0c
	db $fc                                           ; $5298: $fc
	ld d, [hl]                                       ; $5299: $56
	call nz, $3b96                                   ; $529a: $c4 $96 $3b
	rst JumpTable                                          ; $529d: $c7
	ld a, $c7                                        ; $529e: $3e $c7
	call z, $cc33                                    ; $52a0: $cc $33 $cc
	inc sp                                           ; $52a3: $33
	ret z                                            ; $52a4: $c8

	ld [hl], e                                       ; $52a5: $73
	db $fc                                           ; $52a6: $fc
	ld a, a                                          ; $52a7: $7f
	cp $9b                                           ; $52a8: $fe $9b
	ld c, b                                          ; $52aa: $48
	or e                                             ; $52ab: $b3
	ret z                                            ; $52ac: $c8

	or e                                             ; $52ad: $b3
	ld [hl], a                                       ; $52ae: $77
	rst SubAFromBC                                          ; $52af: $e7
	sub c                                            ; $52b0: $91
	rst SubAFromDE                                          ; $52b1: $df
	jr c, @+$01                                      ; $52b2: $38 $ff

	ld a, $fb                                        ; $52b4: $3e $fb
	dec sp                                           ; $52b6: $3b
	di                                               ; $52b7: $f3
	ld [hl-], a                                      ; $52b8: $32
	db $e3                                           ; $52b9: $e3
	inc sp                                           ; $52ba: $33
	pop af                                           ; $52bb: $f1
	ccf                                              ; $52bc: $3f
	ld a, $c1                                        ; $52bd: $3e $c1
	ld e, a                                          ; $52bf: $5f
	cp $9b                                           ; $52c0: $fe $9b
	inc a                                            ; $52c2: $3c
	jp $c33d                                         ; $52c3: $c3 $3d $c3


	ld d, d                                          ; $52c6: $52
	jp nz, Jump_04f_687e                             ; $52c7: $c2 $7e $68

	sbc [hl]                                         ; $52ca: $9e
	di                                               ; $52cb: $f3
	ld h, [hl]                                       ; $52cc: $66
	ret z                                            ; $52cd: $c8

	ld a, a                                          ; $52ce: $7f
	ldh [c], a                                       ; $52cf: $e2
	sbc c                                            ; $52d0: $99
	ld sp, $39c9                                     ; $52d1: $31 $c9 $39
	ret                                              ; $52d4: $c9


	ccf                                              ; $52d5: $3f
	rst GetHLinHL                                          ; $52d6: $cf
	ld e, [hl]                                       ; $52d7: $5e
	add $99                                          ; $52d8: $c6 $99
	or a                                             ; $52da: $b7
	ret z                                            ; $52db: $c8

	db $fd                                           ; $52dc: $fd
	adc $ff                                          ; $52dd: $ce $ff
	sbc $76                                          ; $52df: $de $76
	ret z                                            ; $52e1: $c8

	ld a, a                                          ; $52e2: $7f
	db $fc                                           ; $52e3: $fc
	sbc b                                            ; $52e4: $98
	dec [hl]                                         ; $52e5: $35
	jp nz, $c231                                     ; $52e6: $c2 $31 $c2

	dec [hl]                                         ; $52e9: $35
	jp nz, $7b3d                                     ; $52ea: $c2 $3d $7b

	db $fc                                           ; $52ed: $fc
	ld a, a                                          ; $52ee: $7f
	and c                                            ; $52ef: $a1

jr_04f_52f0:
	sbc [hl]                                         ; $52f0: $9e
	jr z, jr_04f_536e                                ; $52f1: $28 $7b

	sbc l                                            ; $52f3: $9d
	ld l, a                                          ; $52f4: $6f
	db $fc                                           ; $52f5: $fc
	sbc c                                            ; $52f6: $99
	ld a, b                                          ; $52f7: $78
	rst SubAFromBC                                          ; $52f8: $e7
	sbc b                                            ; $52f9: $98
	sub a                                            ; $52fa: $97
	rst SubAFromBC                                          ; $52fb: $e7
	jr jr_04f_535d                                   ; $52fc: $18 $5f

	cp $82                                           ; $52fe: $fe $82
	and $18                                          ; $5300: $e6 $18
	db $e4                                           ; $5302: $e4
	add hl, de                                       ; $5303: $19
	ret z                                            ; $5304: $c8

	daa                                              ; $5305: $27
	ret c                                            ; $5306: $d8

	daa                                              ; $5307: $27
	reti                                             ; $5308: $d9


	ld h, $d9                                        ; $5309: $26 $d9
	ld h, $f1                                        ; $530b: $26 $f1
	ld c, $f9                                        ; $530d: $0e $f9
	ld b, $71                                        ; $530f: $06 $71
	xor $f9                                          ; $5311: $ee $f9
	or $b9                                           ; $5313: $f6 $b9
	ld b, $11                                        ; $5315: $06 $11
	ld b, $b9                                        ; $5317: $06 $b9
	ld b, $79                                        ; $5319: $06 $79
	ld b, $39                                        ; $531b: $06 $39
	ld l, e                                          ; $531d: $6b
	db $fc                                           ; $531e: $fc
	ld a, [hl]                                       ; $531f: $7e
	adc $7e                                          ; $5320: $ce $7e
	sbc h                                            ; $5322: $9c
	ld e, a                                          ; $5323: $5f
	db $fc                                           ; $5324: $fc
	sbc h                                            ; $5325: $9c
	and e                                            ; $5326: $a3
	db $fc                                           ; $5327: $fc
	cp b                                             ; $5328: $b8
	ld a, d                                          ; $5329: $7a
	sbc h                                            ; $532a: $9c
	ld h, a                                          ; $532b: $67
	cp $9b                                           ; $532c: $fe $9b
	cp c                                             ; $532e: $b9
	ld b, a                                          ; $532f: $47

jr_04f_5330:
	cp d                                             ; $5330: $ba
	ld b, [hl]                                       ; $5331: $46
	ld c, [hl]                                       ; $5332: $4e
	jp nz, Jump_04f_5f9d                             ; $5333: $c2 $9d $5f

	ld b, b                                          ; $5336: $40
	inc b                                            ; $5337: $04
	ld b, b                                          ; $5338: $40
	add d                                            ; $5339: $82
	add b                                            ; $533a: $80
	ldh [$c0], a                                     ; $533b: $e0 $c0
	ld h, b                                          ; $533d: $60
	jr nz, jr_04f_52f0                               ; $533e: $20 $b0

	jr nc, @-$26                                     ; $5340: $30 $d8

	ldh a, [$0c]                                     ; $5342: $f0 $0c
	db $fc                                           ; $5344: $fc
	rlca                                             ; $5345: $07
	db $fd                                           ; $5346: $fd
	inc bc                                           ; $5347: $03
	db $fc                                           ; $5348: $fc
	ld c, $00                                        ; $5349: $0e $00
	jr nc, jr_04f_534d                               ; $534b: $30 $00

jr_04f_534d:
	ld bc, $f9c8                                     ; $534d: $01 $c8 $f9
	nop                                              ; $5350: $00
	ld [hl], e                                       ; $5351: $73
	ld bc, $0303                                     ; $5352: $01 $03 $03
	rrca                                             ; $5355: $0f
	dec c                                            ; $5356: $0d
	ld a, d                                          ; $5357: $7a
	sbc a                                            ; $5358: $9f
	sub l                                            ; $5359: $95
	ccf                                              ; $535a: $3f
	ld hl, sp+$3f                                    ; $535b: $f8 $3f

jr_04f_535d:
	ldh [$67], a                                     ; $535d: $e0 $67
	add sp, -$19                                     ; $535f: $e8 $e7
	ret c                                            ; $5361: $d8

	rst $38                                          ; $5362: $ff
	add b                                            ; $5363: $80
	ld [hl], e                                       ; $5364: $73
	ret nc                                           ; $5365: $d0

	sub a                                            ; $5366: $97
	add b                                            ; $5367: $80
	ld [hl], $cc                                     ; $5368: $36 $cc
	jr c, jr_04f_5330                                ; $536a: $38 $c4

	cp a                                             ; $536c: $bf
	rst JumpTable                                          ; $536d: $c7

jr_04f_536e:
	sbc $78                                          ; $536e: $de $78
	ld h, $df                                        ; $5370: $26 $df
	rst $38                                          ; $5372: $ff
	rst SubAFromDE                                          ; $5373: $df
	db $fd                                           ; $5374: $fd
	rst SubAFromDE                                          ; $5375: $df
	rst $38                                          ; $5376: $ff
	sbc [hl]                                         ; $5377: $9e
	ld [$0b7a], sp                                   ; $5378: $08 $7a $0b
	sbc h                                            ; $537b: $9c
	adc b                                            ; $537c: $88
	di                                               ; $537d: $f3
	ldh a, [$dc]                                     ; $537e: $f0 $dc
	rst $38                                          ; $5380: $ff
	rst SubAFromDE                                          ; $5381: $df
	cp a                                             ; $5382: $bf
	rst SubAFromDE                                          ; $5383: $df
	rst SubAFromBC                                          ; $5384: $e7
	sbc h                                            ; $5385: $9c
	cp h                                             ; $5386: $bc
	ld a, h                                          ; $5387: $7c
	ld a, [hl]                                       ; $5388: $7e
	ld a, e                                          ; $5389: $7b
	and $d7                                          ; $538a: $e6 $d7
	rst $38                                          ; $538c: $ff
	sub [hl]                                         ; $538d: $96
	add a                                            ; $538e: $87
	ld a, [$f60c]                                    ; $538f: $fa $0c $f6
	ldh a, [c]                                       ; $5392: $f2
	ei                                               ; $5393: $fb
	pop hl                                           ; $5394: $e1
	rst FarCall                                          ; $5395: $f7
	rst SubAFromBC                                          ; $5396: $e7
	sbc $ff                                          ; $5397: $de $ff
	db $dd                                           ; $5399: $dd
	di                                               ; $539a: $f3
	sub d                                            ; $539b: $92
	or e                                             ; $539c: $b3
	di                                               ; $539d: $f3
	ld h, b                                          ; $539e: $60
	inc sp                                           ; $539f: $33
	dec sp                                           ; $53a0: $3b
	rra                                              ; $53a1: $1f
	adc a                                            ; $53a2: $8f
	rst JumpTable                                          ; $53a3: $c7
	pop hl                                           ; $53a4: $e1
	pop af                                           ; $53a5: $f1
	ei                                               ; $53a6: $fb
	ei                                               ; $53a7: $fb
	rst AddAOntoHL                                          ; $53a8: $ef
	sbc $ff                                          ; $53a9: $de $ff
	sbc b                                            ; $53ab: $98
	ld sp, $39c1                                     ; $53ac: $31 $c1 $39
	ret z                                            ; $53af: $c8

	ccf                                              ; $53b0: $3f
	rst GetHLinHL                                          ; $53b1: $cf
	add a                                            ; $53b2: $87
	ret c                                            ; $53b3: $d8

	rst $38                                          ; $53b4: $ff
	sbc b                                            ; $53b5: $98
	di                                               ; $53b6: $f3
	jp nc, $d2a1                                     ; $53b7: $d2 $a1 $d2

	sbc $ff                                          ; $53ba: $de $ff
	di                                               ; $53bc: $f3
	ld [hl], a                                       ; $53bd: $77
	call nc, $a07b                                   ; $53be: $d4 $7b $a0
	rst SubAFromDE                                          ; $53c1: $df
	rst AddAOntoHL                                          ; $53c2: $ef
	ld a, [hl]                                       ; $53c3: $7e
	call z, $fe7f                                    ; $53c4: $cc $7f $fe
	sbc e                                            ; $53c7: $9b
	scf                                              ; $53c8: $37
	jp $c7bb                                         ; $53c9: $c3 $bb $c7


	db $dd                                           ; $53cc: $dd

jr_04f_53cd:
	rst $38                                          ; $53cd: $ff
	sub e                                            ; $53ce: $93
	rst SubAFromDE                                          ; $53cf: $df
	adc $87                                          ; $53d0: $ce $87
	rst GetHLinHL                                          ; $53d2: $cf
	sbc b                                            ; $53d3: $98
	sub a                                            ; $53d4: $97
	ld [$d897], sp                                   ; $53d5: $08 $97 $d8
	rst FarCall                                          ; $53d8: $f7
	rst AddAOntoHL                                          ; $53d9: $ef
	rst SubAFromDE                                          ; $53da: $df
	db $dd                                           ; $53db: $dd
	rst $38                                          ; $53dc: $ff
	sbc [hl]                                         ; $53dd: $9e
	xor $7b                                          ; $53de: $ee $7b
	cp a                                             ; $53e0: $bf
	ld a, [hl]                                       ; $53e1: $7e
	jp z, $e580                                      ; $53e2: $ca $80 $e5

	jr jr_04f_53cd                                   ; $53e5: $18 $e6

	add hl, de                                       ; $53e7: $19
	xor a                                            ; $53e8: $af
	ld a, a                                          ; $53e9: $7f
	rst $38                                          ; $53ea: $ff
	rst $38                                          ; $53eb: $ff
	ld a, a                                          ; $53ec: $7f
	rst $38                                          ; $53ed: $ff
	add hl, sp                                       ; $53ee: $39
	dec sp                                           ; $53ef: $3b
	rra                                              ; $53f0: $1f
	ccf                                              ; $53f1: $3f
	sub c                                            ; $53f2: $91
	ld e, $91                                        ; $53f3: $1e $91
	ld c, $91                                        ; $53f5: $0e $91
	sbc [hl]                                         ; $53f7: $9e
	cp $bf                                           ; $53f8: $fe $bf
	ccf                                              ; $53fa: $3f
	cp a                                             ; $53fb: $bf
	cp $ff                                           ; $53fc: $fe $ff
	call z, $fede                                    ; $53fe: $cc $de $fe
	cp $f8                                           ; $5401: $fe $f8
	sbc c                                            ; $5403: $99
	rlca                                             ; $5404: $07
	ldh a, [rIF]                                     ; $5405: $f0 $0f
	ld a, c                                          ; $5407: $79
	rlca                                             ; $5408: $07
	ld bc, $ffde                                     ; $5409: $01 $de $ff
	ld a, a                                          ; $540c: $7f
	ldh [$df], a                                     ; $540d: $e0 $df
	ld a, l                                          ; $540f: $7d
	rst SubAFromDE                                          ; $5410: $df
	ld a, a                                          ; $5411: $7f
	add a                                            ; $5412: $87
	ld [de], a                                       ; $5413: $12
	inc e                                            ; $5414: $1c
	inc de                                           ; $5415: $13
	inc e                                            ; $5416: $1c
	add e                                            ; $5417: $83
	cp h                                             ; $5418: $bc
	ld [hl], b                                       ; $5419: $70
	rst $38                                          ; $541a: $ff
	ccf                                              ; $541b: $3f
	ld a, a                                          ; $541c: $7f
	ld a, a                                          ; $541d: $7f
	rst $38                                          ; $541e: $ff
	ret c                                            ; $541f: $d8

	db $dd                                           ; $5420: $dd
	ld hl, sp-$04                                    ; $5421: $f8 $fc
	cp h                                             ; $5423: $bc
	ld b, [hl]                                       ; $5424: $46
	cp [hl]                                          ; $5425: $be
	ld b, [hl]                                       ; $5426: $46
	ld [hl], $cf                                     ; $5427: $36 $cf
	cp $dd                                           ; $5429: $fe $dd
	db $dd                                           ; $542b: $dd
	rst $38                                          ; $542c: $ff
	sbc [hl]                                         ; $542d: $9e
	ld a, [$467b]                                    ; $542e: $fa $7b $46
	ld a, [hl]                                       ; $5431: $7e
	adc $7f                                          ; $5432: $ce $7f
	cp $9d                                           ; $5434: $fe $9d
	rst SubAFromDE                                          ; $5436: $df
	ret nz                                           ; $5437: $c0

	ld [hl], a                                       ; $5438: $77
	cp $9c                                           ; $5439: $fe $9c
	ld e, a                                          ; $543b: $5f
	ret nz                                           ; $543c: $c0

	ld c, a                                          ; $543d: $4f
	ld a, e                                          ; $543e: $7b
	or $6a                                           ; $543f: $f6 $6a
	ret c                                            ; $5441: $d8

	sub [hl]                                         ; $5442: $96
	rrca                                             ; $5443: $0f
	ldh [$3d], a                                     ; $5444: $e0 $3d
	ret nz                                           ; $5446: $c0

	ld l, b                                          ; $5447: $68
	add b                                            ; $5448: $80
	ld c, h                                          ; $5449: $4c
	add b                                            ; $544a: $80
	db $ed                                           ; $544b: $ed
	ld [hl], h                                       ; $544c: $74
	ld a, $80                                        ; $544d: $3e $80
	db $fc                                           ; $544f: $fc
	ccf                                              ; $5450: $3f
	add b                                            ; $5451: $80
	ldh [rP1], a                                     ; $5452: $e0 $00
	ld b, c                                          ; $5454: $41
	nop                                              ; $5455: $00
	ld bc, $0301                                     ; $5456: $01 $01 $03
	ld [bc], a                                       ; $5459: $02
	ld b, a                                          ; $545a: $47
	ldh a, [rAUD3HIGH]                               ; $545b: $f0 $1e
	db $e4                                           ; $545d: $e4
	db $fc                                           ; $545e: $fc
	nop                                              ; $545f: $00
	db $ec                                           ; $5460: $ec
	ld b, b                                          ; $5461: $40
	ld l, b                                          ; $5462: $68
	ld bc, $80ce                                     ; $5463: $01 $ce $80
	adc c                                            ; $5466: $89
	nop                                              ; $5467: $00
	adc b                                            ; $5468: $88
	nop                                              ; $5469: $00
	ld [$ff01], sp                                   ; $546a: $08 $01 $ff
	nop                                              ; $546d: $00
	sbc h                                            ; $546e: $9c
	ccf                                              ; $546f: $3f
	nop                                              ; $5470: $00
	rlca                                             ; $5471: $07
	cp $9c                                           ; $5472: $fe $9c
	inc bc                                           ; $5474: $03
	nop                                              ; $5475: $00
	add a                                            ; $5476: $87
	ld a, d                                          ; $5477: $7a
	or h                                             ; $5478: $b4
	adc [hl]                                         ; $5479: $8e
	nop                                              ; $547a: $00
	cp a                                             ; $547b: $bf
	ldh [$9f], a                                     ; $547c: $e0 $9f
	cp $49                                           ; $547e: $fe $49
	db $fd                                           ; $5480: $fd
	ld b, b                                          ; $5481: $40
	ld a, h                                          ; $5482: $7c
	ld b, h                                          ; $5483: $44
	xor $40                                          ; $5484: $ee $40
	rst FarCall                                          ; $5486: $f7
	ld [bc], a                                       ; $5487: $02
	ld l, a                                          ; $5488: $6f
	nop                                              ; $5489: $00
	ld h, a                                          ; $548a: $67
	jp c, $9eff                                      ; $548b: $da $ff $9e

	sub c                                            ; $548e: $91
	ld a, e                                          ; $548f: $7b
	cp $77                                           ; $5490: $fe $77
	ld a, [$108e]                                    ; $5492: $fa $8e $10
	rst SubAFromBC                                          ; $5495: $e7
	and $e7                                          ; $5496: $e6 $e7
	cp $f7                                           ; $5498: $fe $f7
	di                                               ; $549a: $f3
	di                                               ; $549b: $f3
	rst FarCall                                          ; $549c: $f7
	call $e3ed                                       ; $549d: $cd $ed $e3
	db $fd                                           ; $54a0: $fd
	di                                               ; $54a1: $f3
	rst $38                                          ; $54a2: $ff
	rst FarCall                                          ; $54a3: $f7
	rst $38                                          ; $54a4: $ff
	ld l, d                                          ; $54a5: $6a
	jp $fe89                                         ; $54a6: $c3 $89 $fe


	rst JumpTable                                          ; $54a9: $c7
	cp $c7                                           ; $54aa: $fe $c7
	rst $38                                          ; $54ac: $ff
	rst JumpTable                                          ; $54ad: $c7
	ld a, [hl]                                       ; $54ae: $7e
	rst JumpTable                                          ; $54af: $c7
	ld a, [hl]                                       ; $54b0: $7e
	pop hl                                           ; $54b1: $e1
	di                                               ; $54b2: $f3
	rst FarCall                                          ; $54b3: $f7
	rst $38                                          ; $54b4: $ff
	rst SubAFromBC                                          ; $54b5: $e7
	rst FarCall                                          ; $54b6: $f7
	rst SubAFromBC                                          ; $54b7: $e7
	ld h, a                                          ; $54b8: $67
	reti                                             ; $54b9: $d9


	db $fd                                           ; $54ba: $fd
	rst GetHLinHL                                          ; $54bb: $cf
	db $dd                                           ; $54bc: $dd
	rst FarCall                                          ; $54bd: $f7
	ld a, e                                          ; $54be: $7b
	dec sp                                           ; $54bf: $3b
	sbc [hl]                                         ; $54c0: $9e
	db $e3                                           ; $54c1: $e3
	db $db                                           ; $54c2: $db
	rst $38                                          ; $54c3: $ff
	sbc h                                            ; $54c4: $9c
	set 7, a                                         ; $54c5: $cb $ff
	db $eb                                           ; $54c7: $eb
	ld a, e                                          ; $54c8: $7b
	sub $7f                                          ; $54c9: $d6 $7f
	ld a, [$8995]                                    ; $54cb: $fa $95 $89
	rst GetHLinHL                                          ; $54ce: $cf
	rst $38                                          ; $54cf: $ff
	rst GetHLinHL                                          ; $54d0: $cf
	rst SubAFromDE                                          ; $54d1: $df
	set 3, a                                         ; $54d2: $cb $df
	ret                                              ; $54d4: $c9


	rst $38                                          ; $54d5: $ff
	cp $de                                           ; $54d6: $fe $de
	ld a, a                                          ; $54d8: $7f
	ld a, a                                          ; $54d9: $7f
	dec sp                                           ; $54da: $3b
	sbc [hl]                                         ; $54db: $9e
	sbc b                                            ; $54dc: $98
	halt                                             ; $54dd: $76
	add $dd                                          ; $54de: $c6 $dd
	rst $38                                          ; $54e0: $ff
	ld a, a                                          ; $54e1: $7f
	reti                                             ; $54e2: $d9


	sbc [hl]                                         ; $54e3: $9e
	db $e3                                           ; $54e4: $e3
	ld a, d                                          ; $54e5: $7a
	db $ed                                           ; $54e6: $ed
	sbc h                                            ; $54e7: $9c
	pop af                                           ; $54e8: $f1
	cp a                                             ; $54e9: $bf
	pop af                                           ; $54ea: $f1
	sbc $cf                                          ; $54eb: $de $cf
	ld a, e                                          ; $54ed: $7b
	sbc $96                                          ; $54ee: $de $96
	ld b, e                                          ; $54f0: $43
	db $db                                           ; $54f1: $db
	inc de                                           ; $54f2: $13
	cp e                                             ; $54f3: $bb
	rst GetHLinHL                                          ; $54f4: $cf
	rst $38                                          ; $54f5: $ff
	adc a                                            ; $54f6: $8f
	rst $38                                          ; $54f7: $ff
	adc a                                            ; $54f8: $8f
	ld h, [hl]                                       ; $54f9: $66
	ld h, h                                          ; $54fa: $64
	add d                                            ; $54fb: $82
	ld b, a                                          ; $54fc: $47
	rst $38                                          ; $54fd: $ff
	ld b, a                                          ; $54fe: $47
	db $fc                                           ; $54ff: $fc
	cp $fe                                           ; $5500: $fe $fe
	ld b, a                                          ; $5502: $47
	rst $38                                          ; $5503: $ff
	ld b, e                                          ; $5504: $43
	ccf                                              ; $5505: $3f
	rst FarCall                                          ; $5506: $f7
	ld a, a                                          ; $5507: $7f
	rst $38                                          ; $5508: $ff
	ld a, a                                          ; $5509: $7f
	ccf                                              ; $550a: $3f
	ld a, a                                          ; $550b: $7f
	db $fc                                           ; $550c: $fc
	sbc a                                            ; $550d: $9f
	cp h                                             ; $550e: $bc
	sbc a                                            ; $550f: $9f
	cp a                                             ; $5510: $bf
	rst $38                                          ; $5511: $ff
	db $fc                                           ; $5512: $fc
	rst $38                                          ; $5513: $ff
	ld hl, sp+$1e                                    ; $5514: $f8 $1e
	cp $fe                                           ; $5516: $fe $fe
	rst $38                                          ; $5518: $ff
	ld a, e                                          ; $5519: $7b
	db $fd                                           ; $551a: $fd
	ld a, a                                          ; $551b: $7f
	push de                                          ; $551c: $d5
	sub [hl]                                         ; $551d: $96
	sbc a                                            ; $551e: $9f
	di                                               ; $551f: $f3
	ei                                               ; $5520: $fb
	ei                                               ; $5521: $fb
	sbc a                                            ; $5522: $9f
	rst $38                                          ; $5523: $ff
	adc a                                            ; $5524: $8f
	ld a, [hl]                                       ; $5525: $7e
	rst AddAOntoHL                                          ; $5526: $ef
	sbc $7f                                          ; $5527: $de $7f
	rst SubAFromDE                                          ; $5529: $df
	rst $38                                          ; $552a: $ff
	adc c                                            ; $552b: $89
	ld sp, hl                                        ; $552c: $f9
	ccf                                              ; $552d: $3f
	ld sp, hl                                        ; $552e: $f9
	ccf                                              ; $552f: $3f
	cp a                                             ; $5530: $bf
	cp a                                             ; $5531: $bf
	ld sp, hl                                        ; $5532: $f9
	rst $38                                          ; $5533: $ff
	pop af                                           ; $5534: $f1
	inc a                                            ; $5535: $3c
	db $fc                                           ; $5536: $fc
	db $fc                                           ; $5537: $fc
	rst $38                                          ; $5538: $ff
	ld sp, hl                                        ; $5539: $f9
	db $fd                                           ; $553a: $fd
	db $fc                                           ; $553b: $fc
	ld e, $f2                                        ; $553c: $1e $f2
	ld e, $f1                                        ; $553e: $1e $f1
	rst FarCall                                          ; $5540: $f7
	ld sp, hl                                        ; $5541: $f9
	ld a, b                                          ; $5542: $78
	halt                                             ; $5543: $76
	sbc [hl]                                         ; $5544: $9e
	cp $72                                           ; $5545: $fe $72
	halt                                             ; $5547: $76
	sbc l                                            ; $5548: $9d
	rst $38                                          ; $5549: $ff
	ld [hl], h                                       ; $554a: $74
	ld a, e                                          ; $554b: $7b
	cp $df                                           ; $554c: $fe $df
	rst $38                                          ; $554e: $ff
	sbc e                                            ; $554f: $9b
	db $e4                                           ; $5550: $e4
	rst $38                                          ; $5551: $ff
	db $e4                                           ; $5552: $e4
	rst GetHLinHL                                          ; $5553: $cf
	ld a, d                                          ; $5554: $7a
	add $7f                                          ; $5555: $c6 $7f
	db $fc                                           ; $5557: $fc
	add b                                            ; $5558: $80
	rst SubAFromHL                                          ; $5559: $d7
	pop bc                                           ; $555a: $c1
	rst GetHLinHL                                          ; $555b: $cf
	pop bc                                           ; $555c: $c1
	rst SubAFromHL                                          ; $555d: $d7
	pop bc                                           ; $555e: $c1
	jp z, $d6c1                                      ; $555f: $ca $c1 $d6

	jp $de84                                         ; $5562: $c3 $84 $de


	add b                                            ; $5565: $80
	rst $38                                          ; $5566: $ff
	inc b                                            ; $5567: $04
	rst $38                                          ; $5568: $ff
	nop                                              ; $5569: $00
	cp a                                             ; $556a: $bf
	sub d                                            ; $556b: $92
	rst $38                                          ; $556c: $ff
	ld c, d                                          ; $556d: $4a
	rst $38                                          ; $556e: $ff
	ld h, $7f                                        ; $556f: $26 $7f
	ld d, $bf                                        ; $5571: $16 $bf
	ld [bc], a                                       ; $5573: $02
	and e                                            ; $5574: $a3
	ld bc, $00c7                                     ; $5575: $01 $c7 $00
	add h                                            ; $5578: $84
	xor c                                            ; $5579: $a9
	nop                                              ; $557a: $00
	call nc, $aa00                                   ; $557b: $d4 $00 $aa
	ld bc, $0255                                     ; $557e: $01 $55 $02
	xor e                                            ; $5581: $ab
	ld bc, $0043                                     ; $5582: $01 $43 $00
	ld [$8f00], sp                                   ; $5585: $08 $00 $8f
	add b                                            ; $5588: $80
	rst GetHLinHL                                          ; $5589: $cf
	ld b, l                                          ; $558a: $45
	ld [$c986], a                                    ; $558b: $ea $86 $c9
	ld b, $99                                        ; $558e: $06 $99
	inc bc                                           ; $5590: $03
	inc l                                            ; $5591: $2c
	inc bc                                           ; $5592: $03
	ld e, h                                          ; $5593: $5c
	cp $7e                                           ; $5594: $fe $7e
	jp nz, $9d7e                                     ; $5596: $c2 $7e $9d

	add d                                            ; $5599: $82
	cp $b3                                           ; $559a: $fe $b3
	ld c, h                                          ; $559c: $4c
	ld [hl], e                                       ; $559d: $73
	adc h                                            ; $559e: $8c
	scf                                              ; $559f: $37
	ret z                                            ; $55a0: $c8

	cp a                                             ; $55a1: $bf
	ld b, b                                          ; $55a2: $40
	ld bc, $026b                                     ; $55a3: $01 $6b $02
	rst SubAFromBC                                          ; $55a6: $e7
	add h                                            ; $55a7: $84
	ld e, a                                          ; $55a8: $5f
	adc b                                            ; $55a9: $88
	ld c, [hl]                                       ; $55aa: $4e
	add b                                            ; $55ab: $80
	ld b, a                                          ; $55ac: $47
	add b                                            ; $55ad: $80
	ld c, e                                          ; $55ae: $4b
	add c                                            ; $55af: $81
	ld b, a                                          ; $55b0: $47
	add c                                            ; $55b1: $81
	ld c, e                                          ; $55b2: $4b
	rst $38                                          ; $55b3: $ff
	sub b                                            ; $55b4: $90
	rst $38                                          ; $55b5: $ff
	ret nc                                           ; $55b6: $d0

	sbc $ff                                          ; $55b7: $de $ff
	sbc [hl]                                         ; $55b9: $9e
	ret nc                                           ; $55ba: $d0

	ld sp, hl                                        ; $55bb: $f9
	jp c, $9eff                                      ; $55bc: $da $ff $9e

	rrca                                             ; $55bf: $0f
	ld sp, hl                                        ; $55c0: $f9
	ld a, d                                          ; $55c1: $7a
	call z, $fe9e                                    ; $55c2: $cc $9e $fe
	ld a, c                                          ; $55c5: $79
	sub h                                            ; $55c6: $94
	sbc [hl]                                         ; $55c7: $9e
	cp $4b                                           ; $55c8: $fe $4b
	ldh [$9e], a                                     ; $55ca: $e0 $9e
	db $e3                                           ; $55cc: $e3
	ld h, e                                          ; $55cd: $63
	ldh a, [$7e]                                     ; $55ce: $f0 $7e
	push de                                          ; $55d0: $d5
	ld a, a                                          ; $55d1: $7f
	cp $df                                           ; $55d2: $fe $df
	rst $38                                          ; $55d4: $ff
	sbc [hl]                                         ; $55d5: $9e
	and c                                            ; $55d6: $a1
	ld sp, hl                                        ; $55d7: $f9
	sbc l                                            ; $55d8: $9d
	ld hl, sp-$01                                    ; $55d9: $f8 $ff
	ld [hl], a                                       ; $55db: $77
	cp $9d                                           ; $55dc: $fe $9d
	ld sp, hl                                        ; $55de: $f9
	rst SubAFromDE                                          ; $55df: $df
	ld sp, hl                                        ; $55e0: $f9
	sbc l                                            ; $55e1: $9d
	rst SubAFromDE                                          ; $55e2: $df
	pop af                                           ; $55e3: $f1
	ld [hl], d                                       ; $55e4: $72
	cp a                                             ; $55e5: $bf
	sbc [hl]                                         ; $55e6: $9e
	ei                                               ; $55e7: $fb
	ld c, e                                          ; $55e8: $4b
	ret nz                                           ; $55e9: $c0

	sbc [hl]                                         ; $55ea: $9e
	adc $63                                          ; $55eb: $ce $63
	ldh a, [$7a]                                     ; $55ed: $f0 $7a
	add $de                                          ; $55ef: $c6 $de
	rst $38                                          ; $55f1: $ff
	ld a, [hl]                                       ; $55f2: $7e
	ld [bc], a                                       ; $55f3: $02
	ld h, a                                          ; $55f4: $67
	ldh a, [$7e]                                     ; $55f5: $f0 $7e
	pop af                                           ; $55f7: $f1
	ld a, a                                          ; $55f8: $7f
	cp $df                                           ; $55f9: $fe $df
	rst $38                                          ; $55fb: $ff
	ld a, l                                          ; $55fc: $7d
	db $fc                                           ; $55fd: $fc
	ld h, a                                          ; $55fe: $67
	ldh a, [$7a]                                     ; $55ff: $f0 $7a
	add $de                                          ; $5601: $c6 $de
	rst $38                                          ; $5603: $ff
	sbc [hl]                                         ; $5604: $9e
	sbc l                                            ; $5605: $9d
	ld h, e                                          ; $5606: $63
	ldh a, [$7f]                                     ; $5607: $f0 $7f
	or b                                             ; $5609: $b0
	ld a, a                                          ; $560a: $7f
	cp $df                                           ; $560b: $fe $df
	rst $38                                          ; $560d: $ff
	sbc [hl]                                         ; $560e: $9e
	pop hl                                           ; $560f: $e1
	ld h, e                                          ; $5610: $63
	ldh a, [$7e]                                     ; $5611: $f0 $7e
	call z, $3f9e                                    ; $5613: $cc $9e $3f
	sbc $ff                                          ; $5616: $de $ff
	sbc [hl]                                         ; $5618: $9e
	dec a                                            ; $5619: $3d
	ld h, e                                          ; $561a: $63
	ldh a, [$9e]                                     ; $561b: $f0 $9e
	db $f4                                           ; $561d: $f4
	ld a, e                                          ; $561e: $7b
	cp $df                                           ; $561f: $fe $df
	rst $38                                          ; $5621: $ff
	sbc [hl]                                         ; $5622: $9e
	call nz, $80f9                                   ; $5623: $c4 $f9 $80
	jp z, $c6c3                                      ; $5626: $ca $c3 $c6

	jp $c6cc                                         ; $5629: $c3 $cc $c6


	call nz, $08c6                                   ; $562c: $c4 $c6 $08
	inc c                                            ; $562f: $0c
	nop                                              ; $5630: $00
	inc c                                            ; $5631: $0c
	db $10                                           ; $5632: $10
	jr jr_04f_5635                                   ; $5633: $18 $00

jr_04f_5635:
	ld de, $5f0e                                     ; $5635: $11 $0e $5f
	ld c, $3f                                        ; $5638: $0e $3f
	ld b, $1f                                        ; $563a: $06 $1f
	ld b, $3f                                        ; $563c: $06 $3f
	ld [bc], a                                       ; $563e: $02
	ccf                                              ; $563f: $3f
	ld [bc], a                                       ; $5640: $02
	ld a, a                                          ; $5641: $7f
	jp nz, $32ff                                     ; $5642: $c2 $ff $32

	ld a, [hl]                                       ; $5645: $7e
	or [hl]                                          ; $5646: $b6
	sbc h                                            ; $5647: $9c
	add c                                            ; $5648: $81
	nop                                              ; $5649: $00
	ld bc, $85fd                                     ; $564a: $01 $fd $85
	rrca                                             ; $564d: $0f
	ld a, a                                          ; $564e: $7f
	ccf                                              ; $564f: $3f
	rst $38                                          ; $5650: $ff
	ld a, a                                          ; $5651: $7f
	ret nz                                           ; $5652: $c0

	add sp, -$40                                     ; $5653: $e8 $c0
	add c                                            ; $5655: $81
	xor [hl]                                         ; $5656: $ae
	add c                                            ; $5657: $81
	sbc $45                                          ; $5658: $de $45
	xor $44                                          ; $565a: $ee $44
	rst GetHLinHL                                          ; $565c: $cf
	rst $38                                          ; $565d: $ff
	rst $38                                          ; $565e: $ff
	ld [rIE], a                                    ; $565f: $ea $ff $ff
	nop                                              ; $5662: $00
	xor b                                            ; $5663: $a8
	nop                                              ; $5664: $00
	cp a                                             ; $5665: $bf
	ld b, b                                          ; $5666: $40
	ld [hl], l                                       ; $5667: $75
	ld d, b                                          ; $5668: $50
	sbc b                                            ; $5669: $98
	and a                                            ; $566a: $a7
	ld e, b                                          ; $566b: $58
	rst $38                                          ; $566c: $ff
	rst $38                                          ; $566d: $ff
	push de                                          ; $566e: $d5
	xor d                                            ; $566f: $aa
	rst $38                                          ; $5670: $ff
	cp $98                                           ; $5671: $fe $98
	add d                                            ; $5673: $82
	ld d, a                                          ; $5674: $57
	add d                                            ; $5675: $82
	ld l, l                                          ; $5676: $6d
	add h                                            ; $5677: $84
	ld e, [hl]                                       ; $5678: $5e
	adc b                                            ; $5679: $88
	ld [hl], h                                       ; $567a: $74
	ldh [$9e], a                                     ; $567b: $e0 $9e
	add b                                            ; $567d: $80
	ld h, e                                          ; $567e: $63
	ld e, e                                          ; $567f: $5b
	ldh [$2a], a                                     ; $5680: $e0 $2a
	db $dd                                           ; $5682: $dd
	ld bc, $2395                                     ; $5683: $01 $95 $23
	scf                                              ; $5686: $37
	rlca                                             ; $5687: $07
	ccf                                              ; $5688: $3f
	ld b, b                                          ; $5689: $40
	ld a, a                                          ; $568a: $7f
	nop                                              ; $568b: $00
	ld b, b                                          ; $568c: $40
	add b                                            ; $568d: $80
	add b                                            ; $568e: $80
	ld a, d                                          ; $568f: $7a
	sub $80                                          ; $5690: $d6 $80
	xor d                                            ; $5692: $aa
	nop                                              ; $5693: $00
	rst $38                                          ; $5694: $ff
	ld a, [de]                                       ; $5695: $1a
	rst $38                                          ; $5696: $ff
	db $ed                                           ; $5697: $ed
	rst $38                                          ; $5698: $ff
	ld e, $ff                                        ; $5699: $1e $ff
	rlca                                             ; $569b: $07
	rlca                                             ; $569c: $07
	ld b, $af                                        ; $569d: $06 $af
	dec c                                            ; $569f: $0d
	ld e, a                                          ; $56a0: $5f
	ld a, [bc]                                       ; $56a1: $0a
	cp l                                             ; $56a2: $bd
	dec bc                                           ; $56a3: $0b
	db $fd                                           ; $56a4: $fd
	pop bc                                           ; $56a5: $c1
	add b                                            ; $56a6: $80
	ldh [rLCDC], a                                   ; $56a7: $e0 $40
	dec h                                            ; $56a9: $25
	ldh [$63], a                                     ; $56aa: $e0 $63
	and b                                            ; $56ac: $a0
	rst SubAFromHL                                          ; $56ad: $d7
	or b                                             ; $56ae: $b0
	ld e, a                                          ; $56af: $5f
	ldh a, [hDisp1_OBP1]                                     ; $56b0: $f0 $94
	adc a                                            ; $56b2: $8f
	sbc b                                            ; $56b3: $98
	rlca                                             ; $56b4: $07
	inc c                                            ; $56b5: $0c
	dec b                                            ; $56b6: $05
	nop                                              ; $56b7: $00
	and b                                            ; $56b8: $a0
	nop                                              ; $56b9: $00
	ld d, l                                          ; $56ba: $55
	nop                                              ; $56bb: $00
	cp $7a                                           ; $56bc: $fe $7a
	call z, $fe6f                                    ; $56be: $cc $6f $fe
	ld a, a                                          ; $56c1: $7f
	db $f4                                           ; $56c2: $f4
	sbc [hl]                                         ; $56c3: $9e
	ld a, [hl+]                                      ; $56c4: $2a
	cp $7f                                           ; $56c5: $fe $7f
	rst JumpTable                                          ; $56c7: $c7
	sbc [hl]                                         ; $56c8: $9e
	db $fd                                           ; $56c9: $fd
	ld h, e                                          ; $56ca: $63
	ldh a, [$7f]                                     ; $56cb: $f0 $7f
	db $f4                                           ; $56cd: $f4
	ld h, a                                          ; $56ce: $67
	db $fc                                           ; $56cf: $fc
	sbc [hl]                                         ; $56d0: $9e
	rst SubAFromHL                                          ; $56d1: $d7
	ld a, e                                          ; $56d2: $7b
	ldh a, [rAUD4GO]                                 ; $56d3: $f0 $23
	nop                                              ; $56d5: $00
	rst SubAFromHL                                          ; $56d6: $d7
	ld b, h                                          ; $56d7: $44
	jp c, $9e33                                      ; $56d8: $da $33 $9e

	ld d, h                                          ; $56db: $54
	scf                                              ; $56dc: $37
	or $9d                                           ; $56dd: $f6 $9d
	ld b, [hl]                                       ; $56df: $46
	ld h, [hl]                                       ; $56e0: $66
	ld h, a                                          ; $56e1: $67
	or $df                                           ; $56e2: $f6 $df
	ld h, [hl]                                       ; $56e4: $66
	ccf                                              ; $56e5: $3f
	or $63                                           ; $56e6: $f6 $63
	ldh [c], a                                       ; $56e8: $e2
	sbc h                                            ; $56e9: $9c
	ld d, l                                          ; $56ea: $55
	ld d, [hl]                                       ; $56eb: $56
	ld h, l                                          ; $56ec: $65
	jp c, $de77                                      ; $56ed: $da $77 $de

	ld d, l                                          ; $56f0: $55
	ld e, a                                          ; $56f1: $5f
	or $da                                           ; $56f2: $f6 $da
	ld b, h                                          ; $56f4: $44
	sbc $55                                          ; $56f5: $de $55
	ld c, d                                          ; $56f7: $4a
	ld a, [bc]                                       ; $56f8: $0a
	sbc d                                            ; $56f9: $9a
	and b                                            ; $56fa: $a0
	ld [hl], b                                       ; $56fb: $70
	sub b                                            ; $56fc: $90
	ld a, b                                          ; $56fd: $78
	add b                                            ; $56fe: $80
	ld h, e                                          ; $56ff: $63
	cp $7f                                           ; $5700: $fe $7f
	db $f4                                           ; $5702: $f4
	ei                                               ; $5703: $fb
	sub l                                            ; $5704: $95
	rlca                                             ; $5705: $07
	nop                                              ; $5706: $00
	inc bc                                           ; $5707: $03
	rlca                                             ; $5708: $07
	rlca                                             ; $5709: $07
	ld [bc], a                                       ; $570a: $02
	ld b, $02                                        ; $570b: $06 $02
	ld [bc], a                                       ; $570d: $02
	inc bc                                           ; $570e: $03
	db $fd                                           ; $570f: $fd
	sub e                                            ; $5710: $93
	jr z, jr_04f_5723                                ; $5711: $28 $10

	sub b                                            ; $5713: $90
	ld a, b                                          ; $5714: $78
	ld h, b                                          ; $5715: $60
	sbc b                                            ; $5716: $98
	ld [$4810], sp                                   ; $5717: $08 $10 $48
	jr nc, jr_04f_5734                               ; $571a: $30 $18

	ldh a, [$fd]                                     ; $571c: $f0 $fd
	adc b                                            ; $571e: $88
	jr jr_04f_5728                                   ; $571f: $18 $07

	ld c, $1f                                        ; $5721: $0e $1f

jr_04f_5723:
	rra                                              ; $5723: $1f
	ld [$0d1a], sp                                   ; $5724: $08 $1a $0d
	rra                                              ; $5727: $1f

jr_04f_5728:
	inc c                                            ; $5728: $0c
	nop                                              ; $5729: $00
	rra                                              ; $572a: $1f
	nop                                              ; $572b: $00
	nop                                              ; $572c: $00
	ret nz                                           ; $572d: $c0

	nop                                              ; $572e: $00
	ret nz                                           ; $572f: $c0

	ret nz                                           ; $5730: $c0

	ld b, b                                          ; $5731: $40
	add b                                            ; $5732: $80
	nop                                              ; $5733: $00

jr_04f_5734:
	add b                                            ; $5734: $80
	ret nz                                           ; $5735: $c0

	ld [hl], a                                       ; $5736: $77
	cp $fe                                           ; $5737: $fe $fe
	sub c                                            ; $5739: $91
	ld [$0e04], sp                                   ; $573a: $08 $04 $0e
	inc b                                            ; $573d: $04
	ld [bc], a                                       ; $573e: $02
	inc b                                            ; $573f: $04
	inc bc                                           ; $5740: $03
	inc b                                            ; $5741: $04
	dec b                                            ; $5742: $05
	ccf                                              ; $5743: $3f

jr_04f_5744:
	ld a, [hl+]                                      ; $5744: $2a
	inc e                                            ; $5745: $1c
	nop                                              ; $5746: $00
	inc c                                            ; $5747: $0c
	ei                                               ; $5748: $fb
	sbc b                                            ; $5749: $98
	ld bc, $8300                                     ; $574a: $01 $00 $83
	ld bc, $8182                                     ; $574d: $01 $82 $81
	add c                                            ; $5750: $81
	ld [hl], a                                       ; $5751: $77
	or h                                             ; $5752: $b4
	sub b                                            ; $5753: $90
	nop                                              ; $5754: $00
	ld a, h                                          ; $5755: $7c
	xor b                                            ; $5756: $a8
	sbc $a8                                          ; $5757: $de $a8

jr_04f_5759:
	or [hl]                                          ; $5759: $b6
	cp $5a                                           ; $575a: $fe $5a
	db $f4                                           ; $575c: $f4
	cp h                                             ; $575d: $bc
	ld d, b                                          ; $575e: $50
	sbc b                                            ; $575f: $98
	ld [hl], b                                       ; $5760: $70
	inc e                                            ; $5761: $1c
	add sp, -$09                                     ; $5762: $e8 $f7
	ld a, a                                          ; $5764: $7f
	call c, $fd77                                    ; $5765: $dc $77 $fd
	db $fd                                           ; $5768: $fd
	sub e                                            ; $5769: $93
	add b                                            ; $576a: $80
	ld b, b                                          ; $576b: $40
	ld [hl], b                                       ; $576c: $70
	ld b, b                                          ; $576d: $40
	ld c, d                                          ; $576e: $4a
	ld [hl], h                                       ; $576f: $74
	ld h, a                                          ; $5770: $67
	jp nz, $c042                                     ; $5771: $c2 $42 $c0

	ldh [$5c], a                                     ; $5774: $e0 $5c
	or $7f                                           ; $5776: $f6 $7f
	ldh [c], a                                       ; $5778: $e2
	ld [hl], a                                       ; $5779: $77
	cp $fe                                           ; $577a: $fe $fe
	sub e                                            ; $577c: $93
	jr nz, jr_04f_577f                               ; $577d: $20 $00

jr_04f_577f:
	db $10                                           ; $577f: $10
	jr nz, jr_04f_578a                               ; $5780: $20 $08

	jr nc, jr_04f_5744                               ; $5782: $30 $c0

	inc a                                            ; $5784: $3c
	add d                                            ; $5785: $82
	db $e4                                           ; $5786: $e4
	ld h, $c2                                        ; $5787: $26 $c2
	rst FarCall                                          ; $5789: $f7

jr_04f_578a:
	ld a, a                                          ; $578a: $7f
	adc l                                            ; $578b: $8d
	sbc l                                            ; $578c: $9d
	dec b                                            ; $578d: $05
	ld [bc], a                                       ; $578e: $02
	ld sp, hl                                        ; $578f: $f9
	sub l                                            ; $5790: $95
	inc [hl]                                         ; $5791: $34
	ld a, [bc]                                       ; $5792: $0a
	or h                                             ; $5793: $b4
	ld a, d                                          ; $5794: $7a
	ld [hl], b                                       ; $5795: $70
	and b                                            ; $5796: $a0
	ld h, b                                          ; $5797: $60
	jr nz, @+$22                                     ; $5798: $20 $20

	ld b, b                                          ; $579a: $40
	ei                                               ; $579b: $fb
	ld a, a                                          ; $579c: $7f
	rst SubAFromBC                                          ; $579d: $e7
	sbc e                                            ; $579e: $9b
	inc bc                                           ; $579f: $03
	ld [bc], a                                       ; $57a0: $02
	ld [bc], a                                       ; $57a1: $02
	ld bc, $9e5f                                     ; $57a2: $01 $5f $9e
	cp $9c                                           ; $57a5: $fe $9c
	jr nc, jr_04f_5759                               ; $57a7: $30 $b0

	ld h, b                                          ; $57a9: $60
	ld a, e                                          ; $57aa: $7b
	ld c, a                                          ; $57ab: $4f
	ld [hl], a                                       ; $57ac: $77
	ret z                                            ; $57ad: $c8

	ld a, a                                          ; $57ae: $7f
	db $e4                                           ; $57af: $e4
	sub l                                            ; $57b0: $95
	ld b, $07                                        ; $57b1: $06 $07
	ld [bc], a                                       ; $57b3: $02
	rlca                                             ; $57b4: $07
	nop                                              ; $57b5: $00
	ld [$1d07], sp                                   ; $57b6: $08 $07 $1d
	ld [$f608], sp                                   ; $57b9: $08 $08 $f6
	ld a, a                                          ; $57bc: $7f
	ld d, d                                          ; $57bd: $52
	sbc e                                            ; $57be: $9b
	add e                                            ; $57bf: $83

jr_04f_57c0:
	add c                                            ; $57c0: $81
	add e                                            ; $57c1: $83
	add e                                            ; $57c2: $83
	or $dd                                           ; $57c3: $f6 $dd
	add b                                            ; $57c5: $80
	sbc c                                            ; $57c6: $99
	nop                                              ; $57c7: $00
	rla                                              ; $57c8: $17
	ld c, $11                                        ; $57c9: $0e $11
	ld c, $15                                        ; $57cb: $0e $15
	ld l, e                                          ; $57cd: $6b
	db $fc                                           ; $57ce: $fc
	ld a, a                                          ; $57cf: $7f
	sub b                                            ; $57d0: $90
	sbc d                                            ; $57d1: $9a
	inc de                                           ; $57d2: $13
	inc c                                            ; $57d3: $0c
	sub b                                            ; $57d4: $90
	ld a, b                                          ; $57d5: $78
	or b                                             ; $57d6: $b0
	ld l, [hl]                                       ; $57d7: $6e
	add $95                                          ; $57d8: $c6 $95
	ld l, b                                          ; $57da: $68
	add b                                            ; $57db: $80
	ld l, b                                          ; $57dc: $68
	add b                                            ; $57dd: $80
	ld a, b                                          ; $57de: $78
	or b                                             ; $57df: $b0
	ld c, b                                          ; $57e0: $48
	inc bc                                           ; $57e1: $03
	ld [bc], a                                       ; $57e2: $02
	ld bc, $ca7a                                     ; $57e3: $01 $7a $ca

jr_04f_57e6:
	ld a, e                                          ; $57e6: $7b
	sub d                                            ; $57e7: $92
	ld a, e                                          ; $57e8: $7b
	rst FarCall                                          ; $57e9: $f7
	db $fd                                           ; $57ea: $fd
	sub e                                            ; $57eb: $93
	adc b                                            ; $57ec: $88
	db $10                                           ; $57ed: $10
	sbc b                                            ; $57ee: $98
	ld [hl], b                                       ; $57ef: $70
	ld c, b                                          ; $57f0: $48
	sub b                                            ; $57f1: $90
	jr z, jr_04f_5804                                ; $57f2: $28 $10

	jr jr_04f_57e6                                   ; $57f4: $18 $f0

	add sp, $10                                      ; $57f6: $e8 $10
	db $fd                                           ; $57f8: $fd
	sub e                                            ; $57f9: $93
	dec e                                            ; $57fa: $1d
	ld [de], a                                       ; $57fb: $12
	inc sp                                           ; $57fc: $33
	ld e, $77                                        ; $57fd: $1e $77
	jr z, jr_04f_582b                                ; $57ff: $28 $2a

	ld b, l                                          ; $5801: $45
	add $0c                                          ; $5802: $c6 $0c

jr_04f_5804:
	ld [$7304], sp                                   ; $5804: $08 $04 $73
	xor e                                            ; $5807: $ab
	rst SubAFromDE                                          ; $5808: $df
	ld h, b                                          ; $5809: $60
	ld a, d                                          ; $580a: $7a
	jp nz, $777f                                     ; $580b: $c2 $7f $77

	sbc e                                            ; $580e: $9b
	ld [hl], b                                       ; $580f: $70
	ret nz                                           ; $5810: $c0

	jr z, jr_04f_5883                                ; $5811: $28 $70

	db $fd                                           ; $5813: $fd
	sub h                                            ; $5814: $94
	ld b, $08                                        ; $5815: $06 $08
	ld de, $0b0a                                     ; $5817: $11 $0a $0b
	ld de, $1120                                     ; $581a: $11 $20 $11
	ld [hl], b                                       ; $581d: $70
	jr nz, jr_04f_57c0                               ; $581e: $20 $a0

	ld a, d                                          ; $5820: $7a
	xor e                                            ; $5821: $ab
	ld l, e                                          ; $5822: $6b
	add a                                            ; $5823: $87
	ld a, e                                          ; $5824: $7b
	add l                                            ; $5825: $85
	sbc e                                            ; $5826: $9b
	ldh [$c0], a                                     ; $5827: $e0 $c0
	sub c                                            ; $5829: $91
	ld h, b                                          ; $582a: $60

jr_04f_582b:
	db $fd                                           ; $582b: $fd
	sub e                                            ; $582c: $93
	or h                                             ; $582d: $b4
	ret z                                            ; $582e: $c8

	ld [$08f8], sp                                   ; $582f: $08 $f8 $08
	ld hl, sp+$7c                                    ; $5832: $f8 $7c
	ret z                                            ; $5834: $c8

	ld [bc], a                                       ; $5835: $02
	call z, $8402                                    ; $5836: $cc $02 $84
	ld e, [hl]                                       ; $5839: $5e
	and $5f                                          ; $583a: $e6 $5f
	add hl, hl                                       ; $583c: $29
	sub [hl]                                         ; $583d: $96
	sbc b                                            ; $583e: $98
	ld h, [hl]                                       ; $583f: $66
	ld b, $c2                                        ; $5840: $06 $c2
	nop                                              ; $5842: $00
	add $0c                                          ; $5843: $c6 $0c
	call nz, $6bc4                                   ; $5845: $c4 $c4 $6b
	inc [hl]                                         ; $5848: $34
	ld a, a                                          ; $5849: $7f
	ld [hl], d                                       ; $584a: $72
	ld a, [hl]                                       ; $584b: $7e
	ld [hl], e                                       ; $584c: $73
	ld a, a                                          ; $584d: $7f
	ld e, b                                          ; $584e: $58
	ld [hl], d                                       ; $584f: $72
	add hl, sp                                       ; $5850: $39
	db $fc                                           ; $5851: $fc
	sub a                                            ; $5852: $97
	add $42                                          ; $5853: $c6 $42
	and [hl]                                         ; $5855: $a6
	ld b, d                                          ; $5856: $42
	ld b, $84                                        ; $5857: $06 $84
	nop                                              ; $5859: $00
	inc c                                            ; $585a: $0c
	ld d, a                                          ; $585b: $57
	ld d, $f5                                        ; $585c: $16 $f5
	ld a, [hl]                                       ; $585e: $7e
	adc $7f                                          ; $585f: $ce $7f
	cp $7f                                           ; $5861: $fe $7f
	db $fd                                           ; $5863: $fd
	ld a, [hl]                                       ; $5864: $7e
	and b                                            ; $5865: $a0
	ld a, [hl]                                       ; $5866: $7e
	sbc l                                            ; $5867: $9d
	ld l, d                                          ; $5868: $6a
	add $df                                          ; $5869: $c6 $df
	ld bc, $c66e                                     ; $586b: $01 $6e $c6
	or $9b                                           ; $586e: $f6 $9b
	sbc b                                            ; $5870: $98
	nop                                              ; $5871: $00
	db $10                                           ; $5872: $10
	ld hl, sp+$71                                    ; $5873: $f8 $71
	rst FarCall                                          ; $5875: $f7
	ld l, d                                          ; $5876: $6a
	ld c, d                                          ; $5877: $4a
	sbc c                                            ; $5878: $99
	inc bc                                           ; $5879: $03
	ld bc, $0300                                     ; $587a: $01 $00 $03
	nop                                              ; $587d: $00
	ld b, $73                                        ; $587e: $06 $73
	ld sp, $cc7e                                     ; $5880: $31 $7e $cc

jr_04f_5883:
	sub a                                            ; $5883: $97
	add [hl]                                         ; $5884: $86
	ld c, $84                                        ; $5885: $0e $84
	inc c                                            ; $5887: $0c
	ld [$1008], sp                                   ; $5888: $08 $08 $10
	jr nc, jr_04f_5907                               ; $588b: $30 $7a

	ld e, h                                          ; $588d: $5c
	db $ed                                           ; $588e: $ed
	sub e                                            ; $588f: $93
	rlca                                             ; $5890: $07
	jr jr_04f_589c                                   ; $5891: $18 $09

	ld e, $05                                        ; $5893: $1e $05
	ld e, $19                                        ; $5895: $1e $19
	ld b, $03                                        ; $5897: $06 $03
	inc e                                            ; $5899: $1c
	dec bc                                           ; $589a: $0b
	inc e                                            ; $589b: $1c

jr_04f_589c:
	ld [hl], a                                       ; $589c: $77
	or $88                                           ; $589d: $f6 $88
	ld h, a                                          ; $589f: $67
	nop                                              ; $58a0: $00
	ld a, [hl-]                                      ; $58a1: $3a
	rlca                                             ; $58a2: $07
	cpl                                              ; $58a3: $2f
	db $10                                           ; $58a4: $10
	ld [$e3f7], sp                                   ; $58a5: $08 $f7 $e3
	rst $38                                          ; $58a8: $ff
	ld bc, $abff                                     ; $58a9: $01 $ff $ab
	rst $38                                          ; $58ac: $ff
	ld d, c                                          ; $58ad: $51
	rst $38                                          ; $58ae: $ff
	nop                                              ; $58af: $00
	nop                                              ; $58b0: $00
	inc de                                           ; $58b1: $13
	ret                                              ; $58b2: $c9


	db $10                                           ; $58b3: $10
	pop hl                                           ; $58b4: $e1
	ld b, b                                          ; $58b5: $40
	sbc $ff                                          ; $58b6: $de $ff
	ld a, a                                          ; $58b8: $7f
	db $f4                                           ; $58b9: $f4
	add [hl]                                         ; $58ba: $86
	xor b                                            ; $58bb: $a8
	rst $38                                          ; $58bc: $ff
	ld d, l                                          ; $58bd: $55
	rst $38                                          ; $58be: $ff
	ld bc, $1f00                                     ; $58bf: $01 $00 $1f
	pop hl                                           ; $58c2: $e1
	xor a                                            ; $58c3: $af
	nop                                              ; $58c4: $00
	nop                                              ; $58c5: $00
	rst $38                                          ; $58c6: $ff
	ei                                               ; $58c7: $fb
	rst $38                                          ; $58c8: $ff
	add b                                            ; $58c9: $80
	rst $38                                          ; $58ca: $ff
	xor d                                            ; $58cb: $aa
	rst $38                                          ; $58cc: $ff
	ret                                              ; $58cd: $c9


	rst $38                                          ; $58ce: $ff
	add b                                            ; $58cf: $80
	ld b, b                                          ; $58d0: $40
	cp [hl]                                          ; $58d1: $be
	ret nz                                           ; $58d2: $c0

	cp l                                             ; $58d3: $bd
	ld a, e                                          ; $58d4: $7b
	ldh a, [hDisp1_SCY]                                     ; $58d5: $f0 $90
	ld e, a                                          ; $58d7: $5f
	rst $38                                          ; $58d8: $ff
	inc c                                            ; $58d9: $0c
	rst $38                                          ; $58da: $ff
	xor [hl]                                         ; $58db: $ae
	rst $38                                          ; $58dc: $ff
	ld e, l                                          ; $58dd: $5d
	rst $38                                          ; $58de: $ff
	rst AddAOntoHL                                          ; $58df: $ef
	nop                                              ; $58e0: $00
	ld e, a                                          ; $58e1: $5f
	ld bc, $00fd                                     ; $58e2: $01 $fd $00
	ld [hl], c                                       ; $58e5: $71

jr_04f_58e6:
	sbc $ff                                          ; $58e6: $de $ff
	sbc h                                            ; $58e8: $9c
	db $10                                           ; $58e9: $10
	rst $38                                          ; $58ea: $ff
	sub b                                            ; $58eb: $90
	sbc $ff                                          ; $58ec: $de $ff
	sub h                                            ; $58ee: $94
	sub [hl]                                         ; $58ef: $96
	nop                                              ; $58f0: $00
	ld e, a                                          ; $58f1: $5f
	add a                                            ; $58f2: $87
	db $fc                                           ; $58f3: $fc
	inc bc                                           ; $58f4: $03
	ret c                                            ; $58f5: $d8

	rst SubAFromBC                                          ; $58f6: $e7
	rst $38                                          ; $58f7: $ff
	rst $38                                          ; $58f8: $ff
	jr nc, jr_04f_5976                               ; $58f9: $30 $7b

	cp $df                                           ; $58fb: $fe $df
	rst $38                                          ; $58fd: $ff
	ld a, [hl]                                       ; $58fe: $7e
	call nz, $fc96                                   ; $58ff: $c4 $96 $fc
	ld b, b                                          ; $5902: $40
	xor d                                            ; $5903: $aa
	ld d, l                                          ; $5904: $55
	jr nz, jr_04f_58e6                               ; $5905: $20 $df

jr_04f_5907:
	rst $38                                          ; $5907: $ff
	rst $38                                          ; $5908: $ff
	nop                                              ; $5909: $00
	ld a, e                                          ; $590a: $7b
	cp $7b                                           ; $590b: $fe $7b
	ld a, [$0095]                                    ; $590d: $fa $95 $00
	inc e                                            ; $5910: $1c
	inc bc                                           ; $5911: $03
	xor [hl]                                         ; $5912: $ae
	ld d, c                                          ; $5913: $51
	ld a, [bc]                                       ; $5914: $0a
	push af                                          ; $5915: $f5
	rst $38                                          ; $5916: $ff
	rst $38                                          ; $5917: $ff
	add e                                            ; $5918: $83
	ld a, e                                          ; $5919: $7b
	cp $df                                           ; $591a: $fe $df
	rst $38                                          ; $591c: $ff
	ld a, a                                          ; $591d: $7f
	ld b, a                                          ; $591e: $47
	sbc c                                            ; $591f: $99
	ld a, h                                          ; $5920: $7c
	add e                                            ; $5921: $83
	ld a, a                                          ; $5922: $7f
	add b                                            ; $5923: $80
	sub l                                            ; $5924: $95
	ld l, a                                          ; $5925: $6f
	ld h, a                                          ; $5926: $67
	ldh [$7d], a                                     ; $5927: $e0 $7d
	rst GetHLinHL                                          ; $5929: $cf
	sbc d                                            ; $592a: $9a
	ld a, $c4                                        ; $592b: $3e $c4
	ld e, a                                          ; $592d: $5f
	add b                                            ; $592e: $80
	ld d, l                                          ; $592f: $55
	sbc $ff                                          ; $5930: $de $ff
	sub e                                            ; $5932: $93
	inc b                                            ; $5933: $04
	rst $38                                          ; $5934: $ff
	ld b, $ff                                        ; $5935: $06 $ff
	db $fc                                           ; $5937: $fc
	rst $38                                          ; $5938: $ff
	ld b, a                                          ; $5939: $47
	nop                                              ; $593a: $00
	cp $01                                           ; $593b: $fe $01
	rst $38                                          ; $593d: $ff
	nop                                              ; $593e: $00
	ld [hl], a                                       ; $593f: $77
	ldh a, [$7f]                                     ; $5940: $f0 $7f
	ld sp, hl                                        ; $5942: $f9
	ld a, a                                          ; $5943: $7f
	cp $7f                                           ; $5944: $fe $7f
	sbc b                                            ; $5946: $98
	ld a, a                                          ; $5947: $7f
	dec hl                                           ; $5948: $2b
	sbc h                                            ; $5949: $9c
	db $dd                                           ; $594a: $dd
	jr nz, jr_04f_59c4                               ; $594b: $20 $77

	ld [hl], e                                       ; $594d: $73
	ldh [$9c], a                                     ; $594e: $e0 $9c
	add h                                            ; $5950: $84
	rst $38                                          ; $5951: $ff
	add d                                            ; $5952: $82
	ld a, e                                          ; $5953: $7b
	call c, $0e7d                                    ; $5954: $dc $7d $0e
	sbc d                                            ; $5957: $9a
	scf                                              ; $5958: $37
	ret z                                            ; $5959: $c8

	call z, Call_04f_7533                            ; $595a: $cc $33 $75
	ld a, e                                          ; $595d: $7b
	and b                                            ; $595e: $a0
	sbc [hl]                                         ; $595f: $9e
	dec b                                            ; $5960: $05
	ld a, e                                          ; $5961: $7b
	ret nc                                           ; $5962: $d0

	ld a, a                                          ; $5963: $7f
	db $fc                                           ; $5964: $fc
	ld a, l                                          ; $5965: $7d
	rrca                                             ; $5966: $0f

jr_04f_5967:
	sbc c                                            ; $5967: $99
	rst GetHLinHL                                          ; $5968: $cf
	nop                                              ; $5969: $00
	ld b, l                                          ; $596a: $45
	nop                                              ; $596b: $00
	ld a, l                                          ; $596c: $7d
	rst SubAFromHL                                          ; $596d: $d7
	ld [hl], a                                       ; $596e: $77
	or b                                             ; $596f: $b0
	ld a, a                                          ; $5970: $7f
	ld c, [hl]                                       ; $5971: $4e
	ld a, a                                          ; $5972: $7f
	db $fc                                           ; $5973: $fc
	sbc b                                            ; $5974: $98
	db $e4                                           ; $5975: $e4

jr_04f_5976:
	nop                                              ; $5976: $00
	rrca                                             ; $5977: $0f
	ldh a, [$5f]                                     ; $5978: $f0 $5f
	nop                                              ; $597a: $00
	ld d, [hl]                                       ; $597b: $56
	sbc $ff                                          ; $597c: $de $ff
	sbc h                                            ; $597e: $9c
	ld h, b                                          ; $597f: $60
	rst $38                                          ; $5980: $ff

jr_04f_5981:
	and b                                            ; $5981: $a0
	ld a, e                                          ; $5982: $7b
	db $fc                                           ; $5983: $fc
	sub a                                            ; $5984: $97
	ld h, c                                          ; $5985: $61
	nop                                              ; $5986: $00
	rst JumpTable                                          ; $5987: $c7
	jr c, jr_04f_59d1                                ; $5988: $38 $47

	jr c, jr_04f_5976                                ; $598a: $38 $ea

	cp a                                             ; $598c: $bf
	ld [hl], a                                       ; $598d: $77
	ld h, b                                          ; $598e: $60
	ld a, a                                          ; $598f: $7f
	ld c, [hl]                                       ; $5990: $4e
	ld a, a                                          ; $5991: $7f
	cp $7e                                           ; $5992: $fe $7e
	ld a, b                                          ; $5994: $78
	sub h                                            ; $5995: $94
	jr nc, jr_04f_5967                               ; $5996: $30 $cf

	jr jr_04f_5981                                   ; $5998: $18 $e7

	ld d, l                                          ; $599a: $55
	rst $38                                          ; $599b: $ff
	rst SubAFromDE                                          ; $599c: $df
	rst $38                                          ; $599d: $ff
	jp nz, $85ff                                     ; $599e: $c2 $ff $85

	ld a, e                                          ; $59a1: $7b
	xor [hl]                                         ; $59a2: $ae
	ld a, [hl]                                       ; $59a3: $7e
	dec de                                           ; $59a4: $1b
	sub h                                            ; $59a5: $94
	dec a                                            ; $59a6: $3d
	ret nz                                           ; $59a7: $c0

	ld h, l                                          ; $59a8: $65
	sbc b                                            ; $59a9: $98
	ld d, l                                          ; $59aa: $55
	ei                                               ; $59ab: $fb
	rst $38                                          ; $59ac: $ff
	rst $38                                          ; $59ad: $ff
	adc h                                            ; $59ae: $8c
	rst $38                                          ; $59af: $ff
	ld c, d                                          ; $59b0: $4a
	ld a, e                                          ; $59b1: $7b
	db $fc                                           ; $59b2: $fc
	sbc c                                            ; $59b3: $99
	ld hl, sp+$00                                    ; $59b4: $f8 $00
	and a                                            ; $59b6: $a7
	ld a, b                                          ; $59b7: $78
	dec e                                            ; $59b8: $1d
	ldh [rPCM34], a                                  ; $59b9: $e0 $77
	sub b                                            ; $59bb: $90
	sbc [hl]                                         ; $59bc: $9e
	ld d, $7b                                        ; $59bd: $16 $7b
	cp $96                                           ; $59bf: $fe $96
	inc d                                            ; $59c1: $14
	rst $38                                          ; $59c2: $ff
	ld l, d                                          ; $59c3: $6a

jr_04f_59c4:
	inc d                                            ; $59c4: $14
	ld a, [$f444]                                    ; $59c5: $fa $44 $f4
	add b                                            ; $59c8: $80
	ld d, b                                          ; $59c9: $50
	sbc $ff                                          ; $59ca: $de $ff
	sbc [hl]                                         ; $59cc: $9e
	dec c                                            ; $59cd: $0d
	ld [hl], e                                       ; $59ce: $73
	sub b                                            ; $59cf: $90
	ld a, [hl]                                       ; $59d0: $7e

jr_04f_59d1:
	call z, $e47f                                    ; $59d1: $cc $7f $e4
	ld d, a                                          ; $59d4: $57
	db $fc                                           ; $59d5: $fc
	ld a, a                                          ; $59d6: $7f
	cp $9e                                           ; $59d7: $fe $9e
	xor c                                            ; $59d9: $a9
	ld [hl], e                                       ; $59da: $73
	db $fc                                           ; $59db: $fc
	sbc d                                            ; $59dc: $9a
	dec d                                            ; $59dd: $15
	rst $38                                          ; $59de: $ff
	add hl, sp                                       ; $59df: $39
	rst $38                                          ; $59e0: $ff
	sub c                                            ; $59e1: $91
	ld a, e                                          ; $59e2: $7b
	db $fc                                           ; $59e3: $fc
	sbc h                                            ; $59e4: $9c
	ldh a, [c]                                       ; $59e5: $f2
	rst $38                                          ; $59e6: $ff
	jp $aa7b                                         ; $59e7: $c3 $7b $aa


	add l                                            ; $59ea: $85
	rst JumpTable                                          ; $59eb: $c7
	cp a                                             ; $59ec: $bf
	jp nz, $c7bf                                     ; $59ed: $c2 $bf $c7

	cp [hl]                                          ; $59f0: $be
	jp $c7be                                         ; $59f1: $c3 $be $c7


	cp [hl]                                          ; $59f4: $be
	inc c                                            ; $59f5: $0c
	rst $38                                          ; $59f6: $ff
	nop                                              ; $59f7: $00
	ret nz                                           ; $59f8: $c0

	dec d                                            ; $59f9: $15
	rst SubAFromDE                                          ; $59fa: $df
	ld e, $db                                        ; $59fb: $1e $db
	db $10                                           ; $59fd: $10
	ret nc                                           ; $59fe: $d0

	rla                                              ; $59ff: $17
	rst SubAFromHL                                          ; $5a00: $d7
	rla                                              ; $5a01: $17
	push de                                          ; $5a02: $d5
	rla                                              ; $5a03: $17
	sub $7b                                          ; $5a04: $d6 $7b
	ld a, [bc]                                       ; $5a06: $0a
	sbc h                                            ; $5a07: $9c
	nop                                              ; $5a08: $00
	ld hl, sp+$07                                    ; $5a09: $f8 $07
	halt                                             ; $5a0b: $76
	add sp, -$22                                     ; $5a0c: $e8 $de
	rst $38                                          ; $5a0e: $ff
	ld a, a                                          ; $5a0f: $7f
	rst JumpTable                                          ; $5a10: $c7
	sbc [hl]                                         ; $5a11: $9e
	xor d                                            ; $5a12: $aa
	ld [hl], a                                       ; $5a13: $77
	ldh a, [$7e]                                     ; $5a14: $f0 $7e
	ldh a, [rVBK]                                    ; $5a16: $f0 $4f
	ldh a, [rPCM12]                                  ; $5a18: $f0 $76
	rst SubAFromBC                                          ; $5a1a: $e7
	ld l, e                                          ; $5a1b: $6b
	ldh a, [$9d]                                     ; $5a1c: $f0 $9d
	and b                                            ; $5a1e: $a0
	add d                                            ; $5a1f: $82
	ld d, a                                          ; $5a20: $57
	ldh a, [$7e]                                     ; $5a21: $f0 $7e
	ld e, c                                          ; $5a23: $59
	ld [hl], e                                       ; $5a24: $73
	or $9d                                           ; $5a25: $f6 $9d
	ld bc, $63fe                                     ; $5a27: $01 $fe $63
	ldh [$9e], a                                     ; $5a2a: $e0 $9e
	ld a, [bc]                                       ; $5a2c: $0a
	ld [hl], a                                       ; $5a2d: $77
	or $9d                                           ; $5a2e: $f6 $9d
	ld d, l                                          ; $5a30: $55
	xor d                                            ; $5a31: $aa
	ld e, a                                          ; $5a32: $5f
	ret nz                                           ; $5a33: $c0

	scf                                              ; $5a34: $37
	ldh a, [$7f]                                     ; $5a35: $f0 $7f
	and b                                            ; $5a37: $a0
	ld a, a                                          ; $5a38: $7f
	rst GetHLinHL                                          ; $5a39: $cf
	rst SubAFromDE                                          ; $5a3a: $df
	ld bc, $fdde                                     ; $5a3b: $01 $de $fd
	sub [hl]                                         ; $5a3e: $96
	ld d, l                                          ; $5a3f: $55
	db $fd                                           ; $5a40: $fd
	xor l                                            ; $5a41: $ad
	ld b, $bf                                        ; $5a42: $06 $bf
	add l                                            ; $5a44: $85
	ccf                                              ; $5a45: $3f
	add [hl]                                         ; $5a46: $86
	ccf                                              ; $5a47: $3f
	ld e, a                                          ; $5a48: $5f
	db $fc                                           ; $5a49: $fc
	ld a, a                                          ; $5a4a: $7f
	add l                                            ; $5a4b: $85
	sbc [hl]                                         ; $5a4c: $9e
	jr jr_04f_5ac9                                   ; $5a4d: $18 $7a

	and [hl]                                         ; $5a4f: $a6
	ld a, [hl]                                       ; $5a50: $7e
	sub [hl]                                         ; $5a51: $96
	ld a, a                                          ; $5a52: $7f
	ld hl, sp+$6f                                    ; $5a53: $f8 $6f
	db $fc                                           ; $5a55: $fc
	halt                                             ; $5a56: $76
	call z, $fc77                                    ; $5a57: $cc $77 $fc
	sbc d                                            ; $5a5a: $9a
	ld hl, $62ff                                     ; $5a5b: $21 $ff $62
	rst $38                                          ; $5a5e: $ff
	dec h                                            ; $5a5f: $25
	ld a, e                                          ; $5a60: $7b
	db $fc                                           ; $5a61: $fc
	ld a, [hl]                                       ; $5a62: $7e
	cp $9e                                           ; $5a63: $fe $9e
	jr c, jr_04f_5ae2                                ; $5a65: $38 $7b

	db $fc                                           ; $5a67: $fc
	sbc [hl]                                         ; $5a68: $9e
	cp b                                             ; $5a69: $b8
	ld l, e                                          ; $5a6a: $6b
	db $fc                                           ; $5a6b: $fc
	ld a, a                                          ; $5a6c: $7f
	db $f4                                           ; $5a6d: $f4
	halt                                             ; $5a6e: $76
	call z, $fc5f                                    ; $5a6f: $cc $5f $fc
	sbc [hl]                                         ; $5a72: $9e
	ld b, d                                          ; $5a73: $42
	ld [hl], d                                       ; $5a74: $72
	call z, $fc6f                                    ; $5a75: $cc $6f $fc
	ld a, a                                          ; $5a78: $7f
	ld d, $77                                        ; $5a79: $16 $77
	db $fc                                           ; $5a7b: $fc
	sbc [hl]                                         ; $5a7c: $9e
	ld a, [de]                                       ; $5a7d: $1a
	ld a, d                                          ; $5a7e: $7a
	jp z, $fc77                                      ; $5a7f: $ca $77 $fc

	sbc [hl]                                         ; $5a82: $9e
	ld e, $6b                                        ; $5a83: $1e $6b
	db $fc                                           ; $5a85: $fc
	ld a, [hl]                                       ; $5a86: $7e
	call z, $137f                                    ; $5a87: $cc $7f $13
	ld d, a                                          ; $5a8a: $57
	db $fc                                           ; $5a8b: $fc
	halt                                             ; $5a8c: $76
	call z, $a39e                                    ; $5a8d: $cc $9e $a3
	ld [hl], e                                       ; $5a90: $73
	db $fc                                           ; $5a91: $fc
	ld a, l                                          ; $5a92: $7d
	sub b                                            ; $5a93: $90
	ld a, a                                          ; $5a94: $7f
	db $fc                                           ; $5a95: $fc
	sbc [hl]                                         ; $5a96: $9e
	ld b, c                                          ; $5a97: $41
	ld [hl], d                                       ; $5a98: $72
	call z, $fc77                                    ; $5a99: $cc $77 $fc
	ld a, l                                          ; $5a9c: $7d
	or h                                             ; $5a9d: $b4
	ld l, a                                          ; $5a9e: $6f
	db $fc                                           ; $5a9f: $fc
	sbc [hl]                                         ; $5aa0: $9e
	bit 7, d                                         ; $5aa1: $cb $7a
	call z, $8b9b                                    ; $5aa3: $cc $9b $8b
	cp $87                                           ; $5aa6: $fe $87
	cp $67                                           ; $5aa8: $fe $67
	db $fc                                           ; $5aaa: $fc
	sbc l                                            ; $5aab: $9d
	rla                                              ; $5aac: $17
	call nc, $fe5f                                   ; $5aad: $d4 $5f $fe
	sbc [hl]                                         ; $5ab0: $9e
	inc de                                           ; $5ab1: $13
	ld a, e                                          ; $5ab2: $7b
	db $fc                                           ; $5ab3: $fc
	ld [hl], a                                       ; $5ab4: $77
	dec l                                            ; $5ab5: $2d
	sbc [hl]                                         ; $5ab6: $9e
	ld d, h                                          ; $5ab7: $54
	ld a, c                                          ; $5ab8: $79
	ld d, [hl]                                       ; $5ab9: $56
	ld a, [hl]                                       ; $5aba: $7e
	ld l, [hl]                                       ; $5abb: $6e
	ld a, a                                          ; $5abc: $7f
	ld e, d                                          ; $5abd: $5a
	ld a, [hl]                                       ; $5abe: $7e
	pop af                                           ; $5abf: $f1
	ld a, a                                          ; $5ac0: $7f
	daa                                              ; $5ac1: $27
	ld a, a                                          ; $5ac2: $7f
	db $f4                                           ; $5ac3: $f4
	halt                                             ; $5ac4: $76
	ld a, [bc]                                       ; $5ac5: $0a
	ld a, e                                          ; $5ac6: $7b
	cp $9a                                           ; $5ac7: $fe $9a

jr_04f_5ac9:
	push af                                          ; $5ac9: $f5
	nop                                              ; $5aca: $00
	xor d                                            ; $5acb: $aa
	nop                                              ; $5acc: $00
	ld d, l                                          ; $5acd: $55
	ld a, e                                          ; $5ace: $7b
	db $fc                                           ; $5acf: $fc
	ld l, a                                          ; $5ad0: $6f
	ldh a, [c]                                       ; $5ad1: $f2
	ld l, a                                          ; $5ad2: $6f
	db $f4                                           ; $5ad3: $f4
	ld e, a                                          ; $5ad4: $5f
	ldh a, [$9e]                                     ; $5ad5: $f0 $9e
	cp a                                             ; $5ad7: $bf
	ld c, e                                          ; $5ad8: $4b
	ldh a, [$73]                                     ; $5ad9: $f0 $73
	db $ec                                           ; $5adb: $ec
	sbc e                                            ; $5adc: $9b
	ld bc, $0357                                     ; $5add: $01 $57 $03
	xor e                                            ; $5ae0: $ab
	halt                                             ; $5ae1: $76

jr_04f_5ae2:
	cp l                                             ; $5ae2: $bd
	ld a, c                                          ; $5ae3: $79
	adc a                                            ; $5ae4: $8f
	ld [hl], e                                       ; $5ae5: $73
	cp $9e                                           ; $5ae6: $fe $9e
	ld hl, sp+$79                                    ; $5ae8: $f8 $79
	add b                                            ; $5aea: $80
	ld [hl], a                                       ; $5aeb: $77
	and b                                            ; $5aec: $a0
	ld a, a                                          ; $5aed: $7f
	db $fc                                           ; $5aee: $fc
	sbc [hl]                                         ; $5aef: $9e
	ld a, [hl+]                                      ; $5af0: $2a
	ld a, d                                          ; $5af1: $7a
	ld d, $9e                                        ; $5af2: $16 $9e
	ld [bc], a                                       ; $5af4: $02
	ld [hl], e                                       ; $5af5: $73
	add sp, $7a                                      ; $5af6: $e8 $7a
	call $c976                                       ; $5af8: $cd $76 $c9
	ld h, e                                          ; $5afb: $63
	db $fc                                           ; $5afc: $fc
	halt                                             ; $5afd: $76
	call z, $a49b                                    ; $5afe: $cc $9b $a4
	rra                                              ; $5b01: $1f
	sub l                                            ; $5b02: $95
	cpl                                              ; $5b03: $2f
	ld l, a                                          ; $5b04: $6f
	db $fc                                           ; $5b05: $fc
	sbc l                                            ; $5b06: $9d
	sub h                                            ; $5b07: $94
	cpl                                              ; $5b08: $2f
	ld [hl], a                                       ; $5b09: $77
	add d                                            ; $5b0a: $82
	ld a, l                                          ; $5b0b: $7d
	ld l, d                                          ; $5b0c: $6a
	ld [hl], a                                       ; $5b0d: $77
	cp $6f                                           ; $5b0e: $fe $6f
	cp h                                             ; $5b10: $bc

jr_04f_5b11:
	halt                                             ; $5b11: $76
	call z, $269a                                    ; $5b12: $cc $9a $26
	rst $38                                          ; $5b15: $ff
	or $6f                                           ; $5b16: $f6 $6f
	inc h                                            ; $5b18: $24
	ld [hl], e                                       ; $5b19: $73
	db $fc                                           ; $5b1a: $fc
	sbc l                                            ; $5b1b: $9d
	push af                                          ; $5b1c: $f5
	ld l, [hl]                                       ; $5b1d: $6e
	ld l, [hl]                                       ; $5b1e: $6e
	ret nz                                           ; $5b1f: $c0

	ld e, a                                          ; $5b20: $5f
	db $fc                                           ; $5b21: $fc
	sbc [hl]                                         ; $5b22: $9e
	and h                                            ; $5b23: $a4
	ld a, e                                          ; $5b24: $7b
	ld c, d                                          ; $5b25: $4a
	sbc [hl]                                         ; $5b26: $9e
	and c                                            ; $5b27: $a1
	ld a, e                                          ; $5b28: $7b
	db $fc                                           ; $5b29: $fc
	sbc [hl]                                         ; $5b2a: $9e
	add c                                            ; $5b2b: $81
	ld a, d                                          ; $5b2c: $7a
	call nz, $fc77                                   ; $5b2d: $c4 $77 $fc
	ld e, [hl]                                       ; $5b30: $5e
	ret nz                                           ; $5b31: $c0

	ld l, a                                          ; $5b32: $6f
	db $fc                                           ; $5b33: $fc
	ld h, [hl]                                       ; $5b34: $66
	ret z                                            ; $5b35: $c8

	ld a, a                                          ; $5b36: $7f
	db $fc                                           ; $5b37: $fc
	sbc [hl]                                         ; $5b38: $9e
	ld [hl], $73                                     ; $5b39: $36 $73
	db $fc                                           ; $5b3b: $fc
	ld l, [hl]                                       ; $5b3c: $6e
	ret z                                            ; $5b3d: $c8

	sbc e                                            ; $5b3e: $9b
	ld b, a                                          ; $5b3f: $47
	cp a                                             ; $5b40: $bf
	and [hl]                                         ; $5b41: $a6
	ld e, a                                          ; $5b42: $5f
	ld l, a                                          ; $5b43: $6f
	db $fc                                           ; $5b44: $fc
	halt                                             ; $5b45: $76
	call z, $fc77                                    ; $5b46: $cc $77 $fc
	ld a, h                                          ; $5b49: $7c
	or h                                             ; $5b4a: $b4
	ld [hl], a                                       ; $5b4b: $77
	db $fc                                           ; $5b4c: $fc
	ld a, a                                          ; $5b4d: $7f
	ld e, [hl]                                       ; $5b4e: $5e
	halt                                             ; $5b4f: $76
	call z, $d09c                                    ; $5b50: $cc $9c $d0
	cp a                                             ; $5b53: $bf
	jr c, jr_04f_5bd1                                ; $5b54: $38 $7b

	db $fc                                           ; $5b56: $fc
	sbc [hl]                                         ; $5b57: $9e
	ld [hl-], a                                      ; $5b58: $32
	ld a, e                                          ; $5b59: $7b
	db $fc                                           ; $5b5a: $fc
	adc l                                            ; $5b5b: $8d
	ld [hl+], a                                      ; $5b5c: $22
	rst $38                                          ; $5b5d: $ff
	adc e                                            ; $5b5e: $8b
	cp $83                                           ; $5b5f: $fe $83
	cp $aa                                           ; $5b61: $fe $aa
	rst SubAFromDE                                          ; $5b63: $df
	add d                                            ; $5b64: $82
	rst $38                                          ; $5b65: $ff
	xor d                                            ; $5b66: $aa
	rst SubAFromDE                                          ; $5b67: $df
	jp nz, $a3bf                                     ; $5b68: $c2 $bf $a3

	rst SubAFromDE                                          ; $5b6b: $df
	rst JumpTable                                          ; $5b6c: $c7
	cp e                                             ; $5b6d: $bb
	halt                                             ; $5b6e: $76
	call z, $fc7f                                    ; $5b6f: $cc $7f $fc
	sbc e                                            ; $5b72: $9b
	ld d, a                                          ; $5b73: $57
	sub h                                            ; $5b74: $94
	ld d, e                                          ; $5b75: $53
	sub h                                            ; $5b76: $94
	ld l, a                                          ; $5b77: $6f
	db $fc                                           ; $5b78: $fc
	sbc c                                            ; $5b79: $99
	ld b, b                                          ; $5b7a: $40
	db $fd                                           ; $5b7b: $fd
	add b                                            ; $5b7c: $80
	ld a, [$f500]                                    ; $5b7d: $fa $00 $f5
	ld [hl], a                                       ; $5b80: $77
	db $fc                                           ; $5b81: $fc
	adc [hl]                                         ; $5b82: $8e
	nop                                              ; $5b83: $00
	ld [$d401], a                                    ; $5b84: $ea $01 $d4
	ld [bc], a                                       ; $5b87: $02
	add sp, $00                                      ; $5b88: $e8 $00
	ld d, l                                          ; $5b8a: $55
	rlca                                             ; $5b8b: $07
	xor b                                            ; $5b8c: $a8
	jr jr_04f_5bcf                                   ; $5b8d: $18 $40

	jr nz, jr_04f_5b11                               ; $5b8f: $20 $80

	ld b, b                                          ; $5b91: $40
	nop                                              ; $5b92: $00
	add b                                            ; $5b93: $80
	ei                                               ; $5b94: $fb
	sbc c                                            ; $5b95: $99
	dec b                                            ; $5b96: $05
	ld hl, sp+$00                                    ; $5b97: $f8 $00
	ld b, $00                                        ; $5b99: $06 $00
	ld bc, $9cfd                                     ; $5b9b: $01 $fd $9c
	rlca                                             ; $5b9e: $07
	ld bc, $fe03                                     ; $5b9f: $01 $03 $fe
	halt                                             ; $5ba2: $76
	call z, $159a                                    ; $5ba3: $cc $9a $15
	add b                                            ; $5ba6: $80
	ld a, [bc]                                       ; $5ba7: $0a
	ld h, b                                          ; $5ba8: $60
	dec b                                            ; $5ba9: $05
	ld [hl], l                                       ; $5baa: $75
	xor a                                            ; $5bab: $af
	add b                                            ; $5bac: $80
	rra                                              ; $5bad: $1f
	ld a, a                                          ; $5bae: $7f
	inc bc                                           ; $5baf: $03
	ld d, a                                          ; $5bb0: $57
	nop                                              ; $5bb1: $00
	xor a                                            ; $5bb2: $af
	ld hl, $5b5b                                     ; $5bb3: $21 $5b $5b
	cp a                                             ; $5bb6: $bf
	cp a                                             ; $5bb7: $bf
	ld a, a                                          ; $5bb8: $7f
	ld h, b                                          ; $5bb9: $60
	rst $38                                          ; $5bba: $ff
	ldh [$f7], a                                     ; $5bbb: $e0 $f7
	ret nz                                           ; $5bbd: $c0

	ld [$ff1e], a                                    ; $5bbe: $ea $1e $ff
	ld de, $fdff                                     ; $5bc1: $11 $ff $fd
	rst SubAFromBC                                          ; $5bc4: $e7
	add $e1                                          ; $5bc5: $c6 $e1
	pop de                                           ; $5bc7: $d1
	nop                                              ; $5bc8: $00
	inc sp                                           ; $5bc9: $33
	ret nz                                           ; $5bca: $c0

	ld e, h                                          ; $5bcb: $5c
	sbc h                                            ; $5bcc: $9c
	and c                                            ; $5bcd: $a1
	cp b                                             ; $5bce: $b8

jr_04f_5bcf:
	ld b, h                                          ; $5bcf: $44
	halt                                             ; $5bd0: $76

jr_04f_5bd1:
	db $fc                                           ; $5bd1: $fc
	ld a, [hl]                                       ; $5bd2: $7e
	db $ec                                           ; $5bd3: $ec
	sbc l                                            ; $5bd4: $9d
	add b                                            ; $5bd5: $80
	cp a                                             ; $5bd6: $bf
	ld a, c                                          ; $5bd7: $79
	ld d, l                                          ; $5bd8: $55
	sbc l                                            ; $5bd9: $9d
	rst SubAFromDE                                          ; $5bda: $df
	db $10                                           ; $5bdb: $10
	halt                                             ; $5bdc: $76
	or b                                             ; $5bdd: $b0
	sbc c                                            ; $5bde: $99
	db $fd                                           ; $5bdf: $fd
	dec l                                            ; $5be0: $2d
	db $fd                                           ; $5be1: $fd
	dec d                                            ; $5be2: $15
	db $fd                                           ; $5be3: $fd
	dec c                                            ; $5be4: $0d
	ld [hl], e                                       ; $5be5: $73
	db $fc                                           ; $5be6: $fc
	sbc [hl]                                         ; $5be7: $9e
	dec b                                            ; $5be8: $05
	ld a, e                                          ; $5be9: $7b
	db $fc                                           ; $5bea: $fc
	halt                                             ; $5beb: $76
	call z, $b59d                                    ; $5bec: $cc $9d $b5
	ld c, $77                                        ; $5bef: $0e $77
	db $fc                                           ; $5bf1: $fc
	sbc l                                            ; $5bf2: $9d
	or h                                             ; $5bf3: $b4
	rrca                                             ; $5bf4: $0f
	ld [hl], a                                       ; $5bf5: $77
	db $fc                                           ; $5bf6: $fc
	ld a, l                                          ; $5bf7: $7d
	inc [hl]                                         ; $5bf8: $34
	ld a, a                                          ; $5bf9: $7f
	ret nc                                           ; $5bfa: $d0

	ld a, a                                          ; $5bfb: $7f
	db $fc                                           ; $5bfc: $fc
	sbc l                                            ; $5bfd: $9d
	add b                                            ; $5bfe: $80
	ld a, a                                          ; $5bff: $7f
	ld h, a                                          ; $5c00: $67
	db $fc                                           ; $5c01: $fc
	halt                                             ; $5c02: $76
	call z, $fc57                                    ; $5c03: $cc $57 $fc
	halt                                             ; $5c06: $76
	call z, Call_04f_509e                            ; $5c07: $cc $9e $50
	ld a, e                                          ; $5c0a: $7b
	jr nz, jr_04f_5c74                               ; $5c0b: $20 $67

	db $fc                                           ; $5c0d: $fc
	ld a, [hl]                                       ; $5c0e: $7e
	call z, $c476                                    ; $5c0f: $cc $76 $c4
	ld a, d                                          ; $5c12: $7a
	ld b, $6b                                        ; $5c13: $06 $6b
	db $fc                                           ; $5c15: $fc
	sbc d                                            ; $5c16: $9a
	ld e, d                                          ; $5c17: $5a

jr_04f_5c18:
	rst AddAOntoHL                                          ; $5c18: $ef
	xor h                                            ; $5c19: $ac

jr_04f_5c1a:
	rst SubAFromDE                                          ; $5c1a: $df
	ld a, [de]                                       ; $5c1b: $1a
	ld [hl], e                                       ; $5c1c: $73
	db $fc                                           ; $5c1d: $fc
	sbc [hl]                                         ; $5c1e: $9e
	inc l                                            ; $5c1f: $2c
	ld [hl], e                                       ; $5c20: $73
	db $fc                                           ; $5c21: $fc
	ld a, a                                          ; $5c22: $7f
	ld [hl], b                                       ; $5c23: $70
	sbc d                                            ; $5c24: $9a
	scf                                              ; $5c25: $37
	cp $1e                                           ; $5c26: $fe $1e
	rst $38                                          ; $5c28: $ff
	rla                                              ; $5c29: $17
	ld [hl], e                                       ; $5c2a: $73
	db $fc                                           ; $5c2b: $fc
	ld a, l                                          ; $5c2c: $7d
	ld a, b                                          ; $5c2d: $78
	ld a, a                                          ; $5c2e: $7f
	db $fc                                           ; $5c2f: $fc
	halt                                             ; $5c30: $76
	call z, $e69b                                    ; $5c31: $cc $9b $e6
	rra                                              ; $5c34: $1f
	rst SubAFromHL                                          ; $5c35: $d7
	cpl                                              ; $5c36: $2f
	ld h, a                                          ; $5c37: $67
	db $fc                                           ; $5c38: $fc
	halt                                             ; $5c39: $76
	call z, $fc77                                    ; $5c3a: $cc $77 $fc

jr_04f_5c3d:
	sbc [hl]                                         ; $5c3d: $9e
	inc bc                                           ; $5c3e: $03
	ld l, e                                          ; $5c3f: $6b
	db $fc                                           ; $5c40: $fc
	sbc b                                            ; $5c41: $98
	ret nz                                           ; $5c42: $c0

	cp a                                             ; $5c43: $bf
	jr z, jr_04f_5c3d                                ; $5c44: $28 $f7

	jp nz, $2abf                                     ; $5c46: $c2 $bf $2a

	ld [hl], a                                       ; $5c49: $77
	db $fc                                           ; $5c4a: $fc
	sub b                                            ; $5c4b: $90
	rst SubAFromHL                                          ; $5c4c: $d7
	jp nc, $2aaf                                     ; $5c4d: $d2 $af $2a

	rst SubAFromHL                                          ; $5c50: $d7
	and a                                            ; $5c51: $a7
	db $db                                           ; $5c52: $db
	add $bb                                          ; $5c53: $c6 $bb
	and [hl]                                         ; $5c55: $a6
	db $db                                           ; $5c56: $db
	adc $b3                                          ; $5c57: $ce $b3
	xor [hl]                                         ; $5c59: $ae
	db $d3                                           ; $5c5a: $d3
	ld l, a                                          ; $5c5b: $6f
	db $fc                                           ; $5c5c: $fc
	ld h, [hl]                                       ; $5c5d: $66
	ret z                                            ; $5c5e: $c8

	ld l, a                                          ; $5c5f: $6f
	db $fc                                           ; $5c60: $fc
	ld a, a                                          ; $5c61: $7f
	cp $90                                           ; $5c62: $fe $90
	inc b                                            ; $5c64: $04
	ret nc                                           ; $5c65: $d0

	inc b                                            ; $5c66: $04
	and b                                            ; $5c67: $a0
	ld [$08d0], sp                                   ; $5c68: $08 $d0 $08
	and b                                            ; $5c6b: $a0
	ld [$10c0], sp                                   ; $5c6c: $08 $c0 $10
	and b                                            ; $5c6f: $a0
	db $10                                           ; $5c70: $10
	ld b, b                                          ; $5c71: $40
	db $10                                           ; $5c72: $10
	ld l, d                                          ; $5c73: $6a

jr_04f_5c74:
	set 4, a                                         ; $5c74: $cb $e7
	sub d                                            ; $5c76: $92
	db $10                                           ; $5c77: $10
	rrca                                             ; $5c78: $0f
	rlca                                             ; $5c79: $07
	nop                                              ; $5c7a: $00
	ld [$0c01], sp                                   ; $5c7b: $08 $01 $0c
	nop                                              ; $5c7e: $00
	inc c                                            ; $5c7f: $0c
	ld bc, $0004                                     ; $5c80: $01 $04 $00
	inc b                                            ; $5c83: $04
	ld a, e                                          ; $5c84: $7b
	db $fc                                           ; $5c85: $fc
	add b                                            ; $5c86: $80
	rra                                              ; $5c87: $1f
	ldh [$db], a                                     ; $5c88: $e0 $db
	jr nz, jr_04f_5cb0                               ; $5c8a: $20 $24

	add hl, de                                       ; $5c8c: $19
	db $ec                                           ; $5c8d: $ec
	nop                                              ; $5c8e: $00
	push hl                                          ; $5c8f: $e5
	jr @-$3c                                         ; $5c90: $18 $c2

	jr z, jr_04f_5cde                                ; $5c92: $28 $4a

	jr nz, jr_04f_5c1a                               ; $5c94: $20 $84

	jr z, jr_04f_5c18                                ; $5c96: $28 $80

	ld a, a                                          ; $5c98: $7f
	srl a                                            ; $5c99: $cb $3f
	ld [hl+], a                                      ; $5c9b: $22
	rst SubAFromDE                                          ; $5c9c: $df
	ld h, [hl]                                       ; $5c9d: $66
	dec de                                           ; $5c9e: $1b
	inc l                                            ; $5c9f: $2c
	db $db                                           ; $5ca0: $db
	db $fc                                           ; $5ca1: $fc
	dec bc                                           ; $5ca2: $0b
	dec sp                                           ; $5ca3: $3b
	rlca                                             ; $5ca4: $07
	ld [hl], l                                       ; $5ca5: $75
	sbc [hl]                                         ; $5ca6: $9e
	ld c, $dd                                        ; $5ca7: $0e $dd
	rst $38                                          ; $5ca9: $ff
	ld a, d                                          ; $5caa: $7a
	ret nz                                           ; $5cab: $c0

	sbc e                                            ; $5cac: $9b
	rst SubAFromHL                                          ; $5cad: $d7
	ret nz                                           ; $5cae: $c0

	db $eb                                           ; $5caf: $eb

jr_04f_5cb0:
	ret nz                                           ; $5cb0: $c0

	ld [hl], a                                       ; $5cb1: $77
	db $fc                                           ; $5cb2: $fc
	sbc e                                            ; $5cb3: $9b
	push de                                          ; $5cb4: $d5
	add l                                            ; $5cb5: $85
	db $fd                                           ; $5cb6: $fd
	push hl                                          ; $5cb7: $e5
	ld a, d                                          ; $5cb8: $7a
	ret z                                            ; $5cb9: $c8

	ld [hl], e                                       ; $5cba: $73
	cp $95                                           ; $5cbb: $fe $95
	push af                                          ; $5cbd: $f5
	dec b                                            ; $5cbe: $05
	db $ed                                           ; $5cbf: $ed
	dec b                                            ; $5cc0: $05
	push af                                          ; $5cc1: $f5
	or l                                             ; $5cc2: $b5
	ld c, $bc                                        ; $5cc3: $0e $bc
	rrca                                             ; $5cc5: $0f
	cp l                                             ; $5cc6: $bd
	ld e, e                                          ; $5cc7: $5b
	db $fc                                           ; $5cc8: $fc
	ld a, [hl]                                       ; $5cc9: $7e
	call z, $a084                                    ; $5cca: $cc $84 $a0
	ld e, a                                          ; $5ccd: $5f
	ld d, c                                          ; $5cce: $51
	xor [hl]                                         ; $5ccf: $ae
	xor d                                            ; $5cd0: $aa
	ld d, l                                          ; $5cd1: $55

jr_04f_5cd2:
	ld d, l                                          ; $5cd2: $55
	xor d                                            ; $5cd3: $aa
	ld [$d415], a                                    ; $5cd4: $ea $15 $d4
	dec hl                                           ; $5cd7: $2b
	jp hl                                            ; $5cd8: $e9


	rla                                              ; $5cd9: $17
	rst $38                                          ; $5cda: $ff
	ld b, h                                          ; $5cdb: $44
	ld l, [hl]                                       ; $5cdc: $6e
	inc l                                            ; $5cdd: $2c

jr_04f_5cde:
	rst $38                                          ; $5cde: $ff
	ld b, [hl]                                       ; $5cdf: $46
	ld l, l                                          ; $5ce0: $6d
	daa                                              ; $5ce1: $27
	db $fc                                           ; $5ce2: $fc
	ld b, a                                          ; $5ce3: $47
	ld hl, sp+$3f                                    ; $5ce4: $f8 $3f
	ret nz                                           ; $5ce6: $c0

	ld a, d                                          ; $5ce7: $7a
	sub $90                                          ; $5ce8: $d6 $90
	cp b                                             ; $5cea: $b8
	rla                                              ; $5ceb: $17
	jp hl                                            ; $5cec: $e9


	ld a, $bb                                        ; $5ced: $3e $bb
	inc d                                            ; $5cef: $14
	rst AddAOntoHL                                          ; $5cf0: $ef
	jr c, jr_04f_5cd2                                ; $5cf1: $38 $df

	ld hl, sp+$4b                                    ; $5cf3: $f8 $4b
	db $fc                                           ; $5cf5: $fc
	rlca                                             ; $5cf6: $07
	cp $02                                           ; $5cf7: $fe $02
	ld [hl], d                                       ; $5cf9: $72
	call z, $a093                                    ; $5cfa: $cc $93 $a0
	rst SubAFromDE                                          ; $5cfd: $df
	ld d, b                                          ; $5cfe: $50
	rst AddAOntoHL                                          ; $5cff: $ef
	and b                                            ; $5d00: $a0
	rst SubAFromDE                                          ; $5d01: $df
	ld d, h                                          ; $5d02: $54
	db $eb                                           ; $5d03: $eb
	and c                                            ; $5d04: $a1
	sbc $54                                          ; $5d05: $de $54
	db $eb                                           ; $5d07: $eb
	ld h, [hl]                                       ; $5d08: $66
	ret z                                            ; $5d09: $c8

	ld [hl], a                                       ; $5d0a: $77
	db $fc                                           ; $5d0b: $fc
	sbc e                                            ; $5d0c: $9b
	ld e, d                                          ; $5d0d: $5a
	xor a                                            ; $5d0e: $af
	xor h                                            ; $5d0f: $ac
	ld e, a                                          ; $5d10: $5f
	ld h, h                                          ; $5d11: $64
	ld b, b                                          ; $5d12: $40
	ld h, a                                          ; $5d13: $67
	db $fc                                           ; $5d14: $fc
	ld a, [hl]                                       ; $5d15: $7e
	ret nz                                           ; $5d16: $c0

	sbc b                                            ; $5d17: $98
	ld d, a                                          ; $5d18: $57
	xor a                                            ; $5d19: $af
	and [hl]                                         ; $5d1a: $a6
	ld e, a                                          ; $5d1b: $5f
	ld b, [hl]                                       ; $5d1c: $46
	cp a                                             ; $5d1d: $bf
	and a                                            ; $5d1e: $a7
	ld a, e                                          ; $5d1f: $7b
	db $fc                                           ; $5d20: $fc
	ld [hl], a                                       ; $5d21: $77
	ld hl, sp+$7e                                    ; $5d22: $f8 $7e
	call z, Call_04f_619b                            ; $5d24: $cc $9b $61
	sbc a                                            ; $5d27: $9f
	ld h, e                                          ; $5d28: $63
	sbc a                                            ; $5d29: $9f
	ld h, a                                          ; $5d2a: $67
	db $fc                                           ; $5d2b: $fc
	sub c                                            ; $5d2c: $91
	pop hl                                           ; $5d2d: $e1
	rra                                              ; $5d2e: $1f
	sub $ab                                          ; $5d2f: $d6 $ab
	ld bc, $82ff                                     ; $5d31: $01 $ff $82
	rst $38                                          ; $5d34: $ff
	add hl, de                                       ; $5d35: $19
	rst SubAFromBC                                          ; $5d36: $e7
	cp d                                             ; $5d37: $ba
	rst JumpTable                                          ; $5d38: $c7
	add hl, sp                                       ; $5d39: $39
	rst JumpTable                                          ; $5d3a: $c7
	ld [hl], a                                       ; $5d3b: $77
	db $fc                                           ; $5d3c: $fc
	sbc e                                            ; $5d3d: $9b
	xor e                                            ; $5d3e: $ab
	rst SubAFromHL                                          ; $5d3f: $d7
	rst JumpTable                                          ; $5d40: $c7
	cp e                                             ; $5d41: $bb
	ld d, a                                          ; $5d42: $57
	db $fc                                           ; $5d43: $fc
	ld a, [hl]                                       ; $5d44: $7e
	jp z, $fe4f                                      ; $5d45: $ca $4f $fe

	cp $79                                           ; $5d48: $fe $79
	sub h                                            ; $5d4a: $94
	ld [hl], l                                       ; $5d4b: $75
	sub b                                            ; $5d4c: $90
	ld a, a                                          ; $5d4d: $7f
	db $fc                                           ; $5d4e: $fc
	sbc [hl]                                         ; $5d4f: $9e
	ld h, b                                          ; $5d50: $60
	ld a, e                                          ; $5d51: $7b
	db $fc                                           ; $5d52: $fc
	rst AddAOntoHL                                          ; $5d53: $ef
	sbc [hl]                                         ; $5d54: $9e
	ld [bc], a                                       ; $5d55: $02
	ld a, c                                          ; $5d56: $79
	add d                                            ; $5d57: $82
	ld a, a                                          ; $5d58: $7f
	db $fc                                           ; $5d59: $fc
	ld a, l                                          ; $5d5a: $7d
	sub c                                            ; $5d5b: $91
	ei                                               ; $5d5c: $fb
	sub [hl]                                         ; $5d5d: $96
	ld d, b                                          ; $5d5e: $50
	dec b                                            ; $5d5f: $05
	xor b                                            ; $5d60: $a8
	ld [bc], a                                       ; $5d61: $02
	ld d, b                                          ; $5d62: $50
	ld bc, $02a8                                     ; $5d63: $01 $a8 $02
	ld d, h                                          ; $5d66: $54
	ld a, e                                          ; $5d67: $7b
	db $ec                                           ; $5d68: $ec
	db $fd                                           ; $5d69: $fd
	sub h                                            ; $5d6a: $94
	ld [hl], h                                       ; $5d6b: $74
	nop                                              ; $5d6c: $00
	add l                                            ; $5d6d: $85
	ld [de], a                                       ; $5d6e: $12
	ld d, b                                          ; $5d6f: $50
	nop                                              ; $5d70: $00
	dec hl                                           ; $5d71: $2b
	nop                                              ; $5d72: $00
	ld d, e                                          ; $5d73: $53
	inc b                                            ; $5d74: $04
	inc l                                            ; $5d75: $2c
	ld a, c                                          ; $5d76: $79
	ld [hl], l                                       ; $5d77: $75
	adc e                                            ; $5d78: $8b
	dec c                                            ; $5d79: $0d
	nop                                              ; $5d7a: $00
	push af                                          ; $5d7b: $f5
	ld c, $ee                                        ; $5d7c: $0e $ee
	rra                                              ; $5d7e: $1f
	ret c                                            ; $5d7f: $d8

	ld a, [hl-]                                      ; $5d80: $3a
	cp b                                             ; $5d81: $b8
	ld l, l                                          ; $5d82: $6d
	ld c, b                                          ; $5d83: $48
	ld a, [$dd88]                                    ; $5d84: $fa $88 $dd
	ld [$083b], sp                                   ; $5d87: $08 $3b $08
	dec a                                            ; $5d8a: $3d
	add b                                            ; $5d8b: $80
	xor d                                            ; $5d8c: $aa
	ld [hl], c                                       ; $5d8d: $71
	ld c, [hl]                                       ; $5d8e: $4e
	ld l, a                                          ; $5d8f: $6f
	db $fc                                           ; $5d90: $fc

jr_04f_5d91:
	sbc b                                            ; $5d91: $98
	rst AddAOntoHL                                          ; $5d92: $ef
	nop                                              ; $5d93: $00
	ldh a, [rTIMA]                                   ; $5d94: $f0 $05
	xor l                                            ; $5d96: $ad
	dec b                                            ; $5d97: $05
	ld d, l                                          ; $5d98: $55
	ld e, e                                          ; $5d99: $5b
	db $fc                                           ; $5d9a: $fc
	sbc b                                            ; $5d9b: $98
	push de                                          ; $5d9c: $d5
	cp l                                             ; $5d9d: $bd
	ld c, $bd                                        ; $5d9e: $0e $bd
	ld c, $bf                                        ; $5da0: $0e $bf
	inc c                                            ; $5da2: $0c
	ld e, a                                          ; $5da3: $5f
	cp $80                                           ; $5da4: $fe $80
	db $d3                                           ; $5da6: $d3
	rlca                                             ; $5da7: $07
	xor d                                            ; $5da8: $aa
	rrca                                             ; $5da9: $0f
	push de                                          ; $5daa: $d5
	rlca                                             ; $5dab: $07
	xor [hl]                                         ; $5dac: $ae
	rlca                                             ; $5dad: $07
	call z, $991f                                    ; $5dae: $cc $1f $99
	cpl                                              ; $5db1: $2f
	ld a, d                                          ; $5db2: $7a
	rra                                              ; $5db3: $1f
	or [hl]                                          ; $5db4: $b6
	ccf                                              ; $5db5: $3f
	dec h                                            ; $5db6: $25
	sbc a                                            ; $5db7: $9f
	and e                                            ; $5db8: $a3
	sbc a                                            ; $5db9: $9f
	ld b, h                                          ; $5dba: $44
	sbc a                                            ; $5dbb: $9f
	db $10                                           ; $5dbc: $10
	rst GetHLinHL                                          ; $5dbd: $cf
	ld d, b                                          ; $5dbe: $50
	adc a                                            ; $5dbf: $8f
	jr nc, jr_04f_5d91                               ; $5dc0: $30 $cf

	nop                                              ; $5dc2: $00
	rst $38                                          ; $5dc3: $ff
	db $ed                                           ; $5dc4: $ed
	add d                                            ; $5dc5: $82
	db $db                                           ; $5dc6: $db
	and e                                            ; $5dc7: $a3
	rst $38                                          ; $5dc8: $ff
	pop bc                                           ; $5dc9: $c1
	rst $38                                          ; $5dca: $ff
	rrca                                             ; $5dcb: $0f
	di                                               ; $5dcc: $f3
	rrca                                             ; $5dcd: $0f
	di                                               ; $5dce: $f3
	ld h, $cf                                        ; $5dcf: $26 $cf
	adc e                                            ; $5dd1: $8b
	scf                                              ; $5dd2: $37
	push de                                          ; $5dd3: $d5
	dec sp                                           ; $5dd4: $3b
	sbc c                                            ; $5dd5: $99
	rst $38                                          ; $5dd6: $ff
	db $fd                                           ; $5dd7: $fd
	ld [bc], a                                       ; $5dd8: $02
	sub [hl]                                         ; $5dd9: $96
	ret z                                            ; $5dda: $c8

	ld l, a                                          ; $5ddb: $6f
	add b                                            ; $5ddc: $80
	sub [hl]                                         ; $5ddd: $96
	ret z                                            ; $5dde: $c8

	rst GetHLinHL                                          ; $5ddf: $cf
	add b                                            ; $5de0: $80
	sub [hl]                                         ; $5de1: $96
	ret nz                                           ; $5de2: $c0

	ld a, e                                          ; $5de3: $7b
	db $fc                                           ; $5de4: $fc
	adc d                                            ; $5de5: $8a
	jp nz, $2fdc                                     ; $5de6: $c2 $dc $2f

	xor l                                            ; $5de9: $ad
	ld e, [hl]                                       ; $5dea: $5e
	call c, $ed2f                                    ; $5deb: $dc $2f $ed
	ld e, $fc                                        ; $5dee: $1e $fc
	rrca                                             ; $5df0: $0f
	db $ed                                           ; $5df1: $ed
	ld e, $dc                                        ; $5df2: $1e $dc
	cpl                                              ; $5df4: $2f
	call $9b3e                                       ; $5df5: $cd $3e $9b
	halt                                             ; $5df8: $76
	dec d                                            ; $5df9: $15
	cp $67                                           ; $5dfa: $fe $67
	db $fc                                           ; $5dfc: $fc
	sub a                                            ; $5dfd: $97
	cp e                                             ; $5dfe: $bb
	ld d, [hl]                                       ; $5dff: $56
	dec d                                            ; $5e00: $15
	cp $8d                                           ; $5e01: $fe $8d
	ld a, [hl]                                       ; $5e03: $7e
	ld b, l                                          ; $5e04: $45
	cp [hl]                                          ; $5e05: $be
	ld e, a                                          ; $5e06: $5f
	db $fc                                           ; $5e07: $fc
	sbc c                                            ; $5e08: $99
	ld h, l                                          ; $5e09: $65
	sbc [hl]                                         ; $5e0a: $9e
	db $e3                                           ; $5e0b: $e3
	rra                                              ; $5e0c: $1f
	pop hl                                           ; $5e0d: $e1
	rra                                              ; $5e0e: $1f
	ld l, a                                          ; $5e0f: $6f
	db $fc                                           ; $5e10: $fc
	sbc c                                            ; $5e11: $99
	push hl                                          ; $5e12: $e5
	dec de                                           ; $5e13: $1b

jr_04f_5e14:
	ld h, a                                          ; $5e14: $67

jr_04f_5e15:
	sbc e                                            ; $5e15: $9b
	ld h, l                                          ; $5e16: $65
	sbc e                                            ; $5e17: $9b
	ld h, [hl]                                       ; $5e18: $66
	ret z                                            ; $5e19: $c8

	ld a, h                                          ; $5e1a: $7c
	ld c, c                                          ; $5e1b: $49
	sbc l                                            ; $5e1c: $9d
	ld a, l                                          ; $5e1d: $7d
	add e                                            ; $5e1e: $83
	ld [hl], a                                       ; $5e1f: $77
	db $fc                                           ; $5e20: $fc
	ld l, [hl]                                       ; $5e21: $6e
	ret z                                            ; $5e22: $c8

	sbc l                                            ; $5e23: $9d
	rst SubAFromBC                                          ; $5e24: $e7
	sbc e                                            ; $5e25: $9b
	ld h, a                                          ; $5e26: $67
	db $fc                                           ; $5e27: $fc
	sbc [hl]                                         ; $5e28: $9e
	ld d, [hl]                                       ; $5e29: $56
	ld a, d                                          ; $5e2a: $7a
	call z, $fc6f                                    ; $5e2b: $cc $6f $fc
	sbc [hl]                                         ; $5e2e: $9e
	ld d, l                                          ; $5e2f: $55
	ld [hl], e                                       ; $5e30: $73
	db $fc                                           ; $5e31: $fc
	ld a, [hl]                                       ; $5e32: $7e
	call z, $3092                                    ; $5e33: $cc $92 $30
	add b                                            ; $5e36: $80
	ld d, b                                          ; $5e37: $50
	nop                                              ; $5e38: $00
	ld sp, hl                                        ; $5e39: $f9
	nop                                              ; $5e3a: $00
	ld a, a                                          ; $5e3b: $7f
	add b                                            ; $5e3c: $80
	cp a                                             ; $5e3d: $bf
	nop                                              ; $5e3e: $00
	ld e, a                                          ; $5e3f: $5f
	nop                                              ; $5e40: $00
	xor b                                            ; $5e41: $a8
	ld a, [$c09a]                                    ; $5e42: $fa $9a $c0
	nop                                              ; $5e45: $00
	ldh a, [rP1]                                     ; $5e46: $f0 $00
	ldh [$7b], a                                     ; $5e48: $e0 $7b

jr_04f_5e4a:
	cp $9e                                           ; $5e4a: $fe $9e
	ld b, b                                          ; $5e4c: $40
	ld l, [hl]                                       ; $5e4d: $6e
	db $db                                           ; $5e4e: $db
	db $fc                                           ; $5e4f: $fc
	sub a                                            ; $5e50: $97
	ld [$0080], sp                                   ; $5e51: $08 $80 $00
	ret                                              ; $5e54: $c9


	rrca                                             ; $5e55: $0f
	ld c, c                                          ; $5e56: $49
	nop                                              ; $5e57: $00
	inc bc                                           ; $5e58: $03
	ld a, d                                          ; $5e59: $7a
	or c                                             ; $5e5a: $b1
	add b                                            ; $5e5b: $80
	dec b                                            ; $5e5c: $05
	ld hl, $420b                                     ; $5e5d: $21 $0b $42
	rla                                              ; $5e60: $17
	ld b, b                                          ; $5e61: $40
	rst AddAOntoHL                                          ; $5e62: $ef
	inc h                                            ; $5e63: $24
	halt                                             ; $5e64: $76
	jr nz, jr_04f_5e15                               ; $5e65: $20 $ae

	cp b                                             ; $5e67: $b8
	nop                                              ; $5e68: $00
	ldh a, [c]                                       ; $5e69: $f2
	nop                                              ; $5e6a: $00
	ld d, c                                          ; $5e6b: $51
	add b                                            ; $5e6c: $80
	ld sp, hl                                        ; $5e6d: $f9
	ld b, $8e                                        ; $5e6e: $06 $8e
	ld [hl], c                                       ; $5e70: $71
	rst GetHLinHL                                          ; $5e71: $cf
	jr nz, jr_04f_5e14                               ; $5e72: $20 $a0

	ld b, [hl]                                       ; $5e74: $46
	add hl, bc                                       ; $5e75: $09
	ld [hl], $11                                     ; $5e76: $36 $11
	ld h, d                                          ; $5e78: $62
	call nz, $800b                                   ; $5e79: $c4 $0b $80
	ld [$031d], sp                                   ; $5e7c: $08 $1d $03
	xor h                                            ; $5e7f: $ac
	nop                                              ; $5e80: $00
	ld e, l                                          ; $5e81: $5d
	ld bc, $03ea                                     ; $5e82: $01 $ea $03
	ld [hl], h                                       ; $5e85: $74
	nop                                              ; $5e86: $00
	ei                                               ; $5e87: $fb
	jr nz, jr_04f_5e4a                               ; $5e88: $20 $c0

	add b                                            ; $5e8a: $80
	ld b, [hl]                                       ; $5e8b: $46
	ld [bc], a                                       ; $5e8c: $02
	add e                                            ; $5e8d: $83
	inc bc                                           ; $5e8e: $03
	adc c                                            ; $5e8f: $89
	inc b                                            ; $5e90: $04
	add l                                            ; $5e91: $85
	dec b                                            ; $5e92: $05
	add h                                            ; $5e93: $84
	ld [bc], a                                       ; $5e94: $02
	add h                                            ; $5e95: $84
	add b                                            ; $5e96: $80
	ld b, $05                                        ; $5e97: $06 $05
	ld l, l                                          ; $5e99: $6d
	dec b                                            ; $5e9a: $05
	add b                                            ; $5e9b: $80
	dec a                                            ; $5e9c: $3d
	dec b                                            ; $5e9d: $05
	dec e                                            ; $5e9e: $1d
	add l                                            ; $5e9f: $85
	dec c                                            ; $5ea0: $0d
	dec b                                            ; $5ea1: $05
	adc l                                            ; $5ea2: $8d
	push bc                                          ; $5ea3: $c5
	add l                                            ; $5ea4: $85
	add l                                            ; $5ea5: $85
	push bc                                          ; $5ea6: $c5
	dec h                                            ; $5ea7: $25
	push bc                                          ; $5ea8: $c5
	cp a                                             ; $5ea9: $bf
	ld [$00bf], sp                                   ; $5eaa: $08 $bf $00
	cp a                                             ; $5ead: $bf
	add hl, bc                                       ; $5eae: $09
	cp l                                             ; $5eaf: $bd
	rlca                                             ; $5eb0: $07
	cp [hl]                                          ; $5eb1: $be
	dec bc                                           ; $5eb2: $0b
	or l                                             ; $5eb3: $b5
	rrca                                             ; $5eb4: $0f
	or [hl]                                          ; $5eb5: $b6
	rrca                                             ; $5eb6: $0f
	or a                                             ; $5eb7: $b7
	rrca                                             ; $5eb8: $0f
	ld e, l                                          ; $5eb9: $5d
	rra                                              ; $5eba: $1f
	sbc b                                            ; $5ebb: $98
	ei                                               ; $5ebc: $fb
	ld a, a                                          ; $5ebd: $7f
	or $ff                                           ; $5ebe: $f6 $ff
	ld d, l                                          ; $5ec0: $55
	rst $38                                          ; $5ec1: $ff
	xor d                                            ; $5ec2: $aa
	ld [hl], e                                       ; $5ec3: $73
	db $fc                                           ; $5ec4: $fc
	sub l                                            ; $5ec5: $95
	ld e, a                                          ; $5ec6: $5f
	rst $38                                          ; $5ec7: $ff
	sub e                                            ; $5ec8: $93
	ei                                               ; $5ec9: $fb
	inc sp                                           ; $5eca: $33
	rst FarCall                                          ; $5ecb: $f7
	ld [hl], h                                       ; $5ecc: $74
	db $f4                                           ; $5ecd: $f4
	ld [hl], h                                       ; $5ece: $74
	db $fc                                           ; $5ecf: $fc
	ld l, a                                          ; $5ed0: $6f
	ldh a, [hDisp0_WY]                                     ; $5ed1: $f0 $88
	push de                                          ; $5ed3: $d5
	rst $38                                          ; $5ed4: $ff
	rst $38                                          ; $5ed5: $ff
	dec c                                            ; $5ed6: $0d
	rst $38                                          ; $5ed7: $ff
	add [hl]                                         ; $5ed8: $86
	rst $38                                          ; $5ed9: $ff
	rst SubAFromBC                                          ; $5eda: $e7
	rst $38                                          ; $5edb: $ff
	db $db                                           ; $5edc: $db
	rst $38                                          ; $5edd: $ff
	ld l, a                                          ; $5ede: $6f
	rst $38                                          ; $5edf: $ff
	rst SubAFromBC                                          ; $5ee0: $e7
	rst SubAFromBC                                          ; $5ee1: $e7
	ret z                                            ; $5ee2: $c8

	ret z                                            ; $5ee3: $c8

	ld h, a                                          ; $5ee4: $67
	rst GetHLinHL                                          ; $5ee5: $cf
	add b                                            ; $5ee6: $80
	add [hl]                                         ; $5ee7: $86
	jp nz, Jump_04f_7bcb                             ; $5ee8: $c2 $cb $7b

	db $fc                                           ; $5eeb: $fc
	sub e                                            ; $5eec: $93
	ld c, e                                          ; $5eed: $4b
	add b                                            ; $5eee: $80
	add $42                                          ; $5eef: $c6 $42
	ei                                               ; $5ef1: $fb
	ld [hl], d                                       ; $5ef2: $72
	cp $ff                                           ; $5ef3: $fe $ff
	call c, $8d2f                                    ; $5ef5: $dc $2f $8d
	ld a, [hl]                                       ; $5ef8: $7e
	ld l, a                                          ; $5ef9: $6f
	db $fc                                           ; $5efa: $fc
	sub d                                            ; $5efb: $92
	add l                                            ; $5efc: $85
	ld a, [hl]                                       ; $5efd: $7e
	sbc h                                            ; $5efe: $9c
	ld l, a                                          ; $5eff: $6f
	add l                                            ; $5f00: $85
	ld a, [hl]                                       ; $5f01: $7e
	cp e                                             ; $5f02: $bb
	ld d, [hl]                                       ; $5f03: $56
	dec b                                            ; $5f04: $05
	cp $ab                                           ; $5f05: $fe $ab
	ld d, [hl]                                       ; $5f07: $56
	ld bc, $fc7b                                     ; $5f08: $01 $7b $fc
	sub l                                            ; $5f0b: $95
	add hl, bc                                       ; $5f0c: $09
	or $a3                                           ; $5f0d: $f6 $a3
	ld e, [hl]                                       ; $5f0f: $5e
	ld c, c                                          ; $5f10: $49
	or [hl]                                          ; $5f11: $b6
	cp l                                             ; $5f12: $bd
	ld c, [hl]                                       ; $5f13: $4e
	ld h, l                                          ; $5f14: $65
	sbc [hl]                                         ; $5f15: $9e
	ld l, a                                          ; $5f16: $6f
	db $fc                                           ; $5f17: $fc
	sbc c                                            ; $5f18: $99
	ld [hl], h                                       ; $5f19: $74
	adc a                                            ; $5f1a: $8f
	cp h                                             ; $5f1b: $bc
	ld c, a                                          ; $5f1c: $4f
	ld [hl], h                                       ; $5f1d: $74
	adc a                                            ; $5f1e: $8f
	halt                                             ; $5f1f: $76
	call z, $fc7f                                    ; $5f20: $cc $7f $fc
	sbc c                                            ; $5f23: $99
	dec h                                            ; $5f24: $25
	db $db                                           ; $5f25: $db
	rlca                                             ; $5f26: $07
	ei                                               ; $5f27: $fb
	dec b                                            ; $5f28: $05
	ei                                               ; $5f29: $fb
	ld [hl], h                                       ; $5f2a: $74
	ld b, b                                          ; $5f2b: $40
	ld a, h                                          ; $5f2c: $7c
	inc sp                                           ; $5f2d: $33
	ld a, [hl]                                       ; $5f2e: $7e
	call z, $fc6f                                    ; $5f2f: $cc $6f $fc
	sbc c                                            ; $5f32: $99

Call_04f_5f33:
	ld l, l                                          ; $5f33: $6d
	sub e                                            ; $5f34: $93
	rst AddAOntoHL                                          ; $5f35: $ef
	sub e                                            ; $5f36: $93
	ld l, l                                          ; $5f37: $6d
	sub e                                            ; $5f38: $93
	ld d, [hl]                                       ; $5f39: $56
	call nz, $8b9b                                   ; $5f3a: $c4 $9b $8b
	rst FarCall                                          ; $5f3d: $f7
	db $d3                                           ; $5f3e: $d3
	xor a                                            ; $5f3f: $af
	ld l, [hl]                                       ; $5f40: $6e
	ret z                                            ; $5f41: $c8

	sbc [hl]                                         ; $5f42: $9e
	ld d, h                                          ; $5f43: $54
	ld h, e                                          ; $5f44: $63
	db $fc                                           ; $5f45: $fc
	ld a, l                                          ; $5f46: $7d
	adc b                                            ; $5f47: $88
	sbc l                                            ; $5f48: $9d
	and b                                            ; $5f49: $a0
	nop                                              ; $5f4a: $00
	ld a, c                                          ; $5f4b: $79
	add h                                            ; $5f4c: $84
	add b                                            ; $5f4d: $80
	ld bc, $0740                                     ; $5f4e: $01 $40 $07
	inc bc                                           ; $5f51: $03
	inc c                                            ; $5f52: $0c
	inc bc                                           ; $5f53: $03
	dec e                                            ; $5f54: $1d
	inc b                                            ; $5f55: $04

jr_04f_5f56:
	dec c                                            ; $5f56: $0d
	dec b                                            ; $5f57: $05
	nop                                              ; $5f58: $00
	ld h, d                                          ; $5f59: $62
	ld bc, $017e                                     ; $5f5a: $01 $7e $01
	db $eb                                           ; $5f5d: $eb
	inc b                                            ; $5f5e: $04
	rst SubAFromHL                                          ; $5f5f: $d7
	cp b                                             ; $5f60: $b8
	sub d                                            ; $5f61: $92
	ld sp, $23f4                                     ; $5f62: $31 $f4 $23
	ld b, [hl]                                       ; $5f65: $46
	cp e                                             ; $5f66: $bb
	adc $08                                          ; $5f67: $ce $08
	or c                                             ; $5f69: $b1
	ret z                                            ; $5f6a: $c8

	rlca                                             ; $5f6b: $07
	ld hl, sp-$80                                    ; $5f6c: $f8 $80
	add hl, sp                                       ; $5f6e: $39
	xor $2d                                          ; $5f6f: $ee $2d
	jp nz, $81d2                                     ; $5f71: $c2 $d2 $81

	inc l                                            ; $5f74: $2c
	add e                                            ; $5f75: $83
	ld e, h                                          ; $5f76: $5c
	inc bc                                           ; $5f77: $03
	ld b, $f8                                        ; $5f78: $06 $f8
	xor h                                            ; $5f7a: $ac
	db $10                                           ; $5f7b: $10
	or h                                             ; $5f7c: $b4
	ld b, b                                          ; $5f7d: $40
	ld d, [hl]                                       ; $5f7e: $56
	xor b                                            ; $5f7f: $a8
	cp e                                             ; $5f80: $bb
	ld d, b                                          ; $5f81: $50
	inc [hl]                                         ; $5f82: $34
	db $e3                                           ; $5f83: $e3
	ld hl, $06ce                                     ; $5f84: $21 $ce $06
	rst $38                                          ; $5f87: $ff
	nop                                              ; $5f88: $00
	inc de                                           ; $5f89: $13

Call_04f_5f8a:
	jr nz, jr_04f_5f93                               ; $5f8a: $20 $07

	inc a                                            ; $5f8c: $3c
	add b                                            ; $5f8d: $80
	inc bc                                           ; $5f8e: $03
	cp $01                                           ; $5f8f: $fe $01
	ld a, b                                          ; $5f91: $78
	rlca                                             ; $5f92: $07

jr_04f_5f93:
	ld b, d                                          ; $5f93: $42
	rst $38                                          ; $5f94: $ff

Jump_04f_5f95:
	inc e                                            ; $5f95: $1c
	cp [hl]                                          ; $5f96: $be
	inc c                                            ; $5f97: $0c
	nop                                              ; $5f98: $00
	add c                                            ; $5f99: $81
	ld h, d                                          ; $5f9a: $62
	ld [bc], a                                       ; $5f9b: $02
	add h                                            ; $5f9c: $84

Jump_04f_5f9d:
	ld b, b                                          ; $5f9d: $40
	ld e, b                                          ; $5f9e: $58
	jr nc, jr_04f_5f56                               ; $5f9f: $30 $b5

	ld [$044a], sp                                   ; $5fa1: $08 $4a $04
	ld h, l                                          ; $5fa4: $65
	ld [bc], a                                       ; $5fa5: $02
	ld d, e                                          ; $5fa6: $53
	ld bc, $87e9                                     ; $5fa7: $01 $e9 $87
	ld [de], a                                       ; $5faa: $12
	ld de, $821a                                     ; $5fab: $11 $1a $82
	ld bc, $0c1a                                     ; $5fae: $01 $1a $0c
	xor e                                            ; $5fb1: $ab
	add d                                            ; $5fb2: $82
	ld e, l                                          ; $5fb3: $5d
	ld b, l                                          ; $5fb4: $45
	ld c, [hl]                                       ; $5fb5: $4e
	or [hl]                                          ; $5fb6: $b6
	rst AddAOntoHL                                          ; $5fb7: $ef
	sub $60                                          ; $5fb8: $d6 $60
	ld b, l                                          ; $5fba: $45
	push af                                          ; $5fbb: $f5
	ld b, l                                          ; $5fbc: $45
	db $ed                                           ; $5fbd: $ed
	dec h                                            ; $5fbe: $25
	push af                                          ; $5fbf: $f5
	dec h                                            ; $5fc0: $25
	db $ed                                           ; $5fc1: $ed
	ld d, l                                          ; $5fc2: $55
	push hl                                          ; $5fc3: $e5
	push bc                                          ; $5fc4: $c5
	sbc l                                            ; $5fc5: $9d
	dec c                                            ; $5fc6: $0d
	push af                                          ; $5fc7: $f5
	dec b                                            ; $5fc8: $05
	db $fd                                           ; $5fc9: $fd
	or a                                             ; $5fca: $b7
	ld a, d                                          ; $5fcb: $7a
	call z, $b39c                                    ; $5fcc: $cc $9c $b3
	rrca                                             ; $5fcf: $0f
	or a                                             ; $5fd0: $b7
	ld a, d                                          ; $5fd1: $7a
	jp nz, $b794                                     ; $5fd2: $c2 $94 $b7

	dec c                                            ; $5fd5: $0d
	or [hl]                                          ; $5fd6: $b6
	dec c                                            ; $5fd7: $0d
	or a                                             ; $5fd8: $b7
	inc c                                            ; $5fd9: $0c
	xor e                                            ; $5fda: $ab
	rst $38                                          ; $5fdb: $ff
	push af                                          ; $5fdc: $f5
	rst $38                                          ; $5fdd: $ff
	cp $dc                                           ; $5fde: $fe $dc
	rst $38                                          ; $5fe0: $ff
	sbc d                                            ; $5fe1: $9a
	cp a                                             ; $5fe2: $bf
	rst $38                                          ; $5fe3: $ff
	rst SubAFromDE                                          ; $5fe4: $df
	rst $38                                          ; $5fe5: $ff
	xor a                                            ; $5fe6: $af
	sbc $ff                                          ; $5fe7: $de $ff
	ld a, [hl]                                       ; $5fe9: $7e
	cp h                                             ; $5fea: $bc
	sbc l                                            ; $5feb: $9d
	or l                                             ; $5fec: $b5
	rst FarCall                                          ; $5fed: $f7
	db $dd                                           ; $5fee: $dd
	rst $38                                          ; $5fef: $ff
	add b                                            ; $5ff0: $80
	cp h                                             ; $5ff1: $bc
	ld hl, sp-$62                                    ; $5ff2: $f8 $9e
	db $fc                                           ; $5ff4: $fc
	rst SubAFromDE                                          ; $5ff5: $df
	cp $cb                                           ; $5ff6: $fe $cb
	ret nz                                           ; $5ff8: $c0

	ret z                                            ; $5ff9: $c8

	ret nz                                           ; $5ffa: $c0

	reti                                             ; $5ffb: $d9


	ret nz                                           ; $5ffc: $c0

	and [hl]                                         ; $5ffd: $a6
	reti                                             ; $5ffe: $d9


	sbc [hl]                                         ; $5fff: $9e
	ld sp, hl                                        ; $6000: $f9
	sbc e                                            ; $6001: $9b
	ld a, h                                          ; $6002: $7c
	rst SubAFromDE                                          ; $6003: $df
	ld a, h                                          ; $6004: $7c
	push hl                                          ; $6005: $e5
	cp $bf                                           ; $6006: $fe $bf
	ld a, a                                          ; $6008: $7f
	cpl                                              ; $6009: $2f
	rra                                              ; $600a: $1f
	or $0f                                           ; $600b: $f6 $0f
	rst FarCall                                          ; $600d: $f7
	xor $f5                                          ; $600e: $ee $f5
	adc e                                            ; $6010: $8b
	xor [hl]                                         ; $6011: $ae
	cp $cd                                           ; $6012: $fe $cd
	call nc, $aeff                                   ; $6014: $d4 $ff $ae
	ld a, a                                          ; $6017: $7f
	sbc a                                            ; $6018: $9f
	ld h, h                                          ; $6019: $64
	cp $88                                           ; $601a: $fe $88
	cp a                                             ; $601c: $bf
	call nz, $c8fe                                   ; $601d: $c4 $fe $c8
	rst $38                                          ; $6020: $ff
	call nz, $c87e                                   ; $6021: $c4 $7e $c8
	ld a, a                                          ; $6024: $7f
	ld a, e                                          ; $6025: $7b
	db $fc                                           ; $6026: $fc
	ld a, [hl]                                       ; $6027: $7e
	ret z                                            ; $6028: $c8

	sbc l                                            ; $6029: $9d
	ld e, c                                          ; $602a: $59
	and [hl]                                         ; $602b: $a6
	ld e, a                                          ; $602c: $5f
	db $fc                                           ; $602d: $fc
	sbc l                                            ; $602e: $9d
	ld b, c                                          ; $602f: $41
	cp [hl]                                          ; $6030: $be
	halt                                             ; $6031: $76
	call z, $fc7f                                    ; $6032: $cc $7f $fc
	sub l                                            ; $6035: $95
	ld [hl], l                                       ; $6036: $75
	adc [hl]                                         ; $6037: $8e
	cp h                                             ; $6038: $bc
	ld c, a                                          ; $6039: $4f
	ld h, h                                          ; $603a: $64
	sbc a                                            ; $603b: $9f
	xor h                                            ; $603c: $ac
	ld e, a                                          ; $603d: $5f
	ld h, h                                          ; $603e: $64
	sbc a                                            ; $603f: $9f
	halt                                             ; $6040: $76
	call z, $fc57                                    ; $6041: $cc $57 $fc
	sbc e                                            ; $6044: $9b
	rst GetHLinHL                                          ; $6045: $cf
	or e                                             ; $6046: $b3
	ld c, a                                          ; $6047: $4f
	or e                                             ; $6048: $b3
	ld d, a                                          ; $6049: $57
	db $fc                                           ; $604a: $fc
	sub a                                            ; $604b: $97
	and e                                            ; $604c: $a3
	rst SubAFromDE                                          ; $604d: $df
	db $d3                                           ; $604e: $d3
	xor a                                            ; $604f: $af
	and e                                            ; $6050: $a3
	rst SubAFromDE                                          ; $6051: $df
	jp Jump_04f_67bf                                 ; $6052: $c3 $bf $67


	db $fc                                           ; $6055: $fc
	ld d, [hl]                                       ; $6056: $56
	call nz, $fc77                                   ; $6057: $c4 $77 $fc
	add b                                            ; $605a: $80
	rlca                                             ; $605b: $07
	ld bc, $0702                                     ; $605c: $01 $02 $07
	ld e, $07                                        ; $605f: $1e $07
	nop                                              ; $6061: $00
	ld c, $01                                        ; $6062: $0e $01
	ld [bc], a                                       ; $6064: $02
	ld b, $03                                        ; $6065: $06 $03
	inc bc                                           ; $6067: $03
	nop                                              ; $6068: $00
	ld b, $01                                        ; $6069: $06 $01
	dec sp                                           ; $606b: $3b
	add h                                            ; $606c: $84
	add c                                            ; $606d: $81
	daa                                              ; $606e: $27
	cp c                                             ; $606f: $b9
	ld l, [hl]                                       ; $6070: $6e
	cpl                                              ; $6071: $2f
	ld a, b                                          ; $6072: $78
	rst $38                                          ; $6073: $ff
	ld a, c                                          ; $6074: $79
	ld [hl], b                                       ; $6075: $70
	rst $38                                          ; $6076: $ff
	ld c, a                                          ; $6077: $4f
	cp a                                             ; $6078: $bf
	ld a, e                                          ; $6079: $7b
	add b                                            ; $607a: $80
	rst $38                                          ; $607b: $ff
	ld l, e                                          ; $607c: $6b
	add h                                            ; $607d: $84
	dec e                                            ; $607e: $1d
	db $e3                                           ; $607f: $e3
	and h                                            ; $6080: $a4
	ld e, a                                          ; $6081: $5f
	sub a                                            ; $6082: $97
	rst $38                                          ; $6083: $ff
	ccf                                              ; $6084: $3f
	rst $38                                          ; $6085: $ff
	ld a, a                                          ; $6086: $7f
	rst $38                                          ; $6087: $ff
	or a                                             ; $6088: $b7
	rst $38                                          ; $6089: $ff
	add hl, de                                       ; $608a: $19
	rst $38                                          ; $608b: $ff
	rst SubAFromDE                                          ; $608c: $df
	ld a, a                                          ; $608d: $7f
	xor l                                            ; $608e: $ad
	cp $de                                           ; $608f: $fe $de
	rst FarCall                                          ; $6091: $f7
	db $eb                                           ; $6092: $eb
	cp $d7                                           ; $6093: $fe $d7
	db $fc                                           ; $6095: $fc
	xor c                                            ; $6096: $a9
	cp $57                                           ; $6097: $fe $57
	db $fc                                           ; $6099: $fc
	add a                                            ; $609a: $87
	cp e                                             ; $609b: $bb
	ld h, [hl]                                       ; $609c: $66
	nop                                              ; $609d: $00
	sub e                                            ; $609e: $93
	inc bc                                           ; $609f: $03
	ld c, a                                          ; $60a0: $4f
	ld b, $a7                                        ; $60a1: $06 $a7
	ld b, $47                                        ; $60a3: $06 $47
	ld bc, $01a3                                     ; $60a5: $01 $a3 $01
	ld b, c                                          ; $60a8: $41
	nop                                              ; $60a9: $00
	and l                                            ; $60aa: $a5
	nop                                              ; $60ab: $00
	ld b, b                                          ; $60ac: $40
	add b                                            ; $60ad: $80
	ldh a, [rLCDC]                                   ; $60ae: $f0 $40
	add sp, $40                                      ; $60b0: $e8 $40
	ldh a, [$79]                                     ; $60b2: $f0 $79
	scf                                              ; $60b4: $37
	adc l                                            ; $60b5: $8d
	ret nc                                           ; $60b6: $d0

	add b                                            ; $60b7: $80
	xor b                                            ; $60b8: $a8
	ret nz                                           ; $60b9: $c0

	db $fc                                           ; $60ba: $fc
	jr nc, jr_04f_6137                               ; $60bb: $30 $7a

	dec [hl]                                         ; $60bd: $35
	ld b, b                                          ; $60be: $40
	ld a, [hl+]                                      ; $60bf: $2a
	nop                                              ; $60c0: $00
	sbc c                                            ; $60c1: $99
	nop                                              ; $60c2: $00
	ld d, d                                          ; $60c3: $52
	nop                                              ; $60c4: $00
	add hl, bc                                       ; $60c5: $09
	nop                                              ; $60c6: $00
	ld [$4779], sp                                   ; $60c7: $08 $79 $47
	ld a, l                                          ; $60ca: $7d
	dec a                                            ; $60cb: $3d
	adc l                                            ; $60cc: $8d
	dec b                                            ; $60cd: $05
	ld [hl], l                                       ; $60ce: $75
	add l                                            ; $60cf: $85
	ld h, l                                          ; $60d0: $65
	add l                                            ; $60d1: $85
	ld l, l                                          ; $60d2: $6d
	dec b                                            ; $60d3: $05
	db $fd                                           ; $60d4: $fd
	dec b                                            ; $60d5: $05
	ld [hl], l                                       ; $60d6: $75
	dec b                                            ; $60d7: $05
	or l                                             ; $60d8: $b5
	dec b                                            ; $60d9: $05
	ld h, l                                          ; $60da: $65
	dec b                                            ; $60db: $05
	add l                                            ; $60dc: $85
	and a                                            ; $60dd: $a7
	inc e                                            ; $60de: $1c
	ld [hl], a                                       ; $60df: $77
	cp $9b                                           ; $60e0: $fe $9b
	and [hl]                                         ; $60e2: $a6
	dec e                                            ; $60e3: $1d
	add [hl]                                         ; $60e4: $86
	dec a                                            ; $60e5: $3d
	ld l, a                                          ; $60e6: $6f
	cp $7e                                           ; $60e7: $fe $7e
	jp nc, Jump_04f_6b8d                             ; $60e9: $d2 $8d $6b

	rst $38                                          ; $60ec: $ff
	ld e, l                                          ; $60ed: $5d
	rst $38                                          ; $60ee: $ff
	ld l, e                                          ; $60ef: $6b
	cp a                                             ; $60f0: $bf
	ld a, l                                          ; $60f1: $7d
	cp a                                             ; $60f2: $bf
	ld a, d                                          ; $60f3: $7a
	cp a                                             ; $60f4: $bf
	ld a, l                                          ; $60f5: $7d
	sbc a                                            ; $60f6: $9f
	ld a, d                                          ; $60f7: $7a
	sbc a                                            ; $60f8: $9f
	rst GetHLinHL                                          ; $60f9: $cf
	rst $38                                          ; $60fa: $ff
	xor $fe                                          ; $60fb: $ee $fe
	ld l, [hl]                                       ; $60fd: $6e
	or b                                             ; $60fe: $b0
	rst SubAFromDE                                          ; $60ff: $df
	rst $38                                          ; $6100: $ff
	ld a, a                                          ; $6101: $7f
	ld a, [hl]                                       ; $6102: $7e
	rst SubAFromDE                                          ; $6103: $df
	rst $38                                          ; $6104: $ff
	sbc d                                            ; $6105: $9a
	xor $ff                                          ; $6106: $ee $ff
	sbc $7f                                          ; $6108: $de $7f
	rra                                              ; $610a: $1f
	ld [hl], d                                       ; $610b: $72
	sbc [hl]                                         ; $610c: $9e
	ld a, a                                          ; $610d: $7f
	db $fc                                           ; $610e: $fc
	sbc [hl]                                         ; $610f: $9e
	db $fd                                           ; $6110: $fd
	sbc $ff                                          ; $6111: $de $ff
	sub h                                            ; $6113: $94
	rst SubAFromHL                                          ; $6114: $d7
	ccf                                              ; $6115: $3f
	xor a                                            ; $6116: $af
	rst $38                                          ; $6117: $ff
	ld b, [hl]                                       ; $6118: $46
	rst $38                                          ; $6119: $ff
	xor [hl]                                         ; $611a: $ae
	rst $38                                          ; $611b: $ff
	ld c, h                                          ; $611c: $4c
	rst $38                                          ; $611d: $ff
	adc h                                            ; $611e: $8c
	ld a, e                                          ; $611f: $7b
	ret z                                            ; $6120: $c8

	sbc $ff                                          ; $6121: $de $ff
	ld l, d                                          ; $6123: $6a
	ret z                                            ; $6124: $c8

	ld a, a                                          ; $6125: $7f
	db $fc                                           ; $6126: $fc
	sbc c                                            ; $6127: $99
	cp [hl]                                          ; $6128: $be
	add sp, -$41                                     ; $6129: $e8 $bf
	db $e4                                           ; $612b: $e4
	ld a, $e8                                        ; $612c: $3e $e8
	halt                                             ; $612e: $76
	call z, $fc6f                                    ; $612f: $cc $6f $fc
	ld a, h                                          ; $6132: $7c
	ld d, b                                          ; $6133: $50
	ld [hl], a                                       ; $6134: $77
	db $fc                                           ; $6135: $fc
	sbc e                                            ; $6136: $9b

jr_04f_6137:
	adc h                                            ; $6137: $8c
	ld a, a                                          ; $6138: $7f
	ld b, h                                          ; $6139: $44
	cp a                                             ; $613a: $bf
	ld l, a                                          ; $613b: $6f
	db $fc                                           ; $613c: $fc
	sbc [hl]                                         ; $613d: $9e
	ld c, h                                          ; $613e: $4c
	ld [hl], e                                       ; $613f: $73
	db $fc                                           ; $6140: $fc
	dec sp                                           ; $6141: $3b
	nop                                              ; $6142: $00
	sbc [hl]                                         ; $6143: $9e
	ld h, l                                          ; $6144: $65
	reti                                             ; $6145: $d9


	ld d, l                                          ; $6146: $55
	sbc [hl]                                         ; $6147: $9e
	ld d, [hl]                                       ; $6148: $56
	ld e, a                                          ; $6149: $5f
	or $cb                                           ; $614a: $f6 $cb
	inc sp                                           ; $614c: $33
	db $dd                                           ; $614d: $dd
	ld h, [hl]                                       ; $614e: $66
	ld h, a                                          ; $614f: $67
	or $9e                                           ; $6150: $f6 $9e
	ld h, l                                          ; $6152: $65
	ld h, e                                          ; $6153: $63
	or $9b                                           ; $6154: $f6 $9b
	ld d, l                                          ; $6156: $55
	ld h, [hl]                                       ; $6157: $66
	inc sp                                           ; $6158: $33
	ld b, h                                          ; $6159: $44
	ld h, a                                          ; $615a: $67
	or $9c                                           ; $615b: $f6 $9c
	inc [hl]                                         ; $615d: $34
	ld d, l                                          ; $615e: $55
	ld b, e                                          ; $615f: $43
	ld [hl], e                                       ; $6160: $73
	or $9b                                           ; $6161: $f6 $9b
	ld d, [hl]                                       ; $6163: $56
	ld h, [hl]                                       ; $6164: $66
	inc [hl]                                         ; $6165: $34
	ld b, l                                          ; $6166: $45
	ld [hl], a                                       ; $6167: $77
	or $9c                                           ; $6168: $f6 $9c
	ld h, l                                          ; $616a: $65
	ld [hl], l                                       ; $616b: $75
	ld h, [hl]                                       ; $616c: $66
	ld a, e                                          ; $616d: $7b
	or $9e                                           ; $616e: $f6 $9e
	ld d, h                                          ; $6170: $54
	sbc $33                                          ; $6171: $de $33
	rst SubAFromDE                                          ; $6173: $df
	ld d, l                                          ; $6174: $55
	ld a, a                                          ; $6175: $7f
	db $eb                                           ; $6176: $eb

Call_04f_6177:
	sbc e                                            ; $6177: $9b
	inc [hl]                                         ; $6178: $34
	ld b, h                                          ; $6179: $44
	ld b, h                                          ; $617a: $44

Call_04f_617b:
	inc sp                                           ; $617b: $33
	ld e, [hl]                                       ; $617c: $5e
	rlca                                             ; $617d: $07
	rst FarCall                                          ; $617e: $f7
	sbc c                                            ; $617f: $99
	ld de, $0f0f                                     ; $6180: $11 $0f $0f
	jr jr_04f_61a2                                   ; $6183: $18 $1d

	dec bc                                           ; $6185: $0b
	ld sp, hl                                        ; $6186: $f9
	sub a                                            ; $6187: $97
	ldh [rP1], a                                     ; $6188: $e0 $00

Call_04f_618a:
	or b                                             ; $618a: $b0
	ldh a, [$f0]                                     ; $618b: $f0 $f0
	db $10                                           ; $618d: $10
	or b                                             ; $618e: $b0
	ret nc                                           ; $618f: $d0

	ld sp, hl                                        ; $6190: $f9
	sub a                                            ; $6191: $97
	dec b                                            ; $6192: $05
	inc bc                                           ; $6193: $03
	rrca                                             ; $6194: $0f
	dec [hl]                                         ; $6195: $35
	dec e                                            ; $6196: $1d
	ld a, [hl-]                                      ; $6197: $3a
	inc c                                            ; $6198: $0c
	dec sp                                           ; $6199: $3b
	ld sp, hl                                        ; $619a: $f9

Call_04f_619b:
	sub a                                            ; $619b: $97
	ld h, b                                          ; $619c: $60
	add b                                            ; $619d: $80
	ldh a, [$60]                                     ; $619e: $f0 $60
	jr nz, @-$3e                                     ; $61a0: $20 $c0

jr_04f_61a2:
	ld b, c                                          ; $61a2: $41
	ldh [$f8], a                                     ; $61a3: $e0 $f8
	sbc b                                            ; $61a5: $98
	jr @+$0f                                         ; $61a6: $18 $0d

	dec de                                           ; $61a8: $1b
	add hl, bc                                       ; $61a9: $09
	rra                                              ; $61aa: $1f
	ld h, [hl]                                       ; $61ab: $66
	db $fc                                           ; $61ac: $fc
	ld sp, hl                                        ; $61ad: $f9
	sub a                                            ; $61ae: $97
	ld bc, $0300                                     ; $61af: $01 $00 $03
	add c                                            ; $61b2: $81
	inc bc                                           ; $61b3: $03
	ld bc, $050b                                     ; $61b4: $01 $0b $05
	ei                                               ; $61b7: $fb
	sub l                                            ; $61b8: $95
	ret nz                                           ; $61b9: $c0

	nop                                              ; $61ba: $00
	ret nz                                           ; $61bb: $c0

	ret nz                                           ; $61bc: $c0

	ldh [$c0], a                                     ; $61bd: $e0 $c0
	ldh [$80], a                                     ; $61bf: $e0 $80
	ret c                                            ; $61c1: $d8

	ldh a, [$fb]                                     ; $61c2: $f0 $fb
	sub l                                            ; $61c4: $95
	add hl, de                                       ; $61c5: $19
	ld [$1b3d], sp                                   ; $61c6: $08 $3d $1b
	db $dd                                           ; $61c9: $dd
	ld a, [hl]                                       ; $61ca: $7e
	ld e, [hl]                                       ; $61cb: $5e
	inc [hl]                                         ; $61cc: $34
	and l                                            ; $61cd: $a5
	ld e, [hl]                                       ; $61ce: $5e
	push af                                          ; $61cf: $f5
	sbc h                                            ; $61d0: $9c
	rrca                                             ; $61d1: $0f
	rlca                                             ; $61d2: $07
	rlca                                             ; $61d3: $07
	db $f4                                           ; $61d4: $f4
	sbc e                                            ; $61d5: $9b
	ld h, c                                          ; $61d6: $61
	ret nz                                           ; $61d7: $c0

	ldh [rSTAT], a                                   ; $61d8: $e0 $41
	rst FarCall                                          ; $61da: $f7
	ld a, a                                          ; $61db: $7f
	xor [hl]                                         ; $61dc: $ae
	sbc e                                            ; $61dd: $9b
	add b                                            ; $61de: $80
	ld bc, $8381                                     ; $61df: $01 $81 $83
	push af                                          ; $61e2: $f5
	sbc e                                            ; $61e3: $9b

Jump_04f_61e4:
	ldh a, [$e0]                                     ; $61e4: $f0 $e0
	ldh a, [rAUD4LEN]                                ; $61e6: $f0 $20
	rst FarCall                                          ; $61e8: $f7
	sbc e                                            ; $61e9: $9b
	ld b, $00                                        ; $61ea: $06 $00
	ld [bc], a                                       ; $61ec: $02
	ld b, $7b                                        ; $61ed: $06 $7b
	ei                                               ; $61ef: $fb
	ld a, [$0297]                                    ; $61f0: $fa $97 $02
	ld bc, $0709                                     ; $61f3: $01 $09 $07
	add hl, bc                                       ; $61f6: $09
	rlca                                             ; $61f7: $07
	rlca                                             ; $61f8: $07
	add hl, bc                                       ; $61f9: $09
	ld h, e                                          ; $61fa: $63
	ld d, b                                          ; $61fb: $50
	sbc c                                            ; $61fc: $99
	ret nz                                           ; $61fd: $c0

	and b                                            ; $61fe: $a0
	ret nz                                           ; $61ff: $c0

	ldh [rLCDC], a                                   ; $6200: $e0 $40
	ld [hl], b                                       ; $6202: $70
	ld l, e                                          ; $6203: $6b
	ld d, b                                          ; $6204: $50
	sub l                                            ; $6205: $95
	inc b                                            ; $6206: $04
	nop                                              ; $6207: $00
	rrca                                             ; $6208: $0f
	ld b, $16                                        ; $6209: $06 $16
	rst AddAOntoHL                                          ; $620b: $ef
	ld e, a                                          ; $620c: $5f
	cp $5d                                           ; $620d: $fe $5d
	rst $38                                          ; $620f: $ff
	push af                                          ; $6210: $f5
	sbc [hl]                                         ; $6211: $9e
	add c                                            ; $6212: $81
	ld [hl], a                                       ; $6213: $77
	sbc e                                            ; $6214: $9b
	ld hl, sp-$67                                    ; $6215: $f8 $99
	add b                                            ; $6217: $80
	nop                                              ; $6218: $00
	call z, $6498                                    ; $6219: $cc $98 $64
	adc h                                            ; $621c: $8c
	push af                                          ; $621d: $f5
	sbc l                                            ; $621e: $9d
	rlca                                             ; $621f: $07
	dec c                                            ; $6220: $0d
	ld h, a                                          ; $6221: $67
	jr nc, @+$81                                     ; $6222: $30 $7f

	db $e4                                           ; $6224: $e4
	adc e                                            ; $6225: $8b
	ld b, b                                          ; $6226: $40
	ret nz                                           ; $6227: $c0

	ld hl, sp+$50                                    ; $6228: $f8 $50
	ret c                                            ; $622a: $d8

	or b                                             ; $622b: $b0
	or b                                             ; $622c: $b0
	ldh [rAUD3ENA], a                                ; $622d: $e0 $1a
	add hl, bc                                       ; $622f: $09
	add hl, de                                       ; $6230: $19
	dec bc                                           ; $6231: $0b
	ld e, $09                                        ; $6232: $1e $09
	dec e                                            ; $6234: $1d
	dec bc                                           ; $6235: $0b
	jr jr_04f_6247                                   ; $6236: $18 $0f

	rlca                                             ; $6238: $07
	ld [$95fd], sp                                   ; $6239: $08 $fd $95
	or b                                             ; $623c: $b0
	db $10                                           ; $623d: $10
	ld [hl], b                                       ; $623e: $70
	sub b                                            ; $623f: $90
	or b                                             ; $6240: $b0
	ld [hl], b                                       ; $6241: $70
	ld d, b                                          ; $6242: $50
	or b                                             ; $6243: $b0
	ld [hl], b                                       ; $6244: $70
	ldh a, [$6f]                                     ; $6245: $f0 $6f

jr_04f_6247:
	dec d                                            ; $6247: $15
	sub e                                            ; $6248: $93
	dec d                                            ; $6249: $15
	dec hl                                           ; $624a: $2b
	inc e                                            ; $624b: $1c
	ccf                                              ; $624c: $3f
	rrca                                             ; $624d: $0f
	ld [hl-], a                                      ; $624e: $32
	inc de                                           ; $624f: $13
	ld h, $0f                                        ; $6250: $26 $0f
	ld sp, $2110                                     ; $6252: $31 $10 $21
	db $fd                                           ; $6255: $fd
	sub e                                            ; $6256: $93
	ld d, c                                          ; $6257: $51
	and b                                            ; $6258: $a0
	add b                                            ; $6259: $80
	ldh [rLCDC], a                                   ; $625a: $e0 $40
	add b                                            ; $625c: $80
	ldh a, [rAUD4LEN]                                ; $625d: $f0 $20
	add b                                            ; $625f: $80
	or b                                             ; $6260: $b0
	add b                                            ; $6261: $80
	add b                                            ; $6262: $80
	db $fd                                           ; $6263: $fd
	sub e                                            ; $6264: $93
	call z, $d4b4                                    ; $6265: $cc $b4 $d4
	xor h                                            ; $6268: $ac
	ld [hl], b                                       ; $6269: $70
	adc $09                                          ; $626a: $ce $09
	inc de                                           ; $626c: $13
	ld d, e                                          ; $626d: $53
	ld hl, $40a1                                     ; $626e: $21 $a1 $40
	ld [hl], e                                       ; $6271: $73
	sbc h                                            ; $6272: $9c
	sub h                                            ; $6273: $94
	inc bc                                           ; $6274: $03
	nop                                              ; $6275: $00
	rlca                                             ; $6276: $07
	rlca                                             ; $6277: $07
	ld [$0102], sp                                   ; $6278: $08 $02 $01
	jp nz, $2581                                     ; $627b: $c2 $81 $25

	jp nz, $93fd                                     ; $627e: $c2 $fd $93

	cp b                                             ; $6281: $b8

jr_04f_6282:
	ld h, b                                          ; $6282: $60
	ret c                                            ; $6283: $d8

	ldh a, [$d6]                                     ; $6284: $f0 $d6
	cp b                                             ; $6286: $b8
	ldh [$c0], a                                     ; $6287: $e0 $c0
	or b                                             ; $6289: $b0
	ld h, b                                          ; $628a: $60

jr_04f_628b:
	inc b                                            ; $628b: $04
	jr c, jr_04f_628b                                ; $628c: $38 $fd

	sub l                                            ; $628e: $95
	bit 7, a                                         ; $628f: $cb $7f
	ld a, c                                          ; $6291: $79
	jr jr_04f_62a6                                   ; $6292: $18 $12

	inc a                                            ; $6294: $3c
	or a                                             ; $6295: $b7
	ld l, d                                          ; $6296: $6a
	ld e, e                                          ; $6297: $5b
	adc c                                            ; $6298: $89
	ld [hl], e                                       ; $6299: $73
	sub c                                            ; $629a: $91
	ld h, d                                          ; $629b: $62
	add $9e                                          ; $629c: $c6 $9e
	rst JumpTable                                          ; $629e: $c7
	ld l, a                                          ; $629f: $6f
	or c                                             ; $62a0: $b1
	ld a, a                                          ; $62a1: $7f
	jr jr_04f_6282                                   ; $62a2: $18 $de

	ld b, b                                          ; $62a4: $40
	sbc e                                            ; $62a5: $9b

jr_04f_62a6:
	pop bc                                           ; $62a6: $c1
	ld b, b                                          ; $62a7: $40
	jp Jump_04f_7bc1                                 ; $62a8: $c3 $c1 $7b


	inc [hl]                                         ; $62ab: $34
	db $fc                                           ; $62ac: $fc
	sub h                                            ; $62ad: $94
	add d                                            ; $62ae: $82
	inc b                                            ; $62af: $04
	nop                                              ; $62b0: $00
	jr nc, jr_04f_62d3                               ; $62b1: $30 $20

	ret nz                                           ; $62b3: $c0

	add b                                            ; $62b4: $80
	ld bc, $0201                                     ; $62b5: $01 $01 $02
	ld [bc], a                                       ; $62b8: $02
	ld l, d                                          ; $62b9: $6a
	rst FarCall                                          ; $62ba: $f7

jr_04f_62bb:
	sbc e                                            ; $62bb: $9b
	ld l, a                                          ; $62bc: $6f
	ld c, a                                          ; $62bd: $4f
	rrca                                             ; $62be: $0f
	ret nz                                           ; $62bf: $c0

	ld a, e                                          ; $62c0: $7b
	ccf                                              ; $62c1: $3f
	ld a, [$0a96]                                    ; $62c2: $fa $96 $0a
	inc d                                            ; $62c5: $14
	adc d                                            ; $62c6: $8a
	sub h                                            ; $62c7: $94
	sbc d                                            ; $62c8: $9a
	dec d                                            ; $62c9: $15
	inc d                                            ; $62ca: $14
	daa                                              ; $62cb: $27
	jr nz, @+$6c                                     ; $62cc: $20 $6a

	add $93                                          ; $62ce: $c6 $93
	dec b                                            ; $62d0: $05
	dec bc                                           ; $62d1: $0b
	ld c, d                                          ; $62d2: $4a

jr_04f_62d3:
	sbc a                                            ; $62d3: $9f
	or a                                             ; $62d4: $b7
	add hl, bc                                       ; $62d5: $09
	dec d                                            ; $62d6: $15
	ld [$091f], sp                                   ; $62d7: $08 $1f $09
	dec b                                            ; $62da: $05
	ld a, [bc]                                       ; $62db: $0a
	ld [hl], e                                       ; $62dc: $73
	add b                                            ; $62dd: $80
	sub l                                            ; $62de: $95
	ld [hl], b                                       ; $62df: $70
	ld a, b                                          ; $62e0: $78
	ldh a, [$f0]                                     ; $62e1: $f0 $f0
	ld h, b                                          ; $62e3: $60
	pop bc                                           ; $62e4: $c1
	ret nz                                           ; $62e5: $c0

	ld b, b                                          ; $62e6: $40
	pop hl                                           ; $62e7: $e1
	ld d, c                                          ; $62e8: $51
	ld [hl], e                                       ; $62e9: $73
	add b                                            ; $62ea: $80
	sub d                                            ; $62eb: $92
	ld e, b                                          ; $62ec: $58
	rst $38                                          ; $62ed: $ff
	ld e, l                                          ; $62ee: $5d
	cp a                                             ; $62ef: $bf
	ld h, b                                          ; $62f0: $60
	sbc l                                            ; $62f1: $9d
	halt                                             ; $62f2: $76
	sbc c                                            ; $62f3: $99
	sub a                                            ; $62f4: $97
	inc sp                                           ; $62f5: $33
	sub l                                            ; $62f6: $95
	ld [hl+], a                                      ; $62f7: $22
	ld [hl+], a                                      ; $62f8: $22
	ld [hl], d                                       ; $62f9: $72
	call z, $647f                                    ; $62fa: $cc $7f $64
	rst SubAFromDE                                          ; $62fd: $df
	add b                                            ; $62fe: $80
	ld a, a                                          ; $62ff: $7f
	ld a, [$147e]                                    ; $6300: $fa $7e $14
	ld l, [hl]                                       ; $6303: $6e
	push bc                                          ; $6304: $c5
	rst SubAFromDE                                          ; $6305: $df
	ld h, b                                          ; $6306: $60
	ld a, a                                          ; $6307: $7f
	ld hl, $1498                                     ; $6308: $21 $98 $14
	ret z                                            ; $630b: $c8

	ret c                                            ; $630c: $d8

	cp h                                             ; $630d: $bc
	cp [hl]                                          ; $630e: $be
	call nz, Call_04f_7384                           ; $630f: $c4 $84 $73
	adc a                                            ; $6312: $8f
	sub h                                            ; $6313: $94
	dec de                                           ; $6314: $1b
	dec c                                            ; $6315: $0d
	ld [$0401], sp                                   ; $6316: $08 $01 $04
	ld bc, $040d                                     ; $6319: $01 $0d $04
	dec c                                            ; $631c: $0d
	add hl, de                                       ; $631d: $19
	dec de                                           ; $631e: $1b
	db $fc                                           ; $631f: $fc
	sub e                                            ; $6320: $93
	ld d, b                                          ; $6321: $50
	ldh a, [$d0]                                     ; $6322: $f0 $d0
	ldh [$30], a                                     ; $6324: $e0 $30
	ldh [$f0], a                                     ; $6326: $e0 $f0
	and b                                            ; $6328: $a0
	jr c, jr_04f_62bb                                ; $6329: $38 $90

	ld [$f910], sp                                   ; $632b: $08 $10 $f9
	sbc $ff                                          ; $632e: $de $ff
	ld a, a                                          ; $6330: $7f
	db $fc                                           ; $6331: $fc
	ld [hl], a                                       ; $6332: $77
	ld a, [$f977]                                    ; $6333: $fa $77 $f9
	ld d, e                                          ; $6336: $53
	ldh a, [$9e]                                     ; $6337: $f0 $9e
	ld bc, $f04b                                     ; $6339: $01 $4b $f0
	ld b, a                                          ; $633c: $47
	ldh [$03], a                                     ; $633d: $e0 $03
	ldh a, [$03]                                     ; $633f: $f0 $03
	ldh a, [$03]                                     ; $6341: $f0 $03
	ldh a, [$03]                                     ; $6343: $f0 $03
	ldh a, [$03]                                     ; $6345: $f0 $03
	ldh a, [$03]                                     ; $6347: $f0 $03
	ldh a, [$03]                                     ; $6349: $f0 $03
	ldh a, [$63]                                     ; $634b: $f0 $63
	ldh a, [$9e]                                     ; $634d: $f0 $9e
	inc b                                            ; $634f: $04
	ccf                                              ; $6350: $3f
	ldh [rWX], a                                     ; $6351: $e0 $4b
	cp $9c                                           ; $6353: $fe $9c
	inc bc                                           ; $6355: $03
	db $fd                                           ; $6356: $fd
	ld bc, $fc53                                     ; $6357: $01 $53 $fc
	ccf                                              ; $635a: $3f
	sbc $5f                                          ; $635b: $de $5f
	cp $9b                                           ; $635d: $fe $9b
	ld bc, $0afe                                     ; $635f: $01 $fe $0a
	push af                                          ; $6362: $f5
	ld l, a                                          ; $6363: $6f
	or $95                                           ; $6364: $f6 $95
	ld [bc], a                                       ; $6366: $02
	db $fd                                           ; $6367: $fd
	dec d                                            ; $6368: $15
	ld [$55aa], a                                    ; $6369: $ea $aa $55
	ld d, l                                          ; $636c: $55
	xor d                                            ; $636d: $aa
	xor d                                            ; $636e: $aa
	ld d, l                                          ; $636f: $55
	ld [hl], a                                       ; $6370: $77
	ldh a, [c]                                       ; $6371: $f2
	ld [hl], a                                       ; $6372: $77
	ld hl, sp+$6f                                    ; $6373: $f8 $6f
	db $fc                                           ; $6375: $fc
	sbc c                                            ; $6376: $99
	xor e                                            ; $6377: $ab
	ld d, h                                          ; $6378: $54
	nop                                              ; $6379: $00
	rst $38                                          ; $637a: $ff
	ld a, [hl+]                                      ; $637b: $2a
	push de                                          ; $637c: $d5
	ld h, a                                          ; $637d: $67
	ldh a, [$9b]                                     ; $637e: $f0 $9b
	ld d, a                                          ; $6380: $57
	xor b                                            ; $6381: $a8
	rst $38                                          ; $6382: $ff
	nop                                              ; $6383: $00
	ld d, a                                          ; $6384: $57
	db $e4                                           ; $6385: $e4
	ld [hl], a                                       ; $6386: $77
	push bc                                          ; $6387: $c5
	ld e, a                                          ; $6388: $5f
	ldh a, [$6f]                                     ; $6389: $f0 $6f
	xor e                                            ; $638b: $ab
	inc bc                                           ; $638c: $03
	ldh a, [rAUD4GO]                                 ; $638d: $f0 $23
	ldh a, [$9e]                                     ; $638f: $f0 $9e
	cp $73                                           ; $6391: $fe $73
	ld d, e                                          ; $6393: $53
	sbc l                                            ; $6394: $9d
	ld b, b                                          ; $6395: $40
	cp a                                             ; $6396: $bf
	ld h, a                                          ; $6397: $67
	ldh a, [$7f]                                     ; $6398: $f0 $7f
	db $fc                                           ; $639a: $fc
	ld [hl], e                                       ; $639b: $73
	ld bc, $ff9c                                     ; $639c: $01 $9c $ff
	add b                                            ; $639f: $80
	ld a, a                                          ; $63a0: $7f
	ld d, a                                          ; $63a1: $57
	call c, $cb77                                    ; $63a2: $dc $77 $cb
	ld d, a                                          ; $63a5: $57
	call c, $3467                                    ; $63a6: $dc $67 $34
	ld a, a                                          ; $63a9: $7f
	db $ec                                           ; $63aa: $ec
	sbc e                                            ; $63ab: $9b
	xor b                                            ; $63ac: $a8
	ld d, a                                          ; $63ad: $57
	ld d, h                                          ; $63ae: $54
	xor e                                            ; $63af: $ab
	ld e, a                                          ; $63b0: $5f
	ldh a, [$6f]                                     ; $63b1: $f0 $6f
	cp $7f                                           ; $63b3: $fe $7f
	call nz, $069b                                   ; $63b5: $c4 $9b $06
	db $fd                                           ; $63b8: $fd
	inc b                                            ; $63b9: $04
	rst $38                                          ; $63ba: $ff
	ld d, a                                          ; $63bb: $57
	db $fc                                           ; $63bc: $fc
	ld d, $f0                                        ; $63bd: $16 $f0
	ld h, $c0                                        ; $63bf: $26 $c0
	ld a, [hl]                                       ; $63c1: $7e
	ret c                                            ; $63c2: $d8

	ld a, [hl]                                       ; $63c3: $7e
	ldh [$99], a                                     ; $63c4: $e0 $99
	dec b                                            ; $63c6: $05
	ld a, [$f50a]                                    ; $63c7: $fa $0a $f5
	dec d                                            ; $63ca: $15
	ld [$fc77], a                                    ; $63cb: $ea $77 $fc
	ld e, a                                          ; $63ce: $5f
	add h                                            ; $63cf: $84
	halt                                             ; $63d0: $76
	db $fc                                           ; $63d1: $fc
	ld l, a                                          ; $63d2: $6f
	ld hl, sp-$67                                    ; $63d3: $f8 $99
	xor a                                            ; $63d5: $af
	ld d, b                                          ; $63d6: $50
	ld e, a                                          ; $63d7: $5f
	and b                                            ; $63d8: $a0
	cp a                                             ; $63d9: $bf
	ld b, b                                          ; $63da: $40
	ld [hl], a                                       ; $63db: $77
	db $d3                                           ; $63dc: $d3
	ld a, a                                          ; $63dd: $7f
	ld hl, sp+$5f                                    ; $63de: $f8 $5f
	or e                                             ; $63e0: $b3
	sbc h                                            ; $63e1: $9c
	db $fd                                           ; $63e2: $fd
	nop                                              ; $63e3: $00
	ld a, [$f66b]                                    ; $63e4: $fa $6b $f6
	sbc b                                            ; $63e7: $98
	cp $00                                           ; $63e8: $fe $00
	push af                                          ; $63ea: $f5
	nop                                              ; $63eb: $00
	xor d                                            ; $63ec: $aa
	nop                                              ; $63ed: $00
	ld d, l                                          ; $63ee: $55
	ld a, e                                          ; $63ef: $7b
	db $fc                                           ; $63f0: $fc
	ld l, a                                          ; $63f1: $6f
	ldh a, [$6f]                                     ; $63f2: $f0 $6f
	db $f4                                           ; $63f4: $f4
	ld h, a                                          ; $63f5: $67
	ldh a, [$67]                                     ; $63f6: $f0 $67
	db $f4                                           ; $63f8: $f4
	inc bc                                           ; $63f9: $03
	ldh a, [$2b]                                     ; $63fa: $f0 $2b
	ldh a, [$9e]                                     ; $63fc: $f0 $9e
	ld d, a                                          ; $63fe: $57
	ld c, e                                          ; $63ff: $4b
	ldh a, [$7f]                                     ; $6400: $f0 $7f
	cp $9e                                           ; $6402: $fe $9e
	xor e                                            ; $6404: $ab
	ld c, e                                          ; $6405: $4b
	ldh a, [$7f]                                     ; $6406: $f0 $7f
	cp $9c                                           ; $6408: $fe $9c
	ld a, a                                          ; $640a: $7f
	nop                                              ; $640b: $00
	xor a                                            ; $640c: $af
	ld [hl], e                                       ; $640d: $73
	ldh a, [$99]                                     ; $640e: $f0 $99
	push de                                          ; $6410: $d5
	ld a, [hl+]                                      ; $6411: $2a
	ld a, [$fd05]                                    ; $6412: $fa $05 $fd
	ld [bc], a                                       ; $6415: $02
	ld e, a                                          ; $6416: $5f
	ld e, h                                          ; $6417: $5c
	ld h, a                                          ; $6418: $67
	inc [hl]                                         ; $6419: $34
	ld a, a                                          ; $641a: $7f
	add sp, -$67                                     ; $641b: $e8 $99
	ld [$fd15], a                                    ; $641d: $ea $15 $fd
	ld [bc], a                                       ; $6420: $02
	cp $01                                           ; $6421: $fe $01
	ld h, [hl]                                       ; $6423: $66
	cp b                                             ; $6424: $b8
	ld h, a                                          ; $6425: $67
	add sp, $5e                                      ; $6426: $e8 $5e
	call nz, $8499                                   ; $6428: $c4 $99 $84
	ld a, a                                          ; $642b: $7f
	ld b, [hl]                                       ; $642c: $46
	cp l                                             ; $642d: $bd
	add h                                            ; $642e: $84
	ld a, a                                          ; $642f: $7f
	ld [bc], a                                       ; $6430: $02
	ret nz                                           ; $6431: $c0

	ld c, d                                          ; $6432: $4a
	ret nz                                           ; $6433: $c0

	ld a, [hl]                                       ; $6434: $7e
	ret nc                                           ; $6435: $d0

	ld e, l                                          ; $6436: $5d
	ret nz                                           ; $6437: $c0

	ld l, l                                          ; $6438: $6d
	cp h                                             ; $6439: $bc
	halt                                             ; $643a: $76
	call nc, $fc5f                                   ; $643b: $d4 $5f $fc
	ld b, a                                          ; $643e: $47
	cp a                                             ; $643f: $bf
	ld a, [hl]                                       ; $6440: $7e
	ret c                                            ; $6441: $d8

	sbc h                                            ; $6442: $9c
	ld [$d500], a                                    ; $6443: $ea $00 $d5
	ld [hl], a                                       ; $6446: $77
	ld e, b                                          ; $6447: $58
	ld l, e                                          ; $6448: $6b
	db $fc                                           ; $6449: $fc
	ld d, a                                          ; $644a: $57
	inc d                                            ; $644b: $14
	ld l, a                                          ; $644c: $6f
	db $fc                                           ; $644d: $fc
	sbc d                                            ; $644e: $9a
	xor b                                            ; $644f: $a8
	nop                                              ; $6450: $00
	ld b, b                                          ; $6451: $40
	nop                                              ; $6452: $00
	add b                                            ; $6453: $80
	cp $6f                                           ; $6454: $fe $6f
	db $fc                                           ; $6456: $fc
	ld a, a                                          ; $6457: $7f
	db $f4                                           ; $6458: $f4
	ldh [$c5], a                                     ; $6459: $e0 $c5
	sbc h                                            ; $645b: $9c
	jr jr_04f_646e                                   ; $645c: $18 $10

	dec d                                            ; $645e: $15
	ldh a, [c]                                       ; $645f: $f2
	ld [hl], a                                       ; $6460: $77
	sbc h                                            ; $6461: $9c
	ld a, a                                          ; $6462: $7f
	db $ec                                           ; $6463: $ec
	sbc h                                            ; $6464: $9c
	ld a, [bc]                                       ; $6465: $0a
	nop                                              ; $6466: $00
	dec b                                            ; $6467: $05
	ld l, e                                          ; $6468: $6b
	db $fc                                           ; $6469: $fc
	ld b, a                                          ; $646a: $47
	add b                                            ; $646b: $80
	ld a, [hl]                                       ; $646c: $7e
	rst $38                                          ; $646d: $ff

jr_04f_646e:
	sbc h                                            ; $646e: $9c
	cp a                                             ; $646f: $bf
	nop                                              ; $6470: $00
	ld e, a                                          ; $6471: $5f
	ld a, d                                          ; $6472: $7a
	or h                                             ; $6473: $b4
	ld h, a                                          ; $6474: $67
	db $fc                                           ; $6475: $fc
	ld b, a                                          ; $6476: $47
	ld b, b                                          ; $6477: $40
	ld l, [hl]                                       ; $6478: $6e
	or h                                             ; $6479: $b4
	ld e, a                                          ; $647a: $5f
	db $fc                                           ; $647b: $fc

Call_04f_647c:
	ld a, [hl]                                       ; $647c: $7e
	call z, $a499                                    ; $647d: $cc $99 $a4
	ld e, a                                          ; $6480: $5f
	ld d, [hl]                                       ; $6481: $56
	xor l                                            ; $6482: $ad
	xor h                                            ; $6483: $ac
	ld d, a                                          ; $6484: $57
	ld l, a                                          ; $6485: $6f
	db $fc                                           ; $6486: $fc
	sbc [hl]                                         ; $6487: $9e
	xor [hl]                                         ; $6488: $ae
	ld c, c                                          ; $6489: $49
	ld h, b                                          ; $648a: $60
	ld [bc], a                                       ; $648b: $02
	ret nz                                           ; $648c: $c0

	ld l, b                                          ; $648d: $68
	ld [hl], h                                       ; $648e: $74
	ld a, [hl]                                       ; $648f: $7e
	cp h                                             ; $6490: $bc
	ld [hl], l                                       ; $6491: $75
	add h                                            ; $6492: $84
	ld [hl], l                                       ; $6493: $75
	ld a, h                                          ; $6494: $7c
	halt                                             ; $6495: $76
	call z, $bc7e                                    ; $6496: $cc $7e $bc
	ld h, l                                          ; $6499: $65
	adc b                                            ; $649a: $88
	sbc l                                            ; $649b: $9d
	xor c                                            ; $649c: $a9
	ld d, a                                          ; $649d: $57
	ld e, a                                          ; $649e: $5f
	push bc                                          ; $649f: $c5
	ld a, l                                          ; $64a0: $7d
	add b                                            ; $64a1: $80
	ld [hl], e                                       ; $64a2: $73
	add h                                            ; $64a3: $84
	ld a, d                                          ; $64a4: $7a
	ret nz                                           ; $64a5: $c0

	sub e                                            ; $64a6: $93
	push hl                                          ; $64a7: $e5
	db $10                                           ; $64a8: $10
	jp nc, Jump_04f_6728                             ; $64a9: $d2 $28 $67

	reti                                             ; $64ac: $d9


	rst JumpTable                                          ; $64ad: $c7
	sbc d                                            ; $64ae: $9a
	dec b                                            ; $64af: $05
	ei                                               ; $64b0: $fb
	ld [hl], e                                       ; $64b1: $73
	rst $38                                          ; $64b2: $ff
	ld [hl], a                                       ; $64b3: $77
	ld c, h                                          ; $64b4: $4c
	sub d                                            ; $64b5: $92
	or l                                             ; $64b6: $b5
	ld b, b                                          ; $64b7: $40
	ld e, a                                          ; $64b8: $5f
	and b                                            ; $64b9: $a0
	add [hl]                                         ; $64ba: $86
	ld [hl], e                                       ; $64bb: $73
	inc e                                            ; $64bc: $1c
	ld h, [hl]                                       ; $64bd: $66
	xor d                                            ; $64be: $aa
	call nz, $e7de                                   ; $64bf: $c4 $de $e7
	ld b, b                                          ; $64c2: $40
	ld a, d                                          ; $64c3: $7a
	ret nz                                           ; $64c4: $c0

	ld a, a                                          ; $64c5: $7f
	db $ec                                           ; $64c6: $ec
	sub l                                            ; $64c7: $95
	ld a, [hl+]                                      ; $64c8: $2a
	ret nz                                           ; $64c9: $c0

	sub a                                            ; $64ca: $97
	ld h, b                                          ; $64cb: $60
	ld l, c                                          ; $64cc: $69
	add e                                            ; $64cd: $83
	ld [hl-], a                                      ; $64ce: $32
	add $07                                          ; $64cf: $c6 $07
	rst AddAOntoHL                                          ; $64d1: $ef
	db $fd                                           ; $64d2: $fd
	ld a, a                                          ; $64d3: $7f
	db $ec                                           ; $64d4: $ec
	ld l, a                                          ; $64d5: $6f
	inc h                                            ; $64d6: $24
	sbc e                                            ; $64d7: $9b
	rst SubAFromHL                                          ; $64d8: $d7
	nop                                              ; $64d9: $00
	ld a, [bc]                                       ; $64da: $0a
	and c                                            ; $64db: $a1
	ei                                               ; $64dc: $fb
	ld [hl], a                                       ; $64dd: $77

jr_04f_64de:
	ldh a, [$99]                                     ; $64de: $f0 $99
	ld [$b540], a                                    ; $64e0: $ea $40 $b5
	add b                                            ; $64e3: $80
	ld a, [hl+]                                      ; $64e4: $2a
	ret nz                                           ; $64e5: $c0

	cp $82                                           ; $64e6: $fe $82
	inc b                                            ; $64e8: $04
	ld a, [bc]                                       ; $64e9: $0a
	nop                                              ; $64ea: $00
	and b                                            ; $64eb: $a0
	inc b                                            ; $64ec: $04
	ld e, [hl]                                       ; $64ed: $5e
	inc b                                            ; $64ee: $04
	xor h                                            ; $64ef: $ac
	rlca                                             ; $64f0: $07
	ld d, b                                          ; $64f1: $50
	rlca                                             ; $64f2: $07
	xor d                                            ; $64f3: $aa
	inc bc                                           ; $64f4: $03
	inc c                                            ; $64f5: $0c
	ld [$0406], sp                                   ; $64f6: $08 $06 $04
	jr nz, jr_04f_6544                               ; $64f9: $20 $49

	ldh a, [$66]                                     ; $64fb: $f0 $66
	jp hl                                            ; $64fd: $e9


	halt                                             ; $64fe: $76
	di                                               ; $64ff: $f3
	ld l, [hl]                                       ; $6500: $6e
	rlca                                             ; $6501: $07
	db $fc                                           ; $6502: $fc
	inc c                                            ; $6503: $0c
	ld sp, hl                                        ; $6504: $f9
	db $fd                                           ; $6505: $fd
	ld a, [hl]                                       ; $6506: $7e
	ret nc                                           ; $6507: $d0

	halt                                             ; $6508: $76
	ld d, h                                          ; $6509: $54
	sbc c                                            ; $650a: $99
	ld l, d                                          ; $650b: $6a
	add b                                            ; $650c: $80
	ld d, l                                          ; $650d: $55
	jr nz, jr_04f_64de                               ; $650e: $20 $ce

	sub b                                            ; $6510: $90
	ld [hl], a                                       ; $6511: $77
	db $f4                                           ; $6512: $f4
	ld [hl], a                                       ; $6513: $77
	or h                                             ; $6514: $b4
	sbc [hl]                                         ; $6515: $9e
	ld [hl], l                                       ; $6516: $75
	ld a, b                                          ; $6517: $78
	ld l, l                                          ; $6518: $6d
	sbc e                                            ; $6519: $9b
	inc [hl]                                         ; $651a: $34
	and c                                            ; $651b: $a1
	ld l, $f1                                        ; $651c: $2e $f1
	ld h, [hl]                                       ; $651e: $66
	ret z                                            ; $651f: $c8

	ld a, a                                          ; $6520: $7f
	and h                                            ; $6521: $a4
	sbc b                                            ; $6522: $98
	rst AddAOntoHL                                          ; $6523: $ef
	add b                                            ; $6524: $80
	ld a, a                                          ; $6525: $7f
	ld b, b                                          ; $6526: $40
	sbc e                                            ; $6527: $9b
	db $e4                                           ; $6528: $e4
	ld e, a                                          ; $6529: $5f
	ld a, d                                          ; $652a: $7a
	ret nz                                           ; $652b: $c0

	ld e, l                                          ; $652c: $5d
	cp e                                             ; $652d: $bb
	sbc l                                            ; $652e: $9d
	db $eb                                           ; $652f: $eb
	inc d                                            ; $6530: $14
	ld l, b                                          ; $6531: $68
	ldh [$9a], a                                     ; $6532: $e0 $9a
	ld bc, $02fd                                     ; $6534: $01 $fd $02
	ld [$6615], a                                    ; $6537: $ea $15 $66
	call z, $d055                                    ; $653a: $cc $55 $d0
	halt                                             ; $653d: $76
	call z, $fc7f                                    ; $653e: $cc $7f $fc
	sub l                                            ; $6541: $95
	and [hl]                                         ; $6542: $a6
	ld e, l                                          ; $6543: $5d

jr_04f_6544:
	ld b, [hl]                                       ; $6544: $46
	cp l                                             ; $6545: $bd
	add [hl]                                         ; $6546: $86
	ld a, l                                          ; $6547: $7d
	ld b, $fd                                        ; $6548: $06 $fd
	add [hl]                                         ; $654a: $86
	ld a, l                                          ; $654b: $7d
	ld e, $c6                                        ; $654c: $1e $c6
	ld [hl], a                                       ; $654e: $77
	sbc b                                            ; $654f: $98
	ld a, a                                          ; $6550: $7f
	ld sp, hl                                        ; $6551: $f9
	ld e, [hl]                                       ; $6552: $5e
	call nz, $f06f                                   ; $6553: $c4 $6f $f0
	ld a, [hl]                                       ; $6556: $7e
	call z, Call_04f_447c                            ; $6557: $cc $7c $44
	ld a, h                                          ; $655a: $7c
	ld b, b                                          ; $655b: $40
	ld l, a                                          ; $655c: $6f
	ldh [$9e], a                                     ; $655d: $e0 $9e
	ld d, b                                          ; $655f: $50
	ld [hl], a                                       ; $6560: $77
	ld [hl], h                                       ; $6561: $74
	rst SubAFromDE                                          ; $6562: $df
	xor d                                            ; $6563: $aa
	add b                                            ; $6564: $80
	ld d, [hl]                                       ; $6565: $56
	ld d, a                                          ; $6566: $57
	xor e                                            ; $6567: $ab
	xor e                                            ; $6568: $ab
	ld [hl], a                                       ; $6569: $77
	sbc e                                            ; $656a: $9b
	ld h, a                                          ; $656b: $67
	ld d, a                                          ; $656c: $57
	ld b, e                                          ; $656d: $43
	ld a, c                                          ; $656e: $79
	ld [hl], e                                       ; $656f: $73
	ld [hl], l                                       ; $6570: $75
	ei                                               ; $6571: $fb
	dec d                                            ; $6572: $15
	add sp, $59                                      ; $6573: $e8 $59
	rst SubAFromBC                                          ; $6575: $e7
	nop                                              ; $6576: $00
	rst $38                                          ; $6577: $ff
	inc e                                            ; $6578: $1c
	rst $38                                          ; $6579: $ff
	ld e, h                                          ; $657a: $5c
	rst GetHLinHL                                          ; $657b: $cf
	jr nc, @-$2f                                     ; $657c: $30 $cf

	inc [hl]                                         ; $657e: $34
	ei                                               ; $657f: $fb
	ld e, d                                          ; $6580: $5a
	db $fd                                           ; $6581: $fd
	ccf                                              ; $6582: $3f
	rst SubAFromBC                                          ; $6583: $e7
	sbc h                                            ; $6584: $9c
	cpl                                              ; $6585: $2f
	rst $38                                          ; $6586: $ff
	ccf                                              ; $6587: $3f
	ld a, e                                          ; $6588: $7b
	cp $9c                                           ; $6589: $fe $9c
	scf                                              ; $658b: $37
	di                                               ; $658c: $f3
	ld a, a                                          ; $658d: $7f
	sbc $ff                                          ; $658e: $de $ff
	add b                                            ; $6590: $80
	cp a                                             ; $6591: $bf
	rst $38                                          ; $6592: $ff
	ret                                              ; $6593: $c9


	rst $38                                          ; $6594: $ff
	cp b                                             ; $6595: $b8
	rst SubAFromDE                                          ; $6596: $df
	ret c                                            ; $6597: $d8

	rst $38                                          ; $6598: $ff
	ret z                                            ; $6599: $c8

	rst FarCall                                          ; $659a: $f7
	ret nz                                           ; $659b: $c0

	rst FarCall                                          ; $659c: $f7
	sbc d                                            ; $659d: $9a
	rst $38                                          ; $659e: $ff
	db $d3                                           ; $659f: $d3
	rst $38                                          ; $65a0: $ff
	rst FarCall                                          ; $65a1: $f7
	rst $38                                          ; $65a2: $ff
	xor a                                            ; $65a3: $af
	rst SubAFromHL                                          ; $65a4: $d7
	ld h, a                                          ; $65a5: $67
	sub e                                            ; $65a6: $93
	ei                                               ; $65a7: $fb
	rst FarCall                                          ; $65a8: $f7
	ei                                               ; $65a9: $fb
	rst FarCall                                          ; $65aa: $f7
	ld sp, hl                                        ; $65ab: $f9
	push af                                          ; $65ac: $f5
	ld sp, hl                                        ; $65ad: $f9
	rst FarCall                                          ; $65ae: $f7
	db $fd                                           ; $65af: $fd
	add b                                            ; $65b0: $80
	rst SubAFromDE                                          ; $65b1: $df
	ld sp, hl                                        ; $65b2: $f9
	rst $38                                          ; $65b3: $ff
	push hl                                          ; $65b4: $e5
	sub e                                            ; $65b5: $93
	rst SubAFromDE                                          ; $65b6: $df
	add c                                            ; $65b7: $81
	ld a, [$7575]                                    ; $65b8: $fa $75 $75
	ld sp, hl                                        ; $65bb: $f9
	db $ec                                           ; $65bc: $ec
	ld [hl], e                                       ; $65bd: $73
	rst FarCall                                          ; $65be: $f7
	cp $bb                                           ; $65bf: $fe $bb
	rst SubAFromDE                                          ; $65c1: $df
	sbc e                                            ; $65c2: $9b
	rst SubAFromDE                                          ; $65c3: $df
	push af                                          ; $65c4: $f5
	ldh a, [$7f]                                     ; $65c5: $f0 $7f
	or b                                             ; $65c7: $b0
	and e                                            ; $65c8: $a3
	inc h                                            ; $65c9: $24
	db $fd                                           ; $65ca: $fd
	and $fc                                          ; $65cb: $e6 $fc
	di                                               ; $65cd: $f3
	pop af                                           ; $65ce: $f1
	rst GetHLinHL                                          ; $65cf: $cf
	add b                                            ; $65d0: $80
	db $e3                                           ; $65d1: $e3
	rst $38                                          ; $65d2: $ff
	di                                               ; $65d3: $f3
	rst $38                                          ; $65d4: $ff
	ld d, l                                          ; $65d5: $55
	add c                                            ; $65d6: $81
	cp e                                             ; $65d7: $bb
	ld b, b                                          ; $65d8: $40
	ld e, h                                          ; $65d9: $5c
	ld a, [hl+]                                      ; $65da: $2a
	rst FarCall                                          ; $65db: $f7
	rst SubAFromHL                                          ; $65dc: $d7
	rst JumpTable                                          ; $65dd: $c7
	rst FarCall                                          ; $65de: $f7
	db $eb                                           ; $65df: $eb
	rst $38                                          ; $65e0: $ff
	rst SubAFromBC                                          ; $65e1: $e7
	rst $38                                          ; $65e2: $ff
	db $e3                                           ; $65e3: $e3
	rst $38                                          ; $65e4: $ff
	inc bc                                           ; $65e5: $03
	ld sp, hl                                        ; $65e6: $f9
	inc c                                            ; $65e7: $0c
	pop af                                           ; $65e8: $f1
	adc e                                            ; $65e9: $8b
	ld [hl], l                                       ; $65ea: $75
	rlca                                             ; $65eb: $07
	rst $38                                          ; $65ec: $ff
	dec bc                                           ; $65ed: $0b
	rst FarCall                                          ; $65ee: $f7
	rst FarCall                                          ; $65ef: $f7
	add b                                            ; $65f0: $80
	ei                                               ; $65f1: $fb
	rrca                                             ; $65f2: $0f
	rst FarCall                                          ; $65f3: $f7
	rla                                              ; $65f4: $17
	rst $38                                          ; $65f5: $ff
	adc a                                            ; $65f6: $8f
	sub h                                            ; $65f7: $94
	add l                                            ; $65f8: $85
	sbc d                                            ; $65f9: $9a
	xor d                                            ; $65fa: $aa
	sbc e                                            ; $65fb: $9b
	rst AddAOntoHL                                          ; $65fc: $ef
	sbc [hl]                                         ; $65fd: $9e
	db $fd                                           ; $65fe: $fd
	sbc [hl]                                         ; $65ff: $9e
	rst $38                                          ; $6600: $ff
	rst $38                                          ; $6601: $ff
	rra                                              ; $6602: $1f
	ei                                               ; $6603: $fb
	cp [hl]                                          ; $6604: $be
	ei                                               ; $6605: $fb
	inc b                                            ; $6606: $04
	ei                                               ; $6607: $fb
	ld a, [bc]                                       ; $6608: $0a
	or c                                             ; $6609: $b1
	db $dd                                           ; $660a: $dd
	ld h, e                                          ; $660b: $63
	rrca                                             ; $660c: $0f
	cp a                                             ; $660d: $bf
	dec l                                            ; $660e: $2d
	cp a                                             ; $660f: $bf
	add b                                            ; $6610: $80
	cp $ff                                           ; $6611: $fe $ff
	rst FarCall                                          ; $6613: $f7
	ei                                               ; $6614: $fb
	ld [hl], a                                       ; $6615: $77
	ei                                               ; $6616: $fb
	ld d, a                                          ; $6617: $57
	db $ec                                           ; $6618: $ec
	ld [hl+], a                                      ; $6619: $22
	db $d3                                           ; $661a: $d3
	ld d, h                                          ; $661b: $54
	db $eb                                           ; $661c: $eb
	ld c, $ff                                        ; $661d: $0e $ff
	adc $3f                                          ; $661f: $ce $3f
	call z, $3bff                                    ; $6621: $cc $ff $3b
	rst $38                                          ; $6624: $ff
	scf                                              ; $6625: $37
	ei                                               ; $6626: $fb
	ld d, c                                          ; $6627: $51
	xor [hl]                                         ; $6628: $ae
	xor h                                            ; $6629: $ac
	ld d, a                                          ; $662a: $57
	ld d, $e3                                        ; $662b: $16 $e3
	rst SubAFromDE                                          ; $662d: $df
	ccf                                              ; $662e: $3f
	sbc a                                            ; $662f: $9f
	adc c                                            ; $6630: $89
	ld a, [hl]                                       ; $6631: $7e
	rst $38                                          ; $6632: $ff
	rst $38                                          ; $6633: $ff
	ei                                               ; $6634: $fb
	rst SubAFromHL                                          ; $6635: $d7
	rst $38                                          ; $6636: $ff
	rst SubAFromDE                                          ; $6637: $df
	ld b, l                                          ; $6638: $45
	cp d                                             ; $6639: $ba
	xor d                                            ; $663a: $aa
	ld e, l                                          ; $663b: $5d
	ld c, l                                          ; $663c: $4d
	and [hl]                                         ; $663d: $a6
	sbc b                                            ; $663e: $98
	ld a, a                                          ; $663f: $7f
	ld a, d                                          ; $6640: $7a
	ld a, a                                          ; $6641: $7f
	cp c                                             ; $6642: $b9
	ld a, l                                          ; $6643: $7d
	rst $38                                          ; $6644: $ff
	cp a                                             ; $6645: $bf
	xor a                                            ; $6646: $af
	ld [hl], c                                       ; $6647: $71
	ret nc                                           ; $6648: $d0

	ld a, h                                          ; $6649: $7c
	ld b, b                                          ; $664a: $40
	sub e                                            ; $664b: $93
	and d                                            ; $664c: $a2
	ld e, l                                          ; $664d: $5d
	ld d, h                                          ; $664e: $54
	xor a                                            ; $664f: $af
	di                                               ; $6650: $f3
	ld a, [bc]                                       ; $6651: $0a
	inc c                                            ; $6652: $0c
	ld e, $16                                        ; $6653: $1e $16
	adc a                                            ; $6655: $8f
	ld b, $fd                                        ; $6656: $06 $fd

jr_04f_6658:
	ld h, a                                          ; $6658: $67
	cp $79                                           ; $6659: $fe $79
	ld h, h                                          ; $665b: $64
	ld a, e                                          ; $665c: $7b
	nop                                              ; $665d: $00
	ld e, [hl]                                       ; $665e: $5e
	ret nc                                           ; $665f: $d0

	ld l, a                                          ; $6660: $6f
	ldh a, [$6f]                                     ; $6661: $f0 $6f
	di                                               ; $6663: $f3
	ld l, [hl]                                       ; $6664: $6e
	ld e, h                                          ; $6665: $5c
	ld l, a                                          ; $6666: $6f
	db $e3                                           ; $6667: $e3
	ld a, [hl]                                       ; $6668: $7e
	db $d3                                           ; $6669: $d3
	sbc [hl]                                         ; $666a: $9e
	db $fd                                           ; $666b: $fd
	ld [hl], e                                       ; $666c: $73
	ldh a, [$74]                                     ; $666d: $f0 $74
	and b                                            ; $666f: $a0
	ld l, a                                          ; $6670: $6f
	call c, $fc77                                    ; $6671: $dc $77 $fc
	sbc [hl]                                         ; $6674: $9e
	ld b, h                                          ; $6675: $44
	db $fc                                           ; $6676: $fc
	ld a, a                                          ; $6677: $7f
	ldh a, [hDisp1_OBP1]                                     ; $6678: $f0 $94
	adc a                                            ; $667a: $8f
	ld [hl], e                                       ; $667b: $73
	add a                                            ; $667c: $87
	ld a, b                                          ; $667d: $78
	jp $e77c                                         ; $667e: $c3 $7c $e7


	ld a, b                                          ; $6681: $78
	rst $38                                          ; $6682: $ff
	ld a, [hl]                                       ; $6683: $7e
	rst $38                                          ; $6684: $ff
	ld a, e                                          ; $6685: $7b
	sbc $7f                                          ; $6686: $de $7f
	db $fc                                           ; $6688: $fc
	sub e                                            ; $6689: $93
	rst GetHLinHL                                          ; $668a: $cf
	rst $38                                          ; $668b: $ff
	rst JumpTable                                          ; $668c: $c7
	ld sp, hl                                        ; $668d: $f9
	rst JumpTable                                          ; $668e: $c7
	jr c, jr_04f_6658                                ; $668f: $38 $c7

jr_04f_6691:
	jr c, @+$01                                      ; $6691: $38 $ff

	jr c, jr_04f_6691                                ; $6693: $38 $fc

	jr nc, jr_04f_670a                               ; $6695: $30 $73

	ret nz                                           ; $6697: $c0

	rst SubAFromDE                                          ; $6698: $df
	rst $38                                          ; $6699: $ff
	ld a, a                                          ; $669a: $7f
	ld b, a                                          ; $669b: $47
	sbc c                                            ; $669c: $99
	or [hl]                                          ; $669d: $b6
	rst $38                                          ; $669e: $ff
	ld e, $7f                                        ; $669f: $1e $7f
	sub d                                            ; $66a1: $92
	ret nz                                           ; $66a2: $c0

	ld a, c                                          ; $66a3: $79
	call nz, $f07f                                   ; $66a4: $c4 $7f $f0
	ld a, e                                          ; $66a7: $7b
	inc c                                            ; $66a8: $0c
	sub a                                            ; $66a9: $97
	inc e                                            ; $66aa: $1c
	ldh [c], a                                       ; $66ab: $e2
	inc e                                            ; $66ac: $1c
	cp $1c                                           ; $66ad: $fe $1c
	rst $38                                          ; $66af: $ff
	jr @-$3d                                         ; $66b0: $18 $c1

	ld [hl], e                                       ; $66b2: $73
	ret nz                                           ; $66b3: $c0

	ld a, [hl]                                       ; $66b4: $7e
	adc $96                                          ; $66b5: $ce $96
	pop af                                           ; $66b7: $f1
	adc a                                            ; $66b8: $8f
	ld d, c                                          ; $66b9: $51
	adc [hl]                                         ; $66ba: $8e
	rst $38                                          ; $66bb: $ff
	adc a                                            ; $66bc: $8f
	rst SubAFromDE                                          ; $66bd: $df
	adc a                                            ; $66be: $8f
	ret nz                                           ; $66bf: $c0

	ld a, e                                          ; $66c0: $7b
	sbc a                                            ; $66c1: $9f
	ld [hl], e                                       ; $66c2: $73
	ldh a, [$97]                                     ; $66c3: $f0 $97
	rrca                                             ; $66c5: $0f
	add b                                            ; $66c6: $80
	rrca                                             ; $66c7: $0f
	adc $8a                                          ; $66c8: $ce $8a
	rst SubAFromDE                                          ; $66ca: $df
	nop                                              ; $66cb: $00
	ld bc, $e073                                     ; $66cc: $01 $73 $e0
	sub h                                            ; $66cf: $94
	di                                               ; $66d0: $f3
	cp $e2                                           ; $66d1: $fe $e2
	db $fc                                           ; $66d3: $fc
	ldh [rAUD3HIGH], a                               ; $66d4: $e0 $1e
	rra                                              ; $66d6: $1f
	ld a, [bc]                                       ; $66d7: $0a
	rst SubAFromDE                                          ; $66d8: $df
	ld [$7320], sp                                   ; $66d9: $08 $20 $73
	ret nz                                           ; $66dc: $c0

	sub [hl]                                         ; $66dd: $96
	db $e3                                           ; $66de: $e3
	ccf                                              ; $66df: $3f
	daa                                              ; $66e0: $27
	rra                                              ; $66e1: $1f
	daa                                              ; $66e2: $27
	ld e, $1e                                        ; $66e3: $1e $1e
	inc d                                            ; $66e5: $14
	jr @+$6d                                         ; $66e6: $18 $6b

	add b                                            ; $66e8: $80
	sub d                                            ; $66e9: $92
	rra                                              ; $66ea: $1f
	db $fd                                           ; $66eb: $fd
	inc e                                            ; $66ec: $1c
	ldh a, [hDisp1_SCY]                                     ; $66ed: $f0 $90
	ld [hl], b                                       ; $66ef: $70
	sub b                                            ; $66f0: $90
	ld h, b                                          ; $66f1: $60
	sub b                                            ; $66f2: $90
	ld h, b                                          ; $66f3: $60
	ldh a, [$f8]                                     ; $66f4: $f0 $f8
	jr nc, jr_04f_6773                               ; $66f6: $30 $7b

	ldh a, [hDisp1_OBP0]                                     ; $66f8: $f0 $93
	sbc a                                            ; $66fa: $9f
	rst $38                                          ; $66fb: $ff
	rra                                              ; $66fc: $1f
	db $fd                                           ; $66fd: $fd
	sbc l                                            ; $66fe: $9d
	ld a, l                                          ; $66ff: $7d
	ld sp, hl                                        ; $6700: $f9
	add hl, sp                                       ; $6701: $39
	ld a, a                                          ; $6702: $7f
	ld [$040e], sp                                   ; $6703: $08 $0e $04
	ld [hl], a                                       ; $6706: $77
	ldh [$7f], a                                     ; $6707: $e0 $7f
	add e                                            ; $6709: $83

jr_04f_670a:
	sbc b                                            ; $670a: $98
	cp $39                                           ; $670b: $fe $39
	cp $3d                                           ; $670d: $fe $3d
	ei                                               ; $670f: $fb
	pop af                                           ; $6710: $f1
	pop af                                           ; $6711: $f1
	ld l, e                                          ; $6712: $6b
	ret nc                                           ; $6713: $d0

	sub d                                            ; $6714: $92
	ld a, $ff                                        ; $6715: $3e $ff
	inc a                                            ; $6717: $3c
	ei                                               ; $6718: $fb
	ld [hl], $f9                                     ; $6719: $36 $f9
	di                                               ; $671b: $f3
	pop hl                                           ; $671c: $e1
	ld sp, hl                                        ; $671d: $f9
	nop                                              ; $671e: $00
	inc a                                            ; $671f: $3c
	jr jr_04f_6732                                   ; $6720: $18 $10

	ld a, e                                          ; $6722: $7b
	ldh a, [$7e]                                     ; $6723: $f0 $7e
	ld h, $98                                        ; $6725: $26 $98
	ld a, l                                          ; $6727: $7d

Jump_04f_6728:
	di                                               ; $6728: $f3
	ld a, d                                          ; $6729: $7a
	pop af                                           ; $672a: $f1
	rst $38                                          ; $672b: $ff
	pop bc                                           ; $672c: $c1
	add a                                            ; $672d: $87
	ld l, e                                          ; $672e: $6b
	ldh [hDisp1_OBP1], a                                     ; $672f: $e0 $94
	ld a, h                                          ; $6731: $7c

jr_04f_6732:
	rst $38                                          ; $6732: $ff
	pop af                                           ; $6733: $f1
	rst $38                                          ; $6734: $ff
	ld sp, hl                                        ; $6735: $f9
	rst SubAFromBC                                          ; $6736: $e7
	jp hl                                            ; $6737: $e9


	rst JumpTable                                          ; $6738: $c7
	rst SubAFromBC                                          ; $6739: $e7
	ld b, e                                          ; $673a: $43
	ldh a, [c]                                       ; $673b: $f2
	ld l, a                                          ; $673c: $6f
	ld h, b                                          ; $673d: $60
	sub l                                            ; $673e: $95
	ld b, $e1                                        ; $673f: $06 $e1
	sbc [hl]                                         ; $6741: $9e
	db $e3                                           ; $6742: $e3
	call c, $cff7                                    ; $6743: $dc $f7 $cf
	rst $38                                          ; $6746: $ff
	adc a                                            ; $6747: $8f
	dec c                                            ; $6748: $0d
	ld l, e                                          ; $6749: $6b
	nop                                              ; $674a: $00
	sbc [hl]                                         ; $674b: $9e
	ld a, [hl+]                                      ; $674c: $2a
	ld [hl], d                                       ; $674d: $72
	db $f4                                           ; $674e: $f4
	halt                                             ; $674f: $76
	ldh a, [c]                                       ; $6750: $f2
	ld d, [hl]                                       ; $6751: $56
	ldh a, [$fb]                                     ; $6752: $f0 $fb
	ld [hl], d                                       ; $6754: $72
	cp c                                             ; $6755: $b9
	jp c, $9cff                                      ; $6756: $da $ff $9c

	push af                                          ; $6759: $f5
	rst $38                                          ; $675a: $ff
	db $eb                                           ; $675b: $eb
	call c, Call_04f_67ff                            ; $675c: $dc $ff $67
	ldh a, [$dc]                                     ; $675f: $f0 $dc
	rst $38                                          ; $6761: $ff
	sbc [hl]                                         ; $6762: $9e
	rra                                              ; $6763: $1f
	ld e, a                                          ; $6764: $5f
	ldh a, [$7f]                                     ; $6765: $f0 $7f
	ld h, [hl]                                       ; $6767: $66
	rst SubAFromDE                                          ; $6768: $df
	rst $38                                          ; $6769: $ff
	sbc [hl]                                         ; $676a: $9e
	db $dd                                           ; $676b: $dd
	ld h, e                                          ; $676c: $63
	ldh [$9e], a                                     ; $676d: $e0 $9e
	rst SubAFromDE                                          ; $676f: $df
	call c, $75ff                                    ; $6770: $dc $ff $75

jr_04f_6773:
	sbc h                                            ; $6773: $9c
	ld l, a                                          ; $6774: $6f
	ldh a, [$9e]                                     ; $6775: $f0 $9e
	db $ed                                           ; $6777: $ed
	ld [hl], e                                       ; $6778: $73
	ldh [$5f], a                                     ; $6779: $e0 $5f
	ret nz                                           ; $677b: $c0

	ld [hl], a                                       ; $677c: $77
	ldh [$7e], a                                     ; $677d: $e0 $7e
	ld c, l                                          ; $677f: $4d
	sbc [hl]                                         ; $6780: $9e
	cp [hl]                                          ; $6781: $be
	ld e, e                                          ; $6782: $5b
	or b                                             ; $6783: $b0
	ld a, a                                          ; $6784: $7f
	ldh a, [c]                                       ; $6785: $f2
	sbc e                                            ; $6786: $9b
	ld a, [$fffd]                                    ; $6787: $fa $fd $ff
	ld hl, sp+$57                                    ; $678a: $f8 $57
	and b                                            ; $678c: $a0
	ld a, l                                          ; $678d: $7d
	ld h, d                                          ; $678e: $62
	sbc l                                            ; $678f: $9d
	ld l, a                                          ; $6790: $6f
	sbc a                                            ; $6791: $9f
	ld c, e                                          ; $6792: $4b
	sub b                                            ; $6793: $90
	ld e, e                                          ; $6794: $5b
	ret nc                                           ; $6795: $d0

	sbc [hl]                                         ; $6796: $9e
	ei                                               ; $6797: $fb
	ld c, e                                          ; $6798: $4b
	ldh a, [$df]                                     ; $6799: $f0 $df
	rst $38                                          ; $679b: $ff
	ld a, l                                          ; $679c: $7d
	pop de                                           ; $679d: $d1
	ld a, l                                          ; $679e: $7d
	ldh [rVBK], a                                    ; $679f: $e0 $4f
	ret nc                                           ; $67a1: $d0

	ld [hl], a                                       ; $67a2: $77
	call c, $f06f                                    ; $67a3: $dc $6f $f0
	ld [hl], a                                       ; $67a6: $77
	add d                                            ; $67a7: $82
	ld a, a                                          ; $67a8: $7f
	db $fc                                           ; $67a9: $fc
	ld a, a                                          ; $67aa: $7f
	sbc a                                            ; $67ab: $9f
	ld c, a                                          ; $67ac: $4f
	ldh [$5f], a                                     ; $67ad: $e0 $5f
	ld h, b                                          ; $67af: $60
	ld a, a                                          ; $67b0: $7f
	halt                                             ; $67b1: $76
	ld a, l                                          ; $67b2: $7d
	inc b                                            ; $67b3: $04
	ld d, a                                          ; $67b4: $57
	or b                                             ; $67b5: $b0
	sbc [hl]                                         ; $67b6: $9e
	cp l                                             ; $67b7: $bd
	call c, $9eff                                    ; $67b8: $dc $ff $9e
	ld a, [$1047]                                    ; $67bb: $fa $47 $10
	inc bc                                           ; $67be: $03

Jump_04f_67bf:
	ldh a, [$57]                                     ; $67bf: $f0 $57
	ldh a, [$7e]                                     ; $67c1: $f0 $7e
	adc $77                                          ; $67c3: $ce $77
	add b                                            ; $67c5: $80
	ld a, a                                          ; $67c6: $7f
	db $fc                                           ; $67c7: $fc
	sub h                                            ; $67c8: $94
	db $ed                                           ; $67c9: $ed
	ld a, [$f9d2]                                    ; $67ca: $fa $d2 $f9
	push bc                                          ; $67cd: $c5
	ld sp, hl                                        ; $67ce: $f9
	push de                                          ; $67cf: $d5
	ei                                               ; $67d0: $fb
	ei                                               ; $67d1: $fb
	rst $38                                          ; $67d2: $ff
	push de                                          ; $67d3: $d5
	halt                                             ; $67d4: $76
	adc $7f                                          ; $67d5: $ce $7f
	inc l                                            ; $67d7: $2c
	ld a, a                                          ; $67d8: $7f
	adc c                                            ; $67d9: $89
	sbc [hl]                                         ; $67da: $9e
	ld a, a                                          ; $67db: $7f
	ld [hl], a                                       ; $67dc: $77
	halt                                             ; $67dd: $76
	ld [hl], e                                       ; $67de: $73
	ld l, b                                          ; $67df: $68
	sub l                                            ; $67e0: $95
	di                                               ; $67e1: $f3
	ld [$f5f0], a                                    ; $67e2: $ea $f0 $f5
	ldh [$f2], a                                     ; $67e5: $e0 $f2
	db $ed                                           ; $67e7: $ed
	push af                                          ; $67e8: $f5
	rst $38                                          ; $67e9: $ff
	ld [$c27a], a                                    ; $67ea: $ea $7a $c2

Jump_04f_67ed:
	add b                                            ; $67ed: $80
	xor $ff                                          ; $67ee: $ee $ff
	ld a, a                                          ; $67f0: $7f
	ccf                                              ; $67f1: $3f
	cp [hl]                                          ; $67f2: $be
	rra                                              ; $67f3: $1f
	cp $1d                                           ; $67f4: $fe $1d
	cp c                                             ; $67f6: $b9
	call c, $f85e                                    ; $67f7: $dc $5e $f8
	cp a                                             ; $67fa: $bf
	ld hl, sp+$55                                    ; $67fb: $f8 $55
	rst $38                                          ; $67fd: $ff
	cp d                                             ; $67fe: $ba

Call_04f_67ff:
Jump_04f_67ff:
	rst $38                                          ; $67ff: $ff
	ld [hl], a                                       ; $6800: $77
	rst $38                                          ; $6801: $ff
	ei                                               ; $6802: $fb
	db $fd                                           ; $6803: $fd
	ld [hl], d                                       ; $6804: $72
	db $fd                                           ; $6805: $fd
	inc h                                            ; $6806: $24
	ei                                               ; $6807: $fb
	xor l                                            ; $6808: $ad
	inc de                                           ; $6809: $13
	xor d                                            ; $680a: $aa
	ld e, a                                          ; $680b: $5f
	ld d, l                                          ; $680c: $55
	ld a, e                                          ; $680d: $7b
	ld e, d                                          ; $680e: $5a
	sbc h                                            ; $680f: $9c
	call nc, $a0ff                                   ; $6810: $d4 $ff $a0
	ld [hl], a                                       ; $6813: $77
	cp d                                             ; $6814: $ba
	ld [hl], e                                       ; $6815: $73
	ld b, [hl]                                       ; $6816: $46
	ld a, e                                          ; $6817: $7b
	db $fc                                           ; $6818: $fc
	sbc c                                            ; $6819: $99
	cp $7f                                           ; $681a: $fe $7f
	ld hl, sp-$0b                                    ; $681c: $f8 $f5
	ei                                               ; $681e: $fb
	ld a, [$287b]                                    ; $681f: $fa $7b $28
	ld a, a                                          ; $6822: $7f
	and h                                            ; $6823: $a4
	sub [hl]                                         ; $6824: $96
	dec [hl]                                         ; $6825: $35
	rst $38                                          ; $6826: $ff
	ld a, e                                          ; $6827: $7b
	rst $38                                          ; $6828: $ff
	ld a, l                                          ; $6829: $7d
	ld e, a                                          ; $682a: $5f
	rst SubAFromDE                                          ; $682b: $df
	ccf                                              ; $682c: $3f
	ld a, a                                          ; $682d: $7f
	ld a, d                                          ; $682e: $7a
	ret z                                            ; $682f: $c8

	sbc b                                            ; $6830: $98
	ld e, a                                          ; $6831: $5f
	rst $38                                          ; $6832: $ff
	adc b                                            ; $6833: $88
	rst $38                                          ; $6834: $ff
	add b                                            ; $6835: $80
	rst $38                                          ; $6836: $ff
	add d                                            ; $6837: $82
	ld a, e                                          ; $6838: $7b
	sub $7e                                          ; $6839: $d6 $7e
	sbc b                                            ; $683b: $98
	ld a, [hl]                                       ; $683c: $7e
	db $ec                                           ; $683d: $ec
	ld a, [hl]                                       ; $683e: $7e
	inc de                                           ; $683f: $13
	sbc h                                            ; $6840: $9c
	sub a                                            ; $6841: $97
	rst $38                                          ; $6842: $ff
	dec bc                                           ; $6843: $0b
	ld a, e                                          ; $6844: $7b
	add a                                            ; $6845: $87
	ld a, a                                          ; $6846: $7f
	or $6e                                           ; $6847: $f6 $6e
	ld l, d                                          ; $6849: $6a
	reti                                             ; $684a: $d9


	rst $38                                          ; $684b: $ff
	sbc e                                            ; $684c: $9b
	rst SubAFromDE                                          ; $684d: $df
	cp a                                             ; $684e: $bf
	ccf                                              ; $684f: $3f
	cp a                                             ; $6850: $bf
	ld l, a                                          ; $6851: $6f
	xor $7f                                          ; $6852: $ee $7f
	inc b                                            ; $6854: $04
	sbc h                                            ; $6855: $9c
	ldh a, [c]                                       ; $6856: $f2
	rst AddAOntoHL                                          ; $6857: $ef
	push hl                                          ; $6858: $e5
	ld a, e                                          ; $6859: $7b
	ld a, [hl]                                       ; $685a: $7e
	ld a, a                                          ; $685b: $7f
	cp b                                             ; $685c: $b8
	sub d                                            ; $685d: $92
	db $fd                                           ; $685e: $fd
	ld sp, hl                                        ; $685f: $f9
	db $fc                                           ; $6860: $fc
	db $fd                                           ; $6861: $fd
	xor $fc                                          ; $6862: $ee $fc
	rst FarCall                                          ; $6864: $f7
	cp $ef                                           ; $6865: $fe $ef

jr_04f_6867:
	rst $38                                          ; $6867: $ff
	ld d, a                                          ; $6868: $57
	rst $38                                          ; $6869: $ff
	xor e                                            ; $686a: $ab
	ld a, e                                          ; $686b: $7b
	add d                                            ; $686c: $82
	ld [hl], e                                       ; $686d: $73
	and h                                            ; $686e: $a4
	ld a, a                                          ; $686f: $7f
	ld d, d                                          ; $6870: $52
	add b                                            ; $6871: $80
	sbc a                                            ; $6872: $9f
	db $db                                           ; $6873: $db
	adc a                                            ; $6874: $8f
	rst FarCall                                          ; $6875: $f7
	ld c, a                                          ; $6876: $4f
	rst $38                                          ; $6877: $ff
	ld l, a                                          ; $6878: $6f
	rst $38                                          ; $6879: $ff
	rst AddAOntoHL                                          ; $687a: $ef
	cp $ff                                           ; $687b: $fe $ff
	ld sp, hl                                        ; $687d: $f9

Jump_04f_687e:
	rst $38                                          ; $687e: $ff
	cp $f1                                           ; $687f: $fe $f1
	jp hl                                            ; $6881: $e9


	ldh a, [$f0]                                     ; $6882: $f0 $f0
	ldh [$e8], a                                     ; $6884: $e0 $e8
	ldh [$d5], a                                     ; $6886: $e0 $d5
	ldh [$6e], a                                     ; $6888: $e0 $6e
	ld sp, hl                                        ; $688a: $f9
	rst $38                                          ; $688b: $ff
	rst $38                                          ; $688c: $ff
	ld b, e                                          ; $688d: $43
	rst $38                                          ; $688e: $ff
	xor l                                            ; $688f: $ad
	di                                               ; $6890: $f3
	sub d                                            ; $6891: $92
	ld a, e                                          ; $6892: $7b
	add c                                            ; $6893: $81
	ld de, $0001                                     ; $6894: $11 $01 $00
	ld bc, $0154                                     ; $6897: $01 $54 $01
	xor [hl]                                         ; $689a: $ae
	ld de, $fbf4                                     ; $689b: $11 $f4 $fb
	ldh a, [$72]                                     ; $689e: $f0 $72
	jp z, $ae7f                                      ; $68a0: $ca $7f $ae

	ld a, a                                          ; $68a3: $7f
	cp [hl]                                          ; $68a4: $be
	halt                                             ; $68a5: $76
	xor [hl]                                         ; $68a6: $ae
	ld a, l                                          ; $68a7: $7d
	ld [hl], b                                       ; $68a8: $70
	sub d                                            ; $68a9: $92
	ld e, $ff                                        ; $68aa: $1e $ff
	cp h                                             ; $68ac: $bc
	rst $38                                          ; $68ad: $ff
	ldh a, [c]                                       ; $68ae: $f2
	db $fd                                           ; $68af: $fd
	or $f9                                           ; $68b0: $f6 $f9
	rst FarCall                                          ; $68b2: $f7
	ld hl, sp-$17                                    ; $68b3: $f8 $e9
	cp $f4                                           ; $68b5: $fe $f4
	sbc $ff                                          ; $68b7: $de $ff
	sub [hl]                                         ; $68b9: $96
	cp e                                             ; $68ba: $bb
	rst $38                                          ; $68bb: $ff
	ld d, l                                          ; $68bc: $55
	rst $38                                          ; $68bd: $ff
	xor b                                            ; $68be: $a8
	rst $38                                          ; $68bf: $ff
	dec d                                            ; $68c0: $15
	ld hl, sp-$46                                    ; $68c1: $f8 $ba
	ld a, c                                          ; $68c3: $79
	sbc b                                            ; $68c4: $98
	sbc h                                            ; $68c5: $9c
	ret nz                                           ; $68c6: $c0

	ld a, $d5                                        ; $68c7: $3e $d5
	ld a, e                                          ; $68c9: $7b
	adc d                                            ; $68ca: $8a
	ld l, a                                          ; $68cb: $6f
	jr nc, jr_04f_6867                               ; $68cc: $30 $99

	cp a                                             ; $68ce: $bf
	ld a, a                                          ; $68cf: $7f
	rst SubAFromDE                                          ; $68d0: $df
	ld c, a                                          ; $68d1: $4f
	ld l, a                                          ; $68d2: $6f
	rst GetHLinHL                                          ; $68d3: $cf
	ld [hl], a                                       ; $68d4: $77
	jr z, jr_04f_694d                                ; $68d5: $28 $76

	ld e, b                                          ; $68d7: $58
	ld h, l                                          ; $68d8: $65
	jp nc, $001a                                     ; $68d9: $d2 $1a $00

	jp $c133                                         ; $68dc: $c3 $33 $c1


	ld d, l                                          ; $68df: $55
	sbc [hl]                                         ; $68e0: $9e
	ld d, a                                          ; $68e1: $57
	db $dd                                           ; $68e2: $dd
	ld [hl], a                                       ; $68e3: $77
	sbc [hl]                                         ; $68e4: $9e
	ld [hl], l                                       ; $68e5: $75
	db $dd                                           ; $68e6: $dd
	ld d, l                                          ; $68e7: $55
	call c, Call_04f_7777                            ; $68e8: $dc $77 $77
	or $9e                                           ; $68eb: $f6 $9e
	ld d, [hl]                                       ; $68ed: $56
	jp c, $9e66                                      ; $68ee: $da $66 $9e

	ld d, l                                          ; $68f1: $55
	call $cc44                                       ; $68f2: $cd $44 $cc
	adc d                                            ; $68f5: $8a
	sbc e                                            ; $68f6: $9b
	nop                                              ; $68f7: $00
	rlca                                             ; $68f8: $07
	scf                                              ; $68f9: $37
	ld a, a                                          ; $68fa: $7f
	call c, $9cff                                    ; $68fb: $dc $ff $9c
	ld hl, sp-$38                                    ; $68fe: $f8 $c8
	add b                                            ; $6900: $80
	db $fd                                           ; $6901: $fd
	sbc [hl]                                         ; $6902: $9e
	ld de, $ffda                                     ; $6903: $11 $da $ff
	sbc [hl]                                         ; $6906: $9e
	xor $fa                                          ; $6907: $ee $fa
	sbc [hl]                                         ; $6909: $9e
	ldh a, [c]                                       ; $690a: $f2
	jp c, $9eff                                      ; $690b: $da $ff $9e

	dec c                                            ; $690e: $0d
	ld a, [$d36f]                                    ; $690f: $fa $6f $d3
	rst SubAFromDE                                          ; $6912: $df
	rst $38                                          ; $6913: $ff
	ld [hl], e                                       ; $6914: $73
	db $d3                                           ; $6915: $d3
	cp $9e                                           ; $6916: $fe $9e
	ccf                                              ; $6918: $3f
	jp c, $9eff                                      ; $6919: $da $ff $9e

	ret nz                                           ; $691c: $c0

	ld a, [$ffd9]                                    ; $691d: $fa $d9 $ff
	ld sp, hl                                        ; $6920: $f9
	inc bc                                           ; $6921: $03
	ldh a, [$33]                                     ; $6922: $f0 $33
	ldh a, [$9d]                                     ; $6924: $f0 $9d
	ld [$5355], a                                    ; $6926: $ea $55 $53
	ldh a, [$9d]                                     ; $6929: $f0 $9d
	push af                                          ; $692b: $f5
	xor d                                            ; $692c: $aa
	ld d, e                                          ; $692d: $53
	ldh a, [$9b]                                     ; $692e: $f0 $9b
	ld a, [$aa55]                                    ; $6930: $fa $55 $aa
	ld b, b                                          ; $6933: $40
	ld e, a                                          ; $6934: $5f
	ldh a, [$9a]                                     ; $6935: $f0 $9a
	cp $55                                           ; $6937: $fe $55
	xor d                                            ; $6939: $aa
	ld d, l                                          ; $693a: $55
	and b                                            ; $693b: $a0
	ld hl, sp-$21                                    ; $693c: $f8 $df
	rst $38                                          ; $693e: $ff
	sbc [hl]                                         ; $693f: $9e
	xor e                                            ; $6940: $ab
	ld a, e                                          ; $6941: $7b
	ldh a, [$9d]                                     ; $6942: $f0 $9d
	ld [$6301], sp                                   ; $6944: $08 $01 $63
	ldh a, [$99]                                     ; $6947: $f0 $99
	db $fd                                           ; $6949: $fd
	xor d                                            ; $694a: $aa
	ld d, l                                          ; $694b: $55
	xor d                                            ; $694c: $aa

jr_04f_694d:
	ld b, h                                          ; $694d: $44
	adc b                                            ; $694e: $88
	ld hl, sp+$7f                                    ; $694f: $f8 $7f
	and [hl]                                         ; $6951: $a6
	sbc h                                            ; $6952: $9c
	xor d                                            ; $6953: $aa
	ld d, h                                          ; $6954: $54
	add c                                            ; $6955: $81
	or $9a                                           ; $6956: $f6 $9a
	db $dd                                           ; $6958: $dd
	cp d                                             ; $6959: $ba
	ld d, a                                          ; $695a: $57
	xor d                                            ; $695b: $aa
	ld d, b                                          ; $695c: $50
	ld h, a                                          ; $695d: $67
	inc sp                                           ; $695e: $33

jr_04f_695f:
	cp $9d                                           ; $695f: $fe $9d
	ld [hl], a                                       ; $6961: $77
	cp a                                             ; $6962: $bf
	ld a, e                                          ; $6963: $7b
	pop bc                                           ; $6964: $c1
	sbc [hl]                                         ; $6965: $9e
	jr z, jr_04f_695f                                ; $6966: $28 $f7

	rst SubAFromDE                                          ; $6968: $df
	rst $38                                          ; $6969: $ff
	sbc [hl]                                         ; $696a: $9e
	rst SubAFromDE                                          ; $696b: $df
	ld e, a                                          ; $696c: $5f
	add e                                            ; $696d: $83
	ld [hl], e                                       ; $696e: $73
	ldh a, [$9e]                                     ; $696f: $f0 $9e
	ld d, l                                          ; $6971: $55
	ld a, e                                          ; $6972: $7b
	sbc a                                            ; $6973: $9f
	ld d, a                                          ; $6974: $57
	ldh a, [$03]                                     ; $6975: $f0 $03
	jr nc, jr_04f_69b0                               ; $6977: $30 $37

	ldh a, [$9e]                                     ; $6979: $f0 $9e
	db $fc                                           ; $697b: $fc
	ld c, a                                          ; $697c: $4f
	ldh a, [$9e]                                     ; $697d: $f0 $9e
	ldh a, [rHDMA3]                                  ; $697f: $f0 $53
	or b                                             ; $6981: $b0
	sbc e                                            ; $6982: $9b
	cp $80                                           ; $6983: $fe $80
	nop                                              ; $6985: $00
	rra                                              ; $6986: $1f
	ei                                               ; $6987: $fb
	sbc [hl]                                         ; $6988: $9e
	inc bc                                           ; $6989: $03
	ld [hl], d                                       ; $698a: $72
	ld h, [hl]                                       ; $698b: $66
	rst $38                                          ; $698c: $ff
	sbc l                                            ; $698d: $9d
	ld c, a                                          ; $698e: $4f
	rst GetHLinHL                                          ; $698f: $cf
	db $fc                                           ; $6990: $fc
	sbc [hl]                                         ; $6991: $9e
	rlca                                             ; $6992: $07
	ld l, a                                          ; $6993: $6f
	db $e3                                           ; $6994: $e3
	halt                                             ; $6995: $76
	adc e                                            ; $6996: $8b
	ld h, a                                          ; $6997: $67
	db $d3                                           ; $6998: $d3
	ld [hl], a                                       ; $6999: $77
	ld h, e                                          ; $699a: $63
	sbc [hl]                                         ; $699b: $9e
	ld bc, $a06b                                     ; $699c: $01 $6b $a0
	halt                                             ; $699f: $76
	ld [hl], h                                       ; $69a0: $74
	ld a, [hl]                                       ; $69a1: $7e
	and $9c                                          ; $69a2: $e6 $9c
	inc b                                            ; $69a4: $04
	ld bc, $def8                                     ; $69a5: $01 $f8 $de
	ldh a, [$fe]                                     ; $69a8: $f0 $fe
	sbc l                                            ; $69aa: $9d
	ld [bc], a                                       ; $69ab: $02
	rst $38                                          ; $69ac: $ff
	sbc $fd                                          ; $69ad: $de $fd
	db $fd                                           ; $69af: $fd

jr_04f_69b0:
	sbc e                                            ; $69b0: $9b
	cpl                                              ; $69b1: $2f
	ld [hl], l                                       ; $69b2: $75
	ld a, [hl+]                                      ; $69b3: $2a
	ld [hl], a                                       ; $69b4: $77
	ld h, a                                          ; $69b5: $67
	and h                                            ; $69b6: $a4
	db $fd                                           ; $69b7: $fd
	sbc e                                            ; $69b8: $9b
	xor b                                            ; $69b9: $a8
	rst $38                                          ; $69ba: $ff
	ld a, [$57bd]                                    ; $69bb: $fa $bd $57
	ldh a, [$7f]                                     ; $69be: $f0 $7f
	rst FarCall                                          ; $69c0: $f7
	sbc l                                            ; $69c1: $9d
	cp a                                             ; $69c2: $bf
	rst FarCall                                          ; $69c3: $f7
	db $fd                                           ; $69c4: $fd
	sbc [hl]                                         ; $69c5: $9e
	cp $67                                           ; $69c6: $fe $67
	ldh a, [$9c]                                     ; $69c8: $f0 $9c
	db $f4                                           ; $69ca: $f4
	rst SubAFromBC                                          ; $69cb: $e7
	rst SubAFromBC                                          ; $69cc: $e7
	ld h, a                                          ; $69cd: $67
	and b                                            ; $69ce: $a0
	ei                                               ; $69cf: $fb
	sbc [hl]                                         ; $69d0: $9e
	ld hl, sp+$6f                                    ; $69d1: $f8 $6f
	ld hl, sp-$62                                    ; $69d3: $f8 $9e
	ret nz                                           ; $69d5: $c0

	ld h, a                                          ; $69d6: $67
	ldh a, [$9d]                                     ; $69d7: $f0 $9d
	add b                                            ; $69d9: $80
	db $e3                                           ; $69da: $e3
	ld a, [$3863]                                    ; $69db: $fa $63 $38
	push af                                          ; $69de: $f5
	sbc l                                            ; $69df: $9d
	ld [bc], a                                       ; $69e0: $02
	dec d                                            ; $69e1: $15
	ld e, [hl]                                       ; $69e2: $5e
	ld h, b                                          ; $69e3: $60
	ld a, e                                          ; $69e4: $7b
	ldh a, [c]                                       ; $69e5: $f2
	ld a, d                                          ; $69e6: $7a
	xor a                                            ; $69e7: $af
	ld a, [hl]                                       ; $69e8: $7e
	call $97f9                                       ; $69e9: $cd $f9 $97
	ld a, [bc]                                       ; $69ec: $0a
	ld d, l                                          ; $69ed: $55
	xor d                                            ; $69ee: $aa
	ld d, a                                          ; $69ef: $57
	cp a                                             ; $69f0: $bf
	rst $38                                          ; $69f1: $ff
	rst $38                                          ; $69f2: $ff
	ld a, a                                          ; $69f3: $7f
	ld d, e                                          ; $69f4: $53
	nop                                              ; $69f5: $00
	sbc h                                            ; $69f6: $9c
	cp $f8                                           ; $69f7: $fe $f8
	pop af                                           ; $69f9: $f1
	ld a, [$0f9e]                                    ; $69fa: $fa $9e $0f
	ld [hl], a                                       ; $69fd: $77
	db $10                                           ; $69fe: $10
	sbc h                                            ; $69ff: $9c
	add b                                            ; $6a00: $80
	inc bc                                           ; $6a01: $03
	ccf                                              ; $6a02: $3f
	ld [hl], e                                       ; $6a03: $73
	sbc b                                            ; $6a04: $98
	sbc l                                            ; $6a05: $9d
	ld bc, $761f                                     ; $6a06: $01 $1f $76
	sub $9e                                          ; $6a09: $d6 $9e
	ret nz                                           ; $6a0b: $c0

	ld a, e                                          ; $6a0c: $7b
	ldh a, [c]                                       ; $6a0d: $f2
	ld [hl], e                                       ; $6a0e: $73
	adc b                                            ; $6a0f: $88
	ld [hl], a                                       ; $6a10: $77
	db $e4                                           ; $6a11: $e4
	sbc h                                            ; $6a12: $9c
	rst $38                                          ; $6a13: $ff
	ldh [rSB], a                                     ; $6a14: $e0 $01
	ld [hl], a                                       ; $6a16: $77
	ldh a, [c]                                       ; $6a17: $f2
	sbc l                                            ; $6a18: $9d
	cp $b5                                           ; $6a19: $fe $b5
	ld [hl], d                                       ; $6a1b: $72
	db $f4                                           ; $6a1c: $f4
	sbc $ff                                          ; $6a1d: $de $ff
	ld [hl], e                                       ; $6a1f: $73
	ld sp, hl                                        ; $6a20: $f9
	sbc l                                            ; $6a21: $9d
	call nc, Call_04f_618a                           ; $6a22: $d4 $8a $61
	ld a, b                                          ; $6a25: $78
	ld a, e                                          ; $6a26: $7b
	db $e4                                           ; $6a27: $e4
	sbc d                                            ; $6a28: $9a
	push af                                          ; $6a29: $f5
	ld l, b                                          ; $6a2a: $68
	ld d, b                                          ; $6a2b: $50
	jr z, jr_04f_6a7e                                ; $6a2c: $28 $50

	db $db                                           ; $6a2e: $db
	rst $38                                          ; $6a2f: $ff
	sub l                                            ; $6a30: $95
	rst FarCall                                          ; $6a31: $f7
	rst AddAOntoHL                                          ; $6a32: $ef
	rst $38                                          ; $6a33: $ff
	sbc $b9                                          ; $6a34: $de $b9
	ld [de], a                                       ; $6a36: $12
	sbc l                                            ; $6a37: $9d
	ld [de], a                                       ; $6a38: $12
	ld bc, $7b16                                     ; $6a39: $01 $16 $7b
	add sp, -$64                                     ; $6a3c: $e8 $9c
	db $fd                                           ; $6a3e: $fd
	ei                                               ; $6a3f: $fb
	rst $38                                          ; $6a40: $ff
	ld a, e                                          ; $6a41: $7b
	ld e, $88                                        ; $6a42: $1e $88
	ld [hl], $53                                     ; $6a44: $36 $53
	and b                                            ; $6a46: $a0
	ld b, b                                          ; $6a47: $40
	nop                                              ; $6a48: $00
	pop hl                                           ; $6a49: $e1
	ld e, d                                          ; $6a4a: $5a
	rst $38                                          ; $6a4b: $ff
	rst $38                                          ; $6a4c: $ff
	rst AddAOntoHL                                          ; $6a4d: $ef
	rst SubAFromDE                                          ; $6a4e: $df
	cp a                                             ; $6a4f: $bf
	rst $38                                          ; $6a50: $ff
	rra                                              ; $6a51: $1f
	rst $38                                          ; $6a52: $ff
	ld d, [hl]                                       ; $6a53: $56
	dec l                                            ; $6a54: $2d
	dec de                                           ; $6a55: $1b
	or a                                             ; $6a56: $b7
	ld l, d                                          ; $6a57: $6a
	rla                                              ; $6a58: $17
	ld a, a                                          ; $6a59: $7f
	and b                                            ; $6a5a: $a0
	reti                                             ; $6a5b: $d9


	rst $38                                          ; $6a5c: $ff
	sbc $f0                                          ; $6a5d: $de $f0
	sbc e                                            ; $6a5f: $9b
	ldh a, [c]                                       ; $6a60: $f2
	db $10                                           ; $6a61: $10
	ldh a, [$f2]                                     ; $6a62: $f0 $f2
	ld [hl], d                                       ; $6a64: $72
	call nz, $fc77                                   ; $6a65: $c4 $77 $fc
	sbc b                                            ; $6a68: $98
	ld l, a                                          ; $6a69: $6f
	dec d                                            ; $6a6a: $15
	nop                                              ; $6a6b: $00
	inc a                                            ; $6a6c: $3c
	ld d, $3d                                        ; $6a6d: $16 $3d
	ld a, a                                          ; $6a6f: $7f
	ld l, a                                          ; $6a70: $6f
	ld e, b                                          ; $6a71: $58
	sub h                                            ; $6a72: $94
	rst FarCall                                          ; $6a73: $f7
	db $eb                                           ; $6a74: $eb
	rst $38                                          ; $6a75: $ff
	rst SubAFromDE                                          ; $6a76: $df
	ld l, a                                          ; $6a77: $6f
	ld [de], a                                       ; $6a78: $12
	ld bc, $55a8                                     ; $6a79: $01 $a8 $55
	cp $05                                           ; $6a7c: $fe $05

jr_04f_6a7e:
	ld l, a                                          ; $6a7e: $6f
	sub l                                            ; $6a7f: $95
	ld a, a                                          ; $6a80: $7f
	cp $97                                           ; $6a81: $fe $97
	ld l, e                                          ; $6a83: $6b
	db $dd                                           ; $6a84: $dd
	cp [hl]                                          ; $6a85: $be
	dec d                                            ; $6a86: $15
	nop                                              ; $6a87: $00
	ld d, b                                          ; $6a88: $50
	xor [hl]                                         ; $6a89: $ae
	ld e, e                                          ; $6a8a: $5b
	reti                                             ; $6a8b: $d9


	rst $38                                          ; $6a8c: $ff
	sub a                                            ; $6a8d: $97
	rst SubAFromBC                                          ; $6a8e: $e7
	and a                                            ; $6a8f: $a7
	rst SubAFromBC                                          ; $6a90: $e7
	daa                                              ; $6a91: $27
	ld [bc], a                                       ; $6a92: $02
	nop                                              ; $6a93: $00
	and b                                            ; $6a94: $a0
	ld d, d                                          ; $6a95: $52
	ret c                                            ; $6a96: $d8

	rst $38                                          ; $6a97: $ff
	sbc c                                            ; $6a98: $99
	rst SubAFromDE                                          ; $6a99: $df
	or a                                             ; $6a9a: $b7
	ld a, e                                          ; $6a9b: $7b
	cp l                                             ; $6a9c: $bd
	ld l, $00                                        ; $6a9d: $2e $00
	ld h, e                                          ; $6a9f: $63
	and b                                            ; $6aa0: $a0
	ld [hl], l                                       ; $6aa1: $75
	ld [hl-], a                                      ; $6aa2: $32
	sbc h                                            ; $6aa3: $9c
	and $4f                                          ; $6aa4: $e6 $4f
	dec d                                            ; $6aa6: $15
	ld h, c                                          ; $6aa7: $61
	add sp, -$62                                     ; $6aa8: $e8 $9e
	ldh [$7b], a                                     ; $6aaa: $e0 $7b
	ld l, l                                          ; $6aac: $6d
	sbc d                                            ; $6aad: $9a
	rst AddAOntoHL                                          ; $6aae: $ef
	ld a, [hl]                                       ; $6aaf: $7e
	ld a, l                                          ; $6ab0: $7d
	add l                                            ; $6ab1: $85
	db $fc                                           ; $6ab2: $fc
	ld h, c                                          ; $6ab3: $61
	ret c                                            ; $6ab4: $d8

	sub a                                            ; $6ab5: $97
	ldh a, [rIE]                                     ; $6ab6: $f0 $ff
	ccf                                              ; $6ab8: $3f
	cp a                                             ; $6ab9: $bf
	rst SubAFromDE                                          ; $6aba: $df
	rst AddAOntoHL                                          ; $6abb: $ef
	nop                                              ; $6abc: $00
	ret nz                                           ; $6abd: $c0

	halt                                             ; $6abe: $76
	ld [hl], d                                       ; $6abf: $72

Jump_04f_6ac0:
	ld [hl], e                                       ; $6ac0: $73
	ld [$809a], sp                                   ; $6ac1: $08 $9a $80
	ld hl, sp-$61                                    ; $6ac4: $f8 $9f
	sbc [hl]                                         ; $6ac6: $9e
	ld l, a                                          ; $6ac7: $6f
	cp $7f                                           ; $6ac8: $fe $7f
	rst SubAFromBC                                          ; $6aca: $e7
	sbc $ff                                          ; $6acb: $de $ff
	sub a                                            ; $6acd: $97
	xor a                                            ; $6ace: $af
	ld e, a                                          ; $6acf: $5f
	ld l, $15                                        ; $6ad0: $2e $15

jr_04f_6ad2:
	adc d                                            ; $6ad2: $8a
	jr nz, jr_04f_6b45                               ; $6ad3: $20 $70

	ld e, a                                          ; $6ad5: $5f
	ld l, [hl]                                       ; $6ad6: $6e
	ld [hl], b                                       ; $6ad7: $70
	ld a, a                                          ; $6ad8: $7f
	jp z, $8797                                      ; $6ad9: $ca $97 $87

	ld [hl], a                                       ; $6adc: $77
	ei                                               ; $6add: $fb
	push af                                          ; $6ade: $f5
	ld a, [$eaf1]                                    ; $6adf: $fa $f1 $ea
	push de                                          ; $6ae2: $d5
	ld h, h                                          ; $6ae3: $64
	ld l, b                                          ; $6ae4: $68
	rst SubAFromDE                                          ; $6ae5: $df
	rst $38                                          ; $6ae6: $ff
	sbc c                                            ; $6ae7: $99
	cp a                                             ; $6ae8: $bf
	ld l, d                                          ; $6ae9: $6a
	ret nz                                           ; $6aea: $c0

	sub l                                            ; $6aeb: $95
	and d                                            ; $6aec: $a2
	ld e, l                                          ; $6aed: $5d
	ret c                                            ; $6aee: $d8

	rst $38                                          ; $6aef: $ff
	sbc b                                            ; $6af0: $98
	cp d                                             ; $6af1: $ba
	ld d, b                                          ; $6af2: $50
	and b                                            ; $6af3: $a0
	ld b, l                                          ; $6af4: $45
	ld l, $d0                                        ; $6af5: $2e $d0
	jr nz, jr_04f_6ad2                               ; $6af7: $20 $d9

	rst $38                                          ; $6af9: $ff
	sbc b                                            ; $6afa: $98
	ld a, d                                          ; $6afb: $7a
	or h                                             ; $6afc: $b4
	jr z, @+$40                                      ; $6afd: $28 $3e

	ld a, h                                          ; $6aff: $7c
	jr z, jr_04f_6b02                                ; $6b00: $28 $00

jr_04f_6b02:
	ld h, e                                          ; $6b02: $63
	ldh a, [$7e]                                     ; $6b03: $f0 $7e
	ld h, l                                          ; $6b05: $65
	adc h                                            ; $6b06: $8c
	ld a, l                                          ; $6b07: $7d
	ld [$af57], a                                    ; $6b08: $ea $57 $af
	ld b, b                                          ; $6b0b: $40
	nop                                              ; $6b0c: $00
	xor d                                            ; $6b0d: $aa
	ld d, a                                          ; $6b0e: $57
	cp d                                             ; $6b0f: $ba
	push de                                          ; $6b10: $d5
	xor b                                            ; $6b11: $a8
	ld d, b                                          ; $6b12: $50
	or b                                             ; $6b13: $b0
	pop af                                           ; $6b14: $f1
	rst $38                                          ; $6b15: $ff
	rst $38                                          ; $6b16: $ff
	db $fd                                           ; $6b17: $fd
	rst $38                                          ; $6b18: $ff
	ld a, [hl]                                       ; $6b19: $7e
	ld a, d                                          ; $6b1a: $7a
	ld b, d                                          ; $6b1b: $42
	sub d                                            ; $6b1c: $92
	dec c                                            ; $6b1d: $0d
	ldh [$80], a                                     ; $6b1e: $e0 $80
	nop                                              ; $6b20: $00
	add b                                            ; $6b21: $80
	and b                                            ; $6b22: $a0
	add a                                            ; $6b23: $87
	ld a, [$dffd]                                    ; $6b24: $fa $fd $df
	rst $38                                          ; $6b27: $ff
	rst $38                                          ; $6b28: $ff
	ld b, h                                          ; $6b29: $44
	cp $79                                           ; $6b2a: $fe $79
	dec c                                            ; $6b2c: $0d
	sbc d                                            ; $6b2d: $9a
	db $10                                           ; $6b2e: $10
	jr @+$34                                         ; $6b2f: $18 $32

	ld [$de3c], sp                                   ; $6b31: $08 $3c $de
	rst $38                                          ; $6b34: $ff
	sbc [hl]                                         ; $6b35: $9e
	ret nz                                           ; $6b36: $c0

	ld a, [$3897]                                    ; $6b37: $fa $97 $38
	jr nc, jr_04f_6b3c                               ; $6b3a: $30 $00

jr_04f_6b3c:
	ld bc, $7898                                     ; $6b3c: $01 $98 $78
	or b                                             ; $6b3f: $b0
	ld h, b                                          ; $6b40: $60
	call c, $9b30                                    ; $6b41: $dc $30 $9b
	ld a, a                                          ; $6b44: $7f

jr_04f_6b45:
	cp b                                             ; $6b45: $b8
	ld a, b                                          ; $6b46: $78
	cp b                                             ; $6b47: $b8
	db $dd                                           ; $6b48: $dd
	ld hl, sp-$69                                    ; $6b49: $f8 $97
	ld a, b                                          ; $6b4b: $78
	nop                                              ; $6b4c: $00
	nop                                              ; $6b4d: $00
	ld a, a                                          ; $6b4e: $7f
	ld a, a                                          ; $6b4f: $7f
	ld d, l                                          ; $6b50: $55
	rlca                                             ; $6b51: $07
	rlca                                             ; $6b52: $07
	ld [hl], d                                       ; $6b53: $72
	ccf                                              ; $6b54: $3f
	ld a, [hl]                                       ; $6b55: $7e
	ret                                              ; $6b56: $c9


	sbc [hl]                                         ; $6b57: $9e
	inc b                                            ; $6b58: $04
	ld a, c                                          ; $6b59: $79
	ld b, a                                          ; $6b5a: $47
	sbc d                                            ; $6b5b: $9a
	ld hl, sp-$02                                    ; $6b5c: $f8 $fe
	ld a, h                                          ; $6b5e: $7c
	ld hl, sp-$10                                    ; $6b5f: $f8 $f0
	ld a, e                                          ; $6b61: $7b
	ldh a, [hDisp0_OBP0]                                     ; $6b62: $f0 $86
	inc b                                            ; $6b64: $04
	nop                                              ; $6b65: $00
	jp nz, $1804                                     ; $6b66: $c2 $04 $18

	jr nz, jr_04f_6b6b                               ; $6b69: $20 $00

jr_04f_6b6b:
	inc bc                                           ; $6b6b: $03
	rrca                                             ; $6b6c: $0f
	rra                                              ; $6b6d: $1f
	add hl, de                                       ; $6b6e: $19
	jr jr_04f_6b8c                                   ; $6b6f: $18 $1b

	rst $38                                          ; $6b71: $ff
	ld e, $1e                                        ; $6b72: $1e $1e
	stop                                             ; $6b74: $10 $00
	ld b, $07                                        ; $6b76: $06 $07
	inc b                                            ; $6b78: $04
	ld b, $00                                        ; $6b79: $06 $00
	db $10                                           ; $6b7b: $10
	adc e                                            ; $6b7c: $8b
	db $db                                           ; $6b7d: $db
	rst $38                                          ; $6b7e: $ff
	sub l                                            ; $6b7f: $95
	rst AddAOntoHL                                          ; $6b80: $ef
	ld [hl], h                                       ; $6b81: $74
	inc b                                            ; $6b82: $04
	rlca                                             ; $6b83: $07
	ld b, $1f                                        ; $6b84: $06 $1f
	dec h                                            ; $6b86: $25
	nop                                              ; $6b87: $00
	nop                                              ; $6b88: $00
	ld [hl], b                                       ; $6b89: $70
	reti                                             ; $6b8a: $d9


	rst $38                                          ; $6b8b: $ff

jr_04f_6b8c:
	sbc c                                            ; $6b8c: $99

Jump_04f_6b8d:
	inc b                                            ; $6b8d: $04
	inc c                                            ; $6b8e: $0c
	nop                                              ; $6b8f: $00
	ldh [$75], a                                     ; $6b90: $e0 $75
	ld a, [bc]                                       ; $6b92: $0a
	ld [hl], l                                       ; $6b93: $75
	add d                                            ; $6b94: $82
	db $db                                           ; $6b95: $db
	rst $38                                          ; $6b96: $ff
	sbc [hl]                                         ; $6b97: $9e
	dec b                                            ; $6b98: $05
	cp $9d                                           ; $6b99: $fe $9d
	dec d                                            ; $6b9b: $15
	ld a, [hl+]                                      ; $6b9c: $2a
	ld a, e                                          ; $6b9d: $7b
	ld a, [$cb7e]                                    ; $6b9e: $fa $7e $cb
	ld a, e                                          ; $6ba1: $7b
	ld l, d                                          ; $6ba2: $6a
	rst SubAFromDE                                          ; $6ba3: $df
	rst $38                                          ; $6ba4: $ff
	sbc b                                            ; $6ba5: $98
	ld e, a                                          ; $6ba6: $5f
	ld [bc], a                                       ; $6ba7: $02
	ld bc, $0620                                     ; $6ba8: $01 $20 $06
	and h                                            ; $6bab: $a4
	ld l, [hl]                                       ; $6bac: $6e
	sbc $04                                          ; $6bad: $de $04
	sbc l                                            ; $6baf: $9d
	inc e                                            ; $6bb0: $1c
	inc b                                            ; $6bb1: $04
	db $db                                           ; $6bb2: $db
	rst $38                                          ; $6bb3: $ff
	ld a, [hl]                                       ; $6bb4: $7e
	add $99                                          ; $6bb5: $c6 $99
	or [hl]                                          ; $6bb7: $b6
	nop                                              ; $6bb8: $00
	xor b                                            ; $6bb9: $a8
	ld e, c                                          ; $6bba: $59
	ld a, [bc]                                       ; $6bbb: $0a
	add hl, bc                                       ; $6bbc: $09
	ld e, h                                          ; $6bbd: $5c
	adc b                                            ; $6bbe: $88
	sbc b                                            ; $6bbf: $98
	or $7b                                           ; $6bc0: $f6 $7b
	inc bc                                           ; $6bc2: $03
	call nc, Call_04f_79be                           ; $6bc3: $d4 $be $79
	sbc [hl]                                         ; $6bc6: $9e
	ld l, e                                          ; $6bc7: $6b
	ldh [hDisp1_WY], a                                     ; $6bc8: $e0 $95
	rst FarCall                                          ; $6bca: $f7
	rst $38                                          ; $6bcb: $ff
	di                                               ; $6bcc: $f3
	ld l, e                                          ; $6bcd: $6b
	dec de                                           ; $6bce: $1b
	dec a                                            ; $6bcf: $3d
	dec l                                            ; $6bd0: $2d
	ld b, d                                          ; $6bd1: $42
	jr z, jr_04f_6c48                                ; $6bd2: $28 $74

	reti                                             ; $6bd4: $d9


	rst $38                                          ; $6bd5: $ff
	sbc b                                            ; $6bd6: $98
	xor e                                            ; $6bd7: $ab
	ld [hl], l                                       ; $6bd8: $75
	db $eb                                           ; $6bd9: $eb
	rst SubAFromDE                                          ; $6bda: $df
	cp b                                             ; $6bdb: $b8
	ldh [rIF], a                                     ; $6bdc: $e0 $0f
	ld [hl], d                                       ; $6bde: $72
	pop bc                                           ; $6bdf: $c1
	sub b                                            ; $6be0: $90
	ld hl, sp-$20                                    ; $6be1: $f8 $e0
	nop                                              ; $6be3: $00
	nop                                              ; $6be4: $00
	and b                                            ; $6be5: $a0
	ld d, l                                          ; $6be6: $55
	xor d                                            ; $6be7: $aa
	dec c                                            ; $6be8: $0d
	inc c                                            ; $6be9: $0c
	ret z                                            ; $6bea: $c8

	rst GetHLinHL                                          ; $6beb: $cf
	jp z, $d5ff                                      ; $6bec: $ca $ff $d5

	xor e                                            ; $6bef: $ab
	sbc $0f                                          ; $6bf0: $de $0f
	rst SubAFromDE                                          ; $6bf2: $df
	ld c, a                                          ; $6bf3: $4f
	ld a, a                                          ; $6bf4: $7f
	db $eb                                           ; $6bf5: $eb
	ld l, h                                          ; $6bf6: $6c
	ld h, h                                          ; $6bf7: $64
	add b                                            ; $6bf8: $80
	ld h, b                                          ; $6bf9: $60
	ld h, h                                          ; $6bfa: $64
	ld [hl], b                                       ; $6bfb: $70
	jp Jump_04f_73c7                                 ; $6bfc: $c3 $c7 $73


	or c                                             ; $6bff: $b1
	rst GetHLinHL                                          ; $6c00: $cf
	rra                                              ; $6c01: $1f
	rlca                                             ; $6c02: $07
	xor b                                            ; $6c03: $a8
	cp $61                                           ; $6c04: $fe $61
	inc d                                            ; $6c06: $14
	push bc                                          ; $6c07: $c5
	ld l, h                                          ; $6c08: $6c
	jr nz, jr_04f_6c23                               ; $6c09: $20 $18

	stop                                             ; $6c0b: $10 $00
	ld e, $03                                        ; $6c0d: $1e $03
	ld a, [bc]                                       ; $6c0f: $0a
	add e                                            ; $6c10: $83
	ld hl, $e466                                     ; $6c11: $21 $66 $e4
	inc l                                            ; $6c14: $2c
	ld d, b                                          ; $6c15: $50
	ld l, h                                          ; $6c16: $6c
	ldh [c], a                                       ; $6c17: $e2
	sbc l                                            ; $6c18: $9d
	rlca                                             ; $6c19: $07
	db $10                                           ; $6c1a: $10
	ld a, d                                          ; $6c1b: $7a
	ld [hl], d                                       ; $6c1c: $72
	sub c                                            ; $6c1d: $91
	inc c                                            ; $6c1e: $0c
	sbc [hl]                                         ; $6c1f: $9e
	inc b                                            ; $6c20: $04
	nop                                              ; $6c21: $00
	add [hl]                                         ; $6c22: $86

jr_04f_6c23:
	nop                                              ; $6c23: $00
	ld d, b                                          ; $6c24: $50
	ld e, h                                          ; $6c25: $5c
	scf                                              ; $6c26: $37
	nop                                              ; $6c27: $00
	jr nz, jr_04f_6c58                               ; $6c28: $20 $2e

	nop                                              ; $6c2a: $00
	jr nc, jr_04f_6ca5                               ; $6c2b: $30 $78

	ld e, b                                          ; $6c2d: $58

jr_04f_6c2e:
	ld a, a                                          ; $6c2e: $7f
	inc de                                           ; $6c2f: $13
	sub a                                            ; $6c30: $97
	ld bc, $0004                                     ; $6c31: $01 $04 $00
	ld [bc], a                                       ; $6c34: $02
	ld b, $c0                                        ; $6c35: $06 $c0
	inc bc                                           ; $6c37: $03
	nop                                              ; $6c38: $00
	ld a, e                                          ; $6c39: $7b
	pop hl                                           ; $6c3a: $e1
	ld a, b                                          ; $6c3b: $78
	ld [hl-], a                                      ; $6c3c: $32
	ld a, d                                          ; $6c3d: $7a
	inc [hl]                                         ; $6c3e: $34
	sub a                                            ; $6c3f: $97
	add b                                            ; $6c40: $80
	jr nz, jr_04f_6c44                               ; $6c41: $20 $01

	adc e                                            ; $6c43: $8b

jr_04f_6c44:
	adc d                                            ; $6c44: $8a
	dec b                                            ; $6c45: $05
	add hl, de                                       ; $6c46: $19
	inc c                                            ; $6c47: $0c

jr_04f_6c48:
	db $fd                                           ; $6c48: $fd
	sbc d                                            ; $6c49: $9a
	inc b                                            ; $6c4a: $04
	ld c, $00                                        ; $6c4b: $0e $00
	inc de                                           ; $6c4d: $13
	jr nc, jr_04f_6c2e                               ; $6c4e: $30 $de

	inc sp                                           ; $6c50: $33
	sbc e                                            ; $6c51: $9b
	ld [hl], b                                       ; $6c52: $70
	jr nc, @+$12                                     ; $6c53: $30 $10

	sub b                                            ; $6c55: $90
	sbc $f8                                          ; $6c56: $de $f8

jr_04f_6c58:
	sbc [hl]                                         ; $6c58: $9e
	ei                                               ; $6c59: $fb
	db $dd                                           ; $6c5a: $dd
	ld hl, sp+$7d                                    ; $6c5b: $f8 $7d
	add a                                            ; $6c5d: $87
	ld a, [hl]                                       ; $6c5e: $7e
	ld l, l                                          ; $6c5f: $6d

Call_04f_6c60:
	ld [hl], l                                       ; $6c60: $75
	inc d                                            ; $6c61: $14
	ld a, e                                          ; $6c62: $7b
	call nc, $bd72                                   ; $6c63: $d4 $72 $bd
	ld a, d                                          ; $6c66: $7a
	dec bc                                           ; $6c67: $0b
	sbc d                                            ; $6c68: $9a
	ld l, d                                          ; $6c69: $6a
	ld h, b                                          ; $6c6a: $60
	ld [hl], b                                       ; $6c6b: $70
	ldh a, [$e0]                                     ; $6c6c: $f0 $e0
	ld a, e                                          ; $6c6e: $7b
	cp a                                             ; $6c6f: $bf
	sbc [hl]                                         ; $6c70: $9e
	sbc a                                            ; $6c71: $9f
	ld a, e                                          ; $6c72: $7b
	db $fc                                           ; $6c73: $fc
	sub c                                            ; $6c74: $91
	db $10                                           ; $6c75: $10
	dec de                                           ; $6c76: $1b
	db $10                                           ; $6c77: $10
	add hl, bc                                       ; $6c78: $09
	sub c                                            ; $6c79: $91
	ld [$1f1c], sp                                   ; $6c7a: $08 $1c $1f
	rra                                              ; $6c7d: $1f
	inc b                                            ; $6c7e: $04
	adc a                                            ; $6c7f: $8f
	sub [hl]                                         ; $6c80: $96
	adc [hl]                                         ; $6c81: $8e
	rla                                              ; $6c82: $17
	ld a, e                                          ; $6c83: $7b
	db $db                                           ; $6c84: $db
	sub a                                            ; $6c85: $97
	ld l, a                                          ; $6c86: $6f
	sbc $1e                                          ; $6c87: $de $1e
	ld a, a                                          ; $6c89: $7f
	ld l, [hl]                                       ; $6c8a: $6e
	adc h                                            ; $6c8b: $8c
	ld [hl], h                                       ; $6c8c: $74
	inc hl                                           ; $6c8d: $23
	ld [hl], b                                       ; $6c8e: $70
	ret nc                                           ; $6c8f: $d0

	cp $97                                           ; $6c90: $fe $97
	add e                                            ; $6c92: $83
	inc bc                                           ; $6c93: $03
	ld b, [hl]                                       ; $6c94: $46
	add d                                            ; $6c95: $82
	add e                                            ; $6c96: $83
	ld [hl], h                                       ; $6c97: $74
	sbc l                                            ; $6c98: $9d
	adc a                                            ; $6c99: $8f
	ld a, [$4096]                                    ; $6c9a: $fa $96 $40
	push bc                                          ; $6c9d: $c5
	ld b, c                                          ; $6c9e: $41
	ld b, h                                          ; $6c9f: $44
	rlca                                             ; $6ca0: $07
	ld [bc], a                                       ; $6ca1: $02
	nop                                              ; $6ca2: $00
	add b                                            ; $6ca3: $80
	inc e                                            ; $6ca4: $1c

jr_04f_6ca5:
	ld sp, hl                                        ; $6ca5: $f9
	sub a                                            ; $6ca6: $97
	add [hl]                                         ; $6ca7: $86
	ld [$f319], sp                                   ; $6ca8: $08 $19 $f3
	inc b                                            ; $6cab: $04
	inc e                                            ; $6cac: $1c
	add b                                            ; $6cad: $80
	inc b                                            ; $6cae: $04
	ei                                               ; $6caf: $fb
	ld a, a                                          ; $6cb0: $7f
	adc $7e                                          ; $6cb1: $ce $7e
	add hl, de                                       ; $6cb3: $19
	sbc c                                            ; $6cb4: $99
	xor $7f                                          ; $6cb5: $ee $7f
	rst $38                                          ; $6cb7: $ff
	sbc a                                            ; $6cb8: $9f
	rra                                              ; $6cb9: $1f
	rrca                                             ; $6cba: $0f
	ld [hl], e                                       ; $6cbb: $73
	ld e, a                                          ; $6cbc: $5f
	ld a, a                                          ; $6cbd: $7f
	ret c                                            ; $6cbe: $d8

	sub c                                            ; $6cbf: $91
	nop                                              ; $6cc0: $00
	db $fd                                           ; $6cc1: $fd
	ld [bc], a                                       ; $6cc2: $02
	rlca                                             ; $6cc3: $07
	dec b                                            ; $6cc4: $05
	inc bc                                           ; $6cc5: $03
	rrca                                             ; $6cc6: $0f
	add hl, de                                       ; $6cc7: $19
	ld bc, $0fff                                     ; $6cc8: $01 $ff $0f
	dec a                                            ; $6ccb: $3d
	ld e, $1f                                        ; $6ccc: $1e $1f
	ld a, b                                          ; $6cce: $78
	add b                                            ; $6ccf: $80
	adc b                                            ; $6cd0: $88
	ld c, a                                          ; $6cd1: $4f
	and b                                            ; $6cd2: $a0
	ld l, [hl]                                       ; $6cd3: $6e
	and a                                            ; $6cd4: $a7
	inc l                                            ; $6cd5: $2c
	and h                                            ; $6cd6: $a4
	db $ec                                           ; $6cd7: $ec
	dec h                                            ; $6cd8: $25
	rst $38                                          ; $6cd9: $ff
	pop hl                                           ; $6cda: $e1
	ldh [$e8], a                                     ; $6cdb: $e0 $e8
	db $e3                                           ; $6cdd: $e3
	ld [$eae2], a                                    ; $6cde: $ea $e2 $ea
	sbc e                                            ; $6ce1: $9b
	db $fc                                           ; $6ce2: $fc
	ld e, $c3                                        ; $6ce3: $1e $c3
	ld hl, sp+$1f                                    ; $6ce5: $f8 $1f
	dec sp                                           ; $6ce7: $3b
	ld a, c                                          ; $6ce8: $79
	ld d, c                                          ; $6ce9: $51
	adc l                                            ; $6cea: $8d
	ccf                                              ; $6ceb: $3f
	rlca                                             ; $6cec: $07
	nop                                              ; $6ced: $00
	ldh [rDIV], a                                    ; $6cee: $e0 $04
	inc bc                                           ; $6cf0: $03
	db $fd                                           ; $6cf1: $fd
	pop af                                           ; $6cf2: $f1
	ld [hl], a                                       ; $6cf3: $77
	ld a, a                                          ; $6cf4: $7f
	db $fd                                           ; $6cf5: $fd
	pop af                                           ; $6cf6: $f1
	ld a, a                                          ; $6cf7: $7f
	ld a, a                                          ; $6cf8: $7f
	ld c, $10                                        ; $6cf9: $0e $10
	stop                                             ; $6cfb: $10 $00
	ld a, e                                          ; $6cfd: $7b
	db $fc                                           ; $6cfe: $fc
	sub [hl]                                         ; $6cff: $96
	ld bc, $cdce                                     ; $6d00: $01 $ce $cd
	ret z                                            ; $6d03: $c8

	set 1, a                                         ; $6d04: $cb $cf
	set 1, [hl]                                      ; $6d06: $cb $ce
	ret z                                            ; $6d08: $c8

	db $db                                           ; $6d09: $db
	ld c, a                                          ; $6d0a: $4f
	add h                                            ; $6d0b: $84
	ld c, [hl]                                       ; $6d0c: $4e
	rst GetHLinHL                                          ; $6d0d: $cf
	cp [hl]                                          ; $6d0e: $be
	rst $38                                          ; $6d0f: $ff
	cp $1f                                           ; $6d10: $fe $1f
	ccf                                              ; $6d12: $3f
	ld h, [hl]                                       ; $6d13: $66
	db $dd                                           ; $6d14: $dd
	sub $41                                          ; $6d15: $d6 $41
	nop                                              ; $6d17: $00
	ld bc, $c0e0                                     ; $6d18: $01 $e0 $c0
	jr jr_04f_6d3d                                   ; $6d1b: $18 $20

	and b                                            ; $6d1d: $a0
	inc d                                            ; $6d1e: $14
	cp [hl]                                          ; $6d1f: $be
	ld e, h                                          ; $6d20: $5c
	rlca                                             ; $6d21: $07
	jr nc, @-$1d                                     ; $6d22: $30 $e1

	jp nz, $e001                                     ; $6d24: $c2 $01 $e0

	ld a, e                                          ; $6d27: $7b
	sub h                                            ; $6d28: $94
	ld [hl], a                                       ; $6d29: $77
	add b                                            ; $6d2a: $80
	sub a                                            ; $6d2b: $97
	xor $fc                                          ; $6d2c: $ee $fc
	db $db                                           ; $6d2e: $db
	add $06                                          ; $6d2f: $c6 $06
	add [hl]                                         ; $6d31: $86
	ld b, $c2                                        ; $6d32: $06 $c2
	ld sp, hl                                        ; $6d34: $f9
	sub [hl]                                         ; $6d35: $96
	pop bc                                           ; $6d36: $c1
	ret                                              ; $6d37: $c9


	ld h, b                                          ; $6d38: $60
	add b                                            ; $6d39: $80
	ld e, b                                          ; $6d3a: $58
	ld a, [bc]                                       ; $6d3b: $0a
	inc bc                                           ; $6d3c: $03

jr_04f_6d3d:
	inc bc                                           ; $6d3d: $03
	ld [$447b], sp                                   ; $6d3e: $08 $7b $44
	sbc l                                            ; $6d41: $9d
	nop                                              ; $6d42: $00
	inc d                                            ; $6d43: $14
	ld [hl], a                                       ; $6d44: $77
	ld e, c                                          ; $6d45: $59
	sub l                                            ; $6d46: $95

jr_04f_6d47:
	add b                                            ; $6d47: $80
	dec b                                            ; $6d48: $05
	pop bc                                           ; $6d49: $c1
	pop bc                                           ; $6d4a: $c1
	inc bc                                           ; $6d4b: $03
	inc d                                            ; $6d4c: $14
	add b                                            ; $6d4d: $80
	add b                                            ; $6d4e: $80
	nop                                              ; $6d4f: $00
	ld [bc], a                                       ; $6d50: $02
	ld a, c                                          ; $6d51: $79
	ld l, d                                          ; $6d52: $6a
	sub l                                            ; $6d53: $95
	add hl, bc                                       ; $6d54: $09
	dec de                                           ; $6d55: $1b
	inc bc                                           ; $6d56: $03
	ldh a, [c]                                       ; $6d57: $f2
	jr z, @-$5e                                      ; $6d58: $28 $a0

	add b                                            ; $6d5a: $80
	sub b                                            ; $6d5b: $90
	ret nz                                           ; $6d5c: $c0

	rlca                                             ; $6d5d: $07
	ld [hl], a                                       ; $6d5e: $77
	inc hl                                           ; $6d5f: $23
	ld a, [hl]                                       ; $6d60: $7e
	adc l                                            ; $6d61: $8d
	sub [hl]                                         ; $6d62: $96
	ret nz                                           ; $6d63: $c0

	ldh a, [rSVBK]                                   ; $6d64: $f0 $70
	jr nc, jr_04f_6de0                               ; $6d66: $30 $78

	rst SubAFromDE                                          ; $6d68: $df
	ld d, e                                          ; $6d69: $53
	ld sp, hl                                        ; $6d6a: $f9
	cp $de                                           ; $6d6b: $fe $de
	ld hl, sp-$24                                    ; $6d6d: $f8 $dc
	rst $38                                          ; $6d6f: $ff
	ld a, e                                          ; $6d70: $7b

jr_04f_6d71:
	inc de                                           ; $6d71: $13
	sbc b                                            ; $6d72: $98
	nop                                              ; $6d73: $00
	di                                               ; $6d74: $f3
	rst FarCall                                          ; $6d75: $f7
	ccf                                              ; $6d76: $3f
	ret nz                                           ; $6d77: $c0

	ld [$6d07], sp                                   ; $6d78: $08 $07 $6d
	db $fd                                           ; $6d7b: $fd
	sbc [hl]                                         ; $6d7c: $9e
	ret nz                                           ; $6d7d: $c0

	ld a, e                                          ; $6d7e: $7b
	sbc c                                            ; $6d7f: $99
	sbc c                                            ; $6d80: $99
	sbc a                                            ; $6d81: $9f
	and e                                            ; $6d82: $a3
	db $fc                                           ; $6d83: $fc
	nop                                              ; $6d84: $00
	jr nz, jr_04f_6d47                               ; $6d85: $20 $c0

	ld l, a                                          ; $6d87: $6f
	ldh a, [$7f]                                     ; $6d88: $f0 $7f
	dec hl                                           ; $6d8a: $2b
	add a                                            ; $6d8b: $87
	jr jr_04f_6de1                                   ; $6d8c: $18 $53

	sbc $df                                          ; $6d8e: $de $df
	db $e3                                           ; $6d90: $e3
	rra                                              ; $6d91: $1f
	ld bc, $0700                                     ; $6d92: $01 $00 $07
	db $ec                                           ; $6d95: $ec
	pop hl                                           ; $6d96: $e1
	ldh [$fc], a                                     ; $6d97: $e0 $fc
	ldh [$c0], a                                     ; $6d99: $e0 $c0
	jp hl                                            ; $6d9b: $e9


	adc h                                            ; $6d9c: $8c
	ld bc, $c091                                     ; $6d9d: $01 $91 $c0
	ld h, b                                          ; $6da0: $60
	ld [hl], $00                                     ; $6da1: $36 $00
	ld b, b                                          ; $6da3: $40
	ld a, c                                          ; $6da4: $79
	dec bc                                           ; $6da5: $0b
	ld a, e                                          ; $6da6: $7b
	adc e                                            ; $6da7: $8b
	sub a                                            ; $6da8: $97
	or [hl]                                          ; $6da9: $b6
	rst $38                                          ; $6daa: $ff
	ccf                                              ; $6dab: $3f
	or a                                             ; $6dac: $b7
	rst SubAFromBC                                          ; $6dad: $e7
	ld h, d                                          ; $6dae: $62
	jr nc, jr_04f_6d71                               ; $6daf: $30 $c0

	ld a, e                                          ; $6db1: $7b
	ldh a, [c]                                       ; $6db2: $f2
	ld [hl], a                                       ; $6db3: $77
	ld h, c                                          ; $6db4: $61
	sub [hl]                                         ; $6db5: $96
	add b                                            ; $6db6: $80
	ld l, a                                          ; $6db7: $6f
	ldh a, [$ee]                                     ; $6db8: $f0 $ee
	ld d, d                                          ; $6dba: $52
	daa                                              ; $6dbb: $27
	rlca                                             ; $6dbc: $07
	ld l, a                                          ; $6dbd: $6f
	dec h                                            ; $6dbe: $25
	ld a, e                                          ; $6dbf: $7b
	db $e4                                           ; $6dc0: $e4
	ld a, [hl]                                       ; $6dc1: $7e
	ld [hl-], a                                      ; $6dc2: $32
	sbc l                                            ; $6dc3: $9d
	add b                                            ; $6dc4: $80
	db $10                                           ; $6dc5: $10
	ld a, d                                          ; $6dc6: $7a
	inc a                                            ; $6dc7: $3c
	sbc c                                            ; $6dc8: $99
	add $1a                                          ; $6dc9: $c6 $1a
	ld [hl-], a                                      ; $6dcb: $32
	inc h                                            ; $6dcc: $24
	db $e4                                           ; $6dcd: $e4
	rst AddAOntoHL                                          ; $6dce: $ef
	ld [hl], a                                       ; $6dcf: $77
	ldh [c], a                                       ; $6dd0: $e2
	halt                                             ; $6dd1: $76
	sub b                                            ; $6dd2: $90
	sub a                                            ; $6dd3: $97
	ld a, [hl]                                       ; $6dd4: $7e
	rst $38                                          ; $6dd5: $ff
	ccf                                              ; $6dd6: $3f
	rra                                              ; $6dd7: $1f
	ld b, h                                          ; $6dd8: $44
	adc a                                            ; $6dd9: $8f
	ld [de], a                                       ; $6dda: $12
	ld l, h                                          ; $6ddb: $6c
	ld [hl], a                                       ; $6ddc: $77
	ld d, a                                          ; $6ddd: $57
	sub c                                            ; $6dde: $91
	add e                                            ; $6ddf: $83

jr_04f_6de0:
	nop                                              ; $6de0: $00

jr_04f_6de1:
	inc c                                            ; $6de1: $0c
	rra                                              ; $6de2: $1f
	rrca                                             ; $6de3: $0f
	ld e, $3f                                        ; $6de4: $1e $3f
	ld e, $9f                                        ; $6de6: $1e $9f
	ccf                                              ; $6de8: $3f
	ccf                                              ; $6de9: $3f
	rra                                              ; $6dea: $1f
	ld a, $3d                                        ; $6deb: $3e $3d
	ld l, l                                          ; $6ded: $6d
	ld [hl], b                                       ; $6dee: $70
	add b                                            ; $6def: $80
	ld l, l                                          ; $6df0: $6d
	db $e4                                           ; $6df1: $e4
	ld l, h                                          ; $6df2: $6c
	db $e4                                           ; $6df3: $e4
	ld l, l                                          ; $6df4: $6d
	rst SubAFromBC                                          ; $6df5: $e7
	ld l, h                                          ; $6df6: $6c
	and a                                            ; $6df7: $a7
	ldh [c], a                                       ; $6df8: $e2
	db $eb                                           ; $6df9: $eb
	ldh [c], a                                       ; $6dfa: $e2
	ld [$e8e2], a                                    ; $6dfb: $ea $e2 $e8

jr_04f_6dfe:
	db $e3                                           ; $6dfe: $e3
	add sp, -$02                                     ; $6dff: $e8 $fe
	ld l, a                                          ; $6e01: $6f
	dec h                                            ; $6e02: $25
	db $fc                                           ; $6e03: $fc
	rst SubAFromDE                                          ; $6e04: $df
	ld e, $1e                                        ; $6e05: $1e $1e
	sbc e                                            ; $6e07: $9b
	nop                                              ; $6e08: $00
	sub b                                            ; $6e09: $90
	ld c, d                                          ; $6e0a: $4a
	ld bc, $c120                                     ; $6e0b: $01 $20 $c1
	add b                                            ; $6e0e: $80
	sbc h                                            ; $6e0f: $9c

jr_04f_6e10:
	inc b                                            ; $6e10: $04
	cp $f8                                           ; $6e11: $fe $f8
	sbc $70                                          ; $6e13: $de $70
	sbc d                                            ; $6e15: $9a
	ld [hl], a                                       ; $6e16: $77
	ld a, b                                          ; $6e17: $78
	rst SubAFromDE                                          ; $6e18: $df
	ld c, $18                                        ; $6e19: $0e $18
	sbc $10                                          ; $6e1b: $de $10
	sbc h                                            ; $6e1d: $9c
	ccf                                              ; $6e1e: $3f
	ld a, a                                          ; $6e1f: $7f
	rst $38                                          ; $6e20: $ff
	sbc $0d                                          ; $6e21: $de $0d

jr_04f_6e23:
	sbc d                                            ; $6e23: $9a

jr_04f_6e24:
	jr jr_04f_6e24                                   ; $6e24: $18 $fe

	rst GetHLinHL                                          ; $6e26: $cf
	ld e, $fc                                        ; $6e27: $1e $fc
	sbc $0f                                          ; $6e29: $de $0f
	ld a, d                                          ; $6e2b: $7a
	add d                                            ; $6e2c: $82
	rst SubAFromDE                                          ; $6e2d: $df
	rst $38                                          ; $6e2e: $ff
	add [hl]                                         ; $6e2f: $86
	ld e, [hl]                                       ; $6e30: $5e
	ld a, a                                          ; $6e31: $7f
	ld h, a                                          ; $6e32: $67
	ld h, e                                          ; $6e33: $63
	or d                                             ; $6e34: $b2
	add [hl]                                         ; $6e35: $86
	ccf                                              ; $6e36: $3f
	cp b                                             ; $6e37: $b8
	and b                                            ; $6e38: $a0
	add b                                            ; $6e39: $80
	sbc b                                            ; $6e3a: $98
	sbc h                                            ; $6e3b: $9c
	ld c, h                                          ; $6e3c: $4c
	ld a, b                                          ; $6e3d: $78
	ret nz                                           ; $6e3e: $c0

	rst JumpTable                                          ; $6e3f: $c7
	ld hl, sp-$40                                    ; $6e40: $f8 $c0
	or $f2                                           ; $6e42: $f6 $f2
	ld e, d                                          ; $6e44: $5a
	ld a, a                                          ; $6e45: $7f
	cp e                                             ; $6e46: $bb
	ld a, h                                          ; $6e47: $7c
	inc c                                            ; $6e48: $0c
	ld a, c                                          ; $6e49: $79
	cp [hl]                                          ; $6e4a: $be
	sub e                                            ; $6e4b: $93
	ld bc, $0003                                     ; $6e4c: $01 $03 $00
	add b                                            ; $6e4f: $80
	ld [$3800], sp                                   ; $6e50: $08 $00 $38
	nop                                              ; $6e53: $00
	jr c, jr_04f_6e10                                ; $6e54: $38 $ba

	rst $38                                          ; $6e56: $ff
	ld d, c                                          ; $6e57: $51
	ld [hl], c                                       ; $6e58: $71
	or b                                             ; $6e59: $b0
	sub c                                            ; $6e5a: $91
	ld a, l                                          ; $6e5b: $7d
	nop                                              ; $6e5c: $00
	jr nz, jr_04f_6e97                               ; $6e5d: $20 $38

	rlca                                             ; $6e5f: $07
	ld a, c                                          ; $6e60: $79
	jr c, jr_04f_6e23                                ; $6e61: $38 $c0

	add l                                            ; $6e63: $85
	db $e4                                           ; $6e64: $e4
	ld l, b                                          ; $6e65: $68
	nop                                              ; $6e66: $00
	nop                                              ; $6e67: $00
	jr jr_04f_6ee3                                   ; $6e68: $18 $79

	ld l, [hl]                                       ; $6e6a: $6e
	sub d                                            ; $6e6b: $92
	jr jr_04f_6dfe                                   ; $6e6c: $18 $90

	inc a                                            ; $6e6e: $3c
	or b                                             ; $6e6f: $b0
	pop bc                                           ; $6e70: $c1
	ld l, b                                          ; $6e71: $68
	ld h, b                                          ; $6e72: $60
	nop                                              ; $6e73: $00
	nop                                              ; $6e74: $00
	inc e                                            ; $6e75: $1c
	add hl, de                                       ; $6e76: $19
	rra                                              ; $6e77: $1f
	jr jr_04f_6eec                                   ; $6e78: $18 $72

	inc c                                            ; $6e7a: $0c
	sbc l                                            ; $6e7b: $9d
	ldh [rAUD4LEN], a                                ; $6e7c: $e0 $20
	ld a, d                                          ; $6e7e: $7a
	ret z                                            ; $6e7f: $c8

Jump_04f_6e80:
	sbc e                                            ; $6e80: $9b
	dec a                                            ; $6e81: $3d
	jr jr_04f_6ef7                                   ; $6e82: $18 $73

	ldh [$71], a                                     ; $6e84: $e0 $71
	add hl, hl                                       ; $6e86: $29
	ld a, a                                          ; $6e87: $7f
	ld e, b                                          ; $6e88: $58
	sub [hl]                                         ; $6e89: $96
	ld c, c                                          ; $6e8a: $49
	sbc b                                            ; $6e8b: $98
	add b                                            ; $6e8c: $80
	nop                                              ; $6e8d: $00
	inc b                                            ; $6e8e: $04
	add h                                            ; $6e8f: $84
	rst SubAFromHL                                          ; $6e90: $d7
	ldh [c], a                                       ; $6e91: $e2
	ld a, $7b                                        ; $6e92: $3e $7b
	db $db                                           ; $6e94: $db
	ld a, a                                          ; $6e95: $7f
	rst SubAFromBC                                          ; $6e96: $e7

jr_04f_6e97:
	ld a, e                                          ; $6e97: $7b
	db $e3                                           ; $6e98: $e3
	sub d                                            ; $6e99: $92
	jr nc, @+$18                                     ; $6e9a: $30 $16

	cp a                                             ; $6e9c: $bf
	ld b, $c4                                        ; $6e9d: $06 $c4
	pop bc                                           ; $6e9f: $c1
	ld bc, $0cf0                                     ; $6ea0: $01 $f0 $0c
	add hl, bc                                       ; $6ea3: $09
	ld bc, $0301                                     ; $6ea4: $01 $01 $03
	ld a, c                                          ; $6ea7: $79
	sbc a                                            ; $6ea8: $9f
	add b                                            ; $6ea9: $80
	inc hl                                           ; $6eaa: $23
	db $fd                                           ; $6eab: $fd
	ldh a, [$e0]                                     ; $6eac: $f0 $e0
	ld h, c                                          ; $6eae: $61
	ldh [c], a                                       ; $6eaf: $e2
	jp nc, $4cff                                     ; $6eb0: $d2 $ff $4c

	sbc d                                            ; $6eb3: $9a
	sbc e                                            ; $6eb4: $9b
	sub a                                            ; $6eb5: $97
	sub a                                            ; $6eb6: $97
	sub l                                            ; $6eb7: $95
	sbc l                                            ; $6eb8: $9d
	nop                                              ; $6eb9: $00
	dec c                                            ; $6eba: $0d

jr_04f_6ebb:
	ret c                                            ; $6ebb: $d8

	nop                                              ; $6ebc: $00
	sbc c                                            ; $6ebd: $99
	rst $38                                          ; $6ebe: $ff
	rla                                              ; $6ebf: $17
	ld e, b                                          ; $6ec0: $58
	add $f3                                          ; $6ec1: $c6 $f3
	adc h                                            ; $6ec3: $8c
	sbc c                                            ; $6ec4: $99
	rst $38                                          ; $6ec5: $ff
	rst $38                                          ; $6ec6: $ff
	add sp, -$60                                     ; $6ec7: $e8 $a0
	sub a                                            ; $6ec9: $97
	ld bc, $83c6                                     ; $6eca: $01 $c6 $83
	ld h, c                                          ; $6ecd: $61
	pop hl                                           ; $6ece: $e1
	jp Jump_04f_4d9e                                 ; $6ecf: $c3 $9e $4d


	ld a, e                                          ; $6ed2: $7b
	jp $c0df                                         ; $6ed3: $c3 $df $c0


	sub c                                            ; $6ed6: $91
	ld hl, sp+$78                                    ; $6ed7: $f8 $78
	ldh a, [rSB]                                     ; $6ed9: $f0 $01
	ld [bc], a                                       ; $6edb: $02
	jp $0367                                         ; $6edc: $c3 $67 $03


	adc c                                            ; $6edf: $89
	inc b                                            ; $6ee0: $04
	ldh a, [$80]                                     ; $6ee1: $f0 $80

jr_04f_6ee3:
	jr nc, jr_04f_6f21                               ; $6ee3: $30 $3c

	db $fc                                           ; $6ee5: $fc
	sub h                                            ; $6ee6: $94
	ret nz                                           ; $6ee7: $c0

	inc e                                            ; $6ee8: $1c
	rst SubAFromDE                                          ; $6ee9: $df
	add a                                            ; $6eea: $87
	sbc c                                            ; $6eeb: $99

jr_04f_6eec:
	db $ed                                           ; $6eec: $ed
	ld [hl], e                                       ; $6eed: $73
	rla                                              ; $6eee: $17
	nop                                              ; $6eef: $00
	ld h, b                                          ; $6ef0: $60
	jr nz, @+$78                                     ; $6ef1: $20 $76

	pop de                                           ; $6ef3: $d1
	add a                                            ; $6ef4: $87
	nop                                              ; $6ef5: $00
	ld d, e                                          ; $6ef6: $53

jr_04f_6ef7:
	jr nz, jr_04f_6ebb                               ; $6ef7: $20 $c2

	ld [hl], a                                       ; $6ef9: $77
	scf                                              ; $6efa: $37
	cp a                                             ; $6efb: $bf
	ret z                                            ; $6efc: $c8

	cp a                                             ; $6efd: $bf
	and b                                            ; $6efe: $a0
	ret nz                                           ; $6eff: $c0

	ldh [$f8], a                                     ; $6f00: $e0 $f8
	ret z                                            ; $6f02: $c8

	nop                                              ; $6f03: $00
	scf                                              ; $6f04: $37
	ld a, a                                          ; $6f05: $7f
	sbc a                                            ; $6f06: $9f
	rst SubAFromDE                                          ; $6f07: $df
	ld a, a                                          ; $6f08: $7f
	rst $38                                          ; $6f09: $ff
	cp $f7                                           ; $6f0a: $fe $f7
	rst FarCall                                          ; $6f0c: $f7
	halt                                             ; $6f0d: $76
	ld sp, $307f                                     ; $6f0e: $31 $7f $30
	rst SubAFromDE                                          ; $6f11: $df
	rrca                                             ; $6f12: $0f
	add l                                            ; $6f13: $85
	rst $38                                          ; $6f14: $ff
	ret c                                            ; $6f15: $d8

	sub l                                            ; $6f16: $95
	ei                                               ; $6f17: $fb
	cp a                                             ; $6f18: $bf
	ld a, b                                          ; $6f19: $78
	inc c                                            ; $6f1a: $0c
	sub h                                            ; $6f1b: $94
	db $fc                                           ; $6f1c: $fc
	rra                                              ; $6f1d: $1f
	dec sp                                           ; $6f1e: $3b
	dec b                                            ; $6f1f: $05
	ld b, b                                          ; $6f20: $40

jr_04f_6f21:
	ldh a, [$f0]                                     ; $6f21: $f0 $f0
	ld [$e7c2], a                                    ; $6f23: $ea $c2 $e7
	cp b                                             ; $6f26: $b8
	rst $38                                          ; $6f27: $ff
	ld d, [hl]                                       ; $6f28: $56
	inc bc                                           ; $6f29: $03
	nop                                              ; $6f2a: $00
	ld [hl], b                                       ; $6f2b: $70
	ld a, h                                          ; $6f2c: $7c
	ldh [$79], a                                     ; $6f2d: $e0 $79
	adc [hl]                                         ; $6f2f: $8e
	db $dd                                           ; $6f30: $dd
	rst $38                                          ; $6f31: $ff
	sub e                                            ; $6f32: $93
	pop hl                                           ; $6f33: $e1
	ld a, [hl]                                       ; $6f34: $7e
	adc a                                            ; $6f35: $8f
	ld a, b                                          ; $6f36: $78
	ld a, l                                          ; $6f37: $7d
	dec bc                                           ; $6f38: $0b
	nop                                              ; $6f39: $00
	add b                                            ; $6f3a: $80
	ld a, [de]                                       ; $6f3b: $1a
	add c                                            ; $6f3c: $81
	sub b                                            ; $6f3d: $90
	ld sp, hl                                        ; $6f3e: $f9
	db $dd                                           ; $6f3f: $dd
	rst $38                                          ; $6f40: $ff
	sbc h                                            ; $6f41: $9c
	cp a                                             ; $6f42: $bf
	ld a, [hl]                                       ; $6f43: $7e
	ldh [$78], a                                     ; $6f44: $e0 $78
	ld c, d                                          ; $6f46: $4a
	add b                                            ; $6f47: $80
	ld e, $00                                        ; $6f48: $1e $00
	cp a                                             ; $6f4a: $bf
	rst $38                                          ; $6f4b: $ff
	rst FarCall                                          ; $6f4c: $f7
	di                                               ; $6f4d: $f3
	rst SubAFromDE                                          ; $6f4e: $df
	cp a                                             ; $6f4f: $bf
	ccf                                              ; $6f50: $3f
	rst $38                                          ; $6f51: $ff
	ldh [rDIV], a                                    ; $6f52: $e0 $04
	ld b, a                                          ; $6f54: $47
	ld b, a                                          ; $6f55: $47
	rst $38                                          ; $6f56: $ff
	sub e                                            ; $6f57: $93
	sbc $1e                                          ; $6f58: $de $1e
	sbc a                                            ; $6f5a: $9f

jr_04f_6f5b:
	rst $38                                          ; $6f5b: $ff
	ld hl, sp-$08                                    ; $6f5c: $f8 $f8
	ld bc, $2767                                     ; $6f5e: $01 $67 $27
	rst SubAFromBC                                          ; $6f61: $e7
	nop                                              ; $6f62: $00
	nop                                              ; $6f63: $00
	ld [bc], a                                       ; $6f64: $02
	ld a, $fe                                        ; $6f65: $3e $fe
	sbc l                                            ; $6f67: $9d
	cp $bf                                           ; $6f68: $fe $bf
	ld l, e                                          ; $6f6a: $6b
	jp Jump_04f_4090                                 ; $6f6b: $c3 $90 $40


	ld l, $af                                        ; $6f6e: $2e $af
	daa                                              ; $6f70: $27
	or d                                             ; $6f71: $b2
	ret nc                                           ; $6f72: $d0

	xor b                                            ; $6f73: $a8
	ld d, [hl]                                       ; $6f74: $56

jr_04f_6f75:
	rst $38                                          ; $6f75: $ff
	dec sp                                           ; $6f76: $3b
	ret nc                                           ; $6f77: $d0

	ld hl, sp+$0d                                    ; $6f78: $f8 $0d
	rrca                                             ; $6f7a: $0f
	rlca                                             ; $6f7b: $07
	ld a, e                                          ; $6f7c: $7b
	ld l, [hl]                                       ; $6f7d: $6e
	rst SubAFromDE                                          ; $6f7e: $df
	rst $38                                          ; $6f7f: $ff
	sbc c                                            ; $6f80: $99
	add b                                            ; $6f81: $80
	or [hl]                                          ; $6f82: $b6
	ret nz                                           ; $6f83: $c0

	or $b7                                           ; $6f84: $f6 $b7
	or [hl]                                          ; $6f86: $b6
	sbc $ff                                          ; $6f87: $de $ff
	add d                                            ; $6f89: $82
	rst GetHLinHL                                          ; $6f8a: $cf
	cp a                                             ; $6f8b: $bf
	sbc a                                            ; $6f8c: $9f
	cp $ff                                           ; $6f8d: $fe $ff
	ld hl, sp-$34                                    ; $6f8f: $f8 $cc
	jr jr_04f_6fd0                                   ; $6f91: $18 $3d

	ld l, e                                          ; $6f93: $6b
	ld b, $0f                                        ; $6f94: $06 $0f
	ld c, a                                          ; $6f96: $4f
	ldh a, [$f8]                                     ; $6f97: $f0 $f8
	ldh [$7e], a                                     ; $6f99: $e0 $7e
	db $fc                                           ; $6f9b: $fc
	reti                                             ; $6f9c: $d9


	ldh [$c0], a                                     ; $6f9d: $e0 $c0
	jr nc, jr_04f_6f5b                               ; $6f9f: $30 $ba

	rla                                              ; $6fa1: $17
	ld c, h                                          ; $6fa2: $4c
	jp z, $82f3                                      ; $6fa3: $ca $f3 $82

	rra                                              ; $6fa6: $1f
	ld a, c                                          ; $6fa7: $79
	db $e3                                           ; $6fa8: $e3
	sbc l                                            ; $6fa9: $9d
	ldh [$30], a                                     ; $6faa: $e0 $30
	ld a, e                                          ; $6fac: $7b
	dec sp                                           ; $6fad: $3b

jr_04f_6fae:
	sbc l                                            ; $6fae: $9d
	ccf                                              ; $6faf: $3f
	jr c, jr_04f_702c                                ; $6fb0: $38 $7a

	sbc b                                            ; $6fb2: $98
	sub h                                            ; $6fb3: $94
	inc de                                           ; $6fb4: $13
	ccf                                              ; $6fb5: $3f
	ld e, $79                                        ; $6fb6: $1e $79
	ld b, l                                          ; $6fb8: $45
	db $10                                           ; $6fb9: $10
	inc c                                            ; $6fba: $0c
	ccf                                              ; $6fbb: $3f
	rst $38                                          ; $6fbc: $ff
	ld a, a                                          ; $6fbd: $7f
	ld [hl], c                                       ; $6fbe: $71
	db $fd                                           ; $6fbf: $fd
	sub a                                            ; $6fc0: $97
	sbc b                                            ; $6fc1: $98
	push hl                                          ; $6fc2: $e5
	jp nz, $e040                                     ; $6fc3: $c2 $40 $e0

	ld hl, sp+$18                                    ; $6fc6: $f8 $18
	add hl, bc                                       ; $6fc8: $09
	sbc $ff                                          ; $6fc9: $de $ff
	sbc h                                            ; $6fcb: $9c
	cp c                                             ; $6fcc: $b9
	nop                                              ; $6fcd: $00
	jr jr_04f_6fae                                   ; $6fce: $18 $de

jr_04f_6fd0:
	ld bc, $429c                                     ; $6fd0: $01 $9c $42
	ld bc, $7149                                     ; $6fd3: $01 $49 $71
	db $e3                                           ; $6fd6: $e3
	add b                                            ; $6fd7: $80
	add c                                            ; $6fd8: $81
	ldh [$31], a                                     ; $6fd9: $e0 $31
	jp nz, $c0c3                                     ; $6fdb: $c2 $c3 $c0

	ret nz                                           ; $6fde: $c0

	pop hl                                           ; $6fdf: $e1
	pop hl                                           ; $6fe0: $e1
	db $e3                                           ; $6fe1: $e3
	jp $b4bd                                         ; $6fe2: $c3 $bd $b4


	or l                                             ; $6fe5: $b5
	cp l                                             ; $6fe6: $bd
	sbc h                                            ; $6fe7: $9c
	sub h                                            ; $6fe8: $94
	sub h                                            ; $6fe9: $94
	sub b                                            ; $6fea: $90
	call c, Call_04f_7f78                            ; $6feb: $dc $78 $7f
	ld a, b                                          ; $6fee: $78
	ld e, [hl]                                       ; $6fef: $5e
	rst $38                                          ; $6ff0: $ff
	db $ec                                           ; $6ff1: $ec
	rst $38                                          ; $6ff2: $ff
	jr nz, jr_04f_6f75                               ; $6ff3: $20 $80

	add b                                            ; $6ff5: $80
	add a                                            ; $6ff6: $87
	adc [hl]                                         ; $6ff7: $8e
	and c                                            ; $6ff8: $a1
	ldh [$f7], a                                     ; $6ff9: $e0 $f7
	rst SubAFromBC                                          ; $6ffb: $e7
	ld e, c                                          ; $6ffc: $59
	db $dd                                           ; $6ffd: $dd
	adc b                                            ; $6ffe: $88
	db $e4                                           ; $6fff: $e4
	ld [$5117], sp                                   ; $7000: $08 $17 $51
	ld b, e                                          ; $7003: $43
	rst $38                                          ; $7004: $ff
	ld l, e                                          ; $7005: $6b
	ld b, b                                          ; $7006: $40
	ld e, b                                          ; $7007: $58
	ldh a, [$de]                                     ; $7008: $f0 $de
	ldh [hDisp1_WX], a                                     ; $700a: $e0 $96
	cp b                                             ; $700c: $b8
	ld [hl], $0e                                     ; $700d: $36 $0e
	sbc h                                            ; $700f: $9c
	db $f4                                           ; $7010: $f4
	ld bc, $0008                                     ; $7011: $01 $08 $00
	ret nz                                           ; $7014: $c0

	ld a, e                                          ; $7015: $7b
	ld a, [hl+]                                      ; $7016: $2a
	db $fd                                           ; $7017: $fd
	sub h                                            ; $7018: $94
	ld b, l                                          ; $7019: $45
	ld l, d                                          ; $701a: $6a
	dec h                                            ; $701b: $25
	ld [hl], a                                       ; $701c: $77
	ld h, $88                                        ; $701d: $26 $88
	call nz, $1e0a                                   ; $701f: $c4 $0a $1e
	rla                                              ; $7022: $17
	dec de                                           ; $7023: $1b
	ld a, c                                          ; $7024: $79
	ld h, d                                          ; $7025: $62
	ld a, d                                          ; $7026: $7a
	ld c, [hl]                                       ; $7027: $4e
	ld a, [hl]                                       ; $7028: $7e
	ld c, l                                          ; $7029: $4d
	ld a, h                                          ; $702a: $7c
	or b                                             ; $702b: $b0

jr_04f_702c:
	sub d                                            ; $702c: $92
	dec hl                                           ; $702d: $2b
	ld a, [de]                                       ; $702e: $1a
	ld e, $ff                                        ; $702f: $1e $ff
	db $fc                                           ; $7031: $fc
	db $fc                                           ; $7032: $fc
	rst AddAOntoHL                                          ; $7033: $ef
	pop bc                                           ; $7034: $c1
	ld e, l                                          ; $7035: $5d
	ld a, l                                          ; $7036: $7d
	dec a                                            ; $7037: $3d
	rst $38                                          ; $7038: $ff
	ld a, a                                          ; $7039: $7f
	sbc $ff                                          ; $703a: $de $ff
	sbc h                                            ; $703c: $9c
	ld [hl], a                                       ; $703d: $77
	sub e                                            ; $703e: $93
	ei                                               ; $703f: $fb
	ld [hl], l                                       ; $7040: $75
	sub h                                            ; $7041: $94
	ld a, a                                          ; $7042: $7f
	cp $7c                                           ; $7043: $fe $7c
	ld [hl], $80                                     ; $7045: $36 $80
	dec de                                           ; $7047: $1b
	cp d                                             ; $7048: $ba
	ld sp, hl                                        ; $7049: $f9
	db $fc                                           ; $704a: $fc
	rst $38                                          ; $704b: $ff
	rst AddAOntoHL                                          ; $704c: $ef
	ei                                               ; $704d: $fb
	ldh a, [c]                                       ; $704e: $f2
	add b                                            ; $704f: $80
	ldh a, [$f0]                                     ; $7050: $f0 $f0
	ld hl, sp-$10                                    ; $7052: $f8 $f0
	ldh a, [$e0]                                     ; $7054: $f0 $e0
	db $ed                                           ; $7056: $ed
	ld [hl], e                                       ; $7057: $73
	rst $38                                          ; $7058: $ff
	call $ff7a                                       ; $7059: $cd $7a $ff
	ld a, a                                          ; $705c: $7f
	ld bc, $8f00                                     ; $705d: $01 $00 $8f
	nop                                              ; $7060: $00
	ld [hl], d                                       ; $7061: $72
	rst FarCall                                          ; $7062: $f7
	ld [hl], a                                       ; $7063: $77
	inc bc                                           ; $7064: $03
	jr c, jr_04f_70e4                                ; $7065: $38 $7d

	pop bc                                           ; $7067: $c1
	sbc e                                            ; $7068: $9b
	ld h, b                                          ; $7069: $60
	and b                                            ; $706a: $a0
	ldh a, [$50]                                     ; $706b: $f0 $50
	ld a, d                                          ; $706d: $7a
	call $e27f                                       ; $706e: $cd $7f $e2
	add c                                            ; $7071: $81
	ld a, [hl]                                       ; $7072: $7e
	ld a, $be                                        ; $7073: $3e $be
	cp [hl]                                          ; $7075: $be
	ld c, $1f                                        ; $7076: $0e $1f
	rst AddAOntoHL                                          ; $7078: $ef
	inc c                                            ; $7079: $0c
	and c                                            ; $707a: $a1
	add sp, $75                                      ; $707b: $e8 $75
	dec hl                                           ; $707d: $2b
	ld c, $3e                                        ; $707e: $0e $3e
	ld [hl], b                                       ; $7080: $70
	di                                               ; $7081: $f3
	rst SubAFromDE                                          ; $7082: $df
	rst SubAFromDE                                          ; $7083: $df
	adc [hl]                                         ; $7084: $8e
	call c, $fffd                                    ; $7085: $dc $fd $ff
	jp nz, $8c8c                                     ; $7088: $c2 $8c $8c

	ld l, l                                          ; $708b: $6d
	ld l, l                                          ; $708c: $6d
	call $df39                                       ; $708d: $cd $39 $df
	sbc $07                                          ; $7090: $de $07
	sbc b                                            ; $7092: $98
	add e                                            ; $7093: $83
	jp $e763                                         ; $7094: $c3 $63 $e7


	rst SubAFromBC                                          ; $7097: $e7
	sbc $fe                                          ; $7098: $de $fe
	ld a, e                                          ; $709a: $7b
	cp $98                                           ; $709b: $fe $98
	rst $38                                          ; $709d: $ff
	sbc $fe                                          ; $709e: $de $fe
	inc h                                            ; $70a0: $24
	rrca                                             ; $70a1: $0f
	rst $38                                          ; $70a2: $ff
	rst SubAFromDE                                          ; $70a3: $df
	ld [hl], a                                       ; $70a4: $77
	push af                                          ; $70a5: $f5
	sub a                                            ; $70a6: $97
	halt                                             ; $70a7: $76
	ei                                               ; $70a8: $fb
	push de                                          ; $70a9: $d5
	cp e                                             ; $70aa: $bb
	ld d, a                                          ; $70ab: $57
	dec sp                                           ; $70ac: $3b
	ld a, a                                          ; $70ad: $7f
	ld a, [hl-]                                      ; $70ae: $3a
	ld [hl], d                                       ; $70af: $72
	inc sp                                           ; $70b0: $33
	ld a, l                                          ; $70b1: $7d
	xor [hl]                                         ; $70b2: $ae
	add l                                            ; $70b3: $85
	ld bc, $ebd5                                     ; $70b4: $01 $d5 $eb
	ld d, l                                          ; $70b7: $55
	dec sp                                           ; $70b8: $3b
	dec e                                            ; $70b9: $1d
	dec sp                                           ; $70ba: $3b
	ccf                                              ; $70bb: $3f
	dec de                                           ; $70bc: $1b
	xor d                                            ; $70bd: $aa
	sub l                                            ; $70be: $95
	xor e                                            ; $70bf: $ab
	sub l                                            ; $70c0: $95
	cp e                                             ; $70c1: $bb
	rst SubAFromDE                                          ; $70c2: $df
	ei                                               ; $70c3: $fb
	rst $38                                          ; $70c4: $ff
	ld c, a                                          ; $70c5: $4f
	rst SubAFromDE                                          ; $70c6: $df
	rst SubAFromDE                                          ; $70c7: $df
	rst GetHLinHL                                          ; $70c8: $cf
	ret nz                                           ; $70c9: $c0

	rst JumpTable                                          ; $70ca: $c7
	rst GetHLinHL                                          ; $70cb: $cf
	rst AddAOntoHL                                          ; $70cc: $ef
	ret nz                                           ; $70cd: $c0

	call c, $dfe0                                    ; $70ce: $dc $e0 $df
	ret nz                                           ; $70d1: $c0

	sub a                                            ; $70d2: $97
	rlca                                             ; $70d3: $07
	call nz, $ff9e                                   ; $70d4: $c4 $9e $ff
	ld a, a                                          ; $70d7: $7f
	ccf                                              ; $70d8: $3f
	di                                               ; $70d9: $f3
	pop af                                           ; $70da: $f1
	ld sp, hl                                        ; $70db: $f9
	rst SubAFromDE                                          ; $70dc: $df
	ld [de], a                                       ; $70dd: $12
	add b                                            ; $70de: $80
	inc de                                           ; $70df: $13
	rra                                              ; $70e0: $1f
	rrca                                             ; $70e1: $0f
	ld b, $00                                        ; $70e2: $06 $00

jr_04f_70e4:
	inc bc                                           ; $70e4: $03
	ldh [$b0], a                                     ; $70e5: $e0 $b0
	db $ec                                           ; $70e7: $ec
	pop hl                                           ; $70e8: $e1
	db $fd                                           ; $70e9: $fd
	ret z                                            ; $70ea: $c8

	or $f7                                           ; $70eb: $f6 $f7
	jr nc, @+$42                                     ; $70ed: $30 $40

	ldh [rLCDC], a                                   ; $70ef: $e0 $40
	ldh [$c0], a                                     ; $70f1: $e0 $c0
	nop                                              ; $70f3: $00
	jr nz, jr_04f_716e                               ; $70f4: $20 $78

	cp e                                             ; $70f6: $bb
	ld a, $fd                                        ; $70f7: $3e $fd
	ei                                               ; $70f9: $fb
	add hl, de                                       ; $70fa: $19
	ld a, h                                          ; $70fb: $7c
	ld hl, sp+$0b                                    ; $70fc: $f8 $0b
	ld a, [hl]                                       ; $70fe: $7e
	cp a                                             ; $70ff: $bf
	sbc d                                            ; $7100: $9a
	ld [$8a4b], sp                                   ; $7101: $08 $4b $8a
	ld h, c                                          ; $7104: $61
	ld [bc], a                                       ; $7105: $02
	db $dd                                           ; $7106: $dd
	ld bc, $8596                                     ; $7107: $01 $96 $85
	ld b, l                                          ; $710a: $45
	nop                                              ; $710b: $00
	ld bc, $c1c1                                     ; $710c: $01 $c1 $c1
	pop hl                                           ; $710f: $e1
	pop hl                                           ; $7110: $e1
	ldh [$7b], a                                     ; $7111: $e0 $7b
	or e                                             ; $7113: $b3
	sub e                                            ; $7114: $93
	sub b                                            ; $7115: $90
	and b                                            ; $7116: $a0
	sbc b                                            ; $7117: $98
	sub b                                            ; $7118: $90
	sbc b                                            ; $7119: $98
	cp [hl]                                          ; $711a: $be
	sbc e                                            ; $711b: $9b
	sbc e                                            ; $711c: $9b
	db $ed                                           ; $711d: $ed
	db $fc                                           ; $711e: $fc
	xor $f6                                          ; $711f: $ee $f6
	ld [hl], a                                       ; $7121: $77
	or e                                             ; $7122: $b3
	ld a, [hl]                                       ; $7123: $7e
	add $9c                                          ; $7124: $c6 $9c
	rst FarCall                                          ; $7126: $f7
	rst AddAOntoHL                                          ; $7127: $ef
	ld c, $7a                                        ; $7128: $0e $7a
	jp c, $10df                                      ; $712a: $da $df $10

	sbc c                                            ; $712d: $99
	jr nc, jr_04f_71a0                               ; $712e: $30 $70

	ld a, [$1178]                                    ; $7130: $fa $78 $11
	nop                                              ; $7133: $00
	ld a, e                                          ; $7134: $7b
	sub h                                            ; $7135: $94
	ld a, l                                          ; $7136: $7d
	scf                                              ; $7137: $37
	sbc [hl]                                         ; $7138: $9e
	rlca                                             ; $7139: $07
	ld a, b                                          ; $713a: $78
	db $eb                                           ; $713b: $eb
	sbc [hl]                                         ; $713c: $9e
	ld b, d                                          ; $713d: $42
	ld a, e                                          ; $713e: $7b
	or e                                             ; $713f: $b3
	sbc l                                            ; $7140: $9d
	ret nz                                           ; $7141: $c0

	ld b, c                                          ; $7142: $41
	ld [hl], c                                       ; $7143: $71
	ld [hl+], a                                      ; $7144: $22
	ld a, b                                          ; $7145: $78
	ld l, l                                          ; $7146: $6d
	sub [hl]                                         ; $7147: $96
	nop                                              ; $7148: $00
	inc d                                            ; $7149: $14
	ld a, [hl+]                                      ; $714a: $2a
	inc d                                            ; $714b: $14
	ld a, [bc]                                       ; $714c: $0a
	dec d                                            ; $714d: $15
	xor d                                            ; $714e: $aa
	ld a, a                                          ; $714f: $7f
	xor a                                            ; $7150: $af
	ld sp, hl                                        ; $7151: $f9
	rst SubAFromDE                                          ; $7152: $df
	rra                                              ; $7153: $1f
	ld a, [hl]                                       ; $7154: $7e
	ld [$1d88], sp                                   ; $7155: $08 $88 $1d
	rrca                                             ; $7158: $0f
	dec c                                            ; $7159: $0d
	nop                                              ; $715a: $00
	dec a                                            ; $715b: $3d
	dec e                                            ; $715c: $1d
	rra                                              ; $715d: $1f
	dec e                                            ; $715e: $1d
	ld e, a                                          ; $715f: $5f
	ld e, l                                          ; $7160: $5d
	rst GetHLinHL                                          ; $7161: $cf
	pop bc                                           ; $7162: $c1
	rst SubAFromDE                                          ; $7163: $df
	db $db                                           ; $7164: $db
	ei                                               ; $7165: $fb
	ret nc                                           ; $7166: $d0

	call c, $f1ef                                    ; $7167: $dc $ef $f1
	pop de                                           ; $716a: $d1
	rst $38                                          ; $716b: $ff
	rst $38                                          ; $716c: $ff
	rst SubAFromDE                                          ; $716d: $df

jr_04f_716e:
	ld a, e                                          ; $716e: $7b
	db $fd                                           ; $716f: $fd
	ld a, l                                          ; $7170: $7d
	cp [hl]                                          ; $7171: $be
	add c                                            ; $7172: $81
	push af                                          ; $7173: $f5
	rst SubAFromBC                                          ; $7174: $e7
	jp c, Jump_04f_61e4                              ; $7175: $da $e4 $61

	ld d, e                                          ; $7178: $53
	ldh a, [$cb]                                     ; $7179: $f0 $cb
	ld hl, sp-$10                                    ; $717b: $f8 $f0
	and h                                            ; $717d: $a4
	ld hl, sp-$08                                    ; $717e: $f8 $f8
	ldh [rIE], a                                     ; $7180: $e0 $ff
	ldh a, [$f8]                                     ; $7182: $f0 $f8
	ld b, $9b                                        ; $7184: $06 $9b
	cp $87                                           ; $7186: $fe $87
	nop                                              ; $7188: $00
	cp $af                                           ; $7189: $fe $af
	nop                                              ; $718b: $00
	ld bc, $0f07                                     ; $718c: $01 $07 $0f
	inc bc                                           ; $718f: $03
	ld bc, $ab70                                     ; $7190: $01 $70 $ab
	add b                                            ; $7193: $80
	jr nc, @+$5a                                     ; $7194: $30 $58

	add sp, $5e                                      ; $7196: $e8 $5e
	rlca                                             ; $7198: $07
	ld e, $c6                                        ; $7199: $1e $c6
	ei                                               ; $719b: $fb
	ld hl, sp-$47                                    ; $719c: $f8 $b9
	rla                                              ; $719e: $17
	and a                                            ; $719f: $a7

jr_04f_71a0:
	ld a, b                                          ; $71a0: $78
	ld hl, $d1dc                                     ; $71a1: $21 $dc $d1
	jp nz, $d0dd                                     ; $71a4: $c2 $dd $d0

	jp nz, $dedf                                     ; $71a7: $c2 $df $de

	db $e3                                           ; $71aa: $e3
	rst AddAOntoHL                                          ; $71ab: $ef
	rst $38                                          ; $71ac: $ff
	ldh [c], a                                       ; $71ad: $e2
	rst AddAOntoHL                                          ; $71ae: $ef
	rst $38                                          ; $71af: $ff
	ret nz                                           ; $71b0: $c0

	ld a, l                                          ; $71b1: $7d
	sub c                                            ; $71b2: $91
	sub c                                            ; $71b3: $91
	ld de, $bd3b                                     ; $71b4: $11 $3b $bd

jr_04f_71b7:
	ld a, a                                          ; $71b7: $7f
	rra                                              ; $71b8: $1f
	jp $61c3                                         ; $71b9: $c3 $c3 $61


	pop hl                                           ; $71bc: $e1
	pop bc                                           ; $71bd: $c1
	ld b, b                                          ; $71be: $40
	ret nz                                           ; $71bf: $c0

	ldh [$3c], a                                     ; $71c0: $e0 $3c
	sbc $fe                                          ; $71c2: $de $fe
	sub d                                            ; $71c4: $92
	db $f4                                           ; $71c5: $f4
	add c                                            ; $71c6: $81
	dec c                                            ; $71c7: $0d
	inc b                                            ; $71c8: $04
	nop                                              ; $71c9: $00
	sbc $de                                          ; $71ca: $de $de
	cp $cb                                           ; $71cc: $fe $cb
	ccf                                              ; $71ce: $3f
	rst $38                                          ; $71cf: $ff
	rst AddAOntoHL                                          ; $71d0: $ef
	rst JumpTable                                          ; $71d1: $c7
	ld a, d                                          ; $71d2: $7a
	call z, $2187                                    ; $71d3: $cc $87 $21
	jp $9f0e                                         ; $71d6: $c3 $0e $9f


	inc sp                                           ; $71d9: $33
	ld a, a                                          ; $71da: $7f
	ld a, a                                          ; $71db: $7f
	rst $38                                          ; $71dc: $ff
	rst FarCall                                          ; $71dd: $f7
	rst $38                                          ; $71de: $ff
	rst $38                                          ; $71df: $ff
	and $cc                                          ; $71e0: $e6 $cc
	ld e, l                                          ; $71e2: $5d
	nop                                              ; $71e3: $00
	nop                                              ; $71e4: $00
	ld [hl], b                                       ; $71e5: $70
	db $fc                                           ; $71e6: $fc
	ld l, [hl]                                       ; $71e7: $6e
	rra                                              ; $71e8: $1f
	rst $38                                          ; $71e9: $ff
	xor d                                            ; $71ea: $aa
	add b                                            ; $71eb: $80
	call $ffde                                       ; $71ec: $cd $de $ff
	sub h                                            ; $71ef: $94
	rst AddAOntoHL                                          ; $71f0: $ef
	inc bc                                           ; $71f1: $03
	daa                                              ; $71f2: $27
	ld hl, $57f3                                     ; $71f3: $21 $f3 $57
	db $dd                                           ; $71f6: $dd
	inc de                                           ; $71f7: $13
	ld b, d                                          ; $71f8: $42
	add c                                            ; $71f9: $81
	add b                                            ; $71fa: $80
	ld [hl], h                                       ; $71fb: $74
	ld d, l                                          ; $71fc: $55
	add l                                            ; $71fd: $85
	ldh [hLCDCIntHandlerIdx], a                                     ; $71fe: $e0 $81
	ret nz                                           ; $7200: $c0

	rst $38                                          ; $7201: $ff
	db $fc                                           ; $7202: $fc

Call_04f_7203:
	ld a, b                                          ; $7203: $78
	ld a, [$edfd]                                    ; $7204: $fa $fd $ed
	ld a, a                                          ; $7207: $7f
	db $fc                                           ; $7208: $fc
	nop                                              ; $7209: $00
	inc bc                                           ; $720a: $03
	ld bc, $0204                                     ; $720b: $01 $04 $02
	ld [bc], a                                       ; $720e: $02
	add b                                            ; $720f: $80
	nop                                              ; $7210: $00
	dec [hl]                                         ; $7211: $35
	ret nz                                           ; $7212: $c0

	sub c                                            ; $7213: $91
	cp d                                             ; $7214: $ba
	inc c                                            ; $7215: $0c
	ret nz                                           ; $7216: $c0

	ldh [c], a                                       ; $7217: $e2
	ld a, e                                          ; $7218: $7b
	jr nz, jr_04f_71b7                               ; $7219: $20 $9c

	ldh [rSVBK], a                                   ; $721b: $e0 $70
	jr jr_04f_7298                                   ; $721d: $18 $79

	ccf                                              ; $721f: $3f
	sub [hl]                                         ; $7220: $96
	ld e, b                                          ; $7221: $58
	stop                                             ; $7222: $10 $00
	ld b, [hl]                                       ; $7224: $46
	ld b, a                                          ; $7225: $47
	rlca                                             ; $7226: $07
	add b                                            ; $7227: $80
	ldh a, [$a0]                                     ; $7228: $f0 $a0
	ld a, b                                          ; $722a: $78
	ld b, l                                          ; $722b: $45
	ld a, e                                          ; $722c: $7b
	ld de, $98ff                                     ; $722d: $11 $ff $98
	rrca                                             ; $7230: $0f
	ld bc, $0f00                                     ; $7231: $01 $00 $0f
	nop                                              ; $7234: $00
	nop                                              ; $7235: $00
	dec c                                            ; $7236: $0d
	ld a, b                                          ; $7237: $78
	ld b, [hl]                                       ; $7238: $46
	sbc $01                                          ; $7239: $de $01
	rst SubAFromDE                                          ; $723b: $df
	inc bc                                           ; $723c: $03
	sbc [hl]                                         ; $723d: $9e
	ret nz                                           ; $723e: $c0

	ld a, d                                          ; $723f: $7a
	and b                                            ; $7240: $a0
	ld a, d                                          ; $7241: $7a
	pop bc                                           ; $7242: $c1
	adc a                                            ; $7243: $8f
	ret nz                                           ; $7244: $c0

	xor h                                            ; $7245: $ac
	add e                                            ; $7246: $83
	sub e                                            ; $7247: $93
	and e                                            ; $7248: $a3
	and c                                            ; $7249: $a1
	sub b                                            ; $724a: $90
	add b                                            ; $724b: $80
	and b                                            ; $724c: $a0
	jr c, jr_04f_724f                                ; $724d: $38 $00

jr_04f_724f:
	ld b, c                                          ; $724f: $41
	ldh [$b0], a                                     ; $7250: $e0 $b0
	ld [$7704], sp                                   ; $7252: $08 $04 $77
	db $d3                                           ; $7255: $d3
	ld a, [hl]                                       ; $7256: $7e
	rst SubAFromHL                                          ; $7257: $d7
	cp $df                                           ; $7258: $fe $df
	inc bc                                           ; $725a: $03
	sbc d                                            ; $725b: $9a
	cp $ce                                           ; $725c: $fe $ce
	rlca                                             ; $725e: $07
	inc bc                                           ; $725f: $03
	nop                                              ; $7260: $00
	ld a, d                                          ; $7261: $7a
	rst JumpTable                                          ; $7262: $c7
	ei                                               ; $7263: $fb
	sub a                                            ; $7264: $97
	di                                               ; $7265: $f3
	rst $38                                          ; $7266: $ff
	rst $38                                          ; $7267: $ff
	ld c, a                                          ; $7268: $4f
	ret nz                                           ; $7269: $c0

	ld hl, sp+$7c                                    ; $726a: $f8 $7c
	ld a, b                                          ; $726c: $78
	ld sp, hl                                        ; $726d: $f9
	sbc d                                            ; $726e: $9a
	rst SubAFromHL                                          ; $726f: $d7
	xor e                                            ; $7270: $ab
	ld d, a                                          ; $7271: $57
	cp a                                             ; $7272: $bf
	ld a, a                                          ; $7273: $7f
	ld a, e                                          ; $7274: $7b
	cp $f9                                           ; $7275: $fe $f9
	sbc [hl]                                         ; $7277: $9e
	call z, $ffda                                    ; $7278: $cc $da $ff
	ld sp, hl                                        ; $727b: $f9
	sbc h                                            ; $727c: $9c

Call_04f_727d:
	add a                                            ; $727d: $87
	dec b                                            ; $727e: $05
	ld c, $de                                        ; $727f: $0e $de
	rlca                                             ; $7281: $07
	ld a, l                                          ; $7282: $7d
	ld c, a                                          ; $7283: $4f
	ld a, a                                          ; $7284: $7f
	inc h                                            ; $7285: $24
	ld a, d                                          ; $7286: $7a
	ret nz                                           ; $7287: $c0

	ld a, d                                          ; $7288: $7a
	cp [hl]                                          ; $7289: $be
	sub l                                            ; $728a: $95
	add [hl]                                         ; $728b: $86
	cp e                                             ; $728c: $bb
	ret nz                                           ; $728d: $c0

	ldh a, [c]                                       ; $728e: $f2
	rst FarCall                                          ; $728f: $f7
	rst SubAFromBC                                          ; $7290: $e7
	cp e                                             ; $7291: $bb
	or a                                             ; $7292: $b7
	ret z                                            ; $7293: $c8

	ret nz                                           ; $7294: $c0

	ld a, c                                          ; $7295: $79
	ld [hl-], a                                      ; $7296: $32
	sub e                                            ; $7297: $93

jr_04f_7298:
	ret nz                                           ; $7298: $c0

	call nz, $11c9                                   ; $7299: $c4 $c9 $11

jr_04f_729c:
	ei                                               ; $729c: $fb
	ldh [$e4], a                                     ; $729d: $e0 $e4
	push af                                          ; $729f: $f5
	rst SubAFromHL                                          ; $72a0: $d7
	and c                                            ; $72a1: $a1
	adc c                                            ; $72a2: $89
	ld c, $fe                                        ; $72a3: $0e $fe
	sub d                                            ; $72a5: $92
	ld [bc], a                                       ; $72a6: $02

jr_04f_72a7:
	jr c, jr_04f_72a7                                ; $72a7: $38 $fe

	ld hl, sp+$0e                                    ; $72a9: $f8 $0e
	dec b                                            ; $72ab: $05
	add h                                            ; $72ac: $84
	ld c, $9f                                        ; $72ad: $0e $9f
	sub e                                            ; $72af: $93
	or [hl]                                          ; $72b0: $b6
	inc de                                           ; $72b1: $13
	add hl, bc                                       ; $72b2: $09
	ld [hl], l                                       ; $72b3: $75
	ld [hl-], a                                      ; $72b4: $32
	ld a, a                                          ; $72b5: $7f
	adc d                                            ; $72b6: $8a
	add h                                            ; $72b7: $84
	cp b                                             ; $72b8: $b8
	sbc a                                            ; $72b9: $9f
	ld b, c                                          ; $72ba: $41
	jp nz, $17f7                                     ; $72bb: $c2 $f7 $17

	rst $38                                          ; $72be: $ff
	ld d, a                                          ; $72bf: $57
	db $e4                                           ; $72c0: $e4
	ldh [$bf], a                                     ; $72c1: $e0 $bf
	dec a                                            ; $72c3: $3d
	ld [$00f8], sp                                   ; $72c4: $08 $f8 $00
	cp b                                             ; $72c7: $b8
	dec de                                           ; $72c8: $1b
	db $fc                                           ; $72c9: $fc
	ei                                               ; $72ca: $fb
	rst FarCall                                          ; $72cb: $f7
	rst $38                                          ; $72cc: $ff
	push af                                          ; $72cd: $f5
	xor d                                            ; $72ce: $aa
	ld d, l                                          ; $72cf: $55
	dec hl                                           ; $72d0: $2b
	inc bc                                           ; $72d1: $03
	add a                                            ; $72d2: $87
	ld [hl], a                                       ; $72d3: $77
	inc sp                                           ; $72d4: $33
	ld a, [hl]                                       ; $72d5: $7e
	sub e                                            ; $72d6: $93
	adc c                                            ; $72d7: $89
	ld d, b                                          ; $72d8: $50
	ret nz                                           ; $72d9: $c0

	ldh a, [c]                                       ; $72da: $f2
	ld c, e                                          ; $72db: $4b
	db $fd                                           ; $72dc: $fd
	cp [hl]                                          ; $72dd: $be
	ld a, e                                          ; $72de: $7b
	pop af                                           ; $72df: $f1
	and b                                            ; $72e0: $a0
	jr nc, jr_04f_72e3                               ; $72e1: $30 $00

jr_04f_72e3:
	db $e4                                           ; $72e3: $e4
	ld [bc], a                                       ; $72e4: $02
	ld bc, $0e0c                                     ; $72e5: $01 $0c $0e
	rra                                              ; $72e8: $1f
	rrca                                             ; $72e9: $0f
	rlca                                             ; $72ea: $07
	jr nz, @+$22                                     ; $72eb: $20 $20

	db $10                                           ; $72ed: $10
	cp $96                                           ; $72ee: $fe $96
	ld e, b                                          ; $72f0: $58
	ld l, b                                          ; $72f1: $68
	ld h, a                                          ; $72f2: $67
	ld b, b                                          ; $72f3: $40
	add d                                            ; $72f4: $82
	dec bc                                           ; $72f5: $0b
	ld a, a                                          ; $72f6: $7f
	ld [de], a                                       ; $72f7: $12
	add c                                            ; $72f8: $81
	ld [hl], c                                       ; $72f9: $71
	halt                                             ; $72fa: $76
	adc b                                            ; $72fb: $88
	nop                                              ; $72fc: $00
	rst SubAFromBC                                          ; $72fd: $e7
	ld b, e                                          ; $72fe: $43
	pop af                                           ; $72ff: $f1
	di                                               ; $7300: $f3
	ldh [c], a                                       ; $7301: $e2
	rst $38                                          ; $7302: $ff
	rst $38                                          ; $7303: $ff
	ld hl, sp+$10                                    ; $7304: $f8 $10
	cp h                                             ; $7306: $bc
	ld [de], a                                       ; $7307: $12
	add e                                            ; $7308: $83
	ld h, b                                          ; $7309: $60
	ld c, c                                          ; $730a: $49
	call nz, $8036                                   ; $730b: $c4 $36 $80
	jr jr_04f_729c                                   ; $730e: $18 $8c

	ld b, $01                                        ; $7310: $06 $01
	jr nc, @+$7c                                     ; $7312: $30 $7a

	ld a, [$4e7f]                                    ; $7314: $fa $7f $4e
	sbc d                                            ; $7317: $9a
	adc h                                            ; $7318: $8c
	ret nz                                           ; $7319: $c0

	ldh [$c0], a                                     ; $731a: $e0 $c0
	adc b                                            ; $731c: $88
	db $fc                                           ; $731d: $fc
	sub a                                            ; $731e: $97
	ldh [$80], a                                     ; $731f: $e0 $80
	nop                                              ; $7321: $00
	ld a, b                                          ; $7322: $78
	ld hl, sp-$20                                    ; $7323: $f8 $e0
	ldh a, [$f0]                                     ; $7325: $f0 $f0
	ld [hl], a                                       ; $7327: $77
	ld bc, $9bfa                                     ; $7328: $01 $fa $9b
	ld h, b                                          ; $732b: $60
	nop                                              ; $732c: $00
	ld bc, $f516                                     ; $732d: $01 $16 $f5
	sub a                                            ; $7330: $97
	ld [$9d02], sp                                   ; $7331: $08 $02 $9d
	db $fc                                           ; $7334: $fc
	add hl, bc                                       ; $7335: $09
	dec c                                            ; $7336: $0d
	ld bc, $7a0f                                     ; $7337: $01 $0f $7a
	and l                                            ; $733a: $a5
	rst $38                                          ; $733b: $ff
	sbc [hl]                                         ; $733c: $9e
	jr @+$7b                                         ; $733d: $18 $79

	sbc [hl]                                         ; $733f: $9e
	ld a, [hl]                                       ; $7340: $7e
	cp a                                             ; $7341: $bf
	ld a, d                                          ; $7342: $7a
	pop bc                                           ; $7343: $c1
	adc l                                            ; $7344: $8d
	ld h, b                                          ; $7345: $60
	ret nz                                           ; $7346: $c0

	add b                                            ; $7347: $80
	sbc c                                            ; $7348: $99
	cp a                                             ; $7349: $bf
	add c                                            ; $734a: $81
	sbc [hl]                                         ; $734b: $9e
	or a                                             ; $734c: $b7
	sbc a                                            ; $734d: $9f
	sbc a                                            ; $734e: $9f
	nop                                              ; $734f: $00
	nop                                              ; $7350: $00
	adc h                                            ; $7351: $8c
	add d                                            ; $7352: $82
	ld bc, $8060                                     ; $7353: $01 $60 $80
	ccf                                              ; $7356: $3f
	ei                                               ; $7357: $fb
	sbc [hl]                                         ; $7358: $9e
	ld a, h                                          ; $7359: $7c
	ld a, e                                          ; $735a: $7b
	ld e, e                                          ; $735b: $5b
	ld a, e                                          ; $735c: $7b
	scf                                              ; $735d: $37
	sbc c                                            ; $735e: $99
	add b                                            ; $735f: $80
	ld [$0098], sp                                   ; $7360: $08 $98 $00
	nop                                              ; $7363: $00
	db $10                                           ; $7364: $10
	ld [hl], b                                       ; $7365: $70
	ld h, b                                          ; $7366: $60
	sub a                                            ; $7367: $97
	ld a, $7e                                        ; $7368: $3e $7e
	add hl, sp                                       ; $736a: $39
	dec a                                            ; $736b: $3d
	ld d, a                                          ; $736c: $57
	ld a, [hl-]                                      ; $736d: $3a
	ld d, h                                          ; $736e: $54
	xor d                                            ; $736f: $aa
	ld sp, hl                                        ; $7370: $f9
	sub a                                            ; $7371: $97
	ld [hl], a                                       ; $7372: $77
	rst $38                                          ; $7373: $ff
	db $fd                                           ; $7374: $fd
	xor e                                            ; $7375: $ab
	push de                                          ; $7376: $d5
	xor [hl]                                         ; $7377: $ae
	dec d                                            ; $7378: $15
	ld a, [bc]                                       ; $7379: $0a
	ld sp, hl                                        ; $737a: $f9
	ld a, [hl]                                       ; $737b: $7e
	dec e                                            ; $737c: $1d
	sbc c                                            ; $737d: $99
	rst SubAFromHL                                          ; $737e: $d7
	db $eb                                           ; $737f: $eb
	push de                                          ; $7380: $d5
	xor d                                            ; $7381: $aa
	ld d, l                                          ; $7382: $55
	xor e                                            ; $7383: $ab

Call_04f_7384:
	ld sp, hl                                        ; $7384: $f9
	sbc $0f                                          ; $7385: $de $0f
	ld a, l                                          ; $7387: $7d
	and a                                            ; $7388: $a7
	ld a, e                                          ; $7389: $7b
	db $fc                                           ; $738a: $fc
	sbc [hl]                                         ; $738b: $9e
	sbc a                                            ; $738c: $9f
	jp c, $86ff                                      ; $738d: $da $ff $86

	jp nc, $ebf7                                     ; $7390: $d2 $f7 $eb

	db $e3                                           ; $7393: $e3
	rst AddAOntoHL                                          ; $7394: $ef
	cp a                                             ; $7395: $bf
	rst $38                                          ; $7396: $ff
	rst SubAFromDE                                          ; $7397: $df
	db $ed                                           ; $7398: $ed
	add sp, -$04                                     ; $7399: $e8 $fc
	db $fc                                           ; $739b: $fc
	ldh a, [$c0]                                     ; $739c: $f0 $c0
	ret nc                                           ; $739e: $d0

	ldh a, [rP1]                                     ; $739f: $f0 $00
	ld h, [hl]                                       ; $73a1: $66
	ld a, a                                          ; $73a2: $7f
	ccf                                              ; $73a3: $3f
	ccf                                              ; $73a4: $3f
	daa                                              ; $73a5: $27
	inc a                                            ; $73a6: $3c
	ccf                                              ; $73a7: $3f
	cp $de                                           ; $73a8: $fe $de
	rst $38                                          ; $73aa: $ff
	sub b                                            ; $73ab: $90
	rst JumpTable                                          ; $73ac: $c7
	ret c                                            ; $73ad: $d8

	rst GetHLinHL                                          ; $73ae: $cf
	rst GetHLinHL                                          ; $73af: $cf
	ld b, b                                          ; $73b0: $40
	ret nz                                           ; $73b1: $c0

	or c                                             ; $73b2: $b1
	ld l, l                                          ; $73b3: $6d
	rst $38                                          ; $73b4: $ff
	ccf                                              ; $73b5: $3f
	ld h, a                                          ; $73b6: $67
	ld e, $ff                                        ; $73b7: $1e $ff
	rst $38                                          ; $73b9: $ff
	rst GetHLinHL                                          ; $73ba: $cf
	sbc $ff                                          ; $73bb: $de $ff
	sbc l                                            ; $73bd: $9d
	sbc a                                            ; $73be: $9f
	pop hl                                           ; $73bf: $e1
	ld b, h                                          ; $73c0: $44
	nop                                              ; $73c1: $00
	jp nc, $de55                                     ; $73c2: $d2 $55 $de

	ld b, h                                          ; $73c5: $44
	ld e, a                                          ; $73c6: $5f

Jump_04f_73c7:
	or $97                                           ; $73c7: $f6 $97
	ld b, h                                          ; $73c9: $44
	ld b, l                                          ; $73ca: $45
	ld d, l                                          ; $73cb: $55
	ld d, l                                          ; $73cc: $55
	ld h, [hl]                                       ; $73cd: $66
	ld h, [hl]                                       ; $73ce: $66
	ld [hl], a                                       ; $73cf: $77
	ld [hl], h                                       ; $73d0: $74
	db $dd                                           ; $73d1: $dd
	ld b, h                                          ; $73d2: $44
	sub h                                            ; $73d3: $94
	ld [hl], a                                       ; $73d4: $77
	ld h, e                                          ; $73d5: $63
	inc sp                                           ; $73d6: $33
	inc sp                                           ; $73d7: $33
	ld [hl], a                                       ; $73d8: $77
	ld [hl], h                                       ; $73d9: $74
	inc sp                                           ; $73da: $33
	inc sp                                           ; $73db: $33
	ld [hl], $77                                     ; $73dc: $36 $77
	ld [hl], a                                       ; $73de: $77
	sbc $33                                          ; $73df: $de $33
	ld e, a                                          ; $73e1: $5f
	or $9d                                           ; $73e2: $f6 $9d
	inc sp                                           ; $73e4: $33
	ld h, [hl]                                       ; $73e5: $66
	ld [hl], a                                       ; $73e6: $77
	pop af                                           ; $73e7: $f1
	rst SubAFromDE                                          ; $73e8: $df
	ld h, e                                          ; $73e9: $63
	sbc d                                            ; $73ea: $9a
	ld d, e                                          ; $73eb: $53
	ld [hl], $63                                     ; $73ec: $36 $63
	ld h, [hl]                                       ; $73ee: $66
	inc sp                                           ; $73ef: $33
	ld [hl], a                                       ; $73f0: $77
	db $fc                                           ; $73f1: $fc
	rst SubAFromDE                                          ; $73f2: $df
	ld h, e                                          ; $73f3: $63
	ld l, a                                          ; $73f4: $6f
	or $9c                                           ; $73f5: $f6 $9c
	ld [hl], $33                                     ; $73f7: $36 $33
	ld h, [hl]                                       ; $73f9: $66
	ld a, e                                          ; $73fa: $7b
	call $fd6f                                       ; $73fb: $cd $6f $fd
	ld a, a                                          ; $73fe: $7f
	ldh a, [c]                                       ; $73ff: $f2
	ld l, a                                          ; $7400: $6f
	or $9e                                           ; $7401: $f6 $9e
	ld h, [hl]                                       ; $7403: $66
	db $db                                           ; $7404: $db

jr_04f_7405:
	rlca                                             ; $7405: $07
	add b                                            ; $7406: $80
	dec d                                            ; $7407: $15
	rst $38                                          ; $7408: $ff
	ld a, [bc]                                       ; $7409: $0a
	rst $38                                          ; $740a: $ff
	dec b                                            ; $740b: $05
	rst $38                                          ; $740c: $ff
	add e                                            ; $740d: $83
	rst $38                                          ; $740e: $ff
	ret nz                                           ; $740f: $c0

	rst $38                                          ; $7410: $ff
	ldh a, [$3f]                                     ; $7411: $f0 $3f
	ld hl, sp+$1f                                    ; $7413: $f8 $1f
	db $fc                                           ; $7415: $fc
	rlca                                             ; $7416: $07
	ld h, b                                          ; $7417: $60
	rst $38                                          ; $7418: $ff
	or b                                             ; $7419: $b0
	rst $38                                          ; $741a: $ff
	ld e, b                                          ; $741b: $58
	rst $38                                          ; $741c: $ff
	xor h                                            ; $741d: $ac
	rst $38                                          ; $741e: $ff
	sub $ff                                          ; $741f: $d6 $ff
	ld a, e                                          ; $7421: $7b
	rst $38                                          ; $7422: $ff
	dec a                                            ; $7423: $3d
	rst $38                                          ; $7424: $ff
	ld e, $7f                                        ; $7425: $1e $7f
	ldh [c], a                                       ; $7427: $e2
	sbc d                                            ; $7428: $9a
	push af                                          ; $7429: $f5
	ld bc, $00fe                                     ; $742a: $01 $fe $00
	rst $38                                          ; $742d: $ff
	ld l, a                                          ; $742e: $6f
	cp $9e                                           ; $742f: $fe $9e
	add b                                            ; $7431: $80
	ld a, e                                          ; $7432: $7b
	jp c, $aa9b                                      ; $7433: $da $9b $aa

	ld d, l                                          ; $7436: $55
	ld d, l                                          ; $7437: $55
	xor d                                            ; $7438: $aa
	ld [hl], a                                       ; $7439: $77
	db $fc                                           ; $743a: $fc
	sbc b                                            ; $743b: $98
	ld a, [hl+]                                      ; $743c: $2a
	push de                                          ; $743d: $d5
	dec d                                            ; $743e: $15
	ld [$fd02], a                                    ; $743f: $ea $02 $fd
	nop                                              ; $7442: $00
	ld h, e                                          ; $7443: $63
	ldh a, [$67]                                     ; $7444: $f0 $67
	db $fc                                           ; $7446: $fc
	ld a, a                                          ; $7447: $7f
	reti                                             ; $7448: $d9


	sbc c                                            ; $7449: $99
	ld a, a                                          ; $744a: $7f
	add b                                            ; $744b: $80
	xor a                                            ; $744c: $af
	ld d, b                                          ; $744d: $50
	ld d, a                                          ; $744e: $57
	xor b                                            ; $744f: $a8
	ld e, a                                          ; $7450: $5f
	ldh a, [$67]                                     ; $7451: $f0 $67
	cp $7f                                           ; $7453: $fe $7f
	add sp, -$80                                     ; $7455: $e8 $80
	xor e                                            ; $7457: $ab
	ld d, h                                          ; $7458: $54
	ld d, l                                          ; $7459: $55
	xor d                                            ; $745a: $aa
	add c                                            ; $745b: $81
	ld h, b                                          ; $745c: $60
	pop hl                                           ; $745d: $e1
	ld b, b                                          ; $745e: $40
	db $e3                                           ; $745f: $e3
	ld b, b                                          ; $7460: $40
	pop hl                                           ; $7461: $e1
	ld b, d                                          ; $7462: $42
	pop bc                                           ; $7463: $c1
	ld b, d                                          ; $7464: $42
	and [hl]                                         ; $7465: $a6
	ld b, c                                          ; $7466: $41
	sub d                                            ; $7467: $92
	ld b, h                                          ; $7468: $44
	ld h, [hl]                                       ; $7469: $66
	add b                                            ; $746a: $80
	ld [$0444], sp                                   ; $746b: $08 $44 $04
	ld c, b                                          ; $746e: $48
	ret nc                                           ; $746f: $d0

	ld [$9008], sp                                   ; $7470: $08 $08 $90
	jr nz, jr_04f_7405                               ; $7473: $20 $90

	and b                                            ; $7475: $a0
	adc c                                            ; $7476: $89
	db $10                                           ; $7477: $10
	jr nc, jr_04f_747a                               ; $7478: $30 $00

jr_04f_747a:
	ld h, b                                          ; $747a: $60
	nop                                              ; $747b: $00
	ld bc, $0200                                     ; $747c: $01 $00 $02
	nop                                              ; $747f: $00
	dec b                                            ; $7480: $05
	nop                                              ; $7481: $00
	dec bc                                           ; $7482: $0b
	nop                                              ; $7483: $00
	rla                                              ; $7484: $17
	nop                                              ; $7485: $00
	cpl                                              ; $7486: $2f
	nop                                              ; $7487: $00
	ld e, a                                          ; $7488: $5f
	nop                                              ; $7489: $00
	cp l                                             ; $748a: $bd
	ld [bc], a                                       ; $748b: $02
	ld a, a                                          ; $748c: $7f
	ld l, e                                          ; $748d: $6b
	jp nz, $fe9b                                     ; $748e: $c2 $9b $fe

	ld bc, $0af5                                     ; $7491: $01 $f5 $0a
	ld [hl], a                                       ; $7494: $77
	or b                                             ; $7495: $b0
	sbc c                                            ; $7496: $99
	ld a, [$f505]                                    ; $7497: $fa $05 $f5
	ld a, [bc]                                       ; $749a: $0a
	ld [$6715], a                                    ; $749b: $ea $15 $67
	sub b                                            ; $749e: $90
	sbc l                                            ; $749f: $9d
	ld d, h                                          ; $74a0: $54
	xor e                                            ; $74a1: $ab
	ld h, a                                          ; $74a2: $67
	ld hl, sp-$66                                    ; $74a3: $f8 $9a
	and b                                            ; $74a5: $a0
	ld e, a                                          ; $74a6: $5f
	ld b, b                                          ; $74a7: $40
	cp a                                             ; $74a8: $bf
	add b                                            ; $74a9: $80
	ld a, e                                          ; $74aa: $7b
	db $d3                                           ; $74ab: $d3
	ld [hl], a                                       ; $74ac: $77
	ld hl, sp+$77                                    ; $74ad: $f8 $77
	rst GetHLinHL                                          ; $74af: $cf
	sub [hl]                                         ; $74b0: $96
	ld bc, $03ff                                     ; $74b1: $01 $ff $03
	rst $38                                          ; $74b4: $ff
	rrca                                             ; $74b5: $0f
	rst $38                                          ; $74b6: $ff
	ccf                                              ; $74b7: $3f
	rst $38                                          ; $74b8: $ff
	rlca                                             ; $74b9: $07
	ld [hl], e                                       ; $74ba: $73
	ld a, [$7f98]                                    ; $74bb: $fa $98 $7f
	rst $38                                          ; $74be: $ff
	cp $ff                                           ; $74bf: $fe $ff
	ld hl, sp-$01                                    ; $74c1: $f8 $ff
	ldh a, [$7b]                                     ; $74c3: $f0 $7b
	ld b, b                                          ; $74c5: $40
	sbc [hl]                                         ; $74c6: $9e
	db $fc                                           ; $74c7: $fc
	ld a, e                                          ; $74c8: $7b
	ld a, [$e09e]                                    ; $74c9: $fa $9e $e0
	ld a, e                                          ; $74cc: $7b
	ld [hl], $7b                                     ; $74cd: $36 $7b
	sbc $9a                                          ; $74cf: $de $9a
	cp $07                                           ; $74d1: $fe $07
	ld hl, sp+$1f                                    ; $74d3: $f8 $1f
	ldh [rPCM34], a                                  ; $74d5: $e0 $77
	call nc, $0399                                   ; $74d7: $d4 $99 $03
	db $fc                                           ; $74da: $fc
	rrca                                             ; $74db: $0f
	ldh a, [$3f]                                     ; $74dc: $f0 $3f
	ret nz                                           ; $74de: $c0

	ld [hl], a                                       ; $74df: $77
	sbc h                                            ; $74e0: $9c
	sbc h                                            ; $74e1: $9c
	ld sp, hl                                        ; $74e2: $f9
	ld b, $7f                                        ; $74e3: $06 $7f
	ld [hl], a                                       ; $74e5: $77
	push hl                                          ; $74e6: $e5
	ld a, e                                          ; $74e7: $7b
	or $9b                                           ; $74e8: $f6 $9b
	pop af                                           ; $74ea: $f1
	ld c, $cf                                        ; $74eb: $0e $cf
	jr nc, jr_04f_7566                               ; $74ed: $30 $77

	db $ec                                           ; $74ef: $ec
	ld a, a                                          ; $74f0: $7f
	cp $9b                                           ; $74f1: $fe $9b
	ld hl, sp+$07                                    ; $74f3: $f8 $07
	rst JumpTable                                          ; $74f5: $c7
	jr c, jr_04f_7567                                ; $74f6: $38 $6f

	or $77                                           ; $74f8: $f6 $77
	cp $7f                                           ; $74fa: $fe $7f
	adc $5f                                          ; $74fc: $ce $5f
	ld l, $73                                        ; $74fe: $2e $73
	cp $7f                                           ; $7500: $fe $7f
	sub a                                            ; $7502: $97
	ld e, a                                          ; $7503: $5f
	ld e, $8f                                        ; $7504: $1e $8f
	nop                                              ; $7506: $00
	xor a                                            ; $7507: $af
	nop                                              ; $7508: $00
	rlca                                             ; $7509: $07
	rst $38                                          ; $750a: $ff
	jp $c1ff                                         ; $750b: $c3 $ff $c1


	ccf                                              ; $750e: $3f
	ldh [$1f], a                                     ; $750f: $e0 $1f
	ldh a, [rIF]                                     ; $7511: $f0 $0f
	db $fc                                           ; $7513: $fc
	inc bc                                           ; $7514: $03
	cp $7b                                           ; $7515: $fe $7b
	db $e4                                           ; $7517: $e4
	ld a, a                                          ; $7518: $7f
	pop de                                           ; $7519: $d1
	ld a, a                                          ; $751a: $7f
	adc b                                            ; $751b: $88
	ld a, a                                          ; $751c: $7f
	adc h                                            ; $751d: $8c
	sbc [hl]                                         ; $751e: $9e
	ld a, [hl]                                       ; $751f: $7e
	ld a, e                                          ; $7520: $7b
	ld a, h                                          ; $7521: $7c
	sbc [hl]                                         ; $7522: $9e
	rra                                              ; $7523: $1f
	ld a, e                                          ; $7524: $7b
	ld [hl], h                                       ; $7525: $74
	sbc [hl]                                         ; $7526: $9e
	add e                                            ; $7527: $83
	ld h, a                                          ; $7528: $67
	ld sp, $b26a                                     ; $7529: $31 $6a $b2
	ld a, a                                          ; $752c: $7f
	ldh [c], a                                       ; $752d: $e2
	ld a, [hl]                                       ; $752e: $7e
	cp b                                             ; $752f: $b8
	ld e, [hl]                                       ; $7530: $5e
	and b                                            ; $7531: $a0
	ld [hl], a                                       ; $7532: $77

Call_04f_7533:
	cp $6f                                           ; $7533: $fe $6f
	jr nc, jr_04f_757e                               ; $7535: $30 $47

	ldh a, [$7f]                                     ; $7537: $f0 $7f
	db $fc                                           ; $7539: $fc
	halt                                             ; $753a: $76
	sub h                                            ; $753b: $94
	ld a, a                                          ; $753c: $7f
	or c                                             ; $753d: $b1
	ld a, a                                          ; $753e: $7f
	cp $8a                                           ; $753f: $fe $8a
	db $d3                                           ; $7541: $d3
	nop                                              ; $7542: $00
	ld l, b                                          ; $7543: $68
	add b                                            ; $7544: $80
	ld d, l                                          ; $7545: $55
	add b                                            ; $7546: $80
	ld l, d                                          ; $7547: $6a
	add b                                            ; $7548: $80
	ld [hl], l                                       ; $7549: $75
	add b                                            ; $754a: $80
	ld a, [hl]                                       ; $754b: $7e
	add b                                            ; $754c: $80
	ccf                                              ; $754d: $3f
	ret nz                                           ; $754e: $c0

	ld a, a                                          ; $754f: $7f
	add b                                            ; $7550: $80
	pop bc                                           ; $7551: $c1
	nop                                              ; $7552: $00
	ld a, [bc]                                       ; $7553: $0a
	nop                                              ; $7554: $00
	ld d, l                                          ; $7555: $55
	ld a, e                                          ; $7556: $7b
	adc b                                            ; $7557: $88
	sub e                                            ; $7558: $93
	ld a, [hl]                                       ; $7559: $7e
	ld bc, $03fc                                     ; $755a: $01 $fc $03
	db $fc                                           ; $755d: $fc
	inc bc                                           ; $755e: $03
	ld hl, sp+$07                                    ; $755f: $f8 $07
	ld l, d                                          ; $7561: $6a
	dec d                                            ; $7562: $15
	push de                                          ; $7563: $d5
	ld a, [hl+]                                      ; $7564: $2a
	ld [hl], a                                       ; $7565: $77

jr_04f_7566:
	ret nc                                           ; $7566: $d0

jr_04f_7567:
	ld a, [hl]                                       ; $7567: $7e
	ld hl, sp+$2f                                    ; $7568: $f8 $2f
	or b                                             ; $756a: $b0
	sbc l                                            ; $756b: $9d
	xor b                                            ; $756c: $a8
	ld d, a                                          ; $756d: $57
	ld l, [hl]                                       ; $756e: $6e
	ldh [$66], a                                     ; $756f: $e0 $66
	call c, $d65e                                    ; $7571: $dc $5e $d6
	ld a, a                                          ; $7574: $7f
	ld e, h                                          ; $7575: $5c
	halt                                             ; $7576: $76
	sbc $df                                          ; $7577: $de $df
	rst $38                                          ; $7579: $ff
	halt                                             ; $757a: $76
	sbc $7f                                          ; $757b: $de $7f
	ld h, [hl]                                       ; $757d: $66

jr_04f_757e:
	ld a, a                                          ; $757e: $7f
	ld h, d                                          ; $757f: $62
	ld l, [hl]                                       ; $7580: $6e
	ld [$d86e], a                                    ; $7581: $ea $6e $d8
	ld [hl], a                                       ; $7584: $77
	sub [hl]                                         ; $7585: $96
	ld a, a                                          ; $7586: $7f
	and d                                            ; $7587: $a2
	sbc e                                            ; $7588: $9b
	di                                               ; $7589: $f3
	inc c                                            ; $758a: $0c
	rst GetHLinHL                                          ; $758b: $cf
	jr nc, jr_04f_7604                               ; $758c: $30 $76

	ldh [$7f], a                                     ; $758e: $e0 $7f
	or $9b                                           ; $7590: $f6 $9b
	db $e3                                           ; $7592: $e3
	inc e                                            ; $7593: $1c
	sbc a                                            ; $7594: $9f
	ld h, b                                          ; $7595: $60
	ld l, [hl]                                       ; $7596: $6e
	sub $9d                                          ; $7597: $d6 $9d
	rst SubAFromBC                                          ; $7599: $e7
	jr jr_04f_75de                                   ; $759a: $18 $42

	xor $03                                          ; $759c: $ee $03
	cp $67                                           ; $759e: $fe $67
	cp $7f                                           ; $75a0: $fe $7f
	rlca                                             ; $75a2: $07
	sbc d                                            ; $75a3: $9a
	rst SubAFromHL                                          ; $75a4: $d7
	nop                                              ; $75a5: $00
	ld d, a                                          ; $75a6: $57
	nop                                              ; $75a7: $00
	xor e                                            ; $75a8: $ab
	ld a, e                                          ; $75a9: $7b
	ld b, b                                          ; $75aa: $40
	sbc h                                            ; $75ab: $9c
	xor d                                            ; $75ac: $aa
	nop                                              ; $75ad: $00
	ld d, c                                          ; $75ae: $51
	ld a, e                                          ; $75af: $7b
	db $fc                                           ; $75b0: $fc
	sbc h                                            ; $75b1: $9c
	ld d, b                                          ; $75b2: $50
	nop                                              ; $75b3: $00
	add b                                            ; $75b4: $80
	ld l, d                                          ; $75b5: $6a
	cp b                                             ; $75b6: $b8
	ld a, a                                          ; $75b7: $7f
	ld e, l                                          ; $75b8: $5d
	ld a, a                                          ; $75b9: $7f
	ld b, c                                          ; $75ba: $41
	ld a, a                                          ; $75bb: $7f
	inc l                                            ; $75bc: $2c
	ld a, a                                          ; $75bd: $7f
	db $e4                                           ; $75be: $e4
	sub l                                            ; $75bf: $95
	dec hl                                           ; $75c0: $2b
	nop                                              ; $75c1: $00
	add c                                            ; $75c2: $81
	ld a, a                                          ; $75c3: $7f
	ret nz                                           ; $75c4: $c0

	ccf                                              ; $75c5: $3f
	ldh a, [rIF]                                     ; $75c6: $f0 $0f
	ld hl, sp+$07                                    ; $75c8: $f8 $07
	halt                                             ; $75ca: $76
	or h                                             ; $75cb: $b4
	ld [hl], a                                       ; $75cc: $77
	cp $7f                                           ; $75cd: $fe $7f
	ld h, h                                          ; $75cf: $64
	ld a, a                                          ; $75d0: $7f
	ld e, d                                          ; $75d1: $5a
	sbc [hl]                                         ; $75d2: $9e
	inc a                                            ; $75d3: $3c
	ld a, c                                          ; $75d4: $79

jr_04f_75d5:
	ld l, b                                          ; $75d5: $68
	ld a, a                                          ; $75d6: $7f
	ld c, [hl]                                       ; $75d7: $4e
	ld a, a                                          ; $75d8: $7f
	ld c, d                                          ; $75d9: $4a
	ld a, a                                          ; $75da: $7f
	db $e4                                           ; $75db: $e4
	ld a, [hl]                                       ; $75dc: $7e
	sbc b                                            ; $75dd: $98

jr_04f_75de:
	ld d, [hl]                                       ; $75de: $56
	or b                                             ; $75df: $b0
	db $dd                                           ; $75e0: $dd
	rst $38                                          ; $75e1: $ff
	ld d, a                                          ; $75e2: $57
	sbc a                                            ; $75e3: $9f
	db $dd                                           ; $75e4: $dd
	rst $38                                          ; $75e5: $ff
	halt                                             ; $75e6: $76

jr_04f_75e7:
	call z, $d67f                                    ; $75e7: $cc $7f $d6
	sbc [hl]                                         ; $75ea: $9e
	ld e, e                                          ; $75eb: $5b
	ld a, e                                          ; $75ec: $7b
	db $fc                                           ; $75ed: $fc
	sbc [hl]                                         ; $75ee: $9e
	cp a                                             ; $75ef: $bf
	ld a, c                                          ; $75f0: $79
	db $fc                                           ; $75f1: $fc
	ld a, a                                          ; $75f2: $7f
	cp $7f                                           ; $75f3: $fe $7f
	ld c, d                                          ; $75f5: $4a
	sbc e                                            ; $75f6: $9b
	ld c, h                                          ; $75f7: $4c
	or e                                             ; $75f8: $b3
	rlca                                             ; $75f9: $07
	ld hl, sp+$77                                    ; $75fa: $f8 $77
	ld a, [hl+]                                      ; $75fc: $2a
	ld a, a                                          ; $75fd: $7f
	cp $7e                                           ; $75fe: $fe $7e
	xor h                                            ; $7600: $ac
	sub a                                            ; $7601: $97
	daa                                              ; $7602: $27
	ld sp, hl                                        ; $7603: $f9

jr_04f_7604:
	jr nc, jr_04f_75d5                               ; $7604: $30 $cf

	jr nz, jr_04f_75e7                               ; $7606: $20 $df

	ld b, b                                          ; $7608: $40
	cp a                                             ; $7609: $bf
	ld l, l                                          ; $760a: $6d
	call nz, $c037                                   ; $760b: $c4 $37 $c0
	ld h, [hl]                                       ; $760e: $66
	sub $7e                                          ; $760f: $d6 $7e
	ld b, h                                          ; $7611: $44
	ld a, [hl]                                       ; $7612: $7e
	ld b, b                                          ; $7613: $40
	halt                                             ; $7614: $76
	db $e4                                           ; $7615: $e4
	ld h, [hl]                                       ; $7616: $66
	sub $7f                                          ; $7617: $d6 $7f
	dec bc                                           ; $7619: $0b
	sbc b                                            ; $761a: $98
	add a                                            ; $761b: $87
	ld hl, sp+$0f                                    ; $761c: $f8 $0f
	ldh a, [$3c]                                     ; $761e: $f0 $3c
	jp Jump_04f_6ac0                                 ; $7620: $c3 $c0 $6a


	ret c                                            ; $7623: $d8

	ld a, a                                          ; $7624: $7f
	ld e, [hl]                                       ; $7625: $5e
	ld a, [hl]                                       ; $7626: $7e
	or $76                                           ; $7627: $f6 $76
	db $ec                                           ; $7629: $ec
	ld [hl], l                                       ; $762a: $75
	cp h                                             ; $762b: $bc
	ld d, l                                          ; $762c: $55
	ret nc                                           ; $762d: $d0

	ld e, a                                          ; $762e: $5f
	or $03                                           ; $762f: $f6 $03
	cp $4a                                           ; $7631: $fe $4a
	db $e4                                           ; $7633: $e4
	ld a, [hl]                                       ; $7634: $7e
	rrca                                             ; $7635: $0f
	sbc h                                            ; $7636: $9c
	ld a, [$d500]                                    ; $7637: $fa $00 $d5
	ld a, e                                          ; $763a: $7b
	or $7f                                           ; $763b: $f6 $7f
	ld hl, sp-$62                                    ; $763d: $f8 $9e
	ld [$de72], a                                    ; $763f: $ea $72 $de
	cpl                                              ; $7642: $2f
	db $fc                                           ; $7643: $fc
	rst $38                                          ; $7644: $ff
	sbc b                                            ; $7645: $98
	ld h, b                                          ; $7646: $60
	add b                                            ; $7647: $80
	adc h                                            ; $7648: $8c
	ldh a, [$fa]                                     ; $7649: $f0 $fa
	db $fc                                           ; $764b: $fc
	inc c                                            ; $764c: $0c
	ld [hl], e                                       ; $764d: $73
	ret                                              ; $764e: $c9


	sbc h                                            ; $764f: $9c
	jr @-$17                                         ; $7650: $18 $e7

	rla                                              ; $7652: $17
	ld a, d                                          ; $7653: $7a
	call z, $c46e                                    ; $7654: $cc $6e $c4
	sbc h                                            ; $7657: $9c
	ld c, e                                          ; $7658: $4b
	ldh a, [$0d]                                     ; $7659: $f0 $0d
	ld a, d                                          ; $765b: $7a
	bit 1, a                                         ; $765c: $cb $4f
	xor d                                            ; $765e: $aa
	sbc d                                            ; $765f: $9a
	sub a                                            ; $7660: $97
	ld hl, sp-$0c                                    ; $7661: $f8 $f4
	rrca                                             ; $7663: $0f
	ld a, [$b476]                                    ; $7664: $fa $76 $b4
	ld h, e                                          ; $7667: $63
	cp $7c                                           ; $7668: $fe $7c
	and $7f                                          ; $766a: $e6 $7f
	ld [$166f], a                                    ; $766c: $ea $6f $16
	sbc d                                            ; $766f: $9a
	ld a, [$d5ff]                                    ; $7670: $fa $ff $d5
	rst $38                                          ; $7673: $ff
	xor d                                            ; $7674: $aa
	ld [hl], e                                       ; $7675: $73
	dec c                                            ; $7676: $0d
	ld [hl], a                                       ; $7677: $77
	ldh a, [$9c]                                     ; $7678: $f0 $9c
	ld d, b                                          ; $767a: $50
	rst $38                                          ; $767b: $ff
	and b                                            ; $767c: $a0
	ld [hl], e                                       ; $767d: $73
	call $cc7a                                       ; $767e: $cd $7a $cc
	ld a, h                                          ; $7681: $7c
	ld l, l                                          ; $7682: $6d
	ld e, d                                          ; $7683: $5a
	add sp, $6e                                      ; $7684: $e8 $6e
	ld a, c                                          ; $7686: $79
	halt                                             ; $7687: $76
	xor b                                            ; $7688: $a8
	ld h, [hl]                                       ; $7689: $66
	call c, $fa6f                                    ; $768a: $dc $6f $fa
	sbc h                                            ; $768d: $9c
	ld d, a                                          ; $768e: $57
	rst $38                                          ; $768f: $ff
	ld a, [bc]                                       ; $7690: $0a
	ld [hl], e                                       ; $7691: $73
	db $ec                                           ; $7692: $ec
	ld h, a                                          ; $7693: $67
	ldh a, [$df]                                     ; $7694: $f0 $df
	rst $38                                          ; $7696: $ff
	sbc h                                            ; $7697: $9c
	xor a                                            ; $7698: $af
	rst $38                                          ; $7699: $ff
	ld d, l                                          ; $769a: $55
	ld a, e                                          ; $769b: $7b
	or $8b                                           ; $769c: $f6 $8b
	pop af                                           ; $769e: $f1
	cp $03                                           ; $769f: $fe $03
	db $fc                                           ; $76a1: $fc
	ld c, $f1                                        ; $76a2: $0e $f1
	rst $38                                          ; $76a4: $ff
	ldh [$ef], a                                     ; $76a5: $e0 $ef
	ldh a, [rIE]                                     ; $76a7: $f0 $ff
	ldh a, [rVBK]                                    ; $76a9: $f0 $4f
	ldh a, [$af]                                     ; $76ab: $f0 $af
	ldh a, [$f3]                                     ; $76ad: $f0 $f3
	inc c                                            ; $76af: $0c
	adc a                                            ; $76b0: $8f

jr_04f_76b1:
	ld [hl], b                                       ; $76b1: $70
	ld l, l                                          ; $76b2: $6d

jr_04f_76b3:
	add $77                                          ; $76b3: $c6 $77
	cp $9e                                           ; $76b5: $fe $9e
	db $fc                                           ; $76b7: $fc
	ld [hl], e                                       ; $76b8: $73
	ld a, [$f893]                                    ; $76b9: $fa $93 $f8
	inc bc                                           ; $76bc: $03
	jp nz, $fe03                                     ; $76bd: $c2 $03 $fe

	inc bc                                           ; $76c0: $03
	add d                                            ; $76c1: $82
	ld a, h                                          ; $76c2: $7c
	ldh [rSB], a                                     ; $76c3: $e0 $01
	nop                                              ; $76c5: $00
	rra                                              ; $76c6: $1f
	ld e, a                                          ; $76c7: $5f
	ld d, h                                          ; $76c8: $54
	sbc c                                            ; $76c9: $99
	rlca                                             ; $76ca: $07
	jr jr_04f_76dc                                   ; $76cb: $18 $0f

	ret c                                            ; $76cd: $d8

	dec bc                                           ; $76ce: $0b
	call c, $d602                                    ; $76cf: $dc $02 $d6
	ld e, d                                          ; $76d2: $5a
	ret nc                                           ; $76d3: $d0

	ld a, [hl]                                       ; $76d4: $7e
	ret c                                            ; $76d5: $d8

	sbc [hl]                                         ; $76d6: $9e
	push af                                          ; $76d7: $f5
	ld c, d                                          ; $76d8: $4a
	ldh [$9e], a                                     ; $76d9: $e0 $9e
	ld d, h                                          ; $76db: $54

jr_04f_76dc:
	ld l, e                                          ; $76dc: $6b
	ld hl, sp+$7d                                    ; $76dd: $f8 $7d
	and d                                            ; $76df: $a2
	sbc h                                            ; $76e0: $9c
	and b                                            ; $76e1: $a0
	nop                                              ; $76e2: $00
	ld b, b                                          ; $76e3: $40
	db $fc                                           ; $76e4: $fc
	sbc h                                            ; $76e5: $9c
	and d                                            ; $76e6: $a2
	nop                                              ; $76e7: $00
	ld b, c                                          ; $76e8: $41
	ld a, c                                          ; $76e9: $79
	sbc d                                            ; $76ea: $9a
	rst FarCall                                          ; $76eb: $f7
	sub [hl]                                         ; $76ec: $96
	ld [hl+], a                                      ; $76ed: $22
	pop bc                                           ; $76ee: $c1
	jr nz, jr_04f_76b1                               ; $76ef: $20 $c0

	jr nz, jr_04f_76b3                               ; $76f1: $20 $c0

	ld l, $c0                                        ; $76f3: $2e $c0
	ld [hl+], a                                      ; $76f5: $22
	ld a, e                                          ; $76f6: $7b
	ld a, [$ac9c]                                    ; $76f7: $fa $9c $ac
	ld b, b                                          ; $76fa: $40
	ldh [$7b], a                                     ; $76fb: $e0 $7b
	inc b                                            ; $76fd: $04
	ld a, l                                          ; $76fe: $7d
	or $67                                           ; $76ff: $f6 $67
	cp $9a                                           ; $7701: $fe $9a
	add d                                            ; $7703: $82
	ld a, l                                          ; $7704: $7d
	add b                                            ; $7705: $80
	ld a, a                                          ; $7706: $7f
	ld c, $73                                        ; $7707: $0e $73
	ld a, [hl+]                                      ; $7709: $2a
	ld a, c                                          ; $770a: $79
	call nc, $fc91                                   ; $770b: $d4 $91 $fc
	ld [de], a                                       ; $770e: $12
	db $ec                                           ; $770f: $ec
	ld h, $c0                                        ; $7710: $26 $c0
	inc h                                            ; $7712: $24
	jp $817f                                         ; $7713: $c3 $7f $81


	xor $f1                                          ; $7716: $ee $f1
	cpl                                              ; $7718: $2f
	pop af                                           ; $7719: $f1
	ld l, $63                                        ; $771a: $2e $63
	db $fc                                           ; $771c: $fc
	halt                                             ; $771d: $76
	ret c                                            ; $771e: $d8

	sbc [hl]                                         ; $771f: $9e
	ld b, b                                          ; $7720: $40
	ld a, c                                          ; $7721: $79
	add h                                            ; $7722: $84
	ld a, a                                          ; $7723: $7f
	call c, $b27d                                    ; $7724: $dc $7d $b2
	sbc l                                            ; $7727: $9d
	dec b                                            ; $7728: $05
	ld a, [$5a74]                                    ; $7729: $fa $74 $5a
	ld [hl], a                                       ; $772c: $77
	jp nc, $0a9d                                     ; $772d: $d2 $9d $0a

	push af                                          ; $7730: $f5
	ld l, h                                          ; $7731: $6c
	ld c, d                                          ; $7732: $4a
	ld a, a                                          ; $7733: $7f
	db $fc                                           ; $7734: $fc
	ld a, a                                          ; $7735: $7f
	db $ec                                           ; $7736: $ec
	ld h, h                                          ; $7737: $64
	ld a, $77                                        ; $7738: $3e $77
	db $fc                                           ; $773a: $fc
	ld a, l                                          ; $773b: $7d
	sub a                                            ; $773c: $97
	sbc l                                            ; $773d: $9d
	ld d, b                                          ; $773e: $50
	xor a                                            ; $773f: $af
	ld e, a                                          ; $7740: $5f
	ldh a, [rPCM34]                                  ; $7741: $f0 $77
	ld c, b                                          ; $7743: $48
	ld [hl], h                                       ; $7744: $74
	ld l, [hl]                                       ; $7745: $6e
	ld e, a                                          ; $7746: $5f
	ldh [$9d], a                                     ; $7747: $e0 $9d
	ld [$7715], a                                    ; $7749: $ea $15 $77
	ret nz                                           ; $774c: $c0

	ld a, l                                          ; $774d: $7d
	ld [hl], d                                       ; $774e: $72
	ld a, h                                          ; $774f: $7c
	ld b, d                                          ; $7750: $42
	ld a, a                                          ; $7751: $7f
	ret c                                            ; $7752: $d8

	ld a, a                                          ; $7753: $7f
	add sp, -$67                                     ; $7754: $e8 $99
	ld d, h                                          ; $7756: $54
	xor e                                            ; $7757: $ab
	xor d                                            ; $7758: $aa
	ld d, l                                          ; $7759: $55
	rrca                                             ; $775a: $0f
	ldh a, [rVBK]                                    ; $775b: $f0 $4f
	cp $9a                                           ; $775d: $fe $9a
	or $01                                           ; $775f: $f6 $01
	ldh a, [c]                                       ; $7761: $f2
	inc b                                            ; $7762: $04
	ldh a, [rOCPD]                                   ; $7763: $f0 $6b
	cp $9a                                           ; $7765: $fe $9a
	ldh [rDIV], a                                    ; $7767: $e0 $04
	ret nc                                           ; $7769: $d0

	inc b                                            ; $776a: $04
	nop                                              ; $776b: $00
	ld a, e                                          ; $776c: $7b
	ld c, l                                          ; $776d: $4d
	sub [hl]                                         ; $776e: $96
	ld h, h                                          ; $776f: $64
	ld e, $fe                                        ; $7770: $1e $fe
	ld a, [hl]                                       ; $7772: $7e
	sbc $7e                                          ; $7773: $de $7e
	and b                                            ; $7775: $a0
	ld e, [hl]                                       ; $7776: $5e

Call_04f_7777:
	sbc [hl]                                         ; $7777: $9e
	ld a, e                                          ; $7778: $7b
	dec e                                            ; $7779: $1d
	sbc l                                            ; $777a: $9d
	dec hl                                           ; $777b: $2b
	inc e                                            ; $777c: $1c
	ld c, a                                          ; $777d: $4f
	cp $1e                                           ; $777e: $fe $1e
	ret nc                                           ; $7780: $d0

	ld h, [hl]                                       ; $7781: $66
	call z, $9c7d                                    ; $7782: $cc $7d $9c
	ld d, [hl]                                       ; $7785: $56
	ret nc                                           ; $7786: $d0

	sbc [hl]                                         ; $7787: $9e
	xor b                                            ; $7788: $a8
	ld a, b                                          ; $7789: $78
	ld a, d                                          ; $778a: $7a
	halt                                             ; $778b: $76
	call nc, $dc56                                   ; $778c: $d4 $56 $dc
	push hl                                          ; $778f: $e5
	sbc b                                            ; $7790: $98
	or c                                             ; $7791: $b1
	ld b, b                                          ; $7792: $40
	xor a                                            ; $7793: $af
	ld d, b                                          ; $7794: $50
	adc a                                            ; $7795: $8f
	nop                                              ; $7796: $00
	rrca                                             ; $7797: $0f
	ld a, e                                          ; $7798: $7b
	cp $80                                           ; $7799: $fe $80
	rlc h                                            ; $779b: $cb $04
	ld c, $01                                        ; $779d: $0e $01
	dec hl                                           ; $779f: $2b
	inc b                                            ; $77a0: $04
	dec a                                            ; $77a1: $3d
	jp nz, $01fe                                     ; $77a2: $c2 $fe $01

	db $fd                                           ; $77a5: $fd
	ld [bc], a                                       ; $77a6: $02
	db $e4                                           ; $77a7: $e4
	dec de                                           ; $77a8: $1b
	ld a, [SetWramBankAStoringCurrInHighByteInStackAfterReturn]                                    ; $77a9: $fa $05 $08
	add a                                            ; $77ac: $87
	ld [$0807], sp                                   ; $77ad: $08 $07 $08
	rlca                                             ; $77b0: $07
	inc h                                            ; $77b1: $24
	jp Jump_04f_40ae                                 ; $77b2: $c3 $ae $40


	ld a, [hl-]                                      ; $77b5: $3a
	call nz, Call_04f_7c82                           ; $77b6: $c4 $82 $7c
	ld [bc], a                                       ; $77b9: $02
	sbc l                                            ; $77ba: $9d
	db $fc                                           ; $77bb: $fc
	ld bc, $8d7b                                     ; $77bc: $01 $7b $8d
	ld a, [hl]                                       ; $77bf: $7e
	or h                                             ; $77c0: $b4
	ld a, [hl]                                       ; $77c1: $7e
	adc $9d                                          ; $77c2: $ce $9d
	xor [hl]                                         ; $77c4: $ae
	ld [hl], c                                       ; $77c5: $71
	ld [hl], a                                       ; $77c6: $77
	cp $9e                                           ; $77c7: $fe $9e
	xor a                                            ; $77c9: $af
	ld a, e                                          ; $77ca: $7b
	cp $7e                                           ; $77cb: $fe $7e
	ret nz                                           ; $77cd: $c0

	adc l                                            ; $77ce: $8d
	rst AddAOntoHL                                          ; $77cf: $ef
	pop af                                           ; $77d0: $f1
	dec b                                            ; $77d1: $05
	ld a, [$f50a]                                    ; $77d2: $fa $0a $f5
	dec d                                            ; $77d5: $15
	ld [$f50a], a                                    ; $77d6: $ea $0a $f5
	add sp, -$01                                     ; $77d9: $e8 $ff
	call nc, $eaff                                   ; $77db: $d4 $ff $ea
	rst $38                                          ; $77de: $ff
	push af                                          ; $77df: $f5
	rst $38                                          ; $77e0: $ff
	halt                                             ; $77e1: $76
	ld hl, sp-$63                                    ; $77e2: $f8 $9d
	ld d, a                                          ; $77e4: $57
	xor b                                            ; $77e5: $a8
	halt                                             ; $77e6: $76
	add sp, $74                                      ; $77e7: $e8 $74
	ld l, $7f                                        ; $77e9: $2e $7f
	db $fc                                           ; $77eb: $fc
	ld h, l                                          ; $77ec: $65
	call nc, Call_04f_6c60                           ; $77ed: $d4 $60 $6c
	ld l, e                                          ; $77f0: $6b
	rst FarCall                                          ; $77f1: $f7
	ld h, a                                          ; $77f2: $67
	ldh a, [$7f]                                     ; $77f3: $f0 $7f
	sub h                                            ; $77f5: $94
	ld a, c                                          ; $77f6: $79
	ld [hl-], a                                      ; $77f7: $32
	ld [hl], e                                       ; $77f8: $73
	ldh a, [$7f]                                     ; $77f9: $f0 $7f
	ld sp, hl                                        ; $77fb: $f9
	sbc h                                            ; $77fc: $9c
	ld [bc], a                                       ; $77fd: $02
	rst $38                                          ; $77fe: $ff
	dec b                                            ; $77ff: $05
	ld [hl], e                                       ; $7800: $73
	ret nz                                           ; $7801: $c0

	ld a, a                                          ; $7802: $7f
	db $fc                                           ; $7803: $fc
	ld a, [hl]                                       ; $7804: $7e
	call nz, Call_04f_727d                           ; $7805: $c4 $7d $72
	ld a, [hl]                                       ; $7808: $7e
	and c                                            ; $7809: $a1
	ld a, l                                          ; $780a: $7d
	ld a, [hl]                                       ; $780b: $7e
	ld a, l                                          ; $780c: $7d
	ld [hl+], a                                      ; $780d: $22
	ld a, [hl]                                       ; $780e: $7e
	adc $7d                                          ; $780f: $ce $7d
	sub b                                            ; $7811: $90
	halt                                             ; $7812: $76
	ret z                                            ; $7813: $c8

	ld a, l                                          ; $7814: $7d
	add [hl]                                         ; $7815: $86
	ld a, l                                          ; $7816: $7d
	add b                                            ; $7817: $80
	ld [hl], a                                       ; $7818: $77
	cp $76                                           ; $7819: $fe $76
	call z, $a09a                                    ; $781b: $cc $9a $a0
	inc b                                            ; $781e: $04
	ld d, h                                          ; $781f: $54
	nop                                              ; $7820: $00
	and h                                            ; $7821: $a4
	ld a, e                                          ; $7822: $7b
	inc d                                            ; $7823: $14
	ld a, a                                          ; $7824: $7f
	db $fc                                           ; $7825: $fc
	sbc [hl]                                         ; $7826: $9e
	call nc, $16f0                                   ; $7827: $d4 $f0 $16
	ret nz                                           ; $782a: $c0

	halt                                             ; $782b: $76
	call z, $9c75                                    ; $782c: $cc $75 $9c
	ld d, [hl]                                       ; $782f: $56
	call z, $d07e                                    ; $7830: $cc $7e $d0
	ld l, [hl]                                       ; $7833: $6e
	call z, $d076                                    ; $7834: $cc $76 $d0
	ld [bc], a                                       ; $7837: $02
	call z, $80ee                                    ; $7838: $cc $ee $80
	ret z                                            ; $783b: $c8

	rlca                                             ; $783c: $07
	nop                                              ; $783d: $00
	rrca                                             ; $783e: $0f
	ld h, b                                          ; $783f: $60
	rra                                              ; $7840: $1f
	add c                                            ; $7841: $81
	ld a, [hl]                                       ; $7842: $7e
	rra                                              ; $7843: $1f
	ldh [$e7], a                                     ; $7844: $e0 $e7
	rra                                              ; $7846: $1f
	ld a, [$e0fc]                                    ; $7847: $fa $fc $e0
	ldh a, [$e0]                                     ; $784a: $f0 $e0
	rra                                              ; $784c: $1f
	inc bc                                           ; $784d: $03
	db $fc                                           ; $784e: $fc
	ccf                                              ; $784f: $3f
	pop bc                                           ; $7850: $c1
	rst JumpTable                                          ; $7851: $c7
	rrca                                             ; $7852: $0f
	cp d                                             ; $7853: $ba
	ld a, h                                          ; $7854: $7c
	and l                                            ; $7855: $a5
	jp nz, $053a                                     ; $7856: $c2 $3a $05

	ld [hl], l                                       ; $7859: $75
	sub h                                            ; $785a: $94
	ld a, [bc]                                       ; $785b: $0a
	ld l, a                                          ; $785c: $6f
	sbc a                                            ; $785d: $9f
	ld sp, hl                                        ; $785e: $f9
	ld a, [hl]                                       ; $785f: $7e
	adc $f1                                          ; $7860: $ce $f1
	ld [hl], b                                       ; $7862: $70
	adc a                                            ; $7863: $8f
	ld l, d                                          ; $7864: $6a
	dec d                                            ; $7865: $15
	ld [hl], l                                       ; $7866: $75
	ld [$7f7f], a                                    ; $7867: $ea $7f $7f
	sbc e                                            ; $786a: $9b
	or c                                             ; $786b: $b1
	rst GetHLinHL                                          ; $786c: $cf
	pop bc                                           ; $786d: $c1
	ccf                                              ; $786e: $3f
	ld h, h                                          ; $786f: $64
	ld b, e                                          ; $7870: $43
	ld [hl], a                                       ; $7871: $77
	ld l, e                                          ; $7872: $6b
	ld a, h                                          ; $7873: $7c
	ld c, d                                          ; $7874: $4a
	sbc [hl]                                         ; $7875: $9e
	db $fc                                           ; $7876: $fc
	ld a, e                                          ; $7877: $7b
	db $fc                                           ; $7878: $fc
	ld a, [hl]                                       ; $7879: $7e
	ret z                                            ; $787a: $c8

	ld [hl], b                                       ; $787b: $70
	ld b, a                                          ; $787c: $47
	ld e, e                                          ; $787d: $5b
	cp $03                                           ; $787e: $fe $03
	ldh a, [rOCPD]                                   ; $7880: $f0 $6b
	ldh a, [$7e]                                     ; $7882: $f0 $7e
	call z, $c86e                                    ; $7884: $cc $6e $c8
	ld h, a                                          ; $7887: $67
	ldh a, [$d5]                                     ; $7888: $f0 $d5
	rst $38                                          ; $788a: $ff
	ld [hl], a                                       ; $788b: $77
	ldh a, [rOCPS]                                   ; $788c: $f0 $6a
	ret                                              ; $788e: $c9


	ld [hl], e                                       ; $788f: $73
	cp $77                                           ; $7890: $fe $77
	ldh a, [hDisp1_WX]                                     ; $7892: $f0 $96
	ld h, h                                          ; $7894: $64
	add b                                            ; $7895: $80
	inc b                                            ; $7896: $04
	ldh a, [$03]                                     ; $7897: $f0 $03
	di                                               ; $7899: $f3
	ld bc, $00f7                                     ; $789a: $01 $f7 $00
	ld l, c                                          ; $789d: $69
	ld a, e                                          ; $789e: $7b
	ei                                               ; $789f: $fb
	rst SubAFromDE                                          ; $78a0: $df
	add b                                            ; $78a1: $80
	ld a, $c0                                        ; $78a2: $3e $c0
	sbc c                                            ; $78a4: $99
	jr z, @+$21                                      ; $78a5: $28 $1f

	add hl, hl                                       ; $78a7: $29
	rra                                              ; $78a8: $1f
	jr z, jr_04f_78ca                                ; $78a9: $28 $1f

	ld [hl], l                                       ; $78ab: $75
	sbc h                                            ; $78ac: $9c
	sbc [hl]                                         ; $78ad: $9e
	ld a, [$fc73]                                    ; $78ae: $fa $73 $fc
	ld a, [hl]                                       ; $78b1: $7e
	ret z                                            ; $78b2: $c8

	sbc e                                            ; $78b3: $9b
	ld a, [hl-]                                      ; $78b4: $3a
	ret nz                                           ; $78b5: $c0

	rlca                                             ; $78b6: $07
	ld hl, sp+$5d                                    ; $78b7: $f8 $5d
	sbc b                                            ; $78b9: $98
	ld a, l                                          ; $78ba: $7d
	sbc h                                            ; $78bb: $9c
	ld h, h                                          ; $78bc: $64
	ld l, h                                          ; $78bd: $6c
	ldh [$c5], a                                     ; $78be: $e0 $c5
	adc l                                            ; $78c0: $8d
	add e                                            ; $78c1: $83
	nop                                              ; $78c2: $00
	inc b                                            ; $78c3: $04
	inc bc                                           ; $78c4: $03
	jr nc, jr_04f_78d6                               ; $78c5: $30 $0f

	adc a                                            ; $78c7: $8f
	ld [hl], b                                       ; $78c8: $70
	ld a, [hl]                                       ; $78c9: $7e

jr_04f_78ca:
	add c                                            ; $78ca: $81
	db $fd                                           ; $78cb: $fd
	ld [bc], a                                       ; $78cc: $02
	ld a, [$f505]                                    ; $78cd: $fa $05 $f5
	ld a, [bc]                                       ; $78d0: $0a
	ld a, [hl+]                                      ; $78d1: $2a
	push de                                          ; $78d2: $d5
	ld e, h                                          ; $78d3: $5c
	or d                                             ; $78d4: $b2
	ld [hl], a                                       ; $78d5: $77

jr_04f_78d6:
	db $fc                                           ; $78d6: $fc
	ld a, h                                          ; $78d7: $7c
	ld a, $74                                        ; $78d8: $3e $74
	ld l, $76                                        ; $78da: $2e $76
	call nz, $b274                                   ; $78dc: $c4 $74 $b2
	sbc l                                            ; $78df: $9d
	ld d, l                                          ; $78e0: $55
	xor e                                            ; $78e1: $ab
	ld a, b                                          ; $78e2: $78
	ld [hl], $92                                     ; $78e3: $36 $92
	rst $38                                          ; $78e5: $ff
	inc b                                            ; $78e6: $04
	rst $38                                          ; $78e7: $ff
	ld a, [bc]                                       ; $78e8: $0a
	db $fd                                           ; $78e9: $fd
	rla                                              ; $78ea: $17
	ld hl, sp+$67                                    ; $78eb: $f8 $67
	ld hl, sp-$31                                    ; $78ed: $f8 $cf
	ldh a, [$9f]                                     ; $78ef: $f0 $9f
	ldh [$6e], a                                     ; $78f1: $e0 $6e
	ldh a, [c]                                       ; $78f3: $f2
	sbc c                                            ; $78f4: $99
	ld de, $81ee                                     ; $78f5: $11 $ee $81
	ld a, [hl]                                       ; $78f8: $7e
	adc b                                            ; $78f9: $88
	ld [hl], a                                       ; $78fa: $77
	ld [hl], a                                       ; $78fb: $77
	call nc, $fe6f                                   ; $78fc: $d4 $6f $fe

Jump_04f_78ff:
	sub a                                            ; $78ff: $97
	sbc b                                            ; $7900: $98
	ld h, a                                          ; $7901: $67
	add b                                            ; $7902: $80
	ld a, a                                          ; $7903: $7f
	ld b, a                                          ; $7904: $47
	cp b                                             ; $7905: $b8
	rst JumpTable                                          ; $7906: $c7
	jr c, jr_04f_7980                                ; $7907: $38 $77

	xor $7d                                          ; $7909: $ee $7d
	call nz, $cc7f                                   ; $790b: $c4 $7f $cc
	ld l, a                                          ; $790e: $6f
	jp hl                                            ; $790f: $e9


	ld a, h                                          ; $7910: $7c
	ld b, d                                          ; $7911: $42
	ld a, l                                          ; $7912: $7d
	ld [hl], d                                       ; $7913: $72
	ld a, a                                          ; $7914: $7f
	ld sp, hl                                        ; $7915: $f9

jr_04f_7916:
	sbc l                                            ; $7916: $9d
	add e                                            ; $7917: $83
	ld a, h                                          ; $7918: $7c
	ld h, [hl]                                       ; $7919: $66
	cp e                                             ; $791a: $bb
	sbc [hl]                                         ; $791b: $9e
	ei                                               ; $791c: $fb
	ld a, e                                          ; $791d: $7b
	inc l                                            ; $791e: $2c
	ld a, a                                          ; $791f: $7f
	ld sp, hl                                        ; $7920: $f9
	sbc e                                            ; $7921: $9b
	inc a                                            ; $7922: $3c
	jp $19e6                                         ; $7923: $c3 $e6 $19


	ld e, [hl]                                       ; $7926: $5e
	and a                                            ; $7927: $a7
	ld a, a                                          ; $7928: $7f
	db $fd                                           ; $7929: $fd
	sbc e                                            ; $792a: $9b
	ld h, b                                          ; $792b: $60
	sbc a                                            ; $792c: $9f
	jr jr_04f_7916                                   ; $792d: $18 $e7

	ld d, a                                          ; $792f: $57
	ldh a, [$7f]                                     ; $7930: $f0 $7f
	cp $93                                           ; $7932: $fe $93
	jr @+$01                                         ; $7934: $18 $ff

	adc $3f                                          ; $7936: $ce $3f
	rst SubAFromBC                                          ; $7938: $e7
	rra                                              ; $7939: $1f
	ldh [$1f], a                                     ; $793a: $e0 $1f
	ret nz                                           ; $793c: $c0

	ccf                                              ; $793d: $3f
	ret nz                                           ; $793e: $c0

	ccf                                              ; $793f: $3f
	ld h, h                                          ; $7940: $64
	ld b, e                                          ; $7941: $43
	sub a                                            ; $7942: $97
	add h                                            ; $7943: $84
	ldh a, [$e4]                                     ; $7944: $f0 $e4
	ldh a, [$74]                                     ; $7946: $f0 $74
	ldh a, [$5c]                                     ; $7948: $f0 $5c
	cp b                                             ; $794a: $b8
	pop af                                           ; $794b: $f1
	ld a, [hl]                                       ; $794c: $7e
	adc $6e                                          ; $794d: $ce $6e
	ret z                                            ; $794f: $c8

	ld h, a                                          ; $7950: $67
	db $fc                                           ; $7951: $fc
	ld a, a                                          ; $7952: $7f
	jp nz, $1098                                     ; $7953: $c2 $98 $10

	rst $38                                          ; $7956: $ff
	ld l, d                                          ; $7957: $6a
	rst $38                                          ; $7958: $ff
	push de                                          ; $7959: $d5
	rst $38                                          ; $795a: $ff
	ld a, d                                          ; $795b: $7a
	ld a, d                                          ; $795c: $7a
	inc e                                            ; $795d: $1c
	ld a, a                                          ; $795e: $7f
	db $fc                                           ; $795f: $fc
	sbc c                                            ; $7960: $99
	db $fd                                           ; $7961: $fd
	rst $38                                          ; $7962: $ff
	jr @-$1e                                         ; $7963: $18 $e0

	inc bc                                           ; $7965: $03
	db $fc                                           ; $7966: $fc
	ld [hl], a                                       ; $7967: $77
	xor h                                            ; $7968: $ac
	sbc h                                            ; $7969: $9c
	and b                                            ; $796a: $a0
	rst $38                                          ; $796b: $ff
	ld d, b                                          ; $796c: $50
	ld a, e                                          ; $796d: $7b
	db $fc                                           ; $796e: $fc
	ld [hl], a                                       ; $796f: $77
	sbc a                                            ; $7970: $9f
	rst $38                                          ; $7971: $ff
	sbc c                                            ; $7972: $99
	jr nc, @-$3e                                     ; $7973: $30 $c0

	inc bc                                           ; $7975: $03
	db $fc                                           ; $7976: $fc
	xor b                                            ; $7977: $a8
	ld d, a                                          ; $7978: $57
	ld l, a                                          ; $7979: $6f
	db $10                                           ; $797a: $10
	ld sp, hl                                        ; $797b: $f9
	ld a, a                                          ; $797c: $7f
	ret c                                            ; $797d: $d8

	sbc e                                            ; $797e: $9b
	pop hl                                           ; $797f: $e1

jr_04f_7980:
	ld e, $fe                                        ; $7980: $1e $fe
	ld bc, $507b                                     ; $7982: $01 $7b $50
	ld hl, sp+$7f                                    ; $7985: $f8 $7f
	push af                                          ; $7987: $f5
	ld a, a                                          ; $7988: $7f
	db $ec                                           ; $7989: $ec
	sbc l                                            ; $798a: $9d
	db $e3                                           ; $798b: $e3
	inc e                                            ; $798c: $1c
	pop af                                           ; $798d: $f1
	sbc e                                            ; $798e: $9b
	ld [$f515], a                                    ; $798f: $ea $15 $f5
	ld a, [bc]                                       ; $7992: $0a
	ld l, a                                          ; $7993: $6f
	db $fc                                           ; $7994: $fc
	sbc l                                            ; $7995: $9d
	push de                                          ; $7996: $d5
	ld a, [hl+]                                      ; $7997: $2a
	ld [hl], a                                       ; $7998: $77
	db $fc                                           ; $7999: $fc
	ld e, [hl]                                       ; $799a: $5e
	call nz, $d07e                                   ; $799b: $c4 $7e $d0
	add a                                            ; $799e: $87
	xor c                                            ; $799f: $a9
	ld d, a                                          ; $79a0: $57
	ld d, [hl]                                       ; $79a1: $56
	xor a                                            ; $79a2: $af
	xor e                                            ; $79a3: $ab
	ld d, a                                          ; $79a4: $57
	ld d, l                                          ; $79a5: $55
	xor [hl]                                         ; $79a6: $ae
	sbc d                                            ; $79a7: $9a
	ld a, l                                          ; $79a8: $7d
	dec [hl]                                         ; $79a9: $35
	ld a, [$f46b]                                    ; $79aa: $fa $6b $f4
	sub l                                            ; $79ad: $95
	ld [$f40b], a                                    ; $79ae: $ea $0b $f4
	dec b                                            ; $79b1: $05
	ld a, [$c13e]                                    ; $79b2: $fa $3e $c1
	ld a, [hl]                                       ; $79b5: $7e
	add c                                            ; $79b6: $81
	ld [hl], h                                       ; $79b7: $74
	adc [hl]                                         ; $79b8: $8e
	ld a, a                                          ; $79b9: $7f
	db $fc                                           ; $79ba: $fc
	ld l, a                                          ; $79bb: $6f
	cp $7f                                           ; $79bc: $fe $7f

Call_04f_79be:
	ld a, [hl]                                       ; $79be: $7e
	ld a, a                                          ; $79bf: $7f
	add h                                            ; $79c0: $84
	sub e                                            ; $79c1: $93
	pop bc                                           ; $79c2: $c1
	ld a, $02                                        ; $79c3: $3e $02
	db $fd                                           ; $79c5: $fd
	ld b, $f9                                        ; $79c6: $06 $f9
	ld a, [hl]                                       ; $79c8: $7e
	add c                                            ; $79c9: $81
	ld [$08f7], sp                                   ; $79ca: $08 $f7 $08
	rst FarCall                                          ; $79cd: $f7
	ld e, l                                          ; $79ce: $5d
	sbc [hl]                                         ; $79cf: $9e
	sbc l                                            ; $79d0: $9d
	ld l, a                                          ; $79d1: $6f
	sub b                                            ; $79d2: $90
	ld h, h                                          ; $79d3: $64
	ld d, b                                          ; $79d4: $50
	ld a, e                                          ; $79d5: $7b
	add hl, bc                                       ; $79d6: $09
	sbc [hl]                                         ; $79d7: $9e
	ret nz                                           ; $79d8: $c0

	ld [hl], h                                       ; $79d9: $74
	jr c, jr_04f_7a5b                                ; $79da: $38 $7f

	db $fc                                           ; $79dc: $fc
	ld a, a                                          ; $79dd: $7f
	ld hl, sp+$75                                    ; $79de: $f8 $75
	ld hl, sp+$6f                                    ; $79e0: $f8 $6f
	db $fc                                           ; $79e2: $fc
	ld l, l                                          ; $79e3: $6d
	add sp, -$66                                     ; $79e4: $e8 $9a
	xor a                                            ; $79e6: $af
	nop                                              ; $79e7: $00
	ld d, a                                          ; $79e8: $57
	nop                                              ; $79e9: $00
	xor e                                            ; $79ea: $ab
	ld a, c                                          ; $79eb: $79
	db $ec                                           ; $79ec: $ec
	ld h, a                                          ; $79ed: $67
	db $fc                                           ; $79ee: $fc
	halt                                             ; $79ef: $76
	xor d                                            ; $79f0: $aa
	ld a, a                                          ; $79f1: $7f
	ld [$ca7d], a                                    ; $79f2: $ea $7d $ca
	ld [hl], h                                       ; $79f5: $74
	sub h                                            ; $79f6: $94
	ld [hl], a                                       ; $79f7: $77
	cp $76                                           ; $79f8: $fe $76
	call z, $367f                                    ; $79fa: $cc $7f $36
	adc a                                            ; $79fd: $8f
	ret nz                                           ; $79fe: $c0

	ld a, $43                                        ; $79ff: $3e $43
	jr nc, @+$03                                     ; $7a01: $30 $01

	ld a, $a1                                        ; $7a03: $3e $a1
	ld e, $f1                                        ; $7a05: $1e $f1
	ld c, $43                                        ; $7a07: $0e $43
	cp h                                             ; $7a09: $bc
	ld b, d                                          ; $7a0a: $42
	cp l                                             ; $7a0b: $bd
	ret nz                                           ; $7a0c: $c0

	ccf                                              ; $7a0d: $3f
	ld [hl], a                                       ; $7a0e: $77
	push hl                                          ; $7a0f: $e5
	ld a, a                                          ; $7a10: $7f
	adc b                                            ; $7a11: $88
	ld a, a                                          ; $7a12: $7f
	cp $7e                                           ; $7a13: $fe $7e
	ld [hl], h                                       ; $7a15: $74
	ld [hl], a                                       ; $7a16: $77
	jr z, @-$6b                                      ; $7a17: $28 $93

	jr nz, @-$3e                                     ; $7a19: $20 $c0

	ld [$04f0], sp                                   ; $7a1b: $08 $f0 $04
	ld hl, sp+$01                                    ; $7a1e: $f8 $01
	cp $80                                           ; $7a20: $fe $80
	ld a, a                                          ; $7a22: $7f
	ret nz                                           ; $7a23: $c0

	ccf                                              ; $7a24: $3f
	halt                                             ; $7a25: $76
	ret nz                                           ; $7a26: $c0

	ld h, a                                          ; $7a27: $67
	cp $9b                                           ; $7a28: $fe $9b
	ld l, h                                          ; $7a2a: $6c
	sbc a                                            ; $7a2b: $9f
	ld l, $df                                        ; $7a2c: $2e $df
	ld l, [hl]                                       ; $7a2e: $6e
	ret z                                            ; $7a2f: $c8

	sbc h                                            ; $7a30: $9c
	ld [hl], l                                       ; $7a31: $75
	rst $38                                          ; $7a32: $ff
	jr z, jr_04f_7aaf                                ; $7a33: $28 $7a

	ret nc                                           ; $7a35: $d0

	ld l, a                                          ; $7a36: $6f
	xor l                                            ; $7a37: $ad
	ld a, e                                          ; $7a38: $7b
	ret c                                            ; $7a39: $d8

	sbc l                                            ; $7a3a: $9d
	rst $38                                          ; $7a3b: $ff
	ld b, b                                          ; $7a3c: $40
	ld [hl], e                                       ; $7a3d: $73
	ld hl, sp+$7f                                    ; $7a3e: $f8 $7f
	ld c, d                                          ; $7a40: $4a
	ld a, a                                          ; $7a41: $7f
	db $fc                                           ; $7a42: $fc
	ld d, l                                          ; $7a43: $55
	call nc, $fc77                                   ; $7a44: $d4 $77 $fc
	ld a, [hl]                                       ; $7a47: $7e
	inc e                                            ; $7a48: $1c
	sub l                                            ; $7a49: $95
	ld e, a                                          ; $7a4a: $5f
	and b                                            ; $7a4b: $a0
	xor a                                            ; $7a4c: $af
	ld d, b                                          ; $7a4d: $50
	ld d, a                                          ; $7a4e: $57
	xor b                                            ; $7a4f: $a8
	xor a                                            ; $7a50: $af
	ld d, b                                          ; $7a51: $50
	ld e, a                                          ; $7a52: $5f
	and b                                            ; $7a53: $a0
	halt                                             ; $7a54: $76
	db $10                                           ; $7a55: $10
	ld a, a                                          ; $7a56: $7f
	sbc e                                            ; $7a57: $9b
	ld d, b                                          ; $7a58: $50
	ret                                              ; $7a59: $c9


	ld [hl], d                                       ; $7a5a: $72

jr_04f_7a5b:
	xor b                                            ; $7a5b: $a8
	ld d, a                                          ; $7a5c: $57
	ldh a, [rPCM12]                                  ; $7a5d: $f0 $76
	call nz, $8875                                   ; $7a5f: $c4 $75 $88
	ld a, a                                          ; $7a62: $7f
	or c                                             ; $7a63: $b1
	adc [hl]                                         ; $7a64: $8e
	ld a, [$f707]                                    ; $7a65: $fa $07 $f7
	rrca                                             ; $7a68: $0f
	rst AddAOntoHL                                          ; $7a69: $ef
	rra                                              ; $7a6a: $1f
	xor h                                            ; $7a6b: $ac
	ld e, a                                          ; $7a6c: $5f
	ld e, [hl]                                       ; $7a6d: $5e
	cp a                                             ; $7a6e: $bf
	and b                                            ; $7a6f: $a0
	ld a, a                                          ; $7a70: $7f
	ld l, b                                          ; $7a71: $68
	rst $38                                          ; $7a72: $ff
	ret nc                                           ; $7a73: $d0

	rst $38                                          ; $7a74: $ff
	xor b                                            ; $7a75: $a8
	ld a, e                                          ; $7a76: $7b
	adc [hl]                                         ; $7a77: $8e
	sub l                                            ; $7a78: $95
	and c                                            ; $7a79: $a1
	cp $0b                                           ; $7a7a: $fe $0b
	db $f4                                           ; $7a7c: $f4
	dec d                                            ; $7a7d: $15
	ld [$d42b], a                                    ; $7a7e: $ea $2b $d4
	ld d, l                                          ; $7a81: $55
	xor d                                            ; $7a82: $aa
	ld [hl], a                                       ; $7a83: $77
	db $fc                                           ; $7a84: $fc
	sbc e                                            ; $7a85: $9b
	cp e                                             ; $7a86: $bb
	ld b, h                                          ; $7a87: $44
	ld [hl], l                                       ; $7a88: $75
	adc d                                            ; $7a89: $8a
	ld a, e                                          ; $7a8a: $7b
	ld c, e                                          ; $7a8b: $4b
	ld a, e                                          ; $7a8c: $7b
	cp $7f                                           ; $7a8d: $fe $7f
	ret z                                            ; $7a8f: $c8

	ld a, a                                          ; $7a90: $7f
	db $fc                                           ; $7a91: $fc
	sbc l                                            ; $7a92: $9d
	ld hl, sp+$07                                    ; $7a93: $f8 $07
	ld [hl], a                                       ; $7a95: $77
	cp $7e                                           ; $7a96: $fe $7e
	adc $7d                                          ; $7a98: $ce $7d
	jp nc, $1095                                     ; $7a9a: $d2 $95 $10

	rst AddAOntoHL                                          ; $7a9d: $ef
	inc [hl]                                         ; $7a9e: $34
	sla b                                            ; $7a9f: $cb $20
	rst SubAFromDE                                          ; $7aa1: $df
	ld b, b                                          ; $7aa2: $40
	cp a                                             ; $7aa3: $bf
	ld b, b                                          ; $7aa4: $40
	cp a                                             ; $7aa5: $bf
	ld h, a                                          ; $7aa6: $67
	xor c                                            ; $7aa7: $a9
	ld a, [hl]                                       ; $7aa8: $7e
	or d                                             ; $7aa9: $b2
	ld h, a                                          ; $7aaa: $67
	or $79                                           ; $7aab: $f6 $79
	ret                                              ; $7aad: $c9


	sub [hl]                                         ; $7aae: $96

jr_04f_7aaf:
	ldh [rIF], a                                     ; $7aaf: $e0 $0f
	ldh a, [$7f]                                     ; $7ab1: $f0 $7f
	add b                                            ; $7ab3: $80
	rlca                                             ; $7ab4: $07
	ld hl, sp+$03                                    ; $7ab5: $f8 $03
	db $fc                                           ; $7ab7: $fc
	halt                                             ; $7ab8: $76
	adc a                                            ; $7ab9: $8f
	ld e, [hl]                                       ; $7aba: $5e
	ret nz                                           ; $7abb: $c0

	ld l, [hl]                                       ; $7abc: $6e
	cp h                                             ; $7abd: $bc
	ld l, h                                          ; $7abe: $6c
	or b                                             ; $7abf: $b0
	ld e, a                                          ; $7ac0: $5f
	db $fc                                           ; $7ac1: $fc
	ld l, a                                          ; $7ac2: $6f
	ret                                              ; $7ac3: $c9


	sbc [hl]                                         ; $7ac4: $9e
	ld e, a                                          ; $7ac5: $5f
	ld h, e                                          ; $7ac6: $63
	ld h, b                                          ; $7ac7: $60
	sub e                                            ; $7ac8: $93
	db $db                                           ; $7ac9: $db
	inc h                                            ; $7aca: $24
	call c, $ce23                                    ; $7acb: $dc $23 $ce
	ld sp, $209f                                     ; $7ace: $31 $9f $20
	adc a                                            ; $7ad1: $8f
	ld [hl], b                                       ; $7ad2: $70
	add b                                            ; $7ad3: $80
	ld a, a                                          ; $7ad4: $7f
	ld [hl], a                                       ; $7ad5: $77
	cp $73                                           ; $7ad6: $fe $73
	adc e                                            ; $7ad8: $8b
	adc l                                            ; $7ad9: $8d
	ld hl, sp-$03                                    ; $7ada: $f8 $fd
	nop                                              ; $7adc: $00
	add a                                            ; $7add: $87
	ld a, b                                          ; $7ade: $78
	rst JumpTable                                          ; $7adf: $c7
	jr c, jr_04f_7b50                                ; $7ae0: $38 $6e

	sub b                                            ; $7ae2: $90
	ld e, l                                          ; $7ae3: $5d
	add b                                            ; $7ae4: $80
	ldh a, [rIF]                                     ; $7ae5: $f0 $0f
	ld hl, sp+$07                                    ; $7ae7: $f8 $07
	xor [hl]                                         ; $7ae9: $ae
	ld bc, $6357                                     ; $7aea: $01 $57 $63
	ret nz                                           ; $7aed: $c0

	sbc l                                            ; $7aee: $9d
	rlca                                             ; $7aef: $07
	rst $38                                          ; $7af0: $ff
	ld [hl], a                                       ; $7af1: $77
	rrca                                             ; $7af2: $0f
	adc b                                            ; $7af3: $88
	ld c, h                                          ; $7af4: $4c
	or e                                             ; $7af5: $b3
	xor b                                            ; $7af6: $a8
	ld d, a                                          ; $7af7: $57
	ld c, b                                          ; $7af8: $48
	rla                                              ; $7af9: $17
	cp b                                             ; $7afa: $b8
	rlca                                             ; $7afb: $07
	ld e, h                                          ; $7afc: $5c
	inc bc                                           ; $7afd: $03
	add b                                            ; $7afe: $80
	rst $38                                          ; $7aff: $ff
	ldh [rIE], a                                     ; $7b00: $e0 $ff
	ld hl, sp-$01                                    ; $7b02: $f8 $ff
	ld a, h                                          ; $7b04: $7c
	rst $38                                          ; $7b05: $ff
	ld e, a                                          ; $7b06: $5f
	rst $38                                          ; $7b07: $ff
	cpl                                              ; $7b08: $2f
	rst $38                                          ; $7b09: $ff
	rla                                              ; $7b0a: $17
	ld a, e                                          ; $7b0b: $7b
	db $e4                                           ; $7b0c: $e4
	halt                                             ; $7b0d: $76
	call z, $fc6f                                    ; $7b0e: $cc $6f $fc
	sbc c                                            ; $7b11: $99
	add l                                            ; $7b12: $85
	ld a, [$f5ea]                                    ; $7b13: $fa $ea $f5
	push af                                          ; $7b16: $f5
	ld a, [$c03e]                                    ; $7b17: $fa $3e $c0
	ld a, a                                          ; $7b1a: $7f
	sbc e                                            ; $7b1b: $9b
	ld h, a                                          ; $7b1c: $67
	db $fc                                           ; $7b1d: $fc
	halt                                             ; $7b1e: $76
	ld c, $4e                                        ; $7b1f: $0e $4e
	jp nz, $fe3f                                     ; $7b21: $c2 $3f $fe

	sbc h                                            ; $7b24: $9c
	sbc a                                            ; $7b25: $9f
	ld a, a                                          ; $7b26: $7f
	ld a, a                                          ; $7b27: $7f
	sbc $ff                                          ; $7b28: $de $ff
	ld a, h                                          ; $7b2a: $7c
	sbc a                                            ; $7b2b: $9f
	rst SubAFromDE                                          ; $7b2c: $df
	rst $38                                          ; $7b2d: $ff
	ld a, a                                          ; $7b2e: $7f
	sbc d                                            ; $7b2f: $9a
	ld a, a                                          ; $7b30: $7f
	ld a, [$f49e]                                    ; $7b31: $fa $9e $f4
	ld [hl], d                                       ; $7b34: $72
	call z, $438f                                    ; $7b35: $cc $8f $43
	db $fc                                           ; $7b38: $fc
	add a                                            ; $7b39: $87
	ld hl, sp+$0f                                    ; $7b3a: $f8 $0f
	ldh a, [$3f]                                     ; $7b3c: $f0 $3f
	ret nz                                           ; $7b3e: $c0

	rrca                                             ; $7b3f: $0f
	ldh a, [rIF]                                     ; $7b40: $f0 $0f
	ldh a, [$eb]                                     ; $7b42: $f0 $eb
	inc d                                            ; $7b44: $14
	rst SubAFromHL                                          ; $7b45: $d7
	jr z, jr_04f_7bbf                                ; $7b46: $28 $77

	db $fc                                           ; $7b48: $fc
	ld a, [hl]                                       ; $7b49: $7e
	ld [hl], b                                       ; $7b4a: $70
	ld a, l                                          ; $7b4b: $7d
	and e                                            ; $7b4c: $a3
	halt                                             ; $7b4d: $76
	ld l, h                                          ; $7b4e: $6c
	ld l, [hl]                                       ; $7b4f: $6e

jr_04f_7b50:
	jp z, $fe7f                                      ; $7b50: $ca $7f $fe

	ld a, [hl]                                       ; $7b53: $7e
	adc h                                            ; $7b54: $8c
	ld a, [hl]                                       ; $7b55: $7e
	di                                               ; $7b56: $f3
	ld a, a                                          ; $7b57: $7f
	ld a, [$ba7e]                                    ; $7b58: $fa $7e $ba
	ld [hl], h                                       ; $7b5b: $74
	ld [hl+], a                                      ; $7b5c: $22
	rla                                              ; $7b5d: $17
	sbc a                                            ; $7b5e: $9f
	ld a, a                                          ; $7b5f: $7f
	ld d, [hl]                                       ; $7b60: $56
	ld l, a                                          ; $7b61: $6f
	ld hl, sp+$76                                    ; $7b62: $f8 $76
	adc c                                            ; $7b64: $89
	ld [hl], a                                       ; $7b65: $77
	ld hl, sp+$76                                    ; $7b66: $f8 $76
	call z, $ed7f                                    ; $7b68: $cc $7f $ed
	sbc h                                            ; $7b6b: $9c
	ld a, l                                          ; $7b6c: $7d

Call_04f_7b6d:
	add b                                            ; $7b6d: $80
	cp $7b                                           ; $7b6e: $fe $7b
	ld hl, sp-$65                                    ; $7b70: $f8 $9b
	ld a, $c0                                        ; $7b72: $3e $c0
	rra                                              ; $7b74: $1f
	ldh [$2e], a                                     ; $7b75: $e0 $2e
	ret nz                                           ; $7b77: $c0

	ld a, a                                          ; $7b78: $7f
	xor l                                            ; $7b79: $ad
	ld a, [hl]                                       ; $7b7a: $7e
	ld [hl], l                                       ; $7b7b: $75
	ld a, [hl]                                       ; $7b7c: $7e
	cp h                                             ; $7b7d: $bc
	ld a, a                                          ; $7b7e: $7f
	db $fc                                           ; $7b7f: $fc
	ld a, a                                          ; $7b80: $7f
	ld hl, sp+$6e                                    ; $7b81: $f8 $6e
	jp z, $fe7f                                      ; $7b83: $ca $7f $fe

	sbc h                                            ; $7b86: $9c
	jp z, $d520                                      ; $7b87: $ca $20 $d5

	ld a, c                                          ; $7b8a: $79
	ld [hl], h                                       ; $7b8b: $74
	ld a, a                                          ; $7b8c: $7f
	ld l, a                                          ; $7b8d: $6f
	sub a                                            ; $7b8e: $97
	ld l, $c0                                        ; $7b8f: $2e $c0
	dec d                                            ; $7b91: $15
	ldh [$0a], a                                     ; $7b92: $e0 $0a
	ldh a, [rTIMA]                                   ; $7b94: $f0 $05
	ld hl, sp+$77                                    ; $7b96: $f8 $77
	call nc, $029d                                   ; $7b98: $d4 $9d $02
	ld hl, sp+$6f                                    ; $7b9b: $f8 $6f
	ld hl, sp+$57                                    ; $7b9d: $f8 $57
	db $fc                                           ; $7b9f: $fc
	sub l                                            ; $7ba0: $95
	cp h                                             ; $7ba1: $bc
	inc bc                                           ; $7ba2: $03
	ld e, h                                          ; $7ba3: $5c
	inc bc                                           ; $7ba4: $03
	cp h                                             ; $7ba5: $bc
	inc bc                                           ; $7ba6: $03
	ld a, [hl]                                       ; $7ba7: $7e
	ld bc, $00bf                                     ; $7ba8: $01 $bf $00
	ld l, a                                          ; $7bab: $6f
	db $fc                                           ; $7bac: $fc
	sbc e                                            ; $7bad: $9b
	dec b                                            ; $7bae: $05
	rst $38                                          ; $7baf: $ff
	ld [bc], a                                       ; $7bb0: $02
	rst $38                                          ; $7bb1: $ff
	ld [hl], a                                       ; $7bb2: $77
	db $fc                                           ; $7bb3: $fc
	ld h, a                                          ; $7bb4: $67
	ld [hl], b                                       ; $7bb5: $70
	sbc h                                            ; $7bb6: $9c
	cp $fd                                           ; $7bb7: $fe $fd
	rst $38                                          ; $7bb9: $ff
	ld a, d                                          ; $7bba: $7a
	or h                                             ; $7bbb: $b4
	sub l                                            ; $7bbc: $95
	xor a                                            ; $7bbd: $af
	rst $38                                          ; $7bbe: $ff

jr_04f_7bbf:
	ld d, a                                          ; $7bbf: $57
	rst $38                                          ; $7bc0: $ff

Jump_04f_7bc1:
	ld a, [hl+]                                      ; $7bc1: $2a
	rst $38                                          ; $7bc2: $ff
	dec d                                            ; $7bc3: $15
	rst $38                                          ; $7bc4: $ff
	ld a, [bc]                                       ; $7bc5: $0a
	rst $38                                          ; $7bc6: $ff
	halt                                             ; $7bc7: $76
	call z, $ea94                                    ; $7bc8: $cc $94 $ea

Jump_04f_7bcb:
	push de                                          ; $7bcb: $d5
	push af                                          ; $7bcc: $f5
	ld [$fdfa], a                                    ; $7bcd: $ea $fa $fd
	rst $38                                          ; $7bd0: $ff
	cp $7f                                           ; $7bd1: $fe $7f
	rst $38                                          ; $7bd3: $ff
	cp a                                             ; $7bd4: $bf
	ld a, b                                          ; $7bd5: $78
	ret nc                                           ; $7bd6: $d0

	ld e, [hl]                                       ; $7bd7: $5e
	ret z                                            ; $7bd8: $c8

	ld a, e                                          ; $7bd9: $7b
	ld a, [$c09e]                                    ; $7bda: $fa $9e $c0
	ld b, $c0                                        ; $7bdd: $06 $c0
	ld b, c                                          ; $7bdf: $41
	nop                                              ; $7be0: $00
	jp $9e33                                         ; $7be1: $c3 $33 $9e


	ld b, e                                          ; $7be4: $43
	ret c                                            ; $7be5: $d8

	inc sp                                           ; $7be6: $33
	sbc l                                            ; $7be7: $9d
	ld d, l                                          ; $7be8: $55
	ld d, e                                          ; $7be9: $53
	sbc $33                                          ; $7bea: $de $33
	sbc l                                            ; $7bec: $9d
	dec [hl]                                         ; $7bed: $35
	ld d, l                                          ; $7bee: $55
	ld [hl], e                                       ; $7bef: $73
	or $de                                           ; $7bf0: $f6 $de
	ld d, l                                          ; $7bf2: $55
	ld [hl], e                                       ; $7bf3: $73
	or $99                                           ; $7bf4: $f6 $99
	ld d, h                                          ; $7bf6: $54
	ld d, l                                          ; $7bf7: $55
	ld b, l                                          ; $7bf8: $45
	ld b, h                                          ; $7bf9: $44
	ld b, h                                          ; $7bfa: $44
	ld b, l                                          ; $7bfb: $45
	ld [hl], a                                       ; $7bfc: $77
	or $7f                                           ; $7bfd: $f6 $7f
	ld a, [$7695]                                    ; $7bff: $fa $95 $76
	ld h, [hl]                                       ; $7c02: $66
	ld h, [hl]                                       ; $7c03: $66
	ld d, l                                          ; $7c04: $55
	ld d, l                                          ; $7c05: $55
	ld b, h                                          ; $7c06: $44
	ld b, h                                          ; $7c07: $44
	inc sp                                           ; $7c08: $33
	ld b, h                                          ; $7c09: $44
	scf                                              ; $7c0a: $37
	sbc $66                                          ; $7c0b: $de $66
	sbc l                                            ; $7c0d: $9d
	ld h, a                                          ; $7c0e: $67
	ld [hl], l                                       ; $7c0f: $75
	sbc $44                                          ; $7c10: $de $44
	sbc [hl]                                         ; $7c12: $9e
	ld b, e                                          ; $7c13: $43
	ld [hl], a                                       ; $7c14: $77
	or $df                                           ; $7c15: $f6 $df
	ld h, [hl]                                       ; $7c17: $66
	sbc [hl]                                         ; $7c18: $9e
	ld d, h                                          ; $7c19: $54
	ld h, e                                          ; $7c1a: $63
	or $9c                                           ; $7c1b: $f6 $9c
	ld h, [hl]                                       ; $7c1d: $66
	ld b, h                                          ; $7c1e: $44
	ld b, h                                          ; $7c1f: $44
	ld h, c                                          ; $7c20: $61
	add hl, bc                                       ; $7c21: $09
	sbc l                                            ; $7c22: $9d
	nop                                              ; $7c23: $00
	rst $38                                          ; $7c24: $ff
	ld e, a                                          ; $7c25: $5f
	cp $9b                                           ; $7c26: $fe $9b
	ld [bc], a                                       ; $7c28: $02
	db $fd                                           ; $7c29: $fd
	dec d                                            ; $7c2a: $15
	ld [$f057], a                                    ; $7c2b: $ea $57 $f0
	sbc e                                            ; $7c2e: $9b
	adc b                                            ; $7c2f: $88
	ld [hl], a                                       ; $7c30: $77
	ld d, l                                          ; $7c31: $55
	xor d                                            ; $7c32: $aa
	ld d, a                                          ; $7c33: $57
	ldh a, [$9d]                                     ; $7c34: $f0 $9d
	and d                                            ; $7c36: $a2
	ld e, l                                          ; $7c37: $5d
	ld d, a                                          ; $7c38: $57
	ldh a, [$9b]                                     ; $7c39: $f0 $9b
	ld b, h                                          ; $7c3b: $44
	cp e                                             ; $7c3c: $bb
	xor d                                            ; $7c3d: $aa
	ld d, l                                          ; $7c3e: $55
	ld d, a                                          ; $7c3f: $57
	ldh a, [$7f]                                     ; $7c40: $f0 $7f
	db $f4                                           ; $7c42: $f4
	rla                                              ; $7c43: $17
	ldh a, [rPCM34]                                  ; $7c44: $f0 $77
	and h                                            ; $7c46: $a4
	rrca                                             ; $7c47: $0f
	ret nc                                           ; $7c48: $d0

	sbc c                                            ; $7c49: $99
	ld d, b                                          ; $7c4a: $50
	xor a                                            ; $7c4b: $af
	nop                                              ; $7c4c: $00
	rst $38                                          ; $7c4d: $ff
	ldh a, [rP1]                                     ; $7c4e: $f0 $00
	ld d, a                                          ; $7c50: $57
	sub b                                            ; $7c51: $90
	sbc h                                            ; $7c52: $9c
	pop hl                                           ; $7c53: $e1
	nop                                              ; $7c54: $00
	ld bc, $f05b                                     ; $7c55: $01 $5b $f0
	sbc c                                            ; $7c58: $99
	ld d, c                                          ; $7c59: $51
	xor [hl]                                         ; $7c5a: $ae
	ld [$fd15], a                                    ; $7c5b: $ea $15 $fd
	ld b, d                                          ; $7c5e: $42
	ld d, a                                          ; $7c5f: $57
	ldh a, [rAUD2ENV]                                ; $7c60: $f0 $17
	or b                                             ; $7c62: $b0
	sbc l                                            ; $7c63: $9d
	add b                                            ; $7c64: $80
	ld a, a                                          ; $7c65: $7f
	ld b, a                                          ; $7c66: $47
	and b                                            ; $7c67: $a0
	sbc c                                            ; $7c68: $99

jr_04f_7c69:
	ld b, l                                          ; $7c69: $45
	cp d                                             ; $7c6a: $ba
	xor d                                            ; $7c6b: $aa
	ld d, l                                          ; $7c6c: $55
	ld d, h                                          ; $7c6d: $54
	xor e                                            ; $7c6e: $ab
	ld [hl], a                                       ; $7c6f: $77
	or $9d                                           ; $7c70: $f6 $9d
	inc b                                            ; $7c72: $04
	ld hl, sp+$6f                                    ; $7c73: $f8 $6f
	cp $9b                                           ; $7c75: $fe $9b
	and h                                            ; $7c77: $a4
	ld e, b                                          ; $7c78: $58
	inc b                                            ; $7c79: $04
	ld hl, sp+$77                                    ; $7c7a: $f8 $77
	ldh a, [hDisp1_OBP0]                                     ; $7c7c: $f0 $93
	jr nz, jr_04f_7c9f                               ; $7c7e: $20 $1f

	ld [hl], b                                       ; $7c80: $70
	cpl                                              ; $7c81: $2f

Call_04f_7c82:
	ld a, b                                          ; $7c82: $78
	scf                                              ; $7c83: $37
	ld a, h                                          ; $7c84: $7c
	dec sp                                           ; $7c85: $3b
	ld a, [hl]                                       ; $7c86: $7e
	dec a                                            ; $7c87: $3d
	ld a, a                                          ; $7c88: $7f
	ld a, $5f                                        ; $7c89: $3e $5f
	ret nc                                           ; $7c8b: $d0

	sbc c                                            ; $7c8c: $99
	dec b                                            ; $7c8d: $05
	ld a, [$d52a]                                    ; $7c8e: $fa $2a $d5
	ld b, l                                          ; $7c91: $45
	cp d                                             ; $7c92: $ba
	ld c, a                                          ; $7c93: $4f
	and b                                            ; $7c94: $a0
	ld a, a                                          ; $7c95: $7f
	adc h                                            ; $7c96: $8c
	ld h, a                                          ; $7c97: $67
	ldh a, [c]                                       ; $7c98: $f2
	sbc l                                            ; $7c99: $9d
	and b                                            ; $7c9a: $a0
	ld e, a                                          ; $7c9b: $5f
	ld l, a                                          ; $7c9c: $6f
	and b                                            ; $7c9d: $a0
	ld a, a                                          ; $7c9e: $7f

jr_04f_7c9f:
	call c, $f86f                                    ; $7c9f: $dc $6f $f8
	inc bc                                           ; $7ca2: $03
	db $fc                                           ; $7ca3: $fc
	sbc b                                            ; $7ca4: $98
	ld d, l                                          ; $7ca5: $55
	ld d, [hl]                                       ; $7ca6: $56
	xor b                                            ; $7ca7: $a8
	xor b                                            ; $7ca8: $a8
	ld d, h                                          ; $7ca9: $54
	ld d, h                                          ; $7caa: $54
	xor b                                            ; $7cab: $a8
	ld e, a                                          ; $7cac: $5f
	ldh a, [$99]                                     ; $7cad: $f0 $99
	ld c, l                                          ; $7caf: $4d
	ld b, d                                          ; $7cb0: $42
	ld a, b                                          ; $7cb1: $78
	ld h, b                                          ; $7cb2: $60
	ld [hl], a                                       ; $7cb3: $77
	ld a, b                                          ; $7cb4: $78
	ld c, a                                          ; $7cb5: $4f
	call c, $a77f                                    ; $7cb6: $dc $7f $a7
	ld c, a                                          ; $7cb9: $4f
	ldh a, [$8c]                                     ; $7cba: $f0 $8c
	rst SubAFromDE                                          ; $7cbc: $df
	jr nz, jr_04f_7c69                               ; $7cbd: $20 $aa

	ld d, l                                          ; $7cbf: $55
	ld [hl], b                                       ; $7cc0: $70
	add b                                            ; $7cc1: $80
	add b                                            ; $7cc2: $80
	ld b, b                                          ; $7cc3: $40
	ld a, a                                          ; $7cc4: $7f
	adc a                                            ; $7cc5: $8f
	cp a                                             ; $7cc6: $bf
	ld a, a                                          ; $7cc7: $7f
	ld a, a                                          ; $7cc8: $7f
	add a                                            ; $7cc9: $87
	cp a                                             ; $7cca: $bf
	ld b, b                                          ; $7ccb: $40
	nop                                              ; $7ccc: $00
	nop                                              ; $7ccd: $00
	ld [$9cfe], a                                    ; $7cce: $ea $fe $9c
	ld [hl], b                                       ; $7cd1: $70
	rrca                                             ; $7cd2: $0f
	ld a, c                                          ; $7cd3: $79
	ld a, e                                          ; $7cd4: $7b
	ld a, [hl]                                       ; $7cd5: $7e
	sbc l                                            ; $7cd6: $9d
	rlca                                             ; $7cd7: $07
	ld sp, hl                                        ; $7cd8: $f9
	db $dd                                           ; $7cd9: $dd
	ld bc, $9cff                                     ; $7cda: $01 $ff $9c
	ld e, h                                          ; $7cdd: $5c
	inc bc                                           ; $7cde: $03
	ld a, $7b                                        ; $7cdf: $3e $7b
	ldh a, [c]                                       ; $7ce1: $f2
	adc l                                            ; $7ce2: $8d
	ld de, $82ee                                     ; $7ce3: $11 $ee $82
	db $fc                                           ; $7ce6: $fc
	sbc [hl]                                         ; $7ce7: $9e
	ldh [$aa], a                                     ; $7ce8: $e0 $aa
	call nc, $0215                                   ; $7cea: $d4 $15 $02
	rrca                                             ; $7ced: $0f
	rst $38                                          ; $7cee: $ff
	ld bc, $aafe                                     ; $7cef: $01 $fe $aa
	ld d, l                                          ; $7cf2: $55
	ld a, h                                          ; $7cf3: $7c
	add b                                            ; $7cf4: $80
	cp $98                                           ; $7cf5: $fe $98
	ld [$080c], sp                                   ; $7cf7: $08 $0c $08
	ld a, a                                          ; $7cfa: $7f
	add b                                            ; $7cfb: $80
	xor e                                            ; $7cfc: $ab
	ld d, h                                          ; $7cfd: $54
	ld [hl], e                                       ; $7cfe: $73
	or d                                             ; $7cff: $b2
	rst SubAFromDE                                          ; $7d00: $df
	ld a, [hl+]                                      ; $7d01: $2a
	sbc [hl]                                         ; $7d02: $9e
	dec d                                            ; $7d03: $15
	ld [hl], a                                       ; $7d04: $77
	db $fc                                           ; $7d05: $fc
	ld a, a                                          ; $7d06: $7f
	or $99                                           ; $7d07: $f6 $99
	db $fd                                           ; $7d09: $fd
	ld [bc], a                                       ; $7d0a: $02
	db $fd                                           ; $7d0b: $fd
	add d                                            ; $7d0c: $82
	cp $f7                                           ; $7d0d: $fe $f7
	sbc $ff                                          ; $7d0f: $de $ff
	adc [hl]                                         ; $7d11: $8e
	rst SubAFromDE                                          ; $7d12: $df
	db $fd                                           ; $7d13: $fd
	ld hl, sp-$05                                    ; $7d14: $f8 $fb
	db $fc                                           ; $7d16: $fc
	xor d                                            ; $7d17: $aa
	ld d, l                                          ; $7d18: $55
	ld d, a                                          ; $7d19: $57
	xor b                                            ; $7d1a: $a8
	add sp, $00                                      ; $7d1b: $e8 $00
	add b                                            ; $7d1d: $80
	nop                                              ; $7d1e: $00
	ld a, a                                          ; $7d1f: $7f
	add b                                            ; $7d20: $80
	add b                                            ; $7d21: $80
	rst $38                                          ; $7d22: $ff
	ld [hl], a                                       ; $7d23: $77
	daa                                              ; $7d24: $27
	ld [hl], a                                       ; $7d25: $77
	ld a, h                                          ; $7d26: $7c
	db $fd                                           ; $7d27: $fd
	sbc e                                            ; $7d28: $9b
	rst $38                                          ; $7d29: $ff
	ccf                                              ; $7d2a: $3f
	rra                                              ; $7d2b: $1f
	ldh [$6f], a                                     ; $7d2c: $e0 $6f
	ldh a, [$9e]                                     ; $7d2e: $f0 $9e
	db $fc                                           ; $7d30: $fc
	ld [hl], a                                       ; $7d31: $77
	ldh a, [c]                                       ; $7d32: $f2
	sbc l                                            ; $7d33: $9d
	nop                                              ; $7d34: $00
	db $fc                                           ; $7d35: $fc
	ld [hl], e                                       ; $7d36: $73
	ldh [c], a                                       ; $7d37: $e2
	ld a, a                                          ; $7d38: $7f
	cp $93                                           ; $7d39: $fe $93
	cp b                                             ; $7d3b: $b8
	ld b, b                                          ; $7d3c: $40
	jr c, jr_04f_7d3f                                ; $7d3d: $38 $00

jr_04f_7d3f:
	jr c, jr_04f_7d41                                ; $7d3f: $38 $00

jr_04f_7d41:
	ld hl, sp+$18                                    ; $7d41: $f8 $18
	nop                                              ; $7d43: $00
	ld hl, sp-$08                                    ; $7d44: $f8 $f8
	nop                                              ; $7d46: $00
	ld [hl], a                                       ; $7d47: $77
	cp $89                                           ; $7d48: $fe $89
	ld a, e                                          ; $7d4a: $7b
	ccf                                              ; $7d4b: $3f
	ld a, l                                          ; $7d4c: $7d
	ccf                                              ; $7d4d: $3f
	ld l, [hl]                                       ; $7d4e: $6e
	ccf                                              ; $7d4f: $3f
	ld l, a                                          ; $7d50: $6f
	ccf                                              ; $7d51: $3f
	ld h, l                                          ; $7d52: $65
	jr c, jr_04f_7dc2                                ; $7d53: $38 $6d

	ld sp, $217d                                     ; $7d55: $31 $7d $21
	ld a, h                                          ; $7d58: $7c
	inc a                                            ; $7d59: $3c
	cp a                                             ; $7d5a: $bf
	ld b, b                                          ; $7d5b: $40
	ldh [$f0], a                                     ; $7d5c: $e0 $f0
	rst $38                                          ; $7d5e: $ff
	ld hl, sp-$22                                    ; $7d5f: $f8 $de
	rst $38                                          ; $7d61: $ff
	sbc b                                            ; $7d62: $98
	add b                                            ; $7d63: $80
	rst SubAFromBC                                          ; $7d64: $e7
	sbc b                                            ; $7d65: $98
	rst $38                                          ; $7d66: $ff
	add b                                            ; $7d67: $80
	add b                                            ; $7d68: $80
	nop                                              ; $7d69: $00
	ld l, a                                          ; $7d6a: $6f
	jp nz, $ffde                                     ; $7d6b: $c2 $de $ff

	ld [hl], e                                       ; $7d6e: $73
	jp nz, Jump_04f_7ffb                             ; $7d6f: $c2 $fb $7f

	ld hl, sp+$7f                                    ; $7d72: $f8 $7f
	and l                                            ; $7d74: $a5
	ld a, a                                          ; $7d75: $7f
	db $fc                                           ; $7d76: $fc
	sbc l                                            ; $7d77: $9d
	ldh [c], a                                       ; $7d78: $e2
	dec e                                            ; $7d79: $1d
	ld [hl], a                                       ; $7d7a: $77
	ldh a, [rPCM34]                                  ; $7d7b: $f0 $77
	sub b                                            ; $7d7d: $90
	sbc l                                            ; $7d7e: $9d
	rst $38                                          ; $7d7f: $ff
	ret nz                                           ; $7d80: $c0

	sbc $ff                                          ; $7d81: $de $ff
	sbc b                                            ; $7d83: $98
	ld bc, $00e0                                     ; $7d84: $01 $e0 $00
	ccf                                              ; $7d87: $3f
	inc b                                            ; $7d88: $04
	rlca                                             ; $7d89: $07
	ld hl, sp+$77                                    ; $7d8a: $f8 $77
	ld [$ee73], sp                                   ; $7d8c: $08 $73 $ee
	sbc b                                            ; $7d8f: $98
	di                                               ; $7d90: $f3
	ld c, a                                          ; $7d91: $4f
	inc bc                                           ; $7d92: $03
	rst AddAOntoHL                                          ; $7d93: $ef
	inc b                                            ; $7d94: $04
	ret nz                                           ; $7d95: $c0

	nop                                              ; $7d96: $00
	halt                                             ; $7d97: $76
	call z, $bc77                                    ; $7d98: $cc $77 $bc
	add b                                            ; $7d9b: $80
	ret z                                            ; $7d9c: $c8

	inc a                                            ; $7d9d: $3c
	inc e                                            ; $7d9e: $1c
	ldh [$e0], a                                     ; $7d9f: $e0 $e0
	nop                                              ; $7da1: $00
	inc e                                            ; $7da2: $1c
	nop                                              ; $7da3: $00
	ld a, a                                          ; $7da4: $7f
	ld a, a                                          ; $7da5: $7f
	ld l, a                                          ; $7da6: $6f
	ld [hl], e                                       ; $7da7: $73
	ld [hl], b                                       ; $7da8: $70
	ld h, b                                          ; $7da9: $60
	ld a, a                                          ; $7daa: $7f
	ld h, a                                          ; $7dab: $67
	ld a, a                                          ; $7dac: $7f
	ld h, b                                          ; $7dad: $60
	ld a, a                                          ; $7dae: $7f
	ld [hl], b                                       ; $7daf: $70
	ld a, [hl]                                       ; $7db0: $7e
	ld a, h                                          ; $7db1: $7c
	ld a, a                                          ; $7db2: $7f
	ld a, a                                          ; $7db3: $7f
	rst AddAOntoHL                                          ; $7db4: $ef
	pop af                                           ; $7db5: $f1
	rst $38                                          ; $7db6: $ff
	rst $38                                          ; $7db7: $ff
	ld a, a                                          ; $7db8: $7f
	rra                                              ; $7db9: $1f
	jp c, $e19d                                      ; $7dba: $da $9d $e1

	ld a, [$f67a]                                    ; $7dbd: $fa $7a $f6
	sbc l                                            ; $7dc0: $9d
	cp a                                             ; $7dc1: $bf

jr_04f_7dc2:
	inc bc                                           ; $7dc2: $03
	ld a, e                                          ; $7dc3: $7b
	adc c                                            ; $7dc4: $89
	ld a, a                                          ; $7dc5: $7f
	call nz, $879a                                   ; $7dc6: $c4 $9a $87
	pop hl                                           ; $7dc9: $e1
	cp $7f                                           ; $7dca: $fe $7f
	nop                                              ; $7dcc: $00
	ld a, c                                          ; $7dcd: $79
	or [hl]                                          ; $7dce: $b6
	ld [hl], a                                       ; $7dcf: $77
	adc d                                            ; $7dd0: $8a
	sbc c                                            ; $7dd1: $99
	rst $38                                          ; $7dd2: $ff
	inc a                                            ; $7dd3: $3c
	nop                                              ; $7dd4: $00
	call nz, $0538                                   ; $7dd5: $c4 $38 $05
	db $fc                                           ; $7dd8: $fc
	sub h                                            ; $7dd9: $94

jr_04f_7dda:
	inc l                                            ; $7dda: $2c
	nop                                              ; $7ddb: $00
	jr jr_04f_7dda                                   ; $7ddc: $18 $fc

	adc a                                            ; $7dde: $8f
	ld hl, sp+$21                                    ; $7ddf: $f8 $21
	ld de, $1121                                     ; $7de1: $11 $21 $11
	push de                                          ; $7de4: $d5
	sbc $01                                          ; $7de5: $de $01
	add a                                            ; $7de7: $87
	inc bc                                           ; $7de8: $03
	ld bc, $1123                                     ; $7de9: $01 $23 $11
	ld [hl+], a                                      ; $7dec: $22
	ld de, $01d6                                     ; $7ded: $11 $d6 $01
	cp b                                             ; $7df0: $b8
	ret nz                                           ; $7df1: $c0

	call nc, $a880                                   ; $7df2: $d4 $80 $a8
	ret nc                                           ; $7df5: $d0

	db $f4                                           ; $7df6: $f4
	add b                                            ; $7df7: $80
	adc h                                            ; $7df8: $8c
	ret nz                                           ; $7df9: $c0

	add $88                                          ; $7dfa: $c6 $88
	adc [hl]                                         ; $7dfc: $8e
	ret nc                                           ; $7dfd: $d0

	or $80                                           ; $7dfe: $f6 $80
	halt                                             ; $7e00: $76
	and b                                            ; $7e01: $a0
	ld a, d                                          ; $7e02: $7a
	rst JumpTable                                          ; $7e03: $c7
	sbc d                                            ; $7e04: $9a
	nop                                              ; $7e05: $00
	db $10                                           ; $7e06: $10
	ld [$08f5], sp                                   ; $7e07: $08 $f5 $08
	db $fd                                           ; $7e0a: $fd
	adc l                                            ; $7e0b: $8d
	push de                                          ; $7e0c: $d5
	ld a, [hl+]                                      ; $7e0d: $2a
	inc hl                                           ; $7e0e: $23
	inc e                                            ; $7e0f: $1c
	ld d, b                                          ; $7e10: $50
	inc l                                            ; $7e11: $2c
	jr nz, jr_04f_7e30                               ; $7e12: $20 $1c

	ld d, c                                          ; $7e14: $51
	cpl                                              ; $7e15: $2f
	dec l                                            ; $7e16: $2d
	inc de                                           ; $7e17: $13
	ld d, h                                          ; $7e18: $54
	dec hl                                           ; $7e19: $2b
	cpl                                              ; $7e1a: $2f
	db $10                                           ; $7e1b: $10
	ld d, h                                          ; $7e1c: $54
	xor b                                            ; $7e1d: $a8
	ld [hl], a                                       ; $7e1e: $77
	and [hl]                                         ; $7e1f: $a6
	sub [hl]                                         ; $7e20: $96
	ldh a, [rIF]                                     ; $7e21: $f0 $0f
	rst $38                                          ; $7e23: $ff
	rst $38                                          ; $7e24: $ff
	ldh a, [rIE]                                     ; $7e25: $f0 $ff
	add a                                            ; $7e27: $87
	rst $38                                          ; $7e28: $ff
	ld c, a                                          ; $7e29: $4f
	ld [hl], e                                       ; $7e2a: $73
	dec l                                            ; $7e2b: $2d

jr_04f_7e2c:
	ld a, a                                          ; $7e2c: $7f
	add l                                            ; $7e2d: $85
	sub l                                            ; $7e2e: $95
	rra                                              ; $7e2f: $1f

jr_04f_7e30:
	rst $38                                          ; $7e30: $ff
	rst FarCall                                          ; $7e31: $f7
	rst $38                                          ; $7e32: $ff
	jr nz, jr_04f_7e2c                               ; $7e33: $20 $f7

	jp hl                                            ; $7e35: $e9


	rst FarCall                                          ; $7e36: $f7
	db $ed                                           ; $7e37: $ed
	rst FarCall                                          ; $7e38: $f7
	db $fd                                           ; $7e39: $fd
	sbc l                                            ; $7e3a: $9d
	ld a, [$dd05]                                    ; $7e3b: $fa $05 $dd
	rst $38                                          ; $7e3e: $ff
	sbc [hl]                                         ; $7e3f: $9e
	ld bc, $ffdc                                     ; $7e40: $01 $dc $ff
	db $fd                                           ; $7e43: $fd
	sub d                                            ; $7e44: $92
	xor b                                            ; $7e45: $a8
	ld d, a                                          ; $7e46: $57
	rst $38                                          ; $7e47: $ff
	rst $38                                          ; $7e48: $ff
	ld e, a                                          ; $7e49: $5f
	cp a                                             ; $7e4a: $bf
	ld b, h                                          ; $7e4b: $44
	cp a                                             ; $7e4c: $bf
	rst JumpTable                                          ; $7e4d: $c7
	cp a                                             ; $7e4e: $bf
	ld b, b                                          ; $7e4f: $40
	cp a                                             ; $7e50: $bf
	nop                                              ; $7e51: $00
	ld a, d                                          ; $7e52: $7a
	jp nz, $189e                                     ; $7e53: $c2 $9e $18

	sbc $f8                                          ; $7e56: $de $f8
	sbc h                                            ; $7e58: $9c
	ld e, b                                          ; $7e59: $58
	ld hl, sp+$78                                    ; $7e5a: $f8 $78
	call c, $8bf8                                    ; $7e5c: $dc $f8 $8b
	ld b, b                                          ; $7e5f: $40
	inc a                                            ; $7e60: $3c
	ld b, e                                          ; $7e61: $43
	inc a                                            ; $7e62: $3c
	ld e, a                                          ; $7e63: $5f
	ccf                                              ; $7e64: $3f
	ld e, a                                          ; $7e65: $5f
	ccf                                              ; $7e66: $3f
	rrca                                             ; $7e67: $0f
	ld a, a                                          ; $7e68: $7f
	rla                                              ; $7e69: $17
	ld l, a                                          ; $7e6a: $6f
	ld a, [de]                                       ; $7e6b: $1a
	ld h, a                                          ; $7e6c: $67
	add hl, bc                                       ; $7e6d: $09
	ld [hl], a                                       ; $7e6e: $77
	nop                                              ; $7e6f: $00
	nop                                              ; $7e70: $00
	push af                                          ; $7e71: $f5
	ld a, [bc]                                       ; $7e72: $0a
	db $dd                                           ; $7e73: $dd
	rst $38                                          ; $7e74: $ff
	sbc [hl]                                         ; $7e75: $9e
	and b                                            ; $7e76: $a0
	sbc $ff                                          ; $7e77: $de $ff
	adc l                                            ; $7e79: $8d
	ld a, h                                          ; $7e7a: $7c
	rst $38                                          ; $7e7b: $ff
	ld a, h                                          ; $7e7c: $7c
	cp $00                                           ; $7e7d: $fe $00
	nop                                              ; $7e7f: $00
	ld d, h                                          ; $7e80: $54
	xor e                                            ; $7e81: $ab
	rst $38                                          ; $7e82: $ff
	rst $38                                          ; $7e83: $ff
	cp a                                             ; $7e84: $bf
	rst SubAFromDE                                          ; $7e85: $df
	or b                                             ; $7e86: $b0
	rst SubAFromDE                                          ; $7e87: $df
	sub a                                            ; $7e88: $97
	rst $38                                          ; $7e89: $ff
	ld h, b                                          ; $7e8a: $60

jr_04f_7e8b:
	sbc a                                            ; $7e8b: $9f
	ld l, [hl]                                       ; $7e8c: $6e
	pop bc                                           ; $7e8d: $c1
	ld [hl], e                                       ; $7e8e: $73
	xor b                                            ; $7e8f: $a8
	ld l, [hl]                                       ; $7e90: $6e
	xor l                                            ; $7e91: $ad
	ld a, d                                          ; $7e92: $7a
	ld b, [hl]                                       ; $7e93: $46
	sub b                                            ; $7e94: $90
	and b                                            ; $7e95: $a0
	rra                                              ; $7e96: $1f
	ld a, a                                          ; $7e97: $7f
	rst $38                                          ; $7e98: $ff
	ld h, c                                          ; $7e99: $61
	rst $38                                          ; $7e9a: $ff
	ld d, b                                          ; $7e9b: $50
	ccf                                              ; $7e9c: $3f
	ld b, $1f                                        ; $7e9d: $06 $1f
	ld l, e                                          ; $7e9f: $6b
	rlca                                             ; $7ea0: $07
	ld a, [bc]                                       ; $7ea1: $0a
	ld bc, $7b35                                     ; $7ea2: $01 $35 $7b
	jp nz, $8288                                     ; $7ea5: $c2 $88 $82

	db $fd                                           ; $7ea8: $fd
	ld bc, $7afe                                     ; $7ea9: $01 $fe $7a
	db $fd                                           ; $7eac: $fd
	ld d, a                                          ; $7ead: $57
	add sp, $7f                                      ; $7eae: $e8 $7f
	ret nz                                           ; $7eb0: $c0

	rst $38                                          ; $7eb1: $ff
	nop                                              ; $7eb2: $00
	inc e                                            ; $7eb3: $1c
	ld hl, sp-$08                                    ; $7eb4: $f8 $f8
	db $fc                                           ; $7eb6: $fc
	inc c                                            ; $7eb7: $0c
	ld hl, sp+$18                                    ; $7eb8: $f8 $18
	db $fc                                           ; $7eba: $fc
	ld a, h                                          ; $7ebb: $7c
	ld hl, sp-$04                                    ; $7ebc: $f8 $fc
	ld a, d                                          ; $7ebe: $7a
	ld [hl], h                                       ; $7ebf: $74
	ld a, [hl]                                       ; $7ec0: $7e
	ld d, b                                          ; $7ec1: $50
	sub h                                            ; $7ec2: $94
	xor a                                            ; $7ec3: $af
	ld e, a                                          ; $7ec4: $5f
	ld e, e                                          ; $7ec5: $5b
	daa                                              ; $7ec6: $27
	cp l                                             ; $7ec7: $bd
	ld b, e                                          ; $7ec8: $43
	ld e, l                                          ; $7ec9: $5d
	jr nz, jr_04f_7e8b                               ; $7eca: $20 $bf

jr_04f_7ecc:
	ld b, b                                          ; $7ecc: $40
	ld c, a                                          ; $7ecd: $4f
	ld a, e                                          ; $7ece: $7b
	db $fc                                           ; $7ecf: $fc
	sbc h                                            ; $7ed0: $9c
	ld b, b                                          ; $7ed1: $40
	jr nc, jr_04f_7ecc                               ; $7ed2: $30 $f8

	ld a, e                                          ; $7ed4: $7b
	jr c, jr_04f_7f56                                ; $7ed5: $38 $7f

	ld b, h                                          ; $7ed7: $44
	sbc c                                            ; $7ed8: $99
	ld [hl], b                                       ; $7ed9: $70
	rst $38                                          ; $7eda: $ff
	or h                                             ; $7edb: $b4
	ld a, [hl]                                       ; $7edc: $7e
	push de                                          ; $7edd: $d5
	ld a, [hl+]                                      ; $7ede: $2a
	ld [hl], l                                       ; $7edf: $75
	call $2096                                       ; $7ee0: $cd $96 $20
	rst SubAFromDE                                          ; $7ee3: $df
	and b                                            ; $7ee4: $a0
	rst SubAFromDE                                          ; $7ee5: $df
	call nz, $3fff                                   ; $7ee6: $c4 $ff $3f
	ret nz                                           ; $7ee9: $c0

	daa                                              ; $7eea: $27
	ld [hl], d                                       ; $7eeb: $72
	ld d, d                                          ; $7eec: $52
	sub [hl]                                         ; $7eed: $96
	ldh [$1f], a                                     ; $7eee: $e0 $1f
	inc l                                            ; $7ef0: $2c
	ret c                                            ; $7ef1: $d8

	ret z                                            ; $7ef2: $c8

	db $fc                                           ; $7ef3: $fc
	inc b                                            ; $7ef4: $04
	ld hl, sp+$03                                    ; $7ef5: $f8 $03
	ld [hl], e                                       ; $7ef7: $73
	call nz, Call_04f_7fff                           ; $7ef8: $c4 $ff $7f
	or $95                                           ; $7efb: $f6 $95
	ld [bc], a                                       ; $7efd: $02
	ld bc, $0112                                     ; $7efe: $01 $12 $01
	ld [hl+], a                                      ; $7f01: $22
	ld de, $13ac                                     ; $7f02: $11 $ac $13
	ld [bc], a                                       ; $7f05: $02
	ld bc, $f66f                                     ; $7f06: $01 $6f $f6
	adc a                                            ; $7f09: $8f
	ld [$f2c4], a                                    ; $7f0a: $ea $c4 $f2
	call nz, $ccea                                   ; $7f0d: $c4 $ea $cc
	jp nc, $a2ec                                     ; $7f10: $d2 $ec $a2

	db $fc                                           ; $7f13: $fc
	sub d                                            ; $7f14: $92
	db $fc                                           ; $7f15: $fc
	add [hl]                                         ; $7f16: $86
	db $fc                                           ; $7f17: $fc
	add b                                            ; $7f18: $80
	db $fc                                           ; $7f19: $fc
	halt                                             ; $7f1a: $76
	add $9e                                          ; $7f1b: $c6 $9e
	rst FarCall                                          ; $7f1d: $f7
	ld [hl], d                                       ; $7f1e: $72
	add $76                                          ; $7f1f: $c6 $76
	cp c                                             ; $7f21: $b9
	ld a, a                                          ; $7f22: $7f
	db $f4                                           ; $7f23: $f4
	ld a, l                                          ; $7f24: $7d
	adc h                                            ; $7f25: $8c
	sbc d                                            ; $7f26: $9a
	dec l                                            ; $7f27: $2d
	ld [de], a                                       ; $7f28: $12
	db $d3                                           ; $7f29: $d3
	inc l                                            ; $7f2a: $2c
	dec hl                                           ; $7f2b: $2b
	ld a, d                                          ; $7f2c: $7a
	cp h                                             ; $7f2d: $bc
	sub e                                            ; $7f2e: $93
	inc h                                            ; $7f2f: $24
	jr jr_04f_7f7a                                   ; $7f30: $18 $48

	ccf                                              ; $7f32: $3f
	cpl                                              ; $7f33: $2f
	rra                                              ; $7f34: $1f
	rst AddAOntoHL                                          ; $7f35: $ef
	ld a, a                                          ; $7f36: $7f
	rst GetHLinHL                                          ; $7f37: $cf
	ccf                                              ; $7f38: $3f
	di                                               ; $7f39: $f3
	inc c                                            ; $7f3a: $0c
	halt                                             ; $7f3b: $76
	ld l, $77                                        ; $7f3c: $2e $77
	ld [hl], $99                                     ; $7f3e: $36 $99
	ei                                               ; $7f40: $fb
	rst $38                                          ; $7f41: $ff
	rst FarCall                                          ; $7f42: $f7
	add b                                            ; $7f43: $80
	ld hl, sp-$80                                    ; $7f44: $f8 $80
	ld l, l                                          ; $7f46: $6d
	add sp, -$62                                     ; $7f47: $e8 $9e
	rrca                                             ; $7f49: $0f
	ld a, e                                          ; $7f4a: $7b
	ldh a, [$9a]                                     ; $7f4b: $f0 $9a
	cp e                                             ; $7f4d: $bb
	rst $38                                          ; $7f4e: $ff
	cp $00                                           ; $7f4f: $fe $00
	inc bc                                           ; $7f51: $03
	ld a, e                                          ; $7f52: $7b
	inc l                                            ; $7f53: $2c
	db $fd                                           ; $7f54: $fd
	sbc l                                            ; $7f55: $9d

jr_04f_7f56:
	or l                                             ; $7f56: $b5
	ld c, d                                          ; $7f57: $4a
	ld [hl], a                                       ; $7f58: $77
	ldh a, [$7e]                                     ; $7f59: $f0 $7e
	and e                                            ; $7f5b: $a3

jr_04f_7f5c:
	ld a, a                                          ; $7f5c: $7f
	db $fd                                           ; $7f5d: $fd
	sbc [hl]                                         ; $7f5e: $9e
	ld e, [hl]                                       ; $7f5f: $5e
	ld h, l                                          ; $7f60: $65

jr_04f_7f61:
	ret                                              ; $7f61: $c9


	ld a, a                                          ; $7f62: $7f
	ld l, b                                          ; $7f63: $68
	sub a                                            ; $7f64: $97
	rst $38                                          ; $7f65: $ff
	ld a, b                                          ; $7f66: $78
	ld hl, sp-$40                                    ; $7f67: $f8 $c0
	jr c, @+$72                                      ; $7f69: $38 $70

	nop                                              ; $7f6b: $00
	ld [hl], b                                       ; $7f6c: $70
	cp $9c                                           ; $7f6d: $fe $9c
	jr jr_04f_7f61                                   ; $7f6f: $18 $f0

	db $10                                           ; $7f71: $10
	sbc $f8                                          ; $7f72: $de $f8
	sbc b                                            ; $7f74: $98
	inc c                                            ; $7f75: $0c
	ld [hl], e                                       ; $7f76: $73
	rlca                                             ; $7f77: $07

Call_04f_7f78:
	ld a, b                                          ; $7f78: $78
	rlca                                             ; $7f79: $07

jr_04f_7f7a:
	ld a, b                                          ; $7f7a: $78
	inc b                                            ; $7f7b: $04
	ld a, e                                          ; $7f7c: $7b
	cp $7f                                           ; $7f7d: $fe $7f
	ld a, [$3f97]                                    ; $7f7f: $fa $97 $3f
	ld a, a                                          ; $7f82: $7f
	rra                                              ; $7f83: $1f
	ld a, a                                          ; $7f84: $7f
	ld h, c                                          ; $7f85: $61
	cp $c3                                           ; $7f86: $fe $c3
	nop                                              ; $7f88: $00
	ld a, d                                          ; $7f89: $7a
	bit 5, c                                         ; $7f8a: $cb $69
	adc d                                            ; $7f8c: $8a
	sbc [hl]                                         ; $7f8d: $9e
	cp a                                             ; $7f8e: $bf
	ld a, d                                          ; $7f8f: $7a
	db $db                                           ; $7f90: $db
	ld a, [hl]                                       ; $7f91: $7e
	bit 7, l                                         ; $7f92: $cb $7d
	db $fc                                           ; $7f94: $fc

Jump_04f_7f95:
	ld e, [hl]                                       ; $7f95: $5e
	ld l, d                                          ; $7f96: $6a
	ld a, a                                          ; $7f97: $7f
	ldh a, [rPCM12]                                  ; $7f98: $f0 $76
	ld b, b                                          ; $7f9a: $40
	db $fd                                           ; $7f9b: $fd
	sbc l                                            ; $7f9c: $9d
	cp d                                             ; $7f9d: $ba
	ld b, l                                          ; $7f9e: $45
	db $dd                                           ; $7f9f: $dd
	rst $38                                          ; $7fa0: $ff
	ld a, a                                          ; $7fa1: $7f
	ld a, [hl+]                                      ; $7fa2: $2a
	sub d                                            ; $7fa3: $92
	add a                                            ; $7fa4: $87
	nop                                              ; $7fa5: $00
	ld a, a                                          ; $7fa6: $7f
	rst $38                                          ; $7fa7: $ff
	jr nc, @+$01                                     ; $7fa8: $30 $ff

	inc l                                            ; $7faa: $2c
	rra                                              ; $7fab: $1f
	ld c, c                                          ; $7fac: $49
	rlca                                             ; $7fad: $07
	ld a, [hl]                                       ; $7fae: $7e
	ld bc, $7284                                     ; $7faf: $01 $84 $72
	ld d, d                                          ; $7fb2: $52
	ld a, l                                          ; $7fb3: $7d
	cp c                                             ; $7fb4: $b9
	ld a, a                                          ; $7fb5: $7f
	push bc                                          ; $7fb6: $c5
	ld a, [hl]                                       ; $7fb7: $7e
	ld c, l                                          ; $7fb8: $4d
	ld a, h                                          ; $7fb9: $7c
	reti                                             ; $7fba: $d9


	ld [hl], h                                       ; $7fbb: $74
	cp h                                             ; $7fbc: $bc
	ld a, a                                          ; $7fbd: $7f
	call nz, $0898                                   ; $7fbe: $c4 $98 $08
	db $fc                                           ; $7fc1: $fc
	sbc b                                            ; $7fc2: $98
	db $fc                                           ; $7fc3: $fc
	ld [$f8fc], sp                                   ; $7fc4: $08 $fc $f8
	ld a, d                                          ; $7fc7: $7a
	ld a, [$0c9e]                                    ; $7fc8: $fa $9e $0c
	cp $96                                           ; $7fcb: $fe $96
	ret nz                                           ; $7fcd: $c0

	ccf                                              ; $7fce: $3f
	xor l                                            ; $7fcf: $ad
	ld e, a                                          ; $7fd0: $5f
	ret nc                                           ; $7fd1: $d0

	cpl                                              ; $7fd2: $2f
	cp b                                             ; $7fd3: $b8
	ld b, a                                          ; $7fd4: $47
	rst SubAFromDE                                          ; $7fd5: $df
	ld a, d                                          ; $7fd6: $7a
	jp nz, $d08f                                     ; $7fd7: $c2 $8f $d0

	jr nz, jr_04f_7f5c                               ; $7fda: $20 $80

	ld [hl], b                                       ; $7fdc: $70
	ld bc, $80ff                                     ; $7fdd: $01 $ff $80
	rst $38                                          ; $7fe0: $ff
	dec bc                                           ; $7fe1: $0b
	rst $38                                          ; $7fe2: $ff
	ld a, c                                          ; $7fe3: $79
	rst $38                                          ; $7fe4: $ff
	bit 7, a                                         ; $7fe5: $cb $7f
	add a                                            ; $7fe7: $87
	ld a, b                                          ; $7fe8: $78
	db $fd                                           ; $7fe9: $fd
	sbc [hl]                                         ; $7fea: $9e
	db $fd                                           ; $7feb: $fd
	ld a, e                                          ; $7fec: $7b
	ret z                                            ; $7fed: $c8

	sbc [hl]                                         ; $7fee: $9e
	ld l, l                                          ; $7fef: $6d
	ld a, e                                          ; $7ff0: $7b
	db $fc                                           ; $7ff1: $fc
	ld a, e                                          ; $7ff2: $7b
	add e                                            ; $7ff3: $83
	db $fc                                           ; $7ff4: $fc
	sbc d                                            ; $7ff5: $9a
	add h                                            ; $7ff6: $84
	ld hl, sp+$07                                    ; $7ff7: $f8 $07
	ld hl, sp-$44                                    ; $7ff9: $f8 $bc

Jump_04f_7ffb:
	ld [hl], b                                       ; $7ffb: $70
	push de                                          ; $7ffc: $d5
	ld a, a                                          ; $7ffd: $7f
	db $ed                                           ; $7ffe: $ed

Call_04f_7fff:
	ld a, d                                          ; $7fff: $7a
