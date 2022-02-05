; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $021", ROMX[$4000], BANK[$21]

	ld e, d                                          ; $4000: $5a
	add l                                            ; $4001: $85
	adc b                                            ; $4002: $88
	dec sp                                           ; $4003: $3b
	db $38, $b1                                      ; $4004: $38 $b1
	ld bc, $c487                                     ; $4006: $01 $87 $c4
	pop de                                           ; $4009: $d1
	ld [bc], a                                       ; $400a: $02
	rst $38                                          ; $400b: $ff
	rst $38                                          ; $400c: $ff
	ld a, a                                          ; $400d: $7f
	rst $38                                          ; $400e: $ff
	ld a, e                                          ; $400f: $7b
	dec sp                                           ; $4010: $3b
	ld a, $ff                                        ; $4011: $3e $ff
	ld a, [hl]                                       ; $4013: $7e
	ld a, a                                          ; $4014: $7f
	rst $38                                          ; $4015: $ff
	set 5, b                                         ; $4016: $cb $e8
	db $fc                                           ; $4018: $fc
	ld a, a                                          ; $4019: $7f
	ret c                                            ; $401a: $d8

	rst $38                                          ; $401b: $ff
	sub a                                            ; $401c: $97
	ld e, l                                          ; $401d: $5d
	xor b                                            ; $401e: $a8
	inc d                                            ; $401f: $14
	xor b                                            ; $4020: $a8
	ld d, l                                          ; $4021: $55
	xor d                                            ; $4022: $aa
	ld d, l                                          ; $4023: $55
	xor e                                            ; $4024: $ab
	reti                                             ; $4025: $d9


	rst $38                                          ; $4026: $ff
	ld a, a                                          ; $4027: $7f
	db $f4                                           ; $4028: $f4
	sbc [hl]                                         ; $4029: $9e
	ld [hl], l                                       ; $402a: $75
	ld a, e                                          ; $402b: $7b
	ldh a, [c]                                       ; $402c: $f2
	sbc l                                            ; $402d: $9d
	push de                                          ; $402e: $d5
	add e                                            ; $402f: $83
	reti                                             ; $4030: $d9


	rst $38                                          ; $4031: $ff
	sbc l                                            ; $4032: $9d
	and a                                            ; $4033: $a7
	xor [hl]                                         ; $4034: $ae
	ld [hl], a                                       ; $4035: $77
	cp $9d                                           ; $4036: $fe $9d
	daa                                              ; $4038: $27
	xor d                                            ; $4039: $aa
	sub $ff                                          ; $403a: $d6 $ff
	call c, $d2bf                                    ; $403c: $dc $bf $d2
	rst $38                                          ; $403f: $ff
	sbc [hl]                                         ; $4040: $9e
	ld a, [hl]                                       ; $4041: $7e
	db $d3                                           ; $4042: $d3
	rst $38                                          ; $4043: $ff
	sbc l                                            ; $4044: $9d
	ld a, a                                          ; $4045: $7f
	rst FarCall                                          ; $4046: $f7
	reti                                             ; $4047: $d9


	rst $38                                          ; $4048: $ff
	sbc c                                            ; $4049: $99
	ei                                               ; $404a: $fb
	rst SubAFromHL                                          ; $404b: $d7
	rst AddAOntoHL                                          ; $404c: $ef
	rst SubAFromHL                                          ; $404d: $d7
	rst AddAOntoHL                                          ; $404e: $ef
	rst SubAFromDE                                          ; $404f: $df
	rst SubAFromHL                                          ; $4050: $d7
	rst $38                                          ; $4051: $ff
	sbc l                                            ; $4052: $9d
	ld a, [$77f6]                                    ; $4053: $fa $f6 $77
	cp $9d                                           ; $4056: $fe $9d
	cp $f6                                           ; $4058: $fe $f6
	ld h, e                                          ; $405a: $63
	sub $98                                          ; $405b: $d6 $98
	ld a, d                                          ; $405d: $7a
	ld a, a                                          ; $405e: $7f
	ld a, [$3bb7]                                    ; $405f: $fa $b7 $3b
	or l                                             ; $4062: $b5
	ld l, d                                          ; $4063: $6a
	reti                                             ; $4064: $d9


	rst $38                                          ; $4065: $ff
	sbc h                                            ; $4066: $9c
	cp [hl]                                          ; $4067: $be
	rst SubAFromDE                                          ; $4068: $df
	cp $dd                                           ; $4069: $fe $dd
	rst $38                                          ; $406b: $ff
	ld h, e                                          ; $406c: $63
	ret nz                                           ; $406d: $c0

	sub a                                            ; $406e: $97
	cp $5f                                           ; $406f: $fe $5f
	ldh a, [c]                                       ; $4071: $f2
	db $fd                                           ; $4072: $fd
	or [hl]                                          ; $4073: $b6
	ld e, a                                          ; $4074: $5f
	xor a                                            ; $4075: $af
	call nc, $ffd9                                   ; $4076: $d4 $d9 $ff
	ld a, a                                          ; $4079: $7f
	ld h, e                                          ; $407a: $63
	ld a, a                                          ; $407b: $7f
	cp $9b                                           ; $407c: $fe $9b
	or e                                             ; $407e: $b3
	ld e, a                                          ; $407f: $5f
	db $e4                                           ; $4080: $e4
	ld d, l                                          ; $4081: $55
	reti                                             ; $4082: $d9


	rst $38                                          ; $4083: $ff
	sbc d                                            ; $4084: $9a
	push de                                          ; $4085: $d5
	xor d                                            ; $4086: $aa
	ld d, h                                          ; $4087: $54
	xor e                                            ; $4088: $ab
	ld e, l                                          ; $4089: $5d
	ld a, e                                          ; $408a: $7b
	db $eb                                           ; $408b: $eb
	reti                                             ; $408c: $d9


	rst $38                                          ; $408d: $ff
	sbc b                                            ; $408e: $98
	ld [hl], l                                       ; $408f: $75
	ld [$aad5], a                                    ; $4090: $ea $d5 $aa
	ld d, l                                          ; $4093: $55
	xor c                                            ; $4094: $a9
	ld [hl], a                                       ; $4095: $77
	ld h, e                                          ; $4096: $63
	ret nz                                           ; $4097: $c0

	sub a                                            ; $4098: $97
	ld [hl], l                                       ; $4099: $75
	cp d                                             ; $409a: $ba
	ld d, l                                          ; $409b: $55
	xor d                                            ; $409c: $aa
	push de                                          ; $409d: $d5
	xor d                                            ; $409e: $aa
	push de                                          ; $409f: $d5
	db $eb                                           ; $40a0: $eb
	ld e, a                                          ; $40a1: $5f
	jr nz, @-$65                                     ; $40a2: $20 $99

	ld d, l                                          ; $40a4: $55
	xor $77                                          ; $40a5: $ee $77
	sbc a                                            ; $40a7: $9f
	cp $ad                                           ; $40a8: $fe $ad
	sbc $ff                                          ; $40aa: $de $ff
	sbc [hl]                                         ; $40ac: $9e
	ld sp, hl                                        ; $40ad: $f9
	ld [hl], a                                       ; $40ae: $77
	ld c, b                                          ; $40af: $48
	ld a, e                                          ; $40b0: $7b
	ldh a, [$7f]                                     ; $40b1: $f0 $7f
	ldh [c], a                                       ; $40b3: $e2
	sbc h                                            ; $40b4: $9c
	xor a                                            ; $40b5: $af
	db $dd                                           ; $40b6: $dd
	xor [hl]                                         ; $40b7: $ae
	jp c, $91ff                                      ; $40b8: $da $ff $91

	ld sp, hl                                        ; $40bb: $f9
	halt                                             ; $40bc: $76
	xor $75                                          ; $40bd: $ee $75
	xor a                                            ; $40bf: $af
	halt                                             ; $40c0: $76
	xor e                                            ; $40c1: $ab
	push de                                          ; $40c2: $d5
	xor d                                            ; $40c3: $aa
	db $fd                                           ; $40c4: $fd
	ei                                               ; $40c5: $fb
	rst $38                                          ; $40c6: $ff
	cp $cd                                           ; $40c7: $fe $cd
	ld a, e                                          ; $40c9: $7b
	ld [hl], l                                       ; $40ca: $75
	sub a                                            ; $40cb: $97
	ld d, b                                          ; $40cc: $50
	and b                                            ; $40cd: $a0
	nop                                              ; $40ce: $00
	nop                                              ; $40cf: $00
	dec d                                            ; $40d0: $15
	ld [bc], a                                       ; $40d1: $02
	nop                                              ; $40d2: $00
	ld bc, $ffdd                                     ; $40d3: $01 $dd $ff
	sbc e                                            ; $40d6: $9b
	ld [$fffd], a                                    ; $40d7: $ea $fd $ff
	cp $fe                                           ; $40da: $fe $fe
	sbc e                                            ; $40dc: $9b
	xor b                                            ; $40dd: $a8
	ld b, d                                          ; $40de: $42
	add h                                            ; $40df: $84
	ld a, [hl+]                                      ; $40e0: $2a
	ld [hl], a                                       ; $40e1: $77
	add b                                            ; $40e2: $80
	sbc d                                            ; $40e3: $9a
	ld d, a                                          ; $40e4: $57
	cp l                                             ; $40e5: $bd
	ld a, e                                          ; $40e6: $7b
	push de                                          ; $40e7: $d5
	xor d                                            ; $40e8: $aa
	ei                                               ; $40e9: $fb
	ld a, a                                          ; $40ea: $7f
	cp e                                             ; $40eb: $bb
	ld h, a                                          ; $40ec: $67
	and d                                            ; $40ed: $a2
	cp $9b                                           ; $40ee: $fe $9b
	ld b, b                                          ; $40f0: $40
	ld [bc], a                                       ; $40f1: $02
	ld bc, $7702                                     ; $40f2: $01 $02 $77
	ldh a, [$9b]                                     ; $40f5: $f0 $9b
	cp a                                             ; $40f7: $bf
	db $fd                                           ; $40f8: $fd
	cp $fd                                           ; $40f9: $fe $fd
	ld [hl], e                                       ; $40fb: $73
	ldh a, [rPCM34]                                  ; $40fc: $f0 $77
	ld c, h                                          ; $40fe: $4c
	ld [hl], a                                       ; $40ff: $77
	ldh a, [rPCM34]                                  ; $4100: $f0 $77
	sub h                                            ; $4102: $94
	pop af                                           ; $4103: $f1
	sub e                                            ; $4104: $93
	rla                                              ; $4105: $17
	rra                                              ; $4106: $1f
	ld a, [$39c2]                                    ; $4107: $fa $c2 $39
	ld [hl], a                                       ; $410a: $77
	ld a, l                                          ; $410b: $7d
	pop bc                                           ; $410c: $c1
	rst AddAOntoHL                                          ; $410d: $ef

jr_021_410e:
	rst $38                                          ; $410e: $ff
	ccf                                              ; $410f: $3f
	ccf                                              ; $4110: $3f
	sbc $ff                                          ; $4111: $de $ff
	ld a, e                                          ; $4113: $7b
	db $fc                                           ; $4114: $fc
	sbc d                                            ; $4115: $9a
	ld a, a                                          ; $4116: $7f
	cp a                                             ; $4117: $bf
	rst $38                                          ; $4118: $ff
	rst GetHLinHL                                          ; $4119: $cf
	push af                                          ; $411a: $f5
	ld [hl], a                                       ; $411b: $77
	ld h, h                                          ; $411c: $64
	ld a, d                                          ; $411d: $7a
	ld e, e                                          ; $411e: $5b
	ld a, a                                          ; $411f: $7f
	ld a, e                                          ; $4120: $7b
	ld [hl], a                                       ; $4121: $77
	call z, $3e77                                    ; $4122: $cc $77 $3e
	ld a, e                                          ; $4125: $7b
	jp hl                                            ; $4126: $e9


	ld [hl], d                                       ; $4127: $72
	ld c, e                                          ; $4128: $4b
	sbc b                                            ; $4129: $98
	dec b                                            ; $412a: $05
	xor d                                            ; $412b: $aa
	ld b, l                                          ; $412c: $45
	xor d                                            ; $412d: $aa
	ld e, l                                          ; $412e: $5d
	cp [hl]                                          ; $412f: $be
	ld e, a                                          ; $4130: $5f
	ld [hl], d                                       ; $4131: $72
	db $db                                           ; $4132: $db
	db $dd                                           ; $4133: $dd
	rst $38                                          ; $4134: $ff
	sbc b                                            ; $4135: $98
	daa                                              ; $4136: $27
	and e                                            ; $4137: $a3
	daa                                              ; $4138: $27
	ld a, [hl+]                                      ; $4139: $2a
	ld l, e                                          ; $413a: $6b
	ld l, d                                          ; $413b: $6a
	ld l, e                                          ; $413c: $6b
	ld h, d                                          ; $413d: $62
	ret nz                                           ; $413e: $c0

	sub a                                            ; $413f: $97
	cp a                                             ; $4140: $bf
	cp l                                             ; $4141: $bd
	ccf                                              ; $4142: $3f
	dec a                                            ; $4143: $3d
	dec sp                                           ; $4144: $3b
	dec a                                            ; $4145: $3d
	add hl, sp                                       ; $4146: $39
	dec a                                            ; $4147: $3d
	ret c                                            ; $4148: $d8

	rst $38                                          ; $4149: $ff
	ld a, a                                          ; $414a: $7f
	sub $9c                                          ; $414b: $d6 $9c
	ld a, [hl]                                       ; $414d: $7e
	db $fd                                           ; $414e: $fd
	cp $7b                                           ; $414f: $fe $7b
	ld a, [$9066]                                    ; $4151: $fa $66 $90
	ld l, a                                          ; $4154: $6f
	cp $9e                                           ; $4155: $fe $9e
	sbc a                                            ; $4157: $9f
	ret                                              ; $4158: $c9


	rst $38                                          ; $4159: $ff
	ld a, [hl]                                       ; $415a: $7e
	ld h, [hl]                                       ; $415b: $66
	rst SubAFromDE                                          ; $415c: $df
	db $fc                                           ; $415d: $fc
	sbc e                                            ; $415e: $9b
	ld hl, sp-$18                                    ; $415f: $f8 $e8
	ret z                                            ; $4161: $c8

	ret z                                            ; $4162: $c8

	reti                                             ; $4163: $d9


	rst $38                                          ; $4164: $ff
	sbc b                                            ; $4165: $98
	cp l                                             ; $4166: $bd
	ld [hl], e                                       ; $4167: $73
	xor a                                            ; $4168: $af
	ld [hl], a                                       ; $4169: $77
	rst AddAOntoHL                                          ; $416a: $ef
	ld d, a                                          ; $416b: $57
	rst AddAOntoHL                                          ; $416c: $ef
	ld h, d                                          ; $416d: $62
	jr nz, jr_021_410e                               ; $416e: $20 $9e

	xor e                                            ; $4170: $ab
	ld a, e                                          ; $4171: $7b
	ld [hl], c                                       ; $4172: $71
	sbc e                                            ; $4173: $9b
	xor [hl]                                         ; $4174: $ae
	ld e, l                                          ; $4175: $5d
	xor d                                            ; $4176: $aa
	push de                                          ; $4177: $d5
	ld l, a                                          ; $4178: $6f
	db $d3                                           ; $4179: $d3
	sub [hl]                                         ; $417a: $96
	rst SubAFromDE                                          ; $417b: $df
	rst AddAOntoHL                                          ; $417c: $ef
	db $eb                                           ; $417d: $eb
	push de                                          ; $417e: $d5
	xor h                                            ; $417f: $ac
	ld d, [hl]                                       ; $4180: $56
	cp a                                             ; $4181: $bf
	rst SubAFromDE                                          ; $4182: $df
	cp [hl]                                          ; $4183: $be
	ld [hl], a                                       ; $4184: $77
	ld d, b                                          ; $4185: $50
	ld [hl], a                                       ; $4186: $77
	and e                                            ; $4187: $a3
	sub a                                            ; $4188: $97
	cp $aa                                           ; $4189: $fe $aa
	db $dd                                           ; $418b: $dd
	cp $dd                                           ; $418c: $fe $dd
	db $ec                                           ; $418e: $ec
	rst SubAFromHL                                          ; $418f: $d7
	xor [hl]                                         ; $4190: $ae
	ld [hl], d                                       ; $4191: $72
	ldh a, [hDisp1_OBP0]                                     ; $4192: $f0 $93
	ei                                               ; $4194: $fb
	ld sp, hl                                        ; $4195: $f9
	db $fd                                           ; $4196: $fd
	rst $38                                          ; $4197: $ff
	ld d, l                                          ; $4198: $55
	xor [hl]                                         ; $4199: $ae
	ld d, a                                          ; $419a: $57
	xor a                                            ; $419b: $af
	ld e, a                                          ; $419c: $5f
	rst FarCall                                          ; $419d: $f7
	db $dd                                           ; $419e: $dd
	cp h                                             ; $419f: $bc
	call c, $94ff                                    ; $41a0: $dc $ff $94
	rst AddAOntoHL                                          ; $41a3: $ef
	db $e3                                           ; $41a4: $e3
	db $e3                                           ; $41a5: $e3
	ld a, a                                          ; $41a6: $7f
	cp $fd                                           ; $41a7: $fe $fd
	ld a, [$ea35]                                    ; $41a9: $fa $35 $ea
	or l                                             ; $41ac: $b5
	ld a, [$ffde]                                    ; $41ad: $fa $de $ff
	ld a, e                                          ; $41b0: $7b
	ld l, c                                          ; $41b1: $69
	ld a, a                                          ; $41b2: $7f
	ld sp, hl                                        ; $41b3: $f9
	add b                                            ; $41b4: $80
	push af                                          ; $41b5: $f5
	xor [hl]                                         ; $41b6: $ae
	ld d, a                                          ; $41b7: $57
	cp [hl]                                          ; $41b8: $be
	ld d, a                                          ; $41b9: $57
	and d                                            ; $41ba: $a2
	db $dd                                           ; $41bb: $dd
	xor d                                            ; $41bc: $aa
	cp $ff                                           ; $41bd: $fe $ff
	rst AddAOntoHL                                          ; $41bf: $ef
	rst $38                                          ; $41c0: $ff
	rst $38                                          ; $41c1: $ff
	db $dd                                           ; $41c2: $dd
	ld [hl], d                                       ; $41c3: $72
	push de                                          ; $41c4: $d5
	db $dd                                           ; $41c5: $dd
	xor [hl]                                         ; $41c6: $ae
	ld e, a                                          ; $41c7: $5f
	xor l                                            ; $41c8: $ad
	ld d, l                                          ; $41c9: $55
	db $eb                                           ; $41ca: $eb
	ld a, e                                          ; $41cb: $7b
	and b                                            ; $41cc: $a0
	ld a, $ff                                        ; $41cd: $3e $ff
	cp $fe                                           ; $41cf: $fe $fe
	rst $38                                          ; $41d1: $ff
	ld a, a                                          ; $41d2: $7f
	rst GetHLinHL                                          ; $41d3: $cf
	sbc c                                            ; $41d4: $99
	rst $38                                          ; $41d5: $ff
	ld h, b                                          ; $41d6: $60
	ld b, h                                          ; $41d7: $44
	jr z, jr_021_41de                                ; $41d8: $28 $04

	add b                                            ; $41da: $80
	cp $d9                                           ; $41db: $fe $d9
	rst $38                                          ; $41dd: $ff

jr_021_41de:
	sbc e                                            ; $41de: $9b
	scf                                              ; $41df: $37
	ld d, $36                                        ; $41e0: $16 $36
	db $10                                           ; $41e2: $10
	cp $9e                                           ; $41e3: $fe $9e
	dec b                                            ; $41e5: $05
	ld h, l                                          ; $41e6: $65
	or c                                             ; $41e7: $b1
	ld a, a                                          ; $41e8: $7f
	or $91                                           ; $41e9: $f6 $91
	ld [bc], a                                       ; $41eb: $02
	dec d                                            ; $41ec: $15
	ld a, [hl+]                                      ; $41ed: $2a
	dec b                                            ; $41ee: $05
	ld a, [bc]                                       ; $41ef: $0a
	ld d, l                                          ; $41f0: $55
	rst $38                                          ; $41f1: $ff
	ld a, [$eafd]                                    ; $41f2: $fa $fd $ea
	push de                                          ; $41f5: $d5
	ld a, [$aaf5]                                    ; $41f6: $fa $f5 $aa
	ld [hl], d                                       ; $41f9: $72
	pop de                                           ; $41fa: $d1
	ld a, e                                          ; $41fb: $7b
	cp $6b                                           ; $41fc: $fe $6b
	ld sp, hl                                        ; $41fe: $f9
	ld l, e                                          ; $41ff: $6b
	ldh a, [$7f]                                     ; $4200: $f0 $7f
	ld c, d                                          ; $4202: $4a
	ld l, a                                          ; $4203: $6f
	ldh a, [c]                                       ; $4204: $f2
	sbc [hl]                                         ; $4205: $9e
	ld d, h                                          ; $4206: $54
	ld [hl], a                                       ; $4207: $77
	ldh a, [$9a]                                     ; $4208: $f0 $9a
	ld a, a                                          ; $420a: $7f
	xor [hl]                                         ; $420b: $ae
	ld a, l                                          ; $420c: $7d
	xor d                                            ; $420d: $aa
	ld d, a                                          ; $420e: $57
	ld a, e                                          ; $420f: $7b
	ldh a, [c]                                       ; $4210: $f2
	sub a                                            ; $4211: $97
	add b                                            ; $4212: $80
	ld d, b                                          ; $4213: $50
	add b                                            ; $4214: $80
	ld d, h                                          ; $4215: $54
	xor b                                            ; $4216: $a8
	xor a                                            ; $4217: $af
	cp $fb                                           ; $4218: $fe $fb
	ld a, c                                          ; $421a: $79
	pop hl                                           ; $421b: $e1
	ld a, a                                          ; $421c: $7f
	cp $9e                                           ; $421d: $fe $9e
	ld d, b                                          ; $421f: $50
	ld [$ce8f], a                                    ; $4220: $ea $8f $ce
	cp [hl]                                          ; $4223: $be
	sub d                                            ; $4224: $92
	rst SubAFromBC                                          ; $4225: $e7
	xor $b4                                          ; $4226: $ee $b4
	xor h                                            ; $4228: $ac
	cp $3f                                           ; $4229: $fe $3f
	ld a, a                                          ; $422b: $7f
	ld l, a                                          ; $422c: $6f
	inc e                                            ; $422d: $1c
	dec e                                            ; $422e: $1d
	ld a, e                                          ; $422f: $7b
	ld [hl], e                                       ; $4230: $73
	rlca                                             ; $4231: $07
	ld a, e                                          ; $4232: $7b
	ld e, c                                          ; $4233: $59
	sub a                                            ; $4234: $97
	ld a, a                                          ; $4235: $7f
	ccf                                              ; $4236: $3f
	ld a, c                                          ; $4237: $79
	ld a, [hl+]                                      ; $4238: $2a
	ld [hl], h                                       ; $4239: $74
	rst $38                                          ; $423a: $ff
	sbc a                                            ; $423b: $9f
	rrca                                             ; $423c: $0f
	ld a, b                                          ; $423d: $78
	db $fc                                           ; $423e: $fc
	sub h                                            ; $423f: $94
	db $dd                                           ; $4240: $dd
	set 4, l                                         ; $4241: $cb $e5
	ei                                               ; $4243: $fb
	ld [hl], l                                       ; $4244: $75
	xor d                                            ; $4245: $aa
	ld e, a                                          ; $4246: $5f
	rst AddAOntoHL                                          ; $4247: $ef
	rst FarCall                                          ; $4248: $f7
	ld a, e                                          ; $4249: $7b
	rst SubAFromDE                                          ; $424a: $df
	ld l, h                                          ; $424b: $6c
	xor $9e                                          ; $424c: $ee $9e
	rst SubAFromBC                                          ; $424e: $e7
	halt                                             ; $424f: $76
	sub h                                            ; $4250: $94
	sbc h                                            ; $4251: $9c
	ld e, h                                          ; $4252: $5c
	or a                                             ; $4253: $b7
	db $eb                                           ; $4254: $eb
	ld h, c                                          ; $4255: $61
	add b                                            ; $4256: $80
	sub a                                            ; $4257: $97
	ld l, a                                          ; $4258: $6f
	ld l, [hl]                                       ; $4259: $6e
	ld c, l                                          ; $425a: $4d
	ld c, [hl]                                       ; $425b: $4e
	ld c, h                                          ; $425c: $4c
	ld c, [hl]                                       ; $425d: $4e
	ld c, h                                          ; $425e: $4c
	ld c, $d9                                        ; $425f: $0e $d9
	rst $38                                          ; $4261: $ff
	rst SubAFromDE                                          ; $4262: $df
	add hl, sp                                       ; $4263: $39
	sbc c                                            ; $4264: $99
	jr c, jr_021_42a0                                ; $4265: $38 $39

	jr c, jr_021_42e2                                ; $4267: $38 $79

	ld a, b                                          ; $4269: $78
	ld a, c                                          ; $426a: $79
	ld h, [hl]                                       ; $426b: $66
	sub c                                            ; $426c: $91
	sub a                                            ; $426d: $97
	ld a, l                                          ; $426e: $7d
	db $ec                                           ; $426f: $ec
	ld a, l                                          ; $4270: $7d
	db $ec                                           ; $4271: $ec
	ld a, a                                          ; $4272: $7f
	ld l, $7f                                        ; $4273: $2e $7f
	xor $4a                                          ; $4275: $ee $4a
	ld h, b                                          ; $4277: $60
	ld e, b                                          ; $4278: $58
	adc $d3                                          ; $4279: $ce $d3
	rst $38                                          ; $427b: $ff
	sub a                                            ; $427c: $97
	jp z, $ded8                                      ; $427d: $ca $d8 $de

	sbc [hl]                                         ; $4280: $9e
	ret c                                            ; $4281: $d8

	sbc [hl]                                         ; $4282: $9e
	ret c                                            ; $4283: $d8

	sbc b                                            ; $4284: $98
	reti                                             ; $4285: $d9


	rst $38                                          ; $4286: $ff
	sub a                                            ; $4287: $97
	cp e                                             ; $4288: $bb
	push af                                          ; $4289: $f5
	cp e                                             ; $428a: $bb
	db $fd                                           ; $428b: $fd
	xor e                                            ; $428c: $ab
	push de                                          ; $428d: $d5
	xor [hl]                                         ; $428e: $ae
	reti                                             ; $428f: $d9


	ld [hl], b                                       ; $4290: $70
	call z, $fb8f                                    ; $4291: $cc $8f $fb
	di                                               ; $4294: $f3
	and $2a                                          ; $4295: $e6 $2a
	ld e, l                                          ; $4297: $5d
	xor [hl]                                         ; $4298: $ae
	sub $2f                                          ; $4299: $d6 $2f
	ret nc                                           ; $429b: $d0

	sub b                                            ; $429c: $90
	sub b                                            ; $429d: $90

jr_021_429e:
	rst FarCall                                          ; $429e: $f7
	db $e3                                           ; $429f: $e3

jr_021_42a0:
	pop af                                           ; $42a0: $f1
	jp hl                                            ; $42a1: $e9


	ldh a, [$de]                                     ; $42a2: $f0 $de
	ld h, h                                          ; $42a4: $64
	sbc d                                            ; $42a5: $9a
	db $ed                                           ; $42a6: $ed
	ld e, l                                          ; $42a7: $5d
	ld d, l                                          ; $42a8: $55
	sbc a                                            ; $42a9: $9f
	rst $38                                          ; $42aa: $ff
	cp $9b                                           ; $42ab: $fe $9b
	ld a, [$eee6]                                    ; $42ad: $fa $e6 $ee
	ld h, b                                          ; $42b0: $60
	db $fd                                           ; $42b1: $fd
	sbc e                                            ; $42b2: $9b
	ld l, e                                          ; $42b3: $6b
	or $fb                                           ; $42b4: $f6 $fb
	rst $38                                          ; $42b6: $ff
	ld [hl], a                                       ; $42b7: $77
	ldh a, [$9c]                                     ; $42b8: $f0 $9c
	rst SubAFromDE                                          ; $42ba: $df
	rrca                                             ; $42bb: $0f
	ld b, $fc                                        ; $42bc: $06 $fc
	sbc [hl]                                         ; $42be: $9e
	ldh a, [c]                                       ; $42bf: $f2
	db $dd                                           ; $42c0: $dd
	rst $38                                          ; $42c1: $ff
	cp $9a                                           ; $42c2: $fe $9a
	sbc a                                            ; $42c4: $9f
	call z, $014c                     ; $42c5: $cc $4c $01
	nop                                              ; $42c8: $00
	sbc $04                                          ; $42c9: $de $04
	sub a                                            ; $42cb: $97
	rst FarCall                                          ; $42cc: $f7
	db $fd                                           ; $42cd: $fd
	ld a, d                                          ; $42ce: $7a
	push af                                          ; $42cf: $f5
	ld [$6eff], a                                    ; $42d0: $ea $ff $6e
	inc a                                            ; $42d3: $3c
	ld a, c                                          ; $42d4: $79
	add l                                            ; $42d5: $85
	adc b                                            ; $42d6: $88
	ccf                                              ; $42d7: $3f
	rra                                              ; $42d8: $1f
	inc de                                           ; $42d9: $13
	sub e                                            ; $42da: $93
	jp Jump_021_4e75                                 ; $42db: $c3 $75 $4e


	cp a                                             ; $42de: $bf
	cpl                                              ; $42df: $2f
	db $ed                                           ; $42e0: $ed
	ld c, b                                          ; $42e1: $48

jr_021_42e2:
	ld e, b                                          ; $42e2: $58
	sub l                                            ; $42e3: $95
	sbc a                                            ; $42e4: $9f
	di                                               ; $42e5: $f3
	ld d, a                                          ; $42e6: $57
	db $d3                                           ; $42e7: $d3
	di                                               ; $42e8: $f3
	rst FarCall                                          ; $42e9: $f7
	rst SubAFromBC                                          ; $42ea: $e7
	ld l, d                                          ; $42eb: $6a
	cp e                                             ; $42ec: $bb
	push de                                          ; $42ed: $d5
	ld a, b                                          ; $42ee: $78
	sbc a                                            ; $42ef: $9f
	ld a, c                                          ; $42f0: $79
	ld [hl], c                                       ; $42f1: $71
	ld [hl], b                                       ; $42f2: $70
	xor d                                            ; $42f3: $aa
	ld a, a                                          ; $42f4: $7f
	cp $ff                                           ; $42f5: $fe $ff
	sbc [hl]                                         ; $42f7: $9e
	ld bc, $ae7a                                     ; $42f8: $01 $7a $ae
	sbc [hl]                                         ; $42fb: $9e
	ld d, a                                          ; $42fc: $57
	ld a, c                                          ; $42fd: $79
	jr nz, jr_021_429e                               ; $42fe: $20 $9e

	cp $7a                                           ; $4300: $fe $7a
	xor [hl]                                         ; $4302: $ae
	sbc [hl]                                         ; $4303: $9e
	xor b                                            ; $4304: $a8
	ld a, c                                          ; $4305: $79
	jr nz, @+$78                                     ; $4306: $20 $76

	sbc c                                            ; $4308: $99
	ld a, l                                          ; $4309: $7d
	ld a, d                                          ; $430a: $7a
	sbc [hl]                                         ; $430b: $9e
	ld d, a                                          ; $430c: $57
	ld [hl], b                                       ; $430d: $70
	ld d, a                                          ; $430e: $57
	ld a, l                                          ; $430f: $7d
	dec b                                            ; $4310: $05
	sbc [hl]                                         ; $4311: $9e
	xor b                                            ; $4312: $a8
	ld l, l                                          ; $4313: $6d
	ld b, c                                          ; $4314: $41
	ld [hl], b                                       ; $4315: $70
	adc b                                            ; $4316: $88
	ld a, a                                          ; $4317: $7f
	cp $9e                                           ; $4318: $fe $9e
	ld a, [hl+]                                      ; $431a: $2a
	ld [hl], h                                       ; $431b: $74
	sub $73                                          ; $431c: $d6 $73
	cp $69                                           ; $431e: $fe $69
	jr z, @+$81                                      ; $4320: $28 $7f

	sbc $46                                          ; $4322: $de $46
	ld d, b                                          ; $4324: $50
	ld [hl], b                                       ; $4325: $70
	db $db                                           ; $4326: $db
	ld a, e                                          ; $4327: $7b
	cp $70                                           ; $4328: $fe $70
	bit 7, e                                         ; $432a: $cb $7b
	cp $9b                                           ; $432c: $fe $9b
	ld l, d                                          ; $432e: $6a
	db $fd                                           ; $432f: $fd
	xor [hl]                                         ; $4330: $ae
	ld a, l                                          ; $4331: $7d
	ld l, a                                          ; $4332: $6f
	ld e, l                                          ; $4333: $5d
	sbc [hl]                                         ; $4334: $9e
	ld b, b                                          ; $4335: $40
	ld [hl], l                                       ; $4336: $75
	ld sp, hl                                        ; $4337: $f9
	ldh a, [$7a]                                     ; $4338: $f0 $7a
	sub b                                            ; $433a: $90
	call c, $9dff                                    ; $433b: $dc $ff $9d
	rrca                                             ; $433e: $0f
	ld bc, $9cfb                                     ; $433f: $01 $fb $9c
	db $fc                                           ; $4342: $fc

Jump_021_4343:
	sbc $de                                          ; $4343: $de $de
	ld [hl], e                                       ; $4345: $73
	xor $9c                                          ; $4346: $ee $9c
	jp $61e1                                         ; $4348: $c3 $e1 $61


	ld [hl], e                                       ; $434b: $73
	xor $96                                          ; $434c: $ee $96
	xor e                                            ; $434e: $ab
	rst FarCall                                          ; $434f: $f7
	xor d                                            ; $4350: $aa
	sbc l                                            ; $4351: $9d
	xor e                                            ; $4352: $ab
	sub [hl]                                         ; $4353: $96
	cp e                                             ; $4354: $bb
	push af                                          ; $4355: $f5
	rst FarCall                                          ; $4356: $f7
	db $dd                                           ; $4357: $dd
	ld a, a                                          ; $4358: $7f
	add l                                            ; $4359: $85
	ld l, a                                          ; $435a: $6f
	ld c, [hl]                                       ; $435b: $4e
	ld c, $be                                        ; $435c: $0e $be
	ld d, a                                          ; $435e: $57
	cp a                                             ; $435f: $bf
	ld e, l                                          ; $4360: $5d
	cp d                                             ; $4361: $ba
	ld h, l                                          ; $4362: $65
	ld [$f3e5], a                                    ; $4363: $ea $e5 $f3
	rst $38                                          ; $4366: $ff
	rst GetHLinHL                                          ; $4367: $cf
	xor $47                                          ; $4368: $ee $47
	sbc a                                            ; $436a: $9f
	rra                                              ; $436b: $1f
	rra                                              ; $436c: $1f
	inc c                                            ; $436d: $0c
	sbc [hl]                                         ; $436e: $9e
	inc e                                            ; $436f: $1c
	sbc [hl]                                         ; $4370: $9e
	sbc h                                            ; $4371: $9c
	sbc [hl]                                         ; $4372: $9e
	inc e                                            ; $4373: $1c
	ld a, b                                          ; $4374: $78
	and b                                            ; $4375: $a0
	ld a, a                                          ; $4376: $7f
	cp $df                                           ; $4377: $fe $df
	ld a, a                                          ; $4379: $7f
	rst SubAFromDE                                          ; $437a: $df
	rst $38                                          ; $437b: $ff
	sbc l                                            ; $437c: $9d
	ld hl, sp-$07                                    ; $437d: $f8 $f9
	ld a, e                                          ; $437f: $7b

Jump_021_4380:
	cp $de                                           ; $4380: $fe $de
	ld hl, sp+$78                                    ; $4382: $f8 $78
	adc $93                                          ; $4384: $ce $93
	sbc $bf                                          ; $4386: $de $bf
	rst SubAFromDE                                          ; $4388: $df
	sbc a                                            ; $4389: $9f
	sbc a                                            ; $438a: $9f
	ld a, h                                          ; $438b: $7c
	db $ec                                           ; $438c: $ec
	ld a, h                                          ; $438d: $7c
	xor $6c                                          ; $438e: $ee $6c
	ld l, d                                          ; $4390: $6a
	ld l, l                                          ; $4391: $6d
	ld h, b                                          ; $4392: $60
	and b                                            ; $4393: $a0
	ld a, [hl]                                       ; $4394: $7e
	inc bc                                           ; $4395: $03
	sbc l                                            ; $4396: $9d
	ld e, a                                          ; $4397: $5f
	cp a                                             ; $4398: $bf
	ld a, b                                          ; $4399: $78
	ld [hl], l                                       ; $439a: $75
	ld [hl], h                                       ; $439b: $74
	ld d, h                                          ; $439c: $54
	call z, $99ff                                    ; $439d: $cc $ff $99
	jp c, $9ade                                      ; $43a0: $da $de $9a

	sbc [hl]                                         ; $43a3: $9e
	sbc [hl]                                         ; $43a4: $9e
	sbc $d7                                          ; $43a5: $de $d7
	rst $38                                          ; $43a7: $ff
	sbc e                                            ; $43a8: $9b
	cp c                                             ; $43a9: $b9
	db $db                                           ; $43aa: $db
	rst $38                                          ; $43ab: $ff
	cp a                                             ; $43ac: $bf
	ld [hl], h                                       ; $43ad: $74
	ld [hl], $9a                                     ; $43ae: $36 $9a
	and $e4                                          ; $43b0: $e6 $e4
	ldh [$c0], a                                     ; $43b2: $e0 $c0
	add b                                            ; $43b4: $80
	ld a, e                                          ; $43b5: $7b
	ld a, $9e                                        ; $43b6: $3e $9e
	ldh a, [$db]                                     ; $43b8: $f0 $db
	add b                                            ; $43ba: $80
	sbc [hl]                                         ; $43bb: $9e
	xor d                                            ; $43bc: $aa
	reti                                             ; $43bd: $d9


	inc b                                            ; $43be: $04
	ld a, [$c87e]                                    ; $43bf: $fa $7e $c8
	ldh [c], a                                       ; $43c2: $e2
	reti                                             ; $43c3: $d9


	inc b                                            ; $43c4: $04
	reti                                             ; $43c5: $d9


	sbc a                                            ; $43c6: $9f
	rst SubAFromDE                                          ; $43c7: $df
	add b                                            ; $43c8: $80
	db $dd                                           ; $43c9: $dd
	sub b                                            ; $43ca: $90
	rst SubAFromDE                                          ; $43cb: $df
	sbc b                                            ; $43cc: $98
	reti                                             ; $43cd: $d9


	rst $38                                          ; $43ce: $ff
	ld sp, hl                                        ; $43cf: $f9
	inc bc                                           ; $43d0: $03
	ldh a, [$03]                                     ; $43d1: $f0 $03
	ldh a, [$03]                                     ; $43d3: $f0 $03
	ldh a, [$df]                                     ; $43d5: $f0 $df
	rst $38                                          ; $43d7: $ff
	sbc h                                            ; $43d8: $9c
	db $fc                                           ; $43d9: $fc
	ld hl, sp-$10                                    ; $43da: $f8 $f0
	ld a, [$039e]                                    ; $43dc: $fa $9e $03
	ld d, e                                          ; $43df: $53
	db $e3                                           ; $43e0: $e3
	ld a, e                                          ; $43e1: $7b
	pop hl                                           ; $43e2: $e1
	pop af                                           ; $43e3: $f1
	ld e, e                                          ; $43e4: $5b
	db $e3                                           ; $43e5: $e3
	ld [hl], e                                       ; $43e6: $73
	or $3f                                           ; $43e7: $f6 $3f
	ldh a, [$7e]                                     ; $43e9: $f0 $7e
	or d                                             ; $43eb: $b2
	sub e                                            ; $43ec: $93
	ld e, a                                          ; $43ed: $5f
	cpl                                              ; $43ee: $2f
	rla                                              ; $43ef: $17
	dec bc                                           ; $43f0: $0b
	nop                                              ; $43f1: $00
	nop                                              ; $43f2: $00
	add b                                            ; $43f3: $80
	ret nz                                           ; $43f4: $c0

	ldh [$f0], a                                     ; $43f5: $e0 $f0
	ld hl, sp-$04                                    ; $43f7: $f8 $fc
	reti                                             ; $43f9: $d9


	rst $38                                          ; $43fa: $ff
	sbc l                                            ; $43fb: $9d
	ld d, $24                                        ; $43fc: $16 $24
	ei                                               ; $43fe: $fb
	sub a                                            ; $43ff: $97
	inc e                                            ; $4400: $1c
	ld [$080c], sp                                   ; $4401: $08 $0c $08
	ld a, [bc]                                       ; $4404: $0a
	ld [$0d08], sp                                   ; $4405: $08 $08 $0d
	db $dd                                           ; $4408: $dd
	rst $38                                          ; $4409: $ff
	sub d                                            ; $440a: $92
	db $fd                                           ; $440b: $fd
	rst $38                                          ; $440c: $ff
	rst $38                                          ; $440d: $ff
	ldh a, [c]                                       ; $440e: $f2
	ccf                                              ; $440f: $3f
	ld e, e                                          ; $4410: $5b
	ei                                               ; $4411: $fb
	ld a, e                                          ; $4412: $7b
	dec sp                                           ; $4413: $3b
	dec sp                                           ; $4414: $3b
	ld e, e                                          ; $4415: $5b
	ld e, a                                          ; $4416: $5f
	ld hl, sp-$24                                    ; $4417: $f8 $dc
	db $fc                                           ; $4419: $fc
	sbc c                                            ; $441a: $99
	or h                                             ; $441b: $b4
	cp b                                             ; $441c: $b8
	inc h                                            ; $441d: $24
	ld a, [bc]                                       ; $441e: $0a
	add e                                            ; $441f: $83
	set 3, [hl]                                      ; $4420: $cb $de
	jp $c79b                                         ; $4422: $c3 $9b $c7


	rst $38                                          ; $4425: $ff
	db $fd                                           ; $4426: $fd
	ld a, h                                          ; $4427: $7c
	db $dd                                           ; $4428: $dd
	inc a                                            ; $4429: $3c
	sbc l                                            ; $442a: $9d
	jr c, jr_021_446c                                ; $442b: $38 $3f

	sbc $3e                                          ; $442d: $de $3e
	sbc e                                            ; $442f: $9b
	ld e, $5c                                        ; $4430: $1e $5c
	ld e, h                                          ; $4432: $5c
	ld e, l                                          ; $4433: $5d
	call c, $dfff                                    ; $4434: $dc $ff $df
	cp a                                             ; $4437: $bf
	sbc [hl]                                         ; $4438: $9e
	cp [hl]                                          ; $4439: $be
	db $db                                           ; $443a: $db
	rst $38                                          ; $443b: $ff
	sbc [hl]                                         ; $443c: $9e
	ld e, a                                          ; $443d: $5f
	ld h, b                                          ; $443e: $60
	or b                                             ; $443f: $b0
	ld a, b                                          ; $4440: $78
	ld h, c                                          ; $4441: $61
	ld [hl], e                                       ; $4442: $73
	ld a, [$f063]                                    ; $4443: $fa $63 $f0
	jp c, $f9fe                                      ; $4446: $da $fe $f9

	rst SubAFromDE                                          ; $4449: $df
	add b                                            ; $444a: $80
	sbc h                                            ; $444b: $9c
	adc h                                            ; $444c: $8c
	add h                                            ; $444d: $84
	add b                                            ; $444e: $80
	ld a, e                                          ; $444f: $7b
	cp $7f                                           ; $4450: $fe $7f
	add a                                            ; $4452: $87
	db $db                                           ; $4453: $db
	db $10                                           ; $4454: $10
	sbc [hl]                                         ; $4455: $9e
	nop                                              ; $4456: $00
	db $dd                                           ; $4457: $dd
	ld [hl], b                                       ; $4458: $70
	sbc d                                            ; $4459: $9a
	ld d, b                                          ; $445a: $50
	ld h, b                                          ; $445b: $60
	ld d, b                                          ; $445c: $50
	nop                                              ; $445d: $00
	ld [hl], b                                       ; $445e: $70
	db $db                                           ; $445f: $db
	ld b, b                                          ; $4460: $40
	sbc [hl]                                         ; $4461: $9e
	nop                                              ; $4462: $00
	jp c, Jump_021_7fe1                              ; $4463: $da $e1 $7f

	ld hl, sp-$25                                    ; $4466: $f8 $db
	add c                                            ; $4468: $81
	sbc e                                            ; $4469: $9b
	nop                                              ; $446a: $00
	rst GetHLinHL                                          ; $446b: $cf

jr_021_446c:
	inc c                                            ; $446c: $0c
	inc c                                            ; $446d: $0c
	db $dd                                           ; $446e: $dd
	adc h                                            ; $446f: $8c
	sbc [hl]                                         ; $4470: $9e
	nop                                              ; $4471: $00
	sbc $c7                                          ; $4472: $de $c7
	db $dd                                           ; $4474: $dd
	ld b, a                                          ; $4475: $47
	reti                                             ; $4476: $d9


	rra                                              ; $4477: $1f
	sbc $18                                          ; $4478: $de $18
	db $dd                                           ; $447a: $dd
	inc e                                            ; $447b: $1c
	sbc [hl]                                         ; $447c: $9e
	ld e, $02                                        ; $447d: $1e $02
	or b                                             ; $447f: $b0
	inc bc                                           ; $4480: $03
	ldh a, [$03]                                     ; $4481: $f0 $03
	ldh a, [$7f]                                     ; $4483: $f0 $7f
	inc a                                            ; $4485: $3c
	ld h, d                                          ; $4486: $62
	ld [hl], b                                       ; $4487: $70
	sub c                                            ; $4488: $91
	ld bc, $e002                                     ; $4489: $01 $02 $e0
	jp nz, $0a84                                     ; $448c: $c2 $84 $0a

	inc d                                            ; $448f: $14
	ld a, [hl+]                                      ; $4490: $2a
	ld d, h                                          ; $4491: $54
	xor d                                            ; $4492: $aa
	inc b                                            ; $4493: $04
	ld [$2010], sp                                   ; $4494: $08 $10 $20
	inc l                                            ; $4497: $2c
	adc $e9                                          ; $4498: $ce $e9
	ld a, h                                          ; $449a: $7c
	ld l, l                                          ; $449b: $6d
	ld a, h                                          ; $449c: $7c
	ld [hl], d                                       ; $449d: $72
	ccf                                              ; $449e: $3f
	ldh a, [$9a]                                     ; $449f: $f0 $9a
	dec b                                            ; $44a1: $05
	inc bc                                           ; $44a2: $03
	nop                                              ; $44a3: $00
	ld [bc], a                                       ; $44a4: $02
	ld [bc], a                                       ; $44a5: $02
	cp $7f                                           ; $44a6: $fe $7f
	sbc h                                            ; $44a8: $9c
	ld a, [hl]                                       ; $44a9: $7e
	sbc [hl]                                         ; $44aa: $9e
	sbc [hl]                                         ; $44ab: $9e
	db $fd                                           ; $44ac: $fd
	ld l, [hl]                                       ; $44ad: $6e
	ld b, b                                          ; $44ae: $40
	rst SubAFromDE                                          ; $44af: $df
	xor d                                            ; $44b0: $aa
	ld e, e                                          ; $44b1: $5b
	ldh [hDisp1_WX], a                                     ; $44b2: $e0 $96
	dec c                                            ; $44b4: $0d
	add hl, bc                                       ; $44b5: $09
	ld bc, $0301                                     ; $44b6: $01 $01 $03
	inc bc                                           ; $44b9: $03
	rlca                                             ; $44ba: $07
	dec h                                            ; $44bb: $25
	ld a, d                                          ; $44bc: $7a
	sbc $7e                                          ; $44bd: $de $7e
	sbc e                                            ; $44bf: $9b
	ld a, h                                          ; $44c0: $7c
	ld a, l                                          ; $44c1: $7d
	ld a, c                                          ; $44c2: $79
	ld e, e                                          ; $44c3: $5b
	sbc $5f                                          ; $44c4: $de $5f
	db $dd                                           ; $44c6: $dd
	ld d, e                                          ; $44c7: $53
	sbc h                                            ; $44c8: $9c
	ld b, e                                          ; $44c9: $43
	or b                                             ; $44ca: $b0
	and b                                            ; $44cb: $a0
	ld [hl], a                                       ; $44cc: $77
	cp $df                                           ; $44cd: $fe $df
	and b                                            ; $44cf: $a0
	sbc $c7                                          ; $44d0: $de $c7
	sbc d                                            ; $44d2: $9a
	rst SubAFromHL                                          ; $44d3: $d7
	rst JumpTable                                          ; $44d4: $c7
	rst SubAFromHL                                          ; $44d5: $d7
	rst SubAFromDE                                          ; $44d6: $df
	sub a                                            ; $44d7: $97
	jp c, $9338                                      ; $44d8: $da $38 $93

	ld a, b                                          ; $44db: $78
	sbc l                                            ; $44dc: $9d
	ld a, l                                          ; $44dd: $7d
	db $fc                                           ; $44de: $fc
	cp b                                             ; $44df: $b8
	cp h                                             ; $44e0: $bc
	cp c                                             ; $44e1: $b9
	ld sp, hl                                        ; $44e2: $f9
	ei                                               ; $44e3: $fb
	ld a, [hl]                                       ; $44e4: $7e
	cp [hl]                                          ; $44e5: $be
	ccf                                              ; $44e6: $3f
	sbc $7f                                          ; $44e7: $de $7f
	sbc l                                            ; $44e9: $9d
	ccf                                              ; $44ea: $3f
	dec a                                            ; $44eb: $3d
	call c, $9cdf                                    ; $44ec: $dc $df $9c
	sbc a                                            ; $44ef: $9f
	rst SubAFromDE                                          ; $44f0: $df
	adc a                                            ; $44f1: $8f
	ld d, [hl]                                       ; $44f2: $56
	ld h, b                                          ; $44f3: $60
	ld a, a                                          ; $44f4: $7f
	sub h                                            ; $44f5: $94
	ld a, e                                          ; $44f6: $7b
	sub d                                            ; $44f7: $92
	ld h, d                                          ; $44f8: $62
	ld h, b                                          ; $44f9: $60
	ld h, a                                          ; $44fa: $67
	sub b                                            ; $44fb: $90
	sbc h                                            ; $44fc: $9c
	cp $54                                           ; $44fd: $fe $54

Jump_021_44ff:
	ld d, h                                          ; $44ff: $54
	halt                                             ; $4500: $76
	ld h, b                                          ; $4501: $60
	ld [hl], d                                       ; $4502: $72
	ld h, d                                          ; $4503: $62
	ld a, a                                          ; $4504: $7f
	cp $d9                                           ; $4505: $fe $d9
	db $10                                           ; $4507: $10
	ld a, [hl]                                       ; $4508: $7e
	ld h, [hl]                                       ; $4509: $66
	ld a, a                                          ; $450a: $7f
	cp $9e                                           ; $450b: $fe $9e
	ld b, b                                          ; $450d: $40
	ld [hl], a                                       ; $450e: $77
	cp $da                                           ; $450f: $fe $da
	ld b, b                                          ; $4511: $40
	reti                                             ; $4512: $d9


	pop hl                                           ; $4513: $e1
	reti                                             ; $4514: $d9


	add c                                            ; $4515: $81
	reti                                             ; $4516: $d9


	adc h                                            ; $4517: $8c
	reti                                             ; $4518: $d9


	ld b, a                                          ; $4519: $47
	reti                                             ; $451a: $d9


	rra                                              ; $451b: $1f
	rst SubAFromDE                                          ; $451c: $df
	ld e, $7b                                        ; $451d: $1e $7b
	db $fd                                           ; $451f: $fd
	sbc $18                                          ; $4520: $de $18
	call c, $9dff                                    ; $4522: $dc $ff $9d
	add b                                            ; $4525: $80
	rst $38                                          ; $4526: $ff
	ld a, d                                          ; $4527: $7a
	ret nz                                           ; $4528: $c0

	sbc [hl]                                         ; $4529: $9e
	rst $38                                          ; $452a: $ff
	ld [hl], e                                       ; $452b: $73
	sbc b                                            ; $452c: $98
	ld l, [hl]                                       ; $452d: $6e
	and e                                            ; $452e: $a3
	halt                                             ; $452f: $76
	and c                                            ; $4530: $a1
	inc bc                                           ; $4531: $03
	ldh a, [$03]                                     ; $4532: $f0 $03
	ldh a, [rPCM34]                                  ; $4534: $f0 $77
	ldh a, [$9b]                                     ; $4536: $f0 $9b
	pop af                                           ; $4538: $f1
	ldh a, [c]                                       ; $4539: $f2
	rst $38                                          ; $453a: $ff
	ld a, [$f077]                                    ; $453b: $fa $77 $f0
	ld a, [hl]                                       ; $453e: $7e
	ld [hl], b                                       ; $453f: $70
	ld l, a                                          ; $4540: $6f
	ldh a, [$7e]                                     ; $4541: $f0 $7e
	ld h, [hl]                                       ; $4543: $66
	sub l                                            ; $4544: $95
	call nc, $d4ea                                   ; $4545: $d4 $ea $d4
	ld a, [hl+]                                      ; $4548: $2a
	call nc, $002a                                   ; $4549: $d4 $2a $00
	nop                                              ; $454c: $00
	ret nz                                           ; $454d: $c0

	add b                                            ; $454e: $80
	ld e, [hl]                                       ; $454f: $5e
	ld h, c                                          ; $4550: $61
	sbc l                                            ; $4551: $9d
	ld a, $2e                                        ; $4552: $3e $2e
	ld l, a                                          ; $4554: $6f
	ld sp, hl                                        ; $4555: $f9
	sbc l                                            ; $4556: $9d
	ld a, $30                                        ; $4557: $3e $30
	pop af                                           ; $4559: $f1
	inc hl                                           ; $455a: $23
	nop                                              ; $455b: $00
	rst SubAFromDE                                          ; $455c: $df
	inc sp                                           ; $455d: $33
	sbc $44                                          ; $455e: $de $44
	call c, $df33                                    ; $4560: $dc $33 $df
	ld [hl], a                                       ; $4563: $77
	sbc [hl]                                         ; $4564: $9e
	ld [hl], b                                       ; $4565: $70
	ld h, e                                          ; $4566: $63
	di                                               ; $4567: $f3
	sbc $77                                          ; $4568: $de $77
	ld h, e                                          ; $456a: $63
	di                                               ; $456b: $f3
	sbc [hl]                                         ; $456c: $9e
	scf                                              ; $456d: $37
	ld e, e                                          ; $456e: $5b
	di                                               ; $456f: $f3
	ld [hl], a                                       ; $4570: $77
	db $f4                                           ; $4571: $f4
	ld l, e                                          ; $4572: $6b
	di                                               ; $4573: $f3
	sbc [hl]                                         ; $4574: $9e
	ld h, e                                          ; $4575: $63
	call c, $9d77                                    ; $4576: $dc $77 $9d
	ld [hl], e                                       ; $4579: $73
	jr nc, jr_021_45cf                               ; $457a: $30 $53

	di                                               ; $457c: $f3
	reti                                             ; $457d: $d9


	dec b                                            ; $457e: $05
	db $fd                                           ; $457f: $fd
	rst SubAFromDE                                          ; $4580: $df
	rst $38                                          ; $4581: $ff
	ld a, a                                          ; $4582: $7f
	db $fd                                           ; $4583: $fd
	rst SubAFromDE                                          ; $4584: $df
	rst FarCall                                          ; $4585: $f7
	sbc l                                            ; $4586: $9d
	push af                                          ; $4587: $f5
	ld b, $77                                        ; $4588: $06 $77
	cp $67                                           ; $458a: $fe $67
	ldh a, [$df]                                     ; $458c: $f0 $df
	rst AddAOntoHL                                          ; $458e: $ef
	sbc l                                            ; $458f: $9d
	db $eb                                           ; $4590: $eb
	inc c                                            ; $4591: $0c

jr_021_4592:
	ld [hl], a                                       ; $4592: $77
	cp $67                                           ; $4593: $fe $67
	ldh a, [$df]                                     ; $4595: $f0 $df
	rst SubAFromDE                                          ; $4597: $df
	sbc l                                            ; $4598: $9d
	rst SubAFromHL                                          ; $4599: $d7
	jr jr_021_4613                                   ; $459a: $18 $77

	cp $67                                           ; $459c: $fe $67
	ldh a, [$de]                                     ; $459e: $f0 $de
	cp a                                             ; $45a0: $bf
	sbc [hl]                                         ; $45a1: $9e
	jr nz, jr_021_461b                               ; $45a2: $20 $77

jr_021_45a4:
	cp $84                                           ; $45a4: $fe $84
	dec h                                            ; $45a6: $25
	ld e, e                                          ; $45a7: $5b

jr_021_45a8:
	ld sp, $f14f                                     ; $45a8: $31 $4f $f1
	adc a                                            ; $45ab: $8f
	ldh a, [c]                                       ; $45ac: $f2
	adc a                                            ; $45ad: $8f
	ld a, [$7a87]                                    ; $45ae: $fa $87 $7a
	add a                                            ; $45b1: $87
	ld a, [$9a87]                                    ; $45b2: $fa $87 $9a
	ld h, a                                          ; $45b5: $67
	ld b, e                                          ; $45b6: $43
	and b                                            ; $45b7: $a0
	ld b, a                                          ; $45b8: $47
	and b                                            ; $45b9: $a0
	ld d, e                                          ; $45ba: $53
	and b                                            ; $45bb: $a0
	db $d3                                           ; $45bc: $d3
	jr nz, jr_021_4592                               ; $45bd: $20 $d3

	jr nz, jr_021_4614                               ; $45bf: $20 $53

	ld [hl], e                                       ; $45c1: $73
	cp $80                                           ; $45c2: $fe $80
	sbc a                                            ; $45c4: $9f
	ld a, b                                          ; $45c5: $78
	rst SubAFromDE                                          ; $45c6: $df
	jr c, jr_021_45a4                                ; $45c7: $38 $db

	jr c, @-$0b                                      ; $45c9: $38 $f3

	jr @+$01                                         ; $45cb: $18 $ff

	db $10                                           ; $45cd: $10
	rst SubAFromDE                                          ; $45ce: $df

jr_021_45cf:
	jr nc, jr_021_45a8                               ; $45cf: $30 $d7

	jr c, @-$27                                      ; $45d1: $38 $d7

	jr @-$03                                         ; $45d3: $18 $fb

	ld a, l                                          ; $45d5: $7d
	ld a, e                                          ; $45d6: $7b
	db $fd                                           ; $45d7: $fd
	ld a, e                                          ; $45d8: $7b
	db $fd                                           ; $45d9: $fd
	db $fc                                           ; $45da: $fc
	rst $38                                          ; $45db: $ff
	db $fc                                           ; $45dc: $fc
	db $db                                           ; $45dd: $db
	db $fc                                           ; $45de: $fc
	cp a                                             ; $45df: $bf
	db $fc                                           ; $45e0: $fc
	rst SubAFromDE                                          ; $45e1: $df
	db $fc                                           ; $45e2: $fc
	sub l                                            ; $45e3: $95
	ccf                                              ; $45e4: $3f
	rst SubAFromDE                                          ; $45e5: $df
	rst $38                                          ; $45e6: $ff
	rst GetHLinHL                                          ; $45e7: $cf
	rst $38                                          ; $45e8: $ff
	rst $38                                          ; $45e9: $ff
	rst SubAFromDE                                          ; $45ea: $df
	adc a                                            ; $45eb: $8f
	rst $38                                          ; $45ec: $ff
	cp a                                             ; $45ed: $bf
	ld a, e                                          ; $45ee: $7b
	db $fc                                           ; $45ef: $fc
	ld [hl], a                                       ; $45f0: $77
	cp $9a                                           ; $45f1: $fe $9a
	ld a, [$fdff]                                    ; $45f3: $fa $ff $fd
	rst $38                                          ; $45f6: $ff
	cp $dc                                           ; $45f7: $fe $dc
	rst $38                                          ; $45f9: $ff
	sbc [hl]                                         ; $45fa: $9e
	ld sp, hl                                        ; $45fb: $f9
	sbc $ff                                          ; $45fc: $de $ff
	ld a, a                                          ; $45fe: $7f
	or $ff                                           ; $45ff: $f6 $ff
	rst SubAFromDE                                          ; $4601: $df
	cp $7b                                           ; $4602: $fe $7b
	db $fd                                           ; $4604: $fd
	sbc h                                            ; $4605: $9c
	cp $7e                                           ; $4606: $fe $7e
	ld b, b                                          ; $4608: $40
	ld l, a                                          ; $4609: $6f
	cp $9b                                           ; $460a: $fe $9b
	add b                                            ; $460c: $80
	db $10                                           ; $460d: $10
	add h                                            ; $460e: $84
	db $10                                           ; $460f: $10
	ld d, a                                          ; $4610: $57
	db $fc                                           ; $4611: $fc
	rst SubAFromDE                                          ; $4612: $df

jr_021_4613:
	ld b, b                                          ; $4613: $40

jr_021_4614:
	sbc h                                            ; $4614: $9c
	ld d, b                                          ; $4615: $50
	ld b, b                                          ; $4616: $40
	ld h, b                                          ; $4617: $60
	ld e, e                                          ; $4618: $5b
	db $fc                                           ; $4619: $fc
	sbc l                                            ; $461a: $9d

jr_021_461b:
	pop hl                                           ; $461b: $e1
	add c                                            ; $461c: $81
	ld c, a                                          ; $461d: $4f
	cp $9d                                           ; $461e: $fe $9d
	adc h                                            ; $4620: $8c
	ld b, a                                          ; $4621: $47
	ld c, a                                          ; $4622: $4f
	cp $9b                                           ; $4623: $fe $9b
	rlca                                             ; $4625: $07
	jr jr_021_462f                                   ; $4626: $18 $07

	add hl, de                                       ; $4628: $19
	ld d, a                                          ; $4629: $57
	cp $7f                                           ; $462a: $fe $7f
	and e                                            ; $462c: $a3
	ld [hl], a                                       ; $462d: $77
	ld [hl-], a                                      ; $462e: $32

jr_021_462f:
	sub l                                            ; $462f: $95
	ld a, a                                          ; $4630: $7f
	cp $79                                           ; $4631: $fe $79

Call_021_4633:
	cp $61                                           ; $4633: $fe $61
	cp $41                                           ; $4635: $fe $41
	cp $7f                                           ; $4637: $fe $7f
	cp $6f                                           ; $4639: $fe $6f
	ld [hl+], a                                      ; $463b: $22
	sbc $fd                                          ; $463c: $de $fd
	sbc [hl]                                         ; $463e: $9e
	add c                                            ; $463f: $81
	ld [hl], a                                       ; $4640: $77
	cp $9d                                           ; $4641: $fe $9d
	ld bc, $6ffd                                     ; $4643: $01 $fd $6f
	ldh a, [$de]                                     ; $4646: $f0 $de
	ei                                               ; $4648: $fb
	sbc [hl]                                         ; $4649: $9e
	ld [bc], a                                       ; $464a: $02
	ld [hl], a                                       ; $464b: $77
	cp $7f                                           ; $464c: $fe $7f
	db $fd                                           ; $464e: $fd
	ld h, [hl]                                       ; $464f: $66
	jp nc, $f797                                     ; $4650: $d2 $97 $f7

	inc b                                            ; $4653: $04
	rst FarCall                                          ; $4654: $f7
	inc b                                            ; $4655: $04
	and h                                            ; $4656: $a4
	ld d, a                                          ; $4657: $57
	inc b                                            ; $4658: $04
	rst FarCall                                          ; $4659: $f7
	ld h, [hl]                                       ; $465a: $66
	jp nc, $ae97                                     ; $465b: $d2 $97 $ae

	ld c, c                                          ; $465e: $49
	ld c, l                                          ; $465f: $4d
	xor d                                            ; $4660: $aa
	ld a, [bc]                                       ; $4661: $0a
	db $ed                                           ; $4662: $ed
	ld [$66ef], sp                                   ; $4663: $08 $ef $66
	jp nc, $9a97                                     ; $4666: $d2 $97 $9a

	ld d, l                                          ; $4669: $55
	ld d, h                                          ; $466a: $54
	sbc e                                            ; $466b: $9b
	jr @-$27                                         ; $466c: $18 $d7

	db $10                                           ; $466e: $10
	rst SubAFromDE                                          ; $466f: $df
	ld h, [hl]                                       ; $4670: $66
	jp nc, $2a9b                                     ; $4671: $d2 $9b $2a

	or l                                             ; $4674: $b5
	inc [hl]                                         ; $4675: $34
	xor e                                            ; $4676: $ab
	halt                                             ; $4677: $76
	rst GetHLinHL                                          ; $4678: $cf
	sub l                                            ; $4679: $95
	inc d                                            ; $467a: $14
	nop                                              ; $467b: $00
	jp z, $34e0                                      ; $467c: $ca $e0 $34

	ret nz                                           ; $467f: $c0

	ld a, [hl+]                                      ; $4680: $2a
	ld b, b                                          ; $4681: $40
	inc [hl]                                         ; $4682: $34
	ld b, b                                          ; $4683: $40
	ld l, a                                          ; $4684: $6f
	db $fc                                           ; $4685: $fc
	rst $38                                          ; $4686: $ff
	sub d                                            ; $4687: $92
	ld e, $3e                                        ; $4688: $1e $3e
	ld a, [hl+]                                      ; $468a: $2a
	inc [hl]                                         ; $468b: $34
	inc [hl]                                         ; $468c: $34
	ld a, [hl+]                                      ; $468d: $2a
	jr z, jr_021_46c6                                ; $468e: $28 $36

	jr nz, jr_021_46d0                               ; $4690: $20 $3e

	jr nz, jr_021_46d2                               ; $4692: $20 $3e

	ld a, $f0                                        ; $4694: $3e $f0
	adc a                                            ; $4696: $8f
	add h                                            ; $4697: $84
	ld [hl], a                                       ; $4698: $77
	ldh a, [rP1]                                     ; $4699: $f0 $00
	rst $38                                          ; $469b: $ff
	inc bc                                           ; $469c: $03
	rst $38                                          ; $469d: $ff
	nop                                              ; $469e: $00
	ld a, a                                          ; $469f: $7f
	add b                                            ; $46a0: $80
	rst GetHLinHL                                          ; $46a1: $cf
	ldh a, [$79]                                     ; $46a2: $f0 $79
	cp $8f                                           ; $46a4: $fe $8f
	rst $38                                          ; $46a6: $ff
	ld [hl], a                                       ; $46a7: $77
	sbc [hl]                                         ; $46a8: $9e
	rst SubAFromDE                                          ; $46a9: $df
	rst AddAOntoHL                                          ; $46aa: $ef
	sub l                                            ; $46ab: $95
	ret z                                            ; $46ac: $c8

	ld l, a                                          ; $46ad: $6f
	ldh [rAUD1SWEEP], a                              ; $46ae: $e0 $10
	rst AddAOntoHL                                          ; $46b0: $ef
	db $10                                           ; $46b1: $10
	xor $10                                          ; $46b2: $ee $10
	ld l, a                                          ; $46b4: $6f
	sub b                                            ; $46b5: $90
	ld [hl], a                                       ; $46b6: $77
	sbc [hl]                                         ; $46b7: $9e
	rst SubAFromDE                                          ; $46b8: $df
	rst SubAFromDE                                          ; $46b9: $df
	ld [hl], e                                       ; $46ba: $73
	sbc b                                            ; $46bb: $98
	db $fc                                           ; $46bc: $fc
	ld a, a                                          ; $46bd: $7f
	sbc [hl]                                         ; $46be: $9e
	rst $38                                          ; $46bf: $ff
	halt                                             ; $46c0: $76
	ld h, l                                          ; $46c1: $65
	ld h, a                                          ; $46c2: $67
	ldh a, [hDisp1_LCDC]                                     ; $46c3: $f0 $8f
	adc d                                            ; $46c5: $8a

jr_021_46c6:
	and $5b                                          ; $46c6: $e6 $5b
	and $5a                                          ; $46c8: $e6 $5a
	and $7b                                          ; $46ca: $e6 $7b
	add [hl]                                         ; $46cc: $86
	ld a, d                                          ; $46cd: $7a
	add [hl]                                         ; $46ce: $86
	ei                                               ; $46cf: $fb

jr_021_46d0:
	ld b, $fe                                        ; $46d0: $06 $fe

jr_021_46d2:
	ld [bc], a                                       ; $46d2: $02
	rst $38                                          ; $46d3: $ff
	ld [bc], a                                       ; $46d4: $02
	ld l, [hl]                                       ; $46d5: $6e
	ld l, d                                          ; $46d6: $6a
	ld a, [hl]                                       ; $46d7: $7e
	ld h, d                                          ; $46d8: $62
	adc h                                            ; $46d9: $8c
	ld [hl], e                                       ; $46da: $73
	nop                                              ; $46db: $00
	ldh [rP1], a                                     ; $46dc: $e0 $00
	ld h, b                                          ; $46de: $60
	nop                                              ; $46df: $00
	pop hl                                           ; $46e0: $e1
	nop                                              ; $46e1: $00
	rst SubAFromHL                                          ; $46e2: $d7
	jr jr_021_4744                                   ; $46e3: $18 $5f

	jr nc, jr_021_4706                               ; $46e5: $30 $1f

	jr nc, jr_021_4754                               ; $46e7: $30 $6b

	db $10                                           ; $46e9: $10
	dec hl                                           ; $46ea: $2b
	db $10                                           ; $46eb: $10
	ccf                                              ; $46ec: $3f
	ld a, e                                          ; $46ed: $7b
	adc $7f                                          ; $46ee: $ce $7f
	cp $8e                                           ; $46f0: $fe $8e
	call c, $fc3f                                    ; $46f2: $dc $3f $fc
	ccf                                              ; $46f5: $3f
	db $ec                                           ; $46f6: $ec
	ccf                                              ; $46f7: $3f
	db $fc                                           ; $46f8: $fc
	ld l, a                                          ; $46f9: $6f
	call c, $bc6f                                    ; $46fa: $dc $6f $bc
	ld c, a                                          ; $46fd: $4f
	cp l                                             ; $46fe: $bd
	ld c, a                                          ; $46ff: $4f
	cp a                                             ; $4700: $bf
	ld c, a                                          ; $4701: $4f
	rst GetHLinHL                                          ; $4702: $cf
	ld a, d                                          ; $4703: $7a
	ld h, b                                          ; $4704: $60
	ld a, a                                          ; $4705: $7f

jr_021_4706:
	adc d                                            ; $4706: $8a
	sbc b                                            ; $4707: $98
	xor a                                            ; $4708: $af
	rst SubAFromDE                                          ; $4709: $df
	xor a                                            ; $470a: $af
	rst SubAFromDE                                          ; $470b: $df
	cp a                                             ; $470c: $bf
	rst SubAFromDE                                          ; $470d: $df
	sbc a                                            ; $470e: $9f
	ld a, e                                          ; $470f: $7b
	or $76                                           ; $4710: $f6 $76
	ld h, h                                          ; $4712: $64
	ld a, a                                          ; $4713: $7f
	db $fc                                           ; $4714: $fc
	ld l, [hl]                                       ; $4715: $6e
	ld e, [hl]                                       ; $4716: $5e
	rst SubAFromDE                                          ; $4717: $df
	rst $38                                          ; $4718: $ff
	ld a, [hl]                                       ; $4719: $7e
	ld d, h                                          ; $471a: $54
	rst $38                                          ; $471b: $ff
	rst SubAFromDE                                          ; $471c: $df
	ld a, [hl]                                       ; $471d: $7e
	halt                                             ; $471e: $76
	ld h, a                                          ; $471f: $67
	ld a, e                                          ; $4720: $7b
	jr c, jr_021_47a2                                ; $4721: $38 $7f

	xor a                                            ; $4723: $af
	ld [hl], a                                       ; $4724: $77
	ld d, b                                          ; $4725: $50
	ld a, d                                          ; $4726: $7a
	ld l, h                                          ; $4727: $6c
	ld a, a                                          ; $4728: $7f
	cp $9e                                           ; $4729: $fe $9e
	adc h                                            ; $472b: $8c
	ld h, e                                          ; $472c: $63
	cp $9e                                           ; $472d: $fe $9e
	ld [hl], b                                       ; $472f: $70
	ld a, d                                          ; $4730: $7a
	ld l, h                                          ; $4731: $6c
	ld a, a                                          ; $4732: $7f
	db $fc                                           ; $4733: $fc
	ld e, a                                          ; $4734: $5f
	cp $02                                           ; $4735: $fe $02
	ld h, b                                          ; $4737: $60
	ld h, [hl]                                       ; $4738: $66
	ld h, [hl]                                       ; $4739: $66
	ld a, l                                          ; $473a: $7d
	sub [hl]                                         ; $473b: $96
	sbc [hl]                                         ; $473c: $9e
	rra                                              ; $473d: $1f
	ld a, d                                          ; $473e: $7a
	ld d, h                                          ; $473f: $54
	sbc e                                            ; $4740: $9b
	jr jr_021_47c2                                   ; $4741: $18 $7f

	add b                                            ; $4743: $80

jr_021_4744:
	ld a, a                                          ; $4744: $7f
	ld a, d                                          ; $4745: $7a
	ld l, d                                          ; $4746: $6a
	sbc [hl]                                         ; $4747: $9e
	ld [hl], c                                       ; $4748: $71
	ld [hl], l                                       ; $4749: $75
	rst FarCall                                          ; $474a: $f7
	halt                                             ; $474b: $76
	or a                                             ; $474c: $b7
	cp $6e                                           ; $474d: $fe $6e
	ld h, l                                          ; $474f: $65
	ld h, a                                          ; $4750: $67
	jr nz, @+$01                                     ; $4751: $20 $ff

	ld l, [hl]                                       ; $4753: $6e

jr_021_4754:
	ld h, l                                          ; $4754: $65
	ld e, a                                          ; $4755: $5f
	ldh a, [$72]                                     ; $4756: $f0 $72
	ld h, l                                          ; $4758: $65
	halt                                             ; $4759: $76
	ld l, b                                          ; $475a: $68
	ld a, [$efdf]                                    ; $475b: $fa $df $ef
	ld a, [hl]                                       ; $475e: $7e
	call z, Call_021_6872                            ; $475f: $cc $72 $68
	ld a, [$d276]                                    ; $4762: $fa $76 $d2
	ld e, [hl]                                       ; $4765: $5e
	ret nc                                           ; $4766: $d0

	ld l, [hl]                                       ; $4767: $6e
	jp nc, $d05e                                     ; $4768: $d2 $5e $d0

	ld h, [hl]                                       ; $476b: $66
	ld l, b                                          ; $476c: $68
	sbc b                                            ; $476d: $98
	inc [hl]                                         ; $476e: $34
	nop                                              ; $476f: $00
	ld [$3400], a                                    ; $4770: $ea $00 $34
	nop                                              ; $4773: $00
	ld a, [hl+]                                      ; $4774: $2a
	pop af                                           ; $4775: $f1
	ld b, d                                          ; $4776: $42
	ld e, a                                          ; $4777: $5f
	sbc d                                            ; $4778: $9a
	pop af                                           ; $4779: $f1
	rst $38                                          ; $477a: $ff
	cp $fb                                           ; $477b: $fe $fb
	rst $38                                          ; $477d: $ff
	ld e, e                                          ; $477e: $5b
	cp $7e                                           ; $477f: $fe $7e
	ld e, d                                          ; $4781: $5a
	sbc b                                            ; $4782: $98
	ld a, a                                          ; $4783: $7f
	ldh a, [hDisp1_LCDC]                                     ; $4784: $f0 $8f
	rst $38                                          ; $4786: $ff
	ldh a, [$ef]                                     ; $4787: $f0 $ef
	rst $38                                          ; $4789: $ff
	ld l, e                                          ; $478a: $6b
	cp $ff                                           ; $478b: $fe $ff
	sbc [hl]                                         ; $478d: $9e
	add b                                            ; $478e: $80
	ld [hl], e                                       ; $478f: $73
	ld b, a                                          ; $4790: $47
	ld a, l                                          ; $4791: $7d
	db $ed                                           ; $4792: $ed
	sbc c                                            ; $4793: $99
	rst FarCall                                          ; $4794: $f7
	ret c                                            ; $4795: $d8

	rst FarCall                                          ; $4796: $f7
	ret c                                            ; $4797: $d8

	di                                               ; $4798: $f3
	call c, $c048                                    ; $4799: $dc $48 $c0
	add b                                            ; $479c: $80
	ld hl, $02f5                                     ; $479d: $21 $f5 $02
	ld d, e                                          ; $47a0: $53
	and h                                            ; $47a1: $a4

jr_021_47a2:
	sub l                                            ; $47a2: $95
	ld h, d                                          ; $47a3: $62
	ld b, h                                          ; $47a4: $44
	and d                                            ; $47a5: $a2
	add $20                                          ; $47a6: $c6 $20
	call nz, $c422                                   ; $47a8: $c4 $22 $c4
	jr nz, jr_021_4819                               ; $47ab: $20 $6c

	nop                                              ; $47ad: $00
	ld b, c                                          ; $47ae: $41
	and b                                            ; $47af: $a0
	and c                                            ; $47b0: $a1
	ld b, b                                          ; $47b1: $40
	ld h, c                                          ; $47b2: $61
	add b                                            ; $47b3: $80
	and c                                            ; $47b4: $a1
	ld b, b                                          ; $47b5: $40
	and c                                            ; $47b6: $a1
	ld b, b                                          ; $47b7: $40
	add c                                            ; $47b8: $81
	ld b, b                                          ; $47b9: $40
	jp nz, Jump_021_7f01                             ; $47ba: $c2 $01 $7f

	cp $7f                                           ; $47bd: $fe $7f
	nop                                              ; $47bf: $00
	sbc h                                            ; $47c0: $9c
	ld e, a                                          ; $47c1: $5f

jr_021_47c2:
	add b                                            ; $47c2: $80
	ld c, a                                          ; $47c3: $4f
	ld a, e                                          ; $47c4: $7b
	cp $9c                                           ; $47c5: $fe $9c
	jp Jump_021_4380                                 ; $47c7: $c3 $80 $43


	ld a, e                                          ; $47ca: $7b
	db $fc                                           ; $47cb: $fc
	ld a, a                                          ; $47cc: $7f
	cp $9c                                           ; $47cd: $fe $9c
	rst AddAOntoHL                                          ; $47cf: $ef
	dec e                                            ; $47d0: $1d
	ei                                               ; $47d1: $fb

jr_021_47d2:
	ld a, e                                          ; $47d2: $7b
	cp $98                                           ; $47d3: $fe $98
	cp e                                             ; $47d5: $bb
	dec e                                            ; $47d6: $1d
	cp [hl]                                          ; $47d7: $be
	add hl, de                                       ; $47d8: $19
	cp a                                             ; $47d9: $bf
	add hl, de                                       ; $47da: $19
	xor [hl]                                         ; $47db: $ae
	ld a, e                                          ; $47dc: $7b
	cp $76                                           ; $47dd: $fe $76
	ld h, [hl]                                       ; $47df: $66
	ld a, a                                          ; $47e0: $7f
	cp $9e                                           ; $47e1: $fe $9e
	rst AddAOntoHL                                          ; $47e3: $ef
	ld a, d                                          ; $47e4: $7a
	ld h, d                                          ; $47e5: $62
	ld a, a                                          ; $47e6: $7f
	cp $78                                           ; $47e7: $fe $78
	or e                                             ; $47e9: $b3
	sbc l                                            ; $47ea: $9d
	sbc a                                            ; $47eb: $9f
	db $fc                                           ; $47ec: $fc
	jp nc, Jump_021_44ff                             ; $47ed: $d2 $ff $44

	ret nz                                           ; $47f0: $c0

	ld e, [hl]                                       ; $47f1: $5e
	ld h, [hl]                                       ; $47f2: $66
	ld h, [hl]                                       ; $47f3: $66
	ld h, b                                          ; $47f4: $60
	ld c, a                                          ; $47f5: $4f
	cp $02                                           ; $47f6: $fe $02
	ld h, b                                          ; $47f8: $60
	ld c, b                                          ; $47f9: $48
	ret nz                                           ; $47fa: $c0

	ld [hl], a                                       ; $47fb: $77
	dec h                                            ; $47fc: $25
	inc e                                            ; $47fd: $1c
	ret nz                                           ; $47fe: $c0

	ld [hl], d                                       ; $47ff: $72
	ld e, b                                          ; $4800: $58
	ld l, b                                          ; $4801: $68
	ret nz                                           ; $4802: $c0

	sbc e                                            ; $4803: $9b
	di                                               ; $4804: $f3
	ld a, [bc]                                       ; $4805: $0a
	and d                                            ; $4806: $a2
	ld e, e                                          ; $4807: $5b
	ld e, h                                          ; $4808: $5c
	ret nz                                           ; $4809: $c0

	sbc e                                            ; $480a: $9b
	push hl                                          ; $480b: $e5
	ld d, $54                                        ; $480c: $16 $54
	and a                                            ; $480e: $a7
	ld l, d                                          ; $480f: $6a
	ld e, b                                          ; $4810: $58
	ld [hl], b                                       ; $4811: $70
	ret nz                                           ; $4812: $c0

	ld a, h                                          ; $4813: $7c
	jp nz, Jump_021_5a76                             ; $4814: $c2 $76 $5a

	ld e, h                                          ; $4817: $5c
	ret nz                                           ; $4818: $c0

jr_021_4819:
	sbc l                                            ; $4819: $9d
	ld d, l                                          ; $481a: $55
	sbc d                                            ; $481b: $9a
	halt                                             ; $481c: $76
	ld e, d                                          ; $481d: $5a
	ld e, h                                          ; $481e: $5c
	ret nz                                           ; $481f: $c0

	sbc l                                            ; $4820: $9d
	jr nc, jr_021_47d2                               ; $4821: $30 $af

	halt                                             ; $4823: $76
	pop de                                           ; $4824: $d1
	ld a, a                                          ; $4825: $7f
	cp $7a                                           ; $4826: $fe $7a
	ld l, b                                          ; $4828: $68
	sbc [hl]                                         ; $4829: $9e
	ret nz                                           ; $482a: $c0

	ld d, h                                          ; $482b: $54
	ret nz                                           ; $482c: $c0

	rst SubAFromDE                                          ; $482d: $df
	ld a, $9d                                        ; $482e: $3e $9d
	ld l, $30                                        ; $4830: $2e $30
	ld [hl], h                                       ; $4832: $74
	cp h                                             ; $4833: $bc
	ld [hl], h                                       ; $4834: $74
	cp [hl]                                          ; $4835: $be
	sbc h                                            ; $4836: $9c
	jr nc, @+$30                                     ; $4837: $30 $2e

	jr nz, jr_021_487d                               ; $4839: $20 $42

	ld h, b                                          ; $483b: $60
	sub d                                            ; $483c: $92
	rst $38                                          ; $483d: $ff
	ld a, e                                          ; $483e: $7b
	ld a, a                                          ; $483f: $7f
	adc e                                            ; $4840: $8b
	rst AddAOntoHL                                          ; $4841: $ef
	ldh a, [$fe]                                     ; $4842: $f0 $fe
	ei                                               ; $4844: $fb
	ccf                                              ; $4845: $3f
	ei                                               ; $4846: $fb
	jp $fc3f                                         ; $4847: $c3 $3f $fc


	ld a, b                                          ; $484a: $78
	cp b                                             ; $484b: $b8
	ld l, [hl]                                       ; $484c: $6e
	ld l, d                                          ; $484d: $6a
	ld a, [hl]                                       ; $484e: $7e
	xor d                                            ; $484f: $aa
	ld [hl], a                                       ; $4850: $77
	ld a, [$0795]                                    ; $4851: $fa $95 $07
	ld hl, sp-$20                                    ; $4854: $f8 $e0
	rra                                              ; $4856: $1f
	di                                               ; $4857: $f3
	call c, $def1                                    ; $4858: $dc $f1 $de
	pop af                                           ; $485b: $f1
	sbc $77                                          ; $485c: $de $77
	adc l                                            ; $485e: $8d
	ld a, e                                          ; $485f: $7b
	cp $7b                                           ; $4860: $fe $7b
	pop de                                           ; $4862: $d1
	ld a, [hl]                                       ; $4863: $7e
	ld l, [hl]                                       ; $4864: $6e
	ld [hl], a                                       ; $4865: $77
	cp $df                                           ; $4866: $fe $df
	ld bc, $bfdf                                     ; $4868: $01 $df $bf
	adc c                                            ; $486b: $89
	and c                                            ; $486c: $a1
	cp a                                             ; $486d: $bf
	add c                                            ; $486e: $81
	ld bc, $817f                                     ; $486f: $01 $7f $81
	call z, $ec00                                    ; $4872: $cc $00 $ec
	nop                                              ; $4875: $00
	call z, $8c00                                    ; $4876: $cc $00 $8c
	ld b, b                                          ; $4879: $40
	ld e, b                                          ; $487a: $58
	add b                                            ; $487b: $80
	ret nc                                           ; $487c: $d0

jr_021_487d:
	nop                                              ; $487d: $00
	ld d, b                                          ; $487e: $50
	add b                                            ; $487f: $80
	pop de                                           ; $4880: $d1
	nop                                              ; $4881: $00
	halt                                             ; $4882: $76
	ld l, h                                          ; $4883: $6c
	sbc [hl]                                         ; $4884: $9e
	add d                                            ; $4885: $82
	ld a, e                                          ; $4886: $7b
	cp $90                                           ; $4887: $fe $90
	ld [bc], a                                       ; $4889: $02
	inc bc                                           ; $488a: $03
	ld bc, $8103                                     ; $488b: $01 $03 $81
	inc bc                                           ; $488e: $03
	add l                                            ; $488f: $85
	inc bc                                           ; $4890: $03
	add c                                            ; $4891: $81
	add b                                            ; $4892: $80
	add c                                            ; $4893: $81
	add b                                            ; $4894: $80
	sub b                                            ; $4895: $90
	add c                                            ; $4896: $81
	sub d                                            ; $4897: $92
	ld a, e                                          ; $4898: $7b
	cp $8f                                           ; $4899: $fe $8f
	sub e                                            ; $489b: $93
	ld bc, $0193                                     ; $489c: $01 $93 $01
	add e                                            ; $489f: $83
	ld bc, $1bac                                     ; $48a0: $01 $ac $1b
	add l                                            ; $48a3: $85
	dec sp                                           ; $48a4: $3b
	push bc                                          ; $48a5: $c5
	dec sp                                           ; $48a6: $3b
	db $dd                                           ; $48a7: $dd
	inc hl                                           ; $48a8: $23
	db $fd                                           ; $48a9: $fd
	inc bc                                           ; $48aa: $03
	ld l, a                                          ; $48ab: $6f
	cp $96                                           ; $48ac: $fe $96
	ld a, a                                          ; $48ae: $7f
	sbc a                                            ; $48af: $9f
	rst SubAFromDE                                          ; $48b0: $df
	cp a                                             ; $48b1: $bf
	rra                                              ; $48b2: $1f
	rst $38                                          ; $48b3: $ff
	rst $38                                          ; $48b4: $ff
	sbc a                                            ; $48b5: $9f
	rst $38                                          ; $48b6: $ff
	ld a, e                                          ; $48b7: $7b
	ld hl, sp+$7f                                    ; $48b8: $f8 $7f
	ei                                               ; $48ba: $fb
	sbc [hl]                                         ; $48bb: $9e
	add a                                            ; $48bc: $87
	ret nc                                           ; $48bd: $d0

	rst $38                                          ; $48be: $ff
	ld e, h                                          ; $48bf: $5c
	ret nz                                           ; $48c0: $c0

	ld a, d                                          ; $48c1: $7a
	push bc                                          ; $48c2: $c5
	cp $02                                           ; $48c3: $fe $02
	ld h, b                                          ; $48c5: $60
	ld c, d                                          ; $48c6: $4a
	ld h, b                                          ; $48c7: $60
	sbc e                                            ; $48c8: $9b
	adc l                                            ; $48c9: $8d
	ld b, [hl]                                       ; $48ca: $46
	adc a                                            ; $48cb: $8f

Call_021_48cc:
	ld b, h                                          ; $48cc: $44
	ld l, e                                          ; $48cd: $6b
	db $fc                                           ; $48ce: $fc
	sbc [hl]                                         ; $48cf: $9e
	ld b, [hl]                                       ; $48d0: $46
	ld [hl], a                                       ; $48d1: $77
	db $fc                                           ; $48d2: $fc
	inc c                                            ; $48d3: $0c
	ret nz                                           ; $48d4: $c0

	sbc l                                            ; $48d5: $9d
	db $fd                                           ; $48d6: $fd
	ld [bc], a                                       ; $48d7: $02
	inc d                                            ; $48d8: $14
	ret nz                                           ; $48d9: $c0

	sbc e                                            ; $48da: $9b
	db $10                                           ; $48db: $10
	ld [$1810], sp                                   ; $48dc: $08 $10 $18
	db $10                                           ; $48df: $10
	ret nz                                           ; $48e0: $c0

	sbc h                                            ; $48e1: $9c
	ld b, b                                          ; $48e2: $40
	add b                                            ; $48e3: $80
	ld b, b                                          ; $48e4: $40
	nop                                              ; $48e5: $00
	ret nz                                           ; $48e6: $c0

	ld h, h                                          ; $48e7: $64
	ret nz                                           ; $48e8: $c0

	sbc b                                            ; $48e9: $98
	ld b, b                                          ; $48ea: $40
	ld [$7400], a                                    ; $48eb: $ea $00 $74
	nop                                              ; $48ee: $00
	ld l, d                                          ; $48ef: $6a
	nop                                              ; $48f0: $00
	ld a, $6e                                        ; $48f1: $3e $6e
	ld c, d                                          ; $48f3: $4a
	ld h, b                                          ; $48f4: $60
	ld a, a                                          ; $48f5: $7f
	cp $9a                                           ; $48f6: $fe $9a
	ld hl, sp+$0f                                    ; $48f8: $f8 $0f
	rst $38                                          ; $48fa: $ff
	ldh [rIE], a                                     ; $48fb: $e0 $ff
	ld h, b                                          ; $48fd: $60
	cp [hl]                                          ; $48fe: $be
	ld [hl], a                                       ; $48ff: $77
	xor $9a                                          ; $4900: $ee $9a
	ldh [$3f], a                                     ; $4902: $e0 $3f
	rst $38                                          ; $4904: $ff
	add b                                            ; $4905: $80
	rst $38                                          ; $4906: $ff
	ld l, b                                          ; $4907: $68
	cp [hl]                                          ; $4908: $be
	ld [hl], a                                       ; $4909: $77
	ldh a, [rBCPS]                                   ; $490a: $f0 $68
	cp [hl]                                          ; $490c: $be
	ld [hl], a                                       ; $490d: $77
	cp $97                                           ; $490e: $fe $97
	pop bc                                           ; $4910: $c1
	ld bc, $03e3                                     ; $4911: $01 $e3 $03
	db $e3                                           ; $4914: $e3
	inc bc                                           ; $4915: $03
	rst $38                                          ; $4916: $ff
	rst $38                                          ; $4917: $ff
	ld a, e                                          ; $4918: $7b
	db $fd                                           ; $4919: $fd
	sbc l                                            ; $491a: $9d
	cp a                                             ; $491b: $bf
	ei                                               ; $491c: $fb
	ld a, e                                          ; $491d: $7b
	cp $98                                           ; $491e: $fe $98
	ld [hl], c                                       ; $4920: $71
	add b                                            ; $4921: $80
	ld d, c                                          ; $4922: $51
	add b                                            ; $4923: $80
	ld b, c                                          ; $4924: $41
	add b                                            ; $4925: $80
	ld bc, $fe7b                                     ; $4926: $01 $7b $fe
	sub h                                            ; $4929: $94
	rst SubAFromBC                                          ; $492a: $e7
	nop                                              ; $492b: $00
	adc a                                            ; $492c: $8f
	ld h, b                                          ; $492d: $60
	adc a                                            ; $492e: $8f
	ld h, b                                          ; $492f: $60
	add c                                            ; $4930: $81
	inc bc                                           ; $4931: $03
	add h                                            ; $4932: $84
	inc bc                                           ; $4933: $03
	inc b                                            ; $4934: $04
	ld [hl], e                                       ; $4935: $73
	cp $80                                           ; $4936: $fe $80
	nop                                              ; $4938: $00
	rlca                                             ; $4939: $07
	ld bc, $0106                                     ; $493a: $01 $06 $01
	ld b, $8e                                        ; $493d: $06 $8e
	ld bc, $050a                                     ; $493f: $01 $0a $05
	dec bc                                           ; $4942: $0b
	inc b                                            ; $4943: $04
	add hl, bc                                       ; $4944: $09
	ld b, $0e                                        ; $4945: $06 $0e
	rlca                                             ; $4947: $07
	ld a, [bc]                                       ; $4948: $0a
	rlca                                             ; $4949: $07
	ld l, e                                          ; $494a: $6b
	ld b, $fb                                        ; $494b: $06 $fb
	ld b, $fd                                        ; $494d: $06 $fd
	inc bc                                           ; $494f: $03
	ld a, l                                          ; $4950: $7d
	inc bc                                           ; $4951: $03
	ld [hl], e                                       ; $4952: $73
	dec c                                            ; $4953: $0d
	ld a, e                                          ; $4954: $7b
	dec c                                            ; $4955: $0d
	ld l, a                                          ; $4956: $6f
	adc b                                            ; $4957: $88
	add hl, de                                       ; $4958: $19
	cpl                                              ; $4959: $2f
	ld e, b                                          ; $495a: $58
	xor a                                            ; $495b: $af
	ld e, b                                          ; $495c: $58
	adc a                                            ; $495d: $8f
	ld hl, sp-$09                                    ; $495e: $f8 $f7
	cp a                                             ; $4960: $bf
	rst FarCall                                          ; $4961: $f7
	sbc a                                            ; $4962: $9f
	rst FarCall                                          ; $4963: $f7
	adc a                                            ; $4964: $8f
	rst SubAFromBC                                          ; $4965: $e7
	sbc a                                            ; $4966: $9f
	xor a                                            ; $4967: $af
	ld a, a                                          ; $4968: $7f
	or a                                             ; $4969: $b7
	ld a, a                                          ; $496a: $7f
	adc a                                            ; $496b: $8f
	ld a, a                                          ; $496c: $7f
	sbc a                                            ; $496d: $9f
	ld a, a                                          ; $496e: $7f
	reti                                             ; $496f: $d9


	rst $38                                          ; $4970: $ff
	sbc [hl]                                         ; $4971: $9e
	db $fd                                           ; $4972: $fd
	ld [hl], e                                       ; $4973: $73
	cp $76                                           ; $4974: $fe $76
	ret                                              ; $4976: $c9


	ld h, a                                          ; $4977: $67
	ld e, b                                          ; $4978: $58
	sbc c                                            ; $4979: $99
	xor d                                            ; $497a: $aa
	rst $38                                          ; $497b: $ff
	ld d, l                                          ; $497c: $55
	rst $38                                          ; $497d: $ff
	xor d                                            ; $497e: $aa
	rst $38                                          ; $497f: $ff
	halt                                             ; $4980: $76
	ld l, h                                          ; $4981: $6c
	ld d, a                                          ; $4982: $57
	ldh a, [$9c]                                     ; $4983: $f0 $9c
	jr nc, jr_021_49c7                               ; $4985: $30 $40

	jr nc, jr_021_4a03                               ; $4987: $30 $7a

	db $ec                                           ; $4989: $ec
	ld h, a                                          ; $498a: $67
	ldh a, [$99]                                     ; $498b: $f0 $99
	and b                                            ; $498d: $a0
	rst $38                                          ; $498e: $ff
	ld h, b                                          ; $498f: $60
	add c                                            ; $4990: $81
	ld h, b                                          ; $4991: $60
	add c                                            ; $4992: $81
	ld e, a                                          ; $4993: $5f
	ldh a, [$7f]                                     ; $4994: $f0 $7f
	ld sp, hl                                        ; $4996: $f9
	sbc e                                            ; $4997: $9b
	adc e                                            ; $4998: $8b
	ld b, h                                          ; $4999: $44
	adc c                                            ; $499a: $89
	ld b, [hl]                                       ; $499b: $46
	ld d, a                                          ; $499c: $57
	ret nc                                           ; $499d: $d0

	halt                                             ; $499e: $76
	ld l, h                                          ; $499f: $6c
	ld a, a                                          ; $49a0: $7f
	cp $86                                           ; $49a1: $fe $86
	add a                                            ; $49a3: $87
	jr jr_021_49ed                                   ; $49a4: $18 $47

	sbc c                                            ; $49a6: $99
	and a                                            ; $49a7: $a7
	reti                                             ; $49a8: $d9


	ld b, a                                          ; $49a9: $47
	ld sp, hl                                        ; $49aa: $f9
	and a                                            ; $49ab: $a7
	ld sp, hl                                        ; $49ac: $f9
	db $fd                                           ; $49ad: $fd
	ld [bc], a                                       ; $49ae: $02
	db $fc                                           ; $49af: $fc
	inc bc                                           ; $49b0: $03
	ld hl, sp+$07                                    ; $49b1: $f8 $07
	ld hl, sp+$07                                    ; $49b3: $f8 $07
	ldh a, [rIE]                                     ; $49b5: $f0 $ff
	ld bc, $70ff                                     ; $49b7: $01 $ff $70
	rst $38                                          ; $49ba: $ff
	ld [hl], c                                       ; $49bb: $71
	ld [hl], e                                       ; $49bc: $73
	sub b                                            ; $49bd: $90
	adc [hl]                                         ; $49be: $8e
	inc c                                            ; $49bf: $0c
	nop                                              ; $49c0: $00
	inc b                                            ; $49c1: $04
	adc b                                            ; $49c2: $88
	rst $38                                          ; $49c3: $ff
	rst $38                                          ; $49c4: $ff
	ld b, h                                          ; $49c5: $44
	rst $38                                          ; $49c6: $ff

jr_021_49c7:
	or a                                             ; $49c7: $b7
	call $9d6f                                       ; $49c8: $cd $6f $9d
	inc d                                            ; $49cb: $14
	jr @+$06                                         ; $49cc: $18 $04

	jr jr_021_49fc                                   ; $49ce: $18 $2c

	ld a, e                                          ; $49d0: $7b
	cp $8f                                           ; $49d1: $fe $8f
	push de                                          ; $49d3: $d5
	cp a                                             ; $49d4: $bf
	dec bc                                           ; $49d5: $0b
	rst $38                                          ; $49d6: $ff
	inc d                                            ; $49d7: $14
	rst $38                                          ; $49d8: $ff
	rrca                                             ; $49d9: $0f
	cp $20                                           ; $49da: $fe $20
	nop                                              ; $49dc: $00
	jr nc, jr_021_49df                               ; $49dd: $30 $00

jr_021_49df:
	ld de, $1120                                     ; $49df: $11 $20 $11
	jr nz, jr_021_4a5f                               ; $49e2: $20 $7b

	ld h, [hl]                                       ; $49e4: $66
	adc e                                            ; $49e5: $8b
	rst $38                                          ; $49e6: $ff
	db $f4                                           ; $49e7: $f4
	rst FarCall                                          ; $49e8: $f7
	ld h, l                                          ; $49e9: $65
	or $84                                           ; $49ea: $f6 $84
	ld b, b                                          ; $49ec: $40

jr_021_49ed:
	ld h, $d0                                        ; $49ed: $26 $d0
	and d                                            ; $49ef: $a2
	ld [hl], h                                       ; $49f0: $74
	or b                                             ; $49f1: $b0
	ld l, [hl]                                       ; $49f2: $6e
	rlca                                             ; $49f3: $07
	ei                                               ; $49f4: $fb
	inc b                                            ; $49f5: $04
	ei                                               ; $49f6: $fb
	ld b, a                                          ; $49f7: $47
	rst $38                                          ; $49f8: $ff
	and a                                            ; $49f9: $a7
	ld [hl], a                                       ; $49fa: $77
	ret nz                                           ; $49fb: $c0

jr_021_49fc:
	sbc [hl]                                         ; $49fc: $9e
	ld bc, $fe7b                                     ; $49fd: $01 $7b $fe
	ld a, a                                          ; $4a00: $7f
	nop                                              ; $4a01: $00
	sbc c                                            ; $4a02: $99

jr_021_4a03:
	ei                                               ; $4a03: $fb
	ld [$28f7], sp                                   ; $4a04: $08 $f7 $28
	rst SubAFromDE                                          ; $4a07: $df
	nop                                              ; $4a08: $00
	ld a, d                                          ; $4a09: $7a
	ld e, b                                          ; $4a0a: $58
	cp $97                                           ; $4a0b: $fe $97
	ld b, b                                          ; $4a0d: $40
	jr nz, jr_021_4a50                               ; $4a0e: $20 $40

	ld h, c                                          ; $4a10: $61
	cp $fe                                           ; $4a11: $fe $fe
	rst $38                                          ; $4a13: $ff
	rst $38                                          ; $4a14: $ff
	ld a, e                                          ; $4a15: $7b
	db $fc                                           ; $4a16: $fc
	adc a                                            ; $4a17: $8f
	ld d, h                                          ; $4a18: $54
	jr nz, @+$2c                                     ; $4a19: $20 $2a

	ld h, b                                          ; $4a1b: $60
	inc h                                            ; $4a1c: $24
	ld [hl], b                                       ; $4a1d: $70
	xor d                                            ; $4a1e: $aa
	ld [hl], b                                       ; $4a1f: $70
	call nc, $ea68                                   ; $4a20: $d4 $68 $ea
	ld [hl], b                                       ; $4a23: $70
	and h                                            ; $4a24: $a4
	ld a, b                                          ; $4a25: $78
	and d                                            ; $4a26: $a2
	ld a, b                                          ; $4a27: $78
	cp $de                                           ; $4a28: $fe $de
	ld a, $74                                        ; $4a2a: $3e $74
	cp h                                             ; $4a2c: $bc
	rst SubAFromDE                                          ; $4a2d: $df
	ld a, $7c                                        ; $4a2e: $3e $7c
	cp [hl]                                          ; $4a30: $be
	ld a, h                                          ; $4a31: $7c
	cp d                                             ; $4a32: $ba
	ld b, d                                          ; $4a33: $42
	ld h, b                                          ; $4a34: $60
	ld h, [hl]                                       ; $4a35: $66
	ld l, b                                          ; $4a36: $68
	ld h, a                                          ; $4a37: $67
	cp $6e                                           ; $4a38: $fe $6e
	ld l, d                                          ; $4a3a: $6a
	ld e, a                                          ; $4a3b: $5f
	cp $72                                           ; $4a3c: $fe $72
	ld l, d                                          ; $4a3e: $6a
	ld e, e                                          ; $4a3f: $5b
	cp $9e                                           ; $4a40: $fe $9e
	cp a                                             ; $4a42: $bf
	ld e, a                                          ; $4a43: $5f
	cp $9e                                           ; $4a44: $fe $9e
	cp $7b                                           ; $4a46: $fe $7b
	cp $9c                                           ; $4a48: $fe $9c
	ld l, a                                          ; $4a4a: $6f
	ret nz                                           ; $4a4b: $c0

	ld a, a                                          ; $4a4c: $7f
	ld a, e                                          ; $4a4d: $7b
	cp $91                                           ; $4a4e: $fe $91

jr_021_4a50:
	ld e, a                                          ; $4a50: $5f
	ldh [$36], a                                     ; $4a51: $e0 $36
	ret nz                                           ; $4a53: $c0

	or h                                             ; $4a54: $b4
	jp nz, $c23c                                     ; $4a55: $c2 $3c $c2

	ld a, [hl]                                       ; $4a58: $7e
	add b                                            ; $4a59: $80
	add hl, bc                                       ; $4a5a: $09
	ld b, $0b                                        ; $4a5b: $06 $0b
	inc b                                            ; $4a5d: $04
	ld h, a                                          ; $4a5e: $67

jr_021_4a5f:
	cp $88                                           ; $4a5f: $fe $88
	ccf                                              ; $4a61: $3f
	nop                                              ; $4a62: $00
	ccf                                              ; $4a63: $3f
	nop                                              ; $4a64: $00
	db $e3                                           ; $4a65: $e3
	ld b, $ef                                        ; $4a66: $06 $ef
	ld b, $fd                                        ; $4a68: $06 $fd
	ld b, $fd                                        ; $4a6a: $06 $fd
	ld [bc], a                                       ; $4a6c: $02
	db $ec                                           ; $4a6d: $ec
	inc de                                           ; $4a6e: $13
	db $ec                                           ; $4a6f: $ec
	inc de                                           ; $4a70: $13
	db $fc                                           ; $4a71: $fc
	inc de                                           ; $4a72: $13
	adc $31                                          ; $4a73: $ce $31
	adc a                                            ; $4a75: $8f
	ld hl, sp-$61                                    ; $4a76: $f8 $9f
	ld [hl], e                                       ; $4a78: $73
	cp $97                                           ; $4a79: $fe $97
	sbc [hl]                                         ; $4a7b: $9e
	ld sp, hl                                        ; $4a7c: $f9
	db $fc                                           ; $4a7d: $fc
	ei                                               ; $4a7e: $fb
	db $fc                                           ; $4a7f: $fc
	ei                                               ; $4a80: $fb
	cp h                                             ; $4a81: $bc
	ei                                               ; $4a82: $fb
	halt                                             ; $4a83: $76
	ld l, h                                          ; $4a84: $6c
	ld l, a                                          ; $4a85: $6f
	cp $7c                                           ; $4a86: $fe $7c
	cp d                                             ; $4a88: $ba
	ld a, l                                          ; $4a89: $7d
	ld [$fe7f], a                                    ; $4a8a: $ea $7f $fe
	ld a, e                                          ; $4a8d: $7b
	dec sp                                           ; $4a8e: $3b
	ld [hl], e                                       ; $4a8f: $73
	db $fc                                           ; $4a90: $fc
	ld h, a                                          ; $4a91: $67
	cp $98                                           ; $4a92: $fe $98
	db $dd                                           ; $4a94: $dd
	rst $38                                          ; $4a95: $ff
	sbc $fe                                          ; $4a96: $de $fe
	sbc $fe                                          ; $4a98: $de $fe
	sbc [hl]                                         ; $4a9a: $9e
	ld a, e                                          ; $4a9b: $7b
	cp $9e                                           ; $4a9c: $fe $9e
	ld e, $7b                                        ; $4a9e: $1e $7b
	cp $9d                                           ; $4aa0: $fe $9d
	ld e, [hl]                                       ; $4aa2: $5e
	cp $7a                                           ; $4aa3: $fe $7a
	adc h                                            ; $4aa5: $8c
	sub d                                            ; $4aa6: $92
	ld a, a                                          ; $4aa7: $7f
	ld e, a                                          ; $4aa8: $5f
	ccf                                              ; $4aa9: $3f
	ld c, a                                          ; $4aaa: $4f
	ccf                                              ; $4aab: $3f
	ld d, a                                          ; $4aac: $57
	cpl                                              ; $4aad: $2f
	ld e, e                                          ; $4aae: $5b
	daa                                              ; $4aaf: $27
	ld b, b                                          ; $4ab0: $40
	ccf                                              ; $4ab1: $3f
	ld e, [hl]                                       ; $4ab2: $5e
	ld hl, $c375                                     ; $4ab3: $21 $75 $c3
	ld h, a                                          ; $4ab6: $67
	ld l, a                                          ; $4ab7: $6f
	ld [hl], a                                       ; $4ab8: $77
	or $77                                           ; $4ab9: $f6 $77
	ldh a, [$9e]                                     ; $4abb: $f0 $9e
	ld a, [hl]                                       ; $4abd: $7e
	ld l, e                                          ; $4abe: $6b
	cp $77                                           ; $4abf: $fe $77
	or $9e                                           ; $4ac1: $f6 $9e
	dec b                                            ; $4ac3: $05
	ld a, e                                          ; $4ac4: $7b
	ld a, [$fc9e]                                    ; $4ac5: $fa $9e $fc
	ld l, e                                          ; $4ac8: $6b
	cp $77                                           ; $4ac9: $fe $77
	or $7e                                           ; $4acb: $f6 $7e
	ld l, h                                          ; $4acd: $6c
	sbc c                                            ; $4ace: $99
	rlca                                             ; $4acf: $07
	ld sp, hl                                        ; $4ad0: $f9
	daa                                              ; $4ad1: $27
	reti                                             ; $4ad2: $d9


	ld b, a                                          ; $4ad3: $47
	cp c                                             ; $4ad4: $b9
	ld [hl], a                                       ; $4ad5: $77
	db $fc                                           ; $4ad6: $fc
	adc a                                            ; $4ad7: $8f
	and a                                            ; $4ad8: $a7
	ld e, c                                          ; $4ad9: $59
	ld h, a                                          ; $4ada: $67
	sbc c                                            ; $4adb: $99
	add hl, bc                                       ; $4adc: $09
	ld sp, hl                                        ; $4add: $f9
	ld a, [bc]                                       ; $4ade: $0a
	ei                                               ; $4adf: $fb
	dec e                                            ; $4ae0: $1d
	rst $38                                          ; $4ae1: $ff
	ld a, [de]                                       ; $4ae2: $1a
	db $fd                                           ; $4ae3: $fd
	add hl, de                                       ; $4ae4: $19
	ld hl, sp+$2a                                    ; $4ae5: $f8 $2a
	rst AddAOntoHL                                          ; $4ae7: $ef
	ld a, e                                          ; $4ae8: $7b
	ld hl, sp+$7f                                    ; $4ae9: $f8 $7f
	rrca                                             ; $4aeb: $0f
	sub l                                            ; $4aec: $95
	sbc l                                            ; $4aed: $9d
	cpl                                              ; $4aee: $2f
	db $dd                                           ; $4aef: $dd
	sbc a                                            ; $4af0: $9f
	db $fd                                           ; $4af1: $fd
	ld e, a                                          ; $4af2: $5f
	db $fd                                           ; $4af3: $fd
	cp [hl]                                          ; $4af4: $be
	db $fd                                           ; $4af5: $fd
	ccf                                              ; $4af6: $3f
	ld a, e                                          ; $4af7: $7b
	db $fc                                           ; $4af8: $fc
	add l                                            ; $4af9: $85
	dec a                                            ; $4afa: $3d
	rst $38                                          ; $4afb: $ff
	ld [$319f], sp                                   ; $4afc: $08 $9f $31
	cp a                                             ; $4aff: $bf
	db $fd                                           ; $4b00: $fd
	rst $38                                          ; $4b01: $ff
	db $fc                                           ; $4b02: $fc
	rst AddAOntoHL                                          ; $4b03: $ef
	ld [$a3ef], a                                    ; $4b04: $ea $ef $a3
	xor a                                            ; $4b07: $af
	or e                                             ; $4b08: $b3
	cp a                                             ; $4b09: $bf
	db $fc                                           ; $4b0a: $fc
	cp a                                             ; $4b0b: $bf
	push hl                                          ; $4b0c: $e5
	halt                                             ; $4b0d: $76
	rst SubAFromBC                                          ; $4b0e: $e7
	db $f4                                           ; $4b0f: $f4
	rst SubAFromBC                                          ; $4b10: $e7
	db $f4                                           ; $4b11: $f4
	and $f5                                          ; $4b12: $e6 $f5
	ld h, a                                          ; $4b14: $67
	cp $88                                           ; $4b15: $fe $88
	cp b                                             ; $4b17: $b8
	rst $38                                          ; $4b18: $ff
	db $10                                           ; $4b19: $10
	rst $38                                          ; $4b1a: $ff
	sbc b                                            ; $4b1b: $98
	rst SubAFromDE                                          ; $4b1c: $df
	ldh a, [rIE]                                     ; $4b1d: $f0 $ff
	ld hl, sp-$01                                    ; $4b1f: $f8 $ff
	sub b                                            ; $4b21: $90
	cp a                                             ; $4b22: $bf
	ld [$18bf], sp                                   ; $4b23: $08 $bf $18
	cp a                                             ; $4b26: $bf
	ret z                                            ; $4b27: $c8

	rst SubAFromDE                                          ; $4b28: $df
	jp z, $c9df                                      ; $4b29: $ca $df $c9

	rst SubAFromDE                                          ; $4b2c: $df
	jp nz, $fc7b                                     ; $4b2d: $c2 $7b $fc

	ld [hl], a                                       ; $4b30: $77
	ld hl, sp+$7f                                    ; $4b31: $f8 $7f
	db $fc                                           ; $4b33: $fc
	sbc d                                            ; $4b34: $9a
	ld sp, hl                                        ; $4b35: $f9
	cp $79                                           ; $4b36: $fe $79
	cp $fd                                           ; $4b38: $fe $fd
	ld [hl], e                                       ; $4b3a: $73
	cp $7f                                           ; $4b3b: $fe $7f
	or $7b                                           ; $4b3d: $f6 $7b
	rrca                                             ; $4b3f: $0f
	rst SubAFromDE                                          ; $4b40: $df
	db $fc                                           ; $4b41: $fc
	adc [hl]                                         ; $4b42: $8e
	ld [hl], b                                       ; $4b43: $70
	ld [hl-], a                                      ; $4b44: $32
	ld hl, sp-$4c                                    ; $4b45: $f8 $b4
	ld hl, sp+$6a                                    ; $4b47: $f8 $6a
	ldh a, [$bc]                                     ; $4b49: $f0 $bc
	ldh a, [$62]                                     ; $4b4b: $f0 $62
	ld hl, sp-$4c                                    ; $4b4d: $f8 $b4
	ld a, b                                          ; $4b4f: $78
	ld h, d                                          ; $4b50: $62
	ld hl, sp+$28                                    ; $4b51: $f8 $28
	ld [hl], $0c                                     ; $4b53: $36 $0c
	cp [hl]                                          ; $4b55: $be
	inc e                                            ; $4b56: $1c
	nop                                              ; $4b57: $00
	rst SubAFromDE                                          ; $4b58: $df
	inc sp                                           ; $4b59: $33
	sbc $44                                          ; $4b5a: $de $44
	sbc h                                            ; $4b5c: $9c
	inc sp                                           ; $4b5d: $33
	ld [hl], a                                       ; $4b5e: $77
	ld [hl], e                                       ; $4b5f: $73
	db $dd                                           ; $4b60: $dd
	inc sp                                           ; $4b61: $33
	sbc [hl]                                         ; $4b62: $9e
	jr nc, jr_021_4b68                               ; $4b63: $30 $03

	di                                               ; $4b65: $f3
	ld d, a                                          ; $4b66: $57
	di                                               ; $4b67: $f3

jr_021_4b68:
	db $dd                                           ; $4b68: $dd
	inc sp                                           ; $4b69: $33
	sbc [hl]                                         ; $4b6a: $9e
	ld [hl], $5f                                     ; $4b6b: $36 $5f
	di                                               ; $4b6d: $f3
	sbc $53                                          ; $4b6e: $de $53
	ld a, a                                          ; $4b70: $7f
	di                                               ; $4b71: $f3

jr_021_4b72:
	sbc h                                            ; $4b72: $9c
	add h                                            ; $4b73: $84
	ldh [$61], a                                     ; $4b74: $e0 $61
	pop de                                           ; $4b76: $d1
	inc b                                            ; $4b77: $04
	jp c, $9e0f                                      ; $4b78: $da $0f $9e

	rra                                              ; $4b7b: $1f
	ld sp, hl                                        ; $4b7c: $f9
	sbc e                                            ; $4b7d: $9b
	db $fc                                           ; $4b7e: $fc
	db $ec                                           ; $4b7f: $ec
	cp $fe                                           ; $4b80: $fe $fe
	sbc $ff                                          ; $4b82: $de $ff
	sub [hl]                                         ; $4b84: $96
	db $fc                                           ; $4b85: $fc
	inc c                                            ; $4b86: $0c
	inc e                                            ; $4b87: $1c

jr_021_4b88:
	ld [de], a                                       ; $4b88: $12
	ld [de], a                                       ; $4b89: $12
	inc de                                           ; $4b8a: $13
	ld de, $2c12                                     ; $4b8b: $11 $12 $2c
	db $fc                                           ; $4b8e: $fc
	sbc h                                            ; $4b8f: $9c
	add b                                            ; $4b90: $80
	ret nz                                           ; $4b91: $c0

	ld h, b                                          ; $4b92: $60
	ld l, a                                          ; $4b93: $6f
	ld hl, sp-$63                                    ; $4b94: $f8 $9d
	ld b, b                                          ; $4b96: $40
	jr nz, jr_021_4b72                               ; $4b97: $20 $d9

	inc b                                            ; $4b99: $04
	reti                                             ; $4b9a: $d9


	rlca                                             ; $4b9b: $07
	sbc [hl]                                         ; $4b9c: $9e
	rrca                                             ; $4b9d: $0f
	call c, $df87                                    ; $4b9e: $dc $87 $df
	rst JumpTable                                          ; $4ba1: $c7
	sbc [hl]                                         ; $4ba2: $9e
	ldh a, [$dc]                                     ; $4ba3: $f0 $dc
	ld a, b                                          ; $4ba5: $78
	rst SubAFromDE                                          ; $4ba6: $df
	jr c, jr_021_4b88                                ; $4ba7: $38 $df

	ld b, $de                                        ; $4ba9: $06 $de
	ld c, $df                                        ; $4bab: $0e $df
	rra                                              ; $4bad: $1f
	sbc [hl]                                         ; $4bae: $9e
	ccf                                              ; $4baf: $3f
	call c, $def9                                    ; $4bb0: $dc $f9 $de
	ld hl, sp-$69                                    ; $4bb3: $f8 $97
	ld d, c                                          ; $4bb5: $51
	ld h, c                                          ; $4bb6: $61
	ld d, c                                          ; $4bb7: $51
	ld h, b                                          ; $4bb8: $60
	ld b, c                                          ; $4bb9: $41
	ld b, b                                          ; $4bba: $40
	ld b, c                                          ; $4bbb: $41
	ld b, b                                          ; $4bbc: $40
	reti                                             ; $4bbd: $d9


jr_021_4bbe:
	rst $38                                          ; $4bbe: $ff
	rst SubAFromDE                                          ; $4bbf: $df
	rst SubAFromDE                                          ; $4bc0: $df

jr_021_4bc1:
	rst SubAFromDE                                          ; $4bc1: $df
	sbc $9e                                          ; $4bc2: $de $9e
	ld e, l                                          ; $4bc4: $5d
	sbc $dd                                          ; $4bc5: $de $dd
	reti                                             ; $4bc7: $d9


	rst $38                                          ; $4bc8: $ff
	db $db                                           ; $4bc9: $db
	db $fc                                           ; $4bca: $fc
	rst SubAFromDE                                          ; $4bcb: $df
	ret c                                            ; $4bcc: $d8

	reti                                             ; $4bcd: $d9


	rst $38                                          ; $4bce: $ff
	ldh [$61], a                                     ; $4bcf: $e0 $61
	pop de                                           ; $4bd1: $d1
	inc b                                            ; $4bd2: $04
	db $db                                           ; $4bd3: $db
	rra                                              ; $4bd4: $1f
	rst SubAFromDE                                          ; $4bd5: $df
	ccf                                              ; $4bd6: $3f
	ld sp, hl                                        ; $4bd7: $f9
	sbc [hl]                                         ; $4bd8: $9e
	ldh a, [$dd]                                     ; $4bd9: $f0 $dd
	ldh [$de], a                                     ; $4bdb: $e0 $de
	ret nz                                           ; $4bdd: $c0

	sbc [hl]                                         ; $4bde: $9e
	jr nc, jr_021_4bbe                               ; $4bdf: $30 $dd

jr_021_4be1:
	jr nz, jr_021_4bc1                               ; $4be1: $20 $de

	ld b, b                                          ; $4be3: $40
	adc a                                            ; $4be4: $8f
	jr nz, @+$32                                     ; $4be5: $20 $30

	db $10                                           ; $4be7: $10
	ld [$3818], sp                                   ; $4be8: $08 $18 $38
	ld a, b                                          ; $4beb: $78
	ld a, h                                          ; $4bec: $7c
	jr nz, jr_021_4bff                               ; $4bed: $20 $10

	db $10                                           ; $4bef: $10
	jr jr_021_4bfa                                   ; $4bf0: $18 $08

	ld [$e418], sp                                   ; $4bf2: $08 $18 $e4
	db $dd                                           ; $4bf5: $dd
	inc b                                            ; $4bf6: $04
	db $dd                                           ; $4bf7: $dd
	ld b, $dd                                        ; $4bf8: $06 $dd

jr_021_4bfa:
	rlca                                             ; $4bfa: $07
	db $dd                                           ; $4bfb: $dd
	dec b                                            ; $4bfc: $05
	db $dd                                           ; $4bfd: $dd
	rst JumpTable                                          ; $4bfe: $c7

jr_021_4bff:
	db $dd                                           ; $4bff: $dd
	db $e3                                           ; $4c00: $e3
	db $dd                                           ; $4c01: $dd
	jr c, jr_021_4be1                                ; $4c02: $38 $dd

	inc e                                            ; $4c04: $1c
	sub d                                            ; $4c05: $92
	ccf                                              ; $4c06: $3f
	cp a                                             ; $4c07: $bf
	or a                                             ; $4c08: $b7
	xor a                                            ; $4c09: $af
	sbc a                                            ; $4c0a: $9f
	and a                                            ; $4c0b: $a7
	rst SubAFromHL                                          ; $4c0c: $d7
	rst AddAOntoHL                                          ; $4c0d: $ef
	ld hl, sp+$78                                    ; $4c0e: $f8 $78
	ld a, b                                          ; $4c10: $78
	ld [hl], b                                       ; $4c11: $70
	ld [hl], b                                       ; $4c12: $70
	ld a, d                                          ; $4c13: $7a
	or b                                             ; $4c14: $b0
	sbc l                                            ; $4c15: $9d
	ld bc, $de00                                     ; $4c16: $01 $00 $de
	add b                                            ; $4c19: $80
	sbc d                                            ; $4c1a: $9a
	add h                                            ; $4c1b: $84
	add l                                            ; $4c1c: $85
	ld b, l                                          ; $4c1d: $45
	rst $38                                          ; $4c1e: $ff
	rst $38                                          ; $4c1f: $ff
	db $dd                                           ; $4c20: $dd
	ld a, a                                          ; $4c21: $7f
	sbc h                                            ; $4c22: $9c
	ld a, [hl]                                       ; $4c23: $7e
	cp [hl]                                          ; $4c24: $be
	db $dd                                           ; $4c25: $dd
	sbc $dc                                          ; $4c26: $de $dc
	db $dd                                           ; $4c28: $dd
	inc e                                            ; $4c29: $1c
	reti                                             ; $4c2a: $d9


	rst $38                                          ; $4c2b: $ff
	rst SubAFromDE                                          ; $4c2c: $df
	ret c                                            ; $4c2d: $d8

	sbc c                                            ; $4c2e: $99
	ld hl, sp-$18                                    ; $4c2f: $f8 $e8
	jp hl                                            ; $4c31: $e9


	jp hl                                            ; $4c32: $e9


	ld l, c                                          ; $4c33: $69
	ld l, c                                          ; $4c34: $69
	ld [bc], a                                       ; $4c35: $02
	ret nz                                           ; $4c36: $c0

	ldh [$7a], a                                     ; $4c37: $e0 $7a
	call c, $9d04                                    ; $4c39: $dc $04 $9d
	ld b, $1f                                        ; $4c3c: $06 $1f
	ld l, c                                          ; $4c3e: $69
	cp b                                             ; $4c3f: $b8
	ld a, a                                          ; $4c40: $7f
	ld hl, sp-$23                                    ; $4c41: $f8 $dd
	ccf                                              ; $4c43: $3f
	rst SubAFromDE                                          ; $4c44: $df
	ld a, a                                          ; $4c45: $7f
	sbc l                                            ; $4c46: $9d
	rst $38                                          ; $4c47: $ff
	ld [bc], a                                       ; $4c48: $02
	ei                                               ; $4c49: $fb
	ld a, a                                          ; $4c4a: $7f
	ld b, c                                          ; $4c4b: $41
	add b                                            ; $4c4c: $80
	jp $fccf                                         ; $4c4d: $c3 $cf $fc


	ldh a, [$f8]                                     ; $4c50: $f0 $f8
	ld hl, sp-$03                                    ; $4c52: $f8 $fd
	cp a                                             ; $4c54: $bf
	ld b, c                                          ; $4c55: $41
	ld b, [hl]                                       ; $4c56: $46
	ld e, b                                          ; $4c57: $58
	ld h, b                                          ; $4c58: $60
	ld b, b                                          ; $4c59: $40
	ld b, b                                          ; $4c5a: $40
	ldh [rAUD4ENV], a                                ; $4c5b: $e0 $21
	cp $1e                                           ; $4c5d: $fe $1e
	add hl, bc                                       ; $4c5f: $09
	db $10                                           ; $4c60: $10
	ld h, b                                          ; $4c61: $60
	ret nz                                           ; $4c62: $c0

	add b                                            ; $4c63: $80
	nop                                              ; $4c64: $00
	add d                                            ; $4c65: $82
	rlca                                             ; $4c66: $07
	rrca                                             ; $4c67: $0f
	rra                                              ; $4c68: $1f
	ccf                                              ; $4c69: $3f
	ld a, a                                          ; $4c6a: $7f
	rst $38                                          ; $4c6b: $ff
	adc [hl]                                         ; $4c6c: $8e
	rst $38                                          ; $4c6d: $ff
	inc b                                            ; $4c6e: $04
	inc b                                            ; $4c6f: $04
	add h                                            ; $4c70: $84
	call nz, $1424                                   ; $4c71: $c4 $24 $14
	inc c                                            ; $4c74: $0c
	inc c                                            ; $4c75: $0c
	rlca                                             ; $4c76: $07
	rlca                                             ; $4c77: $07
	add a                                            ; $4c78: $87
	rst JumpTable                                          ; $4c79: $c7
	rst SubAFromBC                                          ; $4c7a: $e7
	rst FarCall                                          ; $4c7b: $f7
	rst $38                                          ; $4c7c: $ff
	rst $38                                          ; $4c7d: $ff
	sbc $e3                                          ; $4c7e: $de $e3
	rst SubAFromDE                                          ; $4c80: $df
	jp $839c                                         ; $4c81: $c3 $9c $83


	rlca                                             ; $4c84: $07
	rlca                                             ; $4c85: $07
	sbc $1c                                          ; $4c86: $de $1c
	rst SubAFromDE                                          ; $4c88: $df
	inc a                                            ; $4c89: $3c
	add d                                            ; $4c8a: $82
	ld a, h                                          ; $4c8b: $7c
	ld hl, sp-$08                                    ; $4c8c: $f8 $f8
	push de                                          ; $4c8e: $d5
	xor $f5                                          ; $4c8f: $ee $f5
	xor [hl]                                         ; $4c91: $ae
	or l                                             ; $4c92: $b5
	xor $f5                                          ; $4c93: $ee $f5
	ld l, [hl]                                       ; $4c95: $6e
	ld a, [hl-]                                      ; $4c96: $3a
	add hl, sp                                       ; $4c97: $39
	ld a, [hl-]                                      ; $4c98: $3a
	ld a, c                                          ; $4c99: $79
	ld a, d                                          ; $4c9a: $7a
	ld a, c                                          ; $4c9b: $79
	ld a, d                                          ; $4c9c: $7a
	ld sp, hl                                        ; $4c9d: $f9
	ld b, l                                          ; $4c9e: $45
	add l                                            ; $4c9f: $85
	ld b, l                                          ; $4ca0: $45
	adc l                                            ; $4ca1: $8d
	ld c, l                                          ; $4ca2: $4d
	adc l                                            ; $4ca3: $8d
	dec e                                            ; $4ca4: $1d
	sbc a                                            ; $4ca5: $9f
	cp [hl]                                          ; $4ca6: $be
	ld a, [hl]                                       ; $4ca7: $7e
	ld [hl], a                                       ; $4ca8: $77
	cp $9b                                           ; $4ca9: $fe $9b
	cp $7c                                           ; $4cab: $fe $7c
	dec e                                            ; $4cad: $1d
	add hl, de                                       ; $4cae: $19
	db $dd                                           ; $4caf: $dd
	sbc c                                            ; $4cb0: $99
	sbc e                                            ; $4cb1: $9b
	sbc e                                            ; $4cb2: $9b
	or e                                             ; $4cb3: $b3
	cp $fe                                           ; $4cb4: $fe $fe
	db $dd                                           ; $4cb6: $dd
	ld a, [hl]                                       ; $4cb7: $7e
	rst SubAFromDE                                          ; $4cb8: $df
	ld a, h                                          ; $4cb9: $7c
	rst SubAFromDE                                          ; $4cba: $df
	ld a, c                                          ; $4cbb: $79
	sbc [hl]                                         ; $4cbc: $9e
	ld a, e                                          ; $4cbd: $7b
	db $dd                                           ; $4cbe: $dd
	ld [hl], e                                       ; $4cbf: $73
	sbc [hl]                                         ; $4cc0: $9e
	ld h, e                                          ; $4cc1: $63
	ld [bc], a                                       ; $4cc2: $02
	ret nz                                           ; $4cc3: $c0

	ldh [$b9], a                                     ; $4cc4: $e0 $b9
	ldh [$c2], a                                     ; $4cc6: $e0 $c2
	rst SubAFromDE                                          ; $4cc8: $df
	jr nz, jr_021_4d48                               ; $4cc9: $20 $7d

	and [hl]                                         ; $4ccb: $a6
	ld a, c                                          ; $4ccc: $79
	or l                                             ; $4ccd: $b5
	ld a, [hl]                                       ; $4cce: $7e
	rst JumpTable                                          ; $4ccf: $c7
	ld a, e                                          ; $4cd0: $7b
	rst FarCall                                          ; $4cd1: $f7
	sbc $10                                          ; $4cd2: $de $10
	sub [hl]                                         ; $4cd4: $96
	rra                                              ; $4cd5: $1f
	ld bc, $0102                                     ; $4cd6: $01 $02 $01
	ld [bc], a                                       ; $4cd9: $02
	dec b                                            ; $4cda: $05
	ld a, [bc]                                       ; $4cdb: $0a
	rla                                              ; $4cdc: $17
	add b                                            ; $4cdd: $80
	ld a, [$ff92]                                    ; $4cde: $fa $92 $ff
	ld a, [hl]                                       ; $4ce1: $7e
	db $fc                                           ; $4ce2: $fc
	ld a, h                                          ; $4ce3: $7c
	jp c, $f458                                      ; $4ce4: $da $58 $f4

	jp hl                                            ; $4ce7: $e9


	db $f4                                           ; $4ce8: $f4
	inc hl                                           ; $4ce9: $23
	daa                                              ; $4cea: $27
	daa                                              ; $4ceb: $27
	cpl                                              ; $4cec: $2f
	ld a, d                                          ; $4ced: $7a
	and [hl]                                         ; $4cee: $a6
	ld a, a                                          ; $4cef: $7f
	jr nc, jr_021_4d6d                               ; $4cf0: $30 $7b

	and $9b                                          ; $4cf2: $e6 $9b
	and b                                            ; $4cf4: $a0
	inc b                                            ; $4cf5: $04
	nop                                              ; $4cf6: $00
	add hl, hl                                       ; $4cf7: $29
	reti                                             ; $4cf8: $d9


	rst $38                                          ; $4cf9: $ff
	rst SubAFromDE                                          ; $4cfa: $df
	inc b                                            ; $4cfb: $04
	rst SubAFromDE                                          ; $4cfc: $df
	inc c                                            ; $4cfd: $0c
	ld a, l                                          ; $4cfe: $7d
	ld [hl], b                                       ; $4cff: $70
	sbc l                                            ; $4d00: $9d
	reti                                             ; $4d01: $d9


	ld de, $ffdb                                     ; $4d02: $11 $db $ff
	rst SubAFromDE                                          ; $4d05: $df
	cp $de                                           ; $4d06: $fe $de
	ld c, a                                          ; $4d08: $4f
	add b                                            ; $4d09: $80
	db $db                                           ; $4d0a: $db
	jp c, $a5b5                                      ; $4d0b: $da $b5 $a5

	rst AddAOntoHL                                          ; $4d0e: $ef
	or b                                             ; $4d0f: $b0
	or b                                             ; $4d10: $b0
	or c                                             ; $4d11: $b1
	dec h                                            ; $4d12: $25
	daa                                              ; $4d13: $27
	ld c, a                                          ; $4d14: $4f
	ld e, a                                          ; $4d15: $5f
	rra                                              ; $4d16: $1f
	push af                                          ; $4d17: $f5
	cp $6c                                           ; $4d18: $fe $6c
	call c, $19dc                                    ; $4d1a: $dc $dc $19
	ld sp, $fa71                                     ; $4d1d: $31 $71 $fa
	pop af                                           ; $4d20: $f1
	di                                               ; $4d21: $f3
	db $e3                                           ; $4d22: $e3
	db $e3                                           ; $4d23: $e3
	rst SubAFromBC                                          ; $4d24: $e7
	rst GetHLinHL                                          ; $4d25: $cf
	adc a                                            ; $4d26: $8f
	ccf                                              ; $4d27: $3f
	ld a, a                                          ; $4d28: $7f
	sbc c                                            ; $4d29: $99
	ld a, e                                          ; $4d2a: $7b
	ld a, [$f6fa]                                    ; $4d2b: $fa $fa $f6
	or $ee                                           ; $4d2e: $f6 $ee
	sbc $fc                                          ; $4d30: $de $fc
	rst SubAFromDE                                          ; $4d32: $df
	db $fd                                           ; $4d33: $fd
	rst SubAFromDE                                          ; $4d34: $df
	ld sp, hl                                        ; $4d35: $f9
	sbc l                                            ; $4d36: $9d
	pop af                                           ; $4d37: $f1
	or a                                             ; $4d38: $b7
	db $dd                                           ; $4d39: $dd
	scf                                              ; $4d3a: $37
	rst SubAFromDE                                          ; $4d3b: $df
	inc sp                                           ; $4d3c: $33
	sbc l                                            ; $4d3d: $9d
	dec sp                                           ; $4d3e: $3b
	ld a, b                                          ; $4d3f: $78
	db $dd                                           ; $4d40: $dd
	ld hl, sp-$22                                    ; $4d41: $f8 $de
	db $fc                                           ; $4d43: $fc
	sbc $67                                          ; $4d44: $de $67
	sbc d                                            ; $4d46: $9a
	ld b, a                                          ; $4d47: $47

jr_021_4d48:
	rrca                                             ; $4d48: $0f
	rrca                                             ; $4d49: $0f
	sbc a                                            ; $4d4a: $9f
	sbc a                                            ; $4d4b: $9f
	db $db                                           ; $4d4c: $db
	rst $38                                          ; $4d4d: $ff
	rst SubAFromDE                                          ; $4d4e: $df
	ld a, a                                          ; $4d4f: $7f
	ldh [$6d], a                                     ; $4d50: $e0 $6d
	sbc e                                            ; $4d52: $9b
	rlca                                             ; $4d53: $07
	dec bc                                           ; $4d54: $0b
	rla                                              ; $4d55: $17
	ld a, $73                                        ; $4d56: $3e $73
	ld hl, sp-$66                                    ; $4d58: $f8 $9a
	dec c                                            ; $4d5a: $0d
	jr jr_021_4d8e                                   ; $4d5b: $18 $31

	jr jr_021_4d8f                                   ; $4d5d: $18 $30

	ld a, c                                          ; $4d5f: $79
	or d                                             ; $4d60: $b2
	rst SubAFromDE                                          ; $4d61: $df
	add b                                            ; $4d62: $80
	sbc e                                            ; $4d63: $9b
	ld b, b                                          ; $4d64: $40
	db $10                                           ; $4d65: $10
	jr nz, @+$42                                     ; $4d66: $20 $40

	ld a, d                                          ; $4d68: $7a
	and $9c                                          ; $4d69: $e6 $9c
	add b                                            ; $4d6b: $80
	ret nz                                           ; $4d6c: $c0

jr_021_4d6d:
	rlca                                             ; $4d6d: $07
	ld [hl], d                                       ; $4d6e: $72
	ret nz                                           ; $4d6f: $c0

	ld a, a                                          ; $4d70: $7f
	cp $fa                                           ; $4d71: $fe $fa
	sub [hl]                                         ; $4d73: $96
	ld bc, $f5ea                                     ; $4d74: $01 $ea $f5
	ld a, [hl-]                                      ; $4d77: $3a
	push af                                          ; $4d78: $f5
	ld a, d                                          ; $4d79: $7a
	db $fd                                           ; $4d7a: $fd
	ld a, d                                          ; $4d7b: $7a
	db $dd                                           ; $4d7c: $dd
	sbc $7f                                          ; $4d7d: $de $7f
	db $dd                                           ; $4d7f: $dd
	ccf                                              ; $4d80: $3f
	sub a                                            ; $4d81: $97
	rst $38                                          ; $4d82: $ff
	add d                                            ; $4d83: $82
	ld d, h                                          ; $4d84: $54
	xor b                                            ; $4d85: $a8
	ld d, h                                          ; $4d86: $54
	xor e                                            ; $4d87: $ab
	ld d, h                                          ; $4d88: $54
	ei                                               ; $4d89: $fb
	ld a, c                                          ; $4d8a: $79
	sub [hl]                                         ; $4d8b: $96
	db $dd                                           ; $4d8c: $dd
	rst $38                                          ; $4d8d: $ff

jr_021_4d8e:
	add d                                            ; $4d8e: $82

jr_021_4d8f:
	db $fc                                           ; $4d8f: $fc
	ld hl, sp+$33                                    ; $4d90: $f8 $33
	daa                                              ; $4d92: $27
	ld c, a                                          ; $4d93: $4f
	cp [hl]                                          ; $4d94: $be
	ld [hl], b                                       ; $4d95: $70
	ret nz                                           ; $4d96: $c0

	ld c, $f0                                        ; $4d97: $0e $f0
	db $fc                                           ; $4d99: $fc
	ld hl, sp-$10                                    ; $4d9a: $f8 $f0
	pop bc                                           ; $4d9c: $c1
	adc a                                            ; $4d9d: $8f
	ccf                                              ; $4d9e: $3f
	pop af                                           ; $4d9f: $f1
	rrca                                             ; $4da0: $0f
	xor $cd                                          ; $4da1: $ee $cd
	sbc c                                            ; $4da3: $99
	jr nc, jr_021_4da7                               ; $4da4: $30 $01

	inc bc                                           ; $4da6: $03

jr_021_4da7:
	ld b, $0d                                        ; $4da7: $06 $0d
	rra                                              ; $4da9: $1f
	ld a, $7e                                        ; $4daa: $3e $7e
	call c, $97ff                                    ; $4dac: $dc $ff $97
	pop hl                                           ; $4daf: $e1
	pop bc                                           ; $4db0: $c1
	and e                                            ; $4db1: $a3
	ld b, a                                          ; $4db2: $47
	add a                                            ; $4db3: $87
	rrca                                             ; $4db4: $0f
	sbc a                                            ; $4db5: $9f
	rra                                              ; $4db6: $1f
	ld [hl], c                                       ; $4db7: $71
	ld d, e                                          ; $4db8: $53
	sbc $ff                                          ; $4db9: $de $ff
	add l                                            ; $4dbb: $85
	rst SubAFromBC                                          ; $4dbc: $e7
	db $eb                                           ; $4dbd: $eb
	push de                                          ; $4dbe: $d5
	jp z, $cac5                                      ; $4dbf: $ca $c5 $ca

	push bc                                          ; $4dc2: $c5
	ldh [c], a                                       ; $4dc3: $e2
	ld hl, sp-$0c                                    ; $4dc4: $f8 $f4
	ld [$faf5], a                                    ; $4dc6: $ea $f5 $fa
	push af                                          ; $4dc9: $f5
	ld a, [$3bfd]                                    ; $4dca: $fa $fd $3b
	add hl, sp                                       ; $4dcd: $39
	sbc h                                            ; $4dce: $9c
	sbc [hl]                                         ; $4dcf: $9e
	adc $c7                                          ; $4dd0: $ce $c7
	ld h, a                                          ; $4dd2: $67
	or e                                             ; $4dd3: $b3
	db $fc                                           ; $4dd4: $fc
	cp $77                                           ; $4dd5: $fe $77
	sbc a                                            ; $4dd7: $9f
	sub l                                            ; $4dd8: $95
	sbc a                                            ; $4dd9: $9f
	ld c, a                                          ; $4dda: $4f
	sbc a                                            ; $4ddb: $9f
	sbc a                                            ; $4ddc: $9f
	rst GetHLinHL                                          ; $4ddd: $cf
	rst AddAOntoHL                                          ; $4dde: $ef
	ld l, a                                          ; $4ddf: $6f
	daa                                              ; $4de0: $27
	rla                                              ; $4de1: $17
	add e                                            ; $4de2: $83
	ld a, e                                          ; $4de3: $7b
	ldh a, [c]                                       ; $4de4: $f2
	sbc e                                            ; $4de5: $9b
	rra                                              ; $4de6: $1f
	sbc a                                            ; $4de7: $9f
	rst SubAFromDE                                          ; $4de8: $df
	rst AddAOntoHL                                          ; $4de9: $ef
	ld bc, $eb80                                     ; $4dea: $01 $80 $eb
	sbc l                                            ; $4ded: $9d
	ld [bc], a                                       ; $4dee: $02
	ld de, $9df3                                     ; $4def: $11 $f3 $9d
	ld h, b                                          ; $4df2: $60
	ld [hl+], a                                      ; $4df3: $22
	db $f4                                           ; $4df4: $f4
	sbc h                                            ; $4df5: $9c
	jr z, jr_021_4e64                                ; $4df6: $28 $6c

	rst JumpTable                                          ; $4df8: $c7
	push af                                          ; $4df9: $f5
	sbc e                                            ; $4dfa: $9b
	ld b, b                                          ; $4dfb: $40
	ld b, e                                          ; $4dfc: $43
	ld b, [hl]                                       ; $4dfd: $46
	ld l, h                                          ; $4dfe: $6c
	ld d, e                                          ; $4dff: $53
	ldh a, [$9c]                                     ; $4e00: $f0 $9c
	ld h, b                                          ; $4e02: $60
	ld h, a                                          ; $4e03: $67
	cp b                                             ; $4e04: $b8
	ld l, d                                          ; $4e05: $6a
	sub $9e                                          ; $4e06: $d6 $9e
	rrca                                             ; $4e08: $0f
	ld a, d                                          ; $4e09: $7a
	db $fd                                           ; $4e0a: $fd
	sbc d                                            ; $4e0b: $9a
	ld b, $3b                                        ; $4e0c: $06 $3b
	rst SubAFromDE                                          ; $4e0e: $df
	ld a, b                                          ; $4e0f: $78
	ldh [$7b], a                                     ; $4e10: $e0 $7b
	ld hl, sp-$70                                    ; $4e12: $f8 $90
	rlca                                             ; $4e14: $07
	inc a                                            ; $4e15: $3c
	ldh [hDisp0_OBP1], a                                     ; $4e16: $e0 $87
	rra                                              ; $4e18: $1f
	ld a, h                                          ; $4e19: $7c
	db $f4                                           ; $4e1a: $f4
	jp nz, $9121                                     ; $4e1b: $c2 $21 $91

	db $10                                           ; $4e1e: $10
	dec bc                                           ; $4e1f: $0b
	inc c                                            ; $4e20: $0c
	ld c, e                                          ; $4e21: $4b
	adc a                                            ; $4e22: $8f
	ld a, d                                          ; $4e23: $7a
	ld [hl+], a                                      ; $4e24: $22
	sbc $ff                                          ; $4e25: $de $ff
	ld a, c                                          ; $4e27: $79
	adc d                                            ; $4e28: $8a
	sub [hl]                                         ; $4e29: $96
	rra                                              ; $4e2a: $1f
	inc e                                            ; $4e2b: $1c
	ldh a, [c]                                       ; $4e2c: $f2
	adc b                                            ; $4e2d: $88
	ld [bc], a                                       ; $4e2e: $02
	ldh [$e0], a                                     ; $4e2f: $e0 $e0
	ldh a, [$f3]                                     ; $4e31: $f0 $f3
	db $dd                                           ; $4e33: $dd
	rst $38                                          ; $4e34: $ff
	sub l                                            ; $4e35: $95
	inc bc                                           ; $4e36: $03
	dec a                                            ; $4e37: $3d
	ld [$aad5], a                                    ; $4e38: $ea $d5 $aa
	ld d, l                                          ; $4e3b: $55
	xor d                                            ; $4e3c: $aa
	ld e, a                                          ; $4e3d: $5f
	rlca                                             ; $4e3e: $07
	rra                                              ; $4e3f: $1f
	ld [hl], e                                       ; $4e40: $73
	db $10                                           ; $4e41: $10
	sub [hl]                                         ; $4e42: $96
	db $fc                                           ; $4e43: $fc
	xor a                                            ; $4e44: $af
	ld d, a                                          ; $4e45: $57
	xor [hl]                                         ; $4e46: $ae
	ld [hl], a                                       ; $4e47: $77
	rst GetHLinHL                                          ; $4e48: $cf
	inc a                                            ; $4e49: $3c
	ldh a, [$e3]                                     ; $4e4a: $f0 $e3
	sbc $ff                                          ; $4e4c: $de $ff
	ld a, [hl]                                       ; $4e4e: $7e
	sbc $8c                                          ; $4e4f: $de $8c
	jp $1c0f                                         ; $4e51: $c3 $0f $1c


	adc $1c                                          ; $4e54: $ce $1c
	ld a, b                                          ; $4e56: $78
	ldh [hLCDCIntHandlerIdx], a                                     ; $4e57: $e0 $81
	ld d, $38                                        ; $4e59: $16 $38
	pop hl                                           ; $4e5b: $e1
	pop af                                           ; $4e5c: $f1
	db $e3                                           ; $4e5d: $e3
	add a                                            ; $4e5e: $87
	rra                                              ; $4e5f: $1f
	ld a, [hl]                                       ; $4e60: $7e
	jp hl                                            ; $4e61: $e9


	rst JumpTable                                          ; $4e62: $c7
	rra                                              ; $4e63: $1f

jr_021_4e64:
	ld a, e                                          ; $4e64: $7b
	xor b                                            ; $4e65: $a8
	ld a, [hl]                                       ; $4e66: $7e
	pop hl                                           ; $4e67: $e1
	sbc h                                            ; $4e68: $9c
	ld a, a                                          ; $4e69: $7f
	cp [hl]                                          ; $4e6a: $be
	ld a, l                                          ; $4e6b: $7d
	ld [hl], l                                       ; $4e6c: $75
	db $d3                                           ; $4e6d: $d3
	db $dd                                           ; $4e6e: $dd
	rst $38                                          ; $4e6f: $ff
	sub a                                            ; $4e70: $97
	ld e, $7c                                        ; $4e71: $1e $7c
	ld hl, sp-$0f                                    ; $4e73: $f8 $f1

Jump_021_4e75:
	ldh [c], a                                       ; $4e75: $e2
	ld b, l                                          ; $4e76: $45
	adc d                                            ; $4e77: $8a
	dec d                                            ; $4e78: $15
	reti                                             ; $4e79: $d9


	rst $38                                          ; $4e7a: $ff
	sub a                                            ; $4e7b: $97
	ccf                                              ; $4e7c: $3f
	ld e, a                                          ; $4e7d: $5f
	cp a                                             ; $4e7e: $bf
	ld e, a                                          ; $4e7f: $5f
	xor h                                            ; $4e80: $ac
	ld e, c                                          ; $4e81: $59
	and c                                            ; $4e82: $a1
	ld bc, $ffd9                                     ; $4e83: $01 $d9 $ff
	sub [hl]                                         ; $4e86: $96
	pop af                                           ; $4e87: $f1
	ldh a, [$f8]                                     ; $4e88: $f0 $f8
	ld hl, sp+$7c                                    ; $4e8a: $f8 $7c
	inc a                                            ; $4e8c: $3c
	adc [hl]                                         ; $4e8d: $8e
	jp $dafe                                         ; $4e8e: $c3 $fe $da


	rst $38                                          ; $4e91: $ff
	add a                                            ; $4e92: $87
	ld a, c                                          ; $4e93: $79
	cp l                                             ; $4e94: $bd
	ld a, $1e                                        ; $4e95: $3e $1e
	rrca                                             ; $4e97: $0f
	rlca                                             ; $4e98: $07
	ld bc, $8700                                     ; $4e99: $01 $00 $87
	ld b, e                                          ; $4e9c: $43
	pop bc                                           ; $4e9d: $c1
	pop hl                                           ; $4e9e: $e1
	ldh a, [$f8]                                     ; $4e9f: $f0 $f8
	cp $ff                                           ; $4ea1: $fe $ff
	db $e3                                           ; $4ea3: $e3
	pop af                                           ; $4ea4: $f1
	ld sp, hl                                        ; $4ea5: $f9
	db $fc                                           ; $4ea6: $fc
	inc a                                            ; $4ea7: $3c
	cp [hl]                                          ; $4ea8: $be
	sbc $6e                                          ; $4ea9: $de $6e
	ld l, l                                          ; $4eab: $6d
	add c                                            ; $4eac: $81
	ld a, [hl]                                       ; $4ead: $7e
	xor a                                            ; $4eae: $af
	ld [hl], d                                       ; $4eaf: $72
	dec sp                                           ; $4eb0: $3b
	ld a, a                                          ; $4eb1: $7f
	ld l, $9e                                        ; $4eb2: $2e $9e
	cpl                                              ; $4eb4: $2f
	ld hl, sp-$68                                    ; $4eb5: $f8 $98
	ld bc, $1111                                     ; $4eb7: $01 $11 $11
	dec sp                                           ; $4eba: $3b
	cp c                                             ; $4ebb: $b9
	db $dd                                           ; $4ebc: $dd
	ld e, a                                          ; $4ebd: $5f
	ld hl, sp-$66                                    ; $4ebe: $f8 $9a
	jr nc, @+$1b                                     ; $4ec0: $30 $19

	ld e, l                                          ; $4ec2: $5d
	ld c, a                                          ; $4ec3: $4f
	rst AddAOntoHL                                          ; $4ec4: $ef
	ld a, b                                          ; $4ec5: $78
	add sp, -$06                                     ; $4ec6: $e8 $fa
	sbc e                                            ; $4ec8: $9b
	add hl, bc                                       ; $4ec9: $09
	ret z                                            ; $4eca: $c8

	xor a                                            ; $4ecb: $af
	cpl                                              ; $4ecc: $2f
	db $dd                                           ; $4ecd: $dd
	rst $38                                          ; $4ece: $ff
	ld sp, hl                                        ; $4ecf: $f9
	sbc l                                            ; $4ed0: $9d
	or d                                             ; $4ed1: $b2
	or [hl]                                          ; $4ed2: $b6
	db $db                                           ; $4ed3: $db
	rst $38                                          ; $4ed4: $ff
	ld sp, hl                                        ; $4ed5: $f9
	sbc l                                            ; $4ed6: $9d
	adc $bf                                          ; $4ed7: $ce $bf
	ld c, a                                          ; $4ed9: $4f
	ldh a, [rPCM34]                                  ; $4eda: $f0 $77
	ld b, a                                          ; $4edc: $47
	ld d, a                                          ; $4edd: $57
	ldh a, [$97]                                     ; $4ede: $f0 $97
	cp h                                             ; $4ee0: $bc
	db $e3                                           ; $4ee1: $e3
	ret nz                                           ; $4ee2: $c0

	ldh [$b0], a                                     ; $4ee3: $e0 $b0
	sbc c                                            ; $4ee5: $99
	ei                                               ; $4ee6: $fb
	rst $38                                          ; $4ee7: $ff
	ld a, d                                          ; $4ee8: $7a
	db $10                                           ; $4ee9: $10
	sbc e                                            ; $4eea: $9b
	ld e, a                                          ; $4eeb: $5f
	rst GetHLinHL                                          ; $4eec: $cf
	xor $04                                          ; $4eed: $ee $04
	ld a, b                                          ; $4eef: $78
	ld a, [hl]                                       ; $4ef0: $7e
	sbc e                                            ; $4ef1: $9b
	nop                                              ; $4ef2: $00
	add c                                            ; $4ef3: $81
	sbc b                                            ; $4ef4: $98
	ld e, a                                          ; $4ef5: $5f
	call c, $96ff                                    ; $4ef6: $dc $ff $96
	ld a, [hl]                                       ; $4ef9: $7e
	ld l, a                                          ; $4efa: $6f
	xor b                                            ; $4efb: $a8
	add b                                            ; $4efc: $80
	nop                                              ; $4efd: $00
	ldh a, [rP1]                                     ; $4efe: $f0 $00
	nop                                              ; $4f00: $00
	sub [hl]                                         ; $4f01: $96
	ld l, b                                          ; $4f02: $68
	db $e3                                           ; $4f03: $e3
	sbc l                                            ; $4f04: $9d
	ld l, a                                          ; $4f05: $6f
	ld h, h                                          ; $4f06: $64
	cp $9c                                           ; $4f07: $fe $9c
	inc c                                            ; $4f09: $0c
	dec b                                            ; $4f0a: $05
	ld h, a                                          ; $4f0b: $67
	ld a, b                                          ; $4f0c: $78
	adc c                                            ; $4f0d: $89
	sbc d                                            ; $4f0e: $9a
	ld hl, sp-$20                                    ; $4f0f: $f8 $e0
	ei                                               ; $4f11: $fb
	ld a, [$7ab8]                                    ; $4f12: $fa $b8 $7a
	sbc [hl]                                         ; $4f15: $9e
	ld a, [hl]                                       ; $4f16: $7e
	res 3, d                                         ; $4f17: $cb $9a
	or [hl]                                          ; $4f19: $b6
	ld h, c                                          ; $4f1a: $61
	rst JumpTable                                          ; $4f1b: $c7
	sbc h                                            ; $4f1c: $9c
	ld [hl], b                                       ; $4f1d: $70
	ld a, e                                          ; $4f1e: $7b
	ld e, d                                          ; $4f1f: $5a
	sbc e                                            ; $4f20: $9b
	ld sp, hl                                        ; $4f21: $f9
	cp $f8                                           ; $4f22: $fe $f8
	db $e3                                           ; $4f24: $e3
	ld a, d                                          ; $4f25: $7a
	sbc l                                            ; $4f26: $9d
	sub l                                            ; $4f27: $95
	rst $38                                          ; $4f28: $ff
	ld a, h                                          ; $4f29: $7c
	ret nz                                           ; $4f2a: $c0

	add b                                            ; $4f2b: $80
	inc bc                                           ; $4f2c: $03
	ld e, $3f                                        ; $4f2d: $1e $3f
	ld a, [$83e7]                                    ; $4f2f: $fa $e7 $83
	ld l, c                                          ; $4f32: $69
	ret nz                                           ; $4f33: $c0

	sub a                                            ; $4f34: $97
	ld a, [bc]                                       ; $4f35: $0a
	dec d                                            ; $4f36: $15
	xor d                                            ; $4f37: $aa
	ld e, l                                          ; $4f38: $5d
	xor e                                            ; $4f39: $ab
	ld d, h                                          ; $4f3a: $54
	or h                                             ; $4f3b: $b4
	db $ec                                           ; $4f3c: $ec
	ld [hl], h                                       ; $4f3d: $74
	ld d, e                                          ; $4f3e: $53
	sub [hl]                                         ; $4f3f: $96
	rst $38                                          ; $4f40: $ff
	ei                                               ; $4f41: $fb
	ei                                               ; $4f42: $fb
	or e                                             ; $4f43: $b3
	xor d                                            ; $4f44: $aa
	ld d, h                                          ; $4f45: $54
	cp d                                             ; $4f46: $ba
	sub e                                            ; $4f47: $93
	rst AddAOntoHL                                          ; $4f48: $ef
	ld [hl], a                                       ; $4f49: $77
	ld [de], a                                       ; $4f4a: $12
	sub e                                            ; $4f4b: $93
	rst AddAOntoHL                                          ; $4f4c: $ef
	db $ed                                           ; $4f4d: $ed
	ld l, h                                          ; $4f4e: $6c
	ld e, h                                          ; $4f4f: $5c
	sub l                                            ; $4f50: $95
	nop                                              ; $4f51: $00
	nop                                              ; $4f52: $00
	add hl, hl                                       ; $4f53: $29
	ld d, a                                          ; $4f54: $57
	inc bc                                           ; $4f55: $03
	daa                                              ; $4f56: $27
	cp e                                             ; $4f57: $bb
	ld [hl], a                                       ; $4f58: $77
	db $e3                                           ; $4f59: $e3
	ld a, [hl]                                       ; $4f5a: $7e
	ld sp, hl                                        ; $4f5b: $f9
	sub [hl]                                         ; $4f5c: $96
	call c, Call_021_48cc                            ; $4f5d: $dc $cc $48
	nop                                              ; $4f60: $00
	nop                                              ; $4f61: $00
	dec c                                            ; $4f62: $0d
	or a                                             ; $4f63: $b7
	ei                                               ; $4f64: $fb
	ld sp, hl                                        ; $4f65: $f9
	db $dd                                           ; $4f66: $dd
	rst $38                                          ; $4f67: $ff
	sbc e                                            ; $4f68: $9b
	di                                               ; $4f69: $f3
	ret                                              ; $4f6a: $c9


	dec b                                            ; $4f6b: $05
	add [hl]                                         ; $4f6c: $86
	db $fd                                           ; $4f6d: $fd
	ld a, b                                          ; $4f6e: $78
	add hl, sp                                       ; $4f6f: $39
	adc d                                            ; $4f70: $8a
	rst SubAFromBC                                          ; $4f71: $e7
	ldh a, [c]                                       ; $4f72: $f2
	ld a, [$fefe]                                    ; $4f73: $fa $fe $fe
	rst AddAOntoHL                                          ; $4f76: $ef
	rst GetHLinHL                                          ; $4f77: $cf
	sbc [hl]                                         ; $4f78: $9e
	inc e                                            ; $4f79: $1c
	dec c                                            ; $4f7a: $0d
	dec b                                            ; $4f7b: $05
	ld bc, $8001                                     ; $4f7c: $01 $01 $80
	ret nz                                           ; $4f7f: $c0

	ldh a, [$f0]                                     ; $4f80: $f0 $f0
	sbc b                                            ; $4f82: $98
	dec sp                                           ; $4f83: $3b
	ld l, c                                          ; $4f84: $69
	ld sp, hl                                        ; $4f85: $f9
	ld a, b                                          ; $4f86: $78
	ld d, l                                          ; $4f87: $55
	sub d                                            ; $4f88: $92
	rst AddAOntoHL                                          ; $4f89: $ef
	ld h, a                                          ; $4f8a: $67
	call nz, $0696                                   ; $4f8b: $c4 $96 $06
	rlca                                             ; $4f8e: $07
	dec b                                            ; $4f8f: $05
	ld b, d                                          ; $4f90: $42
	inc sp                                           ; $4f91: $33
	inc e                                            ; $4f92: $1c
	inc b                                            ; $4f93: $04
	sub b                                            ; $4f94: $90
	xor [hl]                                         ; $4f95: $ae
	ld l, e                                          ; $4f96: $6b
	ld e, l                                          ; $4f97: $5d
	sbc c                                            ; $4f98: $99
	ld d, c                                          ; $4f99: $51
	inc sp                                           ; $4f9a: $33
	dec de                                           ; $4f9b: $1b
	ld a, a                                          ; $4f9c: $7f
	rra                                              ; $4f9d: $1f
	rst GetHLinHL                                          ; $4f9e: $cf
	ld a, d                                          ; $4f9f: $7a
	or [hl]                                          ; $4fa0: $b6
	ld sp, hl                                        ; $4fa1: $f9
	reti                                             ; $4fa2: $d9


	rst $38                                          ; $4fa3: $ff
	inc bc                                           ; $4fa4: $03
	ldh a, [$03]                                     ; $4fa5: $f0 $03
	ldh a, [$03]                                     ; $4fa7: $f0 $03
	ldh a, [$63]                                     ; $4fa9: $f0 $63
	ldh a, [$9b]                                     ; $4fab: $f0 $9b
	cp $fa                                           ; $4fad: $fe $fa
	push af                                          ; $4faf: $f5
	xor b                                            ; $4fb0: $a8
	ld [hl], d                                       ; $4fb1: $72
	ld b, l                                          ; $4fb2: $45
	ld a, [hl]                                       ; $4fb3: $7e
	ldh [$79], a                                     ; $4fb4: $e0 $79
	xor [hl]                                         ; $4fb6: $ae
	sub [hl]                                         ; $4fb7: $96
	ldh a, [$80]                                     ; $4fb8: $f0 $80
	ld b, b                                          ; $4fba: $40
	add d                                            ; $4fbb: $82
	dec d                                            ; $4fbc: $15
	ld a, [hl+]                                      ; $4fbd: $2a
	ld bc, $0f03                                     ; $4fbe: $01 $03 $0f
	halt                                             ; $4fc1: $76
	rst AddAOntoHL                                          ; $4fc2: $ef
	sbc [hl]                                         ; $4fc3: $9e
	db $fd                                           ; $4fc4: $fd
	ld a, b                                          ; $4fc5: $78
	ld c, e                                          ; $4fc6: $4b
	sbc d                                            ; $4fc7: $9a
	dec bc                                           ; $4fc8: $0b
	ld d, l                                          ; $4fc9: $55
	xor e                                            ; $4fca: $ab
	ld a, [hl]                                       ; $4fcb: $7e
	db $f4                                           ; $4fcc: $f4
	db $db                                           ; $4fcd: $db
	rst $38                                          ; $4fce: $ff
	sbc l                                            ; $4fcf: $9d
	rst FarCall                                          ; $4fd0: $f7
	ei                                               ; $4fd1: $fb
	ld [hl], a                                       ; $4fd2: $77
	db $dd                                           ; $4fd3: $dd
	sbc h                                            ; $4fd4: $9c
	ld [hl], d                                       ; $4fd5: $72
	adc c                                            ; $4fd6: $89
	db $ed                                           ; $4fd7: $ed
	ld a, e                                          ; $4fd8: $7b
	db $e4                                           ; $4fd9: $e4
	rst SubAFromDE                                          ; $4fda: $df
	ei                                               ; $4fdb: $fb
	sub a                                            ; $4fdc: $97
	db $ed                                           ; $4fdd: $ed
	or $12                                           ; $4fde: $f6 $12
	sbc b                                            ; $4fe0: $98
	cp $ff                                           ; $4fe1: $fe $ff
	cp $fb                                           ; $4fe3: $fe $fb
	ld [hl], d                                       ; $4fe5: $72
	ld c, l                                          ; $4fe6: $4d
	sub [hl]                                         ; $4fe7: $96
	ei                                               ; $4fe8: $fb
	call Call_021_6064                               ; $4fe9: $cd $64 $60
	ld h, b                                          ; $4fec: $60
	nop                                              ; $4fed: $00
	nop                                              ; $4fee: $00
	and l                                            ; $4fef: $a5
	scf                                              ; $4ff0: $37
	ld l, [hl]                                       ; $4ff1: $6e
	cp b                                             ; $4ff2: $b8
	sbc h                                            ; $4ff3: $9c
	jp c, $80c8                                      ; $4ff4: $da $c8 $80

	ld a, e                                          ; $4ff7: $7b
	push bc                                          ; $4ff8: $c5
	inc bc                                           ; $4ff9: $03
	add b                                            ; $4ffa: $80
	inc bc                                           ; $4ffb: $03
	ldh a, [$65]                                     ; $4ffc: $f0 $65
	ld a, b                                          ; $4ffe: $78
	ld a, l                                          ; $4fff: $7d
	sbc h                                            ; $5000: $9c
	ei                                               ; $5001: $fb
	sbc h                                            ; $5002: $9c
	call c, $f998                                    ; $5003: $dc $98 $f9
	ld [hl], e                                       ; $5006: $73
	db $ed                                           ; $5007: $ed
	sbc h                                            ; $5008: $9c
	inc hl                                           ; $5009: $23
	ld h, a                                          ; $500a: $67
	ld b, $73                                        ; $500b: $06 $73
	db $ed                                           ; $500d: $ed
	ld hl, $fc00                                     ; $500e: $21 $00 $fc
	sbc l                                            ; $5011: $9d
	ld [hl+], a                                      ; $5012: $22
	ld h, $de                                        ; $5013: $26 $de
	ld h, [hl]                                       ; $5015: $66
	ld b, a                                          ; $5016: $47
	or $dd                                           ; $5017: $f6 $dd
	ld h, [hl]                                       ; $5019: $66
	db $fc                                           ; $501a: $fc
	call c, $fd66                                    ; $501b: $dc $66 $fd
	sbc [hl]                                         ; $501e: $9e
	ld b, $6f                                        ; $501f: $06 $6f
	or $9c                                           ; $5021: $f6 $9c
	rlca                                             ; $5023: $07
	ld [hl], a                                       ; $5024: $77
	ld [hl], a                                       ; $5025: $77
	db $db                                           ; $5026: $db
	ld h, [hl]                                       ; $5027: $66
	call c, $9d77                                    ; $5028: $dc $77 $9d
	halt                                             ; $502b: $76
	ld h, a                                          ; $502c: $67
	call nc, $1677                                   ; $502d: $d4 $77 $16
	add c                                            ; $5030: $81
	reti                                             ; $5031: $d9


	rst $38                                          ; $5032: $ff
	ld sp, hl                                        ; $5033: $f9
	inc bc                                           ; $5034: $03
	ldh a, [$03]                                     ; $5035: $f0 $03
	ldh a, [$37]                                     ; $5037: $f0 $37
	ldh a, [$9e]                                     ; $5039: $f0 $9e
	cp $6f                                           ; $503b: $fe $6f
	ldh a, [hDisp0_BGP]                                     ; $503d: $f0 $85
	ld bc, $0007                                     ; $503f: $01 $07 $00
	db $fd                                           ; $5042: $fd
	ld a, [$e2f1]                                    ; $5043: $fa $f1 $e2
	rst JumpTable                                          ; $5046: $c7
	db $d3                                           ; $5047: $d3
	rst $38                                          ; $5048: $ff
	rst $38                                          ; $5049: $ff
	inc bc                                           ; $504a: $03
	rrca                                             ; $504b: $0f
	rra                                              ; $504c: $1f
	ccf                                              ; $504d: $3f
	ld a, c                                          ; $504e: $79
	xor h                                            ; $504f: $ac
	inc l                                            ; $5050: $2c
	nop                                              ; $5051: $00
	ld d, c                                          ; $5052: $51
	ld [bc], a                                       ; $5053: $02
	ld d, l                                          ; $5054: $55
	ld [$ee77], a                                    ; $5055: $ea $77 $ee
	rst FarCall                                          ; $5058: $f7
	sbc $ff                                          ; $5059: $de $ff
	sub h                                            ; $505b: $94
	cp a                                             ; $505c: $bf
	cp l                                             ; $505d: $bd
	db $dd                                           ; $505e: $dd
	sbc c                                            ; $505f: $99
	ld [$5700], sp                                   ; $5060: $08 $00 $57
	sbc $7c                                          ; $5063: $de $7c
	rst AddAOntoHL                                          ; $5065: $ef
	ld a, a                                          ; $5066: $7f
	sbc $ff                                          ; $5067: $de $ff
	sub [hl]                                         ; $5069: $96
	db $fd                                           ; $506a: $fd
	add hl, sp                                       ; $506b: $39
	sub e                                            ; $506c: $93
	sub b                                            ; $506d: $90
	ret c                                            ; $506e: $d8

	add b                                            ; $506f: $80
	nop                                              ; $5070: $00
	nop                                              ; $5071: $00
	halt                                             ; $5072: $76
	ld [hl], e                                       ; $5073: $73
	ldh a, [c]                                       ; $5074: $f2
	rst SubAFromDE                                          ; $5075: $df
	rst $38                                          ; $5076: $ff
	sbc l                                            ; $5077: $9d
	ret                                              ; $5078: $c9


	db $10                                           ; $5079: $10
	ld a, e                                          ; $507a: $7b
	di                                               ; $507b: $f3
	ld e, e                                          ; $507c: $5b
	and b                                            ; $507d: $a0
	sbc l                                            ; $507e: $9d
	add b                                            ; $507f: $80
	ret nz                                           ; $5080: $c0

	ld c, a                                          ; $5081: $4f
	ldh a, [$03]                                     ; $5082: $f0 $03
	ld [hl], b                                       ; $5084: $70
	inc bc                                           ; $5085: $03
	ldh a, [$03]                                     ; $5086: $f0 $03
	ldh a, [$33]                                     ; $5088: $f0 $33
	ldh a, [$97]                                     ; $508a: $f0 $97
	ld a, a                                          ; $508c: $7f
	rst SubAFromDE                                          ; $508d: $df
	ld [hl], a                                       ; $508e: $77
	db $dd                                           ; $508f: $dd
	xor d                                            ; $5090: $aa
	ld e, l                                          ; $5091: $5d
	xor d                                            ; $5092: $aa
	ld d, a                                          ; $5093: $57
	ld d, a                                          ; $5094: $57
	ldh [$9b], a                                     ; $5095: $e0 $9b
	or a                                             ; $5097: $b7
	rst SubAFromDE                                          ; $5098: $df
	cp e                                             ; $5099: $bb
	ld e, l                                          ; $509a: $5d
	ld c, a                                          ; $509b: $4f
	ret nc                                           ; $509c: $d0

	sbc l                                            ; $509d: $9d
	ld a, a                                          ; $509e: $7f
	db $dd                                           ; $509f: $dd
	inc bc                                           ; $50a0: $03
	or b                                             ; $50a1: $b0
	inc bc                                           ; $50a2: $03
	ldh a, [$03]                                     ; $50a3: $f0 $03
	ldh a, [$03]                                     ; $50a5: $f0 $03
	ldh a, [$03]                                     ; $50a7: $f0 $03
	ldh a, [$03]                                     ; $50a9: $f0 $03
	ldh a, [$03]                                     ; $50ab: $f0 $03
	ldh a, [$03]                                     ; $50ad: $f0 $03
	ldh a, [rBGP]                                    ; $50af: $f0 $47
	ldh a, [$9d]                                     ; $50b1: $f0 $9d
	xor d                                            ; $50b3: $aa
	ld d, l                                          ; $50b4: $55
	ld a, e                                          ; $50b5: $7b
	cp $9c                                           ; $50b6: $fe $9c
	dec d                                            ; $50b8: $15
	and d                                            ; $50b9: $a2
	dec d                                            ; $50ba: $15
	ld sp, hl                                        ; $50bb: $f9
	sbc h                                            ; $50bc: $9c
	ld [$ae55], a                                    ; $50bd: $ea $55 $ae
	ld [hl], e                                       ; $50c0: $73
	xor $f9                                          ; $50c1: $ee $f9
	sbc [hl]                                         ; $50c3: $9e
	or a                                             ; $50c4: $b7
	halt                                             ; $50c5: $76
	and d                                            ; $50c6: $a2
	ld a, e                                          ; $50c7: $7b
	xor $f9                                          ; $50c8: $ee $f9
	ld a, [hl]                                       ; $50ca: $7e
	sub d                                            ; $50cb: $92
	sbc l                                            ; $50cc: $9d
	xor e                                            ; $50cd: $ab
	db $dd                                           ; $50ce: $dd
	ld d, a                                          ; $50cf: $57
	ldh a, [$9d]                                     ; $50d0: $f0 $9d
	rst $38                                          ; $50d2: $ff
	db $dd                                           ; $50d3: $dd
	ld a, d                                          ; $50d4: $7a
	add b                                            ; $50d5: $80
	sbc [hl]                                         ; $50d6: $9e
	ld d, a                                          ; $50d7: $57
	ld e, e                                          ; $50d8: $5b
	ldh a, [rPCM12]                                  ; $50d9: $f0 $76
	ld [hl], b                                       ; $50db: $70
	sbc [hl]                                         ; $50dc: $9e
	ld [hl], a                                       ; $50dd: $77
	ld e, e                                          ; $50de: $5b
	ldh a, [$9e]                                     ; $50df: $f0 $9e
	rst $38                                          ; $50e1: $ff
	ld b, a                                          ; $50e2: $47
	ldh a, [$7f]                                     ; $50e3: $f0 $7f
	adc $7b                                          ; $50e5: $ce $7b
	ldh a, [rRP]                                     ; $50e7: $f0 $56
	ld h, b                                          ; $50e9: $60
	ld a, a                                          ; $50ea: $7f
	rst SubAFromDE                                          ; $50eb: $df
	ld a, a                                          ; $50ec: $7f
	ldh a, [rRP]                                     ; $50ed: $f0 $56
	ld h, b                                          ; $50ef: $60
	ld b, a                                          ; $50f0: $47
	ldh a, [$7b]                                     ; $50f1: $f0 $7b
	sbc l                                            ; $50f3: $9d
	inc bc                                           ; $50f4: $03
	ldh a, [$03]                                     ; $50f5: $f0 $03
	ldh a, [rAUD2ENV]                                ; $50f7: $f0 $17
	ldh a, [$9e]                                     ; $50f9: $f0 $9e
	cp e                                             ; $50fb: $bb
	ld d, e                                          ; $50fc: $53

jr_021_50fd:
	ldh a, [$7c]                                     ; $50fd: $f0 $7c
	db $f4                                           ; $50ff: $f4
	ld c, a                                          ; $5100: $4f
	ldh a, [$9d]                                     ; $5101: $f0 $9d
	ld [hl], a                                       ; $5103: $77
	db $fd                                           ; $5104: $fd
	ld a, e                                          ; $5105: $7b
	ld d, b                                          ; $5106: $50
	ld d, a                                          ; $5107: $57
	ldh a, [rHDMA3]                                  ; $5108: $f0 $53
	jr nc, jr_021_50fd                               ; $510a: $30 $f1

	sbc e                                            ; $510c: $9b
	xor d                                            ; $510d: $aa
	dec b                                            ; $510e: $05
	ld [$5322], sp                                   ; $510f: $08 $22 $53
	ldh a, [$9a]                                     ; $5112: $f0 $9a
	ld d, l                                          ; $5114: $55
	adc b                                            ; $5115: $88
	ld [hl+], a                                      ; $5116: $22
	adc b                                            ; $5117: $88
	ld [bc], a                                       ; $5118: $02
	ld d, a                                          ; $5119: $57
	ldh a, [$9a]                                     ; $511a: $f0 $9a
	adc d                                            ; $511c: $8a
	dec h                                            ; $511d: $25
	adc b                                            ; $511e: $88
	ld [hl+], a                                      ; $511f: $22
	ld [$f05b], sp                                   ; $5120: $08 $5b $f0
	ld a, e                                          ; $5123: $7b
	sbc $9c                                          ; $5124: $de $9c
	ld d, l                                          ; $5126: $55
	add b                                            ; $5127: $80
	dec b                                            ; $5128: $05
	ld d, d                                          ; $5129: $52
	ld [hl], b                                       ; $512a: $70
	sbc [hl]                                         ; $512b: $9e
	ld b, l                                          ; $512c: $45
	ld e, [hl]                                       ; $512d: $5e
	add b                                            ; $512e: $80
	ld [hl], e                                       ; $512f: $73
	ldh a, [$5a]                                     ; $5130: $f0 $5a
	sub b                                            ; $5132: $90
	inc bc                                           ; $5133: $03
	ldh a, [rTAC]                                    ; $5134: $f0 $07
	ldh a, [$7a]                                     ; $5136: $f0 $7a
	ld d, h                                          ; $5138: $54
	ld d, e                                          ; $5139: $53
	ldh a, [$7b]                                     ; $513a: $f0 $7b
	inc [hl]                                         ; $513c: $34
	inc bc                                           ; $513d: $03
	ldh a, [rAUD2ENV]                                ; $513e: $f0 $17
	ldh a, [$03]                                     ; $5140: $f0 $03
	add b                                            ; $5142: $80
	rrca                                             ; $5143: $0f
	ldh a, [rTMA]                                    ; $5144: $f0 $06
	nop                                              ; $5146: $00
	pop bc                                           ; $5147: $c1
	ld [hl], a                                       ; $5148: $77
	reti                                             ; $5149: $d9


	ld [hl], a                                       ; $514a: $77
	ld d, d                                          ; $514b: $52
	add b                                            ; $514c: $80
	ldh [$61], a                                     ; $514d: $e0 $61
	sbc e                                            ; $514f: $9b
	inc e                                            ; $5150: $1c
	inc d                                            ; $5151: $14
	inc c                                            ; $5152: $0c
	inc c                                            ; $5153: $0c
	db $dd                                           ; $5154: $dd
	inc b                                            ; $5155: $04
	sbc l                                            ; $5156: $9d
	inc d                                            ; $5157: $14
	inc e                                            ; $5158: $1c
	ld l, a                                          ; $5159: $6f
	ld hl, sp-$21                                    ; $515a: $f8 $df
	inc bc                                           ; $515c: $03
	db $db                                           ; $515d: $db
	rlca                                             ; $515e: $07
	ld sp, hl                                        ; $515f: $f9
	sbc [hl]                                         ; $5160: $9e
	ld a, [$fcdd]                                    ; $5161: $fa $dd $fc
	rst SubAFromDE                                          ; $5164: $df
	ld hl, sp-$63                                    ; $5165: $f8 $9d
	db $fc                                           ; $5167: $fc
	ld b, $dd                                        ; $5168: $06 $dd
	inc b                                            ; $516a: $04
	rst SubAFromDE                                          ; $516b: $df
	ld [$0c9e], sp                                   ; $516c: $08 $9e $0c
	pop af                                           ; $516f: $f1
	reti                                             ; $5170: $d9


	inc b                                            ; $5171: $04
	reti                                             ; $5172: $d9


	rlca                                             ; $5173: $07
	reti                                             ; $5174: $d9


	rrca                                             ; $5175: $0f
	reti                                             ; $5176: $d9


	ldh a, [$9b]                                     ; $5177: $f0 $9b
	inc e                                            ; $5179: $1c
	sbc [hl]                                         ; $517a: $9e
	ld e, $96                                        ; $517b: $1e $96
	db $dd                                           ; $517d: $dd
	ld d, $9b                                        ; $517e: $16 $9b
	db $e3                                           ; $5180: $e3
	ld h, c                                          ; $5181: $61

jr_021_5182:
	pop hl                                           ; $5182: $e1
	ld l, c                                          ; $5183: $69
	db $dd                                           ; $5184: $dd
	jp hl                                            ; $5185: $e9


	sub a                                            ; $5186: $97
	ld e, c                                          ; $5187: $59
	add hl, sp                                       ; $5188: $39
	ld e, c                                          ; $5189: $59
	add hl, hl                                       ; $518a: $29
	ld e, c                                          ; $518b: $59
	add hl, hl                                       ; $518c: $29
	ld d, c                                          ; $518d: $51
	ld l, c                                          ; $518e: $69
	reti                                             ; $518f: $d9


	rst $38                                          ; $5190: $ff
	rst SubAFromDE                                          ; $5191: $df
	cp h                                             ; $5192: $bc
	call c, $9ebe                                    ; $5193: $dc $be $9e
	rst SubAFromDE                                          ; $5196: $df
	reti                                             ; $5197: $d9


	rst $38                                          ; $5198: $ff
	reti                                             ; $5199: $d9


	db $fc                                           ; $519a: $fc
	reti                                             ; $519b: $d9


	rst $38                                          ; $519c: $ff
	ld [$fc00], sp                                   ; $519d: $08 $00 $fc
	sbc l                                            ; $51a0: $9d
	ld [hl+], a                                      ; $51a1: $22
	jr nz, jr_021_5182                               ; $51a2: $20 $de

	ld h, [hl]                                       ; $51a4: $66
	ld e, h                                          ; $51a5: $5c
	add b                                            ; $51a6: $80
	ldh [$71], a                                     ; $51a7: $e0 $71
	rst SubAFromDE                                          ; $51a9: $df
	ld bc, $f84f                                     ; $51aa: $01 $4f $f8
	adc a                                            ; $51ad: $8f
	adc h                                            ; $51ae: $8c
	inc c                                            ; $51af: $0c
	call z, $6c8c                                    ; $51b0: $cc $8c $6c
	ld c, h                                          ; $51b3: $4c
	inc a                                            ; $51b4: $3c
	inc l                                            ; $51b5: $2c
	inc b                                            ; $51b6: $04
	add h                                            ; $51b7: $84
	add h                                            ; $51b8: $84
	call nz, Call_021_6444                           ; $51b9: $c4 $44 $64
	inc h                                            ; $51bc: $24
	inc [hl]                                         ; $51bd: $34
	ld [hl], e                                       ; $51be: $73
	push hl                                          ; $51bf: $e5
	sbc $03                                          ; $51c0: $de $03
	ld sp, hl                                        ; $51c2: $f9
	sbc $ff                                          ; $51c3: $de $ff
	sbc [hl]                                         ; $51c5: $9e
	db $fd                                           ; $51c6: $fd
	db $dd                                           ; $51c7: $dd
	cp $de                                           ; $51c8: $fe $de
	ld bc, $039e                                     ; $51ca: $01 $9e $03
	db $dd                                           ; $51cd: $dd
	ld [bc], a                                       ; $51ce: $02
	pop af                                           ; $51cf: $f1
	reti                                             ; $51d0: $d9


	inc b                                            ; $51d1: $04
	reti                                             ; $51d2: $d9


	rlca                                             ; $51d3: $07
	reti                                             ; $51d4: $d9


	rrca                                             ; $51d5: $0f
	reti                                             ; $51d6: $d9


	ldh a, [$9d]                                     ; $51d7: $f0 $9d
	ld e, h                                          ; $51d9: $5c
	cp h                                             ; $51da: $bc
	ld [hl], a                                       ; $51db: $77
	cp $9b                                           ; $51dc: $fe $9b
	inc e                                            ; $51de: $1c
	sbc h                                            ; $51df: $9c
	and e                                            ; $51e0: $a3
	ld b, e                                          ; $51e1: $43
	ld [hl], a                                       ; $51e2: $77
	cp $9d                                           ; $51e3: $fe $9d
	db $e3                                           ; $51e5: $e3
	ld h, e                                          ; $51e6: $63

jr_021_51e7:
	sbc $e1                                          ; $51e7: $de $e1
	sbc d                                            ; $51e9: $9a
	pop af                                           ; $51ea: $f1
	ld [hl], c                                       ; $51eb: $71
	or c                                             ; $51ec: $b1
	ld d, c                                          ; $51ed: $51
	add hl, sp                                       ; $51ee: $39
	reti                                             ; $51ef: $d9


	rst $38                                          ; $51f0: $ff
	rst SubAFromDE                                          ; $51f1: $df
	sbc [hl]                                         ; $51f2: $9e
	rst SubAFromDE                                          ; $51f3: $df
	sbc h                                            ; $51f4: $9c
	db $dd                                           ; $51f5: $dd
	cp h                                             ; $51f6: $bc
	reti                                             ; $51f7: $d9


	rst $38                                          ; $51f8: $ff
	sbc $e8                                          ; $51f9: $de $e8
	sbc $f8                                          ; $51fb: $de $f8
	rst SubAFromDE                                          ; $51fd: $df
	db $fc                                           ; $51fe: $fc
	reti                                             ; $51ff: $d9


	rst $38                                          ; $5200: $ff
	add hl, bc                                       ; $5201: $09
	nop                                              ; $5202: $00
	db $fd                                           ; $5203: $fd
	sbc h                                            ; $5204: $9c
	ld [bc], a                                       ; $5205: $02
	ld [hl+], a                                      ; $5206: $22
	jr nz, jr_021_51e7                               ; $5207: $20 $de

	ld h, [hl]                                       ; $5209: $66
	ld l, b                                          ; $520a: $68
	add b                                            ; $520b: $80
	ldh [$71], a                                     ; $520c: $e0 $71
	add l                                            ; $520e: $85
	jr jr_021_5221                                   ; $520f: $18 $10

	inc c                                            ; $5211: $0c
	ld [$0406], sp                                   ; $5212: $08 $06 $04
	inc bc                                           ; $5215: $03
	ld [bc], a                                       ; $5216: $02
	db $10                                           ; $5217: $10
	jr @+$0a                                         ; $5218: $18 $08

	inc c                                            ; $521a: $0c
	inc b                                            ; $521b: $04
	ld b, $02                                        ; $521c: $06 $02
	inc bc                                           ; $521e: $03
	inc e                                            ; $521f: $1c
	inc e                                            ; $5220: $1c

jr_021_5221:
	jr jr_021_522b                                   ; $5221: $18 $08

	inc b                                            ; $5223: $04
	inc b                                            ; $5224: $04
	inc c                                            ; $5225: $0c
	inc c                                            ; $5226: $0c
	ld [$dd08], sp                                   ; $5227: $08 $08 $dd
	inc c                                            ; $522a: $0c

jr_021_522b:
	rst SubAFromDE                                          ; $522b: $df
	inc b                                            ; $522c: $04
	pop af                                           ; $522d: $f1
	db $dd                                           ; $522e: $dd
	ld a, a                                          ; $522f: $7f
	rst SubAFromDE                                          ; $5230: $df
	cp $df                                           ; $5231: $fe $df
	rst $38                                          ; $5233: $ff
	db $fd                                           ; $5234: $fd
	db $dd                                           ; $5235: $dd

jr_021_5236:
	ld bc, $80db                                     ; $5236: $01 $db $80
	rst $38                                          ; $5239: $ff
	ld h, a                                          ; $523a: $67
	ld hl, sp-$25                                    ; $523b: $f8 $db
	ld [bc], a                                       ; $523d: $02
	rst SubAFromDE                                          ; $523e: $df
	inc b                                            ; $523f: $04
	db $db                                           ; $5240: $db
	inc bc                                           ; $5241: $03
	sbc $07                                          ; $5242: $de $07
	jp c, $9e0f                                      ; $5244: $da $0f $9e

	ld hl, sp-$26                                    ; $5247: $f8 $da
	ldh a, [$9d]                                     ; $5249: $f0 $9d
	ld e, h                                          ; $524b: $5c
	cp h                                             ; $524c: $bc
	ld a, e                                          ; $524d: $7b
	cp $9a                                           ; $524e: $fe $9a
	db $fc                                           ; $5250: $fc
	ld e, h                                          ; $5251: $5c
	db $fc                                           ; $5252: $fc
	and e                                            ; $5253: $a3
	ld b, e                                          ; $5254: $43
	ld a, e                                          ; $5255: $7b
	cp $9c                                           ; $5256: $fe $9c
	inc bc                                           ; $5258: $03
	and e                                            ; $5259: $a3
	inc bc                                           ; $525a: $03
	db $dd                                           ; $525b: $dd
	jp $e3de                                         ; $525c: $c3 $de $e3


	sbc [hl]                                         ; $525f: $9e
	pop hl                                           ; $5260: $e1
	reti                                             ; $5261: $d9


	rst $38                                          ; $5262: $ff
	rst SubAFromDE                                          ; $5263: $df
	add a                                            ; $5264: $87
	db $dd                                           ; $5265: $dd
	adc a                                            ; $5266: $8f
	sbc l                                            ; $5267: $9d
	sbc a                                            ; $5268: $9f
	sbc [hl]                                         ; $5269: $9e
	reti                                             ; $526a: $d9


	rst $38                                          ; $526b: $ff
	sbc $dc                                          ; $526c: $de $dc
	call c, $d9e8                                    ; $526e: $dc $e8 $d9
	rst $38                                          ; $5271: $ff
	add hl, bc                                       ; $5272: $09
	nop                                              ; $5273: $00
	db $fd                                           ; $5274: $fd
	sbc h                                            ; $5275: $9c
	ld [bc], a                                       ; $5276: $02
	ld [hl+], a                                      ; $5277: $22
	ld [hl+], a                                      ; $5278: $22
	sbc $66                                          ; $5279: $de $66
	ld e, h                                          ; $527b: $5c
	add b                                            ; $527c: $80
	ldh [hLCDCIntHandlerIdx], a                                     ; $527d: $e0 $81
	rst SubAFromDE                                          ; $527f: $df
	ld bc, $f84f                                     ; $5280: $01 $4f $f8
	adc l                                            ; $5283: $8d
	add b                                            ; $5284: $80
	nop                                              ; $5285: $00
	ret nz                                           ; $5286: $c0

	add b                                            ; $5287: $80
	ld h, b                                          ; $5288: $60
	ld b, b                                          ; $5289: $40
	jr nc, jr_021_52ac                               ; $528a: $30 $20

	nop                                              ; $528c: $00
	add b                                            ; $528d: $80
	add b                                            ; $528e: $80
	ret nz                                           ; $528f: $c0

	ld b, b                                          ; $5290: $40
	ld h, b                                          ; $5291: $60
	jr nz, jr_021_52c4                               ; $5292: $20 $30

	ld a, h                                          ; $5294: $7c
	ld a, b                                          ; $5295: $78
	db $dd                                           ; $5296: $dd
	jr c, jr_021_5236                                ; $5297: $38 $9d

	jr jr_021_52b7                                   ; $5299: $18 $1c

	reti                                             ; $529b: $d9


	ld [$d9f1], sp                                   ; $529c: $08 $f1 $d9
	ccf                                              ; $529f: $3f
	ld sp, hl                                        ; $52a0: $f9
	pop de                                           ; $52a1: $d1
	add b                                            ; $52a2: $80
	reti                                             ; $52a3: $d9


	ld [bc], a                                       ; $52a4: $02
	reti                                             ; $52a5: $d9


	inc bc                                           ; $52a6: $03
	rst SubAFromDE                                          ; $52a7: $df
	rlca                                             ; $52a8: $07
	ld [hl], a                                       ; $52a9: $77
	db $fc                                           ; $52aa: $fc
	rst SubAFromDE                                          ; $52ab: $df

jr_021_52ac:
	rlca                                             ; $52ac: $07
	rst SubAFromDE                                          ; $52ad: $df
	ld hl, sp-$21                                    ; $52ae: $f8 $df
	db $fc                                           ; $52b0: $fc
	db $dd                                           ; $52b1: $dd
	ld hl, sp-$22                                    ; $52b2: $f8 $de
	inc e                                            ; $52b4: $1c
	sbc [hl]                                         ; $52b5: $9e
	inc a                                            ; $52b6: $3c

jr_021_52b7:
	ld [hl], a                                       ; $52b7: $77
	cp $de                                           ; $52b8: $fe $de
	db $e3                                           ; $52ba: $e3
	sbc [hl]                                         ; $52bb: $9e
	jp $fe77                                         ; $52bc: $c3 $77 $fe


	sbc [hl]                                         ; $52bf: $9e
	ld b, e                                          ; $52c0: $43
	jp c, $d9c3                                      ; $52c1: $da $c3 $d9

jr_021_52c4:
	rst $38                                          ; $52c4: $ff
	sbc [hl]                                         ; $52c5: $9e
	rst JumpTable                                          ; $52c6: $c7
	sbc $83                                          ; $52c7: $de $83
	db $dd                                           ; $52c9: $dd
	add a                                            ; $52ca: $87
	reti                                             ; $52cb: $d9


	rst $38                                          ; $52cc: $ff
	rst SubAFromDE                                          ; $52cd: $df
	adc a                                            ; $52ce: $8f
	rst SubAFromDE                                          ; $52cf: $df
	adc [hl]                                         ; $52d0: $8e
	rst SubAFromDE                                          ; $52d1: $df
	adc $df                                          ; $52d2: $ce $df
	call z, $ffd9                                    ; $52d4: $cc $d9 $ff
	rlca                                             ; $52d7: $07
	nop                                              ; $52d8: $00
	db $fd                                           ; $52d9: $fd
	sbc $22                                          ; $52da: $de $22
	sbc $66                                          ; $52dc: $de $66

jr_021_52de:
	ld d, h                                          ; $52de: $54
	add b                                            ; $52df: $80
	ldh [hLCDCIntHandlerIdx], a                                     ; $52e0: $e0 $81
	adc l                                            ; $52e2: $8d
	jr jr_021_52f9                                   ; $52e3: $18 $14

	inc c                                            ; $52e5: $0c
	ld [$0406], sp                                   ; $52e6: $08 $06 $04
	inc bc                                           ; $52e9: $03
	ld [bc], a                                       ; $52ea: $02
	db $10                                           ; $52eb: $10
	jr jr_021_52f6                                   ; $52ec: $18 $08

	inc c                                            ; $52ee: $0c
	inc b                                            ; $52ef: $04
	ld b, $02                                        ; $52f0: $06 $02
	inc bc                                           ; $52f2: $03
	ld bc, $f301                                     ; $52f3: $01 $01 $f3

jr_021_52f6:
	sbc [hl]                                         ; $52f6: $9e
	ldh [$de], a                                     ; $52f7: $e0 $de

jr_021_52f9:
	db $ec                                           ; $52f9: $ec
	rst SubAFromDE                                          ; $52fa: $df
	db $fc                                           ; $52fb: $fc
	rst SubAFromDE                                          ; $52fc: $df
	ld a, h                                          ; $52fd: $7c
	db $dd                                           ; $52fe: $dd
	jr jr_021_52de                                   ; $52ff: $18 $dd

	ld [$dcf1], sp                                   ; $5301: $08 $f1 $dc
	ld a, a                                          ; $5304: $7f
	rst SubAFromDE                                          ; $5305: $df
	ld a, [hl]                                       ; $5306: $7e
	sbc [hl]                                         ; $5307: $9e
	ccf                                              ; $5308: $3f
	jp c, $fb01                                      ; $5309: $da $01 $fb

	sbc $80                                          ; $530c: $de $80
	ld h, a                                          ; $530e: $67
	ld hl, sp-$27                                    ; $530f: $f8 $d9
	ld [bc], a                                       ; $5311: $02
	reti                                             ; $5312: $d9


	inc bc                                           ; $5313: $03
	reti                                             ; $5314: $d9


	rlca                                             ; $5315: $07
	reti                                             ; $5316: $d9


	ld hl, sp-$21                                    ; $5317: $f8 $df
	sbc h                                            ; $5319: $9c
	db $db                                           ; $531a: $db
	inc e                                            ; $531b: $1c
	rst SubAFromDE                                          ; $531c: $df
	ld h, e                                          ; $531d: $63
	db $db                                           ; $531e: $db
	db $e3                                           ; $531f: $e3
	sbc [hl]                                         ; $5320: $9e
	ld hl, $61dd                                     ; $5321: $21 $dd $61
	sbc h                                            ; $5324: $9c
	ld h, e                                          ; $5325: $63
	ld b, e                                          ; $5326: $43
	ld b, e                                          ; $5327: $43
	reti                                             ; $5328: $d9


	rst $38                                          ; $5329: $ff
	reti                                             ; $532a: $d9


	rst JumpTable                                          ; $532b: $c7
	reti                                             ; $532c: $d9


	rst $38                                          ; $532d: $ff
	reti                                             ; $532e: $d9


	sbc a                                            ; $532f: $9f
	reti                                             ; $5330: $d9


	rst $38                                          ; $5331: $ff
	add hl, bc                                       ; $5332: $09
	nop                                              ; $5333: $00
	db $fd                                           ; $5334: $fd
	rst SubAFromDE                                          ; $5335: $df
	ld [hl+], a                                      ; $5336: $22
	sbc [hl]                                         ; $5337: $9e
	dec h                                            ; $5338: $25
	sbc $66                                          ; $5339: $de $66
	ld a, [hl]                                       ; $533b: $7e
	add b                                            ; $533c: $80
	ldh [hDisp1_SCX], a                                     ; $533d: $e0 $91
	rst SubAFromDE                                          ; $533f: $df
	ld bc, $f84f                                     ; $5340: $01 $4f $f8
	adc e                                            ; $5343: $8b
	ret nz                                           ; $5344: $c0

	ld h, b                                          ; $5345: $60
	ldh [$b0], a                                     ; $5346: $e0 $b0
	ld [hl], b                                       ; $5348: $70
	ld d, b                                          ; $5349: $50
	jr c, jr_021_5374                                ; $534a: $38 $28

	nop                                              ; $534c: $00
	add b                                            ; $534d: $80

jr_021_534e:
	add b                                            ; $534e: $80
	ret nz                                           ; $534f: $c0

	ld b, b                                          ; $5350: $40
	ld h, b                                          ; $5351: $60
	jr nz, jr_021_5384                               ; $5352: $20 $30

	rrca                                             ; $5354: $0f
	rrca                                             ; $5355: $0f
	rlca                                             ; $5356: $07
	rlca                                             ; $5357: $07
	sbc $03                                          ; $5358: $de $03
	ld l, e                                          ; $535a: $6b
	ldh [c], a                                       ; $535b: $e2
	rst $38                                          ; $535c: $ff
	sbc [hl]                                         ; $535d: $9e
	ret nc                                           ; $535e: $d0

	db $dd                                           ; $535f: $dd
	ldh a, [$df]                                     ; $5360: $f0 $df
	ld hl, sp-$63                                    ; $5362: $f8 $9d
	ldh a, [$30]                                     ; $5364: $f0 $30
	db $db                                           ; $5366: $db
	db $10                                           ; $5367: $10
	sbc h                                            ; $5368: $9c
	jr jr_021_534e                                   ; $5369: $18 $e3

	pop bc                                           ; $536b: $c1
	ld h, e                                          ; $536c: $63
	push hl                                          ; $536d: $e5
	db $fc                                           ; $536e: $fc
	sbc l                                            ; $536f: $9d
	db $fc                                           ; $5370: $fc
	ld a, [$fede]                                    ; $5371: $fa $de $fe

jr_021_5374:
	rst SubAFromDE                                          ; $5374: $df
	db $fd                                           ; $5375: $fd
	sbc h                                            ; $5376: $9c
	ld a, a                                          ; $5377: $7f
	inc b                                            ; $5378: $04
	ld b, $de                                        ; $5379: $06 $de
	ld [bc], a                                       ; $537b: $02
	ld e, e                                          ; $537c: $5b
	ret z                                            ; $537d: $c8

	ld sp, hl                                        ; $537e: $f9
	reti                                             ; $537f: $d9


	ld [bc], a                                       ; $5380: $02
	reti                                             ; $5381: $d9


	inc bc                                           ; $5382: $03
	ld a, a                                          ; $5383: $7f

jr_021_5384:
	reti                                             ; $5384: $d9


	ld a, a                                          ; $5385: $7f
	and c                                            ; $5386: $a1
	ld a, e                                          ; $5387: $7b
	cp $9a                                           ; $5388: $fe $9a
	rlca                                             ; $538a: $07
	ld sp, hl                                        ; $538b: $f9
	db $fd                                           ; $538c: $fd
	ld hl, sp-$04                                    ; $538d: $f8 $fc
	ld a, e                                          ; $538f: $7b
	cp $9d                                           ; $5390: $fe $9d
	ld hl, sp-$02                                    ; $5392: $f8 $fe
	call c, $dfbe                                    ; $5394: $dc $be $df
	cp h                                             ; $5397: $bc
	sbc [hl]                                         ; $5398: $9e
	ld bc, $41dc                                     ; $5399: $01 $dc $41
	rst SubAFromDE                                          ; $539c: $df
	ld b, e                                          ; $539d: $43
	sub a                                            ; $539e: $97
	add a                                            ; $539f: $87

jr_021_53a0:
	add e                                            ; $53a0: $83
	add e                                            ; $53a1: $83
	and e                                            ; $53a2: $a3
	and e                                            ; $53a3: $a3
	and c                                            ; $53a4: $a1
	ld hl, $db21                                     ; $53a5: $21 $21 $db
	ld a, a                                          ; $53a8: $7f
	rst SubAFromDE                                          ; $53a9: $df
	rst $38                                          ; $53aa: $ff
	db $dd                                           ; $53ab: $dd
	add l                                            ; $53ac: $85
	sbc [hl]                                         ; $53ad: $9e
	push bc                                          ; $53ae: $c5
	sbc $c7                                          ; $53af: $de $c7
	reti                                             ; $53b1: $d9


	rst $38                                          ; $53b2: $ff
	db $db                                           ; $53b3: $db
	rra                                              ; $53b4: $1f
	rst SubAFromDE                                          ; $53b5: $df
	sbc a                                            ; $53b6: $9f
	reti                                             ; $53b7: $d9


Call_021_53b8:
	rst $38                                          ; $53b8: $ff
	ld a, [bc]                                       ; $53b9: $0a
	nop                                              ; $53ba: $00
	cp $9b                                           ; $53bb: $fe $9b
	ld [bc], a                                       ; $53bd: $02
	ld [hl+], a                                      ; $53be: $22
	ld [hl+], a                                      ; $53bf: $22
	jr nz, jr_021_53a0                               ; $53c0: $20 $de

	ld h, [hl]                                       ; $53c2: $66
	halt                                             ; $53c3: $76
	add b                                            ; $53c4: $80
	ldh [hDisp1_SCX], a                                     ; $53c5: $e0 $91
	adc a                                            ; $53c7: $8f
	db $10                                           ; $53c8: $10
	ld [$080c], sp                                   ; $53c9: $08 $0c $08
	ld b, $05                                        ; $53cc: $06 $05
	inc bc                                           ; $53ce: $03
	ld [bc], a                                       ; $53cf: $02
	jr jr_021_53da                                   ; $53d0: $18 $08

	ld [$040c], sp                                   ; $53d2: $08 $0c $04
	ld b, $02                                        ; $53d5: $06 $02
	inc bc                                           ; $53d7: $03
	ei                                               ; $53d8: $fb
	sbc l                                            ; $53d9: $9d

jr_021_53da:
	add b                                            ; $53da: $80
	ret nz                                           ; $53db: $c0

	ld sp, hl                                        ; $53dc: $f9
	rst SubAFromDE                                          ; $53dd: $df
	rst $38                                          ; $53de: $ff
	sbc c                                            ; $53df: $99
	ld a, a                                          ; $53e0: $7f
	ccf                                              ; $53e1: $3f
	ccf                                              ; $53e2: $3f
	rra                                              ; $53e3: $1f
	rra                                              ; $53e4: $1f
	rrca                                             ; $53e5: $0f
	ld sp, hl                                        ; $53e6: $f9
	sbc e                                            ; $53e7: $9b
	ld b, e                                          ; $53e8: $43
	ret nz                                           ; $53e9: $c0

	and b                                            ; $53ea: $a0
	and b                                            ; $53eb: $a0
	sbc $e0                                          ; $53ec: $de $e0
	sbc l                                            ; $53ee: $9d
	ldh a, [$c0]                                     ; $53ef: $f0 $c0
	sbc $60                                          ; $53f1: $de $60
	db $dd                                           ; $53f3: $dd
	jr nz, @+$75                                     ; $53f4: $20 $73

	ldh [$df], a                                     ; $53f6: $e0 $df
	ld a, a                                          ; $53f8: $7f
	sbc [hl]                                         ; $53f9: $9e
	ld [hl], a                                       ; $53fa: $77
	ld sp, hl                                        ; $53fb: $f9
	sbc h                                            ; $53fc: $9c
	cp $fa                                           ; $53fd: $fe $fa
	ld a, [$fcdc]                                    ; $53ff: $fa $dc $fc
	sbc h                                            ; $5402: $9c
	ld [bc], a                                       ; $5403: $02
	ld b, $06                                        ; $5404: $06 $06
	call c, $f104                                    ; $5406: $dc $04 $f1
	reti                                             ; $5409: $d9


	ld [bc], a                                       ; $540a: $02
	reti                                             ; $540b: $d9


	inc bc                                           ; $540c: $03
	sbc l                                            ; $540d: $9d
	ld b, $0a                                        ; $540e: $06 $0a
	ld l, a                                          ; $5410: $6f
	cp $9d                                           ; $5411: $fe $9d
	ld sp, hl                                        ; $5413: $f9
	push af                                          ; $5414: $f5
	ld l, a                                          ; $5415: $6f
	cp $dd                                           ; $5416: $fe $dd
	ld a, a                                          ; $5418: $7f
	sbc [hl]                                         ; $5419: $9e
	rst $38                                          ; $541a: $ff
	sbc $fe                                          ; $541b: $de $fe
	db $dd                                           ; $541d: $dd
	add b                                            ; $541e: $80
	sbc [hl]                                         ; $541f: $9e

jr_021_5420:
	nop                                              ; $5420: $00
	sbc $01                                          ; $5421: $de $01
	sbc [hl]                                         ; $5423: $9e
	daa                                              ; $5424: $27
	sbc $07                                          ; $5425: $de $07
	db $dd                                           ; $5427: $dd
	add a                                            ; $5428: $87
	db $dd                                           ; $5429: $dd
	rst $38                                          ; $542a: $ff
	db $dd                                           ; $542b: $dd
	ld a, a                                          ; $542c: $7f
	db $dd                                           ; $542d: $dd
	rst SubAFromBC                                          ; $542e: $e7
	sbc $c7                                          ; $542f: $de $c7
	sbc [hl]                                         ; $5431: $9e
	add l                                            ; $5432: $85
	reti                                             ; $5433: $d9


	rst $38                                          ; $5434: $ff
	reti                                             ; $5435: $d9


	rra                                              ; $5436: $1f
	reti                                             ; $5437: $d9


	rst $38                                          ; $5438: $ff
	ld a, [bc]                                       ; $5439: $0a
	nop                                              ; $543a: $00
	cp $9b                                           ; $543b: $fe $9b
	ld [bc], a                                       ; $543d: $02
	ld [hl+], a                                      ; $543e: $22
	ld [hl+], a                                      ; $543f: $22
	jr nz, jr_021_5420                               ; $5440: $20 $de

	ld h, [hl]                                       ; $5442: $66
	add c                                            ; $5443: $81
	add b                                            ; $5444: $80
	ldh [hDisp1_SCX], a                                     ; $5445: $e0 $91
	sbc h                                            ; $5447: $9c
	db $10                                           ; $5448: $10
	rra                                              ; $5449: $1f
	rra                                              ; $544a: $1f
	db $dd                                           ; $544b: $dd
	db $10                                           ; $544c: $10
	sbc [hl]                                         ; $544d: $9e
	jr jr_021_54c3                                   ; $544e: $18 $73

	ld a, [$10de]                                    ; $5450: $fa $de $10
	sub l                                            ; $5453: $95
	rrca                                             ; $5454: $0f
	cp $ff                                           ; $5455: $fe $ff
	rst $38                                          ; $5457: $ff
	ld a, a                                          ; $5458: $7f
	rlca                                             ; $5459: $07
	inc bc                                           ; $545a: $03
	ld bc, $01ff                                     ; $545b: $01 $ff $01
	ei                                               ; $545e: $fb
	sbc b                                            ; $545f: $98
	rst $38                                          ; $5460: $ff
	nop                                              ; $5461: $00
	cp $f7                                           ; $5462: $fe $f7
	ei                                               ; $5464: $fb
	cp $fd                                           ; $5465: $fe $fd
	ld a, e                                          ; $5467: $7b
	ld [$019b], a                                    ; $5468: $ea $9b $01
	ld [$0304], sp                                   ; $546b: $08 $04 $03
	ld a, e                                          ; $546e: $7b
	add sp, $7b                                      ; $546f: $e8 $7b
	pop hl                                           ; $5471: $e1
	rst SubAFromDE                                          ; $5472: $df
	ld a, a                                          ; $5473: $7f
	sbc d                                            ; $5474: $9a
	ld c, a                                          ; $5475: $4f
	rst JumpTable                                          ; $5476: $c7
	rst $38                                          ; $5477: $ff
	add b                                            ; $5478: $80
	add b                                            ; $5479: $80
	call c, $d8c0                                    ; $547a: $dc $c0 $d8
	rst $38                                          ; $547d: $ff
	ld a, [$ffdd]                                    ; $547e: $fa $dd $ff
	rst SubAFromDE                                          ; $5481: $df
	db $fd                                           ; $5482: $fd
	rst SubAFromDE                                          ; $5483: $df
	cp $7f                                           ; $5484: $fe $7f
	pop de                                           ; $5486: $d1
	rst SubAFromDE                                          ; $5487: $df
	ld bc, $03df                                     ; $5488: $01 $df $03
	rst SubAFromDE                                          ; $548b: $df
	ld [bc], a                                       ; $548c: $02
	ld h, e                                          ; $548d: $63
	add sp, -$06                                     ; $548e: $e8 $fa
	reti                                             ; $5490: $d9


	ld [bc], a                                       ; $5491: $02
	reti                                             ; $5492: $d9


	inc bc                                           ; $5493: $03
	sbc h                                            ; $5494: $9c
	db $10                                           ; $5495: $10
	ld a, [bc]                                       ; $5496: $0a
	ld d, $7b                                        ; $5497: $16 $7b
	cp $9a                                           ; $5499: $fe $9a
	ld b, $0a                                        ; $549b: $06 $0a
	rst AddAOntoHL                                          ; $549d: $ef
	push af                                          ; $549e: $f5
	jp hl                                            ; $549f: $e9


	ld a, e                                          ; $54a0: $7b
	cp $9c                                           ; $54a1: $fe $9c
	ld sp, hl                                        ; $54a3: $f9
	push af                                          ; $54a4: $f5
	ld a, $dd                                        ; $54a5: $3e $dd
	ld a, [hl]                                       ; $54a7: $7e
	sbc $7f                                          ; $54a8: $de $7f
	sbc [hl]                                         ; $54aa: $9e
	pop bc                                           ; $54ab: $c1
	db $dd                                           ; $54ac: $dd
	add c                                            ; $54ad: $81
	sbc $80                                          ; $54ae: $de $80
	rst SubAFromDE                                          ; $54b0: $df
	ld h, d                                          ; $54b1: $62
	call c, $9e63                                    ; $54b2: $dc $63 $9e
	ld h, a                                          ; $54b5: $67
	reti                                             ; $54b6: $d9


	rst $38                                          ; $54b7: $ff
	sbc $87                                          ; $54b8: $de $87
	call c, $d9c7                                    ; $54ba: $dc $c7 $d9
	rst $38                                          ; $54bd: $ff
	jp c, $9e0f                                      ; $54be: $da $0f $9e

	rra                                              ; $54c1: $1f
	reti                                             ; $54c2: $d9


jr_021_54c3:
	rst $38                                          ; $54c3: $ff
	ld a, [bc]                                       ; $54c4: $0a
	nop                                              ; $54c5: $00
	cp $9b                                           ; $54c6: $fe $9b
	ld [bc], a                                       ; $54c8: $02
	ld [hl+], a                                      ; $54c9: $22
	ld [hl+], a                                      ; $54ca: $22
	dec h                                            ; $54cb: $25
	sbc $66                                          ; $54cc: $de $66
	add b                                            ; $54ce: $80
	add b                                            ; $54cf: $80
	ldh [$a1], a                                     ; $54d0: $e0 $a1
	db $dd                                           ; $54d2: $dd
	rrca                                             ; $54d3: $0f
	sbc e                                            ; $54d4: $9b
	dec bc                                           ; $54d5: $0b
	rlca                                             ; $54d6: $07
	nop                                              ; $54d7: $00
	nop                                              ; $54d8: $00
	db $dd                                           ; $54d9: $dd
	ld [$0c9e], sp                                   ; $54da: $08 $9e $0c
	ld a, e                                          ; $54dd: $7b
	ld hl, sp-$24                                    ; $54de: $f8 $dc
	rst $38                                          ; $54e0: $ff
	sbc h                                            ; $54e1: $9c
	add c                                            ; $54e2: $81
	ld a, a                                          ; $54e3: $7f
	rra                                              ; $54e4: $1f
	call c, $9c01                                    ; $54e5: $dc $01 $9c
	rst $38                                          ; $54e8: $ff
	ld a, a                                          ; $54e9: $7f
	rra                                              ; $54ea: $1f
	sbc $7f                                          ; $54eb: $de $7f
	sbc $ff                                          ; $54ed: $de $ff
	sbc l                                            ; $54ef: $9d
	ld a, a                                          ; $54f0: $7f
	ldh a, [$de]                                     ; $54f1: $f0 $de
	add b                                            ; $54f3: $80
	cp $9b                                           ; $54f4: $fe $9b
	add b                                            ; $54f6: $80
	rst $38                                          ; $54f7: $ff
	pop af                                           ; $54f8: $f1
	pop af                                           ; $54f9: $f1
	call c, $9ce1                                    ; $54fa: $dc $e1 $9c
	ld bc, $0f0f                                     ; $54fd: $01 $0f $0f
	call c, $d81f                                    ; $5500: $dc $1f $d8
	rst $38                                          ; $5503: $ff
	ld sp, hl                                        ; $5504: $f9
	reti                                             ; $5505: $d9


	ret nz                                           ; $5506: $c0

	reti                                             ; $5507: $d9


	ccf                                              ; $5508: $3f
	reti                                             ; $5509: $d9


	cp a                                             ; $550a: $bf
	reti                                             ; $550b: $d9


	ret nz                                           ; $550c: $c0

	sbc $80                                          ; $550d: $de $80
	call c, $dec0                                    ; $550f: $dc $c0 $de
	ld a, a                                          ; $5512: $7f
	call c, $da3f                                    ; $5513: $dc $3f $da
	ld b, c                                          ; $5516: $41
	ret c                                            ; $5517: $d8

	rst $38                                          ; $5518: $ff
	sbc l                                            ; $5519: $9d
	inc d                                            ; $551a: $14
	jr z, @+$7d                                      ; $551b: $28 $7b

	cp $9a                                           ; $551d: $fe $9a
	ld [$0814], sp                                   ; $551f: $08 $14 $08
	db $eb                                           ; $5522: $eb
	rst SubAFromHL                                          ; $5523: $d7
	ld a, e                                          ; $5524: $7b
	cp $9c                                           ; $5525: $fe $9c
	rst FarCall                                          ; $5527: $f7
	db $eb                                           ; $5528: $eb
	rst FarCall                                          ; $5529: $f7
	sbc $1e                                          ; $552a: $de $1e
	call c, $de3e                                    ; $552c: $dc $3e $de
	pop hl                                           ; $552f: $e1
	call c, $9ec1                                    ; $5530: $dc $c1 $9e
	ld h, e                                          ; $5533: $63
	db $dd                                           ; $5534: $dd
	ld [hl], e                                       ; $5535: $73
	rst SubAFromDE                                          ; $5536: $df
	ld [hl], d                                       ; $5537: $72
	sbc [hl]                                         ; $5538: $9e
	ld h, d                                          ; $5539: $62
	reti                                             ; $553a: $d9


	rst $38                                          ; $553b: $ff
	sbc [hl]                                         ; $553c: $9e
	inc de                                           ; $553d: $13
	db $dd                                           ; $553e: $dd
	rla                                              ; $553f: $17
	sbc h                                            ; $5540: $9c
	rlca                                             ; $5541: $07
	add a                                            ; $5542: $87
	add a                                            ; $5543: $87
	call c, $deef                                    ; $5544: $dc $ef $de
	rst $38                                          ; $5547: $ff
	db $db                                           ; $5548: $db
	rlca                                             ; $5549: $07
	rst SubAFromDE                                          ; $554a: $df
	rrca                                             ; $554b: $0f
	reti                                             ; $554c: $d9


	rst $38                                          ; $554d: $ff
	rlca                                             ; $554e: $07
	nop                                              ; $554f: $00
	ld a, [$069c]                                    ; $5550: $fa $9c $06
	ld h, [hl]                                       ; $5553: $66
	ld h, [hl]                                       ; $5554: $66
	ld l, c                                          ; $5555: $69
	add b                                            ; $5556: $80
	ldh [$a1], a                                     ; $5557: $e0 $a1
	sbc [hl]                                         ; $5559: $9e
	dec b                                            ; $555a: $05
	db $dd                                           ; $555b: $dd
	rlca                                             ; $555c: $07
	rst SubAFromDE                                          ; $555d: $df
	dec bc                                           ; $555e: $0b
	sbc l                                            ; $555f: $9d
	rrca                                             ; $5560: $0f
	ld b, $dd                                        ; $5561: $06 $dd
	inc b                                            ; $5563: $04
	rst SubAFromDE                                          ; $5564: $df
	inc c                                            ; $5565: $0c
	sbc [hl]                                         ; $5566: $9e
	ld [$ffde], sp                                   ; $5567: $08 $de $ff
	sbc [hl]                                         ; $556a: $9e
	cp $dd                                           ; $556b: $fe $dd
	rst $38                                          ; $556d: $ff
	cp $dc                                           ; $556e: $fe $dc
	ld bc, $ffdd                                     ; $5570: $01 $dd $ff
	db $dd                                           ; $5573: $dd
	ld a, a                                          ; $5574: $7f
	reti                                             ; $5575: $d9


	add b                                            ; $5576: $80
	reti                                             ; $5577: $d9


	pop af                                           ; $5578: $f1
	reti                                             ; $5579: $d9


	rrca                                             ; $557a: $0f
	reti                                             ; $557b: $d9


	rst $38                                          ; $557c: $ff
	ld sp, hl                                        ; $557d: $f9
	sbc $e0                                          ; $557e: $de $e0
	call c, $dec0                                    ; $5580: $dc $c0 $de
	rra                                              ; $5583: $1f
	call c, $d93f                                    ; $5584: $dc $3f $d9
	cp a                                             ; $5587: $bf
	reti                                             ; $5588: $d9


	ret nz                                           ; $5589: $c0

	reti                                             ; $558a: $d9


	add b                                            ; $558b: $80
	reti                                             ; $558c: $d9


	ld a, a                                          ; $558d: $7f
	db $dd                                           ; $558e: $dd
	add c                                            ; $558f: $81
	db $dd                                           ; $5590: $dd
	pop bc                                           ; $5591: $c1
	reti                                             ; $5592: $d9


	rst $38                                          ; $5593: $ff
	sbc l                                            ; $5594: $9d
	db $10                                           ; $5595: $10
	ld [$fe77], sp                                   ; $5596: $08 $77 $fe
	sbc e                                            ; $5599: $9b
	inc d                                            ; $559a: $14
	ld [$f7ef], sp                                   ; $559b: $08 $ef $f7
	ld [hl], a                                       ; $559e: $77
	cp $9d                                           ; $559f: $fe $9d
	db $eb                                           ; $55a1: $eb
	rst FarCall                                          ; $55a2: $f7
	db $dd                                           ; $55a3: $dd
	ld a, $dd                                        ; $55a4: $3e $dd
	ld e, $dd                                        ; $55a6: $1e $dd
	pop bc                                           ; $55a8: $c1
	db $dd                                           ; $55a9: $dd
	pop hl                                           ; $55aa: $e1
	sbc e                                            ; $55ab: $9b
	ld h, c                                          ; $55ac: $61
	ld hl, $6121                                     ; $55ad: $21 $21 $61
	db $dd                                           ; $55b0: $dd
	ld h, e                                          ; $55b1: $63
	reti                                             ; $55b2: $d9


	rst $38                                          ; $55b3: $ff
	reti                                             ; $55b4: $d9


	inc de                                           ; $55b5: $13
	reti                                             ; $55b6: $d9


	rst AddAOntoHL                                          ; $55b7: $ef
	call c, $de0f                                    ; $55b8: $dc $0f $de
	rlca                                             ; $55bb: $07
	reti                                             ; $55bc: $d9


	rst $38                                          ; $55bd: $ff
	rlca                                             ; $55be: $07
	nop                                              ; $55bf: $00
	ld a, [$069c]                                    ; $55c0: $fa $9c $06
	ld h, [hl]                                       ; $55c3: $66
	ld h, [hl]                                       ; $55c4: $66
	ld [hl], c                                       ; $55c5: $71
	nop                                              ; $55c6: $00
	ldh [$a1], a                                     ; $55c7: $e0 $a1
	db $dd                                           ; $55c9: $dd
	ld bc, $029b                                     ; $55ca: $01 $9b $02
	inc bc                                           ; $55cd: $03
	inc bc                                           ; $55ce: $03
	ld [bc], a                                       ; $55cf: $02
	ld l, a                                          ; $55d0: $6f
	cp $9b                                           ; $55d1: $fe $9b
	dec b                                            ; $55d3: $05
	ld b, $ff                                        ; $55d4: $06 $ff
	nop                                              ; $55d6: $00
	ld c, e                                          ; $55d7: $4b
	cp $9b                                           ; $55d8: $fe $9b
	ld b, b                                          ; $55da: $40
	ld a, a                                          ; $55db: $7f
	ret nz                                           ; $55dc: $c0

	cp a                                             ; $55dd: $bf
	ld h, e                                          ; $55de: $63
	cp $9b                                           ; $55df: $fe $9b
	rst $38                                          ; $55e1: $ff
	add b                                            ; $55e2: $80
	ld sp, hl                                        ; $55e3: $f9
	rlca                                             ; $55e4: $07
	ld e, a                                          ; $55e5: $5f
	cp $99                                           ; $55e6: $fe $99
	pop af                                           ; $55e8: $f1
	rrca                                             ; $55e9: $0f
	pop af                                           ; $55ea: $f1
	rrca                                             ; $55eb: $0f
	ld a, a                                          ; $55ec: $7f
	add b                                            ; $55ed: $80
	ld h, a                                          ; $55ee: $67
	cp $6f                                           ; $55ef: $fe $6f
	ret nc                                           ; $55f1: $d0

	sbc l                                            ; $55f2: $9d
	pop hl                                           ; $55f3: $e1
	rra                                              ; $55f4: $1f
	ld e, a                                          ; $55f5: $5f
	cp $9e                                           ; $55f6: $fe $9e
	ldh [$7b], a                                     ; $55f8: $e0 $7b
	cp $6f                                           ; $55fa: $fe $6f
	db $e4                                           ; $55fc: $e4
	sbc h                                            ; $55fd: $9c
	ccf                                              ; $55fe: $3f
	ret nz                                           ; $55ff: $c0

	ccf                                              ; $5600: $3f
	ld l, e                                          ; $5601: $6b
	cp [hl]                                          ; $5602: $be
	sbc l                                            ; $5603: $9d
	ld bc, $57ff                                     ; $5604: $01 $ff $57
	cp $7f                                           ; $5607: $fe $7f
	rst GetHLinHL                                          ; $5609: $cf
	ld l, a                                          ; $560a: $6f
	ld hl, sp-$62                                    ; $560b: $f8 $9e
	add c                                            ; $560d: $81
	ld h, e                                          ; $560e: $63
	cp $9b                                           ; $560f: $fe $9b
	add h                                            ; $5611: $84
	ei                                               ; $5612: $fb
	adc b                                            ; $5613: $88
	rst FarCall                                          ; $5614: $f7
	ld [hl], a                                       ; $5615: $77
	db $fc                                           ; $5616: $fc
	ld a, a                                          ; $5617: $7f
	or c                                             ; $5618: $b1
	ld [hl], a                                       ; $5619: $77
	db $fc                                           ; $561a: $fc
	sbc e                                            ; $561b: $9b
	ld [$3ef7], sp                                   ; $561c: $08 $f7 $3e
	pop bc                                           ; $561f: $c1
	ld c, a                                          ; $5620: $4f
	cp $9d                                           ; $5621: $fe $9d
	ld [hl], d                                       ; $5623: $72
	db $fd                                           ; $5624: $fd
	ld [hl], a                                       ; $5625: $77
	cp $9e                                           ; $5626: $fe $9e
	ld h, d                                          ; $5628: $62
	ld h, e                                          ; $5629: $63
	cp $9c                                           ; $562a: $fe $9c
	ld a, [hl-]                                      ; $562c: $3a
	rst GetHLinHL                                          ; $562d: $cf
	dec sp                                           ; $562e: $3b
	ld d, e                                          ; $562f: $53
	cp $9d                                           ; $5630: $fe $9d
	rrca                                             ; $5632: $0f
	rst $38                                          ; $5633: $ff
	ld c, a                                          ; $5634: $4f
	cp $07                                           ; $5635: $fe $07
	nop                                              ; $5637: $00
	ld a, [$069c]                                    ; $5638: $fa $9c $06
	ld h, [hl]                                       ; $563b: $66
	ld h, [hl]                                       ; $563c: $66
	ld a, l                                          ; $563d: $7d
	add b                                            ; $563e: $80
	ldh [$9b], a                                     ; $563f: $e0 $9b
	rst SubAFromDE                                          ; $5641: $df
	ld bc, $f867                                     ; $5642: $01 $67 $f8
	rst SubAFromDE                                          ; $5645: $df
	ld a, a                                          ; $5646: $7f
	sbc [hl]                                         ; $5647: $9e
	cp a                                             ; $5648: $bf
	sbc $ff                                          ; $5649: $de $ff
	sbc d                                            ; $564b: $9a
	ld a, a                                          ; $564c: $7f
	rst $38                                          ; $564d: $ff
	ld b, b                                          ; $564e: $40
	ld b, b                                          ; $564f: $40
	ret nz                                           ; $5650: $c0

	db $dd                                           ; $5651: $dd
	add b                                            ; $5652: $80
	sbc e                                            ; $5653: $9b
	nop                                              ; $5654: $00
	rst $38                                          ; $5655: $ff
	rst $38                                          ; $5656: $ff
	cp a                                             ; $5657: $bf
	sbc $df                                          ; $5658: $de $df
	sbc e                                            ; $565a: $9b
	sbc a                                            ; $565b: $9f
	rst $38                                          ; $565c: $ff
	jr nz, jr_021_567f                               ; $565d: $20 $20

	call c, $9e60                                    ; $565f: $dc $60 $9e
	ld b, b                                          ; $5662: $40
	db $db                                           ; $5663: $db
	ld hl, sp-$21                                    ; $5664: $f8 $df
	ld sp, hl                                        ; $5666: $f9
	reti                                             ; $5667: $d9


	rlca                                             ; $5668: $07
	db $db                                           ; $5669: $db
	rst $38                                          ; $566a: $ff
	rst SubAFromDE                                          ; $566b: $df
	ld a, a                                          ; $566c: $7f
	reti                                             ; $566d: $d9


	add b                                            ; $566e: $80
	reti                                             ; $566f: $d9


	pop hl                                           ; $5670: $e1
	reti                                             ; $5671: $d9


	rra                                              ; $5672: $1f
	db $dd                                           ; $5673: $dd
	ld a, [hl]                                       ; $5674: $7e
	db $dd                                           ; $5675: $dd
	ld a, a                                          ; $5676: $7f
	db $dd                                           ; $5677: $dd
	add c                                            ; $5678: $81
	db $dd                                           ; $5679: $dd
	add b                                            ; $567a: $80
	sbc [hl]                                         ; $567b: $9e
	ld [bc], a                                       ; $567c: $02
	sbc $03                                          ; $567d: $de $03

jr_021_567f:
	db $dd                                           ; $567f: $dd
	ld bc, $ffd9                                     ; $5680: $01 $d9 $ff
	reti                                             ; $5683: $d9


	ld bc, $ffd9                                     ; $5684: $01 $d9 $ff
	sbc $87                                          ; $5687: $de $87
	sbc d                                            ; $5689: $9a
	add d                                            ; $568a: $82
	add [hl]                                         ; $568b: $86
	adc d                                            ; $568c: $8a
	add [hl]                                         ; $568d: $86
	adc d                                            ; $568e: $8a
	sbc $f8                                          ; $568f: $de $f8
	sbc b                                            ; $5691: $98
	db $fd                                           ; $5692: $fd
	ld sp, hl                                        ; $5693: $f9
	push af                                          ; $5694: $f5
	ld sp, hl                                        ; $5695: $f9
	push af                                          ; $5696: $f5
	inc e                                            ; $5697: $1c
	ld e, $db                                        ; $5698: $1e $db
	ld a, $9d                                        ; $569a: $3e $9d
	db $e3                                           ; $569c: $e3
	pop hl                                           ; $569d: $e1
	db $db                                           ; $569e: $db
	pop bc                                           ; $569f: $c1
	rst SubAFromDE                                          ; $56a0: $df
	scf                                              ; $56a1: $37
	db $db                                           ; $56a2: $db
	ld [hl], e                                       ; $56a3: $73
	rst SubAFromDE                                          ; $56a4: $df
	ld hl, sp-$25                                    ; $56a5: $f8 $db
	db $fc                                           ; $56a7: $fc
	rst SubAFromDE                                          ; $56a8: $df
	ld l, $de                                        ; $56a9: $2e $de
	ld c, $9c                                        ; $56ab: $0e $9c
	ld a, $3a                                        ; $56ad: $3e $3a
	ld a, [hl-]                                      ; $56af: $3a
	call c, $deff                                    ; $56b0: $dc $ff $de
	rst GetHLinHL                                          ; $56b3: $cf
	sbc [hl]                                         ; $56b4: $9e
	ld e, $da                                        ; $56b5: $1e $da
	ld c, $d9                                        ; $56b7: $0e $d9
	rst $38                                          ; $56b9: $ff
	rlca                                             ; $56ba: $07
	nop                                              ; $56bb: $00
	ld a, [$069c]                                    ; $56bc: $fa $9c $06
	ld h, [hl]                                       ; $56bf: $66
	ld h, [hl]                                       ; $56c0: $66
	db $e4                                           ; $56c1: $e4
	add e                                            ; $56c2: $83
	ldh [$7d], a                                     ; $56c3: $e0 $7d
	sbc $01                                          ; $56c5: $de $01
	sbc [hl]                                         ; $56c7: $9e
	ld [bc], a                                       ; $56c8: $02
	ld l, e                                          ; $56c9: $6b
	ld hl, sp-$7c                                    ; $56ca: $f8 $84
	inc bc                                           ; $56cc: $03
	ld a, b                                          ; $56cd: $78
	add a                                            ; $56ce: $87
	add d                                            ; $56cf: $82
	jp nz, $f474                                     ; $56d0: $c2 $74 $f4

	db $f4                                           ; $56d3: $f4
	or $7f                                           ; $56d4: $f6 $7f
	rst $38                                          ; $56d6: $ff
	rst $38                                          ; $56d7: $ff
	cp a                                             ; $56d8: $bf
	adc a                                            ; $56d9: $8f
	rrca                                             ; $56da: $0f
	rrca                                             ; $56db: $0f
	dec c                                            ; $56dc: $0d
	rlca                                             ; $56dd: $07
	di                                               ; $56de: $f3
	rrca                                             ; $56df: $0f
	inc b                                            ; $56e0: $04
	inc b                                            ; $56e1: $04
	inc c                                            ; $56e2: $0c
	ld [$f808], sp                                   ; $56e3: $08 $08 $f8
	db $fc                                           ; $56e6: $fc
	db $db                                           ; $56e7: $db
	rst $38                                          ; $56e8: $ff
	rst SubAFromDE                                          ; $56e9: $df
	ldh a, [$9d]                                     ; $56ea: $f0 $9d
	rst $38                                          ; $56ec: $ff
	ccf                                              ; $56ed: $3f
	db $dd                                           ; $56ee: $dd
	inc c                                            ; $56ef: $0c
	rst SubAFromDE                                          ; $56f0: $df
	rrca                                             ; $56f1: $0f
	db $db                                           ; $56f2: $db
	rst $38                                          ; $56f3: $ff
	sub a                                            ; $56f4: $97
	nop                                              ; $56f5: $00
	rlca                                             ; $56f6: $07
	rst $38                                          ; $56f7: $ff
	rst GetHLinHL                                          ; $56f8: $cf
	inc bc                                           ; $56f9: $03
	inc bc                                           ; $56fa: $03
	ld bc, $d901                                     ; $56fb: $01 $01 $d9
	rst $38                                          ; $56fe: $ff
	sub l                                            ; $56ff: $95
	ld a, e                                          ; $5700: $7b
	db $fd                                           ; $5701: $fd
	sbc [hl]                                         ; $5702: $9e
	rrca                                             ; $5703: $0f
	rrca                                             ; $5704: $0f
	rlca                                             ; $5705: $07
	inc bc                                           ; $5706: $03
	add e                                            ; $5707: $83
	db $fc                                           ; $5708: $fc
	cp $6b                                           ; $5709: $fe $6b
	ret nc                                           ; $570b: $d0

	sbc [hl]                                         ; $570c: $9e
	ldh [$7b], a                                     ; $570d: $e0 $7b
	xor c                                            ; $570f: $a9
	sbc d                                            ; $5710: $9a
	add c                                            ; $5711: $81
	pop bc                                           ; $5712: $c1
	pop hl                                           ; $5713: $e1
	rrca                                             ; $5714: $0f
	rra                                              ; $5715: $1f
	db $db                                           ; $5716: $db
	rst $38                                          ; $5717: $ff
	sbc $89                                          ; $5718: $de $89
	call c, $d909                                    ; $571a: $dc $09 $d9
	or $dd                                           ; $571d: $f6 $dd
	ld c, $dd                                        ; $571f: $0e $dd
	adc [hl]                                         ; $5721: $8e
	db $dd                                           ; $5722: $dd
	pop af                                           ; $5723: $f1
	db $dd                                           ; $5724: $dd
	ld [hl], c                                       ; $5725: $71
	sbc e                                            ; $5726: $9b
	halt                                             ; $5727: $76
	or [hl]                                          ; $5728: $b6
	halt                                             ; $5729: $76
	or a                                             ; $572a: $b7
	sbc $77                                          ; $572b: $de $77
	sbc [hl]                                         ; $572d: $9e
	ld l, a                                          ; $572e: $6f
	jp c, $9bf9                                      ; $572f: $da $f9 $9b

	pop af                                           ; $5732: $f1
	ld a, [hl-]                                      ; $5733: $3a
	jr nc, jr_021_576e                               ; $5734: $30 $38

	ld a, e                                          ; $5736: $7b
	cp $9d                                           ; $5737: $fe $9d
	jr z, jr_021_576c                                ; $5739: $28 $31

	reti                                             ; $573b: $d9


	rst $38                                          ; $573c: $ff
	sbc h                                            ; $573d: $9c
	sbc a                                            ; $573e: $9f
	sub a                                            ; $573f: $97
	sub a                                            ; $5740: $97

jr_021_5741:
	sbc $93                                          ; $5741: $de $93
	rst SubAFromDE                                          ; $5743: $df
	ret nc                                           ; $5744: $d0

	reti                                             ; $5745: $d9


	rst $38                                          ; $5746: $ff
	ldh [hLCDCIntHandlerIdx], a                                     ; $5747: $e0 $81
	rst SubAFromDE                                          ; $5749: $df
	inc bc                                           ; $574a: $03
	sub [hl]                                         ; $574b: $96
	dec b                                            ; $574c: $05
	rlca                                             ; $574d: $07
	rlca                                             ; $574e: $07
	dec bc                                           ; $574f: $0b
	rrca                                             ; $5750: $0f
	rrca                                             ; $5751: $0f
	ld [bc], a                                       ; $5752: $02
	ld [bc], a                                       ; $5753: $02
	ld b, $72                                        ; $5754: $06 $72
	ret c                                            ; $5756: $d8

	sub l                                            ; $5757: $95
	ld a, [$efea]                                    ; $5758: $fa $ea $ef
	rst FarCall                                          ; $575b: $f7
	rst FarCall                                          ; $575c: $f7
	rst SubAFromDE                                          ; $575d: $df
	rst AddAOntoHL                                          ; $575e: $ef
	rst AddAOntoHL                                          ; $575f: $ef
	dec c                                            ; $5760: $0d
	dec e                                            ; $5761: $1d
	sbc $18                                          ; $5762: $de $18
	sbc $30                                          ; $5764: $de $30
	sbc e                                            ; $5766: $9b
	ld a, [bc]                                       ; $5767: $0a
	ld d, $17                                        ; $5768: $16 $17
	rla                                              ; $576a: $17
	db $dd                                           ; $576b: $dd

jr_021_576c:
	rra                                              ; $576c: $1f
	sbc e                                            ; $576d: $9b

jr_021_576e:
	db $fd                                           ; $576e: $fd
	ld sp, hl                                        ; $576f: $f9
	ld hl, sp-$08                                    ; $5770: $f8 $f8
	db $dd                                           ; $5772: $dd
	ldh a, [$df]                                     ; $5773: $f0 $df
	inc b                                            ; $5775: $04
	db $db                                           ; $5776: $db
	dec b                                            ; $5777: $05
	rst SubAFromDE                                          ; $5778: $df
	rst $38                                          ; $5779: $ff
	db $db                                           ; $577a: $db
	cp $df                                           ; $577b: $fe $df
	ld bc, $009e                                     ; $577d: $01 $9e $00
	sbc $80                                          ; $5780: $de $80
	rst SubAFromDE                                          ; $5782: $df
	ret nz                                           ; $5783: $c0

	sbc $ff                                          ; $5784: $de $ff
	sbc $7f                                          ; $5786: $de $7f
	rst SubAFromDE                                          ; $5788: $df
	ccf                                              ; $5789: $3f
	sbc [hl]                                         ; $578a: $9e
	add c                                            ; $578b: $81
	call c, $7380                                    ; $578c: $dc $80 $73
	ldh a, [$dc]                                     ; $578f: $f0 $dc
	rst $38                                          ; $5791: $ff
	sbc h                                            ; $5792: $9c
	pop af                                           ; $5793: $f1
	ld sp, hl                                        ; $5794: $f9
	ld a, l                                          ; $5795: $7d
	ld a, e                                          ; $5796: $7b
	ld [$1fdf], a                                    ; $5797: $ea $df $1f
	reti                                             ; $579a: $d9


	rst $38                                          ; $579b: $ff
	sbc [hl]                                         ; $579c: $9e
	add hl, bc                                       ; $579d: $09
	sbc $08                                          ; $579e: $de $08
	db $dd                                           ; $57a0: $dd
	jr jr_021_5741                                   ; $57a1: $18 $9e

	or $de                                           ; $57a3: $f6 $de
	rst FarCall                                          ; $57a5: $f7
	db $dd                                           ; $57a6: $dd
	rst SubAFromBC                                          ; $57a7: $e7
	rst SubAFromDE                                          ; $57a8: $df
	add [hl]                                         ; $57a9: $86
	adc a                                            ; $57aa: $8f
	add a                                            ; $57ab: $87
	rst JumpTable                                          ; $57ac: $c7
	rst JumpTable                                          ; $57ad: $c7
	add $c4                                          ; $57ae: $c6 $c4
	ldh [c], a                                       ; $57b0: $e2
	ld a, c                                          ; $57b1: $79
	ld a, c                                          ; $57b2: $79
	ld a, b                                          ; $57b3: $78
	jr c, jr_021_57ee                                ; $57b4: $38 $38

	add hl, sp                                       ; $57b6: $39
	dec sp                                           ; $57b7: $3b
	dec e                                            ; $57b8: $1d
	ld l, [hl]                                       ; $57b9: $6e
	xor $de                                          ; $57ba: $ee $de
	db $ec                                           ; $57bc: $ec
	sbc d                                            ; $57bd: $9a
	call z, Call_021_5cdc                            ; $57be: $cc $dc $5c
	pop af                                           ; $57c1: $f1
	ld [hl], c                                       ; $57c2: $71
	db $dd                                           ; $57c3: $dd
	ld [hl], e                                       ; $57c4: $73
	sbc c                                            ; $57c5: $99
	ld h, e                                          ; $57c6: $63
	db $e3                                           ; $57c7: $e3
	xor c                                            ; $57c8: $a9
	pop af                                           ; $57c9: $f1
	jp hl                                            ; $57ca: $e9


	pop af                                           ; $57cb: $f1
	db $dd                                           ; $57cc: $dd
	pop hl                                           ; $57cd: $e1
	reti                                             ; $57ce: $d9


	rst $38                                          ; $57cf: $ff
	sbc $d0                                          ; $57d0: $de $d0

jr_021_57d2:
	sbc [hl]                                         ; $57d2: $9e
	ret nz                                           ; $57d3: $c0

	db $dd                                           ; $57d4: $dd
	call nz, $c002                                   ; $57d5: $c4 $02 $c0
	ldh [$9a], a                                     ; $57d8: $e0 $9a
	ld a, d                                          ; $57da: $7a
	db $e3                                           ; $57db: $e3
	adc c                                            ; $57dc: $89
	cpl                                              ; $57dd: $2f
	ccf                                              ; $57de: $3f
	ccf                                              ; $57df: $3f
	ld e, a                                          ; $57e0: $5f
	ld a, a                                          ; $57e1: $7f
	jr jr_021_57f4                                   ; $57e2: $18 $10

	db $10                                           ; $57e4: $10
	jr nc, jr_021_5807                               ; $57e5: $30 $20

	jr nz, jr_021_5849                               ; $57e7: $20 $60

	ld b, b                                          ; $57e9: $40
	rst $38                                          ; $57ea: $ff
	cp a                                             ; $57eb: $bf
	rst SubAFromDE                                          ; $57ec: $df
	rst SubAFromDE                                          ; $57ed: $df

jr_021_57ee:
	rst $38                                          ; $57ee: $ff
	ld a, a                                          ; $57ef: $7f
	cp a                                             ; $57f0: $bf
	cp a                                             ; $57f1: $bf
	jr nz, jr_021_57d2                               ; $57f2: $20 $de

jr_021_57f4:
	ld h, b                                          ; $57f4: $60
	sbc [hl]                                         ; $57f5: $9e
	ld b, b                                          ; $57f6: $40
	sbc $c0                                          ; $57f7: $de $c0
	db $dd                                           ; $57f9: $dd
	rra                                              ; $57fa: $1f
	rst SubAFromDE                                          ; $57fb: $df
	cpl                                              ; $57fc: $2f
	rst SubAFromDE                                          ; $57fd: $df
	ccf                                              ; $57fe: $3f
	db $db                                           ; $57ff: $db
	ldh a, [$df]                                     ; $5800: $f0 $df

jr_021_5802:
	ldh [$9c], a                                     ; $5802: $e0 $9c
	dec b                                            ; $5804: $05
	add h                                            ; $5805: $84
	add [hl]                                         ; $5806: $86

jr_021_5807:
	call c, $9e82                                    ; $5807: $dc $82 $9e
	cp $da                                           ; $580a: $fe $da
	ld a, a                                          ; $580c: $7f
	db $dd                                           ; $580d: $dd
	ret nz                                           ; $580e: $c0

	db $dd                                           ; $580f: $dd
	ldh [$dd], a                                     ; $5810: $e0 $dd
	ccf                                              ; $5812: $3f
	db $dd                                           ; $5813: $dd
	rra                                              ; $5814: $1f
	sbc [hl]                                         ; $5815: $9e
	ret nz                                           ; $5816: $c0

	call c, $df40                                    ; $5817: $dc $40 $df
	ld h, b                                          ; $581a: $60
	reti                                             ; $581b: $d9


	rst $38                                          ; $581c: $ff
	sbc $0f                                          ; $581d: $de $0f
	sbc $07                                          ; $581f: $de $07
	rst SubAFromDE                                          ; $5821: $df
	inc bc                                           ; $5822: $03
	reti                                             ; $5823: $d9


	rst $38                                          ; $5824: $ff
	sbc [hl]                                         ; $5825: $9e
	jr jr_021_5802                                   ; $5826: $18 $da

	add hl, de                                       ; $5828: $19
	sbc [hl]                                         ; $5829: $9e
	rst SubAFromBC                                          ; $582a: $e7
	jp c, $83e6                                      ; $582b: $da $e6 $83

	push hl                                          ; $582e: $e5
	ldh [c], a                                       ; $582f: $e2
	db $e4                                           ; $5830: $e4
	ldh [c], a                                       ; $5831: $e2
	call nz, $84c2                                   ; $5832: $c4 $c2 $84
	add d                                            ; $5835: $82
	ld a, [de]                                       ; $5836: $1a
	dec e                                            ; $5837: $1d
	dec de                                           ; $5838: $1b
	dec e                                            ; $5839: $1d
	dec sp                                           ; $583a: $3b
	dec a                                            ; $583b: $3d
	ld a, e                                          ; $583c: $7b
	ld a, l                                          ; $583d: $7d
	ld e, h                                          ; $583e: $5c
	call c, Call_021_5ede                            ; $583f: $dc $de $5e
	ld c, [hl]                                       ; $5842: $4e
	ld l, [hl]                                       ; $5843: $6e
	ld l, $2e                                        ; $5844: $2e $2e
	db $e3                                           ; $5846: $e3
	db $e3                                           ; $5847: $e3
	pop hl                                           ; $5848: $e1

jr_021_5849:
	pop hl                                           ; $5849: $e1
	db $dd                                           ; $584a: $dd
	pop af                                           ; $584b: $f1
	sbc d                                            ; $584c: $9a
	db $eb                                           ; $584d: $eb
	push af                                          ; $584e: $f5
	ei                                               ; $584f: $fb
	push af                                          ; $5850: $f5
	ei                                               ; $5851: $fb
	sub $ff                                          ; $5852: $d6 $ff
	jp c, $9ec4                                      ; $5854: $da $c4 $9e

	add $02                                          ; $5857: $c6 $02
	ret nz                                           ; $5859: $c0

	ldh [$b9], a                                     ; $585a: $e0 $b9
	jr z, jr_021_58ad                                ; $585c: $28 $4f

	ld h, a                                          ; $585e: $67
	ld hl, sp-$64                                    ; $585f: $f8 $9c
	ld a, a                                          ; $5861: $7f
	ld a, [hl]                                       ; $5862: $7e
	cp a                                             ; $5863: $bf
	ld a, c                                          ; $5864: $79
	add $9a                                          ; $5865: $c6 $9a
	rst $38                                          ; $5867: $ff
	db $fd                                           ; $5868: $fd
	ld b, b                                          ; $5869: $40
	ld b, c                                          ; $586a: $41
	pop bc                                           ; $586b: $c1
	sbc $81                                          ; $586c: $de $81
	ld a, h                                          ; $586e: $7c
	ld b, b                                          ; $586f: $40
	sbc l                                            ; $5870: $9d
	cp a                                             ; $5871: $bf
	cp $de                                           ; $5872: $fe $de
	ld a, [hl]                                       ; $5874: $7e

jr_021_5875:
	sbc $fe                                          ; $5875: $de $fe
	sbc [hl]                                         ; $5877: $9e
	ret nz                                           ; $5878: $c0

	db $dd                                           ; $5879: $dd
	add c                                            ; $587a: $81
	sbc $01                                          ; $587b: $de $01
	jp c, $9e3f                                      ; $587d: $da $3f $9e

	ld e, a                                          ; $5880: $5f
	reti                                             ; $5881: $d9


	ldh [$dd], a                                     ; $5882: $e0 $dd
	add d                                            ; $5884: $82
	db $dd                                           ; $5885: $dd
	jp nz, Jump_021_7fdd                             ; $5886: $c2 $dd $7f

	db $dd                                           ; $5889: $dd
	ccf                                              ; $588a: $3f
	sbc $e0                                          ; $588b: $de $e0
	db $dd                                           ; $588d: $dd
	ldh a, [$9e]                                     ; $588e: $f0 $9e
	ld [hl], b                                       ; $5890: $70
	sbc $1f                                          ; $5891: $de $1f
	db $dd                                           ; $5893: $dd
	rrca                                             ; $5894: $0f
	sbc [hl]                                         ; $5895: $9e
	adc a                                            ; $5896: $8f
	call c, $de20                                    ; $5897: $dc $20 $de
	jr nc, jr_021_5875                               ; $589a: $30 $d9

	rst $38                                          ; $589c: $ff
	ld a, b                                          ; $589d: $78
	dec h                                            ; $589e: $25
	ld [hl], e                                       ; $589f: $73
	sub d                                            ; $58a0: $92
	reti                                             ; $58a1: $d9


	rst $38                                          ; $58a2: $ff
	sbc $19                                          ; $58a3: $de $19
	sbc l                                            ; $58a5: $9d
	sbc c                                            ; $58a6: $99
	adc e                                            ; $58a7: $8b
	sbc $8f                                          ; $58a8: $de $8f
	db $dd                                           ; $58aa: $dd
	and $9e                                          ; $58ab: $e6 $9e

jr_021_58ad:
	db $f4                                           ; $58ad: $f4
	sbc $f0                                          ; $58ae: $de $f0
	adc a                                            ; $58b0: $8f
	add l                                            ; $58b1: $85
	adc d                                            ; $58b2: $8a
	add h                                            ; $58b3: $84
	adc d                                            ; $58b4: $8a
	add l                                            ; $58b5: $85
	adc d                                            ; $58b6: $8a
	dec b                                            ; $58b7: $05
	ld a, [bc]                                       ; $58b8: $0a
	ld a, d                                          ; $58b9: $7a
	ld [hl], l                                       ; $58ba: $75
	ld a, e                                          ; $58bb: $7b

jr_021_58bc:
	ld [hl], l                                       ; $58bc: $75
	ld a, d                                          ; $58bd: $7a
	ld [hl], l                                       ; $58be: $75
	ld a, [$daf5]                                    ; $58bf: $fa $f5 $da
	ld l, $9e                                        ; $58c2: $2e $9e
	ld c, $d9                                        ; $58c4: $0e $d9
	pop af                                           ; $58c6: $f1
	db $db                                           ; $58c7: $db
	ld a, a                                          ; $58c8: $7f
	sbc l                                            ; $58c9: $9d
	ld [hl], l                                       ; $58ca: $75
	ld l, e                                          ; $58cb: $6b
	reti                                             ; $58cc: $d9


	rst $38                                          ; $58cd: $ff
	rst SubAFromDE                                          ; $58ce: $df
	add $99                                          ; $58cf: $c6 $99
	add [hl]                                         ; $58d1: $86
	adc [hl]                                         ; $58d2: $8e
	adc [hl]                                         ; $58d3: $8e
	ld c, $0e                                        ; $58d4: $0e $0e
	rrca                                             ; $58d6: $0f
	ld [bc], a                                       ; $58d7: $02
	ret nz                                           ; $58d8: $c0

	ldh [$aa], a                                     ; $58d9: $e0 $aa
	sbc [hl]                                         ; $58db: $9e
	ld [bc], a                                       ; $58dc: $02
	sbc $03                                          ; $58dd: $de $03
	ld a, b                                          ; $58df: $78
	ld c, [hl]                                       ; $58e0: $4e
	ld a, l                                          ; $58e1: $7d
	xor $de                                          ; $58e2: $ee $de
	ld [bc], a                                       ; $58e4: $02
	ld a, b                                          ; $58e5: $78
	ld c, [hl]                                       ; $58e6: $4e
	sbc d                                            ; $58e7: $9a
	inc b                                            ; $58e8: $04
	cp $fe                                           ; $58e9: $fe $fe
	rst $38                                          ; $58eb: $ff
	ei                                               ; $58ec: $fb
	sbc $fd                                          ; $58ed: $de $fd
	ld a, a                                          ; $58ef: $7f
	jr jr_021_5971                                   ; $58f0: $18 $7f

	rst AddAOntoHL                                          ; $58f2: $ef
	db $dd                                           ; $58f3: $dd
	ld b, $7b                                        ; $58f4: $06 $7b
	ldh a, [$dc]                                     ; $58f6: $f0 $dc
	cp $9e                                           ; $58f8: $fe $9e
	db $fc                                           ; $58fa: $fc
	jp c, $9c01                                      ; $58fb: $da $01 $9c

	inc bc                                           ; $58fe: $03
	ld e, a                                          ; $58ff: $5f
	ld e, a                                          ; $5900: $5f
	db $db                                           ; $5901: $db
	ld a, a                                          ; $5902: $7f
	rst SubAFromDE                                          ; $5903: $df
	ldh [$db], a                                     ; $5904: $e0 $db
	ret nz                                           ; $5906: $c0

	sbc $c2                                          ; $5907: $de $c2
	sbc [hl]                                         ; $5909: $9e
	jp $c1dd                                         ; $590a: $c3 $dd $c1


	reti                                             ; $590d: $d9


	ccf                                              ; $590e: $3f
	sbc [hl]                                         ; $590f: $9e
	ld [hl], b                                       ; $5910: $70
	jp c, $9e78                                      ; $5911: $da $78 $9e

	adc a                                            ; $5914: $8f
	jp c, $9e87                                      ; $5915: $da $87 $9e

	jr nc, @-$21                                     ; $5918: $30 $dd

	db $10                                           ; $591a: $10
	rst SubAFromDE                                          ; $591b: $df
	jr jr_021_58bc                                   ; $591c: $18 $9e

	ld [$2063], sp                                   ; $591e: $08 $63 $20
	ld l, d                                          ; $5921: $6a
	ld d, l                                          ; $5922: $55
	reti                                             ; $5923: $d9


	rst $38                                          ; $5924: $ff
	reti                                             ; $5925: $d9


	adc a                                            ; $5926: $8f
	reti                                             ; $5927: $d9


	ldh a, [$7e]                                     ; $5928: $f0 $7e
	add $7f                                          ; $592a: $c6 $7f
	cp $91                                           ; $592c: $fe $91
	add hl, bc                                       ; $592e: $09
	ld a, [bc]                                       ; $592f: $0a

jr_021_5930:
	add hl, bc                                       ; $5930: $09
	ld [$f5fa], sp                                   ; $5931: $08 $fa $f5
	ld a, [$f6f5]                                    ; $5934: $fa $f5 $f6
	push af                                          ; $5937: $f5
	or $f7                                           ; $5938: $f6 $f7
	ld c, $8e                                        ; $593a: $0e $8e
	ld a, e                                          ; $593c: $7b
	cp $de                                           ; $593d: $fe $de
	ld c, $7c                                        ; $593f: $0e $7c
	ld b, b                                          ; $5941: $40
	ld a, e                                          ; $5942: $7b
	cp $de                                           ; $5943: $fe $de
	pop af                                           ; $5945: $f1
	sub a                                            ; $5946: $97
	ld [hl], a                                       ; $5947: $77
	ld l, e                                          ; $5948: $6b
	dec [hl]                                         ; $5949: $35
	ld a, [hl+]                                      ; $594a: $2a
	inc [hl]                                         ; $594b: $34
	ld a, [hl+]                                      ; $594c: $2a
	inc d                                            ; $594d: $14
	ld a, [hl+]                                      ; $594e: $2a
	ld h, c                                          ; $594f: $61
	jr nc, jr_021_5930                               ; $5950: $30 $de

jr_021_5952:
	dec c                                            ; $5952: $0d
	sbc $0c                                          ; $5953: $de $0c
	sbc [hl]                                         ; $5955: $9e
	inc e                                            ; $5956: $1c
	ld [bc], a                                       ; $5957: $02
	ret nz                                           ; $5958: $c0

	ldh [$aa], a                                     ; $5959: $e0 $aa
	sbc l                                            ; $595b: $9d
	rlca                                             ; $595c: $07
	dec bc                                           ; $595d: $0b
	db $dd                                           ; $595e: $dd
	rrca                                             ; $595f: $0f
	ld a, h                                          ; $5960: $7c
	ld c, d                                          ; $5961: $4a
	sbc l                                            ; $5962: $9d
	inc b                                            ; $5963: $04
	inc c                                            ; $5964: $0c
	db $dd                                           ; $5965: $dd
	ld [$4a7c], sp                                   ; $5966: $08 $7c $4a
	sbc [hl]                                         ; $5969: $9e
	rst FarCall                                          ; $596a: $f7
	sbc $fb                                          ; $596b: $de $fb
	rst SubAFromDE                                          ; $596d: $df
	rst $38                                          ; $596e: $ff
	sbc l                                            ; $596f: $9d
	rst AddAOntoHL                                          ; $5970: $ef

jr_021_5971:
	rst FarCall                                          ; $5971: $f7
	db $dd                                           ; $5972: $dd
	inc c                                            ; $5973: $0c
	ld a, e                                          ; $5974: $7b
	ldh a, [$9e]                                     ; $5975: $f0 $9e
	jr jr_021_5952                                   ; $5977: $18 $d9

	db $fc                                           ; $5979: $fc
	reti                                             ; $597a: $d9


	inc bc                                           ; $597b: $03
	db $db                                           ; $597c: $db
	ld a, a                                          ; $597d: $7f
	rst SubAFromDE                                          ; $597e: $df
	cp a                                             ; $597f: $bf
	reti                                             ; $5980: $d9


	ret nz                                           ; $5981: $c0

	reti                                             ; $5982: $d9


	pop bc                                           ; $5983: $c1
	reti                                             ; $5984: $d9


	ccf                                              ; $5985: $3f
	sbc [hl]                                         ; $5986: $9e
	ld a, b                                          ; $5987: $78
	jp c, $9e7c                                      ; $5988: $da $7c $9e

	add a                                            ; $598b: $87
	jp c, $de83                                      ; $598c: $da $83 $de

	ld [$0cdf], sp                                   ; $598f: $08 $df $0c
	sbc $04                                          ; $5992: $de $04
	ld b, a                                          ; $5994: $47
	jr nz, jr_021_59e9                               ; $5995: $20 $52

	ret nz                                           ; $5997: $c0

	sbc $87                                          ; $5998: $de $87
	call c, $def0                                    ; $599a: $dc $f0 $de
	ld hl, sp+$7e                                    ; $599d: $f8 $7e
	add $7b                                          ; $599f: $c6 $7b
	ret nc                                           ; $59a1: $d0

	ld a, e                                          ; $59a2: $7b
	add a                                            ; $59a3: $87
	ld a, [hl]                                       ; $59a4: $7e
	add $97                                          ; $59a5: $c6 $97
	rst FarCall                                          ; $59a7: $f7
	di                                               ; $59a8: $f3
	di                                               ; $59a9: $f3
	rst FarCall                                          ; $59aa: $f7
	rst FarCall                                          ; $59ab: $f7
	rst SubAFromBC                                          ; $59ac: $e7
	ld c, $4e                                        ; $59ad: $0e $4e
	sbc $5f                                          ; $59af: $de $5f
	rst SubAFromDE                                          ; $59b1: $df
	ld a, a                                          ; $59b2: $7f
	sbc h                                            ; $59b3: $9c

jr_021_59b4:
	rst $38                                          ; $59b4: $ff
	pop af                                           ; $59b5: $f1
	pop af                                           ; $59b6: $f1
	db $db                                           ; $59b7: $db
	ldh [$7e], a                                     ; $59b8: $e0 $7e
	add $99                                          ; $59ba: $c6 $99
	ld d, $1a                                        ; $59bc: $16 $1a
	ld d, $1e                                        ; $59be: $16 $1e
	ld l, $2e                                        ; $59c0: $2e $2e
	reti                                             ; $59c2: $d9


	rst $38                                          ; $59c3: $ff
	reti                                             ; $59c4: $d9


	inc e                                            ; $59c5: $1c
	ld [bc], a                                       ; $59c6: $02
	ret nz                                           ; $59c7: $c0

	ldh [$aa], a                                     ; $59c8: $e0 $aa
	rst SubAFromDE                                          ; $59ca: $df
	rra                                              ; $59cb: $1f
	sbc [hl]                                         ; $59cc: $9e
	cpl                                              ; $59cd: $2f
	ld [hl], h                                       ; $59ce: $74
	ld [hl], c                                       ; $59cf: $71
	sbc e                                            ; $59d0: $9b
	ld a, a                                          ; $59d1: $7f
	db $10                                           ; $59d2: $10
	db $10                                           ; $59d3: $10
	jr nc, jr_021_59b4                               ; $59d4: $30 $de

	jr nz, jr_021_5971                               ; $59d6: $20 $99

	ld h, b                                          ; $59d8: $60
	ld b, b                                          ; $59d9: $40
	rst FarCall                                          ; $59da: $f7
	rst FarCall                                          ; $59db: $f7
	rst $38                                          ; $59dc: $ff
	rst SubAFromDE                                          ; $59dd: $df
	db $dd                                           ; $59de: $dd
	rst AddAOntoHL                                          ; $59df: $ef
	rst SubAFromDE                                          ; $59e0: $df
	jr jr_021_5a62                                   ; $59e1: $18 $7f

	rst AddAOntoHL                                          ; $59e3: $ef
	db $dd                                           ; $59e4: $dd
	jr nc, @-$24                                     ; $59e5: $30 $da

	db $fc                                           ; $59e7: $fc
	sbc [hl]                                         ; $59e8: $9e

jr_021_59e9:
	ld hl, sp-$26                                    ; $59e9: $f8 $da
	inc bc                                           ; $59eb: $03
	sbc [hl]                                         ; $59ec: $9e
	rlca                                             ; $59ed: $07
	ld a, b                                          ; $59ee: $78
	ld [hl+], a                                      ; $59ef: $22
	call c, $9eff                                    ; $59f0: $dc $ff $9e
	ret nz                                           ; $59f3: $c0

jr_021_59f4:
	jp c, $df80                                      ; $59f4: $da $80 $df

	pop bc                                           ; $59f7: $c1
	db $db                                           ; $59f8: $db
	pop hl                                           ; $59f9: $e1
	rst SubAFromDE                                          ; $59fa: $df
	ccf                                              ; $59fb: $3f
	db $db                                           ; $59fc: $db
	rra                                              ; $59fd: $1f
	sbc [hl]                                         ; $59fe: $9e
	ld a, h                                          ; $59ff: $7c
	jp c, $9e7e                                      ; $5a00: $da $7e $9e

	add e                                            ; $5a03: $83
	jp c, $9c81                                      ; $5a04: $da $81 $9c

	inc b                                            ; $5a07: $04
	ld b, $06                                        ; $5a08: $06 $06
	call c, Call_021_5f02                            ; $5a0a: $dc $02 $5f
	jr nz, @-$23                                     ; $5a0d: $20 $db

	ld bc, $ffd9                                     ; $5a0f: $01 $d9 $ff
	reti                                             ; $5a12: $d9


	add a                                            ; $5a13: $87
	reti                                             ; $5a14: $d9


	ld hl, sp-$21                                    ; $5a15: $f8 $df
	jr jr_021_59f4                                   ; $5a17: $18 $db

	inc e                                            ; $5a19: $1c
	rst SubAFromDE                                          ; $5a1a: $df
	rst SubAFromBC                                          ; $5a1b: $e7
	db $db                                           ; $5a1c: $db
	db $e3                                           ; $5a1d: $e3
	sbc $ef                                          ; $5a1e: $de $ef
	sbc l                                            ; $5a20: $9d
	ld l, a                                          ; $5a21: $6f
	ld a, a                                          ; $5a22: $7f
	sbc $77                                          ; $5a23: $de $77
	ld h, [hl]                                       ; $5a25: $66
	and b                                            ; $5a26: $a0
	db $dd                                           ; $5a27: $dd
	ld l, $9e                                        ; $5a28: $2e $9e
	ld h, $de                                        ; $5a2a: $26 $de
	ld l, $62                                        ; $5a2c: $2e $62
	ret nz                                           ; $5a2e: $c0

	jp c, $021e                                      ; $5a2f: $da $1e $02

	ret nz                                           ; $5a32: $c0

	ldh [$b4], a                                     ; $5a33: $e0 $b4
	ld l, b                                          ; $5a35: $68
	cp e                                             ; $5a36: $bb
	ld a, e                                          ; $5a37: $7b
	ld hl, sp+$79                                    ; $5a38: $f8 $79
	or h                                             ; $5a3a: $b4
	sbc $ff                                          ; $5a3b: $de $ff
	ld a, [hl]                                       ; $5a3d: $7e
	jr nz, @-$1f                                     ; $5a3e: $20 $df

	ld b, b                                          ; $5a40: $40
	ld [hl], d                                       ; $5a41: $72
	xor $79                                          ; $5a42: $ee $79
	add sp, -$62                                     ; $5a44: $e8 $9e
	cp a                                             ; $5a46: $bf
	sbc $df                                          ; $5a47: $de $df
	sbc l                                            ; $5a49: $9d
	sbc a                                            ; $5a4a: $9f
	rst $38                                          ; $5a4b: $ff
	ld a, d                                          ; $5a4c: $7a
	or h                                             ; $5a4d: $b4
	db $dd                                           ; $5a4e: $dd
	ld h, b                                          ; $5a4f: $60
	sbc [hl]                                         ; $5a50: $9e
	ld b, b                                          ; $5a51: $40
	db $db                                           ; $5a52: $db
	ld hl, sp-$21                                    ; $5a53: $f8 $df
	ld sp, hl                                        ; $5a55: $f9
	reti                                             ; $5a56: $d9


	rlca                                             ; $5a57: $07
	db $db                                           ; $5a58: $db
	rst $38                                          ; $5a59: $ff
	rst SubAFromDE                                          ; $5a5a: $df
	ld a, a                                          ; $5a5b: $7f
	reti                                             ; $5a5c: $d9


	add b                                            ; $5a5d: $80
	reti                                             ; $5a5e: $d9


	pop hl                                           ; $5a5f: $e1
	reti                                             ; $5a60: $d9


	rra                                              ; $5a61: $1f

jr_021_5a62:
	db $dd                                           ; $5a62: $dd
	ld a, [hl]                                       ; $5a63: $7e
	db $dd                                           ; $5a64: $dd
	ld a, a                                          ; $5a65: $7f
	db $dd                                           ; $5a66: $dd
	add c                                            ; $5a67: $81
	db $dd                                           ; $5a68: $dd
	add b                                            ; $5a69: $80
	sbc [hl]                                         ; $5a6a: $9e
	ld [bc], a                                       ; $5a6b: $02
	sbc $03                                          ; $5a6c: $de $03
	ld d, [hl]                                       ; $5a6e: $56
	ret nc                                           ; $5a6f: $d0

	reti                                             ; $5a70: $d9


	ld bc, $c05a                                     ; $5a71: $01 $5a $c0
	sbc d                                            ; $5a74: $9a
	add d                                            ; $5a75: $82

Jump_021_5a76:
	add [hl]                                         ; $5a76: $86
	adc d                                            ; $5a77: $8a
	add [hl]                                         ; $5a78: $86
	adc d                                            ; $5a79: $8a
	sbc $f8                                          ; $5a7a: $de $f8
	sbc b                                            ; $5a7c: $98
	db $fd                                           ; $5a7d: $fd
	ld sp, hl                                        ; $5a7e: $f9
	push af                                          ; $5a7f: $f5
	ld sp, hl                                        ; $5a80: $f9
	push af                                          ; $5a81: $f5
	inc e                                            ; $5a82: $1c
	ld e, $db                                        ; $5a83: $1e $db
	ld a, $9d                                        ; $5a85: $3e $9d
	db $e3                                           ; $5a87: $e3
	pop hl                                           ; $5a88: $e1
	db $db                                           ; $5a89: $db
	pop bc                                           ; $5a8a: $c1
	rst SubAFromDE                                          ; $5a8b: $df
	scf                                              ; $5a8c: $37
	db $db                                           ; $5a8d: $db
	ld [hl], e                                       ; $5a8e: $73
	rst SubAFromDE                                          ; $5a8f: $df
	ld hl, sp-$25                                    ; $5a90: $f8 $db
	db $fc                                           ; $5a92: $fc
	rst SubAFromDE                                          ; $5a93: $df
	ld l, $de                                        ; $5a94: $2e $de
	ld c, $9c                                        ; $5a96: $0e $9c
	ld a, $3a                                        ; $5a98: $3e $3a
	ld a, [hl-]                                      ; $5a9a: $3a
	call c, $deff                                    ; $5a9b: $dc $ff $de
	rst GetHLinHL                                          ; $5a9e: $cf
	sbc [hl]                                         ; $5a9f: $9e
	ld e, $da                                        ; $5aa0: $1e $da
	ld c, $d9                                        ; $5aa2: $0e $d9
	rst $38                                          ; $5aa4: $ff
	dec c                                            ; $5aa5: $0d
	nop                                              ; $5aa6: $00
	ld a, [$069c]                                    ; $5aa7: $fa $9c $06
	ld h, [hl]                                       ; $5aaa: $66
	ld h, [hl]                                       ; $5aab: $66
	inc bc                                           ; $5aac: $03
	or $03                                           ; $5aad: $f6 $03
	or $77                                           ; $5aaf: $f6 $77
	or $a8                                           ; $5ab1: $f6 $a8
	ld bc, $a1e0                                     ; $5ab3: $01 $e0 $a1
	db $dd                                           ; $5ab6: $dd
	ld bc, $029b                                     ; $5ab7: $01 $9b $02
	inc bc                                           ; $5aba: $03
	inc bc                                           ; $5abb: $03
	ld [bc], a                                       ; $5abc: $02
	ld l, a                                          ; $5abd: $6f
	cp $9b                                           ; $5abe: $fe $9b
	dec b                                            ; $5ac0: $05
	ld b, $ff                                        ; $5ac1: $06 $ff
	nop                                              ; $5ac3: $00
	ld c, e                                          ; $5ac4: $4b
	cp $9b                                           ; $5ac5: $fe $9b
	ld b, b                                          ; $5ac7: $40
	ld a, a                                          ; $5ac8: $7f
	ret nz                                           ; $5ac9: $c0

	cp a                                             ; $5aca: $bf
	ld h, e                                          ; $5acb: $63
	cp $9b                                           ; $5acc: $fe $9b
	rst $38                                          ; $5ace: $ff
	add b                                            ; $5acf: $80
	ld sp, hl                                        ; $5ad0: $f9
	rlca                                             ; $5ad1: $07
	ld e, a                                          ; $5ad2: $5f
	cp $99                                           ; $5ad3: $fe $99
	pop af                                           ; $5ad5: $f1
	rrca                                             ; $5ad6: $0f
	pop af                                           ; $5ad7: $f1
	rrca                                             ; $5ad8: $0f
	ld a, a                                          ; $5ad9: $7f
	add b                                            ; $5ada: $80
	ld h, a                                          ; $5adb: $67
	cp $6f                                           ; $5adc: $fe $6f
	ret nc                                           ; $5ade: $d0

	sbc l                                            ; $5adf: $9d
	pop hl                                           ; $5ae0: $e1
	rra                                              ; $5ae1: $1f
	ld e, a                                          ; $5ae2: $5f
	cp $9e                                           ; $5ae3: $fe $9e
	ldh [$7b], a                                     ; $5ae5: $e0 $7b
	cp $6f                                           ; $5ae7: $fe $6f
	db $e4                                           ; $5ae9: $e4
	sbc h                                            ; $5aea: $9c
	ccf                                              ; $5aeb: $3f
	ret nz                                           ; $5aec: $c0

	ccf                                              ; $5aed: $3f
	ld l, e                                          ; $5aee: $6b
	cp [hl]                                          ; $5aef: $be
	sbc l                                            ; $5af0: $9d
	ld bc, $57ff                                     ; $5af1: $01 $ff $57
	cp $7f                                           ; $5af4: $fe $7f
	rst GetHLinHL                                          ; $5af6: $cf
	ld l, a                                          ; $5af7: $6f
	ld hl, sp-$62                                    ; $5af8: $f8 $9e
	add c                                            ; $5afa: $81
	ld h, e                                          ; $5afb: $63
	cp $9b                                           ; $5afc: $fe $9b
	add h                                            ; $5afe: $84
	ei                                               ; $5aff: $fb
	adc b                                            ; $5b00: $88
	rst FarCall                                          ; $5b01: $f7
	ld [hl], a                                       ; $5b02: $77
	db $fc                                           ; $5b03: $fc
	ld a, a                                          ; $5b04: $7f
	or c                                             ; $5b05: $b1
	ld [hl], a                                       ; $5b06: $77
	db $fc                                           ; $5b07: $fc
	sbc e                                            ; $5b08: $9b
	ld [$3ef7], sp                                   ; $5b09: $08 $f7 $3e
	pop bc                                           ; $5b0c: $c1
	ld c, a                                          ; $5b0d: $4f
	cp $9d                                           ; $5b0e: $fe $9d
	ld [hl], d                                       ; $5b10: $72
	db $fd                                           ; $5b11: $fd
	ld [hl], a                                       ; $5b12: $77
	cp $9e                                           ; $5b13: $fe $9e
	ld h, d                                          ; $5b15: $62
	ld h, e                                          ; $5b16: $63
	cp $9c                                           ; $5b17: $fe $9c
	ld a, [hl-]                                      ; $5b19: $3a
	rst GetHLinHL                                          ; $5b1a: $cf
	dec sp                                           ; $5b1b: $3b
	ld d, e                                          ; $5b1c: $53
	cp $9d                                           ; $5b1d: $fe $9d
	rrca                                             ; $5b1f: $0f
	rst $38                                          ; $5b20: $ff
	ld c, a                                          ; $5b21: $4f
	cp $e0                                           ; $5b22: $fe $e0
	and c                                            ; $5b24: $a1
	ld a, [hl]                                       ; $5b25: $7e
	adc $9d                                          ; $5b26: $ce $9d
	rlca                                             ; $5b28: $07
	inc b                                            ; $5b29: $04
	ld l, a                                          ; $5b2a: $6f
	cp $99                                           ; $5b2b: $fe $99
	dec bc                                           ; $5b2d: $0b
	inc c                                            ; $5b2e: $0c
	dec bc                                           ; $5b2f: $0b
	inc c                                            ; $5b30: $0c
	rrca                                             ; $5b31: $0f
	ld [$fa6e], sp                                   ; $5b32: $08 $6e $fa
	sbc [hl]                                         ; $5b35: $9e
	cp $5f                                           ; $5b36: $fe $5f
	dec e                                            ; $5b38: $1d
	ld a, a                                          ; $5b39: $7f
	dec sp                                           ; $5b3a: $3b
	ld [hl], e                                       ; $5b3b: $73
	cp $66                                           ; $5b3c: $fe $66
	jp c, $cc76                                      ; $5b3e: $da $76 $cc

	ld d, a                                          ; $5b41: $57
	cp $46                                           ; $5b42: $fe $46
	sub b                                            ; $5b44: $90
	halt                                             ; $5b45: $76
	call z, $fe7f                                    ; $5b46: $cc $7f $fe
	ld a, d                                          ; $5b49: $7a
	pop de                                           ; $5b4a: $d1
	ld l, e                                          ; $5b4b: $6b
	cp $5e                                           ; $5b4c: $fe $5e
	add h                                            ; $5b4e: $84
	ld l, a                                          ; $5b4f: $6f
	cp $63                                           ; $5b50: $fe $63
	or a                                             ; $5b52: $b7
	ld l, e                                          ; $5b53: $6b
	cp $66                                           ; $5b54: $fe $66
	ret z                                            ; $5b56: $c8

	sbc [hl]                                         ; $5b57: $9e
	pop bc                                           ; $5b58: $c1
	ld l, e                                          ; $5b59: $6b
	cp $9b                                           ; $5b5a: $fe $9b
	db $10                                           ; $5b5c: $10
	rst AddAOntoHL                                          ; $5b5d: $ef
	ld [$67f7], sp                                   ; $5b5e: $08 $f7 $67
	db $fc                                           ; $5b61: $fc
	sbc l                                            ; $5b62: $9d
	inc d                                            ; $5b63: $14
	db $eb                                           ; $5b64: $eb
	ld e, [hl]                                       ; $5b65: $5e
	ret nz                                           ; $5b66: $c0

	sbc l                                            ; $5b67: $9d
	ld e, $e1                                        ; $5b68: $1e $e1
	ld l, a                                          ; $5b6a: $6f
	cp $9c                                           ; $5b6b: $fe $9c
	ld h, c                                          ; $5b6d: $61
	rst $38                                          ; $5b6e: $ff
	ld hl, $fe7b                                     ; $5b6f: $21 $7b $fe
	ld a, a                                          ; $5b72: $7f
	ld a, [$639e]                                    ; $5b73: $fa $9e $63
	ld l, e                                          ; $5b76: $6b
	cp $9d                                           ; $5b77: $fe $9d
	inc de                                           ; $5b79: $13
	rst AddAOntoHL                                          ; $5b7a: $ef
	ld c, a                                          ; $5b7b: $4f
	cp $5e                                           ; $5b7c: $fe $5e
	add $9e                                          ; $5b7e: $c6 $9e
	rlca                                             ; $5b80: $07
	ld [hl], e                                       ; $5b81: $73
	cp $e0                                           ; $5b82: $fe $e0
	and c                                            ; $5b84: $a1
	ld a, [hl]                                       ; $5b85: $7e
	adc $6f                                          ; $5b86: $ce $6f
	cp $7e                                           ; $5b88: $fe $7e
	call nz, $07df                                   ; $5b8a: $c4 $df $07
	db $fd                                           ; $5b8d: $fd
	ld e, l                                          ; $5b8e: $5d
	db $e3                                           ; $5b8f: $e3
	ld a, a                                          ; $5b90: $7f
	inc l                                            ; $5b91: $2c
	rst SubAFromDE                                          ; $5b92: $df
	ld a, a                                          ; $5b93: $7f
	rst SubAFromDE                                          ; $5b94: $df
	rra                                              ; $5b95: $1f
	ld d, l                                          ; $5b96: $55
	and h                                            ; $5b97: $a4
	ld a, a                                          ; $5b98: $7f
	ld hl, sp-$63                                    ; $5b99: $f8 $9d
	ldh a, [rIE]                                     ; $5b9b: $f0 $ff
	halt                                             ; $5b9d: $76
	call z, $9e5d                                    ; $5b9e: $cc $5d $9e
	ld a, a                                          ; $5ba1: $7f
	reti                                             ; $5ba2: $d9


	ld b, [hl]                                       ; $5ba3: $46
	ret nz                                           ; $5ba4: $c0

	ld e, [hl]                                       ; $5ba5: $5e
	add $16                                          ; $5ba6: $c6 $16
	ret nz                                           ; $5ba8: $c0

	ld e, a                                          ; $5ba9: $5f
	ldh [$9d], a                                     ; $5baa: $e0 $9d
	ld b, c                                          ; $5bac: $41
	rst $38                                          ; $5bad: $ff
	ld d, a                                          ; $5bae: $57
	cp $df                                           ; $5baf: $fe $df
	rst $38                                          ; $5bb1: $ff
	ld a, [hl]                                       ; $5bb2: $7e
	call z, $289d                                    ; $5bb3: $cc $9d $28
	rst SubAFromHL                                          ; $5bb6: $d7
	ld l, a                                          ; $5bb7: $6f
	db $fc                                           ; $5bb8: $fc
	ld l, [hl]                                       ; $5bb9: $6e
	ret nz                                           ; $5bba: $c0

	ld l, [hl]                                       ; $5bbb: $6e
	jp z, $805d                                      ; $5bbc: $ca $5d $80

	ld a, [hl]                                       ; $5bbf: $7e
	adc $9e                                          ; $5bc0: $ce $9e
	ld [hl], e                                       ; $5bc2: $73
	ld l, e                                          ; $5bc3: $6b
	cp $9e                                           ; $5bc4: $fe $9e
	ld [hl], d                                       ; $5bc6: $72
	ld a, e                                          ; $5bc7: $7b
	cp $9e                                           ; $5bc8: $fe $9e
	ld h, d                                          ; $5bca: $62
	ld a, d                                          ; $5bcb: $7a
	ret nz                                           ; $5bcc: $c0

	sbc [hl]                                         ; $5bcd: $9e
	rla                                              ; $5bce: $17
	ld l, e                                          ; $5bcf: $6b
	cp $7e                                           ; $5bd0: $fe $7e
	call nc, $879e                                   ; $5bd2: $d4 $9e $87
	ld a, e                                          ; $5bd5: $7b
	cp $6e                                           ; $5bd6: $fe $6e
	jp z, $fe6f                                      ; $5bd8: $ca $6f $fe

	ld bc, $e080                                     ; $5bdb: $01 $80 $e0
	cp l                                             ; $5bde: $bd
	ldh a, [c]                                       ; $5bdf: $f2
	sbc d                                            ; $5be0: $9a
	db $10                                           ; $5be1: $10
	rra                                              ; $5be2: $1f
	rra                                              ; $5be3: $1f
	db $10                                           ; $5be4: $10
	rra                                              ; $5be5: $1f
	ret c                                            ; $5be6: $d8

	db $10                                           ; $5be7: $10
	sbc e                                            ; $5be8: $9b
	jr jr_021_5bfb                                   ; $5be9: $18 $10

	rrca                                             ; $5beb: $0f
	rst $38                                          ; $5bec: $ff
	ld a, c                                          ; $5bed: $79
	ld [hl], h                                       ; $5bee: $74
	halt                                             ; $5bef: $76
	call nz, $0098                                   ; $5bf0: $c4 $98 $00
	rlca                                             ; $5bf3: $07
	nop                                              ; $5bf4: $00
	inc bc                                           ; $5bf5: $03
	nop                                              ; $5bf6: $00
	ld bc, $7600                                     ; $5bf7: $01 $00 $76
	rst GetHLinHL                                          ; $5bfa: $cf

jr_021_5bfb:
	ld a, a                                          ; $5bfb: $7f
	xor $97                                          ; $5bfc: $ee $97
	rst FarCall                                          ; $5bfe: $f7
	ld [$04fb], sp                                   ; $5bff: $08 $fb $04
	cp $03                                           ; $5c02: $fe $03
	db $fd                                           ; $5c04: $fd
	inc bc                                           ; $5c05: $03
	ld a, e                                          ; $5c06: $7b
	db $e4                                           ; $5c07: $e4
	rst SubAFromDE                                          ; $5c08: $df
	rst $38                                          ; $5c09: $ff
	ld [hl], l                                       ; $5c0a: $75
	ld h, d                                          ; $5c0b: $62
	sbc [hl]                                         ; $5c0c: $9e
	ret nz                                           ; $5c0d: $c0

	ld [hl], a                                       ; $5c0e: $77
	cp $9b                                           ; $5c0f: $fe $9b
	ld c, a                                          ; $5c11: $4f
	ret nz                                           ; $5c12: $c0

	rst JumpTable                                          ; $5c13: $c7
	ret nz                                           ; $5c14: $c0

	sbc $ff                                          ; $5c15: $de $ff
	ld c, [hl]                                       ; $5c17: $4e
	xor [hl]                                         ; $5c18: $ae
	rst SubAFromDE                                          ; $5c19: $df
	rst $38                                          ; $5c1a: $ff
	ld [hl], d                                       ; $5c1b: $72
	ld [hl], d                                       ; $5c1c: $72
	ld a, a                                          ; $5c1d: $7f
	call nc, $d27b                                   ; $5c1e: $d4 $7b $d2
	sbc h                                            ; $5c21: $9c
	ld [bc], a                                       ; $5c22: $02
	cp $02                                           ; $5c23: $fe $02
	ld a, e                                          ; $5c25: $7b
	pop hl                                           ; $5c26: $e1
	db $f4                                           ; $5c27: $f4
	sbc l                                            ; $5c28: $9d
	ld [bc], a                                       ; $5c29: $02
	inc bc                                           ; $5c2a: $03
	ld c, a                                          ; $5c2b: $4f
	cp $7d                                           ; $5c2c: $fe $7d
	adc b                                            ; $5c2e: $88
	sbc e                                            ; $5c2f: $9b
	ld a, [bc]                                       ; $5c30: $0a
	push af                                          ; $5c31: $f5
	ld d, $e9                                        ; $5c32: $16 $e9
	ld l, a                                          ; $5c34: $6f
	db $fc                                           ; $5c35: $fc
	sub a                                            ; $5c36: $97
	ld b, $f9                                        ; $5c37: $06 $f9
	ld a, [bc]                                       ; $5c39: $0a
	push af                                          ; $5c3a: $f5
	ld a, $c1                                        ; $5c3b: $3e $c1
	ld a, [hl]                                       ; $5c3d: $7e
	add c                                            ; $5c3e: $81
	ld l, a                                          ; $5c3f: $6f
	cp $6e                                           ; $5c40: $fe $6e
	ld [hl], $7e                                     ; $5c42: $36 $7e
	adc $7f                                          ; $5c44: $ce $7f

jr_021_5c46:
	cp $65                                           ; $5c46: $fe $65
	add h                                            ; $5c48: $84
	ld a, a                                          ; $5c49: $7f
	cp $9e                                           ; $5c4a: $fe $9e
	ld h, a                                          ; $5c4c: $67
	ld [hl], d                                       ; $5c4d: $72
	call z, $fe7f                                    ; $5c4e: $cc $7f $fe
	sbc [hl]                                         ; $5c51: $9e
	rst JumpTable                                          ; $5c52: $c7
	ld h, e                                          ; $5c53: $63
	cp $4c                                           ; $5c54: $fe $4c
	ld b, d                                          ; $5c56: $42
	sbc l                                            ; $5c57: $9d
	rra                                              ; $5c58: $1f
	rst $38                                          ; $5c59: $ff
	stop                                             ; $5c5a: $10 $00
	ld a, [$069c]                                    ; $5c5c: $fa $9c $06
	ld h, [hl]                                       ; $5c5f: $66
	ld h, [hl]                                       ; $5c60: $66
	dec hl                                           ; $5c61: $2b
	or $9b                                           ; $5c62: $f6 $9b
	ld [bc], a                                       ; $5c64: $02
	ld [hl+], a                                      ; $5c65: $22
	ld [hl+], a                                      ; $5c66: $22
	dec h                                            ; $5c67: $25
	sbc $66                                          ; $5c68: $de $66
	and d                                            ; $5c6a: $a2
	add b                                            ; $5c6b: $80
	ldh [hLCDCIntHandlerIdx], a                                     ; $5c6c: $e0 $81
	sbc $01                                          ; $5c6e: $de $01
	sbc $03                                          ; $5c70: $de $03
	sbc l                                            ; $5c72: $9d
	ld [bc], a                                       ; $5c73: $02
	inc bc                                           ; $5c74: $03
	sbc $01                                          ; $5c75: $de $01
	sbc $02                                          ; $5c77: $de $02
	rst SubAFromDE                                          ; $5c79: $df
	inc bc                                           ; $5c7a: $03
	sbc h                                            ; $5c7b: $9c
	jr c, jr_021_5c46                                ; $5c7c: $38 $c8

	rst FarCall                                          ; $5c7e: $f7
	db $dd                                           ; $5c7f: $dd
	ld hl, sp-$65                                    ; $5c80: $f8 $9b
	cp b                                             ; $5c82: $b8
	rst JumpTable                                          ; $5c83: $c7
	scf                                              ; $5c84: $37
	rrca                                             ; $5c85: $0f
	db $dd                                           ; $5c86: $dd
	rlca                                             ; $5c87: $07
	adc [hl]                                         ; $5c88: $8e
	rst JumpTable                                          ; $5c89: $c7
	ld a, a                                          ; $5c8a: $7f
	ccf                                              ; $5c8b: $3f
	cp a                                             ; $5c8c: $bf
	ld h, b                                          ; $5c8d: $60
	rra                                              ; $5c8e: $1f
	rrca                                             ; $5c8f: $0f
	rrca                                             ; $5c90: $0f
	rlca                                             ; $5c91: $07
	add b                                            ; $5c92: $80
	ret nz                                           ; $5c93: $c0

	ret nz                                           ; $5c94: $c0

	rst $38                                          ; $5c95: $ff
	ldh [$f0], a                                     ; $5c96: $e0 $f0
	ldh a, [$f8]                                     ; $5c98: $f0 $f8
	sbc $c0                                          ; $5c9a: $de $c0
	sbc [hl]                                         ; $5c9c: $9e
	ccf                                              ; $5c9d: $3f
	sbc $e0                                          ; $5c9e: $de $e0
	sbc [hl]                                         ; $5ca0: $9e
	ldh a, [$de]                                     ; $5ca1: $f0 $de
	ccf                                              ; $5ca3: $3f
	sbc [hl]                                         ; $5ca4: $9e
	rst $38                                          ; $5ca5: $ff
	sbc $1f                                          ; $5ca6: $de $1f
	sbc c                                            ; $5ca8: $99
	rrca                                             ; $5ca9: $0f
	inc bc                                           ; $5caa: $03
	ld bc, $01ff                                     ; $5cab: $01 $ff $01
	ld bc, $d9fe                                     ; $5cae: $01 $fe $d9
	rst $38                                          ; $5cb1: $ff
	rst SubAFromDE                                          ; $5cb2: $df
	ccf                                              ; $5cb3: $3f
	sbc c                                            ; $5cb4: $99
	cp a                                             ; $5cb5: $bf
	sbc a                                            ; $5cb6: $9f
	sbc a                                            ; $5cb7: $9f
	rst GetHLinHL                                          ; $5cb8: $cf
	rst AddAOntoHL                                          ; $5cb9: $ef
	ld [hl], a                                       ; $5cba: $77
	sbc $c0                                          ; $5cbb: $de $c0
	ld a, e                                          ; $5cbd: $7b
	jp c, $d07f                                      ; $5cbe: $da $7f $d0

	ld a, e                                          ; $5cc1: $7b
	db $fd                                           ; $5cc2: $fd
	call c, Call_021_7bf8                            ; $5cc3: $dc $f8 $7b
	cp l                                             ; $5cc6: $bd
	call c, $df07                                    ; $5cc7: $dc $07 $df
	add e                                            ; $5cca: $83
	sbc $81                                          ; $5ccb: $de $81
	sbc $89                                          ; $5ccd: $de $89
	rst SubAFromDE                                          ; $5ccf: $df
	db $fc                                           ; $5cd0: $fc
	sbc $fe                                          ; $5cd1: $de $fe
	sbc $f6                                          ; $5cd3: $de $f6
	sub h                                            ; $5cd5: $94
	dec a                                            ; $5cd6: $3d
	inc e                                            ; $5cd7: $1c
	dec e                                            ; $5cd8: $1d
	sbc h                                            ; $5cd9: $9c
	sbc l                                            ; $5cda: $9d
	sbc h                                            ; $5cdb: $9c

Call_021_5cdc:
	sbc l                                            ; $5cdc: $9d
	inc c                                            ; $5cdd: $0c
	jp $e3e3                                         ; $5cde: $c3 $e3 $e3


	db $dd                                           ; $5ce1: $dd
	ld h, e                                          ; $5ce2: $63
	sub d                                            ; $5ce3: $92
	di                                               ; $5ce4: $f3
	ld [hl], e                                       ; $5ce5: $73
	or e                                             ; $5ce6: $b3
	ld d, a                                          ; $5ce7: $57
	or [hl]                                          ; $5ce8: $b6
	ld d, a                                          ; $5ce9: $57
	or [hl]                                          ; $5cea: $b6
	ld [hl], a                                       ; $5ceb: $77
	or [hl]                                          ; $5cec: $b6
	db $fc                                           ; $5ced: $fc
	db $fc                                           ; $5cee: $fc
	ld hl, sp-$07                                    ; $5cef: $f8 $f9
	ld [hl], a                                       ; $5cf1: $77
	cp $95                                           ; $5cf2: $fe $95
	ld e, $9c                                        ; $5cf4: $1e $9c
	ld a, [de]                                       ; $5cf6: $1a
	sbc h                                            ; $5cf7: $9c
	ld a, [de]                                       ; $5cf8: $1a
	sub h                                            ; $5cf9: $94
	ld a, [hl-]                                      ; $5cfa: $3a
	inc [hl]                                         ; $5cfb: $34
	rst $38                                          ; $5cfc: $ff
	ld a, a                                          ; $5cfd: $7f
	ld [hl], e                                       ; $5cfe: $73
	cp $9d                                           ; $5cff: $fe $9d
	rst $38                                          ; $5d01: $ff
	dec a                                            ; $5d02: $3d
	sbc $7d                                          ; $5d03: $de $7d
	sbc e                                            ; $5d05: $9b
	db $fd                                           ; $5d06: $fd
	sbc a                                            ; $5d07: $9f
	sbc a                                            ; $5d08: $9f
	cp a                                             ; $5d09: $bf
	reti                                             ; $5d0a: $d9


	rst $38                                          ; $5d0b: $ff
	rlca                                             ; $5d0c: $07
	nop                                              ; $5d0d: $00
	ld a, [$069c]                                    ; $5d0e: $fa $9c $06
	ld h, [hl]                                       ; $5d11: $66
	ld h, [hl]                                       ; $5d12: $66
	ld [hl], h                                       ; $5d13: $74
	add b                                            ; $5d14: $80
	ldh [$7b], a                                     ; $5d15: $e0 $7b
	rst SubAFromDE                                          ; $5d17: $df
	ld bc, $f867                                     ; $5d18: $01 $67 $f8
	sbc h                                            ; $5d1b: $9c
	and c                                            ; $5d1c: $a1
	pop hl                                           ; $5d1d: $e1
	pop af                                           ; $5d1e: $f1
	sbc $f0                                          ; $5d1f: $de $f0
	rst SubAFromDE                                          ; $5d21: $df
	ld [hl], b                                       ; $5d22: $70
	sbc h                                            ; $5d23: $9c
	sbc $9e                                          ; $5d24: $de $9e
	adc [hl]                                         ; $5d26: $8e
	call c, $db8f                                    ; $5d27: $dc $8f $db
	rst $38                                          ; $5d2a: $ff
	rst SubAFromDE                                          ; $5d2b: $df
	ld a, a                                          ; $5d2c: $7f
	ei                                               ; $5d2d: $fb
	rst SubAFromDE                                          ; $5d2e: $df
	add b                                            ; $5d2f: $80
	ld a, e                                          ; $5d30: $7b
	db $fd                                           ; $5d31: $fd
	rst SubAFromDE                                          ; $5d32: $df
	add b                                            ; $5d33: $80
	sbc $c0                                          ; $5d34: $de $c0
	ld a, e                                          ; $5d36: $7b
	db $ed                                           ; $5d37: $ed
	rst SubAFromDE                                          ; $5d38: $df
	ld a, a                                          ; $5d39: $7f
	sbc $3f                                          ; $5d3a: $de $3f
	sub a                                            ; $5d3c: $97
	jr c, jr_021_5d5b                                ; $5d3d: $38 $1c

	inc e                                            ; $5d3f: $1c
	ld c, $06                                        ; $5d40: $0e $06
	ld b, $03                                        ; $5d42: $06 $03
	inc bc                                           ; $5d44: $03
	push de                                          ; $5d45: $d5
	rst $38                                          ; $5d46: $ff
	db $dd                                           ; $5d47: $dd
	ld a, a                                          ; $5d48: $7f
	ld l, a                                          ; $5d49: $6f
	jp nc, $d57b                                     ; $5d4a: $d2 $7b $d5

	db $dd                                           ; $5d4d: $dd
	ldh [$de], a                                     ; $5d4e: $e0 $de
	ldh a, [$9e]                                     ; $5d50: $f0 $9e
	ccf                                              ; $5d52: $3f
	db $dd                                           ; $5d53: $dd
	rra                                              ; $5d54: $1f
	sbc $0f                                          ; $5d55: $de $0f
	reti                                             ; $5d57: $d9


	add e                                            ; $5d58: $83
	reti                                             ; $5d59: $d9


	db $fc                                           ; $5d5a: $fc

jr_021_5d5b:
	sbc $b6                                          ; $5d5b: $de $b6
	sbc d                                            ; $5d5d: $9a
	cp [hl]                                          ; $5d5e: $be
	cp l                                             ; $5d5f: $bd
	cp h                                             ; $5d60: $bc
	dec a                                            ; $5d61: $3d
	inc a                                            ; $5d62: $3c
	sbc $49                                          ; $5d63: $de $49
	sub [hl]                                         ; $5d65: $96
	ld b, c                                          ; $5d66: $41
	ld b, e                                          ; $5d67: $43
	ld b, e                                          ; $5d68: $43
	jp Jump_021_77c3                                 ; $5d69: $c3 $c3 $77


	and e                                            ; $5d6c: $a3
	ld [hl], e                                       ; $5d6d: $73
	or e                                             ; $5d6e: $b3
	ld [hl], a                                       ; $5d6f: $77
	cp $9e                                           ; $5d70: $fe $9e
	ld hl, sp-$26                                    ; $5d72: $f8 $da
	db $fc                                           ; $5d74: $fc
	sbc h                                            ; $5d75: $9c
	ld a, $9d                                        ; $5d76: $3e $9d
	ld e, $73                                        ; $5d78: $1e $73
	cp $7f                                           ; $5d7a: $fe $7f
	xor e                                            ; $5d7c: $ab
	ld l, a                                          ; $5d7d: $6f
	cp $9e                                           ; $5d7e: $fe $9e
	cp [hl]                                          ; $5d80: $be
	db $dd                                           ; $5d81: $dd
	ccf                                              ; $5d82: $3f
	sbc $3e                                          ; $5d83: $de $3e
	reti                                             ; $5d85: $d9


	rst $38                                          ; $5d86: $ff
	rlca                                             ; $5d87: $07
	nop                                              ; $5d88: $00
	ld a, [$069c]                                    ; $5d89: $fa $9c $06
	ld h, [hl]                                       ; $5d8c: $66
	ld h, [hl]                                       ; $5d8d: $66
	add a                                            ; $5d8e: $87
	add b                                            ; $5d8f: $80
	ldh [$71], a                                     ; $5d90: $e0 $71
	sbc $47                                          ; $5d92: $de $47
	sbc [hl]                                         ; $5d94: $9e
	ld h, a                                          ; $5d95: $67
	sbc $63                                          ; $5d96: $de $63
	sbc [hl]                                         ; $5d98: $9e
	and e                                            ; $5d99: $a3
	sbc $78                                          ; $5d9a: $de $78
	sbc [hl]                                         ; $5d9c: $9e
	ld e, b                                          ; $5d9d: $58

Call_021_5d9e:
	sbc $5c                                          ; $5d9e: $de $5c
	sbc [hl]                                         ; $5da0: $9e
	call c, $fedd                                    ; $5da1: $dc $dd $fe
	db $dd                                           ; $5da4: $dd
	rst $38                                          ; $5da5: $ff
	db $dd                                           ; $5da6: $dd
	ld bc, $9cfd                                     ; $5da7: $01 $fd $9c
	dec b                                            ; $5daa: $05
	ld b, $03                                        ; $5dab: $06 $03
	ld [hl], e                                       ; $5dad: $73
	rst FarCall                                          ; $5dae: $f7
	ld [hl], e                                       ; $5daf: $73
	db $eb                                           ; $5db0: $eb
	sbc $ff                                          ; $5db1: $de $ff
	rst SubAFromDE                                          ; $5db3: $df
	ret z                                            ; $5db4: $c8

	adc a                                            ; $5db5: $8f
	ld l, e                                          ; $5db6: $6b
	xor a                                            ; $5db7: $af
	rst AddAOntoHL                                          ; $5db8: $ef
	rst $38                                          ; $5db9: $ff
	ld a, e                                          ; $5dba: $7b
	ld a, c                                          ; $5dbb: $79
	ccf                                              ; $5dbc: $3f
	ccf                                              ; $5dbd: $3f
	sbc h                                            ; $5dbe: $9c
	ret c                                            ; $5dbf: $d8

	ld hl, sp-$08                                    ; $5dc0: $f8 $f8
	db $fc                                           ; $5dc2: $fc
	cp $7f                                           ; $5dc3: $fe $7f
	ld a, a                                          ; $5dc5: $7f
	db $db                                           ; $5dc6: $db
	rst $38                                          ; $5dc7: $ff
	rst SubAFromDE                                          ; $5dc8: $df
	add b                                            ; $5dc9: $80
	ei                                               ; $5dca: $fb
	rst SubAFromDE                                          ; $5dcb: $df
	ret nz                                           ; $5dcc: $c0

	sbc $80                                          ; $5dcd: $de $80
	sbc $c0                                          ; $5dcf: $de $c0
	rst SubAFromDE                                          ; $5dd1: $df
	ccf                                              ; $5dd2: $3f
	sbc $7f                                          ; $5dd3: $de $7f
	sbc $3f                                          ; $5dd5: $de $3f
	sbc [hl]                                         ; $5dd7: $9e
	add a                                            ; $5dd8: $87
	jp c, Jump_021_7f83                              ; $5dd9: $da $83 $7f

	push de                                          ; $5ddc: $d5
	db $db                                           ; $5ddd: $db
	db $fc                                           ; $5dde: $fc
	sbc d                                            ; $5ddf: $9a
	di                                               ; $5de0: $f3
	ld [hl], a                                       ; $5de1: $77
	ld [hl], a                                       ; $5de2: $77
	scf                                              ; $5de3: $37
	ld [hl], $de                                     ; $5de4: $36 $de
	or [hl]                                          ; $5de6: $b6
	sbc d                                            ; $5de7: $9a
	inc c                                            ; $5de8: $0c
	adc b                                            ; $5de9: $88
	adc b                                            ; $5dea: $88
	ret z                                            ; $5deb: $c8

	ret                                              ; $5dec: $c9


	sbc $49                                          ; $5ded: $de $49
	sbc h                                            ; $5def: $9c
	ld d, [hl]                                       ; $5df0: $56
	ld h, $77                                        ; $5df1: $26 $77
	ld [hl], a                                       ; $5df3: $77
	cp $9b                                           ; $5df4: $fe $9b
	and a                                            ; $5df6: $a7
	ld sp, hl                                        ; $5df7: $f9
	ld sp, hl                                        ; $5df8: $f9
	ld hl, sp+$77                                    ; $5df9: $f8 $77
	cp $9a                                           ; $5dfb: $fe $9a
	ld hl, sp+$7e                                    ; $5dfd: $f8 $7e
	ld a, l                                          ; $5dff: $7d
	ld a, $bd                                        ; $5e00: $3e $bd
	ld [hl], a                                       ; $5e02: $77
	cp $de                                           ; $5e03: $fe $de
	rst $38                                          ; $5e05: $ff
	ld a, a                                          ; $5e06: $7f
	and [hl]                                         ; $5e07: $a6
	ld a, e                                          ; $5e08: $7b
	cp $97                                           ; $5e09: $fe $97
	xor h                                            ; $5e0b: $ac
	ld l, h                                          ; $5e0c: $6c
	xor h                                            ; $5e0d: $ac
	ld a, h                                          ; $5e0e: $7c
	cp h                                             ; $5e0f: $bc
	ld a, $be                                        ; $5e10: $3e $be
	ld a, $d9                                        ; $5e12: $3e $d9
	rst $38                                          ; $5e14: $ff
	rlca                                             ; $5e15: $07
	nop                                              ; $5e16: $00
	ld a, [$069c]                                    ; $5e17: $fa $9c $06
	ld h, [hl]                                       ; $5e1a: $66
	ld h, [hl]                                       ; $5e1b: $66
	adc h                                            ; $5e1c: $8c
	add b                                            ; $5e1d: $80
	ldh [hLCDCIntHandlerIdx], a                                     ; $5e1e: $e0 $81
	sbc [hl]                                         ; $5e20: $9e
	ld bc, $f84b                                     ; $5e21: $01 $4b $f8
	sbc d                                            ; $5e24: $9a
	pop hl                                           ; $5e25: $e1
	jp Jump_021_5f4f                                 ; $5e26: $c3 $4f $5f


	ld e, a                                          ; $5e29: $5f
	sbc $4f                                          ; $5e2a: $de $4f
	sbc d                                            ; $5e2c: $9a
	ld a, $fc                                        ; $5e2d: $3e $fc
	ld [hl], b                                       ; $5e2f: $70
	ld h, b                                          ; $5e30: $60
	ld h, b                                          ; $5e31: $60
	sbc $70                                          ; $5e32: $de $70
	sbc $f8                                          ; $5e34: $de $f8
	db $dd                                           ; $5e36: $dd
	db $fc                                           ; $5e37: $fc
	sbc [hl]                                         ; $5e38: $9e
	cp $de                                           ; $5e39: $fe $de
	rlca                                             ; $5e3b: $07
	db $dd                                           ; $5e3c: $dd
	inc bc                                           ; $5e3d: $03
	add h                                            ; $5e3e: $84
	ld bc, $7dfb                                     ; $5e3f: $01 $fb $7d
	dec a                                            ; $5e42: $3d
	ld a, $1e                                        ; $5e43: $3e $1e
	rrca                                             ; $5e45: $0f
	rlca                                             ; $5e46: $07
	dec bc                                           ; $5e47: $0b
	rlca                                             ; $5e48: $07
	add e                                            ; $5e49: $83
	jp $e1c1                                         ; $5e4a: $c3 $c1 $e1


	ldh a, [$f8]                                     ; $5e4d: $f0 $f8
	db $fc                                           ; $5e4f: $fc
	rst $38                                          ; $5e50: $ff
	rst AddAOntoHL                                          ; $5e51: $ef
	rst FarCall                                          ; $5e52: $f7
	rst $38                                          ; $5e53: $ff
	ld a, e                                          ; $5e54: $7b
	add hl, sp                                       ; $5e55: $39
	sbc c                                            ; $5e56: $99
	sbc b                                            ; $5e57: $98
	ldh [$f0], a                                     ; $5e58: $e0 $f0
	ld a, e                                          ; $5e5a: $7b
	rst SubAFromHL                                          ; $5e5b: $d7
	sbc h                                            ; $5e5c: $9c
	cp $7e                                           ; $5e5d: $fe $7e
	ld a, a                                          ; $5e5f: $7f
	db $dd                                           ; $5e60: $dd
	rst $38                                          ; $5e61: $ff
	sbc e                                            ; $5e62: $9b
	cp $fd                                           ; $5e63: $fe $fd
	rst $38                                          ; $5e65: $ff
	rst $38                                          ; $5e66: $ff
	ld [hl], e                                       ; $5e67: $73
	xor h                                            ; $5e68: $ac
	adc h                                            ; $5e69: $8c
	ld [bc], a                                       ; $5e6a: $02
	nop                                              ; $5e6b: $00
	nop                                              ; $5e6c: $00
	ret nc                                           ; $5e6d: $d0

	ret nz                                           ; $5e6e: $c0

	add b                                            ; $5e6f: $80
	jr jr_021_5ee2                                   ; $5e70: $18 $70

	ldh a, [$e0]                                     ; $5e72: $f0 $e0
	ldh [$3f], a                                     ; $5e74: $e0 $3f
	ccf                                              ; $5e76: $3f
	ld a, a                                          ; $5e77: $7f
	rst SubAFromBC                                          ; $5e78: $e7
	adc a                                            ; $5e79: $8f
	rrca                                             ; $5e7a: $0f
	rra                                              ; $5e7b: $1f
	rra                                              ; $5e7c: $1f
	reti                                             ; $5e7d: $d9


	add a                                            ; $5e7e: $87
	reti                                             ; $5e7f: $d9


	ld hl, sp-$23                                    ; $5e80: $f8 $dd
	db $e3                                           ; $5e82: $e3
	db $dd                                           ; $5e83: $dd
	di                                               ; $5e84: $f3
	db $dd                                           ; $5e85: $dd
	inc e                                            ; $5e86: $1c
	db $dd                                           ; $5e87: $dd
	inc c                                            ; $5e88: $0c
	sub [hl]                                         ; $5e89: $96
	add h                                            ; $5e8a: $84
	add [hl]                                         ; $5e8b: $86
	add [hl]                                         ; $5e8c: $86
	and [hl]                                         ; $5e8d: $a6
	sub [hl]                                         ; $5e8e: $96
	and [hl]                                         ; $5e8f: $a6
	sub [hl]                                         ; $5e90: $96
	ld h, $7b                                        ; $5e91: $26 $7b
	db $db                                           ; $5e93: $db
	ld a, c                                          ; $5e94: $79
	sub [hl]                                         ; $5e95: $96
	ld sp, hl                                        ; $5e96: $f9
	ld a, [hl-]                                      ; $5e97: $3a
	dec a                                            ; $5e98: $3d
	ld a, $3d                                        ; $5e99: $3e $3d
	ld a, $7d                                        ; $5e9b: $3e $7d
	ld a, [hl]                                       ; $5e9d: $7e
	ld a, l                                          ; $5e9e: $7d
	reti                                             ; $5e9f: $d9


	rst $38                                          ; $5ea0: $ff
	sbc l                                            ; $5ea1: $9d
	xor h                                            ; $5ea2: $ac
	ld l, h                                          ; $5ea3: $6c
	ld l, a                                          ; $5ea4: $6f
	cp $d9                                           ; $5ea5: $fe $d9
	rst $38                                          ; $5ea7: $ff
	ld a, [bc]                                       ; $5ea8: $0a
	nop                                              ; $5ea9: $00
	db $fd                                           ; $5eaa: $fd
	sbc c                                            ; $5eab: $99
	jr nc, jr_021_5eae                               ; $5eac: $30 $00

jr_021_5eae:
	nop                                              ; $5eae: $00
	ld b, $66                                        ; $5eaf: $06 $66
	ld h, [hl]                                       ; $5eb1: $66
	sbc [hl]                                         ; $5eb2: $9e
	add b                                            ; $5eb3: $80
	ldh [hLCDCIntHandlerIdx], a                                     ; $5eb4: $e0 $81
	sub a                                            ; $5eb6: $97
	jr jr_021_5ed6                                   ; $5eb7: $18 $1d

	jr jr_021_5ec8                                   ; $5eb9: $18 $0d

	ld c, $07                                        ; $5ebb: $0e $07
	rlca                                             ; $5ebd: $07
	inc bc                                           ; $5ebe: $03
	sbc $10                                          ; $5ebf: $de $10
	rst SubAFromDE                                          ; $5ec1: $df
	ld [$04df], sp                                   ; $5ec2: $08 $df $04
	sbc l                                            ; $5ec5: $9d
	ld [bc], a                                       ; $5ec6: $02
	rst AddAOntoHL                                          ; $5ec7: $ef

jr_021_5ec8:
	sbc $ff                                          ; $5ec8: $de $ff
	adc d                                            ; $5eca: $8a
	cp $fc                                           ; $5ecb: $fe $fc
	ld hl, sp-$10                                    ; $5ecd: $f8 $f0
	stop                                             ; $5ecf: $10 $00
	ld bc, $0301                                     ; $5ed1: $01 $01 $03
	rlca                                             ; $5ed4: $07
	rrca                                             ; $5ed5: $0f

jr_021_5ed6:
	rra                                              ; $5ed6: $1f
	sbc a                                            ; $5ed7: $9f
	cp a                                             ; $5ed8: $bf
	ccf                                              ; $5ed9: $3f
	ccf                                              ; $5eda: $3f
	ld a, a                                          ; $5edb: $7f
	rst $38                                          ; $5edc: $ff
	ei                                               ; $5edd: $fb

Call_021_5ede:
	ld sp, hl                                        ; $5ede: $f9
	ldh [$de], a                                     ; $5edf: $e0 $de
	ret nz                                           ; $5ee1: $c0

jr_021_5ee2:
	add [hl]                                         ; $5ee2: $86
	add b                                            ; $5ee3: $80
	nop                                              ; $5ee4: $00
	inc b                                            ; $5ee5: $04
	ld b, $f8                                        ; $5ee6: $06 $f8
	sbc b                                            ; $5ee8: $98
	add b                                            ; $5ee9: $80
	ret nz                                           ; $5eea: $c0

	pop hl                                           ; $5eeb: $e1
	db $e3                                           ; $5eec: $e3
	rst FarCall                                          ; $5eed: $f7
	rst FarCall                                          ; $5eee: $f7
	rlca                                             ; $5eef: $07
	ld h, a                                          ; $5ef0: $67
	ld a, a                                          ; $5ef1: $7f
	ccf                                              ; $5ef2: $3f
	rra                                              ; $5ef3: $1f
	rra                                              ; $5ef4: $1f
	rrca                                             ; $5ef5: $0f
	rrca                                             ; $5ef6: $0f
	ret z                                            ; $5ef7: $c8

	call nz, $c0c2                                   ; $5ef8: $c4 $c2 $c0
	call z, $dfde                                    ; $5efb: $cc $de $df
	db $dd                                           ; $5efe: $dd
	rst $38                                          ; $5eff: $ff
	sbc [hl]                                         ; $5f00: $9e
	di                                               ; $5f01: $f3

Call_021_5f02:
	sbc $e0                                          ; $5f02: $de $e0
	sbc h                                            ; $5f04: $9c
	rrca                                             ; $5f05: $0f
	rlca                                             ; $5f06: $07
	rrca                                             ; $5f07: $0f
	ld a, e                                          ; $5f08: $7b
	ret nc                                           ; $5f09: $d0

	rst SubAFromDE                                          ; $5f0a: $df
	rst $38                                          ; $5f0b: $ff
	sbc h                                            ; $5f0c: $9c
	ldh a, [$f8]                                     ; $5f0d: $f0 $f8
	ldh a, [$7b]                                     ; $5f0f: $f0 $7b
	ret nc                                           ; $5f11: $d0

	rst $38                                          ; $5f12: $ff
	sub [hl]                                         ; $5f13: $96
	db $fd                                           ; $5f14: $fd
	ld sp, hl                                        ; $5f15: $f9
	ei                                               ; $5f16: $fb
	ei                                               ; $5f17: $fb
	cp $f4                                           ; $5f18: $fe $f4
	db $fc                                           ; $5f1a: $fc
	add sp, $03                                      ; $5f1b: $e8 $03
	db $dd                                           ; $5f1d: $dd
	rlca                                             ; $5f1e: $07
	rst SubAFromDE                                          ; $5f1f: $df
	rrca                                             ; $5f20: $0f
	sbc d                                            ; $5f21: $9a
	rra                                              ; $5f22: $1f
	adc [hl]                                         ; $5f23: $8e
	adc [hl]                                         ; $5f24: $8e
	add [hl]                                         ; $5f25: $86
	add [hl]                                         ; $5f26: $86
	db $dd                                           ; $5f27: $dd
	add a                                            ; $5f28: $87
	rst SubAFromDE                                          ; $5f29: $df
	pop af                                           ; $5f2a: $f1
	rst SubAFromDE                                          ; $5f2b: $df
	ld sp, hl                                        ; $5f2c: $f9
	db $dd                                           ; $5f2d: $dd
	ld hl, sp-$21                                    ; $5f2e: $f8 $df
	pop hl                                           ; $5f30: $e1
	db $db                                           ; $5f31: $db
	db $e3                                           ; $5f32: $e3
	rst SubAFromDE                                          ; $5f33: $df
	ld e, $db                                        ; $5f34: $1e $db
	inc e                                            ; $5f36: $1c
	reti                                             ; $5f37: $d9


	add h                                            ; $5f38: $84
	reti                                             ; $5f39: $d9


	ld a, e                                          ; $5f3a: $7b
	sbc h                                            ; $5f3b: $9c
	ld e, $3d                                        ; $5f3c: $1e $3d
	ld a, $7b                                        ; $5f3e: $3e $7b
	cp $9d                                           ; $5f40: $fe $9d
	ld a, [hl-]                                      ; $5f42: $3a
	dec a                                            ; $5f43: $3d
	reti                                             ; $5f44: $d9


	rst $38                                          ; $5f45: $ff
	sbc $fc                                          ; $5f46: $de $fc
	sbc d                                            ; $5f48: $9a
	ld a, h                                          ; $5f49: $7c
	db $ec                                           ; $5f4a: $ec
	ld l, h                                          ; $5f4b: $6c
	db $ec                                           ; $5f4c: $ec
	ld l, h                                          ; $5f4d: $6c
	reti                                             ; $5f4e: $d9


Jump_021_5f4f:
	rst $38                                          ; $5f4f: $ff
	ld a, [bc]                                       ; $5f50: $0a
	nop                                              ; $5f51: $00
	db $fd                                           ; $5f52: $fd
	sbc c                                            ; $5f53: $99
	inc sp                                           ; $5f54: $33
	nop                                              ; $5f55: $00
	nop                                              ; $5f56: $00
	ld b, $66                                        ; $5f57: $06 $66
	ld h, [hl]                                       ; $5f59: $66
	sbc e                                            ; $5f5a: $9b
	add b                                            ; $5f5b: $80
	ldh [hLCDCIntHandlerIdx], a                                     ; $5f5c: $e0 $81
	sub d                                            ; $5f5e: $92
	ld bc, $0303                                     ; $5f5f: $01 $03 $03
	rlca                                             ; $5f62: $07
	ld b, $0d                                        ; $5f63: $06 $0d
	ld a, [bc]                                       ; $5f65: $0a
	inc c                                            ; $5f66: $0c
	ld bc, $0202                                     ; $5f67: $01 $02 $02
	inc b                                            ; $5f6a: $04
	inc b                                            ; $5f6b: $04
	sbc $08                                          ; $5f6c: $de $08
	sub e                                            ; $5f6e: $93
	db $fd                                           ; $5f6f: $fd
	cp $bf                                           ; $5f70: $fe $bf
	ld [hl], e                                       ; $5f72: $73
	ld a, a                                          ; $5f73: $7f
	ld a, a                                          ; $5f74: $7f
	rst FarCall                                          ; $5f75: $f7
	rst AddAOntoHL                                          ; $5f76: $ef
	rlca                                             ; $5f77: $07
	dec b                                            ; $5f78: $05
	inc b                                            ; $5f79: $04
	inc c                                            ; $5f7a: $0c
	sbc $08                                          ; $5f7b: $de $08
	sbc c                                            ; $5f7d: $99
	db $10                                           ; $5f7e: $10
	ldh [$c0], a                                     ; $5f7f: $e0 $c0
	ret z                                            ; $5f81: $c8

	call c, $dede                                    ; $5f82: $dc $de $de
	rst SubAFromDE                                          ; $5f85: $df
	rst SubAFromDE                                          ; $5f86: $df
	rst $38                                          ; $5f87: $ff
	sbc h                                            ; $5f88: $9c
	rst FarCall                                          ; $5f89: $f7
	ld h, e                                          ; $5f8a: $63
	ld h, c                                          ; $5f8b: $61
	sbc $60                                          ; $5f8c: $de $60
	add a                                            ; $5f8e: $87
	xor [hl]                                         ; $5f8f: $ae
	rst SubAFromHL                                          ; $5f90: $d7
	rst AddAOntoHL                                          ; $5f91: $ef
	rst SubAFromBC                                          ; $5f92: $e7
	ld [hl], e                                       ; $5f93: $73
	pop af                                           ; $5f94: $f1
	ld sp, hl                                        ; $5f95: $f9
	ld sp, hl                                        ; $5f96: $f9
	ld a, a                                          ; $5f97: $7f
	ccf                                              ; $5f98: $3f
	rra                                              ; $5f99: $1f
	rra                                              ; $5f9a: $1f
	adc a                                            ; $5f9b: $8f
	rrca                                             ; $5f9c: $0f
	rlca                                             ; $5f9d: $07
	rlca                                             ; $5f9e: $07
	rra                                              ; $5f9f: $1f
	rrca                                             ; $5fa0: $0f
	rlca                                             ; $5fa1: $07
	add e                                            ; $5fa2: $83
	ret nz                                           ; $5fa3: $c0

	ldh [$f0], a                                     ; $5fa4: $e0 $f0
	ld hl, sp+$7b                                    ; $5fa6: $f8 $7b
	db $fd                                           ; $5fa8: $fd
	sbc [hl]                                         ; $5fa9: $9e
	db $fc                                           ; $5faa: $fc
	ret c                                            ; $5fab: $d8

	rst $38                                          ; $5fac: $ff
	ld a, e                                          ; $5fad: $7b
	db $e3                                           ; $5fae: $e3
	db $fc                                           ; $5faf: $fc
	adc h                                            ; $5fb0: $8c
	add b                                            ; $5fb1: $80
	ret nz                                           ; $5fb2: $c0

	ldh [rSB], a                                     ; $5fb3: $e0 $01
	add c                                            ; $5fb5: $81
	add c                                            ; $5fb6: $81
	pop bc                                           ; $5fb7: $c1
	pop bc                                           ; $5fb8: $c1
	pop hl                                           ; $5fb9: $e1
	pop af                                           ; $5fba: $f1
	db $fd                                           ; $5fbb: $fd
	rst $38                                          ; $5fbc: $ff
	ld a, a                                          ; $5fbd: $7f
	ld a, a                                          ; $5fbe: $7f
	ccf                                              ; $5fbf: $3f
	ccf                                              ; $5fc0: $3f
	rra                                              ; $5fc1: $1f
	rrca                                             ; $5fc2: $0f
	inc bc                                           ; $5fc3: $03
	sbc $0d                                          ; $5fc4: $de $0d
	sbc [hl]                                         ; $5fc6: $9e
	inc c                                            ; $5fc7: $0c
	db $dd                                           ; $5fc8: $dd
	ld c, $dd                                        ; $5fc9: $0e $dd
	di                                               ; $5fcb: $f3
	db $dd                                           ; $5fcc: $dd
	pop af                                           ; $5fcd: $f1
	sbc [hl]                                         ; $5fce: $9e
	ld [hl], c                                       ; $5fcf: $71
	db $db                                           ; $5fd0: $db
	ld h, c                                          ; $5fd1: $61
	sbc l                                            ; $5fd2: $9d
	pop hl                                           ; $5fd3: $e1
	adc [hl]                                         ; $5fd4: $8e
	db $db                                           ; $5fd5: $db
	sbc [hl]                                         ; $5fd6: $9e
	sbc [hl]                                         ; $5fd7: $9e
	ld e, $dd                                        ; $5fd8: $1e $dd
	ret z                                            ; $5fda: $c8

	db $dd                                           ; $5fdb: $dd
	call z, $37dd                                    ; $5fdc: $cc $dd $37
	db $dd                                           ; $5fdf: $dd
	inc sp                                           ; $5fe0: $33
	sbc l                                            ; $5fe1: $9d
	ld a, $5d                                        ; $5fe2: $3e $5d
	ld a, e                                          ; $5fe4: $7b
	cp $9c                                           ; $5fe5: $fe $9c
	dec e                                            ; $5fe7: $1d
	ld e, $1d                                        ; $5fe8: $1e $1d
	reti                                             ; $5fea: $d9


	rst $38                                          ; $5feb: $ff
	sbc e                                            ; $5fec: $9b
	db $fc                                           ; $5fed: $fc
	ld a, h                                          ; $5fee: $7c
	db $fc                                           ; $5fef: $fc
	ld a, [hl]                                       ; $5ff0: $7e
	sbc $fe                                          ; $5ff1: $de $fe
	ld h, e                                          ; $5ff3: $63
	sub h                                            ; $5ff4: $94
	ld a, [bc]                                       ; $5ff5: $0a
	nop                                              ; $5ff6: $00
	db $fd                                           ; $5ff7: $fd
	sbc c                                            ; $5ff8: $99
	inc sp                                           ; $5ff9: $33
	nop                                              ; $5ffa: $00
	nop                                              ; $5ffb: $00
	ld b, $66                                        ; $5ffc: $06 $66
	ld h, [hl]                                       ; $5ffe: $66
	add [hl]                                         ; $5fff: $86
	add b                                            ; $6000: $80
	ldh [hLCDCIntHandlerIdx], a                                     ; $6001: $e0 $81
	db $dd                                           ; $6003: $dd
	ld bc, $f857                                     ; $6004: $01 $57 $f8
	sub a                                            ; $6007: $97
	push bc                                          ; $6008: $c5
	and e                                            ; $6009: $a3
	rst JumpTable                                          ; $600a: $c7
	db $eb                                           ; $600b: $eb
	rst FarCall                                          ; $600c: $f7
	ld a, a                                          ; $600d: $7f
	ld e, a                                          ; $600e: $5f
	rst FarCall                                          ; $600f: $f7
	cp $8e                                           ; $6010: $fe $8e
	add b                                            ; $6012: $80
	ret nz                                           ; $6013: $c0

	ld h, b                                          ; $6014: $60
	ld a, b                                          ; $6015: $78
	adc [hl]                                         ; $6016: $8e
	rst $38                                          ; $6017: $ff
	cp $f6                                           ; $6018: $fe $f6
	db $fc                                           ; $601a: $fc
	add sp, -$08                                     ; $601b: $e8 $f8
	ldh a, [$f0]                                     ; $601d: $f0 $f0
	rlca                                             ; $601f: $07
	rlca                                             ; $6020: $07
	rrca                                             ; $6021: $0f
	rrca                                             ; $6022: $0f
	sbc $1f                                          ; $6023: $de $1f
	adc [hl]                                         ; $6025: $8e
	ccf                                              ; $6026: $3f
	rst $38                                          ; $6027: $ff
	rst $38                                          ; $6028: $ff
	rst SubAFromDE                                          ; $6029: $df
	rst AddAOntoHL                                          ; $602a: $ef
	db $eb                                           ; $602b: $eb
	jp hl                                            ; $602c: $e9


	xor h                                            ; $602d: $ac
	call c, $1010                                    ; $602e: $dc $10 $10
	jr nc, jr_021_604b                               ; $6031: $30 $18

	inc e                                            ; $6033: $1c
	ld e, $5f                                        ; $6034: $1e $5f
	ld l, a                                          ; $6036: $6f
	db $db                                           ; $6037: $db
	rst $38                                          ; $6038: $ff
	sbc l                                            ; $6039: $9d
	ld a, a                                          ; $603a: $7f
	ccf                                              ; $603b: $3f
	ei                                               ; $603c: $fb
	ld a, a                                          ; $603d: $7f
	call $f89c                                       ; $603e: $cd $9c $f8
	db $fc                                           ; $6041: $fc
	db $fc                                           ; $6042: $fc
	sbc $fe                                          ; $6043: $de $fe
	rst SubAFromDE                                          ; $6045: $df
	rst $38                                          ; $6046: $ff
	sbc h                                            ; $6047: $9c
	rlca                                             ; $6048: $07
	inc bc                                           ; $6049: $03
	inc bc                                           ; $604a: $03

jr_021_604b:
	ld [hl], e                                       ; $604b: $73
	xor [hl]                                         ; $604c: $ae
	sbc l                                            ; $604d: $9d
	ld sp, $db11                                     ; $604e: $31 $11 $db
	ld bc, $cf9d                                     ; $6051: $01 $9d $cf
	rst AddAOntoHL                                          ; $6054: $ef
	db $db                                           ; $6055: $db
	rst $38                                          ; $6056: $ff
	db $dd                                           ; $6057: $dd
	dec bc                                           ; $6058: $0b
	db $dd                                           ; $6059: $dd
	add hl, bc                                       ; $605a: $09
	reti                                             ; $605b: $d9


	rst FarCall                                          ; $605c: $f7
	sbc $31                                          ; $605d: $de $31
	call c, $de71                                    ; $605f: $dc $71 $de
	adc $dc                                          ; $6062: $ce $dc

Call_021_6064:
	adc [hl]                                         ; $6064: $8e
	db $dd                                           ; $6065: $dd
	ldh a, [$9e]                                     ; $6066: $f0 $9e
	ret nc                                           ; $6068: $d0

	sbc $d8                                          ; $6069: $de $d8
	db $dd                                           ; $606b: $dd
	rrca                                             ; $606c: $0f
	sbc [hl]                                         ; $606d: $9e
	cpl                                              ; $606e: $2f
	sbc $27                                          ; $606f: $de $27
	sbc d                                            ; $6071: $9a
	cp h                                             ; $6072: $bc
	ld a, l                                          ; $6073: $7d
	cp h                                             ; $6074: $bc
	ld a, l                                          ; $6075: $7d
	ld a, $7b                                        ; $6076: $3e $7b
	cp $d9                                           ; $6078: $fe $d9
	rst $38                                          ; $607a: $ff
	sbc d                                            ; $607b: $9a
	cp h                                             ; $607c: $bc
	ld a, h                                          ; $607d: $7c
	cp h                                             ; $607e: $bc
	ld a, h                                          ; $607f: $7c
	db $fc                                           ; $6080: $fc
	ld a, e                                          ; $6081: $7b
	cp $d9                                           ; $6082: $fe $d9
	rst $38                                          ; $6084: $ff
	ld a, [bc]                                       ; $6085: $0a
	nop                                              ; $6086: $00
	db $fd                                           ; $6087: $fd
	sbc c                                            ; $6088: $99
	inc b                                            ; $6089: $04
	jr nc, jr_021_608c                               ; $608a: $30 $00

jr_021_608c:
	ld b, $66                                        ; $608c: $06 $66
	ld h, [hl]                                       ; $608e: $66
	sub h                                            ; $608f: $94
	add b                                            ; $6090: $80
	ldh [$71], a                                     ; $6091: $e0 $71
	adc l                                            ; $6093: $8d
	dec b                                            ; $6094: $05
	rlca                                             ; $6095: $07
	rlca                                             ; $6096: $07
	rrca                                             ; $6097: $0f
	rra                                              ; $6098: $1f
	ld a, [hl-]                                      ; $6099: $3a
	ld [hl], l                                       ; $609a: $75
	db $e3                                           ; $609b: $e3
	inc b                                            ; $609c: $04
	dec b                                            ; $609d: $05
	ld b, $0c                                        ; $609e: $06 $0c
	jr jr_021_60c2                                   ; $60a0: $18 $20

	ld b, b                                          ; $60a2: $40
	add b                                            ; $60a3: $80
	ld sp, hl                                        ; $60a4: $f9
	ld sp, hl                                        ; $60a5: $f9
	sbc $fa                                          ; $60a6: $de $fa
	rst SubAFromDE                                          ; $60a8: $df
	db $fc                                           ; $60a9: $fc
	sbc l                                            ; $60aa: $9d
	db $fd                                           ; $60ab: $fd
	adc a                                            ; $60ac: $8f
	call c, $df0f                                    ; $60ad: $dc $0f $df
	rlca                                             ; $60b0: $07
	rst SubAFromDE                                          ; $60b1: $df
	ccf                                              ; $60b2: $3f
	rst SubAFromDE                                          ; $60b3: $df
	ld a, a                                          ; $60b4: $7f
	db $dd                                           ; $60b5: $dd
	rst $38                                          ; $60b6: $ff
	rst SubAFromDE                                          ; $60b7: $df
	ldh [c], a                                       ; $60b8: $e2
	rst SubAFromDE                                          ; $60b9: $df
	call nz, $8480                                   ; $60ba: $c4 $80 $84
	adc b                                            ; $60bd: $88
	adc b                                            ; $60be: $88
	ld [$8f9f], sp                                   ; $60bf: $08 $9f $8f

jr_021_60c2:
	add a                                            ; $60c2: $87
	rst JumpTable                                          ; $60c3: $c7
	jp $f9f3                                         ; $60c4: $c3 $f3 $f9


	db $fd                                           ; $60c7: $fd
	ld h, b                                          ; $60c8: $60
	ld [hl], b                                       ; $60c9: $70
	ld a, b                                          ; $60ca: $78
	jr c, jr_021_6109                                ; $60cb: $38 $3c

	inc c                                            ; $60cd: $0c
	ld b, $02                                        ; $60ce: $06 $02
	rst $38                                          ; $60d0: $ff
	rst $38                                          ; $60d1: $ff
	rst AddAOntoHL                                          ; $60d2: $ef
	rst SubAFromBC                                          ; $60d3: $e7
	db $e3                                           ; $60d4: $e3
	pop af                                           ; $60d5: $f1
	ldh a, [$f8]                                     ; $60d6: $f0 $f8
	nop                                              ; $60d8: $00
	nop                                              ; $60d9: $00
	db $10                                           ; $60da: $10
	adc c                                            ; $60db: $89
	jr jr_021_60fa                                   ; $60dc: $18 $1c

	ld c, $0f                                        ; $60de: $0e $0f
	rlca                                             ; $60e0: $07
	ld bc, $8181                                     ; $60e1: $01 $81 $81
	pop bc                                           ; $60e4: $c1
	pop bc                                           ; $60e5: $c1
	pop hl                                           ; $60e6: $e1
	pop hl                                           ; $60e7: $e1
	ld h, c                                          ; $60e8: $61
	rst $38                                          ; $60e9: $ff
	ld a, a                                          ; $60ea: $7f
	ld a, a                                          ; $60eb: $7f
	ccf                                              ; $60ec: $3f
	ccf                                              ; $60ed: $3f
	rra                                              ; $60ee: $1f
	rra                                              ; $60ef: $1f
	sbc a                                            ; $60f0: $9f
	inc b                                            ; $60f1: $04
	call c, $9d06                                    ; $60f2: $dc $06 $9d
	ld c, $0b                                        ; $60f5: $0e $0b
	db $db                                           ; $60f7: $db
	rst $38                                          ; $60f8: $ff
	rst SubAFromDE                                          ; $60f9: $df

jr_021_60fa:
	rst FarCall                                          ; $60fa: $f7
	rst SubAFromDE                                          ; $60fb: $df
	ld [hl], e                                       ; $60fc: $73
	sbc [hl]                                         ; $60fd: $9e
	ld [hl], c                                       ; $60fe: $71
	call c, $df31                                    ; $60ff: $dc $31 $df
	adc h                                            ; $6102: $8c
	sbc [hl]                                         ; $6103: $9e
	adc [hl]                                         ; $6104: $8e
	call c, $ddce                                    ; $6105: $dc $ce $dd
	ret nc                                           ; $6108: $d0

jr_021_6109:
	db $dd                                           ; $6109: $dd
	ldh a, [$dd]                                     ; $610a: $f0 $dd
	cpl                                              ; $610c: $2f
	db $dd                                           ; $610d: $dd
	rrca                                             ; $610e: $0f
	rst SubAFromDE                                          ; $610f: $df
	ld hl, sp-$67                                    ; $6110: $f8 $99
	cp b                                             ; $6112: $b8
	ld a, c                                          ; $6113: $79
	cp h                                             ; $6114: $bc
	ld a, l                                          ; $6115: $7d
	cp h                                             ; $6116: $bc
	ld a, l                                          ; $6117: $7d
	reti                                             ; $6118: $d9


	rst $38                                          ; $6119: $ff
	sbc l                                            ; $611a: $9d
	cp b                                             ; $611b: $b8
	ld a, b                                          ; $611c: $78
	ld [hl], e                                       ; $611d: $73
	cp $9e                                           ; $611e: $fe $9e
	ld a, h                                          ; $6120: $7c
	reti                                             ; $6121: $d9


	rst $38                                          ; $6122: $ff
	ld a, [bc]                                       ; $6123: $0a
	nop                                              ; $6124: $00
	db $fd                                           ; $6125: $fd
	sbc c                                            ; $6126: $99
	inc bc                                           ; $6127: $03
	ld b, l                                          ; $6128: $45
	nop                                              ; $6129: $00
	ld b, $66                                        ; $612a: $06 $66
	ld h, [hl]                                       ; $612c: $66
	add b                                            ; $612d: $80
	add b                                            ; $612e: $80
	ldh [hDisp1_SCX], a                                     ; $612f: $e0 $91
	sbc [hl]                                         ; $6131: $9e
	add b                                            ; $6132: $80
	ld a, [$c09e]                                    ; $6133: $fa $9e $c0
	ld [$039c], a                                    ; $6136: $ea $9c $03
	ld b, $04                                        ; $6139: $06 $04
	ld [hl], a                                       ; $613b: $77
	cp $9d                                           ; $613c: $fe $9d
	dec b                                            ; $613e: $05
	ld [bc], a                                       ; $613f: $02
	jp c, $9704                                      ; $6140: $da $04 $97

	ld e, a                                          ; $6143: $5f
	ld l, $5e                                        ; $6144: $2e $5e
	ld a, $5c                                        ; $6146: $3e $5c
	inc a                                            ; $6148: $3c
	db $fc                                           ; $6149: $fc
	ld sp, hl                                        ; $614a: $f9
	db $dd                                           ; $614b: $dd
	inc bc                                           ; $614c: $03
	sbc $07                                          ; $614d: $de $07
	add b                                            ; $614f: $80
	adc a                                            ; $6150: $8f
	inc de                                           ; $6151: $13
	daa                                              ; $6152: $27
	daa                                              ; $6153: $27
	ld c, a                                          ; $6154: $4f
	rst GetHLinHL                                          ; $6155: $cf
	sbc a                                            ; $6156: $9f
	sbc a                                            ; $6157: $9f
	rra                                              ; $6158: $1f
	rst $38                                          ; $6159: $ff
	cp $fe                                           ; $615a: $fe $fe
	db $fc                                           ; $615c: $fc
	db $fc                                           ; $615d: $fc
	ld hl, sp-$0f                                    ; $615e: $f8 $f1
	pop af                                           ; $6160: $f1
	rst SubAFromHL                                          ; $6161: $d7
	xor a                                            ; $6162: $af

Jump_021_6163:
	rst $38                                          ; $6163: $ff
	ld e, a                                          ; $6164: $5f
	cp a                                             ; $6165: $bf
	rst $38                                          ; $6166: $ff
	ld a, a                                          ; $6167: $7f
	ccf                                              ; $6168: $3f
	jr c, jr_021_61db                                ; $6169: $38 $70

	ld h, b                                          ; $616b: $60
	ldh [$c0], a                                     ; $616c: $e0 $c0
	add b                                            ; $616e: $80
	sub l                                            ; $616f: $95
	add b                                            ; $6170: $80
	ret nz                                           ; $6171: $c0

	ei                                               ; $6172: $fb
	ld a, [$fcf8]                                    ; $6173: $fa $f8 $fc
	db $fc                                           ; $6176: $fc
	cp $fe                                           ; $6177: $fe $fe
	rst $38                                          ; $6179: $ff
	sbc $07                                          ; $617a: $de $07
	rst SubAFromDE                                          ; $617c: $df
	inc bc                                           ; $617d: $03
	rst SubAFromDE                                          ; $617e: $df
	ld bc, $009b                                     ; $617f: $01 $9b $00
	ccf                                              ; $6182: $3f
	rra                                              ; $6183: $1f
	rrca                                             ; $6184: $0f
	ld [hl], e                                       ; $6185: $73
	rst FarCall                                          ; $6186: $f7
	reti                                             ; $6187: $d9


	rst $38                                          ; $6188: $ff
	rst SubAFromDE                                          ; $6189: $df
	ld [bc], a                                       ; $618a: $02
	rst SubAFromDE                                          ; $618b: $df
	ld b, $dd                                        ; $618c: $06 $dd
	inc b                                            ; $618e: $04
	reti                                             ; $618f: $d9


	rst $38                                          ; $6190: $ff
	reti                                             ; $6191: $d9


	ld [hl], e                                       ; $6192: $73
	reti                                             ; $6193: $d9


	adc h                                            ; $6194: $8c
	sbc l                                            ; $6195: $9d
	sub h                                            ; $6196: $94
	sub b                                            ; $6197: $90
	db $db                                           ; $6198: $db
	sbc b                                            ; $6199: $98
	rst SubAFromDE                                          ; $619a: $df
	ld l, a                                          ; $619b: $6f
	db $db                                           ; $619c: $db
	ld h, a                                          ; $619d: $67
	rst SubAFromDE                                          ; $619e: $df
	ld a, b                                          ; $619f: $78
	db $db                                           ; $61a0: $db
	ld hl, sp-$27                                    ; $61a1: $f8 $d9
	rst $38                                          ; $61a3: $ff
	sbc e                                            ; $61a4: $9b
	cp b                                             ; $61a5: $b8
	ld a, d                                          ; $61a6: $7a
	cp b                                             ; $61a7: $b8
	ld a, b                                          ; $61a8: $78
	ld [hl], a                                       ; $61a9: $77
	cp $d9                                           ; $61aa: $fe $d9
	rst $38                                          ; $61ac: $ff
	dec bc                                           ; $61ad: $0b
	nop                                              ; $61ae: $00
	cp $98                                           ; $61af: $fe $98
	ld bc, $4503                                     ; $61b1: $01 $03 $45
	nop                                              ; $61b4: $00
	ld b, $66                                        ; $61b5: $06 $66
	ld h, [hl]                                       ; $61b7: $66
	pop de                                           ; $61b8: $d1
	add b                                            ; $61b9: $80
	sbc l                                            ; $61ba: $9d
	inc bc                                           ; $61bb: $03
	ld b, $fb                                        ; $61bc: $06 $fb
	sub l                                            ; $61be: $95
	inc bc                                           ; $61bf: $03
	rlca                                             ; $61c0: $07
	rlca                                             ; $61c1: $07
	ld c, $0c                                        ; $61c2: $0e $0c
	ld [rRAMG], sp                                   ; $61c4: $08 $00 $00
	add b                                            ; $61c7: $80
	add b                                            ; $61c8: $80
	ei                                               ; $61c9: $fb
	rst SubAFromDE                                          ; $61ca: $df
	cp b                                             ; $61cb: $b8
	sbc [hl]                                         ; $61cc: $9e
	db $10                                           ; $61cd: $10
	db $fc                                           ; $61ce: $fc
	sbc h                                            ; $61cf: $9c
	ld b, h                                          ; $61d0: $44
	inc b                                            ; $61d1: $04
	inc b                                            ; $61d2: $04
	db $fc                                           ; $61d3: $fc
	sbc l                                            ; $61d4: $9d
	inc a                                            ; $61d5: $3c
	ld [hl], h                                       ; $61d6: $74
	ld l, a                                          ; $61d7: $6f
	ld hl, sp-$07                                    ; $61d8: $f8 $f9
	sbc [hl]                                         ; $61da: $9e

jr_021_61db:
	ld b, b                                          ; $61db: $40
	ld a, [$209c]                                    ; $61dc: $fa $9c $20
	nop                                              ; $61df: $00
	ld bc, $c06f                                     ; $61e0: $01 $6f $c0
	sub c                                            ; $61e3: $91
	inc bc                                           ; $61e4: $03
	ld bc, $0100                                     ; $61e5: $01 $00 $01
	rlca                                             ; $61e8: $07
	nop                                              ; $61e9: $00
	nop                                              ; $61ea: $00
	rra                                              ; $61eb: $1f
	rlca                                             ; $61ec: $07
	ld c, a                                          ; $61ed: $4f
	db $fd                                           ; $61ee: $fd
	ld bc, $0303                                     ; $61ef: $01 $03 $03
	ld [hl], e                                       ; $61f2: $73
	ld hl, sp-$74                                    ; $61f3: $f8 $8c
	pop hl                                           ; $61f5: $e1
	add e                                            ; $61f6: $83
	rlca                                             ; $61f7: $07
	ld b, $7a                                        ; $61f8: $06 $7a
	reti                                             ; $61fa: $d9


	call c, $8707                                    ; $61fb: $dc $07 $87
	add c                                            ; $61fe: $81
	nop                                              ; $61ff: $00
	nop                                              ; $6200: $00
	ld a, c                                          ; $6201: $79
	ld hl, sp-$04                                    ; $6202: $f8 $fc
	scf                                              ; $6204: $37
	or a                                             ; $6205: $b7
	sub c                                            ; $6206: $91
	ld bc, $d37b                                     ; $6207: $01 $7b $d3
	sub [hl]                                         ; $620a: $96
	ret nz                                           ; $620b: $c0

	adc b                                            ; $620c: $88
	ld hl, sp-$80                                    ; $620d: $f8 $80
	ret nz                                           ; $620f: $c0

	ret nz                                           ; $6210: $c0

	adc b                                            ; $6211: $88
	adc b                                            ; $6212: $88
	ld b, b                                          ; $6213: $40
	ld [hl], e                                       ; $6214: $73
	ld hl, sp-$16                                    ; $6215: $f8 $ea
	ld l, a                                          ; $6217: $6f
	xor e                                            ; $6218: $ab
	ld h, e                                          ; $6219: $63
	ld hl, sp-$63                                    ; $621a: $f8 $9d
	ldh a, [$fd]                                     ; $621c: $f0 $fd
	ld l, e                                          ; $621e: $6b
	ld hl, sp-$6f                                    ; $621f: $f8 $91
	dec c                                            ; $6221: $0d
	ld de, $2221                                     ; $6222: $11 $21 $22
	ld b, d                                          ; $6225: $42
	ld b, h                                          ; $6226: $44
	add l                                            ; $6227: $85
	adc c                                            ; $6228: $89
	ld a, [bc]                                       ; $6229: $0a
	rra                                              ; $622a: $1f
	ccf                                              ; $622b: $3f
	ccf                                              ; $622c: $3f
	ld a, a                                          ; $622d: $7f
	ld a, a                                          ; $622e: $7f
	sbc $ff                                          ; $622f: $de $ff
	sbc d                                            ; $6231: $9a
	daa                                              ; $6232: $27
	ld b, a                                          ; $6233: $47
	ld c, a                                          ; $6234: $4f
	sbc a                                            ; $6235: $9f
	cp a                                             ; $6236: $bf
	ld [hl], a                                       ; $6237: $77
	or $80                                           ; $6238: $f6 $80
	cp $f8                                           ; $623a: $fe $f8
	ldh a, [$e0]                                     ; $623c: $f0 $e0
	pop bc                                           ; $623e: $c1
	rst JumpTable                                          ; $623f: $c7
	sbc b                                            ; $6240: $98
	rst JumpTable                                          ; $6241: $c7
	db $e3                                           ; $6242: $e3
	ei                                               ; $6243: $fb
	pop hl                                           ; $6244: $e1
	cp a                                             ; $6245: $bf
	ldh [$3e], a                                     ; $6246: $e0 $3e
	db $fd                                           ; $6248: $fd
	rst $38                                          ; $6249: $ff
	rra                                              ; $624a: $1f
	rlca                                             ; $624b: $07
	rra                                              ; $624c: $1f
	ld a, a                                          ; $624d: $7f
	rst $38                                          ; $624e: $ff
	pop bc                                           ; $624f: $c1
	inc bc                                           ; $6250: $03
	inc h                                            ; $6251: $24
	ld [hl+], a                                      ; $6252: $22
	ld [hl+], a                                      ; $6253: $22
	sub c                                            ; $6254: $91
	sub c                                            ; $6255: $91
	ret z                                            ; $6256: $c8

	db $e4                                           ; $6257: $e4

jr_021_6258:
	ld a, [$ffd9]                                    ; $6258: $fa $d9 $ff
	sbc l                                            ; $625b: $9d
	db $10                                           ; $625c: $10
	jr nz, jr_021_62d6                               ; $625d: $20 $77

	cp $9d                                           ; $625f: $fe $9d
	ld [de], a                                       ; $6261: $12
	ld [hl+], a                                      ; $6262: $22
	reti                                             ; $6263: $d9


	rst $38                                          ; $6264: $ff
	reti                                             ; $6265: $d9


	di                                               ; $6266: $f3
	reti                                             ; $6267: $d9


	inc c                                            ; $6268: $0c
	sub l                                            ; $6269: $95
	dec a                                            ; $626a: $3d
	cp d                                             ; $626b: $ba
	or l                                             ; $626c: $b5
	or d                                             ; $626d: $b2
	or l                                             ; $626e: $b5
	sub d                                            ; $626f: $92
	sub l                                            ; $6270: $95
	sub d                                            ; $6271: $92
	rst JumpTable                                          ; $6272: $c7
	ld b, a                                          ; $6273: $47
	sbc $4f                                          ; $6274: $de $4f
	sbc $6f                                          ; $6276: $de $6f
	db $dd                                           ; $6278: $dd
	jr c, jr_021_6258                                ; $6279: $38 $dd

	ld a, b                                          ; $627b: $78
	reti                                             ; $627c: $d9


	rst $38                                          ; $627d: $ff
	sub a                                            ; $627e: $97
	cp d                                             ; $627f: $ba
	ld [hl], b                                       ; $6280: $70
	cp c                                             ; $6281: $b9
	ld [hl], d                                       ; $6282: $72
	cp b                                             ; $6283: $b8
	ld [hl], l                                       ; $6284: $75
	cp b                                             ; $6285: $b8
	ld a, l                                          ; $6286: $7d
	reti                                             ; $6287: $d9


	rst $38                                          ; $6288: $ff
	dec bc                                           ; $6289: $0b
	nop                                              ; $628a: $00
	db $dd                                           ; $628b: $dd
	ld de, $0099                                     ; $628c: $11 $99 $00
	dec [hl]                                         ; $628f: $35
	ld d, b                                          ; $6290: $50
	ld h, $66                                        ; $6291: $26 $66
	ld h, [hl]                                       ; $6293: $66
	db $eb                                           ; $6294: $eb
	add h                                            ; $6295: $84
	add b                                            ; $6296: $80
	sbc h                                            ; $6297: $9c
	ld a, $7e                                        ; $6298: $3e $7e
	ld a, b                                          ; $629a: $78
	sbc h                                            ; $629b: $9c
	inc c                                            ; $629c: $0c
	rlca                                             ; $629d: $07
	dec b                                            ; $629e: $05
	sbc a                                            ; $629f: $9f
	ccf                                              ; $62a0: $3f
	ld a, [hl]                                       ; $62a1: $7e
	ld a, e                                          ; $62a2: $7b
	db $fc                                           ; $62a3: $fc
	db $fc                                           ; $62a4: $fc
	rst $38                                          ; $62a5: $ff
	ld a, l                                          ; $62a6: $7d
	ld a, h                                          ; $62a7: $7c
	ld e, b                                          ; $62a8: $58
	ld d, b                                          ; $62a9: $50
	ld a, b                                          ; $62aa: $78
	ld a, a                                          ; $62ab: $7f
	halt                                             ; $62ac: $76
	db $fc                                           ; $62ad: $fc
	db $fd                                           ; $62ae: $fd
	cp $ff                                           ; $62af: $fe $ff
	rst FarCall                                          ; $62b1: $f7
	rst $38                                          ; $62b2: $ff
	rst $38                                          ; $62b3: $ff
	or $e0                                           ; $62b4: $f6 $e0
	sub [hl]                                         ; $62b6: $96
	di                                               ; $62b7: $f3
	ld a, b                                          ; $62b8: $78
	or [hl]                                          ; $62b9: $b6
	rst $38                                          ; $62ba: $ff
	ld a, [hl]                                       ; $62bb: $7e
	inc a                                            ; $62bc: $3c
	ld a, b                                          ; $62bd: $78
	rst FarCall                                          ; $62be: $f7
	db $e3                                           ; $62bf: $e3
	ld a, e                                          ; $62c0: $7b
	ld hl, sp-$6e                                    ; $62c1: $f8 $92
	ld sp, hl                                        ; $62c3: $f9
	di                                               ; $62c4: $f3
	ld [hl], a                                       ; $62c5: $77
	rst $38                                          ; $62c6: $ff
	db $e3                                           ; $62c7: $e3
	ld a, c                                          ; $62c8: $79
	ei                                               ; $62c9: $fb
	ld a, a                                          ; $62ca: $7f
	ld a, h                                          ; $62cb: $7c
	db $fc                                           ; $62cc: $fc
	cp h                                             ; $62cd: $bc
	sbc l                                            ; $62ce: $9d
	sbc $67                                          ; $62cf: $de $67
	ld hl, sp-$21                                    ; $62d1: $f8 $df
	rst $38                                          ; $62d3: $ff
	sbc c                                            ; $62d4: $99
	ei                                               ; $62d5: $fb

jr_021_62d6:
	di                                               ; $62d6: $f3
	or $7f                                           ; $62d7: $f6 $7f
	rst $38                                          ; $62d9: $ff
	ccf                                              ; $62da: $3f
	ld h, a                                          ; $62db: $67
	ld hl, sp-$6d                                    ; $62dc: $f8 $93
	rrca                                             ; $62de: $0f
	adc a                                            ; $62df: $8f
	add a                                            ; $62e0: $87
	and $e7                                          ; $62e1: $e6 $e7
	adc a                                            ; $62e3: $8f
	ld a, [$0fd0]                                    ; $62e4: $fa $d0 $0f
	rst $38                                          ; $62e7: $ff
	rst FarCall                                          ; $62e8: $f7
	cp $de                                           ; $62e9: $fe $de
	rst $38                                          ; $62eb: $ff
	sub [hl]                                         ; $62ec: $96
	rst SubAFromDE                                          ; $62ed: $df
	ret nz                                           ; $62ee: $c0

	add h                                            ; $62ef: $84
	adc c                                            ; $62f0: $89
	rlca                                             ; $62f1: $07
	rst SubAFromBC                                          ; $62f2: $e7
	add hl, de                                       ; $62f3: $19
	ld a, b                                          ; $62f4: $78
	ld c, b                                          ; $62f5: $48
	sbc $ff                                          ; $62f6: $de $ff
	ld a, a                                          ; $62f8: $7f
	ldh [c], a                                       ; $62f9: $e2
	ld a, a                                          ; $62fa: $7f
	res 2, l                                         ; $62fb: $cb $95
	rst $38                                          ; $62fd: $ff
	sbc a                                            ; $62fe: $9f
	cp a                                             ; $62ff: $bf
	or e                                             ; $6300: $b3
	add e                                            ; $6301: $83
	and b                                            ; $6302: $a0
	rst JumpTable                                          ; $6303: $c7
	ld d, a                                          ; $6304: $57
	ld a, e                                          ; $6305: $7b
	sbc a                                            ; $6306: $9f
	sbc $bf                                          ; $6307: $de $bf
	sub a                                            ; $6309: $97
	db $fc                                           ; $630a: $fc
	rst SubAFromDE                                          ; $630b: $df
	rst SubAFromHL                                          ; $630c: $d7
	ei                                               ; $630d: $fb
	ld l, a                                          ; $630e: $6f
	rst SubAFromDE                                          ; $630f: $df
	rst $38                                          ; $6310: $ff
	rst AddAOntoHL                                          ; $6311: $ef
	ld a, e                                          ; $6312: $7b
	jp $f39e                                         ; $6313: $c3 $9e $f3


	ld h, a                                          ; $6316: $67
	ld hl, sp+$7f                                    ; $6317: $f8 $7f
	ld a, [$df99]                                    ; $6319: $fa $99 $df
	rst SubAFromBC                                          ; $631c: $e7
	rst SubAFromDE                                          ; $631d: $df
	rst $38                                          ; $631e: $ff
	ei                                               ; $631f: $fb
	cp $6f                                           ; $6320: $fe $6f
	ld hl, sp-$68                                    ; $6322: $f8 $98
	ld a, [$fffc]                                    ; $6324: $fa $fc $ff
	rst $38                                          ; $6327: $ff
	adc a                                            ; $6328: $8f
	add c                                            ; $6329: $81
	add b                                            ; $632a: $80
	cp $de                                           ; $632b: $fe $de
	add b                                            ; $632d: $80
	db $fc                                           ; $632e: $fc
	sbc $ff                                          ; $632f: $de $ff
	sbc l                                            ; $6331: $9d
	ldh a, [rSB]                                     ; $6332: $f0 $01
	sbc $03                                          ; $6334: $de $03
	ld sp, hl                                        ; $6336: $f9
	ld [hl], a                                       ; $6337: $77
	sbc e                                            ; $6338: $9b
	sbc d                                            ; $6339: $9a
	rst $38                                          ; $633a: $ff
	db $fd                                           ; $633b: $fd
	db $fd                                           ; $633c: $fd
	db $ed                                           ; $633d: $ed
	add hl, bc                                       ; $633e: $09
	db $db                                           ; $633f: $db
	ld [$18df], sp                                   ; $6340: $08 $df $18
	db $db                                           ; $6343: $db
	inc e                                            ; $6344: $1c
	sbc l                                            ; $6345: $9d
	dec e                                            ; $6346: $1d
	rst FarCall                                          ; $6347: $f7
	jp c, $dff3                                      ; $6348: $da $f3 $df

	adc b                                            ; $634b: $88
	sbc l                                            ; $634c: $9d
	xor b                                            ; $634d: $a8
	and h                                            ; $634e: $a4
	sbc $b4                                          ; $634f: $de $b4
	sbc [hl]                                         ; $6351: $9e
	db $f4                                           ; $6352: $f4
	ld a, e                                          ; $6353: $7b
	ld [hl], l                                       ; $6354: $75
	sbc [hl]                                         ; $6355: $9e
	rst SubAFromDE                                          ; $6356: $df
	db $dd                                           ; $6357: $dd
	rst GetHLinHL                                          ; $6358: $cf
	sbc l                                            ; $6359: $9d
	ld a, h                                          ; $635a: $7c
	cp d                                             ; $635b: $ba
	ld a, e                                          ; $635c: $7b
	cp $9c                                           ; $635d: $fe $9c
	ld a, [hl-]                                      ; $635f: $3a
	ld e, h                                          ; $6360: $5c
	ld a, [hl-]                                      ; $6361: $3a
	reti                                             ; $6362: $d9


	rst $38                                          ; $6363: $ff
	sbc d                                            ; $6364: $9a
	ld c, $0f                                        ; $6365: $0e $0f
	ld c, $07                                        ; $6367: $0e $07
	ld b, $7b                                        ; $6369: $06 $7b
	cp $de                                           ; $636b: $fe $de
	pop af                                           ; $636d: $f1
	call c, $97f9                                    ; $636e: $dc $f9 $97
	or d                                             ; $6371: $b2
	ld [hl], c                                       ; $6372: $71
	or d                                             ; $6373: $b2
	ld a, c                                          ; $6374: $79
	cp d                                             ; $6375: $ba
	ld a, c                                          ; $6376: $79
	cp b                                             ; $6377: $b8
	ld a, c                                          ; $6378: $79
	sbc $cf                                          ; $6379: $de $cf
	call c, $9cc7                                    ; $637b: $dc $c7 $9c
	sbc d                                            ; $637e: $9a
	ld a, l                                          ; $637f: $7d
	cp d                                             ; $6380: $ba
	ld [hl], e                                       ; $6381: $73
	cp $d8                                           ; $6382: $fe $d8
	rst $38                                          ; $6384: $ff
	sbc b                                            ; $6385: $98
	ld a, [hl]                                       ; $6386: $7e
	db $fd                                           ; $6387: $fd
	ld a, a                                          ; $6388: $7f
	db $fd                                           ; $6389: $fd
	ld a, [hl]                                       ; $638a: $7e
	cp a                                             ; $638b: $bf
	ld a, [hl]                                       ; $638c: $7e
	reti                                             ; $638d: $d9


	rst $38                                          ; $638e: $ff
	sub l                                            ; $638f: $95
	jp Jump_021_6163                                 ; $6390: $c3 $63 $61


	db $e3                                           ; $6393: $e3
	rst GetHLinHL                                          ; $6394: $cf
	rst AddAOntoHL                                          ; $6395: $ef
	rst JumpTable                                          ; $6396: $c7
	add e                                            ; $6397: $83
	bit 4, e                                         ; $6398: $cb $63
	ld a, e                                          ; $639a: $7b
	db $dd                                           ; $639b: $dd
	sub e                                            ; $639c: $93
	rst AddAOntoHL                                          ; $639d: $ef
	rst FarCall                                          ; $639e: $f7
	ei                                               ; $639f: $fb
	db $d3                                           ; $63a0: $d3
	sbc b                                            ; $63a1: $98
	cp a                                             ; $63a2: $bf
	and c                                            ; $63a3: $a1
	and b                                            ; $63a4: $a0
	ld [hl+], a                                      ; $63a5: $22
	db $e3                                           ; $63a6: $e3
	add a                                            ; $63a7: $87
	db $dd                                           ; $63a8: $dd
	ld a, e                                          ; $63a9: $7b
	rra                                              ; $63aa: $1f
	sub e                                            ; $63ab: $93
	cp [hl]                                          ; $63ac: $be
	ld a, $fa                                        ; $63ad: $3e $fa
	cp h                                             ; $63af: $bc
	rst $38                                          ; $63b0: $ff
	dec sp                                           ; $63b1: $3b
	ld a, e                                          ; $63b2: $7b
	ld [hl], a                                       ; $63b3: $77
	halt                                             ; $63b4: $76
	db $fc                                           ; $63b5: $fc
	rst SubAFromDE                                          ; $63b6: $df
	sbc a                                            ; $63b7: $9f
	ld [hl], a                                       ; $63b8: $77

Call_021_63b9:
	ld hl, sp+$7e                                    ; $63b9: $f8 $7e

jr_021_63bb:
	pop bc                                           ; $63bb: $c1
	sub c                                            ; $63bc: $91
	ccf                                              ; $63bd: $3f
	ld a, a                                          ; $63be: $7f
	ld hl, sp-$0f                                    ; $63bf: $f8 $f1
	ld sp, $3a70                                     ; $63c1: $31 $70 $3a
	add hl, de                                       ; $63c4: $19
	add e                                            ; $63c5: $83
	sub b                                            ; $63c6: $90
	ld hl, sp-$0e                                    ; $63c7: $f8 $f2
	jr nc, jr_021_63bb                               ; $63c9: $30 $f0

	ld a, d                                          ; $63cb: $7a
	ldh a, [c]                                       ; $63cc: $f2
	sub [hl]                                         ; $63cd: $96
	sbc h                                            ; $63ce: $9c
	inc sp                                           ; $63cf: $33
	pop bc                                           ; $63d0: $c1
	add e                                            ; $63d1: $83
	pop hl                                           ; $63d2: $e1
	ld h, l                                          ; $63d3: $65
	rst GetHLinHL                                          ; $63d4: $cf
	add a                                            ; $63d5: $87
	and $7b                                          ; $63d6: $e6 $7b
	push hl                                          ; $63d8: $e5
	rst SubAFromDE                                          ; $63d9: $df
	db $fd                                           ; $63da: $fd
	ld a, a                                          ; $63db: $7f
	ld hl, sp-$21                                    ; $63dc: $f8 $df
	rst SubAFromBC                                          ; $63de: $e7
	add b                                            ; $63df: $80
	sbc $9e                                          ; $63e0: $de $9e
	ld b, $86                                        ; $63e2: $06 $86
	rst GetHLinHL                                          ; $63e4: $cf
	ld a, a                                          ; $63e5: $7f
	dec hl                                           ; $63e6: $2b
	rst AddAOntoHL                                          ; $63e7: $ef
	rst SubAFromDE                                          ; $63e8: $df
	rst $38                                          ; $63e9: $ff
	rst $38                                          ; $63ea: $ff
	cp $ff                                           ; $63eb: $fe $ff
	ld a, a                                          ; $63ed: $7f
	db $eb                                           ; $63ee: $eb
	add b                                            ; $63ef: $80
	add a                                            ; $63f0: $87
	ld d, c                                          ; $63f1: $51
	add hl, sp                                       ; $63f2: $39
	dec c                                            ; $63f3: $0d
	add a                                            ; $63f4: $87
	sub d                                            ; $63f5: $92
	pop de                                           ; $63f6: $d1
	rst $38                                          ; $63f7: $ff
	rst $38                                          ; $63f8: $ff
	pop de                                           ; $63f9: $d1
	ld sp, hl                                        ; $63fa: $f9
	db $dd                                           ; $63fb: $dd
	sbc a                                            ; $63fc: $9f
	adc [hl]                                         ; $63fd: $8e
	call $db80                                       ; $63fe: $cd $80 $db
	rst JumpTable                                          ; $6401: $c7
	call z, $e0e8                                    ; $6402: $cc $e8 $e0
	rst AddAOntoHL                                          ; $6405: $ef
	ld a, a                                          ; $6406: $7f
	push hl                                          ; $6407: $e5
	db $db                                           ; $6408: $db
	rst JumpTable                                          ; $6409: $c7
	rst GetHLinHL                                          ; $640a: $cf
	rst AddAOntoHL                                          ; $640b: $ef
	rst SubAFromBC                                          ; $640c: $e7
	rst AddAOntoHL                                          ; $640d: $ef
	ld a, a                                          ; $640e: $7f
	rst SubAFromBC                                          ; $640f: $e7
	db $eb                                           ; $6410: $eb
	ret z                                            ; $6411: $c8

	ld b, h                                          ; $6412: $44
	ld a, h                                          ; $6413: $7c
	ld sp, hl                                        ; $6414: $f9
	ld a, b                                          ; $6415: $78
	ld hl, sp+$7f                                    ; $6416: $f8 $7f
	db $eb                                           ; $6418: $eb
	ret                                              ; $6419: $c9


	rst GetHLinHL                                          ; $641a: $cf
	cp $f9                                           ; $641b: $fe $f9
	ld a, c                                          ; $641d: $79
	ld sp, hl                                        ; $641e: $f9
	sbc e                                            ; $641f: $9b
	ld a, a                                          ; $6420: $7f
	db $f4                                           ; $6421: $f4
	ldh a, [c]                                       ; $6422: $f2
	di                                               ; $6423: $f3
	ld a, e                                          ; $6424: $7b
	dec d                                            ; $6425: $15
	rst SubAFromDE                                          ; $6426: $df
	rst GetHLinHL                                          ; $6427: $cf
	sbc l                                            ; $6428: $9d
	db $f4                                           ; $6429: $f4
	di                                               ; $642a: $f3
	ld l, a                                          ; $642b: $6f
	ld hl, sp-$01                                    ; $642c: $f8 $ff
	rst SubAFromDE                                          ; $642e: $df
	ret nz                                           ; $642f: $c0

	sbc e                                            ; $6430: $9b
	ldh [$f8], a                                     ; $6431: $e0 $f8
	ldh a, [$d0]                                     ; $6433: $f0 $d0
	ld a, d                                          ; $6435: $7a
	cp [hl]                                          ; $6436: $be
	rst SubAFromDE                                          ; $6437: $df
	ret nz                                           ; $6438: $c0

	sbc h                                            ; $6439: $9c
	db $fc                                           ; $643a: $fc
	ldh a, [$d8]                                     ; $643b: $f0 $d8
	reti                                             ; $643d: $d9


	rlca                                             ; $643e: $07

Call_021_643f:
	ld sp, hl                                        ; $643f: $f9
	sub a                                            ; $6440: $97
	db $fd                                           ; $6441: $fd
	push af                                          ; $6442: $f5
	push af                                          ; $6443: $f5

Call_021_6444:
	pop af                                           ; $6444: $f1
	ld sp, hl                                        ; $6445: $f9
	reti                                             ; $6446: $d9


	ei                                               ; $6447: $fb
	ldh [c], a                                       ; $6448: $e2
	db $dd                                           ; $6449: $dd
	jr @-$6d                                         ; $644a: $18 $91

	db $10                                           ; $644c: $10
	jr nc, jr_021_647f                               ; $644d: $30 $30

	ld sp, $2929                                     ; $644f: $31 $29 $29
	dec sp                                           ; $6452: $3b
	dec hl                                           ; $6453: $2b
	dec hl                                           ; $6454: $2b
	ld [bc], a                                       ; $6455: $02
	ld h, $16                                        ; $6456: $26 $16
	rst FarCall                                          ; $6458: $f7
	rst FarCall                                          ; $6459: $f7
	sbc $e7                                          ; $645a: $de $e7
	sub h                                            ; $645c: $94
	rst AddAOntoHL                                          ; $645d: $ef
	rst GetHLinHL                                          ; $645e: $cf
	rst GetHLinHL                                          ; $645f: $cf
	sbc $5a                                          ; $6460: $de $5a
	ld e, d                                          ; $6462: $5a
	ld l, $ae                                        ; $6463: $2e $ae
	xor [hl]                                         ; $6465: $ae
	sub a                                            ; $6466: $97
	or l                                             ; $6467: $b5
	sbc $e7                                          ; $6468: $de $e7
	sbc $f3                                          ; $646a: $de $f3
	sub l                                            ; $646c: $95
	ei                                               ; $646d: $fb
	db $db                                           ; $646e: $db
	ld a, h                                          ; $646f: $7c
	jr z, jr_021_64ce                                ; $6470: $28 $5c

	jr c, jr_021_64c8                                ; $6472: $38 $54

	jr c, @+$5e                                      ; $6474: $38 $5c

	jr z, @-$25                                      ; $6476: $28 $d9

	rst $38                                          ; $6478: $ff
	rst SubAFromDE                                          ; $6479: $df
	ld h, $df                                        ; $647a: $26 $df
	daa                                              ; $647c: $27
	rst SubAFromDE                                          ; $647d: $df
	inc hl                                           ; $647e: $23

jr_021_647f:
	rst SubAFromDE                                          ; $647f: $df
	inc sp                                           ; $6480: $33
	rst SubAFromDE                                          ; $6481: $df
	reti                                             ; $6482: $d9


	rst SubAFromDE                                          ; $6483: $df
	ret c                                            ; $6484: $d8

	rst SubAFromDE                                          ; $6485: $df
	call c, $ccdf                                    ; $6486: $dc $df $cc
	ld a, [hl]                                       ; $6489: $7e
	add $6f                                          ; $648a: $c6 $6f
	cp $d9                                           ; $648c: $fe $d9
	rst JumpTable                                          ; $648e: $c7

jr_021_648f:
	halt                                             ; $648f: $76
	call nz, $fa9e                                   ; $6490: $c4 $9e $fa
	ld a, e                                          ; $6493: $7b
	cp $d9                                           ; $6494: $fe $d9
	rst $38                                          ; $6496: $ff
	sbc h                                            ; $6497: $9c
	cp l                                             ; $6498: $bd
	ld a, a                                          ; $6499: $7f
	cp l                                             ; $649a: $bd
	ld a, d                                          ; $649b: $7a
	jp nz, $fa7f                                     ; $649c: $c2 $7f $fa

	reti                                             ; $649f: $d9


	rst $38                                          ; $64a0: $ff
	sub d                                            ; $64a1: $92
	add d                                            ; $64a2: $82
	adc [hl]                                         ; $64a3: $8e
	cp b                                             ; $64a4: $b8
	rrca                                             ; $64a5: $0f
	adc $e6                                          ; $64a6: $ce $e6
	jp z, $fa1c                                      ; $64a8: $ca $1c $fa

	cp $ff                                           ; $64ab: $fe $ff
	rrca                                             ; $64ad: $0f
	adc $7b                                          ; $64ae: $ce $7b
	rrca                                             ; $64b0: $0f
	sub [hl]                                         ; $64b1: $96
	ld [bc], a                                       ; $64b2: $02
	ld h, [hl]                                       ; $64b3: $66
	ld a, a                                          ; $64b4: $7f
	dec a                                            ; $64b5: $3d
	inc c                                            ; $64b6: $0c
	inc d                                            ; $64b7: $14
	inc e                                            ; $64b8: $1c
	scf                                              ; $64b9: $37
	dec c                                            ; $64ba: $0d
	ld a, d                                          ; $64bb: $7a
	sbc [hl]                                         ; $64bc: $9e
	adc [hl]                                         ; $64bd: $8e
	ld c, $16                                        ; $64be: $0e $16
	rra                                              ; $64c0: $1f
	scf                                              ; $64c1: $37
	ld a, $04                                        ; $64c2: $3e $04

Call_021_64c4:
	add hl, bc                                       ; $64c4: $09
	rrca                                             ; $64c5: $0f
	rra                                              ; $64c6: $1f
	inc bc                                           ; $64c7: $03

jr_021_64c8:
	sub e                                            ; $64c8: $93
	rst $38                                          ; $64c9: $ff
	rst $38                                          ; $64ca: $ff
	add a                                            ; $64cb: $87
	rrca                                             ; $64cc: $0f
	rrca                                             ; $64cd: $0f

jr_021_64ce:
	rra                                              ; $64ce: $1f
	ld a, e                                          ; $64cf: $7b
	jp z, $2488                                      ; $64d0: $ca $88 $24

	adc $df                                          ; $64d3: $ce $df
	call c, $a7ee                                    ; $64d5: $dc $ee $a7
	add [hl]                                         ; $64d8: $86
	inc [hl]                                         ; $64d9: $34
	cp h                                             ; $64da: $bc
	adc $df                                          ; $64db: $ce $df
	rst SubAFromDE                                          ; $64dd: $df
	pop hl                                           ; $64de: $e1
	and a                                            ; $64df: $a7
	add a                                            ; $64e0: $87
	inc sp                                           ; $64e1: $33
	cp $fe                                           ; $64e2: $fe $fe
	halt                                             ; $64e4: $76
	inc sp                                           ; $64e5: $33
	ccf                                              ; $64e6: $3f
	inc a                                            ; $64e7: $3c
	ld a, c                                          ; $64e8: $79
	ld a, c                                          ; $64e9: $79
	ld d, e                                          ; $64ea: $53
	adc [hl]                                         ; $64eb: $8e
	halt                                             ; $64ec: $76
	or e                                             ; $64ed: $b3
	cp a                                             ; $64ee: $bf
	cp h                                             ; $64ef: $bc
	ld sp, hl                                        ; $64f0: $f9
	rst $38                                          ; $64f1: $ff
	ccf                                              ; $64f2: $3f
	cpl                                              ; $64f3: $2f
	ld a, [hl-]                                      ; $64f4: $3a
	db $fc                                           ; $64f5: $fc
	jr jr_021_6510                                   ; $64f6: $18 $18

	ld hl, sp-$04                                    ; $64f8: $f8 $fc
	rst $38                                          ; $64fa: $ff
	rst AddAOntoHL                                          ; $64fb: $ef
	ld a, [$f873]                                    ; $64fc: $fa $73 $f8
	add b                                            ; $64ff: $80
	pop hl                                           ; $6500: $e1
	jp hl                                            ; $6501: $e9


	pop hl                                           ; $6502: $e1
	ldh a, [$f0]                                     ; $6503: $f0 $f0
	jr c, jr_021_648f                                ; $6505: $38 $88

jr_021_6507:
	rrca                                             ; $6507: $0f
	db $ed                                           ; $6508: $ed
	pop hl                                           ; $6509: $e1
	pop hl                                           ; $650a: $e1
	ldh a, [$f1]                                     ; $650b: $f0 $f1
	jr c, jr_021_6507                                ; $650d: $38 $f8

	rst $38                                          ; $650f: $ff

jr_021_6510:
	db $fc                                           ; $6510: $fc
	call c, $041c                                    ; $6511: $dc $1c $04
	ld [hl], l                                       ; $6514: $75
	inc bc                                           ; $6515: $03
	ld hl, $ffd3                                     ; $6516: $21 $d3 $ff
	call c, $fcfc                                    ; $6519: $dc $fc $fc
	push af                                          ; $651c: $f5
	inc de                                           ; $651d: $13
	ld sp, $d386                                     ; $651e: $31 $86 $d3
	ld e, [hl]                                       ; $6521: $5e
	ld h, $61                                        ; $6522: $26 $61
	ld b, c                                          ; $6524: $41
	add b                                            ; $6525: $80
	add c                                            ; $6526: $81
	inc bc                                           ; $6527: $03
	ld b, $5e                                        ; $6528: $06 $5e
	ld a, $7d                                        ; $652a: $3e $7d
	ld e, c                                          ; $652c: $59
	ldh a, [$f9]                                     ; $652d: $f0 $f9
	inc bc                                           ; $652f: $03
	add [hl]                                         ; $6530: $86
	add $c6                                          ; $6531: $c6 $c6
	rst AddAOntoHL                                          ; $6533: $ef
	rst $38                                          ; $6534: $ff
	ld a, e                                          ; $6535: $7b
	ret z                                            ; $6536: $c8

	ld h, b                                          ; $6537: $60
	ld a, b                                          ; $6538: $78
	ld h, a                                          ; $6539: $67
	ld hl, sp-$64                                    ; $653a: $f8 $9c
	inc c                                            ; $653c: $0c
	ld e, $be                                        ; $653d: $1e $be
	sbc $ff                                          ; $653f: $de $ff
	sbc d                                            ; $6541: $9a
	xor $8e                                          ; $6542: $ee $8e
	ld [$be1c], sp                                   ; $6544: $08 $1c $be
	ld a, c                                          ; $6547: $79
	sub l                                            ; $6548: $95
	ld a, a                                          ; $6549: $7f
	ld hl, sp-$23                                    ; $654a: $f8 $dd
	rlca                                             ; $654c: $07
	sbc e                                            ; $654d: $9b
	ld b, $83                                        ; $654e: $06 $83
	xor h                                            ; $6550: $ac
	ld [hl], b                                       ; $6551: $70
	db $fd                                           ; $6552: $fd
	add d                                            ; $6553: $82
	ld bc, $dc07                                     ; $6554: $01 $07 $dc
	ld [hl], b                                       ; $6557: $70
	ldh [c], a                                       ; $6558: $e2
	or h                                             ; $6559: $b4
	call nz, $e964                                   ; $655a: $c4 $64 $e9
	adc c                                            ; $655d: $89
	jp nc, $31d3                                     ; $655e: $d2 $d3 $31

	ld h, e                                          ; $6561: $63
	ld h, e                                          ; $6562: $63
	jp $c7c7                                         ; $6563: $c3 $c7 $c7


	adc a                                            ; $6566: $8f
	adc [hl]                                         ; $6567: $8e
	ld d, $46                                        ; $6568: $16 $46
	ld h, $2b                                        ; $656a: $26 $2b
	adc e                                            ; $656c: $8b
	ret                                              ; $656d: $c9


	adc c                                            ; $656e: $89
	sbc c                                            ; $656f: $99
	rst GetHLinHL                                          ; $6570: $cf
	sbc $9f                                          ; $6571: $de $9f
	rst SubAFromDE                                          ; $6573: $df
	ccf                                              ; $6574: $3f
	rst SubAFromDE                                          ; $6575: $df
	ld a, a                                          ; $6576: $7f
	sub l                                            ; $6577: $95
	ld [hl], l                                       ; $6578: $75
	ld l, a                                          ; $6579: $6f
	ld e, e                                          ; $657a: $5b
	ld e, d                                          ; $657b: $5a
	ld [hl], $2c                                     ; $657c: $36 $2c
	inc l                                            ; $657e: $2c
	ld a, [hl+]                                      ; $657f: $2a
	db $db                                           ; $6580: $db
	reti                                             ; $6581: $d9


	sbc $ed                                          ; $6582: $de $ed
	sbc $f7                                          ; $6584: $de $f7
	sbc d                                            ; $6586: $9a
	ld d, h                                          ; $6587: $54
	jr z, @+$52                                      ; $6588: $28 $50

	jr z, jr_021_659c                                ; $658a: $28 $10

	ld a, e                                          ; $658c: $7b
	cp $d9                                           ; $658d: $fe $d9
	rst $38                                          ; $658f: $ff
	rst SubAFromDE                                          ; $6590: $df
	inc sp                                           ; $6591: $33
	db $db                                           ; $6592: $db
	ld [hl], e                                       ; $6593: $73
	rst SubAFromDE                                          ; $6594: $df
	call z, $8cdb                                    ; $6595: $cc $db $8c
	sbc d                                            ; $6598: $9a
	ld a, [hl-]                                      ; $6599: $3a
	jr c, jr_021_65d5                                ; $659a: $38 $39

jr_021_659c:
	ld a, [hl-]                                      ; $659c: $3a
	dec a                                            ; $659d: $3d
	ld a, e                                          ; $659e: $7b
	cp $dd                                           ; $659f: $fe $dd
	rst JumpTable                                          ; $65a1: $c7
	ld a, a                                          ; $65a2: $7f
	xor a                                            ; $65a3: $af
	ld a, a                                          ; $65a4: $7f
	cp $97                                           ; $65a5: $fe $97
	ld a, [$7a75]                                    ; $65a7: $fa $75 $7a
	push af                                          ; $65aa: $f5
	ld a, b                                          ; $65ab: $78
	or d                                             ; $65ac: $b2
	ld [hl], h                                       ; $65ad: $74
	cp b                                             ; $65ae: $b8
	ld h, d                                          ; $65af: $62
	ret nz                                           ; $65b0: $c0

	ld a, [hl]                                       ; $65b1: $7e
	call nz, $3e9a                                   ; $65b2: $c4 $9a $3e
	cp l                                             ; $65b5: $bd
	ld a, d                                          ; $65b6: $7a
	cp l                                             ; $65b7: $bd
	ld a, d                                          ; $65b8: $7a
	reti                                             ; $65b9: $d9


	rst $38                                          ; $65ba: $ff
	sub e                                            ; $65bb: $93
	ldh a, [$e0]                                     ; $65bc: $f0 $e0
	ldh a, [$c0]                                     ; $65be: $f0 $c0
	call nz, $1f9f                                   ; $65c0: $c4 $9f $1f
	jr @+$01                                         ; $65c3: $18 $ff

	rst AddAOntoHL                                          ; $65c5: $ef
	db $fd                                           ; $65c6: $fd
	call nz, $f877                                   ; $65c7: $c4 $77 $f8
	add b                                            ; $65ca: $80
	rst SubAFromDE                                          ; $65cb: $df
	sub d                                            ; $65cc: $92
	ld c, $54                                        ; $65cd: $0e $54
	ei                                               ; $65cf: $fb
	ld a, c                                          ; $65d0: $79
	jp hl                                            ; $65d1: $e9


	ldh [$df], a                                     ; $65d2: $e0 $df
	sub e                                            ; $65d4: $93

jr_021_65d5:
	adc a                                            ; $65d5: $8f
	ld d, a                                          ; $65d6: $57
	ld hl, sp+$78                                    ; $65d7: $f8 $78
	ld hl, sp-$08                                    ; $65d9: $f8 $f8
	cp c                                             ; $65db: $b9
	adc b                                            ; $65dc: $88
	adc b                                            ; $65dd: $88
	add [hl]                                         ; $65de: $86
	rlca                                             ; $65df: $07
	dec b                                            ; $65e0: $05
	add h                                            ; $65e1: $84
	xor h                                            ; $65e2: $ac
	cp e                                             ; $65e3: $bb
	cp e                                             ; $65e4: $bb
	cp c                                             ; $65e5: $b9
	sbc [hl]                                         ; $65e6: $9e
	add a                                            ; $65e7: $87
	add l                                            ; $65e8: $85
	inc e                                            ; $65e9: $1c
	add h                                            ; $65ea: $84
	inc e                                            ; $65eb: $1c
	db $fc                                           ; $65ec: $fc
	ld sp, hl                                        ; $65ed: $f9
	dec b                                            ; $65ee: $05
	ld [$f890], sp                                   ; $65ef: $08 $90 $f8
	nop                                              ; $65f2: $00
	nop                                              ; $65f3: $00
	di                                               ; $65f4: $f3
	rst SubAFromBC                                          ; $65f5: $e7
	add l                                            ; $65f6: $85
	adc b                                            ; $65f7: $88
	sbc [hl]                                         ; $65f8: $9e
	rst $38                                          ; $65f9: $ff
	rst JumpTable                                          ; $65fa: $c7
	pop bc                                           ; $65fb: $c1
	db $e3                                           ; $65fc: $e3
	rst GetHLinHL                                          ; $65fd: $cf
	ld bc, $0e07                                     ; $65fe: $01 $07 $0e
	ld [de], a                                       ; $6601: $12
	add hl, de                                       ; $6602: $19
	ld sp, rIE                                     ; $6603: $31 $ff $ff
	ld a, e                                          ; $6606: $7b
	ld hl, sp-$67                                    ; $6607: $f8 $99
	ld e, $07                                        ; $6609: $1e $07
	adc e                                            ; $660b: $8b
	db $fc                                           ; $660c: $fc
	call z, $770c                                    ; $660d: $cc $0c $77
	ld h, $80                                        ; $6610: $26 $80
	inc c                                            ; $6612: $0c
	db $fd                                           ; $6613: $fd

jr_021_6614:
	rst GetHLinHL                                          ; $6614: $cf
	inc c                                            ; $6615: $0c
	ld b, $07                                        ; $6616: $06 $07
	inc bc                                           ; $6618: $03
	ld bc, $080c                                     ; $6619: $01 $0c $08
	ld [$0300], sp                                   ; $661c: $08 $00 $03
	add e                                            ; $661f: $83
	jp z, Jump_021_7afc                              ; $6620: $ca $fc $7a

	adc $8e                                          ; $6623: $ce $8e
	ld c, $0f                                        ; $6625: $0e $0f
	adc a                                            ; $6627: $8f
	rst GetHLinHL                                          ; $6628: $cf
	rst $38                                          ; $6629: $ff
	ld a, c                                          ; $662a: $79
	ld e, [hl]                                       ; $662b: $5e
	sbc h                                            ; $662c: $9c
	cp h                                             ; $662d: $bc
	cp b                                             ; $662e: $b8
	or b                                             ; $662f: $b0
	jr c, jr_021_66b1                                ; $6630: $38 $7f

	db $eb                                           ; $6632: $eb
	ld a, a                                          ; $6633: $7f
	ld hl, sp-$6c                                    ; $6634: $f8 $94
	cp [hl]                                          ; $6636: $be
	cp a                                             ; $6637: $bf
	or a                                             ; $6638: $b7
	cp e                                             ; $6639: $bb
	sbc e                                            ; $663a: $9b
	sbc c                                            ; $663b: $99
	ld hl, $0703                                     ; $663c: $21 $03 $07
	rlca                                             ; $663f: $07
	ld c, $fe                                        ; $6640: $0e $fe
	sbc l                                            ; $6642: $9d
	pop hl                                           ; $6643: $e1
	inc sp                                           ; $6644: $33
	ld l, a                                          ; $6645: $6f
	ld hl, sp-$65                                    ; $6646: $f8 $9b
	call c, $c0c0                                    ; $6648: $dc $c0 $c0
	and b                                            ; $664b: $a0
	sbc $30                                          ; $664c: $de $30
	sbc [hl]                                         ; $664e: $9e
	db $10                                           ; $664f: $10
	ld h, a                                          ; $6650: $67
	ld hl, sp-$64                                    ; $6651: $f8 $9c
	ld c, $06                                        ; $6653: $0e $06
	ld [bc], a                                       ; $6655: $02
	db $fc                                           ; $6656: $fc
	ld h, a                                          ; $6657: $67
	ld hl, sp-$21                                    ; $6658: $f8 $df
	ld bc, $0280                                     ; $665a: $01 $80 $02
	inc bc                                           ; $665d: $03
	dec b                                            ; $665e: $05
	rlca                                             ; $665f: $07
	dec bc                                           ; $6660: $0b
	ld d, $01                                        ; $6661: $16 $01
	ld bc, $0203                                     ; $6663: $01 $03 $02
	ld b, $04                                        ; $6666: $06 $04
	inc c                                            ; $6668: $0c
	add hl, de                                       ; $6669: $19
	inc hl                                           ; $666a: $23
	and l                                            ; $666b: $a5
	ld b, a                                          ; $666c: $47
	adc d                                            ; $666d: $8a
	adc [hl]                                         ; $666e: $8e
	dec e                                            ; $666f: $1d
	sbc l                                            ; $6670: $9d
	xor e                                            ; $6671: $ab
	sbc [hl]                                         ; $6672: $9e
	ld e, $3c                                        ; $6673: $1e $3c
	ld a, l                                          ; $6675: $7d
	ld a, c                                          ; $6676: $79
	di                                               ; $6677: $f3
	di                                               ; $6678: $f3
	rst FarCall                                          ; $6679: $f7
	jr jr_021_6614                                   ; $667a: $18 $98

	jr c, @+$6e                                      ; $667c: $38 $6c

	ld b, h                                          ; $667e: $44
	db $e4                                           ; $667f: $e4
	db $e4                                           ; $6680: $e4
	ldh a, [c]                                       ; $6681: $f2
	ld a, [$ffd9]                                    ; $6682: $fa $d9 $ff
	rst SubAFromDE                                          ; $6685: $df
	sub [hl]                                         ; $6686: $96
	sbc l                                            ; $6687: $9d
	sub a                                            ; $6688: $97
	sub c                                            ; $6689: $91
	sbc $49                                          ; $668a: $de $49
	sbc [hl]                                         ; $668c: $9e
	ld b, h                                          ; $668d: $44
	sbc $fb                                          ; $668e: $de $fb
	call c, Call_021_76ff                            ; $6690: $dc $ff $76
	call nz, $c056                                   ; $6693: $c4 $56 $c0
	db $db                                           ; $6696: $db
	ld [hl], e                                       ; $6697: $73
	rst SubAFromDE                                          ; $6698: $df
	di                                               ; $6699: $f3
	db $db                                           ; $669a: $db
	adc h                                            ; $669b: $8c
	rst SubAFromDE                                          ; $669c: $df
	inc c                                            ; $669d: $0c
	halt                                             ; $669e: $76
	call nz, $c066                                   ; $669f: $c4 $66 $c0
	db $dd                                           ; $66a2: $dd
	rst JumpTable                                          ; $66a3: $c7
	sub a                                            ; $66a4: $97
	dec [hl]                                         ; $66a5: $35
	cp b                                             ; $66a6: $b8
	inc [hl]                                         ; $66a7: $34
	or b                                             ; $66a8: $b0
	jr c, @-$4e                                      ; $66a9: $38 $b0

	jr nc, @+$32                                     ; $66ab: $30 $30

	reti                                             ; $66ad: $d9


	rst $38                                          ; $66ae: $ff
	sub a                                            ; $66af: $97
	add hl, sp                                       ; $66b0: $39

jr_021_66b1:
	ld a, h                                          ; $66b1: $7c
	cp c                                             ; $66b2: $b9
	ld a, d                                          ; $66b3: $7a
	cp b                                             ; $66b4: $b8
	ld a, h                                          ; $66b5: $7c
	cp c                                             ; $66b6: $b9
	ld a, b                                          ; $66b7: $78
	reti                                             ; $66b8: $d9


	rst $38                                          ; $66b9: $ff
	ld a, [hl]                                       ; $66ba: $7e
	ld b, $fb                                        ; $66bb: $06 $fb
	ld [hl], a                                       ; $66bd: $77
	add hl, sp                                       ; $66be: $39
	ld a, a                                          ; $66bf: $7f
	inc de                                           ; $66c0: $13
	ld a, b                                          ; $66c1: $78
	jp c, $809e                                      ; $66c2: $da $9e $80

	ei                                               ; $66c5: $fb
	rst SubAFromDE                                          ; $66c6: $df
	cp b                                             ; $66c7: $b8
	sbc [hl]                                         ; $66c8: $9e
	db $10                                           ; $66c9: $10
	db $fc                                           ; $66ca: $fc
	sbc h                                            ; $66cb: $9c
	ld b, h                                          ; $66cc: $44
	inc b                                            ; $66cd: $04
	inc b                                            ; $66ce: $04
	db $fc                                           ; $66cf: $fc
	sbc l                                            ; $66d0: $9d
	inc a                                            ; $66d1: $3c
	ld [hl], h                                       ; $66d2: $74
	ld l, a                                          ; $66d3: $6f
	ld hl, sp-$07                                    ; $66d4: $f8 $f9
	sbc [hl]                                         ; $66d6: $9e
	ld b, b                                          ; $66d7: $40
	ld a, [$209c]                                    ; $66d8: $fa $9c $20
	nop                                              ; $66db: $00
	ld bc, $c06f                                     ; $66dc: $01 $6f $c0
	ld a, [hl]                                       ; $66df: $7e
	call nc, $f079                                   ; $66e0: $d4 $79 $f0
	rst $38                                          ; $66e3: $ff
	sbc b                                            ; $66e4: $98
	rra                                              ; $66e5: $1f

Call_021_66e6:
	rlca                                             ; $66e6: $07
	ld c, a                                          ; $66e7: $4f
	db $fd                                           ; $66e8: $fd
	ld bc, $0303                                     ; $66e9: $01 $03 $03
	ld [hl], e                                       ; $66ec: $73
	ld hl, sp-$74                                    ; $66ed: $f8 $8c
	pop hl                                           ; $66ef: $e1
	add e                                            ; $66f0: $83
	rlca                                             ; $66f1: $07
	ld b, $7a                                        ; $66f2: $06 $7a
	reti                                             ; $66f4: $d9


	call c, $8707                                    ; $66f5: $dc $07 $87
	add c                                            ; $66f8: $81
	nop                                              ; $66f9: $00
	nop                                              ; $66fa: $00
	ld a, c                                          ; $66fb: $79
	ld hl, sp-$04                                    ; $66fc: $f8 $fc
	scf                                              ; $66fe: $37
	or a                                             ; $66ff: $b7
	sub c                                            ; $6700: $91
	ld bc, $d37b                                     ; $6701: $01 $7b $d3
	sbc h                                            ; $6704: $9c
	ret nz                                           ; $6705: $c0

	adc b                                            ; $6706: $88
	ld hl, sp+$78                                    ; $6707: $f8 $78
	ld [hl], l                                       ; $6709: $75
	rst SubAFromDE                                          ; $670a: $df
	adc b                                            ; $670b: $88
	sbc [hl]                                         ; $670c: $9e
	ld b, b                                          ; $670d: $40
	ld [hl], e                                       ; $670e: $73
	ld hl, sp-$16                                    ; $670f: $f8 $ea
	ld l, a                                          ; $6711: $6f
	xor e                                            ; $6712: $ab
	ld h, e                                          ; $6713: $63
	ld hl, sp-$63                                    ; $6714: $f8 $9d
	ldh a, [$fd]                                     ; $6716: $f0 $fd
	ld l, e                                          ; $6718: $6b
	ld hl, sp-$6b                                    ; $6719: $f8 $95
	dec c                                            ; $671b: $0d
	ld de, $2221                                     ; $671c: $11 $21 $22
	ld b, d                                          ; $671f: $42
	ld b, h                                          ; $6720: $44
	add l                                            ; $6721: $85
	adc c                                            ; $6722: $89
	ld a, [bc]                                       ; $6723: $0a
	rra                                              ; $6724: $1f
	ld [hl], l                                       ; $6725: $75
	and e                                            ; $6726: $a3
	sbc $ff                                          ; $6727: $de $ff
	sbc d                                            ; $6729: $9a
	daa                                              ; $672a: $27
	ld b, a                                          ; $672b: $47
	ld c, a                                          ; $672c: $4f
	sbc a                                            ; $672d: $9f
	cp a                                             ; $672e: $bf
	ld [hl], a                                       ; $672f: $77
	or $8d                                           ; $6730: $f6 $8d
	cp $f8                                           ; $6732: $fe $f8
	ldh a, [$e0]                                     ; $6734: $f0 $e0
	pop bc                                           ; $6736: $c1
	rst JumpTable                                          ; $6737: $c7
	sbc b                                            ; $6738: $98
	rst JumpTable                                          ; $6739: $c7
	db $e3                                           ; $673a: $e3
	ei                                               ; $673b: $fb
	pop hl                                           ; $673c: $e1
	cp a                                             ; $673d: $bf
	ldh [$3e], a                                     ; $673e: $e0 $3e
	db $fd                                           ; $6740: $fd
	rst $38                                          ; $6741: $ff
	rra                                              ; $6742: $1f
	rlca                                             ; $6743: $07
	ld a, b                                          ; $6744: $78
	pop de                                           ; $6745: $d1
	sub [hl]                                         ; $6746: $96
	pop bc                                           ; $6747: $c1
	inc bc                                           ; $6748: $03
	inc h                                            ; $6749: $24
	ld [hl+], a                                      ; $674a: $22
	ld [hl+], a                                      ; $674b: $22
	sub c                                            ; $674c: $91
	sub c                                            ; $674d: $91
	ret z                                            ; $674e: $c8

jr_021_674f:
	db $e4                                           ; $674f: $e4
	ld h, d                                          ; $6750: $62
	or b                                             ; $6751: $b0
	sbc l                                            ; $6752: $9d
	db $10                                           ; $6753: $10
	jr nz, jr_021_67cd                               ; $6754: $20 $77

	cp $9d                                           ; $6756: $fe $9d
	ld [de], a                                       ; $6758: $12
	ld [hl+], a                                      ; $6759: $22
	reti                                             ; $675a: $d9


	rst $38                                          ; $675b: $ff
	reti                                             ; $675c: $d9


	di                                               ; $675d: $f3
	reti                                             ; $675e: $d9


	inc c                                            ; $675f: $0c
	sub l                                            ; $6760: $95
	dec a                                            ; $6761: $3d
	cp d                                             ; $6762: $ba
	or l                                             ; $6763: $b5
	or d                                             ; $6764: $b2
	or l                                             ; $6765: $b5
	sub d                                            ; $6766: $92
	sub l                                            ; $6767: $95
	sub d                                            ; $6768: $92
	rst JumpTable                                          ; $6769: $c7
	ld b, a                                          ; $676a: $47
	sbc $4f                                          ; $676b: $de $4f
	sbc $6f                                          ; $676d: $de $6f
	db $dd                                           ; $676f: $dd
	jr c, jr_021_674f                                ; $6770: $38 $dd

	ld a, b                                          ; $6772: $78
	reti                                             ; $6773: $d9


	rst $38                                          ; $6774: $ff
	sbc b                                            ; $6775: $98
	cp d                                             ; $6776: $ba
	ld [hl], b                                       ; $6777: $70
	cp c                                             ; $6778: $b9
	ld [hl], d                                       ; $6779: $72
	cp b                                             ; $677a: $b8
	ld [hl], l                                       ; $677b: $75
	cp b                                             ; $677c: $b8
	ld h, b                                          ; $677d: $60
	jr nc, jr_021_679b                               ; $677e: $30 $1b

jr_021_6780:
	nop                                              ; $6780: $00
	db $dd                                           ; $6781: $dd
	ld de, $1299                                     ; $6782: $11 $99 $12
	ld [hl+], a                                      ; $6785: $22
	ld [hl+], a                                      ; $6786: $22
	ld h, $66                                        ; $6787: $26 $66
	ld h, [hl]                                       ; $6789: $66
	ld c, a                                          ; $678a: $4f
	or $9e                                           ; $678b: $f6 $9e
	ld de, $f65b                                     ; $678d: $11 $5b $f6
	sbc [hl]                                         ; $6790: $9e
	dec h                                            ; $6791: $25
	ld l, e                                          ; $6792: $6b
	or $9c                                           ; $6793: $f6 $9c
	nop                                              ; $6795: $00
	dec [hl]                                         ; $6796: $35
	ld d, b                                          ; $6797: $50
	ld a, e                                          ; $6798: $7b
	or $b1                                           ; $6799: $f6 $b1

jr_021_679b:
	inc bc                                           ; $679b: $03
	ldh [hDisp1_SCX], a                                     ; $679c: $e0 $91
	sbc l                                            ; $679e: $9d
	add b                                            ; $679f: $80
	ret nz                                           ; $67a0: $c0

	db $e3                                           ; $67a1: $e3
	sbc h                                            ; $67a2: $9c
	inc bc                                           ; $67a3: $03
	ld [bc], a                                       ; $67a4: $02
	ld b, $de                                        ; $67a5: $06 $de
	inc b                                            ; $67a7: $04
	ld h, a                                          ; $67a8: $67
	db $fc                                           ; $67a9: $fc
	add b                                            ; $67aa: $80
	dec b                                            ; $67ab: $05
	inc b                                            ; $67ac: $04
	ld e, a                                          ; $67ad: $5f
	inc bc                                           ; $67ae: $03
	ld l, $03                                        ; $67af: $2e $03
	ld e, [hl]                                       ; $67b1: $5e
	inc bc                                           ; $67b2: $03
	ld a, $03                                        ; $67b3: $3e $03
	ld e, h                                          ; $67b5: $5c
	rlca                                             ; $67b6: $07
	inc a                                            ; $67b7: $3c
	rlca                                             ; $67b8: $07
	db $fc                                           ; $67b9: $fc
	rlca                                             ; $67ba: $07
	ld sp, hl                                        ; $67bb: $f9
	adc a                                            ; $67bc: $8f
	inc de                                           ; $67bd: $13
	rst $38                                          ; $67be: $ff
	daa                                              ; $67bf: $27
	cp $27                                           ; $67c0: $fe $27
	cp $4f                                           ; $67c2: $fe $4f
	db $fc                                           ; $67c4: $fc
	rst GetHLinHL                                          ; $67c5: $cf
	db $fc                                           ; $67c6: $fc
	sbc a                                            ; $67c7: $9f
	ld hl, sp-$61                                    ; $67c8: $f8 $9f
	add b                                            ; $67ca: $80
	pop af                                           ; $67cb: $f1

Call_021_67cc:
	rra                                              ; $67cc: $1f

jr_021_67cd:
	pop af                                           ; $67cd: $f1
	rst SubAFromHL                                          ; $67ce: $d7
	jr c, jr_021_6780                                ; $67cf: $38 $af

	ld [hl], b                                       ; $67d1: $70
	rst $38                                          ; $67d2: $ff
	ld h, b                                          ; $67d3: $60
	ld e, a                                          ; $67d4: $5f
	ldh [$bf], a                                     ; $67d5: $e0 $bf
	ret nz                                           ; $67d7: $c0

	rst $38                                          ; $67d8: $ff
	add b                                            ; $67d9: $80
	ld a, a                                          ; $67da: $7f
	add b                                            ; $67db: $80
	ccf                                              ; $67dc: $3f
	ret nz                                           ; $67dd: $c0

	ei                                               ; $67de: $fb
	rlca                                             ; $67df: $07
	ld a, [$f807]                                    ; $67e0: $fa $07 $f8
	rlca                                             ; $67e3: $07
	db $fc                                           ; $67e4: $fc
	inc bc                                           ; $67e5: $03
	db $fc                                           ; $67e6: $fc
	inc bc                                           ; $67e7: $03
	cp $01                                           ; $67e8: $fe $01
	ld a, a                                          ; $67ea: $7f
	cp $94                                           ; $67eb: $fe $94
	rst $38                                          ; $67ed: $ff
	nop                                              ; $67ee: $00
	ccf                                              ; $67ef: $3f
	rst $38                                          ; $67f0: $ff
	rra                                              ; $67f1: $1f
	rst $38                                          ; $67f2: $ff
	rrca                                             ; $67f3: $0f
	rst $38                                          ; $67f4: $ff
	rlca                                             ; $67f5: $07
	rst $38                                          ; $67f6: $ff
	inc bc                                           ; $67f7: $03
	ld a, e                                          ; $67f8: $7b
	cp $7f                                           ; $67f9: $fe $7f
	pop af                                           ; $67fb: $f1
	ld a, a                                          ; $67fc: $7f
	cp $9e                                           ; $67fd: $fe $9e

Jump_021_67ff:
	ld [bc], a                                       ; $67ff: $02
	ld a, e                                          ; $6800: $7b
	cp $9e                                           ; $6801: $fe $9e
	ld b, $7b                                        ; $6803: $06 $7b
	cp $9e                                           ; $6805: $fe $9e
	inc b                                            ; $6807: $04
	ld l, e                                          ; $6808: $6b
	cp $9d                                           ; $6809: $fe $9d
	ld [hl], e                                       ; $680b: $73
	adc h                                            ; $680c: $8c
	ld c, a                                          ; $680d: $4f
	cp $99                                           ; $680e: $fe $99
	sub h                                            ; $6810: $94
	ld l, a                                          ; $6811: $6f
	sub b                                            ; $6812: $90
	ld l, a                                          ; $6813: $6f
	sbc b                                            ; $6814: $98
	ld h, a                                          ; $6815: $67
	ld e, a                                          ; $6816: $5f
	cp $9a                                           ; $6817: $fe $9a
	ld a, b                                          ; $6819: $78
	rst $38                                          ; $681a: $ff
	ld a, b                                          ; $681b: $78
	rst $38                                          ; $681c: $ff
	ld hl, sp+$5b                                    ; $681d: $f8 $5b
	cp $9c                                           ; $681f: $fe $9c
	cp b                                             ; $6821: $b8
	rst $38                                          ; $6822: $ff
	ld a, d                                          ; $6823: $7a
	ld a, e                                          ; $6824: $7b
	db $fc                                           ; $6825: $fc
	ld a, a                                          ; $6826: $7f

jr_021_6827:
	db $ec                                           ; $6827: $ec
	ld h, a                                          ; $6828: $67
	db $fc                                           ; $6829: $fc
	ldh [$71], a                                     ; $682a: $e0 $71
	ld a, [hl]                                       ; $682c: $7e
	adc $8c                                          ; $682d: $ce $8c
	rlca                                             ; $682f: $07
	dec b                                            ; $6830: $05
	rlca                                             ; $6831: $07
	ld b, $0f                                        ; $6832: $06 $0f
	inc c                                            ; $6834: $0c
	rra                                              ; $6835: $1f
	jr jr_021_6872                                   ; $6836: $18 $3a

	jr nz, jr_021_68af                               ; $6838: $20 $75

	ld b, b                                          ; $683a: $40
	db $e3                                           ; $683b: $e3
	add b                                            ; $683c: $80
	ld sp, hl                                        ; $683d: $f9
	adc a                                            ; $683e: $8f
	ld sp, hl                                        ; $683f: $f9
	rrca                                             ; $6840: $0f
	ld a, [$fe73]                                    ; $6841: $fa $73 $fe
	adc l                                            ; $6844: $8d
	db $fc                                           ; $6845: $fc
	rrca                                             ; $6846: $0f
	db $fc                                           ; $6847: $fc
	rlca                                             ; $6848: $07
	db $fd                                           ; $6849: $fd
	rlca                                             ; $684a: $07
	ccf                                              ; $684b: $3f
	ldh [c], a                                       ; $684c: $e2
	ccf                                              ; $684d: $3f
	ldh [c], a                                       ; $684e: $e2
	ld a, a                                          ; $684f: $7f
	call nz, $c47f                                   ; $6850: $c4 $7f $c4
	rst $38                                          ; $6853: $ff
	add h                                            ; $6854: $84
	rst $38                                          ; $6855: $ff
	adc b                                            ; $6856: $88

jr_021_6857:
	ld a, e                                          ; $6857: $7b
	cp $8d                                           ; $6858: $fe $8d
	ld [$609f], sp                                   ; $685a: $08 $9f $60
	adc a                                            ; $685d: $8f
	ld [hl], b                                       ; $685e: $70
	add a                                            ; $685f: $87
	ld a, b                                          ; $6860: $78
	rst JumpTable                                          ; $6861: $c7
	jr c, jr_021_6827                                ; $6862: $38 $c3

	inc a                                            ; $6864: $3c
	di                                               ; $6865: $f3
	inc c                                            ; $6866: $0c
	ld sp, hl                                        ; $6867: $f9
	ld b, $fd                                        ; $6868: $06 $fd
	ld [bc], a                                       ; $686a: $02
	rst $38                                          ; $686b: $ff
	cp a                                             ; $686c: $bf
	rst $38                                          ; $686d: $ff
	rst AddAOntoHL                                          ; $686e: $ef
	add e                                            ; $686f: $83
	db $10                                           ; $6870: $10
	rst SubAFromBC                                          ; $6871: $e7

Call_021_6872:
jr_021_6872:
	jr jr_021_6857                                   ; $6872: $18 $e3

	inc e                                            ; $6874: $1c
	pop af                                           ; $6875: $f1
	ld c, $f0                                        ; $6876: $0e $f0
	rrca                                             ; $6878: $0f
	ld hl, sp+$07                                    ; $6879: $f8 $07
	ld bc, $81ff                                     ; $687b: $01 $ff $81
	ld a, a                                          ; $687e: $7f
	add c                                            ; $687f: $81
	ld a, a                                          ; $6880: $7f
	pop bc                                           ; $6881: $c1
	ccf                                              ; $6882: $3f
	pop bc                                           ; $6883: $c1
	ccf                                              ; $6884: $3f
	pop hl                                           ; $6885: $e1
	rra                                              ; $6886: $1f
	pop hl                                           ; $6887: $e1
	rra                                              ; $6888: $1f
	ld h, c                                          ; $6889: $61
	sbc a                                            ; $688a: $9f
	inc b                                            ; $688b: $04
	ld [hl], d                                       ; $688c: $72
	jp nz, $fe6f                                     ; $688d: $c2 $6f $fe

	sbc e                                            ; $6890: $9b
	ld c, $f7                                        ; $6891: $0e $f7
	dec bc                                           ; $6893: $0b
	rst FarCall                                          ; $6894: $f7
	halt                                             ; $6895: $76
	call z, $719b                                    ; $6896: $cc $9b $71
	adc [hl]                                         ; $6899: $8e
	ld sp, $67ce                                     ; $689a: $31 $ce $67
	cp $9d                                           ; $689d: $fe $9d
	ret nc                                           ; $689f: $d0

	cpl                                              ; $68a0: $2f
	ld l, a                                          ; $68a1: $6f
	cp $7f                                           ; $68a2: $fe $7f
	call nz, $fe6f                                   ; $68a4: $c4 $6f $fe
	ld l, [hl]                                       ; $68a7: $6e
	call z, Call_021_799a                            ; $68a8: $cc $9a $79
	rst $38                                          ; $68ab: $ff
	cp h                                             ; $68ac: $bc
	rst $38                                          ; $68ad: $ff
	ld a, l                                          ; $68ae: $7d

jr_021_68af:
	ld [hl], e                                       ; $68af: $73
	db $fc                                           ; $68b0: $fc
	ld d, [hl]                                       ; $68b1: $56
	call nz, $fc7f                                   ; $68b2: $c4 $7f $fc
	sbc [hl]                                         ; $68b5: $9e
	ld a, h                                          ; $68b6: $7c
	ld [bc], a                                       ; $68b7: $02
	ret nz                                           ; $68b8: $c0

	ldh [$a1], a                                     ; $68b9: $e0 $a1
	reti                                             ; $68bb: $d9


	ld bc, $9ef9                                     ; $68bc: $01 $f9 $9e
	push bc                                          ; $68bf: $c5
	cp [hl]                                          ; $68c0: $be
	and e                                            ; $68c1: $a3
	rst JumpTable                                          ; $68c2: $c7
	db $eb                                           ; $68c3: $eb
	sub c                                            ; $68c4: $91
	add b                                            ; $68c5: $80
	rst FarCall                                          ; $68c6: $f7
	ret nz                                           ; $68c7: $c0

	ld a, a                                          ; $68c8: $7f
	ld h, b                                          ; $68c9: $60
	ld e, a                                          ; $68ca: $5f
	ld a, b                                          ; $68cb: $78
	rst FarCall                                          ; $68cc: $f7
	adc [hl]                                         ; $68cd: $8e
	rst $38                                          ; $68ce: $ff
	rlca                                             ; $68cf: $07
	cp $07                                           ; $68d0: $fe $07

jr_021_68d2:
	or $7a                                           ; $68d2: $f6 $7a

jr_021_68d4:
	call nz, $e887                                   ; $68d4: $c4 $87 $e8
	rra                                              ; $68d7: $1f
	ld hl, sp+$1f                                    ; $68d8: $f8 $1f
	ldh a, [$1f]                                     ; $68da: $f0 $1f
	ldh a, [$3f]                                     ; $68dc: $f0 $3f
	rst $38                                          ; $68de: $ff
	db $10                                           ; $68df: $10
	rst $38                                          ; $68e0: $ff
	db $10                                           ; $68e1: $10
	rst SubAFromDE                                          ; $68e2: $df
	jr nc, jr_021_68d4                               ; $68e3: $30 $ef

	jr jr_021_68d2                                   ; $68e5: $18 $eb

	inc e                                            ; $68e7: $1c
	jp hl                                            ; $68e8: $e9


	ld e, $ac                                        ; $68e9: $1e $ac
	ld e, a                                          ; $68eb: $5f
	call c, $766f                                    ; $68ec: $dc $6f $76
	ret nc                                           ; $68ef: $d0

	ld h, a                                          ; $68f0: $67
	cp $75                                           ; $68f1: $fe $75
	add b                                            ; $68f3: $80
	ld e, l                                          ; $68f4: $5d
	add h                                            ; $68f5: $84
	ld [hl], l                                       ; $68f6: $75
	add d                                            ; $68f7: $82
	ld a, a                                          ; $68f8: $7f
	cp $9b                                           ; $68f9: $fe $9b
	ld sp, $11cf                                     ; $68fb: $31 $cf $11
	rst AddAOntoHL                                          ; $68fe: $ef
	ld [hl], l                                       ; $68ff: $75
	adc b                                            ; $6900: $88
	ld h, a                                          ; $6901: $67
	cp $7e                                           ; $6902: $fe $7e
	adc $6f                                          ; $6904: $ce $6f
	cp $9e                                           ; $6906: $fe $9e
	add hl, bc                                       ; $6908: $09
	ld l, e                                          ; $6909: $6b
	cp $6e                                           ; $690a: $fe $6e
	jp z, $be7e                                      ; $690c: $ca $7e $be

	ld h, a                                          ; $690f: $67
	cp $66                                           ; $6910: $fe $66
	ret z                                            ; $6912: $c8

	ld a, [hl]                                       ; $6913: $7e
	cp [hl]                                          ; $6914: $be
	sbc l                                            ; $6915: $9d
	ret c                                            ; $6916: $d8

	daa                                              ; $6917: $27
	ld [hl], a                                       ; $6918: $77
	cp $66                                           ; $6919: $fe $66
	ret z                                            ; $691b: $c8

	sbc [hl]                                         ; $691c: $9e
	ld a, $6b                                        ; $691d: $3e $6b
	db $fc                                           ; $691f: $fc
	ld a, a                                          ; $6920: $7f
	db $f4                                           ; $6921: $f4
	ld a, [hl]                                       ; $6922: $7e
	call z, $fc77                                    ; $6923: $cc $77 $fc
	sbc [hl]                                         ; $6926: $9e
	db $fc                                           ; $6927: $fc
	ld l, e                                          ; $6928: $6b
	db $fc                                           ; $6929: $fc
	ldh [$a0], a                                     ; $692a: $e0 $a0
	ld [bc], a                                       ; $692c: $02
	ret nz                                           ; $692d: $c0

	ld a, h                                          ; $692e: $7c
	ld c, [hl]                                       ; $692f: $4e
	ld a, a                                          ; $6930: $7f
	cp $9e                                           ; $6931: $fe $9e
	rlca                                             ; $6933: $07
	ld a, b                                          ; $6934: $78
	ld d, d                                          ; $6935: $52
	add b                                            ; $6936: $80
	dec c                                            ; $6937: $0d
	ld [$080a], sp                                   ; $6938: $08 $0a $08
	inc c                                            ; $693b: $0c
	ld [$07fd], sp                                   ; $693c: $08 $fd $07
	cp $05                                           ; $693f: $fe $05
	cp a                                             ; $6941: $bf
	inc b                                            ; $6942: $04
	ld [hl], e                                       ; $6943: $73
	inc c                                            ; $6944: $0c
	ld a, a                                          ; $6945: $7f
	ld [$087f], sp                                   ; $6946: $08 $7f $08
	rst FarCall                                          ; $6949: $f7
	ld [$10ef], sp                                   ; $694a: $08 $ef $10
	ldh [rIE], a                                     ; $694d: $e0 $ff
	ret nz                                           ; $694f: $c0

	rst $38                                          ; $6950: $ff
	ret z                                            ; $6951: $c8

	rst FarCall                                          ; $6952: $f7
	call c, $de63                                    ; $6953: $dc $63 $de
	sbc h                                            ; $6956: $9c
	ld h, c                                          ; $6957: $61
	rst SubAFromDE                                          ; $6958: $df
	ld h, b                                          ; $6959: $60
	ld [hl], a                                       ; $695a: $77
	cp $82                                           ; $695b: $fe $82
	xor [hl]                                         ; $695d: $ae
	ld a, a                                          ; $695e: $7f
	rst SubAFromHL                                          ; $695f: $d7
	ccf                                              ; $6960: $3f
	rst AddAOntoHL                                          ; $6961: $ef
	rra                                              ; $6962: $1f
	rst SubAFromBC                                          ; $6963: $e7
	rra                                              ; $6964: $1f
	ld [hl], e                                       ; $6965: $73
	adc a                                            ; $6966: $8f
	pop af                                           ; $6967: $f1
	rrca                                             ; $6968: $0f
	ld sp, hl                                        ; $6969: $f9
	rlca                                             ; $696a: $07
	ld sp, hl                                        ; $696b: $f9
	rlca                                             ; $696c: $07
	rra                                              ; $696d: $1f
	ldh [rIF], a                                     ; $696e: $e0 $0f
	ldh a, [rTAC]                                    ; $6970: $f0 $07
	ld hl, sp-$7d                                    ; $6972: $f8 $83
	db $fc                                           ; $6974: $fc
	ret nz                                           ; $6975: $c0

	rst $38                                          ; $6976: $ff
	ldh [rIE], a                                     ; $6977: $e0 $ff
	ldh a, [$79]                                     ; $6979: $f0 $79
	call nc, $b24e                                   ; $697b: $d4 $4e $b2
	ld a, a                                          ; $697e: $7f
	ldh [c], a                                       ; $697f: $e2
	ld d, l                                          ; $6980: $55
	add b                                            ; $6981: $80
	ld a, a                                          ; $6982: $7f
	adc $9b                                          ; $6983: $ce $9b
	db $fd                                           ; $6985: $fd
	inc bc                                           ; $6986: $03
	dec c                                            ; $6987: $0d
	di                                               ; $6988: $f3
	ld [hl], a                                       ; $6989: $77
	cp $9b                                           ; $698a: $fe $9b
	inc c                                            ; $698c: $0c
	di                                               ; $698d: $f3
	ld c, $f1                                        ; $698e: $0e $f1
	ld l, a                                          ; $6990: $6f
	cp $7e                                           ; $6991: $fe $7e
	adc $9d                                          ; $6993: $ce $9d
	ld h, c                                          ; $6995: $61
	sbc [hl]                                         ; $6996: $9e
	ld e, a                                          ; $6997: $5f
	cp $9b                                           ; $6998: $fe $9b
	pop hl                                           ; $699a: $e1
	ld e, $c8                                        ; $699b: $1e $c8
	scf                                              ; $699d: $37
	ld l, a                                          ; $699e: $6f
	cp $9d                                           ; $699f: $fe $9d
	call z, $6f33                                    ; $69a1: $cc $33 $6f
	cp $7e                                           ; $69a4: $fe $7e
	call z, Call_021_5d9e                            ; $69a6: $cc $9e $5d
	ld a, d                                          ; $69a9: $7a
	ret z                                            ; $69aa: $c8

	ld [hl], a                                       ; $69ab: $77
	db $fc                                           ; $69ac: $fc
	sbc h                                            ; $69ad: $9c
	dec e                                            ; $69ae: $1d
	rst $38                                          ; $69af: $ff
	ld e, $7b                                        ; $69b0: $1e $7b
	db $fc                                           ; $69b2: $fc
	ld l, [hl]                                       ; $69b3: $6e
	ret z                                            ; $69b4: $c8

	sbc h                                            ; $69b5: $9c
	ld a, [hl]                                       ; $69b6: $7e
	rst $38                                          ; $69b7: $ff
	cp $73                                           ; $69b8: $fe $73
	cp $7f                                           ; $69ba: $fe $7f
	or $e0                                           ; $69bc: $f6 $e0
	add c                                            ; $69be: $81
	adc l                                            ; $69bf: $8d
	jr jr_021_69d2                                   ; $69c0: $18 $10

	dec e                                            ; $69c2: $1d
	db $10                                           ; $69c3: $10
	jr jr_021_69d6                                   ; $69c4: $18 $10

	dec c                                            ; $69c6: $0d
	ld [$080e], sp                                   ; $69c7: $08 $0e $08
	rlca                                             ; $69ca: $07
	inc b                                            ; $69cb: $04
	rlca                                             ; $69cc: $07
	inc b                                            ; $69cd: $04
	inc bc                                           ; $69ce: $03
	ld [bc], a                                       ; $69cf: $02
	rst AddAOntoHL                                          ; $69d0: $ef
	db $10                                           ; $69d1: $10

jr_021_69d2:
	ld a, e                                          ; $69d2: $7b
	inc b                                            ; $69d3: $04
	ld a, c                                          ; $69d4: $79
	rst SubAFromHL                                          ; $69d5: $d7

jr_021_69d6:
	sub d                                            ; $69d6: $92
	cp $03                                           ; $69d7: $fe $03
	db $fc                                           ; $69d9: $fc
	rlca                                             ; $69da: $07
	ld hl, sp+$0f                                    ; $69db: $f8 $0f
	ldh a, [$1f]                                     ; $69dd: $f0 $1f
	sbc a                                            ; $69df: $9f
	ldh [$bf], a                                     ; $69e0: $e0 $bf
	ret nz                                           ; $69e2: $c0

	ccf                                              ; $69e3: $3f
	ld a, e                                          ; $69e4: $7b
	cp $7e                                           ; $69e5: $fe $7e
	ldh a, [c]                                       ; $69e7: $f2
	ld a, a                                          ; $69e8: $7f
	add sp, -$6c                                     ; $69e9: $e8 $94
	ei                                               ; $69eb: $fb
	inc b                                            ; $69ec: $04
	ld sp, hl                                        ; $69ed: $f9
	ld b, $f8                                        ; $69ee: $06 $f8
	rlca                                             ; $69f0: $07
	sbc b                                            ; $69f1: $98
	ld h, a                                          ; $69f2: $67
	add b                                            ; $69f3: $80
	ld a, a                                          ; $69f4: $7f
	ret nz                                           ; $69f5: $c0

	ld a, d                                          ; $69f6: $7a
	ldh a, [c]                                       ; $69f7: $f2
	sub h                                            ; $69f8: $94
	db $e3                                           ; $69f9: $e3
	rra                                              ; $69fa: $1f
	rst FarCall                                          ; $69fb: $f7
	rrca                                             ; $69fc: $0f
	rst FarCall                                          ; $69fd: $f7
	rrca                                             ; $69fe: $0f
	ret z                                            ; $69ff: $c8

	rst $38                                          ; $6a00: $ff
	call nz, $c2ff                                   ; $6a01: $c4 $ff $c2
	ld a, d                                          ; $6a04: $7a
	sbc h                                            ; $6a05: $9c
	sbc e                                            ; $6a06: $9b
	call z, $dff3                                    ; $6a07: $cc $f3 $df
	ldh [rPCM34], a                                  ; $6a0a: $e0 $77
	cp $76                                           ; $6a0c: $fe $76
	or d                                             ; $6a0e: $b2
	ld a, a                                          ; $6a0f: $7f
	db $fc                                           ; $6a10: $fc
	ld l, a                                          ; $6a11: $6f
	ret nc                                           ; $6a12: $d0

	ld [hl], a                                       ; $6a13: $77
	cp $7e                                           ; $6a14: $fe $7e
	adc $7e                                          ; $6a16: $ce $7e
	sbc h                                            ; $6a18: $9c
	sbc [hl]                                         ; $6a19: $9e
	ei                                               ; $6a1a: $fb
	ld a, e                                          ; $6a1b: $7b
	cp $7d                                           ; $6a1c: $fe $7d
	ld a, [hl-]                                      ; $6a1e: $3a
	sbc [hl]                                         ; $6a1f: $9e
	db $f4                                           ; $6a20: $f4
	ld [hl], c                                       ; $6a21: $71
	ld a, [hl-]                                      ; $6a22: $3a
	sub l                                            ; $6a23: $95
	adc [hl]                                         ; $6a24: $8e
	pop af                                           ; $6a25: $f1
	adc [hl]                                         ; $6a26: $8e
	pop af                                           ; $6a27: $f1
	add [hl]                                         ; $6a28: $86
	ld sp, hl                                        ; $6a29: $f9
	add [hl]                                         ; $6a2a: $86
	ld sp, hl                                        ; $6a2b: $f9
	add a                                            ; $6a2c: $87
	ld hl, sp+$6f                                    ; $6a2d: $f8 $6f
	cp $7e                                           ; $6a2f: $fe $7e
	adc $7f                                          ; $6a31: $ce $7f
	cp $9d                                           ; $6a33: $fe $9d
	db $e3                                           ; $6a35: $e3
	inc e                                            ; $6a36: $1c
	ld e, a                                          ; $6a37: $5f
	cp $9d                                           ; $6a38: $fe $9d
	add h                                            ; $6a3a: $84
	ld a, e                                          ; $6a3b: $7b
	ld c, a                                          ; $6a3c: $4f
	cp $7e                                           ; $6a3d: $fe $7e
	call z, $3d9e                                    ; $6a3f: $cc $9e $3d
	ld a, d                                          ; $6a42: $7a
	call nz, $fc6f                                   ; $6a43: $c4 $6f $fc
	sbc [hl]                                         ; $6a46: $9e
	ld a, [hl-]                                      ; $6a47: $3a
	ld a, e                                          ; $6a48: $7b
	db $fc                                           ; $6a49: $fc
	ld a, [hl]                                       ; $6a4a: $7e
	adc $77                                          ; $6a4b: $ce $77
	cp $7e                                           ; $6a4d: $fe $7e
	cp h                                             ; $6a4f: $bc
	sbc h                                            ; $6a50: $9c
	db $ec                                           ; $6a51: $ec
	rst $38                                          ; $6a52: $ff
	ld l, h                                          ; $6a53: $6c
	ld [hl], e                                       ; $6a54: $73
	db $fc                                           ; $6a55: $fc
	ldh [hLCDCIntHandlerIdx], a                                     ; $6a56: $e0 $81
	ld e, h                                          ; $6a58: $5c
	ld b, [hl]                                       ; $6a59: $46
	ei                                               ; $6a5a: $fb
	sub e                                            ; $6a5b: $93
	pop hl                                           ; $6a5c: $e1
	ld a, $c3                                        ; $6a5d: $3e $c3
	db $fc                                           ; $6a5f: $fc
	ld c, a                                          ; $6a60: $4f
	ld [hl], b                                       ; $6a61: $70
	ld e, a                                          ; $6a62: $5f
	ld h, b                                          ; $6a63: $60
	ld e, a                                          ; $6a64: $5f
	ld h, b                                          ; $6a65: $60
	ld c, a                                          ; $6a66: $4f
	ld [hl], b                                       ; $6a67: $70
	ld [hl], a                                       ; $6a68: $77
	cp $7e                                           ; $6a69: $fe $7e
	ret nc                                           ; $6a6b: $d0

	ld [hl], a                                       ; $6a6c: $77
	cp $74                                           ; $6a6d: $fe $74
	ld l, h                                          ; $6a6f: $6c
	ld l, h                                          ; $6a70: $6c
	ld l, b                                          ; $6a71: $68
	ld a, [hl]                                       ; $6a72: $7e
	or $97                                           ; $6a73: $f6 $97
	ld a, l                                          ; $6a75: $7d
	add e                                            ; $6a76: $83
	dec a                                            ; $6a77: $3d
	jp $c13e                                         ; $6a78: $c3 $3e $c1


	ld e, $e1                                        ; $6a7b: $1e $e1
	halt                                             ; $6a7d: $76
	sub $8d                                          ; $6a7e: $d6 $8d
	dec bc                                           ; $6a80: $0b
	db $fc                                           ; $6a81: $fc
	rst $38                                          ; $6a82: $ff
	ldh [$ef], a                                     ; $6a83: $e0 $ef
	ldh a, [$f7]                                     ; $6a85: $f0 $f7
	ld hl, sp-$01                                    ; $6a87: $f8 $ff
	ld hl, sp+$7b                                    ; $6a89: $f8 $7b

jr_021_6a8b:
	db $fc                                           ; $6a8b: $fc
	add hl, sp                                       ; $6a8c: $39
	cp $99                                           ; $6a8d: $fe $99
	ld a, [hl]                                       ; $6a8f: $7e
	sbc b                                            ; $6a90: $98
	ld a, a                                          ; $6a91: $7f
	ld h, l                                          ; $6a92: $65
	add d                                            ; $6a93: $82
	ld a, a                                          ; $6a94: $7f
	sub $9d                                          ; $6a95: $d6 $9d
	db $fd                                           ; $6a97: $fd
	ld [bc], a                                       ; $6a98: $02
	ld [hl], a                                       ; $6a99: $77
	ld hl, sp-$62                                    ; $6a9a: $f8 $9e
	ret nc                                           ; $6a9c: $d0

	ld a, d                                          ; $6a9d: $7a
	add e                                            ; $6a9e: $83
	ld a, [hl]                                       ; $6a9f: $7e
	sub b                                            ; $6aa0: $90
	sub l                                            ; $6aa1: $95
	jr jr_021_6a8b                                   ; $6aa2: $18 $e7

	ld [hl], b                                       ; $6aa4: $70
	adc a                                            ; $6aa5: $8f
	ldh a, [rIF]                                     ; $6aa6: $f0 $0f
	ldh [$1f], a                                     ; $6aa8: $e0 $1f
	ldh [$1f], a                                     ; $6aaa: $e0 $1f
	ld h, [hl]                                       ; $6aac: $66
	ret z                                            ; $6aad: $c8

	ld h, a                                          ; $6aae: $67
	cp $66                                           ; $6aaf: $fe $66
	ret z                                            ; $6ab1: $c8

	ld a, c                                          ; $6ab2: $79
	ld l, l                                          ; $6ab3: $6d
	ld [hl], e                                       ; $6ab4: $73
	cp $7e                                           ; $6ab5: $fe $7e
	adc $98                                          ; $6ab7: $ce $98
	add [hl]                                         ; $6ab9: $86
	ld a, c                                          ; $6aba: $79
	add [hl]                                         ; $6abb: $86
	ld a, c                                          ; $6abc: $79
	and [hl]                                         ; $6abd: $a6
	ld a, c                                          ; $6abe: $79
	sub [hl]                                         ; $6abf: $96
	ld [hl], e                                       ; $6ac0: $73
	db $fc                                           ; $6ac1: $fc
	sbc l                                            ; $6ac2: $9d
	ld h, $f9                                        ; $6ac3: $26 $f9
	halt                                             ; $6ac5: $76
	call z, $c06e                                    ; $6ac6: $cc $6e $c0
	ld a, h                                          ; $6ac9: $7c
	ld b, h                                          ; $6aca: $44
	ld a, l                                          ; $6acb: $7d
	adc d                                            ; $6acc: $8a
	ld a, a                                          ; $6acd: $7f
	db $fc                                           ; $6ace: $fc
	sbc [hl]                                         ; $6acf: $9e
	xor h                                            ; $6ad0: $ac
	ld a, d                                          ; $6ad1: $7a
	call z, $fc57                                    ; $6ad2: $cc $57 $fc
	ldh [$71], a                                     ; $6ad5: $e0 $71
	sbc l                                            ; $6ad7: $9d
	ld b, a                                          ; $6ad8: $47
	ld a, b                                          ; $6ad9: $78
	ld [hl], a                                       ; $6ada: $77
	cp $9b                                           ; $6adb: $fe $9b
	ld h, a                                          ; $6add: $67
	ld e, b                                          ; $6ade: $58
	ld h, e                                          ; $6adf: $63
	ld e, h                                          ; $6ae0: $5c
	ld [hl], a                                       ; $6ae1: $77
	cp $9b                                           ; $6ae2: $fe $9b
	and e                                            ; $6ae4: $a3
	call c, $01fe                                    ; $6ae5: $dc $fe $01
	ld l, a                                          ; $6ae8: $6f
	cp $66                                           ; $6ae9: $fe $66
	add sp, -$66                                     ; $6aeb: $e8 $9a
	dec b                                            ; $6aed: $05
	cp $06                                           ; $6aee: $fe $06
	rst $38                                          ; $6af0: $ff
	inc bc                                           ; $6af1: $03
	ld [hl], l                                       ; $6af2: $75
	ld e, a                                          ; $6af3: $5f
	ld l, e                                          ; $6af4: $6b
	rst AddAOntoHL                                          ; $6af5: $ef
	sub [hl]                                         ; $6af6: $96
	ret z                                            ; $6af7: $c8

	ccf                                              ; $6af8: $3f
	ret z                                            ; $6af9: $c8

	ccf                                              ; $6afa: $3f
	ld l, e                                          ; $6afb: $6b
	sbc h                                            ; $6afc: $9c
	xor a                                            ; $6afd: $af
	ret c                                            ; $6afe: $d8

	rst AddAOntoHL                                          ; $6aff: $ef
	ld [hl], d                                       ; $6b00: $72
	cp h                                             ; $6b01: $bc
	sbc e                                            ; $6b02: $9b
	ld a, c                                          ; $6b03: $79
	cp $7f                                           ; $6b04: $fe $7f
	add b                                            ; $6b06: $80
	ld h, l                                          ; $6b07: $65
	add [hl]                                         ; $6b08: $86
	ld l, a                                          ; $6b09: $6f
	cp $75                                           ; $6b0a: $fe $75
	ld b, e                                          ; $6b0c: $43
	ld a, e                                          ; $6b0d: $7b
	db $ed                                           ; $6b0e: $ed
	ld a, e                                          ; $6b0f: $7b
	cp $71                                           ; $6b10: $fe $71
	add hl, sp                                       ; $6b12: $39
	sbc d                                            ; $6b13: $9a
	ccf                                              ; $6b14: $3f
	add a                                            ; $6b15: $87
	ld hl, sp-$7d                                    ; $6b16: $f8 $83
	db $fc                                           ; $6b18: $fc
	ld d, a                                          ; $6b19: $57
	cp $7e                                           ; $6b1a: $fe $7e
	adc $95                                          ; $6b1c: $ce $95
	ld [hl], a                                       ; $6b1e: $77
	adc b                                            ; $6b1f: $88
	ld [hl], a                                       ; $6b20: $77
	adc b                                            ; $6b21: $88
	scf                                              ; $6b22: $37
	ret z                                            ; $6b23: $c8

	ld [hl], $c9                                     ; $6b24: $36 $c9
	or [hl]                                          ; $6b26: $b6
	ld c, c                                          ; $6b27: $49
	ld [hl], a                                       ; $6b28: $77
	cp $99                                           ; $6b29: $fe $99
	ld d, [hl]                                       ; $6b2b: $56
	ld sp, hl                                        ; $6b2c: $f9
	ld h, $f9                                        ; $6b2d: $26 $f9
	ld [hl], a                                       ; $6b2f: $77
	ld hl, sp+$67                                    ; $6b30: $f8 $67
	db $fc                                           ; $6b32: $fc
	sbc l                                            ; $6b33: $9d
	and a                                            ; $6b34: $a7
	ld hl, sp+$76                                    ; $6b35: $f8 $76
	call z, $c47e                                    ; $6b37: $cc $7e $c4
	sbc l                                            ; $6b3a: $9d
	cp l                                             ; $6b3b: $bd
	ld a, a                                          ; $6b3c: $7f
	ld h, a                                          ; $6b3d: $67
	db $fc                                           ; $6b3e: $fc
	ld l, [hl]                                       ; $6b3f: $6e
	ret z                                            ; $6b40: $c8

	ld a, l                                          ; $6b41: $7d
	add b                                            ; $6b42: $80
	sbc [hl]                                         ; $6b43: $9e
	cp h                                             ; $6b44: $bc
	ld a, e                                          ; $6b45: $7b
	ld [$be9e], a                                    ; $6b46: $ea $9e $be
	ld a, e                                          ; $6b49: $7b
	db $fc                                           ; $6b4a: $fc
	rra                                              ; $6b4b: $1f
	nop                                              ; $6b4c: $00
	cp $98                                           ; $6b4d: $fe $98
	ld bc, $4503                                     ; $6b4f: $01 $03 $45
	nop                                              ; $6b52: $00
	ld b, $66                                        ; $6b53: $06 $66
	ld h, [hl]                                       ; $6b55: $66
	db $fd                                           ; $6b56: $fd
	ld e, a                                          ; $6b57: $5f
	or $9d                                           ; $6b58: $f6 $9d
	inc b                                            ; $6b5a: $04
	jr nc, @+$69                                     ; $6b5b: $30 $67

	or $9d                                           ; $6b5d: $f6 $9d
	inc sp                                           ; $6b5f: $33
	nop                                              ; $6b60: $00
	ccf                                              ; $6b61: $3f
	or $7f                                           ; $6b62: $f6 $7f
	db $e3                                           ; $6b64: $e3
	ld h, a                                          ; $6b65: $67
	or $fe                                           ; $6b66: $f6 $fe
	ld a, e                                          ; $6b68: $7b
	or $ff                                           ; $6b69: $f6 $ff
	rst FarCall                                          ; $6b6b: $f7
	rst JumpTable                                          ; $6b6c: $c7

jr_021_6b6d:
	inc d                                            ; $6b6d: $14
	inc l                                            ; $6b6e: $2c
	add c                                            ; $6b6f: $81
	sub a                                            ; $6b70: $97
	rst $38                                          ; $6b71: $ff
	rst AddAOntoHL                                          ; $6b72: $ef
	rst SubAFromDE                                          ; $6b73: $df
	rst SubAFromBC                                          ; $6b74: $e7
	rst SubAFromDE                                          ; $6b75: $df
	rst $38                                          ; $6b76: $ff
	ld sp, hl                                        ; $6b77: $f9
	ld hl, sp+$63                                    ; $6b78: $f8 $63
	ld hl, sp-$68                                    ; $6b7a: $f8 $98
	ldh a, [$e0]                                     ; $6b7c: $f0 $e0
	ldh [$c0], a                                     ; $6b7e: $e0 $c0
	nop                                              ; $6b80: $00
	nop                                              ; $6b81: $00
	ldh [rPCM34], a                                  ; $6b82: $e0 $77
	ld sp, hl                                        ; $6b84: $f9
	sub e                                            ; $6b85: $93
	add b                                            ; $6b86: $80
	nop                                              ; $6b87: $00
	nop                                              ; $6b88: $00
	add b                                            ; $6b89: $80
	rst $38                                          ; $6b8a: $ff
	rst $38                                          ; $6b8b: $ff
	ld a, a                                          ; $6b8c: $7f
	ld e, $00                                        ; $6b8d: $1e $00
	ld bc, $0301                                     ; $6b8f: $01 $01 $03
	ld sp, hl                                        ; $6b92: $f9
	sbc $ff                                          ; $6b93: $de $ff
	sbc d                                            ; $6b95: $9a
	ld a, a                                          ; $6b96: $7f
	rst $38                                          ; $6b97: $ff
	cp $fe                                           ; $6b98: $fe $fe
	or $da                                           ; $6b9a: $f6 $da
	inc b                                            ; $6b9c: $04
	sbc h                                            ; $6b9d: $9c
	inc c                                            ; $6b9e: $0c
	ld [$dc0c], sp                                   ; $6b9f: $08 $0c $dc
	adc h                                            ; $6ba2: $8c
	sbc h                                            ; $6ba3: $9c
	sub h                                            ; $6ba4: $94
	rst $38                                          ; $6ba5: $ff
	ei                                               ; $6ba6: $fb
	db $db                                           ; $6ba7: $db
	ld a, e                                          ; $6ba8: $7b
	rst SubAFromDE                                          ; $6ba9: $df
	adc b                                            ; $6baa: $88
	sbc $a8                                          ; $6bab: $de $a8
	sbc d                                            ; $6bad: $9a
	db $e4                                           ; $6bae: $e4
	db $f4                                           ; $6baf: $f4
	call nc, rIE                                   ; $6bb0: $d4 $ff $ff
	db $dd                                           ; $6bb3: $dd
	rst SubAFromDE                                          ; $6bb4: $df

jr_021_6bb5:
	sbc d                                            ; $6bb5: $9a
	rst GetHLinHL                                          ; $6bb6: $cf
	rst AddAOntoHL                                          ; $6bb7: $ef
	ldh a, [$f1]                                     ; $6bb8: $f0 $f1
	di                                               ; $6bba: $f3
	ld a, e                                          ; $6bbb: $7b
	push af                                          ; $6bbc: $f5
	rst SubAFromDE                                          ; $6bbd: $df
	rst GetHLinHL                                          ; $6bbe: $cf
	ld h, a                                          ; $6bbf: $67
	ld hl, sp-$71                                    ; $6bc0: $f8 $8f
	ld h, b                                          ; $6bc2: $60
	jr nz, jr_021_6bb5                               ; $6bc3: $20 $f0

	cp $f8                                           ; $6bc5: $fe $f8

jr_021_6bc7:
	ld hl, sp-$10                                    ; $6bc7: $f8 $f0
	call c, $2040                                    ; $6bc9: $dc $40 $20
	ldh [$fc], a                                     ; $6bcc: $e0 $fc
	db $fc                                           ; $6bce: $fc
	ld hl, sp-$08                                    ; $6bcf: $f8 $f8
	ret c                                            ; $6bd1: $d8

	sbc $03                                          ; $6bd2: $de $03
	call c, $f907                                    ; $6bd4: $dc $07 $f9
	sub e                                            ; $6bd7: $93
	ld a, [$fcf8]                                    ; $6bd8: $fa $f8 $fc
	db $fc                                           ; $6bdb: $fc
	db $ed                                           ; $6bdc: $ed
	pop af                                           ; $6bdd: $f1
	pop af                                           ; $6bde: $f1
	reti                                             ; $6bdf: $d9


	inc c                                            ; $6be0: $0c
	inc c                                            ; $6be1: $0c
	ld [$de08], sp                                   ; $6be2: $08 $08 $de
	jr jr_021_6b6d                                   ; $6be5: $18 $86

	jr nc, @-$6a                                     ; $6be7: $30 $94

	sbc h                                            ; $6be9: $9c
	xor l                                            ; $6bea: $ad
	dec l                                            ; $6beb: $2d
	dec a                                            ; $6bec: $3d
	add hl, bc                                       ; $6bed: $09
	dec bc                                           ; $6bee: $0b
	ld a, [hl+]                                      ; $6bef: $2a
	ld a, e                                          ; $6bf0: $7b
	ld [hl], e                                       ; $6bf1: $73
	ld [hl], e                                       ; $6bf2: $73
	di                                               ; $6bf3: $f3
	db $e3                                           ; $6bf4: $e3
	rst SubAFromBC                                          ; $6bf5: $e7
	rst SubAFromBC                                          ; $6bf6: $e7
	rst JumpTable                                          ; $6bf7: $c7
	call nc, $f2f2                                   ; $6bf8: $d4 $f2 $f2
	cp d                                             ; $6bfb: $ba
	xor d                                            ; $6bfc: $aa
	xor d                                            ; $6bfd: $aa
	ld e, d                                          ; $6bfe: $5a
	ld a, [hl]                                       ; $6bff: $7e
	sbc $ef                                          ; $6c00: $de $ef
	sbc [hl]                                         ; $6c02: $9e
	rst SubAFromBC                                          ; $6c03: $e7
	sbc $f7                                          ; $6c04: $de $f7
	adc [hl]                                         ; $6c06: $8e
	db $d3                                           ; $6c07: $d3
	inc c                                            ; $6c08: $0c
	jr jr_021_6bc7                                   ; $6c09: $18 $bc

	cp $fc                                           ; $6c0b: $fe $fc
	cp $ee                                           ; $6c0d: $fe $ee
	adc a                                            ; $6c0f: $8f
	ld [$bc1c], sp                                   ; $6c10: $08 $1c $bc
	db $fc                                           ; $6c13: $fc
	cp $fe                                           ; $6c14: $fe $fe
	rst AddAOntoHL                                          ; $6c16: $ef
	adc a                                            ; $6c17: $8f
	db $dd                                           ; $6c18: $dd
	rrca                                             ; $6c19: $0f
	sbc e                                            ; $6c1a: $9b
	rra                                              ; $6c1b: $1f
	ld e, $df                                        ; $6c1c: $1e $df
	ldh [$fc], a                                     ; $6c1e: $e0 $fc
	add e                                            ; $6c20: $83
	ld bc, $e03f                                     ; $6c21: $01 $3f $e0
	db $eb                                           ; $6c24: $eb
	ldh [c], a                                       ; $6c25: $e2
	and d                                            ; $6c26: $a2
	or h                                             ; $6c27: $b4
	ld b, h                                          ; $6c28: $44
	pop hl                                           ; $6c29: $e1
	xor c                                            ; $6c2a: $a9
	pop de                                           ; $6c2b: $d1
	jr nc, jr_021_6c5f                               ; $6c2c: $30 $31

	ld [hl], c                                       ; $6c2e: $71
	ld h, e                                          ; $6c2f: $63
	db $e3                                           ; $6c30: $e3
	rst JumpTable                                          ; $6c31: $c7
	rst JumpTable                                          ; $6c32: $c7
	adc a                                            ; $6c33: $8f
	ld a, [de]                                       ; $6c34: $1a
	ld d, d                                          ; $6c35: $52
	ld d, [hl]                                       ; $6c36: $56
	ld d, a                                          ; $6c37: $57
	dec h                                            ; $6c38: $25
	dec l                                            ; $6c39: $2d
	ret z                                            ; $6c3a: $c8

	ret z                                            ; $6c3b: $c8

	rst JumpTable                                          ; $6c3c: $c7
	sbc $8f                                          ; $6c3d: $de $8f
	rst SubAFromDE                                          ; $6c3f: $df
	sbc a                                            ; $6c40: $9f
	rst SubAFromDE                                          ; $6c41: $df
	ccf                                              ; $6c42: $3f
	rst SubAFromDE                                          ; $6c43: $df
	ld [hl], l                                       ; $6c44: $75
	add b                                            ; $6c45: $80
	ld l, c                                          ; $6c46: $69
	ld c, e                                          ; $6c47: $4b
	dec sp                                           ; $6c48: $3b
	inc [hl]                                         ; $6c49: $34
	and h                                            ; $6c4a: $a4
	sbc h                                            ; $6c4b: $9c
	db $db                                           ; $6c4c: $db
	db $db                                           ; $6c4d: $db
	rst SubAFromDE                                          ; $6c4e: $df
	db $fd                                           ; $6c4f: $fd
	db $ed                                           ; $6c50: $ed
	rst AddAOntoHL                                          ; $6c51: $ef
	rst $38                                          ; $6c52: $ff
	rst FarCall                                          ; $6c53: $f7
	ld d, d                                          ; $6c54: $52
	and e                                            ; $6c55: $a3
	push bc                                          ; $6c56: $c5
	ld b, a                                          ; $6c57: $47
	adc d                                            ; $6c58: $8a
	ld a, [bc]                                       ; $6c59: $0a
	ld d, h                                          ; $6c5a: $54
	sbc c                                            ; $6c5b: $99
	adc a                                            ; $6c5c: $8f
	ld e, $3e                                        ; $6c5d: $1e $3e

jr_021_6c5f:
	inc a                                            ; $6c5f: $3c
	ld a, l                                          ; $6c60: $7d
	db $fd                                           ; $6c61: $fd
	ei                                               ; $6c62: $fb
	rst FarCall                                          ; $6c63: $f7
	sbc b                                            ; $6c64: $98
	sub [hl]                                         ; $6c65: $96
	sbc h                                            ; $6c66: $9c
	inc [hl]                                         ; $6c67: $34
	inc [hl]                                         ; $6c68: $34
	ld h, h                                          ; $6c69: $64
	ldh [c], a                                       ; $6c6a: $e2
	ldh a, [c]                                       ; $6c6b: $f2
	ld a, [$7f7f]                                    ; $6c6c: $fa $7f $7f
	db $db                                           ; $6c6f: $db
	rst $38                                          ; $6c70: $ff
	sub e                                            ; $6c71: $93
	sbc h                                            ; $6c72: $9c
	sbc d                                            ; $6c73: $9a
	sub $4e                                          ; $6c74: $d6 $4e
	ld c, c                                          ; $6c76: $49
	ld c, c                                          ; $6c77: $49
	ld b, l                                          ; $6c78: $45
	inc h                                            ; $6c79: $24
	rst FarCall                                          ; $6c7a: $f7
	rst FarCall                                          ; $6c7b: $f7
	ei                                               ; $6c7c: $fb
	ei                                               ; $6c7d: $fb
	db $dd                                           ; $6c7e: $dd
	rst $38                                          ; $6c7f: $ff
	sbc d                                            ; $6c80: $9a
	inc hl                                           ; $6c81: $23
	ld b, a                                          ; $6c82: $47
	ld c, a                                          ; $6c83: $4f
	sbc a                                            ; $6c84: $9f
	cp a                                             ; $6c85: $bf
	ld [hl], a                                       ; $6c86: $77
	db $e3                                           ; $6c87: $e3
	ld a, a                                          ; $6c88: $7f
	ld a, [hl+]                                      ; $6c89: $2a
	ld a, [hl]                                       ; $6c8a: $7e
	call $c194                                       ; $6c8b: $cd $94 $c1
	rst JumpTable                                          ; $6c8e: $c7
	sbc b                                            ; $6c8f: $98
	ld h, $22                                        ; $6c90: $26 $22
	ld [de], a                                       ; $6c92: $12
	sub c                                            ; $6c93: $91
	adc c                                            ; $6c94: $89
	ret z                                            ; $6c95: $c8

	db $e4                                           ; $6c96: $e4
	ld a, [$ffd9]                                    ; $6c97: $fa $d9 $ff
	ld c, $00                                        ; $6c9a: $0e $00
	db $db                                           ; $6c9c: $db
	ld [hl+], a                                      ; $6c9d: $22
	sub [hl]                                         ; $6c9e: $96
	ld [bc], a                                       ; $6c9f: $02
	ld [hl+], a                                      ; $6ca0: $22
	ld [hl+], a                                      ; $6ca1: $22
	nop                                              ; $6ca2: $00
	ld [bc], a                                       ; $6ca3: $02
	ld [hl+], a                                      ; $6ca4: $22
	nop                                              ; $6ca5: $00
	dec b                                            ; $6ca6: $05
	ld [bc], a                                       ; $6ca7: $02
	ld c, e                                          ; $6ca8: $4b
	add a                                            ; $6ca9: $87
	sbc e                                            ; $6caa: $9b
	adc b                                            ; $6cab: $88
	ld d, l                                          ; $6cac: $55
	ld [hl+], a                                      ; $6cad: $22
	ld d, l                                          ; $6cae: $55
	ld [hl], a                                       ; $6caf: $77
	db $fc                                           ; $6cb0: $fc
	sbc e                                            ; $6cb1: $9b
	ld [hl], a                                       ; $6cb2: $77
	xor d                                            ; $6cb3: $aa
	db $dd                                           ; $6cb4: $dd
	xor d                                            ; $6cb5: $aa
	ld [hl], a                                       ; $6cb6: $77
	db $fc                                           ; $6cb7: $fc
	ld [hl], a                                       ; $6cb8: $77
	db $f4                                           ; $6cb9: $f4
	sbc h                                            ; $6cba: $9c
	adc c                                            ; $6cbb: $89
	ld d, l                                          ; $6cbc: $55
	inc hl                                           ; $6cbd: $23
	ld [hl], a                                       ; $6cbe: $77
	ldh a, [$9a]                                     ; $6cbf: $f0 $9a
	xor e                                            ; $6cc1: $ab
	ld [hl], a                                       ; $6cc2: $77
	xor e                                            ; $6cc3: $ab
	db $dd                                           ; $6cc4: $dd
	xor e                                            ; $6cc5: $ab
	sbc $9f                                          ; $6cc6: $de $9f
	rst SubAFromDE                                          ; $6cc8: $df
	rra                                              ; $6cc9: $1f
	sbc $0f                                          ; $6cca: $de $0f
	call c, $dee0                                    ; $6ccc: $dc $e0 $de
	ldh a, [hDisp0_OBP1]                                     ; $6ccf: $f0 $87
	ld l, a                                          ; $6cd1: $6f
	cp [hl]                                          ; $6cd2: $be
	rst SubAFromBC                                          ; $6cd3: $e7
	rst $38                                          ; $6cd4: $ff
	rst $38                                          ; $6cd5: $ff
	rst SubAFromDE                                          ; $6cd6: $df
	rst SubAFromDE                                          ; $6cd7: $df
	rst GetHLinHL                                          ; $6cd8: $cf
	pop af                                           ; $6cd9: $f1
	ld [hl], c                                       ; $6cda: $71
	jr jr_021_6cdd                                   ; $6cdb: $18 $00

jr_021_6cdd:
	nop                                              ; $6cdd: $00
	jr nz, jr_021_6d00                               ; $6cde: $20 $20

	jr nc, jr_021_6ce2                               ; $6ce0: $30 $00

jr_021_6ce2:
	cp $71                                           ; $6ce2: $fe $71
	or b                                             ; $6ce4: $b0
	ret nc                                           ; $6ce5: $d0

	add sp, -$04                                     ; $6ce6: $e8 $fc
	db $fc                                           ; $6ce8: $fc
	sbc $ff                                          ; $6ce9: $de $ff
	sub d                                            ; $6ceb: $92
	ld a, a                                          ; $6cec: $7f
	ccf                                              ; $6ced: $3f
	rra                                              ; $6cee: $1f
	rrca                                             ; $6cef: $0f
	rlca                                             ; $6cf0: $07
	nop                                              ; $6cf1: $00
	nop                                              ; $6cf2: $00
	rst $38                                          ; $6cf3: $ff
	rst $38                                          ; $6cf4: $ff
	jr c, jr_021_6d15                                ; $6cf5: $38 $1e

	ccf                                              ; $6cf7: $3f
	ldh [$de], a                                     ; $6cf8: $e0 $de
	rst $38                                          ; $6cfa: $ff
	adc d                                            ; $6cfb: $8a
	ret nz                                           ; $6cfc: $c0

	ldh a, [$fc]                                     ; $6cfd: $f0 $fc
	rst $38                                          ; $6cff: $ff

jr_021_6d00:
	ret nz                                           ; $6d00: $c0

	rrca                                             ; $6d01: $0f
	rrca                                             ; $6d02: $0f
	rst $38                                          ; $6d03: $ff
	rst $38                                          ; $6d04: $ff
	rra                                              ; $6d05: $1f
	rrca                                             ; $6d06: $0f
	rst JumpTable                                          ; $6d07: $c7
	or $f8                                           ; $6d08: $f6 $f8
	ld hl, sp-$02                                    ; $6d0a: $f8 $fe
	rrca                                             ; $6d0c: $0f
	ld b, $06                                        ; $6d0d: $06 $06
	add e                                            ; $6d0f: $83
	ld [hl], e                                       ; $6d10: $73
	reti                                             ; $6d11: $d9


	rst $38                                          ; $6d12: $ff
	adc h                                            ; $6d13: $8c
	inc bc                                           ; $6d14: $03

jr_021_6d15:
	nop                                              ; $6d15: $00
	nop                                              ; $6d16: $00
	ldh [$3c], a                                     ; $6d17: $e0 $3c
	rlca                                             ; $6d19: $07
	nop                                              ; $6d1a: $00
	ret nz                                           ; $6d1b: $c0

	ld hl, sp-$04                                    ; $6d1c: $f8 $fc
	ld c, $01                                        ; $6d1e: $0e $01
	add b                                            ; $6d20: $80
	ldh [$f8], a                                     ; $6d21: $e0 $f8
	cp $f0                                           ; $6d23: $fe $f0
	jr @+$06                                         ; $6d25: $18 $04

	cp $98                                           ; $6d27: $fe $98
	ret nz                                           ; $6d29: $c0

	jr c, jr_021_6d68                                ; $6d2a: $38 $3c

	ld c, $07                                        ; $6d2c: $0e $07
	inc bc                                           ; $6d2e: $03
	ld bc, $7ffe                                     ; $6d2f: $01 $fe $7f
	pop af                                           ; $6d32: $f1
	sbc [hl]                                         ; $6d33: $9e
	ld [bc], a                                       ; $6d34: $02
	ld [hl], a                                       ; $6d35: $77
	ld sp, hl                                        ; $6d36: $f9
	sub l                                            ; $6d37: $95
	nop                                              ; $6d38: $00
	rra                                              ; $6d39: $1f
	db $10                                           ; $6d3a: $10
	rrca                                             ; $6d3b: $0f
	inc b                                            ; $6d3c: $04
	add h                                            ; $6d3d: $84
	ld b, d                                          ; $6d3e: $42
	ld bc, $1000                                     ; $6d3f: $01 $00 $10
	ld a, e                                          ; $6d42: $7b
	and h                                            ; $6d43: $a4
	sbc b                                            ; $6d44: $98
	add a                                            ; $6d45: $87
	ld b, e                                          ; $6d46: $43
	ld bc, $0400                                     ; $6d47: $01 $00 $04
	inc b                                            ; $6d4a: $04
	db $fc                                           ; $6d4b: $fc
	ld [hl], a                                       ; $6d4c: $77
	ldh [c], a                                       ; $6d4d: $e2
	sbc [hl]                                         ; $6d4e: $9e
	cp h                                             ; $6d4f: $bc
	db $db                                           ; $6d50: $db
	rst $38                                          ; $6d51: $ff
	add b                                            ; $6d52: $80
	rst SubAFromBC                                          ; $6d53: $e7
	ld b, e                                          ; $6d54: $43
	dec a                                            ; $6d55: $3d
	add hl, sp                                       ; $6d56: $39
	ld h, e                                          ; $6d57: $63
	res 6, a                                         ; $6d58: $cb $b7
	rst AddAOntoHL                                          ; $6d5a: $ef
	rst SubAFromDE                                          ; $6d5b: $df
	cp a                                             ; $6d5c: $bf
	jp nz, $9cc6                                     ; $6d5d: $c2 $c6 $9c

	cp h                                             ; $6d60: $bc
	ld hl, sp-$10                                    ; $6d61: $f8 $f0
	ldh [$c0], a                                     ; $6d63: $e0 $c0
	ld hl, sp-$0b                                    ; $6d65: $f8 $f5
	ldh a, [c]                                       ; $6d67: $f2

jr_021_6d68:
	db $ed                                           ; $6d68: $ed
	ld hl, sp-$03                                    ; $6d69: $f8 $fd
	or $fd                                           ; $6d6b: $f6 $fd
	rla                                              ; $6d6d: $17
	ld a, [de]                                       ; $6d6e: $1a
	dec e                                            ; $6d6f: $1d
	ld a, [de]                                       ; $6d70: $1a
	rrca                                             ; $6d71: $0f
	sbc h                                            ; $6d72: $9c
	ld a, [bc]                                       ; $6d73: $0a
	dec c                                            ; $6d74: $0d
	ld b, $37                                        ; $6d75: $06 $37
	jr nz, jr_021_6d90                               ; $6d77: $20 $17

	ldh a, [rPCM34]                                  ; $6d79: $f0 $77
	inc b                                            ; $6d7b: $04
	ld [hl], e                                       ; $6d7c: $73
	ldh a, [$7f]                                     ; $6d7d: $f0 $7f
	inc b                                            ; $6d7f: $04
	ld [hl], e                                       ; $6d80: $73
	ldh a, [$de]                                     ; $6d81: $f0 $de
	rrca                                             ; $6d83: $0f
	sbc [hl]                                         ; $6d84: $9e
	adc a                                            ; $6d85: $8f
	db $dd                                           ; $6d86: $dd
	add a                                            ; $6d87: $87
	db $dd                                           ; $6d88: $dd
	ldh a, [$dd]                                     ; $6d89: $f0 $dd
	ld hl, sp-$7c                                    ; $6d8b: $f8 $84
	rst AddAOntoHL                                          ; $6d8d: $ef
	rst SubAFromBC                                          ; $6d8e: $e7
	rst FarCall                                          ; $6d8f: $f7

jr_021_6d90:
	di                                               ; $6d90: $f3
	pop af                                           ; $6d91: $f1
	ld sp, hl                                        ; $6d92: $f9
	ld hl, sp-$04                                    ; $6d93: $f8 $fc
	db $10                                           ; $6d95: $10
	jr jr_021_6da0                                   ; $6d96: $18 $08

	inc c                                            ; $6d98: $0c
	ld c, $06                                        ; $6d99: $0e $06
	rlca                                             ; $6d9b: $07
	inc bc                                           ; $6d9c: $03
	ld a, [$871d]                                    ; $6d9d: $fa $1d $87

jr_021_6da0:
	pop bc                                           ; $6da0: $c1
	pop hl                                           ; $6da1: $e1
	ldh a, [$f8]                                     ; $6da2: $f0 $f8
	ld a, b                                          ; $6da4: $78
	rlca                                             ; $6da5: $07
	db $e3                                           ; $6da6: $e3
	ld a, c                                          ; $6da7: $79
	ld [hl], a                                       ; $6da8: $77
	ld bc, $8792                                     ; $6da9: $01 $92 $87
	ret nz                                           ; $6dac: $c0

	ldh [$7f], a                                     ; $6dad: $e0 $7f
	rlca                                             ; $6daf: $07
	nop                                              ; $6db0: $00
	add b                                            ; $6db1: $80
	add b                                            ; $6db2: $80
	ret nz                                           ; $6db3: $c0

	add b                                            ; $6db4: $80
	ret nz                                           ; $6db5: $c0

	ccf                                              ; $6db6: $3f
	nop                                              ; $6db7: $00
	ld a, e                                          ; $6db8: $7b
	ld hl, sp-$63                                    ; $6db9: $f8 $9d
	add b                                            ; $6dbb: $80
	ccf                                              ; $6dbc: $3f
	ld a, e                                          ; $6dbd: $7b
	nop                                              ; $6dbe: $00
	ld a, e                                          ; $6dbf: $7b
	scf                                              ; $6dc0: $37
	ld a, a                                          ; $6dc1: $7f
	ld sp, hl                                        ; $6dc2: $f9
	sbc h                                            ; $6dc3: $9c
	inc bc                                           ; $6dc4: $03
	ld [bc], a                                       ; $6dc5: $02
	cp $77                                           ; $6dc6: $fe $77
	cpl                                              ; $6dc8: $2f
	sbc [hl]                                         ; $6dc9: $9e
	ccf                                              ; $6dca: $3f
	call c, $9dff                                    ; $6dcb: $dc $ff $9d
	rra                                              ; $6dce: $1f
	adc a                                            ; $6dcf: $8f
	ld a, d                                          ; $6dd0: $7a
	pop af                                           ; $6dd1: $f1
	ld a, a                                          ; $6dd2: $7f
	pop hl                                           ; $6dd3: $e1
	sbc h                                            ; $6dd4: $9c
	ldh a, [rAUD3LEVEL]                              ; $6dd5: $f0 $1c
	ld a, a                                          ; $6dd7: $7f
	reti                                             ; $6dd8: $d9


	rst $38                                          ; $6dd9: $ff
	sub a                                            ; $6dda: $97
	ld b, $00                                        ; $6ddb: $06 $00
	add b                                            ; $6ddd: $80
	ldh [$38], a                                     ; $6dde: $e0 $38
	inc b                                            ; $6de0: $04
	nop                                              ; $6de1: $00
	add b                                            ; $6de2: $80
	ld a, e                                          ; $6de3: $7b
	ld sp, hl                                        ; $6de4: $f9
	ld a, a                                          ; $6de5: $7f
	or d                                             ; $6de6: $b2
	sbc h                                            ; $6de7: $9c
	cp $ff                                           ; $6de8: $fe $ff
	rst $38                                          ; $6dea: $ff
	di                                               ; $6deb: $f3
	sbc l                                            ; $6dec: $9d
	ret nz                                           ; $6ded: $c0

	cp $f9                                           ; $6dee: $fe $f9
	ld a, [hl]                                       ; $6df0: $7e
	sbc d                                            ; $6df1: $9a
	halt                                             ; $6df2: $76
	sbc c                                            ; $6df3: $99
	sbc b                                            ; $6df4: $98
	rrca                                             ; $6df5: $0f
	rra                                              ; $6df6: $1f
	ld b, a                                          ; $6df7: $47
	add hl, hl                                       ; $6df8: $29
	db $10                                           ; $6df9: $10
	ld de, $7a08                                     ; $6dfa: $11 $08 $7a
	push de                                          ; $6dfd: $d5
	sub [hl]                                         ; $6dfe: $96
	rst $38                                          ; $6dff: $ff
	jp $0080                                         ; $6e00: $c3 $80 $00


	ld b, $bb                                        ; $6e03: $06 $bb
	rst GetHLinHL                                          ; $6e05: $cf
	cp a                                             ; $6e06: $bf
	add b                                            ; $6e07: $80
	halt                                             ; $6e08: $76
	xor $8c                                          ; $6e09: $ee $8c
	db $fc                                           ; $6e0b: $fc
	ldh a, [$c0]                                     ; $6e0c: $f0 $c0
	db $fc                                           ; $6e0e: $fc
	db $fd                                           ; $6e0f: $fd
	or $6d                                           ; $6e10: $f6 $6d
	add sp, -$33                                     ; $6e12: $e8 $cd
	adc d                                            ; $6e14: $8a
	dec c                                            ; $6e15: $0d
	rlca                                             ; $6e16: $07
	ld b, $0d                                        ; $6e17: $06 $0d
	sbc d                                            ; $6e19: $9a
	rra                                              ; $6e1a: $1f
	ld a, [hl-]                                      ; $6e1b: $3a
	ld a, l                                          ; $6e1c: $7d
	ld a, [$1007]                                    ; $6e1d: $fa $07 $10
	sbc l                                            ; $6e20: $9d
	xor d                                            ; $6e21: $aa
	ld d, l                                          ; $6e22: $55
	ld l, a                                          ; $6e23: $6f
	cp $6b                                           ; $6e24: $fe $6b
	ld sp, hl                                        ; $6e26: $f9
	ld b, e                                          ; $6e27: $43
	ldh a, [$8d]                                     ; $6e28: $f0 $8d
	add a                                            ; $6e2a: $87
	add e                                            ; $6e2b: $83
	jp $c343                                         ; $6e2c: $c3 $43 $c3


	ld b, c                                          ; $6e2f: $41
	pop bc                                           ; $6e30: $c1
	ld b, c                                          ; $6e31: $41
	ld hl, sp-$04                                    ; $6e32: $f8 $fc
	ld a, h                                          ; $6e34: $7c
	db $fc                                           ; $6e35: $fc
	ld a, h                                          ; $6e36: $7c
	cp $7e                                           ; $6e37: $fe $7e
	cp $fc                                           ; $6e39: $fe $fc
	cp $7b                                           ; $6e3b: $fe $7b
	ld h, e                                          ; $6e3d: $63
	halt                                             ; $6e3e: $76
	ld b, b                                          ; $6e3f: $40
	rst SubAFromDE                                          ; $6e40: $df
	ld bc, $9afc                                     ; $6e41: $01 $fc $9a
	inc a                                            ; $6e44: $3c
	ld a, $1e                                        ; $6e45: $3e $1e
	rrca                                             ; $6e47: $0f
	rrca                                             ; $6e48: $0f
	ld a, e                                          ; $6e49: $7b
	db $db                                           ; $6e4a: $db
	sbc [hl]                                         ; $6e4b: $9e
	jp $fa7a                                         ; $6e4c: $c3 $7a $fa


	sub e                                            ; $6e4f: $93
	ldh a, [$78]                                     ; $6e50: $f0 $78
	ld a, h                                          ; $6e52: $7c
	inc a                                            ; $6e53: $3c
	ld h, c                                          ; $6e54: $61
	ld [hl], b                                       ; $6e55: $70
	ld a, b                                          ; $6e56: $78
	ld a, [hl]                                       ; $6e57: $7e
	ccf                                              ; $6e58: $3f
	scf                                              ; $6e59: $37
	jr nc, jr_021_6e6c                               ; $6e5a: $30 $10

	sbc $c0                                          ; $6e5c: $de $c0
	ld [hl], c                                       ; $6e5e: $71
	adc $9c                                          ; $6e5f: $ce $9c
	ld hl, sp+$01                                    ; $6e61: $f8 $01
	rrca                                             ; $6e63: $0f
	ld a, e                                          ; $6e64: $7b
	inc e                                            ; $6e65: $1c
	sbc l                                            ; $6e66: $9d
	ld e, $1b                                        ; $6e67: $1e $1b
	ld a, c                                          ; $6e69: $79
	rst SubAFromBC                                          ; $6e6a: $e7
	rst $38                                          ; $6e6b: $ff

jr_021_6e6c:
	adc h                                            ; $6e6c: $8c
	ld bc, $0c07                                     ; $6e6d: $01 $07 $0c
	dec bc                                           ; $6e70: $0b
	ei                                               ; $6e71: $fb
	ld hl, sp-$0c                                    ; $6e72: $f8 $f4
	rst SubAFromDE                                          ; $6e74: $df
	ld a, [hl]                                       ; $6e75: $7e
	rst SubAFromDE                                          ; $6e76: $df
	cp l                                             ; $6e77: $bd
	db $fc                                           ; $6e78: $fc
	ld [$3d08], sp                                   ; $6e79: $08 $08 $3d
	rst SubAFromBC                                          ; $6e7c: $e7
	add a                                            ; $6e7d: $87
	ld b, $06                                        ; $6e7e: $06 $06
	ld a, c                                          ; $6e80: $79
	ret                                              ; $6e81: $c9


	db $dd                                           ; $6e82: $dd
	rst $38                                          ; $6e83: $ff
	sub [hl]                                         ; $6e84: $96
	ld a, a                                          ; $6e85: $7f
	ld h, b                                          ; $6e86: $60
	ld a, b                                          ; $6e87: $78
	cp $e1                                           ; $6e88: $fe $e1
	ldh a, [$2c]                                     ; $6e8a: $f0 $2c
	inc sp                                           ; $6e8c: $33
	ld [$ffdb], sp                                   ; $6e8d: $08 $db $ff
	sbc l                                            ; $6e90: $9d
	ld a, a                                          ; $6e91: $7f
	rst GetHLinHL                                          ; $6e92: $cf
	cp $9a                                           ; $6e93: $fe $9a
	add b                                            ; $6e95: $80
	ld h, b                                          ; $6e96: $60
	inc e                                            ; $6e97: $1c
	inc bc                                           ; $6e98: $03
	ret nz                                           ; $6e99: $c0

	reti                                             ; $6e9a: $d9


	rst $38                                          ; $6e9b: $ff
	ei                                               ; $6e9c: $fb
	ld a, [hl]                                       ; $6e9d: $7e
	adc $de                                          ; $6e9e: $ce $de
	rst $38                                          ; $6ea0: $ff
	ld a, a                                          ; $6ea1: $7f
	ld a, h                                          ; $6ea2: $7c
	ld a, d                                          ; $6ea3: $7a
	rla                                              ; $6ea4: $17
	ld a, a                                          ; $6ea5: $7f
	or h                                             ; $6ea6: $b4
	adc l                                            ; $6ea7: $8d
	ld bc, $0703                                     ; $6ea8: $01 $03 $07
	rrca                                             ; $6eab: $0f
	rra                                              ; $6eac: $1f
	ccf                                              ; $6ead: $3f
	jp $ffe3                                         ; $6eae: $c3 $e3 $ff


	rst AddAOntoHL                                          ; $6eb1: $ef
	db $e4                                           ; $6eb2: $e4
	add $cf                                          ; $6eb3: $c6 $cf
	adc a                                            ; $6eb5: $8f
	db $fc                                           ; $6eb6: $fc
	inc a                                            ; $6eb7: $3c
	db $10                                           ; $6eb8: $10
	rrca                                             ; $6eb9: $0f
	ld a, d                                          ; $6eba: $7a
	pop af                                           ; $6ebb: $f1
	adc [hl]                                         ; $6ebc: $8e
	ld bc, $f5ca                                     ; $6ebd: $01 $ca $f5
	cp $ff                                           ; $6ec0: $fe $ff
	rst SubAFromBC                                          ; $6ec2: $e7
	jp $f0c1                                         ; $6ec3: $c3 $c1 $f0


	dec a                                            ; $6ec6: $3d
	ld c, $05                                        ; $6ec7: $0e $05
	ld [bc], a                                       ; $6ec9: $02
	sbc c                                            ; $6eca: $99
	ld a, h                                          ; $6ecb: $7c
	ld a, [hl]                                       ; $6ecc: $7e
	ccf                                              ; $6ecd: $3f
	ld [hl], e                                       ; $6ece: $73
	dec sp                                           ; $6ecf: $3b
	sbc h                                            ; $6ed0: $9c
	push de                                          ; $6ed1: $d5
	ld l, d                                          ; $6ed2: $6a
	dec [hl]                                         ; $6ed3: $35
	ld l, a                                          ; $6ed4: $6f
	ld [hl-], a                                      ; $6ed5: $32
	sbc l                                            ; $6ed6: $9d
	push de                                          ; $6ed7: $d5
	ld [$1007], a                                    ; $6ed8: $ea $07 $10
	ld b, a                                          ; $6edb: $47
	ldh a, [$9d]                                     ; $6edc: $f0 $9d
	and b                                            ; $6ede: $a0
	ld h, b                                          ; $6edf: $60

jr_021_6ee0:
	ld a, e                                          ; $6ee0: $7b
	cp $9a                                           ; $6ee1: $fe $9a
	ld d, b                                          ; $6ee3: $50
	or b                                             ; $6ee4: $b0
	ld d, b                                          ; $6ee5: $50
	ld a, a                                          ; $6ee6: $7f
	cp a                                             ; $6ee7: $bf
	ld [hl], a                                       ; $6ee8: $77
	cp $9d                                           ; $6ee9: $fe $9d
	ld e, a                                          ; $6eeb: $5f
	cp a                                             ; $6eec: $bf
	ld a, e                                          ; $6eed: $7b

jr_021_6eee:
	ld h, h                                          ; $6eee: $64
	ld a, [hl]                                       ; $6eef: $7e
	ld a, a                                          ; $6ef0: $7f
	ld a, [hl]                                       ; $6ef1: $7e
	ld a, [hl]                                       ; $6ef2: $7e
	sbc [hl]                                         ; $6ef3: $9e
	rra                                              ; $6ef4: $1f
	halt                                             ; $6ef5: $76
	inc hl                                           ; $6ef6: $23
	ld [hl], a                                       ; $6ef7: $77
	dec e                                            ; $6ef8: $1d
	sbc [hl]                                         ; $6ef9: $9e
	pop bc                                           ; $6efa: $c1
	ld [hl], h                                       ; $6efb: $74
	ld [$f8df], a                                    ; $6efc: $ea $df $f8
	sbc l                                            ; $6eff: $9d
	db $fc                                           ; $6f00: $fc
	ld a, $74                                        ; $6f01: $3e $74
	jp c, $07df                                      ; $6f03: $da $df $07

	sbc h                                            ; $6f06: $9c
	inc bc                                           ; $6f07: $03
	db $10                                           ; $6f08: $10
	add hl, de                                       ; $6f09: $19
	ld a, e                                          ; $6f0a: $7b
	ld sp, hl                                        ; $6f0b: $f9
	rst SubAFromDE                                          ; $6f0c: $df
	inc bc                                           ; $6f0d: $03
	sbc e                                            ; $6f0e: $9b
	ld bc, $f0f0                                     ; $6f0f: $01 $f0 $f0
	ld sp, hl                                        ; $6f12: $f9
	db $dd                                           ; $6f13: $dd
	cp $7b                                           ; $6f14: $fe $7b
	ld [hl+], a                                      ; $6f16: $22
	ld a, a                                          ; $6f17: $7f
	ld d, d                                          ; $6f18: $52
	rst SubAFromDE                                          ; $6f19: $df
	ldh [$9b], a                                     ; $6f1a: $e0 $9b
	add c                                            ; $6f1c: $81
	inc bc                                           ; $6f1d: $03
	jr nc, jr_021_6ee0                               ; $6f1e: $30 $c0

	ei                                               ; $6f20: $fb
	sbc d                                            ; $6f21: $9a
	dec l                                            ; $6f22: $2d
	ld l, l                                          ; $6f23: $6d
	ld l, l                                          ; $6f24: $6d
	call $decf                                       ; $6f25: $cd $cf $de
	adc a                                            ; $6f28: $8f
	rst SubAFromDE                                          ; $6f29: $df
	ld b, $db                                        ; $6f2a: $06 $db
	ld c, $7d                                        ; $6f2c: $0e $7d
	or $9d                                           ; $6f2e: $f6 $9d
	add a                                            ; $6f30: $87
	jp $bc77                                         ; $6f31: $c3 $77 $bc


	ld a, l                                          ; $6f34: $7d
	ld de, $96fb                                     ; $6f35: $11 $fb $96
	di                                               ; $6f38: $f3
	jr @-$7a                                         ; $6f39: $18 $84

	add d                                            ; $6f3b: $82
	add c                                            ; $6f3c: $81
	ret nz                                           ; $6f3d: $c0

	ld h, b                                          ; $6f3e: $60
	jr nz, jr_021_6f71                               ; $6f3f: $20 $30

	ld l, b                                          ; $6f41: $68
	rst $38                                          ; $6f42: $ff
	ld a, a                                          ; $6f43: $7f
	cp a                                             ; $6f44: $bf
	sub a                                            ; $6f45: $97
	ld e, $08                                        ; $6f46: $1e $08
	jr jr_021_6eee                                   ; $6f48: $18 $a4

	jp nz, $1841                                     ; $6f4a: $c2 $41 $18

	rlca                                             ; $6f4d: $07
	ld a, e                                          ; $6f4e: $7b
	ld [de], a                                       ; $6f4f: $12
	ld a, a                                          ; $6f50: $7f
	add d                                            ; $6f51: $82
	sub [hl]                                         ; $6f52: $96
	ld a, a                                          ; $6f53: $7f
	ret nz                                           ; $6f54: $c0

	add c                                            ; $6f55: $81
	inc bc                                           ; $6f56: $03
	rlca                                             ; $6f57: $07
	rra                                              ; $6f58: $1f
	inc a                                            ; $6f59: $3c
	ld hl, sp-$20                                    ; $6f5a: $f8 $e0
	halt                                             ; $6f5c: $76
	ld a, [$e08d]                                    ; $6f5d: $fa $8d $e0
	jp $1f07                                         ; $6f60: $c3 $07 $1f


	inc e                                            ; $6f63: $1c
	ld a, $3b                                        ; $6f64: $3e $3b
	cp l                                             ; $6f66: $bd
	add hl, de                                       ; $6f67: $19
	add hl, bc                                       ; $6f68: $09
	ld de, $0323                                     ; $6f69: $11 $23 $03
	inc bc                                           ; $6f6c: $03
	ld b, $46                                        ; $6f6d: $06 $46
	xor $fe                                          ; $6f6f: $ee $fe

jr_021_6f71:
	ld a, d                                          ; $6f71: $7a
	ld h, c                                          ; $6f72: $61
	sbc h                                            ; $6f73: $9c
	rst JumpTable                                          ; $6f74: $c7
	jp $74f1                                         ; $6f75: $c3 $f1 $74


	ld [hl], e                                       ; $6f78: $73
	sbc e                                            ; $6f79: $9b
	ccf                                              ; $6f7a: $3f
	add hl, sp                                       ; $6f7b: $39
	inc a                                            ; $6f7c: $3c
	ld c, $78                                        ; $6f7d: $0e $78
	sbc h                                            ; $6f7f: $9c
	adc [hl]                                         ; $6f80: $8e
	nop                                              ; $6f81: $00
	ld a, [hl+]                                      ; $6f82: $2a
	push af                                          ; $6f83: $f5
	ld [$faf5], a                                    ; $6f84: $ea $f5 $fa
	ld a, l                                          ; $6f87: $7d
	cp d                                             ; $6f88: $ba
	push af                                          ; $6f89: $f5
	push af                                          ; $6f8a: $f5
	ld [$1a35], a                                    ; $6f8b: $ea $35 $1a
	dec c                                            ; $6f8e: $0d
	adc d                                            ; $6f8f: $8a
	ld c, l                                          ; $6f90: $4d
	ld c, $43                                        ; $6f91: $0e $43
	db $10                                           ; $6f93: $10
	ld l, l                                          ; $6f94: $6d
	ld sp, hl                                        ; $6f95: $f9
	sbc [hl]                                         ; $6f96: $9e
	ld [hl], a                                       ; $6f97: $77
	ld l, c                                          ; $6f98: $69
	jp hl                                            ; $6f99: $e9


	sbc [hl]                                         ; $6f9a: $9e
	adc b                                            ; $6f9b: $88
	ld b, a                                          ; $6f9c: $47
	ldh a, [hDisp1_LCDC]                                     ; $6f9d: $f0 $8f
	or b                                             ; $6f9f: $b0
	ret c                                            ; $6fa0: $d8

	xor b                                            ; $6fa1: $a8
	ld a, b                                          ; $6fa2: $78
	xor b                                            ; $6fa3: $a8
	call c, Call_021_76ac                            ; $6fa4: $dc $ac $76
	ld e, a                                          ; $6fa7: $5f
	cpl                                              ; $6fa8: $2f
	ld e, a                                          ; $6fa9: $5f
	adc a                                            ; $6faa: $8f
	ld e, a                                          ; $6fab: $5f
	daa                                              ; $6fac: $27
	ld d, a                                          ; $6fad: $57
	adc a                                            ; $6fae: $8f
	ld [hl], e                                       ; $6faf: $73
	dec de                                           ; $6fb0: $1b
	ld a, a                                          ; $6fb1: $7f
	ld a, l                                          ; $6fb2: $7d
	sbc [hl]                                         ; $6fb3: $9e
	ld b, $73                                        ; $6fb4: $06 $73
	dec bc                                           ; $6fb6: $0b
	ld a, a                                          ; $6fb7: $7f
	ld a, l                                          ; $6fb8: $7d
	sbc [hl]                                         ; $6fb9: $9e
	ld sp, hl                                        ; $6fba: $f9
	ld [hl], l                                       ; $6fbb: $75
	ldh a, [$7c]                                     ; $6fbc: $f0 $7c
	add d                                            ; $6fbe: $82
	sbc l                                            ; $6fbf: $9d
	ccf                                              ; $6fc0: $3f
	ld a, a                                          ; $6fc1: $7f
	ld [hl], l                                       ; $6fc2: $75
	ldh a, [$9b]                                     ; $6fc3: $f0 $9b
	jr nz, jr_021_7007                               ; $6fc5: $20 $40

	ret nz                                           ; $6fc7: $c0

	add b                                            ; $6fc8: $80
	call c, $9c01                                    ; $6fc9: $dc $01 $9c
	add c                                            ; $6fcc: $81
	pop bc                                           ; $6fcd: $c1
	pop bc                                           ; $6fce: $c1
	ld l, [hl]                                       ; $6fcf: $6e
	add hl, sp                                       ; $6fd0: $39
	rst SubAFromDE                                          ; $6fd1: $df
	ccf                                              ; $6fd2: $3f
	add a                                            ; $6fd3: $87
	dec b                                            ; $6fd4: $05
	inc bc                                           ; $6fd5: $03
	dec b                                            ; $6fd6: $05
	dec bc                                           ; $6fd7: $0b
	scf                                              ; $6fd8: $37
	ld l, a                                          ; $6fd9: $6f
	rst SubAFromHL                                          ; $6fda: $d7
	xor a                                            ; $6fdb: $af
	ld [bc], a                                       ; $6fdc: $02
	inc b                                            ; $6fdd: $04
	ld a, [bc]                                       ; $6fde: $0a
	inc d                                            ; $6fdf: $14
	ld [$2810], sp                                   ; $6fe0: $08 $10 $28
	ld d, b                                          ; $6fe3: $50
	adc e                                            ; $6fe4: $8b
	dec bc                                           ; $6fe5: $0b
	dec bc                                           ; $6fe6: $0b
	dec de                                           ; $6fe7: $1b
	ld a, e                                          ; $6fe8: $7b
	ei                                               ; $6fe9: $fb
	ei                                               ; $6fea: $fb
	ldh a, [c]                                       ; $6feb: $f2
	db $db                                           ; $6fec: $db
	ld c, $9d                                        ; $6fed: $0e $9d
	ld e, $1f                                        ; $6fef: $1e $1f
	ld l, a                                          ; $6ff1: $6f
	cp b                                             ; $6ff2: $b8
	rst SubAFromDE                                          ; $6ff3: $df
	cp $f3                                           ; $6ff4: $fe $f3
	ld a, l                                          ; $6ff6: $7d
	rst SubAFromHL                                          ; $6ff7: $d7
	ld a, [$039c]                                    ; $6ff8: $fa $9c $03
	rst SubAFromDE                                          ; $6ffb: $df
	sbc $db                                          ; $6ffc: $de $db
	rst SubAFromDE                                          ; $6ffe: $df
	rst SubAFromDE                                          ; $6fff: $df
	and c                                            ; $7000: $a1
	db $db                                           ; $7001: $db
	and b                                            ; $7002: $a0
	sub a                                            ; $7003: $97
	add b                                            ; $7004: $80
	add c                                            ; $7005: $81
	add [hl]                                         ; $7006: $86

jr_021_7007:
	ld c, h                                          ; $7007: $4c
	ld hl, sp-$14                                    ; $7008: $f8 $ec
	call nz, Call_021_64c4                           ; $700a: $c4 $c4 $64
	rst JumpTable                                          ; $700d: $c7
	sbc l                                            ; $700e: $9d
	ld b, a                                          ; $700f: $47
	cp a                                             ; $7010: $bf
	ld l, l                                          ; $7011: $6d
	ret nz                                           ; $7012: $c0

	sbc h                                            ; $7013: $9c
	ld hl, sp-$40                                    ; $7014: $f8 $c0
	add b                                            ; $7016: $80
	ld [hl], c                                       ; $7017: $71
	rst SubAFromDE                                          ; $7018: $df
	jp c, Jump_021_67ff                              ; $7019: $da $ff $67

	or b                                             ; $701c: $b0
	adc [hl]                                         ; $701d: $8e
	ld bc, $fdfe                                     ; $701e: $01 $fe $fd
	cp $f7                                           ; $7021: $fe $f7
	ld [$7a9d], a                                    ; $7023: $ea $9d $7a
	rla                                              ; $7026: $17
	dec b                                            ; $7027: $05
	ld b, $05                                        ; $7028: $06 $05
	inc c                                            ; $702a: $0c
	dec e                                            ; $702b: $1d
	ld a, d                                          ; $702c: $7a
	push af                                          ; $702d: $f5
	ld hl, sp+$07                                    ; $702e: $f8 $07
	db $10                                           ; $7030: $10
	ld b, e                                          ; $7031: $43
	ldh a, [$9b]                                     ; $7032: $f0 $9b
	sbc $ab                                          ; $7034: $de $ab
	ld [hl], a                                       ; $7036: $77
	xor e                                            ; $7037: $ab
	ld a, e                                          ; $7038: $7b
	ldh a, [$9b]                                     ; $7039: $f0 $9b
	ld d, a                                          ; $703b: $57
	inc hl                                           ; $703c: $23
	ld d, l                                          ; $703d: $55
	adc c                                            ; $703e: $89
	ld [hl], a                                       ; $703f: $77
	ldh a, [hDisp1_LCDC]                                     ; $7040: $f0 $8f
	inc c                                            ; $7042: $0c
	ld [$1118], sp                                   ; $7043: $08 $18 $11
	ld hl, $b1a1                                     ; $7046: $21 $a1 $b1
	sbc e                                            ; $7049: $9b
	di                                               ; $704a: $f3
	rst FarCall                                          ; $704b: $f7
	rst SubAFromBC                                          ; $704c: $e7
	xor $de                                          ; $704d: $ee $de
	sbc $ce                                          ; $704f: $de $ce
	db $e4                                           ; $7051: $e4
	ld c, l                                          ; $7052: $4d
	ld h, b                                          ; $7053: $60
	rst $38                                          ; $7054: $ff
	rst SubAFromDE                                          ; $7055: $df
	pop hl                                           ; $7056: $e1
	sbc c                                            ; $7057: $99
	pop af                                           ; $7058: $f1
	ld sp, hl                                        ; $7059: $f9
	ld sp, hl                                        ; $705a: $f9
	db $fd                                           ; $705b: $fd
	db $fd                                           ; $705c: $fd
	cp $79                                           ; $705d: $fe $79
	pop af                                           ; $705f: $f1
	halt                                             ; $7060: $76
	rst SubAFromHL                                          ; $7061: $d7
	sbc e                                            ; $7062: $9b
	ld bc, $bf5f                                     ; $7063: $01 $5f $bf
	ld a, b                                          ; $7066: $78
	halt                                             ; $7067: $76
	ld b, $9c                                        ; $7068: $06 $9c
	add b                                            ; $706a: $80
	and b                                            ; $706b: $a0
	ld b, a                                          ; $706c: $47
	ld a, c                                          ; $706d: $79
	push bc                                          ; $706e: $c5

jr_021_706f:
	sbc $ff                                          ; $706f: $de $ff
	sbc [hl]                                         ; $7071: $9e
	pop hl                                           ; $7072: $e1
	ld h, h                                          ; $7073: $64
	jr c, @+$69                                      ; $7074: $38 $67

	ld d, a                                          ; $7076: $57
	sbc h                                            ; $7077: $9c
	ld a, [hl]                                       ; $7078: $7e
	rra                                              ; $7079: $1f
	rrca                                             ; $707a: $0f
	ld [hl], e                                       ; $707b: $73
	ld b, a                                          ; $707c: $47
	sbc l                                            ; $707d: $9d
	ldh [$f8], a                                     ; $707e: $e0 $f8
	call c, $9dff                                    ; $7080: $dc $ff $9d
	inc e                                            ; $7083: $1c
	ld [hl], b                                       ; $7084: $70
	ld l, l                                          ; $7085: $6d
	rst SubAFromHL                                          ; $7086: $d7
	sbc l                                            ; $7087: $9d
	rrca                                             ; $7088: $0f
	ccf                                              ; $7089: $3f
	db $db                                           ; $708a: $db
	rst $38                                          ; $708b: $ff
	sbc $df                                          ; $708c: $de $df
	sbc d                                            ; $708e: $9a
	db $d3                                           ; $708f: $d3
	pop de                                           ; $7090: $d1
	ret nz                                           ; $7091: $c0

	ret nz                                           ; $7092: $c0

	call nz, $026b                                   ; $7093: $c4 $6b $02
	sub [hl]                                         ; $7096: $96
	add b                                            ; $7097: $80
	ld h, [hl]                                       ; $7098: $66
	ld h, d                                          ; $7099: $62
	ld [hl], d                                       ; $709a: $72
	ld [hl], c                                       ; $709b: $71
	ld a, c                                          ; $709c: $79
	xor h                                            ; $709d: $ac
	and h                                            ; $709e: $a4
	and d                                            ; $709f: $a2
	sbc $ff                                          ; $70a0: $de $ff
	rst SubAFromDE                                          ; $70a2: $df
	cp a                                             ; $70a3: $bf
	db $dd                                           ; $70a4: $dd
	ccf                                              ; $70a5: $3f
	sbc [hl]                                         ; $70a6: $9e
	rrca                                             ; $70a7: $0f
	halt                                             ; $70a8: $76
	ld a, [de]                                       ; $70a9: $1a
	rst $38                                          ; $70aa: $ff
	sbc l                                            ; $70ab: $9d
	ret nz                                           ; $70ac: $c0

	ldh a, [rPCM12]                                  ; $70ad: $f0 $76
	ld a, [bc]                                       ; $70af: $0a
	ld a, e                                          ; $70b0: $7b
	or b                                             ; $70b1: $b0
	sbc $fe                                          ; $70b2: $de $fe
	ld a, l                                          ; $70b4: $7d
	ld h, c                                          ; $70b5: $61
	rst SubAFromDE                                          ; $70b6: $df
	rrca                                             ; $70b7: $0f
	db $dd                                           ; $70b8: $dd
	ld bc, $617d                                     ; $70b9: $01 $7d $61
	rst SubAFromDE                                          ; $70bc: $df
	ldh a, [hDisp1_LCDC]                                     ; $70bd: $f0 $8f
	ld a, [de]                                       ; $70bf: $1a
	dec e                                            ; $70c0: $1d
	ld a, [de]                                       ; $70c1: $1a
	rla                                              ; $70c2: $17
	ld a, [hl+]                                      ; $70c3: $2a
	dec a                                            ; $70c4: $3d
	ld a, [hl+]                                      ; $70c5: $2a
	ld [hl], a                                       ; $70c6: $77
	push af                                          ; $70c7: $f5
	ldh a, [c]                                       ; $70c8: $f2
	push af                                          ; $70c9: $f5
	ld hl, sp-$0b                                    ; $70ca: $f8 $f5
	ldh [c], a                                       ; $70cc: $e2
	push af                                          ; $70cd: $f5
	ret z                                            ; $70ce: $c8

	ld b, a                                          ; $70cf: $47
	jr nz, jr_021_706f                               ; $70d0: $20 $9d

	db $dd                                           ; $70d2: $dd
	ld [hl], a                                       ; $70d3: $77
	ld l, a                                          ; $70d4: $6f
	cp $9d                                           ; $70d5: $fe $9d
	ld [hl+], a                                      ; $70d7: $22
	adc b                                            ; $70d8: $88
	ld l, a                                          ; $70d9: $6f
	cp $07                                           ; $70da: $fe $07
	ldh a, [hDisp1_SCY]                                     ; $70dc: $f0 $90
	rst GetHLinHL                                          ; $70de: $cf
	ld c, a                                          ; $70df: $4f
	rst SubAFromBC                                          ; $70e0: $e7
	ld h, e                                          ; $70e1: $63

jr_021_70e2:
	pop af                                           ; $70e2: $f1
	ld [hl], c                                       ; $70e3: $71
	pop af                                           ; $70e4: $f1
	ld [hl], b                                       ; $70e5: $70
	ld [hl], b                                       ; $70e6: $70
	ldh a, [$38]                                     ; $70e7: $f0 $38
	cp h                                             ; $70e9: $bc
	ld a, $be                                        ; $70ea: $3e $be
	ld a, $d8                                        ; $70ec: $3e $d8
	rst $38                                          ; $70ee: $ff
	ld sp, hl                                        ; $70ef: $f9
	ld b, a                                          ; $70f0: $47
	ldh a, [hDisp1_SCX]                                     ; $70f1: $f0 $91
	cp [hl]                                          ; $70f3: $be
	ld a, [hl]                                       ; $70f4: $7e
	call c, $ecbc                                    ; $70f5: $dc $bc $ec
	ret c                                            ; $70f8: $d8

	ldh a, [$f8]                                     ; $70f9: $f0 $f8
	pop bc                                           ; $70fb: $c1
	pop bc                                           ; $70fc: $c1
	ld h, e                                          ; $70fd: $63
	ld h, e                                          ; $70fe: $63
	inc sp                                           ; $70ff: $33
	scf                                              ; $7100: $37
	ld [hl], e                                       ; $7101: $73
	inc d                                            ; $7102: $14
	sbc $03                                          ; $7103: $de $03
	rst SubAFromDE                                          ; $7105: $df
	dec b                                            ; $7106: $05
	ld l, e                                          ; $7107: $6b
	ld d, l                                          ; $7108: $55
	ld a, l                                          ; $7109: $7d
	jp $d04b                                         ; $710a: $c3 $4b $d0


	ld b, a                                          ; $710d: $47
	cp b                                             ; $710e: $b8
	sbc d                                            ; $710f: $9a
	jp z, $cad5                                      ; $7110: $ca $d5 $ca

	pop de                                           ; $7113: $d1
	cp $de                                           ; $7114: $fe $de
	ccf                                              ; $7116: $3f
	sbc d                                            ; $7117: $9a
	add b                                            ; $7118: $80
	add h                                            ; $7119: $84
	xor [hl]                                         ; $711a: $ae
	sbc a                                            ; $711b: $9f
	and c                                            ; $711c: $a1
	sbc $c0                                          ; $711d: $de $c0
	sbc $a1                                          ; $711f: $de $a1
	sbc d                                            ; $7121: $9a
	ld hl, $3d81                                     ; $7122: $21 $81 $3d
	rst $38                                          ; $7125: $ff
	ldh [$dd], a                                     ; $7126: $e0 $dd
	ccf                                              ; $7128: $3f
	sbc e                                            ; $7129: $9b
	cp a                                             ; $712a: $bf
	jp $1f01                                         ; $712b: $c3 $01 $1f


	ld a, d                                          ; $712e: $7a
	rst JumpTable                                          ; $712f: $c7
	sbc [hl]                                         ; $7130: $9e
	ld a, [hl]                                       ; $7131: $7e
	ld a, e                                          ; $7132: $7b
	ld h, b                                          ; $7133: $60
	sbc [hl]                                         ; $7134: $9e
	rst FarCall                                          ; $7135: $f7
	ld a, c                                          ; $7136: $79
	db $fd                                           ; $7137: $fd
	sbc l                                            ; $7138: $9d
	sbc a                                            ; $7139: $9f
	inc hl                                           ; $713a: $23
	ld a, e                                          ; $713b: $7b
	ld h, b                                          ; $713c: $60
	ld a, h                                          ; $713d: $7c
	db $db                                           ; $713e: $db
	sbc h                                            ; $713f: $9c
	jr jr_021_7151                                   ; $7140: $18 $0f

	db $fd                                           ; $7142: $fd
	ld a, e                                          ; $7143: $7b
	ld d, b                                          ; $7144: $50
	sbc d                                            ; $7145: $9a
	ldh a, [$e0]                                     ; $7146: $f0 $e0
	rst SubAFromBC                                          ; $7148: $e7
	rst $38                                          ; $7149: $ff
	ldh a, [c]                                       ; $714a: $f2
	ld a, e                                          ; $714b: $7b
	ldh a, [$9e]                                     ; $714c: $f0 $9e
	ld e, l                                          ; $714e: $5d
	ld l, e                                          ; $714f: $6b
	ld b, b                                          ; $7150: $40

jr_021_7151:
	sbc h                                            ; $7151: $9c
	ldh [c], a                                       ; $7152: $e2
	ret z                                            ; $7153: $c8

	and d                                            ; $7154: $a2
	inc sp                                           ; $7155: $33
	jr nc, jr_021_70e2                               ; $7156: $30 $8a

	db $fd                                           ; $7158: $fd
	cp a                                             ; $7159: $bf
	ei                                               ; $715a: $fb
	rst AddAOntoHL                                          ; $715b: $ef
	rst $38                                          ; $715c: $ff
	cp a                                             ; $715d: $bf
	ei                                               ; $715e: $fb
	rst $38                                          ; $715f: $ff
	ld [bc], a                                       ; $7160: $02
	ld b, b                                          ; $7161: $40
	inc b                                            ; $7162: $04
	stop                                             ; $7163: $10 $00
	ld b, b                                          ; $7165: $40
	inc b                                            ; $7166: $04
	nop                                              ; $7167: $00
	db $dd                                           ; $7168: $dd
	rst $38                                          ; $7169: $ff
	or a                                             ; $716a: $b7
	cp $7f                                           ; $716b: $fe $7f
	ld a, e                                          ; $716d: $7b
	or d                                             ; $716e: $b2
	sbc c                                            ; $716f: $99
	ld [hl+], a                                      ; $7170: $22
	nop                                              ; $7171: $00
	ld c, b                                          ; $7172: $48
	ld bc, $0880                                     ; $7173: $01 $80 $08
	ld a, e                                          ; $7176: $7b
	ld a, b                                          ; $7177: $78
	ld a, a                                          ; $7178: $7f
	rst AddAOntoHL                                          ; $7179: $ef
	sbc h                                            ; $717a: $9c
	ld [hl], a                                       ; $717b: $77
	rst SubAFromDE                                          ; $717c: $df
	ei                                               ; $717d: $fb
	ld a, e                                          ; $717e: $7b
	ld h, b                                          ; $717f: $60
	ld a, a                                          ; $7180: $7f
	rst AddAOntoHL                                          ; $7181: $ef
	sub d                                            ; $7182: $92
	adc b                                            ; $7183: $88
	jr nz, jr_021_718a                               ; $7184: $20 $04

	nop                                              ; $7186: $00
	nop                                              ; $7187: $00
	ldh a, [$f0]                                     ; $7188: $f0 $f0

jr_021_718a:
	ret nc                                           ; $718a: $d0

	ret nc                                           ; $718b: $d0

	ret c                                            ; $718c: $d8

	sbc b                                            ; $718d: $98
	sbc b                                            ; $718e: $98
	adc b                                            ; $718f: $88
	call c, Call_021_757f                            ; $7190: $dc $7f $75
	add a                                            ; $7193: $87
	rst SubAFromDE                                          ; $7194: $df
	ld a, a                                          ; $7195: $7f
	sbc $3f                                          ; $7196: $de $3f
	rst SubAFromDE                                          ; $7198: $df
	rra                                              ; $7199: $1f
	sbc $80                                          ; $719a: $de $80
	sbc $c0                                          ; $719c: $de $c0
	rst SubAFromDE                                          ; $719e: $df
	ldh [rBGP], a                                    ; $719f: $e0 $47
	jr nc, jr_021_7221                               ; $71a1: $30 $7e

	ld a, [hl+]                                      ; $71a3: $2a
	sbc c                                            ; $71a4: $99
	db $fc                                           ; $71a5: $fc
	ld a, [$fefe]                                    ; $71a6: $fa $fe $fe
	db $fd                                           ; $71a9: $fd
	db $fd                                           ; $71aa: $fd
	ld a, c                                          ; $71ab: $79
	ldh a, [c]                                       ; $71ac: $f2
	ld a, c                                          ; $71ad: $79
	pop af                                           ; $71ae: $f1
	ld a, b                                          ; $71af: $78
	add $95                                          ; $71b0: $c6 $95
	dec bc                                           ; $71b2: $0b
	cp $0b                                           ; $71b3: $fe $0b
	dec bc                                           ; $71b5: $0b
	inc de                                           ; $71b6: $13
	inc de                                           ; $71b7: $13
	inc hl                                           ; $71b8: $23
	db $fc                                           ; $71b9: $fc
	db $fc                                           ; $71ba: $fc
	rst $38                                          ; $71bb: $ff
	call c, $dffc                                    ; $71bc: $dc $fc $df
	rst $38                                          ; $71bf: $ff
	sbc [hl]                                         ; $71c0: $9e
	inc bc                                           ; $71c1: $03
	call c, $7bfe                                    ; $71c2: $dc $fe $7b
	sub [hl]                                         ; $71c5: $96
	call c, $9d01                                    ; $71c6: $dc $01 $9d
	nop                                              ; $71c9: $00
	ccf                                              ; $71ca: $3f
	ld l, [hl]                                       ; $71cb: $6e
	nop                                              ; $71cc: $00
	reti                                             ; $71cd: $d9


	rst $38                                          ; $71ce: $ff
	sbc l                                            ; $71cf: $9d
	ld hl, sp+$0f                                    ; $71d0: $f8 $0f
	ld [hl], a                                       ; $71d2: $77
	and d                                            ; $71d3: $a2
	rst SubAFromDE                                          ; $71d4: $df
	rra                                              ; $71d5: $1f
	sbc l                                            ; $71d6: $9d
	rst $38                                          ; $71d7: $ff
	ldh a, [rPCM34]                                  ; $71d8: $f0 $77
	and d                                            ; $71da: $a2
	rst SubAFromDE                                          ; $71db: $df
	ldh [$9e], a                                     ; $71dc: $e0 $9e
	rrca                                             ; $71de: $0f
	jp c, $9eff                                      ; $71df: $da $ff $9e

	ldh a, [$fa]                                     ; $71e2: $f0 $fa
	ld [hl], a                                       ; $71e4: $77
	ld b, b                                          ; $71e5: $40
	ld a, a                                          ; $71e6: $7f
	ld a, b                                          ; $71e7: $78
	ld a, a                                          ; $71e8: $7f
	ld e, a                                          ; $71e9: $5f
	sub a                                            ; $71ea: $97
	add d                                            ; $71eb: $82
	ret nz                                           ; $71ec: $c0

	add h                                            ; $71ed: $84
	sub b                                            ; $71ee: $90
	ret nz                                           ; $71ef: $c0

	ld b, b                                          ; $71f0: $40
	ld b, h                                          ; $71f1: $44
	ld b, b                                          ; $71f2: $40
	rlca                                             ; $71f3: $07
	ld b, b                                          ; $71f4: $40
	ld b, e                                          ; $71f5: $43
	ldh a, [$0a]                                     ; $71f6: $f0 $0a
	ld b, b                                          ; $71f8: $40

jr_021_71f9:
	ld b, a                                          ; $71f9: $47
	ldh a, [$9e]                                     ; $71fa: $f0 $9e
	adc b                                            ; $71fc: $88
	call c, Call_021_76fc                            ; $71fd: $dc $fc $76
	ld c, b                                          ; $7200: $48
	sbc [hl]                                         ; $7201: $9e
	rra                                              ; $7202: $1f
	db $dd                                           ; $7203: $dd
	rlca                                             ; $7204: $07
	ld a, [hl]                                       ; $7205: $7e
	sub c                                            ; $7206: $91
	ld [hl], l                                       ; $7207: $75
	add hl, de                                       ; $7208: $19
	ld a, a                                          ; $7209: $7f
	ld c, d                                          ; $720a: $4a
	sbc l                                            ; $720b: $9d
	nop                                              ; $720c: $00
	ldh [$74], a                                     ; $720d: $e0 $74
	jr c, @+$64                                      ; $720f: $38 $62

	ld [hl-], a                                      ; $7211: $32
	sbc l                                            ; $7212: $9d
	rst FarCall                                          ; $7213: $f7
	ld [hl], a                                       ; $7214: $77
	ei                                               ; $7215: $fb
	sbc l                                            ; $7216: $9d
	ld [$7688], sp                                   ; $7217: $08 $88 $76
	jr jr_021_71f9                                   ; $721a: $18 $dd

	rst $38                                          ; $721c: $ff
	ld [hl], e                                       ; $721d: $73
	inc h                                            ; $721e: $24
	cp $9a                                           ; $721f: $fe $9a

jr_021_7221:
	inc hl                                           ; $7221: $23
	ld h, a                                          ; $7222: $67
	rst JumpTable                                          ; $7223: $c7
	rst JumpTable                                          ; $7224: $c7
	rst $38                                          ; $7225: $ff
	sbc $81                                          ; $7226: $de $81
	sbc [hl]                                         ; $7228: $9e
	db $fc                                           ; $7229: $fc
	sbc $f8                                          ; $722a: $de $f8
	ld h, l                                          ; $722c: $65
	ld d, b                                          ; $722d: $50
	ld a, h                                          ; $722e: $7c
	db $eb                                           ; $722f: $eb
	sbc l                                            ; $7230: $9d
	pop bc                                           ; $7231: $c1
	ret                                              ; $7232: $c9


	db $dd                                           ; $7233: $dd
	ld bc, $c777                                     ; $7234: $01 $77 $c7
	ld [hl], e                                       ; $7237: $73
	adc h                                            ; $7238: $8c
	sbc h                                            ; $7239: $9c
	rst SubAFromBC                                          ; $723a: $e7
	add $ce                                          ; $723b: $c6 $ce
	ld h, a                                          ; $723d: $67
	or a                                             ; $723e: $b7
	rst SubAFromDE                                          ; $723f: $df
	rra                                              ; $7240: $1f
	sbc c                                            ; $7241: $99
	ld bc, $f37f                                     ; $7242: $01 $7f $f3
	inc sp                                           ; $7245: $33
	ld sp, $6aa1                                     ; $7246: $31 $a1 $6a
	and [hl]                                         ; $7249: $a6
	ld a, a                                          ; $724a: $7f
	dec d                                            ; $724b: $15
	sub b                                            ; $724c: $90
	db $fd                                           ; $724d: $fd
	rst $38                                          ; $724e: $ff
	rrca                                             ; $724f: $0f
	rrca                                             ; $7250: $0f
	dec bc                                           ; $7251: $0b
	rrca                                             ; $7252: $0f
	rlca                                             ; $7253: $07
	nop                                              ; $7254: $00
	inc bc                                           ; $7255: $03
	cp $f4                                           ; $7256: $fe $f4
	db $f4                                           ; $7258: $f4
	or $f2                                           ; $7259: $f6 $f2
	ld a, [$ffd9]                                    ; $725b: $fa $d9 $ff
	sbc [hl]                                         ; $725e: $9e
	ld b, b                                          ; $725f: $40
	ld l, [hl]                                       ; $7260: $6e
	ret                                              ; $7261: $c9


	inc bc                                           ; $7262: $03
	ld b, b                                          ; $7263: $40
	inc bc                                           ; $7264: $03
	ldh a, [$0b]                                     ; $7265: $f0 $0b
	ldh a, [$7f]                                     ; $7267: $f0 $7f
	ld d, e                                          ; $7269: $53
	sbc [hl]                                         ; $726a: $9e
	db $fd                                           ; $726b: $fd
	sbc $f9                                          ; $726c: $de $f9
	rst SubAFromDE                                          ; $726e: $df
	di                                               ; $726f: $f3
	sbc $0f                                          ; $7270: $de $0f
	sbc $1f                                          ; $7272: $de $1f
	rst SubAFromDE                                          ; $7274: $df
	ccf                                              ; $7275: $3f
	sub a                                            ; $7276: $97
	nop                                              ; $7277: $00
	db $10                                           ; $7278: $10
	db $10                                           ; $7279: $10
	sub b                                            ; $727a: $90
	sbc b                                            ; $727b: $98
	ld e, b                                          ; $727c: $58
	ld a, b                                          ; $727d: $78
	ld a, b                                          ; $727e: $78
	reti                                             ; $727f: $d9


	rst $38                                          ; $7280: $ff
	sbc d                                            ; $7281: $9a
	inc sp                                           ; $7282: $33
	inc de                                           ; $7283: $13
	ld de, $0001                                     ; $7284: $11 $01 $00
	sbc $02                                          ; $7287: $de $02
	sbc h                                            ; $7289: $9c
	call z, $eeec                                    ; $728a: $cc $ec $ee
	ld h, d                                          ; $728d: $62
	ldh a, [c]                                       ; $728e: $f2
	sbc h                                            ; $728f: $9c
	ld a, a                                          ; $7290: $7f
	rra                                              ; $7291: $1f
	nop                                              ; $7292: $00
	ld [hl], e                                       ; $7293: $73
	inc b                                            ; $7294: $04
	ld a, l                                          ; $7295: $7d
	ld d, l                                          ; $7296: $55
	rst SubAFromDE                                          ; $7297: $df
	rst $38                                          ; $7298: $ff
	adc h                                            ; $7299: $8c
	add c                                            ; $729a: $81
	adc c                                            ; $729b: $89
	adc c                                            ; $729c: $89
	sbc c                                            ; $729d: $99
	sbc c                                            ; $729e: $99
	cp c                                             ; $729f: $b9
	cp c                                             ; $72a0: $b9
	ld sp, hl                                        ; $72a1: $f9
	rst $38                                          ; $72a2: $ff
	rst FarCall                                          ; $72a3: $f7
	rst FarCall                                          ; $72a4: $f7
	rst SubAFromBC                                          ; $72a5: $e7
	rst SubAFromBC                                          ; $72a6: $e7
	rst JumpTable                                          ; $72a7: $c7
	rst JumpTable                                          ; $72a8: $c7
	add a                                            ; $72a9: $87
	sbc c                                            ; $72aa: $99
	cp c                                             ; $72ab: $b9
	add hl, sp                                       ; $72ac: $39
	sbc $79                                          ; $72ad: $de $79
	rst SubAFromDE                                          ; $72af: $df
	ld sp, hl                                        ; $72b0: $f9
	ld [hl], a                                       ; $72b1: $77
	db $f4                                           ; $72b2: $f4
	rst SubAFromDE                                          ; $72b3: $df
	add a                                            ; $72b4: $87
	rst SubAFromDE                                          ; $72b5: $df
	rlca                                             ; $72b6: $07
	sbc [hl]                                         ; $72b7: $9e
	rst SubAFromDE                                          ; $72b8: $df
	db $dd                                           ; $72b9: $dd
	sbc a                                            ; $72ba: $9f
	rst SubAFromDE                                          ; $72bb: $df
	cp e                                             ; $72bc: $bb
	sbc [hl]                                         ; $72bd: $9e
	dec sp                                           ; $72be: $3b
	call c, $dee6                                    ; $72bf: $dc $e6 $de
	add $9b                                          ; $72c2: $c6 $9b
	and c                                            ; $72c4: $a1
	xor c                                            ; $72c5: $a9
	xor c                                            ; $72c6: $a9
	xor h                                            ; $72c7: $ac
	sbc $ec                                          ; $72c8: $de $ec
	sbc d                                            ; $72ca: $9a
	sub $7f                                          ; $72cb: $d6 $7f
	ld [hl], a                                       ; $72cd: $77
	ld [hl], a                                       ; $72ce: $77
	ld [hl], e                                       ; $72cf: $73
	sbc $33                                          ; $72d0: $de $33
	adc [hl]                                         ; $72d2: $8e
	add hl, sp                                       ; $72d3: $39
	rlca                                             ; $72d4: $07
	ld b, l                                          ; $72d5: $45
	ld b, a                                          ; $72d6: $47
	rst SubAFromBC                                          ; $72d7: $e7
	and $b7                                          ; $72d8: $e6 $b7
	or e                                             ; $72da: $b3
	or e                                             ; $72db: $b3
	ld a, [$b9bb]                                    ; $72dc: $fa $bb $b9
	sbc c                                            ; $72df: $99
	sbc c                                            ; $72e0: $99
	ret z                                            ; $72e1: $c8

	call z, Call_021_67cc                            ; $72e2: $cc $cc $67
	sbc l                                            ; $72e5: $9d
	ld [hl], e                                       ; $72e6: $73
	and b                                            ; $72e7: $a0
	ld a, c                                          ; $72e8: $79
	ld a, h                                          ; $72e9: $7c
	inc bc                                           ; $72ea: $03
	jr nc, @+$05                                     ; $72eb: $30 $03

	ldh a, [rIF]                                     ; $72ed: $f0 $0f
	ldh a, [$9d]                                     ; $72ef: $f0 $9d
	db $e3                                           ; $72f1: $e3
	ldh [c], a                                       ; $72f2: $e2
	ld a, e                                          ; $72f3: $7b
	ld l, d                                          ; $72f4: $6a
	rst SubAFromDE                                          ; $72f5: $df
	call nz, $849c                                   ; $72f6: $c4 $9c $84
	ccf                                              ; $72f9: $3f
	ccf                                              ; $72fa: $3f
	ld l, h                                          ; $72fb: $6c
	cp $97                                           ; $72fc: $fe $97
	ld a, h                                          ; $72fe: $7c
	ld l, h                                          ; $72ff: $6c
	ld c, h                                          ; $7300: $4c
	ld b, [hl]                                       ; $7301: $46
	ld b, e                                          ; $7302: $43
	ld b, e                                          ; $7303: $43
	jp $d9c3                                         ; $7304: $c3 $c3 $d9


	rst $38                                          ; $7307: $ff
	sbc $01                                          ; $7308: $de $01
	sbc l                                            ; $730a: $9d
	ld b, $38                                        ; $730b: $06 $38
	ld a, d                                          ; $730d: $7a
	ld [hl], h                                       ; $730e: $74
	reti                                             ; $730f: $d9


	rst $38                                          ; $7310: $ff
	add b                                            ; $7311: $80
	ld b, $39                                        ; $7312: $06 $39
	rst JumpTable                                          ; $7314: $c7
	rra                                              ; $7315: $1f
	inc a                                            ; $7316: $3c
	ld a, b                                          ; $7317: $78
	jr nz, @-$3b                                     ; $7318: $20 $c3

	rst $38                                          ; $731a: $ff
	cp $f8                                           ; $731b: $fe $f8
	ldh [$c0], a                                     ; $731d: $e0 $c0
	add b                                            ; $731f: $80
	ret nz                                           ; $7320: $c0

	nop                                              ; $7321: $00
	ld a, l                                          ; $7322: $7d
	db $fd                                           ; $7323: $fd
	db $fd                                           ; $7324: $fd
	dec a                                            ; $7325: $3d
	dec a                                            ; $7326: $3d
	dec e                                            ; $7327: $1d
	db $fd                                           ; $7328: $fd
	db $fd                                           ; $7329: $fd
	jp Jump_021_4343                                 ; $732a: $c3 $43 $43


	inc hl                                           ; $732d: $23
	inc hl                                           ; $732e: $23
	inc sp                                           ; $732f: $33
	inc de                                           ; $7330: $13
	sbc [hl]                                         ; $7331: $9e
	inc de                                           ; $7332: $13
	reti                                             ; $7333: $d9


	ld sp, hl                                        ; $7334: $f9
	reti                                             ; $7335: $d9


	rlca                                             ; $7336: $07
	sbc $3b                                          ; $7337: $de $3b
	db $dd                                           ; $7339: $dd
	ccf                                              ; $733a: $3f
	sbc [hl]                                         ; $733b: $9e
	ld a, $de                                        ; $733c: $3e $de
	add $dd                                          ; $733e: $c6 $dd
	jp nz, $c39e                                     ; $7340: $c2 $9e $c3

	db $dd                                           ; $7343: $dd
	sub $de                                          ; $7344: $d6 $de
	rst FarCall                                          ; $7346: $f7
	sbc [hl]                                         ; $7347: $9e
	rst AddAOntoHL                                          ; $7348: $ef
	db $dd                                           ; $7349: $dd
	add hl, sp                                       ; $734a: $39
	db $dd                                           ; $734b: $dd
	jr @-$68                                         ; $734c: $18 $96

	or e                                             ; $734e: $b3
	cp c                                             ; $734f: $b9
	ld a, c                                          ; $7350: $79
	ld a, c                                          ; $7351: $79
	ld a, l                                          ; $7352: $7d
	ld e, l                                          ; $7353: $5d
	ld e, h                                          ; $7354: $5c
	ld e, [hl]                                       ; $7355: $5e
	call z, $df77                                    ; $7356: $cc $77 $df
	sbc h                                            ; $7359: $9c
	ldh [c], a                                       ; $735a: $e2
	db $e3                                           ; $735b: $e3
	pop hl                                           ; $735c: $e1
	sbc $ff                                          ; $735d: $de $ff
	sbc [hl]                                         ; $735f: $9e
	cp a                                             ; $7360: $bf
	sbc $ff                                          ; $7361: $de $ff
	sbc [hl]                                         ; $7363: $9e
	rst SubAFromDE                                          ; $7364: $df
	sbc $40                                          ; $7365: $de $40
	sbc [hl]                                         ; $7367: $9e
	ld h, b                                          ; $7368: $60
	sbc $20                                          ; $7369: $de $20
	sbc [hl]                                         ; $736b: $9e
	jr nc, @+$05                                     ; $736c: $30 $03

	jr nc, @+$05                                     ; $736e: $30 $03

	ldh a, [rAUD4GO]                                 ; $7370: $f0 $23
	ldh a, [$dc]                                     ; $7372: $f0 $dc
	ld bc, $8cde                                     ; $7374: $01 $de $8c
	sbc d                                            ; $7377: $9a
	ld [$0909], sp                                   ; $7378: $08 $09 $09
	add hl, de                                       ; $737b: $19
	add hl, de                                       ; $737c: $19
	reti                                             ; $737d: $d9


	rst $38                                          ; $737e: $ff
	sbc $82                                          ; $737f: $de $82
	sbc $86                                          ; $7381: $de $86
	sbc l                                            ; $7383: $9d
	add h                                            ; $7384: $84
	inc b                                            ; $7385: $04
	reti                                             ; $7386: $d9


	rst $38                                          ; $7387: $ff
	sbc h                                            ; $7388: $9c
	add a                                            ; $7389: $87
	rst $38                                          ; $738a: $ff
	ld a, h                                          ; $738b: $7c
	ld a, e                                          ; $738c: $7b
	ld a, b                                          ; $738d: $78
	sbc c                                            ; $738e: $99
	ld de, $f81e                                     ; $738f: $11 $1e $f8
	add b                                            ; $7392: $80
	jp $75df                                         ; $7393: $c3 $df $75


	ld hl, $ef94                                     ; $7396: $21 $94 $ef
	sbc a                                            ; $7399: $9f
	rrca                                             ; $739a: $0f
	ld b, $18                                        ; $739b: $06 $18
	ld h, b                                          ; $739d: $60
	add b                                            ; $739e: $80
	nop                                              ; $739f: $00
	nop                                              ; $73a0: $00
	ld h, b                                          ; $73a1: $60
	pop af                                           ; $73a2: $f1
	ld a, d                                          ; $73a3: $7a
	cp $7f                                           ; $73a4: $fe $7f
	ld hl, sp-$6d                                    ; $73a6: $f8 $93

jr_021_73a8:
	db $fd                                           ; $73a8: $fd
	db $ed                                           ; $73a9: $ed
	db $dd                                           ; $73aa: $dd
	ld e, l                                          ; $73ab: $5d
	dec a                                            ; $73ac: $3d
	dec l                                            ; $73ad: $2d
	dec e                                            ; $73ae: $1d
	dec d                                            ; $73af: $15
	inc de                                           ; $73b0: $13
	ld [hl], e                                       ; $73b1: $73
	db $e3                                           ; $73b2: $e3
	ld h, e                                          ; $73b3: $63
	ld a, e                                          ; $73b4: $7b
	nop                                              ; $73b5: $00
	sbc [hl]                                         ; $73b6: $9e
	dec de                                           ; $73b7: $1b
	ld b, a                                          ; $73b8: $47
	nop                                              ; $73b9: $00
	db $db                                           ; $73ba: $db
	ld a, $df                                        ; $73bb: $3e $df
	dec e                                            ; $73bd: $1d
	db $db                                           ; $73be: $db
	jp $e3df                                         ; $73bf: $c3 $df $e3


	sbc [hl]                                         ; $73c2: $9e
	rst AddAOntoHL                                          ; $73c3: $ef
	db $dd                                           ; $73c4: $dd
	db $eb                                           ; $73c5: $eb
	sbc $f7                                          ; $73c6: $de $f7
	sbc [hl]                                         ; $73c8: $9e
	jr jr_021_73a8                                   ; $73c9: $18 $dd

	inc e                                            ; $73cb: $1c
	sbc $0c                                          ; $73cc: $de $0c
	sub h                                            ; $73ce: $94
	ld a, $be                                        ; $73cf: $3e $be
	xor [hl]                                         ; $73d1: $ae
	xor a                                            ; $73d2: $af
	xor a                                            ; $73d3: $af
	sbc a                                            ; $73d4: $9f
	rst SubAFromDE                                          ; $73d5: $df
	rst SubAFromDE                                          ; $73d6: $df
	pop hl                                           ; $73d7: $e1
	ld h, c                                          ; $73d8: $61
	ld [hl], c                                       ; $73d9: $71
	sbc $70                                          ; $73da: $de $70
	rst SubAFromDE                                          ; $73dc: $df
	jr nc, @+$80                                     ; $73dd: $30 $7e

	ld b, $91                                        ; $73df: $06 $91
	ld a, a                                          ; $73e1: $7f
	ld l, a                                          ; $73e2: $6f
	ld a, a                                          ; $73e3: $7f
	ccf                                              ; $73e4: $3f
	ccf                                              ; $73e5: $3f
	or a                                             ; $73e6: $b7
	db $10                                           ; $73e7: $10
	sub b                                            ; $73e8: $90
	sub b                                            ; $73e9: $90
	sbc b                                            ; $73ea: $98
	adc b                                            ; $73eb: $88
	ret z                                            ; $73ec: $c8

	ret z                                            ; $73ed: $c8

	ld c, h                                          ; $73ee: $4c
	inc bc                                           ; $73ef: $03
	jr nc, @+$4d                                     ; $73f0: $30 $4b

	ldh a, [rAUDENA]                                 ; $73f2: $f0 $26
	nop                                              ; $73f4: $00
	rst SubAFromDE                                          ; $73f5: $df
	inc sp                                           ; $73f6: $33
	sbc e                                            ; $73f7: $9b
	dec [hl]                                         ; $73f8: $35
	ld d, l                                          ; $73f9: $55
	ld b, h                                          ; $73fa: $44
	dec [hl]                                         ; $73fb: $35
	db $dd                                           ; $73fc: $dd
	inc sp                                           ; $73fd: $33
	ld a, a                                          ; $73fe: $7f
	ld hl, sp-$63                                    ; $73ff: $f8 $9d
	ld d, h                                          ; $7401: $54
	ld b, h                                          ; $7402: $44
	ld l, a                                          ; $7403: $6f
	ld hl, sp-$21                                    ; $7404: $f8 $df
	ld d, l                                          ; $7406: $55
	ld l, e                                          ; $7407: $6b
	ld hl, sp-$62                                    ; $7408: $f8 $9e
	ld d, e                                          ; $740a: $53
	call c, $6f33                                    ; $740b: $dc $33 $6f
	pop af                                           ; $740e: $f1
	rst SubAFromDE                                          ; $740f: $df
	inc sp                                           ; $7410: $33
	sbc [hl]                                         ; $7411: $9e
	ld d, e                                          ; $7412: $53
	ld l, e                                          ; $7413: $6b
	ld hl, sp+$03                                    ; $7414: $f8 $03

jr_021_7416:
	rst $38                                          ; $7416: $ff
	push de                                          ; $7417: $d5
	inc sp                                           ; $7418: $33
	or c                                             ; $7419: $b1
	nop                                              ; $741a: $00
	sbc e                                            ; $741b: $9b
	adc b                                            ; $741c: $88
	ld [hl], a                                       ; $741d: $77
	ld [hl+], a                                      ; $741e: $22
	db $dd                                           ; $741f: $dd
	rla                                              ; $7420: $17
	db $fc                                           ; $7421: $fc
	sbc e                                            ; $7422: $9b
	add c                                            ; $7423: $81
	cp $80                                           ; $7424: $fe $80
	rst $38                                          ; $7426: $ff
	ld l, a                                          ; $7427: $6f
	cp $84                                           ; $7428: $fe $84
	sub b                                            ; $742a: $90
	rst AddAOntoHL                                          ; $742b: $ef
	sbc b                                            ; $742c: $98
	rst SubAFromBC                                          ; $742d: $e7

jr_021_742e:
	sbc h                                            ; $742e: $9c
	db $e3                                           ; $742f: $e3
	sbc d                                            ; $7430: $9a
	ld a, a                                          ; $7431: $7f
	adc $3f                                          ; $7432: $ce $3f
	rst SubAFromBC                                          ; $7434: $e7
	rra                                              ; $7435: $1f

jr_021_7436:
	ld [hl], e                                       ; $7436: $73
	adc a                                            ; $7437: $8f
	cp c                                             ; $7438: $b9
	rst JumpTable                                          ; $7439: $c7
	ld a, l                                          ; $743a: $7d
	jp $e35d                                         ; $743b: $c3 $5d $e3


	ld a, a                                          ; $743e: $7f
	pop hl                                           ; $743f: $e1
	sbc a                                            ; $7440: $9f
	nop                                              ; $7441: $00
	sbc a                                            ; $7442: $9f
	nop                                              ; $7443: $00
	rst GetHLinHL                                          ; $7444: $cf
	ld [hl], e                                       ; $7445: $73
	cp $9e                                           ; $7446: $fe $9e
	ret nz                                           ; $7448: $c0

	ld a, e                                          ; $7449: $7b
	cp $9e                                           ; $744a: $fe $9e
	rst $38                                          ; $744c: $ff
	ld d, e                                          ; $744d: $53
	cp $fd                                           ; $744e: $fe $fd
	sbc c                                            ; $7450: $99
	rst $38                                          ; $7451: $ff
	inc b                                            ; $7452: $04
	db $fc                                           ; $7453: $fc
	rlca                                             ; $7454: $07
	cp $03                                           ; $7455: $fe $03
	ld [hl], a                                       ; $7457: $77
	cp $80                                           ; $7458: $fe $80
	rst $38                                          ; $745a: $ff
	ld bc, $0303                                     ; $745b: $01 $03 $03
	rlca                                             ; $745e: $07
	rlca                                             ; $745f: $07
	ld [hl], e                                       ; $7460: $73
	sub e                                            ; $7461: $93
	ld [hl], b                                       ; $7462: $70
	sub b                                            ; $7463: $90
	jr c, jr_021_742e                                ; $7464: $38 $c8

	inc a                                            ; $7466: $3c
	call nz, $c33d                                   ; $7467: $c4 $3d $c3
	ld e, $e1                                        ; $746a: $1e $e1
	rrca                                             ; $746c: $0f
	ldh a, [rIE]                                     ; $746d: $f0 $ff
	db $fc                                           ; $746f: $fc
	ld h, a                                          ; $7470: $67
	add h                                            ; $7471: $84
	ei                                               ; $7472: $fb
	call z, $382f                                    ; $7473: $cc $2f $38
	rra                                              ; $7476: $1f
	jr jr_021_7480                                   ; $7477: $18 $07

	add [hl]                                         ; $7479: $86
	inc b                                            ; $747a: $04
	add e                                            ; $747b: $83
	add e                                            ; $747c: $83
	ld b, b                                          ; $747d: $40
	ret nz                                           ; $747e: $c0

	and b                                            ; $747f: $a0

jr_021_7480:
	ld h, b                                          ; $7480: $60
	db $ec                                           ; $7481: $ec
	rra                                              ; $7482: $1f
	ldh a, [c]                                       ; $7483: $f2
	inc de                                           ; $7484: $13
	pop af                                           ; $7485: $f1
	ld de, $11f1                                     ; $7486: $11 $f1 $11
	ret nc                                           ; $7489: $d0

	jr nc, @-$2e                                     ; $748a: $30 $d0

	jr nc, jr_021_7416                               ; $748c: $30 $88

	ld hl, sp+$68                                    ; $748e: $f8 $68
	ld a, b                                          ; $7490: $78
	ld a, a                                          ; $7491: $7f
	add b                                            ; $7492: $80
	ld l, e                                          ; $7493: $6b
	or d                                             ; $7494: $b2
	ld a, e                                          ; $7495: $7b
	ld a, l                                          ; $7496: $7d
	rst SubAFromDE                                          ; $7497: $df
	ld b, b                                          ; $7498: $40
	rst SubAFromDE                                          ; $7499: $df
	jr nz, jr_021_7436                               ; $749a: $20 $9a

	rst GetHLinHL                                          ; $749c: $cf
	inc bc                                           ; $749d: $03
	rst GetHLinHL                                          ; $749e: $cf
	inc bc                                           ; $749f: $03
	sbc a                                            ; $74a0: $9f
	ld [hl], e                                       ; $74a1: $73
	cp $91                                           ; $74a2: $fe $91
	sbc l                                            ; $74a4: $9d
	rlca                                             ; $74a5: $07
	dec e                                            ; $74a6: $1d
	rlca                                             ; $74a7: $07
	dec d                                            ; $74a8: $15
	rrca                                             ; $74a9: $0f
	ld b, a                                          ; $74aa: $47
	cp b                                             ; $74ab: $b8
	rlca                                             ; $74ac: $07
	ld hl, sp+$07                                    ; $74ad: $f8 $07
	ld hl, sp+$0f                                    ; $74af: $f8 $0f
	ldh a, [rPCM34]                                  ; $74b1: $f0 $77
	cp $91                                           ; $74b3: $fe $91
	rra                                              ; $74b5: $1f
	ldh [rAUD3HIGH], a                               ; $74b6: $e0 $1e

jr_021_74b8:
	pop hl                                           ; $74b8: $e1
	ret z                                            ; $74b9: $c8

	ld [hl], a                                       ; $74ba: $77
	ldh [c], a                                       ; $74bb: $e2
	ld e, l                                          ; $74bc: $5d
	xor b                                            ; $74bd: $a8
	ld [hl], a                                       ; $74be: $77
	ldh [c], a                                       ; $74bf: $e2
	dec a                                            ; $74c0: $3d
	add sp, $37                                      ; $74c1: $e8 $37
	ld [hl], a                                       ; $74c3: $77
	db $fc                                           ; $74c4: $fc
	sbc l                                            ; $74c5: $9d
	jp nc, $073d                                     ; $74c6: $d2 $3d $07

	jr nz, jr_021_74cf                               ; $74c9: $20 $04

	nop                                              ; $74cb: $00
	reti                                             ; $74cc: $d9


	inc sp                                           ; $74cd: $33
	db $db                                           ; $74ce: $db

jr_021_74cf:
	nop                                              ; $74cf: $00
	sub c                                            ; $74d0: $91
	nop                                              ; $74d1: $00
	rst $38                                          ; $74d2: $ff
	nop                                              ; $74d3: $00
	rst $38                                          ; $74d4: $ff
	inc b                                            ; $74d5: $04
	ei                                               ; $74d6: $fb
	jr nz, jr_021_74b8                               ; $74d7: $20 $df

	adc b                                            ; $74d9: $88
	ld [hl], a                                       ; $74da: $77
	nop                                              ; $74db: $00
	rst $38                                          ; $74dc: $ff
	ld [hl+], a                                      ; $74dd: $22
	db $dd                                           ; $74de: $dd
	ld [hl], a                                       ; $74df: $77
	ldh a, [c]                                       ; $74e0: $f2
	ld a, a                                          ; $74e1: $7f
	cp $97                                           ; $74e2: $fe $97
	ld [$80f7], sp                                   ; $74e4: $08 $f7 $80
	ld a, a                                          ; $74e7: $7f
	ld bc, $48fe                                     ; $74e8: $01 $fe $48
	or a                                             ; $74eb: $b7
	ld [hl], a                                       ; $74ec: $77
	xor $80                                          ; $74ed: $ee $80
	add hl, sp                                       ; $74ef: $39
	cp $3d                                           ; $74f0: $fe $3d
	cp $44                                           ; $74f2: $fe $44
	rst $38                                          ; $74f4: $ff
	ld b, b                                          ; $74f5: $40
	rst $38                                          ; $74f6: $ff
	ret nz                                           ; $74f7: $c0

	ld a, a                                          ; $74f8: $7f
	ld b, b                                          ; $74f9: $40
	rst $38                                          ; $74fa: $ff
	ld b, d                                          ; $74fb: $42
	db $fd                                           ; $74fc: $fd
	add c                                            ; $74fd: $81
	cp $19                                           ; $74fe: $fe $19
	cp $89                                           ; $7500: $fe $89
	ld a, [hl]                                       ; $7502: $7e
	call nz, Call_021_643f                           ; $7503: $c4 $3f $64
	sbc a                                            ; $7506: $9f
	inc d                                            ; $7507: $14
	rst AddAOntoHL                                          ; $7508: $ef
	inc b                                            ; $7509: $04
	rst $38                                          ; $750a: $ff
	ld [bc], a                                       ; $750b: $02
	rst $38                                          ; $750c: $ff
	ld [hl-], a                                      ; $750d: $32
	sub [hl]                                         ; $750e: $96
	rst $38                                          ; $750f: $ff
	add a                                            ; $7510: $87
	ld a, b                                          ; $7511: $78
	adc a                                            ; $7512: $8f
	ld [hl], b                                       ; $7513: $70
	rst SubAFromDE                                          ; $7514: $df
	jr nz, jr_021_7556                               ; $7515: $20 $3f

	nop                                              ; $7517: $00
	ld [hl], a                                       ; $7518: $77
	cp $9e                                           ; $7519: $fe $9e
	sbc a                                            ; $751b: $9f
	ld a, e                                          ; $751c: $7b
	cp $73                                           ; $751d: $fe $73
	cp a                                             ; $751f: $bf
	ld e, e                                          ; $7520: $5b
	cp $8f                                           ; $7521: $fe $8f
	ld h, b                                          ; $7523: $60
	ldh [rSVBK], a                                   ; $7524: $e0 $70
	ldh a, [$b0]                                     ; $7526: $f0 $b0
	ld [hl], b                                       ; $7528: $70
	rst SubAFromDE                                          ; $7529: $df
	ccf                                              ; $752a: $3f
	ret c                                            ; $752b: $d8

	ccf                                              ; $752c: $3f
	ld hl, sp+$1f                                    ; $752d: $f8 $1f
	add sp, $1f                                      ; $752f: $e8 $1f
	rst $38                                          ; $7531: $ff

jr_021_7532:
	inc c                                            ; $7532: $0c
	db $fd                                           ; $7533: $fd
	rst SubAFromDE                                          ; $7534: $df
	ld a, a                                          ; $7535: $7f
	sub l                                            ; $7536: $95
	rst $38                                          ; $7537: $ff
	add b                                            ; $7538: $80
	rst $38                                          ; $7539: $ff
	nop                                              ; $753a: $00
	ld a, a                                          ; $753b: $7f
	add b                                            ; $753c: $80
	add b                                            ; $753d: $80
	nop                                              ; $753e: $00
	adc h                                            ; $753f: $8c
	inc c                                            ; $7540: $0c
	db $dd                                           ; $7541: $dd
	ld bc, $81df                                     ; $7542: $01 $df $81
	sub l                                            ; $7545: $95
	ei                                               ; $7546: $fb
	ld a, e                                          ; $7547: $7b
	rst $38                                          ; $7548: $ff
	ld b, $ff                                        ; $7549: $06 $ff
	ld [bc], a                                       ; $754b: $02
	rra                                              ; $754c: $1f
	ld [bc], a                                       ; $754d: $02
	dec b                                            ; $754e: $05

jr_021_754f:
	ld b, $77                                        ; $754f: $06 $77
	and $9d                                          ; $7551: $e6 $9d
	cp $01                                           ; $7553: $fe $01
	ld l, a                                          ; $7555: $6f

jr_021_7556:
	cp $98                                           ; $7556: $fe $98
	db $fc                                           ; $7558: $fc
	inc bc                                           ; $7559: $03
	db $fc                                           ; $755a: $fc
	inc bc                                           ; $755b: $03
	ld h, b                                          ; $755c: $60
	rst $38                                          ; $755d: $ff
	ld h, b                                          ; $755e: $60
	ld a, e                                          ; $755f: $7b
	add d                                            ; $7560: $82
	ld a, a                                          ; $7561: $7f
	di                                               ; $7562: $f3
	adc a                                            ; $7563: $8f
	rlca                                             ; $7564: $07
	ld hl, sp+$1f                                    ; $7565: $f8 $1f
	ldh [$3f], a                                     ; $7567: $e0 $3f
	ret nz                                           ; $7569: $c0

	ccf                                              ; $756a: $3f
	ret nz                                           ; $756b: $c0

	dec de                                           ; $756c: $1b
	push hl                                          ; $756d: $e5
	rlca                                             ; $756e: $07
	pop hl                                           ; $756f: $e1
	daa                                              ; $7570: $27
	pop bc                                           ; $7571: $c1
	rst GetHLinHL                                          ; $7572: $cf
	ld bc, $fe73                                     ; $7573: $01 $73 $fe
	adc e                                            ; $7576: $8b
	inc bc                                           ; $7577: $03
	rst GetHLinHL                                          ; $7578: $cf
	inc bc                                           ; $7579: $03
	ei                                               ; $757a: $fb
	inc l                                            ; $757b: $2c
	rst GetHLinHL                                          ; $757c: $cf
	ld a, b                                          ; $757d: $78
	rst SubAFromDE                                          ; $757e: $df

Call_021_757f:
	ld [hl], b                                       ; $757f: $70
	xor a                                            ; $7580: $af
	ldh a, [$b3]                                     ; $7581: $f0 $b3
	db $ec                                           ; $7583: $ec
	db $e3                                           ; $7584: $e3
	call c, $dce3                                    ; $7585: $dc $e3 $dc
	jp $80bc                                         ; $7588: $c3 $bc $80


	ld a, e                                          ; $758b: $7b
	cp a                                             ; $758c: $bf
	sub e                                            ; $758d: $93
	ld c, b                                          ; $758e: $48
	rst FarCall                                          ; $758f: $f7
	ld b, b                                          ; $7590: $40
	rst $38                                          ; $7591: $ff
	ld b, c                                          ; $7592: $41
	cp $c8                                           ; $7593: $fe $c8
	ld [hl], a                                       ; $7595: $77
	ret nz                                           ; $7596: $c0

	ld a, a                                          ; $7597: $7f
	ldh [c], a                                       ; $7598: $e2
	ld e, l                                          ; $7599: $5d
	ccf                                              ; $759a: $3f
	jr nz, jr_021_7532                               ; $759b: $20 $95

	db $10                                           ; $759d: $10
	rst AddAOntoHL                                          ; $759e: $ef
	add h                                            ; $759f: $84
	ld a, e                                          ; $75a0: $7b
	nop                                              ; $75a1: $00
	rst $38                                          ; $75a2: $ff
	ld [bc], a                                       ; $75a3: $02
	db $fd                                           ; $75a4: $fd
	jr nz, @-$1f                                     ; $75a5: $20 $df

	ld [hl], a                                       ; $75a7: $77
	xor $04                                          ; $75a8: $ee $04
	nop                                              ; $75aa: $00
	reti                                             ; $75ab: $d9


	inc sp                                           ; $75ac: $33
	adc l                                            ; $75ad: $8d
	add b                                            ; $75ae: $80
	ld sp, hl                                        ; $75af: $f9
	reti                                             ; $75b0: $d9


	rst $38                                          ; $75b1: $ff
	ld b, a                                          ; $75b2: $47
	ldh a, [$97]                                     ; $75b3: $f0 $97
	ld bc, $0703                                     ; $75b5: $01 $03 $07
	inc c                                            ; $75b8: $0c
	ld e, $21                                        ; $75b9: $1e $21
	jr nz, @+$34                                     ; $75bb: $20 $32

	jp c, $8eff                                      ; $75bd: $da $ff $8e

	db $fd                                           ; $75c0: $fd
	jr jr_021_754f                                   ; $75c1: $18 $8c

	call z, Call_021_66e6                            ; $75c3: $cc $e6 $66
	or e                                             ; $75c6: $b3
	ld d, e                                          ; $75c7: $53
	add hl, sp                                       ; $75c8: $39
	rst SubAFromBC                                          ; $75c9: $e7
	di                                               ; $75ca: $f3
	di                                               ; $75cb: $f3
	ld sp, hl                                        ; $75cc: $f9
	ld sp, hl                                        ; $75cd: $f9
	db $fc                                           ; $75ce: $fc
	db $fc                                           ; $75cf: $fc
	cp $fa                                           ; $75d0: $fe $fa
	sbc [hl]                                         ; $75d2: $9e
	add e                                            ; $75d3: $83
	jp c, $97ff                                      ; $75d4: $da $ff $97

	ld a, h                                          ; $75d7: $7c
	pop bc                                           ; $75d8: $c1
	pop bc                                           ; $75d9: $c1
	ret nz                                           ; $75da: $c0

	ld b, b                                          ; $75db: $40
	ld b, b                                          ; $75dc: $40
	ld a, b                                          ; $75dd: $78
	cp $db                                           ; $75de: $fe $db
	rst $38                                          ; $75e0: $ff
	sbc l                                            ; $75e1: $9d
	rst JumpTable                                          ; $75e2: $c7
	ld bc, $b863                                     ; $75e3: $01 $63 $b8
	rst SubAFromDE                                          ; $75e6: $df
	ldh [$dd], a                                     ; $75e7: $e0 $dd
	ret nz                                           ; $75e9: $c0

	ld [hl], e                                       ; $75ea: $73
	ld a, [$609a]                                    ; $75eb: $fa $9a $60
	jr nz, jr_021_7610                               ; $75ee: $20 $20

	add b                                            ; $75f0: $80
	ret nz                                           ; $75f1: $c0

	ld sp, hl                                        ; $75f2: $f9
	call c, $9d01                                    ; $75f3: $dc $01 $9d
	ld hl, $6771                                     ; $75f6: $21 $71 $67
	adc b                                            ; $75f9: $88
	sbc [hl]                                         ; $75fa: $9e
	ld bc, $df77                                     ; $75fb: $01 $77 $df
	sbc l                                            ; $75fe: $9d
	ret nc                                           ; $75ff: $d0

	cp h                                             ; $7600: $bc
	db $db                                           ; $7601: $db
	rst $38                                          ; $7602: $ff
	sub a                                            ; $7603: $97
	rst AddAOntoHL                                          ; $7604: $ef
	jp $8080                                         ; $7605: $c3 $80 $80


	ld e, $1c                                        ; $7608: $1e $1c
	inc a                                            ; $760a: $3c
	inc a                                            ; $760b: $3c
	sbc $38                                          ; $760c: $de $38
	sbc d                                            ; $760e: $9a
	ld [hl], b                                       ; $760f: $70

jr_021_7610:
	di                                               ; $7610: $f3
	rst FarCall                                          ; $7611: $f7
	rst SubAFromBC                                          ; $7612: $e7
	rst SubAFromBC                                          ; $7613: $e7
	sbc $ef                                          ; $7614: $de $ef
	sbc [hl]                                         ; $7616: $9e
	rst SubAFromDE                                          ; $7617: $df
	db $dd                                           ; $7618: $dd
	inc c                                            ; $7619: $0c
	rst SubAFromDE                                          ; $761a: $df
	jr @-$1f                                         ; $761b: $18 $df

	add hl, de                                       ; $761d: $19
	db $dd                                           ; $761e: $dd
	di                                               ; $761f: $f3
	db $dd                                           ; $7620: $dd
	rst SubAFromBC                                          ; $7621: $e7
	adc a                                            ; $7622: $8f
	ld d, h                                          ; $7623: $54
	ld a, h                                          ; $7624: $7c
	cp h                                             ; $7625: $bc
	ld a, [$7ff6]                                    ; $7626: $fa $f6 $7f
	rst AddAOntoHL                                          ; $7629: $ef
	db $fc                                           ; $762a: $fc
	rst AddAOntoHL                                          ; $762b: $ef
	rst JumpTable                                          ; $762c: $c7
	rst JumpTable                                          ; $762d: $c7
	adc a                                            ; $762e: $8f
	sbc e                                            ; $762f: $9b
	sub c                                            ; $7630: $91
	inc sp                                           ; $7631: $33
	daa                                              ; $7632: $27
	ld a, [$809e]                                    ; $7633: $fa $9e $80
	daa                                              ; $7636: $27
	jr nc, @+$49                                     ; $7637: $30 $47

	ldh a, [$0a]                                     ; $7639: $f0 $0a
	nop                                              ; $763b: $00
	sbc $33                                          ; $763c: $de $33
	sbc d                                            ; $763e: $9a
	ld b, h                                          ; $763f: $44
	ld b, e                                          ; $7640: $43
	ld [hl], e                                       ; $7641: $73
	inc sp                                           ; $7642: $33
	inc sp                                           ; $7643: $33
	ld [hl], h                                       ; $7644: $74
	add b                                            ; $7645: $80
	ld sp, hl                                        ; $7646: $f9
	reti                                             ; $7647: $d9


	rst $38                                          ; $7648: $ff
	rlca                                             ; $7649: $07
	ldh a, [$db]                                     ; $764a: $f0 $db
	ld bc, $1f9d                                     ; $764c: $01 $9d $1f
	ldh a, [$da]                                     ; $764f: $f0 $da
	rst $38                                          ; $7651: $ff
	sbc [hl]                                         ; $7652: $9e
	rst AddAOntoHL                                          ; $7653: $ef
	db $db                                           ; $7654: $db
	rst $38                                          ; $7655: $ff
	sbc l                                            ; $7656: $9d
	add c                                            ; $7657: $81
	ld bc, $2adc                                     ; $7658: $01 $dc $2a
	sbc $ff                                          ; $765b: $de $ff
	db $dd                                           ; $765d: $dd
	ld a, a                                          ; $765e: $7f
	sbc c                                            ; $765f: $99
	ld hl, sp-$40                                    ; $7660: $f8 $c0
	ret nz                                           ; $7662: $c0

	pop bc                                           ; $7663: $c1
	halt                                             ; $7664: $76
	ld [hl], a                                       ; $7665: $77
	db $db                                           ; $7666: $db
	ld a, a                                          ; $7667: $7f
	reti                                             ; $7668: $d9


	rst $38                                          ; $7669: $ff
	sbc l                                            ; $766a: $9d
	di                                               ; $766b: $f3
	pop af                                           ; $766c: $f1
	db $db                                           ; $766d: $db
	ldh a, [$9b]                                     ; $766e: $f0 $9b
	ld sp, hl                                        ; $7670: $f9
	rst $38                                          ; $7671: $ff
	rst $38                                          ; $7672: $ff
	ldh a, [$dd]                                     ; $7673: $f0 $dd
	ret nz                                           ; $7675: $c0

	ld a, a                                          ; $7676: $7f
	cp a                                             ; $7677: $bf
	sbc [hl]                                         ; $7678: $9e
	ld a, b                                          ; $7679: $78
	ld h, a                                          ; $767a: $67
	xor b                                            ; $767b: $a8
	sbc l                                            ; $767c: $9d
	rra                                              ; $767d: $1f
	rlca                                             ; $767e: $07
	sbc $03                                          ; $767f: $de $03
	sbc [hl]                                         ; $7681: $9e
	pop hl                                           ; $7682: $e1
	db $db                                           ; $7683: $db
	ld bc, $9873                                     ; $7684: $01 $73 $98
	sub a                                            ; $7687: $97
	rst JumpTable                                          ; $7688: $c7
	ret nz                                           ; $7689: $c0

	ldh [$e0], a                                     ; $768a: $e0 $e0
	ld sp, hl                                        ; $768c: $f9
	reti                                             ; $768d: $d9


	rst AddAOntoHL                                          ; $768e: $ef
	db $fc                                           ; $768f: $fc
	db $dd                                           ; $7690: $dd
	rst $38                                          ; $7691: $ff
	db $dd                                           ; $7692: $dd
	ei                                               ; $7693: $fb
	db $dd                                           ; $7694: $dd
	ld e, $df                                        ; $7695: $1e $df
	ld sp, hl                                        ; $7697: $f9
	sbc [hl]                                         ; $7698: $9e
	pop af                                           ; $7699: $f1
	call c, $def3                                    ; $769a: $dc $f3 $de
	rst $38                                          ; $769d: $ff
	sbc [hl]                                         ; $769e: $9e
	rlca                                             ; $769f: $07
	db $dd                                           ; $76a0: $dd
	ld b, $de                                        ; $76a1: $06 $de
	rst $38                                          ; $76a3: $ff
	call c, $def9                                    ; $76a4: $dc $f9 $de
	ldh a, [$df]                                     ; $76a7: $f0 $df
	ld hl, sp-$64                                    ; $76a9: $f8 $9c
	ld a, b                                          ; $76ab: $78

Call_021_76ac:
	ld e, b                                          ; $76ac: $58
	ld c, b                                          ; $76ad: $48
	sbc $5f                                          ; $76ae: $de $5f
	rst SubAFromDE                                          ; $76b0: $df
	rst GetHLinHL                                          ; $76b1: $cf
	ld a, e                                          ; $76b2: $7b
	ld [hl], d                                       ; $76b3: $72
	inc bc                                           ; $76b4: $03
	jr nc, jr_021_7702                               ; $76b5: $30 $4b

	ldh a, [$0b]                                     ; $76b7: $f0 $0b
	nop                                              ; $76b9: $00
	rst SubAFromDE                                          ; $76ba: $df
	inc sp                                           ; $76bb: $33
	sbc c                                            ; $76bc: $99
	ld [hl], a                                       ; $76bd: $77
	ld b, h                                          ; $76be: $44
	ld b, a                                          ; $76bf: $47
	ld [hl], e                                       ; $76c0: $73
	ld [hl], e                                       ; $76c1: $73
	inc sp                                           ; $76c2: $33
	add h                                            ; $76c3: $84
	add b                                            ; $76c4: $80
	ld sp, hl                                        ; $76c5: $f9
	reti                                             ; $76c6: $d9


	rst $38                                          ; $76c7: $ff
	rlca                                             ; $76c8: $07
	ldh a, [$da]                                     ; $76c9: $f0 $da
	inc bc                                           ; $76cb: $03
	sbc [hl]                                         ; $76cc: $9e
	ld bc, $feda                                     ; $76cd: $01 $da $fe
	sub [hl]                                         ; $76d0: $96
	rst $38                                          ; $76d1: $ff
	ld c, l                                          ; $76d2: $4d
	ld c, h                                          ; $76d3: $4c
	ld e, h                                          ; $76d4: $5c
	ld e, l                                          ; $76d5: $5d
	ld d, l                                          ; $76d6: $55
	ld d, a                                          ; $76d7: $57
	ld d, a                                          ; $76d8: $57
	ld d, l                                          ; $76d9: $55
	db $dd                                           ; $76da: $dd
	db $e4                                           ; $76db: $e4
	sbc $ec                                          ; $76dc: $de $ec
	sbc [hl]                                         ; $76de: $9e
	xor $de                                          ; $76df: $ee $de
	ld h, $dd                                        ; $76e1: $26 $dd
	ld h, [hl]                                       ; $76e3: $66
	sbc [hl]                                         ; $76e4: $9e
	halt                                             ; $76e5: $76
	reti                                             ; $76e6: $d9


	ld a, a                                          ; $76e7: $7f
	sbc d                                            ; $76e8: $9a
	ld hl, sp-$04                                    ; $76e9: $f8 $fc
	db $fc                                           ; $76eb: $fc
	cp $ff                                           ; $76ec: $fe $ff
	sbc $bf                                          ; $76ee: $de $bf
	sbc e                                            ; $76f0: $9b
	ret nz                                           ; $76f1: $c0

	ldh [$f0], a                                     ; $76f2: $e0 $f0
	ld hl, sp+$7b                                    ; $76f4: $f8 $7b
	or $96                                           ; $76f6: $f6 $96
	rst FarCall                                          ; $76f8: $f7
	nop                                              ; $76f9: $00
	rlca                                             ; $76fa: $07
	ld [bc], a                                       ; $76fb: $02

Call_021_76fc:
	nop                                              ; $76fc: $00
	nop                                              ; $76fd: $00
	add b                                            ; $76fe: $80

Call_021_76ff:
	ret nz                                           ; $76ff: $c0

	ldh [$fb], a                                     ; $7700: $e0 $fb

jr_021_7702:
	ld a, a                                          ; $7702: $7f
	rst FarCall                                          ; $7703: $f7
	db $fc                                           ; $7704: $fc
	sbc h                                            ; $7705: $9c
	inc bc                                           ; $7706: $03
	rrca                                             ; $7707: $0f
	ccf                                              ; $7708: $3f
	db $fc                                           ; $7709: $fc
	adc a                                            ; $770a: $8f
	ld bc, $1f07                                     ; $770b: $01 $07 $1f
	rrca                                             ; $770e: $0f
	rra                                              ; $770f: $1f
	dec a                                            ; $7710: $3d
	ld a, l                                          ; $7711: $7d
	db $fd                                           ; $7712: $fd
	reti                                             ; $7713: $d9


	sbc c                                            ; $7714: $99
	sbc c                                            ; $7715: $99
	rlca                                             ; $7716: $07
	rrca                                             ; $7717: $0f
	rra                                              ; $7718: $1f
	ccf                                              ; $7719: $3f
	ld a, a                                          ; $771a: $7f
	sbc $ff                                          ; $771b: $de $ff
	sub [hl]                                         ; $771d: $96
	inc h                                            ; $771e: $24
	ld h, $26                                        ; $771f: $26 $26
	xor c                                            ; $7721: $a9
	xor c                                            ; $7722: $a9
	xor b                                            ; $7723: $a8
	xor b                                            ; $7724: $a8
	xor e                                            ; $7725: $ab
	cp $dd                                           ; $7726: $fe $dd
	db $fc                                           ; $7728: $fc
	rst SubAFromDE                                          ; $7729: $df
	db $fd                                           ; $772a: $fd
	sbc h                                            ; $772b: $9c
	ld sp, hl                                        ; $772c: $f9
	rst $38                                          ; $772d: $ff
	cp a                                             ; $772e: $bf
	sbc $ad                                          ; $772f: $de $ad
	sbc d                                            ; $7731: $9a
	and l                                            ; $7732: $a5
	or [hl]                                          ; $7733: $b6
	or $e4                                           ; $7734: $f6 $e4
	db $e4                                           ; $7736: $e4
	sbc $f6                                          ; $7737: $de $f6
	ld a, a                                          ; $7739: $7f
	or b                                             ; $773a: $b0
	sbc [hl]                                         ; $773b: $9e
	rst $38                                          ; $773c: $ff
	reti                                             ; $773d: $d9


	ldh a, [$dc]                                     ; $773e: $f0 $dc
	sbc a                                            ; $7740: $9f
	sbc $5f                                          ; $7741: $de $5f
	inc bc                                           ; $7743: $03
	jr nc, @+$4d                                     ; $7744: $30 $4b

	ldh a, [$0a]                                     ; $7746: $f0 $0a
	nop                                              ; $7748: $00
	sbc l                                            ; $7749: $9d
	inc sp                                           ; $774a: $33
	scf                                              ; $774b: $37
	db $dd                                           ; $774c: $dd
	ld b, h                                          ; $774d: $44
	sbc l                                            ; $774e: $9d
	ld [hl], e                                       ; $774f: $73
	inc sp                                           ; $7750: $33
	add a                                            ; $7751: $87
	add b                                            ; $7752: $80
	ld sp, hl                                        ; $7753: $f9
	reti                                             ; $7754: $d9


	rst $38                                          ; $7755: $ff
	rlca                                             ; $7756: $07
	ldh a, [$db]                                     ; $7757: $f0 $db
	ld bc, $03df                                     ; $7759: $01 $df $03
	db $db                                           ; $775c: $db
	rst $38                                          ; $775d: $ff
	rst SubAFromDE                                          ; $775e: $df
	cp $96                                           ; $775f: $fe $96
	ld a, [hl+]                                      ; $7761: $2a
	ld a, [hl-]                                      ; $7762: $3a
	ld e, h                                          ; $7763: $5c
	ld e, h                                          ; $7764: $5c
	ld d, h                                          ; $7765: $54
	ld d, [hl]                                       ; $7766: $56
	ld b, [hl]                                       ; $7767: $46
	ld b, h                                          ; $7768: $44
	rst FarCall                                          ; $7769: $f7
	db $dd                                           ; $776a: $dd
	rst SubAFromBC                                          ; $776b: $e7
	sbc $e5                                          ; $776c: $de $e5
	sbc l                                            ; $776e: $9d
	ccf                                              ; $776f: $3f
	dec l                                            ; $7770: $2d
	sbc $27                                          ; $7771: $de $27
	sbc e                                            ; $7773: $9b
	and a                                            ; $7774: $a7
	ld h, $26                                        ; $7775: $26 $26
	db $fc                                           ; $7777: $fc
	sbc $fe                                          ; $7778: $de $fe
	sbc [hl]                                         ; $777a: $9e
	rst $38                                          ; $777b: $ff
	sbc $7f                                          ; $777c: $de $7f
	sbc h                                            ; $777e: $9c
	ld [$e0e0], a                                    ; $777f: $ea $e0 $e0
	sbc $f0                                          ; $7782: $de $f0
	rst SubAFromDE                                          ; $7784: $df
	ld hl, sp-$05                                    ; $7785: $f8 $fb
	rst SubAFromDE                                          ; $7787: $df
	add b                                            ; $7788: $80
	sub h                                            ; $7789: $94
	adc h                                            ; $778a: $8c
	ld a, [de]                                       ; $778b: $1a
	rrca                                             ; $778c: $0f
	ld [bc], a                                       ; $778d: $02
	nop                                              ; $778e: $00
	rlca                                             ; $778f: $07
	ld [$0208], sp                                   ; $7790: $08 $08 $02
	ld b, $02                                        ; $7793: $06 $02
	cp $9b                                           ; $7795: $fe $9b
	dec c                                            ; $7797: $0d
	rlca                                             ; $7798: $07
	ld [bc], a                                       ; $7799: $02
	dec b                                            ; $779a: $05
	ld l, a                                          ; $779b: $6f
	add sp, $6b                                      ; $779c: $e8 $6b
	ldh [$9b], a                                     ; $779e: $e0 $9b
	nop                                              ; $77a0: $00
	xor b                                            ; $77a1: $a8
	ld d, h                                          ; $77a2: $54
	and b                                            ; $77a3: $a0
	ld [hl], a                                       ; $77a4: $77
	and c                                            ; $77a5: $a1
	sbc [hl]                                         ; $77a6: $9e

jr_021_77a7:
	rlca                                             ; $77a7: $07
	db $fc                                           ; $77a8: $fc
	ld a, e                                          ; $77a9: $7b
	or $92                                           ; $77aa: $f6 $92
	db $ed                                           ; $77ac: $ed
	ei                                               ; $77ad: $fb
	rst FarCall                                          ; $77ae: $f7
	cp $ff                                           ; $77af: $fe $ff
	and $e4                                          ; $77b1: $e6 $e4
	db $e4                                           ; $77b3: $e4
	dec sp                                           ; $77b4: $3b
	ld [hl], l                                       ; $77b5: $75
	ld c, e                                          ; $77b6: $4b
	add a                                            ; $77b7: $87
	sbc [hl]                                         ; $77b8: $9e
	sbc $fe                                          ; $77b9: $de $fe
	sub [hl]                                         ; $77bb: $96
	ld hl, $b1a1                                     ; $77bc: $21 $a1 $b1
	ld [hl], e                                       ; $77bf: $73
	ld [hl], e                                       ; $77c0: $73
	halt                                             ; $77c1: $76
	rst FarCall                                          ; $77c2: $f7

Jump_021_77c3:
	ld [hl], a                                       ; $77c3: $77
	push hl                                          ; $77c4: $e5
	call c, $9d65                                    ; $77c5: $dc $65 $9d
	ld h, h                                          ; $77c8: $64
	db $e4                                           ; $77c9: $e4
	jp c, $9ee0                                      ; $77ca: $da $e0 $9e

	ldh a, [$dc]                                     ; $77cd: $f0 $dc
	ccf                                              ; $77cf: $3f
	rst SubAFromDE                                          ; $77d0: $df
	cp a                                             ; $77d1: $bf
	sbc [hl]                                         ; $77d2: $9e
	sbc a                                            ; $77d3: $9f
	inc bc                                           ; $77d4: $03
	jr nc, jr_021_7822                               ; $77d5: $30 $4b

	ldh a, [$0a]                                     ; $77d7: $f0 $0a
	nop                                              ; $77d9: $00
	sbc l                                            ; $77da: $9d
	inc sp                                           ; $77db: $33
	scf                                              ; $77dc: $37
	db $dd                                           ; $77dd: $dd
	ld b, h                                          ; $77de: $44
	sbc l                                            ; $77df: $9d
	ld [hl], e                                       ; $77e0: $73
	inc sp                                           ; $77e1: $33
	adc c                                            ; $77e2: $89
	add b                                            ; $77e3: $80
	ld sp, hl                                        ; $77e4: $f9
	reti                                             ; $77e5: $d9


	rst $38                                          ; $77e6: $ff
	inc bc                                           ; $77e7: $03
	ldh a, [$fe]                                     ; $77e8: $f0 $fe
	db $dd                                           ; $77ea: $dd
	ld bc, $ffd9                                     ; $77eb: $01 $d9 $ff
	sbc e                                            ; $77ee: $9b
	db $d3                                           ; $77ef: $d3
	sub e                                            ; $77f0: $93
	and e                                            ; $77f1: $a3
	xor e                                            ; $77f2: $ab
	sbc $2b                                          ; $77f3: $de $2b
	sbc e                                            ; $77f5: $9b
	ld a, [hl+]                                      ; $77f6: $2a
	cp a                                             ; $77f7: $bf
	rst $38                                          ; $77f8: $ff
	rst $38                                          ; $77f9: $ff
	call c, $82f7                                    ; $77fa: $dc $f7 $82
	ld [hl], e                                       ; $77fd: $73
	ld a, a                                          ; $77fe: $7f
	rst $38                                          ; $77ff: $ff
	rst $38                                          ; $7800: $ff
	rst SubAFromDE                                          ; $7801: $df
	ld [$3f7f], a                                    ; $7802: $ea $7f $3f
	sbc a                                            ; $7805: $9f
	cp c                                             ; $7806: $b9
	jr z, jr_021_7831                                ; $7807: $28 $28

	jr c, jr_021_77a7                                ; $7809: $38 $9c

	call nz, $f8e4                                   ; $780b: $c4 $e4 $f8
	ld a, l                                          ; $780e: $7d
	cpl                                              ; $780f: $2f
	xor l                                            ; $7810: $ad
	jp nz, $aa1f                                     ; $7811: $c2 $1f $aa

	push de                                          ; $7814: $d5
	ld hl, sp-$43                                    ; $7815: $f8 $bd
	ccf                                              ; $7817: $3f
	cpl                                              ; $7818: $2f
	ld c, $fe                                        ; $7819: $0e $fe
	sub [hl]                                         ; $781b: $96
	cp $7f                                           ; $781c: $fe $7f
	ld a, b                                          ; $781e: $78
	jr nc, jr_021_7821                               ; $781f: $30 $00

jr_021_7821:
	nop                                              ; $7821: $00

jr_021_7822:
	ld [bc], a                                       ; $7822: $02
	ld b, $c1                                        ; $7823: $06 $c1
	ld a, [$d17f]                                    ; $7825: $fa $7f $d1
	sbc [hl]                                         ; $7828: $9e
	ld a, [hl]                                       ; $7829: $7e
	ld a, e                                          ; $782a: $7b
	jp hl                                            ; $782b: $e9


	sbc e                                            ; $782c: $9b
	ld bc, $8100                                     ; $782d: $01 $00 $81
	inc bc                                           ; $7830: $03

jr_021_7831:
	ld l, e                                          ; $7831: $6b
	sbc b                                            ; $7832: $98
	adc b                                            ; $7833: $88
	rst JumpTable                                          ; $7834: $c7
	di                                               ; $7835: $f3
	ei                                               ; $7836: $fb
	cp l                                             ; $7837: $bd
	or l                                             ; $7838: $b5
	adc b                                            ; $7839: $88
	ld a, b                                          ; $783a: $78
	db $fd                                           ; $783b: $fd
	and $f3                                          ; $783c: $e6 $f3
	ei                                               ; $783e: $fb
	db $fd                                           ; $783f: $fd
	cp h                                             ; $7840: $bc
	jr c, jr_021_7843                                ; $7841: $38 $00

jr_021_7843:
	ld a, [$fffd]                                    ; $7843: $fa $fd $ff
	rst $38                                          ; $7846: $ff
	ld c, l                                          ; $7847: $4d
	inc de                                           ; $7848: $13
	dec a                                            ; $7849: $3d
	ld [hl], c                                       ; $784a: $71
	sbc $0f                                          ; $784b: $de $0f
	sub d                                            ; $784d: $92
	ret z                                            ; $784e: $c8

	sbc [hl]                                         ; $784f: $9e
	inc e                                            ; $7850: $1c
	db $10                                           ; $7851: $10
	inc h                                            ; $7852: $24
	cp d                                             ; $7853: $ba
	or d                                             ; $7854: $b2
	or d                                             ; $7855: $b2
	or b                                             ; $7856: $b0
	or b                                             ; $7857: $b0
	and b                                            ; $7858: $a0
	and c                                            ; $7859: $a1
	and c                                            ; $785a: $a1
	jp c, $9ee5                                      ; $785b: $da $e5 $9e

	pop hl                                           ; $785e: $e1
	db $db                                           ; $785f: $db
	ret nz                                           ; $7860: $c0

	rst SubAFromDE                                          ; $7861: $df
	ldh [$db], a                                     ; $7862: $e0 $db
	ld a, a                                          ; $7864: $7f
	rst SubAFromDE                                          ; $7865: $df
	ccf                                              ; $7866: $3f
	inc bc                                           ; $7867: $03
	ld b, b                                          ; $7868: $40
	ld c, e                                          ; $7869: $4b
	ldh a, [$0b]                                     ; $786a: $f0 $0b
	nop                                              ; $786c: $00
	rst SubAFromDE                                          ; $786d: $df
	inc sp                                           ; $786e: $33
	sbc [hl]                                         ; $786f: $9e
	ld h, h                                          ; $7870: $64
	sbc $44                                          ; $7871: $de $44
	sbc l                                            ; $7873: $9d
	ld [hl], e                                       ; $7874: $73
	inc sp                                           ; $7875: $33
	and [hl]                                         ; $7876: $a6
	add b                                            ; $7877: $80
	rst SubAFromDE                                          ; $7878: $df
	ld [bc], a                                       ; $7879: $02
	ei                                               ; $787a: $fb
	reti                                             ; $787b: $d9


	rst $38                                          ; $787c: $ff
	ld sp, hl                                        ; $787d: $f9
	reti                                             ; $787e: $d9


	rst $38                                          ; $787f: $ff
	sbc [hl]                                         ; $7880: $9e
	jr nz, jr_021_78ce                               ; $7881: $20 $4b

	ldh a, [rBGP]                                    ; $7883: $f0 $47
	ldh [$df], a                                     ; $7885: $e0 $df
	jp hl                                            ; $7887: $e9


	sbc c                                            ; $7888: $99
	pop af                                           ; $7889: $f1
	or c                                             ; $788a: $b1
	or c                                             ; $788b: $b1
	pop af                                           ; $788c: $f1
	pop de                                           ; $788d: $d1
	db $d3                                           ; $788e: $d3
	call c, $84df                                    ; $788f: $dc $df $84
	sbc a                                            ; $7892: $9f
	cp a                                             ; $7893: $bf
	cp a                                             ; $7894: $bf
	daa                                              ; $7895: $27
	and a                                            ; $7896: $a7
	or a                                             ; $7897: $b7
	ld [hl], h                                       ; $7898: $74
	ld a, a                                          ; $7899: $7f
	rst $38                                          ; $789a: $ff
	rst $38                                          ; $789b: $ff
	cp a                                             ; $789c: $bf
	db $fd                                           ; $789d: $fd
	db $fc                                           ; $789e: $fc
	db $fc                                           ; $789f: $fc
	rst $38                                          ; $78a0: $ff
	rst $38                                          ; $78a1: $ff
	sub h                                            ; $78a2: $94
	inc d                                            ; $78a3: $14
	ld [hl], b                                       ; $78a4: $70
	cp e                                             ; $78a5: $bb
	xor e                                            ; $78a6: $ab
	ld a, e                                          ; $78a7: $7b
	db $fd                                           ; $78a8: $fd
	rst $38                                          ; $78a9: $ff
	rst FarCall                                          ; $78aa: $f7
	rst SubAFromDE                                          ; $78ab: $df
	ld [hl], c                                       ; $78ac: $71
	sbc $fe                                          ; $78ad: $de $fe
	add b                                            ; $78af: $80
	rst SubAFromBC                                          ; $78b0: $e7
	jr nz, jr_021_78e1                               ; $78b1: $20 $2e

	ccf                                              ; $78b3: $3f
	ld sp, hl                                        ; $78b4: $f9
	adc e                                            ; $78b5: $8b
	set 0, e                                         ; $78b6: $cb $c3
	db $e3                                           ; $78b8: $e3
	db $e3                                           ; $78b9: $e3
	pop af                                           ; $78ba: $f1
	ld sp, hl                                        ; $78bb: $f9
	db $fc                                           ; $78bc: $fc
	rst FarCall                                          ; $78bd: $f7
	ld [hl], a                                       ; $78be: $77
	ld a, a                                          ; $78bf: $7f
	ld a, $3e                                        ; $78c0: $3e $3e
	ld e, $8e                                        ; $78c2: $1e $8e
	rst JumpTable                                          ; $78c4: $c7
	ld sp, $3939                                     ; $78c5: $31 $39 $39
	cp l                                             ; $78c8: $bd
	cp a                                             ; $78c9: $bf
	rst SubAFromDE                                          ; $78ca: $df
	rst AddAOntoHL                                          ; $78cb: $ef
	rst SubAFromBC                                          ; $78cc: $e7
	rst $38                                          ; $78cd: $ff

jr_021_78ce:
	rst AddAOntoHL                                          ; $78ce: $ef
	ld a, a                                          ; $78cf: $7f
	db $fc                                           ; $78d0: $fc
	sub e                                            ; $78d1: $93
	db $e3                                           ; $78d2: $e3
	ld [hl], c                                       ; $78d3: $71
	jr nc, jr_021_78ee                               ; $78d4: $30 $18

	add h                                            ; $78d6: $84
	add $46                                          ; $78d7: $c6 $46
	rst SubAFromBC                                          ; $78d9: $e7
	db $f4                                           ; $78da: $f4
	ei                                               ; $78db: $fb
	rst $38                                          ; $78dc: $ff
	ld [hl], a                                       ; $78dd: $77
	db $dd                                           ; $78de: $dd
	rst $38                                          ; $78df: $ff
	sub b                                            ; $78e0: $90

jr_021_78e1:
	ccf                                              ; $78e1: $3f
	adc a                                            ; $78e2: $8f
	add [hl]                                         ; $78e3: $86
	ld a, [$3151]                                    ; $78e4: $fa $51 $31
	ld sp, $8909                                     ; $78e7: $31 $09 $89
	ret                                              ; $78ea: $c9


	ld [$bffa], a                                    ; $78eb: $ea $fa $bf

jr_021_78ee:
	rst SubAFromDE                                          ; $78ee: $df
	rst SubAFromDE                                          ; $78ef: $df
	ld [hl], a                                       ; $78f0: $77
	xor $96                                          ; $78f1: $ee $96
	rra                                              ; $78f3: $1f
	add hl, hl                                       ; $78f4: $29
	add hl, hl                                       ; $78f5: $29
	ld sp, $3231                                     ; $78f6: $31 $31 $32
	ld l, d                                          ; $78f9: $6a
	ld a, d                                          ; $78fa: $7a
	ld a, d                                          ; $78fb: $7a
	db $dd                                           ; $78fc: $dd
	cp $9b                                           ; $78fd: $fe $9b
	db $fd                                           ; $78ff: $fd
	push af                                          ; $7900: $f5
	push hl                                          ; $7901: $e5
	push hl                                          ; $7902: $e5
	reti                                             ; $7903: $d9


	ret nz                                           ; $7904: $c0

	reti                                             ; $7905: $d9


	ld a, a                                          ; $7906: $7f
	ld b, a                                          ; $7907: $47
	ld h, b                                          ; $7908: $60
	sbc b                                            ; $7909: $98
	ld b, $0e                                        ; $790a: $06 $0e
	dec c                                            ; $790c: $0d
	add hl, bc                                       ; $790d: $09
	inc bc                                           ; $790e: $03
	rlca                                             ; $790f: $07
	ld b, $63                                        ; $7910: $06 $63
	ldh a, [$9b]                                     ; $7912: $f0 $9b
	ret nz                                           ; $7914: $c0

	ldh [$f0], a                                     ; $7915: $e0 $f0
	jr nc, @+$79                                     ; $7917: $30 $77

	inc l                                            ; $7919: $2c
	reti                                             ; $791a: $d9


	rst $38                                          ; $791b: $ff
	dec bc                                           ; $791c: $0b
	nop                                              ; $791d: $00
	rst SubAFromDE                                          ; $791e: $df
	inc sp                                           ; $791f: $33
	sbc [hl]                                         ; $7920: $9e
	ld h, h                                          ; $7921: $64
	sbc $44                                          ; $7922: $de $44
	sbc l                                            ; $7924: $9d
	ld [hl], e                                       ; $7925: $73
	inc sp                                           ; $7926: $33
	db $ec                                           ; $7927: $ec
	add b                                            ; $7928: $80
	sub d                                            ; $7929: $92
	ld a, a                                          ; $792a: $7f
	ld l, a                                          ; $792b: $6f
	xor $dd                                          ; $792c: $ee $dd
	cp e                                             ; $792e: $bb
	dec sp                                           ; $792f: $3b
	inc de                                           ; $7930: $13
	inc bc                                           ; $7931: $03
	db $fc                                           ; $7932: $fc
	sub b                                            ; $7933: $90
	ld de, $7f33                                     ; $7934: $11 $33 $7f
	sbc $ff                                          ; $7937: $de $ff
	ld a, a                                          ; $7939: $7f
	db $fc                                           ; $793a: $fc
	sub h                                            ; $793b: $94
	db $fd                                           ; $793c: $fd
	ei                                               ; $793d: $fb
	or a                                             ; $793e: $b7
	add a                                            ; $793f: $87
	ld b, $00                                        ; $7940: $06 $00
	ld sp, hl                                        ; $7942: $f9

jr_021_7943:
	pop hl                                           ; $7943: $e1
	jp $efc7                                         ; $7944: $c3 $c7 $ef


	sbc $ff                                          ; $7947: $de $ff
	sub d                                            ; $7949: $92
	db $fc                                           ; $794a: $fc
	ld a, h                                          ; $794b: $7c
	ld hl, sp-$10                                    ; $794c: $f8 $f0
	db $fc                                           ; $794e: $fc
	inc a                                            ; $794f: $3c
	ld [hl], $30                                     ; $7950: $36 $30
	add a                                            ; $7952: $87
	adc a                                            ; $7953: $8f
	daa                                              ; $7954: $27
	ccf                                              ; $7955: $3f
	sbc a                                            ; $7956: $9f
	sbc $ff                                          ; $7957: $de $ff
	sbc d                                            ; $7959: $9a
	add $ce                                          ; $795a: $c6 $ce
	adc h                                            ; $795c: $8c
	inc c                                            ; $795d: $0c
	ld [$9afe], sp                                   ; $795e: $08 $fe $9a
	add hl, sp                                       ; $7961: $39
	ld sp, $f373                                     ; $7962: $31 $73 $f3
	rst FarCall                                          ; $7965: $f7
	db $dd                                           ; $7966: $dd
	rst $38                                          ; $7967: $ff
	jp c, $df7f                                      ; $7968: $da $7f $df

	ldh [c], a                                       ; $796b: $e2
	sbc [hl]                                         ; $796c: $9e
	and $de                                          ; $796d: $e6 $de
	add $9d                                          ; $796f: $c6 $9d
	adc $cf                                          ; $7971: $ce $cf
	call c, $9c42                                    ; $7973: $dc $42 $9c
	ld b, [hl]                                       ; $7976: $46
	daa                                              ; $7977: $27
	daa                                              ; $7978: $27
	reti                                             ; $7979: $d9


	rst $38                                          ; $797a: $ff
	adc h                                            ; $797b: $8c
	pop af                                           ; $797c: $f1
	ldh a, [$d4]                                     ; $797d: $f0 $d4
	sub $76                                          ; $797f: $d6 $76
	ld [hl], a                                       ; $7981: $77
	ld [hl], l                                       ; $7982: $75
	ld sp, $1d1c                                     ; $7983: $31 $1c $1d
	add hl, sp                                       ; $7986: $39
	add hl, sp                                       ; $7987: $39
	cp c                                             ; $7988: $b9
	cp c                                             ; $7989: $b9
	cp e                                             ; $798a: $bb
	rst $38                                          ; $798b: $ff
	sub c                                            ; $798c: $91
	sub e                                            ; $798d: $93
	sbc e                                            ; $798e: $9b
	sbc $9a                                          ; $798f: $de $9a
	rst SubAFromDE                                          ; $7991: $df
	adc d                                            ; $7992: $8a
	sbc $e6                                          ; $7993: $de $e6
	sbc $e7                                          ; $7995: $de $e7
	rst SubAFromDE                                          ; $7997: $df
	rst FarCall                                          ; $7998: $f7
	sub a                                            ; $7999: $97

Call_021_799a:
	ld [bc], a                                       ; $799a: $02
	ld c, d                                          ; $799b: $4a
	ld c, d                                          ; $799c: $4a
	ld l, e                                          ; $799d: $6b
	rst SubAFromBC                                          ; $799e: $e7
	and l                                            ; $799f: $a5
	and l                                            ; $79a0: $a5
	or l                                             ; $79a1: $b5
	db $dd                                           ; $79a2: $dd
	ld [hl], e                                       ; $79a3: $73
	db $dd                                           ; $79a4: $dd
	ld a, e                                          ; $79a5: $7b
	add b                                            ; $79a6: $80
	inc b                                            ; $79a7: $04
	ld b, b                                          ; $79a8: $40
	ld b, d                                          ; $79a9: $42
	ld [$2829], sp                                   ; $79aa: $08 $29 $28
	jr jr_021_7943                                   ; $79ad: $18 $94

	sbc b                                            ; $79af: $98
	sbc h                                            ; $79b0: $9c
	sbc h                                            ; $79b1: $9c
	adc $ce                                          ; $79b2: $ce $ce
	rst GetHLinHL                                          ; $79b4: $cf
	rst AddAOntoHL                                          ; $79b5: $ef
	rst AddAOntoHL                                          ; $79b6: $ef
	xor d                                            ; $79b7: $aa
	adc b                                            ; $79b8: $88
	sub l                                            ; $79b9: $95
	ld b, [hl]                                       ; $79ba: $46
	ld l, d                                          ; $79bb: $6a
	ld h, c                                          ; $79bc: $61
	rst SubAFromBC                                          ; $79bd: $e7
	ld d, e                                          ; $79be: $53
	ld b, h                                          ; $79bf: $44
	ld h, [hl]                                       ; $79c0: $66
	ld h, d                                          ; $79c1: $62
	inc sp                                           ; $79c2: $33
	inc sp                                           ; $79c3: $33
	dec sp                                           ; $79c4: $3b
	add hl, sp                                       ; $79c5: $39
	sub d                                            ; $79c6: $92
	cp l                                             ; $79c7: $bd
	ld e, d                                          ; $79c8: $5a
	ld a, [bc]                                       ; $79c9: $0a
	ld a, [de]                                       ; $79ca: $1a
	ld l, d                                          ; $79cb: $6a
	ret                                              ; $79cc: $c9


	xor c                                            ; $79cd: $a9
	cp c                                             ; $79ce: $b9
	add hl, hl                                       ; $79cf: $29
	sbc l                                            ; $79d0: $9d
	ld e, l                                          ; $79d1: $5d
	ld c, l                                          ; $79d2: $4d
	ld c, l                                          ; $79d3: $4d
	sbc $6e                                          ; $79d4: $de $6e
	sub [hl]                                         ; $79d6: $96
	cp $ef                                           ; $79d7: $fe $ef
	or a                                             ; $79d9: $b7
	rst JumpTable                                          ; $79da: $c7
	adc $ce                                          ; $79db: $ce $ce
	call z, $c0c8                                    ; $79dd: $cc $c8 $c0
	ld h, a                                          ; $79e0: $67
	ld [hl], a                                       ; $79e1: $77
	rst SubAFromDE                                          ; $79e2: $df
	rst $38                                          ; $79e3: $ff
	adc a                                            ; $79e4: $8f
	xor $85                                          ; $79e5: $ee $85
	adc a                                            ; $79e7: $8f
	sbc a                                            ; $79e8: $9f
	rrca                                             ; $79e9: $0f
	ld b, $63                                        ; $79ea: $06 $63
	rst SubAFromBC                                          ; $79ec: $e7
	ld [hl], a                                       ; $79ed: $77
	ld a, a                                          ; $79ee: $7f
	ld [hl], b                                       ; $79ef: $70
	ld h, b                                          ; $79f0: $60
	ldh a, [$f9]                                     ; $79f1: $f0 $f9
	rst $38                                          ; $79f3: $ff
	dec h                                            ; $79f4: $25
	ld a, e                                          ; $79f5: $7b
	inc a                                            ; $79f6: $3c
	add h                                            ; $79f7: $84
	xor a                                            ; $79f8: $af
	rlca                                             ; $79f9: $07
	dec b                                            ; $79fa: $05
	sbc $ff                                          ; $79fb: $de $ff
	rst SubAFromBC                                          ; $79fd: $e7
	add e                                            ; $79fe: $83
	rlca                                             ; $79ff: $07
	ld e, [hl]                                       ; $7a00: $5e
	cp $fe                                           ; $7a01: $fe $fe
	rst AddAOntoHL                                          ; $7a03: $ef
	rst $38                                          ; $7a04: $ff
	ld sp, hl                                        ; $7a05: $f9
	ld e, $bf                                        ; $7a06: $1e $bf
	ld sp, hl                                        ; $7a08: $f9
	ld hl, sp-$20                                    ; $7a09: $f8 $e0
	inc de                                           ; $7a0b: $13
	sbc a                                            ; $7a0c: $9f
	rst AddAOntoHL                                          ; $7a0d: $ef
	rst SubAFromBC                                          ; $7a0e: $e7
	ld c, l                                          ; $7a0f: $4d
	ld h, [hl]                                       ; $7a10: $66
	daa                                              ; $7a11: $27
	ld a, a                                          ; $7a12: $7f
	dec bc                                           ; $7a13: $0b
	nop                                              ; $7a14: $00
	rst SubAFromDE                                          ; $7a15: $df
	ld [hl+], a                                      ; $7a16: $22
	sbc [hl]                                         ; $7a17: $9e
	halt                                             ; $7a18: $76
	sbc $44                                          ; $7a19: $de $44
	sbc l                                            ; $7a1b: $9d
	ld [hl], d                                       ; $7a1c: $72
	ld [hl+], a                                      ; $7a1d: $22
	ldh a, [$80]                                     ; $7a1e: $f0 $80
	sbc l                                            ; $7a20: $9d
	rst $38                                          ; $7a21: $ff
	cp $db                                           ; $7a22: $fe $db
	rst $38                                          ; $7a24: $ff
	sub l                                            ; $7a25: $95
	inc de                                           ; $7a26: $13
	inc sp                                           ; $7a27: $33
	and e                                            ; $7a28: $a3
	dec d                                            ; $7a29: $15
	inc l                                            ; $7a2a: $2c
	jr z, jr_021_7a36                                ; $7a2b: $28 $09

	cp a                                             ; $7a2d: $bf
	rst $38                                          ; $7a2e: $ff
	ccf                                              ; $7a2f: $3f
	db $dd                                           ; $7a30: $dd
	rst $38                                          ; $7a31: $ff
	ld a, a                                          ; $7a32: $7f
	ld sp, hl                                        ; $7a33: $f9
	rst SubAFromDE                                          ; $7a34: $df
	db $fc                                           ; $7a35: $fc

jr_021_7a36:
	sub [hl]                                         ; $7a36: $96
	or b                                             ; $7a37: $b0
	ld bc, $77a3                                     ; $7a38: $01 $a3 $77
	db $fd                                           ; $7a3b: $fd
	ld hl, sp-$02                                    ; $7a3c: $f8 $fe
	rst $38                                          ; $7a3e: $ff
	pop af                                           ; $7a3f: $f1
	sbc $ff                                          ; $7a40: $de $ff
	sub h                                            ; $7a42: $94
	ei                                               ; $7a43: $fb
	pop af                                           ; $7a44: $f1
	ld h, e                                          ; $7a45: $63
	nop                                              ; $7a46: $00
	adc [hl]                                         ; $7a47: $8e
	ld [hl], c                                       ; $7a48: $71
	jr z, @+$42                                      ; $7a49: $28 $40

	cp $ce                                           ; $7a4b: $fe $ce
	ld a, a                                          ; $7a4d: $7f
	db $db                                           ; $7a4e: $db
	rst $38                                          ; $7a4f: $ff
	sub e                                            ; $7a50: $93
	rst JumpTable                                          ; $7a51: $c7
	db $f4                                           ; $7a52: $f4
	db $f4                                           ; $7a53: $f4
	ld h, $c7                                        ; $7a54: $26 $c7
	ld h, e                                          ; $7a56: $63
	ld [hl+], a                                      ; $7a57: $22
	dec de                                           ; $7a58: $1b
	dec sp                                           ; $7a59: $3b
	sbc a                                            ; $7a5a: $9f
	rst $38                                          ; $7a5b: $ff
	rst $38                                          ; $7a5c: $ff
	db $dd                                           ; $7a5d: $dd
	ccf                                              ; $7a5e: $3f
	adc c                                            ; $7a5f: $89
	cp a                                             ; $7a60: $bf
	push af                                          ; $7a61: $f5
	jp hl                                            ; $7a62: $e9


	jp hl                                            ; $7a63: $e9


	ld sp, hl                                        ; $7a64: $f9
	pop af                                           ; $7a65: $f1
	di                                               ; $7a66: $f3
	ldh a, [c]                                       ; $7a67: $f2
	ldh [c], a                                       ; $7a68: $e2
	ld l, c                                          ; $7a69: $69
	pop de                                           ; $7a6a: $d1
	and e                                            ; $7a6b: $a3
	jp nz, $a5d2                                     ; $7a6c: $c2 $d2 $a5

	and l                                            ; $7a6f: $a5
	add $76                                          ; $7a70: $c6 $76
	xor $dc                                          ; $7a72: $ee $dc
	cp l                                             ; $7a74: $bd
	dec a                                            ; $7a75: $3d
	sbc $7b                                          ; $7a76: $de $7b
	add d                                            ; $7a78: $82
	adc [hl]                                         ; $7a79: $8e
	jr jr_021_7a8c                                   ; $7a7a: $18 $10

	add hl, hl                                       ; $7a7c: $29
	jr nz, jr_021_7a8f                               ; $7a7d: $20 $10

	ld c, d                                          ; $7a7f: $4a
	ld l, c                                          ; $7a80: $69
	ld [hl], c                                       ; $7a81: $71
	db $e3                                           ; $7a82: $e3
	rst SubAFromBC                                          ; $7a83: $e7
	add $ce                                          ; $7a84: $c6 $ce
	adc $9c                                          ; $7a86: $ce $9c
	sbc h                                            ; $7a88: $9c
	jp nz, $0949                                     ; $7a89: $c2 $49 $09

jr_021_7a8c:
	nop                                              ; $7a8c: $00
	sub h                                            ; $7a8d: $94
	ld b, b                                          ; $7a8e: $40

jr_021_7a8f:
	ld b, b                                          ; $7a8f: $40
	add b                                            ; $7a90: $80
	add hl, sp                                       ; $7a91: $39
	ld [hl-], a                                      ; $7a92: $32
	ld [hl], d                                       ; $7a93: $72
	ld [hl], d                                       ; $7a94: $72
	ld h, d                                          ; $7a95: $62
	sbc $e6                                          ; $7a96: $de $e6
	sub [hl]                                         ; $7a98: $96
	dec d                                            ; $7a99: $15
	inc d                                            ; $7a9a: $14
	ld b, $06                                        ; $7a9b: $06 $06
	ld [bc], a                                       ; $7a9d: $02
	ld [de], a                                       ; $7a9e: $12
	ld [de], a                                       ; $7a9f: $12
	ld [bc], a                                       ; $7aa0: $02
	ld h, d                                          ; $7aa1: $62
	db $db                                           ; $7aa2: $db
	ld h, e                                          ; $7aa3: $63
	sub l                                            ; $7aa4: $95
	ld [hl], e                                       ; $7aa5: $73
	scf                                              ; $7aa6: $37
	ld d, a                                          ; $7aa7: $57
	rla                                              ; $7aa8: $17
	inc de                                           ; $7aa9: $13
	ld a, [bc]                                       ; $7aaa: $0a
	xor b                                            ; $7aab: $a8
	add c                                            ; $7aac: $81
	dec b                                            ; $7aad: $05
	ld b, b                                          ; $7aae: $40
	sbc $20                                          ; $7aaf: $de $20
	add b                                            ; $7ab1: $80
	ld sp, $1811                                     ; $7ab2: $31 $11 $18
	sbc b                                            ; $7ab5: $98
	ld a, [$fefd]                                    ; $7ab6: $fa $fd $fe
	ld [hl], a                                       ; $7ab9: $77
	cp c                                             ; $7aba: $b9
	xor b                                            ; $7abb: $a8
	ld d, h                                          ; $7abc: $54
	ld d, b                                          ; $7abd: $50
	ld b, $03                                        ; $7abe: $06 $03
	ld bc, $0200                                     ; $7ac0: $01 $00 $02
	ld de, $8c89                                     ; $7ac3: $11 $89 $8c
	ld c, e                                          ; $7ac6: $4b
	ld a, [hl+]                                      ; $7ac7: $2a
	sbc d                                            ; $7ac8: $9a
	ld d, l                                          ; $7ac9: $55
	xor l                                            ; $7aca: $ad
	db $ed                                           ; $7acb: $ed
	reti                                             ; $7acc: $d9


	ld a, d                                          ; $7acd: $7a
	ld d, l                                          ; $7ace: $55
	dec [hl]                                         ; $7acf: $35
	sub l                                            ; $7ad0: $95
	sub d                                            ; $7ad1: $92
	jp c, $2a6a                                      ; $7ad2: $da $6a $2a

	ld a, $9d                                        ; $7ad5: $3e $9d
	cp $ff                                           ; $7ad7: $fe $ff
	sbc a                                            ; $7ad9: $9f
	rst $38                                          ; $7ada: $ff
	rst SubAFromBC                                          ; $7adb: $e7
	rst JumpTable                                          ; $7adc: $c7
	add $e6                                          ; $7add: $c6 $e6
	rst SubAFromHL                                          ; $7adf: $d7
	rst $38                                          ; $7ae0: $ff
	add c                                            ; $7ae1: $81
	db $fc                                           ; $7ae2: $fc
	rst SubAFromDE                                          ; $7ae3: $df
	ld a, a                                          ; $7ae4: $7f
	ld l, $fe                                        ; $7ae5: $2e $fe
	db $fc                                           ; $7ae7: $fc
	inc a                                            ; $7ae8: $3c
	ld a, [hl]                                       ; $7ae9: $7e
	rst $38                                          ; $7aea: $ff
	cp b                                             ; $7aeb: $b8
	sub b                                            ; $7aec: $90
	db $d3                                           ; $7aed: $d3
	rla                                              ; $7aee: $17
	ccf                                              ; $7aef: $3f
	rst $38                                          ; $7af0: $ff
	cp $7f                                           ; $7af1: $fe $7f
	ld a, e                                          ; $7af3: $7b
	ei                                               ; $7af4: $fb
	rst $38                                          ; $7af5: $ff
	ld a, e                                          ; $7af6: $7b
	ld a, [hl]                                       ; $7af7: $7e
	db $ed                                           ; $7af8: $ed
	pop af                                           ; $7af9: $f1
	db $db                                           ; $7afa: $db
	adc [hl]                                         ; $7afb: $8e

Jump_021_7afc:
	inc e                                            ; $7afc: $1c
	inc c                                            ; $7afd: $0c
	add [hl]                                         ; $7afe: $86
	adc a                                            ; $7aff: $8f
	call c, $94ff                                    ; $7b00: $dc $ff $94
	rst SubAFromDE                                          ; $7b03: $df
	rst $38                                          ; $7b04: $ff
	ld a, [hl]                                       ; $7b05: $7e
	ld [$ff9b], sp                                   ; $7b06: $08 $9b $ff
	scf                                              ; $7b09: $37
	ld sp, $e870                                     ; $7b0a: $31 $70 $e8
	di                                               ; $7b0d: $f3
	dec bc                                           ; $7b0e: $0b
	nop                                              ; $7b0f: $00
	rst SubAFromDE                                          ; $7b10: $df
	ld [hl+], a                                      ; $7b11: $22
	sbc c                                            ; $7b12: $99
	halt                                             ; $7b13: $76
	ld b, h                                          ; $7b14: $44
	ld b, h                                          ; $7b15: $44
	ld b, [hl]                                       ; $7b16: $46
	ld [hl], d                                       ; $7b17: $72
	ld [hl+], a                                      ; $7b18: $22
	db $f4                                           ; $7b19: $f4
	add b                                            ; $7b1a: $80
	rst SubAFromDE                                          ; $7b1b: $df
	rst $38                                          ; $7b1c: $ff
	sbc [hl]                                         ; $7b1d: $9e
	rst FarCall                                          ; $7b1e: $f7
	call c, $93ff                                    ; $7b1f: $dc $ff $93
	or a                                             ; $7b22: $b7
	rst $38                                          ; $7b23: $ff
	rst $38                                          ; $7b24: $ff
	pop af                                           ; $7b25: $f1
	pop af                                           ; $7b26: $f1
	rrca                                             ; $7b27: $0f
	rlca                                             ; $7b28: $07
	and [hl]                                         ; $7b29: $a6
	rst FarCall                                          ; $7b2a: $f7
	rst AddAOntoHL                                          ; $7b2b: $ef
	cp a                                             ; $7b2c: $bf
	sbc e                                            ; $7b2d: $9b
	ld a, e                                          ; $7b2e: $7b
	db $f4                                           ; $7b2f: $f4
	jp c, $99ff                                      ; $7b30: $da $ff $99

	dec e                                            ; $7b33: $1d
	ld sp, $f9ff                                     ; $7b34: $31 $ff $f9
	ccf                                              ; $7b37: $3f
	rst SubAFromDE                                          ; $7b38: $df
	sbc $ff                                          ; $7b39: $de $ff
	add b                                            ; $7b3b: $80
	ei                                               ; $7b3c: $fb
	rst $38                                          ; $7b3d: $ff
	rst $38                                          ; $7b3e: $ff
	ld hl, sp-$0f                                    ; $7b3f: $f8 $f1
	rla                                              ; $7b41: $17
	dec de                                           ; $7b42: $1b
	ld [hl], e                                       ; $7b43: $73
	adc a                                            ; $7b44: $8f
	rst SubAFromBC                                          ; $7b45: $e7
	rst AddAOntoHL                                          ; $7b46: $ef
	cp $fe                                           ; $7b47: $fe $fe
	db $fc                                           ; $7b49: $fc
	ld hl, sp-$10                                    ; $7b4a: $f8 $f0
	or a                                             ; $7b4c: $b7
	ld hl, sp-$01                                    ; $7b4d: $f8 $ff
	rst $38                                          ; $7b4f: $ff
	rst GetHLinHL                                          ; $7b50: $cf
	add a                                            ; $7b51: $87
	ld c, a                                          ; $7b52: $4f
	rst $38                                          ; $7b53: $ff
	cp $ff                                           ; $7b54: $fe $ff
	rst $38                                          ; $7b56: $ff
	ccf                                              ; $7b57: $3f
	ld a, a                                          ; $7b58: $7f
	rst $38                                          ; $7b59: $ff
	ld a, a                                          ; $7b5a: $7f
	sbc h                                            ; $7b5b: $9c
	rst SubAFromDE                                          ; $7b5c: $df
	rra                                              ; $7b5d: $1f
	rst $38                                          ; $7b5e: $ff
	ld a, e                                          ; $7b5f: $7b
	jp hl                                            ; $7b60: $e9


	add b                                            ; $7b61: $80
	ld sp, hl                                        ; $7b62: $f9
	ld a, [$f4f2]                                    ; $7b63: $fa $f2 $f4
	and h                                            ; $7b66: $a4
	ld c, c                                          ; $7b67: $49
	sub d                                            ; $7b68: $92
	and l                                            ; $7b69: $a5
	ld a, [hl+]                                      ; $7b6a: $2a
	ld d, l                                          ; $7b6b: $55
	xor d                                            ; $7b6c: $aa
	or h                                             ; $7b6d: $b4
	ld a, h                                          ; $7b6e: $7c
	ld sp, hl                                        ; $7b6f: $f9
	ldh a, [c]                                       ; $7b70: $f2
	push hl                                          ; $7b71: $e5
	db $eb                                           ; $7b72: $eb
	sub $ad                                          ; $7b73: $d6 $ad
	cp e                                             ; $7b75: $bb
	ld b, e                                          ; $7b76: $43

jr_021_7b77:
	sbc l                                            ; $7b77: $9d
	ld l, h                                          ; $7b78: $6c
	or e                                             ; $7b79: $b3
	call z, Call_021_63b9                            ; $7b7a: $cc $b9 $63
	rst JumpTable                                          ; $7b7d: $c7
	ld b, e                                          ; $7b7e: $43
	sbc [hl]                                         ; $7b7f: $9e
	ld [hl], e                                       ; $7b80: $73
	adc d                                            ; $7b81: $8a
	call z, Call_021_4633                            ; $7b82: $cc $33 $46
	sbc h                                            ; $7b85: $9c
	jr c, jr_021_7b77                                ; $7b86: $38 $ef

	rst $38                                          ; $7b88: $ff
	cp $7d                                           ; $7b89: $fe $7d
	ei                                               ; $7b8b: $fb
	di                                               ; $7b8c: $f3
	or [hl]                                          ; $7b8d: $b6
	ld h, h                                          ; $7b8e: $64
	ldh a, [rP1]                                     ; $7b8f: $f0 $00
	ld bc, $0482                                     ; $7b91: $01 $82 $04
	inc c                                            ; $7b94: $0c
	ld c, c                                          ; $7b95: $49
	sbc c                                            ; $7b96: $99
	ld a, e                                          ; $7b97: $7b
	add d                                            ; $7b98: $82
	adc [hl]                                         ; $7b99: $8e
	rst AddAOntoHL                                          ; $7b9a: $ef
	ld l, a                                          ; $7b9b: $6f
	ld b, a                                          ; $7b9c: $47
	push bc                                          ; $7b9d: $c5
	ld d, l                                          ; $7b9e: $55
	rrca                                             ; $7b9f: $0f
	nop                                              ; $7ba0: $00
	nop                                              ; $7ba1: $00
	db $10                                           ; $7ba2: $10

jr_021_7ba3:
	sub b                                            ; $7ba3: $90
	or b                                             ; $7ba4: $b0
	ld [hl-], a                                      ; $7ba5: $32
	ld [hl+], a                                      ; $7ba6: $22
	add b                                            ; $7ba7: $80
	ld [hl], b                                       ; $7ba8: $70
	db $ec                                           ; $7ba9: $ec
	ei                                               ; $7baa: $fb
	ld [hl], a                                       ; $7bab: $77
	xor e                                            ; $7bac: $ab
	add b                                            ; $7bad: $80
	add b                                            ; $7bae: $80
	ldh a, [rAUD3LEVEL]                              ; $7baf: $f0 $1c
	rlca                                             ; $7bb1: $07
	ld bc, $0000                                     ; $7bb2: $01 $00 $00
	ld b, b                                          ; $7bb5: $40
	ld [$3346], sp                                   ; $7bb6: $08 $46 $33
	add hl, bc                                       ; $7bb9: $09
	call nz, $e9b2                                   ; $7bba: $c4 $b2 $e9
	db $f4                                           ; $7bbd: $f4
	rrca                                             ; $7bbe: $0f
	ld b, l                                          ; $7bbf: $45
	ld [hl-], a                                      ; $7bc0: $32
	add hl, bc                                       ; $7bc1: $09
	call nz, $1972                                   ; $7bc2: $c4 $72 $19
	inc c                                            ; $7bc5: $0c
	rst $38                                          ; $7bc6: $ff
	ld a, a                                          ; $7bc7: $7f
	scf                                              ; $7bc8: $37
	sbc a                                            ; $7bc9: $9f
	sra a                                            ; $7bca: $cb $2f
	ld d, l                                          ; $7bcc: $55
	sub [hl]                                         ; $7bcd: $96
	or a                                             ; $7bce: $b7
	ccf                                              ; $7bcf: $3f
	sbc a                                            ; $7bd0: $9f
	rst GetHLinHL                                          ; $7bd1: $cf
	ld h, a                                          ; $7bd2: $67
	or a                                             ; $7bd3: $b7
	ld d, e                                          ; $7bd4: $53
	ld l, e                                          ; $7bd5: $6b
	xor c                                            ; $7bd6: $a9
	ret c                                            ; $7bd7: $d8

	rst $38                                          ; $7bd8: $ff
	sbc b                                            ; $7bd9: $98
	sbc e                                            ; $7bda: $9b
	ld d, e                                          ; $7bdb: $53
	pop bc                                           ; $7bdc: $c1
	ld [hl], c                                       ; $7bdd: $71
	ei                                               ; $7bde: $fb
	db $fc                                           ; $7bdf: $fc
	cp $7b                                           ; $7be0: $fe $7b
	ld sp, $fd90                                     ; $7be2: $31 $90 $fd
	rst AddAOntoHL                                          ; $7be5: $ef
	db $fd                                           ; $7be6: $fd
	rst $38                                          ; $7be7: $ff
	rst $38                                          ; $7be8: $ff
	jr jr_021_7ba3                                   ; $7be9: $18 $b8

	cp h                                             ; $7beb: $bc
	ld e, $1f                                        ; $7bec: $1e $1f
	ccf                                              ; $7bee: $3f
	jr c, jr_021_7c21                                ; $7bef: $38 $30

	rst SubAFromDE                                          ; $7bf1: $df
	sbc a                                            ; $7bf2: $9f
	jp c, $93ff                                      ; $7bf3: $da $ff $93

	ld a, a                                          ; $7bf6: $7f
	inc a                                            ; $7bf7: $3c

Call_021_7bf8:
	ld b, h                                          ; $7bf8: $44
	adc l                                            ; $7bf9: $8d
	sub b                                            ; $7bfa: $90
	ld h, b                                          ; $7bfb: $60
	ld h, l                                          ; $7bfc: $65
	ld e, $e7                                        ; $7bfd: $1e $e7
	db $fc                                           ; $7bff: $fc
	rst $38                                          ; $7c00: $ff
	rst AddAOntoHL                                          ; $7c01: $ef
	ld a, e                                          ; $7c02: $7b
	db $db                                           ; $7c03: $db
	ld a, a                                          ; $7c04: $7f
	ld hl, sp-$67                                    ; $7c05: $f8 $99
	adc h                                            ; $7c07: $8c
	add e                                            ; $7c08: $83
	sbc a                                            ; $7c09: $9f
	add hl, de                                       ; $7c0a: $19
	rst SubAFromDE                                          ; $7c0b: $df
	jr c, jr_021_7c19                                ; $7c0c: $38 $0b

	nop                                              ; $7c0e: $00
	rst SubAFromDE                                          ; $7c0f: $df
	ld [hl+], a                                      ; $7c10: $22
	sbc c                                            ; $7c11: $99
	halt                                             ; $7c12: $76
	ld h, h                                          ; $7c13: $64
	ld b, [hl]                                       ; $7c14: $46
	ld h, [hl]                                       ; $7c15: $66
	ld [hl+], a                                      ; $7c16: $22
	ld [hl+], a                                      ; $7c17: $22
	rst SubAFromHL                                          ; $7c18: $d7

jr_021_7c19:
	add b                                            ; $7c19: $80
	reti                                             ; $7c1a: $d9


	rst $38                                          ; $7c1b: $ff
	adc c                                            ; $7c1c: $89
	ld c, c                                          ; $7c1d: $49
	ld hl, sp-$08                                    ; $7c1e: $f8 $f8
	or b                                             ; $7c20: $b0

jr_021_7c21:
	ld [$3bdb], sp                                   ; $7c21: $08 $db $3b
	inc hl                                           ; $7c24: $23
	rst $38                                          ; $7c25: $ff
	ei                                               ; $7c26: $fb
	di                                               ; $7c27: $f3
	rst $38                                          ; $7c28: $ff
	rst $38                                          ; $7c29: $ff
	ccf                                              ; $7c2a: $3f
	sbc a                                            ; $7c2b: $9f
	rst $38                                          ; $7c2c: $ff
	db $fd                                           ; $7c2d: $fd
	ld a, $7c                                        ; $7c2e: $3e $7c
	ld hl, sp-$33                                    ; $7c30: $f8 $cd
	rst GetHLinHL                                          ; $7c32: $cf
	jp c, $98ff                                      ; $7c33: $da $ff $98

	cp a                                             ; $7c36: $bf
	push hl                                          ; $7c37: $e5
	rst $38                                          ; $7c38: $ff
	rra                                              ; $7c39: $1f
	ccf                                              ; $7c3a: $3f
	rra                                              ; $7c3b: $1f
	ccf                                              ; $7c3c: $3f
	jp c, $92ff                                      ; $7c3d: $da $ff $92

	rst SubAFromDE                                          ; $7c40: $df
	ld e, a                                          ; $7c41: $5f
	rst $38                                          ; $7c42: $ff
	rst $38                                          ; $7c43: $ff
	rst AddAOntoHL                                          ; $7c44: $ef
	jp $c084                                         ; $7c45: $c3 $84 $c0


	rst FarCall                                          ; $7c48: $f7
	db $fc                                           ; $7c49: $fc
	db $fc                                           ; $7c4a: $fc
	sub e                                            ; $7c4b: $93
	sub c                                            ; $7c4c: $91
	reti                                             ; $7c4d: $d9


	rst $38                                          ; $7c4e: $ff
	add b                                            ; $7c4f: $80
	rra                                              ; $7c50: $1f
	ld h, e                                          ; $7c51: $63
	ld h, c                                          ; $7c52: $61
	pop af                                           ; $7c53: $f1
	ld hl, sp+$1f                                    ; $7c54: $f8 $1f
	dec de                                           ; $7c56: $1b
	ld de, rIE                                     ; $7c57: $11 $ff $ff
	db $fd                                           ; $7c5a: $fd
	di                                               ; $7c5b: $f3
	db $e4                                           ; $7c5c: $e4
	call z, Call_021_53b8                            ; $7c5d: $cc $b8 $53
	rst $38                                          ; $7c60: $ff
	rst $38                                          ; $7c61: $ff
	cp $fc                                           ; $7c62: $fe $fc
	ei                                               ; $7c64: $fb
	rst FarCall                                          ; $7c65: $f7
	rst GetHLinHL                                          ; $7c66: $cf
	cp a                                             ; $7c67: $bf
	rst SubAFromBC                                          ; $7c68: $e7
	ld a, b                                          ; $7c69: $78

jr_021_7c6a:
	add $3b                                          ; $7c6a: $c6 $3b
	ld e, h                                          ; $7c6c: $5c

jr_021_7c6d:
	ld h, b                                          ; $7c6d: $60
	adc h                                            ; $7c6e: $8c
	sub d                                            ; $7c6f: $92
	jr nc, jr_021_7c6a                               ; $7c70: $30 $f8

	add a                                            ; $7c72: $87
	add hl, sp                                       ; $7c73: $39
	rst JumpTable                                          ; $7c74: $c7
	cp h                                             ; $7c75: $bc
	ldh [$8c], a                                     ; $7c76: $e0 $8c
	jr nc, jr_021_7c6d                               ; $7c78: $30 $f3

	rlca                                             ; $7c7a: $07
	ld a, b                                          ; $7c7b: $78
	add b                                            ; $7c7c: $80
	cp $9b                                           ; $7c7d: $fe $9b
	rra                                              ; $7c7f: $1f
	inc c                                            ; $7c80: $0c
	rst $38                                          ; $7c81: $ff
	ld hl, sp+$73                                    ; $7c82: $f8 $73
	ld hl, sp-$64                                    ; $7c84: $f8 $9c
	ld d, [hl]                                       ; $7c86: $56
	rst $38                                          ; $7c87: $ff
	rlca                                             ; $7c88: $07
	db $fd                                           ; $7c89: $fd
	sbc l                                            ; $7c8a: $9d
	ld hl, sp-$01                                    ; $7c8b: $f8 $ff
	ld l, e                                          ; $7c8d: $6b
	ld hl, sp-$6e                                    ; $7c8e: $f8 $92
	rrca                                             ; $7c90: $0f
	db $fc                                           ; $7c91: $fc
	add [hl]                                         ; $7c92: $86
	ld [hl], c                                       ; $7c93: $71
	inc c                                            ; $7c94: $0c
	inc bc                                           ; $7c95: $03
	nop                                              ; $7c96: $00
	nop                                              ; $7c97: $00
	ldh a, [rIE]                                     ; $7c98: $f0 $ff
	ld sp, hl                                        ; $7c9a: $f9
	ld a, [hl]                                       ; $7c9b: $7e
	rrca                                             ; $7c9c: $0f
	ld a, e                                          ; $7c9d: $7b
	ld hl, sp+$7b                                    ; $7c9e: $f8 $7b
	and [hl]                                         ; $7ca0: $a6
	sub d                                            ; $7ca1: $92
	rst JumpTable                                          ; $7ca2: $c7
	ld [hl], c                                       ; $7ca3: $71
	inc e                                            ; $7ca4: $1c
	rst JumpTable                                          ; $7ca5: $c7
	ld sp, $0f3f                                     ; $7ca6: $31 $3f $0f
	db $e3                                           ; $7ca9: $e3
	add hl, sp                                       ; $7caa: $39
	adc [hl]                                         ; $7cab: $8e
	db $e3                                           ; $7cac: $e3
	ld hl, sp+$3e                                    ; $7cad: $f8 $3e
	db $db                                           ; $7caf: $db
	rst $38                                          ; $7cb0: $ff
	sbc l                                            ; $7cb1: $9d
	ld a, a                                          ; $7cb2: $7f
	cp a                                             ; $7cb3: $bf
	ld l, e                                          ; $7cb4: $6b
	ld sp, hl                                        ; $7cb5: $f9
	sbc c                                            ; $7cb6: $99
	ld a, a                                          ; $7cb7: $7f
	db $fc                                           ; $7cb8: $fc
	cp $fe                                           ; $7cb9: $fe $fe
	rst FarCall                                          ; $7cbb: $f7
	rst SubAFromDE                                          ; $7cbc: $df
	sbc $ff                                          ; $7cbd: $de $ff
	ld a, a                                          ; $7cbf: $7f
	ld hl, sp+$7b                                    ; $7cc0: $f8 $7b
	ld l, e                                          ; $7cc2: $6b
	sub h                                            ; $7cc3: $94
	rst JumpTable                                          ; $7cc4: $c7
	rst FarCall                                          ; $7cc5: $f7
	rst AddAOntoHL                                          ; $7cc6: $ef
	adc $3f                                          ; $7cc7: $ce $3f
	ldh [$e1], a                                     ; $7cc9: $e0 $e1
	or $fe                                           ; $7ccb: $f6 $fe
	cp $ff                                           ; $7ccd: $fe $ff
	ld a, e                                          ; $7ccf: $7b
	ld hl, sp-$6e                                    ; $7cd0: $f8 $92
	pop af                                           ; $7cd2: $f1
	cp $c2                                           ; $7cd3: $fe $c2
	add c                                            ; $7cd5: $81
	ld bc, $0f70                                     ; $7cd6: $01 $70 $0f
	nop                                              ; $7cd9: $00
	ldh [rAUD3LEVEL], a                              ; $7cda: $e0 $1c
	jp c, $f63f                                      ; $7cdc: $da $3f $f6

	ld l, a                                          ; $7cdf: $6f
	ld hl, sp-$6c                                    ; $7ce0: $f8 $94
	rst $38                                          ; $7ce2: $ff
	or $73                                           ; $7ce3: $f6 $73
	rra                                              ; $7ce5: $1f
	rlca                                             ; $7ce6: $07
	add hl, de                                       ; $7ce7: $19
	pop bc                                           ; $7ce8: $c1
	rlca                                             ; $7ce9: $07
	dec de                                           ; $7cea: $1b
	jr z, jr_021_7d6a                                ; $7ceb: $28 $7d

	ld l, e                                          ; $7ced: $6b
	ld hl, sp+$0a                                    ; $7cee: $f8 $0a
	nop                                              ; $7cf0: $00
	rst SubAFromDE                                          ; $7cf1: $df
	ld [hl+], a                                      ; $7cf2: $22
	sbc [hl]                                         ; $7cf3: $9e
	ld h, $de                                        ; $7cf4: $26 $de
	ld h, [hl]                                       ; $7cf6: $66
	rst SubAFromDE                                          ; $7cf7: $df
	ld [hl+], a                                      ; $7cf8: $22
	ldh [c], a                                       ; $7cf9: $e2
	add b                                            ; $7cfa: $80
	add b                                            ; $7cfb: $80
	adc $dc                                          ; $7cfc: $ce $dc
	call c, $ff7e                                    ; $7cfe: $dc $7e $ff
	rst FarCall                                          ; $7d01: $f7
	di                                               ; $7d02: $f3
	rst $38                                          ; $7d03: $ff
	ccf                                              ; $7d04: $3f
	ccf                                              ; $7d05: $3f
	inc sp                                           ; $7d06: $33
	add c                                            ; $7d07: $81
	ld h, c                                          ; $7d08: $61
	ld a, b                                          ; $7d09: $78
	cp $30                                           ; $7d0a: $fe $30
	rrca                                             ; $7d0c: $0f
	ccf                                              ; $7d0d: $3f
	ld a, a                                          ; $7d0e: $7f
	db $e3                                           ; $7d0f: $e3
	rst SubAFromBC                                          ; $7d10: $e7
	rst GetHLinHL                                          ; $7d11: $cf
	rst AddAOntoHL                                          ; $7d12: $ef
	rst $38                                          ; $7d13: $ff
	rst $38                                          ; $7d14: $ff
	sbc $9e                                          ; $7d15: $de $9e
	ccf                                              ; $7d17: $3f
	ccf                                              ; $7d18: $3f
	ld a, h                                          ; $7d19: $7c
	ld a, b                                          ; $7d1a: $78
	sbc [hl]                                         ; $7d1b: $9e
	ld a, b                                          ; $7d1c: $78
	sbc $ff                                          ; $7d1d: $de $ff
	ld a, a                                          ; $7d1f: $7f
	db $e3                                           ; $7d20: $e3
	sbc c                                            ; $7d21: $99
	ei                                               ; $7d22: $fb
	db $eb                                           ; $7d23: $eb
	rst $38                                          ; $7d24: $ff
	pop af                                           ; $7d25: $f1
	inc sp                                           ; $7d26: $33
	ld [hl], a                                       ; $7d27: $77
	sbc $ff                                          ; $7d28: $de $ff
	sbc l                                            ; $7d2a: $9d
	ld e, $0f                                        ; $7d2b: $1e $0f
	db $dd                                           ; $7d2d: $dd
	rst $38                                          ; $7d2e: $ff
	sbc [hl]                                         ; $7d2f: $9e
	sbc a                                            ; $7d30: $9f
	call c, Call_021_7fff                            ; $7d31: $dc $ff $7f
	reti                                             ; $7d34: $d9


	sbc e                                            ; $7d35: $9b
	db $fc                                           ; $7d36: $fc
	inc l                                            ; $7d37: $2c
	ld b, $22                                        ; $7d38: $06 $22
	ld a, e                                          ; $7d3a: $7b
	pop hl                                           ; $7d3b: $e1
	sbc l                                            ; $7d3c: $9d
	ld hl, sp-$03                                    ; $7d3d: $f8 $fd
	sbc $ff                                          ; $7d3f: $de $ff
	sub a                                            ; $7d41: $97
	rst SubAFromBC                                          ; $7d42: $e7
	adc a                                            ; $7d43: $8f
	adc a                                            ; $7d44: $8f
	sbc a                                            ; $7d45: $9f
	ld b, e                                          ; $7d46: $43
	ld [hl+], a                                      ; $7d47: $22
	cp $0e                                           ; $7d48: $fe $0e
	reti                                             ; $7d4a: $d9


	rst $38                                          ; $7d4b: $ff
	sub a                                            ; $7d4c: $97
	db $fc                                           ; $7d4d: $fc
	add $c1                                          ; $7d4e: $c6 $c1
	ldh a, [$fd]                                     ; $7d50: $f0 $fd
	rlca                                             ; $7d52: $07
	rrca                                             ; $7d53: $0f
	ld a, a                                          ; $7d54: $7f
	reti                                             ; $7d55: $d9


	rst $38                                          ; $7d56: $ff
	sbc c                                            ; $7d57: $99
	ld a, b                                          ; $7d58: $78
	ei                                               ; $7d59: $fb
	rst $38                                          ; $7d5a: $ff
	inc sp                                           ; $7d5b: $33
	rst SubAFromBC                                          ; $7d5c: $e7
	rst GetHLinHL                                          ; $7d5d: $cf
	db $dd                                           ; $7d5e: $dd
	rst $38                                          ; $7d5f: $ff
	rst SubAFromDE                                          ; $7d60: $df
	cp $df                                           ; $7d61: $fe $df
	rst $38                                          ; $7d63: $ff
	sbc [hl]                                         ; $7d64: $9e
	ei                                               ; $7d65: $fb
	ld l, e                                          ; $7d66: $6b
	ret c                                            ; $7d67: $d8

	sbc l                                            ; $7d68: $9d
	rst JumpTable                                          ; $7d69: $c7

jr_021_7d6a:
	pop af                                           ; $7d6a: $f1
	sbc $ff                                          ; $7d6b: $de $ff
	sbc d                                            ; $7d6d: $9a
	ld a, a                                          ; $7d6e: $7f
	ld a, [hl]                                       ; $7d6f: $7e
	ld a, l                                          ; $7d70: $7d
	cp l                                             ; $7d71: $bd
	or e                                             ; $7d72: $b3
	ld [hl], a                                       ; $7d73: $77
	rst SubAFromBC                                          ; $7d74: $e7
	sbc e                                            ; $7d75: $9b
	cp l                                             ; $7d76: $bd
	sbc e                                            ; $7d77: $9b
	db $db                                           ; $7d78: $db
	rst SubAFromDE                                          ; $7d79: $df
	sbc $ff                                          ; $7d7a: $de $ff
	sbc [hl]                                         ; $7d7c: $9e
	cp a                                             ; $7d7d: $bf
	sbc $ff                                          ; $7d7e: $de $ff
	sbc [hl]                                         ; $7d80: $9e
	rlca                                             ; $7d81: $07
	ld [hl], a                                       ; $7d82: $77
	add sp, -$22                                     ; $7d83: $e8 $de
	rst $38                                          ; $7d85: $ff
	sbc [hl]                                         ; $7d86: $9e
	ld sp, hl                                        ; $7d87: $f9
	reti                                             ; $7d88: $d9


	rst $38                                          ; $7d89: $ff
	sbc e                                            ; $7d8a: $9b
	rst AddAOntoHL                                          ; $7d8b: $ef
	ld l, e                                          ; $7d8c: $6b
	ld h, e                                          ; $7d8d: $63
	ld l, e                                          ; $7d8e: $6b
	ld [hl], e                                       ; $7d8f: $73
	jp nz, $ff92                                     ; $7d90: $c2 $92 $ff

	db $fd                                           ; $7d93: $fd
	cp $9d                                           ; $7d94: $fe $9d
	ccf                                              ; $7d96: $3f
	rst $38                                          ; $7d97: $ff
	rst $38                                          ; $7d98: $ff
	ld hl, sp-$1d                                    ; $7d99: $f8 $e3
	push bc                                          ; $7d9b: $c5
	adc $ff                                          ; $7d9c: $ce $ff
	rst FarCall                                          ; $7d9e: $f7
	ld a, e                                          ; $7d9f: $7b
	xor [hl]                                         ; $7da0: $ae
	sbc b                                            ; $7da1: $98
	cp $e3                                           ; $7da2: $fe $e3
	ld [hl], c                                       ; $7da4: $71
	cp $ef                                           ; $7da5: $fe $ef
	pop af                                           ; $7da7: $f1
	sbc $6b                                          ; $7da8: $de $6b
	ld hl, sp-$6e                                    ; $7daa: $f8 $92
	cp $8e                                           ; $7dac: $fe $8e
	rst AddAOntoHL                                          ; $7dae: $ef
	ld a, [hl-]                                      ; $7daf: $3a
	cp $0d                                           ; $7db0: $fe $0d
	adc a                                            ; $7db2: $8f
	sbc b                                            ; $7db3: $98
	ld l, a                                          ; $7db4: $6f
	rst $38                                          ; $7db5: $ff
	rst $38                                          ; $7db6: $ff
	ccf                                              ; $7db7: $3f
	rst $38                                          ; $7db8: $ff
	ld [hl], a                                       ; $7db9: $77
	ld hl, sp-$6c                                    ; $7dba: $f8 $94
	sbc a                                            ; $7dbc: $9f
	cp a                                             ; $7dbd: $bf
	cp $7f                                           ; $7dbe: $fe $7f
	rst $38                                          ; $7dc0: $ff
	di                                               ; $7dc1: $f3
	ld a, a                                          ; $7dc2: $7f
	cp e                                             ; $7dc3: $bb
	ld hl, sp-$08                                    ; $7dc4: $f8 $f8
	ld sp, hl                                        ; $7dc6: $f9
	ld a, e                                          ; $7dc7: $7b
	ld e, c                                          ; $7dc8: $59
	ld a, a                                          ; $7dc9: $7f
	ld hl, sp-$62                                    ; $7dca: $f8 $9e
	pop hl                                           ; $7dcc: $e1
	ld [hl], a                                       ; $7dcd: $77
	rst SubAFromBC                                          ; $7dce: $e7
	rst SubAFromDE                                          ; $7dcf: $df
	rst $38                                          ; $7dd0: $ff
	sub [hl]                                         ; $7dd1: $96
	dec sp                                           ; $7dd2: $3b
	ld a, a                                          ; $7dd3: $7f
	ei                                               ; $7dd4: $fb
	pop af                                           ; $7dd5: $f1
	ldh a, [$f3]                                     ; $7dd6: $f0 $f3
	rst SubAFromHL                                          ; $7dd8: $d7
	inc e                                            ; $7dd9: $1c
	db $fc                                           ; $7dda: $fc
	add hl, bc                                       ; $7ddb: $09
	nop                                              ; $7ddc: $00
	sbc $22                                          ; $7ddd: $de $22
	sbc l                                            ; $7ddf: $9d
	ld h, $66                                        ; $7de0: $26 $66
	sbc $22                                          ; $7de2: $de $22
	inc [hl]                                         ; $7de4: $34
	nop                                              ; $7de5: $00
	sbc e                                            ; $7de6: $9b
	ld c, $02                                        ; $7de7: $0e $02
	inc bc                                           ; $7de9: $03
	ld b, $fd                                        ; $7dea: $06 $fd
	sbc b                                            ; $7dec: $98
	ld a, [de]                                       ; $7ded: $1a
	dec c                                            ; $7dee: $0d
	nop                                              ; $7def: $00
	nop                                              ; $7df0: $00
	rlca                                             ; $7df1: $07
	nop                                              ; $7df2: $00
	ld [bc], a                                       ; $7df3: $02
	ld hl, sp-$63                                    ; $7df4: $f8 $9d
	ret nz                                           ; $7df6: $c0

	add b                                            ; $7df7: $80
	ld sp, hl                                        ; $7df8: $f9
	ld a, a                                          ; $7df9: $7f
	rst FarCall                                          ; $7dfa: $f7
	sub a                                            ; $7dfb: $97
	ret nz                                           ; $7dfc: $c0

	nop                                              ; $7dfd: $00
	ldh [$80], a                                     ; $7dfe: $e0 $80
	ldh a, [$e0]                                     ; $7e00: $f0 $e0
	rst $38                                          ; $7e02: $ff
	ld hl, sp-$22                                    ; $7e03: $f8 $de
	rst $38                                          ; $7e05: $ff
	adc [hl]                                         ; $7e06: $8e
	db $fc                                           ; $7e07: $fc
	nop                                              ; $7e08: $00
	nop                                              ; $7e09: $00
	inc bc                                           ; $7e0a: $03
	ld bc, $0307                                     ; $7e0b: $01 $07 $03
	rra                                              ; $7e0e: $1f
	inc c                                            ; $7e0f: $0c
	ld a, a                                          ; $7e10: $7f

jr_021_7e11:
	jr nc, @+$01                                     ; $7e11: $30 $ff

	ret nz                                           ; $7e13: $c0

	di                                               ; $7e14: $f3
	nop                                              ; $7e15: $00
	pop bc                                           ; $7e16: $c1
	nop                                              ; $7e17: $00
	inc b                                            ; $7e18: $04
	nop                                              ; $7e19: $00
	rst SubAFromDE                                          ; $7e1a: $df
	ld b, h                                          ; $7e1b: $44
	scf                                              ; $7e1c: $37
	add b                                            ; $7e1d: $80
	sub c                                            ; $7e1e: $91
	ld c, $03                                        ; $7e1f: $0e $03
	nop                                              ; $7e21: $00
	nop                                              ; $7e22: $00
	dec e                                            ; $7e23: $1d
	rrca                                             ; $7e24: $0f
	nop                                              ; $7e25: $00
	rlca                                             ; $7e26: $07
	ld [bc], a                                       ; $7e27: $02
	ld b, $00                                        ; $7e28: $06 $00
	nop                                              ; $7e2a: $00
	rrca                                             ; $7e2b: $0f
	rlca                                             ; $7e2c: $07
	ei                                               ; $7e2d: $fb
	sbc l                                            ; $7e2e: $9d
	ret nz                                           ; $7e2f: $c0

	add b                                            ; $7e30: $80
	ei                                               ; $7e31: $fb
	ld [hl], a                                       ; $7e32: $77
	ld sp, hl                                        ; $7e33: $f9
	sbc d                                            ; $7e34: $9a
	ld [bc], a                                       ; $7e35: $02
	add b                                            ; $7e36: $80
	ret nz                                           ; $7e37: $c0

	ldh [$f0], a                                     ; $7e38: $e0 $f0
	sbc $ff                                          ; $7e3a: $de $ff
	ld [hl], a                                       ; $7e3c: $77
	pop af                                           ; $7e3d: $f1
	adc e                                            ; $7e3e: $8b
	ldh [$f8], a                                     ; $7e3f: $e0 $f8
	rst $38                                          ; $7e41: $ff
	db $fc                                           ; $7e42: $fc
	nop                                              ; $7e43: $00
	inc bc                                           ; $7e44: $03
	rlca                                             ; $7e45: $07
	rra                                              ; $7e46: $1f
	ld a, a                                          ; $7e47: $7f
	rst $38                                          ; $7e48: $ff
	di                                               ; $7e49: $f3
	pop bc                                           ; $7e4a: $c1
	nop                                              ; $7e4b: $00
	ld bc, $0c03                                     ; $7e4c: $01 $03 $0c
	jr nc, jr_021_7e11                               ; $7e4f: $30 $c0

	nop                                              ; $7e51: $00
	nop                                              ; $7e52: $00
	inc b                                            ; $7e53: $04
	nop                                              ; $7e54: $00
	rst SubAFromDE                                          ; $7e55: $df
	ld b, h                                          ; $7e56: $44
	scf                                              ; $7e57: $37
	nop                                              ; $7e58: $00
	sbc e                                            ; $7e59: $9b
	ld c, $02                                        ; $7e5a: $0e $02
	inc bc                                           ; $7e5c: $03
	ld b, $fd                                        ; $7e5d: $06 $fd
	sbc b                                            ; $7e5f: $98
	rra                                              ; $7e60: $1f
	rrca                                             ; $7e61: $0f
	rrca                                             ; $7e62: $0f
	rlca                                             ; $7e63: $07
	rlca                                             ; $7e64: $07
	ld [bc], a                                       ; $7e65: $02
	ld [bc], a                                       ; $7e66: $02
	ld hl, sp-$64                                    ; $7e67: $f8 $9c
	ret nz                                           ; $7e69: $c0

	add b                                            ; $7e6a: $80
	add b                                            ; $7e6b: $80
	db $fc                                           ; $7e6c: $fc
	sub e                                            ; $7e6d: $93
	rlca                                             ; $7e6e: $07
	nop                                              ; $7e6f: $00
	add d                                            ; $7e70: $82
	nop                                              ; $7e71: $00
	ret nz                                           ; $7e72: $c0

	nop                                              ; $7e73: $00
	ldh [$80], a                                     ; $7e74: $e0 $80
	ldh a, [$e0]                                     ; $7e76: $f0 $e0
	rst $38                                          ; $7e78: $ff
	ld hl, sp-$22                                    ; $7e79: $f8 $de
	rst $38                                          ; $7e7b: $ff
	adc [hl]                                         ; $7e7c: $8e
	db $fc                                           ; $7e7d: $fc
	nop                                              ; $7e7e: $00
	nop                                              ; $7e7f: $00
	inc bc                                           ; $7e80: $03
	ld bc, $0307                                     ; $7e81: $01 $07 $03
	rra                                              ; $7e84: $1f
	inc c                                            ; $7e85: $0c
	ld a, a                                          ; $7e86: $7f
	jr nc, @+$01                                     ; $7e87: $30 $ff

	ret nz                                           ; $7e89: $c0

	di                                               ; $7e8a: $f3
	nop                                              ; $7e8b: $00
	pop bc                                           ; $7e8c: $c1
	nop                                              ; $7e8d: $00
	inc b                                            ; $7e8e: $04
	nop                                              ; $7e8f: $00
	rst SubAFromDE                                          ; $7e90: $df
	ld b, h                                          ; $7e91: $44
	dec [hl]                                         ; $7e92: $35
	nop                                              ; $7e93: $00
	sbc e                                            ; $7e94: $9b
	ld c, $02                                        ; $7e95: $0e $02
	inc bc                                           ; $7e97: $03
	ld b, $fd                                        ; $7e98: $06 $fd
	sbc [hl]                                         ; $7e9a: $9e
	rra                                              ; $7e9b: $1f
	db $dd                                           ; $7e9c: $dd
	rrca                                             ; $7e9d: $0f
	sbc h                                            ; $7e9e: $9c
	rlca                                             ; $7e9f: $07
	dec b                                            ; $7ea0: $05
	ld [bc], a                                       ; $7ea1: $02
	ld sp, hl                                        ; $7ea2: $f9
	sbc [hl]                                         ; $7ea3: $9e
	ret nz                                           ; $7ea4: $c0

	db $dd                                           ; $7ea5: $dd
	add b                                            ; $7ea6: $80
	db $fc                                           ; $7ea7: $fc
	sub l                                            ; $7ea8: $95
	add a                                            ; $7ea9: $87
	nop                                              ; $7eaa: $00
	jp nz, $e000                                     ; $7eab: $c2 $00 $e0

	add b                                            ; $7eae: $80
	ldh a, [$e0]                                     ; $7eaf: $f0 $e0
	rst $38                                          ; $7eb1: $ff
	ld hl, sp-$22                                    ; $7eb2: $f8 $de
	rst $38                                          ; $7eb4: $ff
	adc [hl]                                         ; $7eb5: $8e
	db $fc                                           ; $7eb6: $fc
	nop                                              ; $7eb7: $00
	nop                                              ; $7eb8: $00
	inc bc                                           ; $7eb9: $03
	ld bc, $0307                                     ; $7eba: $01 $07 $03
	rra                                              ; $7ebd: $1f
	inc c                                            ; $7ebe: $0c
	ld a, a                                          ; $7ebf: $7f

jr_021_7ec0:
	jr nc, @+$01                                     ; $7ec0: $30 $ff

	ret nz                                           ; $7ec2: $c0

	di                                               ; $7ec3: $f3
	nop                                              ; $7ec4: $00
	pop bc                                           ; $7ec5: $c1
	nop                                              ; $7ec6: $00
	inc b                                            ; $7ec7: $04
	nop                                              ; $7ec8: $00
	rst SubAFromDE                                          ; $7ec9: $df
	ld b, h                                          ; $7eca: $44
	scf                                              ; $7ecb: $37
	add b                                            ; $7ecc: $80
	sub d                                            ; $7ecd: $92
	ld c, $03                                        ; $7ece: $0e $03
	nop                                              ; $7ed0: $00
	jr z, @+$19                                      ; $7ed1: $28 $17

	nop                                              ; $7ed3: $00
	rlca                                             ; $7ed4: $07
	ld [bc], a                                       ; $7ed5: $02
	ld [bc], a                                       ; $7ed6: $02
	ld b, $00                                        ; $7ed7: $06 $00
	db $10                                           ; $7ed9: $10
	rrca                                             ; $7eda: $0f
	ei                                               ; $7edb: $fb
	sbc l                                            ; $7edc: $9d
	and b                                            ; $7edd: $a0
	ld b, b                                          ; $7ede: $40
	ei                                               ; $7edf: $fb
	sbc l                                            ; $7ee0: $9d
	ld b, b                                          ; $7ee1: $40
	add b                                            ; $7ee2: $80
	db $fd                                           ; $7ee3: $fd
	sbc e                                            ; $7ee4: $9b
	add b                                            ; $7ee5: $80
	ret nz                                           ; $7ee6: $c0

	ldh [$f0], a                                     ; $7ee7: $e0 $f0
	sbc $ff                                          ; $7ee9: $de $ff
	ld [hl], a                                       ; $7eeb: $77
	or $8b                                           ; $7eec: $f6 $8b
	ldh [$f8], a                                     ; $7eee: $e0 $f8
	rst $38                                          ; $7ef0: $ff
	db $fc                                           ; $7ef1: $fc
	nop                                              ; $7ef2: $00
	inc bc                                           ; $7ef3: $03
	rlca                                             ; $7ef4: $07
	rra                                              ; $7ef5: $1f
	ld a, a                                          ; $7ef6: $7f
	rst $38                                          ; $7ef7: $ff
	di                                               ; $7ef8: $f3
	pop bc                                           ; $7ef9: $c1
	nop                                              ; $7efa: $00
	ld bc, $0c03                                     ; $7efb: $01 $03 $0c

jr_021_7efe:
	jr nc, jr_021_7ec0                               ; $7efe: $30 $c0

	nop                                              ; $7f00: $00

Jump_021_7f01:
	nop                                              ; $7f01: $00
	inc b                                            ; $7f02: $04
	nop                                              ; $7f03: $00
	rst SubAFromDE                                          ; $7f04: $df
	ld b, h                                          ; $7f05: $44
	ld a, [hl-]                                      ; $7f06: $3a
	add b                                            ; $7f07: $80
	sub c                                            ; $7f08: $91
	ld c, $03                                        ; $7f09: $0e $03
	nop                                              ; $7f0b: $00
	jr z, @+$21                                      ; $7f0c: $28 $1f

	ld a, [bc]                                       ; $7f0e: $0a
	nop                                              ; $7f0f: $00
	rlca                                             ; $7f10: $07
	ld [bc], a                                       ; $7f11: $02
	ld b, $00                                        ; $7f12: $06 $00
	db $10                                           ; $7f14: $10
	rrca                                             ; $7f15: $0f
	rlca                                             ; $7f16: $07
	db $fc                                           ; $7f17: $fc
	sbc h                                            ; $7f18: $9c
	and b                                            ; $7f19: $a0
	ret nz                                           ; $7f1a: $c0

	add b                                            ; $7f1b: $80
	db $fc                                           ; $7f1c: $fc
	sbc [hl]                                         ; $7f1d: $9e
	ld b, b                                          ; $7f1e: $40
	ld [hl], a                                       ; $7f1f: $77
	ld sp, hl                                        ; $7f20: $f9
	sbc d                                            ; $7f21: $9a
	ld [bc], a                                       ; $7f22: $02
	add b                                            ; $7f23: $80
	ret nz                                           ; $7f24: $c0

	ldh [$f0], a                                     ; $7f25: $e0 $f0
	sbc $ff                                          ; $7f27: $de $ff
	cp $8a                                           ; $7f29: $fe $8a
	add b                                            ; $7f2b: $80
	ldh [$f8], a                                     ; $7f2c: $e0 $f8
	rst $38                                          ; $7f2e: $ff
	db $fc                                           ; $7f2f: $fc
	nop                                              ; $7f30: $00
	inc bc                                           ; $7f31: $03
	rlca                                             ; $7f32: $07
	rra                                              ; $7f33: $1f
	ld a, a                                          ; $7f34: $7f
	rst $38                                          ; $7f35: $ff
	di                                               ; $7f36: $f3
	pop bc                                           ; $7f37: $c1
	nop                                              ; $7f38: $00
	ld bc, $0c03                                     ; $7f39: $01 $03 $0c
	jr nc, jr_021_7efe                               ; $7f3c: $30 $c0

	nop                                              ; $7f3e: $00
	nop                                              ; $7f3f: $00
	inc b                                            ; $7f40: $04
	nop                                              ; $7f41: $00
	rst SubAFromDE                                          ; $7f42: $df
	ld b, h                                          ; $7f43: $44
	add hl, sp                                       ; $7f44: $39
	nop                                              ; $7f45: $00
	sub c                                            ; $7f46: $91
	ld c, $02                                        ; $7f47: $0e $02
	inc bc                                           ; $7f49: $03
	ld b, $00                                        ; $7f4a: $06 $00
	nop                                              ; $7f4c: $00
	scf                                              ; $7f4d: $37
	jr jr_021_7f6f                                   ; $7f4e: $18 $1f

	rrca                                             ; $7f50: $0f
	rrca                                             ; $7f51: $0f
	rlca                                             ; $7f52: $07
	rlca                                             ; $7f53: $07
	ld [bc], a                                       ; $7f54: $02
	ld sp, hl                                        ; $7f55: $f9
	sbc d                                            ; $7f56: $9a
	ld h, b                                          ; $7f57: $60
	ret nz                                           ; $7f58: $c0

	ret nz                                           ; $7f59: $c0

	add b                                            ; $7f5a: $80
	add b                                            ; $7f5b: $80
	cp e                                             ; $7f5c: $bb
	nop                                              ; $7f5d: $00
	nop                                              ; $7f5e: $00
	rlca                                             ; $7f5f: $07
	add d                                            ; $7f60: $82
	ret nz                                           ; $7f61: $c0

	ldh [$9a], a                                     ; $7f62: $e0 $9a
	add b                                            ; $7f64: $80
	ldh a, [$e0]                                     ; $7f65: $f0 $e0
	rst $38                                          ; $7f67: $ff
	ld hl, sp-$22                                    ; $7f68: $f8 $de
	rst $38                                          ; $7f6a: $ff
	adc [hl]                                         ; $7f6b: $8e
	db $fc                                           ; $7f6c: $fc
	nop                                              ; $7f6d: $00
	nop                                              ; $7f6e: $00

jr_021_7f6f:
	inc bc                                           ; $7f6f: $03
	ld bc, $0307                                     ; $7f70: $01 $07 $03
	rra                                              ; $7f73: $1f
	inc c                                            ; $7f74: $0c
	ld a, a                                          ; $7f75: $7f
	jr nc, @+$01                                     ; $7f76: $30 $ff

	ret nz                                           ; $7f78: $c0

jr_021_7f79:
	di                                               ; $7f79: $f3
	nop                                              ; $7f7a: $00
	pop bc                                           ; $7f7b: $c1
	nop                                              ; $7f7c: $00
	inc b                                            ; $7f7d: $04
	nop                                              ; $7f7e: $00
	rst SubAFromDE                                          ; $7f7f: $df
	ld b, h                                          ; $7f80: $44
	ld a, [hl-]                                      ; $7f81: $3a
	add b                                            ; $7f82: $80

Jump_021_7f83:
	sbc e                                            ; $7f83: $9b
	ld c, $03                                        ; $7f84: $0e $03
	nop                                              ; $7f86: $00
	ccf                                              ; $7f87: $3f
	sbc $0f                                          ; $7f88: $de $0f
	sbc c                                            ; $7f8a: $99
	rlca                                             ; $7f8b: $07
	ld [bc], a                                       ; $7f8c: $02
	ld b, $00                                        ; $7f8d: $06 $00
	rra                                              ; $7f8f: $1f
	rra                                              ; $7f90: $1f
	ld a, e                                          ; $7f91: $7b
	ld sp, hl                                        ; $7f92: $f9
	cp $9e                                           ; $7f93: $fe $9e
	ldh [$de], a                                     ; $7f95: $e0 $de
	add b                                            ; $7f97: $80
	db $fd                                           ; $7f98: $fd
	rst SubAFromDE                                          ; $7f99: $df
	ret nz                                           ; $7f9a: $c0

	ld [hl], a                                       ; $7f9b: $77
	ld sp, hl                                        ; $7f9c: $f9
	sbc e                                            ; $7f9d: $9b
	add a                                            ; $7f9e: $87
	jp nz, $f0e0                                     ; $7f9f: $c2 $e0 $f0

	sbc $ff                                          ; $7fa2: $de $ff
	cp $8a                                           ; $7fa4: $fe $8a
	add b                                            ; $7fa6: $80
	ldh [$f8], a                                     ; $7fa7: $e0 $f8
	rst $38                                          ; $7fa9: $ff
	db $fc                                           ; $7faa: $fc
	nop                                              ; $7fab: $00
	inc bc                                           ; $7fac: $03
	rlca                                             ; $7fad: $07
	rra                                              ; $7fae: $1f
	ld a, a                                          ; $7faf: $7f
	rst $38                                          ; $7fb0: $ff
	di                                               ; $7fb1: $f3
	pop bc                                           ; $7fb2: $c1
	nop                                              ; $7fb3: $00
	ld bc, $0c03                                     ; $7fb4: $01 $03 $0c
	jr nc, jr_021_7f79                               ; $7fb7: $30 $c0

	nop                                              ; $7fb9: $00
	nop                                              ; $7fba: $00
	inc b                                            ; $7fbb: $04
	nop                                              ; $7fbc: $00
	rst SubAFromDE                                          ; $7fbd: $df
	ld b, h                                          ; $7fbe: $44
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

Jump_021_7fdd:
	rst $38                                          ; $7fdd: $ff
	rst $38                                          ; $7fde: $ff
	rst $38                                          ; $7fdf: $ff
	rst $38                                          ; $7fe0: $ff

Jump_021_7fe1:
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

Call_021_7fff:
	rst $38                                          ; $7fff: $ff
